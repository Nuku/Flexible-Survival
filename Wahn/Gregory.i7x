Version 1 of Gregory by Wahn begins here.
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
Gregory	"Gregory"

Gregory is a man.
ScaleValue of Gregory is 3. [human sized]
Body Weight of Gregory is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Gregory is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Gregory is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Gregory is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Gregory is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Gregory is 4. [length in inches]
Breast Size of Gregory is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Gregory is 2. [count of nipples]
Asshole Depth of Gregory is 16. [inches deep for anal fucking]
Asshole Tightness of Gregory is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Gregory is 1. [number of cocks]
Cock Girth of Gregory is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Gregory is 12. [length in inches]
Ball Count of Gregory is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Gregory is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Gregory is 0. [number of cunts]
Cunt Depth of Gregory is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Gregory is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Gregory is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Gregory is false.
PlayerRomanced of Gregory is false.
PlayerFriended of Gregory is false.
PlayerControlled of Gregory is false.
PlayerFucked of Gregory is false.
OralVirgin of Gregory is true.
Virgin of Gregory is true.
AnalVirgin of Gregory is true.
PenileVirgin of Gregory is false.
SexuallyExperienced of Gregory is true.
TwistedCapacity of Gregory is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Gregory is false. [steriles can't knock people up]
MainInfection of Gregory is "Wyvern".
Description of Gregory is "[Gregorydesc]".
Conversation of Gregory is { "Meep!" }.


to say Gregorydesc:
	say "     Gregory is a fit human soldier of Caucasian descent, who underwent partial transformation into a wyvern before you and Urik rescued him from that fate. While the young man is still mostly human, some parts of his body conform to a different blueprint, which is made quite clear by the variations in his skin color, as that goes to the more earthy tones of a wyvern's scales along his arms, lower legs and the upper part of his head that is now sporting a pair of horns. Having acquired short claws on his thumb, index and middle fingers, Gregory's ring and index fingers have been repurposed completely, now extending backwards as long, thin supports for a bat-like wing membrane.";
	say "     As he currently is still passed out after his time in the wyvern egg/cocoon, you have an unimpeded view of Gregory's privates, which aren't quite human anymore. His dickhead has a more pointy shape now, and there are some interesting-looking ridges along his shaft. You can't be sure, but you'd guess that the solid twelve inches that his cock reaches when hard are also an upgrade done by the nanites.";

instead of sniffing Gregory:
	say "     The wyvern hybrid has a nice, masculine scent, with an underlying spicy aroma. That must be coming from his wyvern side, as it's definitely not human.";

instead of conversing Gregory:
	say "     He's unconscious, so don't expect too much response from him...";

[
an everyturn rule:
	if GregoryRelationship > 10 and GregoryRelationship < 90:
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

[
instead of conversing the Gregory:
	say "[GregoryTalkMenu]";
]

to say GregoryTalkMenu:
	say "     [bold type]What do you want to talk to Gregory about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Gregory to tell you about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His plans";
	now sortorder entry is 2;
	now description entry is "Ask Gregory what he's got in mind for the future";
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
					say "[GregoryTalk1]";
				else if (nam is "His plans"):
					say "[GregoryTalk2]";
				wait for any key;
				say "[GregoryTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the wyvern hybrid, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GregoryTalk1: [talk about him]
	say "     ...";

to say GregoryTalk2: [talk about his plans]
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Gregory:
	say "     He's totally limp and unconscious. Doesn't seem like this would be any fun right now.";
[
	if (lastfuck of Gregory - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[GregorySexMenu]";
]

to say GregorySexMenu:
	say "     [bold type]What exactly do you plan on doing with Gregory?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get on your knees and give him a blowjob";
	now sortorder entry is 1;
	now description entry is "Service the wyvern hybrid orally";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Gregory's cock in your pussy";
		now sortorder entry is 2;
		now description entry is "Get fucked by the wyvern hybrid";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Gregory's cock in your ass";
	now sortorder entry is 3;
	now description entry is "Get fucked in the ass by the wyvern hybrid";
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
					say "[GregorySex1]";
				else if (nam is "Take Gregory's cock in your pussy"):
					say "[GregorySex2]";
				else if (nam is "Take Gregory's cock in your ass"):
					say "[GregorySex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the wyvern hybrid, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GregorySex1: [BJ on Gregory]
	say "     ...";
	NPCSexAftermath Player receives "OralCock" from Gregory;

to say GregorySex2: [pussy fuck by Gregory]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Gregory;

to say GregorySex3: [ass-fucking by Gregory]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Gregory;

Gregory ends here.
