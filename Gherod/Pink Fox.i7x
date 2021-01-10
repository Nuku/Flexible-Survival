Version 1 of Pink Fox by Gherod begins here.

"Adds the Pink Fox infection to work together with the Cherry NPC."

[Version 1 - File created - Gherod]

Section 1 - Lootlist

to say GenerateTrophyList_Pink_Fox:
	say "Trophylist";
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	[if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "hellfire demon horn shard" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "soda" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "obsidian coin" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "libido pill" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";]

Section 2 - Creature Responses

to say PinkFox wins:
	say "DefeatScenes";

to say PinkFox loses:
	say "WinScenes";

to say PinkFox Desc:
	say "Description";

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Pink Fox";
	add "Pink Fox" to infections of VulpineList;
	add "Pink Fox" to infections of FurryList;
	add "Pink Fox" to infections of HermList;
	add "Pink Fox" to infections of TaperedCockList;
	add "Pink Fox" to infections of KnottedCockList;
	add "Pink Fox" to infections of SheathedCockList;
	add "Pink Fox" to infections of BipedalList;
	add "Pink Fox" to infections of TailList;
	now Name entry is "Pink Fox";
	now enemy title entry is "Pink Fox"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "";
	now defeated entry is "[PinkFox loses]";
	now victory entry is "[PinkFox wins]";
	now desc entry is "[PinkFox Desc]";
	now face entry is "short muzzle filled with sharp teeth set below deep brilliant rose red eyes and pointed fox-like ears, all giving you a very elegant and alluring look";
	now body entry is "tall and fit, with ample curves and powerful thighs. You have fox-like digitigrade legs that end in sharp claws";
	now skin entry is "fluffy pink pearl fur covering your whole body, gaining a stronger bubblegum pink tone at the extremeties of your limbs"; [ format as "You have (your text) skin"]
	now tail entry is "You have powerful, plump glutes, with a long fluffy tail that swings back and forth behind you, changing from pink pearl fur to a stronger pink towards the tip"; [ write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canid[or]vulpine[or]knotted[or]pointed[at random]"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "your mouth pushes out into a slim muzzle. Your ears taper to points and seem to stretch out above your head as your face begins to reshape itself into the narrow, sexy visage of a fox, your slim, new muzzle full of sharp teeth and your bright, shining eyes seeing the world around you in an entirely new and more sexual light"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "you find yourself falling to the floor, your muscles twitching as your body reshapes into a slimmer and more streamlined form. Your feet shift and compress into small, dainty vulpine paws, even as your hands seem to narrow, and your fingers grow closer together as soft claws push their way out of your new, slightly paw-like hands"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "a strange warmth begins to spread across your body, and a soft, downy layer of pure, pearl pink fur begins to push out of your skin. Longer, thicker fur begins to grow in, even as you begin to stroke your soft, rosy white undercoat, until you have a full pelt of pink fox fur"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your rear seems to tighten, then fill into a sexier ample shape as a soft tail begins to push its way out of your body. As your new appendage stretches out behind your body, you swish it experimentally as soft, puffy, pink pearl fur covers your new vulpine brushtail"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it tapers to a soft point, your skin distending slightly at the base as a sheath begins to form around your increasingly canid cock, and you find yourself groaning slightly as the base of your cock bulges out as a knot forms, then slips into its new waiting sheath"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 21;
	now dex entry is 24;
	now sta entry is 19;
	now per entry is 18;
	now int entry is 19;
	now cha entry is 22;
	now sex entry is "Both";
	now HP entry is 96;
	now lev entry is 14;
	now wdam entry is 19;
	now area entry is "";         [ Case sensitive]
	now Cock Count entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 9;
	now Ball Size entry is 3;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples. ]
	now Breast Size entry is 8;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 3; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 80;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;          [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "pink fox milk";
	now CumItem entry is "pink fox cum";
	now TrophyFunction entry is "[GenerateTrophyList_Pink_Fox]";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]athletic[or]agile[or]furred[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "vulpine";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 2;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Section 4 - Items

Table of Game Objects (continued)
name	desc	weight	object
"pink fox fur"	"A pink fluff of fur from a pink fox."	0	pink fox fur

pink fox fur is a grab object.
It is temporary.
Usedesc of pink fox fur is "[pink fox fur use]";

to say pink fox fur use:
	say "Holding the fur between your palms, you stroke over it, carefully. Strangely, the fluff disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin. It seems to cause some sort of reaction with the nanites in your system...";
	infect "Pink Fox";

instead of sniffing pink fox fur:
	say "It smells sweet, like cherry blossoms.";

[---]

Table of Game Objects (continued)
name	desc	weight	object
"pink fox cum"	"The white, gooey seed of one of your past lovers. Comes inside a plastic water bottle that could be mistaken for some sort of buttermilk, if someone hadn't written 'Pink Fox' across the label. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	pink fox cum

pink fox cum is a grab object.
pink fox cum is cum.
Usedesc of pink fox cum is "[pink fox cum use]";

to say pink fox cum use:
	say "     The warm, sticky liquid tastes very sweet as you drink it. You feel the warm seed going down your throat, leaving the delightful sensation of a tasty and hot beverage. It kind of leaves you craving for more...";
	PlayerDrink 5;
	SanLoss 5;
	increase Libido of Player by 10;
	if "Iron Stomach" is not listed in Feats of Player:
		say "     It seems to cause a reaction with the nanites in your system...";
		infect "Pink Fox";

instead of sniffing pink fox cum:
	say "It smells a bit like you would expect cum to smell, but there is something different about it that you cannot identify.";

[---]

Table of Game Objects (continued)
name	desc	weight	object
"pink fox milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Pink Fox Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	pink fox milk

pink fox milk is a grab object.
pink fox milk is milky.
Purified of pink fox milk is "distilled milk".
Usedesc of pink fox milk is "[pink fox milk use]";

to say pink fox milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the pink fox milk run over your tongue and down your throat. Tastes rich and oddly sweet. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;
	if "Iron Stomach" is not listed in Feats of Player:
		say "     It seems to cause a raction with the nanites in your system...";
		infect "Pink Fox";

instead of sniffing pink fox milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Section 5 - Endings

Pink Fox ends here.
