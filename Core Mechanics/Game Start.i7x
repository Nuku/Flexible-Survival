Version 1 of Game Start by Core Mechanics begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 0 - Variables for Settings

StartingGender is a number that varies.[@Tag:NotSaved] [player gender]
[StartingGender is usually 1.] [Male; See Core Mechanics/Presets.i7x]

MainStat is a number that varies.[@Tag:NotSaved] [main stat]
[MainStat is usually 1.] [Strength; See Core Mechanics/Presets.i7x]

ScenarioChosen is a number that varies.[@Tag:NotSaved] [game type]
[ScenarioChosen is usually 1.] [Bunker; See Core Mechanics/Presets.i7x]

HardMode is a truth state that varies. [hard mode on/off]
[HardMode is usually false.] [See Core Mechanics/Presets.i7x]

NoHealMode is a truth state that varies. [no-heal mode on/off]
[NoHealMode is usually false.] [See Core Mechanics/Presets.i7x]

BlindMode is a truth state that varies. [blind mode on/off]
[BlindMode is usually false.] [See Core Mechanics/Presets.i7x]

anallevel is a number that varies. [player preference for anal sex]
[anallevel is usually 2.] [normal; See Core Mechanics/Presets.i7x]

WSlevel is a number that varies. [player waterspots preference]
[WSlevel is usually 2.] [normal; See Core Mechanics/Presets.i7x]

vorelevel is a number that varies. [player vore preference]
[vorelevel is usually 2.] [normal; See Core Mechanics/Presets.i7x]

hvorelevel is a number that varies. [player hardvore preference]
[hvorelevel is usually 1.] [no hard vore; See Core Mechanics/Presets.i7x]

UBlevel is a number that varies. [player unbirthing preference]
[UBlevel is usually 2.] [normal; See Core Mechanics/Presets.i7x]

ovipreglevel is a number that varies. [player ovi-pregnancy preference]
[ovipreglevel is usually 2.] [normal; See Core Mechanics/Presets.i7x]

freefeatgeneral is a text that varies. [default starting general feat]
[freefeatgeneral is usually "Survivalist".] [See Core Mechanics/Presets.i7x]

freefeatfun is a text that varies. [default starting fun feat]
[freefeatfun is usually "Curious".] [See Core Mechanics/Presets.i7x]

waiterhater is a number that varies. [creates (and sets) flag for skipping many "wait for any key;"]

clearnomore is a number that varies. [creates (and sets) flag for skipping most (all?) clear the screen]

GenderLock is a number that varies. [locks gender according to player preferences]
[GenderLock is usually 1.] [See Core Mechanics/Presets.i7x]

Scenario is a text that varies. [chosen scenario]
Started is a number that varies.

RestoreMode is a truth state that varies. RestoreMode is usually false. [for restoring a save directly from the start menu]
RestoreSide is a number that varies. [default graphics window side for restore using default settings]

Part 1 - Game Start Autofires

[moved to the end of the story.ni so the other when play begins come first]

Part 2 - Start Menu Functions

Chapter 1 - Overview Menu

To regularstart: [normal start method]
	if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
	follow the starting stats rule;
	follow the starting gender rule;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		clear the screen;
		say "[bold type]Character Creation:[roman type][line break]";
		say "(1) [link]Name[as]1[end link] - [bold type][name of Player][roman type][line break]";
		say "(2) [link]Character Customization[as]2[end link][line break]";
		say "(3) [link]Main Stat[as]3[end link] - [bold type][if MainStat is 1]Strength[else if MainStat is 2]Dexterity[else if MainStat is 3]Stamina[else if MainStat is 4]Charisma[else if MainStat is 5]Intelligence[else if MainStat is 6]Perception[else]Random[end if][roman type][line break]";
		say "(4) [link]Main Feat[as]4[end link] - [bold type][freefeatgeneral][roman type][line break]";
		say "(5) [link]Fun Feat[as]5[end link] - [bold type][freefeatfun][roman type][line break]";
		say "[line break]";
		say "[bold type]Gameplay Options:[roman type][line break]";
		say "(6) [link]Game Scenario[as]6[end link] - [bold type][scenario][roman type][line break]";
		say "(7) [link]Difficulty Modes[as]7[end link] - [if HardMode is false and NoHealMode is false and BlindMode is false][bold type]Normal[roman type][else if HardMode is true][bold type]Hard[roman type][end if][if HardMode is true and ( NoHealMode is true or BlindMode is true )] | [end if][if NoHealMode is true][bold type]No-Heal[roman type][end if][if NoHealMode is true and BlindMode is true] | [end if][if BlindMode is true][bold type]Blind[roman type][end if][line break]";
		say "(8) [link]Content Restrictions[as]8[end link][line break]";
		say "[line break]";
		say "[bold type]Display Options:[roman type][line break]";
		say "(9) [link]Hyperlinks[as]9[end link] - [bold type][if hypernull is 0]On[else if hypernull is 1]Off[end if][roman type][line break]";
		say "(10) [link]Waiting for Input[as]10[end link] - [bold type][if waiterhater is 0]On[else if waiterhater is 1]Off[end if][roman type][line break]";
		say "(11) [link]Screen Clearing[as]11[end link] - [bold type][if clearnomore is 0]On[else if clearnomore is 1]Off[end if][roman type][line break]";
		say "(12) [link]Graphics[as]12[end link] - [bold type][if NewGraphicsInteger is 1]Inline[else if NewGraphicsInteger is 2]Side-Window[else if NewGraphicsInteger is 0]Disabled[end if][roman type][line break]";
		say "(13) [link]Inventory Columns[as]13[end link] - [bold type][invcolumns][roman type][line break]";
		say "[line break]";
		say "[bold type]Saved Games:[roman type][line break]";
		say "(97) [link]Restore Using Default Graphics[as]97[end link] (Right)[line break]";
		say "(98) [link]Restore Using Default Graphics[as]98[end link] (Left)[line break]";
		say "(99) [link]Restore A Save[as]99[end link][line break]";
		say "[line break]";
		say "(0) [link]Start Game[as]0[end link][line break]";
		while 1 is 1:
			say "(0-13)> [run paragraph on]";
			get a number;
			if ( calcnumber >= 0 and calcnumber <= 13 ) or ( calcnumber >= 97 and calcnumber <= 99 ):
				break;
			else:
				say "Invalid Entry. Pick from 0 to 13 or 97 to 99.";
		LineBreak;
		if calcnumber is:
			-- 1:
				playernaming;
			-- 2:
				newplayercustomizationmenu;
			-- 3:
				say "[gsopt_1]"; [Main Stat]
			-- 4:
				startFeatget;
			-- 5:
				startFunFeatget;
			-- 6:
				say "[gsopt_3]"; [Game Scenario]
			-- 7:
				say "[gsopt_4]"; [Difficulty Modes]
			-- 8:
				contentrestrictionmenu;
			-- 9:
				if hypernull is 0:
					now hypernull is 1;
				else:
					now hypernull is 0;
			-- 10:
				if waiterhater is 0:
					now waiterhater is 1;
				else:
					now waiterhater is 0;
			-- 11:
				if clearnomore is 0:
					now clearnomore is 1;
				else:
					now clearnomore is 0;
			-- 12:
				if NewGraphicsInteger is 2: [side window]
					now graphics is false;
					now NewGraphics is false;
					now NewGraphicsInteger is 0; [off]
				else if NewGraphicsInteger is 0: [off]
					now graphics is true;
					now NewGraphics is true;
					now NewGraphicsInteger is 1; [inline]
				else if NewGraphicsInteger is 1: [inline]
					now graphics is true; [technically not necessary, but nice to have for edge cases]
					now NewGraphics is true;
					now NewGraphicsInteger is 2; [side window]
			-- 13:
				if invcolumns > 0 and invcolumns < 4:
					increase invcolumns by 1;
				else:
					now invcolumns is 1;
			-- 97:
				say "Confirm restore?";
				if Player consents:
					LineBreak;
					now RestoreMode is true;
					now RestoreSide is 1;
					say "[silent_start]";
					now Trixieexit is 1;
					if RestoreMode is true:
						now RestoreMode is false;
						now RestoreSide is 0;
						try restoring the game;
						if MaxHP of Player is 0:
							try restarting the game;
			-- 98:
				say "Confirm restore?";
				if Player consents:
					LineBreak;
					now RestoreMode is true;
					now RestoreSide is 2;
					say "[silent_start]";
					now Trixieexit is 1;
					if RestoreMode is true:
						now RestoreMode is false;
						now RestoreSide is 0;
						try restoring the game;
						if MaxHP of Player is 0:
							try restarting the game;
			-- 99:
				say "Confirm restore?";
				if Player consents:
					LineBreak;
					now RestoreMode is true;
					now RestoreSide is 0;
					say "[silent_start]";
					now Trixieexit is 1;
					if RestoreMode is true:
						now RestoreMode is false;
						now RestoreSide is 0;
						try restoring the game;
						if MaxHP of Player is 0:
							try restarting the game;
			-- 0:
				say "Confirm game start?";
				if Player consents:
					LineBreak;
					if Name of Player is not "DebugTesting": [nullifies Human new infection parts until the new system goes live]
						now HeadName of Player is "";
						now TorsoName of Player is "";
						now BackName of Player is "";
						now ArmsName of Player is "";
						now LegsName of Player is "";
						now CuntName of Player is "";
					say "[gsopt_start]";
					now Trixieexit is 1;

This is the starting gender rule:
	[default male gender]
	now Cock Count of Player is 1;
	now Cock Girth of Player is 3;
	now Cock Length of Player is 6;
	now Ball Size of Player is 3;
	now Nipple Count of Player is 2;
	now Breast Size of Player is 0;
	remove womanhood from Player;
	rule succeeds.

