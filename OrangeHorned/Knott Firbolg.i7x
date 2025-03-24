Version 1 of Knott Firbolg by OrangeHorned begins here.

[ HP of Knott Firbolg     ]
[ 0 -                     ]
[ 1 -                     ]

Section 1 - Knott

Table of GameCharacterIDs (continued)
object	name
KnottFirbolg	"KnottFirbolg"
KnottFirbolg	"Knott"

KnottFirbolg is a man.
Printed Name of KnottFirbolg is "Knott".
understand "Knott" as KnottFirbolg.
ScaleValue of KnottFirbolg is X.
Body Weight of KnottFirbolg is X. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of KnottFirbolg is X. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of KnottFirbolg is X. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of KnottFirbolg is X. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of KnottFirbolg is X. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of KnottFirbolg is X. [length in inches]
Breast Size of KnottFirbolg is X. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of KnottFirbolg is X. [count of nipples]
Asshole Depth of KnottFirbolg is X. [inches deep for anal fucking]
Asshole Tightness of KnottFirbolg is X. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of KnottFirbolg is X. [number of cocks]
Cock Girth of KnottFirbolg is X. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of KnottFirbolg is X. [length in inches]
Ball Count of KnottFirbolg is X. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of KnottFirbolg is X. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of KnottFirbolg is X. [number of cunts]
Cunt Depth of KnottFirbolg is X. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of KnottFirbolg is X. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of KnottFirbolg is X. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of KnottFirbolg is false.
PlayerRomanced of KnottFirbolg is false.
PlayerFriended of KnottFirbolg is false.
PlayerControlled of KnottFirbolg is false.
PlayerFucked of KnottFirbolg is false.
OralVirgin of KnottFirbolg is false.
Virgin of KnottFirbolg is false.
AnalVirgin of KnottFirbolg is false.
PenileVirgin of KnottFirbolg is false.
SexuallyExperienced of KnottFirbolg is false.
TwistedCapacity of KnottFirbolg is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of KnottFirbolg is false. [steriles can't knock people up]
MainInfection of KnottFirbolg is "".
Description of KnottFirbolg is "[Knottdesc]".
Conversation of KnottFirbolg is { "" }.

the scent of the KnottFirbolg is "     ".

to say Knottdesc:
	if debugactive is 1:
		say "     DEBUG -> HP: [HP of KnottFirbolg] <- DEBUG[line break]";
	say "     ";


Instead of conversing the KnottFirbolg:
	if HP of KnottFirbolg is:
		say "[KnottFirbolgTalkMenu]";

to say KnottFirbolgTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Knott?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Topic 1";
	now sortorder entry is 1;
	now description entry is "Description";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Topic 2";
	now sortorder entry is 2;
	now description entry is "Description";
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
				if (nam is "Topic 1"):
					say "[KnottFirbolgTalk1]";
				if (nam is "Topic 2"):
					say "[KnottFirbolgTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, indicating an end to the conversation. Knott simply nods and resumes what he was doing before.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KnottFirbolgTalk1:
	say "     ";

to say KnottFirbolgTalk2: [Boop]
	say "     ";


Section 2 - Sex


Section 3 - Events


Knott Firbolg ends here.
