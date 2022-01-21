Version 1 of Lingau by Wahn begins here.
[Version 1 - Put into its own file]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Lingau	"Lingau"

Lingau is a man.
ScaleValue of Lingau is 4. [human+ sized]
Body Weight of Lingau is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lingau is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lingau is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lingau is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Lingau is 5. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Lingau is 10. [length in inches]
Breast Size of Lingau is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Lingau is 2. [count of nipples]
Asshole Depth of Lingau is 14. [inches deep for anal fucking]
Asshole Tightness of Lingau is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Lingau is 1. [number of cocks]
Cock Girth of Lingau is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Lingau is 14. [length in inches]
Ball Count of Lingau is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Lingau is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Lingau is 0. [number of cunts]
Cunt Depth of Lingau is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Lingau is 0. [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
Clit Size of Lingau is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Lingau is false.
PlayerRomanced of Lingau is false.
PlayerFriended of Lingau is false.
PlayerControlled of Lingau is false.
PlayerFucked of Lingau is false.
OralVirgin of Lingau is false.
Virgin of Lingau is true.
AnalVirgin of Lingau is false.
PenileVirgin of Lingau is false.
SexuallyExperienced of Lingau is true.
TwistedCapacity of Lingau is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Lingau is false. [steriles can't knock people up]
MainInfection of Lingau is "Cane Toad Male".
Description of Lingau is "[LingauDesc]".
Conversation of Lingau is { "<This is nothing but a placeholder!>" }.
The scent of Lingau is "     ...".

to say LingauDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Lingau: [HP of Lingau] <- DEBUG[line break]";
	say "     ....";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Lingau:
	say "     [bold type]What do you want to talk to Lingau about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Lingau to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Lingau what he's got in mind for the future";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Your captive whore Blake";
	now sortorder entry is 3;
	now description entry is "Chat about Blake";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[LingauTalk1]";
				else if (nam is "His plans"):
					say "[LingauTalk2]";
				else if (nam is "Collect some earnings for Blake"):
					say "[BlakeWhoringTalk]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the gruff wolverine, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LingauTalk1: [talk about him]
	say "     ...";

to say LingauTalk2: [talk about his plans]
	say "     ...";

to say BlakeWhoringTalk:
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Lingau:
	if (lastfuck of Lingau - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[LingauSexMenu]";

to say LingauSexMenu:
	say "     [bold type]What exactly do you plan on doing with Lingau?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Service the moose orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Lingau's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the moose";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Lingau's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the moose";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Get on your knees and give him a blowjob"):
					say "[LingauSex1]";
				if (nam is "Take Lingau's cock in your pussy"):
					say "[LingauSex2]";
				if (nam is "Take Lingau's cock in your ass"):
					say "[LingauSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the towering moose, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LingauSex1: [BJ on Lingau]
	say "     ...";
	NPCSexAftermath Player receives "OralCock" from Lingau;

to say LingauSex2: [pussy fuck by Lingau]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Lingau;

to say LingauSex3: [ass-fucking by Lingau]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Lingau;



Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Cane Toad";
	add "Cane Toad Male" to infections of AmphibianList;
	add "Cane Toad Male" to infections of NatureList;
	add "Cane Toad Male" to infections of MaleList;
	add "Cane Toad Male" to infections of TaperedCockList;
	add "Cane Toad Male" to infections of InternalCockList;
	add "Cane Toad Male" to infections of BipedalList;
	now Name entry is "Cane Toad Male";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The human slaps you.[or]You get hit by a balled fist.[at random]";
	now defeated entry is " ";
	now victory entry is " ";
	now desc entry is "     This isn't supposed to be an actual infection, just a stand-in - please report how you saw this.";
	now face entry is "fairly inhuman, quite wide and with a pair of slits for nostrils. Your toothless mouth stretches the whole width of your head, harboring a quite long and broad tongue";  [ Face description, format as "Your face is (your text)"]
	now body entry is "now broad, yet moderately muscled";  [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "yellow, bumpy";
	now tail entry is "";
	now cock entry is "tapered";
	now face change entry is "you begin to feel your skull reshaping under your skin. Your nose disappears, leaving a pair of slits. A strange feeling in your mouth heralds it becoming as wide as your head will allow, toothless and with a long tongue inside it"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your arms and legs begin to grow longer and more muscular. Your chest widens as well";
	now skin change entry is "you begin to feel a strange burning sensation. You look down, and realize that your skin has turned a shadw of yellow, with a rough surface and many bumps";
	now ass change entry is ""; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it begins to grow thicker and starts to taper all the way to the pointy tip";
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 25;                [ How many HP has the monster got? ]
	now lev entry is 1;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now Cock Count entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 3;         [ Size of balls ]
	now Nipple Count entry is 2;            [ Number of nipples. ]
	now Breast Size entry is 4;        [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;              [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 6;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 25;            [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";              [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "amphibian";
	now type entry is "toad";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;



Lingau ends here.
