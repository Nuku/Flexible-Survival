Flexible Jobs by Nuku Valente begins here.

The validation of a job is usually warvailable rule;
The maximum of a job is usually maxwarrior rule;
A job can be maximized.

Farmer is a job.
The validation of Farmer is the farmvailable rule.
The maximum of farmer is maxfarmer rule.

This is the maxfarmer rule:
	now max of farmer is territory of tribe of Player;
	let x be 100;
	if farming is complete:
		increase x by 25;
	if "Plant" is listed in diet of tribe of Player:
		increase x by 25;
	now max of farmer is ( max of farmer * x ) / 100;


This is the farmvailable rule:
	if "Plant" is listed in diet of tribe of Player:
		rule succeeds;
	if farming is complete:
		rule succeeds;
	rule fails;

An everyturn rule (this is the Farming rule):
	if workers of farmer is 0, continue the action;
	let foragers be workers of farmer;
	[First check for easy to grab salvage, will become more scarce over time]
	let x be a random number from 80 to 120; [mild variance]
	if farming is complete:
		let z be level of farming;
		if "Farming" is listed in perks of tribe of Player, increase z by 1;
		if z < 1, now z is 1;
		increase x by 10 * z;
	if "Plant" is listed in diet of tribe of Player:
		increase x by 10;
	now x is x * foragers;
	now x is x / 100;
	if x > 0: [ There is forage available ]
		if x < 1, now x is 1;
		say "Farming yields food: +[x]";
		if "Plant" is listed in diet of tribe of Player:
			increase food of tribe of Player by x;
		else:
			increase creds of tribe of Player by x;

Hunter is a job.
The validation of Hunter is the huntvailable rule.
The maximum of hunter is maxhunter rule.

This is the maxhunter rule:
	now max of hunter is territory of tribe of Player;
	let x be 100;
	if hunting is complete:
		increase x by 25;
	if "Meat" is listed in diet of tribe of Player:
		increase x by 25;
	now max of hunter is ( max of hunter * x ) / 100;

This is the huntvailable rule:
	if "Meat" is listed in diet of tribe of Player, rule succeeds;
	if "Hunting" is listed in perks of tribe of Player, rule succeeds;
	rule fails;

An everyturn rule (this is the Hunting rule):
	if workers of hunter is 0, continue the action;
	let foragers be workers of hunter;
	[First check for easy to grab salvage, will become more scarce over time]
	let x be a random number from 80 to 120; [mild variance]
	if hunting is complete:
		let z be level of hunting;
		if "Hunting" is listed in perks of tribe of Player, increase z by 1;
		if z < 1, now z is 1;
		increase x by 10 * z;
	if "Meat" is listed in diet of tribe of Player:
		increase x by 10;
	now x is x * foragers;
	now x is x / 100;
	if x > 0: [ There is forage available ]
		if x < 1, now x is 1;
		say "Hunting yields food: +[x]";
		if "Meat" is listed in diet of tribe of Player:
			increase food of tribe of Player by x;
		else:
			increase creds of tribe of Player by x;

Warrior is a job.
The validation of Warrior is the warvailable rule.
The maximum of Warrior is maxwarrior rule.

This is the maxwarrior rule:
	now max of warrior is population of tribe of Player;

This is the warvailable rule:
	rule succeeds;

An everyturn rule (this is the Warrior Payday rule):
	if workers of warrior is 0, continue the action;
	let foragers be workers of warrior;
	decrease foragers by 5;
	if foragers < 0, continue the action;
	[First check for easy to grab salvage, will become more scarce over time]
	let x be 100;
	if "Militant" is listed in perks of tribe of Player:
		decrease x by 10;
	if "Ascetic" is listed in diet of tribe of Player:
		decrease x by 10;
	now x is x * foragers;
	now x is x / 100;
	if x > 0: [ The warriors demand monies ]
		if x < 1, now x is 1;
		if creds of tribe of Player < x:
			decrease x by creds of tribe of Player;
			now creds of tribe of Player is 0;
			if x < 2, now x is 2;
			decrease morale of tribe of Player by ( x / 2 );
			say "You lack the funds to properly pay for warriors. Morale: -[x / 2]";
		else:
			decrease creds of tribe of Player by x;
			say "You pay [x] freecred for your military.";

Settler is a job.
The validation of it is the Settlervailable rule.
The maximum of it is the maxsettler rule.

This is the maxsettler rule:
	now max of settler is population of tribe of Player;

This is the settlervailable rule:
	if openland > 0, rule succeeds;
	rule fails;

An everyturn rule (This is the Brave Settler rule):
	if openland < 1, now workers of settler is 0;
	let foragers be workers of settler;
	if foragers is 0, continue the action;
	let x be a random number from 80 to 120;
	increase x by perception of tribe of Player / 5;
	increase x by foragers;
	if x > 80:
		say "Excellent news! Promising land has been claimed by your people.";
		let enemies be a random number from 1 to 3;
		increase enemies by a random number from 1 to 3;
		increase enemies by a random number from 1 to 3;
		if turns < 100:
			now enemies is enemies - 1;
		if turns < 50:
			now enemies is enemies / 2;
		if enemies < 1, now enemies is 1;
		let enum be enemies;
		say "We have [workers of warrior] warrior[if workers of warrior is not 1]s[end if] available and [workers of settler] settler[if workers of settler is not 1]s[end if] available to fight. There are [enum] enemie[if enum is not 1]s[end if].";
		now enemies is ( enemies * 100 ) / stamina of tribe of Player;
		let estimate be ( enemies * a random number from 66 to 150) / 100;
		say "We estimate we will lose [estimate] warrior[if estimate is not 1]s[end if](or even more settlers if we run out of warriors)";
		say "Should we proceed?";
		if Player consents:
			now estimate is 0;
		else:
			say "As you wish, [one of]grand[or]great[or]fantastic[or]wise[or]awesome[or]divine[or]cautious[at random] leader.";
			continue the action;
		if enemies is 0:
			say " You manage to claim it and defeat the native mutants without losing a single soul. Hurray!";
		else:
			if enemies < workers of warrior:
				say " You lose [enemies] warrior[if enemies is not 1]s[end if] in the battle to claim the region.";
				decrease population of tribe of Player by enemies;
				decrease workers of warrior by enemies;
			else:
				if workers of warrior > 0:
					say " You lose all your warriors in the battle to claim the region.";
					decrease population of tribe of Player by workers of warrior;
					decrease enemies by workers of warrior;
					now workers of warrior is 0;
				if enemies > 0:
					now enemies is ( enemies * 3 ) / 2;
					if enemies > workers of settler:
						say "No settlers survive the attempt, the region is lost!";
						decrease population of tribe of Player by workers of settler;
						now workers of settler is 0;
						continue the action;
					else:
						say " You lose [enemies] settler[if enemies is not 1]s[end if] in the battle to claim the region.";
						decrease population of tribe of Player by enemies;
						decrease workers of settler by enemies;
		increase territory of tribe of Player by 1;
		decrease openland by 1;


Flexible Jobs ends here.
