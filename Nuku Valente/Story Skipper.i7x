Story Skipper by Nuku Valente begins here.

Trixie is a person. Trixie is in Grey Abbey Library.

The description of trixie is "Look, it[apostrophe]s Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a T Shirt that reads 'Let[apostrophe]s skip to the good stuff!'.";

The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me and [bold type]recite[roman type] the word back to me. This will let you bend time and probability, returning you to the condition you were in when you first said the words.... Mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good! Here's the magic word: [magic word]." };

To say magic word:
	say "[strength of player]}[dexterity of player]}[stamina of player]}[charisma of player]}[perception of player]}[intelligence of player]}[level of player]}[maxhp of player]}[humanity of player]}[score - 50]}[hp of doctor matt]}[bodyname of player]}[facename of player]}[skinname of player]}[tailname of player]}[cockname of player]}[satisfied]}[hospquest]}[cocks of player]}[breasts of player]}[cunts of player]}[breast size of player]}[cock length of player]}[cock width of player]}[cunt length of player]}[cunt width of player]}[weapon object of player]}[location of Snow]}[location of Sandra]}[if Hyper Squirrel Girl is resolved]1[otherwise]0[end if]}[if Needy Rabbit Girl is resolved]1[otherwise]0[end if]}[location of coleen]}[coleentalk]}[coleenfound]}[coleencollared]}[coleenalpha]}[coleenslut]}[coleenspray]}[hp of doctor mouse]}[coonstatus]}[featunlock]}[butterflymagic]}[cat]}[mateable]}[gryphoncomforted]}[shiftable]";

Reciting is an action applying to [16 things]one topic.
Understand "recite [text]" as reciting.

Check reciting:
	if trixie is not visible, say "Your words seem to have no effect." instead;

