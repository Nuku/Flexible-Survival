Version 1 of Gunbunny by Stripes begins here.
[ Version 1.0 - Infection and endings ]

"Adds a gun-toting Gunbunny creature to Flexible Survival's Wandering Monsters table"

Section 0 - Monster Variables, Flags and Markers

gb_hair is a number that varies.
gb_gun is a number that varies.
gb_gatling_counter is a number that varies.
gb_gatling_chance is a number that varies.
nogunbunnysex is a number that varies.


Section 1 - Monster Description

to say gunbunnydesc:
	now gb_hair is a random number from 1 to 8;
	now gb_gun is a random number from 1 to 5;
	now gb_gatling_counter is 0;
	say "     You find yourself confronted by an anime-style bunny girl. She's got the typical human head and body and is dressed in [one of]a tight top, super-short skirt and striped knee-socks[or][if gb_gun is 6]a form-fitting space suit[else]a camo jumpsuit[end if][or]a bikini[or]a navy-blue school outfit[or]a skin-tight black leotard[or]a cute t-shirt skirt[in random order] that shows off her sexy bust. Her hair is [if gb_hair is 1]pink[else if gb_hair is 2]yellow[else if gb_hair is 3]green[else if gb_hair is 4]blue[else if gb_hair is 5]red[else if gb_hair is 6]black[else if gb_hair is 7]white[else]teal[end if] with matching colored rabbit ears sticking out of it. She's wearing similarly colored paw-like gloves.";
	say "     Her large, expressive eyes watch you carefully as one hand slips behind her back. From somewhere around her fluffy [if gb_hair is 1]pink[else if gb_hair is 2]yellow[else if gb_hair is 3]green[else if gb_hair is 4]blue[else if gb_hair is 5]red[else if gb_hair is 6]black[else if gb_hair is 7]white[else]teal[end if] bunny tail, she pulls out [if gb_gun is 1]a pair of heavy pistols[else if gb_gun is 2]a pair of SMGs[else if gb_gun is 3]twin six-shooters[else if gb_gun is 4]a shotgun[else if gb_gun is 5]a heavy rifle[else]a sci-fi ray gun[end if]. Now armed and with a [one of]wild look in her eyes[or]crazy laugh[or]girlish giggle[or]untranslatable insult[or]final action pose[at random], she aims and opens fire in a spray of [if gb_gun is 5]laser fire[else]bullets[end if].";

[   gb_hair   ]
[ 1 = pink    ]
[ 2 = yellow  ]
[ 3 = green   ]
[ 4 = blue    ]
[ 5 = red     ]
[ 6 = black   ]
[ 7 = white   ]
[ 8 = teal    ]

[       gb_gun        ]
[ 1 = pistols x2      ]
[ 2 = SMGs x2         ]
[ 3 = six-shooters x2 ]
[ 4 = shotgun         ]
[ 5 = heavy rifle     ]
[ 6 = sci-fi ray gun  ]


Section 2 - Monster Attacks

[Note: See Section 6 for her Alt-Attack]

to say gunbunnyattack:
	say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]fires a volley of wild shots[or]fires at you with her [if gb_gun > 3]gun[else]guns[end if][or]giggles wildly as she chases after you with a stream of [if gb_gun < 6]bullets[else]laser blasts[end if][or]performs an acrobatic leap that has her flip upside down while ten feet in the air, firing shots all around you before landing with a superfluous jiggle of her breasts[or]dashes from side to side while shooting nearly constantly[at random][one of]. Try as you might to avoid them, one of the shots does end up hitting[or]. You do your best to dive for cover, but end up getting hit[or]. The crazed rabbit girl[if gb_gun is 6]'s blaster shot leaves a searing scorchmark where it hits[else] seems to shoot more bullets than her gun could possibly hold and you can only manage to dodge for so long before getting hit[end if][or]. She chases you from cover to cover before finally managing to hit you[at random].";


Section 3 - Monster Victory

to say losetogunbunny:
	now nogunbunnysex is 0;
	if HP of Player > 0:
		say "     The gun-toting bunny seems quite upset when you give up. She clubs you in the side of the head with her gun, knocking you to the ground in a daze. She says something having wanted more target practice before popping several more shots into you and then kicking you in the guts for good measure. You're left to slowly, painfully recover.";
		now HP of Player is 0;
	else:
		say "     The gun-toting bunny mocks you while bragging about her shooting skills before leaving you to slowly, painfully recover.";


Section 4 - Player Victory

