Version 1 of Penelope by Prometheus begins here.

[Blanche's second daughter. Resolute]

[   hp of Penelope - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Garden:
				say "     [bold type]Penelope envelops you in a fluffy hug before briskly walking inside, likely to the computer room.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Penelope smiles as she sees you, swiftly fetching one of her plants to proudly show you, lifting Wendis onto her shoulders with one hand as she does so.[roman type][line break]";
			move Penelope to Computer Lab;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Computer Lab:
				say "     [bold type]Penelope reluctantly finishes snuggling with Wendis and heads towards the door, telling you that she will be in the courtyard if you want to spend some more time together.[roman type][line break]";
			else if Player is in Courtyard:
				say "     [bold type]Penelope lumbers over, greeting you before being almost leapt upon by Bianca, the two of them soon discussing beauty and workout tips alternately.[roman type][line break]";
			move Penelope to Courtyard;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Courtyard:
				say "     [bold type]Smiling fondly at Bianca's retreating form, Penelope tells you that she too will be heading to the breakroom.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Penelope pads in and patiently waits behind her siblings in the queue for breakfast, her eyes fixed on the sizzling pan.[roman type][line break]";
			move Penelope to Breakroom;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Breakroom:
				say "     [bold type]Surprisingly free of food-stains, Penelope tells you that she is going to the garden for a few hours, hugging you before leaving, hoisting Wendis onto her shoulders as she goes.[roman type][line break]";
			else if Player is in Garden:
				say "     [bold type]Penelope smiles at you as she approaches with Wendis following behind her, heading towards a corner where she has a pile of soil molded into a makeshift seat. Producing a book on gardening from under her arm, she sits down and becomes absorbed in the pages.[roman type][line break]";
			move Penelope to Garden;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Bunker:
				say "     [bold type]Washing her hands off first under a hose-pipe, Penelope shakes them dry before giving you a very fluffy hug, quietly telling you that she and Wendis are going out scavenging and to look after yourself.[roman type][line break]";
			move Penelope to Nowhere;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if a random chance of 4 in 5 succeeds:
				if Player is in Garden: [Penelope]
					say "     [bold type]Having finished her scavenging for the day, Penelope returns to the garden, giving you a cuddle in greeting before going over to see if Sturm wants a sparring match.[roman type][line break]";
				if Player is in Bunker: [Wendis]
					say "     [bold type]Wendis rushes in, leaping up to give you a hug before hurrying over to where Bianca, Claude, and Lumi are seated on some beds. Her scavenging trip probably went well then.[roman type][line break]";
				move Penelope to Garden;
				move Wendis to Bunker;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Garden and Penelope is in Garden:
				say "     [bold type]Looking over the garden before she leaves, Penelope tells you that she is going to spend some time in the library.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Penelope waves to you as she appears from outside, before selecting a book on [one of]the lives of wolves[or]bears of North America[or]insects and spiders[or]growing roses[or]houseplants for beginners[at random] and wandering off to find a quiet corner.[roman type][line break]";
			move Penelope to Grey Abbey Library;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Grey Abbey Library:
				say "     [bold type]Putting her book back on the shelf, Penelope tells you that she is going back out to the garden to play-fight with Lumi.[roman type][line break]";
			else if Player is in Garden:
				say "     [bold type]Penelope gives you a warm hug before walking over to where Lumi has prepared an area for the two of them to practice fighting.[roman type][line break]";
			move Penelope to Garden;
	else if Charisma of Blanche > 0:
		if hp of Penelope is 0:
			now hp of Penelope is 1;
			move Penelope to Computer Lab;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Penelope	"Penelope"

Penelope is a woman.
ScaleValue of Penelope is 4. [human sized]
Body Weight of Penelope is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Penelope is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Penelope is 7. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Penelope is 12. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Penelope is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Penelope is 12. [length in inches]
Breast Size of Penelope is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Penelope is 2. [count of nipples]
Asshole Depth of Penelope is 10. [inches deep for anal fucking]
Asshole Tightness of Penelope is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Penelope is 0. [number of cocks]
Cock Girth of Penelope is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Penelope is 0. [10 Inches]
Ball Count of Penelope is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Penelope is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Penelope is 1. [number of cunts]
Cunt Depth of Penelope is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Penelope is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Penelope is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Penelope is false.
PlayerRomanced of Penelope is false.
PlayerFriended of Penelope is false.
PlayerControlled of Penelope is false.
PlayerFucked of Penelope is false.
OralVirgin of Penelope is true.
Virgin of Penelope is true.
AnalVirgin of Penelope is true.
PenileVirgin of Penelope is true.
SexuallyExperienced of Penelope is false.
TwistedCapacity of Penelope is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Penelope is true. [steriles can't knock people up]
MainInfection of Penelope is "".
Description of Penelope is "[PenelopeDesc]".
Conversation of Penelope is { "Woof grrr" }.
The scent of Penelope is "     Penelope smells of fur-care products, which isn't surprising given her luxuriant fur. You also think you can catch a hint of Wendis's scent on her too."

to say PenelopeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Penelope] <- DEBUG[line break]";
	say "     Penelope is an anthropomorphic female wolf with fluffy, white fur making her appear even broader than her already stocky frame. The tallest, and probably physically the strongest of Blanche's daughters, were you to grasp one of her arms, you would easily feel the muscle beneath the soft fluff. While for the most part she looks stoic and intimidating, this effect is soon dispelled when among her family, her tail wagging incessantly as her expression becomes bright and engaged. Two C-cup breasts covered in downy fur peek from the fluff of her chest, uncovered by clothing. Similarly, you occasionaly catch a view of the soft lips of her canine spade beneath her tail when she bends down to boop Wendis's nose.";
	say "     Seeing you look at her, Penelope straightens up again and waves in greeting before folding her arms under her breasts and standing still to bask in your attention. Whether or not it is intentional that this accentuates her bust, you do not know but decide not to bring it up. Seldom seen without her younger sister, Wendis, somewhere nearby, often hanging from her shoulders giggling, Penelope is amenable to fulfiling the requests of her siblings, though for the most part she acts as protection and as a calming influence on some of their more intense personalities. Though she doesn't actively wield much authority over any of her siblings, her opinion on matters is usually respected though not always heeded.";

[Character Notes - Penelope:

Species: Canine (Wolf)
Gender: Female
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Size Difference (as larger partner)
- Flora and Fauna
- Petplay
]

Section 2 - Talking

instead of conversing the Penelope:
	if "First Talk" is not listed in Traits of Penelope:
		say "     'We haven't had much of a chance to talk yet, have we. Either you're out in the city, or I am. How have you been lately? No one giving you any trouble that requires a family of wolves to fix?' she asks with a smile. You reassure her that there is not. 'That's good. Mommy would lead the charge if there were. Even if it were one of those drakens, she'd be there to protect you. You're very special to her. And to me. To all of us really, but especially to her. Sorry if I'm talking in circles, Wendis usually gets most of the attention in conversation. Perhaps if we spend more time together, I'll be able to talk more easily?' Penelope suggests hopefully. With a smile, you tell her that that sounds like a good idea, making her beam and almost crush you in a hug. 'Love you lots, [BlancheMomDadTitle].'";
		TraitGain "First Talk" for Penelope;
	else:
		say "[PenelopeTalkMenu]";

to say PenelopeTalkMenu:
	say "     What do you wish to talk about with the amazonian white wolf?";
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
	now description entry is "Boop Penelope on the nose";
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
					say "[PenelopeTalk1]";
				if (nam is "Boop"):
					say "[PenelopeTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Penelope looks about to say something before shaking her head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say PenelopeTalk1: [Small Talk]
		say "     '[one of]Bernard may be stronger than me, but I'm fluffier, and we all know which counts more[or]Wendis occasionally tells me to toss her at people and then I have the enviable task of explaining why that would be a bad idea[or]Have you seen any interesting plants while you were exploring? Why do I ask? No reason...[or]I've been feeling this strong urge to carry around a shield. I don't know why, but it just feels like something that I'm meant to do.[at random].'";

to say PenelopeTalk2: [Boop]
	say "     Abandoning all caution, you boop the titanic wolf on the nose. Penelope stares at you for a bit before returning the favor. 'You didn't think that you were the only one who could do that, did you? I hate to tell you this, but Wendis, Bianca, and Claude started doing that when we were just pups so I am quite experienced with it. Blanche did it to Sturm once and I swear he was in shock for the entire afternoon. Anyway, we think of it as a sign of bonding, so I hope that you do it to all the people that you like,' she tells you before you boop her once more. Boop.";

Section 3 - Sex

instead of fucking Penelope:
	say "     'Not yet, sorry. I'll protect you with my life, but I want to get to know you more before I am willing for that level of intimacy. Also, as embarrassing as it sounds, I would also want to get Mommy's permission before borrowing her mate. I doubt that she'd have a problem, but just in case...' Penelope leaves the sentence hanging. It would seem that she's not yet ready. (WIP)";

Section 4 - Events

[instead of navigating Grey Abbey Library while ((royal tiger is not listed in companionList of Player) and (Penelope is booked or Penelope is bunkered) and Charisma of Blanche > 0 and "Ryousei - Potential Tutor" is not listed in traits of Penelope and a random chance of 1 in 2 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "[PenelopeRyouseiFirstMeeting]";

to say PenelopeRyouseiFirstMeeting:
	say "     ";
	say "     ";
	TraitGain "Ryousei - Potential Tutor" for Penelope;
	TraitGain "Penelope - Hopeful Pupil" for Ryousei;]

Penelope ends here.
