-- Written by David Silver(Nuku Valente)
-- Based on code from:
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

local Talents = require("engine.interface.ActorTalents")

newEntity{
	define_as = "BASE_NPC_LATEXFOX",
	type = "humanoid", subtype = "mutant",
	display = "p", color=colors.RED,
	desc = [[Shiny white and red latex squeak as it approaches you, baring its sharp plastic teeth in your direction.]],
	image = "mobs/latex_herm_vixen.png",
	ai = "dumb_talented_simple", ai_state = { talent_in=3, },
	stats = { str=5, dex=5, con=5 },
	combat_armor = 0,
	resolvers.talents{ [Talents.T_NIBBLE]=1,},
}

newEntity{ base = "BASE_NPC_LATEXFOX",
	name = "latex fox", color=colors.RED,
	level_range = {1, 4}, exp_worth = 1,
	rarity = 4,
	max_life = resolvers.rngavg(5,9),
	combat = { dam=2 },
}

newEntity{ base = "BASE_NPC_LATEXFOX",
	name = "herm latex fox", color=colors.RED,
	level_range = {6, 10}, exp_worth = 1,
	rarity = 4,
	max_life = resolvers.rngavg(10,12),
	combat_armor = 3,
	combat = { dam=5 },
}