to say gsopt_start:
	now started is 1;
	[old gender setting start, use until the new system becomes active]
	gs_stats;
	now Morale of Player is Charisma of Player plus Perception of Player;
	now HP of Player is Stamina of Player times two;
	increase HP of Player by 5;
	now MaxHP of Player is HP of Player;
	now the Capacity of Player is five times Strength of Player;
	now humanity of Player is 100;
	if GenderLock > 1, startgenderlockget;
	startgenderget;
	follow the SetPlayerPronouns rule;
	startfreefeats;
	startcreatureban;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	sort Table of Random Critters in lev order;
	if scenario is "Caught Outside":	[processes infection data first, then clears so intro text can remain intact]
		weakrandominfect;
		weakrandominfect;
		weakrandominfect;
		weakrandominfect;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	[Code for letting player select graphics window size]
	if NewGraphics is true:
		say "[bold type]Graphic Window Position and Proportion[roman type][line break]";
		say "You have enabled the new graphics window. This will be on the selected side of your screen and will always take up a proportion of the main screen.";
		say "Please choose the position value now ([link]0 - right side[as]0[end link], [link]1 - left side[as]1[end link], [link]2 - above[as]2[end link], [link]3 - below[as]3[end link]).";
		while 1 is 1:
			say "(0-3)> [run paragraph on]";
			get a number;
			if calcnumber > -1 and calcnumber < 4:
				break;
			else:
				say "Invalid Entry. Please enter a number between 0 and 3.";
		LineBreak;
		now NewGraphicsPosition is calcnumber;
		say "Please choose the proportion value now. Enter a number between 5 - 90. This will represent the percentage of your main screen that the graphics side-window will take up. We recommend somewhere around 30.";
		while 1 is 1:
			say "(5-90)> [run paragraph on]";
			get a number;
			if calcnumber > 4 and calcnumber < 91:
				break;
			else:
				say "Invalid Entry. Please enter a number between 5 and 90.";
		LineBreak;
		now NewGraphicsRatio is calcnumber;
		now the graphics window proportion is NewGraphicsRatio;
		if NewGraphicsPosition is:
			-- 0:
				now graphics window position is g-right;
			-- 1:
				now graphics window position is g-left;
			-- 2:
				now graphics window position is g-above;
			-- 3:
				now graphics window position is g-below;
		reconstruct graphics window;
		clear the screen;
	say "Want more details on the game and updates? ----- [bold type]https://blog.flexiblesurvival.com[roman type]  -----[line break][line break]";
	WaitLineBreak;
	if scenario is "Bunker":
		ItemGain black t-shirt by 1 silently;
		now black t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
		ItemGain Broken Smartphone by 1 silently;
	else if scenario is "Caught Outside":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain black jeans by 1 silently;
		now black jeans are equipped;
		ItemGain Broken Smartphone by 1 silently;
	else if scenario is "Rescuer Stranded":
		ItemGain camo shirt by 1 silently;
		now camo shirt is equipped;
		ItemGain green camo pants by 1 silently;
		now green camo pants are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
		ItemGain Broken Smartphone by 1 silently;
	else if scenario is "Forgotten":
		ItemGain blue sleeveless shirt by 1 silently;
		now blue sleeveless shirt is equipped;
		ItemGain ripped black jeans by 1 silently;
		now ripped black jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
		ItemGain Broken Smartphone by 1 silently;
	else if scenario is "Researcher":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
		ItemGain Broken Smartphone by 1 silently;
	if scenario is not "Bunker":
		if scenario is "Caught Outside":
			add "Spartan Diet" to feats of Player;
		else if scenario is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
		else if scenario is "Forgotten":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 600;
			extend game by 240;
	if HardMode is true: [Hard mode alteration]
		increase score by 300;
	if NoHealMode is true: [No-heal mode alteration]
		increase score by 150;
	if BlindMode is true: [Blind mode alteration]
		increase score by 100;
	if scenario is "Bunker":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. You managed to escape to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	else if scenario is "Caught Outside":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. Some fought back. You tried to resist, but did not escape unscathed. In the end, you managed to get to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	else if scenario is "Rescuer Stranded":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. There were growing reports of monsters and freaks spreading across the city, attacking the citizens. You had been part of the military's fast response team sent in just hours after the outbreak. Your initial task was reconnaissance with the hopes of setting up a rally point for helicopter evacuation of any non-infected survivors. You were sent in with little preparation and no idea at all of what you were truly in for.";
		say "     Your team was moving on foot through the streets of downtown when you were set upon by creatures out of a pervert's nightmare. All discipline was lost as your team disintegrated into panic and fled unthinkingly into the city, pursued by the nightmares...";
		say "     You awoke in what appears to be a disused bunker. You have no idea how you even got here or how long you've been out of it, but you are uninfected. In your panicked flight, you lost all of your supplies. No food. No water. No weapons. No radio. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. Heaven only knows what awaits you outside, but you have to find a way back.";
	else if scenario is "Forgotten":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. You managed to escape to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     Terrified, you've waited in the dark, subsisting on your supplies for as long as you've been able. While the noise of chaos died away for a long time, they picked up again with the addition of explosions and gunfire. Fearing to exit, you remained in the safety of the bunker until it was peaceful again. You wish you could continue to remain hidden, but you've finished off the very last of your supplies and you'll have to risk venturing out with only your [bold type]backpack[roman type], and your [bold type]watch[roman type]. Still... how bad could it be?";
	else if scenario is "Researcher":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go. Thankfully, you weren't in one of the outbreak zones when it happened, but your life's been thrown upside down like everyone else's by the ensuing chaos. Seeing an opportunity to help, or at least make some money off the situation, you agreed to enter one of the hotspots through a military contractor. The city's been cordoned off by the military while they gather intel and plan, giving you some time to gather samples and investigate what's happening.";
		say "     The helicopter brought you into the devastated city. Ruin and strange creatures milled about beneath you as you flew over at high speed. This place has been written off as a loss, but there was rumor they'd take it back. You only have so much time to investigate, and you plan to make the most of it.";
		say "     You're let down beside an old bunker. It would serve as your base of operations, and would be where they'd pick you up when it was over. You should be scared, but you just can't seem to muster that sensation. They gave you booster shots against the nanites as well as a few supplies and a promise of others joining you soon. You know what you are doing. They will be so proud of what you find. Maybe you can figure out a way to stop this from happening again in other cities.";
	else if scenario is "Running with Wolves":
		say "     Hearing a massive racket, you find yourself waking up next to a fallen tree in your bed. It completely destroyed your house while you slept, thankfully you find that you are completely unharmed despite what happened. You have been living in this city since you were born, but this is the first time your house has been totaled by a fallen tree. You find that all the places where you store your clothes are blocked or totally smashed through leaving you with only your pajamas and what was hanging nearby that also was miraculously spared that you immediately grab and put on - your backpack and the watch inside of it. Climbing out of the wreckage of your former home and walking out onto the sidewalk in your bare feet, you find that your home isn't the only one that was ruined by tree damage. Looking around you notice that in the space of a single night huge trees had grown through many of the houses, lawns, and even in the middle of the street. As you stand awestruck by the incredibly surreal sight of a forest having appeared from out of nowhere, you are brought back to your senses by many of your neighbors coming from their houses and their hysterical screaming about the damages.";
		say "     And then it happens, the sound of howling echoing through the forest air. At first you wonder if someone's dog got loose, but then you hear the sound of many paws and growls letting you know that these aren't just any ordinary dogs. A pack of wolves running full force ambushes you and your neighbors, your mind temporarily blanks out. Snapping back to reality, you find that a wolf has jumped at you, biting your shoulder and using its claws to shred your pajama top. As you fall over shaking your arm to try and dislodge it, the wolf lets go of your shoulder and uses its teeth to catch your pants and underwear ripping them to shreds with its claws.";
		WaitLineBreak;
		if MaleList is warded or MaleList is banned:
			say "     You find that your shoulder is healing itself, that being a cold comfort, being that you have fallen on your ass in terror as the wolf that shredded your clothes stalks closer, out of the corner of your eye you notice that one of your neighbors is getting their head wedged into the cunt of a nearby wolf, being transformed into looking just like the wolf on top of them. Your eyes move forwards towards the wolf that is now standing above you, its cunt slick in ready anticipation, obviously looking forward to doing to you the same as what was done to your neighbor. It puts its paws around your head, brutally humping your face, practically jilling itself with your nose and mouth, this activity doesn't last long before the wolf reaches its climax, spraying the inside of your nose holes and all over your front with her girlcum.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Feral Wolf Bitch";
		else:
			say "     You find your shoulder is rapidly mending itself, one good thing at least, with you being bare-ass nude and prostrating in hopes that you won't be totally ripped to shreds like your pajamas were, offhandedly noticing out of the side of your vision one of your neighbors getting a wolf's red rocket shoved into their ass. You watch in horror as the neighbor's body starts to change to look the same as the wolf that is fucking them, however now they seem to be enjoying themselves. As you return your eyes to look at the wolf that was assaulting you, you find that it is now standing over you, its cock completely at the ready, its length menacing you. The wolf wastes no time in shoving its dick into your mouth and roughly face fucking you for all your worth, however it doesn't take all that long before it begins to shudder as it climaxes and sprays some of its seed down your throat, ungently pulling itself out and covering your back and face with its semen.";
			CreatureSexAftermath "Player" receives "OralCock" from "Feral Wolf Male";
		say "     Realizing that what happened with your neighbor is going to happen to you, you get up and run for all your worth, heading for anywhere but here, not even looking back to see if you are being chased. After running what feels to be a marathon, avoiding and escaping from the various mutants, you find yourself in an alley near a library. As you start to recall something, your thoughts are interrupted by a massive pain resounding throughout your entire body causing you to black out. Waking up, you find that not much time has passed, you try to stand up only to find that your legs no longer work the same way that they did before you passed out. Looking back you find that while you slept your body had changed into that of a fluffy feral wolf, all the way from your paws down to the tip of your tail; looks like you are going to have to get used to walking on all fours from now on. Just to be sure you pad over to a nearby puddle and take a look at the surface, you find that your face is that of a feral wolf with matching eyes and a wolfish tongue to go with it.";
		WaitLineBreak;
		say "     Looking up from the puddle you realize that you managed to find your way to what you think will be safety, an old bunker located under a library. Once upon a time it was an abbey but was renovated into a library. You remember seeing that stupid bunker sign for years, you never thought it would actually come in handy, but now that the shit hit the fan, you find that you are actually happy, overjoyed even to see that sign and the safety it promotes. You make your way up to the library entrance, almost the happiest you've ever been as you open one of the dual doors and enter. As you enter the library, you find that it looks very much intact, no signs of damage or habitation by crazed infected. Moving inwards and taking a few steps, you notice a shadowy figure lurking amidst the bookshelves. You can feel what could only be described as terror charging down your spine as you realize that it is a feral wolf much like the ones you just got done fleeing from. Instinct taking over, your legs moving to the ready, your back and tail up, your face twisted as you growl. Your opponent responds in kind, growling and barking in much the same manner, their stance showing they have no intention of backing down or retreating.";
		say "     Both you and the stranger start circling each other, sizing each other up and looking for potential openings. The tension is so thick between the two of you, it could be cut with a knife. Any mistake could lead to being completely defeated, with that in mind, you meet them head on. A fury of claws and teeth, scratching and biting, tackles and barrel rolls, neither side giving an inch, as both of you battle for the bunker. Eventually though, one must win, and the other will have lost.";
		say "     [bold type]By the time the dust clears, who has won?[roman type][line break]";
		LineBreak;
		say "     [link](1)[as]1[end link] - You lost completely. The wolf is now your Alpha.";
		say "     [link](2)[as]2[end link] - You won. Barely. The wolf answers to you. At least for now...";
		say "     [link](3)[as]3[end link] - Your victory was convincing. The wolf must accept its place as your Omega.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)> [run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link], [link]2[end link], or [link]3[end link].";
		LineBreak;
		if calcnumber is 1: [Alpha Fang]
			now HP of Fang is 4;
		else if calcnumber is 2: [Vanilla Fang]
			now HP of Fang is 1;
		else if calcnumber is 3: [Omega Fang]
			now HP of Fang is 2;
		say "     [bold type]It is only after the battle is over that you have time to see what sex they are. After a quick look you see that they are...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Male.";
		say "     ([link]N[as]n[end link]) - Female.";
		if Player consents: [Male Fang]
			LineBreak;
			now Fang is Male;
			if HP of Fang is 4: [Alpha]
				increase ScaleValue of Fang by 1;
				increase Cock Length of Fang by 2;
				increase Ball Size of Fang by 1;
				increase Mouth Length of Fang by 2;
				increase Tongue Length of Fang by 2;
			else if HP of Fang is 2: [Omega]
				decrease Cock Length of Fang by 2;
				decrease Mouth Length of Fang by 2;
				decrease Tongue Length of Fang by 2;
			SetMalePronouns for Fang;
		else: [Female Fang]
			LineBreak;
			now Fang is Female;
			if HP of Fang is 4: [Alpha]
				increase ScaleValue of Fang by 1;
				now Androginity of Fang is 6;
				now Cock Count of Fang is 0;
				now Cock Girth of Fang is 0;
				now Cock Length of Fang is 0;
				now Ball Count of Fang is 0;
				now Ball Size of Fang is 0;
				now Cunt Count of Fang is 1;
				now Cunt Depth of Fang is 12;
				now Cunt Tightness of Fang is 2;
				now Clit Size of Fang is 4;
				increase Mouth Length of Fang by 2;
				increase Tongue Length of Fang by 2;
				now Virgin of Fang is false;
				now PenileVirgin of Fang is true;
			else if HP of Fang is 1: [Vanilla]
				now Androginity of Fang is 6;
				now Cock Count of Fang is 0;
				now Cock Girth of Fang is 0;
				now Cock Length of Fang is 0;
				now Ball Count of Fang is 0;
				now Ball Size of Fang is 0;
				now Cunt Count of Fang is 1;
				now Cunt Depth of Fang is 12;
				now Cunt Tightness of Fang is 2;
				now Clit Size of Fang is 3;
				now Virgin of Fang is false;
				now PenileVirgin of Fang is true;
			else if HP of Fang is 2: [Omega]
				decrease ScaleValue of Fang by 1;
				now Androginity of Fang is 6;
				now Cock Count of Fang is 0;
				now Cock Girth of Fang is 0;
				now Cock Length of Fang is 0;
				now Ball Count of Fang is 0;
				now Ball Size of Fang is 0;
				now Cunt Count of Fang is 1;
				now Cunt Depth of Fang is 12;
				now Cunt Tightness of Fang is 3;
				now Clit Size of Fang is 2;
				decrease Mouth Length of Fang by 2;
				decrease Tongue Length of Fang by 2;
				now Virgin of Fang is false;
				now PenileVirgin of Fang is true;
			SetFemalePronouns for Fang;
		say "     [bold type]Is the victory consummated with sex?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents: [Sex]
			LineBreak;
			if HP of Fang is 4: [Alpha Fang]
				if Fang is Male: [Male Fang]
					if Player is male: [Anal]
						say "     Having been completely defeated, you are now at the mercy of the other wolf. You can barely stand, let alone struggle after running the gauntlet and getting beat down by the final boss. Your opponent realizes this as well, looking you over while deciding what to do. He seems to come to a conclusion as you notice his cock slip from its sheath, possibly from his building arousal at having completely broken a potential rival. The wolf having beaten you moves around to your behind and lifts it using his paws, taking just a moment to admire it before starting to hump your ass with gusto, pushing his dick into your sphincter as you partially let out a squeak in response to your anus getting violated.";
						say "     After a few minutes getting your ass pounded, you could almost swear his dick is getting bigger, his balls feel like they are also fuller as they are being bounced onto your ass, and his body just feels like it's overall getting heavier on your back. Your bestial lover now completely lost in his fervor from fucking your ass begins to bite down on the scruff of your neck growling a single word, 'Mine.' As he continues, his tempo begins to become more erratic, his breath hot and heavy, he pushes in hard one final time howling as he does so. Having knotted your ass, he lifts his leg over to assume the traditional knotty canine stance, his balls touching the base of your tail, as he empties his newly expanded balls into your ass. You however are pretty out of it having your own orgasm spilling forth and taking the last bit of energy and stamina you didn't even know you had left. Even after his climax finishes and his cock slips out, you end up collapsing, unable to move for a while.";
						NPCSexAftermath Player receives "AssFuck" from Fang;
					else if Player is female: [Vaginal]
						say "     You find yourself completely spent, your body battered from running and getting beaten so many times, and your mental stress adding further to your exhaustion, effectively immobilizing you. Your opponent having proven his superiority as the victor, wonders what to do as he examines you. He circles you while sniffing here and there, seemingly finally making his choice, he uses his paws to roll you until you lay against the side of a nearby bookcase on your back, momentarily taking in the sight of your vulnerable body while reveling in his victory. Using his nose to open your pussy, he takes a huge whiff of your feminine scent, his cock slides from its sheath as he takes his mouth from your cunt and lightly wraps it around your neck in a show of dominance, moving his hips closer and angling his dick until it enters, pushing until his balls bump against your ass[if virgin of player is true], causing you to flinch as your virginity is taken from you[end if].";
						say "     He stops momentarily, takes his mouth off your neck, and instead looks into your eyes with his beautiful yellow eyes and uses his paws to hold onto the side of the bookcase and to hold himself steady as he pulls his hips back until only the tip of his cock remains inside your cunt, pre dribbling onto the walls of your vagina, he begins to thrust in earnest, his balls now making an audible smack from hitting your ass as he begins a steady tempo. You could almost swear his dick is getting bigger, his balls feel like they are also fuller as they bounce against your ass, and his body feels like it's overall getting heavier as he pins you against the side of the bookshelf. Your bestial lover now completely lost in his fervor from fucking your vagina, firmly growls a single word, 'Mine.'";
						say "     Minutes pass by as he continues thrusting into you. As things continue, his thrusts begin to become erratic, almost desperate, until he grunts and thrusts one final time, penetrating all the way to the hilt and knotting the both of you together, his large balls pulling upwards as he unloads into your womanhood filling your with as much cream as his newly enlarged balls can produce. After what feels like an eternity his knot finally softens enough for him to pull out. However your alpha isn't done yet, he hold one paw on the bookcase to hold himself steady and uses his other to do a makeshift masturbatory movement adding just enough stimulation to cause a minor orgasm causing his balls to produce enough to paint your stomach with his rich seed, marking you as his.";
						NPCSexAftermath Player receives "PussyFuck" from Fang;
				else if Fang is Female: [Female Fang]
					if Player is male: [Face Sitting]
						say "     Your opponent claiming victory, silently looks you over, thinking what to do from here. You however are completely unable to move after getting your ass handed to you, leaving yourself vulnerable to whatever whims that your opponent may have for you. Finally making up her mind she grunts as she uses her paws to roll your unresponsive body onto your back, taking a moment to look you over fully. She then pads her way over you until your muzzle is level with her pussy, hesitating for a moment she then jams her cunt down. Now using your muzzle as a makeshift dildo, slightly gasping as she uses her paws to angle your head in just the right way as to hit her G-spot. You are currently a passenger in your own body, unable to move, unable to speak, only able to wait and hope that the wolf on top of you remembers that living things need to breathe eventually. Which thankfully she does, as she momentarily lifts herself up off your muzzle and lowers her head growling a single word into your ear 'Mine.'";
						say "     Now no longer having your vision obscured by pussy, you breathe once more and notice that her body has grown larger, her eight breasts seem fuller, and her thighs seem thicker, more built for child birth and dominating others through snu snu. After making her claim, she returns your muzzle into her pussy and starts really going at it, desperately trying to bring herself to climax, in which very soon she does arrive, spraying her girlcum all over your face and body, covering you in her scent and marking you as hers. You still can't move though and now that you are finally done, your last remains of energy leave you as your body finally says it doesn't want do any more, and you pass out for a while.";
						NPCSexAftermath Player receives "OralPussy" from Fang;
					else if Player is female: [Tribbing]
						say "     Having been bested in battle in addition to running the gauntlet getting to the library, you are completely wiped, leaving you as silly putty in your opponent's paws. She rolls you onto your back and examines you, admiring the spoils of her victory. As if coming to a conclusion, she moves her body over you until she is practically hugging you using all four of her paws. Your once-opponent, now looks you in the eyes, her bright yellow eyes looking into yours, her nose now touching yours, her breath warming your mouth. Despite her blatant invasion of your space, you don't have the strength to do anything about it, not even able to move your lips to speak. As if understanding your current situation, she uses one of her front paws to open your maw just enough for her to lock muzzles with you, giving a rather passionate French kiss. As she does this, she also puts her paw back where it was and moves her hips until her second pair of lips start kissing yours. You can only moan into her maw as she starts to gently move her hips, humping you and Frenching your cunts together.";
						say "     Slowly, she builds the tempo, girations speeding up as her tongue wrestles your own. Even while your pleasure is building you notice that she seems to be changing, her body has grown larger, her chest that holds her eight nipples seem stronger, and her thighs seem thicker, more built for child birth and dominating others. As you notice this, she pulls her muzzle from yours and softly growls a single word, 'Mine'. She then pushes your head to expose your neck and gently wraps her mouth around it to bring the point across, even if you could still move, you wouldn't be able to contest the issue. She then removes her mouth from your neck and back into Frenching you, satisfied at your lack of argument, still humping cunt-to-cunt, in an effort to bring you both to a climax. This stretches on for minutes until her movements become erratic and her breath becomes heavy, her body starts to quake, until she begins to hump erratically, also bringing you to orgasm as well. Both of you launch your fluids all over your body, claiming you as hers, unable to move, you lay there as she cuddles you, also getting the shared fluids onto her.";
			else if HP of Fang is 1: [Vanilla Fang]
				if Fang is Male: [Male Fang]
					if Player is male: [Anal]
						say "     Both having battled your hardest, it seemed like the struggle would never end, but somehow you manage to win, even if just barely so. As you look over your bruised rival, you can feel your canine instincts crying out for you to show this male in your territory who is boss and claim what is due. Standing over him, your mind paints a vivid picture on what your body desires, your shaft slipping from it's sheath, now menacing him with a glimpse of the anal ravaging to come. Having had your mind made up for you by your inner beast, you maneuver your conquest until his body is resting on the stairs, leaving his belly fur and crotch exposed, at just the right height for what you have in mind. Gathering saliva into your muzzle, you spit onto your dick and move your body on top of his, lightly grasping his exposed neck with your maw while hugging him using your front paws and aiming your cock towards his vulnerable tail star.";
						say "     Lightly you probe his depths with your dick, slowly impaling him, sliding the tip side to side and retreating in order to stir the saliva into his insides as you attempt to work your way deeper, until you finally hit the base of his tail with your balls. Having penetrated to the hilt, you begin to pull back and thrust in, slowly speeding up into a stable tempo causing an audible gasp from your until then silent partner. Your balls now making an audible yet satisfying smack as they hit your partners ass, as time flies by you find that you are getting close. You release his neck as you begin to howl into the emptiness of the library as you climax, releasing into his ass, knotting him as he also begins to climax in response, covering his belly and chest with his own seed. You end up slumping on top of him and pinning him to the stairs, smearing his cream all over yourself as well, now breathing heavily as you both slide down, landing on your sides. Totally drained, you lay there for a while, resting from the exertion.";
						NPCSexAftermath Fang receives "AssFuck" from Player;
					else if Player is female:
						say "     Although the battle was fierce, you managed to keep yourself from falling apart while your opponent slumps over in exhaustion and is no longer able to battle. Keeping your poker face up, you raise a howl of victory and move in to examine your prone rival. Sniffing him here and there, your mind being spurred on by your canine instincts, drift towards ways that you could dominate the vulnerable rival in front of you. After having a moment of thinking how fun it would be to mess with him, you roll him on to his back. Taking a moment to admire his soft underfur, finding yourself unable to resist lowering your nose and inhaling his scent. Being down there already, you start to lick his sheath and balls attempting to bring his dick from its furry home so you can begin in earnest. After a bit of licking and teasing his shaft finally shows itself, you don't waste any time using your saliva and tongue to coat it thoroughly making sure that its nice and moist for the ride ahead.";
						say "     After making absolutely sure that it is lubed to perfection, you move your body over him and position yourself to where you are resting your cunt on top of his dick without actually reaching the tip. Starting out slowly, you begin to hump his dick, frotting your cookie with the side of his rocket, building in momentum and tempo. Hitting a stable pace, you take your eyes off your two sexes in their rendition of hot dogging and instead look into the luminous yellow eyes of your captive audience. Watching as his eyes begin to well up in frustration as his canine instincts cause him to unintentionally hump forwards. Noticing his movements, you grind your pussy down the side of his shaft in order to both add to the tension and give yourself more pleasure. After minutes roll by of this you both start shuddering, hips locking up, two kinds of cum launching themselves on to your underwolf, bathing him in both your scents, draining you of the last of your energy as you slump down on top of him, covering yourself in the shared bodily fluids.";
				else if Fang is Female: [Female Fang]
					if Player is male: [Blowjob]
						say "     With you emerging as the victor, you sigh in relief as you examine your fainted rival, thinking about what you want to do with her. As you look her over, different scenarios play through your mind, causing your cock to become partially erect as it slips from your sheath. Coming to a conclusion, you roll her away from the desk and onto her back, four limbs spread open revealing her soft underfur and feminine bits to you. The feeling of being rolled seems to have brought her back to the waking world, as her eyes start to open, you however are one step ahead of her, being that you already have your muzzle lightly locked around her neck in a display of dominance. Seeing this, she realizes that she doesn't have much choice in the matter and abides by your whims, for now anyway. Now that that is sorted out, you move yourself until your hind legs and flaccid cock is less than an inch from her face as you look back at her from in between your legs, she looks back up at you, slightly irritated, but begins to lick your exposed shaft anyway.";
						say "     She moves her tongue this way and that, in an attempt to cover everything in saliva, after minutes of trying to work with her current position, she pushes you out of the way, gets up, and moves over to lay down on the stairs with her head resting on the first step, giving you an expectant look as she lays there. Getting the hint, you also pad your way to the stairs, moving your body over hers while resting your forepaws further up the stairs. Once you are in position, the wolfess uses her paws to move your shaft towards her maw where she continues her earlier work of covering your flaccid shaft in her saliva while moving her head forwards and back, adding friction into the mix in an effort to bring you to orgasm. Feeling how much work she is putting into this, you bend your hind legs and attempt to slide your shaft across her tongue, as the motions of a face humping begin in earnest as you attempt to get off as fast as possible in order to keep the wolf under you from choking.";
						say "     Being that you were already wound up, it isn't long until a feeling hits, as you begin to tense, your balls rising, as cream flows from your knotting shaft into the welcoming embrace of your partner's warm lips as she endeavors to swallow every drop. Minutes go by as you continue to ejaculate, your head feeling like it's floating from the force of the prolonged orgasm quaking through your body, after a few minutes you feel a soft tapping on your side, you jolt to your senses and remove your knotty shaft from your under-wolf's muzzle, spraying her outstretched body with your seed, marking her with your scent as well. Finally managing to come down from your orgasmic high, you lay down next to her, grasping her side as you both rest from the exertion.";
						NPCSexAftermath Fang receives "OralCock" from Player;
					else if Player is female: [Face Sitting]
						say "     The both of you, having taken your battle down to the wire, simultaneously breathing heavily, stare each other down, waiting for any opening to present itself. During the fight you both had knocked into the front desk sending a pen into a dangerous balancing act that has continued until this very moment, when it drops to the floor making just enough of a clatter to momentarily cause your opponent to look in fear of getting flanked. You however don't miss a beat as you run into a tackle, flipping her with your body momentum, and finishing by grasping her neck with your teeth light enough to come as a warning. Now on top of her, the battle has concluded with you as the victor, your instincts blaring at full blast, telling you to make this defeated foe yours.";
						say "     You momentarily look her over wondering just what to do, getting an idea, you begin to lick her muzzle, at first just to get her ready for what is coming next, but you end up getting into it so far as to get lulled into French kissing with a rather heated tongue wrestling match. While neither of you actually win at tongue wrestling, you find yourself getting wet, dripping fluids from your cunt onto hers. Even though you find yourself wanting to continue kissing, you really must be getting on with the main event, moving yourself until your hips, and by extension your cunt are hovering over their muzzle. At first they think you want them to use their tongue, licking you grooves and probing your crannies, getting you ready enough for whatever kinky play they think you may have in mind, as they stop and stare with their luminous yellow eyes in anticipation.";
						say "     You don't leave her in suspense any longer as you shove your hips down and begin fucking yourself wildly with her muzzle, being as ready and worked up as you are, you don't last long. Feeling your impending orgasm, you spin yourself on all fours until your girl cum trajectory is aimed at your exposed partner's belly fur, swirling the inside of your cunt with her muzzle as well, acting as the last straw as you lift your hips up and climax sending your fluids all over her exposed body, bathing her with your scent. Having brought yourself to a smashing orgasm and claimed a rather irritated beta in the process, you lay down next to her, resting for the moment.";
						NPCSexAftermath Fang receives "OralPussy" from Player;
			else if HP of Fang is 2: [Omega Fang]
				if Fang is Male: [Male Fang]
					if Player is male: [Frotting]
						say "     Having dominated your rival, you wrap him in your embrace while peering deep into his beautiful luminous yellow eyes as your bodies rub against each other. His face the very picture of confusion as he returns your hug in kind, his tail slowly starting to wag from enjoyment in spite of the outcome from the earlier battle. Minutes pass as the pieces inside your mind fit together into a plan for how you wanted this to go, said conclusion spurs you into sliding your muzzle over his, leading into a passionate kiss, your saliva covered tongue moving itself around on the inside of his mouth, tasting his own saliva and mixing the two as you move both of your paw-hands up to your entwined muzzles. You move your muzzle from his taking a bit of combined saliva with you, allowing it to dribble onto your waiting paw-hands that you move downwards to begin to slather the two sheaths and pairs of balls, causing two canine cocks to show themselves as you inch slowly upwards slathering them both in saliva until you feel satisfied enough, returning into the embrace and sandwiching the twin erections between your furry bodies as you and he resume locking muzzles.";
						say "     After a moment or three of making out, you decide its time to start the real fun and begin making humping motions with your hips, grinding you cock against his, your partner getting the hint, begins to return the motion in kind, creating the sounds of sloppy wet sex if anyone else were around to hear it. Minutes pass by in a blur as the passionate coupling continues, you can feel yourself getting close as you speed up the tempo of your humping as your partner also speeds up, it isn't long before you both tense up as two loads are released, hitting both of your entwined muzzles with cream as you both snuggle and bask in the afterglow.";
					else if Player is female: [69]
						say "     After the chaotic scuffle of limbs, paws, claws, and fangs, you find that when the world finally stops spinning that you are standing on all four paws with your opponent laying on his back underneath you. Thinking that not only would sitting on him be a good way to stop him from attempting round two, but his soft fluffy fur would also be a really comfortable way to rest from all the exertion from the marathon and fighting. However when attempting to sit down, you find that not all of him is tired out, in fact, it seems that there is a knotty cock rubbing against your cunt. In a moment of silly curiosity, you decide to test how responsive it is by hugging it using the outside of your pussy lips and moving your backside up and down it's length, he twitches slightly with a needy whine as you do so, giving you a good idea of how you want to celebrate your victory.";
						say "     After taking a few moments to imagine in-depth on how you want to go about making your idea a reality, you move your body until your partner is face-to-face with your pussy and you are face-to-face with his knotty cock, after a moment of giving it the stare-down you wrap your tongue around it here and there as you lick it slowly, savoring the slightly musky-yet-salty flavor of his exertion from the previous battle. Getting into the spirit of things, your once-opponent begins to work his tongue into your pussy, both of you now working each others sexes, every once and a while twitching and gasping when the other hits a sensitive spot as the sloppy wet sounds created by the tryst moving apace in earnest flood the library, should there be anyone around to listen. As the minutes float by both you and your partner get more into the act and deeper into each others privates, your motions growing faster and more desperate, two sets of hips begin to spasm as both reach their orgasms, you attempt to swallow your share while the wolf down under tries to do the same, until you both disconnect, rolling to rest on the side of each other breathing heavily after the momentary air deprivation.";
						NPCSexAftermath Fang receives "OralPussy" from Player;
						NPCSexAftermath Player receives "OralCock" from Fang;
				else if Fang is Female: [Female Fang]
					if Player is male: [Anal]
						say "     As the once-opponent falls to the floor, you know that you managed to claim victory over your opponent after the furious storm of paws and claws subsided, leaving you with an opportunity to get a better look at her and decide what happens next. You flip the prone wolfess until her soft underfur is exposed, giving you the full view of her privates in all their beautiful glory, a sight that sends lust filled warmth into your erecting knotty cock as instincts as old as the first lupine resound inside of your skull telling you to see the female in front of you filled with pups. Despite what your instincts scream, you decide not to go for the most obvious route, but instead decide to go lower, gazing into her anal passage before gathering saliva in your maw and spitting it into your paw-hand, using it to coat your still-raging lupine boner in eager anticipation for the task ahead.";
						say "     However excited you may feel for what is coming up next, you decide it would be better if you both were awake for it,  you maneuver yourself and begin licking your partner's nose in a weirdly canine way in an attempt to wake her up. As she rouses from her after-battle slumber you interject with a surprise kiss and nose-on-nose boop combo as a way of greeting followed by your best (in your imagination) winning smile, she looks at you for a moment, unsure on what her reaction should be as you move on to the next phase. Using the left over saliva on your paw-hand you decide to start by testing the waters of her anal level by first inserting a saliva covered padded digit into her vulnerable asshole inspiring a low moan, then you put in another, and stir a little, causing her to let out a rather cute little yelp from the sensations, you then add another thinking this would be the correct way to prepare her for what you have in mind next.";
						say "     Being as prepped as possible you begin to slide your erect knotty cock into her lubed asshole first one inch, then two more, only stopping when the knot touches, inciting a gasp and a slight needy whine, you then pull out to the tip and begin pushing it back in, increasing in pace as sloppy sounds begin to fill the surroundings, minutes pass by as you continue to work her back passage, after a few minutes of listening to the noises she makes, you lean in and lock muzzles with her all the while keeping the pace, still the minutes slide forward until you start to feel your muscles tense up for the impending orgasm as you push forward, knotting her finally as that final push sets her off liquid coming from her empty vagina, you slump down onto her side after the exertion still kissing her as you both ride out your mutual climaxes as you both wait for the knot to go down.";
						NPCSexAftermath Fang receives "AssFuck" from Player;
					else if Player is female: [Tribbing]
						say "     Having defeated your opponent and proven yourself the victor, you are left with the question on what to do next as you survey them. Coming to a conclusion you roll her onto her back, pausing a moment to take in the beauty of the wolfess in a way that you weren't able to in the midst of the brawl, in a moment of instinctual driven curiosity you lower your head and begin sniffing slightly at her exposed belly fur in an attempt to pick up on something that your mind hasn't yet put into cognitive thought on what you are looking for. Regardless of the private musing going through your mind on why you are sniffing someone you met for the first time ever, you move your head lower and get to winding and prepping your partner up by lubricating her exposed pussy with your saliva drenched tongue, probing here and there while enjoying her reactionary shudders, making sure to coat it with a layer thick enough for the both of you.";
						say "     After being sure of the outside, you begin to dig deeper, with slow yet full strokes of the tongue, making sure not only to get everywhere but also to probe her depths in an attempt to find her sweet spot and get some sexy moans out of her. Feeling that you managed to work her up enough, you pull your face from between her pussy lips and position yourself until being face-to-face and cunt-to-cunt with the sexy wolfess, looking into her eyes for a prolonged moment before inflicting a sudden tickle attack, causing her to burst into a fit of laughter. Using that moment of her muzzle being open, you lock muzzles with her, making her gasp in surprise, despite her initial surprise she returns the kiss. Now that your partner is getting into the swing of things you decide to get to the main event as you begin to hump her fast and furiously, making sure that most of the grinding goes to her cunt, both of your muzzles resound with moans as she starts to hump in return. Both of you being wound up means that both the sloppy sounds of sex and the heavy breathing wont last for much longer before things come to a peak as you can feel your muscles tensing and your partner shuddering as you and her begin to squirt your girlcum onto each other, robbing you both of energy, leaving you both limp and embracing each other.";
		else:
			LineBreak;
			if HP of Fang is 4:
				say "     You find yourself on your back, completely battered, bruised and ultimately defeated. Realizing that you are probably not going to walk out of this intact or at all, you look around for some means of escape and try to lift yourself up, only to have your opponent's paw come crashing down next to your muzzle, as [PosPro of Fang] maw momentarily clamps around your neck softly enough to act as a warning, letting you know that there is no escape. Fearfully looking up at the wolf situated above you, meeting [PosPro of Fang] gaze as you find yourself momentarily mesmerized by [PosPro of Fang] luminous yellow eyes as [SubjectPro of Fang] examines your own, as if looking for something that isn't readily apparent by examining other parts of you. With a low growl, you could almost swear [SubjectPro of Fang] mumbles something like 'this will do' as [SubjectPro of Fang] decides that [SubjectPro of Fang] is finished staring you down. You think that perhaps [SubjectPro of Fang] will let you up after finding that you no longer have the will to fight, you are apparently wrong as [PosPro of Fang] paw moves from beside your head to hold down your chest as [SubjectPro of Fang] says with a deep growl, 'Be mine or be gone.' [PosProCap of Fang] message clear in that if you want to live in the library and its bunker, it will be under [ObjectPro of Fang]. Not wanting to be left to the mercy of the mutants rampaging outside, you nod your head in agreement.";
			else if HP of Fang is 1:
				say "     As the battle seemed to come to a head, you begin to worry that you might be done for. Just as the thoughts cross your mind, your opponent loses their footing, nearly collapsing on the spot. Being that you both are at your limits and ready to keel over, you try to think of a way to finish this without the both of you ending in a double knockout. After a brief moment of silence that seems to stretch uncomfortably long, you decide that it would be best to try and persuade [ObjectPro of Fang] that any further fighting would end badly for the both of you. Thinking on the best words to continue with, you proceed to claim that it would actually be better to work together to survive than weaken each other to the point of the both of you being easy prey for anything that should decide to enter between now and when you finally recover. Falling silent, you wonder if you managed to make your case well enough as the silence grows uncomfortably long, so long in fact that you worry that your opponent might notice that you are beginning to break out into a cold sweat. A few more tense minutes of [ObjectPro of Fang] looking you over pass in silence before [SubjectPro of Fang] finally comes to a conclusion as [SubjectPro of Fang] fully collapses, looking up at you with obvious frustration as [SubjectPro of Fang] grumbles and agrees to work together. With a sigh of relief you also end up collapsing in a tired sweaty heap to rest, happy that you are no longer alone in the midst of the apocalypse.";
			else if HP of Fang is 2:
				say "     As the once opponent collapses into unconsciousness on the floor in front of you, the flood of bestial insticts almost completely subsides except for the little whisper that tells you that you should dominate [ObjectPro of Fang] sexually and completely, letting [ObjectPro of Fang] know exactly what [PosPro of Fang] place will consist of from now on. You push that thought away as you decide how you want to go about dealing with [ObjectPro of Fang] as you look [ObjectPro of Fang] over, slightly feeling apologetic about drowning in the flow of your instincts earlier and its violent outcome. Hiding your guilt behind a poker face, you rouse [ObjectPro of Fang] from [PosPro of Fang] slumber by lightly smacking the side of [PosPro of Fang] muzzle with your paw, intently staring at [ObjectPro of Fang] as [SubjectPro of Fang] slowly wakes with a disoriented-yet-silent contemplation. The moment [SubjectPro of Fang] partially opens [PosPro of Fang] eyes, you put one of your paws on [PosPro of Fang] chest, holding [ObjectPro of Fang] down and staring at [ObjectPro of Fang] intently, letting [ObjectPro of Fang] know that there isn't going to be any escape from [PosPro of Fang] current situation. At the look you give, [SubjectPro of Fang] seems to decide that being calm and listening to what you have to say would be a good idea. Clearing your throat, you tell [ObjectPro of Fang] that despite the fight both of you just had, you don't really have any hard feelings against [ObjectPro of Fang]. Being that it's insanely dangerous outside, it feels like it would be unusually cruel to toss [ObjectPro of Fang] out just because [SubjectPro of Fang] lost. Considering that it is safer together than alone, it would be a good idea to at least give [ObjectPro of Fang] the opportunity to live here and serve under you, as you look at [ObjectPro of Fang] slightly wondering what [PosPro of Fang] answer will be. With a soft sigh, [SubjectPro of Fang] nods in agreement to be your omega.";
		now lastfuck of Fang is turns;
	if scenario is "Running with Wolves":
		WaitLineBreak;
		if HP of Fang is 4:
			say "     Having been beaten in battle and dominated completely, you meekly stare back at [ObjectPro of Fang] waiting for [ObjectPro of Fang] to give [PosPro of Fang] first order, that... never came. You both sit there and awkwardly stare at each other in silence, wondering what to do next. After a bit more silent staring, you decide to break the silence by introducing your name and asking for [PosPro of Fang]. [SubjectProCap of Fang] is silent for a few more moments. You gather your thoughts and ask whether he has forgotten his name. [SubjectProCap of Fang] nods once in affirmative. Having gotten the answer, you ask permission to give him a name so that you have something to call him by. [SubjectProCap of Fang] thinks for another moment or two and nods in affirmative. You, having your alpha's consent, decide to call [ObjectPro of Fang], rather uncreatively, Fang. [SubjectProCap of Fang] thinks in silence for a few more moments, and nods [PosPro of Fang] approval. Fang, noticing that you are about to pass out, tells you to go rest in the bunker, Fang stays and watches the entrance in case any more survivors show up. You then pad your way down into the bunker, swaying all the way, and pass out on one of the cots.";
			WaitLineBreak;
			say "     You finally manage to open your eyes, but your vision is blurry and unfocused, your body filled with the echoes of aches and pains from yesterday's events of getting beaten and raped by a wolf, a tiring sprint of desperation, your sudden transformation into a feral wolf, and getting beaten further and getting heavily dominated, claimed, and shown your place by your new alpha. The first thing you notice after your vision scans the room is a large black and grayish form, trying to focus, your vision finally clears to show you that it is actually your alpha who was waiting for you to awaken. You slowly sit up and move off the cot until you are looking up at Fang attentively. Seeing that you are recovered, Fang continues to say to you, 'If you go outside, be on the lookout for other survivors.' Apparently finished, Fang pads out of the bunker.";
		else if HP of Fang is 1:
			say "     After proving yourself as alpha, you ask [ObjectPro of Fang] what [PosPro of Fang] name is, to which [SubjectPro of Fang] looks down onto the floor and hesitantly states that [SubjectPro of Fang] cannot remember [PosPro of Fang] old name. You being really tired from everything and of everything, decide to uncreatively call [ObjectPro of Fang] Fang, taking a nearby rope and using your paw-hands to clumsily fashion it into a make-shift leash, and tie it to a nearby post telling [ObjectPro of Fang] to guard the entrance. [SubjectProCap of Fang] silently does as [ObjectPro of Fang] is told, also taking a few moments to clean [ReflexPro of Fang] off. You pad your way down to the bunker where you immediately pass out the moment you lay on a cot.";
			WaitLineBreak;
			say "     You wake up in the same position you went to sleep in, yawning while still slightly drowsy yet still able to look around at your surroundings. You suppose it isn't really a dream as you find yourself still in a bunker, as you look around you hear something padding down the stairs, that being your new lupine beta. Sitting down in front of you, Fang begins to speak, 'Things quieted down after last night,' pausing for a moment before continuing, 'It would be a good idea to bring back other survivors.' Fang clearly finished, pads back towards the entrance.";
		else if HP of Fang is 2:
			say "     Having thoroughly proven your dominance as the alpha, you ask [ObjectPro of Fang] what [PosPro of Fang] name is, [SubjectPro of Fang] hesitantly tells you that [SubjectPro of Fang] is unable to remember [PosPro of Fang] name. So you do your first duty as alpha and name [ObjectPro of Fang] a rather uncreative name, the name being Fang. Having given [ObjectPro of Fang] [PosPro of Fang] name, you give [ObjectPro of Fang] [PosPro of Fang] first order and duty, to guard the entrance. Fang barks an affirmative and goes to a nearby spot to lick [ReflexPro of Fang] clean and watch over the door. You, being incredibly exhausted from everything that went on, pad your way to the bunker where you pass out on one of the cots.";
			WaitLineBreak;
			say "     You wake up to your omega sitting on the floor next to your cot, with [PosPro of Fang] paws holding onto one of your paws, [PosPro of Fang] bright yellow eyes filled with worry. Once you open your eyes, [PosPro of Fang] tail starts to wag, as [PosPro of Fang] awaits your eventual morning greeting. Despite being half asleep you still acknowledge Fang with a yawn filled greeting as you try and rub the previous day's exhaustion from your eyes. Fang seeing you now awake, tells you, 'Things quieted down outside.' After a short silence [PosPro of Fang] continues with, 'If you happen to find any survivors while out and about, it would be a good idea to let them know this place is safe.' Having made sure you were all right and said [PosPro of Fang] piece, Fang pads [PosPro of Fang] way back to the entrance.";
		if MaleList is warded or MaleList is banned:
			turn Player into "Feral Wolf Bitch" silently;
		else if FemaleList is warded or FemaleList is banned:
			turn Player into "Feral Wolf Male" silently;
		else if Player is herm:
			turn Player into "Feral Wolf Male" silently;
			now Cunt Count of Player is 1;
		else if Player is male:
			turn Player into "Feral Wolf Male" silently;
		else if Player is female:
			turn Player into "Feral Wolf Bitch" silently;
		move Fang to the Grey Abbey Library;
	else:
		say "     No one else ever arrived, so you're on your own out here. Ah well, you're an American of the 21st century. What's a little Apocalypse to keep you down? Steeling your nerves and readying what you have, you break the seal and prepare to set out.";
	WaitLineBreak;
	LineBreak;
	say "Welcome to...";
	[display the figure of title_graphic;]
	zephyrad rule in 1 turn from now;

