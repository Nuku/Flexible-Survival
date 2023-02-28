Version 2 of Demon Fox by Voidsnaps begins here.

[Expansion and Rewriting by Voidsnaps. Coding assistance by Prometheus.]
[Version 2 Introduction of submissive character scenes.]
[- Originally Authored by: Dys-]

"Adds a Demon Fox enemy and infection, along with the Kal Ren NPC."

[DemonFoxInteractions tracks the number of times the player interacted with the demon fox.]
[DemonFoxRead indicates whether or not the player has read about the demon fox]

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
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Voidsnaps know on the FS Discord.";

to say DemonFoxVictory:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Voidsnaps know on the FS Discord.";

to say DemonFoxDesc:
	if inasituation is true:
		say "";
	else:
		say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Voidsnaps know on the FS Discord.";

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
	now str entry is 20;
	now dex entry is 26;
	now sta entry is 24;
	now per entry is 22;
	now int entry is 16;
	now cha entry is 18;
	now sex entry is "Male";
	now HP entry is 200;
	now lev entry is 10;
	now wdam entry is 20;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 13;
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
"demon fox fur"	"A small tuft of black and red fur you managed to find after fighting the Demon Fox"	1	demon fox fur

demon fox fur is a grab object.

instead of sniffing demon fox fur:
	say "The fur has a distinct, musky smell to it, reminding you of the fox you got it from.";

Usedesc of demon fox fur is "[DemonFoxFurUse]";

to say DemonFoxFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighting in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	choose a row with name of "Demon Fox" in the Table of Random Critters;
	now non-infectious entry is false;
	infect "Demon Fox";
	now non-infectious entry is true;

Section 4 - First Encounter Scene & Combat Aftermath

to say DemonFoxFirstEncounter:
	say "     Out of nowhere, something tackles you to the ground! A heavy weight is pressing down upon your back, and you can feel the hot breath of something along the back of your neck. Pinned beneath musky fur and heavy paws, you can't get a good look at your assailant, even as you feel sharp claws rip through your clothing, leaving you vulnerable to whatever is attacking you. Suddenly, a long, fluffy appendage wraps around your waist, hoisting you into the air, then tossing you unceremoniously to the ground. Your eyes widen, and you gasp as you see a vulpine monster standing over you.";
	say "     Before you can react, the fox pins you once more, its massive forepaws slamming you to the ground as it snarls inches from your face. 'Seems like I finally have something to play with,' he says with a grin that makes your blood run cold. 'I'm going to enjoy [if Player is mpreg_ok]breeding[else]fucking[end if] you like the bitch you [if Player is submissive]are[else]should be[end if].'";
	WaitLineBreak;
	say "     Mustering your strength, you throw the beast off you, drawing a surprised grunt from its open maw. Quickly, you scramble to your feet and ready yourself for a fight. 'My, aren't you a fiesty one.' he chuckles, licking his chops and narrowing his eyes. 'I like that...'";
	now inasituation is true;
	challenge "Demon Fox";
	if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
		if fightoutcome is 22: [submitted]
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
	say "     ([link]Y[as]y[end link]) - Let the fox mount you.";
	say "     ([link]N[as]n[end link]) - Decline his offer.";
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

Section 5 - Summoning and Fork to the 4 Variants

