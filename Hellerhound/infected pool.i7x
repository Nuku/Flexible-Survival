Version 1 of Infected Pool by Hellerhound begins here.

Section 1 - Pure Pool

Table of GameEventIDs (continued)
Object	Name
Pure Pool	"Pure Pool"

Pure Pool is a situation.
ResolveFunction of Pure Pool is "[ResolveEvent Pure Pool]".
Sarea of Pure Pool is "Park".
PurePoolSeen is a truth state that varies. PurePoolSeen is usually false.
PurePoolPolluted is a truth state that varies. PurePoolPolluted is usually false.
PurePoolPollutedByPlayer is a truth state that varies. PurePoolPollutedByPlayer is usually false.

when play begins:
	add Pure Pool to BadSpots of MaleList;

to say ResolveEvent Pure Pool:
	if PurePoolSeen is false:
		say "     You smell in the air a slight difference, seeming cleaner, more pure. You look around for the source.";
		say "     You come across a pool of water in the park. Unlike the puddles in the city, this one is clean and clear, and you can see the red stones at the bottom. You take a small drink and feel less thirsty.";
		PlayerDrink 10;
		now PurePoolSeen is true;
		now Resolution of Pure Pool is 1; [saw the pool]
	else if PurePoolSeen is true and PurePoolPolluted is false:
		say "     Exploring the park, you hear an echoing scream. It sounds like a wyvern, but what are those doing in the park?";
		say "     Do you check out the situation?";
		if Player consents:
			LineBreak;
			say "     You follow the sound to the clear pool you found before. However, two wyverns are fighting. It is pretty obvious from the dialogue that they want to infect the pool, but cannot agree on who will do it first.";
			if Player is male and Libido of Player > 49:
				if CockName of Player is "Wyvern":
					say "     You could help resolve the situation by corrupting the pond yourself. Do you wish to do so?";
					if Player consents:
						LineBreak;
						say "     You begin stroking your [cock size desc of Player] [one of]cock[smn][or]penis[esmn][or]shaft[smn][or]maleness[esmn][at random], moaning as pleasure builds in your loins. By the time the wyverns turn around and notice you, you are about to blow your load. [one of]They begin stroking as well, rushing to come before you[or]They watch as you continue, stunned that someone would have the precocity to subvert their efforts[at random].";
						say "     You blow your load into the pool, thick streams of seed spraying from your [Cock of Player] [one of]cock[smn][or]penis[esmn][or]shaft[smn][or]maleness[esmn][at random], and you scream as your powerful orgasm overtakes you. The seed soaks into the pool, leaving the water murky and infecting the whole thing. The pool becomes cloudy and the clean smell in the air disappears.";
						now PurePoolPolluted is true;
						now PurePoolPollutedByPlayer is true;
						now Resolution of Pure Pool is 2; [player polluted it]
					else:
						LineBreak;
				else:
					say "[stop wyvern]";
			else:
				say "[stop wyvern]";
		else:
			LineBreak;
	else if PurePoolPolluted is true:
		say "     You come across the same pool that you [if PurePoolPollutedByPlayer is true]infected before[else]watched the wyvern infect earlier[end if]. Do you wish to drink from it?";
		if Player consents:
			LineBreak;
			say "     You dip your head into the cloudy pool and drink deeply.";
			ThirstReset;
			if "Iron Stomach" is not listed in feats of Player:
				MultiInfect "Wyvern" repeats 3;
		else:
			LineBreak;
			say "     You keep clear of the infected water.";
		now Pure Pool is resolved;

to say stop wyvern:
	say "     Do you try to stop them?";
	if Player consents:
		now WYVGEN is 2;
		challenge "Wyvern";
		if fightoutcome < 20: [won]
			say "     After you finish with the first wyvern, the second attacks!";
			now WYVGEN is 2;
			challenge "Wyvern";
			if fightoutcome < 20: [won]
				say "     After your ferocity in defending the pool, the wyverns decide they have had enough and leave, crashing a path through the park that leads in the direction of the city. Now that you've saved the pool from the danger of infection, you decide that it owes you a good drink and dip your head into the clear water.";
				ThirstReset;
				now Resolution of Pure Pool is 3; [player fought wyverns to save the pool]
			else:
				say "[WYVVIC]";
				now PurePoolPolluted is true;
				now Resolution of Pure Pool is 5; [player fought wyverns and lost]
		else:
			say "[WYVVIC]";
			now PurePoolPolluted is true;
			now Resolution of Pure Pool is 5; [player fought wyverns and lost]
		now Pure Pool is resolved;
	else:
		LineBreak;
		say "     You watch silently as the first wyvern overpowers the second, and begins to stroke. This is your last chance to intervene. Do you?";
		if Player consents:
			now WYVGEN is 2;
			challenge "Wyvern";
			if fightoutcome < 20: [won]
				say "     After you finish with the first wyvern, the second attacks!";
				now WYVGEN is 2;
				challenge "Wyvern";
				if fightoutcome < 20: [won]
					say "     After freeing the pool from the danger of infection, you decide that it owes you a good drink.";
					ThirstReset;
					now Resolution of Pure Pool is 3; [player fought wyverns to save the pool]
				else:
					say "[WYVVIC]";
				now PurePoolPolluted is true;
				now Resolution of Pure Pool is 5; [player fought wyverns and lost]
			else:
				say "[WYVVIC]";
				now PurePoolPolluted is true;
				now Resolution of Pure Pool is 5; [player fought wyverns and lost]
			now Pure Pool is resolved;
		else:
			LineBreak;
			say "     You watch as the wyvern screams like it did before, then blows its load into the pool, clouding the water and dissipating the clean smell about the area.";
			now PurePoolPolluted is true;
			now Resolution of Pure Pool is 4; [player watched wyverns pollute the pool]

Infected Pool ends here.
