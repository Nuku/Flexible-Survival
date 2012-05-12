Story Skipper by Nuku Valente begins here.

Trixie is a person. Trixie is in Grey Abbey Library.

instead of sniffing Trixie:
	say "Trixie smells of broken universes and rewritten fate.  How anything can smell like that or how you can even know that smell disturbs you to your very core.";

The description of trixie is "Look, it[apostrophe]s Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a T Shirt that reads 'Let[apostrophe]s skip to the good stuff!'.";

The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me and [bold type]recite[roman type] the word back to me. This will let you bend time and probability, returning you to the condition you were in when you first said the words.... Mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good! Here's the magic word:[line break][line break][magic word][line break]" };

To say magic word:
	say "[strength of player]}[dexterity of player]}[stamina of player]}[charisma of player]}[perception of player]}[intelligence of player]}[level of player]}[maxhp of player]}[humanity of player]}[score - 50]}[hp of doctor matt]}[bodyname of player]}[facename of player]}[skinname of player]}[tailname of player]}[cockname of player]}[SatisfiedTanuki]}[hospquest]}[cocks of player]}[breasts of player]}[cunts of player]}[breast size of player]}[cock length of player]}[cock width of player]}[cunt length of player]}[cunt width of player]}[weapon object of player]}[location of Snow]}[location of Sandra]}[if Hyper Squirrel Girl is resolved]1[otherwise]0[end if]}[if Needy Rabbit Girl is resolved]1[otherwise]0[end if]}[location of coleen]}[coleentalk]}[coleenfound]}[coleencollared]}[coleenalpha]}[coleenslut]}[coleenspray]}[hp of doctor mouse]}[coonstatus]}[featunlock]}[butterflymagic]}[catnum]}[mateable]}[gryphoncomforted]}[shiftable]}[medeastuff]}[mtp]}[hyg]}[nes]}[mtrp]}[boristalk]}[borisquest]}[progress of alex]}[angiehappy]}[angietalk]}[deerconsent]}[deerhappy]}[mattcollection]}[orthasstart]}[fancyquest]}[hp of sven]}[lust of sven]}[sarahslut]}[sarahtalk]}[sarahpups]}0}[treasurefound]}[tmapfound]}[hp of Sandra]}[franksex]}[hp of Fang]";	[THIS PORTION IS CLOSED - ADD TO NEXT SECTION]
	say "[line break]'It seems this magic word gets longer every time I say it. Here is the second half,' she says, taking a breath before speaking on:[line break]";
	say "continuedchant}[orthasstart]}[fancyquest]}[hp of sven]}[lust of sven]}[sarahslut]}[sarahtalk]}[sarahpups]}[progress of alex]}[alexbrunch]}[treasurefound]}[tmapfound]}[hp of Sandra]}[franksex]}[hp of Fang]}[libido of Fang]}[pigfed]}[pigfucked]}[if cute crab is tamed]1[otherwise]0[end if]}[if exotic bird is tamed]1[otherwise]0[end if]}[if Felinoid companion is tamed]1[otherwise]0[end if]}[if bee girl is tamed]1[otherwise]0[end if]}[if house cat is tamed]1[otherwise]0[end if]}[if little fox is tamed]1[otherwise]0[end if]}[if skunk kit is tamed]1[otherwise]0[end if]}[if helper dog is tamed]1[otherwise]0[end if]}[mousecurse]";
	say "[line break]'You'll need to recite that part on its own after telling me the first one.  Don't ask me to explain why.  It's magic!' she says in a teasing tone with a big grin.'";

Reciting is an action applying to [16 things]one topic.
Understand "recite [text]" as reciting.

Check reciting:
	if trixie is not visible, say "Your words seem to have no effect." instead;

