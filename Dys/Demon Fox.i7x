Version 1 of Demon Fox by Dys begins here.

"Adds a Demon Fox enemy and infection."

[ DemonFoxInteractions tracks the number of times the player interacted     ]
[ with the demon fox                                                        ]
[ DemonFoxRead indicates whether or not the player has read about the       ]
[ demon fox                                                                 ]

DemonFox_PlayerDefeated is a truth state that varies. DemonFox_PlayerDefeated is usually false.
DemonFox_PlayerSubmitted is a truth state that varies. DemonFox_PlayerSubmitted is usually false.
DemonFox_PlayerFled is a truth state that varies. DemonFox_PlayerFled is usually false.
DemonFox_PlayerWon is a truth state that varies. DemonFox_PlayerWon is usually false.
DemonFox_PlayerWon_Fucked is a truth state that varies. DemonFox_PlayerWon_Fucked is usually false.
DemonFox_Encountered is a truth state that varies. DemonFox_Encountered is usually false.
DemonFox_Apologized is a truth state that varies. DemonFox_Apologized is usually false.
DemonFoxInteractions is a number that varies. DemonFoxInteractions is usually 0.
DemonFoxStatus is a number that varies.
DemonFoxRead is a truth state that varies. DemonFoxRead is usually false.

Section 0 - Flags

Section 1 - Creature Responses

to say DemonFoxDefeat:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";

to say DemonFoxVictory:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";

to say DemonFoxDesc:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Dys know on the FS Discord.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Demon Fox"; [name of the overall species of the infection, used for children, ...]
	add "Demon Fox" to infections of VulpineList;
	add "Demon Fox" to infections of FurryList;
	add "Demon Fox" to infections of DemonList;
	add "Demon Fox" to infections of MaleList;
	add "Demon Fox" to infections of KnottedCockList;
	add "Demon Fox" to infections of SheathedCockList;
	add "Demon Fox" to infections of BipedalList;
	add "Demon Fox" to infections of TailList;
	now Name entry is "Demon Fox";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The massive demonic vulpine leaps at you, sinking his talon-like claws into you![or]The demon head butts you roughly, knocking the air out of your lungs![or]The fox swipes at you, tearing through your flesh![or]The demon fox jumps at you, sinking his teeth into your form![at random]";
	now defeated entry is "[DemonFoxVictory]";
	now victory entry is "[DemonFoxDefeat]";
	now desc entry is "[DemonFoxDesc]";
	now face entry is "a demonic fox's fearsome visage, with a long, narrow vulpine muzzle and a maw full of sharp teeth. A set of pointed ears juts from the top of its head, with two shiny black horns between them. Eyes glow bright yellow, and their pupils are thin vertical slits";
	now body entry is "is beastly and hulking, with a stature that reminds you of a werewolf, but distinctly vulpine rather than canine";
	now skin entry is "thick, luxurious red and black fur that covers your black";
	now tail entry is "Three fluffy tails spout from your rear end. Most of their length is black, but the tips burn with scarlet intensity";
	now cock entry is "[one of]vulpine[or]knotted[or]fox[at random]";
	now face change entry is " you feel your nose grow further from your eyes, changing into a tapered vulpine muzzle capped with a wet black nostrils. Your ears migrate from the side of your head to the top, growing into pointed triangular vulpine ears. A sharp pain splits your head. Reaching up, you feel two sharp horns between your ears, smooth and pointy";
	now body change entry is "your form shifts, bringing you to your knees as your limbs lengthen, bones popping in protest as they gain additional length. Hands and feet morph into vulpine paws with luminous red pads, and sharp claws sprout from each one, shining wicked black";
	now skin change entry is "fur sprouts from every inch of your body, coating your chest, muzzle, and groin with a bright red, while the rest of you sports a midnight black";
	now ass change entry is "a tail sprouts from the base of your spine, growing to at least three feet long before it splits into three distinct, two-toned fluffy appendages. The tips crackle with red fire, and you can feel a heat surrounding them as they wave and dance";
	now cock change entry is "tapering out, your cock morphs, growing into a long vulpine cock with a bulging knot at its base. Its tip drips with bright orange, molten precum, and its length is jet black, jutting proudly from your sheath";
	now str entry is 41;
	now dex entry is 30;
	now sta entry is 50;
	now per entry is 35;
	now int entry is 50;
	now cha entry is 40;
	now sex entry is "Male";
	now HP entry is 200;
	now lev entry is 15;
	now wdam entry is 60;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 32;
	now Ball Size entry is 5;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "demon fox fur";
	now lootchance entry is 50;
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;
	now body descriptor entry is "[one of]beastly[or]fluffy[or]hulking[at random]";
	now type entry is "vulpine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
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



Section 3 - Item

Table of Game Objects(continued)
name	desc	weight	object
"demon fox fur"	"A small tuft of black and yellow fur you managed to find after fighting the Demon Fox"	1	demon fox fur

demon fox fur is a grab object.

instead of sniffing demon fox fur:
	say "The fur has a distinct, musky smell to it, reminding you of the fox you got it from.";

Usedesc of demon fox fur is "[DemonFoxFurUse]";

to say DemonFoxFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	choose a row with name of "Demon Fox" in the Table of Random Critters;
	now non-infectious entry is false;
	infect "Demon Fox";
	now non-infectious entry is true;

Section 4 - Tome Specific Scenes

to say DemonFoxFirstRead:
	say "     Looking over the page about the fox, you manage to learn a few things. The demon fox is said to be able to change its size to whatever it desires. Supposedly, he's possessive, with a pathological need to force submission in others. Anyone who has encountered the beast has reaffirmed that fact.";
	say "     According to the page's short physical description, the fox is taller than the average human, with hulking muscles and two demonic horns between vulpine ears. His fur is mostly black but bright, blazing red around his stomach, chest, and part of his lower jaw, while his eyes are an arcane yellow with slitted pupils. Three tails jut from his rear end, moving independently at his beck and call to trap unwary prey.";
	say "     A quickly jotted addendum adds that his cum is bright orange and glows like hot lava, with a steaming heat that nearly hurts.";
	say "     [if Player is puremale]Interestingly[else]Thankfully[end if], it only seems to be attracted to males.";
	now DemonFoxRead is true;
	now TomeInteractions is 2;
	now TomeEventPending is true;