to say beatthegunbunny:
	if ( nogunbunnysex > 2 and ( the remainder after dividing nogunbunnysex by 5 is not 0 ) ) or ( player is neuter ):
		say "     Your last blow knocks her [if gb_gun > 3]gun[else]guns[end if] skittering away and sends the bunny girl to the ground. She struggles once or twice to get up, but is too weakened. Tired from the near-constant [if gb_gun is 6]blaster fire[else]gunfire[end if] you were trying to avoid, you are just happy it's over and just leave the exhausted girl behind. Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[else]them, but you cannot find her guns[end if].";
		increase nogunbunnysex by 1;
	else if Player is male:
		say "     Your last blow knocks her [if gb_gun > 3]gun[else]guns[end if] skittering away and sends the bunny girl to the ground. She struggles once or twice to get up, but is too weakened. You're tired from the near-constant [if gb_gun is 6]blaster fire[else]gunfire[end if] you were trying to avoid, but looking at her makes you want to get a little payback on her sexy bunny butt.";
		say "     [bold type]Shall you take advantage of the situation and fuck the gunbunny senseless?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "     You push the bunny girl over onto all fours and push aside her clothes, giving you access to her juicy cunt. Her pussy is human-like in shape and has a neatly trimmed bush of [gb_hair] that matches her hair. You finger her folds, finding her pussy hot and wet from the earlier excitement. She gives a little whimper as you tease her, but doesn't pull away, if anything she does her best to get onto all fours when you push her into position. Her cute bunny tail gives an enticing twitch.";
			say "     Lining your [Cock of Player] cock up under that [gb_hair] puff, you thrust forward and sink your shaft into her juicy cunny. She pants and moans as you start fucking her, enjoying the feel of the bunny babe's vaginal walls squeezing and quivering around your meat. You pound her hard and fast in return for attacking you, even pushing her face down to the ground as you press heavily on her shoulders. From this position, you can drive even harder into her sopping cunt, drawing a mix of whimpers and moans from the rough fucking until you finally cum. You spray your [Cum Load Size of Player] load into the rabbit girl[if Ball Size of Player > 6], bloating her previously slender tummy with a bellyful of virile semen[else if Ball Size of Player > 5], resulting in a visible bulge in her previously slender tummy[end if].";
			say "     After pulling out, you grab her by the ears and make her suck your cock clean[if Libido of Player > 50]. You end up feeding her another hot load of your cum before you're satisfied[end if]. Once finished, you pull her head back and push the exhausted bunny back to the ground with your foot, warning her to leave you alone in the future or she'll get more of the same. Done with her now, you are content to leave the exhausted girl behind. Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[else]them, but you cannot find her guns[end if].";
			now nogunbunnysex is 0;
		else:
			say "     Resisting the impulse, you push the weakened bunny back down with your foot, ending her attempts to rise. At this point, you're done with her and just leave the exhausted girl behind. Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[else]them, but you cannot find her guns[end if].";
			increase nogunbunnysex by 1;
	else:
		say "     Your last blow knocks her [if gb_gun > 3]gun[else]guns[end if] skittering away and sends the bunny girl to the ground. She struggles once or twice to get up, but is too weakened. You're tired from the near-constant [if gb_gun is 6]blaster fire[else]gunfire[end if] you were trying to avoid, but looking at her gives you the idea to have her make it up to you a little.";
		say "     [bold type]Shall you take advantage of the situation and get the gunbunny to eat you out?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			say "     Grabbing the bunny girl by the ears, you pull her head to your crotch. She whimpers at this rough treatment, but accepts her punishment and sets to licking your crotch. You keep a tight grip on those long ears of hers, making sure she remains pressed between your thighs. And while she may be a little reluctant at first, a few ear tugs and the scent of your snatch are enough to bring her around.";
			say "     Her tongue licks and laps across your sensitive folds and you can feel the press of her lips sliding against your clit whenever her tongue delves extra-deep into you. As your pleasure builds, you grind your crotch into her face. Achieving orgasm, your cunny quivers and squeezes at the bunny's tongue while your excess juices run down her chin to drip onto her buxom breasts. You make sure to maintain your grip, forcing her to lick and lap up your femcum through your climax until the oversensitivity of the afterglow becomes too much and you push her away.";
			say "     She falls back onto her butt with a whimper and rubs a gloved handpaw at her crotch, but you're not interested in playing with the bunny further. You instead push her back down to the ground with your foot. At this point, you are just happy it's over and just leave the exhausted girl behind. Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[else]them, but you cannot find her guns[end if].";
			now nogunbunnysex is 0;
		else:
			say "     Resisting the impulse, you push the weakened bunny back down with your foot, ending her attempts to rise. At this point, you've had your fun and just leave the exhausted girl behind. Before you go, you look around for [if gb_gun > 3]it, but you cannot find her weapon[else]them, but you cannot find her guns[end if].";
			increase nogunbunnysex by 1;


