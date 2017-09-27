Version 3 of Settings Menus by Core Mechanics begins here.
[Version 3.3 - Inventory columns option added]
[- Originally Authored By: Stripes -]

trixiecheating is an action applying to nothing.
weakwilled is a truth state that varies.

understand "trixiecheat" as trixiecheating.
understand "iwannacheat" as trixiecheating.
understand "i wanna cheat" as trixiecheating.

check trixiecheating:
	if Trixie is not visible, say "Only Trixie can help you with that." instead;

carry out trixiecheating:
	let Unerring Hunter be "Unerring Hunter";
	let Automatic Survival be "Automatic Survival";
	let Open World be "Open World";
	let Lil Better be "Lil Better";
	say "     Now, this stuff here is outright cheating, but if you really want to do it, I can help you out with that.  It doesn't come for free though.  You'll take a knock to your score, though I'll give half that back if you turn the cheat off later.";
	let trixieexit be 0;
	while trixieexit is 0:
		say "[bold type]Unerring Hunter[roman type] will let you automatically succeed while hunting as long as your target exists in the area.  [bold type]Automatic Survival[roman type] removes your need for food and water.  [bold type]Open World[roman type] grants you access to all nav points which aren't private (locked by event or NPC).  [bold type]Lil Better[roman type] gives +1 to all stats.  [bold type]Booster Feats[roman type] gives you one additional basic and fun feats.  [bold type]Play On[roman type] removes the time limit to the game.  [bold type]Weak-Willed[roman type] makes you prone to spontaneously surrendering during combat.  You can also set your [bold type]humanity[roman type] or [bold type]libido[roman type] to any number from 0 to 100.";
		say "[bold type]Cheats:[roman type][line break]";
		say "[link](1) Unerring Hunter[as]1[end link] - [if Unerring Hunter is listed in feats of player]Active[otherwise]Inactive[end if][line break]";
		say "[link](2) Automatic Survival[as]2[end link] - [if Automatic Survival is listed in feats of player]Active[otherwise]Inactive[end if][line break]";
		say "[if Open World is listed in feats of player](3) Open World cannot be deactivated[otherwise][link](3) Open World[as]3[end link] - Inactive (Cannot be deactiveated)[end if][line break]";
		say "[link](4) Lil Better[as]4[end link] - [if Lil Better is listed in feats of player]Active[otherwise]Inactive[end if][line break]";
		say "[if boosterfeats > 0](5) Booster Feats cannot be deactivated[otherwise][link](5) Booster Feats[as]5[end link] - Inactive (Cannot be deactiveated)[end if][line break]";
		say "[link](6) Play On[as]6[end link] - [if playon is 0]Inactive[otherwise]Active[end if] (Score halved to reactivate)[line break]";
		say "[link](7) Weak-Willed[as]7[end link] - [if weakwilled is true]Active[otherwise]Inactive[end if] (Bonus if activated)[line break]";
		say "[link](8) Set Humanity[as]8[end link] - Current Humanity: [bold type][humanity of player][roman type][line break]";
		say "[link](9) Set Libido[as]9[end link] - Current Libido: [bold type][libido of player][roman type][line break]";
		LineBreak;
		say "[bold type]Game settings:[roman type][line break]";
		say "[link](10) Set anal play content level[as]10[end link] - Currently: [bold type][if anallevel is 1]Less Anal[otherwise if anallevel is 2]Standard[otherwise]More Anal[end if][roman type][line break]";
		say "[link](11) Set watersports (WS) content level[as]11[end link] - Currently: [bold type][if WSlevel is 1]No WS[otherwise if WSlevel is 2]Standard[otherwise]Full WS[end if][roman type][line break]";
		say "[link](12) Access the vore menu[as]12[end link] - Player victim: [bold type][if vorelevel is 1]No Vore[otherwise if vorelevel is 2]Standard[otherwise]More Vore[end if][roman type] & [bold type][if UBlevel is 1]No UB[otherwise if UBlevel is 2]Standard[otherwise]Full UB[end if][roman type][line break]";
		if playercanvore is true:
			say "-- Player predator: [bold type][if vorechoice is 0]Player choice vore[otherwise if vorechoice is 1]Automatic vore[otherwise]Never vore[end if][roman type] w/Hard Vore frequency: [bold type][if hvorelevel is 1]None[otherwise if hvorelevel is 2]Basic (25%)[otherwise if hvorelevel is 3]High (56%)[end if][roman type] & [bold type][if playercanub is false]Inactive UB[otherwise if ubchoice is 0]Player choice UB[otherwise if ubchoice is 1]Automatic UB[otherwise]Never UB[end if][roman type][line break]";
		say "[link](13) Set egg-pregnancy (ovi) content level[as]13[end link] - Currently: [bold type][if ovipreglevel is 1]No Ovi[otherwise if ovipreglevel is 2]Standard[otherwise]Always Ovi[end if][roman type][line break]";
		say "[link](14) Adjust flags[as]14[end link] - View/change warding settings[line break]";
		say "[link](0) Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-14)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 14:
				break;
			otherwise:
				say "Invalid choice.  Pick from 0 to 14.";
		if calcnumber is 1:
			if "Unerring Hunter" is listed in feats of player:
				remove "Unerring Hunter" from feats of player;
				increase score by 250;
				say "Your 'Unerring Hunter' cheating ability has been removed.";
			otherwise:
				add "Unerring Hunter" to feats of player;
				decrease score by 500;
				say "You have gained the 'Unerring Hunter' cheat, but are penalized 500 points.";
				say "You now have access to the 'huntinglist' listing (appearing as [bracket]Hunt[close bracket]).";
		otherwise if calcnumber is 2:
			if "Automatic Survival" is listed in feats of player:
				remove "Automatic Survival" from feats of player;
				say "Your 'Automatic Survival' cheating ability has been removed.";
				increase score by 300;
			otherwise:
				add "Automatic Survival" to feats of player;
				decrease score by 600;
				say "You have gained the 'Automatic Survival' cheat, but are penalized 600 points.";
		otherwise if calcnumber is 3:
			if "Open World" is listed in feats of player:
				say "This ability cannot be removed once gained.";
			otherwise:
				add "Open World" to feats of player;
				decrease score by 400;
				say "You have gained the 'Open World' cheat, but are penalized 400 points.";
				repeat with Q running through fasttravel not private rooms:
					now Q is known;
				Now Approaching the Capitol Building is known;
				Now Government Assistance is resolved;	[removes the random event for discovering the Capitol Bldg]
				Now Plant Overview is known;
				now Ravaged Power Plant is resolved;	[removes the random event for discovering the power plant]
				now College Campus is known;
				now Reaching the College is resolved;	[removes the random event for discovering the College Campus]
		otherwise if calcnumber is 4:
			if "Lil Better" is listed in feats of player:
				remove "Lil Better" from feats of player;
				say "Your 'Lil Better' cheating ability has been removed.";
				increase score by 200;
				decrease strength of player by 1;
				decrease capacity of player by 5;
				decrease dexterity of player by 1;
				decrease stamina of player by 1;
				decrease intelligence of player by 1;
				decrease charisma of player by 1;
				decrease perception of player by 1;
				if remainder after dividing stamina of player by 2 is 1:
					decrease maxhp of player by level of player plus 1;
					if hp of player > maxhp of player, now hp of player is maxhp of player;
			otherwise:
				add "Lil Better" to feats of player;
				decrease score by 400;
				say "You have gained the 'Lil Better' cheat, but are penalized 400 points.";
				increase strength of player by 1;
				increase capacity of player by 5;
				increase dexterity of player by 1;
				increase stamina of player by 1;
				increase intelligence of player by 1;
				increase charisma of player by 1;
				increase perception of player by 1;
				if remainder after dividing stamina of player by 2 is 0:
					increase maxhp of player by level of player plus 1;
		otherwise if calcnumber is 5:
			if boosterfeats > 0:
				say "This ability cannot be removed once gained.";
			otherwise:
				add "Booster Feats" to feats of player;
				now boosterfeats is 1;
				say "You have gained the 'Booster Feats' cheat, but are penalized 400 points.  Pick your feats:";
				featget;
				funfeatget;
				decrease score by 400;
		otherwise if calcnumber is 6:
			if playon is 1:
				now playon is 0;
				say "Play On has been deactivated[if score > 0] and your score halved[end if].  The end is nigh.";
				if turns <= targetturns + 8:
					now targetturns is turns - 8;
					say "You have been granted one final day.";
				if score > 0, now score is score / 2;
			otherwise:
				now playon is 1;
				say "Play On has been activated.  You are now in extended play mode.  The rescue will never come.";
		otherwise if calcnumber is 7:
			if weakwilled is true:
				now weakwilled is false;
				decrease score by 250;
				say "Your 'Weak-Willed' flaw has been removed, and you are penalized 250 points.";
			otherwise:
				now weakwilled is true;
				increase score by 250;
				say "You have gained the 'Weak-Willed' flaw, but are rewarded 250 points.";
				say "You now will find yourself increasingly tempted to spontaneously submit during fights as your libido increases.";
		otherwise if calcnumber is 8:
			say "Set your humanity (1-100) or 0 to abort> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= 100:
				now humanity of player is calcnumber;
				say "Humanity adjusted.  Score penalized by 50.";
				decrease score by 50;
			otherwise:
				say "Invalid choice - returning to menu.";
		otherwise if calcnumber is 9:
			say "Set your libido (1-100) or 0 to abort> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= 100:
				now libido of player is calcnumber;
				say "Libido adjusted.  Score penalized by 50.";
				decrease score by 50;
			otherwise:
				say "Invalid choice - returning to menu.";
		otherwise if calcnumber is 10:
			try analadjusting;
		otherwise if calcnumber is 11:
			try WSadjusting;
		otherwise if calcnumber is 12:
			try voremenuing;
		otherwise if calcnumber is 13:
			try Oviadjusting;
		otherwise if calcnumber is 14:
			try Flagadjusting;
		otherwise if calcnumber is 0:
			say "Exiting menu.";
			now trixieexit is 1;
		wait for any key;
		clear the screen and hyperlink list;

