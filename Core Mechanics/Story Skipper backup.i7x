Story Skipper backup by Core Mechanics begins here.

Trixie is a person. Trixie is in Grey Abbey Library.

instead of sniffing Trixie:
	say "Trixie smells of broken universes and rewritten fate. How anything can smell like that or how you can even know that smell disturbs you to your very core.";

The description of trixie is "[trixiedesc]".

to say trixiedesc:
	say "     Look, it's Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a t-shirt that reads 'Let's skip to the good stuff!'.";
	say "     Trixie's got a new button on her t-shirt that says 'Cheaters type [link]iwannacheat[end link]' on it. Hmmm.";

The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me after starting a new game and [bold type]recite[roman type] the word back to me. This will let you bend time and probability, returning you to the condition you were in when you first said the words... Mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good! Here's the magic word:[line break][line break][magic word][line break]" }.

To say magic word:
	if wrcursestatus is 5:
		wrcurserecede; [puts player back to normal form and restores proper stats for saving]
	say "[strength of player]}[dexterity of player]}[stamina of player]}[charisma of player]}[perception of player]}[intelligence of player]}[level of player]}[maxHP of player]}[humanity of player]}[score - 50]}[HP of doctor matt]}[bodyname of player]}[facename of player]}[skinname of player]}[tailname of player]}[cockname of player]}[SatisfiedTanuki]}[hospquest]}[cocks of player]}[breasts of player]}[cunts of player]}[breast size of player]}[cock length of player]}[cock width of player]}[cunt length of player]}[cunt width of player]}[weapon object of player]}0}0}[if Hyper Squirrel Girl is resolved]1[else]0[end if]}0}[location of Coleen]}[ColeenTalk]}[ColeenFound]}[ColeenCollared]}[ColeenAlpha]}[ColeenSlut]}[ColeenSpray]}[HP of doctor mouse]}[coonstatus]}[featunlock]}[butterflymagic]}[catnum]}[mateable]}[gryphoncomforted]}[shiftable]}[medeaget]}[mtp]}[hyg]}[nes]}[mtrp]}[boristalk]}[borisquest]}[progress of alex]}[angiehappy]}[angietalk]}[deerconsent]}[deerhappy]}[mattcollection]"; [THIS PORTION IS CLOSED - ADD TO NEXT SECTION]
	say "[line break]'It seems this magic word gets longer every time I say it. Here is the second half,' she says, taking a breath before speaking on:[line break]";
	say "continuedchant}[orthasstart]}[fancyquest]}[HP of sven]}[lust of sven]}[SarahSlut]}[sarahtalk]}[SarahPups]}0}[alexbrunch]}[treasurefound]}[tmapfound]}[HP of Sandra]}[franksex]}[HP of Fang]}[libido of Fang]}[pigfed]}[pigfucked]}[if cute crab is tamed]1[else]0[end if]}[if exotic bird is tamed]1[else]0[end if]}[if Felinoid companion is tamed]1[else]0[end if]}[if bee girl is tamed]1[else]0[end if]}[if house cat is tamed]1[else]0[end if]}[if little fox is tamed]1[else]0[end if]}[if skunk kit is tamed]1[else]0[end if]}[if helper dog is tamed]1[else]0[end if]}[mousecurse]}[HP of Elijah]}[npcEint]}[if latexhuskymode is true]1[else]0[end if]}[if insectlarva is true]1[else]0[end if]}[HP of Leonard]}[HP of Solstice]}[HP of Ronda]}[HP of Athanasia]}[skunkbeaststatus]}[ktp]}[release number]}[tattoohunter]}[tatsave]}[piercesave]}[diegochanged]}[HP of Eric]}[HP of Christy]}[dragontype]}[dragonessfuck]}[HP of Doctor Medea]}[HP of Doctor Moffatt]}[HP of Lucy]}[thirst of david]}[lust of david]}[HP of david]}[HP of Adam]}[HP of Alexandra]}[HP of Larissa]}[HP of Sam]}[wrcursestatus]}[wrcurseNermine]}[HP of Doctor Utah]}[HP of Mike]}[HP of Xerxes]}[HP of Helen]}[libido of Helen]}[HP of Rex]}[HP of Karen]";
	say "[line break]'You'll need to recite that part on its own (including the continuedchant part) after telling me the first one using a second recite command. Don't ask me to explain why. It's magic!' she says in a teasing tone with a big grin while waggling her fingers. 'Just be sure to copy and paste that somewhere so you can use it to restore. If you can't seem to copy with your chosen player, try Ctrl-L to see if that will open a scrollback log.'";
	if wrcursestatus is 5:
		say "[line break]     Trixie waves her magic wand around and you flash between your normal form and your wereraptor form a few times so she can examine it before leaving you fully as a wereraptor once again.";
		wrcursesave; [puts player back to complete wereraptor form]

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
					now the maxHP of player is the number understood;
					now the HP of player is the maxHP of player;
			-- 9:		[Humanity]
				if the player's command matches "[number]":
					now the humanity of player is the number understood;
			-- 10:	[Score]
				if the player's command matches "[number]":
					now the score is the score;
			-- 11:	[Dr Matt]
				if the player's command matches "[number]":
					now carried of nanite density monitor is 0;
					now unusual creature is resolved;
					now the HP of doctor matt is the number understood;
					now level of doctor matt is turns;
					if HP of doctor matt > 0 and HP of doctor matt < 100:
						now Outside Trevor Labs is known;
					if HP of doctor matt > 4 and HP of doctor matt < 100:
						move the microwave to the location of doctor matt;
					if HP of doctor matt is 6:
						now unusual creature is unresolved;
					if HP of doctor matt is 7:
						now susan is in the location of doctor matt;
					if HP of doctor matt is 13:
						now foodneed is 6;
						now waterneed is 6;
					if HP of doctor matt >= 16:
						increase freecred by 100 + ( 2 * number of fasttravel rooms ); [awards to minimum 50%]
						now Zephyr Lobby is known;
					if HP of doctor matt is 17:
						now carried of nanite density monitor is 1;
						now beach detector site is unresolved;
						now red light detector site is unresolved;
						now high rise detector site is unresolved;
						now park detector site is unresolved;
						now ndmlist is { "Beach", "Red Light District", "High Rise District", "Park" };
					if HP of doctor matt is 18:
						now beach detector site is resolved;
						now red light detector site is resolved;
						now high rise detector site is resolved;
						now park detector site is resolved;
						now ndmlist is { };
						increase freecred by 200;
						if HP of Larissa is 0, now HP of Larissa is 1;
					else if HP of doctor matt is 100:
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
					now cocks of player is the number understood;
			-- 20:	[player breasts]
				if the player's command matches "[number]":
					now breasts of player is the number understood;
			-- 21:	[player cunt]
				if the player's command matches "[number]":
					now cunts of player is the number understood;
			-- 22:	[player cock]
				if the player's command matches "[number]":
					now breast size of player is the number understood;
			-- 23:	[player cock]
				if the player's command matches "[number]":
					now cock length of player is the number understood;
			-- 24:	[player cock]
				if the player's command matches "[number]":
					now the cock width of player is the number understood;
			-- 25:	[player cunt]
				if the player's command matches "[number]":
					now cunt length of player is the number understood;
			-- 26:	[player cunt]
				if the player's command matches "[number]":
					now cunt width of player is the number understood;
			-- 27:	[equipped weapon]
				repeat with y running through armaments:
					if the printed name of y matches the text b, case insensitively:
						if y is not owned, now carried of y is 1;
						now weapon object of player is Y;
						now weapon of player is weapon of Y;
						now weapon damage of player is weapon damage of Y;
						now weapon type of player is weapon type of Y;
						say "You ready your [Y].";
						break;
			-- 28:	[redundant - removed]
				now tempnum is 0; [Duplicate removed]
			-- 29:	[redundant - removed]
				now tempnum is 0; [Duplicate removed]
			-- 30:	[Snow]
				if the player's command matches "[number]":
					if the number understood is 1:
						now hyper squirrel girl is resolved;
						now Snow is in Grey Abbey Library;
					else:
						now hyper squirrel girl is not resolved;
						remove Snow from play;
			-- 31:	[redundant - removed]
				now tempnum is 0; [Duplicate removed]
			-- 32:	[Coleen]
				repeat with Y running through rooms:
					if the printed name of Y matches the text b, case insensitively:
						now Coleen is in Y;
					if Coleen is in Bunker:
						now Womanfruittree is resolved;
			-- 33:	[Coleen]
				if the player's command matches "[number]":
					now ColeenTalk is the number understood;
			-- 34:	[Coleen]
				if the player's command matches "[number]":
					now ColeenFound is the number understood;
			-- 35:	[Coleen]
				if the player's command matches "[number]":
					now ColeenCollared is the number understood;
			-- 36:	[Coleen]
				if the player's command matches "[number]":
					now ColeenAlpha is the number understood;
			-- 37:	[Coleen]
				if the player's command matches "[number]":
					now ColeenSlut is the number understood;
			-- 38:	[Coleen]
				if the player's command matches "[number]":
					now ColeenSpray is the number understood;
			-- 39:	[Dr. Mouse]
				if the player's command matches "[number]":
					now HP of doctor mouse is the number understood;
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
			-- 45:	[Denise]
				if the player's command matches "[number]":
					now gryphoncomforted is the number understood;
					now lonely gryphoness is unresolved;
					now Gryphoness Nest is resolved;
					if gryphoncomforted > 0:
						now lonely gryphoness is resolved;
						now Gryphoness Nest is unresolved;
					if gryphoncomforted > 2:
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
					now medeaget is the number understood;
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
						if "Three Bags Full" is not listed in feats of player, add "Three Bags Full" to feats of player;
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
					if borisquest > 4:
						if christyquest is 0:
							now christyquest is 1;
			-- 54:	[Alex]
				if the player's command matches "[number]":
					now progress of alex is the number understood;
					if progress of alex > 0:
						now Alex's Condo is known;
						now meet alex is resolved;
					if progress of alex > 1:
						now find lorenda is resolved;
			-- 55:	[Angie]
				if the player's command matches "[number]":
					now angiehappy is the number understood;
					if angiehappy > 0:
						now angiefound is 1;
						now zoo entrance is known;
			-- 56:	[Angie]
				if the player's command matches "[number]":
					now angietalk is the number understood;
					if angietalk > 1:
						Now AngieTrapped is resolved;
			-- 57:	[Susan]
				if the player's command matches "[number]":
					now deerconsent is the number understood;
			-- 58:	[Susan]
				if the player's command matches "[number]":
					now deerhappy is the number understood;
					move Susan to dark basement;
					now unusual creature is resolved;
					if HP of doctor matt is 6:
						now unusual creature is unresolved;
						now deerconsent is 0;
						now deerhappy is 0;
					if HP of doctor matt > 6:
						if deerhappy is 1:
							remove Susan from play;
							now unusual creature is resolved;
							repeat with y running from 1 to number of filled rows in table of random critters:
								choose row y in table of random critters;
								if name entry is "doe":
									now monster is y;
									now area entry is "Park";
									break;
						if deerhappy is 2:
							move Susan to Primary Lab;
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
					if fancyquest > 4:
						now findinghardware is resolved;
					if fancyquest > 0:
						now ignoredmemo is resolved;
			-- 62:	[Sven]
				if the player's command matches "[number]":
					now HP of Sven is the number understood;
			-- 63:	[Sven]
				if the player's command matches "[number]":
					now lust of Sven is the number understood;
			-- 64:	[Sarah]
				if the player's command matches "[number]":
					now SarahSlut is the number understood;
			-- 65:	[Sarah]
				if the player's command matches "[number]":
					now sarahtalk is the number understood;
			-- 66:	[Sarah]
				if the player's command matches "[number]":
					now SarahPups is the number understood;
			-- 67:	[-nothing-]
				now tempnum is 0; [Duplicate removed]
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
					if tmapfound > 0:
						now noteinbottle is resolved;
					if tmapfound > 2:
						now pirate island is known;
						now findingboat is resolved;
						now boatfound is 3;
			-- 71:	[Sandra + Coleen]
				if the player's command matches "[number]":
					now HP of Sandra is the number understood;
					now lust of Sandra is turns;
					if HP of Sandra > 0:
						now Sandra is in the bunker;
						now needy rabbit girl is resolved;
						now rabbit den is known;
					else:
						now Sandra is in Rabbit Den;
						now needy rabbit girl is not resolved;
						now rabbit den is unknown;
			-- 72:	[Frank]
				if the player's command matches "[number]":
					now franksex is the number understood;
			-- 73:	[Fang]
				if the player's command matches "[number]":
					now HP of Fang is the number understood;
					if HP of Fang is 0 or HP of Fang is 100:
						now Fang is in the dark basement;
					if HP of Fang > 0 and HP of Fang < 100:
						now Fang is in the Grey Abbey Library;
			-- 74:	[Fang + Sandra]
				if the player's command matches "[number]":
					now libido of Fang is the number understood;
					if libido of Fang is 2 and ( HP of Fang is 1 or HP of Fang is 2 ), now libido of Fang is 1;
					if Fang is not in the Grey Abbey Library and Sandra is not in the Bunker:
						now libido of Fang is 0;
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
					now lastfuck of Philip is turns;
			-- 77:	[cute crab - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost Crab is resolved;
						now cute crab is tamed;
					else:
						now Lost Crab is not resolved;
						now cute crab is not tamed;
			-- 78:	[exotic bird - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Scared Bird is resolved;
						now Exotic Bird is tamed;
					else:
						now Scared Bird is not resolved;
						now Exotic Bird is not tamed;
			-- 79:	[Felinoid companion - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Injured Felinoid is resolved;
						now Felinoid companion is tamed;
					else:
						now Injured Felinoid is not resolved;
						now Felinoid companion is not tamed;
			-- 80:	[bee girl - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Smashed Hive is resolved;
						now bee girl is tamed;
					else:
						now Smashed Hive is unresolved;
						now bee girl is not tamed;
			-- 81:	[house cat - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost house cat is resolved;
						now house cat is tamed;
					else:
						now Lost house cat is not resolved;
						now house cat is not tamed;
			-- 82:	[little fox - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Abandoned Fox is resolved;
						now little fox is tamed;
					else:
						now Abandoned Fox is not resolved;
						now little fox is not tamed;
			-- 83:	[skunk kit - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Lost Skunk Kit is resolved;
						now skunk kit is tamed;
					else:
						now Lost Skunk Kit is unresolved;
						now skunk kit is not tamed;
			-- 84:	[helper dog - pet]
				if the player's command matches "[number]":
					if the number understood is 1:
						now Mournful Dog is resolved;
						now helper dog is tamed;
					else:
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
					else:
						now Quiet Apartment Building is unresolved;
						now mouse girl is not tamed;
			-- 86:	[Elijah]
				if the player's command matches "[number]":
					now HP of Elijah is the number understood;
					now NPCintCounter is turns;
					move Elijah to Burned-Out Chapel;
					now Angel vs Demons is unresolved;
					now Burned-Out Chapel is unknown;
					if HP of Elijah > 0:
						now Angel vs Demons is resolved;
						now Burned-Out Chapel is known;
					if HP of Elijah > 0 and HP of Elijah < 100:
						move Elijah to Bunker;
					if HP of Elijah is 100:
						remove Elijah from play;
					if HP of Elijah is 2, now Sweet Surprise is unresolved;
					if HP of Elijah is 2 and furry is not banned, now Examination Room is unresolved;
			-- 87:	[Elijah's interactions]
				now npcEint is "[the player's command]";
				npcEint-Restore;
			-- 88:	[Latex Husky Mode]
				if the player's command matches "[number]" and the number understood is 1:
					now latexhuskymode is true;
				else:
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
							now non-infectious entry is false; [Wasps unlocked]
				else:
					repeat with y running from 1 to number of filled rows in table of random critters:
						choose row y in table of random critters;
						if name entry is "Black Wasp":
							now area entry is "nowhere";
							now non-infectious entry is true; [Wasps locked]
					now insectlarva is false;
			-- 90:	[Leonard]
				if the player's command matches "[number]":
					now HP of Leonard is the number understood;
					now level of Hunting Prides is 8;
					now Hunting Prides is resolved;
					now PridePark is resolved;
					if HP of Leonard is 100, now HP of Leonard is 0;
					if HP of Leonard > 0:
						now Lion's Den is known;
						now Feline Friend is resolved;
					else:
						now Lion's Den is unknown;
						now Feline Friend is unresolved;
					if HP of Leonard is 5:
						now Music Store is unresolved;
						now Concert Hall is unresolved;
						now violinfound is 0;
					if HP of Leonard is 6:
						now Leonardtimer is turns;
					if HP of Leonard is 7:
						now libido of Leonard is 0;
					if HP of Leonard is 9:
						now Leonardtimer is turns;
					if HP of Leonard >= 10:
						now Hunting Prides is unresolved;
					if HP of Leonard is 11:
						now level of Hunting Prides is 10;
					if HP of Leonard is 12 or HP of Leonard is 13:
						now level of Hunting Prides is 12;
					if HP of Leonard >= 14:
						now Hunting Prides is resolved;
						now level of Hunting Prides is 12;
					if HP of Leonard is 15, now HP of Leonard is 16;
					if HP of Leonard >= 16 and HP of Leonard <= 100:
						if "Male Preferred" is listed in feats of player, remove "Male Preferred" from feats of player;
						let foundfel be 0;
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Feline":
								now monster is y;
								let foundfel be 1;
								break;
						if foundfel is 1:
							now scale entry is 3;
							now breast size entry is 5;
							if "Herm Preferred" is listed in feats of player:
								now sex entry is "Both";
								now cocks entry is 1;
								now cock length entry is 9;
								now cock width entry is 6;
						if bodyname of player is "Feline", attributeinfect;
						now PridePark is unresolved;
			-- 91:	[Solstice]
				if the player's command matches "[number]":
					remove Solstice from play;
					now carried of Crow Artifact is 0;
					now HP of Solstice is the number understood;
					now Adventurer is resolved;
					now Onyx Crow is resolved;
					if HP of Solstice is 1:
						now Onyx Crow is unresolved;
					if HP of Solstice is 2:
						now carried of Crow Artifact is 1;
						now Adventurer is unresolved;
					if HP of Solstice is 3 or HP of Solstice is 4:
						now lastfuck of Solstice is turns;
					if HP of Solstice > 4:
						move Solstice to Grey Abbey Library;
			-- 92:	[Ronda the Slut Rat]
				if the player's command matches "[number]":
					now carried of lizard juice is 0;
					now HP of Ronda is the number understood;
					now Art Collector is resolved;
					if HP of Ronda > 0 and HP of Ronda < 10:
						remove Ronda Mallrat from play;
						move Rod Mallrat to Mall FoodCourt;
					if HP of Ronda is 0 or HP of Ronda is 10:
						move Ronda Mallrat to Mall Atrium;
						move Rod Mallrat to Mall FoodCourt;
					if HP of Ronda is 100:
						move Ronda Mallrat to Slut Rat Den;
						move Rod Mallrat to Slut Rat Den;
					if HP of Ronda > 0:
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Slut Rat":
								now area entry is "Mall";
								break;
					if HP of Ronda is 5:
						now carried of lizard juice is 1;
					if HP of Ronda is 6:
						now Art Collector is unresolved;
					if HP of Ronda >= 8:
						now Slut Rat Den is known;
			-- 93:	[Athanasia]
				if the player's command matches "[number]":
					now carried of phoenix egg is 0;
					now HP of Athanasia is the number understood;
					remove Athanasia from play;
					if HP of Athanasia is 0 and girl is not banned and hermaphrodite is not banned and furry is not banned:
						now Captured Bird is unresolved;
					else:
						now Captured Bird is resolved;
					if HP of Athanasia is 1 and guy is not banned:
						now FireAndIce is unresolved;
					else:
						now FireAndIce is resolved;
					if HP of Athanasia is 2:
						now carried of phoenix egg is 1;
					if HP of Athanasia >= 3:
						now lastfuck of Athanasia is turns;
						now Government Assistance is resolved;
						now Approaching the Capitol Building is known;
					if HP of Athanasia >= 4:
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
						now non-infectious entry is true; [reg. Skunk infection closed]
						[puts Skunkbeast Lord as lead monster for infection and impregnation]
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Skunkbeast Lord":
								now monster is y;
								break;
						now non-infectious entry is false; [Skunkbeast Lord infection now open]
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
					else if guy is banned or girl is banned or furry is banned:
						now skunkbeaststatus is 0;
						now Skunkbeast Battle is resolved;
					else:
						now skunkbeaststatus is 0;
						now Skunkbeast Battle is unresolved;
			-- 95:	[Kitsune]
				if the player's command matches "[number]":
					now carried of star bell is 0;
					now ktp is the number understood;
					now Strange Fox is unresolved;
					now Strange Bell is resolved;
					if ktp is 6:
						now Strange Fox is resolved;
						now Strange Bell is unresolved;
					if ktp is 7:
						now carried of star bell is 1;
					if ktp is 8:
						now Strange Fox is resolved;
						now Foxy Hideaway is known;
			-- 96:	[Release number]
				if the player's command matches "[number]":
					if release number > the number understood:
						if score < 0, now score is 0;
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
						now findingkara is resolved;
						now Kara is in the Tattoo Parlor;
					if tattoohunter >= 5:
						now Haroldaroused is 1;
			-- 98:	[Kara's tattoos]
				if the player's command matches "[number]":
					now tatsave is the number understood;
					remove { "Hyena Tattoo", "Dragon Tattoo", "Feline Tattoo", "Wolf Tattoo", "Unicorn Tattoo", "Gryphon Tattoo" } from feats of player, if present;
					if tatsave is 0:
						now tatstatus is 0;
					else:
						now tatstatus is 1;
					if tatsave is 1:
						add "Hyena Tattoo" to feats of player;
					if tatsave is 2:
						add "Dragon Tattoo" to feats of player;
					if tatsave is 3:
						add "Feline Tattoo" to feats of player;
					if tatsave is 4:
						add "Wolf Tattoo" to feats of player;
					if tatsave is 5:
						add "Unicorn Tattoo" to feats of player;
					if tatsave is 6:
						add "Gryphon Tattoo" to feats of player;
					else:		[error or unlisted tattoo]
						now tatstatus is 0;
						now tatsave is 0;
			-- 99:	[Kara's piercings]
				if the player's command matches "[number]":
					now piercesave is the number understood;
					remove { "NippleandChain Piercing", "Hyenastyle Piercings", "Nipple Piercing", "Matriarch Piercing" } from feats of player, if present;
					if piercesave is 0:
						now piercestatus is 0;
					else:
						now piercestatus is 1;
					if piercesave is 1:
						add "Matriarch Piercing" to feats of player;
					if piercesave is 2:
						add "Nipple Piercing" to feats of player;
					if piercesave is 3:
						add "NippleandChain Piercing" to feats of player;
					if piercesave is 4:
						add "Hyenastyle Piercings" to feats of player;
			-- 100:	[Diego]
				if the player's command matches "[number]":
					now diegochanged is the number understood;
					if diegochanged > 0:
						now diegotalk is 1;
			-- 101:	[Eric]
				if the player's command matches "[number]":
					now HP of Eric is the number understood;
					move Eric to Sports Arena Lockerroom;
					if HP of Eric > 0:
						now Barricaded Lockerroom is resolved;
						now Sports Arena Lockerroom is known;
					if HP of Eric is 100:
						remove Eric from play;
					else if HP of Eric > 0:
						move Eric to Bunker;
						now thirst of Eric is 1;
					if HP of Eric is 21 or HP of Eric is 22:
						now thirst of Eric is 21;
					if HP of Eric is 11:
						now thirst of Eric is 11;
			-- 102:	[Christy the Stuck Dragoness]
				if the player's command matches "[number]":
					now HP of Christy is the number understood;
					now dragontype is 0;
					now lust of Christy is 0;
					now libido of Christy is 0;
					now thirst of Christy is 0;
					now dragoness is in Old Building;
					now Dragon Prey is resolved;
					if HP of Christy is 0:
						now Find Building is unresolved;
						now Another Ladder is unresolved;
						now Isolated Street is unknown;
						now Back Alley is unknown;
						now NoIntroduction is 0;
					else if HP of Christy > 0:
						now Find Building is resolved;
						now Another Ladder is resolved;
						now Isolated Street is known;
						now Back Alley is known;
						now NoIntroduction is 1;
					if HP of Christy >= 2:
						remove dragoness from play;
					if HP of Christy is 90:
						now Dragon Prey is unresolved;
					if HP of Christy >= 90:
						now Isolated Street is unknown;
						now Back Alley is unknown;
			-- 103:	[Christy: Slutty Dragoness / Horny Dragon]
				if the player's command matches "[number]":
					now dragontype is the number understood;
			-- 104:	[Christy: fucked while trapped?]
				if the player's command matches "[number]":
					now dragonessfuck is the number understood;
			-- 105:	[Dr. Medea]
				if the player's command matches "[number]":
					now HP of Doctor Medea is the number understood;
					if HP of Doctor medea > 6, now HP of Doctor Medea is 0; [reset for save bug]
					if HP of Doctor Medea > 0:
						now Pediatrics Lobby is known;
					if HP of Doctor Medea is 3:
						now Obstetrics Department is unresolved;
					else:
						now Obstetrics Department is resolved;
			-- 106:	[Dr. Moffatt]
				if the player's command matches "[number]":
					now HP of Doctor Moffatt is the number understood;
					if HP of Doctor Moffatt is 99 or HP of Doctor Moffatt is 100:
						now HP of Doctor Moffatt is 0;
					if guy is banned or girl is banned or hermaphrodite is banned or furry is banned:
						now Psych Department is unknown;
						now Another Doctor is resolved;
						now HP of Doctor Moffatt is 100;
					else if HP of Doctor Moffatt is 0:
						now Psych Department is unknown;
						now Another Doctor is unresolved;
					else if HP of Doctor Moffatt > 0:
						now Psych Department is known;
						now Another Doctor is resolved;
						now hospnav is 1;
						now lastfuck of Doctor Moffatt is turns;
						now lust of Doctor Moffatt is 0;
			-- 107:	[Lucy the Mall Rat]
				if the player's command matches "[number]":
					now HP of Lucy is the number understood;
					if HP of Lucy > 0:
						move Lucy to Mall Atrium;
					else:
						remove Lucy from play;
			-- 108:	[David's thirst]
				if the player's command matches "[number]":
					now thirst of david is the number understood;
			-- 109:	[David's lust]
				if the player's command matches "[number]":
					now lust of david is the number understood;
			-- 110:	[David's HP]
				if the player's command matches "[number]":
					now HP of David is the number understood;
					if HP of David is 0 and ( guy is not banned and hellspawn is not banned ):
						remove David from play;
						now Captured Demon is unresolved;
						now Thankful Soldier is resolved;
					else:
						now Captured Demon is resolved;
						now Thankful Soldier is resolved;
					if HP of David > 0 and HP of David < 4, move David to Parade Ground;
					if HP of David is 4, move David to Bunker;
			-- 111:	[Camp Bravo / Adam]
				if the player's command matches "[number]":
					now HP of Adam is the number understood;
					now Red Light Requisition is resolved;
					now Trickster's Masterpiece is resolved;
					now Back at the Camp is resolved;
					now Camp Bravo Entrance is unknown;
					now CampBravoWomenAllowed is 0;
					now ElainePregnant is 0;
					now thirst of Elaine is 0;
					remove Adam from play;
					if guy is banned or furry is banned:
						now Red Light Requisition is resolved;
					else if HP of Adam is 0:
						now Red Light Requisition is unresolved;
					else if HP of Adam is 1:
						now Trickster's Masterpiece is unresolved;
					else if HP of Adam is 2:
						now Back at the Camp is unresolved;
					else if HP of Adam is 3:
						now Camp Bravo Entrance is known;
					else if HP of Adam is 4:
						now Camp Bravo Entrance is known;
						now CampBravoWomenAllowed is 1;
						now ElainePregnant is 48;
					else if HP of Adam is 5:
						now thirst of Elaine is 3;
						now Camp Bravo Entrance is known;
						now CampBravoWomenAllowed is 1;
						move Adam to Quartermaster's Tent;
			-- 112:	[Doberman Cop / Alexandra]
				if the player's command matches "[number]":
					now HP of Alexandra is the number understood;
					now lust of Alexandra is 0;
					now libido of Alexandra is 0;
					if HP of Alexandra > 0:
						move Alexandra to Grey Abbey Library;
						[puts Doberman as lead monster in case of impregnation]
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Doberman":
								now monster is y;
								now area entry is "nowhere";
								break;
					else:
						remove Alexandra from play;
					if HP of Alexandra is 3 and HP of Alexandra is 5:
						now lust of Alexandra is 1; [reset to start of pregnancy]
					if HP of Alexandra is 4 or HP of Alexandra is 5:
						now libido of Alexandra is a random number between 2 and 4; [minimum children restored]
			-- 113:	[Larissa (Multiform NPC)]
				if the player's command matches "[number]":
					now HP of Larissa is the number understood;
				if HP of Larissa > 3, now HP of Larissa is 3;
				if HP of Larissa > 1, nanitecoll_discount;
				follow the larissa_tfoption rule;
			-- 114:	[Sam (Dual-taur NPC)]
				if the player's command matches "[number]":
					now HP of Sam is the number understood;
					if HP of Sam is 0:
						now Another Researcher is unresolved;
						now Mini-Lab is unknown;
					else:
						now Another Researcher is resolved;
						now Mini-Lab is known;
					if HP of Sam <= 4:
						now Sam is in Mini-Lab;
					else if HP of Sam < 70:
						now Sam is in Bunker;
					else:
						remove Sam from play;
					if HP of Sam is 16 or HP of Sam is 98, dragontaur_active;
					if HP of Sam is 36 or HP of Sam is 93, vixentaur_active;
					if HP of Sam is 56, tripletaur_active;
			-- 115:	[Wereraptor curse]
				if the player's command matches "[number]":
					now wrcursestatus is the number understood;
			-- 116:	[Wereraptor cure quest]
				if the player's command matches "[number]":
					now wrcurseNermine is the number understood;
			-- 117:	[Dr. Utah]
				if the player's command matches "[number]":
					now HP of Doctor Utah is the number understood;
					now Paleontology Professor is unresolved;
					now utahmet is false;
					now Greenhouse is resolved;
					now carried of wolfsbane is 0;
					now carried of silver knife is 0;
					now Dinosaur Skeleton is resolved;
					now Paleontology Office is unknown;
					if ( girl is banned and guy is banned ) or furry is banned:
						now wrcursestatus is 0;
						now wrcurseNermine is 0;
						now Paleontology Professor is resolved;
					if wrcursestatus > 0:
						raptorrelease;
						now Paleontology Professor is resolved;
					if wrcurseNermine is 1:
						now wrlastNermine is turns;
					if wrcurseNermine is 2:
						now Greenhouse is unresolved;
					if wrcurseNermine is 3 or wrcurseNermine is 4:
						now carried of wolfsbane is 1;
						now wrcurseNermine is 3;
					if wrcurseNermine is 5:
						now Warehouse District is known;
						now Getting the Knife is unresolved;
					if wrcurseNermine is 6 or wrcurseNermine is 7:
						now carried of silver knife is 1;
						now wrcurseNermine is 6;
					if wrcurseNermine is 8:
						now carried of silver knife is 1;
						now Dinosaur Skeleton is unresolved;
					if wrcurseNermine is not 12 and wrcurseNermine is not 14:
						now HP of Doctor Utah is 0;
						now libido of Doctor Utah is 0;
						now lust of Doctor Utah is 0;
					if wrcurseNermine is 12 or wrcurseNermine is 14:
						now Paleontology Office is known;
						now libido of Doctor Utah is 0;
						now lust of Doctor Utah is 0;
						if girl is not banned:
							if HP of Doctor Utah > 1:
								if HP of Doctor Utah is odd:
									now lust of Doctor Utah is 1;
								else:
									now lust of Doctor Utah is 0;
								let iterations be HP of Doctor Utah / 2;
								now libido of Doctor Utah is 0;
								repeat with itx running from 1 to iterations:
									increase libido of Doctor Utah by a random number between 2 and 4;
						else:
							now HP of Doctor Utah is 0; [no advanced male content yet]
					if weapon object of player is silver knife and silver knife is not owned, now weapon object of player is journal;
			-- 118:	[Mike]
				if the player's command matches "[number]":
					now HP of Mike is the number understood;
					if HP of Mike is 100 or guy is banned or furry is banned:	[Mike lost]
						now Mike's Home is unknown;
						now Dog Walking is resolved;
					else if HP of Mike is 99:					[Mike enemy]
						now Mike's Home is unknown;
						now Dog Walking is resolved;
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Stag":
								now monster is y;
								now area entry is "Warehouse";
								now non-infectious entry is false;
								break;
					else if HP of Mike > 2 and HP of Mike < 98:
						now Dog Walking is resolved;
						now Mike's Home is known;
					else:
						now Dog Walking is not resolved;
						now Mike's Home is unknown;
			-- 119:	[Xerxes]
				if the player's command matches "[number]":
					now HP of Xerxes is the number understood;
					if HP of Xerxes is 0, remove Xerxes from play;
					if HP of Xerxes > 0, move Xerxes to Grey Abbey Library;
			-- 120:	[Helen]
				if the player's command matches "[number]":
					now HP of Helen is the number understood;
			-- 121:	[Helen]
				if the player's command matches "[number]":
					now libido of Helen is the number understood;
					now HelenPregnant is 0;
					if HP of Helen is 0:
						remove Helen from play;
						now thirst of Helen is 0;
						now libido of Helen is 0;
					if HP of Helen > 0:
						move Helen to Grey Abbey Library;
						if libido of Helen > 0:
							now thirst of Helen is 1;
			-- 122:	[Rex]
				if the player's command matches "[number]":
[					now HP of Rex is the number understood; ]
					let y be 0;
			-- 123:	[Karen]
				if the player's command matches "[number]":
[					now HP of Karen is the number understood; ]
					let y be 0;
		if upit is 1, decrease z by 58;
	if hospquest is 3, now hospquest is 2;
	now progress of Doctor Mouse is turns;
	if hospquest is 8, now Dinosaur Nest is unresolved;
	repeat with counter running from lev + 1 to level of player:
		if the remainder after dividing counter by 5 is 0:
			funfeatget;
	if hospquest is 1:
		now Finding a Way in is unresolved;
	else:
		now Finding a Way in is resolved;
	if "Physical Booster" is listed in feats of player, remove "Physical Booster" from the feats of player;
	if "Mental Booster" is listed in feats of player, remove "Mental Booster" from the feats of player;
	if hospquest is 8, now nerminepackage is 1;
	if hospquest > 9, add "Rapid Healing" to feats of player;
	if hospquest > 13:
		add "Physical Booster" to the feats of player;
		now infection terminal is in Hidden Lab;
	if hospquest > 13 and deerhappy is 2:
		move Susan to Hidden Lab;
	if HP of doctor matt > 11 and HP of doctor matt < 100, add "Mental Booster" to the feats of player;
	now Candy is in dark basement;
	if coonstatus > 100:
		now pink raccoon is tamed;
	else if coonstatus > 0:
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
	if mattcollection is 1, now carried of infection monitor is 1;
	if HP of doctor matt is 104, move Sally to bunker;
	if HP of doctor matt is not 104, remove Sally from play;
	now Sven is in Sven's Place;
	now Svetlana is in dark basement;
	now Hidden Kitty is unresolved;
	now Sven's Place is unknown;
	if HP of Sven > 0:
		now Hidden Kitty is resolved;
		now Sven's Place is known;
	if HP of Sven is 1:
		now lastSvendrink is turns + 8;
	if HP of Sven is 2 or HP of Sven is 3:
		now lastSvendrink is turns;
	if HP of Sven > 3 and HP of Sven < 50:
		move Sven to Bunker;
	if HP of Sven is 50 or HP of Sven is 51:
		move Sven to Porn Store;
		now Mouse Taur is resolved;
		now Porn Store is known;
	if HP of Sven > 51 and HP of Sven < 98:
		move Sven to dark basement;
		move Svetlana to Porn Store;
		now Mouse Taur is resolved;
		now Porn Store is known;
	if HP of Sven > 98:
		move Sven to dark basement;
		remove Sven from play;
	if HP of Sven is 8 and Candy is in the bunker:
		now lastSvendrink is turns;
	now Sarah is in dark basement;
	now Pet Shop is unresolved;
	now SarahPregnant is 0;
	if sarahtalk is 0 and SarahSlut is 0:
		now Husky Pack is unresolved;
	else:
		move Sarah to bunker;
		now Husky Pack is resolved;
	if SarahPups > 11 and "Proud Parent" is not listed in feats of player, add "Proud Parent" to feats of player;
	if franksex is 0:
		now Comic Shop is unknown;
		now Mephitness is unresolved;
	else:
		now Comic Shop is known;
		now Mephitness is resolved;
	say "Your spell washes through the universe. Trixie taps you on your [facename of player] nose lightly. 'All done!'";
	wait for any key;


restoreletter is a text that varies. restoreletter is normally "0".

to npcEint-Restore:
	npcEint-Read 1;
	now Char-A of Elijah is restoreletter;
	npcEint-Read 2;
	now Char-B of Elijah is restoreletter;
	npcEint-Read 3;
	now Char-C of Elijah is restoreletter;
	npcEint-Read 4;
	now Char-D of Elijah is restoreletter;
	npcEint-Read 5;
	now Char-E of Elijah is restoreletter;
	npcEint-Read 6;
	now Char-F of Elijah is restoreletter;
	npcEint-Read 7;
	now Char-G of Elijah is restoreletter;
	npcEint-Read 8;
	now Char-H of Elijah is restoreletter;
	npcEint-Read 9;
	now Char-I of Elijah is restoreletter;
	npcEint-Read 10;
	now Char-J of Elijah is restoreletter;
	npcEint-Read 11;
	now Char-K of Elijah is restoreletter;
	npcEint-Read 12;
	now Char-L of Elijah is restoreletter;
	npcEint-Read 13;
	now Char-M of Elijah is restoreletter;

to npcEint-Read (c - a number):	[converts the indexed text back to regular text]
	now restoreletter is "0";
	if character number c in npcEint is "0", now restoreletter is "0";
	if character number c in npcEint is "1", now restoreletter is "1";
	if character number c in npcEint is "2", now restoreletter is "2";
	if character number c in npcEint is "3", now restoreletter is "3";
	if character number c in npcEint is "4", now restoreletter is "4";
	if character number c in npcEint is "5", now restoreletter is "5";
	if character number c in npcEint is "6", now restoreletter is "6";
	if character number c in npcEint is "7", now restoreletter is "7";
	if character number c in npcEint is "8", now restoreletter is "8";
	if character number c in npcEint is "9", now restoreletter is "9";

[
trixienotice is a truth state that varies. trixienotice is normally false.

after going outside from the bunker while trixienotice is false:
	now trixienotice is true;
	say "     Trixie pipes up from somewhere at the edge of existence. 'Psst! You might've noticed that 'Automatic Survival' has disappeared from the feat list. I'm taking care of that and a few other cheats for you. Just tell me '[link]iwannacheat[end link]' to access them... if you want to just cheat, that is.";
]

trixiecheating is an action applying to nothing.

understand "trixiecheat" as trixiecheating.
understand "iwannacheat" as trixiecheating.

check trixiecheating:
	if Trixie is not visible, say "Only Trixie can help you with that." instead;

carry out trixiecheating:
	let Unerring Hunter be "Unerring Hunter";
	let Automatic Survival be "Automatic Survival";
	let Open World be "Open World";
	let Lil Better be "Lil Better";
	say "     Now, this stuff here is outright cheating, but if you really want to do it, I can help you out with that. It don't come for free though. You'll take a knock to your score, though I'll give half that back if you turn the cheat off later.";
	say "[bold type]Unerring Hunter[roman type] will let you automatically succeed while hunting as long as your target exists in the area. [bold type]Automatic Survival[roman type] removes your need for food and water. [bold type]Open World[roman type] grants you access to all nav points which aren't private (locked by event or NPC). [bold type]Lil Better[roman type] gives +1 to all stats. [bold type]Play On[roman type] removes the time limit to the game. You can also set your [bold type]humanity[roman type] or [bold type]libido[roman type] to any number from 0 to 100.";
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Cheats:[roman type][line break]";
		say "[link](1) Unerring Hunter[as]1[end link] - [if Unerring Hunter is listed in feats of player]Active[else]Inactive[end if][line break]";
		say "[link](2) Automatic Survival[as]2[end link] - [if Automatic Survival is listed in feats of player]Active[else]Inactive[end if][line break]";
		say "[if Open World is listed in feats of player](3) Open World cannot be deactivated[else][link](3) Open World[as]3[end link] - Inactive (Cannot be deactiveated)[end if][line break]";
		say "[link](4) Lil Better[as]4[end link] - [if Lil Better is listed in feats of player]Active[else]Inactive[end if][line break]";
		say "[link](5) Play On[as]5[end link] - [if playon is 0]Inactive[else]Active[end if] (Score halved to reactivate)[line break]";
		say "[link](6) Set Humanity[as]6[end link] - Current Humanity: [bold type][humanity of player][roman type][line break]";
		say "[link](7) Set Libido[as]7[end link] - Current Libido: [bold type][libido of player][roman type][line break]";
		LineBreak;
		say "[bold type]Game settings:[roman type][line break]";
		say "[link](8) Set anal play content level[as]8[end link] - Currently: [bold type][if anallevel is 1]Less Anal[else if anallevel is 2]Standard[else]More Anal[end if][roman type][line break]";
		say "[link](0) Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-8)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 8:
				break;
			else:
				say "Invalid choice. Pick from 0 to 8.";
		if calcnumber is 1:
			if "Unerring Hunter" is listed in feats of player:
				remove "Unerring Hunter" from feats of player;
				increase score by 250;
				say "Your 'Unerring Hunter' cheating ability has been removed.";
			else:
				add "Unerring Hunter" to feats of player;
				decrease score by 500;
				say "You have gained the 'Unerring Hunter' cheat, but are penalized 500 points.";
				say "You now have access to the 'huntinglist' listing (appearing as [bracket]Hunt[close bracket]).";
		else if calcnumber is 2:
			if "Automatic Survival" is listed in feats of player:
				remove "Automatic Survival" from feats of player;
				say "Your 'Automatic Survival' cheating ability has been removed.";
				increase score by 300;
			else:
				add "Automatic Survival" to feats of player;
				decrease score by 600;
				say "You have gained the 'Automatic Survival' cheat, but are penalized 600 points.";
		else if calcnumber is 3:
			if "Open World" is listed in feats of player:
				say "This ability cannot be removed once gained.";
			else:
				add "Open World" to feats of player;
				decrease score by 400;
				say "You have gained the 'Open World' cheat, but are penalized 400 points.";
				repeat with Q running through fasttravel not private rooms:
					now Q is known;
				Now Approaching the Capitol Building is known;
				Now Government Assistance is resolved; [removes the random event for discovering the Capitol Bldg]
				Now Plant Overview is known;
				now Ravaged Power Plant is resolved; [removes the random event for discovering the power plant]
				now College Campus is known;
				now Reaching the College is resolved; [removes the random event for discovering the College Campus]
		else if calcnumber is 4:
			if "Lil Better" is listed in feats of player:
				remove "Lil Better" from feats of player;
				say "Your 'Lil Better' cheating ability has been removed.";
				increase score by 200;
				decrease strength of player by 1;
				decrease dexterity of player by 1;
				decrease stamina of player by 1;
				decrease intelligence of player by 1;
				decrease charisma of player by 1;
				decrease perception of player by 1;
				if remainder after dividing stamina of player by 2 is 1:
					decrease maxHP of player by level of player plus 1;
					if HP of player > maxHP of player, now HP of player is maxHP of player;
			else:
				add "Lil Better" to feats of player;
				decrease score by 400;
				say "You have gained the 'Lil Better' cheat, but are penalized 400 points.";
				increase strength of player by 1;
				increase dexterity of player by 1;
				increase stamina of player by 1;
				increase intelligence of player by 1;
				increase charisma of player by 1;
				increase perception of player by 1;
				if remainder after dividing stamina of player by 2 is 0:
					increase maxHP of player by level of player plus 1;
		else if calcnumber is 5:
			if playon is 1:
				now playon is 0;
				say "Play On has been deactivated[if score > 0] and your score halved[end if]. The end is nigh.";
				if turns <= targetturns + 8:
					now targetturns is turns - 8;
					say "You have been granted one final day.";
				if score > 0, now score is score / 2;
			else:
				now playon is 1;
				say "Play On has been activated. You are now in extended play mode. The rescue will never come.";
		else if calcnumber is 6:
			say "Set your humanity (1-100) or 0 to abort> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= 100:
				now humanity of player is calcnumber;
				say "Humanity adjusted. Score penalized by 50.";
				decrease score by 50;
			else:
				say "Invalid choice - returning to menu.";
		else if calcnumber is 7:
			say "Set your libido (1-100) or 0 to abort> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= 100:
				now libido of player is calcnumber;
				say "Libido adjusted. Score penalized by 50.";
				decrease score by 50;
			else:
				say "Invalid choice - returning to menu.";
		else if calcnumber is 8:
			try analadjusting;
		else if calcnumber is 0:
			say "Exiting menu.";
			now trixieexit is 1;
		wait for any key;
		clear the screen and hyperlink list;

[-----]

anallevel is a number that varies. anallevel is usually 2.		[normal]

analadjusting is an action applying to nothing.

understand "adjust anal" as analadjusting.
understand "adjustanal" as analadjusting.
understand "anal adjust" as analadjusting.
understand "analadjust" as analadjusting.

carry out analadjusting:
	say "[special-style-2]NOTICE[roman type]: This mechanic has just been implemented and will have little to no effect during most of game play. Expect to see it come into use gradually and predominantly in newer content.";
	say "     This option will allow you to adjust your desired level for anal play in the game. This choice will [bold type]not[roman type] affect all scenes nor will it eliminate/guarantee anal play in many cases. It will simply be a means of telling specific scenes to provide alternate versions or add/remove portions of involving anal sex and anal play if they have been set to detect it. Please no complaints/whining/requests about these mechanics not being added to any given scene/creature/NPC. The game comprises about [special-style-1]24 MB[roman type] (and growing) of existing text and code, so we state that you simply have to accept the adjustments when and where they come. As a note, [bold type]paid requests[roman type] to make these adjustments can be taken on through the [bold type]Writer for Hire[roman type] project, though some restrictions may apply in certain cases.";
	say "     With that said, choosing:[line break]";
	say "- [link](1) Less Anal[as]1[end link] will indicate that you're looking to see less anal sex in your game. In some cases, it may alternate to another possible sex scene (such as oral), a non-sexual scene or simply have you driven off. This change may be automatic or be induced randomly. Keep in mind that many NPCs and creatures have sexual preferences of their own and so you could still encounter M/M and anal sex even if this preference is chosen.";
	say "- [link](2) Normal[as]2[end link] will indicate that you'd like the game's standard level of anal sex. Some scenes with males/herms may result in anal sex, though other forms of anal play will be rare.";
	say "- [link](3) More Anal[as]3[end link] will indicate that you're open to view anal sex more frequently. Some scenes may also use this as an indicator to insert additions for other forms of anal play (fingering, rimming, prostate stimulation, etc...) if they exist for the scene. You may even encounter the rare instance of anal sex with a female occurring. Again as stated above, many NPCs and creatures have their own sexual preferences to consider, so the degree of change (if any) that may occur will vary.";
	say "- [link](4) Exit[as]4[end link]: Leave this menu. You are currently set as [bold type][if anallevel is 1]Less Anal[else if anallevel is 2]Normal[else]More Anal[end if][roman type].";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
	if calcnumber is 1:
		say "You are now set to receive Less Anal.";
		now anallevel is 1;
		if "More Anal" is listed in feats of player, remove "More Anal" from feats of player;
		if "Less Anal" is not listed in feats of player, add "Less Anal" to feats of player;
	else if calcnumber is 2:
		say "You are now set to receive the standard amount of anal sex.";
		now anallevel is 2;
		if "More Anal" is listed in feats of player, remove "More Anal" from feats of player;
		if "Less Anal" is listed in feats of player, remove "Less Anal" from feats of player;
	else if calcnumber is 3:
		say "You are now set to receive More Anal.";
		now anallevel is 3;
		if "Less Anal" is listed in feats of player, remove "Less Anal" from feats of player;
		if "More Anal" is not listed in feats of player, add "More Anal" to feats of player;
	else if calcnumber is 4:
		say "Exiting menu.";
		LineBreak;

[-----]

huntinglisting is an action applying to nothing.

understand "huntinglist" as huntinglisting.

check huntinglisting:
	if "Unerring Hunter" is not listed in feats of player:
		say "You do not currently have this ability." instead;
	if there is no dangerous door in the location of the player:
		say "I don't see any good hunting grounds around here." instead;

carry out huntinglisting:
	sort table of random critters in lev order;
	let y be a random dangerous door in the location of the player;
	now battleground is the marea of y;
	repeat with X running from 1 to number of filled rows in table of random critters:
		choose row X from the table of random critters;
		if there is no area entry, next;
		if there is no name entry, next;
		if area entry matches the text battleground, case insensitively:
			say "[link][name entry][as]hunt [name entry][end link][line break]";


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
	say "LVL: [level of player]   HP: [maxHP of player]   Hum: [humanity of player]   Score: [score][line break]";
	say "HP of Dr Matt: [HP of doctor matt][line break]";
	say "Body: [bodyname of player]  Face: [facename of player]  Skin: [skinname of player][line break]";
	say "Tail: [tailname of player]  Cock: [cockname of player][line break]";
	say "Tanuki: [SatisfiedTanuki]   Hospquest: [hospquest][line break]";
	say "Cocks x [cocks of player]   Breasts x [breasts of player]   Cunts x [cunts of player]   Breast size: [breast size of player][line break]";
	say "COCK: Length: [cock length of player]   Width: [cock width of player][line break]";
	say "CUNT: Length: [cunt length of player]   Width: [cunt width of player][line break]";
	say "Weapon: [weapon object of player]   Snow: [location of Snow]   Sandra: [location of Sandra][line break]";
	say "Hyper Squirrel: [if Hyper Squirrel Girl is resolved]1[else]0[end if]  Needy Bunny: [if Needy Rabbit Girl is resolved]1[else]0[end if][line break]";
	say "COLEEN: Location: [location of Coleen]   Talk: [ColeenTalk]   Found: [ColeenFound]   Collared: [ColeenCollared]   Alpha: [ColeenAlpha]   Slut: [ColeenSlut]   Spray: [ColeenSpray][line break]";
	say "HP of Dr Mouse: [HP of doctor mouse]   Candy: [coonstatus]   featunlock: [featunlock]   Butterfly: [butterflymagic][line break]";
	say "Catnum: [catnum]   Mateable: [mateable]   gryphoncomforted: [gryphoncomforted]   shiftable: [shiftable]   Medea: [medeaget][line break]";
	say "MTP: [mtp]   HYG: [hyg]   NES: [nes]   MTRP: [mtrp]   Boristalk: [boristalk]   Borisquest: [borisquest]   Alex: [progress of alex][line break]";
	say "Angiehappy: [angiehappy]   Angietalk: [angietalk]   Deerconsent: [deerconsent]   Deerhappy: [deerhappy][line break]";
	say "Mattcollection: [mattcollection]   Orthas: [orthasstart][line break]";
	say "Fancy: [fancyquest]   HP of Sven: [HP of sven]  Lust of Sven: [lust of sven][line break]";
	say "SARAH: Slut: [SarahSlut]   Talk: [sarahtalk]   Pups: [SarahPups][line break]";
	say "VOIDED: 0   Alexbrunch: [alexbrunch]   Treasure found: [treasurefound]   Treasure map: [tmapfound][line break]";
	say "Sandra: [HP of Sandra]   Frank: [franksex]   Fang: [HP of Fang][line break]";

carry out Trixiecheck2:
	say "<Repetition of section>   Orthas: [orthasstart][line break]";
	say "Fancy: [fancyquest]   HP of Sven: [HP of sven]  Lust of Sven: [lust of sven][line break]";
	say "SARAH: Slut: [SarahSlut]   Talk: [sarahtalk]   Pups: [SarahPups][line break]";
	say "VOIDED: 0   Alexbrunch: [alexbrunch]   Treasure found: [treasurefound]   Treasure map: [tmapfound][line break]";
	say "Sandra: [HP of Sandra]   Frank: [franksex]   Fang: [HP of Fang]   <end repetition>[line break]";
	say "Libido of Fang: [libido of Fang]   Pigfed: [pigfed]   Pigfucked: [pigfucked][line break]";
	say "PETS:[line break]";
	say "Cute crab: [if cute crab is tamed]1[else]0[end if]   Exotic bird: [if exotic bird is tamed]1[else]0[end if]   Felinoid: [if Felinoid companion is tamed]1[else]0[end if][line break]";
	say "Bee girl: [if bee girl is tamed]1[else]0[end if]   House cat: [if house cat is tamed]1[else]0[end if]   Little fox: [if little fox is tamed]1[else]0[end if][line break]";
	say "Skunk kit: [if skunk kit is tamed]1[else]0[end if]   Helper dog: [if helper dog is tamed]1[else]0[end if]   Rachel: [mousecurse][line break]";
	say "Rachel: [mousecurse]     Elijah: [HP of Elijah]    Elijah interactions: [npcEint][line break]";
	say "Latex Husky Mode: [if latexhuskymode is true]ON[else]OFF[end if]     Parasite?: [if insectlarva is true]YES[else]NO[end if][line break]";
	say "Leonard: [HP of Leonard]     Solstice: [HP of Solstice]     Ronda: [HP of Ronda][line break]";
	say "Skunkbeast Lord: [if skunkbeaststatus is 1]YES[else]NO[end if]     Kitsune: [ktp][line break]";
	say "Diego: [if Diegochanged is 0]Male[else if Diegochanged is 1]Herm[else]Female[end if]     Eric: ???[line break]";

Story Skipper backup ends here.
