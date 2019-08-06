Version 2 of Hunting by Core Mechanics begins here.
[- Originally Authored By: Nuku Valente -]
[Version 2 - Completely Rewritten]


[ Found Values                                              ]
[  0: no target found                                       ]
[ 10: creature found, right area and time                   ]
[ 11: creature found, wrong time of day                     ]
[ 12: creature found, wrong area                            ]
[ 13: no area specified, error                              ]
[ 20: room found                                            ]
[ 21: room found, private                                   ]
[ 22: room found, perception check fail                     ]
[ 30: event found                                           ]
[ 31: event found, wrong area                               ]
[ 32: event found, lvl too low                              ]
[ 33: event found, score too low                            ]
[ 34: event found, already resolved                         ]
[ 35: event found, perception check fail                    ]

[ Hunting ORDER                                             ]
[   1. Exact Room Match                                     ]
[   2. Exact Situation Match                                ]
[   3. Exact Creature Match                                 ]
[   4. Simple Room Match                                    ]
[   5. Simple Situation Match                               ]
[   6. Simple Creature Match                                ]

battleground is a text that varies.
ishunting is a truth state that varies. ishunting is usually false.

HuntAction is an action applying to one topic.

understand "hunt [text]" as HuntAction.

check HuntAction:
	if blindmode is true:
		say "You're playing in blind-mode, so hunting is not allowed. You'll have to try exploring to find what you seek." instead;
	else if there is a dangerous door in the location of the player: [danger door]
		let y be a random dangerous door in the location of the player;
		now battleground is the marea of y;
	else if earea of location of Player is not "void": [explore/hunt anywhere]
		now battleground is earea of location of Player;
	else: [neither option available]
		say "I don't see any good hunting grounds around here." instead;