[-----]

[anallevel is a number that varies.  anallevel is usually 2.]		[normal]

analadjusting is an action applying to nothing.

understand "adjust anal" as analadjusting.
understand "adjustanal" as analadjusting.
understand "anal adjust" as analadjusting.
understand "analadjust" as analadjusting.

carry out analadjusting:
	say "[special-style-2]NOTICE[roman type]: This mechanic is a newer addition than most of the content in the game, and so is not in effect everywhere.  While some older content has been adjusted to include checks/adjustments based on it, it is more frequent on newer content.";
	say "     This option will allow you to adjust your desired level for anal play in the game.  This choice will [bold type]not[roman type] affect all scenes nor will it eliminate/guarantee anal play in many cases.  It will simply be a means of telling specific scenes to provide alternate versions or add/remove portions of involving anal sex and anal play if they have been set to detect it.  In some cases it will adjust the frequency with which anal scenes will occur for a given encounter.  As a note, [bold type]paid requests[roman type] to make these adjustments to a given character or creature not currently using them can be taken on through the [bold type]Writer for Hire[roman type] project, though some restrictions may apply in certain cases.";
	say "     With that said, choosing:[line break]";
	say "- [link](1) Less Anal[as]1[end link] will indicate that you're looking to see less anal sex in your game.  In some cases, it may alternate to another possible sex scene (such as oral), a non-sexual scene or simply have you driven off.  This change may be automatic or be induced randomly.  Keep in mind that many NPCs and creatures have sexual preferences of their own and so you could still encounter M/M and anal sex even if this preference is chosen.";
	say "- [link](2) Normal[as]2[end link] will indicate that you'd like the game's standard level of anal sex.  Some scenes with males/herms may result in anal sex, though other forms of anal play will be rare.";
	say "- [link](3) More Anal[as]3[end link] will indicate that you're open to view anal sex more frequently.  Some scenes may also use this as an indicator to insert additions for other forms of anal play (fingering, rimming, prostate stimulation, etc...) if they exist for the base scene.  You may even encounter the rare instance of anal sex with a female occurring.  Again as stated above, many NPCs and creatures have their own sexual preferences to consider, so the degree of change (if any) that may occur will vary.";
	say "- [link](0) Exit[as]0[end link]: Leave this menu.  You are currently set as [bold type][if anallevel is 1]Less Anal[otherwise if anallevel is 2]Normal[otherwise]More Anal[end if][roman type].";
	now calcnumber is -1;
	while calcnumber < 0 or calcnumber > 3:
		say "Choice? (0-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1:
		say "You are now set to receive Less Anal.";
		now anallevel is 1;
		if "More Anal" is listed in feats of player, remove "More Anal" from feats of player;
		if "Less Anal" is not listed in feats of player, add "Less Anal" to feats of player;
	otherwise if calcnumber is 2:
		say "You are now set to receive the standard amount of anal sex.";
		now anallevel is 2;
		if "More Anal" is listed in feats of player, remove "More Anal" from feats of player;
		if "Less Anal" is listed in feats of player, remove "Less Anal" from feats of player;
	otherwise if calcnumber is 3:
		say "You are now set to receive More Anal.";
		now anallevel is 3;
		if "Less Anal" is listed in feats of player, remove "Less Anal" from feats of player;
		if "More Anal" is not listed in feats of player, add "More Anal" to feats of player;
	otherwise:
		say "Exiting menu.";
		LineBreak;

