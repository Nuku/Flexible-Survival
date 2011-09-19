Enemy Tribes by Nuku Valente begins here.

A species can be active or inactive.
A species is usually inactive.

When play begins:
	say "Please pick the species that will be competing with you. Chose as many as you wish. More tribes may prove more of a challenge. Playing alone is easiest.";
	wait for any key;
	rival menu;

to rival menu:
	blank out the whole of table of combat items;
	let X be 1;
	repeat with Q running through species:
		if the might of q is 0, next;
		if tribe of player is q, next;
		choose a blank row in table of combat items;
		now title entry is printed name of Q;
		now description entry is printed name of Q;
		if q is active:
			now title entry is "ACTIVE";
		now toggle entry is rival select rule;
[	let z be the number of rows in table of combat items;
	say "[Z].";]
	if there is no title in row 1 of table of combat items:
		say "There are no species!";
		wait for any key;
	otherwise:
		choose a blank row in table of combat items;
		now title entry is "Random";
		now description entry is "Random";
		now toggle entry is rival select rule;
		choose a blank row in table of combat items;
		now title entry is "Begin Game";
		now description entry is "Begin Game";
		now toggle entry is rival select rule;
		change the current menu to table of Combat Items;
		carry out the displaying activity;
 
 This is the rival select rule:
	choose row Current Menu Selection in table of combat items;
	let nam be description entry;
	if nam is "Random":
		repeat with y running through species:
			if a random chance of 1 in 4 succeeds:
				now y is active;
			otherwise:
				now y is inactive;
		decrease the menu depth by 1;
		rival menu;
		rule succeeds;
	if nam is "Begin Game":
		decrease the menu depth by 1;
		rule succeeds;
	let z be Snozzlefoggles;
	repeat with y running through species:
		if nam matches the text printed name of y:
			now z is y;
			break;
	if z is active:
		now z is inactive;
	otherwise:
		now z is active;
	decrease the menu depth by 1;
	rival menu;
	
An everyturn rule(This is the Enemies Breed rule):
	if the remainder after dividing turns by 2 is 0, continue the action;
	repeat with enemy running through active species:
		let z be territory of enemy * density of enemy;
		let zeta be z;
		let max be 20;
[		if shelter is complete:
			increase zeta by 2 * density of enemy;
			increase max by 5;
		if population of enemy > zeta and morale of enemy > max:
			say "Overcrowding erodes morale.";
			if morale of enemy > max:
				decrease morale of enemy by 1;]
		if population of enemy > z * 2, next;
		let foragers be population of enemy;
		let x be a random number from 1 to 100;
		let y be 0;
		let crit be 0;
		if x is greater than 90:
			now y is 3;
			now crit is 1;
		otherwise if x is greater than 60:
			now y is 2;
		otherwise:
			now y is 1;
		now y is ( foragers * the Self Fertility of the enemy * y ) / 250 ;
		let mor be morale of enemy;
		if mor is less than 20, now mor is 20;
		now y is ( y * mor ) / 100;
		if crit is 1 and y is less than 1, now y is 1;
		if y is greater than 0:
			increase population of enemy by y;
			if morale of enemy is less than 60:
				let gain be 1;
				increase gain by y times 2;
				now gain is gain * mood of enemy;
				now gain is gain / 100;
				increase morale of enemy by gain;
		say "The population of [enemy] is now [population of enemy].";

		

Enemy Tribes ends here.
