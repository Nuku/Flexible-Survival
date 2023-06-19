Version 1 of Game Start by MinimalBuild begins here.
[ Version 1 - Extracted during dissection of the Story.ni - Wahn]

Part 0 - Variables for Settings

StartingGender is a number that varies.[@Tag:NotSaved] [player gender]
[StartingGender is usually 1.] [Male; See MinimalBuild/Presets.i7x]

MainStat is a number that varies.[@Tag:NotSaved] [main stat]
[MainStat is usually 1.] [Strength; See MinimalBuild/Presets.i7x]

ScenarioChosen is a number that varies.[@Tag:NotSaved] [game type]
[ScenarioChosen is usually 1.] [Bunker; See MinimalBuild/Presets.i7x]

HardMode is a truth state that varies. [hard mode on/off]
[HardMode is usually false.] [See MinimalBuild/Presets.i7x]

NoHealMode is a truth state that varies. [no-heal mode on/off]
[NoHealMode is usually false.] [See MinimalBuild/Presets.i7x]

BlindMode is a truth state that varies. [blind mode on/off]
[BlindMode is usually false.] [See MinimalBuild/Presets.i7x]

anallevel is a number that varies. [player preference for anal sex]
[anallevel is usually 2.] [normal; See MinimalBuild/Presets.i7x]

WSlevel is a number that varies. [player waterspots preference]
[WSlevel is usually 2.] [normal; See MinimalBuild/Presets.i7x]

ovipreglevel is a number that varies. [player ovi-pregnancy preference]
[ovipreglevel is usually 2.] [normal; See MinimalBuild/Presets.i7x]

freefeatgeneral is a text that varies. [default starting general feat]
[freefeatgeneral is usually "Survivalist".] [See MinimalBuild/Presets.i7x]

freefeatfun is a text that varies. [default starting fun feat]
[freefeatfun is usually "Curious".] [See MinimalBuild/Presets.i7x]

waiterhater is a number that varies. [creates (and sets) flag for skipping many "wait for any key;"]

clearnomore is a number that varies. [creates (and sets) flag for skipping most (all?) clear the screen]

GenderLock is a number that varies. [locks gender according to player preferences]
[GenderLock is usually 1.] [See MinimalBuild/Presets.i7x]

Scenario is a text that varies. [chosen scenario]
Started is a number that varies.

