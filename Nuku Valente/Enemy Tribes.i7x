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
	

Enemy Tribes ends here.
