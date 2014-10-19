Version 211 of Story Skipper by Nuku Valente begins here.
[ Version 211 - More Alexandra and station survivors ]

The File of Trixsave  (owned by another project) is called "txsave".
The File of Trixsave2  (owned by another project) is called "txsave2".
The File of Trixsave3  (owned by another project) is called "txsave3".
The File of invsave  (owned by another project) is called "invsave".
trixsavetext1 is an indexed text that varies. trixsavetext1 is usually "no save file found".
trixsavetext2 is an indexed text that varies. trixsavetext2 is usually "no save file found".
trixsavetext3 is an indexed text that varies. trixsavetext3 is usually "no save file found".
invsavetext is an indexed text that varies. invsavetext is usually "no save file found".

To savetrix:
	 write "[trixsavetext1]" to the File of Trixsave;
	 write "[trixsavetext2]" to the File of Trixsave2;
	 write "[trixsavetext3]" to the File of Trixsave3;
	 write "Soda|1}" to the File of invsave;
	 repeat with x running from 1 to the number of rows in the table of game objects:
		choose row x in the table of game objects;
		if object entry is owned:
			let number be carried of object entry;
			append "[name entry]|[number]}" to the File of invsave;
	 

Trixie is a person. Trixie is in Grey Abbey Library.

The scent of trixie is "Trixie smells of broken universes and rewritten fate.  How anything can smell like that or how you can even know that smell disturbs you to your very core.".

The description of trixie is "[trixiedesc]".

to say trixiedesc:
	say "     Look, it's Trixie, the story fairy! She's about three inches tall, large for her particular breed. She has bright reddish-purple hair and smooth brown skin. Wielded in her right hand is a relatively large wand of old world oak with a great fancy bauble at the end that looks like a cutely renditioned skunk girl head, grinning at you no matter what angle you view it from. Trixie is well shaped, with, relative to the rest of her mass, B cup breasts and wide hips. Her feet are covered in shimmering gold sandals of sorts. Her chest is covered in a t-shirt that reads 'Let's skip to the good stuff!'.";
	say "     Trixie's got a button on her t-shirt that says 'Cheaters type [link]iwannacheat[end link]' on it, and a second one that says 'Check out the [link]artwork credits[end link]'  Hmmm.";
	say "     She's also found a ballcap on that says '[link]load game[end link] to activate your last save word.  Using [link]saveword[end link] will replace it with a [bold type]new[roman type] magic word.'  That's a lot to put on a ballcap that small, but for some reason you're able to read it all easily.";

The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me after [bold type]starting a new game[roman type] and [bold type]recite[roman type] the word back to me. I'll also save a copy of your most recent magic word.  To access that one, use [link]load game[end link] in this room. This will let you bend time and probability, returning you to the condition you were in when made the magic word... mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good!" }.

[
The conversation of trixie is { "Hello. I will teach you a magic word. To use it, just stand in front of me after starting a new game and [bold type]recite[roman type] the word back to me. This will let you bend time and probability, returning you to the condition you were in when you first said the words... Mostly. I will do my best, but my powers are not infinite. Also, I'm 'Out of Character', so you really don't see me. Confused yet? Good! Here's the magic word:[line break][line break][magic word][line break]" }.
]

To say magic word:
	if wrcursestatus is 5:
		wrcurserecede;	[puts player back to normal form and restores proper stats for saving]
	now trixsavetext1 is "[strength of player]}[dexterity of player]}[stamina of player]}[charisma of player]}[perception of player]}[intelligence of player]}[level of player]}[maxhp of player]}[humanity of player]}[score - 50]}[hp of doctor matt]}[bodyname of player]}[facename of player]}[skinname of player]}[tailname of player]}[cockname of player]}[SatisfiedTanuki]}[hospquest]}[cocks of player]}[breasts of player]}[cunts of player]}[breast size of player]}[cock length of player]}[cock width of player]}[cunt length of player]}[cunt width of player]}[weapon object of player]}[franksex]}[frankmalesex]}[if Hyper Squirrel Girl is resolved]1[otherwise]0[end if]}0}[location of coleen]}[coleentalk]}[coleenfound]}[coleencollared]}[coleenalpha]}[coleenslut]}[coleenspray]}[hp of doctor mouse]}[coonstatus]}[featunlock]}[butterflymagic]}[catnum]}[mateable]}[gryphoncomforted]}[shiftable]}[medeaget]}[mtp]}[hyg]}[nes]}[mtrp]}[boristalk]}[borisquest]}[progress of alex]}[angiehappy]}[angietalk]}[deerconsent]}[deerhappy]}[mattcollection]";
	now trixsavetext2 is "chantpartA}[hp of Orthas]}[fancyquest]}[hp of sven]}[lust of sven]}[sarahslut]}[sarahtalk]}[sarahpups]}0}[alexbrunch]}[treasurefound]}[tmapfound]}[hp of Sandra]}[libido of Frank]}[hp of Fang]}[libido of Fang]}[pigfed]}[pigfucked]}[if cute crab is tamed]1[otherwise]0[end if]}[if exotic bird is tamed]1[otherwise]0[end if]}[if Felinoid companion is tamed]1[otherwise]0[end if]}[hp of bee girl]}[if house cat is tamed]1[otherwise]0[end if]}[if little fox is tamed]1[otherwise]0[end if]}[if skunk kit is tamed]1[otherwise]0[end if]}[if helper dog is tamed]1[otherwise]0[end if]}[mousecurse]}[hp of Elijah]}[npcEint]}[if latexhuskymode is true]1[otherwise]0[end if]}[if insectlarva is true]1[otherwise]0[end if]}[hp of Leonard]}[hp of Solstice]}[hp of Ronda]}[hp of Athanasia]}[skunkbeaststatus]}[ktp]}[release number]}[tattoohunter]}[tatsave]}[piercesave]}[diegochanged]}[hp of Eric]}[hp of Christy]}[dragontype]}[dragonessfuck]}[hp of Doctor Medea]}[hp of Doctor Moffatt]}[hp of Lucy]}[thirst of david]}[lust of david]}[hp of david]}[hp of Adam]}[hp of Alexandra]}[hp of Larissa]}[hp of Sam]}[wrcursestatus]}[wrcurseNermine]}[hp of Doctor Utah]}[hp of Mike]}[hp of Xerxes]}[hp of Helen]}[libido of Helen]}[hp of Rex]}[hp of Karen]}[hp of François]}[libido of François]}[level of Alexandra]}[hp of Thomas]}[libido of Thomas]}[lust of Thomas]}[ThomasQuestVar]}[hp of rubber tigress]}[hp of Septus]}[lust of Xerxes]}[lust of Helen]}[hp of tristian]}[hp of Icarus]}[hp of Joanna]}[lust of Joanna]}[angiearoused]}[DBCaptureQuestVar]}[DemonBruteStatus]}[hp of Lilith]}[LilithKidCounter]}[hp of Felix]}[Libido of Felix]}[VikingRelationship]}[VikingKidCounter]}[MovingOrwell]}[hp of Jimmy]}[libido of David]}[hp of Amy]}[libido of Amy]}[SquadEncounters]}[thirst of Corbin]}[hp of Corbin]}[CorbinKidCounter]}[hp of Anthony]}[hp of Duke]}[thirst of Duke]}[hp of Zigor]}[thirst of Amy]";
	now trixsavetext3 is "chantpartB}[hp of Nadia]}[NadiaFertilityCounter]}[NadiaChickCounter]}[npcNadiaint]}[level of Amy]}[Xp of Amy]}[Dexterity of Amy]}[SvenAmySex]}[BrutusAmySex]}[lust of Zephias]}[hp of Ares]}[if hp of hayato is 30]20[otherwise][hp of Hayato][end if]}[hp of Tehuantl]}[hp of Carl]}[level of Carl]}[hp of Kristen]}[libido of Kristen]}[hp of Brooke]}[hp of Bubble]}[hp of Newt]}0}[piginitiation]}[hp of Gillian]}[hp of Stella]}[StellaNPCInt]}[OrcSlaverStatus]}[CellDoorStatus]}[xp of Onyx]}[hp of Val]}[thirst of Val]}[ValPregCounter]}[ValPregnancy]}[SlaveRaidEncounters]}[hp of Chris]}[hp of Vanessa]}[xp of Vanessa]}[hp of Meredith]}[level of Meredith]}[hp of Gwen]}[hp of Rane]}[thirst of Elijah]}[SpidertaurRelationship]}[CatgirlFucked]}[FionaFangStatus]}[FionaCarlStatus]}[hp of Gabriel]}[hp of Erica]}[Thirst of Erica]}[population of Police Station]}[infpop of Police Station]";
	say "[trixsavetext1][line break]";
	say "[trixsavetext2][line break]";
	say "[trixsavetext3][line break]";
	replace the text " " in trixsavetext1 with "`";
	replace the text " " in trixsavetext2 with "`";
	replace the text " " in trixsavetext3 with "`";
	say "[line break]'If you choose to recite it back, you'll need to recite each of the three parts on their own, one after the other, including the chantpartA part in the second and chantpartB in the third.  Don't ask me to explain why.  It's magic!' she says in a teasing tone with a big grin while waggling her fingers.  'Just be sure to copy and paste that somewhere so you can use it to restore.  If you can't seem to copy with your chosen player, try Ctrl-L to see if that will open a scrollback log.  And remember, you can also use [bold type]load game[roman type] to restore your most recent magic word.  Talking to me will make a new save word every time, so be careful not to overwrite your magic word until you're ready.";
[	say "Saved data:[line break][trixsavetext1][line break][trixsavetext2][line break]";	]
	savetrix;
	if wrcursestatus is 5:
		say "[line break]     Trixie waves her magic wand around and you flash between your normal form and your wereraptor form a few times so she can examine it before leaving you fully as a wereraptor once again.";
		wrcursesave;	[puts player back to complete wereraptor form]


To reciting2:
	choose row monster from table of random critters;
	say "One moment... processing...";
[	say "Current restoration string: [trixsavetext1][line break]";	]
	replace the text " " in trixsavetext1 with "`";
[	say "Altered restoration string: [trixsavetext1][line break]";	]
	let lev be the level of the player;
	repeat with z running from 1 to number of words in "[trixsavetext1]":
		let b be word number z in "[trixsavetext1]";
		replace the text "`" in b with " ";
		change the text of the player's command to b;
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
					now carried of nanite density monitor is 0;
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
						now carried of nanite density monitor is 1;
						now beach detector site is unresolved;
						now red light detector site is unresolved;
						now high rise detector site is unresolved;
						now park detector site is unresolved;
						now ndmlist is { "Beach", "Red Light District", "High Rise District", "Park" };
					if hp of doctor matt is 18:
						now beach detector site is resolved;
						now red light detector site is resolved;
						now high rise detector site is resolved;
						now park detector site is resolved;
						now ndmlist is { };
						increase freecred by 200;
						if hp of Larissa is 0, now hp of Larissa is 1;
					otherwise if hp of doctor matt is 100:
						remove orthas from play;
						now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
						now the initial appearance of Doctor Matt is "A small recorder labeled 'doctor matt' remains abandoned.";
			-- 12:	[Body infection]
[				say "Searching for body = [b].";	]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now monster is Y;
							now body of player is body entry;		
							now bodyname of player is name entry;
							attributeinfect;
							break;
			-- 13:	[Face infection]
[				say "Searching for face = [b].";	]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now face of player is face entry;		
							now facename of player is name entry;
							break;
			-- 14:	[Skin infection]
[				say "Searching for skin = [b].";	]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now skin of player is skin entry;		
							now skinname of player is name entry;
							break;
			-- 15:	[Tail infection]
[				say "Searching for tail = [b].";	]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now tail of player is tail entry;		
							now tailname of player is name entry;
							break;
			-- 16:	[Cock infection]
[				say "Searching for cock = [b].";	]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now cock of player is cock entry;		
							now cockname of player is name entry;
							break;
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
				repeat with y running through armaments:
					if the printed name of y matches the text b, case insensitively:
						if y is not owned, now carried of y is 1;
						now weapon object of player is Y;
						now weapon of player is weapon of Y;
						now weapon damage of player is weapon damage of Y;
						now weapon type of player is weapon type of Y;
						say "You ready your [Y].";
						break;
			-- 28:	[re-purposed: Frank M/F count]
				if the player's command matches "[number]":
					now franksex is the number understood;
			-- 29:	[re-purposed: Frank M/M count]
				if the player's command matches "[number]":
					now frankmalesex is the number understood;
					if frankmalesex is 0, now libido of Frank is 0;
					if franksex is 0 and frankmalesex is 0:
						now Comic Shop is unknown;
						now Mephitness is unresolved;
					otherwise:
						now Comic Shop is known;
						now Mephitness is resolved;
			-- 30:	[Snow]
				if the player's command matches "[number]":
					if the number understood is 1:
						now hyper squirrel girl is resolved;
						now Snow is in Grey Abbey Library;
					otherwise:
						now hyper squirrel girl is not resolved;
						remove Snow from play;
			-- 31:	[redundant - removed]
				now tempnum is 0;		[Duplicate removed]
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
			-- 45:	[Denise]
				if the player's command matches "[number]":
					now gryphoncomforted is the number understood;
					now lonely gryphoness is unresolved;
					now Gryphoness Nest is resolved;
					if gryphoncomforted is greater than 0:
						now lonely gryphoness is resolved;
						now Gryphoness Nest is unresolved;
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
					if AngieHappy > 0:
						move Angie to the Zoo Giftshop;
						now zoo entrance is known;
					if AngieHappy > 1:
						Now AngieTrapped is resolved;
					if AngieHappy is 2:
						increase carried of catnip by 1;
					if AngieHappy is 4 and "Angie's Mate" is not listed in feats of player:
						add "Angie's Mate" to feats of player;
			-- 56:	[Angie]
				if the player's command matches "[number]":
					now angietalk is the number understood;
			-- 57:	[Susan]
				if the player's command matches "[number]":
					now deerconsent is the number understood;
			-- 58:	[Susan]
				if the player's command matches "[number]":
					now deerhappy is the number understood;
					move Susan to dark basement;
					now unusual creature is resolved;
					if hp of doctor matt is 6:
						now unusual creature is unresolved;
						now deerconsent is 0;
						now deerhappy is 0;
					if hp of doctor matt is greater than 6:
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
[	say "One moment... processing stage 2...";	]
[	say "Current restoration string: [trixsavetext2][line break]";	]
	replace the text " " in trixsavetext2 with "`";
