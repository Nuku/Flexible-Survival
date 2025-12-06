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

hyperindex is a number that varies. [the index of a link in the hyperlink list that was found or added]

to linkfind (T - text): [sets hyperindex to the index of an entry in the hyperlink list matching T after finding or adding it]
	let link be the substituted form of "[T]";
	if hyperindex < 1 or hyperindex > number of entries in hyperlink list:
		now hyperindex is number of entries in hyperlink list;
	if hyperindex < number of entries in hyperlink list and entry hyperindex + 1 of hyperlink list is link: [links often get built in the same order, so long runs of these should be sequential]
		increase hyperindex by 1;
	else if link is listed in hyperlink list: [otherwise, find it in the list if it exists]
		repeat with x running from 1 to number of entries in hyperlink list:
			if hyperindex > number of entries in hyperlink list / 2: [if our last position was over halfway through the list, go backwards]
				if entry (number of entries in hyperlink list - x) + 1 of hyperlink list is link: [in reverse, x = 1 is the last entry of the list]
					now hyperindex is (number of entries in hyperlink list - x) + 1;
					break;
			else if entry x of hyperlink list is link: [else search forward regularly]
				now hyperindex is x;
				break;
	else: [or just add it if it doesn't]
		add link to hyperlink list;
		now hyperindex is number of entries in hyperlink list;

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
		say "It smells pretty normal for [a printed name of x].";
	else:
		say "[scent of x][line break]";

To wait for any key:
	if hypernull is 0:
		say "[link]more[as] [end link][run paragraph on][line break]";
	keypause;
	if hypernull is 0:
		LineBreak;

to say WaitLineBreak: [little bit of often used code]
	LineBreak;
	WaitLineBreak;

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

to PlayerDrink (N - number) silently:
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
	let found be 0;
	repeat through Table of Game Objects:
		if name entry exactly matches the text ItemObj, case insensitively:
			if Silence is 0:
				ItemGain object entry by N;
			else:
				ItemGain object entry by N silently;
			now found is 1;
			break;
	if found is 0:
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
		ItemLoss ItemObj by carried of ItemObj;

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
			say "     [bold type]You lose [if carried of ItemObj is 1]your[else]1[end if] [printed name of ItemObj in lower case]![roman type][line break]";
		else:
			say "     [bold type]You lose [if carried of ItemObj <= N]all your[else][N][end if] [printed name of ItemObj in lower case]![roman type][line break]";
	decrease carried of ItemObj by N;
	if carried of ItemObj < 1:
		now carried of ItemObj is 0;
		now ItemObj is nowhere;

to PlayerMaxHeal:
	LineBreak;
	say "     [bold type]Your hitpoints are completely restored![roman type][line break]";
	now HP of Player is MaxHP of Player;

to PlayerHealed (N - number):
	if N is not 0:
		LineBreak;
		say "     [bold type]Your hitpoints increase by [N]![roman type][line break]";
		increase HP of Player by N;
		if HP of Player > MaxHP of Player:
			now HP of Player is MaxHP of Player;

to PlayerWounded (N - number): [wounded, not killed - this won't kill a player]
	if N is not 0:
		LineBreak;
		say "     [bold type]Your hitpoints are reduced by [N]![roman type][line break]";
		decrease HP of Player by N;
		if HP of Player < 0:
			now HP of Player is 0;

to SanLoss (N - number):
	if N is not 0:
		LineBreak;
		say "     [bold type]Your sanity has decreased by [N]![roman type][line break]";
		decrease humanity of Player by N;

to SanBoost (N - number):
	if N is not 0:
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
	if N is not 0:
		LineBreak;
		say "     [bold type]Your libido has decreased by [N]![roman type][line break]";
		decrease Libido of Player by N;
		if Libido of Player < 0:
			now Libido of Player is 0;

to LibidoBoost (N - number):
	if N is not 0:
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
		else if Featname is "Strong Back":
			decrease capacity of Player by 50;
		else if Featname is "Expert Medic":
			if CurrentMedkitSupplies > 1:
				decrease CurrentMedkitSupplies by 1;
		else if Featname is "Vampiric":
			now vampiric is false;
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
			increase MaxHP of Player by 8;
			increase HP of Player by 8;
		else if Featname is "Expert Medic":
			increase CurrentMedkitSupplies by 1;
		else if Featname is "Instinctive Combat":
			say "     Having gained the [']Instinctive Combat['] feat, you now have access to the [']Auto Attack['] commands. These are the same as picking the same option over and over again during combat. No different results, just less typing for faster gameplay.[line break]Type [link][bold type]auto attack normal[roman type][end link] for the default method of combat (choose each action).[line break]Type [link][bold type]auto attack berserk[roman type][end link] to always attack in combat.[line break]Type [link][bold type]auto attack seduce[roman type][end link] to always seduce in combat.[line break]Type [link][bold type]auto attack pass[roman type][end link] to always pass in combat.[line break]Type [link][bold type]auto attack coward[roman type][end link] to always flee in combat.[line break]Type [link][bold type]auto attack submit[roman type][end link] to always submit in combat.[line break]You may review these commands at any time by using the [link]help[end link] command.";
		else if Featname is "Vore Predator":
			say "     Having gained the [']Vore Predator['] feat, you can now access the [link][bold type]vore menu[roman type][end link] command. It can also be accessed using Trixie's cheat menu ([bold type]iwannacheat[roman type]). It is used for adjusting vore-related game settings.";
		else if Featname is "Mugger":
			say "     You will now get a flat rate increase to item drops from monsters based on your perception. This ability can be can turned on or off by using the [link][bold type]mugger[as]muggering[roman type][end link] command and is currently [bold type][if muggerison is true]ON[else]OFF[end if][roman type].";
		else if Featname is "Vampiric":
			say "     You will now recover a small amount of health, thirst and hunger after every victory as you get in a blood-sucking bite after your final blow or at some other point during the victory scene.";
			now vampiric is true;
	else if debugactive is 1:
		say "ERROR: Trying to add '[Featname]', which the player already has.";

to BallsGrow (TargetChar - a person) by (IncreaseNum - a number):
	increase Ball Size of TargetChar by IncreaseNum;
	if Ball Size of TargetChar < 0:
		now Ball Size of TargetChar is 0;
	else if Ball Size of TargetChar > 7:
		now Ball Size of TargetChar is 7;

to BallsShrink (TargetChar - a person) by (DecreaseNum - a number):
	decrease Ball Size of TargetChar by DecreaseNum;
	if Ball Size of TargetChar < 0:
		now Ball Size of TargetChar is 0;
	else if Ball Size of TargetChar > 7:
		now Ball Size of TargetChar is 7;

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

to BehaviorCount (TraitCountName - text):
	if TraitCountName is:
		-- "Breeder":
			increase BehaviorCount_Breeder of Player by 1;
		-- "Lover":
			increase BehaviorCount_Lover of Player by 1;
		-- "Rapist":
			increase BehaviorCount_Rapist of Player by 1;
		-- "Nice":
			increase BehaviorCount_Nice of Player by 1;
		-- "Cruel":
			increase BehaviorCount_Cruel of Player by 1;
		-- "Vore":
			increase BehaviorCount_Vore of Player by 1;


understand "rename" as PlayerRenaming.

PlayerRenaming is an action applying to nothing.

carry out PlayerRenaming:
	playernaming; []

to playernaming:
	say "Note: You can always change your name at a later point with the 'rename' command.";
	LineBreak;
	say "     [bold type]Please enter your new name[roman type]> [run paragraph on]";
	get typed command as playerinput;
	if "[playerinput]" is not "", now name of Player is playerinput;

understand "observe room/surroundings/--" as ObserveRoom.

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
	say "[OralPussyGiven of Player] times having your pussy orally pleasured, making you [SexP OralPussyGiven of Player] at receiving pussy oral.";
	say "[OralPussyTaken of Player] times orally pleasuring someone's pussy, making you [SexP OralPussyTaken of Player] at giving pussy oral.";
	say "[OralCockGiven of Player] times having your cock orally pleasured, making you [SexP OralCockGiven of Player] at receiving cock oral.";
	say "[OralCockTaken of Player] times orally pleasuring someone's cock, making you [SexP OralCockTaken of Player] at giving cock oral.";
	say "[AssFuckGiven of Player] times fucking someone in the ass, making you [SexP AssFuckGiven of Player] at fucking asses.";
	say "[AssFuckTaken of Player] times taking someone's cock up your ass, making you [SexP AssFuckTaken of Player] at being ass-fucked.";
	say "[PussyFuckGiven of Player] times fucking someone's pussy, making you [SexP PussyFuckGiven of Player] at fucking pussies.";
	say "[PussyFuckTaken of Player] times being fucked in the pussy by someone, making you [SexP PussyFuckTaken of Player] at being fucked.";

to say SexP (N - number):
	if N is 0:
		say "a [special-style-1]virgin[roman type]";
	else if N < 10:
		say "a [special-style-1]novice[roman type]";
	else if N < 30:
		say "an [special-style-1]apprentice[roman type]";
	else if N < 70:
		say "an [special-style-1]initiate[roman type]";
	else if N < 150:
		say "a [special-style-1]journeyman[roman type]";
	else if N < 300:
		say "an [special-style-1]expert[roman type]";
	else if N < 575:
		say "a [special-style-1]master[roman type]";
	else:
		say "a [special-style-1]legendary [one of]pornstar[or]sex machine[at random][roman type]";

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
		now LastSexualPartner of TakingChar is name of Player;
		now LastSexualPartner of Player is printed name of TakingChar;
		if PlayerFucked of TakingChar is false: [player never had sex with this NPC]
			now PlayerFucked of TakingChar is true; [player sexed up this NPC]
		if SexAct in lower case is "assfuck" and Player is not male: [player needs to be male to penetrate]
			say "Error: NPCSexAftermath run with '[SexAct]' but player is not male! Please report this on the FS Discord and quote this full message. GivingChar: 'Player', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "assfuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking [TakingChar]![roman type][line break]";
				now FirstPenilePartner of Player is printed name of TakingChar;
				now SexuallyExperienced of Player is true;
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s anal virginity![roman type][line break]";
				now FirstAnalPartner of TakingChar is name of Player;
				now SexuallyExperienced of TakingChar is true;
				add printed name of TakingChar to AnalVirginitiesTaken of Player;
			increase AssFuckGiven of Player by 1;
			if GivingChar is not sterile and TakingChar is mpreg_able: [mpreg fertile]
				say "[ImpregFunction of TakingChar]";
		else if SexAct in lower case is "pussyfuck" and Player is not male: [player needs to be male to penetrate]
			say "Error: NPCSexAftermath run with '[SexAct]' but player is not male! Please report this on the FS Discord and quote this full message. GivingChar: 'Player', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "pussyfuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking [TakingChar]![roman type][line break]";
				now FirstPenilePartner of Player is printed name of TakingChar;
				now SexuallyExperienced of Player is true;
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s virginity![roman type][line break]";
				now FirstVaginalPartner of TakingChar is name of Player;
				now SexuallyExperienced of TakingChar is true;
				add printed name of TakingChar to VirginitiesTaken of Player;
			increase PussyFuckGiven of Player by 1;
			if GivingChar is not sterile and TakingChar is fpreg_able: [fpreg fertile]
				say "[ImpregFunction of TakingChar]";
		else if SexAct in lower case is "pussydildofuck": [used for dildos, fingers, tentacles, or even a cock that is pulled out before orgasm - anything pussy penetrative that does not impregnate]
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s virginity![roman type][line break]";
				now FirstVaginalPartner of TakingChar is name of Player;
				now SexuallyExperienced of TakingChar is true;
				add printed name of TakingChar to VirginitiesTaken of Player;
			increase PussyFuckGiven of Player by 1;
		else if SexAct in lower case is "assdildofuck": [used for dildos, fingers, tentacles, or even a cock that is pulled out before orgasm - anything ass penetrative that does not impregnate]
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s anal virginity![roman type][line break]";
				now FirstAnalPartner of TakingChar is name of Player;
				now SexuallyExperienced of TakingChar is true;
				add printed name of TakingChar to AnalVirginitiesTaken of Player;
			increase AssFuckGiven of Player by 1;
		else if SexAct in lower case is "oralcock" and Player is not male: [player needs to be male to get sucked]
			say "Error: NPCSexAftermath run with '[SexAct]' but player is not male! Please report this on the FS Discord and quote this full message. GivingChar: 'Player', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "oralcock":
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is name of Player;
				now SexuallyExperienced of TakingChar is true;
				add printed name of TakingChar to OralVirginitiesTaken of Player;
			increase OralCockGiven of Player by 1;
		else if SexAct in lower case is "oralpussy" and Player is not female: [player needs to be female to get licked]
			say "Error: NPCSexAftermath run with '[SexAct]' but player is not female! Please report this on the FS Discord and quote this full message. GivingChar: 'Player', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "oralpussy":
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is name of Player;
				now SexuallyExperienced of TakingChar is true;
				add printed name of TakingChar to OralVirginitiesTaken of Player;
			increase OralPussyGiven of Player by 1;
		else if SexAct in lower case is "oraldildo": [used for dildos, fingers, tentacles - anything orally penetrative]
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is name of Player;
				now SexuallyExperienced of TakingChar is true;
				add printed name of TakingChar to OralVirginitiesTaken of Player;
		LibidoLoss 15;
	else if TakingChar is player:
		if debugactive is 1:
			say "DEBUG -> Player is the receiving partner for '[SexAct]'[line break]";
		now LastSexualPartner of Player is printed name of GivingChar;
		now LastSexualPartner of GivingChar is name of Player;
		if PlayerFucked of GivingChar is false: [player never had sex with this NPC]
			now PlayerFucked of GivingChar is true; [player sexed up this NPC]
		if SexAct in lower case is "assfuck":
			if debug is at level 1:
				say "DEBUG -> MainInfection of [GivingChar] is '[MainInfection of GivingChar]'[line break]";
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to [GivingChar]![roman type][line break]";
				now FirstAnalPartner of Player is printed name of GivingChar;
				now SexuallyExperienced of Player is true;
			if PenileVirgin of GivingChar is true:
				now PenileVirgin of GivingChar is false;
				say "     [Bold Type]You have taken [GivingChar]'s penile virginity![roman type][line break]";
				now FirstPenilePartner of GivingChar is name of Player;
				now SexuallyExperienced of GivingChar is true;
				add printed name of GivingChar to PenileVirginitiesTaken of Player;
			if Player is mpreg_able: [fertile]
				if MainInfection of GivingChar is not "" and MainInfection of GivingChar is not "None" and Sterile of GivingChar is false:
					setmonster MainInfection of GivingChar;
					if MainInfection of GivingChar is listed in infections of OviImpregnatorList:
						movichance;
					else:
						mimpregchance;
					[
					if Player is mpreg_now: [player has _just_ been impregnated]
						<set the GivingChar as father somehow>
					]
			increase AssFuckTaken of Player by 1;
		else if SexAct in lower case is "pussyfuck" and Player is not female: [player needs to be female to get penetrated]
			say "Error: NPCSexAftermath run with '[SexAct]' but player is not female! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingChar]', TakingChar: 'Player'[line break]";
		else if SexAct in lower case is "pussyfuck":
			if debug is at level 1:
				say "DEBUG -> MainInfection of [GivingChar] is '[MainInfection of GivingChar]'[line break]";
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to [GivingChar]![roman type][line break]";
				now FirstVaginalPartner of Player is printed name of GivingChar;
				now SexuallyExperienced of Player is true;
			if PenileVirgin of GivingChar is true:
				now PenileVirgin of GivingChar is false;
				say "     [Bold Type]You have taken [GivingChar]'s penile virginity![roman type][line break]";
				now FirstPenilePartner of GivingChar is name of Player;
				now SexuallyExperienced of GivingChar is true;
				add printed name of GivingChar to PenileVirginitiesTaken of Player;
			if Player is fpreg_able: [can get pregnant RIGHT NOW]
				if MainInfection of GivingChar is not "" and MainInfection of GivingChar is not "None" and Sterile of GivingChar is false:
					setmonster MainInfection of GivingChar;
					if MainInfection of GivingChar is listed in infections of OviImpregnatorList:
						fovichance;
					else:
						fimpregchance;
					[
					if Player is fpreg_now: [player has _just_ been impregnated]
						<set the GivingChar as father somehow>
					]
			increase PussyFuckTaken of Player by 1;
		else if SexAct in lower case is "assdildofuck": [used for dildos, fingers, tentacles - anything ass penetrative that does not impregnate]
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to [GivingChar]![roman type][line break]";
				now FirstAnalPartner of Player is printed name of GivingChar;
				now SexuallyExperienced of Player is true;
			increase AssFuckTaken of Player by 1;
		else if SexAct in lower case is "pussydildofuck" and Player is not female: [player needs to be female to get penetrated]
			say "Error: NPCSexAftermath run with '[SexAct]' but player is not female! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingChar]', TakingChar: 'Player'[line break]";
		else if SexAct in lower case is "pussydildofuck": [used for dildos, fingers, tentacles - anything pussy penetrative that does not impregnate]
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to [GivingChar]![roman type][line break]";
				now FirstVaginalPartner of Player is printed name of GivingChar;
				now SexuallyExperienced of Player is true;
			increase PussyFuckTaken of Player by 1;
		else if SexAct in lower case is "oralcock" or SexAct in lower case is "oralpussy":
			if OralVirgin of Player is true:
				now OralVirgin of Player is false;
				say "     [Bold Type]You have lost your oral virginity to [GivingChar]![roman type][line break]";
				now FirstOralPartner of Player is printed name of GivingChar;
				now SexuallyExperienced of Player is true;
			if SexAct in lower case is "oralcock":
				increase OralCockTaken of Player by 1;
			else:
				increase OralPussyTaken of Player by 1;
		else if SexAct in lower case is "oraldildo": [used for dildos, fingers, tentacles - anything orally penetrative]
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type]You have lost your oral virginity to [GivingChar]![roman type][line break]";
				now FirstOralPartner of Player is printed name of GivingChar;
				now SexuallyExperienced of Player is true;
			increase OralCockTaken of Player by 1;
		LibidoLoss 15;
	else:
		if debugactive is 1:
			say "DEBUG -> [GivingChar] is having sex with [TakingChar][line break]";
		now LastSexualPartner of TakingChar is printed name of GivingChar;
		now LastSexualPartner of GivingChar is printed name of TakingChar;
		if SexAct in lower case is "assfuck" and GivingChar is not male:
			say "Error: NPCSexAftermath run with '[SexAct]' but character is not male! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingChar]', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "assfuck":
			if PenileVirgin of GivingChar is true:
				now PenileVirgin of GivingChar is false;
				say "     [Bold Type][GivingChar] has lost their penile virginity to [TakingChar]![roman type][line break]";
				now FirstPenilePartner of GivingChar is printed name of TakingChar;
				now SexuallyExperienced of GivingChar is true;
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s anal virginity![roman type][line break]";
				now FirstAnalPartner of TakingChar is printed name of GivingChar;
				now SexuallyExperienced of TakingChar is true;
			if GivingChar is not sterile and TakingChar is mpreg_able: [mpreg fertile]
				say "[ImpregFunction of TakingChar]";
		else if SexAct in lower case is "pussyfuck" and (GivingChar is not male or TakingChar is not female):
			say "Error: NPCSexAftermath run with '[SexAct]' with incorrect male/female pairing! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingChar]', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "pussyfuck":
			if PenileVirgin of GivingChar is true:
				now PenileVirgin of GivingChar is false;
				say "     [Bold Type][GivingChar] has lost their penile virginity to [TakingChar]![roman type][line break]";
				now FirstPenilePartner of GivingChar is printed name of TakingChar;
				now SexuallyExperienced of GivingChar is true;
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s virginity![roman type][line break]";
				now FirstVaginalPartner of TakingChar is printed name of GivingChar;
				now SexuallyExperienced of TakingChar is true;
			if GivingChar is not sterile and TakingChar is fpreg_able: [fpreg fertile]
				say "[ImpregFunction of TakingChar]";
		else if SexAct in lower case is "assdildofuck": [used for dildos, fingers, tentacles - anything ass penetrative that does not impregnate]
			if AnalVirgin of TakingChar is true:
				now AnalVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s anal virginity![roman type][line break]";
				now FirstAnalPartner of TakingChar is printed name of GivingChar;
				now SexuallyExperienced of TakingChar is true;
		else if SexAct in lower case is "pussydildofuck": [used for dildos, fingers, tentacles - anything pussy penetrative that does not impregnate]
			if Virgin of TakingChar is true:
				now Virgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s virginity![roman type][line break]";
				now FirstVaginalPartner of TakingChar is printed name of GivingChar;
				now SexuallyExperienced of TakingChar is true;
		else if SexAct in lower case is "oralcock" and GivingChar is not male:
			say "Error: NPCSexAftermath run with '[SexAct]' but character is not male! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingChar]', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "oralcock":
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is printed name of GivingChar;
				now SexuallyExperienced of TakingChar is true;
		else if SexAct in lower case is "oralpussy" and GivingChar is not female:
			say "Error: NPCSexAftermath run with '[SexAct]' but character is not female! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingChar]', TakingChar: '[TakingChar]'[line break]";
		else if SexAct in lower case is "oralpussy":
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is printed name of GivingChar;
				now SexuallyExperienced of TakingChar is true;
		else if SexAct in lower case is "oraldildo": [used for dildos, fingers, tentacles - anything orally penetrative]
			if OralVirgin of TakingChar is true:
				now OralVirgin of TakingChar is false;
				say "     [Bold Type][GivingChar] has taken [TakingChar]'s oral virginity![roman type][line break]";
				now FirstOralPartner of TakingChar is printed name of GivingChar;
				now SexuallyExperienced of TakingChar is true;
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
	if GivingCharName in lower case is "player":
		if debugactive is 1:
			say "DEBUG -> Player is the giving partner for '[SexAct]'[line break]";
		if there is a name of TakingCharName in the Table of Random Critters: [security in case someone made a typo - avoids Runtime Errors]
			choose a row with name of TakingCharName in the Table of Random Critters;
		else: [lets tell people to report this too]
			say "     < ERROR: [TakingCharName] not found in Table of Random Critters. Please report the situation you saw this in on the Flexible Survival Discord Bug Report Channel! >";
		if SexAct in lower case is "assfuck" and Player is not male: [player needs to be male to penetrate]
			say "Error: CreatureSexAftermath run with '[SexAct]' but player is not male! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingCharName]', TakingChar: '[TakingCharName]'[line break]";
		else if SexAct in lower case is "assfuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking the [TakingCharName in lower case]![roman type][line break]";
				now FirstPenilePartner of Player is GivingCharName;
				now SexuallyExperienced of Player is true;
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
		else if SexAct in lower case is "pussyfuck" and Player is not male: [player needs to be male to penetrate]
			say "Error: CreatureSexAftermath run with '[SexAct]' but player is not male! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingCharName]', TakingChar: '[TakingCharName]'[line break]";
		else if SexAct in lower case is "pussyfuck":
			if PenileVirgin of Player is true:
				now PenileVirgin of Player is false;
				say "     [Bold Type]You have lost your penile virginity fucking the [TakingCharName in lower case]![roman type][line break]";
				now FirstPenilePartner of Player is GivingCharName;
				now SexuallyExperienced of Player is true;
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
		else if SexAct in lower case is "assdildofuck": [used for dildos, fingers, tentacles - anything ass penetrative that does not impregnate]
			increase AssFuckGiven of Player by 1;
		else if SexAct in lower case is "pussydildofuck": [used for dildos, fingers, tentacles - anything pussy penetrative that does not impregnate]
			increase PussyFuckGiven of Player by 1;
		else if SexAct in lower case is "oralcock":
			if Player is not male: [player needs to be male to get sucked]
				say "Error: CreatureSexAftermath run with '[SexAct]' but player is not male! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingCharName]', TakingChar: '[TakingCharName]'[line break]";
			else:
				increase OralCockGiven of Player by 1;
		else if SexAct in lower case is "oralpussy":
			if Player is not female: [player needs to be female to get licked]
				say "Error: CreatureSexAftermath run with '[SexAct]' but player is not female! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingCharName]', TakingChar: '[TakingCharName]'[line break]";
			else:
				increase OralPussyGiven of Player by 1;
	else if TakingCharName in lower case is "player":
		if debugactive is 1:
			say "DEBUG -> Player is the receiving partner for '[SexAct]'[line break]";
		if SexAct in lower case is "assfuck":
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to the [GivingCharName in lower case]![roman type][line break]";
				now FirstAnalPartner of Player is GivingCharName;
				now SexuallyExperienced of Player is true;
			setmonster GivingCharName;
			if GivingCharName is listed in infections of OviImpregnatorList:
				movichance;
			else:
				mimpregchance;
			increase AssFuckTaken of Player by 1;
		else if SexAct in lower case is "pussyfuck" and Player is not female: [player needs to be female to get penetrated]
			say "Error: CreatureSexAftermath run with '[SexAct]' but player is not female! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingCharName]', TakingChar: '[TakingCharName]'[line break]";
		else if SexAct in lower case is "pussyfuck":
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to the [GivingCharName in lower case]![roman type][line break]";
				now FirstVaginalPartner of Player is GivingCharName;
				now SexuallyExperienced of Player is true;
			setmonster GivingCharName;
			if GivingCharName is listed in infections of OviImpregnatorList:
				fovichance;
			else:
				fimpregchance;
			increase PussyFuckTaken of Player by 1;
		else if SexAct in lower case is "assdildofuck":
			if AnalVirgin of Player is true:
				now AnalVirgin of Player is false;
				say "     [Bold Type]You have lost your anal virginity to [GivingCharName]![roman type][line break]";
				now FirstAnalPartner of Player is GivingCharName;
				now SexuallyExperienced of Player is true;
			increase AssFuckTaken of Player by 1;
		else if SexAct in lower case is "pussydildofuck" and Player is not female: [player needs to be female to get penetrated]
			say "Error: CreatureSexAftermath run with '[SexAct]' but player is not female! Please report this on the FS Discord and quote this full message. GivingChar: '[GivingCharName]', TakingChar: '[TakingCharName]'[line break]";
		else if SexAct in lower case is "pussydildofuck":
			if Virgin of Player is true:
				now Virgin of Player is false;
				say "     [Bold Type]You have lost your virginity to [GivingCharName]![roman type][line break]";
				now FirstVaginalPartner of Player is GivingCharName;
				now SexuallyExperienced of Player is true;
			increase PussyFuckTaken of Player by 1;
		else if SexAct in lower case is "oralcock" or SexAct in lower case is "oralpussy":
			if OralVirgin of Player is true:
				now OralVirgin of Player is false;
				say "     [Bold Type]You have lost your oral virginity to the [GivingCharName in lower case]![roman type][line break]";
				now FirstOralPartner of Player is GivingCharName;
				now SexuallyExperienced of Player is true;
			if SexAct in lower case is "oralcock":
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
			now LastSexualPartner of GivingChar is TakingCharName;
			now GivingCharIsNPC is 1;
		if there is a name of TakingCharName in the Table of GameCharacterIDs:
			now TakingChar is the object corresponding to a name of TakingCharName in the Table of GameCharacterIDs;
			now Lastfuck of TakingChar is turns;
			now LastSexualPartner of TakingChar is GivingCharName;
			now TakingCharIsNPC is 1;
		if debugactive is 1:
			say "DEBUG: GivingCharName: [GivingCharName], GivingCharIsNPC: [GivingCharIsNPC][line break]";
			say "DEBUG: TakingCharName: [TakingCharName], TakingCharIsNPC: [TakingCharIsNPC][line break]";
		if GivingCharIsNPC is 0 and TakingCharIsNPC is 0:
			say "Error: The CreatureSexAftermath function should include at least one NPC if it is used. Please report this on the FS Discord and quote this full message. Giving Char: '[GivingCharName]', Taking Char: '[TakingCharName]'";
		else if GivingCharIsNPC is 1 and TakingCharIsNPC is 1:
			say "Error: The CreatureSexAftermath function should include at least one infection if it is used. Please report this on the FS Discord and quote this full message. Giving Char: '[GivingCharName]' Taking Char: '[TakingCharName]'";
		else if GivingCharIsNPC is 1: [NPC gives]
			if SexAct in lower case is "assfuck":
				if PenileVirgin of GivingChar is true:
					now PenileVirgin of GivingChar is false;
					say "     [Bold Type][GivingCharName] has lost their penile virginity fucking the [TakingCharName in lower case]'s ass![roman type][line break]";
					now FirstPenilePartner of GivingChar is TakingCharName;
					now SexuallyExperienced of GivingChar is true;
			else if SexAct in lower case is "pussyfuck":
				if PenileVirgin of GivingChar is true:
					now PenileVirgin of GivingChar is false;
					say "     [Bold Type][GivingCharName] has lost their penile virginity fucking the [TakingCharName in lower case]![roman type][line break]";
					now FirstPenilePartner of GivingChar is TakingCharName;
					now SexuallyExperienced of GivingChar is true;
		else: [NPC takes]
			if SexAct in lower case is "assfuck":
				if AnalVirgin of TakingChar is true:
					now AnalVirgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their anal virginity to [GivingCharName in lower case]![roman type][line break]";
					now FirstAnalPartner of TakingChar is GivingCharName;
					now SexuallyExperienced of TakingChar is true;
				if TakingChar is mpreg_able: [mpreg fertile]
					say "[ImpregFunction of TakingChar]";
			else if SexAct in lower case is "pussyfuck":
				if Virgin of TakingChar is true:
					now Virgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their virginity to [GivingCharName in lower case]![roman type][line break]";
					now FirstVaginalPartner of TakingChar is GivingCharName;
					now SexuallyExperienced of TakingChar is true;
				if TakingChar is fpreg_able: [fpreg fertile]
					say "[ImpregFunction of TakingChar]";
			else if SexAct in lower case is "assdildofuck":
				if AnalVirgin of TakingChar is true:
					now AnalVirgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their anal virginity to [GivingCharName]![roman type][line break]";
					now FirstAnalPartner of TakingChar is GivingCharName;
					now SexuallyExperienced of TakingChar is true;
			else if SexAct in lower case is "pussydildofuck":
				if Virgin of TakingChar is true:
					now Virgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their virginity to [GivingCharName]![roman type][line break]";
					now FirstVaginalPartner of TakingChar is GivingCharName;
					now SexuallyExperienced of TakingChar is true;
			else if SexAct in lower case is "oralcock" or SexAct in lower case is "oralpussy":
				if OralVirgin of TakingChar is true:
					now OralVirgin of TakingChar is false;
					say "     [Bold Type][TakingCharName] has lost their oral virginity to [GivingCharName in lower case]![roman type][line break]";
					now FirstOralPartner of TakingChar is GivingCharName;
					now SexuallyExperienced of TakingChar is true;

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
						increase MaxHP of Player by level of Player + 1;
						increase HP of Player by level of Player + 1;
				else:
					decrease stamina of Player by 1;
					if remainder after dividing stamina of Player by 2 is 1:
						decrease MaxHP of Player by level of Player + 1;
						if HP of Player > MaxHP of Player, now HP of Player is MaxHP of Player;
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
			say "     [bold type]You stop holding your [x].[roman type][line break]";

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
				say "     [bold type]You try to ready your [x], but there really is no way you could realistically use this in combat![roman type][line break]";
			-- 3: [3 categories difference]
				say "     [bold type]You try to ready your [x], but there really is no way you could realistically use this in combat![roman type][line break]";
			-- 2: [2 categories difference]
				say "     [bold type]Carefully taking the far too small [x] in one hand, you can't help but ask yourself if this won't hinder more than help in a fight.[roman type][line break]";
			-- 1: [1 category difference]
				say "     [bold type]You grab the [x] with your comparatively large hand, finding it somewhat uncomfortable to wield.[roman type][line break]";
			-- 0: [proper size for the player]
				say "     [bold type]You ready your [x].[roman type][line break]";
			-- -1: [1 categories difference]
				say "     [bold type]You grab your [x] with your comparatively small hand, finding it somewhat uncomfortable to wield.[roman type][line break]";
			-- -2: [2 categories difference]
				say "     [bold type]Clutching onto your [x] with both hands, you have trouble controlling its momentum. This will be intensely difficult to use.[roman type][line break]";
			-- -3: [3 categories difference]
				say "     [bold type]Trying to use your [x] as a weapon is fairly ridiculous, given your size.[roman type][line break]";
			-- -4: [4 size categories difference - tiny player (1), size 5 weapon]
				say "     [bold type]There is simply no way you could use your [x] as a weapon, given your small stature.[roman type][line break]";

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
	let WaistItem be journal;
	let LegsItem be journal;
	let CrotchItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if slot of z is "waist" and WaistItem is journal: [legacy slot]
			now WaistItem is z;
			increase found by 1;
		else if slot of z is "legs" and LegsItem is journal: [all legwear, including skirts]
			now LegsItem is z;
			increase found by 1;
		else if slot of z is "crotch" and CrotchItem is journal: [underwear]
			now CrotchItem is z;
			increase found by 1;
		if found is 3, break;
	if found is 0: [already naked]
		say "strokes over your bare crotch";
	else:
		say "pulls down your ";
		if WaistItem is not journal and LegsItem is not journal:
			say "[WaistItem][if CrotchItem is not journal], [LegsItem] and [else]and [LegsItem], baring[end if]";
		else if WaistItem is not journal:
			say "[WaistItem] and [if CrotchItem is journal]bares[end if]";
		else if LegsItem is not journal:
			say "[LegsItem] and [if CrotchItem is journal]bares[end if]";
		if CrotchItem is not journal:
			if found > 1:
				say "[CrotchItem], baring";
			else:
				say "[CrotchItem] and bares";
		say " your crotch";


[
understand "zTSelfStripCrotch" as SSCRAction.

SSCRAction is an action applying to nothing.

carry out SSCRAction:
	say "[SelfStripCrotch]";

Example Use:
say "     You [SelfStripCrotch], then wrap your hand around your [Cock of Player] shaft.";
]

to say SelfStripCrotch:
	let WaistItem be journal;
	let LegsItem be journal;
	let CrotchItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if slot of z is "waist" and WaistItem is journal: [legacy slot]
			now WaistItem is z;
			increase found by 1;
		else if slot of z is "legs" and LegsItem is journal: [all legwear, including skirts]
			now LegsItem is z;
			increase found by 1;
		else if slot of z is "crotch" and CrotchItem is journal: [underwear]
			now CrotchItem is z;
			increase found by 1;
		if found is 3, break;
	if found is 0: [already naked]
		say "stroke over your bare crotch";
	else:
		say "pull down your ";
		if WaistItem is not journal and LegsItem is not journal:
			say "[WaistItem][if CrotchItem is not journal], [LegsItem] and [else]and [LegsItem], baring[end if]";
		else if WaistItem is not journal:
			say "[WaistItem] and [if CrotchItem is journal]bare[end if]";
		else if LegsItem is not journal:
			say "[LegsItem] and [if CrotchItem is journal]bare[end if]";
		if CrotchItem is not journal:
			if found > 1:
				say "[CrotchItem], baring";
			else:
				say "[CrotchItem] and bare";
		say " your crotch";

[
understand "zTSelfDressCrotch" as SDCRAction.

SDCRAction is an action applying to nothing.

carry out SDCRAction:
	say "[SelfDressCrotch]";


Example Use:
say "     You [SelfDressCrotch], then get ready to move out again.";
]

to say SelfDressCrotch:
	let WaistItem be journal;
	let LegsItem be journal;
	let CrotchItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if slot of z is "waist" and WaistItem is journal: [legacy slot]
			now WaistItem is z;
			increase found by 1;
		else if slot of z is "legs" and LegsItem is journal: [all legwear, including skirts]
			now LegsItem is z;
			increase found by 1;
		else if slot of z is "crotch" and CrotchItem is journal: [underwear]
			now CrotchItem is z;
			increase found by 1;
		if found is 3, break;
	if found is 0: [already naked]
		say "casually stroke over your bare crotch";
	else:
		say "collect ";
		if WaistItem is not journal and LegsItem is not journal:
			say "your [WaistItem][if CrotchItem is not journal], [LegsItem] and [else]and [LegsItem] to put them[end if]";
		else if WaistItem is not journal:
			say "[if CrotchItem is journal]and put [end if]your [WaistItem][if CrotchItem is not journal] and [end if]";
		else if LegsItem is not journal:
			say "[if CrotchItem is journal]and put [end if]your [LegsItem][if CrotchItem is not journal] and [end if]";
		if CrotchItem is not journal:
			if found > 1:
				say "[CrotchItem] to put them";
			else:
				say "and put your [CrotchItem]";
		say " back on";

[
Adds the uppermost layer of bottom clothes, that the player wears, in the text
Example use:
say "     You feel the cold wind blow on your [crotchDesc]";
]
to say crotchDesc:
	let WaistItem be journal;
	let LegsItem be journal;
	let CrotchItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if slot of z is "waist" and WaistItem is journal: [legacy slot]
			now WaistItem is z;
			increase found by 1;
		else if slot of z is "legs" and LegsItem is journal: [all legwear, including skirts]
			now LegsItem is z;
			increase found by 1;
		else if slot of z is "crotch" and CrotchItem is journal: [underwear]
			now CrotchItem is z;
			increase found by 1;
		if found is 3, break;
	if found is 0: [already naked]
		say "bare crotch";
	else if WaistItem is not journal: [waist item goes on top]
		say "[WaistItem]";
	else if LegsItem is not journal: [legs item covers crotch item]
		say "[LegsItem]";
	else: [crotch item covers naked]
		say "[CrotchItem]";

[

understand "zTStripChest" as SCAction.

SCAction is an action applying to nothing.

carry out SCAction:
	say "[StripChest]";

Example Use:
say "     Korvin [StripChest], then grins eagerly.";
]

to say StripChest:
	let BodyItem be journal;
	let BackItem be journal;
	let ChestItem be journal;
	let BreastItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if placement of z is "body":
			if slot of z is "body" and BodyItem is journal: [special outfits or costumes]
				now BodyItem is z;
				increase found by 1;
			else if slot of z is "back" and BackItem is journal: [jackets and other shirt coverings]
				now BackItem is z;
				increase found by 1;
			else if slot of z is "chest" and ChestItem is journal: [shirts]
				now ChestItem is z;
				increase found by 1;
			else if slot of z is "breast" and BreastItem is journal: [bras and negligees]
				now BreastItem is z;
				increase found by 1;
		if found is 4, break;
	if found is 0: [already naked]
		say "strokes over your bare chest";
	else:
		say "pulls off your ";
		if BodyItem is not journal and BackItem is not journal and ChestItem is not journal:
			say "[BodyItem], [BackItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem], baring[end if]";
		else if BodyItem is not journal and BackItem is not journal:
			say "[BodyItem][if BreastItem is not journal], [BackItem] and [else] and [BackItem], baring[end if]";
		else if BodyItem is not journal and ChestItem is not journal:
			say "[BodyItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem], baring[end if]";
		else if BackItem is not journal and ChestItem is not journal:
			say "[BackItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem], baring[end if]";
		else if BodyItem is not journal:
			say "[BodyItem] and [if BreastItem is journal]bares[end if]";
		else if BackItem is not journal:
			say "[BackItem] and [if BreastItem is journal]bares[end if]";
		else if ChestItem is not journal:
			say "[ChestItem] and [if BreastItem is journal]bares[end if]";
		if BreastItem is not journal:
			if found > 1:
				say "[BreastItem], baring";
			else:
				say "[BreastItem] and bares";
		say " your chest";

[
understand "zTSelfStripChest" as SSCAction.

SSCAction is an action applying to nothing.

carry out SSCAction:
	say "[SelfStripChest]";

Example Use:
say "     You [SelfStripChest], then grin eagerly.";
]

to say SelfStripChest:
	let BodyItem be journal;
	let BackItem be journal;
	let ChestItem be journal;
	let BreastItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if placement of z is "body":
			if slot of z is "body" and BodyItem is journal: [special outfits or costumes]
				now BodyItem is z;
				increase found by 1;
			else if slot of z is "back" and BackItem is journal: [jackets and other shirt coverings]
				now BackItem is z;
				increase found by 1;
			else if slot of z is "chest" and ChestItem is journal: [shirts]
				now ChestItem is z;
				increase found by 1;
			else if slot of z is "breast" and BreastItem is journal: [bras and negligees]
				now BreastItem is z;
				increase found by 1;
		if found is 4, break;
	if found is 0: [already naked]
		say "casually stroke over your bare chest";
	else:
		say "pull off your ";
		if BodyItem is not journal and BackItem is not journal and ChestItem is not journal:
			say "[BodyItem], [BackItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem], baring[end if]";
		else if BodyItem is not journal and BackItem is not journal:
			say "[BodyItem][if BreastItem is not journal], [BackItem] and [else] and [BackItem], baring[end if]";
		else if BodyItem is not journal and ChestItem is not journal:
			say "[BodyItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem], baring[end if]";
		else if BackItem is not journal and ChestItem is not journal:
			say "[BackItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem], baring[end if]";
		else if BodyItem is not journal:
			say "[BodyItem] and [if BreastItem is journal]bare[end if]";
		else if BackItem is not journal:
			say "[BackItem] and [if BreastItem is journal]bare[end if]";
		else if ChestItem is not journal:
			say "[ChestItem] and [if BreastItem is journal]bare[end if]";
		if BreastItem is not journal:
			if found > 1:
				say "[BreastItem], baring";
			else:
				say "[BreastItem] and bare";
		say " your chest";

[
understand "zTSelfDressChest" as SDCAction.

SDCAction is an action applying to nothing.

carry out SDCAction:
	say "[SelfDressChest]";


Example Use:
say "     You [SelfDressChest], then get ready to move out again.";
]

to say SelfDressChest:
	let BodyItem be journal;
	let BackItem be journal;
	let ChestItem be journal;
	let BreastItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if placement of z is "body":
			if slot of z is "body" and BodyItem is journal: [special outfits or costumes]
				now BodyItem is z;
				increase found by 1;
			else if slot of z is "back" and BackItem is journal: [jackets and other shirt coverings]
				now BackItem is z;
				increase found by 1;
			else if slot of z is "chest" and ChestItem is journal: [shirts]
				now ChestItem is z;
				increase found by 1;
			else if slot of z is "breast" and BreastItem is journal: [bras and negligees]
				now BreastItem is z;
				increase found by 1;
		if found is 4, break;
	if found is 0: [already naked]
		say "casually stroke over your bare chest";
	else:
		say "collect ";
		if BodyItem is not journal and BackItem is not journal and ChestItem is not journal:
			say "your [BodyItem], [BackItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem] to put them[end if]";
		else if BodyItem is not journal and BackItem is not journal:
			say "your [BodyItem][if BreastItem is not journal], [BackItem] and [else] and [BackItem] to put them[end if]";
		else if BodyItem is not journal and ChestItem is not journal:
			say "your [BodyItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem] to put them[end if]";
		else if BackItem is not journal and ChestItem is not journal:
			say "your [BackItem][if BreastItem is not journal], [ChestItem] and [else] and [ChestItem] to put them[end if]";
		else if BodyItem is not journal:
			say "[if BreastItem is journal]and put [end if]your [BodyItem][if BreastItem is not journal] and[end if]";
		else if BackItem is not journal:
			say "[if BreastItem is journal]and put [end if]your [BackItem][if BreastItem is not journal] and[end if]";
		else if ChestItem is not journal:
			say "[if BreastItem is journal]and put [end if]your [ChestItem][if BreastItem is not journal] and[end if]";
		if BreastItem is not journal:
			if found > 1:
				say "[BreastItem] to put them";
			else:
				say "and put your [BreastItem]";
		say " back on";

[
Adds the uppermost layer of top clothes, that the player wears, in the text
Example use:
say "     The water splashes on your [chestDesc]";
]
to say chestDesc:
	let BodyItem be journal;
	let BackItem be journal;
	let ChestItem be journal;
	let BreastItem be journal;
	let found be 0;
	repeat with z running through equipped equipment:
		if placement of z is "body":
			if slot of z is "body" and BodyItem is journal: [special outfits or costumes]
				now BodyItem is z;
				increase found by 1;
			else if slot of z is "back" and BackItem is journal: [jackets and other shirt coverings]
				now BackItem is z;
				increase found by 1;
			else if slot of z is "chest" and ChestItem is journal: [shirts]
				now ChestItem is z;
				increase found by 1;
			else if slot of z is "breast" and BreastItem is journal: [bras and negligees]
				now BreastItem is z;
				increase found by 1;
		if found is 4, break;
	if found is 0: [already naked]
		say "bare chest";
	else if BodyItem is not journal: [body item goes on top]
		say "[BodyItem]";
	else if BackItem is not journal: [back item covers chest item]
		say "[BackItem]";
	else if ChestItem is not journal: [chest item covers breast item]
		say "[ChestItem]";
	else: [breast item covers naked]
		say "[BreastItem]";

[
Adds footwear name in the text
Example use:
say "     You walk on the dirty floor with your [feetDesc]";
]
to say feetDesc:
	let FeetItem be journal;
	repeat with z running through equipped equipment:
		if slot of z is "feet":
			now FeetItem is z;
			break;
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
		say "     [link]([choice order])[as][choice order][end link] - [option][line break]";
		increase choice order by 1;
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > number of entries in choices:
		say "Choice? (1-[number of entries in choices])> [run paragraph on]";
		get a number;
		if calcnumber < 1 or calcnumber > number of entries in choices:
			say "Invalid choice. Type ";
			now choice order is 1;
			repeat with option running through choices:
				if choice order is number of entries in choices:
					say "[if choice order > 1] or [end if][link][choice order][end link] to select '[option]'.";
				else:
					say "[link][choice order][end link] to select '[option]', ";
				increase choice order by 1;
	decide on entry calcnumber of choices;



Basic Functions ends here.
