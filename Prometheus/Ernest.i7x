Version 1 of Ernest by Prometheus begins here.

[Blanche's second son. Intelligent]

[   hp of Ernest - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]

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
Mouth Length of Ernest is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Ernest is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Ernest is 6. [length in inches]
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
		say "     Ernest is an anthropomorphic male wolf with soft white fur across his body. Surprisingly lithe given his bookish disposition, he keeps his figure through a combination of activity during scavenging, carefully chosen exercise, and winning the genetic lottery. Seldom seen without a clipboard and some goggles perched on his head that he found somewhere, he is the most intellectually-gifted of Blanche's children, at least conventionally, a factor that occassionally causes him difficulty when trying to relate to others. Accustomed to this, his siblings don't take offence when he accidentally talks down to them regarding some theory that he has formed, though they do tend to excuse themselves from the conversation when it happens. Blanche by comparison seems able to hold a proper intellectual conversation with him, slightly surprisingly. Despite his more reserved personality, he unashamedly remains as naked as his brothers and sisters, his sheath and scrotum on full display.";
		say "     Perceptive as usual, Ernest soon turns to meet your eye, an eyebrow raised in askance. He and his scavenging-partner, [if Claude is Male]Claude[else if Claude is Female]Claudia[end if], have a strained relationship at times, caused by the contrast between their personalities: aspiring scientist and naive socialite. They may disagree a lot of the time, but both are firm that they remain partners so you get the impression that they are fond of each other at least to a moderate degree. He frequently helps his mother with organizing scavenging routes among other duties, taking comfort in the structure and control that this provides. Blanche is also able to use these interactions to help him better connect with his brothers and sisters or help soothe any growing irritation towards [if Claude is Male]Claude[else if Claude is Female]Claudia[end if].";

[Character Notes - Ernest:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual/Bicurious

Associated Fetishes:
- Sex while working
-
-
]

Section 2 - Talking

instead of conversing the Ernest:
	if "First Talk" is not listed in Traits of Ernest:
		say "     ";
		TraitGain "First Talk" for Ernest;
	else:
		say "     ";
	[say "[ErnestTalkMenu]";]

Section 3 - Sex

instead of fucking Ernest:
	say "     ";

Section 4 - Events


Ernest ends here.
