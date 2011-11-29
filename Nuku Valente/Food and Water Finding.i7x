Version 2 of Food and Water Finding by Nuku Valente begins here.

"Allows finding food and water while roaming the city."

Section 1 - The Situation

potential resources is a situation.

Instead of resolving a potential resources:
	let y be "food";
	let x be a random number from 1 to 3;
	if x is 1:
		now y is "food";
	if x is 2:
		now y is "water bottle";
	if x is 3:
		if "Survivalist" is listed in feats of player and a random chance of 1 in 4 succeeds:
			now y is "medkit";
		otherwise if "Three Bags Full" is listed in feats of the player and a random chance of 1 in 7 succeeds:
			now y is "medkit";
		otherwise:
			now y is "dirty water";
	say "While wandering about, you're certain you see some [y] and move to get it.";
	now x is a random number from 1 to 4;
	if x is 1:
		say "It's just laying there, hidden in [one of]a busted vending machine[or]a counter[or]a wheel barrow[or]the middle of a street[or]a bag[or]a backpack[or]an abandoned car[or]a pile of discarded clothes[purely at random].";
		add y to invent of the player;
	if x is 2:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "It is up high, forcing you to climb up after it. Looks ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to climb";
		let bonus be (( the dexterity of the player minus 10 ) divided by 2) plus level of the player divided by 2;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		if "Three Bags Full" is listed in feats of the player and bodyname of player is "ewe", increase bonus by 1;
		if "Three Bags Full" is listed in feats of the player and bodyname of player is "ram", increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty is greater than dice:
			say "You try your best to scale up, but only end up hurting yourself in the process.";
			decrease hp of player by 10;
			stop the action;
		otherwise:
			say "Successfully shimmying up, you snag the [y] triumphantly and stuff it into your backpack.";
			add y to invent of the player;
	if x is 3:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "It is up stuck under something heavy. Looks ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to lift.";
		let bonus be (( the strength of the player minus 10 ) divided by 2) plus level of the player divided by 2;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty is greater than dice:
			say "You try your best to lift up the barrier, but to no avail, denying you the [y].";
			stop the action;
		otherwise:
			say "Successfully hoisting the obstacle up, you snag the [y] triumphantly and stuff it into your backpack.";
			add y to invent of the player;
	if x is 4:
		let difficulty be a random number from 6 to 16;
		if hardmode is true, increase difficulty by a random number between 0 and 3;
		say "It is in the hands of a sentient! Though mutant, Perhaps you could convince them to give it up, it looks like they have enough for themselves. They appear ";
		if difficulty is less than 8:
			say "easy";
		otherwise if difficulty is less than 10:
			say "not too bad";
		otherwise if difficulty is less than 12:
			say "hard";
		otherwise if difficulty is less than 14:
			say "very difficult";
		otherwise:
			say "extremely difficult";
		say " to sway";
		let bonus be (( the charisma of the player minus 10 ) divided by 2) plus level of the player divided by 2;
		if "Three Bags Full" is listed in feats of the player, increase bonus by 1;
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs [difficulty]: ";
		increase dice by bonus;
		if difficulty is greater than dice:
			say "Your arguments fall on deaf ears. Wait, does this guy even have ears?";
			stop the action;
		otherwise:
			say "After working out the specifics, you are handed the [y] and you stuff it into your backpack.";
			add y to invent of the player;
	wait for any key;
	

Food and Water Finding ends here.