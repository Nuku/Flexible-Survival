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

newTalentType{ type="inherent/infections", name = "infections", description = "Nanite infections" }

newTalent{
	name = "T_HEAD_LATEXFOX",
	type = {"inherent/infections", 1},
	points = 1,
	mode = "passive",
	on_learn = function(self, t)
		self:learnTalent(self.ENHANCED_SENSES,true,1)
		self:learnTalent(self.BITE,true,2)
		self.head_desc = "a mixture of canine and human, a perpetual sneer showing off exposed teeth."
		self.head_tf = "Your face reforms, vision blocked by a narrow fox like snout, new ears starting to twitch on top of your head."
		self.head_species = "fox"
		self.head_speciesadj = "vulpine"
		if not (self.head_last == "Latex Fox") and self == player then
			game.logPlayer(self, "#LIGHT_GREEN#Transform> #ORANGE#%s", player.head_tf)
		end
		return true
	end,
	on_unlearn = function(self, t)
		self:unlearnTalent(self.ENHANCED_SENSES,true,1)
		self:unlearnTalent(self.BITE,true,2)
		self.head_desc = ""
		self.head_species = ""
		self.head_speciesadj = ""
		self.head_last = "Latex Fox"
		return true
	end,
	info = function(self, t)
		return ""
	end,
}

newTalent{
	name = "T_TORSO_LATEXFOX",
	type = {"inherent/infections", 1},
	points = 1,
	mode = "passive",
	on_learn = function(self, t)
		self:learnTalent(self.VITALITY,true,1)
		self.torso_desc = "largely human, with only faint hints of bestial physique."
		self.torso_tf = "Your body tingles oddly, but not much seems to change, externally at least."
		self.torso_species = "human"
		self.torso_speciesadj = "human"
		if not (self.torso_last == "Latex Fox") and self == player then
			game.logPlayer(self, "#LIGHT_GREEN#Transform> #ORANGE#%s", player.torso_tf)
		end
		return true
	end,
	on_unlearn = function(self, t)
		self:unlearnTalent(self.VITALITY,true,1)
		self.torso_desc = ""
		self.torso_species = ""
		self.torso_speciesadj = ""
		self.torso_last = "Latex Fox"
		return true
	end,
	info = function(self, t)
		return ""
	end,
}

newTalent{
	name = "T_ASS_LATEXFOX",
	type = {"inherent/infections", 1},
	points = 1,
	mode = "passive",
	on_learn = function(self, t)
		self.ass_desc = "They have a large fox tail cartoonishly ballooning from their bottom."
		self.ass_tf = "A sudden loud FWOOMF has you looking over your shoulder just in time to see a new, large, fox like tail curling and flicking energetically."
		self.ass_species = "fox"
		self.ass_speciesadj = "vulpine"
		if not (self.ass_last == "Latex Fox") and self == player then
			game.logPlayer(self, "#LIGHT_GREEN#Transform> #ORANGE#%s", player.ass_tf)
		end
		return true
	end,
	on_unlearn = function(self, t)
		self.ass_desc = ""
		self.ass_species = ""
		self.ass_speciesadj = ""
		self.ass_last = "Latex Fox"
		return true
	end,
	info = function(self, t)
		return ""
	end,
}

newTalent{
	name = "T_LEGS_LATEXFOX",
	type = {"inherent/infections", 1},
	points = 1,
	mode = "passive",
	on_learn = function(self, t)
		self:learnTalent(self.RUBBER_HIDE,true,1)
		self.legs_desc = "digitigrade and shaped like dog legs with large paws for feet."
		self.legs_tf = "Smooth latex seems to rush out over your body, covering every inch of you, inside and out, leaving you shivering and somewhat flush."
		self.legs_species = "fox"
		self.legs_speciesadj = "vulpine"
		if not (self.legs_last == "Latex Fox") and self == player then
			game.logPlayer(self, "#LIGHT_GREEN#Transform> #ORANGE#%s", player.legs_tf)
		end
		return true
	end,
	on_unlearn = function(self, t)
		self:unlearnTalent(self.RUBBER_HIDE,true,1)
		self.legs_desc = ""
		self.legs_species = ""
		self.legs_speciesadj = ""
		self.legs_last = "Latex Fox"
		return true
	end,
	info = function(self, t)
		return ""
	end,
}

newTalent{
	name = "T_ARMS_LATEXFOX",
	type = {"inherent/infections", 1},
	points = 1,
	mode = "passive",
	on_learn = function(self, t)
		self:learnTalent(self.CLAW_SWIPE,true,1)
		self.arms_desc = "largely human, except their hands are somewhat paw like, with black claws at the ends of fingers."
		self.arms_tf = "Your arms tingle softly as your hands reshape into a slightly paw like fashion, with black claws at the end."
		self.arms_species = "fox"
		self.arms_speciesadj = "vulpine"
		if not (self.arms_last == "Latex Fox") and self == player then
			game.logPlayer(self, "#LIGHT_GREEN#Transform> #ORANGE#%s", player.arms_tf)
		end
		return true
	end,
	on_unlearn = function(self, t)
		self:unlearnTalent(self.CLAW_SWIPE,true,1)
		self.arms_desc = ""
		self.arms_species = ""
		self.arms_speciesadj = ""
		self.arms_last = "Latex Fox"
		return true
	end,
	info = function(self, t)
		return ""
	end,
}

newTalent{
	name = "T_SKIN_LATEXFOX",
	type = {"inherent/infections", 1},
	points = 1,
	mode = "passive",
	on_learn = function(self, t)
		self:learnTalent(self.RUBBER_HIDE,true,3)
		self.skin_desc = "red and white latex"
		self.skin_tf = "A wave of itching runs through the meat of your body as your legs pop into a new, digitigrade, configuration. Your feet begin to feel cramped before they snap loudly, becoming entirely shaped like paws."
		self.skin_longdesc= "red and white latex."
		self.skin_species = "rubber"
		self.skin_speciesadj = "rubbery"
		if not (self.skin_last == "Latex Fox") and self == player then
			game.logPlayer(self, "#LIGHT_GREEN#Transform> #ORANGE#%s", player.skin_tf)
		end
		return true
	end,
	on_unlearn = function(self, t)
		self:unlearnTalent(self.RUBBER_HIDE,true,3)
		self.skin_desc = ""
		self.skin_longdesc= ""
		self.skin_species = "human"
		self.skin_speciesadj = "smooth"
		self.skin_last = "Latex Fox"
		return true
	end,
	info = function(self, t)
		return ""
	end,
}

