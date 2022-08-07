Version 1 of Lumi by Prometheus begins here.

[Blanche's fifth daughter. Steady]

[   hp of Lumi - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Lumi	"Lumi"

Lumi is a woman.
ScaleValue of Lumi is 3. [human sized]
Body Weight of Lumi is 3. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Lumi is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Lumi is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Lumi is 10.
Mouth Circumference of Lumi is 3.
Tongue Length of Lumi is 10.
Breast Size of Lumi is 1.
Nipple Count of Lumi is 2.
Asshole Depth of Lumi is 10.
Asshole Tightness of Lumi is 2.
Cock Count of Lumi is 0.
Cock Girth of Lumi is 0.
Cock Length of Lumi is 0.
Ball Count of Lumi is 0.
Ball Size of Lumi is 0.
Cunt Count of Lumi is 1.
Cunt Depth of Lumi is 10.
Cunt Tightness of Lumi is 2.
Clit Size of Lumi is 2.
[Basic Interaction states as of game start]
PlayerMet of Lumi is false.
PlayerRomanced of Lumi is false.
PlayerFriended of Lumi is false.
PlayerControlled of Lumi is false.
PlayerFucked of Lumi is false.
OralVirgin of Lumi is true.
Virgin of Lumi is true.
AnalVirgin of Lumi is true.
PenileVirgin of Lumi is true.
SexuallyExperienced of Lumi is false.
TwistedCapacity of Lumi is false.
Sterile of Lumi is true.
MainInfection of Lumi is "".
Description of Lumi is "[LumiDesc]".
Conversation of Lumi is { "Woof grrr" }.
The scent of Lumi is "     Lumi smells of the city, though as she more frequently ends up dirty than her siblings, this should be of little surprise. No doubt she will wash herself later only for this scent to return as soon as she goes scavenging again."

to say LumiDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Lumi] <- DEBUG[line break]";
	if hp of Lumi is 1:
		say "     Lumi is an anthropomorphic female wolf with dense white fur covering her wiry frame, but as she spends the majority of her time on all fours, it is easy to mistake her for being feral. Her behavior is closest to that of a wolf compared to her brothers and sisters and some of her features reflect this too, her stooped posture when she is on two paws being the most noticeable difference, though the longer claws are difficult to miss. Given this, it is unsurprising that she forgoes clothing, especially as garments would likely only slow her down. Perhaps sensing your eyes on her, she rolls on her side, giving you an excellent view of the slight bumps of her A-cup breasts and the canine vulva beneath her gently wagging tail. She seems to be enjoying your attention.";
		say "     Possibly the most capable scavenger among Blanche's children, Lumi enjoys searching for treasure, almost to the point of obsession. Though her family no doubt appreciates the result of this, it is also a source of frequent teasing from her siblings, though rarely to the point where Blanche needs to scold them. Her brother, Casper, appreciate a lot of her finds for his own interests, the two of them bonding over what they can offer each other. Despite her more wild behavior, she is just as capable of intelligent thought as the rest of her family, though she seems a little more forthright and stubborn than the majority of them. Prone to playing roughly, she occassionally manages to best even Sturm in their tussles, her ever-shifting quadrupedal method of fighting difficult to adapt to or counter at times. She does not wield much authority among her siblings despite her proficiency at scavenging, nonetheless, she is loved no less by her family.";

[Character Notes - Lumi:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual/Bicurious

Associated Fetishes:
-
-
-
]

Section 2 - Talking

instead of conversing the Lumi:
	if "First Talk" is not listed in Traits of Lumi:
		say "     ";
		TraitGain "First Talk" for Lumi;
	else:
		say "     ";
	[say "[LumiTalkMenu]";]

Section 3 - Sex

instead of fucking Lumi:
	say "     ";

Section 4 - Events

[Blanche (and children?) scavenging in the city. (Urban Forest? Park?)]
[Lumi scavenging in the city (increase a counter?)]

Lumi ends here.
