-- ToME - Tales of Middle-Earth
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

-- This file loads the game module, and loads data
local KeyBind = require "engine.KeyBind"
local DamageType = require "engine.DamageType"
local ActorStats = require "engine.interface.ActorStats"
local ActorResource = require "engine.interface.ActorResource"
local ActorTalents = require "engine.interface.ActorTalents"
local ActorAI = require "engine.interface.ActorAI"
local ActorLevel = require "engine.interface.ActorLevel"
local ActorTemporaryEffects = require "engine.interface.ActorTemporaryEffects"
local Birther = require "engine.Birther"

-- Useful keybinds
KeyBind:load("move,hotkeys,inventory,actions,interface,debug")

-- Damage types
DamageType:loadDefinition("/data/damage_types.lua")

-- Talents
ActorTalents:loadDefinition("/data/talents.lua")

-- Timed Effects
ActorTemporaryEffects:loadDefinition("/data/timed_effects.lua")

-- Actor resources
ActorResource:defineResource("Power", "power", nil, "power_regen", "Power represent your ability to use special talents.")
ActorResource:defineResource("Sanity", "sanity", nil, nil, "Sanity represents your fragile grip on your humanity. Guard it well, or don't. We don't judge.")
ActorResource:defineResource("Lust", "lust", nil, nil, "Your current state of arrousal. Allowing it to fill completely while enemies are around could lead to bad, or good, situations.")

-- Actor stats
ActorStats:defineStat("Strength",	"str", 10, 1, 100, "Strength defines your character's ability to apply physical force. It increases your melee damage, damage with heavy weapons, your chance to resist physical effects, and carrying capacity.")
ActorStats:defineStat("Dexterity",	"dex", 10, 1, 100, "Dexterity defines your character's ability to be agile and alert. It increases your chance to hit, your ability to avoid attacks and your damage with light weapons.")
ActorStats:defineStat("Constitution",	"con", 10, 1, 100, "Constitution defines your character's ability to withstand and resist damage. It increases your maximum life and physical resistance.")
ActorStats:defineStat("Charisma",	"cha", 10, 1, 100, "How well you deal with others, getting them to see your side of issues.")
ActorStats:defineStat("Intelligence",	"int", 10, 1, 100, "Your ability to think through problems from a purely analytical stand point.")
ActorStats:defineStat("Willpower",	"wil", 10, 1, 100, "Your ability to resist temptation and external influences on your thought.")

-- Actor Levels

ActorLevel:defineMaxLevel(nil)
ActorLevel.exp_chart = function(level)
	local exp = 10
	local mult = 8.5
	local min = 3
	for i = 2, level do
		exp = exp + level * mult
		if level < 30 then
			mult = util.bound(mult - 0.2, min, mult)
		else
			mult = util.bound(mult - 0.1, min, mult)
		end
	end
	return math.ceil(exp)
end

-- Actor AIs
ActorAI:loadDefinition("/engine/ai/")

-- Birther descriptor
Birther:loadDefinition("/data/birth/descriptors.lua")

return {require "mod.class.Game" }
