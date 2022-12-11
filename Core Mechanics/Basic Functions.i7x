Version 1 of Basic Functions by Core Mechanics begins here.
[Version 1 - Pulled Together into its own file]
"Basic Functions of the Flexible Survival game"

To change the current menu to (X - table name):
	now the current menu is x;

to clear the screen and hyperlink list:
	clear the screen;
	now invlinklistfilled is zero; [this changes the inventorying mode to not look for existing inventory links again]
	now hyperlink list is {};
[This must remain whole or errors from cleared hyperlinks can occur!]

To say row of (N - number) spaces: (- spaces {N}; -).

To decide what indexed text is (orig - text) formatted to (len - number) characters:
	let T be an indexed text;
	now T is orig;
	let N be the number of characters in T;
	if N < len:
		repeat with Z running from 1 to len - N:
			now T is "[T] ";
	else if N > len:
		replace the regular expression ".{[N - len]}$" in T with "";
	decide on T.

To keypause:
	(- KeyPause(); -)

To say a/an (T - text):
	let Txt be indexed text;
	let Txt be T;
	if Txt matches the regular expression "^<aeiouAEIOU>":
		say "an ";
	else:
		say "a ";
	say T.

checkresult is a number that varies.

To check (X - text):
	now X is X in lower case; [just to avoid problems if a writer capitalizes the stat]
	let stat be 0;
	if X is "strength":
		now stat is strength of player;
	if X is "dexterity":
		now stat is dexterity of player;
	if X is "stamina":
		now stat is stamina of player;
	if X is "charisma":
		now stat is charisma of player;
	if X is "perception":
		now stat is perception of player;
	if X is "intelligence":
		now stat is intelligence of player;
	now stat is stat - 10;
	now stat is stat / 2 ;
	let die be a random number from 1 to 20 ;
	say "You perform a check of [x] and roll [die], resulting in";
	increase die by stat;
	say "     [die]!";
	now checkresult is die;

Instead of sniffing something (called x):
	if the scent of x is empty:
		say "It smells pretty normal for a/an [x].";
	else:
		say "[scent of x][line break]";

To wait for any key:
	if hypernull is 0:
		say "[link]more[as] [end link][run paragraph on][line break]";
	keypause;
	if hypernull is 0:
		LineBreak;