Section 5 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Bunny"; [name of the overall species of the infection, used for children, ...]
	add "Gunbunny" to infections of LeporineList;
	add "Gunbunny" to infections of FurryList;
	add "Gunbunny" to infections of NatureList;
	add "Gunbunny" to infections of FemaleList;
	add "Gunbunny" to infections of BipedalList;
	add "Gunbunny" to infections of TailList;
	now Name entry is "Gunbunny"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[gunbunnyattack]";
	now defeated entry is "[beatthegunbunny]"; [ Text when monster loses. ]
	now victory entry is "[losetogunbunny]"; [ Text when monster wins. ]
	now desc entry is "[gunbunnydesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "very human, save for the set of [if HP of Doctor Matt >= 12 and HP of Doctor Matt < 100]white[else if hospquest < 14]gray[else]black[end if] bunny ears atop your head. Your face is [if Player is female]pretty and effeminate[else]girlish[end if] with a cute, if slightly bucktoothed smile";
	now body entry is "largely human-looking, with a figure that is svelte[if Player is female] and effeminate[end if]. This illusion is marred by the paw-patterned gloves stuck over your decidedly paw-shaped hands. They are cartoonish and [if HP of Doctor Matt >= 12 and HP of Doctor Matt < 100]white[else if hospquest < 14]gray[else]black[end if] with pink pawpads drawn on the underside. Your limbs are slender and sexy, though you can feel a hidden strength and bounciness in your legs, allowing you to run faster and jump higher than you ever could before";
	now skin entry is "smooth, pink and normal-looking";
	now tail entry is "You have a cute bunny tail of [if HP of Doctor Matt >= 12 and HP of Doctor Matt < 100]white[else if hospquest < 14]gray[else]black[end if] fur attached to your toned bubble butt.";
	now cock entry is "[one of][if hospquest < 14]pink[else]black[end if][or]slender[or]human-shaped[as decreasingly likely outcomes]";
	now face change entry is "it shifts and changes. For the most part, you're hopeful you'll come out looking human as your features settle into what becomes a pretty [if Player is female]and[else]if[end if] girlish face. Your hopes for passing as human are dashed though as you gain a set of tall bunny ears covered in soft [if HP of Doctor Matt >= 12 and HP of Doctor Matt < 100]white[else if hospquest < 14]gray[else]black[end if] fur";
	now body change entry is "it shifts and changes. At first, your new body seems quite human as the transformation progresses, if svelte[if Player is female] and effeminate[end if]. That changes though at your hands, with your digits popping and snapping as they get shorter and thicker. Your new paw-hands end up covered in cartoonish paw-gloves that cannot be removed. Oddly, you long for the comforting weight of a gun to hold in them";
	now skin change entry is "it becomes smooth and lightly flesh-toned despite all the sun you've been getting lately";
	now ass change entry is "you feel soft tickling at the base of your spine. It builds up to a pressure that gradually becomes uncomfortable before finally popping as a cute and puffy bunny tail of [if HP of Doctor Matt >= 12 and HP of Doctor Matt < 100]white[else if hospquest < 14]gray[else]black[end if] fur emerges";
	now cock change entry is "your manhood twitches and throbs, spurting several gobs of precum as it changes. It becomes human-like in form thankfully, though circumcised and [if hospquest < 14]somewhat slender in shape with a soft, flesh tone[else]a deep black in color[end if]";
	now str entry is 10; [ These are now the creature's stats... ]
	now dex entry is 19; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat. ]
	now per entry is 16;
	now int entry is 12;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 65; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 12; [ Monster's average damage when attacking. ]
	now area entry is "High"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 7;
	now Cunt Tightness entry is 5;
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]effeminate[or]girly[or]slender[at random]";
	now type entry is "[one of]lapine[or]bunny-[if Player is female]girl[else]boy[end if][as decreasingly likely outcomes]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [***temporary]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "gunbunny"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Section 6 - Gunbunny Alt-Attack

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"gunbunny"	gb_retaliation rule	gb_gat_count rule	gb_gat_down rule	--	--	--	--	gb_gat_up rule	--	--

this is the gb_retaliation rule:
	if a random chance of gb_gatling_chance in 100 succeeds:
		gb_gatling_attack;
	else:
		retaliate;

this is the gb_gat_count rule:		[manages odds of gatling attack each round]
	choose row monstercom from the table of Critter Combat;
	if gb_gatling_counter is 0:		[first round - reset to 0]
		now gb_gatling_chance is 0;
	else if gb_gatling_counter is 1:
		increase gb_gatling_chance by 30;
	else if gb_gatling_chance < 10:
		now gb_gatling_chance is 10;
	increase gb_gatling_counter by 1;
