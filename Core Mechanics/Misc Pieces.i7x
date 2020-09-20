Version 1 of Misc Pieces by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

To decide which number is numeric/numerical value of (T - indexed text):
	let S be 1;
	let L be the number of characters in T;
	if L is 0, decide on 0;
	let negated be false;
	if character number 1 in T is "-" begin;
		let negated be true;
		let S be 2;
	end if;
	let result be 0;
	repeat with N running from S to L begin;
		let C be character number N in T;
		let D be 0;
		if C is "1" begin; let D be 1; else if C is "2"; let D be 2;
		else if C is "3"; let D be 3; else if C is "4"; let D be 4;
		else if C is "5"; let D be 5; else if C is "6"; let D be 6;
		else if C is "7"; let D be 7; else if C is "8"; let D be 8;
		else if C is "9"; let D be 9; else if C is "0"; let D be 0;
		else; decide on 0; end if;
		let result be (result * 10) + D;
	end repeat;
	if negated is true, let result be 0 - result;
	decide on result.

keychar is a text that varies.

To translate (k - a number):
	if k is 13 or k is -6:
		now keychar is "return";
	else if k is 31 or k is 32:
		now keychar is " ";
	else if k is 48:
		now keychar is "0";
	else if k is 49:
		now keychar is "1";
	else if k is 50:
		now keychar is "2";
	else if k is 51:
		now keychar is "3";
	else if k is 52:
		now keychar is "4";
	else if k is 53:
		now keychar is "5";
	else if k is 54:
		now keychar is "6";
	else if k is 55:
		now keychar is "7";
	else if k is 56:
		now keychar is "8";
	else if k is 57:
		now keychar is "9";
	else if k is 65 or k is 97:
		now keychar is "a";
	else if k is 66 or k is 98:
		now keychar is "b";
	else if k is 67 or k is 99:
		now keychar is "c";
	else if k is 68 or k is 100:
		now keychar is "D";
	else if k is 69 or k is 101:
		now keychar is "E";
	else if k is 70 or k is 102:
		now keychar is "F";
	else if k is 71 or k is 103:
		now keychar is "G";
	else if k is 72 or k is 104:
		now keychar is "H";
	else if k is 73 or k is 105:
		now keychar is "I";
	else if k is 74 or k is 106:
		now keychar is "J";
	else if k is 75 or k is 107:
		now keychar is "K";
	else if k is 76 or k is 108:
		now keychar is "L";
	else if k is 77 or k is 109:
		now keychar is "M";
	else if k is 78 or k is 110:
		now keychar is "N";
	else if k is 79 or k is 111:
		now keychar is "O";
	else if k is 80 or k is 112:
		now keychar is "P";
	else if k is 81 or k is 113:
		now keychar is "Q";
	else if k is 82 or k is 114:
		now keychar is "R";
	else if k is 83 or k is 115:
		now keychar is "S";
	else if k is 84 or k is 116:
		now keychar is "T";
	else if k is 85 or k is 117:
		now keychar is "U";
	else if k is 86 or k is 118:
		now keychar is "V";
	else if k is 87 or k is 119:
		now keychar is "W";
	else if k is 88 or k is 120:
		now keychar is "X";
	else if k is 89 or k is 121:
		now keychar is "Y";
	else if k is 90 or k is 122:
		now keychar is "Z";
	else:
		now keychar is "INVALID";


[
Punying is an action applying to nothing.
understand "Puny" as punying.

carry out punying:
	now dexterity of Player is 1;
	now stamina of Player is 1;
	now perception of Player is 18;
	say "You feel puny, but perceptive.";

glstart is a number that varies. glstart is usually 2.
glshiftstart is a number that varies. glshiftstart is usually 0.

To startgenderlockshift:
	now glshiftstart is 1;
	if GenderLock < 2 and glstart is 1:
		say "You chose to start as your gender lock option, but have not selected one. Would you like to do so now?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Choose a gender lock.";
		say "     ([link]N[as]n[end link]) - Start game without lock.";
		if Player consents:
			genderlockmenu;
	if GenderLock is:
		-- 3:	[male]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Breast Size of Player is 0;
			remove womanhood from Player;
		-- 4:		[female]
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 2;
			remove manhood from Player;
		-- 5:		[shemale]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Breast Size of Player is 2;
			remove womanhood from Player;
		-- 6: [cuntboy]
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 0;
			remove manhood from Player; [balls not included ;-)]
		-- 7: [male herm]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 0;
		-- 8: [herm]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
			now Breast Size of Player is 2;
		-- 9: [always cocky]
			now Cock Count of Player is 1;
			now Cock Length of Player is 6;
			now the Ball Size of Player is 3;
		-- 10: [always a pussy]
			now Cunt Count of Player is 1;
			now Cunt Depth of Player is 6;
			now Cunt Tightness of Player is 4;
		-- 12: [flat chested]
			now Breast Size of Player is 0;
		-- 13: [simplified masculine]
			now Breast Size of Player is 0;
]