RestoreMode is a truth state that varies. RestoreMode is usually false. [for restoring a save directly from the start menu]

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
		say "(12) [link]Graphics[as]12[end link] - [bold type][if NewGraphicsInteger is 1]Inline[else if NewGraphicsInteger is 2]Side-Window[else if NewGraphicsInteger is 0]DISABLED[end if][roman type][line break]";
		say "(13) [link]Inventory Columns[as]13[end link] - [bold type][invcolumns][roman type][line break]";
		say "[line break]";
		say "(99) [link]Restore a save[as]99[end link][line break]";
		say "(0) [link]Start Game[as]0[end link][line break]";
		while 1 is 1:
			say "(0-13)>[run paragraph on]";
			get a number;
			if ( calcnumber >= 0 and calcnumber <= 13 ) or calcnumber is 99:
				break;
			else:
				say "Invalid Entry";
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
				say "[set_invcolumns]";
			-- 99:
				say "Confirm restore?";
				if Player consents:
					now RestoreMode is true;
					say "[silent_start]";
					now Trixieexit is 1;
					if RestoreMode is true:
						now RestoreMode is false;
						try restoring the game;
						if MaxHP of Player is 0:
							try restarting the game;
			-- 0:
				say "Confirm game start?";
				if Player consents:
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
		say "You have enabled the new graphics window. This will be on the selected side of your screen and will always take up a proportion of the main screen.[line break]";
		say "Please choose the position value now. (0 = right side, 1 = left side, 2 = above, 3 = below)[line break]";
		while 1 is 1:
			say "(0-3)>[run paragraph on]";
			get a number;
			if calcnumber > -1 and calcnumber < 4:
				break;
			else:
				say "Invalid Entry. Please enter a number between 0 and 3.";
		now NewGraphicsPosition is calcnumber;
		say "Please choose the proportion value now. Enter a number between 5 - 90. This will represent the percentage of your main screen that the graphics side-window will take up. We recommend somewhere around 30.[line break]";
		while 1 is 1:
			say "(5-90)>[run paragraph on]";
			get a number;
			if calcnumber > 4 and calcnumber < 91:
				break;
			else:
				say "Invalid Entry. Please enter a number between 5 and 90.";
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
	say "Want more details on the game and updates? ----- [bold type]https://blog.flexiblesurvival.com/[roman type]  ------[line break][line break]";
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
		if scenario is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
	if HardMode is true: [Hard mode alteration]
		increase score by 300;
	if NoHealMode is true: [No-heal mode alteration]
		increase score by 150;
		now NoHealMode is true;
	if BlindMode is true: [Blind mode alteration]
		increase score by 100;
		now BlindMode is true;
	if scenario is "Bunker":
		ItemGain Broken Smartphone by 1 silently;
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. You managed to escape to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	else if scenario is "Caught Outside":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. People wandered the streets, confused, panicked. Then they came. Monsters. Freaks. They'd grab people. Some got mauled on the spot and others were dragged off. Some fought back. You tried to resist, but did not escape unscathed. In the end, you managed to get to safety here - the old bunker. You remember seeing that stupid bunker sign for years, who knew remembering it would save your life? You waited for others to come. Surely you were not the only one to remember?";
		say "     You've waited in the dark for others or rescue to come, but to no avail. You're not sure how long you've been down here, but the sounds have long since died away. You've eaten a good portion of the food and water. No choice but to go out and greet the city. At least you have your [bold type]backpack[roman type] and your [bold type]watch[roman type]. How bad could it be?";
	else if scenario is "Rescuer Stranded":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go, just a precious hour later. There were growing reports of monsters and freaks spreading across the city, attacking the citizens. You had been part of the military's fast response team sent in just hours after the outbreak. Your initial task was reconnaissance with the hopes of setting up a rally point for helicopter evacuation of any non-infected survivors. You were sent in with little preparation and no idea at all of what you were truly in for.";
		say "     Your team was moving on foot through the streets of downtown when you were set upon by creatures out of a pervert's nightmare. All discipline was lost as your team disintegrated into panic and fled unthinkingly into the city, pursued by the nightmares...";
		say "     You awoke in what appears to be a disused bunker. You have no idea how you even got here or how long you've been out of it, but you are uninfected. In your panicked flight, you lost all of your supplies. No food. No water. No weapons. No radio. At least you have your backpack and your watch. Heaven only knows what awaits you outside, but you have to find a way back.";
	else if scenario is "Researcher":
		say "     You remember how it went down. Satellite, gone, Internet, offline. The power was the last thing to go. Thankfully, you weren't in one of the outbreak zones when it happened, but your life's been thrown upside down like everyone else's by the ensuing chaos. Seeing an opportunity to help, or at least make some money off the situation, you agreed to enter one of the hotspots through a military contractor. The city's been cordoned off by the military while they gather intel and plan, giving you some time to gather samples and investigate what's happening.";
		say "     The helicopter brought you into the devastated city. Ruin and strange creatures milled about beneath you as you flew over at high speed. This place has been written off as a loss, but there was rumor they'd take it back. You only have so much time to investigate, and you plan to make the most of it.";
		say "     You're let down beside an old bunker. It would serve as your base of operations, and would be where they'd pick you up when it was over. You should be scared, but you just can't seem to muster that sensation. They gave you booster shots against the nanites as well as a few supplies and a promise of others joining you soon. You know what you are doing. They will be so proud of what you find. Maybe you can figure out a way to stop this from happening again in other cities.";
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
	[Code for letting player select graphics window size]
	say "[bold type]Graphic Settings[roman type][line break]";
	say "Before restoring, please specify the graphic settings.[line break]";
	say "[bold type] No graphics - 1 [roman type][line break]";
	say "[bold type] Old inline graphics only - 2 [roman type][line break]";
	say "[bold type] New graphics side-window - 3 [roman type][line break]";
	while 1 is 1:
		say "Please enter the number that matches your choice (1-3)>[run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber < 4:
			break;
		else:
			say "Invalid Entry. Please enter a number between 1 and 3";
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
		say "You have enabled the new graphics window. This will be on the selected side of your screen and will always take up a proportion of the main screen.[line break]";
		say "Please choose the position value now. (0 = right side, 1 = left side, 2 = above, 3 = below)[line break]";
		while 1 is 1:
			say "(0-3)>[run paragraph on]";
			get a number;
			if calcnumber > -1 and calcnumber < 4:
				break;
			else:
				say "Invalid Entry. Please enter a number between 0 and 3.";
		now NewGraphicsPosition is calcnumber;
		say "Please choose the proportion value now. Enter a number between 5 - 90. This will represent the percentage of your main screen that the graphics side-window will take up. We recommend somewhere around 30.[line break]";
		while 1 is 1:
			say "(5-90)>[run paragraph on]";
			get a number;
			if calcnumber > 4 and calcnumber < 91:
				break;
			else:
				say "Invalid Entry. Please enter a number between 5 and 90.";
		now NewGraphicsRatio is calcnumber;
		clear the screen;
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
		follow the current graphics drawing rule;
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
		if scenario is "Rescuer Stranded":
			now invent of bunker is { };
			add "cot" to invent of bunker;
			increase score by 300;
	if HardMode is true: [Hard mode alteration]
		increase score by 300;
	if NoHealMode is true: [No-heal mode alteration]
		increase score by 150;
	if BlindMode is true: [Blind mode alteration]
		increase score by 100;
	AddNavPoint Zephyr Lobby;
	WaitLineBreak;

