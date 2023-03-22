Version 1 of Henry by Wahn begins here.
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

to connect Henry's Brewery:
	change the south exit of Henry's Brewery to Looted Shops;
	change the north exit of Looted Shops to Henry's Brewery;

a postimport rule: [ bugfixing rules for players that import savegames ]
	if "Henry Recruited" is listed in Traits of Urik:
		connect Henry's Brewery;

Table of GameCharacterIDs (continued)
object	name
Henry	"Henry"

Henry is a man.
ScaleValue of Henry is 4. [human+ sized]
Body Weight of Henry is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Henry is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Henry is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Henry is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Henry is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Henry is 4. [length in inches]
Breast Size of Henry is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Henry is 2. [count of nipples]
Asshole Depth of Henry is 16. [inches deep for anal fucking]
Asshole Tightness of Henry is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Henry is 1. [number of cocks]
Cock Girth of Henry is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Henry is 15. [length in inches]
Ball Count of Henry is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Henry is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Henry is 0. [number of cunts]
Cunt Depth of Henry is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Henry is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Henry is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Henry is false.
PlayerRomanced of Henry is false.
PlayerFriended of Henry is false.
PlayerControlled of Henry is false.
PlayerFucked of Henry is false.
OralVirgin of Henry is true.
Virgin of Henry is true.
AnalVirgin of Henry is true.
PenileVirgin of Henry is false.
SexuallyExperienced of Henry is true.
TwistedCapacity of Henry is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Henry is true. [steriles can't knock people up]
MainInfection of Henry is "Human". [TODO: Write Hercules Beetle infection (at least a placeholder for impregnation)]
Description of Henry is "[Henrydesc]".
Conversation of Henry is { "Meep!" }.

to say Henrydesc:
	project Figure of Henry_soft_icon;
	say "     Henry is a nine foot tall anthro Hercules beetle, complete with six limbs (two legs, as well as a smaller and bigger pair of arms). As the animal that his infection mimics, there is a large horn on top of his head, with an even larger counterpart growing out of the carapace over his neck, creating what looks like a huge claw. The friendly guy doesn't really have a need to wear clothes, although he does put on an apron when at work, as he is mostly covered by in shiny black armor plates, with only the insides of his arms and legs, palms and the well-developed chest area showing soft skin in a light, earthen brown shade. Having observed him at some point without the apron, you know that some hair/fuzz in a fiery red shade covers his crotch and forms a little treasure trail, with a patch between his pecs. A little red mane surrounds his face, running up along the inside of his horns. A pair of wing-casings on his back, covering delicate chitinous wings, rounds out the image of an impressively large and strong anthro insect.";
	say "     Despite everything he's been through recently, and his transformation into a giant, anthro bug before that, Henry is almost constantly upbeat and talkative. The man just seems to have a very friendly personality, and he easily makes connections with others.";

instead of sniffing Henry:
	say "     The Hercules beetle smells a bit like hops and malt. Must be because he's always busy tinkering with his beer.";

instead of conversing Henry:
	project Figure of Henry_soft_icon;
	say "     'Hey there, how are you?' Henry immediately greets you as you come close, and the two of you have a nice little chat before he excuses himself to get back to work.";

[
an everyturn rule:
	if HenryRelationship > 10 and HenryRelationship < 90:
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

instead of conversing the Henry:
	say "[HenryTalkMenu]";

to say HenryTalkMenu:
	say "     [bold type]What do you want to talk to Henry about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Title";
	now sortorder entry is 1;
	now description entry is "Desc";
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
				if (nam is "Title"):
					say "[HenryTalk1]";
				wait for any key;
				say "[HenryTalkMenu]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Hercules beetle, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HenryTalk1: [check on him]
	say "     ...";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Henry:
	project Figure of Henry_soft_icon;
	say "     As you offer him sex, Henry looks a little surprised, then apologizes and says, 'I'm still busy setting everything up here, my friend. Can't let myself be distracted before the beer I'm making right no is at least as good as my last batches before!'";

[
	if (lastfuck of Henry - turns < 2): [he got fucked in the last 6 hours = 2 turns]
		say "     ...";
	else: [ready for sex]
		say "     ...";
		wait for any key;
		say "[HenrySexMenu]";
]

to say HenrySexMenu:
	say "     [bold type]What exactly do you plan on doing with Henry?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Explore his body";
	now sortorder entry is 1;
	now description entry is "See how the beetle reacts to being touched";
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
				if (nam is "Explore his body"):
					say "[HenrySex_Explore]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the Hercules beetle, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say HenrySex_Explore: [groping and feeling up Henry]
	say "     ....";


Henry ends here.
