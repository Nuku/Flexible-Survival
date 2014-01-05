-- TE4 - T-Engine 4
-- Copyright (C) 2009, 2010, 2011, 2012, 2013 Nicolas Casalini
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.
--
-- Nicolas Casalini "DarkGod"
-- darkgod@te4.org

require "engine.class"

--- Handles actors stats
module(..., package.seeall, class.make)

_M.bodyslots_def = {}
_M.bodyparts_def = {}

-- Static!
function _M:defineBodySlot(short_name, name, desc, measures)
	assert(name, "no body slot name")
	assert(short_name, "no body slot short_name")
	assert(desc, "no body slot desc")
	table.insert(self.bodyslots_def, {
		name = name,
		short_name = short_name,
		description = desc,
		measures = measures,
	})
	self.bodyslots_def[#self.bodyslots_def].id = #self.bodyslots_def
	self.bodyslots_def[short_name] = self.bodyslots_def[#self.bodyslots_def]
	self["BODYPART_"..short_name:upper()] = #self.bodyslots_def
	print("[Bodypart] define slot", #self.bodyslots_def, self.bodyslots_def[#self.bodyslots_def].name)

	if measures then for m, _ in pairs(measures) do
		_M["body"..short_name:capitalize()..m:capitalize()] = function(self, slotpos) return self:bodyPartMeasure(short_name, m, slotpos) end
		_M["incBody"..short_name:capitalize()..m:capitalize()] = function(self, v, mode, slotpos) return self:incBodyPartMeasure(short_name, v, m, mode, slotpos) end
	end end
	_M["descBody"..short_name:capitalize()] = function(self, what, slotpos) return self:descBodySlot(short_name, what, slotpos) end
end

-- Static!
function _M:newBodyPart(t)
	assert(t.name, "no body part name")
	assert(t.slot, "no body part slot")
	t.short_name = t.short_name or (t.slot.."_"..t.name)
	t.short_name = t.short_name:upper():gsub("[ ']", "_")
	t.id = "BP_"..t.short_name

	self.bodyparts_def[t.id] = t
	assert(not self[t.id], "bodyparts already exists with id "..t.id)
	self[t.id] = t.id
end

--- Defines actor talents
-- Static!
function _M:loadDefinition(file, env)
	local f, err = util.loadfilemods(file, setmetatable(env or {
		DamageType = require("engine.DamageType"),
		Particles = require("engine.Particles"),
		Body = self,
		Map = require("engine.Map"),
		newBodyPart = function(t) self:newBodyPart(t) end,
		load = function(f) self:loadDefinition(f, getfenv(2)) end
	}, {__index=_G}))
	if not f and err then error(err) end
	f()
end

--- Initialises inventories with default values if needed
function _M:init(t)
	self.bodyparts = t.bodyparts or {}
	self.bodyparts_set = t.bodyparts_set or {}
	self.bodyparts_measures = t.bodyparts_measures or {}
end

function _M:getBodyPartFromId(bpid)
	if type(bpid) == "table" then return bpid end
	local bp = self.bodyparts_def[bpid]
	return bp
end

--- Gains a body part
-- @param bpid the body part id
-- @param all if true all of the given slot will be changed
-- @param silent if true, no message
function _M:gainBodyPart(bpid, all, silent)
	local bp = self:getBodyPartFromId(bpid)
	if not bp then error("unknown bodypart "..bpid) end
	self.bodyparts_set[bp.slot] = self.bodyparts_set[bp.slot] or {}
	if not self.bodyparts[bp.slot] then return false, "no slot" end
	self.bodyparts_set[bp.slot] = self.bodyparts_set[bp.slot] or {}
	local bslot = self.bodyparts_set[bp.slot]

	local nb = 1
	if all then
		self:removeBodyPart(bp.slot, true, silent)
		nb = self.bodyparts[bp.slot]
	else
		self:removeBodyPart(bp.slot, 1, silent)
	end

	for i = 1, nb do
		local d = { bpid = bp.id }
		print("[ActorBody] Adding part to slot", bp.slot, bp.id)

		if bp.talents then
			for tid, nb in pairs(bp.talents) do
				self:learnTalent(tid, true, nb)
			end
		end

		if bp.gain_message and not silent then
			game.logSeen(self, "%s", bp.gain_message)
		end

		bslot[#bslot+1] = d
	end
end

--- Removes a body part
-- @param slot in which slot
-- @param slotpos if true all of the given slot will be changed, otherwise the given index
-- @param silent if true, no message
function _M:removeBodyPart(slot, slotpos, silent)
	local bslot = self.bodyparts_set[slot]
	if not bslot then return end

	local ids
	if slotpos == true then ids = table.keys(bslot)
	else ids = {slotpos} end
	table.sort(ids, function(a,b) return a > b end)

	for _, id in ipairs(ids) do
		local d = table.remove(bslot, id)
		local bp = self:getBodyPartFromId(d.bpid)
		print("[ActorBody] Removing part from slot", bp.slot, bp.id)

		if bp.talents then
			for tid, nb in pairs(bp.talents) do
				self:unlearnTalent(tid, nb)
			end
		end
	end
end

--- describe a body part
-- @param slot in which slot
-- @param what "desc", "species", ...
function _M:descBodySlot(slot, what, slotpos)
	local bslot = self.bodyparts_set[slot]
	if slotpos then
		if not bslot[slotpos] then return end
		local bp = self:getBodyPartFromId(bslot[slotpos].bpid)
		return util.getval(bp[what], self, bp)
	else
		local ret = {}
		for i, d in ipairs(bslot or {}) do
			local bp = self:getBodyPartFromId(d.bpid)
			ret[#ret+1] = util.getval(bp[what], self, bp)
		end
		return ret
	end
end

--- Increase a body part size
-- @param slot in which slot
-- @param v the value
-- @param slotpos if true all of the given slot will be changed, otherwise the given index
-- @param kind the measurement
-- @param mode either "add" or "mult"
function _M:incBodyPartMeasure(slot, v, kind, mode, slotpos)
	if slotpos == nil then slotpos = true end
	mode = mode or "add"	
	if not self.bodyparts_set[slot] then return end
	if type(slotpos) == "number" and not self.bodyparts_set[slot][slotpos] then return end
	self.bodyparts_measures[slot] = self.bodyparts_measures[slot] or {}
	local bslot = self.bodyparts_set[slot]
	local mslot = self.bodyparts_measures[slot]

	local ids
	if slotpos == true then ids = table.keys(bslot)
	else ids = {slotpos} end
	table.sort(ids, function(a,b) return a > b end)

	for _, id in ipairs(ids) do
		mslot[id] = mslot[id] or {}
		mslot[id][kind] = mslot[id][kind] or 1
		if mode == "add" then
			mslot[id][kind] = mslot[id][kind] + v
		elseif mode == "mult" then
			mslot[id][kind] = mslot[id][kind] * v
		end
	end
	return true
end

function _M:bodyPartMeasure(slot, kind, slotpos)
	if not self.bodyparts_set[slot] then return nil end
	local bslot = self.bodyparts_set[slot]
	local mslot = self.bodyparts_measures[slot] or {}

	if not slotpos then
		local ret = {}
		for i, d in ipairs(bslot or {}) do
			local v = 1
			if mslot[i] and mslot[i][kind] then v = mslot[i][kind] end
			ret[#ret+1] = v
		end
		return ret
	else
		return mslot[slotpos] and mslot[slotpos][kind] or 1
	end
end