[Silent starting protocol that launches restore game. Included as part of restore on the main menu because of issues with the graphical window creation.]
to say silent_start:
	say "Please wait while we complete some background work prior to restoring.";
	WaitLineBreak;
	now started is 1;
	gs_stats;
	now Morale of Player is Charisma of Player plus Perception of Player;
	now HP of Player is Stamina of Player times two;
	increase HP of Player by 5;
	now MaxHP of Player is HP of Player;
	now the Capacity of Player is five times Strength of Player;
	now humanity of Player is 100;
	if GenderLock > 1, startgenderlockget;
	startgenderget;
	follow the SetPlayerPronouns rule;
	startfreefeats;
	startcreatureban;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	sort Table of Random Critters in lev order;
	if scenario is "Caught Outside": [processes infection data first, then clears so intro text can remain intact]
		weakrandominfect;
		weakrandominfect;
		weakrandominfect;
		weakrandominfect;
	if clearnomore is 0, clear the screen; [skips clearing if it's not wanted]
	if RestoreMode is true and RestoreSide > 0: [use default graphics window size and position]
		now graphics is true;
		now NewGraphics is true;
		now NewGraphicsPosition is RestoreSide - 1;
		now NewGraphicsRatio is 30;
		now RestoreSide is 0;
	else:
		[Code for letting player select graphics window size]
		say "[bold type]Graphic Settings[roman type][line break]";
		say "Before restoring, please specify the graphic settings.";
		say "[link]1 - No graphics[as]1[end link][line break]";
		say "[link]2 - Old inline graphics only[as]2[end link][line break]";
		say "[link]3 - New graphics side-window[as]3[end link][line break]";
		while 1 is 1:
			say "Please enter the number that matches your choice (1-3)> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber < 4:
				break;
			else:
				say "Invalid Entry. Please enter a number between 1 and 3.";
		LineBreak;
		now NewGraphicsInteger is calcnumber - 1; [Direct set]
		if NewGraphicsInteger is 1: [now evaluate]
			now graphics is true;
			now NewGraphics is false;
		else if NewGraphicsInteger is 2:
			now graphics is true;
			now NewGraphics is true;
		else if NewGraphicsInteger is 0:
			now graphics is false;
			now NewGraphics is false;
		if NewGraphics is true: [Defined when play begins below, but MUST be here to alter the view when restoring from the menu]
			say "[bold type]Graphic Window Position and Proportion[roman type][line break]";
			say "You have enabled the new graphics window. This will be on the selected side of your screen and will always take up a proportion of the main screen.";
			say "Please choose the position value now ([link]0 - right side[as]0[end link], [link]1 - left side[as]1[end link], [link]2 - above[as]2[end link], [link]3 - below[as]3[end link]).";
			while 1 is 1:
				say "(0-3)> [run paragraph on]";
				get a number;
				if calcnumber > -1 and calcnumber < 4:
					break;
				else:
					say "Invalid Entry. Please enter a number between 0 and 3.";
			LineBreak;
			now NewGraphicsPosition is calcnumber;
			say "Please choose the proportion value now. Enter a number between 5 - 90. This will represent the percentage of your main screen that the graphics side-window will take up. We recommend somewhere around 30.";
			while 1 is 1:
				say "(5-90)> [run paragraph on]";
				get a number;
				if calcnumber > 4 and calcnumber < 91:
					break;
				else:
					say "Invalid Entry. Please enter a number between 5 and 90.";
			now NewGraphicsRatio is calcnumber;
	if NewGraphics is true: [Defined when play begins below, but MUST be here to alter the view when restoring from the menu]
		now the graphics window proportion is NewGraphicsRatio;
		if NewGraphicsPosition is:
			-- 0:
				now graphics window position is g-right;
			-- 1:
				now graphics window position is g-left;
			-- 2:
				now graphics window position is g-above;
			-- 3:
				now graphics window position is g-below;
		reconstruct graphics window;
		[now the graphics window pixel count is 1;]
		follow the ngraphics_blank rule;
		[follow the current graphics drawing rule;]
		now NewGraphicsOpened is true;
	clear the screen;
	say "Just a moment. There are a few more things to prepare...";
	WaitLineBreak;
	if scenario is "Bunker":
		ItemGain black t-shirt by 1 silently;
		now black t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
	else if scenario is "Caught Outside":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain black jeans by 1 silently;
		now black jeans are equipped;
	else if scenario is "Rescuer Stranded":
		ItemGain camo shirt by 1 silently;
		now camo shirt is equipped;
		ItemGain green camo pants by 1 silently;
		now green camo pants are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
	else if scenario is "Forgotten":
		ItemGain blue sleeveless shirt by 1 silently;
		now blue sleeveless shirt is equipped;
		ItemGain ripped black jeans by 1 silently;
		now ripped black jeans are equipped;
		ItemGain white briefs by 1 silently;
		now white briefs is equipped;
		ItemGain brown loafers by 1 silently;
		now brown loafers is equipped;
	else if scenario is "Researcher":
		ItemGain white t-shirt by 1 silently;
		now white t-shirt is equipped;
		ItemGain dark-blue jeans by 1 silently;
		now dark-blue jeans are equipped;
		ItemGain black boxer briefs by 1 silently;
		now black boxer briefs are equipped;
		ItemGain black combat boots by 1 silently;
		now black combat boots is equipped;
	if scenario is not "Bunker":
		if scenario is "Caught Outside":
			add "Spartan Diet" to feats of Player;
		else if scenario is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
		else if scenario is "Forgotten":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			now the printed name of Doctor Matt is "Left Behind Recording of Doctor Matt";
			now the initial appearance of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now Description of Doctor Matt is "A small recorder labeled 'Doctor Matt' remains abandoned.";
			now the HP of Doctor Matt is 100;
			now the icon of Doctor Matt is figure of pixel;
			now Orthas is nowhere;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Deer":
					now area entry is "Park";
					break;
			increase score by 600;
			extend game by 240;
	if HardMode is true: [Hard mode alteration]
		increase score by 300;
	if NoHealMode is true: [No-heal mode alteration]
		increase score by 150;
	if BlindMode is true: [Blind mode alteration]
		increase score by 100;
	AddNavPoint Zephyr Lobby silently;

Chapter 2 - Player Name

[See Core Mechanics/Basic Functions.i7x]

Chapter 3 - Character Customization

[
Maybe I should add a second menu choice after that, explaining:
"There are some parts of the game that apply alternate infections if a character has one of the following feats. For example, going for "Horny Dragon" instead of "Slutty Dragoness" if "Male Preferred" is present. You can gain these feats during gameplay, but for your convenience, they can also be activated right here. Please note that this is not a lock, nor does it exclude getting other infections. It simply nudges those code decision points that are set up for it one way or another."
]

to newplayercustomizationmenu:
	if Name of Player is not "DebugTesting": [reduced menu until the new system goes live]
		now calcnumber is -1;
		let charactermenuexit be 0;
		while charactermenuexit is 0:
			clear the screen;
			say "[bold type]Character Customization:[roman type][line break]";
			say "(1) [link]Player Starting Gender[as]1[end link] - [bold type][if StartingGender is 1]Male[else if StartingGender is 2]Female[else if StartingGender is 3]Trans-Woman[else if StartingGender is 4]Trans-Man[else if StartingGender is 5]Male Herm[else if StartingGender is 6]Female Herm[end if][roman type][line break]";
			say "(2) [link]Player Sexual Experience[as]2[end link]: [bold type][playervirginsay][roman type][line break]";
			say "(3) [link]Body Configuration Lock[as]3[end link] - [bold type][if GenderLock is 1]None[else if GenderLock is 2]Random[else if GenderLock is 3]Unchanging[else if GenderLock is 4]Always Cocky[else if GenderLock is 5]Always A Pussy[else if GenderLock is 6]Single Sexed[else if GenderLock is 7]Flat Chested[else if GenderLock is 8]Simplified Masculine[else]ERROR[end if][roman type][line break]";
			say "(4) [link]Player Pronouns[as]4[end link] - [bold type][PronounChoice of Player][roman type][line break]";
			say "[line break]";
			say "(0) [link]Return to main menu[as]0[end link][line break]";
			while 1 is 1:
				say "Choice? (0-4)> [run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 4:
					break;
				else:
					say "Invalid Entry. Pick from 0 to 4.";
			LineBreak;
			if calcnumber is 1:
				PlayerStartingGenderSetting;
			else if calcnumber is 2:
				playersexsetting;
			else if calcnumber is 3:
				genderlockmenu;
			else if calcnumber is 4:
				say "[run paragraph on]";
				try pronounsetting;
			else:
				now charactermenuexit is 1;
	else: [just for testing till the new system goes live]
		now calcnumber is -1;
		let charactermenuexit be 0;
		while charactermenuexit is 0:
			clear the screen;
			say "[line break][bold type]Character Customization:[roman type][line break]";
			say "(1) [link]Gender Settings & Orientation[as]1[end link][line break]";
			say "(2) [link]Body Configuration Lock[as]2[end link] - [bold type][if GenderLock is 1]None[else if GenderLock is 2]Random[else if GenderLock is 3]Unchanging[else if GenderLock is 4]Always Cocky[else if GenderLock is 5]Always a Pussy[else if GenderLock is 6]Single Sexed[else if GenderLock is 7]Flat Chested[else if GenderLock is 8]Simplified Masculine[else]ERROR[end if][roman type][line break]";
			say "(3) [link]Player Sexual Experience[as]3[end link]: [playervirginsay][line break]";
			say "(4) [link]Player Hair[as]4[end link]: Head Hair: [Hair Shape of Player] [Hair Color of Player] [Hair Style of Player]; [if Player is Hasbeard]Beard: [Beard Style of Player];[end if] Body Hair: [Body Hair Adjective of Player][line break]";
			say "(5) [link]Eye Color[as]5[end link]: [Eye Color of Player][line break]";
			say "(6) [link]Skin Color[as]6[end link]: [Torso Color of Player][line break]";
			say "(7) [link]Body Type[as]7[end link]: [Body Adjective of Player][line break]";
			say "(8) [link]Player Pronouns[as]8[end link] - [bold type][PronounChoice of Player][roman type][line break]";
			say "[line break]";
			say "(0) [link]Return to main menu[as]0[end link][line break]";
			while 1 is 1:
				say "Choice? (0-9)> [run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 9:
					break;
				else:
					say "Invalid Entry";
			LineBreak;
			if calcnumber is 1:
				gendersetting;
			else if calcnumber is 2:
				genderlockmenu;
			else if calcnumber is 3:
				playersexsetting;
			else if calcnumber is 4:
				hairsetting;
			else if calcnumber is 5:
				eyecolorsetting;
			else if calcnumber is 6:
				skincolorsetting;
			else if calcnumber is 7:
				bodytypesetting;
			else if calcnumber is 8:
				try pronounsetting;
			else:
				now charactermenuexit is 1;

to PlayerStartingGenderSetting:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Select a starting gender (exact sizes for all parts are randomized in human ranges):[roman type][line break]";
		say "(1) [link]Male[as]1[end link] - You have a penis and flat chest.";
		say "(2) [link]Female[as]2[end link] - You have a vagina and breasts.";
		say "(3) [link]Trans-Woman[as]3[end link] - You have a penis and breasts.";
		say "(4) [link]Trans-Man[as]4[end link] - You have a vagina and flat chest.";
		say "(5) [link]Male Herm[as]5[end link] - You have both a vagina and penis, but a flat chest.";
		say "(6) [link]Female Herm[as]6[end link] - You have a vagina, penis and breasts.";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 6.";
		LineBreak;
		if calcnumber is not 0:
			now StartingGender is calcnumber;
		now gsexit is 1;

to startgenderget:
	say "Assigning Gender...";
	if StartingGender is 1: [male]
		now Cock Count of Player is 1;
		now Cock Length of Player is a random number between 4 and 10;
		now the Ball Size of Player is 3;
		now Nipple Count of Player is 2;
		remove womanhood from Player;
		now Breast Size of Player is 0;
	else if StartingGender is 2: [female]
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is a random number between 4 and 10;
		now Cunt Tightness of Player is a random number between 3 and 6;
		now Nipple Count of Player is 2;
		remove manhood from Player;
		now Breast Size of Player is a random number between 1 and 5;
	else if StartingGender is 3: [trans-woman - breasts + cock]
		now Cock Count of Player is 1;
		now Cock Length of Player is a random number between 4 and 10;
		now the Ball Size of Player is 3;
		now Nipple Count of Player is 2;
		remove womanhood from Player;
		now Breast Size of Player is a random number between 1 and 5;
	else if StartingGender is 4: [trans-man - flat chest + cock]
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is a random number between 4 and 10;
		now Cunt Tightness of Player is a random number between 3 and 6;
		now Nipple Count of Player is 2;
		remove manhood from Player;
		now Breast Size of Player is 0;
	else if StartingGender is 5: [male herm - flat chest + cock + pussy]
		now Cock Count of Player is 1;
		now Cock Length of Player is a random number between 4 and 10;
		now the Ball Size of Player is 3;
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is a random number between 4 and 10;
		now Cunt Tightness of Player is a random number between 3 and 6;
		now Nipple Count of Player is 2;
		now Breast Size of Player is 0;
	else if StartingGender is 6: [male herm - breasts + cock + pussy]
		now Cock Count of Player is 1;
		now Cock Length of Player is a random number between 4 and 10;
		now the Ball Size of Player is 3;
		now Cunt Count of Player is 1;
		now Cunt Depth of Player is a random number between 4 and 10;
		now Cunt Tightness of Player is a random number between 3 and 6;
		now Nipple Count of Player is 2;
		now Breast Size of Player is a random number between 1 and 5;

to playersexsetting: [OralVirgin of Player, Virgin of Player, AnalVirgin of Player, PenileVirgin of Player, SexuallyExperienced of Player]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Sexual Experience[roman type][line break]";
		say "     Sexually Experienced: [bold type][if SexuallyExperienced of Player is true]Yes[else]No[end if][roman type][line break]";
		say "(1) [link]Oral Virgin[as]1[end link]: [bold type][if OralVirgin of Player is true]Yes[else]No[end if][roman type][line break]";
		say "(2) [link]Vaginal Virgin[as]2[end link]: [bold type][if Virgin of Player is true]Yes[else]No[end if][roman type][line break]";
		say "(3) [link]Penile Virgin[as]3[end link]: [bold type][if PenileVirgin of Player is true]Yes[else]No[end if][roman type][line break]";
		say "(4) [link]Anal Virgin[as]4[end link]: [bold type][if AnalVirgin of Player is true]Yes[else]No[end if][roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 4.";
		LineBreak;
		if calcnumber is 1:
			if OralVirgin of Player is true:
				now OralVirgin of Player is false;
			else if OralVirgin of Player is false:
				now OralVirgin of Player is true;
		else if calcnumber is 2:
			if Virgin of Player is true:
				now Virgin of Player is false;
			else if Virgin of Player is false:
				now Virgin of Player is true;
		else if calcnumber is 3:
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
			else if PenileVirgin of Player is false:
				now PenileVirgin of Player is true;
		else if calcnumber is 4:
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
			else if AnalVirgin of Player is false:
				now AnalVirgin of Player is true;
		else:
			now menuexit is 1;
		if (OralVirgin of Player is true and Virgin of Player is true and PenileVirgin of Player is true and AnalVirgin of Player is true):
			now SexuallyExperienced of player is false;
		else:
			now SexuallyExperienced of player is true;
		now calcnumber is -1;

to say playervirginsay:
	if SexuallyExperienced of player is false:
		say "Virgin";
	else:
		say "[if OralVirgin of Player is false]Orally Experienced[else]Oral Virgin[end if], [if AnalVirgin of Player is false]Anally Experienced[else]Anal Virgin[end if]";
		if StartingGender is 1 or StartingGender is 3 or StartingGender is 5 or StartingGender is 6:
			say ", [if PenileVirgin of Player is false]Penilely Experienced[else]Penile Virgin[end if]";
		if StartingGender is 2 or StartingGender is 4 or StartingGender is 5 or StartingGender is 6:
			say ", [if Virgin of Player is false]Vaginally Experienced[else]Vaginal Virgin[end if]";

to genderlockmenu:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Select a body configuration lock:[roman type][line break]";
		say "(1) [link]None[as]1[end link] - There is no restriction to your gender-transformation. You receive a 5% point bonus from this selection at game end.";
		say "(2) [link]Random[as]2[end link] - Enjoy a loss of control? A random lock (4-8) is chosen for you at game start!";
		say "(3) [link]Unchanging[as]3[end link] - Preserve selected starting gender.";
		say "[line break]";
		say "(4) [link]Always Cocky[as]4[end link] - Your body will never give up its cock (if it has one, or gains one).";
		say "(5) [link]Always A Pussy[as]5[end link] - Your body will never give up its pussy (if it has one, or gains one).";
		say "(6) [link]Single Sexed[as]6[end link] - Regardless of mutation, you will never be a herm but remain male or female, with the right chest to match.";
		say "(7) [link]Flat Chested[as]7[end link] - Regardless of mutation, you never gain breasts.";
		say "(8) [link]Simplified Masculine[as]8[end link] - Your body will never give up one of either its cock or pussy, and you never gain breasts.";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-8)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 8:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 8.";
		LineBreak;
		if calcnumber is not 0:
			now GenderLock is calcnumber;
		now gsexit is 1;