Chapter 2 - Player Name

[See MinimalBuild/Basic Functions.i7x]

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
			say "[line break][bold type]Character Customization:[roman type][line break]";
			say "(1) [link]Player Starting Gender[as]1[end link] - [bold type][if StartingGender is 1]Male[else if StartingGender is 2]Female[else if StartingGender is 3]Trans-Woman[else if StartingGender is 4]Trans-Man[else if StartingGender is 5]Male Herm[else if StartingGender is 6]Female Herm[end if][roman type][line break]";
			say "(2) [link]Player Sexual Experience[as]2[end link]: [playervirginsay][line break]";
			say "(3) [link]Body Configuration Lock[as]3[end link] - [bold type][if GenderLock is 1]None[else if GenderLock is 2]Random[else if GenderLock is 3]Unchanging[else if GenderLock is 4]Always Cocky[else if GenderLock is 5]Always a Pussy[else if GenderLock is 6]Single Sexed[else if GenderLock is 7]Flat Chested[else if GenderLock is 8]Simplified Masculine[else]ERROR[end if][roman type][line break]";
			say "(4) [link]Player Pronouns[as]4[end link] - [bold type][PronounChoice of Player][roman type][line break]";
			say "[line break]";
			say "(0) [link]Return to main menu[as]0[end link][line break]";
			while 1 is 1:
				say "Choice? (0-4)>[run paragraph on]";
				get a number;
				if calcnumber >= 0 and calcnumber <= 4:
					break;
				else:
					say "Invalid Entry";
			LineBreak;
			if calcnumber is 1:
				PlayerStartingGenderSetting;
			else if calcnumber is 2:
				playersexsetting;
			else if calcnumber is 3:
				genderlockmenu;
			else if calcnumber is 4:
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
				say "Choice? (0-9)>[run paragraph on]";
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
		say "[bold type]Select a starting gender: (exact sizes for all parts are randomized in human ranges)[roman type][line break]";
		say "(1) [link]Male[as]1[end link] - You have a penis and flat chest.";
		say "(2) [link]Female[as]2[end link] - You have a vagina and breasts.";
		say "(3) [link]Trans-Woman[as]3[end link] - You have a penis and breasts.";
		say "(4) [link]Trans-Man[as]4[end link] - You have a vagina and flat chest.";
		say "(5) [link]Male Herm[as]5[end link] - You have both a vagina and penis, but a flat chest.";
		say "(6) [link]Female Herm[as]6[end link] - You have a vagina, penis and breasts.";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is not 0:
			now StartingGender is calcnumber;
			now gsexit is 1;
		else:
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
		say "     Sexual Experience: [if SexuallyExperienced of Player is true]Yes[else]No[end if][line break]";
		say "(1) [link]Oral Virgin[as]1[end link]: [if OralVirgin of Player is true]Yes[else]No[end if][line break]";
		say "(2) [link]Vaginal Virgin[as]2[end link]: [if Virgin of Player is true]Yes[else]No[end if][line break]";
		say "(3) [link]Penile Virgin[as]3[end link]: [if PenileVirgin of Player is true]Yes[else]No[end if][line break]";
		say "(4) [link]Anal Virgin[as]4[end link]: [if AnalVirgin of Player is true]Yes[else]No[end if][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-4)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 4:
				break;
			else:
				say "Invalid Entry";
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
		else if (OralVirgin of Player is false or Virgin of Player is false or PenileVirgin of Player is false or AnalVirgin of Player is false):
			now SexuallyExperienced of player is true;
		now calcnumber is -1;