Carry out reciting:
	let x be indexed text;
	let x be the topic understood;
	replace the text " " in X with "`";
	let lev be the level of the player;
	let upit be 0;
	repeat with z running from 1 to number of words in x:
		let b be word number z in x;
		replace the text "`" in b with " ";
		if "continuedchant" matches the text b:
			now upit is 1;
			next;
		change the text of the player's command to b;
		if upit is 1:
			increase z by 58;
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
					now unusual creature is resolved;
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
							repeat with t running from 1 to number of filled rows in table of game objects:
								choose row t in table of game objects;
								if object entry is y:
									add name entry to invent of player;
									break;
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
					if coleen is in bunker:
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
					now lonely gryphoness is unresolved;
					now Gryphoness Nest is unresolved;
					if gryphoncomforted is greater than 0:
						now lonely gryphoness is resolved;
					if gryphoncomforted is greater than 2:
						now gryphoness is tamed;
						now Gryphoness Nest is resolved;
			-- 46:
				if the player's command matches "[number]":
					now shiftable is the number understood;
					now Secure Area is unresolved;
					now Guard Gryphon is unresolved;
					if shiftable > 0:
						now Secure Area is resolved;
					if shiftable is 2:
						now Guard Gryphon is resolved;
						now findablestairs is 1;
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
					now New Ewe Store is unresolved;
					now littlelostlamb is resolved;
					now New Ewe Storeroom is unknown;
					if nes > 0:
						if furry is not banned and girl is not banned:
							repeat with y running from 1 to number of filled rows in table of random critters:
								choose row y in table of random critters;
								if name entry is "ewe":
									now area entry is "Outside";
									break;
						if furry is not banned and guy is not banned:
							repeat with y running from 1 to number of filled rows in table of random critters:
								choose row y in table of random critters;
								if name entry is "ram":
									now area entry is "Outside";
									break;
					if nes is 2:
						now littlelostlamb is unresolved;
					if nes >= 4:
						now New Ewe Storeroom is known;
						now New Ewe Store is resolved;
					if nes is 5:
						if "Three Bags Full" is not listed in feats of player, add "Three Bags Full" to feats of the player;
			-- 51:
				if the player's command matches "[number]":
					now mtrp is the number understood;
					if mtrp is 1:
						now Porn Store is known;
						now mouse taur is resolved;
						now find porn store is resolved;
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
						now meet alex is resolved;
					if progress of alex is greater than 1:
						now find lorenda is resolved;
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
					now findinghardware is unresolved;
					now ignoredmemo is unresolved;
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
			-- 67:
				if the player's command matches "[number]":
					now tempnum is 0;		[Duplicate removed]
			-- 68:
				if the player's command matches "[number]":
					now alexbrunch is the number understood;
			-- 69:
				if the player's command matches "[number]":
					now treasurefound is the number understood;
			-- 70:
				if the player's command matches "[number]":
					now tmapfound is the number understood;
					now noteinbottle is unresolved;
					now findingboat is unresolved;
					if tmapfound is greater than 0:
						now noteinbottle is resolved;
					if tmapfound is greater than 2:
						now pirate island is known;
						now findingboat is resolved;
			-- 71:
				if the player's command matches "[number]":
					now hp of Sandra is the number understood;
			-- 72:
				if the player's command matches "[number]":
					now franksex is the number understood;
			-- 73:
				if the player's command matches "[number]":
					now hp of Fang is the number understood;
					if hp of Fang is 0 or hp of Fang is 100:
						now Fang is in the dark basement;
					if hp of Fang > 0 and hp of Fang < 100:
						now Fang is in the Grey Abbey Library;
			-- 74:
				if the player's command matches "[number]":
					now libido of Fang is the number understood;
			-- 75:
				if the player's command matches "[number]":
					now pigfed is the number understood;
					now Philip is in Pig Pen;
					now Pig Pen is unknown;
					now HBMR is 0;
					if pigfed > 0:
						now Pig Pen is known;
						now lastpigfed is turns;
						now Hungry Piggy is resolved;
						now HBMR is 1;
					if pigfed is 3:
						now Philip is in the bunker;
			-- 76:
				if the player's command matches "[number]":
					now pigfucked is the number understood;
					now lastPhilipfucked is turns;
			-- 77:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost Crab is resolved;
						now cute crab is tamed;
					otherwise:
						now Lost Crab is not resolved;
						now cute crab is not tamed;
			-- 78:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Scared Bird is resolved;
						now Exotic Bird is tamed;
					otherwise:
						now Scared Bird is not resolved;
						now Exotic Bird is not tamed;
			-- 79:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Injured Felinoid is resolved;
						now Felinoid companion is tamed;
					otherwise:
						now Injured Felinoid is not resolved;
						now Felinoid companion is not tamed;
			-- 80:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Smashed Hive is resolved;
						now bee girl is tamed;
					otherwise:
						now Smashed Hive is unresolved;
						now bee girl is not tamed;
			-- 81:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost house cat is resolved;
						now house cat is tamed;
					otherwise:
						now Lost house cat is not resolved;
						now house cat is not tamed;
			-- 82:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Abandoned Fox is resolved;
						now little fox is tamed;
					otherwise:
						now Abandoned Fox is not resolved;
						now little fox is not tamed;
			-- 83:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost Skunk Kit is resolved;
						now skunk kit is tamed;
					otherwise:
						now Lost Skunk Kit is unresolved;
						now skunk kit is not tamed;
			-- 84:
				if the player's command matches "[number]":
					if the number understood is 1:
						now Mournful Dog is resolved;
						now helper dog is tamed;
					otherwise:
						now Mournful Dog is not resolved;
						now helper dog is not tamed;
						now hdog is 0;
						now dogfoodcount is 0;
			-- 85:
				if the player's command matches "[number]":
					now mousecurse is the number understood;
					if mousecurse is 1:
						now Quiet Apartment Building is resolved;
						now mouse girl is tamed;
					otherwise:
						now Quiet Apartment Building is unresolved;
						now mouse girl is not tamed;
		if upit is 1, decrease z by 58;
	if hospquest is 3, now hospquest is 2;
	now progress of Doctor Mouse is turns;
	if hospquest is 8, now Dinosaur Nest is unresolved;
	now the score is -9999;
	repeat with counter running from lev + 1 to level of player:
		if the remainder after dividing counter by 5 is 0:
			funfeatget;
	if hospquest is 1:
		now Finding a Way in is unresolved;
	otherwise:
		now Finding a Way in is resolved;
	if "Physical Booster" is listed in feats of player, remove "Physical Booster" from the feats of the player;
	if "Mental Booster" is listed in feats of player, remove "Mental Booster" from the feats of the player;
	if hospquest is 8, now nerminepackage is 1;
	if hospquest > 9, add "Rapid Healing" to feats of the player;
	if hospquest > 13:
		add "Physical Booster" to the feats of the player;
		now infection terminal is in Hidden Lab;
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
	if mattcollection is 1 and "infection monitor" is not listed in invent of player, add "infection monitor" to invent of player;
	if hp of doctor matt is 104, move Sally to bunker;
	if hp of doctor matt is not 104, remove Sally from play;
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
		now Mouse Taur is resolved;
		now Porn Store is known;
	if hp of Sven > 51 and hp of Sven < 98:
		move Sven to dark basement;
		move Svetlana to Porn Store;
		now Mouse Taur is resolved;
		now Porn Store is known;
	if hp of Sven > 98:
		move Sven to dark basement;
		remove Sven from play;
	if hp of Sven is 8 and Candy is in the bunker:
		now lastSvendrink is turns;
	now Sarah is in dark basement;
	now Pet Shop is unresolved;
	now sarahpregnant is 0;
	if sarahtalk is 0 and sarahslut is 0:
		now Husky Pack is unresolved;
	otherwise:
		move Sarah to bunker;
		now Husky Pack is resolved;
	if sarahpups > 11 and "Proud Parent" is not listed in feats of player, add "Proud Parent" to feats of player;
	if Sandra is in bunker and hp of Sandra is 0, now hp of Sandra is 1;
	now lust of Sandra is turns;
	if franksex is 0:
		now Comic Shop is unknown;
		now Mephitness is unresolved;
	otherwise:
		now Comic Shop is known;
		now Mephitness is resolved;
	if Fang is not in the Grey Abbey Library and Sandra is not in the Bunker:
		now libido of Fang is 0;
	say "Your spell washes through the universe. Trixie taps you on your [facename of player] nose lightly. 'All done!'";
	wait for any key;



Story Skipper ends here.