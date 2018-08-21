Version 1 of Hunting by Core Mechanics begins here.
[- Originally Authored By: Nuku Valente -]
[Version 1 - Edited out of the Story.ni and given its own file]

battleground is a text that varies.

Hunting is an action applying to one topic.
ishunting is a truth state that varies. ishunting is usually false.

understand "hunt [text]" as hunting.

check hunting:
	if blindmode is true:
		say "You're playing in blind-mode, so hunting is not allowed. You'll have to try exploring to find what you seek." instead;
	else if there is a dangerous door in the location of the player: [danger door]
		let y be a random dangerous door in the location of the player;
		now battleground is the marea of y;
	else if earea of location of player is not "void": [explore/hunt anywhere]
		now battleground is earea of location of player;
	else: [neither option available]
		say "I don't see any good hunting grounds around here." instead;

carry out hunting:
	if debugactive is 1:
		say "DEBUG -> Battleground: [battleground]; Target: [topic understood][line break]";
	let Q be a list of numbers;
	let found be 0;
	let sitfound be 0;
	let foundbadtime be 0;
	let foundelsewhere be 0;
	let scorefound be 0;
	if ( bodyname of player is "Mental Mouse" or mousecurse is 1 ) and companion of player is not mouse girl:		[hunted by the mouse collective]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry exactly matches the text "Mental Mouse", case insensitively:
				add y to q;
				add y to q;
				if "Like Attracts Like" is listed in feats of player:
					add y to q;
				if humanity of player < 75:
					repeat with x running from 1 to ( ( 100 - humanity of player ) / 25 ):
						add y to q;
				break;
	if insectlarva is true and larvaegg is 1 and gestation of child is 0:		[hunted by wasp hive anywhere outdoors]
		if battleground is not "Mall" and battleground is not "Stables" and battleground is not "Hospital" and battleground is not "Museum" and battleground is not "Sealed":
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry exactly matches the text "Black Wasp", case insensitively:
					add y to q;
					if "Like Attracts Like" is listed in feats of player:
						add y to q;
					if libido of player > 30:
						repeat with x running from 1 to ( libido of player / 30 ):
							add y to q;
					if larvacounter > 3:
						repeat with x running from 1 to ( larvacounter / 3 ):
							add y to q;
					break;
	if debugactive is 1:
		say "DEBUG -> Run through the table of random critters for EXCACT matching names:[line break]";
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if there is no area entry, next; [broken creatures / empty lines get ignored]
		if there is no name entry, next; [broken creatures / empty lines get ignored]
		[removed a commented out fragment from here, see end of file]
		if (area entry exactly matches the text battleground, case insensitively or area entry is "Everywhere"):
			[if found is 1, next;]
			if there is a nocturnal in row X of table of random critters:
				if ((nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night)):
					if (name entry exactly matches the text topic understood, case insensitively or enemy title entry exactly matches the text topic understood, case insensitively or enemy name entry exactly matches the text topic understood, case insensitively):
						say "You are almost certain you saw some [name entry] tracks...";
						now foundbadtime is 1;
					next; [skips if day/night doesn't match]
			if (name entry exactly matches the text topic understood, case insensitively or enemy title entry exactly matches the text topic understood, case insensitively or enemy name entry exactly matches the text topic understood, case insensitively):
				say "You are almost certain you saw some [name entry] tracks...";
				if debugactive is 1:
					say "DEBUG -> Found creature [name entry] in battleground [battleground][line break]";
				[basic encounter chance]
				now found is 1;
				add x to q;
				[extra encounter chances]
				let zed be perception of player / 3;
				if zed > 8:
					now zed is 8;
				repeat with N running from 1 to zed:
					add x to q;
				if "Curious" is listed in feats of player:
					add x to q;
				if "Expert Hunter" is listed in feats of player:
					add x to q;
					add x to q;
				if "Master Baiter" is listed in feats of player:
					repeat with N running from 1 to ( perception of player / 3 ):
						add x to q;
			else:
				if there is a lev entry:
					if lev entry > level of player plus levelwindow, next;
				else:
					next;
				if "Expert Hunter" is listed in feats of player and a random chance of 1 in 3 succeeds:
					next;
				let skipit be 0;
				repeat with s running through warded flags:
					if name entry is listed in infections of s:
						now skipit is 1;
						break;
				if skipit is 1, next;
				add x to q;
				if debugactive is 1:
					say "DEBUG -> Other creature [name entry] found for the battleground: [battleground].[line break]";
			if "Like Attracts Like" is listed in the feats of player:
				if bodyname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if facename of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if skinname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if tailname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
				if cockname of player is name entry and a random chance of 1 in 2 succeeds, add x to q;
	if found is 0:
		if debugactive is 1:
			say "DEBUG -> No EXACT creature match, last ditch runthrough with SIMPLE matching.[line break]";
		repeat with X running from 1 to number of filled rows in table of random critters:
			choose row X from the table of random critters;
			if there is no area entry, next; [broken creatures / empty lines get ignored]
			if there is no name entry, next; [broken creatures / empty lines get ignored]
			if (area entry exactly matches the text battleground, case insensitively or area entry is "Everywhere"):
				if (name entry matches the text topic understood, case insensitively or enemy title entry matches the text topic understood, case insensitively or enemy name entry matches the text topic understood, case insensitively):
					say "You are almost certain you saw some [name entry] tracks...";
					if debugactive is 1:
						say "DEBUG -> Found creature: [name entry] in Battleground: [battleground][line break]";
					if there is a nocturnal in row X of table of random critters:
						if ((nocturnal entry is true and daytimer is day) or (nocturnal entry is false and daytimer is night)):
							now foundbadtime is 1;
						break; [creature found, wrong time, leave loop]
					[basic encounter chance]
					now found is 1; [creature found]
					add x to q;
					[extra encounter chances]
					let zed be perception of player / 3;
					if zed > 8:
						now zed is 8;
					repeat with N running from 1 to zed:
						add x to q;
					if "Curious" is listed in feats of player:
						add x to q;
					if "Expert Hunter" is listed in feats of player:
						add x to q;
						add x to q;
					if "Master Baiter" is listed in feats of player:
						repeat with N running from 1 to ( perception of player / 3 ):
							add x to q;
					break; [creature found, leave loop (it already got the random critters the last time)]
	if found is 0:
		if debugactive is 1:
			say "DEBUG -> Still nothing?! Let's do a simple search in other zones too.[line break]";
		repeat with X running from 1 to number of filled rows in table of random critters:
			choose row X from the table of random critters;
			if there is no name entry, next; [broken creatures / empty lines get ignored]
			if (name entry matches the text topic understood, case insensitively or enemy title entry matches the text topic understood, case insensitively or enemy name entry matches the text topic understood, case insensitively):
				now foundelsewhere is 1; [creature is in another zone]
	if debugactive is 1:
		say "DEBUG -> The following entry numbers in the table of random critters were found for Battleground [battleground]: [q][line break]";
		say "DEBUG -> A target called [topic understood] was [if found is 1]FOUND[else]NOT FOUND[end if] among the creatures.[line break]";
		if foundelsewhere is 1:
			say "DEBUG -> But it was found in another area.[line break]";
	if the number of entries in q is not 0 and found is 1: [got list of creatures in the area & found the target]
		sort Q in random order; [the one who gets put on #1 is the winner]
		if debugactive is 1:
			say "DEBUG -> Random sorted q: [q][line break]";
		now monster is entry 1 in Q; [randomly chosen creature]
		choose row monster from the table of random critters;
		if debugactive is 1:
			say "DEBUG -> Randomly chosen creature is: [name entry][line break]";
		now monsterHP is HP entry;
		if (name entry exactly matches the text topic understood, case insensitively or enemy title entry exactly matches the text topic understood, case insensitively or enemy name entry exactly matches the text topic understood, case insensitively):
			now ishunting is true;
		challenge;
		now ishunting is false;
		if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
			say "As you are trying to recover from your last encounter, another roving creature finds you.";
			Fight;
		follow the turnpass rule;
	else: [no creatures present or target not a creature]
		[now found is 0;] [commented out since found should always be 0 to get here]
		if debugactive is 1:
			say "DEBUG -> Checking [topic understood] against fasttravel rooms now. (EXACT MATCH)[line break]";
		repeat with z running through unknown fasttravel rooms:
			if z is private, next;
			if printed name of z exactly matches the text topic understood, case insensitively:
				say "It should be somewhere...";
				now found is 1;
				let dice be a random number from 1 to 20;
				let the bonus be (( the perception of the player minus 10 ) divided by 2);
				if "Curious" is listed in feats of player, increase bonus by 2;
				increase dice by bonus;
				if dice >= 15 or "Unerring Hunter" is listed in feats of player:
					say "You manage to find your way towards [z]!";
					huntingfightchance;
					move player to z;
					now z is known;
					now battleground is "void";
				else:
					say "Despite your searches, you fail to find it.[line break]";
					huntingfightchance;
					now battleground is "void";
				break;
		if found is 0:
			if debugactive is 1:
				say "DEBUG -> Checking [topic understood] against fasttravel rooms now. (SIMPLE MATCH)[line break]";
			repeat with z running through unknown fasttravel rooms:
				if z is private, next;
				if printed name of z exactly matches the text topic understood, case insensitively:
					say "It should be somewhere...";
					now found is 1;
					let dice be a random number from 1 to 20;
					let the bonus be (( the perception of the player minus 10 ) divided by 2);
					if "Curious" is listed in feats of player, increase bonus by 2;
					increase dice by bonus;
					if dice >= 15 or "Unerring Hunter" is listed in feats of player:
						say "You manage to find your way towards [z]!";
						huntingfightchance;
						move player to z;
						now z is known;
						now battleground is "void";
					else:
						say "Despite your searches, you fail to find it.[line break]";
						huntingfightchance;
						now battleground is "void";
					break;
		if found is 0:
			if debugactive is 1:
				say "DEBUG -> Checking [topic understood] against situations/events now (EXACT MATCH).[line break]";
			repeat with z running through unresolved situations:
				if z is not close:
					if sitfound is 0:
						if printed name of z exactly matches the text topic understood, case insensitively:
							now sitfound is 1;
					next;
				if score < minscore of z:
					if scorefound is 0:
						if printed name of z exactly matches the text topic understood, case insensitively:
							now scorefound is 1;
				if printed name of z exactly matches the text topic understood, case insensitively:
					say "It should be somewhere...";
					now found is 1;
					let dice be a random number from 1 to 20;
					let the bonus be (( the perception of the player minus 10 ) divided by 2);
					if "Curious" is listed in feats of player, increase bonus by 2;
					increase dice by bonus;
					if dice >= 15 or "Unerring Hunter" is listed in feats of player:
						now inasituation is true;
						say "You manage to find your way to [z]!";
						try resolving z;
						now inasituation is false;
					else:
						now inasituation is false;
						say "Despite your searches, you fail to find it.[line break]";
						huntingfightchance;
					break;
		if found is 0:
			if debugactive is 1:
				say "DEBUG -> Checking [topic understood] against situations/events now (SIMPLE MATCH).[line break]";
			repeat with z running through unresolved situations:
				if z is not close:
					if sitfound is 0:
						if printed name of z matches the text topic understood, case insensitively:
							now sitfound is 1;
					next;
				if score < minscore of z:
					if scorefound is 0:
						if printed name of z exactly matches the text topic understood, case insensitively:
							now scorefound is 1;
				if printed name of z matches the text topic understood, case insensitively:
					say "It should be somewhere...";
					now found is 1;
					let dice be a random number from 1 to 20;
					let the bonus be (( the perception of the player minus 10 ) divided by 2);
					if "Curious" is listed in feats of player, increase bonus by 2;
					increase dice by bonus;
					if dice >= 15 or "Unerring Hunter" is listed in feats of player:
						now inasituation is true;
						say "You manage to find your way to [z]!";
						try resolving z;
						now inasituation is false;
					else:
						now inasituation is false;
						say "Despite your searches, you fail to find it.[line break]";
						huntingfightchance;
					break;
		if found is 0:
			if debugactive is 1:
				say "DEBUG -> Shameful failure message with reason:[line break]";
			if foundbadtime is 1: [creature found, wrong time of day]
				say "[bold type]There doesn't seem to be any of them around right now. Maybe it's the wrong time to go hunting for such creatures...[roman type][line break]";
			else if foundelsewhere is 1: [creature found, other area]
				say "[bold type]Doesn't look like the creature you are hunting roams around in this area. Maybe you should check elsewhere...[roman type][line break]";
			else if scorefound is 1: [event found, lvl too low]
				say "[bold type]You're not ready to find this yet. Go have some accomplishments elsewhere and come back when you have gained experience...[roman type][line break]";
			else if sitfound is 0: [no creature, room or event of that name]
				say "[bold type]You don't think what you're looking for can be found here...[roman type][line break]";
			else if sitfound is 1: [event found, other area]
				say "[bold type]Perhaps you should try looking somewhere closer to what you seek...[roman type][line break]";
			huntingfightchance; [random fight chance]
		follow the turnpass rule;

to huntingfightchance:
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if "Stealthy" is listed in feats of player, now bonus is -1;
	if "Curious" is listed in feats of player, increase bonus by 2;
	if "Bad Luck" is listed in feats of player, increase bonus by 1;
	if a random number from 1 to 20 < 7 plus bonus and battleground is not "void":
		if there is a area of Battleground in the table of random critters:
			Fight;
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;

Hunting ends here.
