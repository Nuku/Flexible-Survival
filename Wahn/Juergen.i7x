Version 1 of Juergen by Wahn begins here.
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
Juergen	"Juergen"

Juergen is a man.
ScaleValue of Juergen is 4. [human sized]
Body Weight of Juergen is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Juergen is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Juergen is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Juergen is 7. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Juergen is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Juergen is 7. [length in inches]
Breast Size of Juergen is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Juergen is 2. [count of nipples]
Asshole Depth of Juergen is 10. [inches deep for anal fucking]
Asshole Tightness of Juergen is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Juergen is 1. [number of cocks]
Cock Girth of Juergen is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Juergen is 18. [length in inches]
Ball Count of Juergen is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Juergen is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Juergen is 0. [number of cunts]
Cunt Depth of Juergen is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Juergen is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Juergen is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Juergen is false.
PlayerRomanced of Juergen is false.
PlayerFriended of Juergen is false.
PlayerControlled of Juergen is false.
PlayerFucked of Juergen is false.
OralVirgin of Juergen is false.
Virgin of Juergen is true.
AnalVirgin of Juergen is false.
PenileVirgin of Juergen is false.
SexuallyExperienced of Juergen is true.
TwistedCapacity of Juergen is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Juergen is true. [steriles can't knock people up]
MainInfection of Juergen is "".
The description of Juergen is "[JuergenDesc]".
The conversation of Juergen is { "<This is nothing but a placeholder!>" }.
The scent of Juergen is "     ...".

to say JuergenDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Juergen: [HP of Juergen] <- DEBUG[line break]";
	say "     ....";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Juergen:
	say "     [bold type]What do you want to talk to Juergen about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Juergen to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Juergen what he's got in mind for the future";
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
					say "[JuergenTalk1]";
				else if (nam is "His plans"):
					say "[JuergenTalk2]";
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

to say JuergenTalk1: [talk about him]
	say "     ...";

to say JuergenTalk2: [talk about his plans]
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

instead of fucking the Juergen:
	if (lastfuck of Juergen - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[JuergenSexMenu]";

to say JuergenSexMenu:
	say "     [bold type]What exactly do you plan on doing with Juergen?[roman type][line break]";
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
		now title entry is "Take Juergen's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the moose";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Juergen's cock in your ass";
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
					say "[JuergenSex1]";
				if (nam is "Take Juergen's cock in your pussy"):
					say "[JuergenSex2]";
				if (nam is "Take Juergen's cock in your ass"):
					say "[JuergenSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the towering moose, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JuergenSex1: [BJ on Juergen]
	say "     ...";
	NPCSexAftermath Player receives "OralCock" from Juergen;

to say JuergenSex2: [pussy fuck by Juergen]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Juergen;

to say JuergenSex3: [ass-fucking by Juergen]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Juergen;

Juergen ends here.
