-- Flexible Surival
-- Copyright (C) 2014 Nicolas Casalini / David Silver

newChat{ id="welcome",
	template = [[Your forces abandon you, leaving you at <?=npc.name?> mercy.
It starts to fuck you vigorously.]],
	answers = {
		{"[let yourself succumb to the sexual assault]", action=function(npc, player) player:realDie(npc) end},
		{"[fight it off]"},
	}
}


return "welcome"
