Version 1 of Spidertaur Female by Wahn begins here.
[Version 1 - New Female Variant]

"Adds a female variant of the Spidertaur to Flexible Survival"

Section 1 - Creature Responses

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Spidertaur";
	add "Spidertaur Female" to infections of HybridList;
	add "Spidertaur Female" to infections of TaurList;
	add "Spidertaur Female" to infections of MythologicalList;
	add "Spidertaur Female" to infections of FemaleList;
	add "Spidertaur Female" to infections of InternalCockList;
	add "Spidertaur Female" to infections of OviImpregnatorList;
	now Name entry is "Spidertaur Female";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a handsome human female, with sharp features and long white hair to frame it";
	now body entry is "a nicely muscled human female's from the waist up, with everything below shaped like a giant spider, with eight long legs and a spider's abdomen covered in gleaming black chitin. Your genitals are hidden beneath protective chitin plates at the front of your spider body";
	now skin entry is "night-black";
	now tail entry is "Nestled in your backside are several spinnerets, ready to spin web at a moment's notice.";
	now cock entry is "armor-protected";
	now face change entry is "it takes on the sharp features of a handsome human male and you grow pale-white hair to hang down over your shoulders";
	now body change entry is "you fall to the ground, your lower torso flowing and bulging with creaks and pops, swelling into a bulging spider's abdomen. It sprouts chitinous armor and then eight legs, giving you an arachnid shape. Your upper body becomes human in the meantime, taking on the form of a nicely muscled man's chest with defined abs and strong arms.";
	now skin change entry is "all blemishes and hairs vanish, leaving you with flawless night-black skin";
	now ass change entry is "intricate glands swell within it, developing into spinnerets; you can even feel a bit of webbing ready to be spun";
	now cock change entry is "it shifts and lengthens, the base roughening and sprouting black plates of armor that reach up to conceal and cover it";
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 16;
	now per entry is 22;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;                 [ How many HP has the monster got? ]
	now lev entry is 12;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";        [ Case sensitive]
	now Cock Count entry is 0;          [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 0;
	now Ball Size entry is 0;           [ Size of balls ]
	now Nipple Count entry is 2;        [ Number of nipples. ]
	now Breast Size entry is 4;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;          [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 16;
	now Cunt Tightness entry is 4; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "spidertaur hair"; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 75;         [ Chance of loot dropping 0-100 ]
	now scale entry is 4;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strange[or]hybrid[or]fantastic[at random]";
	now type entry is "[one of]arachnid[or]spider-person[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Spidertaur";
	now Name entry is "Spidertaur Female"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 4; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 8; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "they take on the appearance of an attractive human with almost porcelain-pale skin "; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "an attractive human with [Head Color of Player] skin"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "human"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is "pale"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 20; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "back-length"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "purple"; [one word color descriptor]
	now Eye Adjective entry is "slitted"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 5; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "forked"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 6; [length in inches]
	now Torso Change entry is "it becomes that of a regular human, if somewhat slender in build. Pale, almost porcelain-like skin quickly spreads over it"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "that of a regular human and somewhat slender in build"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "human"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "pale"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "taffy"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "pale skin spreads down over them from your shoulders, all the way to the tips of now slender human fingers"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "about the size of a regular human's, with [Arms Color of Player] skin covering the whole length up to the tips of your slender fingers"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "pale"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "octapedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they contort and flex, dividing into four, then eight separate limbs. Growing quickly to become long and spindly, the skin on all of your legs hardens into plates of midnight-black chitin, with all eight of them ending in sharp points as dangerous as short swords"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "plated in hard chitin plates, [Legs Color of Player] with spiky protrusions and ending in sharp points as dangerous as short swords"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "chitin-plated"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "midnight-black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes a bulging insectile abdomen, soon covered in quickly hardening black plates of chitin"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "and bulging insectile abdomen plated in glistening-black plates of curved chitin"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "chitinous";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "midnight-black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 5; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 20; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "glistening-black"; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is "[one of]spidertaur[or]nonhuman[or]ridged[at random]"; [one word adjective: avian/canine/...]
	now Cock Change entry is "it takes on a nonhuman shape, with a pointy tip as well as a series of ridges on the underside"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip as well as a series of ridges on the underside, promising a receiving partner a wild ride"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is "dark almond"; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a snug, leathery sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 1;
	now Cunt Depth entry is 16;
	now Cunt Tightness entry is 3; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is "[one of]spidertaur[or]nonhuman[or]protected[at random]"; [one word adjective: avian/canine/...]
	now Cunt Change entry is "it withdraws a little into your body, with chitinous plates forming around it in a little shield. With a little concentration, you can pull them aside to reveal the delicate folds of your nether lips"; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and protected by chitinous armor plates, with the delicate folds of your nether lips and an averagely sized clit hidden beneath"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is "glistening-black"; [one word color descriptor]
	now Clit Size entry is 3; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]


Section 3 - Items

Section 4 - NPC

Section 5 - Endings

[
when play ends:
	if BodyName of Player is "Spidertaur Female":
		if humanity of Player < 10:
			if Player is male:
				say "...";
			else if Player is female and "Sterile" is not listed in feats of Player:
				say "...";
			else:
				say "...";
		else:
			say "...";
]

Spidertaur Female ends here.
