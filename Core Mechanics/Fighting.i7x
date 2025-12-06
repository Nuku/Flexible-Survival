Version 2 of Fighting by Core Mechanics begins here.
[- Originally Authored By: Nuku Valente -]
[Version 2 - Transplant and partial rewrite from story.ni - Wahn]

BeforeCombat is a number that varies.

To fight:
	let PossibleEncounters be a list of text;
	if debugactive is 1:
		say "     DEBUG: Random Monster Choosing Started[line break]";
	now MonsterID is a random number from 1 to number of filled rows in the Table of Random Critters;
	if "Unerring Hunter" is not listed in feats of Player: [only adds random monsters if the player isn't an unerring hunter]
		if ( BodyName of Player is "Mental Mouse" or mousecurse is 1 ) and mouse girl is not listed in companionList of Player:	[hunted by the mouse collective]
			if there is a name of "Mental Mouse" in the Table of Random Critters:
				add "Mental Mouse" to PossibleEncounters;
				if humanity of Player < 75:
					repeat with x running from 1 to ( ( 100 - humanity of Player ) / 25 ):
						add "Mental Mouse" to PossibleEncounters;
		if insectlarva is true and larvaegg is 1 and gestation of Child is 0: [hunted by wasp hive anywhere outdoors]
			let nofly be {"Mall", "Stable", "Hospital", "Museum", "Sealed", "Warehouse", "Smith Haven", "Atlantis"};
			if battleground is not listed in nofly:
				if there is a name of "Black Wasp" in the Table of Random Critters:
					add "Black Wasp" to PossibleEncounters;
					if Libido of Player > 30:
						repeat with x running from 1 to ( Libido of Player / 30 ):
							add "Black Wasp" to PossibleEncounters;
					if larvacounter > 3:
						repeat with x running from 1 to ( larvacounter / 3 ):
							add "Black Wasp" to PossibleEncounters;
	repeat through Table of Random Critters:
		if BannedStatus entry is true and inasituation is false: [banned creatures can't be fought]
			if debugactive is 1:
				say "DEBUG -> Can't fight with creature [Name entry] because it has Banned: [BannedStatus entry][line break]";
			next;
		if there is no lev entry, next;
		if lev entry > level of Player + 1 and HardMode is false:
			next;
		if there is no area entry, next;
		if area entry exactly matches the text battleground, case insensitively:
			if (DayCycle entry is 2 and daytimer is day) or (DayCycle entry is 1 and daytimer is night), next; [skips if day/night doesn't match]
			let skipit be 0;
			repeat with s running through warded flags:
				if Name entry is listed in infections of s:
					now skipit is 1;
					break;
			if skipit is 1, next;
			add Name entry to PossibleEncounters;
			if "Like Attracts Like" is listed in the feats of Player:
				if BodyName of Player is Name entry, add Name entry to PossibleEncounters;
				if FaceName of Player is Name entry, add Name entry to PossibleEncounters;
				if SkinName of Player is Name entry, add Name entry to PossibleEncounters;
				if TailName of Player is Name entry, add Name entry to PossibleEncounters;
				if CockName of Player is Name entry, add Name entry to PossibleEncounters;
	if the number of entries in PossibleEncounters is not 0:
		sort PossibleEncounters in random order;
		let RandomChosenMonster be entry 1 in PossibleEncounters;
		choose a row with name of RandomChosenMonster in the Table of Random Critters;
		setmonster RandomChosenMonster;
		prepforfight;
		if "Experienced Scout" is listed in feats of Player and a random chance of 2 in 10 succeeds and combat abort is not 1 and inasituation is false:
			say "You notice an avenue of escape! Do you want to abort the combat?";
			if Player consents:
				LineBreak;
				now combat abort is 1;
				say "You slip away before [if enemy type entry is not 2]the [end if][EnemyNameOrTitle] can begin their assault.";
			else:
				LineBreak;
		if combat abort is 1:
			now combat abort is 0;
			rule succeeds;
			continue the action;
		let bonus be ( perception of Player minus 10 ) divided by 2;
		decrease bonus by ( dex entry minus 10 ) divided by 2;
		increase bonus by a random number from 1 to 20;
		if bonus < 6:
			if "Wary Watcher" is listed in feats of Player:
				say "The creature is about to get the drop on you, but your vigilance spots it just in time! You ready yourself for battle.";
			else:
				say "The creature gets the drop on you!";
				follow the monster combat mode rule; [select the combat mode for first-strike]
				choose row monstercom from table of Critter Combat;
				if there is a continuous in row monstercom of the table of Critter Combat:
					follow the continuous entry;
				follow the combat entry;
				if HP of Player < 1 or lost is 1, stop the action;
		choose row MonsterID from Table of Random Critters;
		if weapon object of Player is ranged:
			now bonus is ( perception of Player minus 10 ) divided by 2;
			decrease bonus by ( dex entry minus 10 ) divided by 2;
			increase bonus by a random number from 1 to 20;
			if bonus > 15:
				say "You manage to fire your [weapon object of Player] quickly before the melee can begin!";
				now BeforeCombat is 1;
				follow the player attack rule;
				now BeforeCombat is 0;
		wait for any key;
		Combat Menu;
		now inafight is 0;
		let needed be 0;
		if Player is fastlearning:
			let needed be (level of Player plus 1) times 8;
		else:
			let needed be (level of Player plus 1) times 10;
		if XP of Player >= needed and humanity of Player > 0:
			level up;
		if companionList of Player is not empty:
			repeat with x running through companionList of Player:
				if x is not NullPet:
					now needed is ( level of x ) times 10;
					if "Good Teacher" is listed in feats of Player:
						now needed is ( level of x ) times 6;
					if XP of x >= needed and level of x < level of Player and humanity of Player > 0:
						pet level up x;
	else:
		say "     Note: No possible creature to be encountered could be found. This might be caused by having various things banned, taking the creatures out of the game, or being low level in a higher level area. Dangerous enemies are excluded to avoid low level players being stomped flat, unless hard mode is enabled.";
	if debugactive is 1:
		say "     DEBUG: Random Monster Choosing Ended[line break]";
	rule succeeds;

To challenge:
	choose row MonsterID from the Table of Random Critters;
	prepforfight;
	if BannedStatus entry is true and inasituation is false:
		now combat abort is 1;
		if debugactive is 1:
			say "DEBUG -> Combat Aborted because: [Name entry] has Banned: [BannedStatus entry][line break]";
	if combat abort is 1:
		now combat abort is 0;
		rule succeeds;
		stop the action;
	wait for any key;
	Combat Menu;
	now inafight is 0;
	let needed be 0;
	if Player is fastlearning:
		let needed be (level of Player plus 1) times 8;
	else:
		let needed be (level of Player plus 1) times 10;
	if XP of Player >= needed and humanity of Player > 0:
		level up;
	if companionList of Player is not empty:
		repeat with companion running through companionList of Player:
			if companion is not NullPet:
				now needed is ( level of companion ) times 10;
				if "Good Teacher" is listed in feats of Player:
					now needed is ( level of companion ) times 6;
				if XP of companion >= needed and level of companion < level of Player and humanity of Player > 0:
					pet level up companion;
	rule succeeds;

To Challenge (x - text):
	let TargetFound be 0;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y from the Table of Random Critters;
		if Name entry is x or enemy title entry is x or enemy Name entry is x:
			if BannedStatus entry is true and inasituation is false: [banned creatures can't be challenged]
				if debugactive is 1:
					say "DEBUG -> Can't challenge creature [Name entry] because it has Banned: [BannedStatus entry][line break]";
				break;
			else:
				if debugactive is 1:
					say "DEBUG -> Creature [x] found.[line break]";
				now TargetFound is 1;
				now MonsterID is y;
				now monsterHP is HP entry;
				break;
	if TargetFound is 1:
		challenge;
	else:
		say "     ERROR: Creature [x] not found.";

to HardModeboost: [Controls level boosting for hard mode, runs BEFORE any internal creature adjustments]
	let debit be 0;
	choose row MonsterID from the Table of Random Critters;
	if lev entry < level of Player and HardMode is true:
		now debit is ( level of Player ) - lev entry;
		increase lev entry by debit;
		increase HP entry by debit * 4;
		increase wdam entry by (debit / 3);
		increase dex entry by (debit / 5);

Fighting ends here.
