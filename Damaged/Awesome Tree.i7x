Version 7 of Awesome Tree by Damaged begins here.
[ Version 7.1 - Relocated to Urban Forest area. ]

"Adds a Awesome Tree to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

Section 2 - Creature Insertion

Awesome_sex is a number that varies.
Awesome_boredom is a number that varies.
Awesome_counter is a number that varies.
Awesome_forcesex is a number that varies.
Awesome_noreward is a number that varies.
to say infect:
	infect;

to say Give Awesome:
	if a random number between 1 and 100 > 40:
		ItemGain awesome fruit by 1;
	if a random number between 1 and 100 > 40:
		ItemGain awesomer fruit by 1;
	if a random number between 1 and 100 > 85:
		ItemGain awesomest fruit by 1;

to say awesome attack:
	if Awesome_boredom is 4:
		say "The tree seems to vibrate. Whether your fervent attacks or the breeze caused it, a branch falls and thumps you on the arm. You notice some fruit on the branch, and without hesitation you put one in your pocket. As you look at the remaining two, you feel a sudden hunger and eat them uncontrollably. [infect]The world seems to go dark as you finish the second. Waking up, you can't see any trace of the tree, but you feel pretty awesome nonetheless. You pat your bag where you put the fruit, and smile at the thought that you still have some awesomeness in store.";
		now hunger of Player is 0;
		now thirst of Player is 0;
		if a random number between 1 and 100 > 90:
			if awesome bat is not owned:
				ItemGain awesome bat by 1;
		say "[Give Awesome][combat abort]";
		now fightoutcome is 20;
	else:
		say "[one of]While you try and attack the tree, you trip over a root that you hadn't seen[or]You stop for a moment, and as you ponder just how awesome the tree really is, suddenly your leg cramps[at random].";
		now monsterHP is 60;
		increase Awesome_boredom by 1;

to say awesome defeat:
	if Awesome_noreward > 3:
		say "You know you hesitated, you could not bring yourself to strike down another of the trees.";
		if awesome bat is owned:
			if awesome bat is weapon object of Player:
				try using awesome bat;
			ItemLoss awesome bat by 1;
			say "Walking away, you get a sudden urge and dig a hole in some soft ground, pushing your bat in deeply. You can sense, with your most awesome senses, the wood taking root and beginning to grow.";
		say "With good feelings coursing through you at your good deed, a warmth seems to spread from the core of awesome that the tree's fruit seems to have implanted into your being.";
		infect;
		now fightoutcome is 19;
	else:
		say "Somehow you manage to strike the tree in such a way that it collapses, breaking along the fault line in its trunk you had made. You notice the branches are riddled with fruit and you make an effort to gather as many ripe ones as you can.";
		if Awesome_noreward > 2:
			say "You drop to your knees, wailing, unable to live with yourself for how much awesome you have taken from the world. Rising to your feet, you pledge never to destroy another awesome tree so long as you live.";
		else:
			say "With a start, you realize what you have done: you have ended a whole other kind of awesome in the world. Guiltily you walk away from the tree but promise you will find a way to atone for your sin.";
		let x be a random number between 4 and 10;
		repeat with Awesome_counter running from 1 to x:
			say "[Give Awesome]";


to say awesome vict:
	say "You proudly look up at the tree, standing still, and curse under your breath. All of a sudden, a crack sounds in the canopy above you and a single fruit drops down and smashes against the back of your head, knocking you out. The juice seeps down over your skin and almost seems to be absorbed by your body.[infect]";
	say "As you wake up, you look around and wonder how the tree got away. Guess that's just another awesome mystery for this messed up new world.";

