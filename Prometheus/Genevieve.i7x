Version 1 of Genevieve by Prometheus begins here.

[   HP of Genevieve                                    ]
[   0: not met                                         ]
[   1: met and moved into Green Apartment Building     ]

an everyturn rule:
	if HP of Otto > 3:
		if a random chance of 1 in 2 succeeds:
			move Genevieve to Otto's Apartment;
		else:
			move Genevieve to Sanctuary Hotel Lobby;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Genevieve	"Genevieve"

Genevieve is a woman.
ScaleValue of Genevieve is 3. [human sized]
Body Weight of Genevieve is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Genevieve is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Genevieve is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Genevieve is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Genevieve is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Genevieve is 8. [length in inches]
Breast Size of Genevieve is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Genevieve is 2. [count of nipples]
Asshole Depth of Genevieve is 8. [inches deep for anal fucking]
Asshole Tightness of Genevieve is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Genevieve is 0. [number of cocks]
Cock Girth of Genevieve is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Genevieve is 0. [length in inches]
Ball Count of Genevieve is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Genevieve is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Genevieve is 1. [number of cunts]
Cunt Depth of Genevieve is 8. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Genevieve is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Genevieve is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Genevieve is false.
PlayerRomanced of Genevieve is false.
PlayerFriended of Genevieve is false.
PlayerControlled of Genevieve is false.
PlayerFucked of Genevieve is false.
OralVirgin of Genevieve is false.
Virgin of Genevieve is true.
AnalVirgin of Genevieve is true.
PenileVirgin of Genevieve is true.
SexuallyExperienced of Genevieve is true.
TwistedCapacity of Genevieve is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Genevieve is true. [steriles can't knock people up]
MainInfection of Genevieve is "".
Description of Genevieve is "[GenevieveDesc]".
Conversation of Genevieve is { "Interesting" }.
The scent of Genevieve is "     Genevieve smells of a floral perfume, though there are traces coffee behind it."

to say GenevieveDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Genevieve] <- DEBUG[line break]";
	say "     The petite anthro fox might be considered pretty if it weren't for the horrible scarring up one side of her face. Despite this blemish, she seems to have a cheerful disposition, joking about her scar to show that you no one needs to be awkward about it. She is covered in black fur that appears to be well groomed and cared for. Two forest-green eyes twinkle as you study her, gazing leisurely around the room. She is dressed in a navy-blue skirt and a white short-sleeved shirt with a red cross above her left breast. You note that her claws are well maintained as she folds her arms, unintentionally accentuating her bust. From a cursory look, you would say they are B maybe C cup, but a raised eyebrow from her interrupts your judgment.";

Section 2 - Talking

Instead of conversing the Genevieve:
	say "     You indicate to the fox that you wish to talk to her for a minute. She eagerly smiles and looks at you, her tail wagging wildly.";
	WaitLineBreak;
	say "[GenevieveTalkMenu]";

to say GenevieveTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Genevieve?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 1;
	now description entry is "Make conversation with the doctor";
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
				if (nam is "Small Talk"):
					say "[GenevieveTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, stating that you simply wanted to make sure that she was alright. She gives you a brief smile of appreciation before returning to what she was doing.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GenevieveTalk1: [Small Talk]
	say "     '[One of]I can't get over the poor quality of the bread in this country. Nowadays it is even worse, but even before the nanite outbreak, the bread lacked crunch and freshness. Maybe as population increases, quality goes, how do you say, [']down the plug[']? Feeding the masses and all that[or]Sacré bleu, how am I going to tell my mother that I've got a large scar on my face? I suppose compared to being a fox now, minor facial maiming may be easier to explain... Priorities Genevieve, priorities[or]You know what they say about France? It is the land of passionate lovers and sumptuous food. But please don't make me mix the two. It would surely make my fur sticky and picking fox fur out of gateau is time that could be better spent eating or making love[or]I wasn't expecting to finish my nursing qualification in America, but someone convinced my mother that it would be a good idea. Other than the nanite plague, it has worked out well, I've met Dr' Fuchs, my hair is softer than it has ever been before, and I was top in my class when I graduated, but maman doesn't value many people's opinions so it begs the question; Who was it that convinced her? There aren't many people that she respects enough after all[or]Am I not the prettiest vixen that you've ever seen? No. Don't answer that. Because if you say no, I will have to devote too much of time to getting vengeance on you for such a cruel and hurtful lie, and I'm busy enough helping Dr. Fuchs as it is[at random].'";

Section 3 - Sex

Instead of fucking Genevieve:
	say "     The vixen, while pleased with you proposition, disappointedly shakes her head. 'While my heart quickens at your interest in me, ma chere, I cannot at the moment' she apologizes. 'Between my responsibilities to Dr. Fuchs when I am at the clinic, contnuing to unpack his luggage, and waiting on the more expensive medical equipment, I don't have much time for finding my pleasures in others. Hopefully it shouldn't be too long though.' A polite refusal, but a refusal nonetheless.";

Section 4 - Events



Genevieve ends here.
