Matteo by Voidsnaps begins here.

[This character will be in the game later. This work was just done ahead of time.]

Table of GameCharacterIDs (continued)
object	name
Matteo	"Matteo"

Matteo is a man.
ScaleValue of Matteo is 3. [human sized]
Body Weight of Matteo is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Matteo is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Matteo is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Matteo is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Matteo is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Matteo is 6. [length in inches]
Breast Size of Matteo is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Matteo is 2. [count of nipples]
Asshole Depth of Matteo is 8. [inches deep for anal fucking]
Asshole Tightness of Matteo is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Matteo is 1. [number of cocks]
Cock Girth of Matteo is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Matteo is 7. [Length in Inches]
Ball Count of Matteo is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Matteo is 2. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Matteo is 0. [number of cunts]
Cunt Depth of Matteo is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Matteo is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Matteo is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Matteo is false.
PlayerRomanced of Matteo is false.
PlayerFriended of Matteo is false.
PlayerControlled of Matteo is false.
PlayerFucked of Matteo is false.
OralVirgin of Matteo is false.
Virgin of Matteo is true.
AnalVirgin of Matteo is false.
PenileVirgin of Matteo is false.
SexuallyExperienced of Matteo is true.
TwistedCapacity of Matteo is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Matteo is true. [steriles can't knock people up]
MainInfection of Matteo is "".
Description of Matteo is "[Matteodesc]".
Conversation of Matteo is { "<This is nothing but a placeholder!>" }.
Scent of Matteo is "A sticky scent of sex clings to the tree frog, making him quite musky, though you get the feeling that it's not his own scent wafting from his body...".

To say Matteodesc:
	say "     Standing at six feet six inches, the tree frog has the body of a volleyball star, with semi-well developed pecs, and a shredded washboard stomach. Despite his appearance, he doesn't hold himself like a manly man, crossing his arms and pointedly staring downward with an expression that most would assume is submission painting his bright red eyes and green, slightly flushed cheeks. You know better, though. He's staring at your crotch with an almost hypnotized expression, as though ready to drop to his knees at any moment and beg to please you. Since his ordeal, he's refused to wear clothes, and his cock hangs loose from his slit at almost all times, dribbling arousal to the ground below. When he notices you looking at his manhood, he almost seems to lean into your gaze, as if begging you to come closer and relieve some of his tension.";

instead of conversing Matteo:
	say "     Asking Matteo how he feels today, you take note of his slightly relaxed stance and the thin trail of something slippery and white making its way down his inner thigh. It seems he's been busy in your absence! You think about saying something about his sluttiness, but you can't begrudge him his momentary peace when you notice how much less high-strung he is. Still, he seems fairly attentive, hanging on your every word and waiting for you to continue the conversation.";
	say "     [bold type]What would you like to talk with Matteo about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask him how he feels";
	now sortorder entry is 1;
	now description entry is "After his ordeal with the naga, you can't help but wonder if the frog is alright. After all, he was subjected to some pretty heavy 'training.'";
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
				if (nam is "Ask him how he feels"):
					say "[MatteoCheck]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the tree frog, deciding on a different course of action.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say MatteoCheck:
	say "     ";

instead of fucking Matteo:
	say "     ";

Matteo ends here.