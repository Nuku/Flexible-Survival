Version 1 of Bianca by Prometheus begins here.

[Blanche's eldest daughter. Seductive]

[   hp of Bianca - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Bianca	"Bianca"

Bianca is a woman.
ScaleValue of Bianca is 3. [human sized]
Body Weight of Bianca is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Bianca is 4. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Bianca is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Bianca is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Bianca is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Bianca is 10. [length in inches]
Breast Size of Bianca is 3. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Bianca is 2. [count of nipples]
Asshole Depth of Bianca is 10. [inches deep for anal fucking]
Asshole Tightness of Bianca is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Bianca is 0. [number of cocks]
Cock Girth of Bianca is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Bianca is 0. [10 Inches]
Ball Count of Bianca is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Bianca is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Bianca is 1. [number of cunts]
Cunt Depth of Bianca is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Bianca is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Bianca is 3. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Bianca is false.
PlayerRomanced of Bianca is false.
PlayerFriended of Bianca is false.
PlayerControlled of Bianca is false.
PlayerFucked of Bianca is false.
OralVirgin of Bianca is true.
Virgin of Bianca is true.
AnalVirgin of Bianca is true.
PenileVirgin of Bianca is true.
SexuallyExperienced of Bianca is false.
TwistedCapacity of Bianca is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Bianca is true. [steriles can't knock people up]
MainInfection of Bianca is "".
Description of Bianca is "[BiancaDesc]".
Conversation of Bianca is { "Woof grrr" }.
The scent of Bianca is "     Bianca smells very strongly of lupine arousal, the heady pheromones likely to make you light-headed should you remain long."

to say BiancaDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Bianca] <- DEBUG[line break]";
	say "     Bianca is an anthropomorphic female wolf covered in lush, well-groomed white fur. She has a sensual body, all soft swells and curves, that aids her frequently seductive demeanor. She seems to wield moderate authority over her siblings, being Blanche's eldest daughter and well-versed at manipulation and persuasion, a tool that you are confident that she makes use of out in the city. So talented at sweet-talking, one might be forgiven for thinking her tongue was made of pure honey is she didn't so often stick it out teasingly and reveal that it is ordinary and pink. Like her mother and siblings, Bianca forgoes clothing, unashamedly leaving her C-cup breasts and black canine vulva exposed to the eye. For a moment, you ponder the effect that this might have on some of the residents of the city before shaking your head to dispel the thought. You didn't need to imagine long.";
	say "     Catching your eye as you resume looking at her, Bianca winks at you and waves, smiling brightly and adjusting her posture to better accentuate her assets. Like all her brothers and sisters, she is devoted to her mother and siblings, though she does seem especially fond of Sturm, gazing [if IncestList is not warded and IncestList is not banned]longingly [else]admiringly [end if] at him when she has nothing else to do. Her sexually-forward nature occasionally earns a concerned word or two from her mother, but for the most part Blanche is content for her daughter to find her own path in the world, a constant presence in support of her should she need it.";

[Character Notes - Bianca:

Species: Canine (Wolf)
Gender: Female
Relationships:
Sexuality: Bisexual

Associated Fetishes:
-
-
-
]

Section 2 - Talking

instead of conversing the Bianca:
	if "First Talk" is not listed in Traits of Bianca:
		say "     ";
		TraitGain "First Talk" for Bianca;
	else:
		say "     ";
	[say "[BiancaTalkMenu]";]

Section 3 - Sex

instead of fucking Bianca:
	say "     ";

Section 4 - Events


Bianca ends here.
