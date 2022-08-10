Version 1 of Penelope by Prometheus begins here.

[Blanche's second daughter. Resolute]

[   hp of Penelope - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]

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
Sexuality: Bisexual/Bicurious

Associated Fetishes:
-
-
-
]

Section 2 - Talking

instead of conversing the Penelope:
	if "First Talk" is not listed in Traits of Penelope:
		say "     ";
		TraitGain "First Talk" for Penelope;
	else:
		say "     ";
	[say "[PenelopeTalkMenu]";]

Section 3 - Sex

instead of fucking Penelope:
	say "     ";

Section 4 - Events



Penelope ends here.
