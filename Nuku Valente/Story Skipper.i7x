Story Skipper by Nuku Valente begins here.

Trixie is a person. Trixie is in Grey Abbey Library.

instead of sniffing Trixie:
	say "Trixie smells of broken universes and rewritten fate.  How anything can smell like that or how you can even know that smell disturbs you to your very core.";

The description of trixie is "Look, it[apostrophe]s Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a T Shirt that reads 'Let[apostrophe]s skip to the good stuff!'.";

The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me and [bold type]recite[roman type] the word back to me. This will let you bend time and probability, returning you to the condition you were in when you first said the words.... Mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good! Here's the magic word:[line break][line break][magic word][line break]" };

To say magic word:
	say "[strength of player]}[dexterity of player]}[stamina of player]}[charisma of player]}[perception of player]}[intelligence of player]}[level of player]}[maxhp of player]}[humanity of player]}[score - 50]}[hp of doctor matt]}[bodyname of player]}[facename of player]}[skinname of player]}[tailname of player]}[cockname of player]}[SatisfiedTanuki]}[hospquest]}[cocks of player]}[breasts of player]}[cunts of player]}[breast size of player]}[cock length of player]}[cock width of player]}[cunt length of player]}[cunt width of player]}[weapon object of player]}[location of Snow]}[location of Sandra]}[if Hyper Squirrel Girl is resolved]1[otherwise]0[end if]}[if Needy Rabbit Girl is resolved]1[otherwise]0[end if]}[location of coleen]}[coleentalk]}[coleenfound]}[coleencollared]}[coleenalpha]}[coleenslut]}[coleenspray]}[hp of doctor mouse]}[coonstatus]}[featunlock]}[butterflymagic]}[catnum]}[mateable]}[gryphoncomforted]}[shiftable]}[medeastuff]}[mtp]}[hyg]}[nes]}[mtrp]}[boristalk]}[borisquest]}[progress of alex]}[angiehappy]}[angietalk]}[deerconsent]}[deerhappy]}[mattcollection]}[orthasstart]}[fancyquest]}[hp of sven]}[lust of sven]}[sarahslut]}[sarahtalk]}[sarahpups]}0}[alexbrunch]}[treasurefound]}[tmapfound]}[hp of Sandra]}[franksex]}[hp of Fang]";	[THIS PORTION IS CLOSED - ADD TO NEXT SECTION]
	say "[line break]'It seems this magic word gets longer every time I say it. Here is the second half,' she says, taking a breath before speaking on:[line break]";
	say "continuedchant}[orthasstart]}[fancyquest]}[hp of sven]}[lust of sven]}[sarahslut]}[sarahtalk]}[sarahpups]}0}[alexbrunch]}[treasurefound]}[tmapfound]}[hp of Sandra]}[franksex]}[hp of Fang]}[libido of Fang]}[pigfed]}[pigfucked]}[if cute crab is tamed]1[otherwise]0[end if]}[if exotic bird is tamed]1[otherwise]0[end if]}[if Felinoid companion is tamed]1[otherwise]0[end if]}[if bee girl is tamed]1[otherwise]0[end if]}[if house cat is tamed]1[otherwise]0[end if]}[if little fox is tamed]1[otherwise]0[end if]}[if skunk kit is tamed]1[otherwise]0[end if]}[if helper dog is tamed]1[otherwise]0[end if]}[mousecurse]}[hp of Elijah]}[npcEint]}[if latexhuskymode is true]1[otherwise]0[end if]}[if insectlarva is true]1[otherwise]0[end if]}[hp of Leonard]}[hp of Solstice]}[hp of Ronda]}[hp of Athanasia]}[skunkbeaststatus]}[ktp]}[release number]}[tattoohunter]}[tatsave]}[piercesave]}[diegochanged]}[hp of Eric]";
	say "[line break]'You'll need to recite that part on its own (including the continuedchant part) after telling me the first one using a second recite command.  Don't ask me to explain why.  It's magic!' she says in a teasing tone with a big grin while waggling her fingers.";

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
			-- 1:		[Strength]
				if the player's command matches "[number]":
					now the strength of player is the number understood;
					now capacity of player is strength of player * 5;
			-- 2:		[Dexterity]
				if the player's command matches "[number]":
					now the dexterity of player is the number understood;
			-- 3:		[Stamina]
				if the player's command matches "[number]":
					now the stamina of player is the number understood;
			-- 4:		[Charisma]
				if the player's command matches "[number]":
					now the charisma of player is the number understood;
			-- 5:		[Perception]
				if the player's command matches "[number]":
					now the perception of player is the number understood;
			-- 6:		[Intelligence]
				if the player's command matches "[number]":
					now the Intelligence of player is the number understood;
			-- 7:		[Level]
				if the player's command matches "[number]":
					now the Level of player is the number understood;
			-- 8:		[HP]
				if the player's command matches "[number]":
					now the maxhp of player is the number understood;
					now the hp of player is the maxhp of player;
			-- 9:		[Humanity]
				if the player's command matches "[number]":
					now the humanity of player is the number understood;
			-- 10:	[Score]
				if the player's command matches "[number]":
					now the score is the score;
			-- 11:	[Dr Matt]
				if the player's command matches "[number]":
					now unusual creature is resolved;
					now the hp of doctor matt is the number understood;
					now level of doctor matt is turns;
					if hp of doctor matt > 0 and hp of doctor matt < 100:
						now Outside Trevor Labs is known;
					if hp of doctor matt is greater than 4 and hp of doctor matt is less than 100:
						move the microwave to the location of doctor matt;
					if hp of doctor matt is 6:
						now unusual creature is unresolved;
					if hp of doctor matt is 7:
						now susan is in the location of doctor matt;
					if hp of doctor matt is 13:
						now foodneed is 6;
						now waterneed is 6;
					if hp of doctor matt >= 16:
						increase freecred by 100 + ( 2 * number of fasttravel rooms );	[awards to minimum 50%]
						now Zephyr Lobby is known;
					if hp of doctor matt is 17:
						add "nanite density monitor" to invent of player;
						now beach detector site is unresolved;
						now red light detector site is unresolved;
						now high rise detector site is unresolved;
						now park detector site is unresolved;
						now ndmlist is { "Beach", "Red Light District", "High Rise District", "Park" };
					if hp of doctor matt is 18:
						if "nanite density monitor" is listed in invent of player, delete nanite density monitor;
						now beach detector site is resolved;
						now red light detector site is resolved;
						now high rise detector site is resolved;
						now park detector site is resolved;
						now ndmlist is { };
						increase freecred by 200;
					otherwise if hp of doctor matt is 100:
						remove orthas from play;
						now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
						now the initial appearance of Doctor Matt is "A small recorder labeled 'doctor matt' remains abandoned.";
			-- 12:	[Body infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now monster is Y;
						now body is body entry;				
						now bodyname is name entry;
						attributeinfect;
			-- 13:	[Face infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now face is face entry;				
						now facename is name entry;
			-- 14:	[Skin infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now skin is skin entry;				
						now skinname is name entry;
			-- 15:	[Tail infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now tail is tail entry;				
						now tailname is name entry;
			-- 16:	[Cock infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						now cock is cock entry;				
						now cockname is name entry;
			-- 17:	[Tanuki]
				if the player's command matches "[number]":
					now SatisfiedTanuki is the number understood;
			-- 18:	[Hospital Quest]
				if the player's command matches "[number]":
					now hospquest is the number understood;
			-- 19:	[player cock]
				if the player's command matches "[number]":
					now the cocks of player is the number understood;
			-- 20:	[player breasts]
				if the player's command matches "[number]":
					now the breasts of player is the number understood;
			-- 21:	[player cunt]
				if the player's command matches "[number]":
					now the cunts of player is the number understood;
			-- 22:	[player cock]
				if the player's command matches "[number]":
					now the breast size of player is the number understood;
			-- 23:	[player cock]
				if the player's command matches "[number]":
					now the cock length of player is the number understood;
			-- 24:	[player cock]
				if the player's command matches "[number]":
					now the cock width of player is the number understood;
			-- 25:	[player cunt]
				if the player's command matches "[number]":
					now the cunt length of player is the number understood;
			-- 26:	[player cunt]
				if the player's command matches "[number]":
					now the cunt width of player is the number understood;
			-- 27:	[equipped weapon]
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
			-- 28:	[Snow]
				repeat with Y running through rooms:
					if the printed name of Y matches the text b, case insensitively:
						now snow is in Y;
			-- 29:	[Sandra]
				repeat with Y running through rooms:
					if the printed name of Y matches the text b, case insensitively:
						now Sandra is in Y;
			-- 30:	[Snow]
				if the player's command matches "[number]":
					if the number understood is 1:
						now hyper squirrel girl is resolved;
						now squirrel den is known;
					otherwise:
						now hyper squirrel girl is not resolved;
			-- 31:	[Sandra]
				if the player's command matches "[number]":
					if the number understood is 1:
						now needy rabbit girl is resolved;
						now rabbit den is known;
					otherwise:
						now needy rabbit girl is not resolved;
			-- 32:	[Coleen]
				repeat with Y running through rooms:
					if the printed name of Y matches the text b, case insensitively:
						now Coleen is in Y;
					if coleen is in bunker:
						now Womanfruittree is resolved;
			-- 33:	[Coleen]
				if the player's command matches "[number]":
					now coleentalk is the number understood;
			-- 34:	[Coleen]
				if the player's command matches "[number]":
					now coleenfound is the number understood;
			-- 35:	[Coleen]
				if the player's command matches "[number]":
					now coleencollared is the number understood;
			-- 36:	[Coleen]
				if the player's command matches "[number]":
					now coleenalpha is the number understood;
			-- 37:	[Coleen]
				if the player's command matches "[number]":
					now coleenslut is the number understood;
			-- 38:	[Coleen]
				if the player's command matches "[number]":
					now coleenspray is the number understood;
			-- 39:	[Dr. Mouse]
				if the player's command matches "[number]":
					now hp of doctor mouse is the number understood;
			-- 40:	[Candy / raccoon pet]
				if the player's command matches "[number]":
					now coonstatus is the number understood;
			-- 41:	[Feat unlock]
				if the player's command matches "[number]":
					now featunlock is the number understood;
			-- 42:	[Butterfly]
				recite butterflymagic "[the player's command]";
			-- 43:
				if the player's command matches "[number]":
					now catnum is the number understood;
			-- 44:
				if the player's command matches "[number]":
					now mateable is the number understood;
			-- 45:	[Timothy]
				if the player's command matches "[number]":
					now gryphoncomforted is the number understood;
					now lonely gryphoness is unresolved;
					now Gryphoness Nest is unresolved;
					if gryphoncomforted is greater than 0:
						now lonely gryphoness is resolved;
					if gryphoncomforted is greater than 2:
						now gryphoness is tamed;
						now Gryphoness Nest is resolved;
			-- 46:	[Shifting]
				if the player's command matches "[number]":
					now shiftable is the number understood;
					now Secure Area is unresolved;
					now Guard Gryphon is unresolved;
					if shiftable > 0:
						now Secure Area is resolved;
					if shiftable is 2:
						now Guard Gryphon is resolved;
						now findablestairs is 1;
			-- 47:	[Dr. Medea]
				if the player's command matches "[number]":
					now medeastuff is the number understood;
					if medeastuff > 0:
						now Pediatrics Lobby is known;
			-- 48:	[Military events]
				if the player's command matches "[number]":
					now mtp is the number understood;
					if mtp is 4, now Military presence is resolved;
			-- 49:	[Hyena Gang]
				if the player's command matches "[number]":
					now hyg is the number understood;
					if hyg is 4:
						now Hyena hideout is known;
						now hyena gang is resolved;
			-- 50:	[New Ewe Store]
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
			-- 51:	[Lisa]
				if the player's command matches "[number]":
					now mtrp is the number understood;
					if mtrp is 1:
						now Porn Store is known;
						now mouse taur is resolved;
						now find porn store is resolved;
			-- 52:	[Boris]
				if the player's command matches "[number]":
					now boristalk is the number understood;
			-- 53:	[Boris]
				if the player's command matches "[number]":
					now borisquest is the number understood;
					if borisquest is greater than 4:
						if christyquest is 0:
							now christyquest is 1;
			-- 54:	[Alex]
				if the player's command matches "[number]":
					now progress of alex is the number understood;
					if progress of alex is greater than 0:
						now Alex's Condo is known;
						now meet alex is resolved;
					if progress of alex is greater than 1:
						now find lorenda is resolved;
			-- 55:	[Angie]
				if the player's command matches "[number]":
					now angiehappy is the number understood;
					if angiehappy is greater than 0:
						now angiefound is 1;
						now zoo entrance is known;
			-- 56:	[Angie]
				if the player's command matches "[number]":
					now angietalk is the number understood;
					if angietalk is greater than 1:
						Now AngieTrapped is resolved;
			-- 57:	[Susan]
				if the player's command matches "[number]":
					now deerconsent is the number understood;
			-- 58:	[Susan]
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
			-- 59:	[Hospital Quest]
				if the player's command matches "[number]":
					now mattcollection is the number understood;
			-- 60:	[Orthas]
				if the player's command matches "[number]":
					now orthasstart is the number understood;
			-- 61:	[Stables - Fancy Quest]
				if the player's command matches "[number]":
					now fancyquest is the number understood;
					now findinghardware is unresolved;
					now ignoredmemo is unresolved;
					if fancyquest is greater than 4:
						now findinghardware is resolved;
					if fancyquest is greater than 0:
						now ignoredmemo is resolved;
			-- 62:	[Sven]
				if the player's command matches "[number]":
					now hp of Sven is the number understood;
			-- 63:	[Sven]
				if the player's command matches "[number]":
					now lust of Sven is the number understood;
			-- 64:	[Sarah]
				if the player's command matches "[number]":
					now sarahslut is the number understood;
			-- 65:	[Sarah]
				if the player's command matches "[number]":
					now sarahtalk is the number understood;
			-- 66:	[Sarah]
				if the player's command matches "[number]":
					now sarahpups is the number understood;
			-- 67:	[-nothing-]
				if the player's command matches "[number]":
					now tempnum is 0;		[Duplicate removed]
			-- 68:	[Brunch w/Alex]
				if the player's command matches "[number]":
					now alexbrunch is the number understood;
			-- 69:	[Treasure found]
				if the player's command matches "[number]":
					now treasurefound is the number understood;
			-- 70:	[Treasure hunt]
				if the player's command matches "[number]":
					now tmapfound is the number understood;
					now noteinbottle is unresolved;
					now findingboat is unresolved;
					if tmapfound is greater than 0:
						now noteinbottle is resolved;
					if tmapfound is greater than 2:
						now pirate island is known;
						now findingboat is resolved;
						now boatfound is 3;
			-- 71:	[Sandra + Coleen]
				if the player's command matches "[number]":
					now hp of Sandra is the number understood;
			-- 72:	[Frank]
				if the player's command matches "[number]":
					now franksex is the number understood;
			-- 73:	[Fang]
				if the player's command matches "[number]":
					now hp of Fang is the number understood;
					if hp of Fang is 0 or hp of Fang is 100:
						now Fang is in the dark basement;
					if hp of Fang > 0 and hp of Fang < 100:
						now Fang is in the Grey Abbey Library;
			-- 74:	[Fang + Sandra]
				if the player's command matches "[number]":
					now libido of Fang is the number understood;
			-- 75:	[Philip]
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
			-- 76:	[Philip - sex]
				if the player's command matches "[number]":
					now pigfucked is the number understood;
					now lastPhilipfucked is turns;
			-- 77:	[cute crab - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost Crab is resolved;
						now cute crab is tamed;
					otherwise:
						now Lost Crab is not resolved;
						now cute crab is not tamed;
			-- 78:	[exotic bird - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Scared Bird is resolved;
						now Exotic Bird is tamed;
					otherwise:
						now Scared Bird is not resolved;
						now Exotic Bird is not tamed;
			-- 79:	[Felinoid companion - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Injured Felinoid is resolved;
						now Felinoid companion is tamed;
					otherwise:
						now Injured Felinoid is not resolved;
						now Felinoid companion is not tamed;
			-- 80:	[bee girl - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Smashed Hive is resolved;
						now bee girl is tamed;
					otherwise:
						now Smashed Hive is unresolved;
						now bee girl is not tamed;
			-- 81:	[house cat - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost house cat is resolved;
						now house cat is tamed;
					otherwise:
						now Lost house cat is not resolved;
						now house cat is not tamed;
			-- 82:	[little fox - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Abandoned Fox is resolved;
						now little fox is tamed;
					otherwise:
						now Abandoned Fox is not resolved;
						now little fox is not tamed;
			-- 83:	[skunk kit - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost Skunk Kit is resolved;
						now skunk kit is tamed;
					otherwise:
						now Lost Skunk Kit is unresolved;
						now skunk kit is not tamed;
			-- 84:	[helper dog - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Mournful Dog is resolved;
						now helper dog is tamed;
					otherwise:
						now Mournful Dog is not resolved;
						now helper dog is not tamed;
						now hdog is 0;
						now dogfoodcount is 0;
			-- 85:	[Rachel Mouse - pet]
				if the player's command matches "[number]":
					now mousecurse is the number understood;
					if mousecurse is 1:
						now Quiet Apartment Building is resolved;
						now mouse girl is tamed;
						now the companion of the player is mouse girl;
						say "Rachel smiles as she rejoins you at your side, gently holding your hand in hers.";
					otherwise:
						now Quiet Apartment Building is unresolved;
						now mouse girl is not tamed;
			-- 86:	[Elijah]
				if the player's command matches "[number]":
					now hp of Elijah is the number understood;
					now NPCintCounter is turns;
					move Elijah to Burned-Out Chapel;
					now Angel vs Demons is unresolved;
					now Burned-Out Chapel is unknown;
					if hp of Elijah > 0:
						now Angel vs Demons is resolved;
						now Burned-Out Chapel is known;
					if hp of Elijah > 0 and hp of Elijah < 100:
						move Elijah to Bunker;
					if hp of Elijah is 100:
						remove Elijah from play;
					if hp of Elijah is 2, now Sweet Surprise is unresolved;
			-- 87:	[Elijah's interactions]
				now npcEint is "[the player's command]";
			-- 88:	[Latex Husky Mode]
				if the player's command matches "[number]" and the number understood is 1:
					now latexhuskymode is true;
				otherwise:
					now latexhuskymode is false;
			-- 89:	[Parasitic Larva]
				now larvaegg is 0;
				now larvacounter is 0;
				if the player's command matches "[number]" and the number understood is 1:
					now Insect Hive is resolved;
					now insectlarva is true;
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Black Wasp":
							now area entry is "High";
							now non-infectious entry is false;	[Wasps unlocked]
				otherwise:
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Black Wasp":
							now area entry is "nowhere";
							now non-infectious entry is true;	[Wasps locked]
					now insectlarva is false;
			-- 90:	[Leonard]
				if the player's command matches "[number]":
					now hp of Leonard is the number understood;
					if hp of Leonard > 0:
						now Lion's Den is known;
						now Feline Friend is resolved;
					otherwise:
						now Lion's Den is unknown;
						now Feline Friend is unresolved;
					if hp of Leonard is 5:
						now Music Store is unresolved;
						now Concert Hall is unresolved;
						now violinfound is 0;
			-- 91:	[Solstice]
				if the player's command matches "[number]":
					remove Solstice from play;
					now hp of Solstice is the number understood;
					now Adventurer is resolved;
					now Onyx Crow is resolved;
					if hp of Solstice is 1:
						now Onyx Crow is unresolved;
					if hp of Solstice is 2:
						add "Crow Artifact" to invent of player;
						now Adventurer is unresolved;
					if hp of Solstice is 3 or hp of Solstice is 4:
						now lastfuck of Solstice is turns;
					if hp of Solstice > 4:
						move Solstice to Grey Abbey Library;
			-- 92:	[Ronda the Slut Rat]
				if the player's command matches "[number]":
					now hp of Ronda is the number understood;
					now Art Collector is resolved;
					if hp of Ronda > 0 and hp of Ronda < 10:
						remove Ronda Mallrat from play;
						move Rod Mallrat to Mall FoodCourt;
					if hp of Ronda is 0 or hp of Ronda is 10:
						move Ronda Mallrat to Mall Atrium;
						move Rod Mallrat to Mall FoodCourt;
					if hp of Ronda is 100:
						move Ronda Mallrat to SlutRat Den;
						move Rod Mallrat to SlutRat Den;
					if hp of Ronda > 0:
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Slut Rat":
								now area entry is "Mall";
								break;
					if hp of Ronda is 5:
						add "lizard juice" to invent of player;
					if hp of Ronda is 6:
						now Art Collector is unresolved;
					if hp of Ronda >= 8:
						now SlutRat Den is known;	
			-- 93:	[Athanasia]
				if the player's command matches "[number]":
					now hp of Athanasia is the number understood;
					remove Athanasia from play;
					if hp of Athanasia is 0 and girl is not banned and hermaphrodite is not banned and furry is not banned:
						now Captured Bird is unresolved;
					otherwise:
						now Captured Bird is resolved;
					if hp of Athanasia is 1 and guy is not banned:
						now FireAndIce is unresolved;
					otherwise:
						now FireAndIce is resolved;
					if hp of Athanasia is 2:
						add "phoenix egg" to invent of player;
					if hp of Athanasia >= 3:
						now lastfuck of Athanasia is turns;
						if "phoenix egg" is listed in invent of player, delete phoenix egg;
						now Government Assistance is resolved; 
						now Approaching the Capitol Building is known;
					if hp of Athanasia >= 4:
						now lastfuck of Athanasia is turns + 8;
						move Athanasia to Volcanic Cave;
			-- 94:	[Skunkbeast Lord]
				if the player's command matches "[number]":
					now skunkbeaststatus is the number understood;
					if skunkbeaststatus is 1 and guy is not banned and girl is not banned and furry is not banned:
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Skunk":
								now monster is y;
								break;
						now non-infectious entry is true;		[reg. Skunk infection closed]
						[puts Skunkbeast Lord as lead monster for infection and impregnation]
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Skunkbeast Lord":
								now monster is y;
								break;
						now non-infectious entry is false;		[Skunkbeast Lord infection now open]
						now the strain of skunk goo is "Skunkbeast Lord";
						if tailname of player is "Skunk":
							now tailname of player is "Skunkbeast Lord";
							now tail of player is tail entry;
						if facename of player is "Skunk":
							now facename of player is "Skunkbeast Lord";
							now face of player is face entry;
						if skinname of player is "Skunk":
							now skin of player is skin entry;
							now skinname of player is "Skunkbeast Lord";
						if bodyname of player is "Skunk":
							now bodyname of player is "Skunkbeast Lord";
							now body of player is body entry;
							attributeinfect;
						if cockname of player is "Skunk":
							now cock of player is cock entry;
							now cockname of player is "Skunkbeast Lord";
						now Skunkbeast Battle is resolved;
					otherwise if guy is banned or girl is banned or furry is banned:
						now skunkbeaststatus is 0;
						now Skunkbeast Battle is resolved;
					otherwise:
						now skunkbeaststatus is 0;
						now Skunkbeast Battle is unresolved;
			-- 95:	[Kitsune]
				if the player's command matches "[number]":
					now ktp is the number understood;
					now Strange Fox is unresolved;
					now Strange Bell is resolved;
					if ktp is 6:
						now Strange Fox is resolved;
						now Strange Bell is unresolved;
					if ktp is 7:
						add "star bell" to the invent of the player;
					if ktp is 8:
						if "star bell" is listed in invent of the player, delete star bell;
						now Strange Fox is resolved;
						now Foxy Hideaway is known;
			-- 96:	[Release number]
				if the player's command matches "[number]":
					if release number is greater than the number understood:
						if score is less than 0, now score is 0;
			-- 97:	[Kara]
				if the player's command matches "[number]":
					now tattoohunter is the number understood;
					if tattoohunter is 1, now tattoohunter is 0;
					if tattoohunter >= 2:
						now Tattoo Parlor is known;
						now tattoonpiercing is resolved;
						now haroldtalk is 2;
						now PALOMINO is known;
					if tattoohunter >= 4:
						now Findingkara is resolved;
						now Kara is in the Tattoo Parlor;
					if tattoohunter >= 5:
						now Haroldaroused is 1;
			-- 98:	[Kara's tattoos]
				if the player's command matches "[number]":
					now tatsave is the number understood;
					remove { "Hyena Tattoo", "Dragon Tattoo", "Feline Tattoo", "Wolf Tattoo", "Unicorn Tattoo", "Gryphon Tattoo" } from feats of the player, if present;
					if tatsave is 0:
						now tatstatus is 0;
					otherwise:
						now tatstatus is 1;
					if tatsave is 1:
						add "Hyena Tattoo" to feats of the player;
					if tatsave is 2:
						add "Dragon Tattoo" to feats of the player;
					if tatsave is 3:
						add "Feline Tattoo" to feats of the player;
					if tatsave is 4:
						add "Wolf Tattoo" to feats of the player;
					if tatsave is 5:
						add "Unicorn Tattoo" to feats of the player;
					if tatsave is 6:
						add "Gryphon Tattoo" to feats of the player;
					otherwise:		[error or unlisted tattoo]
						now tatstatus is 0;
						now tatsave is 0;
			-- 99:	[Kara's piercings]
				if the player's command matches "[number]":
					now piercesave is the number understood;
					remove { "NippleandChain Piercing", "Hyenastyle Piercings", "Nipple Piercing", "Matriarch Piercing" } from feats of the player, if present;
					if piercesave is 0:
						now piercestatus is 0;
					otherwise:
						now piercestatus is 1;
					if piercesave is 1:
						add "Matriarch Piercing" to feats of the player;
					if piercesave is 2:
						add "Nipple Piercing" to feats of the player;
					if piercesave is 3:
						add "NippleandChain Piercing" to feats of the player;
					if piercesave is 4:
						add "Hyenastyle Piercings" to feats of player;
			-- 100:	[Diego]
				if the player's command matches "[number]":
					now diegochanged is the number understood;
					if diegochanged > 0:
						now diegotalk is 1;
			-- 101:	[Eric]
				if the player's command matches "[number]":
					now hp of Eric is the number understood;
					move Eric to Campus Arena Lockerroom;
					if hp of Eric > 0:
						now Barricaded Lockerroom is resolved;
						now Campus Arena Lockerroom is known;
					if hp of Eric is 100:
						remove Eric from play;
					otherwise if hp of Eric > 0:
						move Eric to Bunker;
						now thirst of Eric is 1;
					if hp of Eric is 21 or hp of Eric is 22:
						now thirst of Eric is 21;
					if hp of Eric is 11:
						now thirst of Eric is 11;
		if upit is 1, decrease z by 58;
	if hospquest is 3, now hospquest is 2;
	now progress of Doctor Mouse is turns;
	if hospquest is 8, now Dinosaur Nest is unresolved;
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

Section X - Debugging - Not for Release

trixiecheck1 is an action applying to nothing.
trixiecheck2 is an action applying to nothing.

understand "tcheck" as trixiecheck1.
understand "tcheck1" as trixiecheck1.
understand "tcheck2" as trixiecheck2.

carry out Trixiecheck1:
	say "Basic player stats:[line break]";
	say "STR: [strength of player]   DEX: [dexterity of player]   STM: [stamina of player][line break]";
	say "CHR: [charisma of player]   PER: [perception of player]   INT: [intelligence of player][line break]";
	say "LVL: [level of player]   HP: [maxhp of player]   Hum: [humanity of player]   Score: [score][line break]";
	say "HP of Dr Matt: [hp of doctor matt][line break]";
	say "Body: [bodyname of player]  Face: [facename of player]  Skin: [skinname of player][line break]";
	say "Tail: [tailname of player]  Cock: [cockname of player][line break]";
	say "Tanuki: [SatisfiedTanuki]   Hospquest: [hospquest][line break]";
	say "Cocks x [cocks of player]   Breasts x [breasts of player]   Cunts x [cunts of player]   Breast size: [breast size of player][line break]";
	say "COCK:   Length: [cock length of player]   Width: [cock width of player][line break]";
	say "CUNT:   Length: [cunt length of player]   Width: [cunt width of player][line break]";
	say "Weapon: [weapon object of player]   Snow: [location of Snow]   Sandra: [location of Sandra][line break]";
	say "Hyper Squirrel: [if Hyper Squirrel Girl is resolved]1[otherwise]0[end if]  Needy Bunny: [if Needy Rabbit Girl is resolved]1[otherwise]0[end if][line break]";
	say "COLEEN: Location: [location of coleen]   Talk: [coleentalk]   Found: [coleenfound]   Collared: [coleencollared]   Alpha: [coleenalpha]   Slut: [coleenslut]   Spray: [coleenspray][line break]";
	say "HP of Dr Mouse: [hp of doctor mouse]   Candy: [coonstatus]   featunlock: [featunlock]   Butterfly: [butterflymagic][line break]";
	say "Catnum: [catnum]   Mateable: [mateable]   gryphoncomforted: [gryphoncomforted]   shiftable: [shiftable]   Medea: [medeastuff][line break]";
	say "MTP: [mtp]   HYG: [hyg]   NES: [nes]   MTRP: [mtrp]   Boristalk: [boristalk]   Borisquest: [borisquest]   Alex: [progress of alex][line break]";
	say "Angiehappy: [angiehappy]   Angietalk: [angietalk]   Deerconsent: [deerconsent]   Deerhappy: [deerhappy][line break]";
	say "Mattcollection: [mattcollection]   Orthas: [orthasstart][line break]";
	say "Fancy: [fancyquest]   HP of Sven: [hp of sven]  Lust of Sven: [lust of sven][line break]";
	say "SARAH: Slut: [sarahslut]   Talk: [sarahtalk]   Pups: [sarahpups][line break]";
	say "VOIDED: 0   Alexbrunch: [alexbrunch]   Treasure found: [treasurefound]   Treasure map: [tmapfound][line break]";
	say "Sandra: [hp of Sandra]   Frank: [franksex]   Fang: [hp of Fang][line break]";

carry out Trixiecheck2:
	say "<Repetition of section>   Orthas: [orthasstart][line break]";
	say "Fancy: [fancyquest]   HP of Sven: [hp of sven]  Lust of Sven: [lust of sven][line break]";
	say "SARAH: Slut: [sarahslut]   Talk: [sarahtalk]   Pups: [sarahpups][line break]";
	say "VOIDED: 0   Alexbrunch: [alexbrunch]   Treasure found: [treasurefound]   Treasure map: [tmapfound][line break]";
	say "Sandra: [hp of Sandra]   Frank: [franksex]   Fang: [hp of Fang]   <end repetition>[line break]";
	say "Libido of Fang: [libido of Fang]   Pigfed: [pigfed]   Pigfucked: [pigfucked][line break]";
	say "PETS:[line break]";
	say "Cute crab: [if cute crab is tamed]1[otherwise]0[end if]   Exotic bird: [if exotic bird is tamed]1[otherwise]0[end if]   Felinoid: [if Felinoid companion is tamed]1[otherwise]0[end if][line break]";
	say "Bee girl: [if bee girl is tamed]1[otherwise]0[end if]   House cat: [if house cat is tamed]1[otherwise]0[end if]   Little fox: [if little fox is tamed]1[otherwise]0[end if][line break]";
	say "Skunk kit: [if skunk kit is tamed]1[otherwise]0[end if]   Helper dog: [if helper dog is tamed]1[otherwise]0[end if]   Rachel: [mousecurse][line break]";
	say "Rachel: [mousecurse]     Elijah: [hp of Elijah]    Elijah interactions: [npcEint][line break]";
	say "Latex Husky Mode: [if latexhuskymode is true]ON[otherwise]OFF[end if]     Parasite?: [if insectlarva is true]YES[otherwise]NO[end if][line break]";
	say "Leonard: [hp of Leonard]     Solstice: [hp of Solstice]     Ronda: [hp of Ronda][line break]";
	say "Skunkbeast Lord: [if skunkbeaststatus is 1]YES[otherwise]NO[end if]     Kitsune: [ktp][line break]";
	say "Diego: [if Diegochanged is 0]Male[otherwise if Diegochanged is 1]Herm[otherwise]Female[end if]     Eric: ???[line break]";

Story Skipper ends here.