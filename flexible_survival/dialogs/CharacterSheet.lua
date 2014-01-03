require "engine.class"

local Dialog = require "engine.ui.Dialog"
local Talents = require "engine.interface.ActorTalents"
local Tab = require "engine.ui.Tab"
local SurfaceZone = require "engine.ui.SurfaceZone"
local Separator = require "engine.ui.Separator"
local Stats = require "engine.interface.ActorStats"
local Textzone = require "engine.ui.Textzone"

module(..., package.seeall, class.inherit(Dialog))

function _M:init(actor)
    self.actor = actor
    Dialog.init(self, "Character Sheet: "..self.actor.name, math.max(game.w * 0.7, 950), 500)

    self.font = core.display.newFont("/data/font/VeraMono.ttf", 12)
    self.font_h = self.font:lineSkip()

    self.c_general = Tab.new{title="General", default=true, fct=function() end, on_change=function(s) if s then self:switchTo("general") end end}
    self.c_attack = Tab.new{title="Attack", default=false, fct=function() end, on_change=function(s) if s then self:switchTo("attack") end end}
    self.c_defence = Tab.new{title="Defense", default=false, fct=function() end, on_change=function(s) if s then self:switchTo("defence") end end}

    local tw, th = self.font_bold:size(self.title)

    self.vs = Separator.new{dir="vertical", size=self.iw}

    self.c_tut = Textzone.new{width=self.iw * 0.6, auto_height=true, no_color_bleed=true, font = self.font, text=[[
Keyboard: #00FF00#'d'#LAST# to save character dump. #00FF00#TAB key#LAST# to switch between tabs.
Mouse: Hover over stat for info
]]}

    self.c_desc = SurfaceZone.new{width=self.iw, height=self.ih - self.c_general.h - self.vs.h - self.c_tut.h,alpha=0}

    self.hoffset = 17 + self.c_tut.h + self.vs.h + self.c_general.h

    self:loadUI{
        {left=0, top=0, ui=self.c_tut},
        {left=15, top=self.c_tut.h, ui=self.c_general},
        {left=15+self.c_general.w, top=self.c_tut.h, ui=self.c_attack},
        {left=15+self.c_general.w+self.c_attack.w, top=self.c_tut.h, ui=self.c_defence},
        {left=0, top=self.c_tut.h + self.c_general.h, ui=self.vs},

        {left=0, top=self.c_tut.h + self.c_general.h + 5 + self.vs.h, ui=self.c_desc},
    }
    self:setFocus(self.c_general)
    self:setupUI()

    self:switchTo("general")

    self:updateKeys()
end

function _M:switchTo(kind)
    self:drawDialog(kind, cs_player_dup)
    if kind == "general" then self.c_attack.selected = false self.c_defence.selected = false
    elseif kind == "attack" then self.c_general.selected = false self.c_defence.selected = false
    elseif kind == "defence" then self.c_attack.selected = false self.c_general.selected = false
    end
    self:updateKeys()
end

function _M:updateKeys()
    self.key:addCommands{
    _TAB = function() self:tabTabs() end,
    __TEXTINPUT = function(c)
        if c == 'd' or c == 'D' then
            self:dump()
        end
    end,
    }

    self.key:addBinds{
        EXIT = function() cs_player_dup = game.player:clone() game:unregisterDialog(self) end,
    }
end

function _M:tabTabs()
    if self.c_general.selected == true then self.c_attack:select() elseif
    self.c_attack.selected == true then self.c_defence:select() elseif
    self.c_defence.selected == true then self.c_general:select() end
end

function _M:mouseTooltip(text, _, _, _, w, h, x, y)
    self:mouseZones({
        { x=x, y=y+self.hoffset, w=w, h=h, fct=function(button) game.tooltip_x, game.tooltip_y = 1, 1; game.tooltip:displayAtMap(nil, nil, game.w, game.h, text) end},
    }, true)
end