[to be determined if this is even used anymore]
[
Table of Start Game
title	subtable	description	toggle
"Strength: [strength of Player]"	--	"Your ability to exert force. Helps deal damage with melee weapons, and to carry heavy objects."	finish stats rule
"Dexterity: [Dexterity of Player]"	--	"Speed, agility. Dexterity helps to land hits with melee weapons and avoid being hit in kind."	finish stats rule
"Stamina: [stamina of Player]"	--	"Your ability to withstand punishment. Stamina also helps to resist the physical aspects of infection."	finish stats rule
"Charisma: [Charisma of Player]"	--	"Your ability to exert social force. Deal with NPCs favorably, also helps resist mental aspects of infection."	finish stats rule
"Intelligence: [Intelligence of Player]"	--	"Your ability to logically compute things. Helps with activities that require 'book smarts'."	finish stats rule
"Perception: [Perception of Player]"	--	"Your ability to detect things. Also helps resist mental aspects of infection."	finish stats rule
["Reroll Stats"	--	"Randomize your stats. Do this as often as you want."	random stats rule]
"Select a Stat to gain [if started is 0]+5[else]+1[end if]"	--	"You are satisfied with your stats"	--
"Restore a save"	--	"Restore a save game!"	prerestore the game rule

This is the prerestore the game rule:
	decrease the menu depth by 1;
	try restoring the game;
	if maxHP of Player is 0, try restarting the game;

Table of sex choice
title	subtable	description	toggle
"Man"	--	--	male choice rule
"Woman"	--	--	female choice rule

Table of Starting Location
title	subtable	description	toggle
"Bunker"	--	--	location choice rule
"Caught Outside"	--	--	location choice rule
"Rescuer Stranded"	--	--	location choice rule
"Forgotten"	--	--	location choice rule
"Researcher"	--	--	location choice rule
"Hard mode"	--	--	location choice rule


Table of combat items
title(indexed text)	subtable	description	toggle
"Nothing"	--	"Nothing here."	combat item rule
with 100 blank rows.

Table of Basic Actions
title	subtable	description	toggle
["Go Exploring"	--	"Go wandering the city and look for generally interesting things."	explore rule]
["Rest"	--	"Take a breather"	rest rule]
["Examine yourself"	--	--	Self examine rule]
"Help"	Table of Help	"Get some help on this madness!"
"Strength: [strength of Player], Dexterity: [dexterity of Player], Stamina: [stamina of Player], Charisma: [Charisma of Player], Intelligence: [intelligence of Player], Perception: [perception of Player]."	--	"Stats"	--
"Health: [HP of Player]/[maxHP of Player], Libido: [Libido of Player], Morale: [morale of Player], Humanity: [Humanity of Player]"	--	"More stats"	--
"Time Remaining: [( turns minus targetturns ) divided by 8] days, [(remainder after dividing ( turns minus targetturns ) by 8 ) times 3] hours, Score: [score]"	--	"Time until the game ends."	Turnpass rule

Table of Help
title	subtable	description	toggle
"Is this all?"	--	"Yep, more to come later, promise!"
"Exit"	--	"Previous Menu"	menu exit rule
]


