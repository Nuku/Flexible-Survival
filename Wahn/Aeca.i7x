Version 1 of Aeca by Wahn begins here.
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
Aeca	"Aeca"

Aeca is a man.
ScaleValue of Aeca is 3. [human sized]
Body Weight of Aeca is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Aeca is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Aeca is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Aeca is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Aeca is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Aeca is 4. [length in inches]
Breast Size of Aeca is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Aeca is 2. [count of nipples]
Asshole Depth of Aeca is 16. [inches deep for anal fucking]
Asshole Tightness of Aeca is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Aeca is 1. [number of cocks]
Cock Girth of Aeca is 2. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Aeca is 7. [length in inches]
Ball Count of Aeca is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Aeca is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Aeca is 0. [number of cunts]
Cunt Depth of Aeca is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Aeca is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Aeca is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Aeca is false.
PlayerRomanced of Aeca is false.
PlayerFriended of Aeca is false.
PlayerControlled of Aeca is false.
PlayerFucked of Aeca is false.
OralVirgin of Aeca is true.
Virgin of Aeca is true.
AnalVirgin of Aeca is true.
PenileVirgin of Aeca is false.
SexuallyExperienced of Aeca is false.
TwistedCapacity of Aeca is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Aeca is false. [steriles can't knock people up]
MainInfection of Aeca is "Hawkman".
Description of Aeca is "[Aecadesc]".
Conversation of Aeca is { "Meep!" }.

instead of sniffing Aeca:
	say "     A";

to say Aecadesc:
	say "     A";

instead of conversing Aeca:
	say "     A";

[
an everyturn rule:
	if AecaRelationship > 10 and AecaRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			say "...";
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			say "...";
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			say "...";
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			say "...";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			say "...";
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			say "...";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			say "...";
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Aeca:
	say "[AecaTalkMenu]";

to say AecaTalkMenu:
	say "     [bold type]What do you want to talk to Aeca about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Aeca to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Aeca what he's got in mind for the future";
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
					say "[AecaTalk1]";
				else if (nam is "His plans"):
					say "[AecaTalk2]";
				wait for any key;
				say "[AecaTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc-hawk, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AecaTalk1: [talk about him]
	say "     ...";

to say AecaTalk2: [talk about his plans]
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Aeca:
	if (lastfuck of Aeca - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[AecaSexMenu]";

to say AecaSexMenu:
	say "     [bold type]What exactly do you plan on doing with Aeca?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Service the orc-hawk orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Aeca's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the orc-hawk";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Aeca's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the orc-hawk";
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
					say "[AecaSex1]";
				else if (nam is "Take Aeca's cock in your pussy"):
					say "[AecaSex2]";
				else if (nam is "Take Aeca's cock in your ass"):
					say "[AecaSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc-hawk, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AecaSex1: [BJ on Aeca]
	say "     ...";
	NPCSexAftermath Player receives "OralCock" from Aeca;

to say AecaSex2: [pussy fuck by Aeca]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Aeca;

to say AecaSex3: [ass-fucking by Aeca]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Aeca;

Aeca ends here.
