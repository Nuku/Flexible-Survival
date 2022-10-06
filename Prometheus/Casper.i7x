Version 1 of Casper by Prometheus begins here.

[Blanche's fifth son. Steady]

[   hp of Casper - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


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
Sexuality: Bisexual/Bicurious

Associated Fetishes:
-
-
-
]

Section 2 - Talking

instead of conversing the Casper:
	if "First Talk" is not listed in Traits of Casper:
		say "     ";
		TraitGain "First Talk" for Casper;
	else:
		say "     ";
	[say "[CasperTalkMenu]";]

Section 3 - Sex

instead of fucking Casper:
	say "     ";

Section 4 - Events

[Blanche (and children?) scavenging in the city. (Urban Forest? Park?)]
[Casper scavenging in the city (increase a counter?)]

Casper ends here.