[	say "DEBUG: Gatling chance = [gb_gatling_chance]."; [***]		]
[	say "DEBUG: Gatling counter = [gb_gatling_counter]."; [***]	]

this is the gb_gat_down rule:		[odds go down if she hits normally]
	if HP of Player > 0:
		say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]cheers at her own success[or]gives a happy 'Yatta!' at having hit you[or]sticks out her tongue and makes a face at you[or]makes the [']V-for-Victory['] sign at her success[or]giggles and taunts you[or]calls you 'Baka!['] for getting hit[at random]. But now that she's got to take a moment to [if gb_gun is 6]recharge her ray gun[else]reload[end if], you've got an opportunity to respond to this assault.";
		decrease gb_gatling_chance by 3;
	else:
		say "[one of]The bunny girl[or]The gunbunny[or]Her[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]cheers at her own success[or]gives a happy 'Yatta!' at having hit you[or]sticks out her tongue and makes a face at you[or]makes the [']V-for-Victory['] sign at her success[or]giggles and taunts you[or]calls you 'Baka!['] for getting hit[at random]. By this point, you're too weak to keep going and collapse to ground.";

this is the gb_gat_up rule:			[miss message and gatling odds go up]
	say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] [one of]fires a volley of wild shots[or]fires at you with her [if gb_gun > 3]gun[else]guns[end if][or]giggles wildly as she chases after you with a stream of [if gb_gun < 6]bullets[else]laser blasts[end if][or]performs an acrobatic leap that has her flip upside down while ten feet in the air, firing shots all around you before landing with a superfluous jiggle of her breasts[or]dashes from side to side while shooting nearly constantly[at random]. [one of]You barely manage to avoid getting shot by diving to the ground and rolling into cover[or]You narrowly escape getting hit[or]You run in and out of cover as the gun-crazy creatures chases you to avoid getting hit[or]You crouch behind some cover as everything around you is filled with [if gb_gun is 6]scorched by her blaster[else]filled with bullet holes[end if][or]You weave and dodge ahead of her shots, [if gb_gun is 6]black burns on the ground from laser fire[else]bullet holes[end if] chasing after you, but never quite catching you[at random].";
	increase gb_gatling_chance by a random number between 4 and 7;
[	say "DEBUG: Gatling chance = [gb_gatling_chance]."; [***]		]
[	say "DEBUG: Gatling counter = [gb_gatling_counter]."; [***]	]
	if gb_gatling_chance >= 50:
		say "The gunslinger seems really upset by this point that she's having such a hard time hitting you. It's particularly worrisome when she's doesn't bother [if gb_gun is 6]recharging[else]reloading[end if] this time. You've got a quick chance to react before she does probably something rash.";
		now gb_gatling_chance is 100;
	else:
		say "[one of]The bunny girl[or]The gunbunny[or]She[or]The gun-totting rabbit[or]The rabbit-eared girl[at random] eventually has to stop shooting long enough to [if gb_gun is 6]give her space gun a chance to recharge[else]reload[end if], giving you a chance to do something.";

