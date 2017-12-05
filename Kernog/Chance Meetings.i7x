Version 1 of Chance Meetings by Kernog begins here.

Section 1 - Main situation

[Chance Meeting is a repeatable situations. It semi-randomly plays NON-REPEATABLE situations involving one or several NPCs]
[The main goal of tis extension is to provide interaction between NPCs]
[Please ensure that NPCs either know the player (thanks to secondary variables) or are following him as a companion with if x is companion of player]
[If no rule is met, a low-level fight is launched, in order to provide the event a default closure]
Chance Meeting is a situation.
The sarea of Chance Meeting is "Outside".

Instead of resolving Chance Meeting:
	say "     As you pass by [one of]a derelict[or]an abandoned[or]an unhabited[or]a deserted[or]a ransacked[at random] [one of]bar[or]school[or]warehouse[or]book store[or]liquor store[or]supermarket[or]kindergarten[or]small house[or]arcade[or]electronic store[at random], you hear voices and rumbling coming from inside.";
	say "     It may be someone you know. [bold type]Do you wish to investigate?[roman type][line break]";
	say "[link]Y[as]y[end link] You should check. Who knows?";
	say "[link]N[as]n[end link] Curiosity killed the cat.";
	if player consents:
		LineBreak;
		if (generationConflictFlag is 0 and ratTwinsStatus is 2 and BrennanRelationship > 11 and a random chance of 1 in 3 succeeds):
			say "[Generation Conflict]";
		else:
			if (Girl is banned or Girl is Warded):
				say "     You explore the place, only to get jumped by a latex fox.";
				challenge "latex fox";
			else:
				say "      You explore the place, only to get jumped by a husky girl.";
				challenge "female husky";
	else:
		LineBreak;
		say "     Favouring caution, you quietly slip away and continue your patrol.";

Section 2 - Non-repeatable sub-events

[Define a number for your sub-event. At the end of the event, increase the number by 1 to close the event]
generationConflictFlag is a number that varies.

to say Generation Conflict:
	say "    As you pass the building's entrance, you hear loud barks, followed by Brennan shouting: 'Stop it Remus! Not you too, Romulus!' You hurry further and stumble upon your friend, looking with a distraught expression on his face, as his lupine companions are rushing a pair of giant rats. Wait...";
	say "    'Aaaaw, they're so cute!' one of them, whom you recognize as Violet, says as she glomps Romulus against her fur.";
	say "    'Umm, sis, you should be careful around strangers['] dogs,' her twin brother Erin said, trying to keep Remus['] saliva from landing on his prized pants.";
	say "    'Hey, who're you calling a stranger?' Brennan asked, crossing his arms. 'You're the most suspicious looking guys, here.";
	say "    'Who's a good boy? Who's a good boooy?' Violet kept going, oblivious.";
	say "    It is only now that Brennan and Erin remark your presence. Smiling, you explain to the both of them that you are a common acquaintance, and it seems to defuse the tension between the two.";
	WaitLineBreak;
	say "    'So, you live at the restaurant by the beach?' Brennan asks, while he takes a can of soda from the shared pile that him, the twins and you put together. 'Haven't got any problem there?'";
	say "     'Nah,' Violet replies after taking a gulp of sugary beverage. 'The rowdier bunch is downstairs, at the beach proper. The cliffside is calm. Most of the time.'";
	say "     'We found the key of the restaurant's storage room, so we simply put our stuff there when we're out in the city,' Erin says. 'Besides, most visitors know our faces, and they tend to behave themselves. With some encouragement, of course.'";
	say "     'He means sex,' Violet interjects, making Brennan cough out his soda, to the general hilarity. 'And so... you got a shelter, old man?'";
	say "    'I'm not [italic type]that[roman type] old. And yes. I found myself an empty flat, downtown. Well isolated. It's as safe as it can be. If you two want to find a better place. Well... I would not mind having some company. [subjpro_cap of player] visits me from time to time, and you are welcome to do the same.'";
	say "     'Neat,' Violet replies, as she absentmindedly pushes Remus' head from her crotch, as if it was no big thing. 'Well, don't be a stranger either, if you pass by the beach.' Violet suddenly turns towards you: 'Anyway, you've been quite silent, pal. How's it hanging on your end?'";
	WaitLineBreak;
	say "     The four of you keep talking for some time, and eventually, Brennan decides to keep moving. Erin and Violet take their leave as well, after offering you and Brennan a spare soda they salvaged from a vending machine ('It was like the giving tree: we kept kicking, we kept winning,' Erin tells you). On your own once again, you resume your exploration.";
	say "    Drinking the soda offered by Erin and Violet [bold type]quenched your thirst a little[roman type]. Also, [bold type]you earned an additional soda[roman type].";
	decrease thirst of player by 12;
	increase carried of soda by 1;
	now generationConflictFlag is 1;

Chance Meetings end here.