[
This is the location choice rule:
	choose row current menu selection in the table of starting location;
	if title entry is "Bunker":
		say "You managed to find your way to a bunker, where you hid away for some time. No special perks, default start.";
	else if title entry is "Caught Outside":
		say "You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you. (Gain Spartan Diet, slowing gain of hunger and thirst)[line break]";
	else if title entry is "Rescuer Stranded":
		say "You arrived late, looking for survivors, when you got cut off from your teammates. Now you just want to survive! (Start with no supplies)[line break]";
	else if title entry is "Forgotten":
		say "You stayed in hiding too long. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	else if title entry is "Hard mode":
		say "You always had a desire to challenge yourself so purposely waited for some stronger opponents to appear before venturing out. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive![line break]";
	else if title entry is "Researcher":
		say "You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection (you won't transform from losing battles) and have specialized equipment that allows you to collect the infection vials of those you defeat.[line break]";
	say "Continue?";
	if Player consents:
		now looknow is 0;
	else:
		the rule fails;
	if title entry is not "Bunker":
		say "What luck. After looking around desperately, you come across a library with a mostly intact bunker in it. This will serve well as a refuge while you wait for rescue.";
		if title entry is "Caught Outside":
			add "Spartan Diet" to feats of Player;
		if title entry is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
		if title entry is "Forgotten":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 600;
			now DateMonth is 6;
			extend game by 240;
		if title entry is "Hard mode":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 900;
			now DateMonth is 6;
			extend game by 240;
			now HardMode is true;
		if HardMode is false:
			say "Would you like to play hard mode?";
			if Player consents:
				now HardMode is true;
				say "HardMode activated!";
	now scenario is title entry;
	now the menu depth is 0;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	rule succeeds;

This is the final stats rule:
	now Morale of Player is Charisma of Player plus Perception of Player;
	now HP of Player is Stamina of Player times two;
	increase HP of Player by 5;
	now MaxHP of Player is HP of Player;
	now Humanity of Player is 100;
	now the Capacity of Player is five times Strength of Player;
	now the menu depth is 0;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	while 1 is 1:
		repeat with y running from 1 to number of filled rows in table of Starting Location:
			choose row y from the table of Starting Location;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "Type the number corresponding to the scenario you want to play> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of Starting Location:
			now current menu selection is calcnumber;
			follow the location choice rule;
			if rule succeeded, break;
		else:
			say "Invalid Selection.";
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	try looking;
	rule succeeds;

This is the male choice rule:
	now Cock Count of Player is 1;
	now Cock Length of Player is 6;
	now the Ball Size of Player is 3;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 0;
	remove womanhood from Player;
	now the current menu is table of Basic Actions;
	say "You are a man.";
	wait for any key;
	follow the final stats rule;
	rule succeeds;

This is the female choice rule:
	now Cunt Count of Player is 1;
	now Cunt Depth of Player is 6;
	now Cunt Tightness of Player is 3;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 2;
	remove manhood from Player;
	now the current menu is table of Basic Actions;
	say "You are a woman.";
	wait for any key;
	follow the final stats rule;
	rule succeeds;
]

[


This is the Menu Exit Rule:
	decrease the menu depth by 1;
	rule succeeds.

This is the finish stats rule:
	if started is 1:
		if Current menu selection is 1:
			increase strength of Player by 1;
			increase capacity of Player by 5;
			say "Your strength grows.";
		if Current menu selection is 2:
			increase dexterity of Player by 1;
			say "Your dexterity grows.";
		if Current menu selection is 3:
			increase Stamina of Player by 1;
			say "Your Stamina grows.";
		if Current menu selection is 4:
			increase charisma of Player by 1;
			say "Your charisma grows.";
		if Current menu selection is 5:
			increase intelligence of Player by 1;
			say "Your intelligence grows.";
		if Current menu selection is 6:
			increase perception of Player by 1;
			say "Your perception grows.";
		decrease menu depth by 1;
		rule succeeds;
	if Current menu selection is 1:
		say "Your strength is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase strength of Player by 5;
		else:
			rule fails;
	if Current menu selection is 2:
		say "Your dexterity is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase dexterity of Player by 5;
		else:
			rule fails;
	if Current menu selection is 3:
		say "Your stamina is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase stamina of Player by 5;
		else:
			rule fails;
	if Current menu selection is 4:
		say "Your charisma is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase charisma of Player by 5;
		else:
			rule fails;
	if Current menu selection is 5:
		say "Your intelligence is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase intelligence of Player by 5;
		else:
			rule fails;
	if Current menu selection is 6:
		say "Your perception is your specialty.";
		say "Are you sure?";
		if Player consents:
			increase perception of Player by 5;
		else:
			rule fails;
	now started is 1;
	say "[line break]You have decided your physical talents, but are you a man or a woman?";
	say "Do you want to be [link][bracket]m[close bracket][as]m[end link]ale or [link][bracket]f[close bracket][as]f[end link]emale?>[run paragraph on]";
	now tempnum is 0;
	while tempnum is 0:
		get typed command as playerinput;
		if Playerinput matches "m" or playerinput matches "1":
			now tempnum is 1;
			follow male choice rule;
		else if Playerinput matches "f" or playerinput matches "2":
			now tempnum is 1;
			follow female choice rule;
		else:
			say "Type 'm' or 'f'.> [run paragraph on]";
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	rule succeeds;



This is the d18 rule:
	now d18 is 0;
	increase d18 by a random number from 1 to 6;
	increase d18 by a random number from 1 to 6;
	increase d18 by a random number from 1 to 6;
	rule succeeds;

This is the random stats rule:
	follow the d18 rule;
	now Strength of Player is d18;
	follow the d18 rule;
	now Dexterity of Player is d18;
	follow the d18 rule;
	now Stamina of Player is d18;
	follow the d18 rule;
	now Charisma of Player is d18;
	follow the d18 rule;
	now Intelligence of Player is d18;
	follow the d18 rule;
	now Perception of Player is d18;
	decrease the score by 1;
	rule succeeds.


understand the command "feed" as something new.
]

Misc Pieces ends here.