to gb_gatling_attack:
	choose row MonsterID from the Table of Random Critters;
	say "From behind her back, the gunbunny whips out a [if gb_gun is 6]large [bold type]blaster cannon[roman type] with multiple barrels[else][bold type]gatling gun[roman type][end if]. The thing is bigger than her whole torso (tits included), but you don't have time to wonder where she could have been hiding it. Giggling maniacally, she opens fire, sending a hail of [if gb_gun is 6]plasma pellets[else]bullets[end if] in at you. You make a run for it, but she uses her bunny-powered legs to run and leap quickly as she gives chase.";
	now monsterhit is false;
	let gatling_hit be false;
	let damagetotal be 0;
	WaitLineBreak;
	standardstrike;
	if monsterhit is true:
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "A shot strikes a particular vulnerable spot - Critical Hit![line break]";
		increase damagetotal by dam;
		say "Hit: You try to avoid the deadly strafing, but are too slow and get hit by some [if gb_gun is 6]pellets of hot plasma[else]bullets[end if] during one sweeping pass.";
		now gatling_hit is true;
	else:
		say "Missed: You managed to stay out of harm's way... for now.";
	standardstrike;
	if monsterhit is true:
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "A shot strikes a particular vulnerable spot - Critical Hit![line break]";
		increase damagetotal by dam;
		say "Hit: You try to scramble to some temporary cover, but the gunbunny's anticipated your plan and ends up hopping past it just as you dive behind it. You get shot by a volley of [if gb_gun is 6]plasma fire[else]bullets[end if] even as the shots that miss tear your would-be cover apart.";
		now gatling_hit is true;
	else:
		say "Missed: You get to some temporary cover... until the [if gb_gun is 6]plasma fire blasts[else]bullets tear[end if] it apart.";
	standardstrike;
	if monsterhit is true:
		let rangenum be ( 80 - ( peppereyes * 4 ) );
		let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 100 );
		if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
			now dam is (dam * 150) divided by 100;
			say "A shot strikes a particular vulnerable spot - Critical Hit![line break]";
		increase damagetotal by dam;
		say "Hit: Getting up, you scramble away even the wild bunny continues to give chase. You are unable to stay ahead of the [if gb_gun is 6]searing blasts of energy pursuing you[else]flurry of bullets tearing holes into everything around you[end if], eventually getting hit[if gatling_hit is true] again[end if].";
		now gatling_hit is true;
	else:
		say "Missed: Getting up, you run from the crumbling cover even as the wild bunny continues to give chase[if gb_gun is 6]. Blasts of energy scorch[else]. Bullet holes mar[end if] the ground and the walls behind you as you weave this way and that, barely staying ahead of them.";
	WaitLineBreak;
	if gatling_hit is true:		[hit at least once]
		say "The gun-toting bunny girl empties the last of weapon's clip while laughing happily at your attempts to avoid her fire. Finally, you hear the [if gb_gun is 6][else]whirring and clicking of the gatling having run out of ammo[end if]. She tosses it aside casually and pulls her [if gb_gun is 1]pistols[else if gb_gun is 2]sub-machine guns[else if gb_gun is 3]six-shooters[else if gb_gun is 4]shotgun[else if gb_gun is 5]rifle[else]laser pistol[end if] and [if gb_gun is 6]recharges it[else]reloads[end if].";
		say "Meanwhile, you're left leaning against a [if gb_gun is 6]scorched[else]bullet-riddled[end if] wall, trying to catch your breath and recover from your wounds. You've taken [special-style-2][damagetotal][roman type] damage during the firefight!";
		now damagein is damagetotal;
		say "[areaabsorbancy]";
		if absorb > damagetotal:
			now absorb is damagetotal;
		if absorb > 0:
			say "You prevent [special-style-1][absorb][roman type] damage!";
		decrease HP of the player by damagetotal;
		increase HP of Player by absorb;
		follow the player injury rule;
		say "You are [descr].";
	else:	[missed every time]
		say "The gun-toting bunny girl screams in frustration as she [if gb_gun is 6]drains the blaster completely[else]empties the last of the weapon's clip[end if] and still hasn't managed to hit you. She tosses the heavy weapon and kicks it angrily before pulling her [if gb_gun is 1]pistols[else if gb_gun is 2]sub-machine guns[else if gb_gun is 3]six-shooters[else if gb_gun is 4]shotgun[else if gb_gun is 5]rifle[else]laser pistol[end if] back out and [if gb_gun is 6]recharging it[else]reloading[end if].";
	now gb_gatling_chance is 0;
	now gb_gatling_counter is 0;
	WaitLineBreak;


Section 7 - Endings

