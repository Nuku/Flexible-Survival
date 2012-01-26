Story Skipper by Nuku Valente begins here.

Trixie is a person. Trixie is in Grey Abbey Library.

The description of trixie is "Look, it[apostrophe]s Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a T Shirt that reads 'Let[apostrophe]s skip to the good stuff!'.";

The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me and [bold type]recite[roman type] the word back to me. This will let you bend time and probability, returning you to the condition you were in when you first said the words.... Mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good! Here's the magic word:[line break][line break][magic word][line break]" };

To say magic word:
	say "[strength of player]}[dexterity of player]}[stamina of player]}[charisma of player]}[perception of player]}[intelligence of player]}[level of player]}[maxhp of player]}[humanity of player]}[score - 50]}[hp of doctor matt]}[bodyname of player]}[facename of player]}[skinname of player]}[tailname of player]}[cockname of player]}[SatisfiedTanuki]}[hospquest]}[cocks of player]}[breasts of player]}[cunts of player]}[breast size of player]}[cock length of player]}[cock width of player]}[cunt length of player]}[cunt width of player]}[weapon object of player]}[location of Snow]}[location of Sandra]}[if Hyper Squirrel Girl is resolved]1[otherwise]0[end if]}[if Needy Rabbit Girl is resolved]1[otherwise]0[end if]}[location of coleen]}[coleentalk]}[coleenfound]}[coleencollared]}[coleenalpha]}[coleenslut]}[coleenspray]}[hp of doctor mouse]}[coonstatus]}[featunlock]}[butterflymagic]}[catnum]}[mateable]}[gryphoncomforted]}[shiftable]}[medeastuff]}[mtp]}[hyg]}[nes]}[mtrp]}[boristalk]}[borisquest]}[progress of alex]}[angiehappy]}[angietalk]}[deerconsent]}[deerhappy]}[mattcollection]}[orthasstart]}[fancyquest]}[hp of sven]}[lust of sven]}[sarahslut]}[sarahtalk]}[sarahpups]";

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
					if hp of doctor matt is 6:
						now unusual creature is unresolved;
					if hp of doctor matt is 7:
						now susan is in the location of doctor matt;
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
					now SatisfiedTanuki is the number understood;
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
					now catnum is the number understood;
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
			-- 47:
				if the player's command matches "[number]":
					now medeastuff is the number understood;
			-- 48:
				if the player's command matches "[number]":
					now mtp is the number understood;
			-- 49:
				if the player's command matches "[number]":
					now hyg is the number understood;
					if hyg is 4:
						now Hyena hideout is known;
						now hyena gang is resolved;
			-- 50:
				if the player's command matches "[number]":
					now nes is the number understood;
			-- 51:
				if the player's command matches "[number]":
					now mtrp is the number understood;
					if mtrp is 1:
						now Porn Store is known;
						now mouse taur is resolved;
			-- 52:
				if the player's command matches "[number]":
					now boristalk is the number understood;
			-- 53:
				if the player's command matches "[number]":
					now borisquest is the number understood;
					if borisquest is greater than 4:
						if christyquest is 0:
							now christyquest is 1;
			-- 54:
				if the player's command matches "[number]":
					now progress of alex is the number understood;
					if progress of alex is greater than 0:
						now Alex's Condo is known;
			-- 55:
				if the player's command matches "[number]":
					now angiehappy is the number understood;
					if angiehappy is greater than 0:
						now angiefound is 1;
						now zoo entrance is known;
			-- 56:
				if the player's command matches "[number]":
					now angietalk is the number understood;
					if angietalk is greater than 1:
						Now AngieTrapped is resolved;
			-- 57:
				if the player's command matches "[number]":
					now deerconsent is the number understood;
			-- 58:
				if the player's command matches "[number]":
					now deerhappy is the number understood;
					move Susan to dark basement;
					now unusual creature is resolved;
					if hp of doctor matt is 6, now unusual creature is unresolved;
					if hp of doctor matt is greater than 5:
						if deerhappy is 1:
							remove susan from play;
							now unusual creature is resolved;
							repeat with y running from 1 to number of filled rows in table of random critters:
								choose row y in table of random critters;
								if name entry is "doe":
									now monster is y;
									now area entry is "Park";
									break;
						if deerhappy is 2:
							move susan to Primary Lab;
							now unusual creature is resolved;
			-- 59:
				if the player's command matches "[number]":
					now mattcollection is the number understood;
			-- 60:
				if the player's command matches "[number]":
					now orthasstart is the number understood;
			-- 61:
				if the player's command matches "[number]":
					now fancyquest is the number understood;
				if fancyquest is greater than 4:
					now findinghardware is resolved;
				if fancyquest is greater than 0:
					now ignoredmemo is resolved;
			-- 62:
				if the player's command matches "[number]":
					now hp of Sven is the number understood;
			-- 63:
				if the player's command matches "[number]":
					now lust of Sven is the number understood;
			-- 64:
				if the player's command matches "[number]":
					now sarahslut is the number understood;
			-- 65:
				if the player's command matches "[number]":
					now sarahtalk is the number understood;
			-- 66:
				if the player's command matches "[number]":
					now sarahpups is the number understood;
	now the score is -9999;
	repeat with counter running from lev + 1 to level of player:
		if the remainder after dividing counter by 6 is 0:
			funfeatget;
	if hospquest is 1:
		now Finding a Way in is unresolved;
	otherwise:
		now Finding a Way in is resolved;
	if hospquest is 3, now hospquest is 2;
	now progress of Doctor Mouse is turns;
	if hospquest is 8, now Dinosaur Nest is unresolved;
	if hospquest is 8, now nerminepackage is 1;
	if hospquest > 9, add "Rapid Healing" to feats of the player;
	if hospquest > 13, add "Physical Booster" to the feats of the player;
	if hospquest > 13 and deerhappy is 2:
		 move Susan to Hidden Lab;
	if hp of doctor matt > 11 and hp of doctor matt < 100, add "Mental Booster" to the feats of the player;
	now Candy is in dark basement;
	if coonstatus > 100:
		now pink raccoon is tamed;
	otherwise if coonstatus > 0:
		move Candy to Bunker;
	if coonstatus is not 0:
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Raccoon":
				now monster is y;
				now area entry is "Nowhere";
				break;
	if hospquest > 1, now locked stairwell is unlocked;
	if hospquest is 13 or hospquest is 0 or hospquest is 1, now locked stairwell is locked;
	if mattcollection is 1, add "infection monitor" to invent of player;
	now Sven is in Sven's Place;
	now Svetlana is in dark basement;
	now Hidden Kitty is unresolved;
	now Sven's Place is unknown;
	if hp of Sven > 0:
		now Hidden Kitty is resolved;
		now Sven's Place is known;
	if hp of Sven is 1:
		now lastSvendrink is turns + 8;
	if hp of Sven is 2 or hp of Sven is 3:
		now lastSvendrink is turns;
	if hp of Sven > 3 and hp of Sven < 50:
		move Sven to Bunker;
	if hp of Sven is 50 or hp of Sven is 51:
		move Sven to Porn Store;
	if hp of Sven > 51 and hp of Sven < 98:
		move Sven to dark basement;
		move Svetlana to Porn Store;
	if hp of Sven > 98:
		move Sven to dark basement;
		remove Sven from play;
	now Sarah is in dark basement;
	now Pet Shop is unresolved;
	now sarahpregnant is 0;
	if sarahtalk is 0 and sarahslut is 0:
		now Husky Pack is unresolved;
	otherwise:
		move Sarah to bunker;
		now Husky Pack is resolved;
	if sarahpups > 11 and "Proud Parent" is not listed in feats of player, add "Proud Parent" to feats of player;
	say "Your spell washes through the universe. Trixie taps you on your [facename of player] nose lightly. 'All done!'";
	wait for any key;



Story Skipper ends here.