to startgenderlockget:
	say "Locking Gender...";
	if GenderLock is 2:
		now GenderLock is a random number between 4 and 8;
	if GenderLock is 3:
		if StartingGender is 1:
			say "Locked to body configuration: flat chest, single sexed with a cock, no pussy.";
			add "Always Cocky" to feats of Player;
			add "Single Sexed" to feats of Player;
			add "Flat Chested" to feats of Player;
		else if StartingGender is 2:
			say "Locked to body configuration: breasts, single sexed with a pussy, no cock.";
			add "Always A Pussy" to feats of Player;
			add "Single Sexed" to feats of Player;
			add "Breasts" to feats of Player;
		else if StartingGender is 3:
			say "Locked to body configuration: breasts, single sexed with a cock, no pussy.";
			add "Always Cocky" to feats of Player;
			add "Single Sexed" to feats of Player;
			add "Breasts" to feats of Player;
		else if StartingGender is 4:
			say "Locked to body configuration: flat chested, single sexed with a pussy, no cock.";
			add "Always A Pussy" to feats of Player;
			add "Single Sexed" to feats of Player;
			add "Flat Chested" to feats of Player;
		else if StartingGender is 5:
			say "Locked to body configuration: flat chested, both genitals.";
			add "Always Cocky" to feats of Player;
			add "Always A Pussy" to feats of Player;
			add "Herm Preferred" to feats of Player;
			add "Flat Chested" to feats of Player;
		else if StartingGender is 6:
			say "Locked to body configuration: breasts, both genitals.";
			add "Always Cocky" to feats of Player;
			add "Always A Pussy" to feats of Player;
			add "Herm Preferred" to feats of Player;
			add "Breasts" to feats of Player;
	else if GenderLock is 4:
		say "Male genitals locked in.";
		add "Always Cocky" to feats of Player;
	else if GenderLock is 5:
		say "Female genitals locked in.";
		add "Always A Pussy" to feats of Player;
	else if GenderLock is 6:
		say "Locked to a singular gender at a time.";
		add "Single Sexed" to feats of Player;
	else if GenderLock is 7:
		say "Locked to be flat chested.";
		add "Flat Chested" to feats of Player;
		now Breast Size of Player is 0;
	else if GenderLock is 8:
		say "Locked to flat-chested male or trans-male.";
		if StartingGender < 5:
			add "Single Sexed" to feats of Player;
		if StartingGender is odd: [male, trans-woman, male herm]
			add "Always Cocky" to feats of Player;
		else: [female, trans-man, female herm]
			add "Always A Pussy" to feats of Player;
		add "Flat Chested" to feats of Player;
		now Breast Size of Player is 0;

