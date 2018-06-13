Version 1 of infected pool by Hellerhound begins here.


Section 1 - Pure Pool

Pure pool is a situation.
The sarea of Pure Pool is "Park".
purpol is a number that varies.
purpolu is a number that varies.
when play begins:
	add Pure Pool to badspots of girl;


to say stop wyvern:
	say "Do you try to stop them?";
	if the player consents:
		challenge "Wyvern";
		say "After you finish with the first wyvern, the second attacks!";
		wait for any key;
		challenge "Wyvern";
		say "After your ferocity in defending the pool, the wyverns decide they have had enough and leave, crashing a path through the park. It seems to head in the direction of the city.";
		say "After freeing the pool from the danger of infection, you decide it owes you a good drink.";
		WaitLineBreak;
		say "You drink away your thirst.";
		now thirst of player is 0;
	else:
		say "You watch silently as the first wyvern overpowers the second, and begins to stroke. This is your last chance to intervene. Do you?";
		if the player consents:
			challenge "Wyvern";
			say "After you finish with the first wyvern, the second attacks!";
			wait for any key;
			challenge "Wyvern";
			say "After freeing the pool from the danger of infection, you decide it owes you a good drink.";
			WaitLineBreak;
			say "You drink away your thirst.";
			now thirst of player is 0;
		else:
			say "You watch as the wyvern screams just like it did before.";
			if the Perception of the player > 12:
				decrease perception of the player by 4;
				say "The blast damages your eardrums. (perception -4)";
			say "Then the wyvern blows its load into the pool, clouding the water and dissipating the clean smell about the area.";
			now purpol is 4;


instead of resolving a pure pool:
	if purpol is 0:
		say "You smell in the air a slight difference, seeming cleaner, more pure. You look around for the source.";
		say "You come across a pool of water in the park. Unlike the puddles in the city, this one is clean and clear, and you can see the red stones at the bottom. You take a small drink, and feel less thirsty.";
		decrease thirst of player by 10;
		increase purpol by 1;
	else if purpol is 1:
		say "Exploring the park, you hear an echoing scream. It sounds like a wyvern, but what are those doing in the park?";
		say "Do you check out the situation?";
		if player consents:
			say "You follow the sound to the clear pool you found before. However, two wyverns are fighting. It is pretty obvious from the dialogue that they want to infect the pool, but cannot agree on who will do it first.";
			if player is male and libido of player > 50:
				if cockname of player is "Wyvern":
					say "You could help resolve the situation by corrupting the pond yourself. Do you wish to?";
					if the player consents:
						say "You begin stroking your [cock of player] [if cocks of player > 1][one of]cock[or]penise[or]shaft[or]malenesse[at random]s[else][one of]cock[or]penis[or]shaft[or]maleness[at random][end if], moaning as you do so. By the time the wyverns turn around and notice you, you are about to blow your load.";
						if a random chance of one in 2 succeeds:
							say "They begin stroking as well, rushing to come before you.";
						else:
							say "They watch as you continue, stunned that someone would have the precocity to subvert their efforts.";
						say "You blow your load into the pool, thick streams of seed coming from your [cock length of player] inch long [cock of player] [if cocks of player > 1][one of]cock[or]penise[or]shaft[or]malenesse[at random]s[else][one of]cock[or]penis[or]shaft[or]maleness[at random][end if] and scream as well. The seed sprays into the pool, making the water murky and infecting the whole thing. The water becomes cloudy and the clean smell in the air disappears.";
						now purpol is 4;
						now purpolu is 1;
				else:
					say "[stop wyvern]";
			else:
				say "[stop wyvern]";
	else if purpol is 4:
		say "You find the infected pool";
		if purpolu > 0:
			say " that you infected before.";
		else:
			say " that you watched the wyvern infect.";
		say "Do you wish to drink from it?";
		if the player consents:
			say "You dip your head into the cloudy pool and drink deeply.";
			infect "Wyvern";
			infect "Wyvern";
			infect "Wyvern";
			now thirst of player is 0;
		else:
			say "You keep clear of the infected water.";

infected pool ends here.