carry out HuntAction:
	let PossibleEncounters be a list of text;
	let Found be 0;
	let HuntId be "Target Name";
	now HuntID is topic understood in title case;
	if debugactive is 1:
		say "DEBUG -> Battleground: [battleground]; Target: [HuntId][line break]";
	[extra encounter chances]
	if "Unerring Hunter" is not listed in feats of Player: [only adds random monsters if the player isn't an unerring hunter]
		if ( BodyName of Player is "Mental Mouse" or mousecurse is 1 ) and companion of Player is not mouse girl:	[hunted by the mouse collective]
			if there is a name of "Mental Mouse" in the Table of Random Critters:
				add "Mental Mouse" to PossibleEncounters;
				if humanity of Player < 75:
					repeat with x running from 1 to ( ( 100 - humanity of Player ) / 25 ):
						add "Mental Mouse" to PossibleEncounters;
		if insectlarva is true and larvaegg is 1 and gestation of Child is 0: [hunted by wasp hive anywhere outdoors]
			if battleground is not "Mall" and battleground is not "Stable" and battleground is not "Hospital" and battleground is not "Museum" and battleground is not "Sealed":
				if there is a name of "Black Wasp" in the Table of Random Critters:
					add "Black Wasp" to PossibleEncounters;
					if Libido of Player > 30:
						repeat with x running from 1 to ( Libido of Player / 30 ):
							add "Black Wasp" to PossibleEncounters;
					if larvacounter > 3:
						repeat with x running from 1 to ( larvacounter / 3 ):
							add "Black Wasp" to PossibleEncounters;
	if there is a name of HuntId in the Table of GameRoomIDs:
		choose a row with name of HuntId in the Table of GameRoomIDs;
		if debugactive is 1:
			say "DEBUG -> Target Room: [Name entry] found by exact match with: [HuntId][line break]";
		if object entry is private:
			if debugactive is 1:
				say "DEBUG -> This room is private and can't be found![line break]";
				now Found is 21;
		else if object entry is not fasttravel:
			if debugactive is 1:
				say "DEBUG -> This room is not fasttravel and can't be found directly![line break]";
				now Found is 23;
		else:
			say "It should be somewhere...";
			if "Unerring Hunter" is not listed in feats of Player:
				let bonus be (( the Perception of the player minus 10 ) divided by 2);
				if "Curious" is listed in feats of Player, increase bonus by 2;
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
				increase diceroll by bonus;
				if diceroll >= 15:
					say "You manage to find your way towards [Name entry]!";
					huntingfightchance;
					move player to object entry;
					now object entry is known;
					now Found is 20; [room found]
				else:
					say "But despite searching for quite a while, you fail to find it.[line break]";
					now Found is 22; [perception check fail]
					huntingfightchance;
			else:
				say "You manage to find your way towards [Name entry]!";
				huntingfightchance;
				move player to object entry;
				now object entry is known;
				now Found is 20; [room found]
	else if there is a name of HuntId in the Table of GameEventIDs: [exact situation name match]
		choose a row with name of HuntId in the Table of GameEventIDs;
		if debugactive is 1:
			say "DEBUG -> Situation found: [Name entry] by matching with [HuntId] (EXACT MATCH).[line break]";
		if object entry is resolved:
			now Found is 34; [found, but it is resolved]
			if debugactive is 1:
				say "DEBUG -> Already resolved![line break]";
		else if object entry is not close and object entry is active:
			now Found is 31; [found, wrong area]
			if debugactive is 1:
				say "DEBUG -> In another area![line break]";
		else if object entry is inactive:
			now Found is 37; [found, but the event was banned]
			if debugactive is 1:
				say "DEBUG -> Event banned / inactive.[line break]";
		else if level of Player < level of object entry:
			now Found is 32; [found, level too low]
			if debugactive is 1:
				say "DEBUG -> Player's level is too low![line break]";
		else if object entry is not PrereqComplete:
			now Found is 36; [found, but the prerequisite is not done]
			if debugactive is 1:
				say "DEBUG -> Prerequisites not fulfilled.[line break]";
				PrereqAnalyze object entry;
		else:
			now Found is 30; [event found]
			say "It should be somewhere...";
			if "Unerring Hunter" is not listed in feats of Player:
				let bonus be (( the Perception of the player minus 10 ) divided by 2);
				if "Curious" is listed in feats of Player, increase bonus by 2;
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
				increase diceroll by bonus;
				if diceroll >= 15:
					now inasituation is true;
					say "You manage to find your way to [Name entry]!";
					try resolving object entry;
					now inasituation is false;
				else:
					now inasituation is false;
					say "Despite your searches, you fail to find it.[line break]";
					huntingfightchance;
			else:
				now inasituation is true;
				say "You manage to find your way to [Name entry]!";
				try resolving object entry;
				now inasituation is false;
	else if there is a name of HuntId in the Table of Random Critters: [exact creature match]
		choose a row with name of HuntId in the Table of Random Critters;
		if debugactive is 1:
			say "DEBUG -> Target Creature: [Name entry] found by exact match with: [HuntId][line break]";
		if there is an area entry:
			if area entry exactly matches the text battleground:
				if Enemy Type entry is 2: [named and name known]
					say "You are almost certain you saw some of [Enemy Name entry]'s tracks...";
				else if Enemy Title Entry is not "":
					say "You are almost certain you saw some [Enemy Title entry] tracks...";
				else:
					say "You are almost certain you saw some [Name entry] tracks...";
		add Name entry to PossibleEncounters; [basic chance to find the creature]
		[extra encounter chances]
		let zed be perception of Player / 3;
		if zed > 8:
			now zed is 8;
		repeat with N running from 1 to zed:
			add Name entry to PossibleEncounters;
		if "Curious" is listed in feats of Player:
			add Name entry to PossibleEncounters;
		if "Expert Hunter" is listed in feats of Player:
			add Name entry to PossibleEncounters;
			add Name entry to PossibleEncounters;
		if "Master Baiter" is listed in feats of Player:
			repeat with N running from 1 to ( perception of Player / 3 ):
				add Name entry to PossibleEncounters;
		[right time to find this creature?]
		if (DayCycle entry is 2 and daytimer is day) or (DayCycle entry is 1 and daytimer is night):
			if debugactive is 1:
				say "DEBUG -> Creature Found, but wrong time of day.[line break]";
			now Found is 11; [wrong time of day for that creature]
		[right area for the creature?]
		if there is an area entry:
			if area entry exactly matches the text battleground:
				if debugactive is 1:
					say "DEBUG -> Creature Found, [Area Entry] matches [Battleground].[line break]";
				now Found is 10; [creature found, right area and time]
			else:
				if debugactive is 1:
					say "DEBUG -> Creature Found, [Area Entry] <> [Battleground] mismatch.[line break]";
				now Found is 12; [creature found, wrong area]
		else:
			now Found is 13; [no area specified, error]
			if debugactive is 1:
				say "DEBUG -> Error, no Area Entry found![line break]";
		if BannedStatus entry is true:
			now Found is 14; [banned creatures]
			if debugactive is 1:
				say "DEBUG -> The creature has been banned from the game![line break]";
	if Found is 0:[no exact matches for creatures/rooms/events so far]
		if debugactive is 1:
			say "DEBUG -> No Exact Matches Found.[line break]";
			say "DEBUG -> Checking [HuntId] against fasttravel rooms now. (SIMPLE MATCH)[line break]";
		repeat with z running through unknown fasttravel rooms:
			if z is private, next;
			if printed name of z matches the text HuntId, case insensitively:
				say "It should be somewhere...";
				if "Unerring Hunter" is not listed in feats of Player:
					let bonus be (( the Perception of the player minus 10 ) divided by 2);
					if "Curious" is listed in feats of Player, increase bonus by 2;
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
					increase diceroll by bonus;
					if diceroll >= 15:
						say "You manage to find your way towards [z]!";
						huntingfightchance;
						move player to z;
						now z is known;
						now Found is 20; [room found]
					else:
						say "But despite searching for quite a while, you fail to find it.[line break]";
						now Found is 22; [perception check fail]
						huntingfightchance;
				else:
					say "You manage to find your way towards [z]!";
					huntingfightchance;
					move player to z;
					now z is known;
					now Found is 20; [room found]
				break;
		if Found is 0 or Found is 10 or (Found > 30 and Found < 40): [last ditch effort to find the target, also fills the random encounter list]
			repeat with X running from 1 to number of filled rows in Table of Random Critters:
				choose row X from the Table of Random Critters;
				if there is no area entry, next; [broken creatures / empty lines get ignored]
				if area entry is "Nowhere", next; [nowhere creatures can't be hunted]
				if there is no Name entry, next; [broken creatures / empty lines get ignored]
				if Found is not 10 and (Name entry matches the text HuntId, case insensitively or enemy title entry matches the text HuntId, case insensitively or enemy Name entry matches the text HuntId, case insensitively): [no target creature found yet]
					if debugactive is 1:
						say "DEBUG -> Found creature: [Name entry].[line break]";
					let CreatureUnavailable be 0;
					[right area for the creature?]
					if area entry exactly matches the text battleground or area entry is "Everywhere":
						now Found is 10; [creature found, right area and time]
						if Enemy Type entry is 2: [named and name known]
							say "You are almost certain you saw some of [Enemy Name entry]'s tracks...";
						else if Enemy Title Entry is not "":
							say "You are almost certain you saw some [Enemy Title entry] tracks...";
						else:
							say "You are almost certain you saw some [Name entry] tracks...";
						if debugactive is 1:
							say "DEBUG -> Found: [Found], Area '[Area Entry]' matches Battleground '[Battleground]'.[line break]";
					else:
						now Found is 12; [creature found, wrong area]
						now CreatureUnavailable is 1;
						if debugactive is 1:
							say "DEBUG -> Found: [Found], Area '[Area Entry]' <> Battleground '[Battleground]' mismatch.[line break]";
					[right time to find this creature?]
					if (DayCycle entry is 2 and daytimer is day) or (DayCycle entry is 1 and daytimer is night):
						now Found is 11; [wrong time of day for that creature]
						now CreatureUnavailable is 1;
						if debugactive is 1:
							say "DEBUG -> Found: [Found], but wrong time of day.[line break]";
					if BannedStatus entry is true:
						now Found is 14; [banned creatures]
						now CreatureUnavailable is 1;
						if debugactive is 1:
							say "DEBUG -> The creature has been banned from the game![line break]";
					if CreatureUnavailable is 0: [adding the creature only if it is available]
						add Name entry to PossibleEncounters; [basic chance to find the creature]
						[extra encounter chances]
						let zed be perception of Player / 3;
						if zed > 8:
							now zed is 8;
						repeat with N running from 1 to zed:
							add Name entry to PossibleEncounters;
						if "Curious" is listed in feats of Player:
							add Name entry to PossibleEncounters;
						if "Expert Hunter" is listed in feats of Player:
							add Name entry to PossibleEncounters;
							add Name entry to PossibleEncounters;
						if "Master Baiter" is listed in feats of Player:
							repeat with N running from 1 to ( perception of Player / 3 ):
								add Name entry to PossibleEncounters;
				if "Unerring Hunter" is not listed in feats of Player and (area entry exactly matches the text battleground, case insensitively or area entry is "Everywhere"): [only adds random monsters if the player isn't an unerring hunter, and the area matches]
					if there is a lev entry:
						if lev entry > level of Player + 1, next;
					else:
						next;
					if (DayCycle entry is 1 and daytimer is day) or (DayCycle entry is 2 and daytimer is night), next; [wrong time of day for that creature]
					if "Expert Hunter" is listed in feats of Player and a random chance of 1 in 3 succeeds: [chance to avoid random critters]
						next;
					let skipit be 0;
					repeat with s running through warded flags:
						if Name entry is listed in infections of s:
							now skipit is 1;
							break;
					if skipit is 1, next;
					add Name entry to PossibleEncounters;
					if debugactive is 1:
						say "DEBUG -> Other creature [Name entry] found for the battleground: [battleground].[line break]";
				if "Like Attracts Like" is listed in the feats of Player and "Unerring Hunter" is not listed in feats of Player and (area entry exactly matches the text battleground, case insensitively or area entry is "Everywhere"): [only adds player fav infection if they're not an unerring hunter]
					if BodyName of Player is Name entry and a random chance of 1 in 2 succeeds, add Name entry to PossibleEncounters;
					if FaceName of Player is Name entry and a random chance of 1 in 2 succeeds, add Name entry to PossibleEncounters;
					if SkinName of Player is Name entry and a random chance of 1 in 2 succeeds, add Name entry to PossibleEncounters;
					if TailName of Player is Name entry and a random chance of 1 in 2 succeeds, add Name entry to PossibleEncounters;
					if CockName of Player is Name entry and a random chance of 1 in 2 succeeds, add Name entry to PossibleEncounters;
		if Found is 0 or (Found > 10 and Found < 20): [no simple room or creature match, moving on to events]
			if debugactive is 1:
				say "DEBUG -> Checking [HuntId] against events now. (SIMPLE MATCH)[line break]";
			repeat with z running through unresolved situations:
				if printed name of z matches the text HuntId, case insensitively:
					if debugactive is 1:
						say "DEBUG -> Situation found: [printed name of z] by matching with [HuntId].[line break]";
					if z is not close and z is active:
						now Found is 31; [found, wrong area]
						if debugactive is 1:
							say "DEBUG -> Found: [Found]; In another area![line break]";
					else if z is inactive:
						now Found is 37; [found, but the event was banned]
						if debugactive is 1:
							say "DEBUG -> Event banned / inactive.[line break]";
					else if level of Player < level of z:
						now Found is 32; [found, level too low]
						if debugactive is 1:
							say "DEBUG -> Found: [Found]; Player's level is too low![line break]";
					else if z is not PrereqComplete:
						now Found is 36; [found, but the prerequisite is not done]
						if debugactive is 1:
							say "DEBUG -> Prerequisites not fulfilled.[line break]";
							PrereqAnalyze z;
					else:
						now Found is 30; [event found]
						say "It should be somewhere...";
						if "Unerring Hunter" is not listed in feats of Player:
							let bonus be (( the Perception of the player minus 10 ) divided by 2);
							if "Curious" is listed in feats of Player, increase bonus by 2;
							let diceroll be a random number from 1 to 20;
							say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
							increase diceroll by bonus;
							if diceroll >= 15:
								now inasituation is true;
								say "You manage to find your way to [z]!";
								try resolving z;
								now inasituation is false;
							else:
								now inasituation is false;
								say "Despite your searches, you fail to find it.[line break]";
								huntingfightchance;
								now Found is 35; [event found, perception check fail]
								if debugactive is 1:
									say "DEBUG -> Found: [Found], perception check fail.[line break]";
						else:
							now inasituation is true;
							say "You manage to find your way to [z]!";
							try resolving z;
							now inasituation is false;
						break;
	if the number of entries in PossibleEncounters is not 0 and Found is 10: [got list of creatures in the area & found the target creature]
		sort PossibleEncounters in random order; [the one who gets put on #1 is the winner]
		if debugactive is 1:
			say "DEBUG -> Random sorted PossibleEncounters: [PossibleEncounters][line break]";
		let RandomChosenMonster be entry 1 in PossibleEncounters;
		choose a row with name of RandomChosenMonster in the Table of Random Critters;
		setmonster RandomChosenMonster;
		if debugactive is 1:
			say "DEBUG -> Randomly chosen creature is: [Name entry][line break]";
		now monsterHP is HP entry;
		if (Name entry matches the text HuntId, case insensitively or enemy title entry matches the text HuntId, case insensitively or enemy Name entry matches the text HuntId, case insensitively):
			now ishunting is true;
		challenge;
		now ishunting is false;
		if ((hardmode is true and a random chance of 1 in 8 succeeds) or ("Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds)) and battleground is not "void":
			say "As you are trying to recover from your last encounter, another roving creature finds you.";
			Fight;
	if Found is:
		-- 0: [creature: nothing found]
			say "[bold type]You don't think that something like that can be found here...[roman type][line break]";
		-- 11: [creature: day/night mismatch]
			say "[bold type]There doesn't seem to be any of them around right now. Maybe it's the wrong time to go hunting for such creatures...[roman type][line break]";
		-- 12: [creature: other area]
			say "[bold type]Doesn't look like the creature you are hunting roams around in this area. Maybe you should check elsewhere...[roman type][line break]";
		-- 13: [creature: no area entry at all]
			say "[bold type]Error. No area specified for a '[HuntId]'. Please report this on the FS discord.[roman type][line break]";
		-- 14: [creature: banned]
			say "[bold type]The creature you are hunting has been banned from the game.[roman type][line break]";
		-- 21: [room: private rooms]
			say "[bold type]You don't think you can find a way there without help. The path may be well hidden or you could need a guide.[roman type][line break]";
		-- 22: [room: perception check fail]
			say "[bold type]Maybe you should train to be a bit more perceptive to find it...[roman type][line break]";
		-- 23: [room: non-fasttravel]
			say "[bold type]What you hunted for isn't a fasttravel room. You'll have to find your way there some other way...[roman type][line break]";
		-- 31: [event: wrong area]
			say "[bold type]Perhaps you should try looking somewhere closer to what you seek...[roman type][line break]";
		-- 32: [event: level too low]
			say "[bold type]You're not ready to find this yet. Go have some accomplishments elsewhere and come back when you have gained experience...[roman type][line break]";
		-- 34: [event: already resolved]
			say "[bold type]This is already resolved for the current playthrough.[roman type][line break]";
		-- 35: [event: perception check fail]
			say "[bold type]Maybe you should train to be a bit more perceptive to find it...[roman type][line break]";
		-- 36: [event: prerequisite missing]
			say "[bold type]Seems you're missing a prerequisite for this. Maybe look around a bit to find that first, or make different choices in your next playthrough...[roman type][line break]";
		-- 37: [event: banned]
			say "[bold type]Sadly, this event is inactive right at this moment. It might have been banned by your settings, or turned off because of some other reason. Alternatively, there might just be prerequisites for it.[roman type][line break]";
	follow the turnpass rule;

to huntingfightchance:
	let MonsterAttraction be 0;
	if "Stealthy" is listed in feats of Player, decrease MonsterAttraction by 2;
	if "Bad Luck" is listed in feats of Player, increase MonsterAttraction by 2;
	[Initial 20% chance of a random encounter; 10% for Stealthy people, 30% for those with Bad Luck]
	if a random chance of (4 + MonsterAttraction) in 20 succeeds and battleground is not "void" and battleground is not "Smith Haven":
		if there is a area of Battleground in the Table of Random Critters:
			say "Setting out to hunt, you encounter another inhabitant of the city.";
			Fight;
			[extra fight for hardcore players]
			if ( ( hardmode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;

Hunting ends here.
