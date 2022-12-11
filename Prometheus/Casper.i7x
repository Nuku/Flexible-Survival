Version 1 of Casper by Prometheus begins here.

[Blanche's fifth son. Steady]

[   hp of Casper - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Grey Abbey Library:
				say "     [bold type]Casper walks past you on his way upstairs, giving you a smile as he passes by.[roman type][line break]";
			else if Player is in Grey Abbey 2F:
				say "     [bold type]Meeting you at the top of the stairs, Casper gives you a hug before moving to the sofa to cuddle with the rest of his family there.[roman type][line break]";
			move Casper to Grey Abbey 2F;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Grey Abbey 2F:
				say "     [bold type]Finishing a discussion with Bianca about his collar, Casper walks towards the stairs, telling you that he is going going down to the computer room.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Casper gives you a hug after walking through the door, before going over to the makeshift wolf den. When Lumi joins him, he begins to stroke her fur while lost in thought.[roman type][line break]";
			move Casper to Computer Lab;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Computer Lab:
				say "     [bold type]Casper readies his own backpack as well as Lumi's modified bag, mumbling that the two of them are going out scavenging as he does so.[roman type][line break]";
			move Casper to Nowhere;
		[else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning] [Covered in Lumi's time table]
			if a random chance of 4 in 5 succeeds:
				if Player is in Garden: [Lumi]
					say "     [bold type]Just back from scavenging, Lumi gives you a lick before excitedly playing ball with Wendis, the two of them rushing around while Penelope keeps half and eye on them.[roman type][line break]";
				if Player is in Bunker: [Casper]
					say "     [bold type]You watch Casper come down the stairs, just back from scavenging, returning the affection when he comes over and gives you a hug upon spotting you.[roman type][line break]";
				move Lumi to Garden;]
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Bunker:
				say "     [bold type]Casper gives you a hug before ascending the stairs, already talking to himself about what he hopes is for lunch in the breakroom.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Casper joins the queue for food, loosening his collar a few notches to reduce the chance of choking.[roman type][line break]";
			move Casper to Breakroom;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Breakroom:
				say "     [bold type]Tightening his collar to a snug fit again, Casper leaves the room, giving you a smile and telling you that he is going to the garden.[roman type][line break]";
			else if Player is in Garden:
				say "     [bold type]Casper stops to talk to you while he waits for Ernest to arrive, asking your opinion on some comics that he has been reading.[roman type][line break]";
			move Casper to Garden;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Garden:
				say "     [bold type]Casper excitedly tells you that he is going to the makeshift rec room to work on some cosplay ideas, hurrying awy a moment later.[roman type][line break]";
			else if Player is in Makeshift Rec Room:
				say "     [bold type]Casper hurries in, briefly saying hello before approaching his mannequins and beginning to adjust the costumes hanging on them, taking measurements and moving their limbs about while mumbling to himself. [roman type][line break]";
			move Casper to Makeshift Rec Room;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Makeshift Rec Room:
				say "     [bold type]With a sigh, Casper throws a sheet over his mannequins to protect them before heading towards the door out to the library, giving you a hug before he leaves.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]A warm hug from Casper heralds his arrival, the wolf enjoying the moment to show his affection towards you.[roman type][line break]";
			move Casper to Grey Abbey Library;
	else if Charisma of Blanche > 0:
		if hp of Casper is 0:
			now hp of Casper is 1;
			move Casper to Computer Lab;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Casper	"Casper"

Casper is a man.
ScaleValue of Casper is 3. [human sized]
Body Weight of Casper is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Casper is 5. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Casper is 3. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Casper is 10.
Mouth Circumference of Casper is 3.
Tongue Length of Casper is 10.
Breast Size of Casper is 0.
Nipple Count of Casper is 2.
Asshole Depth of Casper is 10.
Asshole Tightness of Casper is 2.
Cock Count of Casper is 1.
Cock Girth of Casper is 3.
Cock Length of Casper is 8.
Ball Count of Casper is 2.
Ball Size of Casper is 3.
Cunt Count of Casper is 0.
Cunt Depth of Casper is 0.
Cunt Tightness of Casper is 0.
Clit Size of Casper is 0.
[Basic Interaction states as of game start]
PlayerMet of Casper is false.
PlayerRomanced of Casper is false.
PlayerFriended of Casper is false.
PlayerControlled of Casper is false.
PlayerFucked of Casper is false.
OralVirgin of Casper is true.
Virgin of Casper is true.
AnalVirgin of Casper is true.
PenileVirgin of Casper is true.
SexuallyExperienced of Casper is false.
TwistedCapacity of Casper is false.
Sterile of Casper is true.
MainInfection of Casper is "".
Description of Casper is "[CasperDesc]".
Conversation of Casper is { "Woof grrr" }.
The scent of Casper is "     Casper smells of cotton and wool, despite his current nakedness below the collar. If you sniffed him even more closely, you would likely either smell other materials or his own natural scent."

to say CasperDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Casper] <- DEBUG[line break]";
	if hp of Casper is 1:
		say "     Casper is an anthropomorphic male wolf with luxuriant white fur covering his toned body. Quiet and unassuming most of the time, if asked to talk about his tailoring or characters from his comics he becomes much more enthusiastic as he gets a chance to reveal his creativity and talent, gesturing freely and talking free of any shame or timidity. Somewhat effeminate in appearance, he is is as naked as his siblings bar a soft leather collar around his neck, demonstrating that he is undoubtedly male, his fuzzy sheath and balls bouncing around as he sways to some tune that he is humming.";
		say "     Realizing that he has caught your attention, Casper falls quiet and looks momentarily embarrassed before recovering and meeting your eye, smiling bashfully. Unlike his brothers and sisters, when out in the city scavenging, he often gets distracted by materials that are seemingly less important such as fabrics, comics, and posters. Fortunately for him, his scavenging-partner, Lumi, is capable of helping him with this even while fulfiling their primary duty too, enjoying the challenge and bringing the two of them closer together. While his tailoring ability isn't much used by his siblings, you know that Blanche has requested his services a few times. However, you have yet to see any of the garments that he has made for her, though given her nakedness this is of little surprise. You remain curious however.";

[Character Notes - Casper:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Stripping
- Roleplay
- Latex
]

Section 2 - Talking

instead of conversing the Casper:
	if "First Talk" is not listed in Traits of Bianca:
		say "     'You want to talk to me? Sometimes I feel like Chameleon Man from the comics, always blending into the background with only my family noticing me,' Casper laments, fingering the collar around his neck. 'It's a little strange really. Not that you'd really consider it clothes, but I would have thought that the collar would make me stand out a bit among my siblings, but everyone tends to see people like Sturm, Penelope, and Bernard due to their size. Perhaps that's why I like colorful clothes and accessories. Sorry, I'm rambling, aren't I? Don't worry about me. My family, and that includes you [BlancheMommyDaddyTitle], more than look out for me. I would say that it was because I am the youngest, but we all deeply care about each other so I think it's just something we all got in the womb. Anyway, the main things that you need to know about me are that I like making costumes, I read comics in between sewing and scavenging, and if anyone hurts Lumi, they'll be my pincushion long before Sturm gets to them,' he says.";
		TraitGain "First Talk" for Casper;
	else:
		say "[CasperTalkMenu]";

to say CasperTalkMenu:
	say "     What do you wish to talk about with the creative white wolf?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Small Talk";
	now sortorder entry is 1;
	now description entry is "Have an idle conversation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Boop";
	now sortorder entry is 2;
	now description entry is "Boop Casper on the nose";
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
					say "[CasperTalk1]";
				if (nam is "Boop"):
					say "[CasperTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Casper looks about to say something before shaking his head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say CasperTalk1: [Small Talk]
		say "     '[one of]If you see any comics lying around in the city, could you bring them to me? They really help with my costume designs and I really enjoy reading them anyway.[or]I think that Bianca may be the only sibling that appreciates my tailoring ability. Mommy of course encourages me to pursue my hobby too[or]I'm not sure how successful I would be at scavenging without Lumi. I get distracted by so many different things. Fortunately, she's the best and is more than able to make up for my shortcomings[or]If you ever want to get into cosplay, I'd be more than happy to help you with your costume and makeup. I'll even make it for you if you want. Let's just say that none of my siblings share my interest in it to the same degree[at random].'";

to say CasperTalk2: [Boop]
	say "     The way in which Casper is giving you his undivided attention is just too adorable and you can't help yourself from booping him on the nose, momentarily causing him to go cross-eyed looking at your finger. 'You do realize that that's my nose, not a big red button, right? There isn't going to be a firework display or a fanfare. I will not transform or power up.' You inform him that you're purely doing it because you are fond of him, causing his tail to manically wag behind him. 'Really? I didn't think that other people thought of it like that. Thank you. Really. It means a lot coming from you.'";

Section 3 - Sex

instead of fucking Casper:
	say "     'Aha! So you are curious to see what I look like without this collar on? As much as I would love to take you up on that offer, I really must wait for an appropriate time.' You chuckle at the amount of silly flourish he gave in his answer, but understand that he wants to wait for the right moment. (WIP)";

Section 4 - Events

[]

Casper ends here.
