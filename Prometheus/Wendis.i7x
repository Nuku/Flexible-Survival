Version 1 of Wendis by Prometheus begins here.

[Blanche's third daughter. Joy]

[   hp of Wendis - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Wendis	"Wendis"

Wendis is a woman.
ScaleValue of Wendis is 2. [child-sized] [Not a child, just short]
Body Weight of Wendis is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Wendis is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Wendis is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Wendis is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Wendis is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Wendis is 8. [length in inches]
Breast Size of Wendis is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Wendis is 2. [count of nipples]
Asshole Depth of Wendis is 10. [inches deep for anal fucking]
Asshole Tightness of Wendis is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Wendis is 0. [number of cocks]
Cock Girth of Wendis is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Wendis is 0. [10 Inches]
Ball Count of Wendis is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Wendis is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Wendis is 1. [number of cunts]
Cunt Depth of Wendis is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Wendis is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Wendis is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Wendis is false.
PlayerRomanced of Wendis is false.
PlayerFriended of Wendis is false.
PlayerControlled of Wendis is false.
PlayerFucked of Wendis is false.
OralVirgin of Wendis is true.
Virgin of Wendis is true.
AnalVirgin of Wendis is true.
PenileVirgin of Wendis is true.
SexuallyExperienced of Wendis is false.
TwistedCapacity of Wendis is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Wendis is true. [steriles can't knock people up]
MainInfection of Wendis is "".
Description of Wendis is "[WendisDesc]".
Conversation of Wendis is { "Woof grrr" }.
The scent of Wendis is "     Wendis smells of sweets, though where she found them she has yet to share. You also think you can catch a hint of Penelope's scent on her too."

to say WendisDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Wendis] <- DEBUG[line break]";
	if hp of Wendis is 1:
		say "     Wendis is an anthropomorphic female wolf with soft and fluffy white fur covering her petite frame. Much smaller than her siblings, maybe only four foot tall at most, she frequently takes advantage of her appearance to tug on the heartstrings of the more friendly occupants of the city while out scavenging. Care-free and friendly, possibly to the point of naivety, she is usually cheerful, her tail wagging wildly behind her as she attempts to brighten her siblings['] day. Despite her height, she is no child, two B-cup breasts hidden beneath the lush fur of her chest and a delicate curve to her waist. Like the majority of her family, she eskews wearing clothes, meaning that occassionally you catch sight of her puffy vulva beneath her restless tail.";
		say "     Noticing that she has caught your attention, Wendis rushes over to you and hugs you with all her might before leaping back and hopping from one hind-paw to the other with excitement, inadvertently jiggling her modest chest about as she moves. Often seen hanging around the neck of her older sister, Penelope, who seems to be her favorite person in the world, she spends a significant amount of her time boosting the morale of siblings who have had limited success in their scavenging runs or practicing her aim at throwing stones due to her physiological limitations. It would be hard to find anyone who dislikes her.";

[Character Notes - Wendis:

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

instead of conversing the Wendis:
	if "First Talk" is not listed in Traits of Wendis:
		say "     ";
		TraitGain "First Talk" for Wendis;
	else:
		say "     ";
	[say "[WendisTalkMenu]";]

Section 3 - Sex

instead of fucking Wendis:
	say "     ";

Section 4 - Events

[Blanche (and children?) scavenging in the city. (Urban Forest? Park?)]
[Wendis scavenging in the city (increase a counter?)]

Wendis ends here.
