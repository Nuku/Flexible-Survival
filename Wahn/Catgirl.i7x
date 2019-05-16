Version 2 of Catgirl by Wahn begins here.
[Version 2 - Adjusted texts all over]

"Adds a Catgirl to Flexible Survival's Wandering Monsters table."

Section 1 - Creature Responses

[ CatgirlFucked                                            ]
[  0 - never                                               ]
[  1 - once                                                ]
[  2 - twice                                               ]
[  3 - three times                                         ]
[  4 - met her in the library                              ]
[  5 - told her her new name                               ]

[ FionaCarlStatus                                          ]
[   0 - never met                                          ]
[   1 - they fucked, player didn't watch                   ]
[   1 - they fucked, player did watch and Carl knows it    ]
[ 100 - player stepped in to break up Carl and Fiona       ]


CatgirlFucked is a number that varies.
LastCatgirlFuck is a number that varies.
LastCatgirlFuck is usually 555.
FionaFangStatus is a number that varies.
FionaCarlStatus is a number that varies.

when play begins:
	add { "Catgirl" } to infections of girl;
	add { "Catgirl" } to infections of furry;
	add { "Catgirl" } to infections of Felinelist;

to say Catgirl_Wins:
	say "     The catgirl looks at you a bit disdainfully, then walks away with a flirt of her tail, on the lookout for a more worthy mating partner.";

to say Catgirl_Loses:
	say "     With a lust-filled mrowl, the catgirl accepts your dominance, dropping to all fours and flirting her tail at you. She lowers her chest and spreads her legs a bit, presenting you with a pussy just ready to be mounted.";
	say "     The little fight with her did get your blood pumping quite a bit, and you feel yourself tempted to have some fun with her.";
	say "     [bold type]Do you do so?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		if Player is female and Cock Count of Player < 1: [female]
			say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, softly pushing her over to sprawl on her back. Sitting down beside her, you run your hands over her breasts and then start to fondle her pussy. As she purrs and mrowls lustfully under your massaging fingers, your own libido awakens. You quickly remove your clothes and play with your own female parts in tandem with the catgirl's.";
			say "     Her yowls and moans get louder and louder, and before too much longer, the catgirl orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you focus more on your own pussy, rubbing your fingers over its sensitive lips. Then you get another idea and softly take hold of the feline's tail, rubbing it against your pussy. With its soft length rubbing your private parts, you soon join the catgirl in her bliss.";
			say "     Breathing deeply, you hold on to the catgirl for a while, stroking her fur as you come down from your high. She proves her amazing flexibility by not only licking up any female juices that had flowed out of her pussy, but cleaning up the rest of her fur as well. Watching her bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off. Pretty flighty, these hot felines - [if CatgirlFucked > 3]though you don't have any cause to complain, really - you already have Fiona hanging out near the library to have fun with, so having another street-cat run off on you isn't so bad[else]too bad, since having one all to yourself would be awesome. For now, it looks like you'll have to hunt down either her or another one of the street-cats if you want another round[end if].";
		else if Player is male: [male + herm]
			say "     Who could resist such a nice invitation? Quickly throwing off your clothes, you take hold of your already half-hard cock and kneel behind the catgirl. Her fur feels amazingly soft against your shaft as you rub it over the inside of her legs, before bringing it to her moist opening. The feline girl gives a lust-filled yowl as you plunge in deep, burying your manhood into her in one quick thrust.";
			say "     It feels great to reap the pleasure you earned by defeating her, the now willing catgirl gripping your cock tightly with her inner muscles as you fuck her. The sexy little feline is deep in the grip of heat, using her flexible body in any way she can to get you to cum inside her. Before long, her efforts bear fruit as the urgent need to spend your load rises in your balls. With one last deep thrust, you bottom out within her, shooting spurt after spurt of seed directly into her womb.";
			say "     Breathing deeply, you hold on to the catgirl for a while, stroking her soft fur until your shaft softens and slips from her body. She proves her amazing flexibility by not only licking up any cum that had flowed out of her pussy, but cleaning up the rest of her fur as well. Watching her bend and stretch has an invigorating effect on your maleness, and you're almost ready for another go when the catgirl finishes her cleaning and dashes off. Pretty flighty, these hot felines - [if CatgirlFucked > 3]though you don't have any cause to complain, really - you already have Fiona hanging out near the library to have fun with, so having another street-cat run off on you isn't so bad[else]too bad, since having one all to yourself would be awesome. For now, it looks like you'll have to hunt down either her or another one of the street-cats if you want another round[end if].";
		else: [neuter]
			say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, softly pushing her over to sprawl on her back. Sitting down beside her, you run your hands over her breasts and then start to fondle her pussy. As she purrs and mrowls lustfully under your massaging fingers, your genderless body attunes with hers, letting you feel part of the pleasure you're giving her.";
			say "     The catgirl's yowls and moans get louder and louder, and before too much longer, she orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you become a bit lightheaded yourself. The fringe of orgasm you're picking up makes you think about becoming a female yourself.";
			say "     She proves her amazing flexibility by cleaning herself up afterwards, licking her own female juices out of the fur between her legs. Watching her bend and stretch has an invigorating effect on you, waking a deep aching inside for a cock to fuck her with. All too soon, she finishes her cleaning and dashes off. Pretty flighty, these hot felines - [if CatgirlFucked > 3]though you don't have any cause to complain, really - you already have Fiona hanging out near the library to have fun with, so having another street-cat run off on you isn't so bad[else]too bad, since having one all to yourself would be awesome. For now, it looks like you'll have to hunt down either her or another one of the street-cats if you want another round[end if].";
		if CatgirlFucked < 3:
			increase CatgirlFucked by 1;
	else:
		say "     Shaking your head at the crazy 'come-hither... but I'm gonna attack you when you try' mating behavior of this feline woman, you quickly run away, dashing down the street before the catgirl can realize that you're not actually gonna have sex with her.";

to say Catgirl_Desc:
	setmongender 4; [female]
	say "     A slender black-furred female comes out of an alley a short distance ahead from you, meowing as she comes closer to have a look at you. She's a mixture between human and cat, having short fur covering her humanoid body, pointy ears, typical cat's eyes and a long tail. She walks with seductive grace on two digitigrade paws.";
	say "     After a moment of studying you from a distance, it seems she comes to a decision and starts to give you a bit of a show. With flowing movements, she runs her hands over her own body, stroking over her own breasts and flirting her tail at you. Then she demonstratively bends over, flashing you her moist and ready pussy.";
	say "     You find yourself almost hypnotized by her flowing movements and seductive demeanor and take a step closer before you can stop yourself. But as you do so, she hisses and bares her claws, though she is still showing off her body. Looks like she's in heat and wants [if Player is male]to be mated - but only by a partner who proves his strength and virility. [else]someone to soothe her desires - but nevertheless only a person who proves their worth first. [end if]And she really wants to know if you qualify, it seems - jumping you a moment later with outstretched claws.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Catgirl";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]She rakes you with her claws, leaving long bloody marks on your body.[or]Sharp fangs pierce your skin as the catgirl bites you.[or]With a lightning-quick move, she vaults over you, dragging a clawed hand down your back as she lands.[at random]";
	now defeated entry is "[Catgirl_Loses]";
	now victory entry is "[Catgirl_Wins]";
	now desc entry is "[Catgirl_Desc]";
	now face entry is "a mixture of cat and human, with rather sharp features and a mouth full of pointy teeth. Vertically slitted eyes and large cats ears relatively high on your head complete the picture";
	now body entry is "very slender and sleek, built for speed and agility. Your hands are mostly human, although equipped with sharp claws, while your long legs end in more paw-like digitigrade feet";
	now skin entry is "black, soft-furred";
	now tail entry is "You have a long, mobile tail over the tight buns of your behind. It's pretty useful for helping you hold your balance in any situation.";
	now cock entry is "feline, spined";
	now face change entry is "it reshapes itself, giving you sharp features and a pretty pointy chin. You feel your mouth filling with a predator's sharp teeth as your ears grow and migrate further up your head";
	now body change entry is "you fall to the ground, your chest and limbs reforming into a slender, sleek new shape. Your hands acquire sharp claws, while your feet take the shape of digitigrade paws";
	now skin change entry is "short black fur sprouts all over your body";
	now ass change entry is "it becomes tight and firmly muscled. This is followed by a very strange feeling as a long tail rapidly forms above it, making you stumble around for a moment before you adjust to using it for balance";
	now cock change entry is "it takes on a more feline shape, turning deep red in color and developing lots of tiny spines";
	now str entry is 12;
	now dex entry is 22;
	now sta entry is 14;
	now per entry is 20;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;                 [ How many HP has the monster got? ]
	now lev entry is 8;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8;                [ Amount of Damage monster Does when attacking.]
	now area entry is "Warehouse";      [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2;         [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6;          [ Width of female sex infection will try and give you ]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 2;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]flexible[or]slender[at random]";
	now type entry is "feline";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
   [ Row used to designate any special combat features, "default" for standard combat. ]

instead of navigating Grey Abbey Library while (CatgirlFucked is 3):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA FIRST WALKIN [line break]";
	say "[FionaFirstMeeting]";

instead of navigating Grey Abbey Library while (CatgirlFucked > 3 and a random chance of 1 in 4 succeeds and (LastCatgirlFuck - Turns) > 10):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA REPEAT WALKIN [line break]";
	say "[FionaRepeatMeeting]";

instead of going up from Bunker while (CatgirlFucked is 3):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA FIRST WALKIN [line break]";
	say "[FionaFirstMeeting]";

instead of going up from Bunker while (CatgirlFucked > 3 and a random chance of 1 in 4 succeeds and (LastCatgirlFuck - Turns) > 10):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA REPEAT WALKIN [line break]";
	say "[FionaRepeatMeeting]";

to say FionaFirstMeeting:
	if graphics is true:
		project the figure of Fiona_icon;
	say "     As you enter the library and move into the main room, a meow suddenly sounds from over near the bookshelves, drawing your attention. There is an anthro catgirl there, lounging comfortably on a sofa in one of the reading group arrangements - and not just any catgirl... you recognize her as the one you've had some fun with multiple times before. She must have decided you're worth her time and followed you here. Now that your attention is on her the sexy feline starts stretching and posing a bit in a very enticing manner, accompanied by needy little meows to give her what she's come to expect from you.";
	say "     [bold type]Do you want to satisfy the horny feline's desires?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Coming up to the sofa, you pet the catgirl, resulting in her rubbing her head against you and purring. As your hands move to set down your gear on the floor and start undoing the fastenings of your clothing, that purr intensifies even more and finally leads over into a lust-filled mrowl. While you strip, the catgirl drops on all fours and flirts her tail at you. She lowers her chest and spreads her legs a bit, presenting you with a pussy just ready to be mounted.";
		if Player is female and Cock Count of Player < 1: [female]
			say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, softly pushing her over to sprawl on her back. Sitting down beside her, you run your hands over her breasts and then start to fondle her pussy. As she purrs and mrowls under your massaging fingers, your own libido awakens, leading you to play with your own female parts in tandem with the catgirl's. Her yowls and moans get louder and louder, and before too much longer, the catgirl orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you focus more on your own pussy, rubbing your fingers over its sensitive lips. Then you get another idea and softly take hold of the feline's tail, rubbing it against your pussy. With its soft length rubbing your private parts, you soon join the catgirl in her bliss.";
			WaitLineBreak;
			say "     Breathing deeply, you hold on to the catgirl for a while, stroking her fur as you come down from your orgasmic high. She stays with you like that some time, enjoying your close touch, then glides out of your grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the female juices that had flowed out of her pussy, and cleaning the every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
		else if Player is male: [male + herm]
			say "     Who could resist such a nice invitation? Taking hold of your already half-hard cock, you kneel behind the catgirl. Her fur feels amazingly soft against your shaft as you rub it over the inside of her legs, before bringing it to her moist opening. The feline girl gives a lust-filled yowl as you plunge in deep, burying your manhood into her in one quick thrust. It feels great to reap the pleasures you earned by proving a worthy mate, the eager and willing catgirl now gripping your cock tightly with her inner muscles as you fuck her. Your sexy little feline is deep in the grip of heat, using her flexible body in any way she can to get you to cum inside her. Before long, her efforts bear fruit as the urgent need to spend your load rises in your balls. With one last deep thrust, you bottom out within her, shooting spurt after spurt of seed directly into her womb.";
			WaitLineBreak;
			say "     Breathing deeply, you hold on to the catgirl for a while, stroking her fur as you come down from your orgasmic high. She stays with you like that some time, enjoying your close touch, then glides out of your grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the cum that had flowed out of her pussy, and cleaning the every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
		else: [neuter]
			say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, softly pushing her over to sprawl on her back. Sitting down beside her, you run your hands over her breasts and then start to fondle her pussy. As she purrs and mrowls lustfully under your massaging fingers, your genderless body attunes with hers, letting you feel part of the pleasure you're giving her. The catgirl's yowls and moans get louder and louder, and before too much longer, she orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you become a bit lightheaded yourself. The fringe of orgasm you're picking up makes you think about becoming a female yourself.";
			WaitLineBreak;
			say "     Breathing deeply, you hold on to the catgirl for a while, stroking her fur as you come down from your orgasmic high. She stays with you like that some time, enjoying your close touch, then glides out of your grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the female juices that had flowed out of her pussy, and cleaning the every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
	else:
		LineBreak;
		say "     Coming up to the sofa, you pet the catgirl, resulting in her rubbing her head against you and purring. Though as you then tell her that you're not quite in the mood right now for your usual play, the sound stops and a bit of a sullen expression spreads over her hybrid face. Her hand-paws move to draw your hand to her breasts, trying to entice you with the feel of those firm and round, soft-furred bulges. As that fails to sway your resolve, the catgirl almost flows off the sofa in a fluid move and starts stalking away towards the back of the building and the door or window she sneaked in through. She gives you a last look over her shoulder that has the typical mix of disdain and arrogance of a cat not getting her way, then vanishes behind a bookshelf. Most likely, this will result in some scratched-up wallpaper and carpets, as well as books just pushed off their shelves in petty feline vandalism...";
	WaitLineBreak;
	say "     You do have a feeling that this catgirl will be back, having decided to take you as her on and off mate, allowing you to please her when it fits her mood. As such, the idea comes up that you should have something to call her, and after a short deliberation you decide that [bold type]Fiona[roman type] would be a good name.";
	now CatgirlFucked is 4;
	now LastCatgirlFuck is turns;

to say FionaRepeatMeeting:
	if graphics is true:
		project the figure of Fiona_icon;
	say "     As you enter the library and move into the main room, a meow suddenly sounds from over near the bookshelves, drawing your attention. Your sexy catgirl Fiona is there, lounging comfortably on a sofa in one of the reading group arrangements. Seems she felt the need to come in again for some sexual gratification. Now that your attention is on her the beautiful feline starts stretching and posing a bit in a very enticing manner, accompanied by needy little meows to give her what she's come to expect from you.";
	say "     [bold type]Do you want to satisfy the horny feline's desires?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Coming up to the sofa, you pet the catgirl, resulting in her rubbing her head against you and purring. [if CatgirlFucked is 4]Then you tell her that you've decided to call her Fiona, to which she turns her head a bit as if in thought, then gives an accepting meow and resumes her purring. [end if]As your hands move to set down your gear on the floor and start undoing the fastenings of your clothing, that purr intensifies even more and finally leads over into a lust-filled mrowl. While you strip, Fiona drops on all fours and flirts her tail at you. She lowers her chest and spreads her legs a bit, presenting you with a pussy just ready to be mounted.";
		if Player is female and Cock Count of Player < 1: [female]
			say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, softly pushing her over to sprawl on her back. Sitting down beside her, you run your hands over her breasts and then start to fondle her pussy. As she purrs and mrowls under your massaging fingers, your own libido awakens, leading you to play with your own female parts in tandem with the catgirl's. Her yowls and moans get louder and louder, and before too much longer, the catgirl orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you focus more on your own pussy, rubbing your fingers over its sensitive lips. Then you get another idea and softly take hold of the feline's tail, rubbing it against your pussy. With its soft length rubbing your private parts, you soon join the catgirl in her bliss.";
			WaitLineBreak;
			say "     Breathing deeply, you hold on to Fiona for a while, stroking her fur as you come down from your orgasmic high. She stays with you like that some time, enjoying your close touch, then glides out of your grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the female juices dripping out of her pussy, as well as being able to clean every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
		else if Player is male: [male + herm]
			say "     Who could resist such a nice invitation? Taking hold of your already half-hard cock, you kneel behind the catgirl. Her fur feels amazingly soft against your shaft as you rub it over the inside of her legs, before bringing it to her moist opening. The feline girl gives a lust-filled yowl as you plunge in deep, burying your manhood into her in one quick thrust. It feels great to reap the pleasures you earned by proving a worthy mate, the eager and willing catgirl now gripping your cock tightly with her inner muscles as you fuck her. Your sexy little feline is deep in the grip of heat, using her flexible body in any way she can to get you to cum inside her. Before long, her efforts bear fruit as the urgent need to spend your load rises in your balls. With one last deep thrust, you bottom out within her, shooting spurt after spurt of seed directly into her womb.";
			WaitLineBreak;
			say "     Breathing deeply, you hold on to Fiona for a while, stroking her fur as you come down from your orgasmic high. She stays with you like that some time, enjoying your close touch, then glides out of your grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the cum dripping out of her pussy, as well as being able to clean every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
		else: [neuter]
			say "     Not having a cock to fulfill the catgirl's needs, you nevertheless step up and stroke her soft fur, softly pushing her over to sprawl on her back. Sitting down beside her, you run your hands over her breasts and then start to fondle her pussy. As she purrs and mrowls lustfully under your massaging fingers, your genderless body attunes with hers, letting you feel part of the pleasure you're giving her. The catgirl's yowls and moans get louder and louder, and before too much longer, she orgasms from your stimulating fingers. With her in the throes of lust, female juices running down into her fur, you become a bit lightheaded yourself. The fringe of orgasm you're picking up makes you think about becoming a female yourself.";
			WaitLineBreak;
			say "     Breathing deeply, you hold on to Fiona for a while, stroking her fur as you come down from your orgasmic high. She stays with you like that some time, enjoying your close touch, then glides out of your grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the female juices dripping out of her pussy, as well as being able to clean every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on you, and you're almost ready for another go when the catgirl finishes and dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
		now LastCatgirlFuck is turns;
	else:
		LineBreak;
		say "     Coming up to the sofa, you pet the catgirl, resulting in her rubbing her head against you and purring. [if CatgirlFucked is 4]Then you tell her that you've decided to call her Fiona, to which she turns her head a bit as if in thought, then gives an accepting meow and resumes her purring. [end if]Though as you then tell her that you're not quite in the mood right now for your usual play, the sound stops and a bit of a sullen expression spreads over her hybrid face. Her hand-paws move to draw your hand to her breasts, trying to entice you with the feel of those firm and round, soft-furred bulges. As that fails to sway your resolve, the catgirl almost flows off the sofa in a fluid move and starts stalking away towards the back of the building and the door or window she sneaked in through. She gives you a last look over her shoulder that has the typical mix of disdain and arrogance of a cat not getting her way, then vanishes behind a bookshelf. Most likely, this will result in some scratched-up wallpaper and carpets, as well as books just pushed off their shelves in petty feline vandalism...";
	if CatgirlFucked is 4:
		now CatgirlFucked is 5;

instead of going up from Bunker while (CatgirlFucked > 3 and Fang is in Grey Abbey Library and a random chance of 1 in 4 succeeds and (LastCatgirlFuck - Turns) > 10):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA FANG WALKIN [line break]";
	say "[FionaFangSex]";

instead of navigating Grey Abbey Library while (CatgirlFucked > 3 and Fang is in Grey Abbey Library and a random chance of 1 in 4 succeeds and (LastCatgirlFuck - Turns) > 10):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA FANG WALKIN [line break]";
	say "[FionaFangSex]";

to say FionaFangSex:
	if FionaFangStatus is 0:
		say "     The library is filled with yowls, growls and the scratching or claws on the ground as you enter - and just a moment later, your catgirl Fiona streaks into view from behind a row of bookshelves, a hunted look on her face and her tail all thick and bushy. Her eyes go wide as she turns her head to look at you, and that small moment of distraction is enough to make her step on a book someone left lying on the floor, lose her balance and take a tumble. Only a second behind her is Fang, panting excitedly from the hunt after this intruder into his domain. The wolf is on top of the catgirl in a flash, standing over her and setting his jaws to lightly nip at the fur of her neck while he gives a warning growl.";
		say "     Fiona stiffens under the feral wolf and you can see the claws on her hand-paws slowly sliding out of their sheaths as she prepares to claw her way out of this situation - only to pull back again as she feels something poke the side of her hips. Looks like Fang got excited in more way than one from the little chase, as his canine cock is dangling fully erect between his legs. Well, if the catgirl came to seek you out again, she's likely at the height of her heat, something the wolf will undoubtedly have smelled immediately. So even though she came for you, the look on Fiona's face as she glances back and sees Fang's shaft speaks volumes.";
		WaitLineBreak;
		say "     With a lust-filled mrowl, the catgirl fully retracts her claws, then lowers her chest and spreads her legs a bit. Her sinuous tail moves to curl around the wolf's hips, as if to pull him onto her back. Being presented with a pussy just ready to be mounted, it's no big wonder what Fang does next - he thrusts into her with all his strength, driving the knotted canine cock between his legs deep into her feline depths. The mating that follows is wild and untamed, filling the library with the pants and yowls of animalistic rutting. It's quite a show and you can't help but be aroused a bit by it yourself, eyes drawn to the wolf's thrusting hips as they grind against your feline bed-mate.";
		say "     Finally, the act culminates with a howl from Fang, throwing his head back as he knots with Fiona and floods her womb with his canine seed. He keeps humping her for some moments more, then grows still, only stretching a bit to lick at her muzzle. The unlikely pair of breeding partners stays together like that for some more time, tied together by the wolf's knot, then they eventually separate, causing a small gush of white cum from Fiona's stuffed pussy. Fang just throws himself on the floor, basking in the feeling of having made a conquest and fucked her hard, while Fiona stalks off between the bookshelves. She's got a satisfied expression on her face, but from the fact that she doesn't stop to clean herself, you can see she's nevertheless a bit unnerved by having the wolf catching her.";
		now FionaFangStatus is 1;
	else:
		say "     The library is filled with yowls, growls and the scratching or claws on the ground as you enter - sounds like Fiona and Fang are at it again...";
		say "     [bold type]do you want to watch, or would you rather leave what will happen to happen and turn your attention elsewhere?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Watch.";
		say "     ([link]N[as]n[end link]) - Leave.";
		if Player consents:
			LineBreak;
			say "     Just a moment later, your catgirl Fiona streaks into view from behind a row of bookshelves, a hunted look on her face and her tail all thick and bushy. Her eyes go wide as she turns her head to look at you, and that small moment of distraction is enough to make her step on a book someone left lying on the floor, lose her balance and take a tumble. Only a second behind her is Fang, panting excitedly from the hunt after this intruder into his domain. The wolf is on top of the catgirl in a flash, standing over her and setting his jaws to lightly nip at the fur of her neck while he gives a warning growl.";
			say "     Fiona stiffens under the feral wolf and you can see the claws on her hand-paws slowly sliding out of their sheaths as she prepares to claw her way out of this situation - only to pull back again as she feels something poke the side of her hips. Looks like Fang got excited in more way than one from the little chase, as his canine cock is dangling fully erect between his legs. Well, if the catgirl came to seek you out again, she's likely at the height of her heat, something the wolf will undoubtedly have smelled immediately. So even though she came for you, the look on Fiona's face as she glances back and sees Fang's shaft speaks volumes.";
			WaitLineBreak;
			say "     With a lust-filled mrowl, the catgirl fully retracts her claws, then lowers her chest and spreads her legs a bit. Her sinuous tail moves to curl around the wolf's hips, as if to pull him onto her back. Being presented with a pussy just ready to be mounted, it's no big wonder what Fang does next - he thrusts into her with all his strength, driving the knotted canine cock between his legs deep into her feline depths. The mating that follows is wild and untamed, filling the library with the pants and yowls of animalistic rutting. It's quite a show and you can't help but be aroused a bit by it yourself, eyes drawn to the wolf's thrusting hips as they grind against your feline bed-mate.";
			say "     Finally, the act culminates with a howl from Fang, throwing his head back as he knots with Fiona and floods her womb with his canine seed. He keeps humping her for some moments more, then grows still, only stretching a bit to lick at her muzzle. The unlikely pair of breeding partners stays together like that for some more time, tied together by the wolf's knot, then they eventually separate, causing a small gush of white cum from Fiona's stuffed pussy. Fang just throws himself on the floor, basking in the feeling of having made a conquest and fucked her hard, while Fiona stalks off between the bookshelves. She's got a satisfied expression on her face, but from the fact that she doesn't stop to clean herself, you can see she's nevertheless a bit unnerved by having the wolf catching her.";
		else:
			say "     Keeping your distance from the area the sounds are coming from, you see Fiona streak out from between the bookshelves a moment later, tail all bushy and thick. She dashes down between two other rows of shelves, closely followed by Fang. A moment later, you fan hear the chase come to a sudden end, followed by a low growl and then a lust-filled mrowl. You do your best to filter out the sounds of their animalistic mating after that...";
		now LastCatgirlFuck is turns;

instead of going up from Bunker while (CatgirlFucked > 3 and FionaCarlStatus is 0 and Carl is in Grey Abbey 2F and (LastCatgirlFuck - Turns) > 10 and HP of Carl is 10):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA CARL WALKIN [line break]";
	say "[FionaCarlMeet]";

instead of navigating Grey Abbey Library while (CatgirlFucked > 3 and FionaCarlStatus is 0 and Carl is in Grey Abbey 2F and (LastCatgirlFuck - Turns) > 10 and HP of Carl is 10):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA CARL WALKIN [line break]";
	say "[FionaCarlMeet]";

to say FionaCarlMeet:
	say "     As you enter the library and move into the main room, you see Carl standing near the rows of bookshelves in the back, looking with interest at Fiona the catgirl as she lounges on a sofa, flirting her tail invitingly at him. Judging from the size of the bulge in the front of his pants, he's more than a little interested in what she has to offer. Though as the husky soldier walks closer and reaches out to touch Fiona, the catgirl stands up with a hiss, taking a fighting stance instead. She bares her fangs and holds them ready to claw at Carl - while still showing off her body and throwing 'come hither' looks at him. It's the same little game she did with you - a back and forth between the need to get bred during her heat and the wish to let only the strongest males fuck her.";
	say "     'So that's how it is, you little minx,' Carl says with a chuckle, then pulls off his shirt, immediately followed by his pants. As soon as the last piece of cloth hits the ground, he lunges at Fiona with an eager grin on his muzzle. The two of them don't actually fight for real, it being more of a little dance for Fiona to let herself get caught without making it too easy, though even so, Carl gets a few claw-scratches before he finally manages to grapple the catgirl, holding her against his chest from behind. In between light panting, the husky says 'You just love playing hard to get, don't you kitty? Well, I got you now...' With that, he moves a hand up to cup her left breast, gently playing with the nipple and making her start to purr.";
	say "     [bold type]It's more than obvious what will come next... unless you want to play party pooper?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Deciding you don't want the two of them mating with each other, you quickly walk over before it gets any further. As you clear your throat to attract their attention, Carl lets go of Fiona and the catgirl dashes off to vanish through the way she sneaked in, wanting to put some ground between her and the fight she believes you and the husky will have now. But contrary to her expectation, Carl simply raises his hands in a placatory manner, then says 'So - that's... your cat, I assume? Sorry, didn't mean to move in on anyone's territory. It's just that she's a mighty fine piece of tail and did make eyes at me...' With a shrug at the missed opportunity, he walks over to the stairs and gets back to where he usually holds lookout.";
		now FionaCarlStatus is 100; [stopped them hooking up]
	else:
		LineBreak;
		say "     [bold type]Do you want to watch as they go at it?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     Carl strokes and fondles Fiona's breasts for a while, at some point sliding a hand down to rub her nether lips too. The catgirl purrs loudly at his touch and gives small needy meows when he slips a finger in to rub and tease her sensitive folds. Eventually, the husky gives Fiona's muzzle an affectionate lick and pants 'Let's move on to the real fun now. You want it, don't you? I can feel how wet you are...' Giving an affirmative mrowl, the feline beauty slides out of his embrace and sashays over to the sofa, her hips swaying alluringly. Once there, Fiona drops on all fours and flirts her tail at the soldier. She lowers her chest and spreads her legs a bit, presenting him with a pussy just ready to be mounted.";
			say "     Not one to hesitate at such a sexy offer, Carl is kneeling behind her in just a moment and lines his canine shaft up with her hole. Then he thrusts in with a satisfied grunt that is immediately joined by a fulfilled mrowl from Fiona. Taking the young woman from behind in the typical doggie-style position, Carl's manhood rubs her sensitive spots in all the right ways, clearly showing that it was made for this style of fucking. Just pounding into the catgirl in a way that simply feels right to him, the strong husky really takes out all the stops, mounting her with truly animal-like intensity that takes Fiona's breath away and makes her whimper in arousal from the sensations it creates.";
			WaitLineBreak;
			say "     With the wild ride he's giving Fiona, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against her shapely form. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed deep into his feline partner's womb. Feeling the warm pulse of his cum into her body, filling her up, is the last straw that pushes Fiona over the edge right with him, giving a lust-filled yowl as she reaches her climax. Fiona's pussy gets really wet around Carl's cock and femcum starts to drip out of it and down onto the sofa.";
			say "     Breathing deeply, Carl holds on to Fiona for a while, stroking her fur as both of them come down from their orgasmic high. She's content to stay with him like that some time, enjoying the closeness of their bodies and being touched. When his knot eventually goes down, Fiona glides out of the husky soldier's grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the cum dripping out of her pussy, as well as being able to clean every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on Carl, and he quickly gets hard again. But as he reaches out to pull the catgirl in for another round, Fiona just dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
			WaitLineBreak;
			say "     Letting himself fall back on the sofa, Carl watches her go, blowing out his breath and then chuckling at the flighty female. He stays sitting for a few moments more to catch his breath, then starts to clean himself. He sees you standing nearby as he does so, recognizing that you watched him fuck the catgirl, which he calmly accepts. 'What a sexy little beast, hm?' he says to you, then starts smiling widely as you give him a knowing nod. Unconcerned with his nakedness, he just grabs his shirt and pants and then walks back up the stairs to where he usually keeps lookout.";
			if FionaCarlStatus is 0:
				now FionaCarlStatus is 10; [they fucked, player did watch and Carl knows it]
		else:
			LineBreak;
			say "     You leave the two of them to have some fun in private and turn away, starting to walk to the other end of the large building to busy yourself with something. Before you've made more than a few steps, there is a masculine grunt and lust-filled mrowl from behind you, followed by thrusting sounds and exultant pants and moans. They're definitively having a good time together...";
			if FionaCarlStatus is 0:
				now FionaCarlStatus is 1; [they fucked, player didn't watch]
		now LastCatgirlFuck is turns;

instead of going up from Bunker while (CatgirlFucked > 3 and FionaCarlStatus > 0 and FionaCarlStatus < 100 and Carl is in Grey Abbey 2F and (LastCatgirlFuck - Turns) > 10 and HP of Carl is 10 and a random chance of 1 in 4 succeeds):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA CARL REPEAT WALKIN [line break]";
	say "[FionaCarlRepeatFuck]";

instead of navigating Grey Abbey Library while (CatgirlFucked > 3 and FionaCarlStatus > 0 and FionaCarlStatus < 100 and Carl is in Grey Abbey 2F and (LastCatgirlFuck - Turns) > 10 and HP of Carl is 10 and a random chance of 1 in 4 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: FIONA CARL REPEAT WALKIN [line break]";
	say "[FionaCarlRepeatFuck]";

to say FionaCarlRepeatFuck:
	say "     As you enter the library and move into the main room, hear a lusty mrowl and eager grunt coming from a reading group near the back row of bookshelves. Looking over there, you see Carl's upper body stand up from behind the back rest of a sofa, holding on to and thrusting into what you're sure must be Fiona the catgirl.";
	say "     [bold type]Do you want to walk up to them and watch as they go at it?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		LineBreak;
		say "     Silently walking towards them, you watch as Carl takes the young woman from behind in the typical doggie-style position, Carl's manhood rubbing her sensitive spots in all the right ways, clearly showing that it was made for this style of fucking. Just pounding into the catgirl in a way that simply feels right to him, the strong husky really takes out all the stops, mounting her with truly animal-like intensity that takes Fiona's breath away and makes her whimper in arousal from the sensations it creates.";
		say "     With the wild ride he's giving Fiona, it doesn't take all that long until Carl's arousal builds up to a pretty spectacular climax, with him growling and grunting deeply as he grinds his hips against her shapely form. The knot at the base of his shaft swells up to lock their bodies together and Carl's canine member starts to spurt blast after blast of his fertile seed deep into his feline partner's womb. Feeling the warm pulse of his cum into her body, filling her up, is the last straw that pushes Fiona over the edge right with him, giving a lust-filled yowl as she reaches her climax. Fiona's pussy gets really wet around Carl's cock and femcum starts to drip out of it and down onto the sofa.";
		WaitLineBreak;
		say "     Breathing deeply, Carl holds on to Fiona for a while, stroking her fur as both of them come down from their orgasmic high. She's content to stay with him like that some time, enjoying the closeness of their bodies and being touched. When his knot eventually goes down, Fiona glides out of the husky soldier's grasp in a fluid move and starts to clean herself up. Proving her amazing flexibility, she manages to bend far enough to even lick up the cum dripping out of her pussy, as well as being able to clean every other part of her fur as well. Watching the sexy kitty bend and stretch has an invigorating effect on Carl, and he quickly gets hard again. But as he reaches out to pull the catgirl in for another round, Fiona just dashes off, streaking away between the bookshelves to vanish through whatever door or window she used to sneak in.";
		say "     Letting himself fall back on the sofa, Carl watches her go, blowing out his breath and then chuckling at the flighty female. He stays sitting for a few moments more to catch his breath, then starts to clean himself. He sees you standing nearby as he does so, recognizing that you watched him fuck the catgirl, which he calmly accepts. 'What a sexy little beast, hm?' he says to you, then starts smiling widely as you give him a knowing nod. Unconcerned with his nakedness, he just grabs his shirt and pants and then walks back up the stairs to where he usually keeps lookout.";
		if FionaCarlStatus is 1: [didn't watch before]
			now FionaCarlStatus is 10; [they fucked, player did watch and Carl knows it]
	else:
		LineBreak;
		say "     You leave the two of them to have some fun in private and turn away, starting to walk to the other end of the large building to busy yourself with something. Before you've made more than a few steps, you hear thrusting sounds in a rapid pace, mixed with exultant pants and moans. They're definitively having a good time together...";
	now LastCatgirlFuck is turns;

Section 4 - Endings

when play ends:
	if bodyname of Player is "Catgirl" and player is female:
		if humanity of Player < 10: [succumbed]
			say "Before long, your instincts take over, with your human life only a fading memory. Driven by powerful urges to be bred by any strong male, no matter what shape, you roam the streets of the city and flirt your sexy body in front of those you meet.";
			if "Sterile" is not listed in feats of Player: [F-BREEDABLE]
				say "When the military finally moves in, a scouting soldier finds you in a fight with another potential mate and 'saves' you, driving off the creature with a few shots in the air. As worked up as you are, you immediately rub up against him and soon have the human's cock balls deep inside you. Several more matings follow as he escorts you out of the city, and before you even arrive at the holding facility, your belly starts to bulge with the fruit of your soldier's fertile seed. The man smuggles you past the checkpoints and brings you home with him as his private sex-pet, very well taken care of and fucked daily. You bear him several litters of kittens, many of whom go to his buddies who helped smuggle you out.";
			else: [F-STERILE]
				say "When the military finally moves in, a scouting soldier finds you in a fight with another potential mate and 'saves' you, driving off the creature with a few shots in the air. As worked up as you are, you immediately rub up against him and soon have the human's cock balls deep inside you. Several more matings follow as he escorts you out of the city, and before you arrive at the holding facility, the man radios a few of his buddies to meet the two of you in an abandoned building some blocks away. With all of them gangbanging you that whole night until dawn, your soldier has no problem convincing them to smuggle you past the checkpoints and brings you home with him as his private sex-pet. From then on, you are very well taken care of and fucked daily by the soldier or his friends coming over for some action.";
			stop the action; [no other succumb endings, as the player isn't in the city anymore]
		else: [sane]
			if "Sterile" is not listed in feats of Player: [F-BREEDABLE]
				say "When the military moves in, you're brought to a holding facility with all the other survivors, with doctors and scientists struggling to check out everyone coming in. As you wait for your turn, day after day in overfilled quarters, you spend your time flirting with several of the younger soldiers, leading to more than one intimate encounter. Despite your body urging you to let them knock you up, you're always careful to use condoms, not wanting to end up like one of the baby factories you see around you.";
			else: [F-STERILE]
				say "When the military moves in, you're brought to a holding facility with all the other survivors, with doctors and scientists struggling to check out everyone coming in. As you wait for your turn, day after day in overfilled quarters, you spend your time flirting with several of the younger soldiers, leading to more than one intimate encounter. Despite your body urging you to let them knock you up and the knowledge that you're likely to be completely sterile, you're always careful to use condoms, not wanting to end up like one of the baby factories you see around you.";
			say "After finally getting released two weeks later, you try to find your niche in the new and changed world. Knowing that most humans just can't resist watching your slender feline body as you move, you take up dancing, some of it erotic some otherwise. With the raised acceptance of sexuality in the post-infection world, you make your big break a while later starring in a popular musical starring cats. People just love watching the crew move and dance as only they can, and the climax of the play - where you as the lead are mated by a handsome tom - is great fun for everyone involved.";

Catgirl ends here.