to say DemonFoxFirstEncounter:
	say "     Out of nowhere, something tackles you to the ground! A heavy weight is pressing down upon your back, and you can feel the hot breath of something along the back of your neck. Pinned as you are, you can't get a good look at your assailant, even as you feel sharp claws rip through your clothing, leaving you vulnerable to whatever is attacking you. Suddenly, you feel a long, fluffy object wrapping around your midsection before it hoists you into the air, tossing you back onto the ground on your back. Your eyes widen, and you gasp as you see the hulking demonic fox you read about earlier standing over you.";
	say "     Before you can react, the fox has you pinned once more, its massive forepaws pinning you to the ground as it snarls in your face. 'Seems like I've finally got something to play with,' he says, surprising you slightly. 'I'm going to enjoy [if Player is mpreg_ok]breeding[else]fucking[end if] you like the bitch you [if Player is submissive]are[else]should be[end if].'";
	WaitLineBreak;
	say "     Mustering your strength, you manage to throw the beast off of you, causing him to let out a surprised grunt. You quickly scramble to your feet and ready yourself for a fight. 'Oh, so you're a feisty one, eh?' he asks, licking his chops and narrowing his eyes at you. 'I like that...'";
	now inasituation is true;
	challenge "Demon Fox";
	if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
		if HP of Player > 0: [submitted]
			say "[DemonFoxFirstSubmit]";
		else: [lost]
			say "[DemonFoxFirstLoss]";
	else if fightoutcome > 30: [fled]
		say "[DemonFoxFirstFlee]";
	else if fightoutcome < 20: [player won]
		say "[DemonFoxFirstVictory]";
	now inasituation is false;
	now DemonFoxInteractions is 1;
	UpdateTomeEventPending;