to say DemonFoxSummon:
	say "     You recite the incantation shown in the book, albeit with a little difficulty. With a flash of light, you see the demon fox from before standing in front of you.";
	if DemonFox_PlayerDefeated is true:
		if PlayerMet of Kal Ren is false: [first encounter after the fight]
			say "     'Well, if it isn't my pet from before...' the beast purrs. 'Are you going to try fighting me again? If so, I'm not in the mood. I hate to break it to you, but I'm not always interested in sex and fighting.' You blink at him incredulously. 'I'm not. It might have appeared that way from our first encounter, but I'll be the first to admit that I didn't make a great first impression.'";
			say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can call me Ren,' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused and alone.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerDefeated_KalRen_Arc]";
	else if DemonFox_PlayerSubmitted is true:
		if PlayerMet of Kal Ren is false: [first encounter after the fight]
			say "     Well, if it isn't my pet...' the beast purrs. 'You want to challenge me this time? Sadly, I'm not in the mood. I'm not always interested in the thrills of fighting and fucking.' You blink at him incredulously. 'I'm not. Our first encounter may have implied otherwise, but I'll be the first to admit that I didn't make a great first impression.'";
			say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused at everything that just transpired.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerSubmitted_KalRen_Arc]";
	else if DemonFox_PlayerFled is true:
		if PlayerMet of Kal Ren is false: [first encounter after the fight]
			say "     'Well, if it isn't the flighty kit from before...' the beast purrs. 'Will you run away again? I won't stop you.' You blink at him incredulously. Waving dismissively, he continues. 'I won't. I can see that I won't get far by chasing you. Frankly, it bores me.'";
			say "     'Perhaps we can attempt to be civil. I'm Kal['] Ren, but you can call me Ren, if you'd prefer.' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused at everything that just transpired.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerFled_KalRen_Arc]";
	else if DemonFox_PlayerWon is true:
		if PlayerMet of Kal Ren is false: [first encounter after the fight]
			say "     'Well, if it isn't the conquering hero,' the demon greets you with a surprisingly chipper tone. 'You know, it's rare for a mortal to beat me in combat, but you managed it. I respect you for that,' he says. 'The name's Kal['] Ren, by the way. You can call me Ren.' You tentatively introduce yourself as well.";
			say "     'I know I said you could summon me if you were ever in the mood for breeding, but I'm not feeling up to it at this moment.' He hesitates for a moment before continuing, 'Perhaps another time. You've piqued my interest.' Without giving you a chance to reply, he disappears in a flash of light, leaving you somewhat dumbfounded by the whole interaction.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerWon_KalRen_Arc]";
	now TomeTimer is turns; [we only need one line to set this, as all paths through the content above lead here]

Section 6 - Player Defeated Arc

to say PlayerDefeated_KalRen_Arc:
	say "<Writer's Note: Please have patience, this content arc is in progress.>";

to say KalRen_PlayerDefeatedFuckMenu:
	say "...";

Section 7 - Player Submitted Arc

to say PlayerSubmitted_KalRen_Arc:
	say "     As you open the tome, you hear a familiar chuckle. A flashing light sears your eyes, barely shielded by the edge of the book. Standing before you is the demonic fox in all his glory, his sharp teeth dripping drool, and his stance widened to show off his low-hanging balls. The familiar scent of musk fills your bedroom as he looks you over, his expression showing a hunger that brings a blush to your cheeks. 'It seems you aren't willing to take 'no' for an answer, kit. Do I need to remind you of who's in charge? Or is it possible that you're craving what only [italic type]I [roman type]can give you?' Despite his annoyed tone, the fox's peeking cock shows a certain level of interest. Closing the distance between you, the demonic fox tilts your head to stare into his beastly face, pressing you against the wall and hunching over you. He moves as if your body belongs to him, and asking is a formality. 'Since you're desperate for my company, I'll let you decide how I take you. Choose wisely. I won't stop until I'm satisfied.' Crossing his arms and tapping his foot, the demon stands in front of you, awaiting your answer in polite silence.";
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
			say "     Your tongue continues its lazy path along the demon fox's foxhood, following the curve of one delicious orb up to the base of his knot. [if player is kinky]Pausing there, you flick your tongue over the puffy skin of the fox's sheath, dipping beneath it to taste the powerful musk hidden there. You can't resist a soft suck at tender flesh, bringing a hiss of pleasure through the fox's clenched teeth. [end if]Swirling your tongue over the space behind his knot, you worship the fat ball of flesh, covering every inch with a spit shine before setting your sights on his leaking tip. Placing both hands on that pulsating knot, you lick your way from the base of the demon fox's prodigious manhood up along the swollen cum-vein, lapping up his lava-like gift until you're face to face with his weeping tip. Taking what you can, you swallow his drooling gift, your tongue working over every inch of veiny flesh it can reach.";
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

Section 8 - Player Fled Arc