Chapter 4 - Stats

[TODO: Investigate Starting Stamina impact on MaxHP]

to say gsopt_1:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		clear the screen;
		say "[bold type]Select your main stat (+5 bonus):[roman type][line break]";
		say "(1) [link]Strength[as]1[end link]: [if MainStat is 1][bold type]17[roman type][else if MainStat is 7]??[no line break][else]12[end if] - Represents your raw physical might and your ability to deal damage.";
		say "(2) [link]Dexterity[as]2[end link]: [if MainStat is 2][bold type]17[roman type][else if MainStat is 7]??[no line break][else]12[end if] - Affects your likelihood to hit and dodge.";
		say "(3) [link]Stamina[as]3[end link]: [if MainStat is 3][bold type]17[roman type][else if MainStat is 7]??[no line break][else]12[end if] - Increases your total health pool and your overall endurance.";
		say "(4) [link]Charisma[as]4[end link]: [if MainStat is 4][bold type]17[roman type][else if MainStat is 7]??[no line break][else]12[end if] - Deals with social interactions with NPCs and your pets, and affects your morale.";
		say "(5) [link]Intelligence[as]5[end link]: [if MainStat is 5][bold type]17[roman type][else if MainStat is 7]??[no line break][else]12[end if] - Increases the efficacy of healing medkits, your chances of vial collection (if able) and your success at escaping.";
		say "(6) [link]Perception[as]6[end link]: [if MainStat is 6][bold type]17[roman type][else if MainStat is 7]??[no line break][else]12[end if] - Influences your success while scavenging and hunting, success with ranged weapons and affects your morale.";
		say "[line break]";
		say "(7) [link]Random[as]7[end link] - Randomize your stat points upon creation.";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 7.";
		LineBreak;
		if calcnumber is not 0:
			now MainStat is calcnumber;
			say "[run paragraph on]";
			gs_stats;
		now gsexit is 1;