[	say "Altered restoration string: [trixsavetext2][line break]";	]
	repeat with z running from 1 to number of words in "[trixsavetext2]":
		let b be ( word number z in "[trixsavetext2]" );
		replace the text "`" in b with " ";
		replace the text "continuedchant" in b with "chantpartA";
		if "chantpartA" matches the text b:
			next;
		change the text of the player's command to b;
		let z2 be z + 58;
		if z2 is:
			-- 60:	[Orthas]
				if the player's command matches "[number]":
					now hp of Orthas is the number understood;
					if hp of Orthas >= 2:
						now the icon of Orthas is figure of Orthas_icon;
					otherwise:
						now the icon of Orthas is figure of pixel;
					if hp of Orthas is 5:
						now Orthas's House is unresolved;
					otherwise:
						now Orthas's House is resolved;
					if hp of Orthas is 6:
						now carried of footlocker is 1;
					otherwise:
						now carried of footlocker is 0;
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
					now lust of Sandra is turns;
					if hp of Sandra > 0:
						now Sandra is in the bunker;
						now needy rabbit girl is resolved;
						now rabbit den is known;
					otherwise:
						now Sandra is in Rabbit Den;
						now needy rabbit girl is not resolved;
						now rabbit den is unknown;
			-- 72:	[Frank - M/M top/bottom/switch]
				if the player's command matches "[number]":
					now libido of Frank is the number understood;
					if libido of Frank > 3, now libido of Frank is 3;		[***temporary fix]
					if frankmalesex is 0, now libido of Frank is 0;
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
					if libido of Fang is 2 and ( hp of Fang is 1 or hp of Fang is 2 ), now libido of Fang is 1;
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
						now Pig Pen is not fasttravel;
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
					now hp of bee girl is the number understood;
					if girl is not banned:
						now Smashed Hive is unresolved;
						now bee girl is not tamed;
						if hp of bee girl > 0 and hp of bee girl < 100:
							now bee girl is tamed;
						if hp of bee girl > 1:
							now Smashed Hive is resolved;
						if hp of bee girl >= 5:
							setmonster "Queen Bee";
							choose row monster from the table of random critters;
							now non-infectious entry is false;
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
					now Angel vs Demons is unresolved;
					now Burned-Out Chapel is unknown;
					if hp of Elijah is 1 or hp of Elijah is 2:
						now the icon of Elijah is Figure of Elijah_naked_icon;
					otherwise if hp of Elijah is 3:
						now the icon of Elijah is Figure of Elijah_virgin_icon;
					otherwise if hp of Elijah is 4:
						now the icon of Elijah is Figure of Elijah_good_icon;
					otherwise if hp of Elijah is 99:
						now the icon of Elijah is Figure of Elijah_evil_icon;
					if hp of Elijah > 0 and hp of Elijah < 99:
						now Angel vs Demons is resolved;
						now Burned-Out Chapel is known;
					if hp of Elijah > 0 and hp of Elijah < 100:
						move Elijah to Bunker;
					if hp of Elijah is 100:
						now Angel vs Demons is resolved;
						remove Elijah from play;
					if hp of Elijah is 2, now Sweet Surprise is unresolved;
					if hp of Elijah is 2 and furry is not banned, now Examination Room is unresolved;
			-- 87:	[Elijah's interactions]
				now npcEint is "[the player's command]";
				npcEint-Restore;
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
					now level of Hunting Prides is 8;
					now Hunting Prides is resolved;
					now PridePark is resolved;
					if hp of Leonard is 100, now hp of Leonard is 0;
					if hp of Leonard >= 6:
						now the icon of Leonard is the figure of LeonardViolin_icon;
					otherwise:
						now the icon of Leonard is the figure of pixel;
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
					if hp of Leonard is 6:
						now leonardtimer is turns;
					if hp of Leonard is 7:
						now libido of Leonard is 0;
					if hp of Leonard is 9:
						now leonardtimer is turns;
					if hp of Leonard >= 10:
						now Hunting Prides is unresolved;
					if hp of Leonard is 11:
						now level of Hunting Prides is 10;
					if hp of Leonard is 12 or hp of Leonard is 13:
						now level of Hunting Prides is 12;
					if hp of Leonard >= 14:
						now Hunting Prides is resolved;
						now level of Hunting Prides is 12;
					if hp of Leonard is 15, now hp of Leonard is 16;
					if hp of Leonard >= 16 and hp of Leonard <= 100:
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
							if "Herm Preferred" is listed in feats of player or "Always Cocky" is listed in feats of player:
								now sex entry is "Both";
								now cocks entry is 1;
								now cock length entry is 9;
								now cock width entry is 6;
						if bodyname of player is "Feline", attributeinfect;
						now PridePark is unresolved;
					if hp of Leonard is 20 and carried of bulletproof vest is 0, now carried of bulletproof vest is 1;
			-- 91:	[Solstice]
				if the player's command matches "[number]":
					remove Solstice from play;
					now carried of Crow Artifact is 0;
					now hp of Solstice is the number understood;
					now Adventurer is resolved;
					now Onyx Crow is resolved;
					if hp of Solstice is 1:
						now Onyx Crow is unresolved;
					if hp of Solstice is 2:
						now carried of Crow Artifact is 1;
						now Adventurer is unresolved;
					if hp of Solstice is 3 or hp of Solstice is 4:
						now lastfuck of Solstice is turns;
					if hp of Solstice > 4:
						move Solstice to Grey Abbey Library;
			-- 92:	[Ronda the Slut Rat]
				if the player's command matches "[number]":
					now carried of lizard juice is 0;
					now hp of Ronda is the number understood;
					now Art Collector is resolved;
					if hp of Ronda > 0 and hp of Ronda < 10:
						remove Ronda Mallrat from play;
						move Rod Mallrat to Mall FoodCourt;
						now the icon of Rod Mallrat is figure of Rod_icon;
						now the icon of Ronda is figure of pixel;
					if hp of Ronda is 0 or hp of Ronda is 10:
						move Ronda Mallrat to Mall Atrium;
						move Rod Mallrat to Mall FoodCourt;
						now the icon of Rod Mallrat is figure of Rod_icon;
						now the icon of Ronda is figure of pixel;
					if hp of Ronda is 100:
						move Ronda Mallrat to SlutRat Den;
						move Rod Mallrat to SlutRat Den;
						now the icon of Rod Mallrat is figure of pixel;
						now the icon of Ronda is figure of RondaSR_icon;
					if hp of Ronda > 0:
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Slut Rat":
								now area entry is "Mall";
								break;
					if hp of Ronda is 5:
						now carried of lizard juice is 1;
					if hp of Ronda is 6:
						now Art Collector is unresolved;
					if hp of Ronda >= 8:
						now SlutRat Den is known;	
			-- 93:	[Athanasia]
				if the player's command matches "[number]":
					now carried of phoenix egg is 0;
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
						now carried of phoenix egg is 1;
					if hp of Athanasia >= 3:
						now lastfuck of Athanasia is turns;
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
					move Eric to Sports Arena Lockerroom;
					if hp of Eric > 0:
						now Barricaded Lockerroom is resolved;
						now Sports Arena Lockerroom is known;
					if hp of Eric is 100:
						remove Eric from play;
					otherwise if hp of Eric is 200:
						remove Eric from play;
						move Erica to bunker;					
						now Dexterity of Erica is 5;
					otherwise if hp of Eric > 0:
						move Eric to Bunker;
						now thirst of Eric is 1;
					if hp of Eric is 21 or hp of Eric is 22:
						now thirst of Eric is 21;
					if hp of Eric is 31 or hp of Eric is 32:
						now thirst of Eric is 31;
					if hp of Eric is 11:
						now thirst of Eric is 11;
			-- 102:	[Christy the Stuck Dragoness]
				if the player's command matches "[number]":
					now hp of Christy is the number understood;
					now dragontype is 0;
					now lust of Christy is 0;
					now libido of Christy is 0;
					now thirst of Christy is 0;
					now dragoness is in Old Building;
					now Dragon Prey is resolved;
					if hp of Christy is 0:
						now Find Building is unresolved;
						now Another Ladder is unresolved;
						now Isolated Street is unknown;
						now Back Alley is unknown;
						now NoIntroduction is 0;
					otherwise if hp of Christy > 0:
						now Find Building is resolved;
						now Another Ladder is resolved;
						now Isolated Street is known;
						now Back Alley is known;
						now NoIntroduction is 1;
					if hp of Christy >= 2:
						remove dragoness from play;
					if hp of Christy is 90:
						now Dragon Prey is unresolved;
					if hp of Christy >= 90:
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
					now hp of Doctor Medea is the number understood;
					if hp of Doctor medea > 6, now hp of Doctor Medea is 0;	[reset for save bug]
					if hp of Doctor Medea > 0:
						now Pediatrics Lobby is known;
					if hp of Doctor Medea is 3:
						now Obstetrics Department is unresolved;
					otherwise:
						now Obstetrics Department is resolved;
			-- 106:	[Dr. Moffatt]
				if the player's command matches "[number]":
					now hp of Doctor Moffatt is the number understood;
					if hp of Doctor Moffatt is 99 or hp of Doctor Moffatt is 100:
						now hp of Doctor Moffatt is 0;
					if guy is banned or girl is banned or hermaphrodite is banned or furry is banned:
						now Psych Department is unknown;
						now Another Doctor is resolved;
						now hp of Doctor Moffatt is 100;
					otherwise if hp of Doctor Moffatt is 0:
						now Psych Department is unknown;
						now Another Doctor is unresolved;
					otherwise if hp of Doctor Moffatt > 0:
						now Psych Department is known;
						now Another Doctor is resolved;
						now hospnav is 1;
						now lastfuck of Doctor Moffatt is turns;
						now lust of Doctor Moffatt is 0;
			-- 107:	[Lucy the Mall Rat]
				if the player's command matches "[number]":
					now hp of Lucy is the number understood;
					if hp of Lucy > 0:
						move Lucy to Mall Atrium;
					otherwise:
						remove Lucy from play;
			-- 108:	[David's thirst]
				if the player's command matches "[number]":
					now thirst of david is the number understood;
			-- 109:	[David's lust]
				if the player's command matches "[number]":
					now lust of david is the number understood;
			-- 110:	[David's hp]
				if the player's command matches "[number]":
					now hp of David is the number understood;
					if hp of David is 0 and ( guy is not banned and hellspawn is not banned ):
						remove David from play;
						now Captured Demon is unresolved;
						now Thankful Soldier is resolved;
					otherwise:
						now Captured Demon is resolved;
						now Thankful Soldier is resolved;
					if hp of David > 0 and hp of David < 4, move David to Parade Ground;
					if hp of David is 4:
						move David to Bunker;
						now DavidBunkerEntry is turns;
			-- 111:	[Camp Bravo / Adam]
				if the player's command matches "[number]":
					now hp of Adam is the number understood;
					now Trickster's Masterpiece is resolved;
					now Back at the Camp is resolved;
					now Camp Bravo Entrance is unknown;
					now CampBravoWomenAllowed is 0;
					now ElainePregnant is 0;
					now thirst of Elaine is 0;
					remove Adam from play;
					if guy is banned or furry is banned:
						now Red Light Requisition is resolved;
						now Trickster's Masterpiece is resolved;
					otherwise if hp of Adam is 0:
						now Trickster's Masterpiece is unresolved;
					otherwise if hp of Adam is 1:
						now Trickster's Masterpiece is unresolved;
					otherwise if hp of Adam is 2:
						now Back at the Camp is unresolved;
					otherwise if hp of Adam is 3:
						now Camp Bravo Entrance is known;
					otherwise if hp of Adam is 4:
						now Camp Bravo Entrance is known;
						now CampBravoWomenAllowed is 1;
						now ElainePregnant is 48;
					otherwise if hp of Adam is 5:
						now thirst of Elaine is 3;
						now Camp Bravo Entrance is known;
						now CampBravoWomenAllowed is 1;
						move Adam to Quartermaster's Tent;
			-- 112:	[Doberman Cop / Alexandra]
				if the player's command matches "[number]":
					now hp of Alexandra is the number understood;
					now lust of Alexandra is 0;
					now libido of Alexandra is 0;
					move Alexandra to Police Station;
					if hp of Alexandra is 59 or hp of Alexandra is 60:
						now hp of Alexandra is 58;
						say "[special-style-2]NOTICE:[roman type] Your completion of the Automatons 2 task has been undone due to task order revisions.";
					if hp of Alexandra > 0:
						[puts Doberman as lead monster in case of impregnation]
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Doberman":
								now monster is y;
								now area entry is "nowhere";
								break;
						if hp of Alexandra is 100:
							now Police Station is unknown;
						otherwise if hp of Alexandra >= 50:
							now Police Station is known;
						otherwise:
							now Police Station is unknown;
							move Alexandra to Grey Abbey Library;
						if hp of Alexandra >= 65 and hp of Alexandra <= 100:
							now Master Mind is in Cell Block A;
					if hp of Alexandra is 3 or hp of Alexandra is 5:
						now lust of Alexandra is 1;	[reset to start of pregnancy]
					if hp of Alexandra is 4 or hp of Alexandra is 5:
						now libido of Alexandra is a random number between 2 and 4;	[minimum children restored]
			-- 113:	[Larissa (Multiform NPC)]
				if the player's command matches "[number]":
					now hp of Larissa is the number understood;
				if hp of Larissa > 3, now hp of Larissa is 3;
				if hp of Larissa > 1, nanitecoll_discount;
				follow the larissa_tfoption rule;
			-- 114:	[Sam (Dual-taur NPC)]
				if the player's command matches "[number]":
					now hp of Sam is the number understood;
					if hp of Sam is 0:
						now Another Researcher is unresolved;
						now Mini-Lab is unknown;
					otherwise:
						now Another Researcher is resolved;
						now Mini-Lab is known;
					if hp of Sam <= 4:
						now Sam is in Mini-Lab;
					otherwise if hp of Sam < 70:
						now Sam is in Bunker;
					otherwise:
						remove Sam from play;
					if hp of Sam is 16 or hp of Sam is 98, dragontaur_active;
					if hp of Sam is 36 or hp of Sam is 99, vixentaur_active;
					if hp of Sam is 55 or hp of Sam is 56, tripletaur_active;
			-- 115:	[Wereraptor curse]
				if the player's command matches "[number]":
					now wrcursestatus is the number understood;
			-- 116:	[Wereraptor cure quest]
				if the player's command matches "[number]":
					now wrcurseNermine is the number understood;
			-- 117:	[Dr. Utah]
				if the player's command matches "[number]":
					now hp of Doctor Utah is the number understood;
					now Paleontology Professor is unresolved;
					now utahmet is false;
					now Greenhouse is resolved;
					now carried of wolfsbane is 0;
					now carried of silver knife is 0;
					now Dinosaur Skeleton is resolved;
					now Paleontology Office is unknown;
					if girl is banned and guy is banned:
						now wrcursestatus is 0;
						now Paleontology Professor is resolved;
						now hp of Doctor Utah is 0;
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
						now hp of Doctor Utah is 0;
						now libido of Doctor Utah is 0;
						now lust of Doctor Utah is 0;
					if wrcurseNermine is 12 or wrcurseNermine is 14:
						now Paleontology Office is known;
						if hp of Doctor Utah > 1:
							if girl is not banned:
								if hp of Doctor Utah is odd:
									now lust of Doctor Utah is 1;
								otherwise:
									now lust of Doctor Utah is 0;
								let iterations be hp of Doctor Utah / 2;
								now libido of Doctor Utah is 0;
								repeat with itx running from 1 to iterations:
									increase libido of Doctor Utah by a random number between 2 and 4;
							otherwise:
								let iterations be 0;	[do nothing action]
					if weapon object of player is silver knife and silver knife is not owned, now weapon object of player is journal;
			-- 118:	[Mike]
				if the player's command matches "[number]":
					now hp of Mike is the number understood;
					if hp of Mike is 100 or guy is banned or furry is banned:	[Mike lost]
						now Mike's Home is unknown;
						now Dog Walking is resolved;
					otherwise if hp of Mike is 99:					[Mike enemy]
						now Mike's Home is unknown;
						now Dog Walking is resolved;
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Stag":
								now monster is y;
								now area entry is "Warehouse";
								now non-infectious entry is false;
								break;
					otherwise if hp of Mike > 2 and hp of Mike < 98:
						now Dog Walking is resolved;
						now Mike's Home is known;
					otherwise:
						now Dog Walking is not resolved;
						now Mike's Home is unknown;
			-- 119:	[Xerxes]
				if the player's command matches "[number]":
					now hp of Xerxes is the number understood;
					if hp of Xerxes is 0, remove Xerxes from play;
					if hp of Xerxes > 0, move Xerxes to Grey Abbey Library;
			-- 120:	[Helen]
				if the player's command matches "[number]":
					now hp of Helen is the number understood;
			-- 121:	[Helen]
				if the player's command matches "[number]":
					now libido of Helen is the number understood;
					now HelenPregnant is 0;
					if hp of Helen is 0:
						remove Helen from play;
						now thirst of Helen is 0;
						now libido of Helen is 0;
					if hp of Helen > 0:
						move Helen to Grey Abbey Library;
						if libido of Helen > 0:
							now thirst of Helen is 1;
			-- 122:	[Rex]
				if the player's command matches "[number]":
					now hp of Rex is the number understood;
			-- 123:	[Karen]
				if the player's command matches "[number]":
					now hp of Karen is the number understood;
					now carried of Dog Bone is 0;
					now ForcedAdoption is unresolved;
					now Rex's Place is unknown;
					if guy is banned or girl is banned or furry is banned:
						now hp of Rex is 0;
						now hp of Karen is 0;
						now ForcedAdoption is resolved;
					if hp of Rex > 0:
						now Entrance to the High Rise District is known;
					if hp of Rex > 0 and hp of Rex < 5:
						now carried of Dog Bone is 1;
						now ForcedAdoption is unresolved;
					if hp of Rex > 4:
						now carried of Dog Bone is 0;
						now Rex's Place is known;
						now ForcedAdoption is resolved;
					if hp of Rex is 50:
						now Rex's Place is unknown;
					if hp of Karen >= 5:
						now Retriever Girl is tamed;
					otherwise:
						now Retriever Girl is not tamed;
			-- 124:	[François]
				if the player's command matches "[number]":
					now hp of François is the number understood;
					now Gourmet Treats is unresolved;
					if girl is banned or guy is banned or furry is banned:
						now Gourmet Treats is resolved;
						now hp of François is 0;
					if hp of François is 0:
						now Bone-Appetit is unknown;
					otherwise:
						now Gourmet Treats is resolved;
						now Bone-Appetit is known;
						say "[FrançoisListCompile]";
			-- 125:	[François]
				if the player's command matches "[number]":
					now libido of François is the number understood;		[placeholder for second part to come]
			-- 126:	[Alexandra + Fang]
				if the player's command matches "[number]":
					now level of Alexandra is the number understood;
					now xp of Alexandra is 0;
					if hp of Alexandra is 0 or hp of Alexandra >= 50 or hp of Alexandra is 100:
						now level of Alexandra is 0;
					if level of Alexandra is 0:
						remove "Top Dog" from feats of player, if present;
						remove "Cuckold" from feats of player, if present;
					otherwise if level of Alexandra is 1:
						remove "Cuckold" from feats of player, if present;
						add "Top Dog" to feats of player, if absent;
					otherwise if level of Alexandra is 2:
						add "Cuckold" to feats of player, if absent;
						remove "Top Dog" from feats of player, if present;
			-- 127: [Thomas HP]
				if the player's command matches "[number]":
					now hp of Thomas is the number understood;
					if hp of Thomas is 0 and guy is not banned or hermaphrodite is not banned:
						now Centaur Gangbang is unresolved;
					if hp of Thomas > 0:
						now Centaur Gangbang is resolved;
						move Thomas to Dry Plains;
					if hp of Thomas is 0 or hp of Thomas is 100:
						remove Thomas from play;
			-- 128: [Thomas Libido]
				if the player's command matches "[number]":
					now Libido of Thomas is the number understood;
					now ThomasSaved is turns;
					now SandySaved is turns;
					now FelixSaved is turns;	[for Felix stalker quest]
					if hp of Thomas is 0, now libido of Thomas is 0;
			-- 129: [Thomas Lust]
				if the player's command matches "[number]":
					now Lust of Thomas is the number understood;
					if hp of Thomas is 0, now lust of Thomas is 0;
			-- 130: [Thomas Quest]
				if the player's command matches "[number]":
					now ThomasQuestVar is the number understood;
					if hp of Thomas is 0, now ThomasQuestVar is 0;
			-- 131: [Artemis]
				if the player's command matches "[number]":
					now hp of rubber tigress is the number understood;
					now Poor Kitty is unresolved;
					if girl is banned or furry is banned:
						now hp of rubber tigress is 0;
						now Poor Kitty is resolved;
					if hp of rubber tigress >= 2:
						now Poor Kitty is resolved;
					if hp of rubber tigress >= 3:
						now rubber tigress is tamed;
						now libido of rubber tigress is 30;
						now carried of cup stack is 1;
					otherwise:
						if companion of player is rubber tigress, now companion of player is nullpet;
						now rubber tigress is not tamed;
						now carried of cup stack is 0;
					if hp of rubber tigress is 9, now hp of rubber tigress is 8;
					if hp of rubber tigress is 11 or hp of rubber tigress is 12:
						now hp of rubber tigress is 10;
						say "     There is a wet, popping sound as Artemis's sex toys detach themselves, ready to be installed again.";
					now lust of rubber tigress is 0;
					now thirst of rubber tigress is 0;
					now lisaartemiscount1 is 0;
					now lisaartemiscount2 is 0;
			-- 132: [Septus/Football Wolfman]
				if the player's command matches "[number]":
					now hp of Septus is the number understood;
					now Wolfman Lair is unknown;
					now Entrance to the Lair is resolved;
					if guy is banned or furry is banned:
						let tt be 0;
					otherwise:
						if hp of Septus is 4:
							now Entrance to the Lair is unresolved;
						if hp of Septus > 4 and hp of Septus < 99:
							now Wolfman Lair is known;
						if hp of Septus is 7 or hp of Septus is 99:
							setmonster "Football Wolfman";
							choose row monster from the table of random critters;
							now area entry is "nowhere";
			-- 133: [Awesome Xerxes]
				if the player's command matches "[number]":
					now lust of Xerxes is the number understood;
					if hp of Xerxes is 0, now lust of Xerxes is 0;
			-- 134: [Awesomer Helen]
				if the player's command matches "[number]":
					now lust of Helen is the number understood;
					if hp of Helen is 0, now lust of Helen is 0;
			-- 135: [Tristian]
				if the player's command matches "[number]":
					now hp of Tristian is the number understood;
					now Tristbrother is resolved;
					remove Lance from play;
					if hp of Tristian is 8 and guy is not banned and furry is not banned and hermaphrodite is not banned:
						now Tristbrother is unresolved;
					otherwise if hp of Tristian is 8:
						now hp of Tristian is 7;
					if hp of Tristian is 10 or hp of Tristian is 12, now hp of Tristian is 7;
					if hp of Tristian is 11:
						move Lance to PALOMINO;
			-- 136: [Icarus/Blue Chaffinch]
				if the player's command matches "[number]":
					now hp of Icarus is the number understood;
					if hp of Icarus > 0:
						if guy is banned or furry is banned:
							now hp of Icarus is 0;
						otherwise:
							setmonster "Blue Chaffinch";
							choose row monster from the table of random critters;
							now area entry is "nowhere";
							now Icarus is in Grey Abbey Library;
					if hp of Icarus is 5 or hp of Icarus is 6:
						now hp of Icarus is 4;	[dialed back for sex]
					if hp of Icarus is 7:
						remove Icarus from play;
						now ttIcarus is turns;
						now tti_scene is 0;
					if hp of Icarus is 9:
						now hp of Icarus is 8;	[Icarus waiting for more]
			-- 137: [hp of Joanna]
				if the player's command matches "[number]":
					now hp of Joanna is the number understood;
					move Joanna to Flower Garden;
					now joannatalk is 0;
					now joannaharoldtalk is 0;
					now joannaoffernum is 0;
					if hermaphrodite is banned:
						now hp of Joanna is 0;
					if hp of Joanna > 0 and hp of Joanna < 90:
						now Overrun Garden is resolved;
						now joannaharoldtalk is 1;
						now Flower Garden is known;
					if hp of Joanna > 1 and hp of Joanna < 90:
						now joannatalk is 1;
					if hp of Joanna is 6:
						now hp of Joanna is 5;
					if hp of Joanna >= 90:
						now PALOMINO is known;
			-- 138: [lust of Joanna]
				if the player's command matches "[number]":
					now lust of Joanna is the number understood;
					if hp of Joanna <= 4 or hp of Joanna >= 90:
						now lust of Joanna is 0;
					if hp of Joanna >= 7 and hp of Joanna < 90:
						if lust of Joanna < 3, now lust of Joanna is 3;
						now plantdefeat is 1;
			-- 139: [Angie]
				if the player's command matches "[number]":
					now angiearoused is the number understood;
					if AngieAroused is 50:
						now FindingMidnight is resolved;
						move Midnight to Zoo Giftshop;
			-- 140:	[demon brute pet]
				if the player's command matches "[number]":
					now DBCaptureQuestVar is the number understood;
					if DBCaptureQuestVar > 4 and DBCaptureQuestVar < 99:
						now demon brute is tamed;
					otherwise:
						now demon brute is not tamed;
					if DBCaptureQuestVar is 5:
						choose blank row from Table of confession entries;
						now title entry is "Ask about the possibility of freeing a demon of his inner evil";
						now description entry is "";
						now toggle entry is demoncleansing rule;
					if DBCaptureQuestVar > 5:
						now the icon of demon brute is Figure of BrutusGood_icon;						
			-- 141:	[demon brute pet - gender]
				if the player's command matches "[number]":
					now DemonBruteStatus is the number understood;
			-- 142:	[Lilith - hp]
				if the player's command matches "[number]":
					now hp of Lilith is the number understood;
					if hp of Lilith > 0:
						now Burned-Out Chapel is known;
			-- 143:	[Lilith - incubus offspring]
				if the player's command matches "[number]":
					now LilithKidCounter is the number understood;
			-- 144:	[Felix - hp]
				if the player's command matches "[number]":
					now hp of Felix is the number understood;
					if hp of Felix > 0 and hp of Felix < 100:
						move Felix to Dry Plains;
					otherwise:
						remove Felix from play;
					if hp of Felix is 2:
						move Andre to Dry Plains;
					otherwise:
						remove Andre from play;
			-- 145:	[Felix - libido]
				if the player's command matches "[number]":
					now libido of Felix is the number understood;
			-- 146:	[relationship progress with Sonya the Viking]
				if the player's command matches "[number]":
					now VikingRelationship is the number understood;
					if VikingRelationship is 20:
						now Viking Ship is known;
					otherwise:
						now Viking Ship is not known;
			-- 147:	[number of kids with Sonya the Viking]
				if the player's command matches "[number]":
					now VikingKidCounter is the number understood;
			-- 148:	[MovingOrwell - mini quest var for fucking Orwell]
				if the player's command matches "[number]":
					now MovingOrwell is the number understood;
			-- 149:	[hp of Jimmy]
				if the player's command matches "[number]":
					now hp of Jimmy is the number understood;
					if guy is banned or hp of Jimmy is 0:
						now Automaton Activity is resolved;
						remove Jimmy from play;
					otherwise if hp of Jimmy > 0 and hp of Jimmy < 3:
						now Approaching the Capitol Building is known;
						now Government Assistance is resolved;
						now Automaton Activity is unresolved;
						remove Jimmy from play;
					otherwise if hp of Jimmy >= 3:
						now Approaching the Capitol Building is known;
						now Government Assistance is resolved;
						now Automaton Activity is resolved;
						move Jimmy to Police Lockerroom;
			-- 150:	[David - libido (interaction with Brutus)]
				if the player's command matches "[number]":
					now libido of David is the number understood;
			-- 151: [hp of Amy]
				if the player's command matches "[number]":
					now hp of Amy is the number understood;
					if hp of Amy > 0 and hp of Amy < 90:
						move Amy to Grey Abbey Library;
			-- 152: [libido of Amy - puppy counter]
				if the player's command matches "[number]":
					now libido of Amy is the number understood;
			-- 153: [SquadEncounters - progress variable for the Soldier Squad chain event]
				if the player's command matches "[number]":
					now SquadEncounters is the number understood;
					if SquadEncounters is 6:
						now Soldier Squad is resolved;
					otherwise:
						now Soldier Squad is not resolved;
			-- 154: [thirst of Corbin - location]
				if the player's command matches "[number]":
					now thirst of Corbin is the number understood;
					if thirst of Corbin is 0:
						remove Corbin from play;
						now Cow Hunting is unresolved;
						now McDermott Farm Entrance is not known;
					otherwise:
						now Cow Hunting is resolved;
						now McDermott Farm Entrance is known;
						if thirst of Corbin is 1:
							move Corbin to Worker Barracks;
						otherwise if thirst of Corbin is 2:
							move Corbin to Milking Shed;
			-- 155: [hp of Corbin]
				if the player's command matches "[number]":
					now hp of Corbin is the number understood;
					if hp of Corbin is 100:
						remove Corbin from play;
						setmonster "Cowboy Cuntboy";
						choose row monster from the table of random critters;
						now area entry is "Dry Plains";
					otherwise:
						setmonster "Cowboy Cuntboy";
						choose row monster from the table of random critters;
						now area entry is "Nowhere";
			-- 156: [CorbinKidCounter]
				if the player's command matches "[number]":
					now CorbinKidCounter is the number understood;
			-- 157: [hp of Anthony]
				if the player's command matches "[number]":
					now hp of Anthony is the number understood;
					if hp of Anthony > 3:
						now Missing Cow is resolved;
						move Wendy to McDermott Barn;
					otherwise:
						now Missing Cow is unresolved;
						remove Wendy from play;
			-- 158: [hp of Duke]
				if the player's command matches "[number]":
					now hp of Duke is the number understood;
					if hp of Duke > 9:
						move Shawn to Sheep Meadow SE;
			-- 159: [thirst of Duke]
				if the player's command matches "[number]":
					now thirst of Duke is the number understood;
					if thirst of Duke is 0:
						remove Duke from play;
					otherwise:
						if thirst of Duke is 1:
							move Duke to Sheep Meadow SW;
						otherwise if thirst of Duke is 2:
							move Duke to Sheep Meadow SE;
			-- 160: [hp of Zigor]
				if the player's command matches "[number]":
					now hp of Zigor is the number understood;
					if hp of Zigor > 0:
						now Cuero Lobo is known;
						now Leather Wolves is resolved;
					otherwise:
						now Cuero Lobo is unknown;
						if guy is not banned and girl is not banned and furry is not banned:
							now Leather Wolves is unresolved;
					if hp of Zigor >= 8:
						if "Twisted Capacity" is not listed in feats of player, add "Twisted Capacity" to feats of player;
			-- 161: [thirst of Amy]
				if the player's command matches "[number]":
					now thirst of Amy is the number understood;
[	say "One moment... processing stage 3...";	]
[	say "Current restoration string: [trixsavetext3][line break]";	]
	replace the text " " in trixsavetext3 with "`";
[	say "Altered restoration string: [trixsavetext3][line break]";	]
	repeat with z running from 1 to number of words in "[trixsavetext3]":
		let b be ( word number z in "[trixsavetext3]" );
		replace the text "`" in b with " ";
		if "chantpartB" matches the text b:
			next;
		change the text of the player's command to b;
		let z3 be z + 160;
		if z3 is:
			-- 162:	[hp of Nadia]
				if the player's command matches "[number]":
					now hp of Nadia is the number understood;
					if hp of Nadia > 0:
						now Bird Troubles is resolved;
					if hp of Nadia > 0 and hp of Nadia < 99:
						move Nadia to Grey Abbey 2F;
					if hp of Nadia is 5:
						increase carried of feathered cloak by 1;
			-- 163: [NadiaFertilityCounter]
				if the player's command matches "[number]":
					now NadiaFertilityCounter is the number understood;
					say "[NadiaDescriptionUpdate]";
			-- 164: [NadiaChickCounter]
				if the player's command matches "[number]":
					now NadiaChickCounter is the number understood;
			-- 165:	[Nadia's interactions]
				now npcNadiaint is "[the player's command]";
				npcNadiaint-Restore;
			-- 166: [level of Amy]
				if the player's command matches "[number]":
					now level of Amy is the number understood;
			-- 167: [Xp of Amy]
				if the player's command matches "[number]":
					now Xp of Amy is the number understood;
			-- 168: [Dexterity of Amy]
				if the player's command matches "[number]":
					now Dexterity of Amy is the number understood;
			-- 169: [SvenAmySex]
				if the player's command matches "[number]":
					now SvenAmySex is the number understood;
			-- 170: [BrutusAmySex]
				if the player's command matches "[number]":
					now BrutusAmySex is the number understood;
			-- 171: [lust of Zephias]
				if the player's command matches "[number]":
					now lust of Zephias is the number understood;
			-- 172: [hp of Ares]
				if the player's command matches "[number]":
					now hp of Ares is the number understood;
					if hp of Ares > 0:
						move Ares to Dog Kennels;
					otherwise:
						remove Ares from play;
			-- 173: [hp of Hayato]
				if the player's command matches "[number]":
					now hp of Hayato is the number understood;
					if hp of Hayato > 15:
						move Hayato to Grey Abbey 2F;
					otherwise:
						move Hayato to Disused Garage;
					if hp of Hayato > 5:
						now Garage Demon is resolved;
					if hp of Hayato > 10 and hp of Hayato < 14:
						now Noh Mask is unresolved;
					otherwise:
						now Noh Mask is resolved;
					if hp of Hayato >= 90:
						remove Hayato from play;
					if hp of Hayato > 15:
						unleashredoni;
					if hp of Hayato is 19:
						now Oni Lair is unresolved;
					otherwise:
						now Oni Lair is resolved;
			-- 174: [hp of Tehuantl]
				if the player's command matches "[number]":
					now hp of Tehuantl is the number understood;
					if hp of Tehuantl > 9 and hp of Tehuantl < 255:
						move Tehuantl to Grey Abbey 2F;
						setmonster "Jaguar Warrior";
						choose row monster from the table of random critters;
						now area entry is "nowhere";
						now TehuantlTimer is turns;						
					otherwise:
						remove Tehuantl from play;						
						setmonster "Jaguar Warrior";
						choose row monster from the table of random critters;
						now area entry is "Museum";
			-- 175: [hp of Carl]
				if the player's command matches "[number]":
					now hp of Carl is the number understood;
					if hp of Carl > 1 and hp of Carl < 50:
						move Carl to Grey Abbey 2F;
						now CarlLibraryEntry is turns + 1;
					otherwise:
						remove Carl from play;
			-- 176: [level of Carl]
				if the player's command matches "[number]":
					now level of Carl is the number understood;								
			-- 177: [hp of Kristen]
				if the player's command matches "[number]":
					now hp of Kristen is the number understood;
					if hp of Kristen > 0 or girl is banned or furry is banned:
						now FindingKristen is resolved;
					otherwise:
						now FindingKristen is unresolved;
						now hp of Kristen is 0;
					if hp of Kristen > 1, now Kristen's Hideout is known;
					if hp of Kristen is 10:
						now kristenmsg3 is true;
						now carried of Janice's blouse is 1;
					otherwise if hp of Kristen > 10:
						now kristenmsg3 is true;
						now carried of Janice's blouse is 0;
					otherwise:
						now kristenmsg3 is false;
						now carried of Janice's blouse is 0;
			-- 178: [libido of Kristen]
				if the player's command matches "[number]":
					now libido of Kristen is the number understood;
					if hp of Kristen < 12, now libido of Kristen is 0;
			-- 179: [hp of Brooke]
				if the player's command matches "[number]":
					now hp of Brooke is the number understood;
					if hp of Brooke > 0:
						now Palomino is known;
			-- 180: [hp of Bubble - Bouncy Castle / Bubble]
				if the player's command matches "[number]":
					now hp of Bubble is the number understood;
					if hp of Bubble > 0 or girl is banned or furry is banned:
						now Snared Vixen is resolved;
					otherwise:
						now Snared Vixen is unresolved;
					if hp of Bubble is 1 or hp of Bubble is 2:
						now Beach Plaza is known;
						now Bouncy Castle is known;
						now vixcountdown is 29;
					otherwise:
						now Bouncy Castle is unknown;
					if hp of Bubble > 3 and hp of Bubble < 99:
						move Bubble to Grey Abbey 2F;
			-- 181:	[hp of Newt]
				if the player's command matches "[number]":
					now hp of Newt is the number understood;
					if hp of Athanasia < 11, now hp of Newt is 0;
					if hp of Newt >= 4:
						move Newt to Volcanic Cave;
			-- 182:	[Megakitty]			[temporarily closed for diagnosis]
				if the player's command matches "[number]":
					now tempnum is 0;	[do-nothing command]
[					if the number understood is 1 and girl is not banned and furry is not banned:
						setmonster "Megakitty";
						choose row monster from the table of random critters;
						if name entry is "Megakitty":
							now MKunleashed is true;
							now area entry is "Midway";		]
			-- 183:	[Phi Iota Gamma]
				if the player's command matches "[number]":
					now piginitiation is the number understood;
					if piginitiation > 0:
						now Frat House is resolved;
						now Phi Iota Gamma is known;
			-- 184:	[Down Under Pub / Gillian]
				if the player's command matches "[number]":
					now hp of Gillian is the number understood;
					if girl is banned or guy is banned or hermaphrodite is banned or furry is banned:
						now hp of Gillian is 0;
						now Aussie Pub is resolved;
					otherwise if hp of Gillian > 0:
						now Aussie Pub is resolved;
					otherwise:
						now Aussie Pub is unresolved;
					if hp of Gillian >= 4:
						now Gillian's Flat is known;
					otherwise:
						now Gillian's Flat is unknown;
			-- 185:	[hp of Stella]
				if the player's command matches "[number]":
					now hp of Stella is the number understood;
					if hp of Stella >= 2:
						move Stella to Bunker;
			-- 186:	[Stella threesome code - placeholder]
				now StellaNPCInt is "AAAAAAAAAAAA";	[do nothing]
				let xstella be 0;	[do nothing]
			-- 187: [OrcSlaverStatus]
				if the player's command matches "[number]":
					now OrcSlaverStatus is the number understood;
					if OrcSlaverStatus is 0:
						now Orc Lair Side Entrance is not known;
					otherwise:					
						now Orc Lair Side Entrance is known;
						now OrcSlaverCaptureTime is turns;
			-- 188: [CellDoorStatus - Orc Lair]
				if the player's command matches "[number]":
					now CellDoorStatus is the number understood;
					if CellDoorStatus is 1 or CellDoorStatus is 3:
						now the Cell Door 1 is unlocked;
					if CellDoorStatus is 2 or CellDoorStatus is 3:
						now the Cell Door 2 is unlocked;			
			-- 189: [Onyx]
				if the player's command matches "[number]":
					now xp of Onyx is the number understood;
					if xp of Onyx >= 6 and xp of Onyx <= 29:
						move Onyx to Grey Abbey Library;
					otherwise if xp of Onyx >= 30 and xp of Onyx <= 49:
						move Onyx to Palomino;
					otherwise:
						move Onyx to Holding Pens;
					if xp of Onyx is 1:
						now Equineguardpost is unresolved;
					otherwise:
						now Equineguardpost is resolved;
					if xp of Onyx is 4:
						now Stablestoreroom is unresolved;
					otherwise:
						now Stablestoreroom is resolved;
					if xp of Onyx is 100, now xp of Onyx is 0;
			-- 190: [hp of Val]
				if the player's command matches "[number]":
					now hp of Val is the number understood;
			-- 191: [thirst of Val]
				if the player's command matches "[number]":
					now thirst of Val is the number understood;
			-- 192: [ValPregCounter]
				if the player's command matches "[number]":
					now ValPregCounter is the number understood;
			-- 193: [ValPregnancy]
				if the player's command matches "[number]":
					now ValPregnancy is the number understood;					
			-- 194: [SlaveRaidEncounters]
				if the player's command matches "[number]":
					now SlaveRaidEncounters is the number understood;
					if OrcSlaverStatus > 0 and SlaveRaidEncounters is 0: [security clause for those who load an old saveword]
						now SlaveRaidEncounters is 2; [enslaved]
						now ValPregnancy is 48; [knocked up]
						now thirst of Val is 1;					[...by an orc]
					if SlaveRaidEncounters < 2:
						remove Val from play;
					otherwise:
						move Val to Slave Cell 1;
			-- 195: [hp of Chris]
				if the player's command matches "[number]":
					now hp of Chris is the number understood;
					if hp of Chris is 1:
						move Chris to Grey Abbey 2F;
					otherwise:
						remove Chris from play;
			-- 196: [hp of Vanessa - status]
				if the player's command matches "[number]":
					now hp of Vanessa is the number understood;
					now Paratrooper is resolved;
					if hp of Vanessa is 0:
						remove Vanessa from play;
						if girl is not banned and mtp >= 3, now Paratrooper is unresolved;
					otherwise if hp of Vanessa >= 50:
						remove Vanessa from play;
					otherwise:
						move Vanessa to Bunker;
					now lust of Vanessa is 0;
			-- 197: [xp of Vanessa - # of kids]
				if the player's command matches "[number]":
					now xp of Vanessa is the number understood;
					if hp of Vanessa is 0 or hp of Vanessa >= 50, now xp of Vanessa is 0;
			-- 198: [hp of Meredith - status]
				if the player's command matches "[number]":
					now hp of Meredith is the number understood;
					if hp of Vanessa is 0 or hp of Vanessa >= 50, now hp of Meredith is 0;
					if hp of Meredith is 0 or hp of Meredith >= 100:
						remove Meredith from play;
					otherwise:
						move Meredith to Bunker;
					if hp of Meredith >= 9 and hp of Meredith < 100, now libido of Meredith is 1;
					now xp of Meredith is 0;
			-- 199: [level of Meredith - # of kids]
				if the player's command matches "[number]":
					now level of Meredith is the number understood;
					if hp of Meredith is 0 or hp of Meredith >= 100, now level of Meredith is 0;
			-- 200: [hp of Gwen - status & Gwen UB]
				if the player's command matches "[number]":
					now hp of Gwen is the number understood;
					if Meredith is not bunkered, now hp of Gwen is 0;
					if hp of Gwen > 2 and hp of Gwen <= 60:
						move Gwen to Bunker;
						if hp of Gwen <= 20:
							now hp of Gwen is 3;
						otherwise if hp of Gwen <= 35:
							now hp of Gwen is 21;
						otherwise if hp of Gwen <= 60:
							now hp of Gwen is 36;
					otherwise:
						remove Gwen from play;
					if hp of Gwen > 2, now lust of Meredith is 1;
			-- 201: [hp of Rane]
				if the player's command matches "[number]":
					now hp of Rane is the number understood;
					if hp of Rane > 49 or hp of Rane < 6: 
						remove Rane from play;;
					otherwise if hp of Rane is 6:
						move Rane to shrine;
					otherwise if hp of Rane is 7:
						move Rane to Grey Abbey 2F;
					if hp of Rane is 5:
						now The blue Oni is unresolved;
					otherwise:
						now The blue Oni is resolved;
					if hp of Rane > 4:
						now Rooftop Rumble is resolved;
					otherwise:
						now Rooftop Rumble is unresolved;
			-- 202: [thirst of Elijah]
				if the player's command matches "[number]":
					now thirst of Elijah is the number understood;
			-- 203: [SpidertaurRelationship]
				if the player's command matches "[number]":
					now SpidertaurRelationship is the number understood;
					if SpidertaurRelationship > 4 and carried of silk hammock is 0:
						increase carried of silk hammock by 1;
					if SpidertaurRelationship > 5:
						now Spider's Web is known;
					otherwise:
						now Spider's Web is not known;
			-- 204: [CatgirlFucked]
				if the player's command matches "[number]":
					now CatgirlFucked is the number understood;
			-- 205: [FionaFangStatus]
				if the player's command matches "[number]":
					now FionaFangStatus is the number understood;
			-- 206: [FionaCarlStatus]
				if the player's command matches "[number]":
					now FionaCarlStatus is the number understood;
			-- 207: [hp of Gabriel]
				if the player's command matches "[number]":
					now hp of Gabriel is the number understood;
					if hp of Gabriel is 0:
						if hp of Elijah > 0 and hp of Elijah is not 99:
							now Angel vs Demons is resolved;
					otherwise if hp of Gabriel is 1:
						now Angel vs Demons is unresolved;
					otherwise if hp of Gabriel > 1:
						repeat with y running from 1 to number of filled rows in Table of random critters:
							choose row y in table of random critters;
							if name entry is "Seraphim":
								now monster is y;
								now area entry is "Red";
								break;
						now Angel vs Demons is resolved;
			-- 208: [hp of Erica]
				if the player's command matches "[number]":
					now hp of Erica is the number understood;
			-- 209: [thirst of Erica]
				if the player's command matches "[number]":
					now thirst of Erica is the number understood;
			-- 210:	[population of Police Station]
				if the player's command matches "[number]":
					now population of Police Station is the number understood;
					if population of Police Station > 50, now population of Police Station is 50;
					if population of Police Station is not 0 and population of Police Station < 3, now population of Police Station is 3;
					if hp of Alexandra < xx or hp of Alexandra is 100, now population of Police Station is 0;
			-- 211:	[infpop of Police Station]
				if the player's command matches "[number]":
					now infpop of Police Station is the number understood;
					if infpop of Police Station > population of Police Station, now infpop of Police Station is population of Police Station;
					if infpop of Police Station < ( ( 2 * population of Police Station ) / 3 ), now infpop of Police Station is ( ( 2 * population of Police Station ) / 3 );
					if infpop of Police Station is not 0 and infpop of Police Station < 3, now infpop of Police Station is 3;
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
	if mattcollection is 1, now carried of infection monitor is 1;
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
	say "Your spell washes through the universe. Trixie taps you on your [facename of player] nose lightly. 'All done!'";
	wait for any key;



savetrix2 is an action applying to nothing.
understand "load game" as savetrix2.	

Check savetrix2:
	if trixie is not visible, say "Your words have no effect. Maybe you should tell them to Trixie in the library instead of just talking to yourself." instead;
	
Carry out savetrix2:
	now trixsavetext1 is "[text of the File of Trixsave]" ;
	now trixsavetext2 is "[text of the File of Trixsave2]" ;
	now trixsavetext3 is "[text of the File of Trixsave3]" ;
	reciting2;	
	let invrecover be indexed text;
	now invrecover is "[text of the File of invsave]";
	replace the text " " in invrecover with "`";
	replace the text " " in invrecover with "`";
	replace the text "}" in invrecover with " ";
	say "Recovering inventory...";
	repeat with z running from 1 to number of words in invrecover:
		let curword be word number z in invrecover;
		replace the text "|" in curword with " ";
		let cur be word number 1 in curword;
		let amt be  0;
		let amttext be word number 2 in curword;
		now amt is numerical value of amttext;
		replace the text "`" in cur with " ";
		repeat with Q running through grab objects:
			let obname be printed name of q;
			if cur matches  the text obname, case insensitively:
				now carried of q is amt;
				break;
	if carried of nanite collector > 0:
		now nanitemeter is 2;
		repeat with y running from 1 to number of filled rows in table of game objects:
			choose row y in table of game objects;
			if name entry is "nanite collector":
				now weight entry is 25;
				break;

[
testsven is an action applying to nothing.
understand "tsven" as testsven;.
carry out testsven:
	now hp of Sven is 4;
	move Sven to Bunker;
]

Reciting is an action applying to [16 things]one topic.
Understand "recite [text]" as reciting.

Check reciting:
	if trixie is not visible, say "Your words have no effect. Maybe you should tell them to Trixie in the library instead of just talking to yourself." instead;

Carry out reciting:
	let x be indexed text;
	let x be the topic understood;
[	say "Current restoration string: [X][line break]";	]
	replace the text " " in X with "`";
[	say "Current restoration string: [X][line break]";	]
	let lev be the level of the player;
	let upit be 0;
	let zeta be 0;
	repeat with z running from 1 to number of words in x:
		let b be word number z in x;
		replace the text "`" in b with " ";
		replace the text "continuedchant" in b with "chantpartA";
		if "chantpartA" matches the text b:
			now upit is 1;
			next;
		otherwise if "chantpartB" matches the text b:
			now upit is 2;
			next;		
		change the text of the player's command to b;
		if upit is 1:
			increase zeta by 58;
		otherwise if upit is 2:
			increase zeta by 160;
		let current be 0;
		increase current by z;
		increase current by zeta;
		if current is:
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
					now carried of nanite density monitor is 0;
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
						now carried of nanite density monitor is 1;
						now beach detector site is unresolved;
						now red light detector site is unresolved;
						now high rise detector site is unresolved;
						now park detector site is unresolved;
						now ndmlist is { "Beach", "Red Light District", "High Rise District", "Park" };
					if hp of doctor matt is 18:
						now beach detector site is resolved;
						now red light detector site is resolved;
						now high rise detector site is resolved;
						now park detector site is resolved;
						now ndmlist is { };
						increase freecred by 200;
						if hp of Larissa is 0, now hp of Larissa is 1;
					otherwise if hp of doctor matt is 100:
						remove orthas from play;
						now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
						now the initial appearance of Doctor Matt is "A small recorder labeled 'doctor matt' remains abandoned.";
			-- 12:	[Body infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now monster is Y;
							now body of player is body entry;		
							now bodyname of player is name entry;
							attributeinfect;
							break;
			-- 13:	[Face infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now face of player is face entry;		
							now facename of player is name entry;
							break;
			-- 14:	[Skin infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now skin of player is skin entry;		
							now skinname of player is name entry;
							break;
			-- 15:	[Tail infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now tail of player is tail entry;		
							now tailname of player is name entry;
							break;
			-- 16:	[Cock infection]
				repeat with Y running from 1 to number of filled rows in table of random critters:
					choose row Y from the table of random critters;
					if name entry matches the text b, case insensitively:
						let num1 be the number of characters in b;
						let num2 be the number of characters in name entry;
						if num1 is num2:
							now cock of player is cock entry;		
							now cockname of player is name entry;
							break;
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
				repeat with y running through armaments:
					if the printed name of y matches the text b, case insensitively:
						if y is not owned, now carried of y is 1;
						now weapon object of player is Y;
						now weapon of player is weapon of Y;
						now weapon damage of player is weapon damage of Y;
						now weapon type of player is weapon type of Y;
						say "You ready your [Y].";
						break;
			-- 28:	[re-purposed: Frank M/F count]
				if the player's command matches "[number]":
					now franksex is the number understood;
			-- 29:	[re-purposed: Frank M/M count]
				if the player's command matches "[number]":
					now frankmalesex is the number understood;
					if frankmalesex is 0, now libido of Frank is 0;
					if franksex is 0 and frankmalesex is 0:
						now Comic Shop is unknown;
						now Mephitness is unresolved;
					otherwise:
						now Comic Shop is known;
						now Mephitness is resolved;
			-- 30:	[Snow]
				if the player's command matches "[number]":
					if the number understood is 1:
						now hyper squirrel girl is resolved;
						now Snow is in Grey Abbey Library;
					otherwise:
						now hyper squirrel girl is not resolved;
						remove Snow from play;
			-- 31:	[redundant - removed]
				now tempnum is 0;		[Duplicate removed]
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
			-- 45:	[Denise]
				if the player's command matches "[number]":
					now gryphoncomforted is the number understood;
					now lonely gryphoness is unresolved;
					now Gryphoness Nest is resolved;
					if gryphoncomforted is greater than 0:
						now lonely gryphoness is resolved;
						now Gryphoness Nest is unresolved;
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
					if AngieHappy > 0:
						move Angie to the Zoo Giftshop;
						now zoo entrance is known;
					if AngieHappy > 1:
						Now AngieTrapped is resolved;
					if AngieHappy is 2:
						increase carried of catnip by 1;
					if AngieHappy is 4 and "Angie's Mate" is not listed in feats of player:
						add "Angie's Mate" to feats of player;
			-- 56:	[Angie]
				if the player's command matches "[number]":
					now angietalk is the number understood;
			-- 57:	[Susan]
				if the player's command matches "[number]":
					now deerconsent is the number understood;
			-- 58:	[Susan]
				if the player's command matches "[number]":
					now deerhappy is the number understood;
					move Susan to dark basement;
					now unusual creature is resolved;
					if hp of doctor matt is 6:
						now unusual creature is unresolved;
						now deerconsent is 0;
						now deerhappy is 0;
					if hp of doctor matt is greater than 6:
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
					now hp of Orthas is the number understood;
					if hp of Orthas >= 2:
						now the icon of Orthas is figure of Orthas_icon;
					otherwise:
						now the icon of Orthas is figure of pixel;
					if hp of Orthas is 5:
						now Orthas's House is unresolved;
					otherwise:
						now Orthas's House is resolved;
					if hp of Orthas is 6:
						now carried of footlocker is 1;
					otherwise:
						now carried of footlocker is 0;
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
					now lust of Sandra is turns;
					if hp of Sandra > 0:
						now Sandra is in the bunker;
						now needy rabbit girl is resolved;
						now rabbit den is known;
					otherwise:
						now Sandra is in Rabbit Den;
						now needy rabbit girl is not resolved;
						now rabbit den is unknown;
			-- 72:	[Frank - M/M top/bottom/switch]
				if the player's command matches "[number]":
					now libido of Frank is the number understood;
					if libido of Frank > 3, now libido of Frank is 3;		[***temporary fix]
					if frankmalesex is 0, now libido of Frank is 0;
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
					if libido of Fang is 2 and ( hp of Fang is 1 or hp of Fang is 2 ), now libido of Fang is 1;
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
						now Pig Pen is not fasttravel;
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
					now hp of bee girl is the number understood;
					if girl is not banned:
						now Smashed Hive is unresolved;
						now bee girl is not tamed;
						if hp of bee girl > 0 and hp of bee girl < 100:
							now bee girl is tamed;
						if hp of bee girl > 1:
							now Smashed Hive is resolved;
						if hp of bee girl >= 5:
							setmonster "Queen Bee";
							choose row monster from the table of random critters;
							now non-infectious entry is false;
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
					now Angel vs Demons is unresolved;
					now Burned-Out Chapel is unknown;
					if hp of Elijah is 1 or hp of Elijah is 2:
						now the icon of Elijah is Figure of Elijah_naked_icon;
					otherwise if hp of Elijah is 3:
						now the icon of Elijah is Figure of Elijah_virgin_icon;
					otherwise if hp of Elijah is 4:
						now the icon of Elijah is Figure of Elijah_good_icon;
					otherwise if hp of Elijah is 99:
						now the icon of Elijah is Figure of Elijah_evil_icon;
					if hp of Elijah > 0 and hp of Elijah < 99:
						now Angel vs Demons is resolved;
						now Burned-Out Chapel is known;
					if hp of Elijah > 0 and hp of Elijah < 100:
						move Elijah to Bunker;
					if hp of Elijah is 100:
						now Angel vs Demons is resolved;
						remove Elijah from play;
					if hp of Elijah is 2, now Sweet Surprise is unresolved;
					if hp of Elijah is 2 and furry is not banned, now Examination Room is unresolved;
			-- 87:	[Elijah's interactions]
				now npcEint is "[the player's command]";
				npcEint-Restore;
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
					now level of Hunting Prides is 8;
					now Hunting Prides is resolved;
					now PridePark is resolved;
					if hp of Leonard is 100, now hp of Leonard is 0;
					if hp of Leonard >= 6:
						now the icon of Leonard is the figure of LeonardViolin_icon;
					otherwise:
						now the icon of Leonard is the figure of pixel;
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
					if hp of Leonard is 6:
						now leonardtimer is turns;
					if hp of Leonard is 7:
						now libido of Leonard is 0;
					if hp of Leonard is 9:
						now leonardtimer is turns;
					if hp of Leonard >= 10:
						now Hunting Prides is unresolved;
					if hp of Leonard is 11:
						now level of Hunting Prides is 10;
					if hp of Leonard is 12 or hp of Leonard is 13:
						now level of Hunting Prides is 12;
					if hp of Leonard >= 14:
						now Hunting Prides is resolved;
						now level of Hunting Prides is 12;
					if hp of Leonard is 15, now hp of Leonard is 16;
					if hp of Leonard >= 16 and hp of Leonard <= 100:
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
					now hp of Solstice is the number understood;
					now Adventurer is resolved;
					now Onyx Crow is resolved;
					if hp of Solstice is 1:
						now Onyx Crow is unresolved;
					if hp of Solstice is 2:
						now carried of Crow Artifact is 1;
						now Adventurer is unresolved;
					if hp of Solstice is 3 or hp of Solstice is 4:
						now lastfuck of Solstice is turns;
					if hp of Solstice > 4:
						move Solstice to Grey Abbey Library;
			-- 92:	[Ronda the Slut Rat]
				if the player's command matches "[number]":
					now carried of lizard juice is 0;
					now hp of Ronda is the number understood;
					now Art Collector is resolved;
					if hp of Ronda > 0 and hp of Ronda < 10:
						remove Ronda Mallrat from play;
						move Rod Mallrat to Mall FoodCourt;
						now the icon of Rod Mallrat is figure of Rod_icon;
						now the icon of Ronda is figure of pixel;
					if hp of Ronda is 0 or hp of Ronda is 10:
						move Ronda Mallrat to Mall Atrium;
						move Rod Mallrat to Mall FoodCourt;
						now the icon of Rod Mallrat is figure of Rod_icon;
						now the icon of Ronda is figure of pixel;
					if hp of Ronda is 100:
						move Ronda Mallrat to SlutRat Den;
						move Rod Mallrat to SlutRat Den;
						now the icon of Rod Mallrat is figure of pixel;
						now the icon of Ronda is figure of RondaSR_icon;
					if hp of Ronda > 0:
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Slut Rat":
								now area entry is "Mall";
								break;
					if hp of Ronda is 5:
						now carried of lizard juice is 1;
					if hp of Ronda is 6:
						now Art Collector is unresolved;
					if hp of Ronda >= 8:
						now SlutRat Den is known;	
			-- 93:	[Athanasia]
				if the player's command matches "[number]":
					now carried of phoenix egg is 0;
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
						now carried of phoenix egg is 1;
					if hp of Athanasia >= 3:
						now lastfuck of Athanasia is turns;
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
					move Eric to Sports Arena Lockerroom;
					if hp of Eric > 0:
						now Barricaded Lockerroom is resolved;
						now Sports Arena Lockerroom is known;
					if hp of Eric is 100:
						remove Eric from play;
					otherwise if hp of Eric > 0:
						move Eric to Bunker;
						now thirst of Eric is 1;
					if hp of Eric is 21 or hp of Eric is 22:
						now thirst of Eric is 21;
					if hp of Eric is 31 or hp of Eric is 32:
						now thirst of Eric is 31;
					if hp of Eric is 11:
						now thirst of Eric is 11;
			-- 102:	[Christy the Stuck Dragoness]
				if the player's command matches "[number]":
					now hp of Christy is the number understood;
					now dragontype is 0;
					now lust of Christy is 0;
					now libido of Christy is 0;
					now thirst of Christy is 0;
					now dragoness is in Old Building;
					now Dragon Prey is resolved;
					if hp of Christy is 0:
						now Find Building is unresolved;
						now Another Ladder is unresolved;
						now Isolated Street is unknown;
						now Back Alley is unknown;
						now NoIntroduction is 0;
					otherwise if hp of Christy > 0:
						now Find Building is resolved;
						now Another Ladder is resolved;
						now Isolated Street is known;
						now Back Alley is known;
						now NoIntroduction is 1;
					if hp of Christy >= 2:
						remove dragoness from play;
					if hp of Christy is 90:
						now Dragon Prey is unresolved;
					if hp of Christy >= 90:
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
					now hp of Doctor Medea is the number understood;
					if hp of Doctor medea > 6, now hp of Doctor Medea is 0;	[reset for save bug]
					if hp of Doctor Medea > 0:
						now Pediatrics Lobby is known;
					if hp of Doctor Medea is 3:
						now Obstetrics Department is unresolved;
					otherwise:
						now Obstetrics Department is resolved;
			-- 106:	[Dr. Moffatt]
				if the player's command matches "[number]":
					now hp of Doctor Moffatt is the number understood;
					if hp of Doctor Moffatt is 99 or hp of Doctor Moffatt is 100:
						now hp of Doctor Moffatt is 0;
					if guy is banned or girl is banned or hermaphrodite is banned or furry is banned:
						now Psych Department is unknown;
						now Another Doctor is resolved;
						now hp of Doctor Moffatt is 100;
					otherwise if hp of Doctor Moffatt is 0:
						now Psych Department is unknown;
						now Another Doctor is unresolved;
					otherwise if hp of Doctor Moffatt > 0:
						now Psych Department is known;
						now Another Doctor is resolved;
						now hospnav is 1;
						now lastfuck of Doctor Moffatt is turns;
						now lust of Doctor Moffatt is 0;
			-- 107:	[Lucy the Mall Rat]
				if the player's command matches "[number]":
					now hp of Lucy is the number understood;
					if hp of Lucy > 0:
						move Lucy to Mall Atrium;
					otherwise:
						remove Lucy from play;
			-- 108:	[David's thirst]
				if the player's command matches "[number]":
					now thirst of david is the number understood;
			-- 109:	[David's lust]
				if the player's command matches "[number]":
					now lust of david is the number understood;
			-- 110:	[David's hp]
				if the player's command matches "[number]":
					now hp of David is the number understood;
					if hp of David is 0 and ( guy is not banned and hellspawn is not banned ):
						remove David from play;
						now Captured Demon is unresolved;
						now Thankful Soldier is resolved;
					otherwise:
						now Captured Demon is resolved;
						now Thankful Soldier is resolved;
					if hp of David > 0 and hp of David < 4, move David to Parade Ground;
					if hp of David is 4:
						move David to Bunker;
						now DavidBunkerEntry is turns;
			-- 111:	[Camp Bravo / Adam]
				if the player's command matches "[number]":
					now hp of Adam is the number understood;
					now Trickster's Masterpiece is resolved;
					now Back at the Camp is resolved;
					now Camp Bravo Entrance is unknown;
					now CampBravoWomenAllowed is 0;
					now ElainePregnant is 0;
					now thirst of Elaine is 0;
					remove Adam from play;
					if guy is banned or furry is banned:
						now Red Light Requisition is resolved;
						now Trickster's Masterpiece is resolved;
					otherwise if hp of Adam is 0:
						now Trickster's Masterpiece is unresolved;
					otherwise if hp of Adam is 1:
						now Trickster's Masterpiece is unresolved;
					otherwise if hp of Adam is 2:
						now Back at the Camp is unresolved;
					otherwise if hp of Adam is 3:
						now Camp Bravo Entrance is known;
					otherwise if hp of Adam is 4:
						now Camp Bravo Entrance is known;
						now CampBravoWomenAllowed is 1;
						now ElainePregnant is 48;
					otherwise if hp of Adam is 5:
						now thirst of Elaine is 3;
						now Camp Bravo Entrance is known;
						now CampBravoWomenAllowed is 1;
						move Adam to Quartermaster's Tent;
			-- 112:	[Doberman Cop / Alexandra]
				if the player's command matches "[number]":
					now hp of Alexandra is the number understood;
					now lust of Alexandra is 0;
					now libido of Alexandra is 0;
					move Alexandra to Police Station;
					if hp of Alexandra is 59 or hp of Alexandra is 60:
						now hp of Alexandra is 58;
						say "[special-style-2]NOTICE:[roman type] Your completion of the Automatons 2 task has been undone due to task order revisions.";
					if hp of Alexandra > 0:
						[puts Doberman as lead monster in case of impregnation]
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Doberman":
								now monster is y;
								now area entry is "nowhere";
								break;
						if hp of Alexandra is 100:
							now Police Station is unknown;
						otherwise if hp of Alexandra >= 50:
							now Police Station is known;
						otherwise:
							now Police Station is unknown;
							move Alexandra to Grey Abbey Library;
						if hp of Alexandra >= 65 and hp of Alexandra <= 100:
							now Master Mind is in Cell Block A;
					if hp of Alexandra is 3 or hp of Alexandra is 5:
						now lust of Alexandra is 1;	[reset to start of pregnancy]
					if hp of Alexandra is 4 or hp of Alexandra is 5:
						now libido of Alexandra is a random number between 2 and 4;	[minimum children restored]
			-- 113:	[Larissa (Multiform NPC)]
				if the player's command matches "[number]":
					now hp of Larissa is the number understood;
				if hp of Larissa > 3, now hp of Larissa is 3;
				if hp of Larissa > 1, nanitecoll_discount;
				follow the larissa_tfoption rule;
			-- 114:	[Sam (Dual-taur NPC)]
				if the player's command matches "[number]":
					now hp of Sam is the number understood;
					if hp of Sam is 0:
						now Another Researcher is unresolved;
						now Mini-Lab is unknown;
					otherwise:
						now Another Researcher is resolved;
						now Mini-Lab is known;
					if hp of Sam <= 4:
						now Sam is in Mini-Lab;
					otherwise if hp of Sam < 70:
						now Sam is in Bunker;
					otherwise:
						remove Sam from play;
					if hp of Sam is 16 or hp of Sam is 98, dragontaur_active;
					if hp of Sam is 36 or hp of Sam is 93, vixentaur_active;
					if hp of Sam is 55 or hp of Sam is 56, tripletaur_active;
			-- 115:	[Wereraptor curse]
				if the player's command matches "[number]":
					now wrcursestatus is the number understood;
			-- 116:	[Wereraptor cure quest]
				if the player's command matches "[number]":
					now wrcurseNermine is the number understood;
			-- 117:	[Dr. Utah]
				if the player's command matches "[number]":
					now hp of Doctor Utah is the number understood;
					now Paleontology Professor is unresolved;
					now utahmet is false;
					now Greenhouse is resolved;
					now carried of wolfsbane is 0;
					now carried of silver knife is 0;
					now Dinosaur Skeleton is resolved;
					now Paleontology Office is unknown;
					if girl is banned and guy is banned:
						now wrcursestatus is 0;
						now Paleontology Professor is resolved;
						now hp of Doctor Utah is 0;
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
						now hp of Doctor Utah is 0;
						now libido of Doctor Utah is 0;
						now lust of Doctor Utah is 0;
					if wrcurseNermine is 12 or wrcurseNermine is 14:
						now Paleontology Office is known;
						if hp of Doctor Utah > 1:
							if girl is not banned:
								if hp of Doctor Utah is odd:
									now lust of Doctor Utah is 1;
								otherwise:
									now lust of Doctor Utah is 0;
								let iterations be hp of Doctor Utah / 2;
								now libido of Doctor Utah is 0;
								repeat with itx running from 1 to iterations:
									increase libido of Doctor Utah by a random number between 2 and 4;
							otherwise:
								let iterations be 0;	[do nothing action]
					if weapon object of player is silver knife and silver knife is not owned, now weapon object of player is journal;
			-- 118:	[Mike]
				if the player's command matches "[number]":
					now hp of Mike is the number understood;
					if hp of Mike is 100 or guy is banned or furry is banned:	[Mike lost]
						now Mike's Home is unknown;
						now Dog Walking is resolved;
					otherwise if hp of Mike is 99:					[Mike enemy]
						now Mike's Home is unknown;
						now Dog Walking is resolved;
						repeat with y running from 1 to number of filled rows in table of random critters:
							choose row y in table of random critters;
							if name entry is "Stag":
								now monster is y;
								now area entry is "Warehouse";
								now non-infectious entry is false;
								break;
					otherwise if hp of Mike > 2 and hp of Mike < 98:
						now Dog Walking is resolved;
						now Mike's Home is known;
					otherwise:
						now Dog Walking is not resolved;
						now Mike's Home is unknown;
			-- 119:	[Xerxes]
				if the player's command matches "[number]":
					now hp of Xerxes is the number understood;
					if hp of Xerxes is 0, remove Xerxes from play;
					if hp of Xerxes > 0, move Xerxes to Grey Abbey Library;
			-- 120:	[Helen]
				if the player's command matches "[number]":
					now hp of Helen is the number understood;
			-- 121:	[Helen]
				if the player's command matches "[number]":
					now libido of Helen is the number understood;
					now HelenPregnant is 0;
					if hp of Helen is 0:
						remove Helen from play;
						now thirst of Helen is 0;
						now libido of Helen is 0;
					if hp of Helen > 0:
						move Helen to Grey Abbey Library;
						if libido of Helen > 0:
							now thirst of Helen is 1;
			-- 122:	[Rex]
				if the player's command matches "[number]":
					now hp of Rex is the number understood;
			-- 123:	[Karen]
				if the player's command matches "[number]":
					now hp of Karen is the number understood;
					now carried of Dog Bone is 0;
					now ForcedAdoption is unresolved;
					now Rex's Place is unknown;
					if guy is banned or girl is banned or furry is banned:
						now hp of Rex is 0;
						now hp of Karen is 0;
						now ForcedAdoption is resolved;
					if hp of Rex > 0:
						now Entrance to the High Rise District is known;
					if hp of Rex > 0 and hp of Rex < 5:
						now carried of Dog Bone is 1;
						now ForcedAdoption is unresolved;
					if hp of Rex > 4:
						now carried of Dog Bone is 0;
						now Rex's Place is known;
						now ForcedAdoption is resolved;
					if hp of Rex is 50:
						now Rex's Place is unknown;
					if hp of Karen >= 5:
						now Retriever Girl is tamed;
					otherwise:
						now Retriever Girl is not tamed;
			-- 124:	[François]
				if the player's command matches "[number]":
					now hp of François is the number understood;
					now Gourmet Treats is unresolved;
					if girl is banned or guy is banned or furry is banned:
						now Gourmet Treats is resolved;
						now hp of François is 0;
					if hp of François is 0:
						now Bone-Appetit is unknown;
						now libido of François is 0;
					otherwise:
						now Gourmet Treats is resolved;
						now Bone-Appetit is known;
			-- 125:	[François]
				if the player's command matches "[number]":
					let y be 0;		[placeholder for second part to come]
			-- 126:	[Alexandra + Fang]
				if the player's command matches "[number]":
					now level of Alexandra is the number understood;
					now xp of Alexandra is 0;
					if hp of Alexandra is 0 or hp of Alexandra >= 50 or hp of Alexandra is 100:
						now level of Alexandra is 0;
					if level of Alexandra is 0:
						remove "Top Dog" from feats of player, if present;
						remove "Cuckold" from feats of player, if present;
					otherwise if level of Alexandra is 1:
						remove "Cuckold" from feats of player, if present;
						add "Top Dog" to feats of player, if absent;
					otherwise if level of Alexandra is 2:
						add "Cuckold" to feats of player, if absent;
						remove "Top Dog" from feats of player, if present;
			-- 127: [Thomas HP]
				if the player's command matches "[number]":
					now hp of Thomas is the number understood;
					if hp of Thomas is 0 and guy is not banned or hermaphrodite is not banned:
						now Centaur Gangbang is unresolved;
					if hp of Thomas > 0:
						now Centaur Gangbang is resolved;
						move Thomas to Dry Plains;
					if hp of Thomas is 0 or hp of Thomas is 100:
						remove Thomas from play;
			-- 128: [Thomas Libido]
				if the player's command matches "[number]":
					now Libido of Thomas is the number understood;
					now ThomasSaved is turns;
					now SandySaved is turns;
					if hp of Thomas is 0, now libido of Thomas is 0;
			-- 129: [Thomas Lust]
				if the player's command matches "[number]":
					now Lust of Thomas is the number understood;
					if hp of Thomas is 0, now lust of Thomas is 0;
			-- 130: [Thomas Quest]
				if the player's command matches "[number]":
					now ThomasQuestVar is the number understood;
					if hp of Thomas is 0, now ThomasQuestVar is 0;
			-- 131: [Artemis]
				if the player's command matches "[number]":
					now hp of rubber tigress is the number understood;
					now Poor Kitty is unresolved;
					if girl is banned or furry is banned:
						now hp of rubber tigress is 0;
						now Poor Kitty is resolved;
					if hp of rubber tigress >= 2:
						now Poor Kitty is resolved;
					if hp of rubber tigress >= 3:
						now rubber tigress is tamed;
						now libido of rubber tigress is 30;
						now carried of cup stack is 1;
					otherwise:
						if companion of player is rubber tigress, now companion of player is nullpet;
						now rubber tigress is not tamed;
						now carried of cup stack is 0;
					if hp of rubber tigress is 9, now hp of rubber tigress is 8;
					if hp of rubber tigress is 11 or hp of rubber tigress is 12:
						now hp of rubber tigress is 10;
						say "     There is a wet, popping sound as Artemis's sex toys detach themselves, ready to be installed again.";
					now lust of rubber tigress is 0;
					now thirst of rubber tigress is 0;
					now lisaartemiscount1 is 0;
					now lisaartemiscount2 is 0;
			-- 132: [Septus/Football Wolfman]
				if the player's command matches "[number]":
					now hp of Septus is the number understood;
					now Wolfman Lair is unknown;
					now Entrance to the Lair is resolved;
					if guy is banned or furry is banned:
						let tt be 0;
					otherwise:
						if hp of Septus is 4:
							now Entrance to the Lair is unresolved;
						if hp of Septus > 4 and hp of Septus < 99:
							now Wolfman Lair is known;
						if hp of Septus is 7 or hp of Septus is 99:
							setmonster "Football Wolfman";
							choose row monster from the table of random critters;
							now area entry is "nowhere";
			-- 133: [Awesome Xerxes]
				if the player's command matches "[number]":
					now lust of Xerxes is the number understood;
					if hp of Xerxes is 0, now lust of Xerxes is 0;
			-- 134: [Awesomer Helen]
				if the player's command matches "[number]":
					now lust of Helen is the number understood;
					if hp of Helen is 0, now lust of Helen is 0;
			-- 135: [Tristian]
				if the player's command matches "[number]":
					now hp of Tristian is the number understood;
					now Tristbrother is resolved;
					remove Lance from play;
					if hp of Tristian is 8 and guy is not banned and furry is not banned and hermaphrodite is not banned:
						now Tristbrother is unresolved;
					otherwise if hp of Tristian is 8:
						now hp of Tristian is 7;
					if hp of Tristian is 10 or hp of Tristian is 12, now hp of Tristian is 7;
					if hp of Tristian is 11:
						move Lance to PALOMINO;
			-- 136: [Icarus/Blue Chaffinch]
				if the player's command matches "[number]":
					now hp of Icarus is the number understood;
					if hp of Icarus > 0:
						if guy is banned or furry is banned:
							now hp of Icarus is 0;
						otherwise:
							setmonster "Blue Chaffinch";
							choose row monster from the table of random critters;
							now area entry is "nowhere";
							now Icarus is in Grey Abbey Library;
					if hp of Icarus is 5 or hp of Icarus is 6:
						now hp of Icarus is 4;	[dialed back for sex]
					if hp of Icarus is 7:
						remove Icarus from play;
						now ttIcarus is turns;
						now tti_scene is 0;
					if hp of Icarus is 9:
						now hp of Icarus is 8;	[Icarus waiting for more]
			-- 137: [hp of Joanna]
				if the player's command matches "[number]":
					now hp of Joanna is the number understood;
					move Joanna to Flower Garden;
					now joannatalk is 0;
					now joannaharoldtalk is 0;
					now joannaoffernum is 0;
					if hermaphrodite is banned:
						now hp of Joanna is 0;
					if hp of Joanna > 0 and hp of Joanna < 90:
						now Overrun Garden is resolved;
						now joannaharoldtalk is 1;
						now Flower Garden is known;
					if hp of Joanna > 1 and hp of Joanna < 90:
						now joannatalk is 1;
					if hp of Joanna is 6:
						now hp of Joanna is 5;
					if hp of Joanna >= 90:
						now PALOMINO is known;
			-- 138: [lust of Joanna]
				if the player's command matches "[number]":
					now lust of Joanna is the number understood;
					if hp of Joanna <= 4 or hp of Joanna >= 90:
						now lust of Joanna is 0;
					if hp of Joanna >= 7 and hp of Joanna < 90:
						if lust of Joanna < 3, now lust of Joanna is 3;
						now plantdefeat is 1;						
			-- 139: [Angie]
				if the player's command matches "[number]":
					now angiearoused is the number understood;
					if AngieAroused is 50:
						now FindingMidnight is resolved;
						move Midnight to Zoo Giftshop;
			-- 140:	[demon brute pet]
				if the player's command matches "[number]":
					now DBCaptureQuestVar is the number understood;
					if DBCaptureQuestVar > 4 and DBCaptureQuestVar < 99:
						now demon brute is tamed;
					otherwise:
						now demon brute is not tamed;
					if DBCaptureQuestVar is 5:
						choose blank row from Table of confession entries;
						now title entry is "Ask about the possibility of freeing a demon of his inner evil";
						now description entry is "";
						now toggle entry is demoncleansing rule;
					if DBCaptureQuestVar > 5:
						now the icon of demon brute is Figure of BrutusGood_icon;						
			-- 141:	[demon brute pet - gender]
				if the player's command matches "[number]":
					now DemonBruteStatus is the number understood;
			-- 142:	[Lilith - hp]
				if the player's command matches "[number]":
					now hp of Lilith is the number understood;
					if hp of Lilith > 0:
						now Burned-Out Chapel is known;
			-- 143:	[Lilith - incubus offspring]
				if the player's command matches "[number]":
					now LilithKidCounter is the number understood;
			-- 144:	[Felix - hp]
				if the player's command matches "[number]":
					now hp of Felix is the number understood;
					if hp of Felix > 0 and hp of Felix < 100:
						move Felix to Dry Plains;
					otherwise:
						remove Felix from play;
					if hp of Felix is 2:
						move Andre to Dry Plains;
					otherwise:
						remove Andre from play;
			-- 145:	[Felix - libido]
				if the player's command matches "[number]":
					now libido of Felix is the number understood;
			-- 146:	[relationship progress with Sonya the Viking]
				if the player's command matches "[number]":
					now VikingRelationship is the number understood;
					if VikingRelationship is 20:
						now Viking Ship is known;
					otherwise:
						now Viking Ship is not known;
			-- 147:	[number of kids with Sonya the Viking]
				if the player's command matches "[number]":
					now VikingKidCounter is the number understood;
			-- 148:	[MovingOrwell - mini quest var for fucking Orwell]
				if the player's command matches "[number]":
					now MovingOrwell is the number understood;
			-- 149:	[hp of Jimmy]
				if the player's command matches "[number]":
					now hp of Jimmy is the number understood;
					if guy is banned or hp of Jimmy is 0:
						now Automaton Activity is resolved;
						remove Jimmy from play;
					otherwise if hp of Jimmy > 0 and hp of Jimmy < 3:
						now Approaching the Capitol Building is known;
						now Government Assistance is resolved;
						now Automaton Activity is unresolved;
						remove Jimmy from play;
					otherwise if hp of Jimmy >= 3:
						now Approaching the Capitol Building is known;
						now Government Assistance is resolved;
						now Automaton Activity is resolved;
						move Jimmy to Police Lockerroom;
			-- 150:	[David - libido (interaction with Brutus)]
				if the player's command matches "[number]":
					now libido of David is the number understood;
			-- 151: [hp of Amy]
				if the player's command matches "[number]":
					now hp of Amy is the number understood;
					if hp of Amy > 0 and hp of Amy < 90:
						move Amy to Grey Abbey Library;
			-- 152: [libido of Amy - puppy counter]
				if the player's command matches "[number]":
					now libido of Amy is the number understood;
			-- 153: [SquadEncounters - progress variable for the Soldier Squad chain event]
				if the player's command matches "[number]":
					now SquadEncounters is the number understood;
					if SquadEncounters is 6:
						now Soldier Squad is resolved;
					otherwise:
						now Soldier Squad is not resolved;						
			-- 154: [thirst of Corbin - location]
				if the player's command matches "[number]":
					now thirst of Corbin is the number understood;
					if thirst of Corbin is 0:
						remove Corbin from play;
						now Cow Hunting is unresolved;
						now McDermott Farm Entrance is not known;	
					otherwise:
						now Cow Hunting is resolved;
						now McDermott Farm Entrance is known;
						if thirst of Corbin is 1:
							move Corbin to Worker Barracks;
						otherwise if thirst of Corbin is 2:
							move Corbin to Milking Shed;
			-- 155: [hp of Corbin]
				if the player's command matches "[number]":
					now hp of Corbin is the number understood;
					if hp of Corbin is 100:
						remove Corbin from play;
						setmonster "Cowboy Cuntboy";
						choose row monster from the table of random critters;
						now area entry is "Dry Plains";
					otherwise:
						setmonster "Cowboy Cuntboy";
						choose row monster from the table of random critters;
						now area entry is "Nowhere";
			-- 156: [CorbinKidCounter]
				if the player's command matches "[number]":
					now CorbinKidCounter is the number understood;
			-- 157: [hp of Anthony]
				if the player's command matches "[number]":
					now hp of Anthony is the number understood;
					if hp of Anthony > 3:
						now Missing Cow is resolved;
						move Wendy to McDermott Barn;
					otherwise:
						now Missing Cow is unresolved;
						remove Wendy from play;
			-- 158: [hp of Duke]
				if the player's command matches "[number]":
					now hp of Duke is the number understood;
					if hp of Duke > 9:
						move Shawn to Sheep Meadow SE;
			-- 159: [thirst of Duke]
				if the player's command matches "[number]":
					now thirst of Duke is the number understood;
					if thirst of Duke is 0:
						remove Duke from play;
					otherwise:
						if thirst of Duke is 1:
							move Duke to Sheep Meadow SW;
						otherwise if thirst of Duke is 2:
							move Duke to Sheep Meadow SE;
			-- 160: [hp of Zigor]
				if the player's command matches "[number]":
					now hp of Zigor is the number understood;
					if hp of Zigor > 0:
						now Cuero Lobo is known;
						now Leather Wolves is resolved;
					otherwise:
						now Cuero Lobo is unknown;
						if guy is not banned and girl is not banned and furry is not banned:
							now Leather Wolves is unresolved;
					if hp of Zigor >= 8:
						if "Twisted Capacity" is not listed in feats of player, add "Twisted Capacity" to feats of player;
			-- 161: [thirst of Amy]
				if the player's command matches "[number]":
					now thirst of Amy is the number understood;
			-- 162:	[hp of Nadia]
				if the player's command matches "[number]":
					now hp of Nadia is the number understood;
					if hp of Nadia > 0:
						now Bird Troubles is resolved;						
					if hp of Nadia > 0 and hp of Nadia < 99:
						move Nadia to Grey Abbey 2F;
					if hp of Nadia is 5:
						increase carried of feathered cloak by 1;
			-- 163: [NadiaFertilityCounter]
				if the player's command matches "[number]":
					now NadiaFertilityCounter is the number understood;
					say "[NadiaDescriptionUpdate]";
			-- 164: [NadiaChickCounter]
				if the player's command matches "[number]":
					now NadiaChickCounter is the number understood;
			-- 165:	[Nadia's interactions]
				now npcNadiaint is "[the player's command]";
				npcNadiaint-Restore;
			-- 166: [level of Amy]
				if the player's command matches "[number]":
					now level of Amy is the number understood;
			-- 167: [Xp of Amy]
				if the player's command matches "[number]":
					now Xp of Amy is the number understood;
			-- 168: [Dexterity of Amy]
				if the player's command matches "[number]":
					now Dexterity of Amy is the number understood;
			-- 169: [SvenAmySex]
				if the player's command matches "[number]":
					now SvenAmySex is the number understood;
			-- 170: [BrutusAmySex]
				if the player's command matches "[number]":
					now BrutusAmySex  is the number understood;
			-- 171: [lust of Zephias]
				if the player's command matches "[number]":
					now lust of Zephias is the number understood;
			-- 172: [hp of Ares]
				if the player's command matches "[number]":
					now hp of Ares is the number understood;
					if hp of Ares > 0:
						move Ares to Dog Kennels;
					otherwise:
						remove Ares from play;
			-- 173: [hp of Hayato]
				if the player's command matches "[number]":
					now hp of Hayato is the number understood;
					if hp of Hayato > 15:
						move Hayato to Grey Abbey 2F;
					otherwise:
						move Hayato to Disused Garage;
					if hp of Hayato > 5:
						now Garage Demon is resolved;
					if hp of Hayato > 10 and hp of Hayato < 14:
						now Noh Mask is unresolved;
					otherwise:
						now Noh Mask is resolved;
					if hp of Hayato >= 90:
						remove Hayato from play;
					if hp of Hayato > 15:
						unleashredoni;
					if hp of Hayato is 19:
						now Oni Lair is unresolved;
					otherwise:
						now Oni Lair is resolved;
			-- 174: [hp of Tehuantl]
				if the player's command matches "[number]":
					now hp of Tehuantl is the number understood;
					if hp of Tehuantl > 9 and hp of Tehuantl < 255:
						move Tehuantl to Grey Abbey 2F;
						setmonster "Jaguar Warrior";
						choose row monster from the table of random critters;
						now area entry is "nowhere";
						now TehuantlTimer is turns;						
					otherwise:
						remove Tehuantl from play;						
						setmonster "Jaguar Warrior";
						choose row monster from the table of random critters;
						now area entry is "Museum";	
			-- 175: [hp of Carl]
				if the player's command matches "[number]":
					now hp of Carl is the number understood;
					if hp of Carl > 1 and hp of Carl < 50:
						move Carl to Grey Abbey 2F;
					otherwise:
						remove Carl from play;
			-- 176: [level of Carl]
				if the player's command matches "[number]":
					now level of Carl is the number understood;											
			-- 177: [hp of Kristen]
				if the player's command matches "[number]":
					now hp of Kristen is the number understood;
					if hp of Kristen > 0 or girl is banned or furry is banned:
						now FindingKristen is resolved;
					otherwise:
						now FindingKristen is unresolved;
						now hp of Kristen is 0;
					if hp of Kristen > 1, now Kristen's Hideout is known;
					if hp of Kristen is 10:
						now kristenmsg3 is true;
						now carried of Janice's blouse is 1;
					otherwise if hp of Kristen > 10:
						now kristenmsg3 is true;
						now carried of Janice's blouse is 0;
					otherwise:
						now kristenmsg3 is false;
						now carried of Janice's blouse is 0;
			-- 178: [libido of Kristen]
				if the player's command matches "[number]":
					now libido of Kristen is the number understood;
					if hp of Kristen < 12, now libido of Kristen is 0;
			-- 179: [hp of Brooke]
				if the player's command matches "[number]":
					now hp of Brooke is the number understood;
					if hp of Brooke > 0:
						now Palomino is known;
			-- 180: [hp of Bubble - Bouncy Castle / Bubble]
				if the player's command matches "[number]":
					now hp of Bubble is the number understood;
					if hp of Bubble > 0 or girl is banned or furry is banned:
						now Snared Vixen is resolved;
					otherwise:
						now Snared Vixen is unresolved;
					if hp of Bubble is 1 or hp of Bubble is 2:
						now Beach Plaza is known;
						now Bouncy Castle is known;
						now vixcountdown is 29;
					otherwise:
						now Bouncy Castle is unknown;
					if hp of Bubble > 3 and hp of Bubble < 99:
						move Bubble to Grey Abbey 2F;
			-- 181:	[hp of Newt]
				if the player's command matches "[number]":
					now hp of Newt is the number understood;
					if hp of Athanasia < 11, now hp of Newt is 0;
					if hp of Newt >= 4:
						move Newt to Volcanic Cave;
			-- 182:	[Megakitty]			[temporarily closed for diagnosis]
				if the player's command matches "[number]":
					now tempnum is 0;	[do-nothing command]
[					if the number understood is 1 and girl is not banned and furry is not banned:
						setmonster "Megakitty";
						choose row monster from the table of random critters;
						if name entry is "Megakitty":
							now MKunleashed is true;
							now area entry is "Midway";		]
			-- 183:	[Phi Iota Gamma]
				if the player's command matches "[number]":
					now piginitiation is the number understood;
					if piginitiation > 0:
						now Frat House is resolved;
						now Phi Iota Gamma is known;
			-- 184:	[Down Under Pub / Gillian]
				if the player's command matches "[number]":
					now hp of Gillian is the number understood;
					if girl is banned or guy is banned or hermaphrodite is banned or furry is banned:
						now hp of Gillian is 0;
						now Aussie Pub is resolved;
					otherwise if hp of Gillian > 0:
						now Aussie Pub is resolved;
					otherwise:
						now Aussie Pub is unresolved;
					if hp of Gillian >= 4:
						now Gillian's Flat is known;
					otherwise:
						now Gillian's Flat is unknown;
			-- 185:	[hp of Stella]
				if the player's command matches "[number]":
					now hp of Stella is the number understood;
					if hp of Stella >= 2:
						move Stella to Bunker;
			-- 186:	[Stella threesome code - placeholder]
				now StellaNPCInt is "AAAAAAAAAAAA";	[do nothing]
				let xstella be 0;	[do nothing]
			-- 187: [OrcSlaverStatus]
				if the player's command matches "[number]":
					now OrcSlaverStatus is the number understood;
					if OrcSlaverStatus is 0:
						now Orc Lair Side Entrance is not known;
					otherwise:					
						now Orc Lair Side Entrance is known;
						now OrcSlaverCaptureTime is turns;
			-- 188: [CellDoorStatus - Orc Lair]
				if the player's command matches "[number]":
					now CellDoorStatus is the number understood;
					if CellDoorStatus is 1 or CellDoorStatus is 3:
						now the Cell Door 1 is unlocked;
					if CellDoorStatus is 2 or CellDoorStatus is 3:
						now the Cell Door 2 is unlocked;			
			-- 189: [Onyx]
				if the player's command matches "[number]":
					now xp of Onyx is the number understood;
					if xp of Onyx >= 6 and xp of Onyx <= 29:
						move Onyx to Grey Abbey Library;
					otherwise if xp of Onyx >= 30 and xp of Onyx <= 49:
						move Onyx to Palomino;
					otherwise:
						move Onyx to Holding Pens;
					if xp of Onyx is 1:
						now Equineguardpost is unresolved;
					otherwise:
						now Equineguardpost is resolved;
					if xp of Onyx is 4:
						now Stablestoreroom is unresolved;
					otherwise:
						now Stablestoreroom is resolved;
					if xp of Onyx is 100, now xp of Onyx is 0;
			-- 190: [hp of Val]
				if the player's command matches "[number]":
					now hp of Val is the number understood;
			-- 191: [thirst of Val]
				if the player's command matches "[number]":
					now thirst of Val is the number understood;
			-- 192: [ValPregCounter]
				if the player's command matches "[number]":
					now ValPregCounter is the number understood;
			-- 193: [ValPregnancy]
				if the player's command matches "[number]":
					now ValPregnancy is the number understood;					
			-- 194: [SlaveRaidEncounters]
				if the player's command matches "[number]":
					now SlaveRaidEncounters is the number understood;
					if OrcSlaverStatus > 0 and SlaveRaidEncounters is 0: [security clause for those who load an old saveword]
						now SlaveRaidEncounters is 2; [enslaved]
						now ValPregnancy is 48; [knocked up]
						now thirst of Val is 1;					[...by an orc]
					if SlaveRaidEncounters < 2:
						remove Val from play;
					otherwise:
						move Val to Slave Cell 1;
			-- 195: [hp of Chris]
				if the player's command matches "[number]":
					now hp of Chris is the number understood;
					if hp of Chris is 1:
						move Chris to Grey Abbey 2F;
					otherwise:
						remove Chris from play;						
			-- 195: [hp of Chris]
				if the player's command matches "[number]":
					now hp of Chris is the number understood;
					if hp of Chris is 1:
						move Chris to Grey Abbey 2F;
					otherwise:
						remove Chris from play;
			-- 196: [hp of Vanessa - status]
				if the player's command matches "[number]":
					now hp of Vanessa is the number understood;
					now Paratrooper is resolved;
					if hp of Vanessa is 0:
						remove Vanessa from play;
						if girl is not banned and mtp >= 3, now Paratrooper is unresolved;
					otherwise if hp of Vanessa >= 50:
						remove Vanessa from play;
					otherwise:
						move Vanessa to Bunker;
					now lust of Vanessa is 0;
			-- 197: [xp of Vanessa - # of kids]
				if the player's command matches "[number]":
					now xp of Vanessa is the number understood;
					if hp of Vanessa is 0 or hp of Vanessa >= 50, now xp of Vanessa is 0;
			-- 198: [hp of Meredith - status]
				if the player's command matches "[number]":
					now hp of Meredith is the number understood;
					if hp of Vanessa is 0 or hp of Vanessa >= 50, now hp of Meredith is 0;
					if hp of Meredith is 0 or hp of Meredith >= 100:
						remove Meredith from play;
					otherwise:
						move Meredith to Bunker;
					if hp of Meredith >= 9 and hp of Meredith < 100, now libido of Meredith is 1;
					now xp of Meredith is 0;
			-- 199: [level of Meredith - # of kids]
				if the player's command matches "[number]":
					now level of Meredith is the number understood;
					if hp of Meredith is 0 or hp of Meredith >= 100, now level of Meredith is 0;
			-- 200: [hp of Gwen - status & Gwen UB]
				if the player's command matches "[number]":
					now hp of Gwen is the number understood;
					if Meredith is not bunkered, now hp of Gwen is 0;
					if hp of Gwen > 2 and hp of Gwen <= 60:
						move Gwen to Bunker;
						if hp of Gwen <= 20:
							now hp of Gwen is 3;
						otherwise if hp of Gwen <= 35:
							now hp of Gwen is 21;
						otherwise if hp of Gwen <= 60:
							now hp of Gwen is 36;
					otherwise:
						remove Gwen from play;
					if hp of Gwen > 2, now lust of Meredith is 1;
			-- 201: [hp of Rane]
				if the player's command matches "[number]":
					now hp of Rane is the number understood;
					if hp of Rane > 49 or hp of Rane < 6: 
						remove Rane from play;;
					otherwise if hp of Rane is 6:
						move Rane to shrine;
					otherwise if hp of Rane is 7:
						move Rane to Grey Abbey 2F;
					if hp of Rane is 5:
						now The blue Oni is unresolved;
					otherwise:
						now The blue Oni is resolved;
					if hp of Rane > 4:
						now Rooftop Rumble is resolved;
					otherwise:
						now Rooftop Rumble is unresolved;
			-- 202: [thirst of Elijah]
				if the player's command matches "[number]":
					now thirst of Elijah is the number understood;
			-- 203: [SpidertaurRelationship]
				if the player's command matches "[number]":
					now SpidertaurRelationship is the number understood;
					if SpidertaurRelationship > 4 and carried of silk hammock is 0:
						increase carried of silk hammock by 1;
					if SpidertaurRelationship > 5:
						now Spider's Web is known;
					otherwise:
						now Spider's Web is not known;
			-- 204: [CatgirlFucked]
				if the player's command matches "[number]":
					now CatgirlFucked is the number understood;
			-- 205: [FionaFangStatus]
				if the player's command matches "[number]":
					now FionaFangStatus is the number understood;
			-- 206: [FionaCarlStatus]
				if the player's command matches "[number]":
					now FionaCarlStatus is the number understood;
			-- 207: [hp of Gabriel]
				if the player's command matches "[number]":
					now hp of Gabriel is the number understood;
					if hp of Gabriel is 0:
						if hp of Elijah > 0 and hp of Elijah is not 99:
							now Angel vs Demons is resolved;
					otherwise if hp of Gabriel is 1:
						now Angel vs Demons is unresolved;
					otherwise if hp of Gabriel > 1:
						repeat with y running from 1 to number of filled rows in Table of random critters:
							choose row y in table of random critters;
							if name entry is "Seraphim":
								now monster is y;
								now area entry is "Red";
								break;
						now Angel vs Demons is resolved;
			-- 208: [hp of Erica]
				if the player's command matches "[number]":
					now hp of Erica is the number understood;
			-- 209: [thirst of Erica]
				if the player's command matches "[number]":
					now thirst of Erica is the number understood;
			-- 210:	[population of Police Station]
				if the player's command matches "[number]":
					now population of Police Station is the number understood;
					if population of Police Station > 50, now population of Police Station is 50;
					if population of Police Station is not 0 and population of Police Station < 3, now population of Police Station is 3;
					if hp of Alexandra < xx or hp of Alexandra is 100, now population of Police Station is 0;
			-- 211:	[infpop of Police Station]
				if the player's command matches "[number]":
					now infpop of Police Station is the number understood;
					if infpop of Police Station > population of Police Station, now infpop of Police Station is population of Police Station;
					if infpop of Police Station < ( ( 2 * population of Police Station ) / 3 ), now infpop of Police Station is ( ( 2 * population of Police Station ) / 3 );
					if infpop of Police Station is not 0 and infpop of Police Station < 3, now infpop of Police Station is 3;
		if upit is 1, decrease zeta by 58;
		if upit is 2, decrease zeta by 160;
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
	if hospquest > 9 and "Rapid Healing" is not listed in feats of player, add "Rapid Healing" to feats of the player;
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
	if mattcollection is 1, now carried of infection monitor is 1;
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
	say "Your spell washes through the universe. Trixie taps you on your [facename of player] nose lightly. 'All done!'";
	wait for any key;


restoreletter is a text that varies.  restoreletter is normally "0".

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

to npcNadiaint-Restore:
	npcNadiaint-Read 1;
	now Char-A of Nadia is restoreletter;
	npcNadiaint-Read 2;
	now Char-B of Nadia is restoreletter;
	npcNadiaint-Read 3;
	now Char-C of Nadia is restoreletter;
	npcNadiaint-Read 4;
	now Char-D of Nadia is restoreletter;
	npcNadiaint-Read 5;
	now Char-E of Nadia is restoreletter;
	npcNadiaint-Read 6;
	now Char-F of Nadia is restoreletter;
	npcNadiaint-Read 7;
	now Char-G of Nadia is restoreletter;
	npcNadiaint-Read 8;
	now Char-H of Nadia is restoreletter;
	npcNadiaint-Read 9;
	now Char-I of Nadia is restoreletter;
	npcNadiaint-Read 10;
	now Char-J of Nadia is restoreletter;
	npcNadiaint-Read 11;
	now Char-K of Nadia is restoreletter;
	npcNadiaint-Read 12;
	now Char-L of Nadia is restoreletter;
	npcNadiaint-Read 13;
	now Char-M of Nadia is restoreletter;

to npcNadiaint-Read (c - a number):	[converts the indexed text back to regular text]
	now restoreletter is "0";
	if character number c in npcNadiaint is "0", now restoreletter is "0";
	if character number c in npcNadiaint is "1", now restoreletter is "1";
	if character number c in npcNadiaint is "2", now restoreletter is "2";
	if character number c in npcNadiaint is "3", now restoreletter is "3";
	if character number c in npcNadiaint is "4", now restoreletter is "4";
	if character number c in npcNadiaint is "5", now restoreletter is "5";
	if character number c in npcNadiaint is "6", now restoreletter is "6";
	if character number c in npcNadiaint is "7", now restoreletter is "7";
	if character number c in npcNadiaint is "8", now restoreletter is "8";
	if character number c in npcNadiaint is "9", now restoreletter is "9";


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
	say "COCK: Length: [cock length of player]   Width: [cock width of player][line break]";
	say "CUNT: Length: [cunt length of player]   Width: [cunt width of player][line break]";
	say "Weapon: [weapon object of player]   Frank M/F: [franksex]   Frank M/M: [frankmalesex][line break]";
	say "Hyper Squirrel: [if Hyper Squirrel Girl is resolved]1[otherwise]0[end if]  Needy Bunny: [if Needy Rabbit Girl is resolved]1[otherwise]0[end if][line break]";
	say "COLEEN: Location: [location of coleen]   Talk: [coleentalk]   Found: [coleenfound]   Collared: [coleencollared]   Alpha: [coleenalpha]   Slut: [coleenslut]   Spray: [coleenspray][line break]";
	say "HP of Dr Mouse: [hp of doctor mouse]   Candy: [coonstatus]   featunlock: [featunlock]   Butterfly: [butterflymagic][line break]";
	say "Catnum: [catnum]   Mateable: [mateable]   gryphoncomforted: [gryphoncomforted]   shiftable: [shiftable]   Medea: [medeaget][line break]";
	say "MTP: [mtp]   HYG: [hyg]   NES: [nes]   MTRP: [mtrp]   Boristalk: [boristalk]   Borisquest: [borisquest]   Alex: [progress of alex][line break]";
	say "Angiehappy: [angiehappy]   Angietalk: [angietalk]   Deerconsent: [deerconsent]   Deerhappy: [deerhappy][line break]";
	say "Mattcollection: [mattcollection][line break]";

carry out Trixiecheck2:
	say "Orthas: [hp of Orthas][line break]";
	say "Fancy: [fancyquest]   HP of Sven: [hp of sven]  Lust of Sven: [lust of sven][line break]";
	say "SARAH: Slut: [sarahslut]   Talk: [sarahtalk]   Pups: [sarahpups][line break]";
	say "VOIDED: 0   Alexbrunch: [alexbrunch]   Treasure found: [treasurefound]   Treasure map: [tmapfound][line break]";
	say "Sandra: [hp of Sandra]   Frank (libido): [libido of Frank]   Fang: [hp of Fang][line break]";
	say "Libido of Fang: [libido of Fang]   Pigfed: [pigfed]   Pigfucked: [pigfucked][line break]";
	say "PETS:[line break]";
	say "Cute crab: [if cute crab is tamed]1[otherwise]0[end if]   Exotic bird: [if exotic bird is tamed]1[otherwise]0[end if]   Felinoid: [if Felinoid companion is tamed]1[otherwise]0[end if][line break]";
	say "Bee girl: [hp of bee girl]   House cat: [if house cat is tamed]1[otherwise]0[end if]   Little fox: [if little fox is tamed]1[otherwise]0[end if][line break]";
	say "Skunk kit: [if skunk kit is tamed]1[otherwise]0[end if]   Helper dog: [if helper dog is tamed]1[otherwise]0[end if]   Rachel: [mousecurse][line break]";
	say "Rachel: [mousecurse]     Elijah: [hp of Elijah]    Elijah interactions: [npcEint][line break]";
	say "Latex Husky Mode: [if latexhuskymode is true]ON[otherwise]OFF[end if]     Parasite?: [if insectlarva is true]YES[otherwise]NO[end if][line break]";
	say "Leonard: [hp of Leonard]     Solstice: [hp of Solstice]     Ronda: [hp of Ronda][line break]";
	say "Skunkbeast Lord: [if skunkbeaststatus is 1]YES[otherwise]NO[end if]     Kitsune: [ktp][line break]";
	say "Diego: [if Diegochanged is 0]Male[otherwise if Diegochanged is 1]Herm[otherwise]Female[end if]     Eric: ???[line break]";

Story Skipper ends here.