function _M:mouseZones(t, no_new)
    -- Offset the x and y with the window position and window title
    if not t.norestrict then
        for i, z in ipairs(t) do
            if not z.norestrict then
                z.x = z.x + self.display_x + 5
                z.y = z.y + self.display_y + 20 + 3
            end
        end
    end

    if not no_new then self.mouse = engine.Mouse.new() end
    self.mouse:registerZones(t)
end

function _M:drawDialog(kind)
	--local cur_exp, max_exp = game.player.exp, player:getExpChart(player.level+1)
    self.mouse:reset()

    self:setupUI()

    local player = self.actor
    local s = self.c_desc.s

    s:erase(0,0,0,0)

    local h = 0
    local w = 0

    if kind == "general" then
        h = 0
        w = 0
        s:drawStringBlended(self.font, "Name : "..(player.name or "Unnamed"), w, h, 255, 255, 255, true) h = h + self.font_h
        s:drawStringBlended(self.font, "Role : "..(player.descriptor.role or player.type:capitalize()), w, h, 255, 255, 255, true) h = h + self.font_h
		s:drawStringBlended(self.font, "XP : "..(game.player.exp), w, h, 255, 255, 255, true) h = h + self.font_h
        
        h = h + self.font_h -- Adds an empty row
        
        -- Draw some text with an attatched tooltip
        self:mouseTooltip([[#GOLD#Losing all of this would be bad.#LAST#]], s:drawColorStringBlended(self.font, ("#c00000#Life: #00ff00#%d/%d"):format(player.life, player.max_life), w, h, 255, 255, 255, true)) h = h + self.font_h
        self:mouseTooltip([[#GOLD#Your ability to use special moves.#LAST#]], s:drawColorStringBlended(self.font, ("#ffcc80#Power: #00ff00#%d/%d"):format(player.power, player.max_power), w, h, 255, 255, 255, true)) h = h + self.font_h
        
        h = 0
        w = self.w * 0.25 
        -- start on second column
        
        s:drawStringBlended(self.font, "STR : "..(player:getStr()), w, h, 0, 255, 255, true) h = h + self.font_h
        s:drawStringBlended(self.font, "DEX : "..(player:getDex()), w, h, 255, 0, 255, true) h = h + self.font_h
        s:drawStringBlended(self.font, "CON : "..(player:getCon()), w, h, 255, 255, 0, true) h = h + self.font_h
        s:drawStringBlended(self.font, "INT : "..(player:getInt()), w, h, 0, 255, 255, true) h = h + self.font_h
        s:drawStringBlended(self.font, "CHA : "..(player:getCha()), w, h, 255, 0, 255, true) h = h + self.font_h
        s:drawStringBlended(self.font, "WIL : "..(player:getWil()), w, h, 255, 255, 0, true) h = h + self.font_h
        
    elseif kind=="attack" then
        h = 0
        w = 0
        
        -- draw the attack tab here

    elseif kind=="defence" then
        h = 0
        w = 0
        
        -- draw the defence tab here

    end

    self.c_desc:generate()
    self.changed = false
end

function _M:dump()
    local player = self.actor

    fs.mkdir("/character-dumps")
    local file = "/character-dumps/"..(player.name:gsub("[^a-zA-Z0-9_-.]", "_")).."-"..os.date("%Y%m%d-%H%M%S")..".txt"
    local fff = fs.open(file, "w")
    local labelwidth = 17
    local w1 = function(s) s = s or "" fff:write(s:removeColorCodes()) fff:write("\n") end
    --prepare label and value
    local makelabel = function(s,r) while s:len() < labelwidth do s = s.." " end return ("%s: %s"):format(s, r) end

    w1("  [MyModule Character Dump]")
    w1()
    
    w1(("%-32s"):format(makelabel("Name", player.name)))
    w1(("%-32s"):format(makelabel("Role", player.descriptor.role or player.type:capitalize())))
    
    w1(("STR:  %d"):format(player:getStr()))
    
    w1(("DEX:  %d"):format(player:getDex()))

    w1(("CON:  %d"):format(player:getCon()))

    fff:close()

    Dialog:simplePopup("Character dump complete", "File: "..fs.getRealPath(file))
end 