[-----]

[WSlevel is a number that varies.  WSlevel is usually 2.]		[normal]

WSadjusting is an action applying to nothing.

understand "adjust WS" as WSadjusting.
understand "adjustWS" as WSadjusting.
understand "WS adjust" as WSadjusting.
understand "WSadjust" as WSadjusting.

carry out WSadjusting:
	say "[special-style-2]NOTICE[roman type]: This mechanic has just been implemented and will have little to no effect during most of game play.  While there is currently little WS content in the game, this mechanic will eventually be tied into them to allow players to adjust its inclusion to their comfort level.  Expect to see it come into use gradually and predominantly in newer content.";
	say "     This option will allow you to adjust your desired level for watersports (piss play) in the game.  On the whole, such scenes are currently uncommon in the game, but having access to this toggle will allow creators to make its appearance function based on your current setting for it.  This choice will simply be a means of telling specific scenes to provide alternate versions or add/remove portions involving WS content if they have been set to detect it.  In some cases, it will adjust the frequency with which WS scenes will occur for a given encounter.  While most content in the game will not involve WS play, [bold type]paid requests[roman type] can be taken to add these adjustments to a given creature/NPC using the [bold type]Writer for Hire[roman type] project, though some restrictions may apply in certain cases.";
	say "     With that said, choosing:[line break]";
	say "- [link](1) No WS[as]1[end link] will indicate that you're looking to not see any WS in your game.  This will either skip that portion of the content or pick one of the other available scenes.  Keep in mind that there may be a few scenes where you are asked if you want to be involved in WS and those prompts (and their associated scenes) may still be active, but you can pick the non-activation option for them at that time.  Should you have this setting active and get a WS scene in the game, do prompt us via the forums or blog so we might check on the issue as well - we are still implementing this mechanic.";
	say "- [link](2) Standard[as]2[end link] will indicate that you're okay with a low level of WS content, should it happen to come up.  Only some creatures/NPCs are active about including WS in their actions, so having this setting will keep their use of it infrequent.";
	say "- [link](3) Full WS[as]3[end link] will indicate that you're open to view WS more often.  Some WS content may only be accessible via this setting, while in other cases it will raise the frequency of WS being shown.  Similarly, more detail might be thrown into a scene at this level.  Again, the amount of WS content presently in the game is rare, but setting yourself to this level will get the most out of it.";
	say "- [link](0) Exit[as]0[end link]: Leave this menu.  You are currently set as [bold type][if wslevel is 1]No WS[otherwise if wslevel is 2]Standard (Low WS)[otherwise]Full WS[end if][roman type].";
	now calcnumber is -1;
	while calcnumber < 0 or calcnumber > 3:
		say "Choice? (0-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1:
		say "You are now set to receive No WS.";
		now WSlevel is 1;
	otherwise if calcnumber is 2:
		say "You are now set to receive the Standard (low) amount of WS content.";
		now WSlevel is 2;
	otherwise if calcnumber is 3:
		say "You are now set to receive Full WS.";
		now WSlevel is 3;
	otherwise:
		say "Exiting menu.";
		LineBreak;

