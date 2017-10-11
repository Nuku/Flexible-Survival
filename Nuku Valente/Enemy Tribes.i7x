Enemy Tribes by Nuku Valente begins here.

A species can be active or inactive.
A species is usually inactive.

When play begins:
	say "Please pick the species that will be competing with you. Chose as many as you wish. More tribes may prove more of a challenge. Playing alone is easiest.";
	wait for any key;
	rival menu;
	now the tribe of player is inactive;

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
	else:
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
			else:
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
	else:
		now z is active;
	decrease the menu depth by 1;
	rival menu;

An everyturn rule(This is the Enemies Breed rule):
	if the remainder after dividing turns by 2 is 0, continue the action;
	repeat with enemy running through active species:
		if population of enemy is 0, next;
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
		else if x is greater than 60:
			now y is 2;
		else:
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

An everyturn rule(This is the Enemy Expanding rule):
	repeat with enemy running through active species:
		if population of enemy is 0, next;
		if openland < 1, next;
		let foragers be population of enemy;
		let x be a random number from 80 to 120;
		increase x by perception of enemy / 5;
		increase x by foragers;
		if x > 80:
			let enemies be a random number from 1 to 3;
			increase enemies by a random number from 1 to 3;
			increase enemies by a random number from 1 to 3;
			if turns < 100:
				now enemies is enemies - 1;
			if turns < 50:
				now enemies is enemies / 2;
			if enemies < 1, now enemies is 1;
			let enum be enemies;
			now enemies is ( enemies * 100 ) / stamina of enemy;
			let estimate be ( enemies * a random number from 66 to 150) / 100;
			if estimate is greater than population of enemy:
				continue the action;
			else:
				say "Scouts report that an enemy tribe is conquering wild territory, ";
			if enemies is 0:
				say " They manage to claim it and defeat the native mutants without losing a single soul.";
			else:
				if enemies > 0:
					if enemies > population of enemy:
						say "They fail to conquer the region!";
						decrease population of enemy by enemies;
						if population of enemy is less than 5, now population of enemy is 5;
						next;
					else:
						say " They claim the region!";
						decrease population of enemy by enemies;
						if population of enemy is less than 5, now population of enemy is 5;
			increase territory of enemy by 1;
			decrease openland by 1;


An everyturn rule(This is the Enemy Attacking rule):
	repeat with enemy running through active species:
		if population of enemy is 0, next;
		if openland > 0, next;
		let foragers be population of enemy;
		let x be a random number from 80 to 120;
		increase x by perception of enemy / 5;
		increase x by foragers;
		if x > 80:
			say "Scouts report that an enemy tribe is approaching!";
			let enemies be workers of warrior;
			if turns < 100:
				now foragers is ( foragers * 120 ) / 100;
			if turns < 50:
				now foragers is ( foragers * 60 ) / 100;
			if foragers < 1, now foragers is 1;
			let enum be enemies;
			now enemies is ( enemies * might of tribe of player ) / stamina of enemy;
			let backlash be ( foragers * might of enemy ) / stamina of tribe of player;
			let estimate be ( enemies * a random number from 66 to 150 ) / 100;
			if enemies is 0:
				say " They manage to claim land and defeat us without losing a single soul.";
			else:
				if enemies > backlash:
					say "They fail to conquer any territory, !";
					decrease population of enemy by enemies;
					if population of enemy is less than 5, now population of enemy is 5;
					next;
				else:
					say " They claim some land in a bloody conflict!";
					decrease population of enemy by enemies;
					if population of enemy is less than 5, now population of enemy is 5;
			if backlash > 0:
				say "We lose [backlash] people.";
				decrease population of tribe of player by backlash;
				decrease workers of warrior by backlash;
				if workers of warrior < 0:
					let overflow be 0 - workers of warrior;
					now workers of warrior is 0;
					say "[overflow] of them were non combatants!";
			increase territory of enemy by 1;
			decrease territory of tribe of player by 1;




Enemy Tribes ends here.