To gs_stats: [apply stat bonus]
	follow the starting stats rule; [resets all to 12]
	if MainStat is 1:
		increase strength of Player by 5;
	else if MainStat is 2:
		increase dexterity of Player by 5;
	else if MainStat is 3:
		increase stamina of Player by 5;
	else if MainStat is 4:
		increase charisma of Player by 5;
	else if MainStat is 5:
		increase intelligence of Player by 5;
	else if MainStat is 6:
		increase perception of Player by 5;
	else if MainStat is 7 and started is 1:
		randomstatstart;
	else if started is 1:
		say "Invalid stat choice - defaulting to random.";
		randomstatstart;

to randomstatstart:	[same total points, but spread randomly between 10 to 18]
	now Strength of Player is 10;
	now Dexterity of Player is 10;
	now Stamina of Player is 10;
	now Charisma of Player is 10;
	now Intelligence of Player is 10;
	now Perception of Player is 10;
	[Boost two stats for increased spread in results]
	let T be a random number between 1 and 6;
	if T is 1:
		increase strength of Player by 3;
	else if T is 2:
		increase dexterity of Player by 3;
	else if T is 3:
		increase stamina of Player by 3;
	else if T is 4:
		increase charisma of Player by 3;
	else if T is 5:
		increase intelligence of Player by 3;
	else if T is 6:
		increase perception of Player by 3;
	now T is a random number between 1 and 6;
	if T is 1:
		increase strength of Player by 2;
	else if T is 2:
		increase dexterity of Player by 2;
	else if T is 3:
		increase stamina of Player by 2;
	else if T is 4:
		increase charisma of Player by 2;
	else if T is 5:
		increase intelligence of Player by 2;
	else if T is 6:
		increase perception of Player by 2;
	now tempnum is 12; [remaining 12 points applied randomly one at a time]
	while tempnum is not 0:
		now T is a random number between 1 and 6;
		decrease tempnum by 1;
		if T is 1:
			increase strength of Player by 1;
			if strength of Player > 18:
				now strength of Player is 18;
				increase tempnum by 1;
		else if T is 2:
			increase dexterity of Player by 1;
			if dexterity of Player > 18:
				now dexterity of Player is 18;
				increase tempnum by 1;
		else if T is 3:
			increase stamina of Player by 1;
			if stamina of Player > 18:
				now stamina of Player is 18;
				increase tempnum by 1;
		else if T is 4:
			increase charisma of Player by 1;
			if charisma of Player > 18:
				now charisma of Player is 18;
				increase tempnum by 1;
		else if T is 5:
			increase intelligence of Player by 1;
			if intelligence of Player > 18:
				now intelligence of Player is 18;
				increase tempnum by 1;
		else if T is 6:
			increase perception of Player by 1;
			if perception of Player > 18:
				now perception of Player is 18;
				increase tempnum by 1;

This is the starting stats rule:
	[default stats]
	now Strength of Player is 12;
	now Dexterity of Player is 12;
	now Stamina of Player is 12;
	now Charisma of Player is 12;
	now Intelligence of Player is 12;
	now Perception of Player is 12;
	decrease the score by 0;
	rule succeeds.

Chapter 5 - Free Feats

To startfreefeats: [gives free feats]
	now autofeatloading is true; [temporarily skips asking permission to add preset feats]
	say "Attempting to add general feat [freefeatgeneral] to player.";
	now current menu selection is 0;
	blank out the whole of table of gainable feats;
	repeat with x running through functional featsets:
		try addfeating x;
	now featqualified is 1;
	[chooses the row with the selected feat]
	repeat with y running from 1 to number of filled rows in table of gainable feats:
		choose row y in table of gainable feats;
		if title entry is freefeatgeneral:
			now current menu selection is y;
			follow the gainfeat rule;
			break;
	if current menu selection is 0:
		say "Invalid Feat: Select a new choice now.";
		now autofeatloading is false;
		featget; [reverts to standard method]
		now autofeatloading is true;
	say "Attempting to add fun feat [freefeatfun] to player.";
	now current menu selection is 0;
	blank out the whole of table of gainable feats;
	repeat with x running through not functional featsets:
		try addfeating x;
	now featqualified is 1;
	[chooses the row with the selected feat]
	repeat with y running from 1 to number of filled rows in table of gainable feats:
		choose row y in table of gainable feats;
		if title entry is freefeatfun:
			now current menu selection is y;
			follow the gainfeat rule;
			decrease featgained of Player by 1;
			break;
	if current menu selection is 0:
		say "Invalid Feat: Select a new choice now.";
		now autofeatloading is false;
		funfeatget; [reverts to standard method]
		now autofeatloading is true;
	now autofeatloading is false;

To startFeatget: [alternate featget used for start] [Checkpoint-]
	clear the screen;
	say "Select a basic feat. This represents a skill or innate ability you have.";
	blank out the whole of table of gainable feats;
	say "[run paragraph on]";
	repeat with x running through functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	else:
		now featqualified is 1;
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - Abort[as]0[end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				choose row current menu selection from the table of gainable feats;
				say "[bold type][title entry][roman type]: [description entry]?";
				if Player consents:
					now freefeatgeneral is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				if featqualified is 0, break;
				if clearnomore is 0:
					clear the screen;
					say "Select a basic feat. This represents a skill or innate ability you have.";
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat. Pick from 0 to [number of filled rows in table of gainable feats].";

To startFunFeatget: [alternate funfeatget used for start]
	clear the screen;
	say "Select a fun feat. This represents some strange quirk or effect induced by the nanites.";
	blank out the whole of table of gainable feats;
	say "[run paragraph on]";
	repeat with x running through not functional featsets:
		try addfeating x;
	if there is no title in row 1 of table of gainable feats:
		say "There are no feats to gain!";
		wait for any key;
	else:
		now featqualified is 1;
		while 1 is 1:
			repeat with y running from 1 to number of filled rows in table of gainable feats:
				choose row y from the table of gainable feats;
				say "[link][y] - [title entry][as][y][end link][line break]";
			say "[link]0 - Abort[as]0[end link][line break]";
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				choose row current menu selection from the table of gainable feats;
				say "[bold type][title entry][roman type]: [description entry]?";
				if Player consents:
					now freefeatfun is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				if featqualified is 0, break;
				if clearnomore is 0:
					clear the screen;
					say "Select a fun feat. This represents some strange quirk or effect induced by the nanites.";
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat. Pick from 0 to [number of filled rows in table of gainable feats].";


Chapter 6 - Scenario Choices

to say gsopt_3:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		clear the screen;
		say "[bold type]Game Scenario:[roman type][line break]";
		say "(1) [link]Bunker[as]1[end link]: You managed to find your way to a bunker, where you hid away for some time. No special perks, default start. [if ScenarioChosen is 1][bold type][bracket]Set[close bracket][roman type][end if][line break]";
		say "(2) [link]Caught Outside[as]2[end link]: You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you. (Gain Spartan Diet, slowing gain of hunger and thirst.) [if ScenarioChosen is 2][bold type][bracket]Set[close bracket][roman type][end if][line break]";
		say "(3) [link]Rescuer Stranded[as]3[end link]: You arrived late, looking for survivors, when you got cut off from your teammates. Now you just want to survive! (Start with no supplies.) [if ScenarioChosen is 3][bold type][bracket]Set[close bracket][roman type][end if][line break]";
		say "(4) [link]Forgotten[as]4[end link]: You stayed in hiding too long. Your supplies have run dry, and the rescue already came and left. It will be a long time before any more arrive! [if ScenarioChosen is 4][bold type][bracket]Set[close bracket][roman type][end if][line break]";
		say "(5) [link]Researcher[as]5[end link]: You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection (you won't transform from losing battles) and have specialized equipment that allows you to collect the infection vials of those you defeat. [if ScenarioChosen is 5][bold type][bracket]Set[close bracket][roman type][end if][line break]";
		say "[line break]";
		say "(6) [link]Running with Wolves[as]6[end link]: You were a resident of the city before you fled to the bunker after your neighbors were claimed by wolves. However, you were infected and one of the wolves pursued you... (Start with Fang.) [if ScenarioChosen is 6][bold type][bracket]Set[close bracket][roman type][end if][line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 6.";
		LineBreak;
		if calcnumber is 1:
			now scenario is "Bunker";
			now ScenarioChosen is 1;
		else if calcnumber is 2:
			now scenario is "Caught Outside";
			now ScenarioChosen is 2;
		else if calcnumber is 3:
			now scenario is "Rescuer Stranded";
			now ScenarioChosen is 3;
		else if calcnumber is 4:
			now scenario is "Forgotten";
			now ScenarioChosen is 4;
		else if calcnumber is 5:
			now scenario is "Researcher";
			now ScenarioChosen is 5;
		else if calcnumber is 6:
			now scenario is "Running with Wolves";
			now ScenarioChosen is 6;
		now gsexit is 1;

Chapter 7 - Difficulty Mode

to say gsopt_4:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		clear the screen;
		say "[bold type]Difficulty Modes:[roman type][line break]";
		say "(1) [link]Hard Mode[as]1[end link]: [bold type][if HardMode is true]On[else]Off[end if][roman type][line break]     Hard Mode causes the powerful monsters to be randomly roaming, levels the monsters up alongside you, limits your use of the journal and adds other difficulties to further challenge you.";
		say "(2) [link]No-Heal Mode[as]2[end link]: [bold type][if NoHealMode is true]On[else]Off[end if][roman type][line break]     No-Heal Mode turns off the accelerated healing at the end of the turn. Medkits and healing boosters heal more though.";
		say "(3) [link]Blind Mode[as]3[end link]: [bold type][if BlindMode is true]On[else]Off[end if][roman type][line break]     Blind Mode prevents hunting and scavenging for supplies. You have a significantly increased chance of encountering something of interest while exploring though.";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-3)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 3.";
		LineBreak;
		if calcnumber is 1:
			if HardMode is false:
				now HardMode is true;
				say "Hard Mode activated.";
			else:
				now HardMode is false;
				say "Hard Mode de-activated.";
		else if calcnumber is 2:
			if NoHealMode is false:
				now NoHealMode is true;
				say "No-Heal Mode activated.";
			else:
				now NoHealMode is false;
				say "No-Heal Mode de-activated.";
		else if calcnumber is 3:
			if BlindMode is false:
				now BlindMode is true;
				say "Blind Mode activated.";
			else:
				now BlindMode is false;
				say "Blind Mode de-activated.";
		else:
			now gsexit is 1;

Chapter 8 - Content restrictions

to contentrestrictionmenu:
	now calcnumber is -1;
	let contentrestrictionmenuexit be 0;
	while contentrestrictionmenuexit is 0:
		clear the screen;
		say "(1) [link]Banned/Warded Types[as]1[end link] - [menuwardlist] & [menubanlist][line break]";
		say "(2) [link]Anal Content[as]2[end link] - [bold type][if AnalLevel is 1]Less[else if AnalLevel is 2]Normal[else if AnalLevel is 3]More[end if][roman type][line break]";
		say "(3) [link]WS Content[as]3[end link] - [bold type][if WSLevel is 1]None[else if WSLevel is 2]Normal[else if WSLevel is 3]Full[end if][roman type][line break]";
		say "(4) [link]Vore/UB Content[as]4[end link] - Vore: [bold type][if vorelevel is 1]None[else if vorelevel is 2]Normal[else if vorelevel is 3]Full[end if][roman type] - Unbirth: [bold type][if UBLevel is 1]None[else if UBLevel is 2]Normal[else if UBLevel is 3]Full[end if][roman type][line break]";
		say "(5) [link]Ovi Pregnancy[as]5[end link] - [bold type][if OvipregLevel is 1]Never[else]Normal[end if][roman type][line break]";
		say "[line break]";
		say "(6) Player character [if Player is CoA][special-style-1]IS[roman type][else]is [special-style-2]NOT[roman type][end if] the [link]Center of Attention[as]6[end link] of relationships in the library/bunker (disables NPC sexual relations independent of the player character).[roman type][line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry. Pick from 0 to 6.";
		LineBreak;
		if calcnumber is 1:
			if clearnomore is 0, clear the screen;
			new ban menu; [see Core Mechanics/Lists and Banning.i7x]
		else if calcnumber is 2:
			say "[run paragraph on]";
			try analadjusting; [see Core Mechanics/Settings Menus.i7x]
		else if calcnumber is 3:
			say "[run paragraph on]";
			try WSadjusting; [see Core Mechanics/Settings Menus.i7x]
		else if calcnumber is 4:
			say "[run paragraph on]";
			try voremenuing; [see Core Mechanics/Settings Menus.i7x]
		else if calcnumber is 5:
			say "[run paragraph on]";
			try oviadjusting; [see Core Mechanics/Settings Menus.i7x]
		else if calcnumber is 6:
			if "Center of Attention" is listed in Feats of player:
				remove "Center of Attention" from Feats of Player;
			else:
				add "Center of Attention" to Feats of Player;
		else:
			now contentrestrictionmenuexit is 1;