when play ends:
	if BodyName of Player is "Gunbunny":
		if humanity of Player < 10:
			if Player is pure:
				if pistol is owned:
					say "     Your thoughts gradually become more confused and jumbled as your mind slips away. The grip of your pistol in your paw-glove hands is a strong comfort, feeling very right to you and no other weapon will do. Forgetting about the bunker, you end up setting up a new den for yourself, choosing to build a cozy burrow in the woodlands that's popped up inside the city. It's quite concealed and you stock it with more guns and ammo for added protection as well as food and other supplies, living like some crazy bunny-eared survivalist.";
					say "     During your outings into the city proper, you often enjoy some target practice, picking some hapless creature to chase around while shooting at them. Being dangerously armed and having speed and mobility on your side, these are often quite one-sided battles. On one of these hunts though, you come across a squad of soldiers and they prove to be much more fun. You enjoy chasing them down, running and gunning to repeatedly break up the group so you can try to pick them off one by one.";
					say "     The hunt is long and excitingly dangerous as the soldiers are also armed as well, though you're able to gain a quick advantage by leading one here and there to seek cover in places where you know some creature it hiding from the firefight. Many of creatures in this area have learned to avoid the sounds of gunfire, knowing it means you or another of the gun-totting bunnies is out hunting. These mutants are more than happy to have someone to snuggle up with while they wait out the gun fight. You can't help but grin at one point while pausing to reload you're also able to peek in and see a transformed soldier getting fucked senseless by some feline.";
					say "     The next few you take down are trickier, as they keep trying to regroup and cover themselves. Eventually though you're able to isolate and pick off their leader. The next time your charge breaks them up, a few scatter and run, becoming easy pickings for you. You whittle down the remaining squad until you're left with one last soldier.";
					say "     The final soldier has grabbed several guns from his fallen squad-mates and makes a valiant, desperate last stand. Your gunfight is long and heated, exchanging fire and moving back and forth from cover to cover as one or the other of you tries to outflank the other. Eventually though, you're able to finally close in on him between reloads. With a bunny leap, you pounce onto him and bear him to the ground, ending your fight with a kiss.";
					say "     After a moment of resistance, he's helping you to pull of his clothes as your tongues wrestle together. You grope and fondle each other while kissing passionately, and soon you're fucking like bunnies. Quite literally so as the soldier transforms into a bunny-eared and fluffy-tailed [if Player is herm]herm like yourself[else if Player is male]girl[else]studmuffin[end if]. After the long hunt and gunfight, you know [if Player is not male]he's[else]she's[end if] the one for you and now you have a sexy mate to share your warm, fortified burrow you soon hope to be filling with gun-happy bunny children.";
				else:
					say "     Your thoughts gradually become more confused and jumbled as your mind slips away. You wander off into the city as if looking for something, though you don't quite know what. Your bunny speed and leaping lets you avoid most trouble. You fidget with your gloved paws often, something just not feeling right about them or you.";
					say "     Eventually, you come across the scene of what was probably a confrontation between some monster and some soldiers. There's gooey stains and scraps of camouflaged clothing scattered about along with lots of other military gear. Given how that's all still here, you can tell the fight was rather recent. Suspecting that the infected soldiers or the creature that did this to them (or both) could still be around, you know it'd be safest to leave right now, but your focus keeps returning to a rifle.";
					say "     It's just laying there. On the ground. Right over there. Where you could. just. take. it. Take it. Take it. TAKE IT! NOW! NOWNOWNOWNOWNOW!";
					say "     Your internal monologue overwhelms any restraint and you rush over to the gun, grabbing it excitedly. Your paws close around it naturally, finding it to be a perfect fit despite the altered shape of your hands and digits. You start breathing fast and heavy, a rush of wild excitement making you giggle a little. It just feels so good to finally have a gun in your hands.";
					say "     With caution forgotten, you fire several shots, first into the air and then into various targets. You're soon picking off smaller and more distant objects as you quickly get a feel for the rifle and find your aim with it. You giggle again, sling the rifle over your shoulder and start searching the rest of the scattered gear, gathering up a bunch of it[if Player is female]. You even make yourself a ragged camo bikini from some of the scraps around you[else]. You even pull on a pair of torn camo pants that are now little more than ragged shorts[end if]. Thus equipped, you head off into the city as another crazy, gun-totting bunny.";
			else:
				if pistol is owned:
					say "     Your thoughts gradually become more confused and jumbled as your mind slips away. The grip of your pistol in your paw-glove hands is a strong comfort, providing some focus for you. You end up wandering the city for a while before coming across an armed pack of mutants. They're a disjointed jumble of creatures like yourself and have banded together for mutual protection and fun. Fortunately, you've come across them while camping rather than roving for supplies or mates, so you're able to meet with them. And having a gun certainly helps, providing enough intimidation for them to see you as more than another victim. You join up with their ragtag band, becoming another bandit in their pack.";
					say "     You stick with them for a while, enjoying the life of taking what you want from weaker foes, be it supplies, sex or both. The numbers in this band fluctuates often, members being lost when other creatures steal them as makes or killed during raids, but others are recruited as well. The bandits fall under particularly hard times when the military comes through, as they're better equipped and trained to deal with your untrained tactics. Add to that the removal of the weaker, semi-sane citizens who made for common prey or recruits and the group dwindles.";
					say "     Thankfully though, you and a few others make it through this period of hard times, finally able to make an escape past the military lines a few weeks after the military campaign. Out of the city, your band roams the countryside, attacking lone travelers and small towns, taking supplies and leaving infected citizens and pregnancies in your wake. As before, you pick up and lose some along the way, eventually moving you up to being [if level of Player >= 10]in charge[else if level of Player >= 5]the second in command[else]a respected senior of the group[end if].";
				else:
					say "     Your thoughts gradually become more confused and jumbled as your mind slips away. You wander off into the city, feeling that something is missing though you know not what. You get caught by a band of roaming bandits, a medley of half-infected mutants who do what they please. You end up robbed, fucked and are left stripped of all supplies and dignity as you're used repeatedly.";
					say "     Vowing vengeance, you stalk the group, always keeping tabs on them from a safe distance. Revenge is now foremost in your previously confused mind, providing a kind of hate-fueled focus. But you also know there's little you can do against their strength and numbers. If only you had a gun, your mind tells you as you watch one of them on a half-hearted patrol while the others make camp in some ruins for the evening. And with that thought, you spring into action, taking down the lone guard to get his gun.";
					say "     Once you've got his rifle, probably taken from a fallen soldier, things change and you're the hunter and they're the hunted. You harry and harass the group over the course the next several days, disrupting their attempts to do anything and picking members off one or two at a time. The whole thing is very exciting for you and sometimes you can't help having some extra fun with a bandit you capture. Eventually, the whole group is either dead, captured or given over to horny monsters for them to remake into their playthings.";
					say "     After this, you have no real idea what to do with yourself, your mind and your past gone and your new goal over. Eventually, some time after the military rescue is over, you leave the city. You become a wandering gunman, hiring yourself out to towns to deal with mutant bandits or just to someone looking for some revenge against raiders. You get paid in money, supplies, ammo or sex - though the last two for a preference.";
		else:
			if Player is pure:
				say "     When the soldiers come through to rescue survivors, you're teased a bit about your new bunny form, but manage to take it in stride[if pistol is owned]. Having to turn over your pistol though when you get to the processing camp? Now that was tough. It took quite the effort of will, even with armed soldiers there, to leave it in their possession[end if]. The scientists who examine you show little interest in your bunny features, falsely accepting that you've only been subject to minor changes to get those ears, tail and strange paw-gloves.";
				if HP of Doctor Matt >= 12 and HP of Doctor Matt < 100:
					say "     You instead choose to talk to some of the soldiers. Now, while most are understandably standoffish, you do find a couple who're willing to talk about guns with you. As you talk with them, it seems you knew more about guns than you'd have thought. Your mind convinces you that you must've picked this stuff up here and there from stuff you've read or watched in the past. Your new gun buddies arrange a little practice fun, letting you get in on a shooting contest at the range they've set up. And while you don't remember having used one of their rifles before, you pick it up very quickly and are soon [if level of Player >= 15]shooting almost on par with the best of them[else if level of Player >= 8]scoring at about their average[else]scoring nearly as well as they are[end if].";
					say "     Having impressed your new friends, they arrange another session a few days later. You fare a little better this second time, quickly getting back to your previous level, letting you score much better overall across all the targets. It seems you have an unexpected spectator though, the common soldiers surprised to find an officer standing quietly among the range staff. Now whether he got wind of it in advance or if someone spotted an infected detainee on the range this time, you never do find out.";
					say "     But the important part is, after giving the soldiers a proper scare for breaking regs, you're taken aside and given a fresh review by a different team of clearly military scientists and psychologists. They are more extensive in their testing, focusing more on your physical and mental attributes as well as going over the material relating to Dr. Matt. It's clear the military consider the good doctor a very important asset and when you sit back down with the officer (of suspiciously unclear rank, you can't help but note), you're tapped to be part of a team to continue assisting him. And while part of you would like to just leave the events in the city behind, the lure of excitement, money and access to military-grade weapons ends up too tempting. You accept the offer.";
					say "     From that point, your processing is expedited and you join a few others, predominantly veteran soldiers unfortunate enough to become partially or fully infected, but were both disciplined and lucky enough to avoid succumbing before being retrieved. And while your rabbit-tinged infection isn't as overtly impressive as the big wolves, felines and bears some of them have become, you don't back down. It also helps that one of the group, a tiger-headed staff sergeant tells the others of a run-in he had with a bunny girl not unlike you. She was pink though, adding insult to injury, and the bouncy gunbunny took out half his squad before a lucky shot did her in. A consummate professional, he doesn't let that experience taint his opinion of you. If anything, he's you're first true friend in the group, accepting right away that you belong on the team. The others come along soon enough, once they get a chance to see your speed, mobility and shooting prowess in action when you start training as a unit.";
					say "     The training is difficult - you've missing a lot of the basic training the others have - but your tiger friend is always there to help you through it. And while he may have been one of the most senior ranking members, ranks don't matter among your group. Your special unit is outside the normal military chain of command, so many of the normal regs don't apply either. So a few months down the road, when the two of you start fucking, there's only the normal teasing that comes from comradery[if Player is impreg_ok]. And while having you pregnant does put you out of action periodically, your tiger-bunny offspring make good recruits for other military projects[end if].";
				else if hospquest < 14:
					say "     You feel a little on edge the whole time you're at the camp, not at all at ease with sitting around and waiting. Thankfully the disinterest of the scientists works in your favor and your particular infection provides no particular delay with you being cleared and released. You try a few jobs, but none of them seem to work for you. Finding you crave some excitement, you sign up with Zephyr, joining a [']task squad['] of theirs - basically corporate soldiers sent in to do stuff for the company.";
					say "     Your first few missions are easy enough, guarding equipment shipments and escorting personnel around semi-safe zones. You finally get some proper action about a month after joining up when some centaurs get the idea that feel you're passing through their territory and attack.";
					if level of Player >= 16:
						say "     While they're tough, you're able to keep ahead of them, holding the charge at bay for a while thanks to your fast movements and lots of well-aimed bullets. This buys time for an engineer you're escorting to open the security crate they brought, pulling a strange energy weapon from it. Seeing how you're by far the most effective at dealing with the centaur forces, she pushes it into your hands.";
						say "     A rush of excitement runs through you and you can't help but giggle a little. This gun just feels so right in your paw-hands that intuitively know how you power it up and charge back into the fray with renewed vigor. You end up leading a counterattack by your remaining squad-mates and send the centaurs scattering after a few volleys of searing energy take down the lead equines. You and your squad chase down a few stragglers to make sure they know not to mess with Zephyr again before returning to secure the transport. Once it's all said and done, you get a nice bonus out of it as well as the gratitude of the engineer.";
						say "     And while you have to reluctantly return to prototype energy rifle, the tech arranges to get you a new one of your very own a couple months later - the first of the production models. You thank her heartily for it with a big kiss that turns into a romp right there in her lab[if Player is male], leaving her with a bunny bun in the oven[end if]. Your squad ends up working with her regularly, always getting the newest tech from her division to play with. And your budding relationship with her continues as well, soon becoming a couple and moving in together.";
					else if level of Player >= 8:
						say "     While they're tough, you're able to slow their charge thanks to your fast movements and lots of bullets. In the end, your squad is forced to fall back, leaving the case you were escorting to get trampled, but at least managing to carry off the engineer while you provide cover fire for the remains of your team. And while the higher-ups are upset at the lost cargo, at least the tech who developed it was kept safe. You're even given a small bonus for guarding everyone's retreat. You use it to treat the others in the squad to a night out on the town, which ends in some hot and heavy fun with them back at your place[if Player is male or player is impreg_ok]. This romp results in quite a few bunny babies by the time it's all said and done[end if].";
					else:
						say "     They prove to be quite tough and you're only able to slow a few from the charge thanks to your fast movements and wild sprays of bullets. While it does little to stop them, you're able to keep yourself from being overrun. The rest of the squad, the engineer and the equipment you were escorting all end up being lost though, with you as the sole survivor able to get away. The higher-ups are none to pleased with the failed mission and you get chewed out about it repeatedly over the next several days. The execs, always money-focused, decide to only give you half-pay for the mission and reassign you to another squad. In the end, the fault is placed on your fallen squad-mates - something which rankles you badly, but you can't object too strongly about it or face punishment yourself.";
						say "     On your new team, you're seen as a bit of a bad luck charm, but thankfully things never go quite so bad as that one mission. You'd leave, but the excitement and the pay are enough to keep you there. It's a living.";
				else:
					say "     Thankfully, Dr. Mouse is able to see beyond your surface appearance and is well aware of your true capabilities. As arranged in advance, he gets in contact with you and gets you working for him once again. He pays you well for your services, both in money and in nanite improvements. You [if level of Player >= 16]are put in charge of his acquisition teams and often going into the field with these infected mercenary forces[else]are put in charge of one of his acquisition teams, leading his infected mercenary force[end if]. Their typical missions involve live sample acquisition of mutant creatures, though the good doctor's not above some industrial espionage or sabotage to ensure that his expertise always remains both extremely desirable and valuable. Working for him satisfies that deep-down craving you have for excitement and gunplay.";
			else:
				say "     You bounce around from job to job for a while, not really finding anything that quite works for you. Craving a bit of excitement, you answer a posting calling for citizens willing to perform guard duty around your town. While little more than a half-assed militia meant to help protect against attacks from roving mutants, your short training session convinces you right away that you made the right call joining up. There was just something particularly satisfying about being given a rifle and having your first live-fire target practice. You excel on the range and later while on duty.";
				say "     While this guard duty is only part-time and shifts are generally uneventful, it does provide enough excitement and opportunities to do some shooting to satisfy your cravings. Having an opportunity to scratch your itchy trigger finger also helps you better focus on doing your regular job, finally allowing you to keep one for more than a couple of months. While it's nothing special, just an office job, you are able to make a living at it until something better comes along. Having made friends with the others on the guard militia, you get to know the local gun dealer and eventually start working for him. In a world where sometimes [']might makes right['], being the one that sells the guns and ammo is a very lucrative business.";

Gunbunny ends here.