to say WaitLineBreak: [little bit of often used code]
	if waiterhater is 0: [skips waiting if it's not wanted]
		wait for any key;
		if hypernull is 0, LineBreak; [adds a break after the 'more']
	else:
		LineBreak; [people who don't want to wait at least get a break]

to WaitLineBreak: [little bit of often used code]
	if waiterhater is 0: [skips waiting if it's not wanted]
		wait for any key;
		if hypernull is 0, LineBreak; [adds a break after the 'more']
	else:
		LineBreak; [people who don't want to wait at least get a break]

to LineBreak:
	say "[line break]";

to DoubleLineBreak:
	say "[line break][line break]";

to HungerReset:
	LineBreak;
	say "     [bold type]Your hunger is gone![roman type][line break]";
	now hunger of Player is 0;

to PlayerEat (N - number):
	LineBreak;
	say "     [bold type]Your hunger is reduced by [N]![roman type][line break]";
	decrease hunger of Player by N;
	if hunger of Player < 0:
		now hunger of Player is 0;

to PlayerHunger (N - number):
	LineBreak;
	say "     [bold type]Your hunger has increased by [N]![roman type][line break]";
	increase hunger of Player by N;
	if hunger of Player > 100:
		now hunger of Player is 100;

to ThirstReset:
	LineBreak;
	say "     [bold type]Your thirst is gone![roman type][line break]";
	now thirst of Player is 0;

to PlayerDrink (N - number):
	LineBreak;
	say "     [bold type]Your thirst is reduced by [N]![roman type][line break]";
	decrease thirst of Player by N;
	if thirst of Player < 0:
		now thirst of Player is 0;

to PlayerThirst (N - number):
	LineBreak;
	say "     [bold type]Your thirst has increased by [N]![roman type][line break]";
	increase thirst of Player by N;
	if thirst of Player > 100:
		now thirst of Player is 100;

to ItemGain (ItemObj - text) by (N - number):
	ItemGain ItemObj by N silence state is 0;

to ItemGain (ItemObj - text) by (N - number) silently:
	ItemGain ItemObj by N silence state is 1;

to ItemGain (ItemObj - text) by (N - number) silence state is (Silence - a number):
	if there is a name of ItemObj in the table of Game Objects:
		choose a row with name of ItemObj in the Table of Game Objects;
		if Silence is 0:
			ItemGain object entry by N;
		else:
			ItemGain object entry by N silently;
		now object entry is part of Player; [keeping the flimsy FS inventory system running]
	else:
		say "ERROR! Object [ItemObj] does not exist in the table of Game Objects. Please report this message on the FS Discord!";

to ItemGain (ItemObj - a grab object) by (N - number):
	ItemGain ItemObj by N silence state is 0;

to ItemGain (ItemObj - a grab object) by (N - number) silently:
	ItemGain ItemObj by N silence state is 1;

to ItemGain (ItemObj - a grab object) by (N - number) silence state is (Silence - a number):
	now ItemObj is part of Player; [keeping the flimsy FS inventory system running]
	increase carried of ItemObj by N;
	if Silence is 0:
		LineBreak;
		say "     [bold type]You gain [N] [printed name of ItemObj in lower case]![roman type][line break]";

to ItemLoss (ItemObj - a grab object) by (N - number):
	ItemLoss ItemObj by N silence state is 0;

to ItemLoss (ItemObj - a grab object) by (N - number) silently:
	ItemLoss ItemObj by N silence state is 1;

to ItemLoss all (ItemObj - object):
	if carried of ItemObj < 1:
		if debug is at level 10:
			say "DEBUG -> Trying to re-move [ItemObj] from player who doesn't have any.[line break]";
	else: [found at least one item]
		ItemLoss ItemObj by carried of ItemObj

to ItemLoss all (ItemObj - object) silently:
	if carried of ItemObj < 1:
		if debug is at level 10:
			say "DEBUG -> Trying to re-move [ItemObj] from player who doesn't have any.[line break]";
	else: [found at least one item]
		ItemLoss ItemObj by carried of ItemObj silently;

to ItemLoss (ItemObj - a grab object) by (N - number) silence state is (Silence - a number):
	if Silence is 0:
		LineBreak;
		if N is 1:
			if carried of ItemObj is 1:
				say "     [bold type]You lose your [printed name of ItemObj in lower case]![roman type][line break]";
			else:
				say "     [bold type]You lose 1 [printed name of ItemObj in lower case]![roman type][line break]";
		else:
			if carried of ItemObj is N:
				say "     [bold type]You lose all your [printed name of ItemObj in lower case]![roman type][line break]";
			else:
				say "     [bold type]You lose [N] [printed name of ItemObj in lower case]![roman type][line break]";
	decrease carried of ItemObj by N;

to PlayerMaxHeal:
	LineBreak;
	say "     [bold type]Your hitpoints are completely restored![roman type][line break]";
	now HP of Player is maxHP of Player;

to PlayerHealed (N - number):
	LineBreak;
	say "     [bold type]Your hitpoints increase by [N]![roman type][line break]";
	increase HP of Player by N;
	if HP of Player > maxHP of Player:
		now HP of Player is maxHP of Player;

to PlayerWounded (N - number): [wounded, not killed - this won't kill a player]
	LineBreak;
	say "     [bold type]Your hitpoints are reduced by [N]![roman type][line break]";
	decrease HP of Player by N;
	if HP of Player < 0:
		now HP of Player is 0;

to SanLoss (N - number):
	LineBreak;
	say "     [bold type]Your sanity has decreased by [N]![roman type][line break]";
	decrease humanity of Player by N;

to SanBoost (N - number):
	LineBreak;
	say "     [bold type]Your sanity has increased by [N]![roman type][line break]";
	increase humanity of Player by N;
	if humanity of Player > 100:
		now humanity of Player is 100;

to SanReset:
	LineBreak;
	say "     [bold type]Your sanity is completely restored![roman type][line break]";
	now humanity of Player is 100;

to LibidoLoss (N - number):
	LineBreak;
	say "     [bold type]Your libido has decreased by [N]![roman type][line break]";
	decrease Libido of Player by N;
	if Libido of Player < 0:
		now Libido of Player is 0;

to LibidoBoost (N - number):
	LineBreak;
	say "     [bold type]Your libido has increased by [N]![roman type][line break]";
	increase Libido of Player by N;
	if Libido of Player > 100:
		now Libido of Player is 100;

to LibidoReset:
	LineBreak;
	say "     [bold type]Your libido is completely gone![roman type][line break]";
	now Libido of Player is 0;

to ScoreLoss (N - number):
	LineBreak;
	say "     [bold type]Your score has decreased by [N]![roman type][line break]";
	decrease the score by N;

to ScoreGain (N - number):
	LineBreak;
	say "     [bold type]Your score has increased by [N]![roman type][line break]";
	increase the score by N;

to XPGain (N - number):
	LineBreak;
	say "     [bold type]You have gained [N] XP![roman type][line break]";
	increase XP of Player by N;

to CreditLoss (N - number):
	LineBreak;
	say "     [bold type][N] freecred [if N is 1]has[else]have[end if] been deducted from your Zephyr account![roman type][line break]";
	decrease freecred by N;

to CreditGain (N - number):
	LineBreak;
	say "     [bold type][N] freecred [if N is 1]has[else]have[end if] been added to your Zephyr account![roman type][line break]";
	increase freecred by N;

to FeatLoss (Featname - text):
	LineBreak;
	if Featname is listed in feats of Player:
		say "     [bold type]'[Featname]' has been removed from your feats![roman type][line break]";
		remove Featname from feats of Player;
		if Featname is "Sterile":
			now Sterile of Player is false;
	else if debugactive is 1:
		say "ERROR: Trying to remove '[Featname]', which the player does not have.";

to FeatGain (Featname - text):
	LineBreak;
	if Featname is not listed in feats of Player:
		say "     [bold type]'[Featname]' has been added to your feats![roman type][line break]";
		add Featname to feats of Player;
		sort feats of Player;
		if Featname is "City Map":
			say "[BestowCityMapFeat]";
		else if Featname is "Sterile":
			now Sterile of Player is true;
		else if Featname is "Strong Back":
			increase capacity of Player by 50;
		else if Featname is "More Time":
			extend game by 24;
		else if Featname is "Hardy":
			increase maxHP of Player by 8;
			increase HP of Player by 8;
		else if Featname is "Instinctive Combat":
			say "     Having gained the [']Instinctive Combat['] feat, you now have access to the 'Auto Attack' command. These are the same as picking the same option over and over again during combat. No different results, just less typing for faster gameplay.[line break]Type [bold type][link]auto attack normal[end link][roman type] for the default method of combat (choose each action).[line break]Type [bold type][link]auto attack berserk[end link][roman type] to always attack in combat.[line break]Type [bold type][link]auto attack pass[end link][roman type] to always pass in combat.[line break]Type [bold type][link]auto attack coward[end link][roman type] to always flee in combat.[line break]Type [bold type][link]auto attack submit[end link][roman type] to always submit in combat.[line break]You may review these commands at any time by using the [link]help[end link] command.";
		else if Featname is "Vore Predator":
			say "     Having gained the [']Vore Predator['] feat, you can now access the [bold type]vore menu[roman type] command. It can also be accessed using Trixie's cheat menu ([bold type]iwannacheat[roman type]). It is used for adjusting vore-related game settings.";
		else if Featname is "Mugger":
			say "     You will now get a flat rate increase to item drops from monsters based on your perception. This ability can be can turned on or off by using the [bold type]mugger[roman type] command and is currently [bold type][if muggerison is true]ON[else]OFF[end if][roman type].";
		else if Featname is "Vampiric":
			say "     You will now recover a small amount of health, thirst and hunger after every victory as you get in a blood-sucking bite after your final blow or at some other point during the victory scene.";
			now vampiric is true;
	else if debugactive is 1:
		say "ERROR: Trying to add '[Featname]', which the player already has.";

to TraitGain (TraitName - a text) for (TraitChar - a person):
	if TraitName is not listed in Traits of TraitChar: [no duplicates]
		add TraitName to Traits of TraitChar;

to TraitLoss (TraitName - a text) for (TraitChar - a person):
	if TraitName is listed in Traits of TraitChar: [avoids runtime errors for traits that do not exist]
		remove TraitName from Traits of TraitChar;

to AffectionGain (AffGain - a number) for (AffChar - a person):
	say "     [bold type][AffChar]'s affection for you increased by [AffGain]![roman type][line break]";
	if Affection of AffChar < 100:
		increase Affection of AffChar by AffGain;

to AffectionLoss (AffLoss - a number) for (AffChar - a person):
	say "     [bold type][AffChar]'s affection for you decreased by [AffLoss]![roman type][line break]";
	if Affection of AffChar < 0:
		decrease Affection of AffChar by AffLoss;

to DepravityGain (DepGain - a number) for (DepChar - a person):
	say "     [bold type][DepChar]'s depravity increased by [DepGain]![roman type][line break]";
	if Depravity of DepChar < 100:
		increase Depravity of DepChar by DepGain;

to DepravityLoss (DepLoss - a number) for (DepChar - a person):
	say "     [bold type][DepChar]'s depravity decreased by [DepLoss]![roman type][line break]";
	if Depravity of DepChar < 0:
		decrease Depravity of DepChar by DepLoss;

to SubVsDomChange (SDChange - a number) for (SDChar - a person):
	increase SubVsDom of SDChar by SDChange;
	if SDChange > 0:
		say "     [bold type][SDChar] becomes more dominant ([SubVsDom of SDChar] in a -100 to 100 range)![roman type][line break]";
	else:
		say "     [bold type][SDChar] becomes more submissive ([SubVsDom of SDChar] in a -100 to 100 range)![roman type][line break]";

to MoraleLoss (N - number):
	LineBreak;
	say "     [bold type]Your morale has decreased by [N]![roman type][line break]";
	decrease morale of Player by N;

to MoraleBoost (N - number):
	LineBreak;
	say "     [bold type]Your morale has increased by [N]![roman type][line break]";
	increase morale of Player by N;
	if morale of Player > 100:
		now morale of Player is 100;


understand "rename" as PlayerRenaming.

PlayerRenaming is an action applying to nothing.

carry out PlayerRenaming:
	playernaming; []

to playernaming:
	say "Note: You can always change your name at a later point with the 'rename' command.";
	say "     [bold type]Please enter your new name: [roman type][line break]";
	get typed command as playerinput;
	now name of Player is playerinput;

understand "observe" as ObserveRoom.
understand "observe room" as ObserveRoom.
understand "observe surroundings" as ObserveRoom.

ObserveRoom is an action applying to nothing.

check ObserveRoom:
	if ObserveAvailable of Location of Player is false, say "     Somehow, you feel that there's nothing interesting to observe in this location (yet)." instead;

carry out ObserveRoom:
	say "[ObserveString of Location of Player]";

understand "SexStats" as SexStatsOverview.

SexStatsOverview is an action applying to nothing.

carry out SexStatsOverview:
	say "Sex Stats:[Line Break]";
	LineBreak;
	if OralVirgin of Player is true:
		say "You have a [special-style-1]virgin[roman type] mouth.";
	else:
		say "Your mouth has seen some use.";
	if Player is male:
		if PenileVirgin of Player is true:
			say "You have a [special-style-1]virgin[roman type] cock.";
		else:
			say "Your cock has seen some use.";
	if Player is female:
		if Virgin of Player is true:
			say "You have a [special-style-1]virgin[roman type] pussy.";
		else:
			say "Your pussy has seen some use.";
	if AnalVirgin of Player is true:
		say "You have a [special-style-1]virgin[roman type] ass.";
	else:
		say "Your asshole has seen some use.";
	LineBreak;
	say "Since the beginning of the nanite apocalypse, you have had the following sexual encounters:[Line Break]";
	say "[OralPussyGiven of Player] times having your pussy orally pleasured, making you a [SexP OralPussyGiven of Player] at receiving pussy oral.";
	say "[OralPussyTaken of Player] times orally pleasuring someone's pussy, making you a [SexP OralPussyTaken of Player] at giving pussy oral.";
	say "[OralCockGiven of Player] times having your cock orally pleasured, making you a [SexP OralCockGiven of Player] at receiving cock oral.";
	say "[OralCockTaken of Player] times orally pleasuring someone's cock, making you a [SexP OralCockTaken of Player] at giving cock oral.";
	say "[AssFuckGiven of Player] times fucking someone in the ass, making you a [SexP AssFuckGiven of Player] at fucking asses.";
	say "[AssFuckTaken of Player] times taking someone's cock up your ass, making you a [SexP AssFuckTaken of Player] at being ass-fucked.";
	say "[PussyFuckGiven of Player] times fucking someone's pussy, making you a [SexP PussyFuckGiven of Player] at fucking pussies.";
	say "[PussyFuckTaken of Player] times being fucked in the pussy by someone, making you a [SexP PussyFuckTaken of Player] at being fucked.";

to say SexP (N - number):
	if N is 0:
		say "[special-style-1]virgin[roman type]";
	else if N < 10:
		say "[special-style-1]novice[roman type]";
	else if N < 30:
		say "[special-style-1]apprentice[roman type]";
	else if N < 70:
		say "[special-style-1]initiate[roman type]";
	else if N < 150:
		say "[special-style-1]journeyman[roman type]";
	else if N < 300:
		say "[special-style-1]expert[roman type]";
	else if N < 575:
		say "[special-style-1]master[roman type]";
	else:
		say "[special-style-1]legendary [one of]pornstar[or]sex machine[at random][roman type]";

understand "testNPCSexAftermath" as NPCSexAftermathAction.

NPCSexAftermathAction is an action applying to nothing.

carry out NPCSexAftermathAction:
	if AnalVirgin of Player is true:
		say "Player is an anal virgin.";
	if PenileVirgin of Player is true:
		say "Player is a penile virgin.";
	say "Tehuantl: AnalVirgin: [AnalVirgin of Tehuantl]; PenileVirgin: [PenileVirgin of Tehuantl]";
	say "Testing: Tehuantl fucks Player:[line break]";
	NPCSexAftermath Tehuantl receives "AssFuck" from Player;
	say "Testing: Player fucks Tehuantl:[line break]";
	NPCSexAftermath Player receives "AssFuck" from Tehuantl;
	say "Tehuantl: AnalVirgin: [AnalVirgin of Tehuantl]; PenileVirgin: [PenileVirgin of Tehuantl]";
	say "Tehuantl: AnalVirgin: [AnalVirgin of Carl]; PenileVirgin: [PenileVirgin of Carl]";
	now AnalVirgin of Carl is true;
	now PenileVirgin of Carl is true;
	say "Testing: Carl fucks player:[line break]";
	NPCSexAftermath Player receives "AssFuck" from Carl;
	say "Testing: Player fucks Carl:[line break]";
	NPCSexAftermath Carl receives "AssFuck" from Player;
	say "Tehuantl: AnalVirgin: [AnalVirgin of Carl]; PenileVirgin: [PenileVirgin of Carl]";
	[Options for SexAct are: AssFuck, PussyFuck, AssDildoFuck, PussyDildoFuck, OralCock, OralPussy, Stroking]

	[ Note: Add Handjob, PussyFingering, AssFingering, Rimming to SexActs]

[
	Function for two NPC, or Player + NPC
	[receiver's ass is fucked or rides the cock of the giver, includes mpreg chance]
	NPCSexAftermath RECEIVER_OBJ receives "AssFuck" from GIVER_OBJ;
	[receiver's pussy is fucked or rides the cock of the giver, includes fpreg chance]
	NPCSexAftermath RECEIVER_OBJ receives "PussyFuck" from GIVER_OBJ;
	[receiver's ass is fucked by dildo/finger/tentacle/... of the giver, no impreg chance]
	NPCSexAftermath RECEIVER_OBJ receives "AssDildoFuck" from GIVER_OBJ;
	[receiver's pussy is fucked by dildo/finger/tentacle/... of the giver, no impreg chance]
	NPCSexAftermath RECEIVER_OBJ receives "PussyDildoFuck" from GIVER_OBJ;
	[receiver is the one with a cock in their mouth, even if they are "giving a blowjob"]
	NPCSexAftermath RECEIVER_OBJ receives "OralCock" from GIVER_OBJ;
	[receiver is the one with a pussy in their face, even if they are "giving oral"]
	NPCSexAftermath RECEIVER_OBJ receives "OralPussy" from GIVER_OBJ;
	[any other sex that's mostly touching - might be jerking off, might be erotic tickling, etc., no virginities lost"]
	NPCSexAftermath RECEIVER_OBJ receives "Stroking" from GIVER_OBJ;

	Function for Infection + NPC/Player
	[receiver's ass is fucked or rides the cock of the giver, includes mpreg chance]
	CreatureSexAftermath "RECEIVER INFECTION/NPC NAME" receives "AssFuck" from "GIVER INFECTION/NPC NAME";
	[receiver's pussy is fucked or rides the cock of the giver, includes fpreg chance]
	CreatureSexAftermath "RECEIVER INFECTION/NPC NAME" receives "PussyFuck" from "GIVER INFECTION/NPC NAME";
	[receiver's ass is fucked by dildo/finger/tentacle/... of the giver, no impreg chance]
	CreatureSexAftermath "RECEIVER INFECTION/NPC NAME" receives "AssDildoFuck" from "GIVER INFECTION/NPC NAME";
	[receiver's pussy is fucked by dildo/finger/tentacle/... of the giver, no impreg chance]
	CreatureSexAftermath "RECEIVER INFECTION/NPC NAME" receives "PussyDildoFuck" from "GIVER INFECTION/NPC NAME";
	[receiver is the one with a cock in their mouth, even if they are "giving a blowjob"]
	CreatureSexAftermath "RECEIVER INFECTION/NPC NAME" receives "OralCock" from "GIVER INFECTION/NPC NAME";
	[receiver is the one with a pussy in their face, even if they are "giving oral"]
	CreatureSexAftermath "RECEIVER INFECTION/NPC NAME" receives "OralPussy" from "GIVER INFECTION/NPC NAME";
	[any other sex that's mostly touching - might be jerking off, might be erotic tickling, etc., no virginities lost"]
	CreatureSexAftermath "RECEIVER INFECTION/NPC NAME" receives "Stroking" from "GIVER INFECTION/NPC NAME";
]

to NPCSexAftermath (TakingChar - a person) receives (SexAct - a text) from (GivingChar - a person):
	if debugactive is 1:
		say "DEBUG -> NPCSexAftermath[line break]";
		say "TakingChar: [Printed Name of TakingChar][line break]";
		say "GivingChar: [Printed Name of GivingChar][line break]";
	if GivingChar is Player:
		if debugactive is 1:
			say "DEBUG -> Player is the giving partner for '[SexAct]'[line break]";
		if PlayerFucked of TakingChar is false: [player never had sex with this NPC]
			now PlayerFucked of TakingChar is true; [player sexed up this NPC]
		if SexAct is "AssFuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking [TakingChar]![roman type][line break]";
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s anal virginity![roman type][line break]";
				add printed name of TakingChar to AnalVirginitiesTaken of Player;
			increase AssFuckGiven of Player by 1;
		else if SexAct is "PussyFuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking [TakingChar]![roman type][line break]";
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s virginity![roman type][line break]";
				add printed name of TakingChar to VirginitiesTaken of Player;
			increase PussyFuckGiven of Player by 1;
		else if SexAct is "PussyDildoFuck": [used for dildos, fingers, tentacles - anything pussy penetrative that does not impregnate]
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s virginity![roman type][line break]";
				add printed name of TakingChar to VirginitiesTaken of Player;
			increase PussyFuckGiven of Player by 1;
		else if SexAct is "AssDildoFuck": [used for dildos, fingers, tentacles - anything ass penetrative that does not impregnate]
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s anal virginity![roman type][line break]";
				add printed name of TakingChar to AnalVirginitiesTaken of Player;
			increase AssFuckGiven of Player by 1;
		else if SexAct is "OralCock":
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s oral virginity![roman type][line break]";
				add printed name of TakingChar to OralVirginitiesTaken of Player;
			increase OralCockGiven of Player by 1;
		else if SexAct is "OralPussy":
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s oral virginity![roman type][line break]";
				add printed name of TakingChar to OralVirginitiesTaken of Player;
			increase OralPussyGiven of Player by 1;
		else if SexAct is "OralDildo": [used for dildos, fingers, tentacles - anything orally penetrative]
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s oral virginity![roman type][line break]";
				add printed name of TakingChar to OralVirginitiesTaken of Player;
		LibidoLoss 15;
	else if TakingChar is player:
		if debugactive is 1:
			say "DEBUG -> Player is the receiving partner for '[SexAct]'[line break]";
		if PlayerFucked of GivingChar is false: [player never had sex with this NPC]
			now PlayerFucked of GivingChar is true; [player sexed up this NPC]
		if SexAct is "AssFuck":
			if debug is at level 1:
				say "DEBUG -> MainInfection of [GivingChar] is '[MainInfection of GivingChar]'[line break]";
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to [GivingChar]![roman type][line break]";
				now FirstAnalPartner of Player is printed name of GivingChar;
			if Player is mpreg_able: [fertile]
				if MainInfection of GivingChar is not "" and MainInfection of GivingChar is not "None" and Sterile of GivingChar is false:
					setmonster MainInfection of GivingChar;
					if MainInfection of GivingChar is listed in infections of OviImpregnatorList:
						movichance;
					else:
						mimpregchance;
					[
					if Player is mpreg_now: [player has _just_ been impregnated]
						<set the Givingchar as father somehow>
					]
			increase AssFuckTaken of Player by 1;
		else if SexAct is "PussyFuck":
			if debug is at level 1:
				say "DEBUG -> MainInfection of [GivingChar] is '[MainInfection of GivingChar]'[line break]";
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to [GivingChar]![roman type][line break]";
				now FirstVaginalPartner of Player is printed name of GivingChar;
			if Player is fpreg_able: [can get pregnant RIGHT NOW]
				if MainInfection of GivingChar is not "" and MainInfection of GivingChar is not "None" and Sterile of GivingChar is false:
					setmonster MainInfection of GivingChar;
					if MainInfection of GivingChar is listed in infections of OviImpregnatorList:
						fovichance;
					else:
						fimpregchance;
					[
					if Player is fpreg_now: [player has _just_ been impregnated]
						<set the Givingchar as father somehow>
					]
			increase PussyFuckTaken of Player by 1;
		else if SexAct is "AssDildoFuck": [used for dildos, fingers, tentacles - anything ass penetrative that does not impregnate]
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to [GivingChar]![roman type][line break]";
				now FirstAnalPartner of Player is printed name of GivingChar;
			increase AssFuckTaken of Player by 1;
		else if SexAct is "PussyDildoFuck": [used for dildos, fingers, tentacles - anything pussy penetrative that does not impregnate]
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to [GivingChar]![roman type][line break]";
				now FirstVaginalPartner of Player is printed name of GivingChar;
			increase PussyFuckTaken of Player by 1;
		else if SexAct is "OralCock" or SexAct is "OralPussy":
			if OralVirgin of Player is true:
				now OralVirgin of Player is false;
				say "     [Bold Type]You have lost your oral virginity to [GivingChar]![roman type][line break]";
				now FirstOralPartner of Player is printed name of GivingChar;
			if SexAct is "OralCock":
				increase OralCockTaken of Player by 1;
			else:
				increase OralPussyTaken of Player by 1;
		else if SexAct is "OralDildo": [used for dildos, fingers, tentacles - anything orally penetrative]
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have lost your oral virginity to [GivingChar]![roman type][line break]";
				now FirstOralPartner of Player is printed name of GivingChar;
			increase OralCockTaken of Player by 1;
		LibidoLoss 15;
	else:
		if debugactive is 1:
			say "DEBUG -> [GivingChar] is having sex with [TakingChar][line break]";
		if SexAct is "AssFuck":
			if PenileVirgin of GivingChar is true:
				now PenileVirgin of GivingChar is false;
				say "     [Bold Type][GivingChar] has lost their penile virginity to [TakingChar]![roman type][line break]";
				now FirstPenilePartner of GivingChar is printed name of TakingChar;
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s anal virginity![roman type][line break]";
				now FirstAnalPartner of TakingChar is printed name of GivingChar;
		else if SexAct is "PussyFuck":
			if PenileVirgin of GivingChar is true:
				now PenileVirgin of GivingChar is false;
				say "     [Bold Type][GivingChar] has lost their penile virginity to [TakingChar]![roman type][line break]";
				now FirstPenilePartner of GivingChar is printed name of TakingChar;
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s virginity![roman type][line break]";
				now FirstVaginalPartner of TakingChar is printed name of GivingChar;
		else if SexAct is "AssDildoFuck": [used for dildos, fingers, tentacles - anything ass penetrative that does not impregnate]
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s anal virginity![roman type][line break]";
				now FirstAnalPartner of TakingChar is printed name of GivingChar;
		else if SexAct is "PussyDildoFuck": [used for dildos, fingers, tentacles - anything pussy penetrative that does not impregnate]
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s virginity![roman type][line break]";
				now FirstVaginalPartner of TakingChar is printed name of GivingChar;
		else if SexAct is "OralCock":
			if PenileVirgin of GivingChar is true:
				now PenileVirgin of GivingChar is false;
				say "     [Bold Type][GivingChar] has lost their penile virginity to [TakingChar]![roman type][line break]";
				now FirstPenilePartner of GivingChar is printed name of TakingChar;
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is printed name of GivingChar;
		else if SexAct is "OralPussy":
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is printed name of GivingChar;
		else if SexAct is "OralDildo": [used for dildos, fingers, tentacles - anything orally penetrative]
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is printed name of GivingChar;
	now Lastfuck of GivingChar is turns;
	now Lastfuck of TakingChar is turns;

understand "testCreatureSexAftermath" as CreatureSexAftermathAction.

CreatureSexAftermathAction is an action applying to nothing.

carry out CreatureSexAftermathAction:
	say "Testing: Alpha Husky fucks player:";
	CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
	say "Testing: Player fucks Alpha Husky:";
	CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Player";
	say "Testing: Chris fucks Alpha Husky:";
	CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Chris";
	say "Testing: Alpha Husky fucks Chris:";
	CreatureSexAftermath "Chris" receives "AssFuck" from "Husky Alpha";
	[Options for SexAct are: AssFuck, PussyFuck, AssDildoFuck, PussyDildoFuck, OralCock, OralPussy]

to CreatureSexAftermath (TakingCharName - a text) receives (SexAct - a text) from (GivingCharName - a text):
	if GivingCharName is "Player" or GivingCharName is "player":
		if debugactive is 1:
			say "DEBUG -> Player is the giving partner for '[SexAct]'[line break]";
		if there is a name of TakingCharName in the Table of Random Critters: [security in case someone made a typo - avoids Runtime Errors]
			choose a row with name of TakingCharName in the Table of Random Critters;
		else: [lets tell people to report this too]
			say "     < ERROR: [TakingCharName] not found in Table of Random Critters. Please report the situation you saw this in on the Flexible Survival Discord Bug Report Channel! >";
		if SexAct is "AssFuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking the [TakingCharName in lower case]![roman type][line break]";
			increase AssFuckGiven of Player by 1;
			if Libido of Impregnated Feral is 0 and TakingCharName is listed in infections of MpregList and Enemy Type entry is 0: [standin NPC ready for another pregnancy, enemy fucked has basic capability of mpreg, only non-unique enemies can get impregnated]
				if debugactive is 1:
					say "DEBUG -> NPC Standin ready, fucked enemy on MpregList and non-unique[line break]";
				let Basechance be 2;
				if "Fertile" is listed in Feats of Player:
					increase Basechance by 1;
				if Sterile of Player is false and a random chance of (Basechance + Ball Size of Player) in 10 succeeds: [fertile player, 30-90% chance depending on ball size and output]
					now Libido of Impregnated Feral is a random number between 8 and 24; [1-3 day carrying period]
					now MainInfection of Impregnated Feral is TakingCharName; [saving the infection name]
					if debugactive is 1:
						say "DEBUG -> Non-Sterile Player succeeded in their [2 + Ball Size of Player] in 10 impregnation check. [Libido of Impregnated Feral] turns to birth of a [MainInfection of Impregnated Feral] offspring.[line break]";
		else if SexAct is "PussyFuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking the [TakingCharName in lower case]![roman type][line break]";
			increase PussyFuckGiven of Player by 1;
			if Libido of Impregnated Feral is 0 and Enemy Type entry is 0: [standin NPC ready for another pregnancy, only non-unique enemies can get impregnated]
				if debugactive is 1:
					say "DEBUG -> NPC Standin ready and non-unique[line break]";
				let Basechance be 2;
				if "Fertile" is listed in Feats of Player:
					increase Basechance by 1;
				if Sterile of Player is false and a random chance of (Basechance + Ball Size of Player) in 10 succeeds: [fertile player, 30-90% chance depending on ball size and output]
					now Libido of Impregnated Feral is a random number between 8 and 24; [1-3 day carrying period]
					now MainInfection of Impregnated Feral is TakingCharName; [saving the infection name]
					if debugactive is 1:
						say "DEBUG -> Non-Sterile Player succeeded in their [2 + Ball Size of Player] in 10 impregnation check. [Libido of Impregnated Feral] Turns to birth of a [MainInfection of Impregnated Feral] offspring.[line break]";
		else if SexAct is "AssDildoFuck": [used for dildos, fingers, tentacles - anything ass penetrative that does not impregnate]
			increase AssFuckGiven of Player by 1;
		else if SexAct is "PussyDildoFuck": [used for dildos, fingers, tentacles - anything pussy penetrative that does not impregnate]
			increase PussyFuckGiven of Player by 1;
		else if SexAct is "OralCock":
			increase OralCockGiven of Player by 1;
		else if SexAct is "OralPussy":
			increase OralPussyGiven of Player by 1;
	else if TakingCharName is "Player" or TakingCharName is "player":
		if debugactive is 1:
			say "DEBUG -> Player is the receiving partner for '[SexAct]'[line break]";
		if SexAct is "AssFuck":
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to the [GivingCharName in lower case]![roman type][line break]";
				now FirstAnalPartner of Player is GivingCharName;
			setmonster GivingCharName;
			if GivingCharName is listed in infections of OviImpregnatorList:
				movichance;
			else:
				mimpregchance;
			increase AssFuckTaken of Player by 1;
		else if SexAct is "PussyFuck":
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to the [GivingCharName in lower case]![roman type][line break]";
				now FirstVaginalPartner of Player is GivingCharName;
			setmonster GivingCharName;
			if GivingCharName is listed in infections of OviImpregnatorList:
				fovichance;
			else:
				fimpregchance;
			increase PussyFuckTaken of Player by 1;
		else if SexAct is "AssDildoFuck":
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to [GivingCharName]![roman type][line break]";
				now FirstAnalPartner of Player is GivingCharName;
			increase AssFuckTaken of Player by 1;
		else if SexAct is "PussyDildoFuck":
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to [GivingCharName]![roman type][line break]";
				now FirstVaginalPartner of Player is GivingCharName;
			increase PussyFuckTaken of Player by 1;
		else if SexAct is "OralCock" or SexAct is "OralPussy":
			if OralVirgin of Player is true:
				now OralVirgin of Player is false;
				say "     [Bold Type]You have lost your oral virginity to the [GivingCharName in lower case]![roman type][line break]";
				now FirstOralPartner of Player is GivingCharName;
			if SexAct is "OralCock":
				increase OralCockTaken of Player by 1;
			else:
				increase OralPussyTaken of Player by 1;
		now Lastfuck of Player is turns;
	else:
		let GivingCharIsNPC be 0;
		let TakingCharIsNPC be 0;
		let GivingChar be a person;
		let TakingChar be a person;
		if there is a name of GivingCharName in the Table of GameCharacterIDs:
			now GivingChar is the object corresponding to a name of GivingCharName in the Table of GameCharacterIDs;
			now Lastfuck of GivingChar is turns;
			now GivingCharIsNPC is 1;
		if there is a name of TakingCharName in the Table of GameCharacterIDs:
			now TakingChar is the object corresponding to a name of TakingCharName in the Table of GameCharacterIDs;
			now Lastfuck of TakingChar is turns;
			now TakingCharIsNPC is 1;
		if GivingCharIsNPC is 0 and TakingCharIsNPC is 0:
			say "Error: The CreatureSexAftermath function should include at least one NPC if it is used. Please report this on the FS Discord and quote this full message. Giving Char: '[GivingCharName]' Taking Char: '[TakingCharName]'";
		if debugactive is 1:
			say "DEBUG: GivingCharName: [GivingCharName], GivingCharIsNPC: [GivingCharIsNPC][line break]";
			say "DEBUG: TakingCharName: [TakingCharName], TakingCharIsNPC: [TakingCharIsNPC][line break]";
		if GivingCharIsNPC is 1:
			if SexAct is "AssFuck":
				if PenileVirgin of GivingChar is true:
					now PenileVirgin of GivingChar is false;
					say "     [Bold Type][GivingCharName] has lost their penile virginity fucking the [TakingCharName in lower case]'s ass![roman type][line break]";
			else if SexAct is "PussyFuck":
				if PenileVirgin of GivingChar is true:
					now PenileVirgin of GivingChar is false;
					say "     [Bold Type][GivingCharName] has lost their penile virginity fucking the [TakingCharName in lower case]![roman type][line break]";
		else if TakingCharIsNPC is 1: [NPC takes]
			if SexAct is "AssFuck":
				if AnalVirgin of TakingChar is true:
					now AnalVirgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their anal virginity to [GivingCharName in lower case]![roman type][line break]";
					now FirstAnalPartner of TakingChar is GivingCharName;
			else if SexAct is "PussyFuck":
				if Virgin of TakingChar is true:
					now Virgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their virginity to [GivingCharName in lower case]![roman type][line break]";
					now FirstVaginalPartner of TakingChar is GivingCharName;
			else if SexAct is "AssDildoFuck":
				if AnalVirgin of TakingChar is true:
					now AnalVirgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their anal virginity to [GivingCharName]![roman type][line break]";
					now FirstAnalPartner of TakingChar is GivingCharName;
			else if SexAct is "PussyDildoFuck":
				if Virgin of TakingChar is true:
					now Virgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their virginity to [GivingCharName]![roman type][line break]";
					now FirstVaginalPartner of TakingChar is GivingCharName;
			else if SexAct is "OralCock" or SexAct is "OralPussy":
				if OralVirgin of TakingChar is true:
					now OralVirgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their oral virginity to [GivingCharName in lower case]![roman type][line break]";
					now FirstOralPartner of TakingChar is GivingCharName;
		else:
			say "Error: The CreatureSexAftermath function should include at least one infection if it is used. Please report this on the FS Discord and quote this full message. Giving Char: '[GivingCharName]' Taking Char: '[TakingCharName]'";

to StatChange (Statname - a text) by (Modifier - a number):
	StatChange Statname by Modifier silence state is 0;

to StatChange (Statname - a text) by (Modifier - a number) silently:
	StatChange Statname by Modifier silence state is 1;

to StatChange (Statname - a text) by (Modifier - a number) silence state is (Silence - a number):
	if Modifier is 0:
		say "ERROR: You just got a 0 point stat change. Please report on the FS Discord how you saw this.";
	now Statname is Statname in lower case;
	let AbsMod be absolute value of Modifier to the nearest whole number;
	if Silence is 0:
		say "[bold type]Your [statname] has [if Modifier > 0]in[else]de[end if]creased by [AbsMod]![roman type][line break]";
	if Statname is:
		-- "strength":
			increase strength of Player by Modifier;
			increase capacity of Player by Modifier * 5;
		-- "dexterity":
			increase dexterity of Player by Modifier;
		-- "stamina":
			repeat with x running from 1 to AbsMod:
				if Modifier > 0:
					increase stamina of Player by 1;
					if remainder after dividing stamina of Player by 2 is 0:
						increase maxHP of Player by level of Player + 1;
						increase HP of Player by level of Player + 1;
				else:
					decrease stamina of Player by 1;
					if remainder after dividing stamina of Player by 2 is 1:
						decrease maxHP of Player by level of Player + 1;
						if HP of Player > maxHP of Player, now HP of Player is maxHP of Player;
		-- "charisma":
			increase charisma of Player by Modifier;
		-- "intelligence":
			increase intelligence of Player by Modifier;
		-- "perception":
			increase perception of Player by Modifier;
		-- otherwise:
			say "ERROR: Invalid stat '[Statname]' used in StatChange. Please report on the FS Discord how you saw this.";
[
understand "teststatgain" as StatGainAction.

StatGainAction is an action applying to one topic.

carry out StatGainAction:
	say "StatChange 'Strength' by 2[line break]";
	StatChange "Strength" by 2;

understand "teststatloss" as StatLossAction.

StatLossAction is an action applying to one topic.

carry out StatLossAction:
	say "StatChange 'Strength' by -2[line break]";
	StatChange "Strength" by -2;
]
to say NonCombatError:
	say "ERROR! This is a noncombat creature that you should never see in a fight. Please report how you saw this on the FS Discord or Forum.";


HighestPlayerStat is a text that varies.

to FindHighestPlayerStat:
	let CurrentStat be 0;
	if Strength of Player > CurrentStat:
		now CurrentStat is Strength of Player;
		now HighestPlayerStat is "strength";
	if Dexterity of Player > CurrentStat:
		now CurrentStat is Dexterity of Player;
		now HighestPlayerStat is "dexterity";
	if Stamina of Player > CurrentStat:
		now CurrentStat is Stamina of Player;
		now HighestPlayerStat is "stamina";
	if Charisma of Player > CurrentStat:
		now CurrentStat is Charisma of Player;
		now HighestPlayerStat is "charisma";
	if Intelligence of Player > CurrentStat:
		now CurrentStat is Intelligence of Player;
		now HighestPlayerStat is "intelligence";
	if Perception of Player > CurrentStat:
		now CurrentStat is Perception of Player;
		now HighestPlayerStat is "perception";

to unwield ( x - a grab object ) silently:
	unwield x silence state is 1;

to unwield ( x - a grab object ):
	unwield x silence state is 0;

to unwield ( x - a grab object ) silence state is (Silence - a number):
	if x is an armament and weapon object of Player is x:
		now weapon of Player is "[one of]your quick wit[or]your fists[or]a quick kick[or]your body[or]some impromptu wrestling[or]an unarmed strike[at random]";
		now weapon damage of Player is 4;
		now weapon type of Player is "Melee";
		now weapon object of Player is journal;
		if Silence is 0:
			say "You stop holding your [x].";

to wield ( x - a grab object ) silently:
	wield x silence state is 1;

to wield ( x - a grab object ):
	wield x silence state is 0;

to wield ( x - a grab object ) silence state is (Silence - a number):
	if x is owned and x is an armament:
		if (ScaleValue of Player - objsize of x) > -3 and (ScaleValue of Player - objsize of x) < 3:
			now weapon object of Player is x;
			now weapon of Player is weapon of x;
			now weapon damage of Player is weapon damage of x;
			now weapon type of Player is weapon type of x;
			if x is ranged:
				now weapon type of Player is "Ranged";
		if Silence is 0:
			if (ScaleValue of Player - objsize of x) is:
			-- 4: [4 size categories difference - huge player (5), size 1 weapon]
				say "     You try to ready your [x], but there really is no way you could realistically use this in combat!";
			-- 3: [3 categories difference]
				say "     You try to ready your [x], but there really is no way you could realistically use this in combat!";
			-- 2: [2 categories difference]
				say "     Carefully taking the far too small [x] in one hand, you can't help but ask yourself if this won't hinder more than help in a fight.";
			-- 1: [1 category difference]
				say "     You grab the [x] with your comparatively large hand, finding it somewhat uncomfortable to wield.";
			-- 0: [proper size for the player]
				say "     You ready your [x].";
			-- -1: [1 categories difference]
				say "     You grab your [x] with your comparatively small hand, finding it somewhat uncomfortable to wield.";
			-- -2: [2 categories difference]
				say "     Clutching onto your [x] with both hands, you have trouble controlling its momentum. This will be intensely difficult to use.";
			-- -3: [3 categories difference]
				say "     Trying to use your [x] as a weapon is fairly ridiculous, given your size.";
			-- -4: [4 size categories difference - tiny player (1), size 5 weapon]
				say "     There is simply no way you could use your [x] as a weapon, given your small stature.";

Section 2 - Stripping

[
understand "teststripcrotch" as StripCrotchAction.

StripCrotchAction is an action applying to one topic.

carry out StripCrotchAction:
	say "[StripCrotch]";

Example Use:
say "     Korvin [StripCrotch], then grins eagerly.";
]

to say StripCrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		say "strokes over your bare crotch";
	else if WaistItem is journal and CrotchItem is not journal:
		say "pulls down your [CrotchItem] and bares your crotch";
	else if WaistItem is not journal and CrotchItem is journal:
		say "pulls down your [WaistItem] and bares your crotch";
	else if WaistItem is not journal and CrotchItem is not journal:
		say "pulls down your [Waistitem] and [CrotchItem], baring your crotch";


[
understand "zTSelfStripCrotch" as SSCRAction.

SSCRAction is an action applying to nothing.

carry out SSCRAction:
	say "[SelfStripCrotch]";

Example Use:
say "     You [SelfStripCrotch], then wrap your hand around your [Cock of Player] shaft.";
]

to say SelfStripCrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		say "stroke over your bare crotch";
	else if WaistItem is journal and CrotchItem is not journal:
		say "pull down your [CrotchItem] and bare your crotch";
	else if WaistItem is not journal and CrotchItem is journal:
		say "pull down your [WaistItem] and bare your crotch";
	else if WaistItem is not journal and CrotchItem is not journal:
		say "pull down your [Waistitem] and [CrotchItem], baring your crotch";

[
understand "zTSelfDressCrotch" as SDCRAction.

SDCRAction is an action applying to nothing.

carry out SDCRAction:
	say "[SelfDressCrotch]";


Example Use:
say "     You [SelfDressCrotch], then get ready to move out again.";
]

to say SelfDressCrotch:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		say "casually stroke over your bare crotch";
	else if WaistItem is journal and CrotchItem is not journal:
		say "collect and put your [CrotchItem] back on";
	else if WaistItem is not journal and CrotchItem is journal:
		say "collect and put your [WaistItem] back on";
	else if WaistItem is not journal and CrotchItem is not journal:
		say "collect your [CrotchItem] and [Waistitem] to put them back on";

[
Adds the uppermost layer of bottom clothes, that the player wears, in the text
Example use:
say "     You feel the cold wind blow on your [crotchDesc]";
]
to say crotchDesc:
	let WaistItem be a grab object;
	now WaistItem is journal;
	let CrotchItem be a grab object;
	now CrotchItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "waist":
			now WaistItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "crotch":
			now CrotchItem is z;
	if WaistItem is journal and CrotchItem is journal: [already naked]
		say "bare crotch";
	else if WaistItem is journal and CrotchItem is not journal:
		say "[CrotchItem]";
	else if WaistItem is not journal:
		say "[WaistItem]";

[

understand "zTStripChest" as SCAction.

SCAction is an action applying to nothing.

carry out SCAction:
	say "[StripChest]";

Example Use:
say "     Korvin [StripChest], then grins eagerly.";
]

to say StripChest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		say "strokes over your bare chest";
	else if ChestItem is journal and BodyItem is not journal:
		say "pulls off your [BodyItem] and bares your chest";
	else if ChestItem is not journal and BodyItem is journal:
		say "pulls off your [ChestItem] and bares your chest";
	else if ChestItem is not journal and BodyItem is not journal:
		say "pulls off your [ChestItem] and [BodyItem], baring your chest";

[
understand "zTSelfStripChest" as SSCAction.

SSCAction is an action applying to nothing.

carry out SSCAction:
	say "[SelfStripChest]";

Example Use:
say "     You [SelfStripChest], then grin eagerly.";
]

to say SelfStripChest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		say "casually stroke over your bare chest";
	else if ChestItem is journal and BodyItem is not journal:
		say "pull off your [BodyItem] and bare your chest";
	else if ChestItem is not journal and BodyItem is journal:
		say "pull off your [ChestItem] and bare your chest";
	else if ChestItem is not journal and BodyItem is not journal:
		say "pull off your [ChestItem] and [BodyItem], baring your chest";

[
understand "zTSelfDressChest" as SDCAction.

SDCAction is an action applying to nothing.

carry out SDCAction:
	say "[SelfDressChest]";


Example Use:
say "     You [SelfDressChest], then get ready to move out again.";
]

to say SelfDressChest:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		say "casually stroke over your bare chest";
	else if ChestItem is journal and BodyItem is not journal:
		say "collect and put your [BodyItem] back on";
	else if ChestItem is not journal and BodyItem is journal:
		say "collect and put your [ChestItem] back on";
	else if ChestItem is not journal and BodyItem is not journal:
		say "collect your [ChestItem] and [BodyItem] to put them back on";

[
Adds the uppermost layer of top clothes, that the player wears, in the text
Example use:
say "     The water splashes on your [chestDesc]";
]
to say chestDesc:
	let ChestItem be a grab object;
	now ChestItem is journal;
	let BodyItem be a grab object;
	now BodyItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "chest":
			now ChestItem is z;
	repeat with z running through equipped equipment:
		if slot of z is "Body":
			now BodyItem is z;
	if ChestItem is journal and BodyItem is journal: [already naked]
		say "bare chest";
	else if ChestItem is not journal and BodyItem is journal:
		say "[ChestItem]";
	else:
		say "[BodyItem]";

[
Adds footwear name in the text
Example use:
say "     You walk on the dirty floor with your [feetDesc]";
]
to say feetDesc:
	let FeetItem be a grab object;
	now FeetItem is journal;
	repeat with z running through equipped equipment:
		if slot of z is "feet":
			now FeetItem is z;
	if FeetItem is journal: [already naked]
		say "bare feet";
	else:
		say "[FeetItem]";

To MultiInfect (x - text) repeats (repeatCount - number):
	if scenario is "Researcher" and researchbypass is 0:
		vialchance x;
		continue the action;
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry exactly matches the text x, case insensitively:
			now MonsterID is y;
			let reset be 0;
			if researchbypass is 1 and non-infectious entry is true:
				now reset is 1;
				now non-infectious entry is false;
			let repeatVar be 0;
			while repeatVar < repeatCount:
				infect;
				increase repeatVar by 1;
			if reset is 1:
				now non-infectious entry is true;
			break;

to say nameOrDefault:
	if Player is defaultnamed:
		if Player is male:
			say "[one of]boy[or]dude[or]man[or]guy[at random]";
		else:
			say "[one of]girl[or]babe[or]sweetie[at random]";
	else:
		say "[name of Player]";


[Used to break up large blocks of introduction reactions when a new npc is introduced in the library, etc.]
IntroReactionCounter is a number that varies. [@Tag:NotSaved]

to WaitBreakReactions:
	increase IntroReactionCounter by 1;
	if remainder after dividing IntroReactionCounter by 2 is 0: [break every 2 reaction texts]
		WaitLineBreak;
	else:
		LineBreak;


[These are a series of ability checks that can be used to simplify the process of a standard ability check.
This code can be copied and customized for any special use cases in situations and events. The difficulty can
be adjusted as needed.]
to decide if a dexterity check passes (difficulty - a number):
	let bonus be (( dexterity of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2][difficulty in words][roman type] (Dexterity Check):[line break]";
	if diceroll + bonus >= difficulty:
		decide yes;
	else:
		decide no;

to decide if a strength check passes (difficulty - a number):
	let bonus be (( strength of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2][difficulty in words][roman type] (strength Check):[line break]";
	if diceroll + bonus >= difficulty:
		decide yes;
	else:
		decide no;

to decide if a stamina check passes (difficulty - a number):
	let bonus be (( stamina of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2][difficulty in words][roman type] (stamina Check):[line break]";
	if diceroll + bonus >= difficulty:
		decide yes;
	else:
		decide no;

to decide if a charisma check passes (difficulty - a number):
	let bonus be (( charisma of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2][difficulty in words][roman type] (charisma Check):[line break]";
	if diceroll + bonus >= difficulty:
		decide yes;
	else:
		decide no;

to decide if an intelligence check passes (difficulty - a number):
	let bonus be (( intelligence of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2][difficulty in words][roman type] (intelligence Check):[line break]";
	if diceroll + bonus >= difficulty:
		decide yes;
	else:
		decide no;

to decide if a perception check passes (difficulty - a number):
	let bonus be (( perception of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2][difficulty in words][roman type] (perception Check):[line break]";
	if diceroll + bonus >= difficulty:
		decide yes;
	else:
		decide no;

[This can be used to avoid writing the choice code over and over again when needing
to prompt the player with an number of options to choose from. example of usage: let playerChoice be what the player chooses from myList]
to decide which text is what the player chooses from (choices - a list of text):
	if the number of entries in choices is 0:
		decide on "";
	let choice order be 1;
	repeat with option running through choices:
		say "     [link]([choice order in words])[as][choice order in words][end link] - [option].";
		increase choice order by 1;

	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > number of entries in choices:
		say "Choice? (1-[number of entries in choices in words])>[run paragraph on]";
		get a number;
		if calcnumber < 1 or calcnumber > number of entries in choices:
			say "Invalid choice. Type "
			now choice order is 1;
			repeat with option running through choices:
				if choice order is number of entries in choices:
					say " or [link][choice order in words][end link] to select [option]."
				else:
					say "[link][choice order in words][end link] to select [option], ";
				increase choice order by 1;
	decide on entry calcnumber of choices;



Basic Functions ends here.
