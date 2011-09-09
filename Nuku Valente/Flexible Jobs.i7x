Flexible Jobs by Nuku Valente begins here.

 Farmer is a job.
The validation of Farmer is the farmvailable rule.

This is the farmvailable rule:
	if "Plant" is listed in diet of tribe of player:
		rule succeeds;
	if "Farming" is listed in perks of tribe of player:
		rule succeeds;
	rule fails;

An everyturn rule(this is the Farming rule):
	if the remainder after dividing turns by 4 is not 0, continue the action;
	if workers of farmer is 0, continue the action;
	let foragers be workers of farmer;
	[First check for easy to grab salvage, will become more scarce over time]
	let x be a random number from 80 to 120; [mild variance]
	if "Farming" is listed in perks of tribe of player:
		increase x by 10;
	if "Plant" is listed in diet of tribe of player:
		increase x by 10;
	now x is x * 4;
	now x is x * foragers;
	now x is x / 100;
	if x is greater than 0: [ There is forage available ]
		if x is less than 1, now x is 1;
		say "Farming yields food: +[x]";
		if "Plant" is listed in diet of tribe of player:
			increase food of tribe of player by x;
		otherwise:
			increase creds of tribe of player by x;

Hunter is a job.
The validation of Hunter is the huntvailable rule.

This is the huntvailable rule:
	if "Meat" is listed in diet of tribe of player, rule succeeds;
	if "Hunting" is listed in perks of tribe of player, rule succeeds;
	rule fails;

An everyturn rule(this is the Hunting rule):
	if the remainder after dividing turns by 2 is not 0, continue the action;
	if workers of hunter is 0, continue the action;
	let foragers be workers of hunter;
	[First check for easy to grab salvage, will become more scarce over time]
	let x be a random number from 80 to 120; [mild variance]
	if "Hunting" is listed in perks of tribe of player:
		increase x by 10;
	if "Meat" is listed in diet of tribe of player:
		increase x by 10;
	now x is x * 2;
	now x is x * foragers;
	now x is x / 100;
	if x is greater than 0: [ There is forage available ]
		if x is less than 1, now x is 1;
		say "Hunting yields food: +[x]";
		if "Meat" is listed in diet of tribe of player:
			increase food of tribe of player by x;
		otherwise:
			increase creds of tribe of player by x;


Flexible Jobs ends here.