[-----]

[vorelevel is a number that varies.  vorelevel is usually 2.]		[normal]
[hvorelevel is a number that varies.  hvorelevel is usually 1.]		[no hard vore]
[UBlevel is a number that varies.  UBlevel is usually 2.]			[normal]

voremenuing is an action applying to nothing.

understand "voremenu" as voremenuing.
understand "vore menu" as voremenuing.

check voremenuing:
	if playercanvore is false, say "Your character is currently incapable of such actions.";

carry out voremenuing:
	say "     You have accessed the [bold type]vore menu[roman type].  It is here that you may adjust some settings related to vore content in the game.  Options 1-3 deal with the frequency the player may be subject to vore by others, typically monsters.  While rare in the game at present, this will tell the game to bias for or against it in situations where it might occur.  Your selection may not apply in certain situations, especially when dealing with special, scripted scenes.  Options 4-6 are similar, but apply to unbirthing (UB) content.";
	say "     Option 7 through 9 deal with vore and UB by the player, and are only available options should those abilities be gained within the game.  [bold type]Choice to vore[roman type] will designate whether your character will automatically choose vore whenever it is presented, whether your character will automatically refuse (stopping voring, but not the hunger), or whether you'll be give the option to accept or refuse.  [bold type]Choice for UB[roman type] will designate the same for unbirthing.  For both, this selection process will cycle through the options.  Additionally, you'll be able to adjust the frequency at which you'll get hard vore (gory) scenes over getting soft vore (swallowing) scenes.";
	let voreexit be 0;
	while voreexit is 0:
		say "[bold type]Vore Settings:[roman type][line break]";
		say "- [link](1) No Vore[as]1[end link] - Skip most scenes of the player getting vored[if vorelevel is 1]. [bold type]Selected[roman type][line break][otherwise].[end if]";
		say "- [link](2) Standard[as]2[end link] - Player may infrequently get vored[if vorelevel is 2]. [bold type]Selected[roman type][line break][otherwise].[end if]";
		say "- [link](3) Full Vore[as]3[end link] - Player more likely to get vored when possible[if vorelevel is 3]. [bold type]Selected[roman type][line break][otherwise].[end if]";
		say "[bold type]UB Settings:[roman type][line break]";
		say "- [link](4) No UB[as]4[end link] - Skip most scenes of the player getting unbirthed[if UBlevel is 1]. [bold type]Selected[roman type][line break][otherwise].[end if]";
		say "- [link](5) Standard[as]5[end link] - Player may infrequently get unbirthed[if UBlevel is 2]. [bold type]Selected[roman type][line break][otherwise].[end if]";
		say "- [link](6) Full UB[as]6[end link] - Player more likely to get unbirthed when possible[if UBlevel is 3]. [bold type]Selected[roman type][line break][otherwise].[end if]";
		if playercanvore is true:
			say "[link](7) Choice to vore[as]7[end link] - [if vorechoice is 0]Player choice[otherwise if vorechoice is 1]Automatic vore[otherwise]Never vore[end if][line break]";
		otherwise:
			say "(7) Vore by player - Inactive.";
		if playercanvore is true:
			say "[link](8) Hard vore frequency[as]8[end link] - [if hvorelevel is 1]Off (0%)[otherwise if hvorelevel is 2]Basic (25%)[otherwise]High (56%)[end if][line break]";
		otherwise:
			say "(8) Hard vore frequency - Inactive.";
		if playercanub is true:
			say "[link](9) Choice to UB[as]9[end link] - [if ubchoice is 0]Player choice[otherwise if ubchoice is 1]Automatic UB[otherwise]Never UB[end if][line break]";
		otherwise:
			say "(9) UB by player - Inactive.";
		say "[link](0) Abort[as]0[end link][line break]";
		while 1 is 1:
			say "Choice? (0-9)> [run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 9:
				break;
			otherwise:
				say "Invalid choice.  Pick from 0 to 9.";
		if calcnumber is 1:
			say "You are now set to skip most vore content.";
			now vorelevel is 1;
		otherwise if calcnumber is 2:
			say "You are now set to receive the Standard (low) amount of vore content.";
			now vorelevel is 2;
		otherwise if calcnumber is 3:
			say "You are now set to receive full vore content.";
			now vorelevel is 3;
		otherwise if calcnumber is 4:
			say "You are now set to skip most unbirthing content.";
			now UBlevel is 1;
		otherwise if calcnumber is 5:
			say "You are now set to receive the Standard (low) amount of unbirthing content.";
			now UBlevel is 2;
		otherwise if calcnumber is 6:
			say "You are now set to receive full unbirthing content.";
			now UBlevel is 3;
		otherwise if calcnumber is 7:
			if playercanvore is false:
				say "This option is currently inactive and unlocked via gameplay.";
			otherwise if vorechoice < 2:
				increase vorechoice by 1;
				say "The option to use of your voring ability has been set to '[if vorechoice is 1]Automatic vore[otherwise]Never vore[end if]'.";
			otherwise:
				now vorechoice is 0;
				say "The option to use of your voring ability has been reset to 'Player choice'.";
		otherwise if calcnumber is 8:
			if playercanvore is false:
				say "This option is currently inactive and unlocked via gameplay.";
			otherwise if hvorelevel < 3:
				increase hvorelevel by 1;
				say "The frequency of hard vore scenes has been set to '[if hvorelevel is 2]Basic (25%)[otherwise]High (56%)[end if]'.";
			otherwise:
				now hvorelevel is 0;
				say "Hard vore scenes have been turned off.";
		otherwise if calcnumber is 9:
			if playercanub is false:
				say "This option is currently inactive and unlocked via gameplay.";
			otherwise if ubchoice < 2:
				increase ubchoice by 1;
				say "The option to use of your unbirthing ability has been set to '[if ubchoice is 1]Automatic UB[otherwise]Never UB[end if]'.";
			otherwise:
				now ubchoice is 0;
				say "The option to use of your unbirthing ability has been reset to 'Player choice'.";
		otherwise if calcnumber is 0:
			say "Exiting menu.";
			now voreexit is 1;