to say menuwardlist:
	if number of warded flags > 0 or number of warded tags > 0:
		let L be a list of text;
		say "[bold type]Warded: [bracket]";
		if CockVoreList is warded, add "Cockvore" to L;
		if CuckList is warded, add "Cuck" to L;
		if FemaleList is warded, add "Female" to L;
		if FeralList is warded, add "Feral" to L;
		if FurryList is warded, add "Furry" to L;
		if DemonList is warded, add "Hellspawn" to L;
		if HermList is warded, add "Herm" to L;
		if BodyHorrorList is warded, add "Horror" to L;
		if HumorousList is warded, add "Humorous" to L;
		if MindcontrolList is warded, add "Hypnosis" to L;
		if IncestList is warded, add "Incest" to L;
		if MaleList is warded, add "Male" to L;
		if NonconList is warded, add "Noncon" to L;
		if TransList is warded, add "Transgender" to L;
		if VoreList is warded, add "Vore" to L;
		say "[L][close bracket][roman type]";
	else:
		say "[bold type]None Warded[roman type]";

to say menubanlist:
	if number of banned flags > 0 or number of banned tags > 0:
		let L be a list of text;
		say "[bold type]Banned: [bracket]";
		if CockVoreList is banned, add "Cockvore" to L;
		if CuckList is banned, add "Cuck" to L;
		if FemaleList is banned, add "Female" to L;
		if FeralList is banned, add "Feral" to L;
		if FurryList is banned, add "Furry" to L;
		if DemonList is banned, add "Hellspawn" to L;
		if HermList is banned, add "Herm" to L;
		if BodyHorrorList is banned, add "Horror" to L;
		if HumorousList is banned, add "Humorous" to L;
		if MindcontrolList is banned, add "Hypnosis" to L;
		if IncestList is banned, add "Incest" to L;
		if MaleList is banned, add "Male" to L;
		if NonconList is banned, add "Noncon" to L;
		if TransList is banned, add "Transgender" to L;
		if VoreList is banned, add "Vore" to L;
		say "[L][close bracket][roman type]";
	else:
		say "[bold type]None Banned[roman type]";

To startcreatureban: [bans creatures, as requested]
	say "Banning creatures...";
	repeat through the Table of Random Critters:
		if BannedStatus entry is false:
			repeat with n running through all banned flags:
				if Name entry is listed in infections of n:
					say "[Name entry] removed due to [n].";
					now BannedStatus entry is true;
					break;
	say "Banning situations...";
	repeat with n running through situations:
		repeat with q running through all banned flags:
			if n is listed in BadSpots of q and n is active:
				say "[n] removed due to [q].";
				now n is inactive;
			if n is inactive:
				break;
		repeat with q running through all banned tags:
			if n is listed in BadSpots of q and n is active:
				say "[n] removed due to [q].";
				now n is inactive;
			if n is inactive:
				break;

Part 3 - New Infection System Functions

[New Infection System, detailed gender setting]
to gendersetting:
	now calcnumber is -1;
	let gendermenuexit be 0;
	while gendermenuexit is 0:
		clear the screen;
		say "[bold type]Gender Settings:[roman type][line break]";
		say "(1) [link]Cock Length[as]1[end link]: [if Cock Count of Player > 0][Cock Length of Player] inches long[else]none[end if][line break]";
		say "(2) [link]Cock Girth[as]2[end link]: [if Cock Count of Player > 0][Cock Girth Adjective of Player][else]none[end if][line break]";
		say "(3) [link]Ball Size[as]3[end link]: [if Cock Count of Player > 0][Ball Size Adjective of Player][else]none[end if][line break]";
		say "(4) [link]Cunt Depth[as]4[end link]: [if Cunt Count of Player > 0][Cunt Depth of Player] inches deep[else]none[end if][line break]";
		say "(5) [link]Cunt Tightness[as]5[end link]: [if Cunt Count of Player > 0][Cunt Tightness Adjective of Player][else]none[end if][line break]";
		say "(6) [link]Clit Size[as]6[end link]: [if Cunt Count of Player > 0][Clit Size Adjective of Player][else]none[end if][line break]";
		say "(7) [link]Breast Size[as]7[end link]: [if Breast Size of Player > 0][Breast Size Description of Player] breasts[else][Pecs Firmness Adjective of Player], [Pecs Size Adjective of Player] pecs (depends on body type)[end if][line break]";
		say "(8) [link]Breast Shape[as]8[end link]: [if Breast Size of Player > 0][Breast Adjective of Player][else]none[end if][line break]";
		say "--------------------------------------------------------------------------------[line break]";
		say "(9) [link]Gender Appearance & Behavior[as]9[end link]: [Gender Adjective of Player][line break]";
		say "(10) [link]Sexual Orientation[as]10[end link] [line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-10)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 10:
				break;
			else:
				say "Invalid Entry.";
				wait for any key;
		if calcnumber is 1: [cock length]
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 0-13 for your penis length in inches.";
				get a number; [returns as calcnumber]
				if calcnumber >= 0 and calcnumber <= 13: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now Cock Length of Player is calcnumber;
			if Cock Length of Player is 0: [no cock at all!]
				remove manhood from Player;
			else: [cock present]
				now Cock Count of Player is 1;
				now Cock Girth of Player is 3; [average thickness]
				now Ball Size of Player is 2; [dove-egg]
				remove womanhood from Player; [no pre-infection herms]
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 2: [cock girth]
			now calcnumber is -1;
			if Cock Count of Player is 0:
				say "Invalid Option. No cock detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number from 1-5 for your penis girth on a scale of thin/slender/average/thick/monstrous.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 5: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Cock Girth of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 3: [ball size]
			now calcnumber is -1;
			if Cock Count of Player is 0:
				say "Invalid Option. No cock detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please choose 1 (acorn sized), 2 (dove-egg sized) or 3 (chicken egg sized).";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 3: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Ball Size of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 4: [Cunt Depth]
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 0-13 for your pussy depth in inches.";
				get a number; [returns as calcnumber]
				if calcnumber >= 0 and calcnumber <= 13: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now Cunt Depth of Player is calcnumber;
			if Cunt Depth of Player is 0: [no Cunt at all!]
				remove womanhood from Player;
			else: [Cunt present]
				now Cunt Count of Player is 1;
				now Cunt Tightness of Player is 5; [tight]
				now Clit Size of Player is 3; [average]
				remove manhood from Player; [no pre-infection herms]
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 5: [Cunt Tightness]
			now calcnumber is -1;
			if Cunt Count of Player is 0:
				say "Invalid Option. No pussy detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number (1-15) for the circumference of your pussy in inches.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 15: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Cunt Tightness of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 6: [clit size]
			now calcnumber is -1;
			if Cunt Count of Player is 0:
				say "Invalid Option. No pussy detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number from 1-5 for your clit size on a scale of very small/small/average/large/very large.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 5: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				now Clit Size of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 7: [breast size]
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 0-7 for your breast size on a scale of flat/A cup/B cup/C cup/D Cup/DD cup/E cup/F cup.";
				get a number; [returns as calcnumber]
				if calcnumber >= 0 and calcnumber <= 7: [Valid choice, else repeat]
					now Breast Size of Player is calcnumber;
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 8: [breast type]
			now calcnumber is -1;
			if Breast Size of Player is 0:
				say "Invalid Option. No breasts detected.";
				wait for any key;
			else:
				while calcnumber <= 0:
					say "Please enter a number from 1-5 for your breast type on a scale of round/pointy/perky/saggy/bouncy.";
					get a number; [returns as calcnumber]
					if calcnumber >= 1 and calcnumber <= 5: [Valid choice, else repeat]
						break;
					else:
						say "Invalid Entry.";
						wait for any key;
				if calcnumber is:
					-- 1:
						now Breast Adjective of Player is "round";
					-- 2:
						now Breast Adjective of Player is "pointy";
					-- 3:
						now Breast Adjective of Player is "perky";
					-- 4:
						now Breast Adjective of Player is "saggy";
					-- 5:
						now Breast Adjective of Player is "bouncy";
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 9:
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 1-9. 1 being hypermasculine, 5 adrogynous, and 9 hyperfeminine:[line break]";
				say "Note: This refers to the overall physical appearance and behavior of the player, not their actual genitals.";
				get a number; [returns as calcnumber]
				if calcnumber >= 1 and calcnumber <= 9: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry.";
					wait for any key;
			now Androginity of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 10:
			PlayerSexualOrientationMenu;
		else:
			now gendermenuexit is 1;

to bodytypesetting:
	now calcnumber is -1;
	let bodymenuexit be 0;
	while bodymenuexit is 0:
		clear the screen;
		say "[bold type]Body Type: [Body Adjective of Player][roman type][line break]";
		say "(1) [link]Body Weight[as]1[end link]: [Body Weight of Player] - [if Body Weight of Player >= 1 and Body Weight of Player <= 3]Lightweight[else if Body Weight of Player >= 4 and Body Weight of Player <= 6]Middleweight[else if Body Weight of Player >= 7 and Body Weight of Player <= 9]Heavyweight[end if][line break]";
		say "(2) [link]Body Definition[as]2[end link]: [Body Definition of Player] - [if Body Definition of Player >= 1 and Body Definition of Player <= 3]Low Muscle[else if Body Definition of Player >= 4 and Body Definition of Player <= 6]Medium Muscle[else if Body Definition of Player >= 7 and Body Definition of Player <= 9]High Muscle[end if][line break]";
		say "(3) [if player is not conformist]Non-[end if][link]Conformist[as]3[end link]: ";
		if "Conformist" is listed in Feats of Player:
			say "Your body type, overall gender appearance, eye color, head hair and beard style will [bold type]change depending on your infection[roman type].";
			say "Note: This allows for drastic changes in body mass and appearance.";
			say "Example: A lightweight and medium muscle (slender) female human with tomboyish looks and mannerisms catches the German Shepherd Male infection. She will become a middleweight and high muscle (muscular) male German shepherd with masculine looks and mannerisms, complete with fur, tail, cock, etc.";
		else:
			say "Your body type, overall gender appearance, eye color, head hair and beard style will [bold type]stay constant despite infections[roman type].";
			say "Note: This just retains the overall recognizability of a person and does not make you immune to transformation. Everything else will still shift easily.";
			say "Example: A lightweight and medium muscle (slender) female human with tomboyish looks and mannerisms catches the German Shepherd Male infection. She will become a lightweight and medium muscle (slender) male German shepherd with tomboyish looks and mannerisms, complete with fur, tail, cock, etc.";
		say "[line break][line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-3)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 1-9. 1 being a very light build and 9 being a very heavy build:[line break]";
				get a number; [returns as calcnumber]
				if calcnumber >= 1 and calcnumber <= 9: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry";
			now Body Weight of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 2:
			now calcnumber is -1;
			while calcnumber <= 0:
				say "Please enter a number from 1-9. 1 being a barely defined body and 9 being a very highly defined body:[line break]";
				get a number; [returns as calcnumber]
				if calcnumber >= 1 and calcnumber <= 9: [Valid choice, else repeat]
					break;
				else:
					say "Invalid Entry";
			now Body Definition of Player is calcnumber;
			now calcnumber is -1; [resetting calcnumber for the main menu]
		else if calcnumber is 3:
			if "Conformist" is listed in Feats of player:
				remove "Conformist" from Feats of Player;
			else:
				add "Conformist" to Feats of Player;
		else:
			now bodymenuexit is 1;

to skincolorsetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Skin Color:[roman type][line break]";
		say "(1) [link]Very Fair[as]1[end link] ";
		if Torso Color of Player is "pale":
			say ": Current";
		LineBreak;
		say "(2) [link]Fair[as]2[end link] ";
		if Torso Color of Player is "fair":
			say ": Current";
		LineBreak;
		say "(3) [link]Medium[as]3[end link] ";
		if Torso Color of Player is "medium":
			say ": Current";
		LineBreak;
		say "(4) [link]Olive[as]4[end link] ";
		if Torso Color of Player is "olive":
			say ": Current";
		LineBreak;
		say "(5) [link]Brown[as]5[end link] ";
		if Torso Color of Player is "brown":
			say ": Current";
		LineBreak;
		say "(6) [link]Ebony[as]6[end link] ";
		if Torso Color of Player is "ebony":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now Head Color of Player is "pale";
			now Torso Color of Player is "pale";
			now Back Color of Player is "pale";
			now Arms Color of Player is "pale";
			now Legs Color of Player is "pale";
			now Ass Color of Player is "pale";
			now Cock Color of Player is "peach";
			now Cunt Color of Player is "taffy";
			now Asshole Color of Player is "taffy";
			now Nipple Color of Player is "pastel pink";
		else if calcnumber is 2:
			now Head Color of Player is "fair";
			now Torso Color of Player is "fair";
			now Back Color of Player is "fair";
			now Arms Color of Player is "fair";
			now Legs Color of Player is "fair";
			now Ass Color of Player is "fair";
			now Cock Color of Player is "dark almond";
			now Cunt Color of Player is "tan";
			now Asshole Color of Player is "tan";
			now Nipple Color of Player is "cognac";
		else if calcnumber is 3:
			now Head Color of Player is "medium";
			now Torso Color of Player is "medium";
			now Back Color of Player is "medium";
			now Arms Color of Player is "medium";
			now Legs Color of Player is "medium";
			now Ass Color of Player is "medium";
			now Cock Color of Player is "brown sugar";
			now Cunt Color of Player is "cinnamon";
			now Asshole Color of Player is "cinnamon";
			now Nipple Color of Player is "sweet cocoa";
		else if calcnumber is 4:
			now Head Color of Player is "olive";
			now Torso Color of Player is "olive";
			now Back Color of Player is "olive";
			now Arms Color of Player is "olive";
			now Legs Color of Player is "olive";
			now Ass Color of Player is "olive";
			now Cock Color of Player is "cinnamon";
			now Cunt Color of Player is "sienna";
			now Asshole Color of Player is "sienna";
			now Nipple Color of Player is "sweet cocoa";
		else if calcnumber is 5:
			now Head Color of Player is "brown";
			now Torso Color of Player is "brown";
			now Back Color of Player is "brown";
			now Arms Color of Player is "brown";
			now Legs Color of Player is "brown";
			now Ass Color of Player is "brown";
			now Cock Color of Player is "chocolate brown";
			now Cunt Color of Player is "umber brown";
			now Asshole Color of Player is "umber brown";
			now Nipple Color of Player is "walnut brown";
		else if calcnumber is 6:
			now Head Color of Player is "ebony";
			now Torso Color of Player is "ebony";
			now Back Color of Player is "ebony";
			now Arms Color of Player is "ebony";
			now Legs Color of Player is "ebony";
			now Ass Color of Player is "ebony";
			now Cock Color of Player is "dark chocolate";
			now Cunt Color of Player is "dark maroon";
			now Asshole Color of Player is "dark maroon";
			now Nipple Color of Player is "almost black";
		now menuexit is 1;

