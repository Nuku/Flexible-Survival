Version 2 of Hunting and Exploration by Core Mechanics begins here.
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

[ TODO: Check if Sealed and Sewer are exempt from allzones events ]

Part 0 - Variables

battleground is a text that varies.
ishunting is a truth state that varies. ishunting is usually false.

Part 1 - Hunting Command (regular)

HuntAction is an action applying to one topic.

understand "hunt [text]" as HuntAction.

check HuntAction:
	if BlindMode is true:
		say "You're playing in blind-mode, so hunting is not allowed. You'll have to try exploring to find what you seek." instead;
	else if there is a dangerous door in the Location of Player: [danger door]
		let y be a random dangerous door in the Location of Player;
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
		if ( BodyName of Player is "Mental Mouse" or mousecurse is 1 ) and mouse girl is not listed in companionList of Player:	[hunted by the mouse collective]
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
				let bonus be (( Perception of Player minus 10 ) divided by 2);
				if "Curious" is listed in feats of Player, increase bonus by 2;
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
				increase diceroll by bonus;
				if diceroll >= 15:
					say "[line break]You manage to find your way towards [Name entry]!";
					huntingfightchance;
					move player to object entry;
					AddNavPoint object entry;
					now Found is 20; [room found]
				else:
					say "[line break]But despite searching for quite a while, you fail to find it.";
					now Found is 22; [perception check fail]
					huntingfightchance;
			else:
				say "[line break]You manage to find your way towards [Name entry]!";
				huntingfightchance;
				move player to object entry;
				AddNavPoint object entry;
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
				let bonus be (( Perception of Player minus 10 ) divided by 2);
				if "Curious" is listed in feats of Player, increase bonus by 2;
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
				increase diceroll by bonus;
				if diceroll >= 15:
					now inasituation is true;
					say "[line break]You manage to find your way to [bold type][Name entry][roman type]!";
					say "[ResolveFunction of object entry]";
					now CreatureArtworkOverride is false;
					now inasituation is false;
				else:
					now inasituation is false;
					say "[line break]Despite your searches, you fail to find it.";
					now Found is 35; [event found, perception check fail]
					huntingfightchance;
			else:
				now inasituation is true;
				say "[line break]You manage to find your way to [bold type][Name entry][roman type]!";
				say "[ResolveFunction of object entry]";
				now CreatureArtworkOverride is false;
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
					say "You are almost certain you saw some [Enemy Title entry in lower case] tracks...";
				else:
					say "You are almost certain you saw some [Name entry in lower case] tracks...";
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
					let bonus be (( Perception of Player minus 10 ) divided by 2);
					if "Curious" is listed in feats of Player, increase bonus by 2;
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
					increase diceroll by bonus;
					if diceroll >= 15:
						say "[line break]You manage to find your way towards [z]!";
						huntingfightchance;
						move player to z;
						AddNavPoint z;
						now Found is 20; [room found]
					else:
						say "[line break]But despite searching for quite a while, you fail to find it.";
						now Found is 22; [perception check fail]
						huntingfightchance;
				else:
					say "[line break]You manage to find your way towards [z]!";
					huntingfightchance;
					move player to z;
					AddNavPoint z;
					now Found is 20; [room found]
				break;
		if Found is 0 or Found is 10 or (Found > 30 and Found < 40): [last ditch effort to find the target, also fills the random encounter list]
			repeat through Table of Random Critters:
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
							say "You are almost certain you saw some [Enemy Title entry in lower case] tracks...";
						else:
							say "You are almost certain you saw some [Name entry in lower case] tracks...";
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
							let bonus be (( Perception of Player minus 10 ) divided by 2);
							if "Curious" is listed in feats of Player, increase bonus by 2;
							let diceroll be a random number from 1 to 20;
							say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Perception Check):[line break]";
							increase diceroll by bonus;
							if diceroll >= 15:
								now inasituation is true;
								say "[line break]You manage to find your way to [bold type][z][roman type]!";
								say "[ResolveFunction of z]";
								now CreatureArtworkOverride is false;
								now inasituation is false;
							else:
								now inasituation is false;
								say "[line break]Despite your searches, you fail to find it.";
								huntingfightchance;
								now Found is 35; [event found, perception check fail]
								if debugactive is 1:
									say "DEBUG -> Found: [Found], perception check fail.[line break]";
						else:
							now inasituation is true;
							say "[line break]You manage to find your way to [bold type][z][roman type]!";
							say "[ResolveFunction of z]";
							now CreatureArtworkOverride is false;
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
		if ((HardMode is true and a random chance of 1 in 8 succeeds) or ("Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds)) and battleground is not "void":
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
			say "[line break]Setting out to hunt, you encounter another inhabitant of the city.";
			Fight;
			[extra fight for hardcore players]
			if ( ( HardMode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;

Part 2 - HuntingList Command (cheating)

huntinglisting is an action applying to nothing.

understand "huntinglist" as huntinglisting.

check huntinglisting:
	if "Unerring Hunter" is not listed in feats of Player:
		say "You do not currently have this ability." instead;
	if earea of location of Player is "void":
		say "I don't see any good hunting grounds around here." instead;

carry out huntinglisting:
	now battleground is the earea of location of Player;
	let huntinglist be a list of text;
	repeat through Table of Random Critters:
		if there is no area entry, next;
		if there is no Name entry, next;
		if area entry exactly matches the text battleground, case insensitively:
			if enemy title entry is empty or enemy title entry is "":
				add Name Entry to huntinglist, if absent;
			else:
				add Enemy Title Entry to huntinglist, if absent;
	sort huntinglist;
	repeat with target running through huntinglist:
		linkfind "hunt [target]";
		say "[set link hyperindex][target][terminate link][line break]";

situationlisting is an action applying to nothing.

understand "situationlist" as situationlisting.

check situationlisting:
	if "Unerring Hunter" is not listed in feats of Player:
		say "You do not currently have this ability." instead;
	if earea of location of Player is "void":
		say "I don't see any good hunting grounds around here." instead;

carry out situationlisting:
	now battleground is the earea of location of Player;
	let situationlist be a list of text;
	repeat with n running through active unresolved situations:
		if Sarea of n exactly matches the text battleground, case insensitively:
			add printed name of n to situationlist;
	sort situationlist;
	repeat with target running through situationlist:
		linkfind "hunt [target]";
		say "[set link hyperindex][target][terminate link][line break]";

Part 3 - Exploring (randomly)

exploring is an action applying to nothing.
understand "explore" as exploring

check exploring:
	if location of Player is not fasttravel and earea of location of Player is "void", say "You cannot explore from here." instead;

carry out exploring:
	if there is a dangerous door in the Location of Player:
		let l be a random visible dangerous door;
		if l is not nothing:
			now battleground is the marea of l;
		else:
			now battleground is earea of location of Player;
	else:
		now battleground is earea of location of Player;
	follow the explore rule;

This is the explore rule:
	let something be 0;
	let roomfirst be 1;
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	if "Curious" is listed in feats of Player, increase bonus by 3;
	if BlindMode is true, increase bonus by 3; [increased odds of finding something interesting]
	if a random chance of 2 in 5 succeeds, now roomfirst is 0; [Will it check for a room or situation first?]
	let MonsterAttraction be 0;
	if "Stealthy" is listed in feats of Player, decrease MonsterAttraction by 2;
	if "Bad Luck" is listed in feats of Player, increase MonsterAttraction by 2;
	[Initial 20% chance of a random encounter; 10% for Stealthy people, 30% for those with Bad Luck]
	if something is 0 and a random chance of (4 + MonsterAttraction) in 20 succeeds and battleground is not "void" and battleground is not "Smith Haven":
		if there is a area of Battleground in the Table of Random Critters:
			say "Setting out to explore your surroundings, you encounter another inhabitant of the city.";
			now something is 1;
			Fight;
			[extra fight for hardcore players]
			if ( ( HardMode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;
	[Chance for new locations - increased by perception]
	if something is 0 and a random number from 1 to 20 < ( bonus + 7 ) and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 1:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			randomfightchance;
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[or]Going off towards a previously unexplored part of the city, you find yourself at[at random] [bold type][L][roman type].";
			move player to L;
			now something is 1;
			plot;
			now battleground is "void";
			wait for any key;
	[Chance for new events - increased by perception]
	if something is 0 and a random number from 1 to 20 < ( bonus + 8 ) and there is an active unresolved situation:
		let L be a random available situation;
		If L is not nothing and Level of Player + 2 > Level of L:
			if battleground is "Smith Haven":
				say "Wandering around a bit, you find [bold type][L][roman type].";
			else:
				say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[at random] [bold type][L][roman type].";
			now something is 1;
			now inasituation is true;
			say "[ResolveFunction of L]";
			now CreatureArtworkOverride is false;
			now inasituation is false;
			now battleground is "void";
			wait for any key;
	now CreatureArtworkOverride is false;
	now inasituation is false;
	[Chance for new locations - increased by perception]
	if something is 0 and a random number from 1 to 20 < ( bonus + 7 ) and there is an unknown fasttravel room and battleground is "Outside" and roomfirst is 0:
		let L be a random unknown fasttravel not private room;
		if L is not nothing:
			randomfightchance;
			say "[one of]After wandering aimlessly for hours, you happen across[or]Following your faint memories, you manage to find[or]Following movement, you end up at[or]Going off towards a previously unexplored part of the city, you find yourself at[at random] [bold type][L][roman type].";
			move player to L;
			now something is 1;
			plot;
			now battleground is "void";
			wait for any key;
	if something is 0:
		if battleground is "Smith Haven": [populated, crowded haven]
			say "     Wandering around a bit, you stroll through the overfilled Smith Haven Mall and ";
			let randomnumber be a random number from 1 to 10;
			if randomnumber is:
				-- 1:
					say "happen upon a group of dogs of varying breeds playing cards on a collapsible table. They seem to be playing for dog treats. You contemplate joining them, but you feel out of place as a bulldog in a visor stares at you expectantly. Finally, you return to the [location of Player].";
				-- 2:
					say "pass by an anthro fox and rat, dressed in somewhat threadbare, but well-patched clothes. They've got backpacks and gear, complete with melee weapons, and apparently are preparing for an expedition out into the city. Brave plans, as they're not looking like the most hard-boiled fighters. But then, maybe they don't need to be, if they're stealthy. You stop and give them some tips from your own forays in the city, then return to the [location of Player].";
				-- 3:
					say "see a dejected man with curly blonde hair, wearing a diaper and nothing else. As he holds a pink bow and arrow in his hands, he sobs into a colorful bunny's chest. You catch a snippet of their conversation, but all you can make out is, 'I'm useless! Everyone's already fucking all the time. I barely have time to nock an arrow before they're on the ground, humping away!' Deciding to leave the poor thing to his woes, you return to the [location of Player].";
				-- 4:
					say "see the towering shape of a minotaur stick out of the crowd. He walks with his head bent down a bit, trying to avoid his horns catching on any store-signs. As the man turns to stop at a place a little ahead, you can see quite a lot of grey in his fur, with an almost comically small set of glasses sitting on his muzzle. Certainly not an easy infection to have, and still retain your normal life in society. Not wanting to make it obvious you were staring at him, you then return to the [location of Player].";
				-- 5:
					say "come across a harried-looking border collie trying her best to corral a swarm of children. Given that there are... eight, no nine, different species of kids among her flock, this is far from an easy task. You help out by turning around a little goat boy who was strolling off to the side, gently encouraging him to go back to his kindergarten group. The collie throws you a thankful look before having to return her attention to her flock. With a smile on your face, you return to the [location of Player].";
				-- 6:
					say "stumble over an undulating mass of insects. A chorus of tiny voices screams, 'Hey buddy! Watch where you're goin[']!' as the swarm flows into the vague shape of a human man, shaking its head in disgust. Confused, you return to the [location of Player], resolving to watch your feet in the future. Don't want to crush any important parts of someone!";
				-- 7:
					say "see a white rabbit whizz by, screaming something about being late as it checks an old pocket-watch and adjusts a top hat. He nearly slams into a few other creatures on his way past, then disappears into the mall bathroom. Disregarding the odd fellow's rudeness, you return to the [location of Player], wondering where he had to be in such a rush.";
				-- 8:
					say "almost collide with a vaguely human-shaped being, with its form hard to make out hidden beneath a black robe with a large hood pulled over the head. From beneath that, you can see the silvery gleam of what must be large eyes, and not much else. 'Excuse me,' the creature says in a genderless voice, looking down to the plate it is carrying in what is more a claw than a hand, which holds [one of]a piece of pie[or]a number of apple slices[or]a wobbling piece of jelly[or]a rubik's cube[at random]. With a metallic scraping sound that you interpret as a sigh of relief for the safety of its treat, the being then moves on through the crowd. Shaking your head about the variety of beings here in the mall, you return to the [location of Player].";
				-- 9:
					say "notice an argument break out between a cat and a dog nearby, quickly turning into a rolling ball of hissing, biting fur. You contemplate stepping in, but before you can step forward, their snarls have devolved into something more carnal, and their movements take on a less innocent tone. Before long, they're standing and dusting each other off, sharing a lingering gaze, then walking off hand in hand. Shrugging, you return to the [location of Player], letting the two lovebirds work out their squabble in peace.";
				-- 10:
					say "walk past what appears to be a group of people in futuristic uniforms, carrying some metallic object that chirps and beeps as they move it over nearby mutants. You can vaguely make out a conversation about a 'directive,' but not much else. Knowing how most interactions turn out in the city, you let them be, returning to the [location of Player] and not sparing them another thought.";
		else: [everywhere else]
			say "     Wandering the ruined, monster-infested city, you ";
			let randomnumber be a random number from 1 to 15;
			if randomnumber is:
				-- 1:
					say "come across an excessively large splattering of cum, with the clear outline of a person in the middle. You can only imagine what happened to them after that. Thinking that it might be best to watch out for whatever did that, you make your way back to the [location of Player].";
				-- 2:
					say "come across a pile of filled water balloons coated in cum. Somehow you don't think they're filled with water... Deciding not to stick around, you hurry back to the [location of Player], making a mental note to watch out for whatever plans to throw those.";
				-- 3:
					say "find one of those commercial dumpsters, which has been re-used as a nest by... something. Inside are the broken fragments of what look like several eggs, large enough to have held a person. Who knows what hatched, and if that brood is still around, so you quickly make your way back to the [location of Player].";
				-- 4:
					say "happen upon a group of mutants playing dice in the street. It's fairly wholesome, until you realize that they're trading sexual favors, rather than money. Shaking your head, you return to the [location of Player].";
				-- 5:
					say "spot a gaggle of anthro weasels with colorful pirate outfits, 'armed' with plastic sabers. They seem more comical than a threat, shouting for booty to be plundered, and with one at the back of the crowd having [italic type]two eyepatches[roman type] on at the same time. Still, they might just swarm you if you're not careful, so you decide it best to go the other way and return to the [location of Player].";
				-- 6:
					say "stumble upon a sleeping creature in the middle of the street, using an old trash bag as a pillow. You feel sorry for the poor thing, but you know better than to wake it. That peaceful facade might hide oversexed insanity beneath its surface! Returning to the [location of Player] you wonder if things will ever return to normal.";
				-- 7:
					say "see a car moving along the street somewhere ahead of you, a rarity these days with the countless crashes and looting during the outbreak of the nanite infection. Then you look closer and see that it [italic type]isn't[roman type] actually a car, at least not one with wheels. The shape matches, but there are countless chitinous legs underneath, propelling it forward with disconcerting swiftness. It rushes up to a passing creature, and with a swing of a door, that poor soul vanishes inside of the monstrous vehicle. You decide to hurry back to the [location of Player] before you get to be the next victim.";
				-- 8:
					say "notice a vaguely rodent-like mutant squatting naked in the street with a sign held in both hands stating 'Will fuck for food' in an obviously misspelled, shaky script. You contemplate offering it some of your supplies, but another creature steps up, stuffing its cock down the rodent's throat, and you give the two some privacy, returning to the [location of Player] as wet sounds echo behind you.";
				-- 9:
					say "spot a line of charred spots, crossing the road in a line. They almost look like... human footprints? Whatever made these, it seared them into the asphalt. The trail ends at the smoking ruins of a collapsed building, with glowing embers visible between the rubble. You don't really want to know what happened there and hurry back to the [location of Player].";
				-- 10:
					say "hear a strange honking sound. A gaggle of creatures wearing hastily applied clown makeup shoves past you and clambers into a nearby car, filling it with so many bodies that you wonder how it's even possible! Shaking your head, you return to the [location of Player], hoping that you weren't hallucinating.";
				-- 11:
					say "step out of the way as what appears to be a bus whizzes by you. Strangely, upon closer inspection, it appears to be a cat with ten legs and a body in the shape of a bus, complete with windows and passengers! Contemplating the direction the creature ran off in, you decide to return to the [location of Player], rather than letting yourself get caught up in such strange shenanigans.";
				-- 12:
					say "see an electricity pole a little ahead of you sway and tremble, then fall over with a creak and crash, accompanied by snapping lines whipping through the air like whips. Moving forward a little, you see that some sort of giant insect snapped the pole off with its mandibles, and now is dragging it off, away from the road. Maybe it'd be best to avoid this area, so you hurry back to the [location of Player].";
				-- 13:
					say "watch as a tree grows arms and legs, then bows in your direction, producing a suitcase from thin air. As it lumbers off, you muse that it seems like they're in a hurry. You'd better return to the [location of Player], rather than bothering the wooden creature.";
				-- 14:
					say "see the shadow of... something creep out of an alley, a little distance ahead of you. Curious what would be making [italic type]that[roman type] shape as its shadow, you stop and watch, before realizing that with the light coming from further down the road, there couldn't be anything in the alley that throws this dark blotch - and there's nothing ahead on the road either! The source-less shadow oozes across the asphalt, then vanishes underneath a car wreck, almost as if waiting for prey. You decide it best to turn around and return to the [location of Player].";
				-- 15:
					say "hear a screeching sound, similar to a tea kettle at full boil. Strangely it seems to be coming from a latex creature's mouth as it stands in front of an abandoned store. You contemplate offering to help the strange thing, but you know better by now. Instead, you return to the [location of Player] and continue exploring.";
	follow the turnpass rule;
	rule succeeds.

to randomfightchance:
	let the bonus be (( Perception of Player minus 10 ) divided by 2);
	if "Stealthy" is listed in feats of Player, now bonus is -1;
	if "Curious" is listed in feats of Player, increase bonus by 2;
	if "Bad Luck" is listed in feats of Player, increase bonus by 1;
	if a random number from 1 to 20 < 10 plus bonus and battleground is not "void":
		if there is a area of Battleground in the Table of Random Critters:
			Fight;
			if ( ( HardMode is true and a random chance of 1 in 8 succeeds ) or ( "Bad Luck" is listed in feats of Player and a random chance of 1 in 8 succeeds ) ) and battleground is not "void":
				say "As you are trying to recover from your last encounter, another roving creature finds you.";
				Fight;

Hunting and Exploration ends here.
