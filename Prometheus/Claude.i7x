Version 1 of Claude by Prometheus begins here.

[Blanche's third son. Curious]

[   hp of Claude - relationship variable with the player          ]
[   0 - At Office  ]
[   1 - At Library ]

Section 1 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Claude	"Claude"

Claude is a person.
ScaleValue of Claude is 3. [human sized]
Body Weight of Claude is 4. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Claude is 3. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Claude is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Claude is 10. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Claude is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Claude is 10. [length in inches]
Breast Size of Claude is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Claude is 2. [count of nipples]
Asshole Depth of Claude is 10. [inches deep for anal fucking]
Asshole Tightness of Claude is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Claude is 1. [number of cocks]
Cock Girth of Claude is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Claude is 10. [10 Inches]
Ball Count of Claude is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Claude is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Claude is 0. [number of cunts]
Cunt Depth of Claude is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Claude is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Claude is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Claude is false.
PlayerRomanced of Claude is false.
PlayerFriended of Claude is false.
PlayerControlled of Claude is false.
PlayerFucked of Claude is false.
OralVirgin of Claude is true.
Virgin of Claude is true.
AnalVirgin of Claude is true.
PenileVirgin of Claude is true.
SexuallyExperienced of Claude is true.
TwistedCapacity of Claude is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Claude is true. [steriles can't knock people up]
MainInfection of Claude is "".
Description of Claude is "[ClaudeDesc]".
Conversation of Claude is { "Woof grrr" }.
The scent of Claude is "     Claude has an amalgamation of smells, likely from close contact with many different people due to his 'social tendencies'."

[Female form]
[
ScaleValue of Claude is 3. [human sized]
Body Weight of Claude is 6. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Claude is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Claude is 8. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Claude is 6. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Claude is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Claude is 6. [length in inches]
Breast Size of Claude is 2. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Claude is 2. [count of nipples]
Asshole Depth of Claude is 10. [inches deep for anal fucking]
Asshole Tightness of Claude is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Claude is 0. [number of cocks]
Cock Girth of Claude is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Claude is 0. [10 Inches]
Ball Count of Claude is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Claude is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"] [Increase by 1 for Alpha, decrease by 1 for Omega]
Cunt Count of Claude is 1. [number of cunts]
Cunt Depth of Claude is 10. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Claude is 2. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Claude is 2. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Claude is false.
PlayerRomanced of Claude is false.
PlayerFriended of Claude is false.
PlayerControlled of Claude is false.
PlayerFucked of Claude is false.
OralVirgin of Claude is true.
Virgin of Claude is true.
AnalVirgin of Claude is true.
PenileVirgin of Claude is true.
SexuallyExperienced of Claude is true.
TwistedCapacity of Claude is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Claude is true. [steriles can't knock people up]
MainInfection of Claude is "".
Description of Claude is "[ClaudeDesc]".
Conversation of Claude is { "Woof grrr" }.
The scent of Claude is "     Claude has an amalgamation of smells, likely from close contact with many different people due to her 'social tendencies'."
]

to say ClaudeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Claude] <- DEBUG[line break]";
	if Claude is Male:
		say "     Claude is an anthropomorphic male wolf who is covered from head to toe in well-kept white fur, which is a surprise considering some of his activities out in the city. He seems to take a certain pride in his appearance, keeping his fur clean and combed to a similar degree as Bianca. He is overly trusting to the point of naivety at times, much to the lament of his mother who frequently helps him tidy up after his most recent [']friend['] leaves him after they've had their fun with him. So far, he has had enough sense to avoid those that might try to keep him. Like the rest of his family, he walks around naked, revealing his sheath and balls to the rest of the world, a factor that likely attracts these [']friends['] while he is out and about. Sometimes the effects of his socialization are greater than others...";
		say "     Accustomed to drawing the eyes of others, it takes Claude a few moments to realize that you are gazing over his body, but when he does he directs a wide smile and does a few poses before resuming what he was doing before. He seems to cause great exasperation in his scavenging-partner, Ernest, the contrast in their outlooks on life causing friction between the two. Ernest might be more successful with his criticism were Claude not one of the best scavengers, frequently returning with gifts and spoils from the friends and [']friends['] that he has made while out in the city. Given that he is happy and that no serious harm has yet come to him, Blanche has so far allowed him to find his own way in the world, though she does seem to make sure there is always another pair scavenging near him and Ernest, just in case. He may not wield much authority among his siblings, but has built up a network of friends out in the city.";
	else if Claude is Female:
		say "     Claudia is an anthropomorphic female wolf who is covered from head to toe in well-kept white fur, which is a surprise considering some of her activities out in the city. She seems to take a certain pride in her appearance, keeping her fur clean and combed to a similar degree as Bianca. She is overly trusting to the point of naivety at times, much to the lament of her mother who frequently helps her tidy up after her most recent [']friend['] leaves her after they've had their fun with her. So far, she has had enough sense to avoid those that might try to keep her. Like the rest of her family, she walks around naked with her B-cup breasts and puffy canine spade on display, a factor that likely attracts these [']friends['] while she is out and about. Sometimes the effects of her socialization are greater than others...";
		say "     Accustomed to drawing the eyes of others, it takes Claudia a few moments to realize that you are gazing over her body, but when she does she directs a wide smile towards you and does a few poses before resuming what she was doing before. She seems to cause great exasperation in her scavenging-partner, Ernest, the contrast in their outlooks on life causing friction between the two. Ernest might be more successful with his criticism were Claudia not one of the best scavengers, frequently returning with gifts and spoils from the friends and [']friends['] that she has made while out in the city. Given that she is happy and that no serious harm has yet come to her, Blanche has so far allowed her to find her own way in the world, though she does seem to make sure there is always another pair scavenging near her and Ernest, just in case. She may not wield much authority among her siblings, but has built up a network of friends out in the city.";

[Character Notes - Claude:

Species: Canine (Wolf)
Gender: Male
Relationships:
Sexuality: Bisexual

Associated Fetishes:
-
-
-
]

Section 2 - Talking

instead of conversing the Claude:
	if "First Talk" is not listed in Traits of Claude:
		say "     ";
		TraitGain "First Talk" for Claude;
	else:
		say "     ";
	[say "[ClaudeTalkMenu]";]

Section 3 - Sex

instead of fucking Claude:
	say "     ";

Section 4 - Events

[Blanche (and children?) scavenging in the city. (Urban Forest? Park?)]
[Claude scavenging in the city (increase a counter?)]

Claude ends here.
