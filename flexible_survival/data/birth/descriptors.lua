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

newBirthDescriptor{
	type = "base",
	name = "base",
	desc = {
	},
	experience = 1.0,

	copy = {
		max_level = 10,
		lite = 4,
		max_life = 25,
	},
}

newBirthDescriptor{
	type = "sex",
	name = "Male",
	desc =
	{
		"Be a true man.",
	},
	bodyslots = { cock = 1, testicle = 2 },
}

newBirthDescriptor{
	type = "sex",
	name = "Female",
	desc =
	{
		"Be a proper lady.",
	},
	bodyslots = { breast = 2, vagina = 1 },
}


newBirthDescriptor{
	type = "sex",
	name = "Hermaphrodite",
	desc =
	{
		"Why pick one?",
	},
	bodyslots = { cock = 1, testicle = 2, breast = 2, vagina = 1 },
}

newBirthDescriptor{
	type = "race",
	name = "Human",
	desc =
	{
		"You are a pure human, for now. How long will that last?",
	},
	bodyslots = { ass = 1, arms = 2, head = 1, torso = 1, legs = 2, skin = 1 },
	bodyparts = {
		BP_HEAD_HUMAN = "all",
		BP_TORSO_HUMAN = "all",
		BP_COCK_HUMAN = "all",
		BP_SKIN_HUMAN = "all",
		BP_ARMS_HUMAN = "all",
		BP_LEGS_HUMAN = "all",
		BP_ASS_HUMAN = "all",
	},
}

newBirthDescriptor{
	type = "race",
	name = "Latexfox",
	desc =
	{
		"Crashhhhh!",
	},
	bodyslots = { ass = 1, arms = 2, head = 1, torso = 1, leg = 2, skin = 1 },
	bodyparts = {
		BP_HEAD_LATEXFOX = "all",
		BP_TORSO_LATEXFOX = "all",
	},
}

newBirthDescriptor{
	type = "specialization",
	name = "Whatever",
	desc =
	{
		"Crashhhhh!",
	},
}

newBirthDescriptor{
	type = "specialization",
	name = "Whatever2",
	desc =
	{
		"Crashhhhh!",
	},
}