to say playervirginsay:
	if SexuallyExperienced of player is false:
		say "Virgin";
	else:
		if StartingGender is 1:
			say "[if OralVirgin of Player is false]Orally Experienced[else]Oral Virgin[end if], [if AnalVirgin of Player is false]Anally Experience[else]Anal Virgin[end if], [if PenileVirgin of Player is false]Penally Experienced[else]Penile Virgin[end if]";
		else:
			say "[if OralVirgin of Player is false]Orally Experienced[else]Oral Virgin[end if], [if AnalVirgin of Player is false]Anally Experience[else]Anal Virgin[end if], [if Virgin of Player is false]Vaginally Experienced[else]Vaginal Virgin[end if]";

to genderlockmenu:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		say "[bold type]Select a body configuration lock:[roman type][line break]";
		say "(1) [link]None[as]1[end link] - There is no restriction to your gender-transformation. You receive a 5% point bonus from this selection at game end.";
		say "(2) [link]Random[as]2[end link] - Enjoy a loss of control? A random lock (4-8) is chosen for you at game start!";
		say "[line break]";
		say "(3) [link]Unchanging[as]3[end link] - Preserve selected starting gender.";
		say "(4) [link]Always Cocky[as]4[end link] - Your body will never give up its cock (if it has one, or gains one).";
		say "(5) [link]Always a Pussy[as]5[end link] - Your body will never give up its pussy (if it has one, or gains one).";
		say "(6) [link]Single Sexed[as]6[end link] - Regardless of mutation, you will never be a herm but remain male or female, with the right chest to match.";
		say "(7) [link]Flat Chested[as]7[end link] - Regardless of mutation, you never gain breasts.";
		say "(8) [link]Simplified Masculine[as]8[end link] - Flat Chested + Single-Sexed.";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-8)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 8:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is not 0:
			now GenderLock is calcnumber;
			now gsexit is 1;
		else:
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
			add "Herm Preferred" to feats of Player;
			add "Flat Chested" to feats of Player;
		else if StartingGender is 6:
			say "Locked to body configuration: breasts, both genitals.";
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
		add "Single Sexed" to feats of Player;
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
		say "(1) [link]Strength[as]1[end link] = [if MainStat is 1][bold type]17[roman type][else if MainStat is 7]??[run paragraph on][else]12[end if] - Represents your raw physical might and your ability to deal damage.";
		say "(2) [link]Dexterity[as]2[end link] = [if MainStat is 2][bold type]17[roman type][else if MainStat is 7]??[run paragraph on][else]12[end if] - Affects your likelihood to hit and dodge.";
		say "(3) [link]Stamina[as]3[end link] = [if MainStat is 3][bold type]17[roman type][else if MainStat is 7]??[run paragraph on][else]12[end if] - Increases your total health pool and your overall endurance.";
		say "(4) [link]Charisma[as]4[end link] = [if MainStat is 4][bold type]17[roman type][else if MainStat is 7]??[run paragraph on][else]12[end if] - Deals with social interactions with NPCs and your pets, and affects your morale.";
		say "(5) [link]Intelligence[as]5[end link] = [if MainStat is 5][bold type]17[roman type][else if MainStat is 7]??[run paragraph on][else]12[end if] - Increases the efficacy of healing medkits, your chances of vial collection (if able) and your success at escaping.";
		say "(6) [link]Perception[as]6[end link] = [if MainStat is 6][bold type]17[roman type][else if MainStat is 7]??[run paragraph on][else]12[end if] - Influences your success while scavenging and hunting, success with ranged weapons and affects your morale.";
		say "(7) [link]Random[as]7[end link] - Randomize your stat points upon creation.";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-7)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 7:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is not 0:
			now MainStat is calcnumber;
			gs_stats;
			now gsexit is 1;
		else:
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
	if T is 2:
		increase dexterity of Player by 3;
	if T is 3:
		increase stamina of Player by 3;
	if T is 4:
		increase charisma of Player by 3;
	if T is 5:
		increase intelligence of Player by 3;
	if T is 6:
		increase perception of Player by 3;
	now T is a random number between 1 and 6;
	if T is 1:
		increase strength of Player by 2;
	if T is 2:
		increase dexterity of Player by 2;
	if T is 3:
		increase stamina of Player by 2;
	if T is 4:
		increase charisma of Player by 2;
	if T is 5:
		increase intelligence of Player by 2;
	if T is 6:
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
		if T is 2:
			increase dexterity of Player by 1;
			if dexterity of Player > 18:
				now dexterity of Player is 18;
				increase tempnum by 1;
		if T is 3:
			increase stamina of Player by 1;
			if stamina of Player > 18:
				now stamina of Player is 18;
				increase tempnum by 1;
		if T is 4:
			increase charisma of Player by 1;
			if charisma of Player > 18:
				now charisma of Player is 18;
				increase tempnum by 1;
		if T is 5:
			increase intelligence of Player by 1;
			if intelligence of Player > 18:
				now intelligence of Player is 18;
				increase tempnum by 1;
		if T is 6:
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
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				choose row current menu selection from the table of gainable feats;
				say "[title entry]: [description entry]?";
				if Player consents:
					now freefeatgeneral is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				break; [if featqualified is 0, ]
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat.";

