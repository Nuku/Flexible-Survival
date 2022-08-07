Version 1 of Bernard by Prometheus begins here.

[Blanche's fourth son. Steady]

[   hp of Bernard - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]


Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Bernard	"Bernard"

Bernard is a man.
ScaleValue of Bernard is 4. [human sized]
Body Weight of Bernard is 8. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Bernard is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Bernard is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Bernard is 12.
Mouth Circumference of Bernard is 3.
Tongue Length of Bernard is 12.
Breast Size of Bernard is 0.
Nipple Count of Bernard is 2.
Asshole Depth of Bernard is 10.
Asshole Tightness of Bernard is 2.
Cock Count of Bernard is 1.
Cock Girth of Bernard is 4.
Cock Length of Bernard is 10.
Ball Count of Bernard is 2.
Ball Size of Bernard is 3.
Cunt Count of Bernard is 0.
Cunt Depth of Bernard is 0.
Cunt Tightness of Bernard is 0.
Clit Size of Bernard is 0.
[Basic Interaction states as of game start]
PlayerMet of Bernard is false.
PlayerRomanced of Bernard is false.
PlayerFriended of Bernard is false.
PlayerControlled of Bernard is false.
PlayerFucked of Bernard is false.
OralVirgin of Bernard is true.
Virgin of Bernard is true.
AnalVirgin of Bernard is true.
PenileVirgin of Bernard is true.
SexuallyExperienced of Bernard is false.
TwistedCapacity of Bernard is false.
Sterile of Bernard is true.
MainInfection of Bernard is "".
Description of Bernard is "[BernardDesc]".
Conversation of Bernard is { "Woof grrr" }.
The scent of Bernard is "     Bernard smells of sweat and junk food, evidence of his dual past times of eating and physical labour."

to say BernardDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Bernard] <- DEBUG[line break]";
	if hp of Bernard is 1:
		say "     Bernard is an anthropomorphic male wolf with bushy white fur covering his large form. Thick from head to paw-tip, he is very fond of eating, evidenced by his protruding gut and remains of crumbs on his chin. Despite this, he is likely the most physically strong of Blanche's brood due to the amount of time that he spends working out and exerting himself while scavenging, resulting in an impressive balance between muscle and fat across is hulking frame. Were his siblings not quicker on their feet, you wonder how well they might do in their play fights were he to capture them in a grapple. They may not even want to leave were they to inhale the scent of his sweat for too long. Proud of his body and just as unashamed of it as the rest of his family, he rarely wears clothing, leaving his girthy sheath and fuzzy scrotum on display to any that may wish to admire it.";
		say "     Some instinctual feeling of being watched makes Bernard turn towards you, the herculean wolf smiling and waving to you. While he may be physically blessed, his intellect and common sense are sometimes found lacking, especially when compared to the likes of Ernest. Fortunately, his sister Maeve looks out for him, at least when she isn't taking advantage of his trusting nature for her own ends, the two of them sharing a strong bond despite their differences. While he doesn't wield much authority personally, he is close with all of his siblings, his heart just as large as his muscles if not larger. Sometimes you wonder if he is a wolf or just a very muscular puppy.";

[Character Notes - Bernard:

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

instead of conversing the Bernard:
	if "First Talk" is not listed in Traits of Bernard:
		say "     ";
		TraitGain "First Talk" for Bernard;
	else:
		say "     ";
	[say "[BernardTalkMenu]";]

Section 3 - Sex

instead of fucking Bernard:
	say "     ";

Section 4 - Events

[Blanche (and children?) scavenging in the city. (Urban Forest? Park?)]
[Bernard scavenging in the city (increase a counter?)]

Bernard ends here.