to say PlayerFled_KalRen_Arc:
	say "<Writer's Note: Please have patience, this content arc is in progress.>";

to say KalRen_PlayerFledFuckMenu:
	say "...";

Section 9 - Player Won Arc

to say PlayerWon_KalRen_Arc:
	say "     You use the spell to summon Kal['] Ren, bracing for the blinding flash of light by holding the book in front of your eyes. 'Well, hello, kit,' you hear him greet in his rumbling voice, opening your eyes and lowering the book to look at him. 'Do you desire some companionship?'";
	if DemonFox_PlayerWon is false or (DemonFox_PlayerWon_Fucked is true and DemonFox_PlayerWon is true):
		say "     You scowl as he taunts you with his infantilizing nickname, quickly stating that you don't belong to him, no matter what he thinks. He laughs, shaking his head before his body suddenly seems to grow before your eyes, one massive paw swiping at your chest and knocking you to the ground. You look into his leering visage, searing drool landing on your face from his dripping maw. 'Oh, so you don't think you're mine? [if DemonFox_PlayerDefeated is true]Perhaps I'll show you your place. You don't realize what that bite I gave you meant. [else if DemonFox_PlayerFled is true] If you're going to run again, kindly refrain from summoning me. Unless you wish for me to [italic type]catch you.[roman type] [else if DemonFox_PlayerWon_Fucked is true]Even after you defeated me, you [italic type]still[roman type] let me fuck you. [end if]As far as I'm concerned, you're mine.'";
	else:
		say "     You scowl at his comment, denying his hold over you, even as your stomach flutters with indecision. He laughs before you're suddenly pinned under a much larger version of him, his paw completely covering your torso. He leers above you, a drop of his nearly scalding saliva dripping onto your face. 'Just because you won last time doesn't mean you'd win again. It wouldn't take much for me to mark you as mine...'";
	WaitLineBreak;
	say "     Removing his paw, he lets those words sink in, his deep chuckle bringing a flush to your cheeks. Soon enough, he returns to his previous size, tugging you to your feet with one fluffy tail. You blink, slightly bewildered and somewhat frightened, as his vulpine grin adds to your embarrassment. 'You...' he says breathlessly, 'you should've seen the look on your muzzle, kit! It looked like you were going to [italic type]piss yourself![roman type]' You look away as he continues laughing for far too long, finally settling down as he sits on his haunches, sharp teeth bared in a teasing grin.";
	say "     'Now... You've called me here. Is there anything you want to do?'";
	LineBreak;
	say "     [bold type]It seems he's willing to let you control the flow of your interactions, to some degree. What would you like to suggest?[roman type][line break]";
	say "     [link](1)[as]1[end link] - You beat Kal' Ren, fair and square. You'd like to explore your options on a more even footing.";
	say "     [link](2)[as]2[end link] - Perhaps there's another way you could serve him...";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-2)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to explore your options, or [link]2[end link] to serve.";
	if calcnumber is 1: [Explore options]
		LineBreak;
		say "     You ponder the fox's fearsome visage, mulling over your options. You beat him, and despite his dominant appearance sending a shudder through you, you are no one's bitch. If you give yourself to him, it will be on your terms. Hoping he'll understand your intent, you tell him so, attempting to keep your voice from wavering. Crossing his arms, the fox taps his foot, mulling over your proposal. 'It's an intriguing thought. I suppose there's no harm in allowing you some freedom.' Showing those terrifyingly sharp teeth with a cocky grin, he tilts your face upward, a perverse sort of affection infusing his words. 'You'll learn to submit, either way. Why not allow you to serve?'";
		now hunger of Kal Ren is 1;
	else if calcnumber is 2: [Serve]
		LineBreak;
		say "     While Kal' Ren's ferocious charms excite and scare you in equal measure, there's something you've been gathering the courage to ask. In your many interactions, you couldn't help but notice that the demon fox's ass is perfectly muscled, with its trio of prehensile tails. If his ever-present musk is any indication, more of his dizzying scent hides beneath those tails, and you would love to taste what he has to offer. Choosing your words carefully, you ask if he'd be interested in letting you worship his ass. 'Daring little kit, aren't you?' Crossing the distance between you and tilting your chin with one paw, Kal' Ren searches your eyes for something, his heated breath inches from your face. His eyes seem deep enough to devour you, and you can't look away. 'Alright. I'll allow this one indulgence. If you abuse the privilege, I will make sure you pay. Do not test me.'";
		now thirst of Kal Ren is 1;
	say "[KalRen_PlayerWonFuckMenu]";