To startFunFeatget: [alternate funfeatget used for start]
	clear the screen;
	say "Select a fun feat. This represents some strange quirk or effect induced by the nanites.";
	blank out the whole of table of gainable feats;
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
			say "Type the number corresponding to the feat you want> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of gainable feats:
				now current menu selection is calcnumber;
				choose row current menu selection from the table of gainable feats;
				say "[title entry]: [description entry]?";
				if Player consents:
					now freefeatfun is the title in row calcnumber of table of gainable feats; [important change from regular featget]
					now featqualified is 0;
				break; [if featqualified is 0, ]
			else if Playerinput matches "0":	[do not use calcnumber, as non-numbers will return 0]
				say "Selection aborted.";
				continue the action;
			else:
				say "Invalid Feat.";


Chapter 6 - Scenario Choices

to say gsopt_3:
	now calcnumber is -1;
	let gsexit be 0;
	while gsexit is 0:
		clear the screen;
		say "[bold type]Game Scenario:[roman type][line break]";
		say "(1) [link]Bunker[as]1[end link]: You managed to find your way to a bunker, where you hid away for some time. No special perks, default start.[bold type][if ScenarioChosen is 1]-Set[end if][roman type][line break]";
		say "(2) [link]Caught Outside[as]2[end link]: You were forced to survive outside. You have already been mutated a bit, though your practice has hardened you (Gain Spartan Diet, slowing gain of hunger and thirst).[bold type][if ScenarioChosen is 2]-Set[end if][roman type][line break]";
		say "(3) [link]Rescuer Stranded[as]3[end link]: You arrived late, looking for survivors, when you got cut off from your teammates. Now you just want to survive! (Start with no supplies)[bold type][if ScenarioChosen is 3]-Set[end if][roman type][line break]";
		say "(5) [link]Researcher[as]5[end link]: You are not stranded at all. You came to explore, catalog, and interact with this absolutely fascinating outbreak. You've been given immunizations to casual infection (you won't transform from losing battles) and have specialized equipment that allows you to collect the infection vials of those you defeat.[bold type][if ScenarioChosen is 5]-Set[end if][roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to main menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			now scenario is "Bunker";
			now ScenarioChosen is 1;
			now gsexit is 1;
		else if calcnumber is 2:
			now scenario is "Caught Outside";
			now ScenarioChosen is 2;
			now gsexit is 1;
		else if calcnumber is 3:
			now scenario is "Rescuer Stranded";
			now ScenarioChosen is 3;
			now gsexit is 1;
		else if calcnumber is 4:
			now scenario is "Forgotten";
			now ScenarioChosen is 4;
			now gsexit is 1;
		else if calcnumber is 5:
			now scenario is "Researcher";
			now ScenarioChosen is 5;
			now gsexit is 1;
		else if calcnumber is 6:
			now scenario is "Running with Wolves";
			now ScenarioChosen is 6;
			now gsexit is 1;
		else:
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
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 3:
				break;
			else:
				say "Invalid Entry";
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
		say "(1) [link]Banned/Warded Types[as]1[end link] - [menuwardlist] & [menubanlist] [line break]";
		say "(2) [link]Anal Content[as]2[end link] - [bold type][if AnalLevel is 1]Less[else if AnalLevel is 2]Normal[else if AnalLevel is 3]More[end if][roman type][line break]";
		say "(3) [link]WS Content[as]3[end link] - [bold type][if WSLevel is 1]None[else if WSLevel is 2]Normal[else if WSLevel is 3]Full[end if][roman type][line break]";
		say "(5) [link]Ovi Pregnancy[as]5[end link] - [bold type][if OvipregLevel is 1]Never[else]Normal[end if][roman type][line break]";
		say "(6) Player character is [if Player is CoA]the [else]NOT the [end if][link]Center of Attention[as]6[end link] of relationships in the library/bunker (disables NPC sexual relations independent of the player character). [roman type][line break]";
		say "[line break]";
		say "(0) [link]Return to previous menu[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-6)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 6:
				break;
			else:
				say "Invalid Entry";
		if calcnumber is 1:
			if clearnomore is 0, clear the screen;
			new ban menu; [see MinimalBuild/Lists and Banning.i7x]
		else if calcnumber is 2:
			try analadjusting; [see MinimalBuild/Settings Menus.i7x]
		else if calcnumber is 3:
			try WSadjusting; [see MinimalBuild/Settings Menus.i7x]
		else if calcnumber is 5:
			try oviadjusting; [see MinimalBuild/Settings Menus.i7x]
		else if calcnumber is 6:
			if "Center of Attention" is listed in Feats of player:
				remove "Center of Attention" from Feats of Player;
			else:
				add "Center of Attention" to Feats of Player;
		else:
			now contentrestrictionmenuexit is 1;

