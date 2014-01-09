-- Written by David Silver
-- Copyright (C) 2014
-- Based On:
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

newBodyPart{
	slot = "head", name = "Latexfox",
	talents = {
--		T_ENHANCED_SENSES = 1,
--		T_BITE = 2,
		T_KICK = 1,
-- Erase the above when bite and senses are made!
	},
	gain_message = "Your face reforms, vision blocked by a narrow fox like snout, new ears starting to twitch on top of your head.",
	desc = "a mixture of canine and human, a perpetual sneer showing off exposed teeth.",
	species = "fox",
	speciesadj = "vulpine",
}

newBodyPart{
	slot = "torso", name = "Latexfox",
	talents = {
		T_VITALITY = 1,
	},
	gain_message = "Your body tingles oddly, but not much seems to change, externally at least.",
	desc = "largely human, with only faint hints of bestial physique.",
	species = "human",
	speciesadj = "human",
}

newBodyPart{
	slot = "arms", name = "Latexfox",
	talents = {
		T_VITALITY = 1,
--		T_CLAW_SWIPE = 1,
	},
	gain_message = "Your arms tingle softly as your hands reshape into a slightly paw like fashion, with black claws at the end.",
	desc = "largely human, except their hands are somewhat paw like, with black claws at the ends of fingers.",
	species = "fox",
	speciesadj = "vulpine",
}

newBodyPart{
	slot = "legs", name = "Latexfox",
	talents = {
		T_VITALITY = 1,
--		T_RUBBER_HIDE = 1,
	},
	gain_message = "Smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush.",
	desc = "digitigrade and shaped like dog legs with large paws for feet.",
	species = "fox",
	speciesadj = "vulpine",
}

newBodyPart{
	slot = "skin", name = "Latexfox",
	talents = {
		T_VITALITY = 1,
--		T_RUBBER_HIDE = 3,
	},
	gain_message = "Smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush.",
	desc = "red and white latex",
	species = "rubber",
	speciesadj = "rubbery",
}

newBodyPart{
	slot = "ass", name = "Latexfox",
	talents = {
		T_VITALITY = 1,
--		T_RUBBER_HIDE = 3,
	},
	gain_message = "A sudden loud FWOOMF has you looking over your shoulder just in time to see a new, large, fox like tail curling and flicking energetically.",
	desc = "They have a large fox tail cartoonishly ballooning from their bottom.",
	species = "fox",
	speciesadj = "vulpine",
}

newBodyPart{
	slot = "cock", name = "Latexfox",
	gain_message = "Your cock grows steel hard as it begins to throb urgently. Growing increasingly red your member becomes slightly more slender. Soon a knot forms at the base, ready to tie you to a willing, or not so willing, partner.",
	desc = "bright red and knotted",
	species = "fox",
	speciesadj = "knotted",
}