to say KalRen_PlayerWonFuckMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	if hunger of Kal Ren is 1:
		choose a blank row in table of fucking options;
		now title entry is "Suck his Cock";
		now sortorder entry is 1;
		now description entry is "You can't resist the call of that musky fox cock. You're not willing to become his pet, but a taste wouldn't hurt, would it?";
	[]
	if hunger of Kal Ren is 1:
		choose a blank row in table of fucking options;
		now title entry is "Ride his Cock";
		now sortorder entry is 2;
		now description entry is "Sit on Ren's cock. It just looks so inviting...";
	[]
	if hunger of Kal Ren is 1:
		choose a blank row in table of fucking options;
		now title entry is "Present Yourself";
		now sortorder entry is 3;
		now description entry is "Bend over and present yourself. You can't take it anymore! You need that dick inside you.";
	[]
	if thirst of Kal Ren is 1:
		choose a blank row in table of fucking options;
		now title entry is "Worship his Ass with your Tongue";
		now sortorder entry is 4;
		now description entry is "Ren's muscled ass has caught your eye. Just a taste...";
	[]
	if thirst of Kal Ren is 2:
		choose a blank row in table of fucking options;
		now title entry is "Offer your Cock as a Toy";
		now sortorder entry is 5;
		now description entry is "You don't care whether you sound desperate, you need your cock in his hole, now!";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: Shall you [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Suck his Cock":
					say "[KalRen_PlayerWon_Fuck1]";
				else if nam is "Ride his Cock":
					say "[KalRen_PlayerWon_Fuck2]";
				else if nam is "Present Yourself":
					say "[KalRen_PlayerWon_Fuck3]";
				else if nam is "Worship his Ass with your Tongue":
					say "[KalRen_PlayerWon_Fuck4]";
				else if nam is "Offer your Cock as a Toy":
					say "[KalRen_PlayerWon_Fuck5]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now TomeTimer is turns;
	wait for any key;
	clear the screen and hyperlink list;

to say KalRen_PlayerWon_Fuck1: [Suck his Cock]
	say "     [if player is kinky]Sliding to your knees without bothering to disrobe, you smear the fox's sheath over your cheeks, burying your face in the plump ring of leathery flesh around its apex. Sealing your mouth over its salty surface, you suckle, delving your tongue inside to tease his shaft and moaning as it bucks against your appendage, greeting your efforts with droplets of glowing virility. B[else]B[end if]arely able to contain your excitement, you disrobe before the masculine fox, unashamed of your growing excitement[if Player is kinky]. The scent clinging to your nose from his musky sheath settles a lusty haze over you, and you can hear your heartbeat in your ears as your sight arrows to nothing but that delightfully awful scent of demonic fox cock[end if]. You know that he's productive, and as much as you'd love to carry his scent around with you, you're unsure what his cum would do to your clothing.";
	say "     'Eager. Could it be that winning our little spat was nothing more than an attempt to save face?' Pushing his peeking cock against your face, the demon fox demands his due, his hips working his slimy tip over your face in a delightfully degrading and surprisingly gentle motion. That teasing tone flushes your cheeks, and you follow its path, finally capturing his cock as it flops free from his sheath. His knot hasn't swollen yet, but you endeavor to change that fact, setting your gaze on the fluffy pubic fur at the base of your prize. Inch after inch disappears into your mouth, encouraged by a playful, condescending growl, and soon your vision is obscured by the fluff, your huffing breaths taking in intoxicating musk. Slow bobs test your throat's ability to handle him, and, satisfied, you slurp away, growing bolder by the second.";
	WaitLineBreak;
	say "     Praising your efforts in a huffing voice, the demonic fox meets each worshipful bob of your stuffed mouth with a slow thrust, dumping claiming globs of approval down your throat. 'Ah, this is somewhat of a rarity. Was your pride what drove you to defeat me, despite your love of cock?' Drool dripping from his open mouth, Kal' Ren increased his pace, taking over and leaving you with little to do but stare up at him, relaxing your throat for his pointed tip. The heavy rhythm of balls slapping against your chin, the enticing aroma of demonic musk, and whispered (though vaguely insulting) praise mix into a submissive cocktail, scrambling your brain and reducing you to nothing more than a bundle of desperate nerves. It isn't until Kal Ren's cock has worked your lips into a lather of orange pre, covering your chest in spiderwebs of mixed fluids and bringing you to the edge, that you recognize the telltale throb of an impending meal.";
	say "     Opening your throat, you gurgle as he unleashes a flood of searing cum, your eyes slipping closed as you endeavor to swallow every drop, releasing your meager contribution to the mess on the ground below as your stomach swells with his demonic offering. His departure saddens you, but a final belch of cum rewards your devotion, marking your nose with powerful musk. A flash of light leaves you alone with your sloshing stomach and sloppy reminders of your devotion to the fox's cock, festooning your naked body. Shaky and musk drunk, you re-equip yourself, thankful that nothing happens upon you in your moment of weakness.";
	NPCSexAftermath Player receives "OralCock" from Kal Ren;

to say KalRen_PlayerWon_Fuck2: [Ride his Cock]
	say "     'Finished playing the hero, are you? I can't say I blame you. I am rather irresistible.' Smirking as he speaks, the fox sits, his legs spread to show off those churning orbs. Patting his knee, he beckons to you. 'Pants off, then. It's time to show that you deserve my attention.' Scrambling to disrobe, you throw yourself into the fox's waiting lap, settling your rump against that peeking tip before you realize how eager you are for it. It's too late to rethink your choices, though. Seconds after, that slick cock slots itself against your hole, and clawed fingers clamp around your waist, holding you in place for a piercing thrust that spills Kal' Ren's length into your waiting hole. 'What's the matter, kit? Is it too much for you?' Taunting you with his muzzle inches from your ear, Kal' Ren slaps your stuffed ass, growling his pleasure as your hole reflexively tightens, wringing his shaft. 'You wanted to ride me, so why not get to work?' Loosening his grip, he pants, his hips bucking insistently to stir your innards.";
	say "     As much as you hate to admit it, he's right. From the moment he stuffed himself into you, you felt that it [italic type]belonged[roman type] there. Shaking your head to clear the submissive thought, you drape your arms over the demonic fox's shoulders, wiggling your ass and then bringing it down on that swollen knot. If Kal' Ren wants you to give yourself to him, you will-  but you won't make it easy. 'Feisty kit. Admit it. You need this.' Kal' Ren coos, his growling voice almost affectionate as he slaps his heavy balls against your bouncing ass, meeting each of your movements with an impatient thrust. Squirting desire slickens the way, and before long, the space echoes with sloppy noises. Your inner walls feel like they'll melt from searing pre, his heated shaft, and the claws digging into your waist, but you refuse to give up, clamping yourself around his cock. There has to be a way to show that you're not just his pet. You're doing this because you want to, not as some sick way to give yourself to him as a sex slave. Zeroing in on his open, sneering muzzle, you steel your resolve. It's time to give him a taste of his own medicine!";
	WaitLineBreak;
	say "     Capturing the demon fox's lips with your own, you silence his taunts with your tongue. His muzzle is as hot as the rest of him, and you can feel his thrusts speed as you force a kiss on the surprised vulpine. He doesn't push you away, instead countering with his slippery appendage, invading your mouth with wet slurps that smear slick drool over every inch. Before long, he's turned the tables, fucking your throat with his flat tongue, and his knot slams against your hole, threatening to break you open. Thankfully for the sanctity of your abused hole, the fox doesn't stuff his knot past your entrance, instead grinding it against your stubborn clench as fiery ropes fill your innards, coating every inch of your insides in clinging heat and swelling your stomach into a perverse pseudo-pregnancy. His tongue continues its domineering slurp long after he's finished stuffing your hole, only withdrawing once you grow faint and paint his muscular stomach with your load.";
	say "     As you pant, desperate to catch your breath, the fox licks his lips, that dexterous appendage rolling over sharp teeth in an exaggerated motion. 'Nice try, kit, but no matter how you struggle, I know that what you truly want is to be mine. You can't defeat your desires.' Cradling your chin in one paw, the fox stops your attempts to look away. A hungry expression covers his muzzle, and you feel your heart skip a beat before he speaks. 'I suppose I'll have to keep showing you your place. Do struggle, though. It's fun to watch.' Condescending as it is, the laugh that the fox leaves behind as he flashes out of existence sends a chill through your body. Was he right? Staring down at your dripping cock, you can't deny the intensity of the orgasm submitting to him tore from your body. Shaking your head, you gather your gear, massaging the spot where the fox's paw stung your ass cheek. Why did the pain feel so right?";
	NPCSexAftermath Player receives "AssFuck" from Kal Ren;

to say KalRen_PlayerWon_Fuck3: [present yourself]
	say "     'What's this? Have you learned your place?' Raising an eyebrow as you strip and present your ass, Kal' Ren licks his lips, closing the distance between you to press his sheath between your cheeks. His pointed tip claims your hole with a sticky squirt, leaving a slick film hot enough to bring a slight sting to his grind. 'If you want to be marked, all you have to do is ask.' Shaking your head in denial, you resist the urge to spear yourself on that pointed tip. You want to feel that perfect cock inside you, that's all. It has nothing to do with becoming his pet. Whether you're lying to yourself remains to be seen. 'Ah, then you haven't succumbed. Pity.' Drawing a yelp from your lips as he shoves forward, the fox buries several inches of heated flesh past your clenching ring, hunching over your back. Contorting to reach your ear, he places both hands on his hips, whispering in a greedy, deep growl. 'I'll have to show you what it could be like if you gave yourself to me.'";
	say "     Before you can rethink your choices, the fox's claws dig into your waist, his cock withdrawing until his pointed tip bounces against your hole, then stuffing you. A slow but forceful rhythm follows, creating a bulge in your stomach at the apex of his cock. His panting muzzle disappears from your ear as those claws sink in deeply enough to draw blood, and you feel your feet leave the ground as he endeavors to impale you on that thick spire. You've been reduced to nothing but a hole and a flopping, impossibly hard cock as he has his way with you. Coherent thought fades away as he pummels your prostate, and arcing strings of precum stain the ground, but he shows no signs of stopping, ruining your once-tight entrance. You're his whore- no- his fleshlight, with a body meant to please, and all you can imagine is how good it'll feel when he fills you up.";
	WaitLineBreak;
	say "     You cum long before the pummeling fox, whimpering your desire as he fucks you open and swinging like a ragdoll, your cock spraying its submission over your body. You can feel yourself clenching, desperately milking more steaming pre into your aching innards, and you hold your tented stomach, caressing his massive member. You know what's coming next, and you want- no, need it to happen- to be knotted by this magnificent creature. A satisfied sigh rumbles through the rutting fox as a wet pop heralds his completion, corking your innards as wave after wave blasts deep inside you, swelling your belly into a stretched dome. Paws leave your waist, and you collapse forward, your arms barely reaching the ground as the swollen bulb at the base of his cock holds you in place, dangling like a used condom from his crotch.";
	NPCSexAftermath Player receives "AssFuck" from Kal Ren;

to say KalRen_PlayerWon_Fuck4: [worship his ass]
	say "     Trembling with anticipation, you ask Kal' Ren if he's willing to follow through on your suggestion. All the while, you watch those myriad tails sway and curl, obscuring muscular cheeks and fanning a musk that brings a mouthful of drool into existence. You need him to sit on your face, now! Even the tinge of shame at wanting something so degrading isn't enough to stop your imagination from running wild, stiffening your manhood until it hurts. 'Impatient, are we, hero? I suppose I did promise I'd let you taste me.' Seemingly relishing your desire, the fox licks his lips, his cock peeking from its home to drool to the floor. 'Alright. Sit.' He commands with one sharp claw pointing downward. Grumbling at the implication that you're nothing more than a trained dog about to receive a treat, you lie on the ground in the indicated spot, shifting uncomfortably as your cock [if player is not naked]rubs against the inside of your pants[else]bounces against your bare stomach[end if]. However, this angle allows you a peek into the shade behind the fox's balls, and as your imagination runs wild, a protest dies in your throat.";
	say "     'Hah. If I knew this would shut you up, I would have sat on your face long ago.' Taunting you even as he flicks his tails upward and squats over you, Kal' Ren teases you with a shake of his hips, showing off an onyx patch of skin beneath, ringed by red fur. Musk intensifies as he settles into place, inches above your face. 'Breathe it in, kit. You're the first to experience this privilege.' Flushing as his onyx pucker flexes, you bathe in a wave of earthy musk that rolls over you, accompanied by heat from the fox's supernaturally sizzling hole. You breathe deeply, intoxicated by how deliciously manly he smells, and raise your head, pressing your nose against his pucker to snort more of that heady scent. Heated cheeks wreathe your face, flexing to trap you in place, and your mouth hangs open, your tongue dripping in anticipation.";
	WaitLineBreak;
	say "     The soft worship you expected to give that ass is rudely interrupted by the slam of the fox's weight, crushing your face beneath muscular cheeks. Barely protected by his sculpted mounds' padding, you bounce off the ground below, coming to rest with your world swallowed up by searing flesh and heated fur. 'Oh, come now, kit. You didn't expect me to take a passive role in this. It's not in my nature.' Muffled as it is by the expanse of his ass, Kal' Ren's condescending tone vibrates through your head. 'Get to work before I change my mind and mount your face.' You don't need him to tell you twice. Testing that hole with a long lick, you feel it flex and clench beneath your touch, so tight that you're sure no one's ever entered its depths [if AnalVirgin of Kal Ren is false]besides you[end if]. It tastes even better than it smells, like salt and musk, and something you can't quite place, infusing every lick with warmth. Before long, you're attacking that hole with your tongue, slurping away and coating your face in dripping drool.";
	say "     'Good kit. Fuck, that's better than I thought it would be.' As you fill the air between his cheeks with wet, sloppy sounds of worship, Kal' Ren growls, rocking his hips and smearing your face between his cheeks, treating you as nothing more than a toy. Wet, slick sounds from above tell you all you need to know about his enjoyment, and heated drips rain down [if player is naked]on your naked body[else]staining your clothes with his infernal pre[end if]. Unsure of time's passage, you suck at Kal' Ren's pucker until it loosens enough to slip your tongue inside, then slurp your way inside, mashing your nose against it as his efforts to get off grow fevered, his thrusting hips threatening to slam your head against the ground. Sitting down hard, he traps you, clamping down on your tongue and cutting off your air supply as the fox's body moves in obvious orgasm.";
	WaitLineBreak;
	say "     Five productive spurts with the intensity of a gushing hose paint your [if player is naked]naked body[else]clothes[end if], marking you with the demon fox's scent for the foreseeable future. That hole relaxes to a gentle pulse on all sides of your tongue, and just as your vision starts to gain hazy starbursts and your lungs scream for air, the fox's ass raises. Gasping for air, you can only watch as that dusky hole retreats into the distance, replaced by a twitching cock that marks your face with its last gooey dribble. 'That was surprising, kit. Perhaps I should dominate you this way more often. I wonder if you're sturdy enough to serve as my toy.' Voice holding a small amount of condescending affection, Kal' Ren praises you in a roundabout way, his claw trailing over your [if player is naked]bare erection[else]tented pants[end if]. As a flash of light removes the fox from your presence, you lay there, licking your lips free of orange cum. Your [if player is naked]body [else]outfit [end if]glistens with Kal' Ren's glowing satisfaction, and his words echo in your ears. Perhaps next time, you might convince him to ride your cock.";
	if thirst of Kal Ren is 1:
		now thirst of Kal Ren is 2;

to say KalRen_PlayerWon_Fuck5: [offer your cock]
	say "     [if player is not naked]Hooking your fingers into your waistband to bare your [else]Taking hold of your nude [end if]erection, you offer your [cock of player] penis to the fox, asking if he'd like to use you to get off. His gaze brings an eager throb to your cock, and you feel you'll cum on the spot. '[if player is not naked]Strip and s[else]S[end if]it.' Kal' Ren says with an eager smirk, pushing at your shoulders. Before you finish complying, he stuffs two fingers in your mouth, swabbing your throat with thrusting fingers until your saliva covers those furry digits, the excess drooling down to your bare chest. For a moment, you worry that it was all a ruse to ram his cock down your throat, but those fingers disappear beneath his tail. Smearing your drool over his pucker as he pushes you onto your back, slotting your cock between his muscular cheeks and rolling its tip against his tight pucker, he pauses, digging his claws into your bare chest.";
	say "     'Beg for it.' He says with a hungry stare, clenching his cheeks as his heavy paws pin you to the ground. Your cock feels like it will melt away between those cheeks, and the slick, silky hole prodding against your tip promises a heavenly grip, demanding your subservience. Without missing a beat, you beg for Kal' Ren's hole, your needy cock at odds with your pride. Nothing else matters besides sinking yourself to the root. You know he won't accept anything less than complete submission, and you're past the point where that choice would bother you. 'Good kit.' Pleased with your subservience, the fox rocks backward, swallowing your [cock of player] shaft into impossibly tight depths. Somehow, you doubt that he's as untouched as he seems, but through some magic, he's wringing your cock, crushing it in slick warmth that feels like it could rip your member from its base.";
	WaitLineBreak;
	say "     Unable to resist, you helplessly thrust into the fox's slow rhythm, your helpless member gushing to ease the way and slickening your union. With each passing moment, he grows more insistent, speeding his hips and slapping his cheeks against your hips hard enough that your balls begin to ache. You get the feeling that if you cum before your vulpine master, he'll punish you, but you can feel the tide rising from your balls, threatening to christen the fox's hole with its [if AnalVirgin of Kal Ren is true]first [end if]load. 'Right there. Harder.' Eyes flashing and dick slapping your chest, Kal' Ren quickens his pace as he demands more, his hole clamping down with every slap of those dominating cheeks. A fountain of glowing precum coats your bare chest and stomach, and he seems too enthralled with the sensations your cock provides to tend to himself. You aren't sure whether that's a compliment or his way of demanding a hands-free orgasm, but you couldn't care less.";
	say "     'Fuck.' With only a single word, snarled through clenched teeth and accompanied by drool dripping from the corners of his mouth, the demonic fox fires his satisfaction over your chest, raining down gooey strings of orange cum that mark you with his scent. Before you know it, his inner walls clamp like an angry gorilla's fist, ripping your orgasm from your sore balls. Milking you for every drop, he traps your gushing member in place, his tightness letting nothing escape[if player is kinky]. Cool air assaults your cock as it's ripped from the comfortably steaming depths, but before you can protest, the fox covers your mouth with his drooling hole. Rocking his hips, he wordlessly demands you clean up your mess, grunting his pleasure as your tongue sets to work. You ride out the afterglow beneath that muscled ass, his grinding rhythm rolling a mixture of sweat and cum over your face, leaving you with a reminder of your place[end if]. Soon enough, a familiar flash leaves you alone with your thoughts, panting in a puddle of orange cum. Your muscles ache, and it's several minutes before you can move your legs, but you can't help but think it was worth it. Idly, you wonder if the nanites could repair a broken pelvis.";
	NPCSexAftermath Kal Ren receives "AssFuck" from Player;


Section 10 - NPC Declaration

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
Cunt Depth of Kal Ren is 0. [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
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
MainInfection of Kal Ren is "Demon Fox".
Description of Kal Ren is "Demonic Fox".
Conversation of Kal Ren is { "Infernal growling" }.
The scent of Kal Ren is "     Kal Ren smells earthy, with a hint of something wild and untamed.".

Demon Fox ends here.