Version 1 of Golden Retriever Male Infection by Luneth begins here.
[Version 1 - New Female Variant]

"Adds a male variant of the Golden Retriever to Flexible Survival"

Section 1 - Creature Responses


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is true;
	now Species Name entry is "Golden Retriever";
	add "Golden Retriever Male" to infections of CanineList;
	add "Golden Retriever Male" to infections of FurryList;
	add "Golden Retriever Male" to infections of NatureList;
	add "Golden Retriever Male" to infections of MaleList;
	add "Golden Retriever Male" to infections of TaperedCockList;
	add "Golden Retriever Male" to infections of KnottedCockList;
	add "Golden Retriever Male" to infections of SheathedCockList;
	add "Golden Retriever Male" to infections of BipedalList;
	add "Golden Retriever Male" to infections of TailList;
	now Name entry is "Golden Retriever Male";
	now enemy title entry is "";
	now enemy Name entry is "Landon";
	now enemy type entry is 1; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a golden retriever, with large folded ears atop your head and warm brown eyes. Your muzzle has a friendly appearance, giving off the effect that you're constantly smiling.";
	now body entry is "that of a canine, with an adonis like torso with equally thick arms and digitigrade legs that end in large paws. Your hands have also become somewhat paw-like, while they have maintained some dexterity, it is clear they have become very canine, with short but slender digits topped with small claws";
	now skin entry is "a thick, shiny coat of golden fur over your";
	now tail entry is "Your tail is that of a golden retriever, long and covered with soft golden fur. It wags happily constantly without your input unless you make a conscious effort to stop it.";
	now cock entry is "[one of]canine[or]knotted[or]sheathed[at random]";
	now face change entry is "you feel an immense pressure build in your head, only to have it release moments later as your face pushes out into a canine muzzle. You are distracted from your changing head when your ears begin to ring painfully, you realize why when you feel them shifting to the top of your head while the rest of your face changes to match a masculine golden retriever almost exactly";
	now body change entry is "you stumble and fall to all fours, your legs twisting to a digitigrade configuration with canine paws. The changes continue up your body like a wave, leaving you with a muscular figure and paw-like hands";
	now skin change entry is "as a thick coat of golden fur covers your entire body";
	now ass change entry is "powerful muscles overtake it leaving you with a meaty bubble butt that appears to be a cross between a human and a canine. Meanwhile you feel nearby muscles working without your input, looking backwards you find they are wagging your growing golden retriever tail happily, regardless of your opinion";
	now cock change entry is "your entire manhood is consumed by a growing golden furred sheath, once covered you feel an unusual pressure while it changes into that of a male golden retriever";
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 16;
	now per entry is 22;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;                 [ How many HP has the monster got? ]
	now lev entry is 12;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";        [ Case sensitive]
	now Cock Count entry is 1;          [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 9;
	now Ball Size entry is 5;           [ Size of balls ]
	now Nipple Count entry is 2;        [ Number of nipples. ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;          [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 75;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "strong";
	now type entry is "canine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Golden Retriever";
	now Name entry is "Golden Retriever Male"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 7; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "you feel an immense pressure build in your head, only to have it release moments later as your face [if HeadName of Player is listed in infections of CanineList or HeadName of Player is listed in infections of VulpineList]and muzzle remain mostly unchanged[else if HeadName of Player is listed in infections of EquineList]shortens down to fit a canine like muzzle[else if HeadName of Player is listed in infections of AvianList or HeadName of Player is listed in infections of AvianPredList]alters forcing your beak to become flexible, stretching and rounding out into a canine shaped muzzle[else]slowly pushes out into a canine shaped muzzle[end if]. Your tongue [if tongue length of player < 6]quickly begins to stretch out [else if tongue length of player > 8]quickly begins to shorten [else]doesn't change in length, but changes [end if]into that of a typical slobbering golden retriever. You are distracted from your changing face when your ears begin to ring painfully, you realize why when you feel them shifting to the top of your head, before elongating and falling limply to the sides of your head. [if player is conformist]Glancing at your eyes, you see them start to shift in color, becoming a warm shade of honey-brown. [end if] Your whole head begins to itch uncontrollably just underneath the skin, before you know it [if Player is Headfurred]the [Head Color of player]fur you already have on your head begins to turn a golden-yellow color[else if Player is Headfeathered]the [Head Color of player] feathers on your head begin to merge and turn a golden-yellow color[else if Player is Headscaled]the [Head Color of player] scales on your head begin to push forward into fur and turn a golden-yellow color[else]golden-yellow fur begins to sprout up covering your entire head[end if]. Once you regain control of your faculties, you pull out your small mirror and inspect yourself finding that your whole head has taken on the appearance of a [Gender Adjective of player] golden retriever almost exactly"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a typical golden retriever, with large folded ears atop your head. Your face has a friendly appearance, giving off the effect that you're constantly smiling, complete with a moist black nose at the end of your muzzle"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "golden"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "blonde"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "honey-brown"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 5; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 4; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "your chest and back begin to itch intensely just under the skin, [if Player is Torsofurred]the [Torso Color of player]fur you already have on your torso begins to turn a golden-yellow color[else if Player is Torsofeathered]the [Torso Color of player] feathers on your torso begin to merge and turn a golden-yellow color[else if Player is Torsoscaled]the [Torso Color of player] scales on your torso begin to push forward into fur and turn a golden-yellow color[else]golden-yellow fur begins to sprout all over both your [Torso Color of player] chest and back[end if] becoming much more canine-like. Looking down at your nipples you notice that they are changing as well, from [Nipple Shape of player] [Nipple Color of player] color to round ones of dark-brown shade"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "that of a [Torso Adjective of player], that is covered in [Torso Color of player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player], with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "golden"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "dark-brown"; [one word color descriptor]
	now Nipple Shape entry is "round"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "you notice a slight increase in their size. Looking down at your arms you see [if Player is Armsfurred]the [Arms Color of player]fur you already have covering your arms begin to turn a golden-yellow color[else if Player is Armsfeathered]the [Arms Color of player] feathers covering your arms begin to merge and turn a golden-yellow color[else if Player is Armsscaled]the [Arms Color of player] scales covering your arms begin to push forward into fur and turn a golden-yellow color[else]golden-yellow fur begins to sprout all over both of your [Arms Color of player] arms[end if]. Looking down at your hands you see that they are changing as well, becoming somewhat paw-like, while they have maintained most of their dexterity, it is clear they have become very canine, with short but slender digits topped with small claws and slight webbing between the base of each digit";
	[partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "that of a powerful canine, with thick [Arms Color of player]arms that end in paw-like hands. While they have maintained some dexterity, they now have short but slender digits topped with small black claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "golden"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "you stumble and fall to the ground on all fours, your legs begin to twist and pop as they take on a new shape. While it isn't painful, you can still feel the movement and pressure of the shift. Looking back, you see that your legs are twisting to a digitigrade configuration with large canine paws. The final change that happens is [if Player is Legsfurred]the [Legs Color of player]fur you already have covering your legs begin to turn a golden-yellow color[else if Player is Legsfeathered]the [Legs Color of player] feathers covering your legs begin to merge and turn a golden-yellow color[else if Player is Legsscaled]the [Legs Color of player] scales covering your legs begin to push forward into fur and turn a golden-yellow color[else]golden-yellow fur begins to sprout all over both of your [Legs Color of player] legs[end if]. Your toes tickles a bit as a blunt, black claw emerges from each digit"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "Looking down, you see that your [Legs Color of player] legs have twisted to a digitigrade configuration with large canine paws, each toe having a black claw growing from it"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "golden"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes more prominent and meaty. Looking back as best you can, you see [if Player is Assfurred]the [Ass Color of player]fur you already have covering your ass begin to turn a golden-yellow color[else if Player is Assfeathered]the [Ass Color of player] feathers covering your ass begin to merge and turn a golden-yellow color[else if Player is Assscaled]the [Ass Color of player] scales covering your ass begin to push forward into fur and turn a golden-yellow color[else]golden-yellow fur begins to sprout all over your [Ass Color of player] ass[end if]"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered in coarse [Ass Color of player] fur."; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]"]
	now Ass Skin Adjective entry is "furred";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "golden"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in flowing golden fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is "mid-length tail with flowing [Tail Color of Player] fur"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "golden"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 6; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 1; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "dark-maroon"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Adjective entry is "[one of]retriever[or]canine[or]knotted[at random]"; [one word adjective: avian/canine/...]
	now Cock Change entry is "it takes on a reddish scarlet color and canine shape, complete with a tapered tip, knot at the base and a sheath to protect it when not aroused"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a tapered tip. There is a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is "scarlet-red"; [one word color descriptor]
	now Ball Count entry is 2; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a snug, furry sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is "[one of]retriever[or]canine[at random]"; [one word adjective: avian/canine/...]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is "dark-maroon"; [one word color descriptor]
	now Clit Size entry is 3; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Items

Golden Retriever Male Infection ends here.