[-----]

[ovipreglevel is a number that varies.  ovipreglevel is usually 2.]		[normal]

oviadjusting is an action applying to nothing.

understand "adjust ovi" as oviadjusting.
understand "adjustovi" as oviadjusting.
understand "ovi adjust" as oviadjusting.
understand "oviadjust" as oviadjusting.
understand "ovi menu" as oviadjusting.
understand "ovimenu" as oviadjusting.

carry out oviadjusting:
	say "[special-style-2]NOTICE[roman type]: This mechanic has just been implemented and will take a little time while scenes and creature and NPCs are changed over to impregnate the player with eggs as their default.";
	say "     This option will allow you to adjust whether some of the creatures out there are able to impregnate your player with eggs instead of live young.  If you don't desire to have your player lay eggs, here's the place to adjust that.  Please keep in mind that this applies only to female births, as male birth will be via eggs regardless of this setting.";
	say "     With that said, choosing:[line break]";
	say "- [link](1) No Ovi[as]1[end link] will indicate that you're looking to not have your player possibly bearing eggs.  All female pregnancies will be live young and MPreg to FPreg swaps will be treated as live births as well.";
	say "- [link](2) Standard[as]2[end link] will indicate that you're okay with being impregnanted with eggs, if that's the creature's normal result.";
	say "- [if ovipregalways is true][link](3) Always Ovi[as]3[end link] will indicate that you want all births to be eggs, regardless of their sire's normal result[otherwise](3) Always Ovi is not yet accessible to your character.  You'll need to find a way in the game to change yourself to always bear eggs before being able to choose this option[end if].";
	say "- [link](0) Exit[as]0[end link]: Leave this menu.  You are currently set as [bold type][if ovipreglevel is 1]No Ovi[otherwise if ovipreglevel is 2]Standard (Some Ovi)[otherwise]Always Ovi[end if][roman type].";
	now calcnumber is -1;
	while calcnumber < 0 or calcnumber > 3:
		say "Choice? (0-3)>[run paragraph on]";
		get a number;
	if calcnumber is 1:
		say "You are now set to not bear eggs.";
		now ovipreglevel is 1;
	otherwise if calcnumber is 2:
		say "You are now set to bear eggs only when specifically prompted.";
		now ovipreglevel is 2;
	otherwise if calcnumber is 3:
		if ovipregalways is true:
			say "You are now set to bear eggs always.";
			now ovipreglevel is 3;
	 	otherwise:
			say "You are not able to choose this option without alteration to your character's pregnancy abilities.";
	otherwise:
		say "Exiting menu.";
		LineBreak;

