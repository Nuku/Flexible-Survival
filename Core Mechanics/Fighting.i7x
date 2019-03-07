Version 2 of Fighting by Core Mechanics begins here.
[- Originally Authored By: Nuku Valente -]
[Version 2 - Transplant and partial rewrite from story.ni - Wahn]

BeforeCombat is a number that varies.

To fight:
	let PossibleEncounters be a list of text;
	if debugactive is 1:
		say "     DEBUG: Random Monster Choosing Started[line break]";
	now monster is a random number from 1 to number of filled rows in the Table of Random Critters;
	let Q be a list of numbers;
	if "Unerring Hunter" is not listed in feats of player: [only adds random monsters if the player isn't an unerring hunter]
		if ( bodyname of player is "Mental Mouse" or mousecurse is 1 ) and companion of player is not mouse girl:	[hunted by the mouse collective]
			if there is a name of "Mental Mouse" in the Table of Random Critters:
				add "Mental Mouse" to PossibleEncounters;
				if humanity of player < 75:
					repeat with x running from 1 to ( ( 100 - humanity of player ) / 25 ):
						add "Mental Mouse" to PossibleEncounters;
		if insectlarva is true and larvaegg is 1 and gestation of child is 0: [hunted by wasp hive anywhere outdoors]
			if battleground is not "Mall" and battleground is not "Stables" and battleground is not "Hospital" and battleground is not "Museum" and battleground is not "Sealed":
				if there is a name of "Black Wasp" in the Table of Random Critters:
					add "Black Wasp" to PossibleEncounters;
					if libido of player > 30:
						repeat with x running from 1 to ( libido of player / 30 ):
							add "Black Wasp" to PossibleEncounters;
					if larvacounter > 3:
						repeat with x running from 1 to ( larvacounter / 3 ):
							add "Black Wasp" to PossibleEncounters;
	repeat with X running from 1 to number of filled rows in Table of Random Critters:
		choose row X from the Table of Random Critters;
		if BannedStatus entry is true: [banned creatures can't be fought]
			if debugactive is 1:
				say "DEBUG -> Can't fight with creature [name entry] because it has Banned: [BannedStatus entry][line break]";
			next;
		if there is a lev entry:
			if lev entry > level of player + 1 and hardmode is false:
				next;
		else:
			next;
		if there is no area entry, next;
		if area entry matches the text battleground:
			if (DayCycle entry is 2 and daytimer is day) or (DayCycle entry is 1 and daytimer is night), next; [skips if day/night doesn't match]
			let skipit be 0;
			repeat with s running through warded flags:
				if name entry is listed in infections of s:
					now skipit is 1;
					break;
			if skipit is 1, next;
			add name entry to PossibleEncounters;
			if "Like Attracts Like" is listed in the feats of player:
				if bodyname of player is name entry, add name entry to PossibleEncounters;
				if facename of player is name entry, add name entry to PossibleEncounters;
				if skinname of player is name entry, add name entry to PossibleEncounters;
				if tailname of player is name entry, add name entry to PossibleEncounters;
				if cockname of player is name entry, add name entry to PossibleEncounters;
	if the number of entries in PossibleEncounters is 0 and debugactive is 1:
		say "     DEBUG: No Possible Monsters Found![line break]";
	if the number of entries in PossibleEncounters is not 0:
		sort PossibleEncounters in random order;
		let RandomChosenMonster be entry 1 in PossibleEncounters;
		choose a row with name of RandomChosenMonster in the Table of Random Critters;
		setmonster RandomChosenMonster;
		prepforfight;
		if "Experienced Scout" is listed in feats of player and a random chance of 2 in 10 succeeds and combat abort is not 1 and inasituation is false:
			say "You notice an avenue of escape! Do you want to abort the combat?";
			if player consents:
				now combat abort is 1;
				say "You slip away before [name entry] can begin their assault.";
		if combat abort is 1:
			now combat abort is 0;
			rule succeeds;
			continue the action;
		let bonus be ( perception of player minus 10 ) divided by 2;
		decrease bonus by ( dex entry minus 10 ) divided by 2;
		increase bonus by a random number from 1 to 20;
		if bonus < 6:
			if "Wary Watcher" is listed in feats of player:
				say "The creature is about to get the drop on you, but your vigilance spots it just in time! You ready yourself for battle.";
			else:
				say "The creature gets the drop on you!";
				follow the monster combat mode rule; [select the combat mode for first-strike]
				choose row monstercom from table of Critter Combat;
				if there is a continuous in row monstercom of the table of Critter Combat:
					follow the continuous entry;
				follow the combat entry;
				if HP of player < 1 or lost is 1, stop the action;
		choose row monster from Table of Random Critters;
		if weapon object of player is ranged:
			now bonus is ( perception of player minus 10 ) divided by 2;
			decrease bonus by ( dex entry minus 10 ) divided by 2;
			increase bonus by a random number from 1 to 20;
			if bonus > 15:
				say "You manage to fire your [weapon object of player] quickly before the melee can begin!";
				now BeforeCombat is 1;
				follow the player attack rule;
				now BeforeCombat is 0;
		wait for any key;
		Combat Menu;
		now inafight is 0;
		let needed be 0;
		if player is fastlearning:
			let needed be (level of player plus 1) times 8;
		else:
			let needed be (level of player plus 1) times 10;
		if XP of player >= needed and humanity of player > 0:
			level up;
		now needed is ( level of companion of player ) times 10;
		if "Good Teacher" is listed in feats of player:
			now needed is ( level of companion of player ) times 6;
		if XP of companion of player >= needed and level of companion of player < level of player and humanity of player > 0 and player is not lonely:
			pet level up;
	if debugactive is 1:
		say "     DEBUG: Random Monster Choosing Ended[line break]";
	rule succeeds;

To challenge:
	choose row monster from the Table of Random Critters;
	prepforfight;
	if BannedStatus entry is true:
		now combat abort is 1;
		if debugactive is 1:
			say "DEBUG -> Combat Aborted because: [name entry] has Banned: [BannedStatus entry][line break]";
	if combat abort is 1:
		now combat abort is 0;
		rule succeeds;
		stop the action;
	wait for any key;
	Combat Menu;
	now inafight is 0;
	let needed be 0;
	if player is fastlearning:
		let needed be (level of player plus 1) times 8;
	else:
		let needed be (level of player plus 1) times 10;
	if XP of player >= needed and humanity of player > 0:
		level up;
	now needed is ( level of companion of player ) times 10;
	if "Good Teacher" is listed in feats of player:
		now needed is ( level of companion of player ) times 6;
	if XP of companion of player >= needed and level of companion of player < level of player and humanity of player > 0 and player is not lonely:
		pet level up;
	rule succeeds;

To Challenge (x - text):
	let TargetFound be 0;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y from the Table of Random Critters;
		if name entry is x or enemy title entry is x or enemy name entry is x:
			if BannedStatus entry is true: [banned creatures can't be challenged]
				if debugactive is 1:
					say "DEBUG -> Can't challenge creature [name entry] because it has Banned: [BannedStatus entry][line break]";
				break;
			else:
				if debugactive is 1:
					say "DEBUG -> Creature [x] found.[line break]";
				now TargetFound is 1;
				now monster is y;
				now monsterHP is HP entry;
				break;
	if TargetFound is 1:
		challenge;
	else:
		say "     ERROR: Creature [x] not found.";

to hardmodeboost: [Controls level boosting for hard mode, runs BEFORE any internal creature adjustments]
	let debit be 0;
	choose row monster from the Table of Random Critters;
	if lev entry < level of player and hardmode is true:
		now debit is ( level of player ) - lev entry;
		increase lev entry by debit;
		increase HP entry by debit * 4;
		increase wdam entry by (debit / 3);
		increase dex entry by (debit / 5);


Fighting ends here.