to hairsetting:
	now calcnumber is -1;
	let mainmenuexit be 0;
	while mainmenuexit is 0:
		clear the screen;
		say "[bold type]Hair Settings:[roman type][line break]";
		say "(1) [link]Hair Color[as]1[end link]: [Hair Color of Player][line break]";
		say "(2) [link]Hair Style[as]2[end link]: [Hair Style of Player][line break]";
		say "(3) [link]Hair Shape[as]3[end link]: [Hair Shape of Player][line break]";
		say "(4) [link]Beard Style[as]4[end link]: [Beard Style of Player][line break]";
		say "(5) [link]Body Hair Length[as]5[end link]: [Body Hair Adjective of Player][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-5)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 5:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			HairColorSetting;
		else if calcnumber is 2:
			HairStyleSetting;
		else if calcnumber is 3:
			HairShapeSetting;
		else if calcnumber is 4:
			BeardStyleSetting;
		else if calcnumber is 5:
			BodyHairLengthSetting;
		else:
			now mainmenuexit is 1;

to HairShapeSetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Hair Shape:[roman type][line break]";
		say "(1) [link]Straight[as]1[end link] ";
		if Hair Shape of Player is "straight":
			say ": Current";
		LineBreak;
		say "(2) [link]Curly[as]2[end link] ";
		if Hair Shape of Player is "curly":
			say ": Current";
		LineBreak;
		say "(3) [link]Wavy[as]3[end link] ";
		if Hair Shape of Player is "wavy":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-3)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Hair Shape of Player is "straight";
			-- 2:
				now Hair Shape of Player is "curly";
			-- 3:
				now Hair Shape of Player is "wavy";
		now menuexit is 1;

to HairStyleSetting: [Afro, Bangs, Bob Cut, Bowl Cut, Braid, Bun, Buzzcut, Combover, Cornrows, Crew Cut, Curtained, Dreadlocks, Fauxhawk, Flattop, Lob, Mohawk, Mullet, Pageboy, Pigtails, Pompadour, Ponytail, Quiff, Rattail, Short Cut, Slicked-back, Spiky, Undercut]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Hair Style:[roman type][line break]";
		say "(1) [link]Afro[as]1[end link] ";
		if Hair Style of Player is "afro":
			say ": Current";
		LineBreak;
		say "(2) [link]Bangs[as]2[end link] ";
		if Hair Style of Player is "bangs":
			say ": Current";
		LineBreak;
		say "(3) [link]Bob Cut[as]3[end link] ";
		if Hair Style of Player is "bob cut":
			say ": Current";
		LineBreak;
		say "(4) [link]Bowl Cut[as]4[end link] ";
		if Hair Style of Player is "bowl cut":
			say ": Current";
		LineBreak;
		say "(5) [link]Braid[as]5[end link] ";
		if Hair Style of Player is "braid":
			say ": Current";
		LineBreak;
		say "(6) [link]Bun[as]6[end link] ";
		if Hair Style of Player is "bun":
			say ": Current";
		LineBreak;
		say "(7) [link]Buzzcut[as]7[end link] ";
		if Hair Style of Player is "buzzcut":
			say ": Current";
		LineBreak;
		say "(8) [link]Combover[as]8[end link] ";
		if Hair Style of Player is "combover":
			say ": Current";
		LineBreak;
		say "(9) [link]Cornrows[as]9[end link] ";
		if Hair Style of Player is "cornrows":
			say ": Current";
		LineBreak;
		say "(10) [link]Crew Cut[as]10[end link] ";
		if Hair Style of Player is "crew cut":
			say ": Current";
		LineBreak;
		say "(11) [link]Curtailed[as]11[end link] ";
		if Hair Style of Player is "curtailed":
			say ": Current";
		LineBreak;
		say "(12) [link]Dreadlocks[as]12[end link] ";
		if Hair Style of Player is "dreadlocks":
			say ": Current";
		LineBreak;
		say "(13) [link]Fauxhawk[as]13[end link] ";
		if Hair Style of Player is "fauxhawk":
			say ": Current";
		LineBreak;
		say "(14) [link]Flattop[as]14[end link] ";
		if Hair Style of Player is "flattop":
			say ": Current";
		LineBreak;
		say "(15) [link]Lob[as]15[end link] ";
		if Hair Style of Player is "lob":
			say ": Current";
		LineBreak;
		say "(16) [link]Mohawk[as]16[end link] ";
		if Hair Style of Player is "mohawk":
			say ": Current";
		LineBreak;
		say "(17) [link]Pageboy[as]17[end link] ";
		if Hair Style of Player is "pageboy":
			say ": Current";
		LineBreak;
		say "(18) [link]Pigtails[as]18[end link] ";
		if Hair Style of Player is "pigtails":
			say ": Current";
		LineBreak;
		say "(19) [link]Pompadour[as]19[end link] ";
		if Hair Style of Player is "pompadour":
			say ": Current";
		LineBreak;
		say "(20) [link]Ponytail[as]20[end link] ";
		if Hair Style of Player is "ponytail":
			say ": Current";
		LineBreak;
		say "(21) [link]Quiff[as]21[end link] ";
		if Hair Style of Player is "quiff":
			say ": Current";
		LineBreak;
		say "(22) [link]Rattail[as]22[end link] ";
		if Hair Style of Player is "rattail":
			say ": Current";
		LineBreak;
		say "(23) [link]Short Cut[as]23[end link] ";
		if Hair Style of Player is "short cut":
			say ": Current";
		LineBreak;
		say "(24) [link]Slicked-Back[as]24[end link] ";
		if Hair Style of Player is "slicked-back":
			say ": Current";
		LineBreak;
		say "(25) [link]Spiky[as]25[end link] ";
		if Hair Style of Player is "spiky":
			say ": Current";
		LineBreak;
		say "(26) [link]Undercut[as]26[end link] ";
		if Hair Style of Player is "undercut":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-26)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 26:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Hair Style of Player is "afro";
				now Hair Length of Player is 4;
			-- 2:
				now Hair Style of Player is "bangs";
				now Hair Length of Player is 3;
			-- 3:
				now Hair Style of Player is "bob cut";
				now Hair Length of Player is 3;
			-- 4:
				now Hair Style of Player is "bowl cut";
				now Hair Length of Player is 2;
			-- 5:
				now Hair Style of Player is "braid";
				now Hair Length of Player is 12;
			-- 6:
				now Hair Style of Player is "bun";
				now Hair Length of Player is 4;
			-- 7:
				now Hair Style of Player is "buzzcut";
				now Hair Length of Player is 1;
			-- 8:
				now Hair Style of Player is "combover";
				now Hair Length of Player is 2;
			-- 9:
				now Hair Style of Player is "cornrows";
				now Hair Length of Player is 2;
			-- 10:
				now Hair Style of Player is "crew cut";
				now Hair Length of Player is 1;
			-- 11:
				now Hair Style of Player is "curtailed";
				now Hair Length of Player is 1;
			-- 12:
				now Hair Style of Player is "dreadlocks";
				now Hair Length of Player is 6;
			-- 13:
				now Hair Style of Player is "fauxhawk";
				now Hair Length of Player is 2;
			-- 14:
				now Hair Style of Player is "flattop";
				now Hair Length of Player is 1;
			-- 15:
				now Hair Style of Player is "lob";
				now Hair Length of Player is 4;
			-- 16:
				now Hair Style of Player is "mohawk";
				now Hair Length of Player is 4;
			-- 17:
				now Hair Style of Player is "pageboy";
				now Hair Length of Player is 4;
			-- 18:
				now Hair Style of Player is "pigtails";
				now Hair Length of Player is 7;
			-- 19:
				now Hair Style of Player is "pompadour";
				now Hair Length of Player is 5;
			-- 20:
				now Hair Style of Player is "ponytail";
				now Hair Length of Player is 9;
			-- 21:
				now Hair Style of Player is "quiff";
				now Hair Length of Player is 2;
			-- 22:
				now Hair Style of Player is "rattail";
				now Hair Length of Player is 2;
			-- 23:
				now Hair Style of Player is "short cut";
				now Hair Length of Player is 1;
			-- 24:
				now Hair Style of Player is "slicked-back";
				now Hair Length of Player is 1;
			-- 25:
				now Hair Style of Player is "spiky";
				now Hair Length of Player is 2;
			-- 26:
				now Hair Style of Player is "undercut";
				now Hair Length of Player is 2;
		now menuexit is 1;

to HairColorSetting: [brown, blond, black, auburn, red, gray, white]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Current Hair Color: [Hair Color of Player][roman type][line break]";
		say "(1) [link]Brown[as]1[end link][line break]";
		say "(2) [link]Blond[as]2[end link][line break]";
		say "(3) [link]Black[as]3[end link][line break]";
		say "(4) [link]Auburn[as]4[end link][line break]";
		say "(5) [link]Red[as]5[end link][line break]";
		say "(6) [link]Grey[as]6[end link][line break]";
		say "(7) [link]White[as]7[end link][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now Hair Color of Player is "brown";
		else if calcnumber is 2:
			now Hair Color of Player is "blond";
		else if calcnumber is 3:
			now Hair Color of Player is "black";
		else if calcnumber is 4:
			now Hair Color of Player is "auburn";
		else if calcnumber is 5:
			now Hair Color of Player is "red";
		else if calcnumber is 6:
			now Hair Color of Player is "grey";
		else if calcnumber is 7:
			now Hair Color of Player is "white";
		now menuexit is 1;

to BeardStyleSetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Beard Style:[roman type][line break]";
		say "(1) [link]3-Day Stubble Beard[as]1[end link] ";
		if Beard Style of Player is "3-day stubble beard":
			say ": Current";
		LineBreak;
		say "(2) [link]Anchor Beard[as]2[end link] ";
		if Beard Style of Player is "anchor beard":
			say ": Current";
		LineBreak;
		say "(3) [link]Balbo Beard[as]3[end link] ";
		if Beard Style of Player is "balbo beard":
			say ": Current";
		LineBreak;
		say "(4) [link]Chevron Stache[as]4[end link] ";
		if Beard Style of Player is "chevron stache":
			say ": Current";
		LineBreak;
		say "(5) [link]Chin Strap Beard[as]5[end link] ";
		if Beard Style of Player is "chin strap beard":
			say ": Current";
		LineBreak;
		say "(6) [link]Chin Strip Beard[as]6[end link] ";
		if Beard Style of Player is "chin strip beard":
			say ": Current";
		LineBreak;
		say "(7) [link]Circle Beard[as]7[end link] ";
		if Beard Style of Player is "circle beard":
			say ": Current";
		LineBreak;
		say "(8) [link]Fu Manchu Beard[as]8[end link] ";
		if Beard Style of Player is "fu manchu beard":
			say ": Current";
		LineBreak;
		say "(9) [link]Goatee[as]9[end link] ";
		if Beard Style of Player is "goatee":
			say ": Current";
		LineBreak;
		say "(10) [link]Gunslinger Beard[as]10[end link] ";
		if Beard Style of Player is "gunslinger beard":
			say ": Current";
		LineBreak;
		say "(11) [link]Horseshoe Mustache[as]11[end link] ";
		if Beard Style of Player is "horseshoe mustache":
			say ": Current";
		LineBreak;
		say "(12) [link]Mutton Chops Beard[as]12[end link] ";
		if Beard Style of Player is "mutton chops beard":
			say ": Current";
		LineBreak;
		say "(13) [link]Petite Goatee[as]13[end link] ";
		if Beard Style of Player is "petite goatee":
			say ": Current";
		LineBreak;
		say "(14) [link]Porn Stache[as]14[end link] ";
		if Beard Style of Player is "porn stache":
			say ": Current";
		LineBreak;
		say "(15) [link]Royale Beard[as]15[end link] ";
		if Beard Style of Player is "royale beard":
			say ": Current";
		LineBreak;
		say "(16) [link]Short Boxed Beard[as]16[end link] ";
		if Beard Style of Player is "short boxed beard":
			say ": Current";
		LineBreak;
		say "(17) [link]Van Dyke Beard[as]17[end link] ";
		if Beard Style of Player is "van dyke beard":
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-17)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 17:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Beard Style of Player is "3-day stubble beard";
			-- 2:
				now Beard Style of Player is "anchor beard";
			-- 3:
				now Beard Style of Player is "balbo beard";
			-- 4:
				now Beard Style of Player is "chevron stache";
			-- 5:
				now Beard Style of Player is "chin strap beard";
			-- 6:
				now Beard Style of Player is "chin strip beard";
			-- 7:
				now Beard Style of Player is "circle beard";
			-- 8:
				now Beard Style of Player is "fu manchu beard";
			-- 9:
				now Beard Style of Player is "goatee";
			-- 10:
				now Beard Style of Player is "gunslinger beard";
			-- 11:
				now Beard Style of Player is "horseshoe mustache";
			-- 12:
				now Beard Style of Player is "mutton chops beard";
			-- 13:
				now Beard Style of Player is "petite goatee";
			-- 14:
				now Beard Style of Player is "porn stache";
			-- 15:
				now Beard Style of Player is "royale beard";
			-- 16:
				now Beard Style of Player is "short boxed beard";
			-- 17:
				now Beard Style of Player is "van dyke beard";
		now menuexit is 1;

to BodyHairLengthSetting:
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Body Hair Length:[roman type][line break]";
		say "(1) [link]Smooth[as]1[end link] ";
		if Body Hair Length of Player is 1:
			say ": Current";
		LineBreak;
		say "(2) [link]Slightly Hairy[as]2[end link] ";
		if Body Hair Length of Player is 2:
			say ": Current";
		LineBreak;
		say "(3) [link]Somewhat Hairy[as]3[end link] ";
		if Body Hair Length of Player is 3:
			say ": Current";
		LineBreak;
		say "(4) [link]Hairy[as]4[end link] ";
		if Body Hair Length of Player is 4:
			say ": Current";
		LineBreak;
		say "(5) [link]Very Hairy[as]5[end link] ";
		if Body Hair Length of Player is 5:
			say ": Current";
		LineBreak;
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (1-5)> [run paragraph on]";
			get a number;
			if calcnumber >= 1 and calcnumber <= 5:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is:
			-- 1:
				now Hair Shape of Player is "smooth";
			-- 2:
				now Hair Shape of Player is "slightly hairy";
			-- 3:
				now Hair Shape of Player is "somewhat hairy";
			-- 4:
				now Hair Shape of Player is "hairy";
			-- 5:
				now Hair Shape of Player is "very hairy";
		now menuexit is 1;

to eyecolorsetting: [ Green, Blue, Gray, Brown, Hazel, Amber, Red]
	now calcnumber is -1;
	let menuexit be 0;
	while menuexit is 0:
		clear the screen;
		say "[bold type]Current Eye Color: [Eye Color of Player][roman type][line break]";
		say "(1) [link]Brown[as]1[end link][line break]";
		say "(2) [link]Green[as]2[end link][line break]";
		say "(3) [link]Blue[as]3[end link][line break]";
		say "(4) [link]Grey[as]4[end link][line break]";
		say "(5) [link]Hazel[as]5[end link][line break]";
		say "(6) [link]Amber[as]6[end link][line break]";
		say "(7) [link]Red[as]7[end link][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now Eye Color of Player is "brown";
		if calcnumber is 2:
			now Eye Color of Player is "green";
		if calcnumber is 3:
			now Eye Color of Player is "blue";
		if calcnumber is 4:
			now Eye Color of Player is "grey";
		if calcnumber is 5:
			now Eye Color of Player is "hazel";
		if calcnumber is 6:
			now Eye Color of Player is "amber";
		if calcnumber is 7:
			now Eye Color of Player is "red";
		now menuexit is 1;

Game Start ends here.
