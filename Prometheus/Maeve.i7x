Version 1 of Maeve by Prometheus begins here.

[Blanche's fourth daughter. Willful]

[   hp of Maeve - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Maeve	"Maeve"

Maeve is a woman.
ScaleValue of Maeve is 3. [human sized]
Body Weight of Maeve is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Maeve is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Maeve is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Maeve is 10.
Mouth Circumference of Maeve is 3.
Tongue Length of Maeve is 10.
Breast Size of Maeve is 3.
Nipple Count of Maeve is 2.
Asshole Depth of Maeve is 10.
Asshole Tightness of Maeve is 2.
Cock Count of Maeve is 0.
Cock Girth of Maeve is 0.
Cock Length of Maeve is 0.
Ball Count of Maeve is 0.
Ball Size of Maeve is 0.
Cunt Count of Maeve is 1.
Cunt Depth of Maeve is 10.
Cunt Tightness of Maeve is 2.
Clit Size of Maeve is 3.
[Basic Interaction states as of game start]
PlayerMet of Maeve is false.
PlayerRomanced of Maeve is false.
PlayerFriended of Maeve is false.
PlayerControlled of Maeve is false.
PlayerFucked of Maeve is false.
OralVirgin of Maeve is true.
Virgin of Maeve is true.
AnalVirgin of Maeve is true.
PenileVirgin of Maeve is true.
SexuallyExperienced of Maeve is false.
TwistedCapacity of Maeve is false.
Sterile of Maeve is true.
MainInfection of Maeve is "".
Description of Maeve is "[MaeveDesc]".
Conversation of Maeve is { "Woof grrr" }.
The scent of Maeve is "     Maeve smells of a multitude of things, only a few of which you can identify. Beneath all of this you can still detect her natural wolfy aroma."

to say MaeveDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Maeve] <- DEBUG[line break]";
	if hp of Maeve is 1:
		say "     Maeve is an anthropomorphic female wolf with silky white fur. Always coming up with hare-brained schemes, she is the type to attempt something without fully thinking through the execution or the possible outcomes, leaving her in awkward situations that require the her family, usually Bernard, to help her out of. She is not above using her usual nakedness to grab someones attention before lulling them into a sense of safety, false or otherwise, her C-cup breasts swaying hypnotically in time with her hips, the black lips of her vulva peeking out occassionally. While she has no training in proper hypnotism, you doubt that she would be above learning such arts to compliment her current grasp of magic tricks and misdirection.";
		say "     You realize that you have been staring at Maeve for longer than you had intended and that she is looking back at you, a cheeky smirk on her face. Outwardly friendly and agreeable, it can be difficult at times to be sure that she isn't working some angle or buttering someone up for later fun. Despite her mischievous ways, she is well liked by her family, especially when she is hyping her next [']get rich quick['] scheme that any sensible person would be skeptical of, or performing magic tricks using sleight of hand. She is especially close to Bernard, the contrast between them only serving to further complement their respective capabilities when out scavenging.";

[Character Notes - Maeve:

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

instead of conversing the Maeve:
	if "First Talk" is not listed in Traits of Maeve:
		say "     ";
		TraitGain "First Talk" for Maeve;
	else:
		say "     ";
	[say "[MaeveTalkMenu]";]

Section 3 - Sex

instead of fucking Maeve:
	say "     ";

Section 4 - Events

[Blanche (and children?) scavenging in the city. (Urban Forest? Park?)]
[Maeve scavenging in the city (increase a counter?)]

Maeve ends here.