Carry out reciting:
	let x be indexed text;
	let x be the topic understood;
	replace the text " " in X with "`";
	let lev be the level of the player;
	repeat with z running from 1 to number of words in x:
		let b be word number z in x;
		replace the text "`" in b with " ";
		change the text of the player's command to b;
		if Z is:
			-- 1:
				if the player's command matches "[number]":
					now the strength of player is the number understood;
			-- 2:
				if the player's command matches "[number]":
					now the dexterity of player is the number understood;
			-- 3:
				if the player's command matches "[number]":
					now the stamina of player is the number understood;
			-- 4:
				if the player's command matches "[number]":
					now the charisma of player is the number understood;
			-- 5:
				if the player's command matches "[number]":
					now the perception of player is the number understood;
			-- 6:
				if the player's command matches "[number]":
					now the Intelligence of player is the number understood;
			-- 7:
				if the player's command matches "[number]":
					now the Level of player is the number understood;
			-- 8:
				if the player's command matches "[number]":
					now the maxhp of player is the number understood;
					now the hp of player is the maxhp of player;
			-- 9:
				if the player's command matches "[number]":
					now the humanity of player is the number understood;
			-- 10:
				if the player's command matches "[number]":
					now the score is the number understood;
			-- 11:
				if the player's command matches "[number]":
					now the hp of doctor matt is the number understood;
					if hp of doctor matt is greater than 4 and hp of doctor matt is less than 100:
						move the microwave to the location of doctor matt;
					otherwise if hp of doctor matt is 100:
						remove orthas from play;
						now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
						now the initial appearance of Doctor Matt is "A small recorder labeled 'doctor matt' remains abandoned.";
			-- 12:
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now body is body entry;				
						now bodyname is name entry;
			-- 13:
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now face is face entry;				
						now facename is name entry;
			-- 14:
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now skin is skin entry;				
						now skinname is name entry;
			-- 15:
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now tail is tail entry;				
						now tailname is name entry;
			-- 16:
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now cock is cock entry;				
						now cockname is name entry;
			-- 17:
				if the player's command matches "[number]":
					now satisfied is the number understood;
			-- 18:
				if the player's command matches "[number]":
					now hospquest is the number understood;
			-- 19:
				if the player's command matches "[number]":
					now the cocks of player is the number understood;
			-- 20:
				if the player's command matches "[number]":
					now the breasts of player is the number understood;
			-- 21:
				if the player's command matches "[number]":
					now the cunts of player is the number understood;
			-- 22:
				if the player's command matches "[number]":
					now the breast size of player is the number understood;
			-- 23:
				if the player's command matches "[number]":
					now the cock length of player is the number understood;
			-- 24:
				if the player's command matches "[number]":
					now the cock width of player is the number understood;
			-- 25:
				if the player's command matches "[number]":
					now the cunt length of player is the number understood;
			-- 26:
				if the player's command matches "[number]":
					now the cunt width of player is the number understood;
			-- 27:
				repeat with Y running through grab objects:
					if the printed name of Y matches the text b, case insensitively:
						if printed name of y is not listed in invent of player, add printed name of Y to invent of player;
						if Y is armament:
							now weapon object of player is Y;
							now weapon of player is weapon of Y;
							now weapon damage of player is weapon damage of Y;
							now weapon type of player is weapon type of Y;
							say "You ready your [Y].";
			-- 28:
				repeat with Y running through rooms:
					if the printed name of Y matches the text b, case insensitively:
						now snow is in Y;
			-- 29:
				repeat with Y running through rooms:
					if the printed name of Y matches the text b, case insensitively:
						now Sandra is in Y;
			-- 30:
				if the player's command matches "[number]":
					if the number understood is 1:
						now hyper squirrel girl is resolved;
						now squirrel den is known;
					otherwise:
						now hyper squirrel girl is not resolved;
			-- 31:
				if the player's command matches "[number]":
					if the number understood is 1:
						now needy rabbit girl is resolved;
						now rabbit den is known;
					otherwise:
						now needy rabbit girl is not resolved;
			-- 32:
				repeat with Y running through rooms:
					if the printed name of Y matches the text b, case insensitively:
						now Coleen is in Y;
						now Womanfruittree is resolved;
			-- 33:
				if the player's command matches "[number]":
					now coleentalk is the number understood;
			-- 34:
				if the player's command matches "[number]":
					now coleenfound is the number understood;
			-- 35:
				if the player's command matches "[number]":
					now coleencollared is the number understood;
			-- 36:
				if the player's command matches "[number]":
					now coleenalpha is the number understood;
			-- 37:
				if the player's command matches "[number]":
					now coleenslut is the number understood;
			-- 38:
				if the player's command matches "[number]":
					now coleenspray is the number understood;
			-- 39:
				if the player's command matches "[number]":
					now hp of doctor mouse is the number understood;
			-- 40:
				if the player's command matches "[number]":
					now coonstatus is the number understood;
			-- 41:
				if the player's command matches "[number]":
					now featunlock is the number understood;
			-- 42:
				recite butterflymagic "[the player's command]";
			-- 43:
				if the player's command matches "[number]":
					now cat is the number understood;
			-- 44:
				if the player's command matches "[number]":
					now mateable is the number understood;
			-- 45:
				if the player's command matches "[number]":
					now gryphoncomforted is the number understood;
					if gryphoncomforted is greater than 0:
						now lonely gryphoness is resolved;
			-- 46:
				if the player's command matches "[number]":
					now shiftable is the number understood;
	now the score is -9999;
	say "Your spell washes through the universe. Trixie taps you on your [facename of player] nose lightly. 'all done!'";
	wait for any key;
	repeat with counter running from lev + 1 to level of player:
		if the remainder after dividing counter by 6 is 0:
			funfeatget;
	if hospquest is 3, now hospquest is 2;
	now progress of Doctor Mouse is turns;
	if hospquest is 8, now Dinosaur Nest is unresolved;
	if hospquest is 8, now nerminepackage is 1;
	if hospquest > 9, add "Rapid Healing" to feats of the player;
	if hospquest > 13, add "Physical Booster" to the feats of the player;
	if hp of doctor matt > 11 and hp of doctor matt < 100, add "Mental Booster" to the feats of the player;
	if coonstatus is -1, now pink raccoon is tamed;
	if coonstatus > 0, move Candy to Bunker;
	if coonstatus is not 0:
		repeat with y running from 1 to number of filled rows in table of random critters:    [puts Raccoon as lead monster...]
			choose row y in table of random critters;
			if name entry is "Raccoon":
				now monster is y;
				now area entry is "Nowhere";
				break;
	if hospquest > 1, now locked stairwell is unlocked;
	if hospquest is 13, now locked stairwell is locked;



Story Skipper ends here.
