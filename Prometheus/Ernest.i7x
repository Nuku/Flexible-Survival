Version 1 of Ernest by Prometheus begins here.

[Blanche's second son. Intelligent]

[   hp of Ernest - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


[Movement Schedule]
an everyturn rule:
	if Charisma of Blanche > 3:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [Midnight]
			if Player is in Computer Lab:
				say "     [bold type]With a sigh, Ernest stows his tools again and tells you that he is going up to the second floor to look at the night over the city.[roman type][line break]";
			else if Player is in Grey Abbey 2F:
				say "     [bold type]Ernest smiles upon seeing you before leaning against the wall beside the window to look over the city.[roman type][line break]";
			move Ernest to Grey Abbey 2F;
		else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn]
			if Player is in Grey Abbey 2F:
				say "     [bold type]As he begins to descend the stairs, Ernest tells you that he is going down to the bunker.[roman type][line break]";
			else if Player is in Bunker:
				say "     [bold type]Ernest gives you a quick hug before finding a bed to sit on with Bernard and Maeve, the three of them soon deep in discussion with one another.[roman type][line break]";
			move Ernest to Bunker;
		else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Bunker:
				say "     [bold type]Only a few steps behind Bernard, Ernest's tummy rumbles as he walks past you on his way to the breakroom.[roman type][line break]";
			else if Player is in Breakroom:
				say "     [bold type]Nodding at you with a smile, Ernest's attention seems to be on food at the moment, hurrying over to get some breakfast from Bernard.[roman type][line break]";
			move Ernest to Breakroom;
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Breakroom:
				say "     [bold type]Having had enough food to sustain him, before leaving Ernest tells you that he and Claude are going out scavenging.[roman type][line break]";
			move Ernest to Nowhere;
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if a random chance of 4 in 5 succeeds:
				if Player is in Grey Abbey Library: [Ernest]
					say "     [bold type]Back from scavenging, Ernest gives you a hug before going off to look for a book.[roman type][line break]";
				if Player is in Breakroom: [Claude]
					say "     [bold type]Hungry from the scavenging trip, Claude is permitted to get his food before everyone else, though he does hug you in passing.[roman type][line break]";
				move Ernest to Grey Abbey Library;
				move Claude to Breakroom;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Grey Abbey Library and Ernest is in Grey Abbey Library:
				say "     [bold type]Waving as he heads towards the back of the library, Ernest informs you that he is on his way to the garden.[roman type][line break]";
			else if Player is in Garden:
				say "     [bold type]Ernest walks over to you, briefly talking before noticing that Casper is getting a little impatient. Apologizing, he joins his brother in talking about science fiction.[roman type][line break]";
			move Ernest to Garden;
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Garden:
				say "     [bold type]Stretching, Ernest tells you that he is going to have a look for a few books before heading back into the library.[roman type][line break]";
			else if Player is in Grey Abbey Library:
				say "     [bold type]Ernest greets you before wandering into the literary jungle, an apex predator of the knowledge hidden within.[roman type][line break]";
			move Ernest to Grey Abbey Library;
		else if TimekeepingVar is 2 or TimekeepingVar is -6: [early night]
			if Player is in Grey Abbey Library:
				say "     [bold type]Ernest bids you goodbye as he heads toward the computer room, an excited glint in his eyes.[roman type][line break]";
			else if Player is in Computer Lab:
				say "     [bold type]Ernest immediately rushes towards where he has stashed his toolbox and mechanical scrap, barely greeting you as he hurries past.[roman type][line break]";
			move Ernest to Computer Lab;
	else if Charisma of Blanche > 0:
		if hp of Ernest is 0:
			now hp of Ernest is 1;
			move Ernest to Computer Lab;

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Ernest	"Ernest"

Ernest is a man.
ScaleValue of Ernest is 3. [human sized]
Body Weight of Ernest is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Ernest is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Ernest is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Ernest is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ernest is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ernest is 10. [length in inches]
Breast Size of Ernest is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Ernest is 2. [count of nipples]
Asshole Depth of Ernest is 10. [inches deep for anal fucking]
Asshole Tightness of Ernest is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Ernest is 1. [number of cocks]
Cock Girth of Ernest is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Ernest is 10. [10 Inches]
Ball Count of Ernest is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Ernest is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Ernest is 0. [number of cunts]
Cunt Depth of Ernest is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Ernest is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Ernest is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Ernest is false.
PlayerRomanced of Ernest is false.
PlayerFriended of Ernest is false.
PlayerControlled of Ernest is false.
PlayerFucked of Ernest is false.
OralVirgin of Ernest is true.
Virgin of Ernest is true.
AnalVirgin of Ernest is true.
PenileVirgin of Ernest is true.
SexuallyExperienced of Ernest is false.
TwistedCapacity of Ernest is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Ernest is true. [steriles can't knock people up]
MainInfection of Ernest is "".
Description of Ernest is "[ErnestDesc]".
Conversation of Ernest is { "Woof grrr" }.
The scent of Ernest is "     Ernest smells of paper and dust, his time in the aisles and stacks having left it's odour on him, though you doubt that he minds."

to say ErnestDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Ernest] <- DEBUG[line break]";
	if hp of Ernest is 1:
		say "     Ernest is an anthropomorphic male wolf with soft white fur across his body. Surprisingly lithe given his bookish disposition, he keeps his figure through a combination of activity during scavenging, carefully chosen exercise, and winning the genetic lottery. Seldom seen without a clipboard and some goggles perched on his head that he found somewhere, he is the most intellectually-gifted of Blanche's children, at least conventionally, a factor that occasionally causes him difficulty when trying to relate to others. Accustomed to this, his siblings don't take offence when he accidentally talks down to them regarding some theory that he has formed, though they do tend to excuse themselves from the conversation when it happens. Blanche by comparison seems able to hold a proper intellectual conversation with him, slightly surprisingly. Despite his more reserved personality, he unashamedly remains as naked as his brothers and sisters, his sheath and scrotum on full display.";
		say "     Perceptive as usual, Ernest soon turns to meet your eye, an eyebrow raised in askance. He and his scavenging-partner, [if Claude is Male]Claude[else if Claude is Female]Claudia[end if], have a strained relationship at times, caused by the contrast between their personalities: aspiring scientist and naive socialite. They may disagree a lot of the time, but both are firm that they remain partners so you get the impression that they are fond of each other, even if they won't admit it to others or themselves. He frequently helps his mother with organizing scavenging routes among other duties, taking comfort in the structure and control that this provides. Blanche is also able to use these interactions to help him better connect with his brothers and sisters or help soothe any growing irritation towards [if Claude is Male]Claude[else if Claude is Female]Claudia[end if].";

[Character Notes - Ernest:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual

Associated Fetishes:
- Sex while working
- Scientific Sexual Experimentation (Cumflation, pleasure-sharing)
-
]

Section 2 - Talking

instead of conversing the Ernest:
	if "First Talk" is not listed in Traits of Ernest:
		say "     'I meant to talk to you before now, but I guess time got away on me. Presumably it did for you too. We haven't exactly spoken much yet, so let me explain to you the role which I fulfil in the family,' Ernest says. You raise an eyebrow at such a blunt greeting. 'Sorry. I'm not the best at social niceties, unlike Claude. I suppose I can refrain from telling you that I mainly help Mom with logistics.' He twitches the corner of his mouth to show that it was intended as a joke. 'I like learning, especially when it comes to trying to understand something like how the nanites work or how life can be improved with the materials available. I meant to ask Mom more about the college, but there never seems to be enough time in the day. A lot of my siblings tell me that I need to relax more, even Sturm, as if he's one to talk. I don't think they understand that a little effort on my part could make their lives a lot safer and easier. I would have hoped that Maeve would at least appreciate that. Anyway, I'm sure that you're busy too, so I won't keep you.' You're relatively sure that it is actually him who feels that he has other things to do, but don't challenge him on it.";
		TraitGain "First Talk" for Ernest;
	else:
		say "[ErnestTalkMenu]";

to say ErnestTalkMenu:
	say "     What do you wish to talk about with the intelligent white wolf?";
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
	now description entry is "Boop Ernest on the nose";
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
					say "[ErnestTalk1]";
				if (nam is "Boop"):
					say "[ErnestTalk2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back, indicating an end to the conversation. Ernest looks about to say something before shaking his head and stepping back too.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ErnestTalk1: [Small Talk]
		say "     '[one of]If you find any gadgets or mechanical scrap lying around in the city, could you bring them to me? Even if I can't use them at the moment, I will still try and learn what I can from them anyway. Instruction manuals could be useful too[or]As much as it annoys me to admit it, Claude's friends sometimes come in handy when it comes to making ends meet while scavenging, as I tend to get lost in whatever I am working on at the moment, though some of the friends he makes are... a little questionable, if we are putting it mildly[or]Thank you for bringing us here to live with you, being surrounded by all these books is a way better alternative to being surrounded by lava and armies of enemies like in the Capitol district, not to mention that it's a great place for study[or]If you ever want something fixed or invented, I'd be more than happy to try and help you with making something to suit your needs. Though I still lack the knowledge needed to make upgrades that would help make the library self-sufficient, hopefully someday I will learn enough that I can work on changing that[at random].'";

to say ErnestTalk2: [Boop]
	say "     The fact that Ernest is showing literally no emotion whatsoever in an attempt to show off his inherent discipline in giving you his undivided attention, unfortunately shows your lack thereof as you are unable to stop yourself from booping him on the nose. Ernest stands completely still for a moment as if processing what just happened, the seconds tick by as you could almost swear theres a number of advanced formula spinning amongst the cogs of his mind as his stoic expression turns into a frown. Ernest than asks 'Was that unavoidable?' with his tail wagging slightly, the speed of it wagging all the harder when you pat him on the head.";

Section 3 - Sex

instead of fucking Ernest:
	say "     'As much as I might want a better understanding of that, it isn't exactly a priority at the moment. Thank you for the offer though.' You're not sure if he recognized that it wasn't intended as an educational experience, but you doubt that his answer would change at the moment even if you enlightened him on the matter. (WIP)";

Section 4 - Events

[Meredith or Sam]

Ernest ends here.