to say DemonFoxSummon:
	say "     You recite the incantation shown in the book, albeit with a little difficulty. With a flash of light, you see the demon fox from before standing in front of you.";
	if DemonFox_PlayerSubmitted is true and DemonFox_Apologized is true:
		say "     As you open the tome, you hear a familiar chuckle. A flashing light sears your eyes, barely shielded by the edge of the book. Standing before you is the demonic fox in all his glory, his sharp teeth dripping drool, and his stance widened to show off his low-hanging balls. The familiar scent of musk fills your bedroom as he looks you over, his expression showing a hunger that brings a blush to your cheeks. 'It seems you aren't willing to take 'no' for an answer kit. Do I need to remind you of who's in charge? Or is it possible that you're craving what only [italic type]I [roman type]can give you?' Despite his annoyed tone, the fox's peeking cock shows a certain level of interest. Closing the distance between you, the demonic fox tilts your head to stare into his beastly face, pressing you against the wall and hunching over you. He moves as if your body belongs to him, and asking is a formality. 'Since you're desperate for my company, I'll let you decide how I take you. Choose wisely. I won't be stopping until I'm satisfied.' Crossing his arms and tapping his foot, the demon stands in front of you, awaiting your answer in polite silence.";
		say "     [bold type]How do you want Kal['] Ren to fuck you?[roman type][line break]";
		LineBreak;
		say "     ([link](1)[as]1[end link]) - Facefuck.";
		say "     ([link](2)[as]2[end link]) - Anal.";
		say "     ([link](3)[as]3[end link]) - Worship his Balls.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] for Facefuck, [link]2[end link] for Anal, or [link]3[end link] for Worship his Balls.";
		if calcnumber is 1:
			LineBreak;
			say "     The demon nods. 'You wish for a taste, then? I hope you've been practicing. I won't be taking it easy on you.' Pleased by your choice, the demonic fox's cock spills from its sheath, steaming in the open air and intensifying the animalistic musk you've come to associate with his presence. Guided by a heavy paw, your face draws closer to that dripping tip until you can feel the heat pouring off it, searing your cheeks. Sinking every exposed inch into your open mouth, the fox hisses through clenched teeth, paying no mind to your desperate gag. The rustle of multiple tails is the only warning you receive before those hips draw back, allowing you a shallow breath before he plunges to the start of his growing knot, slamming the back of your head against the wall hard enough to blur your vision.";
			say "     Thrust after thrust violates your throat, stretching it to fit every inch of masculinity. Large enough to bring an ache to your jaw, it leaks molten precum into your throat with every thrust, messing your chest with the sheer volume of his overflow, but he shows no signs of stopping, forcing you to swallow what you can to prevent yourself from drowning. Before long, you feel a heavy knot slapping against your lips, threatening to break through with each insistent shove. Brutal humps slam swinging balls against your chin, and the demon fox's growls grow more savage, his paw leaving the back of your head to brace himself as he tries his level best to pry your mouth open with that veiny monster.";
			say "     [bold type]Kal['] Ren is growing frustrated with your jaw's inability to accept his knot. Do you want to encourage the savage beast's efforts?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, reach up and give those heavy balls some affection to goad him into knotting your mouth.";
			say "     ([link]N[as]n[end link]) - No. You're afraid of taking the knot. It could break your jaw!";
			if Player consents: [Take the knot]
				LineBreak;
				say "     With a triumphant howl, the fox surges forward with a wet pop, locking your jaw around his swollen knot and draining himself down your throat. Hot, molten cum fills your stomach, slowly at first, then gaining volume with each heavy spurt, and you can feel your stomach swelling with his prodigious output. Like an overfull condom, you feel yourself reach your limit. Still, the fox isn't finished, humping relentlessly until your nose overflows with orange cum, messing the sweaty pubic fur in front of you with evidence of his desire. Trapped between the wall and increasingly messy fur, you drift in and out of consciousness, drawing what few breaths you can through an endless deluge of cum. Just as you begin to worry that you'll die there, impaled on his dick, you feel pressure on your jaw, growing rougher until the fox's knot pops free, his flexing tip filling your mouth with a final squirt of gooey heat before withdrawing completely. 'Good kit. You're better at taking cock than I thought you'd be. We'll have to do this again.' Filled with mocking affection that sends a shiver through your spine, Kal['] Ren's voice purrs above you. Marking your face with his retreating cock and sweating balls, the fox pulled away, letting you draw your first untainted breath in what felt like hours. Another flash follows as the fox disappears into the book, leaving you to gather your wits and clean the evidence of your encounter. Hopefully, you can still walk with your belly as swollen as it is.";
				NPCSexAftermath Player receives "OralCock" from Kal Ren;
			else: [Don't take the knot]
				LineBreak;
				say "     Frustrated, the fox pulls back, unsheathing his cock and slapping it against your face. 'No way around it. I'll have to mark you instead.' He growls his words, grinding against your face and smearing that plump shaft over your cheeks, nose, and open mouth. Suffocating you in pulsing cock and churning balls, he grows more restless by the second, the pulsing heartbeat feeding that monster growing more frantic. With a triumphant howl, he fountains molten orange cum, his hips withdrawing so you can watch the arcing strings before they land heavily on your face, searing your skin with almost unbearable heat. Each rope is fatter than the last, and before long, you can barely see, your squinting vision tainted by an orange glow and your world colored by the scent of musk and cum. 'What a waste. You'd better lick all of that up.' Mocking your sorry state, Kal['] Ren brought his cock to bear, letting you feel its heat against your drenched face. Smearing his drooling tip against your cheek and pushing some of his cum into your open, panting mouth in the process, the fox disappears in a flash, leaving you to clean his mess. It takes you a few minutes to clear your eyes. By the time you can see well enough to stand on shaky legs, the fox's cum has begun to cool, leaving you with a musky, uncomfortable reminder of your submission as you busy yourself with mopping up the puddle below you. Maybe it would have been better to brave his knot.";
				NPCSexAftermath Player receives "OralCock" from Kal Ren;
		else if calcnumber is 2: [Anal]
			LineBreak;
			say "     'Begging to be bred? I can't say I'm surprised. I bet you've been thinking about it since that first time.' Grabbing your arm as he speaks, the fox looks around, settling on your cot and unceremoniously throwing you over it.[if player is not naked] Tearing away your clothes with impatient claws, he licks his lips, one paw on the small of your back to keep your ass oriented for his pleasure. 'Next time, take it all off before you summon me. I want to see my property. You don't need modesty when you've already given yourself to me[else] Licking his lips, the fox slaps your upturned ass, digging his claws into your cheeks and spreading them to inspect your ass. 'This is how it should be. Naked and ready for my cock. You're such a well-behaved kit.' Judging by his tone, you've pleased the fox. You'll have to remember to strip next time if you want to be a good pet.[end if] Without a moment spent preparing your vulnerable ass, the fox lines up his peeking cocktip, smearing its drooling tip over your hole and letting you feel the heat pouring off his churning balls. Sharp claws dig into your skin, drawing blood as he surges forward, his cock spilling into your ass in one prolonged stretch that brings tears to your eyes. Was he always this big, or was the fox increasing his size to humiliate you?";
			say "     'Still just as tight as the first time. It's a perfect fit, isn't it, kit?' Taunting you as he mercilessly thrusts, the fox drools onto your back, rutting you like a bitch in heat. There's no tenderness in his thrusts, and what few jabs find your prostate seem accidental, though they harden your cock and set your nerves alight. A claiming snarl fills the air as thrusts get wetter, sending trails of molten pre down your balls to drip wetly on the floor below. Kal['] Ren shows no signs of slowing, and when you feel his knot swell, he bites down on your shoulder, the burning stretch of that throbbing ball of flesh threatening to burst through your entrance.";
			WaitLineBreak;
			if Lust of Kal Ren > 0: [Only been fucked by him once]
				say "     Searing pain and blinding pleasure combine as sharp teeth break the skin of your shoulder, pinning you under the rutting beast. His knot pops in with colossal effort, ruining your hole and filling you with the sensation of being so full you might pop. This feeling grows more pronounced as jets of liquid demon-fox seek your deepest reaches, pooling in your bowels and swelling your stomach into a perverse facsimile of pregnancy. Helpless underneath the beast's savage affections, you clench and squirm, your cock unleashing its approval against the bed below and cementing your submission. You don't want to admit it, but you live for the thrill of being taken by the monstrous fox. 'Good kit.' Kal['] Ren's voice drips with approval even as his teeth drip with your blood, his grip on your waist tightening as he tests the death grip your spasming hole has on his cock. With a wet pop, he slops free alongside a deluge of spilling cum, leaving your ass gaped and overused. You doubt you could clench closed if you tried.";
			else: [Been fucked more than once]
				say "     Snarling, Kal['] Ren throws his entire weight into fucking you, easily slopping his swollen knot past your battered, broken hole and emptying the contents of his churning balls into your accepting hole. This time, however, he hasn't finished with you. Intense pressure tests your connection before the first jet consecrates your insides, and with a wet pop, he slides free, his teeth clamping on your shoulder as his cock continues its rampage, unwilling to let you off with a single knotting. Ramming home in a feral rhythm, the fox destroys your hole with his knot, pulling at your helpless entrance with every savage thrust and depositing more of his desire into your growing bulge. You aren't tight enough to hold him in place, so all you can do is twitch and moan, lost to the intense sensation of your prostate's brutal beating and hole's ruination. You'll be lucky if you can sit down for a week! Helpless before the onslaught, you signal your submission, your cock unleashing its wasted load on the cot below you and squirting in time with every sloppy pop. You lose track of how long you cum and how long the fox uses you, only returning to your senses when you feel the wet sensation of Kal['] Ren's cock wiping itself clean on your ass-cheeks.";
			say "     The demon leaves you to rest in your mess, your hopelessly destroyed ass leaking a river of cum to the floor below. A flash confirms that he returned to his book, and you settle in for a nap, hoping to sleep off the gut full of cum and the ache of claw marks and bites that are already healing over.";
			NPCSexAftermath Player receives "AssFuck" from Kal Ren;
			if Lust of Kal Ren < 5:
				increase Lust of Kal Ren by 1;
			now TomeTimer is turns;
		else if calcnumber is 3: [Ball Worship]
			LineBreak;
			say "     'Ah, yes. You've had your eyes on these since you submitted to me.' Teasing you with his trademark growling voice, Kal['] Ren hefts his sizable balls in one paw, smirking as you follow their hypnotic sway. 'Tell me, kit. If I let you play with them, what will I receive? I doubt your tongue is enough to satisfy.' Sitting on the edge of your cot without a care for the squealing springs and bowing frame, he crosses his arms expectantly.";
			say "     [bold type]How are you going to persuade Kal['] Ren to let you worship his balls?[roman type][line break]";
			LineBreak;
			say "     ([link](1)[as]1[end link]) - Offer him a handjob.";
			say "     ([link](2)[as]2[end link]) - Offer to drink his cum.";
			say "     ([link](3)[as]3[end link]) - Offer to ride his cock.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to offer him a handjob, [link]2[end link] to offer to drink his cum, or [link]3[end link] to offer to ride his cock.";
			if calcnumber is 1: [Handjob]
				LineBreak;
				say "     'If that is what my kit wants, I suppose I should oblige. I'm nothing if not a gracious master.' His bored, patronizing speech doesn't match his cock's peeking tip, and you're confident he's as intrigued by your desire to worship him as you are. Spreading his legs, he pats his lap, inviting you closer to inspect those low-hanging orbs. Disrobing without hesitation, you drop to your knees, shuffling closer until the infernal heat of those massive nuts sears your nose, bringing with it the unmistakable fox musk that gathers around him like a cloud of steam. Shuddering, you press your nose against one churning nut, breathing deeply as a light-headed, floating feeling overtakes your brain.";
				say "     He smells earthy, with a hint of something wild and untamed, and the deeper you press your nose, the stronger it becomes, filling your senses with masculinity too powerful to be denied. Eager to show appreciation for this awful, deliciously unwashed scent, you caress the fragrant fuzz covering your prize, then roll your tongue along it, tasting the salty, heady flavor of the fox's manhood. Minutes pass as you dutifully lick every last inch of Kal['] Ren's balls, sandwiching your face between those heavy kit makers and leaking a small puddle of desire between your thighs as your dick throbs along with each shuddering churn of Kal['] Ren's cum factories. As you feel your orgasm rising, you snort his musk like a drug, hefting them and smearing their saliva-streaked fur over your face. ";
				WaitLineBreak;
				say "     'As much as I enjoy watching you debase yourself- I believe you promised something more substantial.' Seizing his cock, Kal['] Ren let its drooling tip ooze down onto your panting face, narrowly missing your eyes as it drips down your cheek. 'Are you going to keep me waiting? I could take what I need if you prefer.' Licking his lips at his threatening promise, he squeezes his knot and wags his vulpine shaft imperiously.";
				say "     Coaxed by that bouncing tip and Kal['] Ren's hungry gaze, you work your way up from his spit-shined nuts, trying to wrap your hands around the base of his cock without success. Somehow, you get the feeling that no matter how large you are, he'd take advantage of his powers to keep the oversized comparison. His eyes betray nothing of a trick, staring expectantly at you as you hurriedly move to try the next best thing. Wrapping your arms around his oversized cock, you cradle it to your chest, raising yourself on your haunches. He's already somewhat slick from your efforts, so it's easy to spread his arousal over his shaft, though you grow sticky, marking yourself with his scent. Soon enough, you settle into a rhythm, using your arms, chest, and face to stroke while staring expectantly at his face, hoping for some hint of approval.";
				WaitLineBreak;
				say "     Kal['] Ren's tongue hangs out, dripping onto his chest fur. With each clumsy stroke, his hips begin to move on their own, pushing his pointed tip against your face and slapping his heavy balls against your stomach. All you can do is hold on, breathe heavily, and bask in heated orange goo. You don't have to wait long for his orgasm. Between the heavy thrusts that threaten to throw you off of his quaking cock and your clumsy efforts to get him off, he's soon fountaining his approval, painting the wall behind you with the majority of his molten cum. Throwing his head back, he saws his cock between your clutching arms, smearing the final remnants of liquid fox over your face in a perverted show of dominance.";
				say "     You soon join him in orgasm, your hand drifting to your member and smearing Kal['] Ren's gooey gift over its length until its molten heat tears a comparatively pitiful contribution from your aching balls, coloring the puddle of pre with streaks of cum. Afterglow mingles perfectly with the pulsing sensation of fox cock pressed against you, and you bask in its heat, searing his scent into memory before, all too soon, a blinding flash of light robs you of Kal['] Ren's member. Sighing dreamily, you clean yourself up and replace your gear. You can always summon the demon fox again when you crave more of him. For now, you have other things to do.";
			else if calcnumber is 2: [Blowjob]
				LineBreak;
				say "     'If that is what my kit wants, I suppose I should oblige. I'm nothing if not a gracious master.' His bored, patronizing speech doesn't match his cock's peeking tip, and you're confident he's as intrigued by your desire to worship him as you are. Spreading his legs, he pats his lap, inviting you closer to inspect those low-hanging orbs. Disrobing without hesitation, you drop to your knees, shuffling closer until the infernal heat of those massive nuts sears your nose, bringing with it the unmistakable fox musk that gathers around him like a cloud of steam. Shuddering, you press your nose against one churning nut, breathing deeply as a light-headed, floating feeling overtakes your brain.";
				say "     He smells earthy, with a hint of something wild and untamed, and the deeper you press your nose, the stronger it becomes, filling your senses with masculinity too powerful to be denied. Eager to show appreciation for this awful, deliciously unwashed scent, you caress the fragrant fuzz covering your prize, then roll your tongue along it, tasting the salty, heady flavor of the fox's manhood. Minutes pass as you dutifully lick every last inch of Kal['] Ren's balls, sandwiching your face between those heavy kit makers and leaking a small puddle of desire between your thighs as your dick throbs along with each shuddering churn of Kal['] Ren's cum factories. As you feel your orgasm rising, you snort his musk like a drug, hefting them and smearing their saliva-streaked fur over your face. ";
				WaitLineBreak;
				say "     'As much as I enjoy watching you debase yourself- I believe you promised something more substantial.' Seizing his cock, Kal['] Ren let its drooling tip ooze down onto your panting face, narrowly missing your eyes as it drips down your cheek. 'Are you going to keep me waiting? I could take what I need if you prefer.' Licking his lips at his threatening promise, he squeezes his knot and wags his vulpine shaft imperiously.";
				say "     Your tongue continues its lazy path along the demon fox's foxhood, following the curve of one delicious orb up to the base of his knot. (If kinky feat) Pausing there, you flick your tongue over the puffy skin of the fox's sheath, dipping beneath it to taste the powerful musk hidden there. You can't resist a soft suck at tender flesh, bringing a hiss of pleasure through the fox's clenched teeth. (if no kinky feat) Swirling your tongue over the space behind his knot, you worship the fat ball of flesh, covering every inch with a spit shine before setting your sights on his leaking tip. Placing both hands on that pulsating knot, you lick your way from the base of the demon fox's prodigious manhood up along the swollen cum-vein, lapping up his lava-like gift until you're face to face with his weeping tip. Taking what you can, you swallow his drooling gift, your tongue working over every inch of veiny flesh it can reach.";
				WaitLineBreak;
				say "     'Good kit. You're so eager for it.' Goading your efforts with his panting words, the fox strokes himself with both paws, shaking his cock with every movement. Clinging to his tip like a man possessed, you close your eyes, letting his shaky breathing guide your slow bobbing as you desperately attempt to keep him inside. Howling his approval, Kal['] Ren thrusts upward, stretching your mouth and stroking himself feverishly as one paw moves to the back of your head, trapping you in place. With a heaving throb, his knot bloats, and as you brace for his orgasm, you feel a gooey eruption threaten to throw you across the room, forcing its way down your throat and backing up through your nose as shot after shot crams its way past your stretched lips.";
				say "     Swallowing franticly, you worry that you've breathed your last, struggling against his iron grip and feeling your stomach swell out into a perverse bulge. Feeling your grip on reality fade as you drift in and out of consciousness, you swallow dutifully until finally, as your lungs scream for air and your stomach threatens to burst, the fox loosens his grip, letting you fall back and draw a shaky breath. Letting loose his last few dribbles of steaming satisfaction onto your swollen stomach, the fox lazily strokes himself, a satisfied smirk across his muzzle. 'I must admit, the depth of your devotion pleases me to no end.' Yawning as he finishes speaking, he touches the tip of his cock to your nose, then disappears in a flash of light, leaving you to digest your gut-full.";
				NPCSexAftermath Player receives "OralCock" from Kal Ren;
			else if calcnumber is 3: [Anal]
				LineBreak;
				say "     'If that is what my kit wants, I suppose I should oblige. I'm nothing if not a gracious master.' His bored, patronizing speech doesn't match his cock's peeking tip, and you're confident he's as intrigued by your desire to worship him as you are. Spreading his legs, he pats his lap, inviting you closer to inspect those low-hanging orbs. Disrobing without hesitation, you drop to your knees, shuffling closer until the infernal heat of those massive nuts sears your nose, bringing with it the unmistakable fox musk that gathers around him like a cloud of steam. Shuddering, you press your nose against one churning nut, breathing deeply as a light-headed, floating feeling overtakes your brain.";
				say "     He smells earthy, with a hint of something wild and untamed, and the deeper you press your nose, the stronger it becomes, filling your senses with masculinity too powerful to be denied. Eager to show appreciation for this awful, deliciously unwashed scent, you caress the fragrant fuzz covering your prize, then roll your tongue along it, tasting the salty, heady flavor of the fox's manhood. Minutes pass as you dutifully lick every last inch of Kal['] Ren's balls, sandwiching your face between those heavy kit makers and leaking a small puddle of desire between your thighs as your dick throbs along with each shuddering churn of Kal['] Ren's cum factories. As you feel your orgasm rising, you snort his musk like a drug, hefting them and smearing their saliva-streaked fur over your face. ";
				WaitLineBreak;
				say "     'As much as I enjoy watching you debase yourself- I believe you promised something more substantial.' Seizing his cock, Kal['] Ren let its drooling tip ooze down onto your panting face, narrowly missing your eyes as it drips down your cheek. 'Are you going to keep me waiting? I could take what I need if you prefer.' Licking his lips at his threatening promise, he squeezes his knot and wags his vulpine shaft imperiously.";
				say "     'You'd like to take charge and ride me?' Pondering your face as he speaks, the demon fox clicks his tongue, then offers a paw, spreading his legs and waggling his cock invitingly as if to draw you in. 'Were it anyone else, I would decline such an offer, but you've proven that you will not abuse the privilege. Come then, show your devotion.' Without wasting a moment, you clamber onto the fox's lap, wincing as your cot screams in protest and bows further. Worries disappear as you feel that heated rod test your entrance, nuzzling up against it as if knocking at a door, and before you can think about the logistics of taking such a monstrous cock, you find yourself sitting down, piercing yourself on his pointed tip.";
				WaitLineBreak;
				if "Twisted Capacity" is listed in Feats of Player:
					say "     'You never cease to amaze me, pet. It's like you were born to take every inch.' Hissing through clenched teeth, the fox praises your efforts, his shaft sliding into you like a hot knife through butter. A mischievous smirk cracks his muzzle as you bottom out against his knot, and you feel his palms rest against your hips, holding you in place. 'In fact, I think it's time I show you another benefit to belonging to me. A talented kit like yourself should be able to withstand it.' Before you can ask what he means, a confused moan cuts off your speech. His shaft grows hotter, and your stuffed passage burns with a new stretch as his length fattens. The snaking sensation of his cock's upward growth leaves no doubt about what he's doing, swelling the outline of his cock through your stomach into an alarmingly stretched tent.";
					say "     'Still nowhere near your breaking point.' Sighing happily, the fox tested your hole, rearranging your innards with every squishing thrust. Even his knot is colossal, almost as large as your ass itself. 'Isn't it perfect, kit? Only I can fill you like this. Only I can give you what you crave.' Too overwhelmed to answer, you dangle at his mercy, drooling and moaning with every hard thrust. You're nothing more than a fleshlight for his mammoth cock, but somehow that excites you. He's right, he's the only one that can make you feel like this, and your steel-hard cock agrees, slapping your violated stomach with every hard push. Sliding up and down like nothing more than a fleshlight, a deluge of orange precum clearing the way for Kal['] Ren's swollen bitchbreaker, you cling to his chest for dear life, closing your eyes against his fur. You're so close to the edge that you can taste it, and the demon fox's cock is bucking hard enough to knock the wind from your lungs, so you know it won't be long.";
					WaitLineBreak;
					say "     Digging his claws into your thighs hard enough to draw blood, the demon fox growls triumphantly, throwing his head back and letting his tongue flop from the side of his maw. With a wet pop, Kal['] Ren forces that monster knot past your defenses, corking your hole as his tip bloats and spits its virile load deep into your innards, blasting a pregnant bulge into your already stretched stomach and filling it out until you swear you're nothing more than a filled condom, your cock adding its desire to the mess of sweat and drool slicking Kal['] Ren's fur. You rest against the fox's chest, too exhausted to attempt to break your connection, but all too soon, you feel his member shrink, uncorking a deluge of cum from your ruined hole. As you fall to the side, holding your sloshing stomach, you close your eyes against the flash of light from Kal['] Ren's disappearance, your eyes drifting closed as his voice echoes in your ears. 'Until next time, kit.'";
				else:
					say "     Kal['] Ren is as overwhelmingly large as usual, but you brace yourself for the twinge of pain from the stretch his member gives your hole. Swiveling your hips from side to side, you slide each inch past your entrance until you find a makeshift seat on his knot, pausing to enjoy the pleasant fullness radiating from your stretched rear. You're slightly proud of yourself for taking most of him in one go, but you doubt he'll be satisfied until his knot buries itself inside you. 'Take your time, kit. If I get bored, I can pin you to the wall and take what I want.' Showing sharp teeth, the fox taunts you, flexing his shaft to brush its thick length against your sweet spot. He seems amused by your willingness to please, but his eyes show a depth of lust that puts your legs back to work.";
					say "     Up and down, up and down, growing more confident with each stroke, you ride him like it was what you were born to do, your increasingly pre-slicked ass filling the room with a symphony of sounds to mingle with pleased growls and your frantic moans. Outside of his knot, Kal['] Ren's size is manageable, but you crave its stretch, testing your hole's limits with each heavy bounce and growing more frustrated as it won't slip in. 'Poor thing. Let me help you.' Kal['] Ren's voice breaks through your concentration as his hips meat yours, putting opposing force into each needy bounce. Your dick feels like it's going to melt, flopping wildly and drooling spiderwebs of pre, and you can feel Kal['] Ren's twitch with every motion, ready to explode.";
					WaitLineBreak;
					say "     Pop. You see stars as your combined efforts finally pop the demon fox's knot past your defenses, and you cry out as sharp teeth find your shoulder, clamping down in an impressive display of flexibility. Spraying your desire and clinging to the biting fox, you beg for his finish wordlessly, your breath hitching in your throat. Steaming cum erupts from his buried tip, swelling your stomach until you feel like it will pop. Each spurt sends his cock into a flopping frenzy, battering your prostate and prolonging your pleasure while he growls and gnaws at your shoulder, leaving his mark. Sore, battered, and bruised, you fall to the side as soon as the fox pulls himself from your depths, your vision blurring as he wipes his cock across your exhausted form. 'Goodbye, kit.' He purrs as you hold your swollen stomach, fighting the urge to pass out. 'If you want more, you know where to find me.'";
				say "     Dragging yourself from the cot after your stomach's swelling fades enough that you can stand, you clean yourself up and wince as your used hole protests. Perhaps the next time you meet, you'll ask Kal['] Ren to go easy on you. You shake your head, smiling ruefully. As if that would happen.";
				NPCSexAftermath Player receives "AssFuck" from Kal Ren;
	else if DemonFox_PlayerDefeated is true:
		say "     'Well, if it isn't my pet from before...' the beast purrs. 'Are you going to try fighting me again? If so, I'm not in the mood. I hate to break it to you, but I'm not always interested in sex and fighting.' You blink at him incredulously. 'I'm not. It might have appeared that way from our first encounter, but I'll be the first to admit that I didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can call me Ren,' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused at everything that just transpired.";
		now DemonFox_Apologized is true; [met after losing to him, he apologized]
		now TomeTimer is turns;
	else if DemonFox_PlayerSubmitted is true:
		say "     Well, if it isn't my pet from before...' the beast purrs. 'You wanna try fighting me this time? If so, I'm not in the mood. I hate to break it to you, but I'm not always interested in sex and fighting.' You blink at him incredulously. 'I'm not. It might have appeared that way from our first encounter, but I'll be the first to admit that I didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused at everything that just transpired.";
		now DemonFox_Apologized is true; [met after submitting, he apologized]
		now TomeTimer is turns;
	else if DemonFox_PlayerFled is true:
		say "     'Well, if it isn't the kit from before...' the beast purrs. 'Are you going to run away again? If so, I hate to break it to you, but I'm not always interested in sex and fighting.' You blink at him incredulously. 'I'm not. It might have appeared that way from our first encounter, but I'll be the first to admit that I didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused at everything that just transpired.";
		now DemonFox_Apologized is true; [met after fleeing, he apologized]
		now TomeTimer is turns;
	else if DemonFox_PlayerWon is true:
		say "     'Well, if it isn't you,' the demon greets you with a surprisingly chipper tone. 'You know, it's rare for a mortal to beat me in combat, but you managed it. I respect you for that,' he says. 'The name's Kal['] Ren, by the way. You can call me Ren.' You tentatively introduce yourself as well.";
		say "     'I know I said you could summon me if you were ever in the mood for breeding, but funnily enough, I'm not feeling up to it right now.' He hesitates for a moment before continuing, 'Maybe sometime in the future, though. You've piqued my interest.' Without giving you a chance to reply, he disappears in a flash of light, leaving you somewhat dumbfounded at the whole interaction.";
		now TomeTimer is turns;
	else if DemonFoxStatus is 11 or DemonFoxStatus is 21 or DemonFoxStatus is 31 or DemonFoxStatus is 42:
		say "[DemonFoxMenu]";

to say DemonFoxMenu:
	say "     You use the spell to summon Kal['] Ren, bracing for the blinding flash of light by holding the book in front of your eyes. 'Well, hello, kit,' you hear him greet in his rumbling voice, opening your eyes and lowering the book to look at him. 'Do you desire some companionship?'";
	if DemonFox_PlayerWon is false or (DemonFox_PlayerWon_Fucked is true and DemonFox_PlayerWon is true):
		say "     You scowl at his mention of you as his pet, quickly stating that you don't belong to him, no matter what he thinks. He laughs, shaking his head before his body suddenly seems to grow before your eyes, a paw on your chest knocking you to the ground. You look into his leering visage, searing drool landing on your face from his dripping maw. 'Oh, so you don't think you're my pet, then? [if DemonFox_PlayerDefeated is true]Maybe I'll have to show you your place again. Perhaps you don't realize what that bite I gave you meant, hm? [else if DemonFox_PlayerSubmitted is true]Don't even try to pretend. You want to be my pet, serving my every whim. That little bite I gave you is binding. [else if DemonFox_PlayerFled is true]Just because you ran before doesn't mean I can't take you now. You'd make an excellent toy. [else if DemonFox_PlayerWon_Fucked is true]Even after you defeated me, you [italic type]still[roman type] let me fuck you. [end if]As far as I'm concerned, you're mine.'";
	else:
		say "     You scowl at his comment, denying your status as his pet, despite the butterflies in your stomach. He laughs before you're suddenly pinned under a much larger version of him, his paw completely covering your torso. He leers over you, a drop of his nearly scalding saliva dripping onto your face. 'Just because you won last time doesn't mean you'd win again. It wouldn't take much for me to mark you as my pet...'";
	WaitLineBreak;
	say "     He lets those words sink in for a few seconds before he laughs again, removing his paw as he cackles. Soon enough, he's back to his previous size, lifting you back to your feet with one of his long tails. You blink, slightly bewildered and somewhat scared, as he continues to cackle at you, his muzzle scrunched up in a very vulpine grin. 'You...' he says breathlessly, 'you should've seen the look on your muzzle, kit! It looked like you were going to [italic type]piss yourself![roman type]' You blush as he continues laughing for nearly a minute longer, finally beginning to settle down as he sits on his haunches, sharp teeth bared in a teasing grin.";
	say "     'Now... You've called me here. Is there anything you want to do?'";

to say DemonFoxFirstLoss:
	setmonster "Demon Fox";
	say "     Now that he's beaten the fight out of you, the demon fox pins you again, his heavy weight pressing down onto you. 'You should've just submitted. Now I'm going to have to punish you,' he growls out. You notice his entire body expanding, growing large enough to make you look comparatively small. Only a single paw rests on your chest now, as that's all he needs to keep you in place. He cocks his head to the side, contemplating his next move. Suddenly, you feel one of his long tails wrapping around your torso, lifting you into the air. He roughly tosses you onto your stomach before his paw finds its place on your back, forcing your head down and your ass up.";
	say "     He doesn't give you any time to prepare for what comes next. The demonic vulpine roughly shoves past your defenses, stretching you painfully wide around the head alone. He doesn't stop there, however. Instead, he pushes even further into you. You feel your hole yawning as the first few inches of his cock slip into you, followed by the rest. You can feel his massive knot up against your hips, and you can see your stomach stretching out almost comically in the shape of his cock. Soon enough, he pulls back, each inch leaving you with a slick sound until only the tip of his shaft remains inside you.";
	WaitLineBreak;
	say "     He only gives a moment of relief before pushing the massive tool back into you. He bottoms out a little more quickly this time, your passage slowly loosening enough to make it slightly less painful. Soon enough, the fox has built up a rhythm of thrusting in and out of you. His knot starts to bash against your entrance as he becomes increasingly determined to impale you with it, and the thing is thicker than your hips! Grunting with each thrust, he pushes into you, desperate for his release.";
	if Player is twistcapped:
		say "     Somehow, you can feel the knot slip further and further in, your twisted body able to accept the impossibly meaty mass. Soon enough, the knot has passed its widest point, and the rest slurps into you with a loud squelch. The demon on top of you lets out a loud howl of pleasure before that massive knot swells even wider, locking your already tied hole. Your cock[smn] throb[smv] as you release a [Cum Load Size of Player] load onto the ground, the pressure on your prostate driving you over the edge. He leans down and bites into your shoulder roughly as he climaxes, rope after rope of molten cum rushes into you, quickly rounding you out. His orgasm doesn't seem like it will abate any time soon, however, as more and more cum spills into you. Looking down at your bloated belly, you swear you can see a faint glow through your skin, even! Once his climax ends, he releases your shoulder, a trickle of blood dripping from his maw before he harshly yanks his tool out of you, the knot popping out loudly.";
	else:
		say "     Despite his best efforts, the knot is just too big to fit. It doesn't bother the fox much as he thrusts against you once more before howling as he reaches his climax, rope after rope of molten, glowing cum spilling into your bowels. There's so much that your belly starts to bulge from the sheer amount of fluid filling it. Eventually, the cum has nowhere left to go, managing to find its way out of your ass around his massive shaft. By the time his climax has ended, you're thoroughly drenched in fox cum, the hot ejaculate forming a pool around the two of you.";
	NPCSexAftermath Player receives "AssFuck" from Kal Ren;
	WaitLineBreak;
	say "     The fox gives you a look, observing your battered form as if admiring his handiwork. 'I told you that you should've submitted, pet,' he says. 'Maybe next time this won't have to be so hard...' By the time you've recovered enough energy to glance over your shoulder, the fox is gone, apparently having decided to leave after finishing with you. After that encounter, you're not sure why you'd want to, but perhaps you could [italic type]summon the fox again[roman type]?";
	infect "Demon Fox";
	infect "Demon Fox";
	now DemonFox_Encountered is true;
	now DemonFox_PlayerDefeated is true; [lost]
	WaitLineBreak;

to say DemonFoxFirstSubmit:
	setmonster "Demon Fox";
	say "     You raise your hands in defeat, signaling to the fox that you want no trouble. He leers at you, baring his maw full of razor-sharp teeth at you. 'I knew you'd submit to your new master...' he says before advancing on you. He pounces, pinning you under his massive weight, but he doesn't stop there. Before you know what's happening, he's forced his muzzle up against your mouth, his flat vulpine tongue slipping in between your lips with ease. [if Player is submissive]You can't help but let out a moan as his ridiculously long organ explores your mouth[else]You have to resist the urge to gag as his ridiculously long organ ravages your mouth[end if]. His tongue flicks around the inside of your mouth a few more times before he pulls back, a string of saliva connecting the two of you. 'See?' he pants. 'That wasn't so bad, now was it?'";
	say "     You don't have time to reply as you feel that tongue moving across your neck and down your torso, leaving behind a trail of slick saliva. Eventually, it finds its way to your cock[smn] and balls, caressing them. You have to stifle a gasp as the slimy organ slips between your ass cheeks. He laps against your hole a few times, coating you in his saliva before he [if anallevel is 3]plunges his tongue inside you, slipping past your tight ring. He gives you a few licks there before he [end if]moves on. He raises his head to meet your gaze before he lets out a possessive growl.";
	WaitLineBreak;
	say "     'Get on all fours,' he commands. You hastily obey, presenting your hindquarters to him, and he rumbles in approval of what he sees. [if Player is mpreg_ok] 'I will enjoy putting my pups in you,'[else] 'I will enjoy taking you,'[end if] he growls. You feel his weight upon you once more as he mounts you, lining his massive cock up with your hole before thrusting almost to the root with one harsh movement. You gasp in pain from the sudden intrusion, but that doesn't discourage him. He pulls out of you as roughly as he first entered, his prodigious size stretching you cruelly. He thrust back in, this time with less resistance. This cycle keeps repeating, growing in speed until he's rutting against you, his massive knot slapping against your ring with wet squelches.";
	say "     With a howl of pleasure, he shoves forward one last time, his knot spreading you painfully wide before it manages to pop in. Once it settles inside, it swells even larger, firmly locking the two of you together. The pressure on your prostate is enough to set you off, spilling your load onto the ground beneath you. He gives one last growl before you feel his sharp teeth on your shoulder. They dig into your flesh as he bites down. You can feel his cock releasing its burning semen inside you, rope after rope of glowing cum erupting into your bowels. By the time he's finished climaxing, your belly rounds into a sloshing dome, and you can't help but moan from the heat of the fluids inside you. With his orgasm over, he releases his hold on you and harshly yanks his knot out of you. 'That was fun, pet,' he says. 'I hope we can do this once more sometime soon.'";
	WaitLineBreak;
	say "     You turn to look at the fox once more, only to find thin air. It seems the fox has gone for now. [italic type]Perhaps you could summon him once more with the book if you so desire.[roman type][line break]";
	infect "Demon Fox";
	NPCSexAftermath Player receives "OralCock" from Kal Ren;
	NPCSexAftermath Player receives "AssFuck" from Kal Ren;
	now DemonFox_Encountered is true;
	now DemonFox_PlayerSubmitted is true; [submitted]
	WaitLineBreak;

to say DemonFoxFirstFlee:
	say "     You snatch up the tome as you flee, clutching the open book to your chest. The fox is hot on your heels, determined to catch you. 'Get back here!' he shouts. You speed up even further, determined to escape the hellish beast before you turn into an alleyway. As you race further down the narrow space, you round a corner only to be greeted by a tall brick wall. Whirling around, you see the fox has had no trouble keeping up with you.";
	say "     'You've got nowhere left to go,' he growls out. As much as you wish that weren't true, you realize that he's correct. He doesn't give you any extra time to contemplate this as he suddenly crouches down, ready to pounce on you. Desperately, you hold the tome up, facing him. He leaps, and you close your eyes in preparation to be pinned beneath him once more. A few seconds pass before you realize that he still hasn't collided with you, and you tentatively open your eyes, finding that the fox has disappeared.";
	now DemonFox_Encountered is true;
	now DemonFox_PlayerFled is true; [Fled from the fox]
	WaitLineBreak;

to say DemonFoxFirstVictory:
	now DemonFox_PlayerWon is true;
	say "     You strike the defeated demon, cementing your victory, and he lets out a final yelp of pain before he shakes his head. 'Alright. Enough. I see that forcing myself onto you may not have been wise,' he admits, looking over your form. 'Considering your victory, it's only fair that I offer some sort of retribution.' You ask him to elaborate. 'What I'm saying is, I will gladly take you, [italic type]gently[roman type], of course. If you're not interested in that, then I'm afraid there's not much more I can offer. I'm not one to give up control of my pets, and even if you try to force me to, I'll go back into the book. It's up to you.'";
	say "     [bold type]Well, considering the offer, what do you do?[roman type][line break]";
	say "     [link]Let the fox mount you[as]y[end link] - (Y)[line break]";
	say "     [link]Decline his offer[as]n[end link] - (N)[line break]";
	if Player consents:
		say "     You tell the fox that you'd like him to fuck you, and he seems to get an excited gleam in his vulpine eyes. 'Glad to hear it. I'll be gentle,' he purrs out, and you can't help but shudder in anticipation. 'Now, why don't you get into position for me?' You quickly comply, presenting your ass to him, waggling it back and forth in a slow tease. He lets out a chuckle before he sniffs the air a few times. Pressing his snout into your crack, the fox gives a few sniffs before his vulpine tongue darts out of his mouth, giving you a few licks. 'You mortals have always tasted good...'";
		WaitLineBreak;
		say "     You can't help but whine in disappointment as his muzzle departs from your rear. His disappointment only lasts for a moment as you soon feel him wrapping his forepaws around your waist, mounting you. He gives you a few gentle prods with his massive cock before he pushes his head into you slowly. You can't help but moan as he gently prods more of his shaft into your spasming entrance until the first inches begin to push in. 'This might hurt a bit,' he warns you as he shoves forward. The first few inches eventually manage to go in, albeit with a bit of pain. As his knot rests against your entrance, the fox grunts before pulling back out, retreating from your well-fucked hole.";
		say "     Now that only his tip remains inside you, he pushes back in. This thrust goes by faster, your hole getting used to his size. Pretty soon, he's built up a decent rhythm, and you can't help but push your body back, meeting his thrusts. 'I'm going to speed up now,' he warns you. His next thrust is much more aggressive and primal, his knot bashing against your entrance. Your thrusts grow in intensity, determined to get the demon's massive knot in you. With each thrust, more and more of the knot slips inside until it finally passes its widest point, and your body pulls it in the rest of the way. His knot, firmly buried inside you, swells to its full size, ensuring the two of you won't be moving anytime soon. He lets out a howl of pleasure as his cock pulses and erupts inside you, rope after rope of molten, glowing cum spilling into you. Your orgasm follows seconds after, your cock[smn] shooting your [Cum Load Size of Player] load onto the ground below you. More and more of his molten seed fills you, and your belly swells with its weight. By the time his orgasm slows to a trickle and his knot has shrunken down, your stomach is swollen and decently rounded out from the load. 'That was fun, kit,' he pants in your ear. 'I think you'd enjoy being my pet if you liked that...'";
		NPCSexAftermath Player receives "AssFuck" from Kal Ren;
		WaitLineBreak;
		say "     Eventually, he pulls out of your hole, a dribble of his glowing cum flowing out. He gives a few laps at your stretched hole before walking around to face you. 'We should do this again sometime,' he growls suggestively. 'However, I think it's time for me to depart.' A blinding flash suddenly fills your vision, and once it clears, he's gone. If you'd like to see him again, you could [italic type]use the tome[roman type].";
		infect "Demon Fox";
		now DemonFox_PlayerWon_Fucked is true; [won, let him fuck you]
	else:
		say "     You tell the demon that you're not interested, and he nods. 'A pity. You looked like you'd be a fun partner,' he laments. 'I shall respect your wishes, however. If you ever change your mind, you know where to find me.' In a blinding flash of light, the fox is suddenly gone, the tome lying where he once stood.";
	WaitLineBreak;


Section 5 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Kal Ren	"Kal Ren"

Kal Ren is a man.
ScaleValue of Kal Ren is 4. [human sized]
Body Weight of Kal Ren is 7. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Kal Ren is 7. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Kal Ren is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Kal Ren is 12. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Kal Ren is 4. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Kal Ren is 12. [length in inches]
Breast Size of Kal Ren is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Kal Ren is 2. [count of nipples]
Asshole Depth of Kal Ren is 12. [inches deep for anal fucking]
Asshole Tightness of Kal Ren is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Kal Ren is 1. [number of cocks]
Cock Girth of Kal Ren is 5. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Kal Ren is 13. [Length in Inches]
Ball Count of Kal Ren is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Kal Ren is 5. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Kal Ren is 0. [number of cunts]
Cunt Depth of Kal Ren is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Kal Ren is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Kal Ren is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Kal Ren is false.
PlayerRomanced of Kal Ren is false.
PlayerFriended of Kal Ren is false.
PlayerControlled of Kal Ren is false.
PlayerFucked of Kal Ren is false.
OralVirgin of Kal Ren is false.
Virgin of Kal Ren is false.
AnalVirgin of Kal Ren is true.
PenileVirgin of Kal Ren is false.
SexuallyExperienced of Kal Ren is false.
TwistedCapacity of Kal Ren is True. [Twisted Characters can take any penetration, no matter the size]
Sterile of Kal Ren is true. [steriles can't knock people up]
MainInfection of Kal Ren is "".
Description of Kal Ren is "Demonic Fox".
Conversation of Kal Ren is { "Infernal growling" }.
The scent of Kal Ren is "     Kal Ren smells earthy, with a hint of something wild and untamed."

Demon Fox ends here.