to say awesome desc:
	setmongender 0; [creature is neuter-X]
	now Awesome_boredom is 0;
	choose row MonsterID from the Table of Random Critters;
	if Awesome_forcesex is 0:
		if "Male Preferred" is listed in feats of Player:
			now Awesome_sex is 2;
			now sex entry is "Male";
		else if "Female Preferred" is listed in feats of Player:
			now Awesome_sex is 1;
			now sex entry is "Female";
		else:
			now Awesome_sex is 0;
			now sex entry is "Both";
	say "You turn a corner and see it. Looking up you realize due to the shape of the branches you are unable to actually see just how tall this monstrous and truly Awesome Tree is. Its branches are long and you see, among the foliage some fruit that look unbelievably tasty, if you could just shake the tree enough to get one to fall...";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human"; [name of the overall species of the infection, used for children, ...]
	add "Pod Person" to infections of HumanList;
	add "Pod Person" to infections of HumorousList;
	add "Pod Person" to infections of NatureList;
	add "Pod Person" to infections of PlantList;
	add "Pod Person" to infections of HermList;
	add "Pod Person" to infections of BipedalList;
	now Name entry is "Pod Person"; [Name of your new Monster]
	now enemy title entry is "Awesome Tree"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[awesome attack]"; [Text used when the monster makes an Attack]
	now defeated entry is "[awesome defeat]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[awesome vict]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[awesome desc]"; [ Description of the creature when you encounter it.]
	now face entry is "completely human"; [ Face description, format as "Your face is (your text)."]
	now body entry is "human-looking"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "[if looknow is 1]human[else]normal human, lovely, healthy-looking[end if]"; [ skin Description, format as "Your body is covered in (your text) skin."]
	now tail entry is ""; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it seems to tingle, moving slightly, with a start you realize it's human"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "your muscles writhe about under your skin, slowly settling back into a human shape"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "all the hair on your body seems to fall out at once only to have what would be considered normal human hair sprout back out"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "[if awesome_sex is 2]your hips seem to return to human male normal[else]your rear changes, sliding into the perfect wide-hipped female figure[end if]"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it seems to feel hot, after a few gasps you realize it looks completely human"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 15;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 15;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60; [ How many HP has the monster got? ]
	now lev entry is 7; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 3; [Amount of Damage monster Does when attacking.]
	now area entry is "Forest"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 9; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 1; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 2; [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "awesomest fruit"; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 100; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]perfect[or][if Player is female]lovely[else]handsome[end if][at random]";
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false; [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
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


Section 3 - Monster Heat

Table of Game Objects (continued)
name	desc	weight	object
"awesomest fruit"	"The most awesomest fruit you ever ate!"	1	awesomest fruit
"awesomer fruit"	"The most awesomer fruit you ever ate, now with a funky pink logo!"	1	awesomer fruit
"awesome fruit"	"The most awesome fruit you ever ate, now with a funky blue logo!"	1	awesome fruit

the scent of the awesome fruit is "[awesomefrscent]".

to say awesomefrscent:
	if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player:
		say "The strange fruit smells rancid and turns your stomach just to have close.";
	else:
		say "The strange fruit has a strong, manly scent that seems mouth-wateringly sweet.";

the scent of the awesomer fruit is "[AwesomerFrScent]".

to say AwesomerFrScent:
	if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player:
		say "The strange fruit smells rancid and turns your stomach just to have close.";
	else:
		say "The strange fruit has a lovely, feminine scent that seems mouth-wateringly sweet.";

the scent of the awesomest fruit is "[AwesomestFrScent]".

to say AwesomestFrScent:
	if "Male Preferred" is listed in feats of Player or "Female Preferred" is listed in feats of Player:
		say "The strange fruit smells rancid and turns your stomach just to have close.";
	else:
		say "The strange fruit has a rich mix of male and female scents that seems mouth-wateringly sweet.";


to say awesome bat proc:
	choose row MonsterID from the Table of Random Critters;
	if HP entry is 60:
		if Name entry matches the text "Awesome":
			say "[line break]Your bat resounds against the tree, causing the world itself to shake. The unstoppable force and the immovable object meet, however your strength behind the bat is the deciding factor.";
			now monsterHP is 0;
			increase Awesome_noreward by 1;

[awesome bat moved to Core Mechanics/Weapons.i7x]

awesomest fruit is a grab object.
awesomest fruit has a usedesc "[awesomest fruit use]".

To say awesomest fruit use:
	let omonster be MonsterID;
	if "Male Preferred" is listed in feats of Player or "Female Preferred" is listed in feats of Player:
		say "You spit out the mouthful of fruit and cast it aside, for some reason it tastes rancid.";
	else:
		repeat with Z running from 1 to number of rows in Table of Random Critters:
			choose row Z from the Table of Random Critters;
			if Name entry matches the text "Pod Person":
				now MonsterID is z;
				break;
		now sex entry is "Both";
		now Nipple Count entry is 2;
		now Breast Size entry is 3;
		say "You bite into the awesomest fruit!";
		now Awesome_forcesex is 1;
		infect;
	now MonsterID is omonster;

awesomer fruit is a grab object.
awesomer fruit has a usedesc "[awesomer fruit use]".

To say awesomer fruit use:
	let omonster be MonsterID;
	if "Male Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player:
		say "You spit out the mouthful of fruit and cast it aside, for some reason it tastes rancid.";
	else:
		repeat with Z running from 1 to number of rows in Table of Random Critters:
			choose row Z from the Table of Random Critters;
			if Name entry matches the text "Pod Person":
				now MonsterID is z;
				break;
		now sex entry is "Female";
		now Nipple Count entry is 2;
		now Breast Size entry is 3;
		say "You bite into the awesomer fruit!";
		now Awesome_forcesex is 1;
		infect;
	now MonsterID is omonster;

awesome fruit is a grab object.
awesome fruit has a usedesc "[awesome fruit use]".

To say awesome fruit use:
	let omonster be MonsterID;
	if "Female Preferred" is listed in feats of Player or "Herm Preferred" is listed in feats of Player:
		say "You spit out the mouthful of fruit and cast it aside, for some reason it tastes rancid.";
	else:
		repeat with Z running from 1 to number of rows in Table of Random Critters:
			choose row Z from the Table of Random Critters;
			if Name entry matches the text "Pod Person":
				now MonsterID is z;
				break;
		now sex entry is "Male";
		now Nipple Count entry is 0;
		now Breast Size entry is 0;
		say "You bite into the awesome fruit!";
		now Awesome_forcesex is 1;
		infect;
	now MonsterID is omonster;

Awesome Tree ends here.