to say menuwardlist:
	if FurryList is warded or MaleList is warded or FemaleList is warded or HumorousList is warded or DemonList is warded or HermList is warded or CuckList is warded or IncestList is warded or TransList is warded or MindcontrolList is warded or NonconList is warded:
		say "[bold type]Warded: [bracket] ";
		if FeralList is warded:
			say "Feral ";
		if FurryList is warded:
			say "Furry ";
		if MaleList is warded:
			say "Male ";
		if FemaleList is warded:
			say "Female ";
		if HermList is warded:
			say "Herm ";
		if HumorousList is warded:
			say "Humorous ";
		if DemonList is warded:
			say "Hellspawn ";
		if TransList is warded:
			say "Transgender ";
		if CuckList is warded:
			say "Cuck ";
		if IncestList is warded:
			say "Incest ";
		if NonconList is warded:
			say "Noncon ";
		if MindcontrolList is warded:
			say "Mindcontrol ";
		say "[close bracket][roman type][line break]";
	else:
		say "[bold type]None Warded[roman type][line break]";

to say menubanlist:
	if FurryList is banned or MaleList is banned or FemaleList is banned or HumorousList is banned or DemonList is banned or HermList is banned or CuckList is banned or IncestList is banned or TransList is banned or MindcontrolList is banned or NonconList is banned:
		say "[bold type]Banned: [bracket] ";
		if FeralList is banned:
			say "Feral ";
		if FurryList is banned:
			say "Furry ";
		if MaleList is banned:
			say "Male ";
		if FemaleList is banned:
			say "Female ";
		if HermList is banned:
			say "Herm ";
		if HumorousList is banned:
			say "Humorous ";
		if DemonList is banned:
			say "Hellspawn ";
		if TransList is banned:
			say "Transgender ";
		if CuckList is banned:
			say "Cuck ";
		if IncestList is banned:
			say "Incest ";
		if NonconList is banned:
			say "Noncon ";
		if MindcontrolList is banned:
			say "Mindcontrol ";
		say "[close bracket][roman type][line break]";
	else:
		say "[bold type]None Banned[roman type][line break]";

To startcreatureban: [bans creatures, as requested]
	say "Banning creatures...";
	repeat through the Table of Random Critters:
		let bad be 0;
		repeat with n running through all banned flags:
			if Name entry is listed in infections of n:
				now bad is 1;
		if bad is 1:
			now BannedStatus entry is true;
	say "Banning situations...";
	repeat with n running through situations:
		let bad be 0;
		repeat with q running through all banned flags:
			if n is listed in BadSpots of q:
				say "[n] removed due to [q].";
				now bad is 1;
		repeat with q running through all banned tags:
			if n is listed in BadSpots of q:
				say "[n] removed due to [q].";
				now bad is 1;
		if bad is 1:
			now n is inactive;
	say "Sorting creatures...";
	sort Table of Random Critters in lev order;

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
			say "Choice? (0-10)>[run paragraph on]";
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
			say "Choice? (0-3)>[run paragraph on]";
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
			say "Choice? (0-6)>[run paragraph on]";
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
			say "Choice? (0-5)>[run paragraph on]";
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
			say "Choice? (0-3)>[run paragraph on]";
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
			say "Choice? (0-26)>[run paragraph on]";
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
			say "Choice? (0-7)>[run paragraph on]";
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
			say "Choice? (0-17)>[run paragraph on]";
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
			say "Choice? (1-5)>[run paragraph on]";
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
			say "Choice? (0-7)>[run paragraph on]";
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