[-----]

Flagadjusting is an action applying to nothing.

understand "adjust flags" as Flagadjusting.
understand "adjustflags" as Flagadjusting.
understand "flagsadjust" as Flagadjusting.
understand "flags adjust" as Flagadjusting.
understand "adjust flag" as Flagadjusting.
understand "adjustflag" as Flagadjusting.
understand "flagadjust" as Flagadjusting.
understand "flag adjust" as Flagadjusting.

carry out Flagadjusting:
	say "     This menu will allow you to adjust whether certain categories of content will be warded or not now that the game has started.  Warded content will not appear unless it is specifically hunted for or is called upon by events or quests.  If a creature has multiple gender forms, which gender will appear may be adjusted based on the warded flags.  Now that the game has started, you cannot change whether something is banned outright.";
	let flagexit be 0;
	while flagexit is 0:
		let x be 0;
		repeat with Q running through flags:
			if Q is warded:
				increase x by 1;
				say "- [link]([x]) [Q][as][x][end link]: [special-style-1]WARDED[roman type][line break]";
			otherwise if Q is banned:
				say "- [Q]: [special-style-2]BANNED[roman type][line break]";
			otherwise:
				increase x by 1;
				say "- [link]([x]) [Q][as][x][end link]: [bold type]ACTIVE[roman type][line break]";
		say "- [link](0) Exit menu[as]0[end link][line break]";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > x:
			say "Choice? (0-[x])>[run paragraph on]";
			get a number;
		if calcnumber is 0:
			now flagexit is 1;
		otherwise:
			let y be 0;
			repeat with Q running through not banned flags:
				increase y by 1;
				if y is calcnumber:
					if Q is warded:
						now Q is not warded;
					otherwise if Q is banned:
						say "Error occurred, choice [printed name of Q] is banned.";
					otherwise:
						now Q is warded;

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


Settings Menus ends here.
