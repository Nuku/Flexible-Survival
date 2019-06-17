Version 1 of Friesian Twin Isaac by Wahn begins here.
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
Isaac	"Isaac"

Isaac is a man.
ScaleValue of Isaac is 4. [human+ sized]
Body Weight of Isaac is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Isaac is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Isaac is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Isaac is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Isaac is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Isaac is 4. [length in inches]
Breast Size of Isaac is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Isaac is 2. [count of nipples]
Asshole Depth of Isaac is 16. [inches deep for anal fucking]
Asshole Tightness of Isaac is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Isaac is 1. [number of cocks]
Cock Girth of Isaac is 4. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Isaac is 17. [length in inches]
Ball Count of Isaac is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Isaac is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Isaac is 0. [number of cunts]
Cunt Depth of Isaac is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Isaac is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Isaac is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Isaac is false.
PlayerRomanced of Isaac is false.
PlayerFriended of Isaac is false.
PlayerControlled of Isaac is false.
PlayerFucked of Isaac is false.
OralVirgin of Isaac is false.
Virgin of Isaac is true.
AnalVirgin of Isaac is true.
PenileVirgin of Isaac is false.
SexuallyExperienced of Isaac is true.
TwistedCapacity of Isaac is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Isaac is false. [steriles can't knock people up]
MainInfection of Isaac is "Horseman".
The description of Isaac is "[Isaacdesc]".
The conversation of Isaac is { "Meep!" }.

instead of sniffing Isaac:
	say "     A";

to say Isaacdesc:
	say "     A";

instead of conversing Isaac:
	say "     A";

[
an everyturn rule:
	if IsaacRelationship > 10 and IsaacRelationship < 90:
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

instead of conversing the Isaac:
	say "[IsaacTalkMenu]";

to say IsaacTalkMenu:
	say "     [bold type]What do you want to talk to Isaac about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Isaac to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Isaac what he's got in mind for the future";
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
					say "[IsaacTalk1]";
				else if (nam is "His plans"):
					say "[IsaacTalk2]";
				wait for any key;
				say "[IsaacTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Friesian horseman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say IsaacTalk1: [talk about him]
	say "     ...";

to say IsaacTalk2: [talk about his plans]
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Isaac:
	if (lastfuck of Isaac - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[IsaacSexMenu]";

to say IsaacSexMenu:
	say "     [bold type]What exactly do you plan on doing with Isaac?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Service the horseman orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Isaac's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the horseman";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Isaac's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the horseman";
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
					say "[IsaacSex1]";
				else if (nam is "Take Isaac's cock in your pussy"):
					say "[IsaacSex2]";
				else if (nam is "Take Isaac's cock in your ass"):
					say "[IsaacSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Friesian horseman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say IsaacSex1: [BJ on Isaac]
	say "     ...";
	NPCSexAftermath Player receives "OralCock" from Isaac;

to say IsaacSex2: [pussy fuck by Isaac]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Isaac;

to say IsaacSex3: [ass-fucking by Isaac]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Isaac;

Friesian Twin Isaac ends here.
