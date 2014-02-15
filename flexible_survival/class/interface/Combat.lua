-- ToME - Tales of Middle-Earth
-- Copyright (C) 2009 - 2014 Nicolas Casalini
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
local DamageType = require "engine.DamageType"
local Map = require "engine.Map"
local Target = require "engine.Target"
local Talents = require "engine.interface.ActorTalents"

--- Interface to add ToME combat system
module(..., package.seeall, class.make)

--- Checks what to do with the target
-- Talk ? attack ? displace ?
function _M:bumpInto(target)
	local reaction = self:reactionToward(target)
	if reaction < 0 then
		return self:attackTarget(target)
	elseif reaction >= 0 then
		if self.move_others then
			-- Displace
			game.level.map:remove(self.x, self.y, Map.ACTOR)
			game.level.map:remove(target.x, target.y, Map.ACTOR)
			game.level.map(self.x, self.y, Map.ACTOR, target)
			game.level.map(target.x, target.y, Map.ACTOR, self)
			self.x, self.y, target.x, target.y = target.x, target.y, self.x, self.y
		end
	end
end

--- Makes the death happen!
function _M:attackTarget(target, mult)
	if self.combat and self:checkHit(self:combatAccuracy(), self:combatEvasion()) then
		local dam = self.combat.dam + self:combatPhysicalPower() - target:combatPhysicalResist()
		DamageType:get(DamageType.PHYSICAL).projector(self, target.x, target.y, DamageType.PHYSICAL, math.max(0, dam))
	end

	-- We use up our own energy
	self:useEnergy(game.energy_to_act)
end

function _M:checkHit(atk, def, min, max, factor)
	if atk < 0 then atk = 0 end
	if def < 0 then def = 0 end
	print("checkHit", atk, def)
	if atk == 0 then atk = 1 end
	local hit = nil
	factor = factor or 5

	local one = 1 / (1 + math.exp(-(atk - def) / 7))
	local two = 0
	if atk + def ~= 0 then two = atk / (atk + def) end
	hit = 50 * (one + two)

	hit = util.bound(hit, min or 5, max or 95)
	print("=> chance to hit", hit)
	return rng.percent(hit), hit
end

function _M:combatAccuracy()
	local add = self:getDex()
	return self.combat_accuracy + add
end

function _M:combatEvasion()
	local add = self:getDex()
	return self.combat_evasion + add
end

function _M:combatPhysicalPower()
	local add = self:getStr()
	return self.combat_physical_power + add
end

function _M:combatPhysicalResist()
	local add = 0
	return self.combat_physical_resist + add
end

function _M:combatMentalPower()
	local add = self:getWil()
	return self.combat_mental_power + add
end

function _M:combatMentalResist()
	local add = self:getWil()
	return self.combat_mental_resist + add
end

function _M:combatSocialPower()
	local add = self:getInt()
	return self.combat_social_power + add
end

function _M:combatSocialResist()
	local add = self:getInt()
	return self.combat_social_resist + add
end
