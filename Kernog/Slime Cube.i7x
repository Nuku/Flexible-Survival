Version 1 of Slime Cube by Kernog begins here.

"Adds a man-eating plant creature to Flexible Survival's Wandering Monsters table. Classic monster, with vore-themed loss scene."

Section 1 - Creature Responses

when play begins:
	add { "Slime Cube" } to infections of hermaphrodite;

[ Slime falls upon you while you explore the island. Big cube of translucent material, which reminds you of the goo girl]
to say slimeCubeDesc:
	if inasituation is false:
		say "     A big and gooey translucent cube stands in front of you. Despite making you remember the goo girls of the city, its body is completely featureless, save the few boney remnants of previous victims floating inside. It wobbles slowly in your direction, and it seems it will relentlessly do so until it absorbs you into its body.";
	else:
		say ""; [dealt with in the event]

to say beatSlimeCube:
	if inasituation is false:
		say "     Mortally wounded, the slime loses its coherency, and dissolves into a pile of smelly goop.";
	else: [event]
		say ""; [dealt with at the event source]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Slime Cube";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The slime charges ahead and rams into you. You reel back under the impact.[or]The cube fires a slime ball which lands right into your chest.[or].[at random]";
	now defeated entry is "[beatSlimeCube]";
	now victory entry is "[slimeCubeVoreScene]";
	now desc entry is "[slimeCubeDesc]";
	now face entry is "that of a pretty human's, yet with a curiously disquieting smile"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "human-like, but melded together just at your thighs, flowing together into a large and bulbous base of [skin of Player] flesh"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "[one of]jellied[or]gelatin-like[or]translucent[at random] [if goocolor is 1]blue[else if goocolor is 2]purple[else]green[end if]"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "you can feel your face reshaping into rather pretty, human proportions. An urge overtakes you and you smile, and never stop"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "[googirlbodychange]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "[googirlskinchange]"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you get an odd feeling, but see no change"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your [cock size desc of Player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 8;
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 10;
	now cha entry is 5;
	now sex entry is "Both";
	now HP entry is 50;
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Island"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 20; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 20; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "glob of goo"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]flowing[or]altered[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "gelatinous"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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



Section 4 - Vore Bound state

[Plays on loss]
to say slimeCubeVoreScene:
	if fightoutcome is 20:
		say "     Like a giant die, the slime rolls on the ground until it reaches your knocked-out force, and slams down on you. Your body pops into the gelatinous body, and slowly floats towards its center. The inside of the slime feels hot on your skin, and you understand that the creature aims to digest you slowly, after making sure that you oppose no more resistance.";
	if fightoutcome is 22:
		say "     You welcome the slime as it rolls in a die-like fashion upon you, and slams down on your waiting body. Your body pops into the gelatinous body, and slowly floats towards its center. The inside of the slime feels hot on your skin, and you understand that the creature aims to digest you slowly, after making sure that you oppose no more resistance.";
	say "     The slime washes around your body as it attempts to keep you stimulated and placated. [if Cunt Count of Player > 1]It slowly pushes past each of your pussy lips, then suddenly stretches inside, forming thick, slimy limbs before relentlessly pound each of your wombs. [else if Player is female]It slowly pushes past your pussy lips, then suddenly stretches inside, forming a thick, slimy limb before relentlessly pounding your womb. [end if][if Cock Count of Player > 1]An ever-changing flow wraps around each of your [cockname of Player] shafts, keeping them hard and massaged, experimentally focusing their efforts on your [Cock Count of Player] glans. [else if Player is male]An ever-changing flow wraps around your [cockname of Player] shaft, keeping it hard and massaged, experimentally focusing their efforts on your glans. [end if]The slime does not forget to relentlessly tease every part of your body, including your nipples and your [Nipple Count of Player] [bodyname of Player] breasts[if anallevel > 1], and flowing into your ass[end if].";
	say "     Time is on the essence. If you do not struggle out in time, these intense sensations may be the last you will ever experience.";
	WaitLineBreak;
	slimeCubeVore;

to slimeCubeVore:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     The sexual stimulation of the slime pushes you past your limits. You cum hard, while the slime patiently absorbs your discharge, as an appetizer. You feel your life force fading away and your mind blank out further, as you come back from your pleasure height.";
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if struggleatt is 1, now struggleatt is 0;
			if struggleatt > 1, decrease struggleatt by 2;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
		if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
			increase hunger of Player by 1;
			increase thirst of Player by 2;
		else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
			increase thirst of Player by 1;
		say "     You float in the middle of a translucent slime. The gelatinous material slowly flows around your body, relentlessly penetrating and stimulating you. Despite its viscosity, you are certain that, with some effort, you may 'swim' your way out. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [maneatingPlantStruggleBar][line break][run paragraph on]";
		if humanity of Player < 1:
			now voreloss is true;
			now Trixieexit is 1;
			now bodyname of Player is "Slime Cube";
			end the story saying "Digested by a slime.";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 3:
					say "     You desperately wiggle your limbs and eventually make some progress towards the slime's surface.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll; [aka humanity loss]
					wait for any key;
				else if struggleatt < 5:
					say "     You can finally feel your fingers stretch the outer layer of the slime. Liberty is only a few strokes away.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll; [aka humanity loss]
					wait for any key;
				else:
					say "     Your arms eventually escape the confines of the slime. The firmer outer skin of the slime acts against it, and gives you additional leeway to push yourself out. You instinctively run as fast as you can away from the much slower slime.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     Lost in the sensations procured by the slime, you contort your body inside your living prison, a smile on your face.";
					increase lustatt by 14 + (lustadjust * 4);
				else:
					say "     As the slime amped up its ministrations, you greet your teeth and decide to ride the wave of pleasure which wrecks your body.";
					increase lustatt by 7 + (lustadjust * 2);
				LineBreak;
				wyvhumanityroll;
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					SanBoost 3;
					now boundrecover is false;
				else:
					say "     You take a moment to get your bearings and focus on deciding in which direction you should keep digging your way.";
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wyvhumanityroll;
				wait for any key;
				next;
			say "Invalid action.";

to say maneatingPlantStruggleBar:
	say "< [bracket][if struggleatt is 0]-----[else if struggleatt is 1]----[bold type]X[roman type][else if struggleatt is 2]---[bold type]XX[roman type][else if struggleatt is 3]--[bold type]XXX[roman type][else]-[bold type]XXXX[roman type][end if][close bracket]";


Section 4 - Endings

when play ends:
	if bodyname of Player is "Slime Cube":
		say "     The last of your consciousness fades away. You are already comatose when the hotness upon your skin turns into a burning sensation and your body dissolves piece by piece, until only your bones remain, to be digested for the weeks to come.";


Slime Cube ends here.
