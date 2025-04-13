Version 2 of Demon Fox by Voidsnaps begins here.

[Expansion and Rewriting by Voidsnaps. Coding assistance by Prometheus.]
[Version 2 Introduction of submissive character scenes.]
[- Originally Authored by: Dys-]

"Adds a Demon Fox enemy and infection, along with the Kal Ren NPC."

[DemonFoxInteractions tracks the number of times the player interacted with the demon fox.]
[DemonFoxRead indicates whether or not the player has read about the demon fox]
[Stamina of Kal Ren controls the Janaz storyline.]

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
	say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Voidsnaps know on the FS Discord.";

to say DemonFoxVictory:
	say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Voidsnaps know on the FS Discord.";

to say DemonFoxDesc:
	say "     You shouldn't be able to encounter the demon fox out of a situation. If you are, please let @Voidsnaps know on the FS Discord.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Demon Fox"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Demon Fox" to infections of VulpineList;
	add "Demon Fox" to infections of FurryList;
	add "Demon Fox" to infections of DemonList;
	add "Demon Fox" to infections of MaleList;
	add "Demon Fox" to infections of KnottedCockList;
	add "Demon Fox" to infections of SheathedCockList;
	add "Demon Fox" to infections of BipedalList;
	add "Demon Fox" to infections of TailList;
	now Name entry is "Demon Fox";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
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
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "demon fox fur";
	now lootchance entry is 50;
	now MilkItem entry is "demon fox milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4;
	now body descriptor entry is "[one of]beastly[or]fluffy[or]hulking[at random]";
	now type entry is "vulpine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
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
			say "     'Well, if it isn't my reluctant pet' the beast purrs. 'Are you going to try fighting me again? If so, I'm not in the mood. I hate to break it to you, but I'm not always interested in sex and fighting.' You blink at him incredulously. 'I'm not. It might have appeared that way from our first encounter, but I'll be the first to admit that I didn't make a great first impression.'";
			say "     'Perhaps we can try this again. I'm Kal Ren, but you can call me Ren,' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused and alone.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerDefeated_KalRen_Arc]";
	else if DemonFox_PlayerSubmitted is true:
		if PlayerMet of Kal Ren is false: [first encounter after the fight]
			say "     Well, if it isn't my pet...' the beast purrs. 'You want to challenge me this time? Sadly, I'm not in the mood. I'm not always interested in the thrills of fighting and fucking.' You blink at him incredulously. 'I'm not. Our first encounter may have implied otherwise, but I'll be the first to admit that I didn't make a great first impression.'";
			say "     'Perhaps we can try this again. I'm Kal Ren, but you can just call me Ren,' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future, we can have another go.' With that, the fox disappears in another flash of light, leaving you confused at everything that just transpired.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerSubmitted_KalRen_Arc]";
	else if DemonFox_PlayerFled is true:
		if PlayerMet of Kal Ren is false: [first encounter after the fight]
			say "     'Well, if it isn't the flighty kit from before...' the beast rolls his eyes. 'Will you run away again? I won't stop you.' You blink at him incredulously. Waving dismissively, he continues. 'I won't. I can see that I won't get far by chasing you. Frankly, it bores me.'";
			say "     'Perhaps we can attempt to be civil. I'm Kal Ren, but you can call me Ren, if you'd prefer.' Tentatively, you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I believe that's enough chit-chat for now. Perhaps sometime in the future, you'll give yourself to me.' With that, the fox disappears in another flash of light, leaving you confused at everything that just transpired.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerFled_KalRen_Arc]";
	else if DemonFox_PlayerWon is true:
		if PlayerMet of Kal Ren is false: [first encounter after the fight]
			say "     'Well, if it isn't the conquering hero,' the demon greets you with a surprisingly chipper tone. 'You know, it's rare for a mortal to beat me in combat, but you managed it. I respect you for that,' he says. 'The name's Kal Ren, by the way. You can call me Ren.' You tentatively introduce yourself as well.";
			say "     'I know I said you could summon me if you were ever in the mood for breeding, but I'm not feeling up to it at this moment.' He hesitates for a moment before continuing, 'Perhaps another time. You've piqued my interest.' Without giving you a chance to reply, he disappears in a flash of light, leaving you somewhat dumbfounded by the whole interaction.";
			now PlayerMet of Kal Ren is true;
		else: [previously introduced by name]
			say "[PlayerWon_KalRen_Arc]";
	now TomeTimer is turns; [we only need one line to set this, as all paths through the content above lead here]

Section 6 - Player Defeated Arc

to say PlayerDefeated_KalRen_Arc:
	say "     You're ready for the blinding flash of light that heralds Kal Ren's arrival, but not for the shoving force and dripping teeth that greet you. Staring up at certain doom, you squirm in vain as he pins you beneath one giant paw, his massive balls smothering your lower half as his splayed toes dig claws into your stomach, threatening to pierce your flesh. 'Well, if it isn't the kit that failed miserably in his attempt to defeat me. Have you learned your lesson?' Without waiting for you to answer, the demon fox closes the distance between you, searing drool dripping down your face as his taunting voice echoes in your ears. Was he always this big? Rolling his tongue over your face, the fox coats you in hot drool, his snarl petering into a chuckle as he smears musky balls over your body, marking you with that unforgettable scent. 'Don't worry, kit. You may belong to me, but I won't harm you- much.' Your suspicions are confirmed as the hulking creature returns to his usual size, his form leaning over you as hungry eyes [if player is barecrotch]bore through your clothes[else] trail over your nude form[end if].";
	LineBreak;
	say "[KalRen_PlayerDefeatedFuckMenu]";

to say KalRen_PlayerDefeatedFuckMenu:
	if Player is kinky:
		say "[one of][KalRen_CockSmother][or][KalRen_AnalLoss][or][KalRen_OralLoss][at random]";
	else:
		say "[one of][KalRen_AnalLoss][or][KalRen_OralLoss][at random]";

to say KalRen_OralLoss:
	say "     'I suppose you're accustomed to controlling your interactions with others on this plane.' Kal Ren says as his claws disrobe you, nicking shallow scratches [if SkinName of Player is listed in infections of ReptileList]in your scales[else if SkinName of Player is listed in infections of FurryList]beneath your fur[else]in your skin[end if]. 'You lost that right when you failed to win our little duel. If you had the good sense to submit, I might have been more gentle, but alas, you're nothing but my toy.' He coos, sharp claws tracing your cock as it grows beneath his touch. Your world turns upside down as gripping paws hold your waist, mashing your cheek against the fox's peeking cock. You kick your legs indignantly, but teeth dig into your ass, and a silencing growl demands your cooperation, threatening something worse than a headrush and a stomach full of orange cum. Swallowing hard, you can only watch as he smears his cock over your face finding your lips, pressing in to take his claim.";
	say "     'Suck. Now.' Comes that growling voice, vibrating through your form as the ground grows further away. Thankfully, Kal Ren's changing form only seems to apply to his height, adjusting himself to support your weight with massive paws. His cock slides deeper into your mouth with an impatient hump, triggering your gag reflex, and you can only slurp helplessly, your eyes watering as each breath brings in powerful musk.'That's it. To the base.' Kal Ren snarls as his tongue slathers your balls in heated saliva, his increased size letting him take most of your ass into his toothy maw for a wet, slurping litany of licks. The mixture of pain and pleasure is intoxicating, growing more intense as that wide vulpine tongue breaks through your defenses and slurps into your guts, filling your hole with slippery saliva.Sharp teeth dig deeper into sensitive flesh with each moment, but you can scarcely make a noise, your arms pushing weakly at his hips in a desperate attempt to draw breath. Your struggling only seems to spur him on, prodding deeper into your throat until you swear that his cock will bottom out in your stomach. Thankfully the knot stops him from dislocating your jaw, but that's a hollow comfort as it slams against your lips, sending heavy balls slapping against your forehead.";
	LineBreak;
	say "     Like a living fleshlight, you're facefucked to within an inch of your life, your abused rump is bitten and reamed by that invading tongue until you swear you'll never be able to sit again, and your throat screams at you, stretched and sore. Tears stream down your face, but they only add to the mess drooling down the demon fox's balls as you cough and wretch, hoping your throat gets him off before you suffocate. You lose track of time, fading in and out of consciousness, but you're rudely dragged back to reality as the fox's cock HEAVES, spitting deep in your throat as that fat knot demands entrance, stopped only by your jaw's inability to dislocate. Your stomach grows heavy, pulsing with warmth and sagging under its weight, and the excess spills from your nose, cutting off what little air you've been sucking in between cruel thrusts. Amidst Kal Ren's final licks, you cum yourself into unconsciousness, painting his fur with your load and sagging in his grip.";
	say "     When you come to, wheezing and weak, you wince, holding your slightly swollen stomach and whimpering as your movements bring a dull, throbbing pain to your abused ass. You contemplate throwing away the ancient tome to prevent another reaming, but the dull throb of your cock and your posterior's gaped, tonguefucked state, makes you wonder if that's the right choice. Did you enjoy yourself? Or are you afraid of the repercussions if the fox finds his way back to you? No, better not to tempt fate.";
	NPCSexAftermath Player receives "OralCock" from Kal Ren;
	now TomeTimer is turns;

to say KalRen_AnalLoss:
	say "     'I suppose you're accustomed to controlling your interactions with others on this plane.' kal Ren says as his claws disrobe you, nicking shallow scratches [if SkinName of Player is listed in infections of ReptileList]in your scales[else if SkinName of Player is listed in infections of FurryList]beneath your fur[else]in your skin[end if]. If you had the good sense to submit, I might have been more gentle, but alas, you're nothing but my toy.' He coos, sharp claws tracing your cock as it grows beneath his touch. Your world spins as he flips you over, claws digging into your rear. He lines himself up, and you realize with a start that the fox won't prepare your ass before he breeds you. The thought of a dry fuck sets your legs kicking, and you try to crawl away on all fours, but the fox's strong paws drag you back, impaling you on his half-exposed dick. You cry out in pain, but that only seems to urge Kal Ren on, feeding into a flurry of thrusts that abuse your once-tight hole. The more you struggle, the harder his thrusts, and as you look over your shoulder, his face twists into a grin. He's ENJOYING your struggles. 'Come now, kit. You were so cavalier when you challenged me. Was that all an act?' The fox snarls, his cock rearranging your insides as more of it grows from his sheath, only stopping once his fat knot kisses your abused hole, pulsing with demonic heat.";
	say "     [bold type]'Or is this hard cock an admission? Are you enjoying yourself?'[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes, you're enjoying yourself. You didn't know that you wanted to be the fox's fucktoy, but you can't help yourself.";
	say "     ([link]N[as]n[end link]) - No. You hate this and you aren't even sure why you summoned him!";
	if Player consents:
		LineBreak;
		say "     Yes! You moan your need, pushing back against his cock and demanding more. You don't care that he's big enough to cause damage to your poor ass or that his claws could rip you apart. You want more! Reaching beneath you, the fox jerks your cock hard and fast, his grip enough to bring further ache to your abused body. You love every second of his cock jabbing your sweet spot, and your cock spits its approval despite the searing pain in your backside, bringing overwhelmed tears to your eyes. You hope he'll continue for eternity, using your body as the cocksleeve you deserve to be! Shoving your chest to the ground and quickening his thrusts, the demon buries his teeth in your shoulder, adding white-hot pain to the melange of pleasurable sensations storming your body. Sadly, the mouthful of your flesh silences his taunts, morphing his words into mindless, rutting snarls that hide the praise you crave. Unfortunately, the expression of dominance combined with that pulsing cock's heavy rhythm brings your orgasm to the forefront, rising from your helplessly churning balls.";
		say "     The first blast of fiery cum bastes your stinging innards and jets against your prostate. The second rope triggers your orgasm, sending pitiful spurts to puddles on the ground below. The third sends Kal Ren's knot slamming [if player is twistcapped]into a tie, corking your hole as he swells your belly into a rounded, pregnant-looking dome, blacking out your vision and sending you into a pleasure coma, oversensitive and well-fucked[else] into your hole, not quite managing to initiate a tie, but making you scream as the pleasure overtakes you, your eyes fluttering closed as you black out from the overload of sensations[end if].";
		NPCSexAftermath Player receives "AssFuck" from Kal Ren;
		say "     When you come to, wheezing through a thick coating of dried cum, you wince, holding your swollen stomach and whimpering as your movements bring a dull, throbbing pain to your abused ass. Still, you contemplate reading the ancient tome to ask for another reaming, but the dull throb of your cock and your posterior's gaping ache, makes you wonder if that's the right choice. No, better not to tempt fate. There will be plenty of opportunities to try again, and a broken fuck-toy won't be usable by the fox. As you gather your gear, you smile, reaching back to finger your broken hole before the nanites can return it to its usual tightness. You'll have to summon him again soon.";
	else:
		LineBreak;
		say "     Gritting your teeth, you shake your head, defiant to the end. You feel like he's splitting you in half, and the demon fox is not gentle. You wouldn't be surprised if those infernal claws tore a hole in your skin that the nanites couldn't heal. You're not even sure why you summoned him! Reaching beneath you, the fox jerks your cock hard and fast, his grip enough to bring further ache to your abused body. You refuse to admit it, but his cock is jabbing your sweet spot, and your cock spits its approval despite the searing pain in your backside, bringing tears to your eyes. If you can hold out, he'll cum, and this ordeal will end. Shoving your chest to the ground and quickening his thrusts, the demon buries his teeth in your shoulder, adding white-hot pain to the melange of sensations storming your body. Mercifully, the mouthful of your flesh silences his taunts, morphing his words into mindless, rutting snarls. Unfortunately, the expression of dominance combined with that pulsing cock's heavy rhythm brings your orgasm to the forefront, rising from your helplessly churning balls.";
		say "     The first blast of fiery cum bastes your stinging innards and jets against your prostate. The second rope triggers your orgasm, sending pitiful spurts to puddles on the ground below. The third sends Kal Ren's knot slamming [if Player is twistcapped]into a tie, corking your hole as he swells your belly into a rounded, pregnant-looking dome, causing you black out, oversensitive and over-fucked[else]into your hole, not quite managing to initiate a tie, but making you scream as the pain overtakes you, your eyes fluttering closed as you black out from the overload of sensations[end if].";
		NPCSexAftermath Player receives "AssFuck" from Kal Ren;
		say "     When you come to, wheezing and weak, you wince, holding your slightly swollen stomach and whimpering as your movements bring a dull, throbbing pain to your abused ass. You contemplate throwing away the ancient tome to prevent another reaming, but the dull throb of your cock and your posterior's gaped, cum-drooling state, makes you wonder if that's the right choice. Did you enjoy yourself? Or are you afraid of the repercussions if the fox finds his way back to you? No, better not to tempt fate.";
	now TomeTimer is turns;

to say KalRen_CockSmother:
	say "     'I suppose you're accustomed to controlling your interactions with others on this plane.' kal Ren says as his claws disrobe you, nicking shallow scratches [if SkinName of Player is listed in infections of ReptileList]in your scales[else if SkinName of Player is listed in infections of FurryList]beneath your fur[else]in your skin[end if]. If you had the good sense to submit, I might have been more gentle, but alas, you're nothing but my toy.' He coos, sharp claws tracing your cock as it grows beneath his touch. You brace yourself for teeth ravaging your skin, claws raking over sensitive areas, or a rapacious cock stuffing itself into one of your holes, but a heavy flop takes your breath away, burying you under a cock the size of a person. Wheezing and sputtering, you attempt to escape, catching a glimpse of sharp teeth in a demonic grin, but that wet canine shaft grinds down against your naked body, butting its pointed tip against your chin, nearly gushing pre into your open mouth.";
	say "     'Perhaps I should remind you of your place. I could fuck you for hours, use your limp body as a toy and leave you wanting more, but what better way to show superiority than to reduce you to something less than mortal. An object to pleasure me. Surely, you have no objections?' Taunting you with his question, the fox shoves his cock against your body, sealing your mouth around his tip and coating your mouth with a hefty coat of fox pre. You couldn't answer if you wanted, with your throat occupied by swallowing, preventing you from drowning. Kal Ren's hovering, panting presence puts force into each thrust, almost punching you in the face with his tapered tip and forcing you to raise your limbs, gripping his cock to prevent its slippery length from uppercutting your aching jaw. Before long, its slipperiness coats every inch of your body, bathing you in musk and scrambling your brain with the scent of demonic arousal.";
	LineBreak;
	say "     [bold type]Buried beneath the fox's colossal member, you ponder your circumstances. You're not sure if it's Kal Ren's musk, or the nanites, but could it be that you've begun to enjoy yourself?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes. Why hide it? You're having the time of your life.";
	say "     ([link]N[as]n[end link]) - No. You want him to hurry up and finish.";
	if Player consents:
		LineBreak;
		say "     It doesn't take long for you to start humping against that slippery shaft, biting your lower lip as the demonic fox coats your squirming body in his masculinity. Your cock is so much smaller than his, but you grind it against his bitchbreaker,  wrapping your legs around the start of the knot and trying your best to get Kal Ren off. Something about your position feels so right, and before long, you're rolling your tongue over the endless stream of goo, swallowing the demonic fox's essence by the mouthful and moaning against his shaft. 'Good kit. Perhaps I misjudged you. Rather than a toy, you're a trophy.' Kal Ren pants as he thrusts, growing more violent and threatening to squish you under his throbbing cock. With a triumphant growl, he goes still, tilting his cock upward and fountaining a seemingly infinite stream of cum that batters you as it comes back to earth. All the while, all you can do is cling to his shaft, your face so coated in fox cum that you can barely breathe. Your cock adds its pitiful contribution to the mess, though your moans muffle against the slippery shaft, lost in gooey satisfaction. Overwhelmed by the intensity of your orgasm and weakened by the lack of air, you pass out.";
		NPCSexAftermath Player receives "stroking" from Kal Ren;
		LineBreak;
		say "     When you come to, wheezing through a thick coating of dried cum, you wince, holding your battered stomach and whimpering as your movements bring a dull, throbbing pain to your back, no doubt from the violent cock-smothering you just received. Still, you contemplate reading the ancient tome to ask for another reaming, but the dull throb of your cock and your posterior's bruised state, makes you wonder if that's the right choice. No, better not to tempt fate. There will be plenty of opportunities to try again.";
	else:
		LineBreak;
		say "     You go limp against that slippery shaft as the demonic fox coats your squirming body in his masculinity, facing away from the wall of cock-flesh. Your cock is so much smaller than his, and you can't help the unwelcome stimulation of your legs wrapped around the start of the knot as you try your best to get Kal Ren off and end this humiliation. Something about your position feels so wrong, but you're forced to swallow the demonic fox's essence by the mouthful despite your best efforts, keeping your mouth clear for shaky breaths between battering thrusts that knock the wind out of you. 'Pretend all you like, kit. Your cock doesn't lie. I can feel how hard you are.' Kal Ren pants as he thrusts, growing more violent and threatening to squish you under his throbbing spire. With a triumphant growl, he goes still, tilting his cock upward and fountaining a seemingly infinite stream of cum that batters you as it comes back to earth. All the while, all you can do is cling to his shaft, your face so coated in fox cum that you can barely breathe. Your cock adds its pitiful contribution to the mess despite your best efforts, though your involuntary moans are thankfully muffled against the slippery shaft. Overwhelmed by the intensity of your humiliation and weakened by the lack of air, you pass out.";
		NPCSexAftermath Player receives "stroking" from Kal Ren;
		say "     When you come to, wheezing through a thick coating of dried cum, you wince, holding your battered stomach and whimpering as your movements bring a dull, throbbing pain to your back, no doubt from the violent cock-smothering you just received. You contemplate throwing away the tome, but the dull throb of your cock and your posterior's bruised state give you pause, and you wonder if that's the right choice. No, better not to tempt fate. If Kal Ren somehow finds his way back to you, you doubt you'll be treated any better!";
	now TomeTimer is turns;

Section 7 - Player Submitted Arc

to say PlayerSubmitted_KalRen_Arc:
	say "     As you open the tome, you hear a familiar chuckle. A flashing light sears your eyes, barely shielded by the edge of the book. Standing before you is the demonic fox in all his glory, his sharp teeth dripping drool, and his stance widened to show off his low-hanging balls. The familiar scent of musk fills your bedroom as he looks you over, his expression showing a hunger that brings a blush to your cheeks. 'It seems you aren't willing to take 'no' for an answer, kit. Do I need to remind you of who's in charge? Or is it possible that you're craving what only [italic type]I [roman type]can give you?' Despite his annoyed tone, the fox's peeking cock shows a certain level of interest. Closing the distance between you, the demonic fox tilts your head to stare into his beastly face, pressing you against the wall and hunching over you. He moves as if your body belongs to him, and asking is a formality. 'Since you're desperate for my company, I'll let you decide how I take you. Choose wisely. I won't stop until I'm satisfied.' Crossing his arms and tapping his foot, the demon stands in front of you, awaiting your answer in polite silence.";
	say "     [bold type]How do you want Kal Ren to fuck you?[roman type][line break]";
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
		say "     [bold type]Kal Ren is growing frustrated with your jaw's inability to accept his knot. Do you want to encourage the savage beast's efforts?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, reach up and give those heavy balls some affection to goad him into knotting your mouth.";
		say "     ([link]N[as]n[end link]) - No. You're afraid of taking the knot. It could break your jaw!";
		if Player consents: [Take the knot]
			LineBreak;
			say "     With a triumphant howl, the fox surges forward with a wet pop, locking your jaw around his swollen knot and draining himself down your throat. Hot, molten cum fills your stomach, slowly at first, then gaining volume with each heavy spurt, and you can feel your stomach swelling with his prodigious output. Like an overfull condom, you feel yourself reach your limit. Still, the fox isn't finished, humping relentlessly until your nose overflows with orange cum, messing the sweaty pubic fur in front of you with evidence of his desire. Trapped between the wall and increasingly messy fur, you drift in and out of consciousness, drawing what few breaths you can through an endless deluge of cum. Just as you begin to worry that you'll die there, impaled on his dick, you feel pressure on your jaw, growing rougher until the fox's knot pops free, his flexing tip filling your mouth with a final squirt of gooey heat before withdrawing completely. 'Good kit. You're better at taking cock than I thought you'd be. We'll have to do this again.' Filled with mocking affection that sends a shiver through your spine, Kal Ren's voice purrs above you. Marking your face with his retreating cock and sweating balls, the fox pulled away, letting you draw your first untainted breath in what felt like hours. Another flash follows as the fox disappears into the book, leaving you to gather your wits and clean the evidence of your encounter. Hopefully, you can still walk with your belly as swollen as it is.";
			NPCSexAftermath Player receives "OralCock" from Kal Ren;
		else: [Don't take the knot]
			LineBreak;
			say "     Frustrated, the fox pulls back, unsheathing his cock and slapping it against your face. 'No way around it. I'll have to mark you instead.' He growls his words, grinding against your face and smearing that plump shaft over your cheeks, nose, and open mouth. Suffocating you in pulsing cock and churning balls, he grows more restless by the second, the pulsing heartbeat feeding that monster growing more frantic. With a triumphant howl, he fountains molten orange cum, his hips withdrawing so you can watch the arcing strings before they land heavily on your face, searing your skin with almost unbearable heat. Each rope is fatter than the last, and before long, you can barely see, your squinting vision tainted by an orange glow and your world colored by the scent of musk and cum. 'What a waste. You'd better lick all of that up.' Mocking your sorry state, Kal Ren brought his cock to bear, letting you feel its heat against your drenched face. Smearing his drooling tip against your cheek and pushing some of his cum into your open, panting mouth in the process, the fox disappears in a flash, leaving you to clean his mess. It takes you a few minutes to clear your eyes. By the time you can see well enough to stand on shaky legs, the fox's cum has begun to cool, leaving you with a musky, uncomfortable reminder of your submission as you busy yourself with mopping up the puddle below you. Maybe it would have been better to brave his knot.";
			NPCSexAftermath Player receives "OralCock" from Kal Ren;
	else if calcnumber is 2: [Anal]
		LineBreak;
		say "     'Begging to be bred? I can't say I'm surprised. I bet you've been thinking about it since that first time.' Grabbing your arm as he speaks, the fox looks around, settling on your cot and unceremoniously throwing you over it.[if Player is not naked] Tearing away your clothes with impatient claws, he licks his lips, one paw on the small of your back to keep your ass oriented for his pleasure. 'Next time, take it all off before you summon me. I want to see my property. You don't need modesty when you've already given yourself to me[else] Licking his lips, the fox slaps your upturned ass, digging his claws into your cheeks and spreading them to inspect your ass. 'This is how it should be. Naked and ready for my cock. You're such a well-behaved kit.' Judging by his tone, you've pleased the fox. You'll have to remember to strip next time if you want to be a good pet.[end if] Without a moment spent preparing your vulnerable ass, the fox lines up his peeking cocktip, smearing its drooling tip over your hole and letting you feel the heat pouring off his churning balls. Sharp claws dig into your skin, drawing blood as he surges forward, his cock spilling into your ass in one prolonged stretch that brings tears to your eyes. Was he always this big, or was the fox increasing his size to humiliate you?";
		say "     'Still just as tight as the first time. It's a perfect fit, isn't it, kit?' Taunting you as he mercilessly thrusts, the fox drools onto your back, rutting you like a bitch in heat. There's no tenderness in his thrusts, and what few jabs find your prostate seem accidental, though they harden your cock and set your nerves alight. A claiming snarl fills the air as thrusts get wetter, sending trails of molten pre down your balls to drip wetly on the floor below. Kal Ren shows no signs of slowing, and when you feel his knot swell, he bites down on your shoulder, the burning stretch of that throbbing ball of flesh threatening to burst through your entrance.";
		WaitLineBreak;
		if Lust of Kal Ren > 0: [Only been fucked by him once]
			say "     Searing pain and blinding pleasure combine as sharp teeth break the skin of your shoulder, pinning you under the rutting beast. His knot pops in with colossal effort, ruining your hole and filling you with the sensation of being so full you might pop. This feeling grows more pronounced as jets of liquid demon-fox seek your deepest reaches, pooling in your bowels and swelling your stomach into a perverse facsimile of pregnancy. Helpless underneath the beast's savage affections, you clench and squirm, your cock unleashing its approval against the bed below and cementing your submission. You don't want to admit it, but you live for the thrill of being taken by the monstrous fox. 'Good kit.' Kal Ren's voice drips with approval even as his teeth drip with your blood, his grip on your waist tightening as he tests the death grip your spasming hole has on his cock. With a wet pop, he slops free alongside a deluge of spilling cum, leaving your ass gaped and overused. You doubt you could clench closed if you tried.";
		else: [Been fucked more than once]
			say "     Snarling, Kal Ren throws his entire weight into fucking you, easily slopping his swollen knot past your battered, broken hole and emptying the contents of his churning balls into your accepting hole. This time, however, he hasn't finished with you. Intense pressure tests your connection before the first jet consecrates your insides, and with a wet pop, he slides free, his teeth clamping on your shoulder as his cock continues its rampage, unwilling to let you off with a single knotting. Ramming home in a feral rhythm, the fox destroys your hole with his knot, pulling at your helpless entrance with every savage thrust and depositing more of his desire into your growing bulge. You aren't tight enough to hold him in place, so all you can do is twitch and moan, lost to the intense sensation of your prostate's brutal beating and hole's ruination. You'll be lucky if you can sit down for a week! Helpless before the onslaught, you signal your submission, your cock unleashing its wasted load on the cot below you and squirting in time with every sloppy pop. You lose track of how long you cum and how long the fox uses you, only returning to your senses when you feel the wet sensation of Kal Ren's cock wiping itself clean on your ass-cheeks.";
		say "     The demon leaves you to rest in your mess, your hopelessly destroyed ass leaking a river of cum to the floor below. A flash confirms that he returned to his book, and you settle in for a nap, hoping to sleep off the gut full of cum and the ache of claw marks and bites that are already healing over.";
		NPCSexAftermath Player receives "AssFuck" from Kal Ren;
		if Lust of Kal Ren < 5:
			increase Lust of Kal Ren by 1;
		now TomeTimer is turns;
	else if calcnumber is 3: [Ball Worship]
		LineBreak;
		say "     'Ah, yes. You've had your eyes on these since you submitted to me.' Teasing you with his trademark growling voice, Kal Ren hefts his sizable balls in one paw, smirking as you follow their hypnotic sway. 'Tell me, kit. If I let you play with them, what will I receive? I doubt your tongue is enough to satisfy.' Sitting on the edge of your cot without a care for the squealing springs and bowing frame, he crosses his arms expectantly.";
		say "     [bold type]How are you going to persuade Kal Ren to let you worship his balls?[roman type][line break]";
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
			say "     He smells earthy, with a hint of something wild and untamed, and the deeper you press your nose, the stronger it becomes, filling your senses with masculinity too powerful to be denied. Eager to show appreciation for this awful, deliciously unwashed scent, you caress the fragrant fuzz covering your prize, then roll your tongue along it, tasting the salty, heady flavor of the fox's manhood. Minutes pass as you dutifully lick every last inch of Kal Ren's balls, sandwiching your face between those heavy kit makers and leaking a small puddle of desire between your thighs as your dick throbs along with each shuddering churn of Kal Ren's cum factories. As you feel your orgasm rising, you snort his musk like a drug, hefting them and smearing their saliva-streaked fur over your face. ";
			WaitLineBreak;
			say "     'As much as I enjoy watching you debase yourself- I believe you promised something more substantial.' Seizing his cock, Kal Ren let its drooling tip ooze down onto your panting face, narrowly missing your eyes as it drips down your cheek. 'Are you going to keep me waiting? I could take what I need if you prefer.' Licking his lips at his threatening promise, he squeezes his knot and wags his vulpine shaft imperiously.";
			say "     Coaxed by that bouncing tip and Kal Ren's hungry gaze, you work your way up from his spit-shined nuts, trying to wrap your hands around the base of his cock without success. Somehow, you get the feeling that no matter how large you are, he'd take advantage of his powers to keep the oversized comparison. His eyes betray nothing of a trick, staring expectantly at you as you hurriedly move to try the next best thing. Wrapping your arms around his oversized cock, you cradle it to your chest, raising yourself on your haunches. He's already somewhat slick from your efforts, so it's easy to spread his arousal over his shaft, though you grow sticky, marking yourself with his scent. Soon enough, you settle into a rhythm, using your arms, chest, and face to stroke while staring expectantly at his face, hoping for some hint of approval.";
			WaitLineBreak;
			say "     Kal Ren's tongue hangs out, dripping onto his chest fur. With each clumsy stroke, his hips begin to move on their own, pushing his pointed tip against your face and slapping his heavy balls against your stomach. All you can do is hold on, breathe heavily, and bask in heated orange goo. You don't have to wait long for his orgasm. Between the heavy thrusts that threaten to throw you off of his quaking cock and your clumsy efforts to get him off, he's soon fountaining his approval, painting the wall behind you with the majority of his molten cum. Throwing his head back, he saws his cock between your clutching arms, smearing the final remnants of liquid fox over your face in a perverted show of dominance.";
			say "     You soon join him in orgasm, your hand drifting to your member and smearing Kal Ren's gooey gift over its length until its molten heat tears a comparatively pitiful contribution from your aching balls, coloring the puddle of pre with streaks of cum. Afterglow mingles perfectly with the pulsing sensation of fox cock pressed against you, and you bask in its heat, searing his scent into memory before, all too soon, a blinding flash of light robs you of Kal Ren's member. Sighing dreamily, you clean yourself up and replace your gear. You can always summon the demon fox again when you crave more of him. For now, you have other things to do.";
		else if calcnumber is 2: [Blowjob]
			LineBreak;
			say "     'If that is what my kit wants, I suppose I should oblige. I'm nothing if not a gracious master.' His bored, patronizing speech doesn't match his cock's peeking tip, and you're confident he's as intrigued by your desire to worship him as you are. Spreading his legs, he pats his lap, inviting you closer to inspect those low-hanging orbs. Disrobing without hesitation, you drop to your knees, shuffling closer until the infernal heat of those massive nuts sears your nose, bringing with it the unmistakable fox musk that gathers around him like a cloud of steam. Shuddering, you press your nose against one churning nut, breathing deeply as a light-headed, floating feeling overtakes your brain.";
			say "     He smells earthy, with a hint of something wild and untamed, and the deeper you press your nose, the stronger it becomes, filling your senses with masculinity too powerful to be denied. Eager to show appreciation for this awful, deliciously unwashed scent, you caress the fragrant fuzz covering your prize, then roll your tongue along it, tasting the salty, heady flavor of the fox's manhood. Minutes pass as you dutifully lick every last inch of Kal Ren's balls, sandwiching your face between those heavy kit makers and leaking a small puddle of desire between your thighs as your dick throbs along with each shuddering churn of Kal Ren's cum factories. As you feel your orgasm rising, you snort his musk like a drug, hefting them and smearing their saliva-streaked fur over your face. ";
			WaitLineBreak;
			say "     'As much as I enjoy watching you debase yourself- I believe you promised something more substantial.' Seizing his cock, Kal Ren let its drooling tip ooze down onto your panting face, narrowly missing your eyes as it drips down your cheek. 'Are you going to keep me waiting? I could take what I need if you prefer.' Licking his lips at his threatening promise, he squeezes his knot and wags his vulpine shaft imperiously.";
			say "     Your tongue continues its lazy path along the demon fox's foxhood, following the curve of one delicious orb up to the base of his knot. [if Player is kinky]Pausing there, you flick your tongue over the puffy skin of the fox's sheath, dipping beneath it to taste the powerful musk hidden there. You can't resist a soft suck at tender flesh, bringing a hiss of pleasure through the fox's clenched teeth. [end if]Swirling your tongue over the space behind his knot, you worship the fat ball of flesh, covering every inch with a spit shine before setting your sights on his leaking tip. Placing both hands on that pulsating knot, you lick your way from the base of the demon fox's prodigious manhood up along the swollen cum-vein, lapping up his lava-like gift until you're face to face with his weeping tip. Taking what you can, you swallow his drooling gift, your tongue working over every inch of veiny flesh it can reach.";
			WaitLineBreak;
			say "     'Good kit. You're so eager for it.' Goading your efforts with his panting words, the fox strokes himself with both paws, shaking his cock with every movement. Clinging to his tip like a man possessed, you close your eyes, letting his shaky breathing guide your slow bobbing as you desperately attempt to keep him inside. Howling his approval, Kal Ren thrusts upward, stretching your mouth and stroking himself feverishly as one paw moves to the back of your head, trapping you in place. With a heaving throb, his knot bloats, and as you brace for his orgasm, you feel a gooey eruption threaten to throw you across the room, forcing its way down your throat and backing up through your nose as shot after shot crams its way past your stretched lips.";
			say "     Swallowing franticly, you worry that you've breathed your last, struggling against his iron grip and feeling your stomach swell out into a perverse bulge. Feeling your grip on reality fade as you drift in and out of consciousness, you swallow dutifully until finally, as your lungs scream for air and your stomach threatens to burst, the fox loosens his grip, letting you fall back and draw a shaky breath. Letting loose his last few dribbles of steaming satisfaction onto your swollen stomach, the fox lazily strokes himself, a satisfied smirk across his muzzle. 'I must admit, the depth of your devotion pleases me to no end.' Yawning as he finishes speaking, he touches the tip of his cock to your nose, then disappears in a flash of light, leaving you to digest your gut-full.";
			NPCSexAftermath Player receives "OralCock" from Kal Ren;
		else if calcnumber is 3: [Anal]
			LineBreak;
			say "     'If that is what my kit wants, I suppose I should oblige. I'm nothing if not a gracious master.' His bored, patronizing speech doesn't match his cock's peeking tip, and you're confident he's as intrigued by your desire to worship him as you are. Spreading his legs, he pats his lap, inviting you closer to inspect those low-hanging orbs. Disrobing without hesitation, you drop to your knees, shuffling closer until the infernal heat of those massive nuts sears your nose, bringing with it the unmistakable fox musk that gathers around him like a cloud of steam. Shuddering, you press your nose against one churning nut, breathing deeply as a light-headed, floating feeling overtakes your brain.";
			say "     He smells earthy, with a hint of something wild and untamed, and the deeper you press your nose, the stronger it becomes, filling your senses with masculinity too powerful to be denied. Eager to show appreciation for this awful, deliciously unwashed scent, you caress the fragrant fuzz covering your prize, then roll your tongue along it, tasting the salty, heady flavor of the fox's manhood. Minutes pass as you dutifully lick every last inch of Kal Ren's balls, sandwiching your face between those heavy kit makers and leaking a small puddle of desire between your thighs as your dick throbs along with each shuddering churn of Kal Ren's cum factories. As you feel your orgasm rising, you snort his musk like a drug, hefting them and smearing their saliva-streaked fur over your face. ";
			WaitLineBreak;
			say "     'As much as I enjoy watching you debase yourself- I believe you promised something more substantial.' Seizing his cock, Kal Ren let its drooling tip ooze down onto your panting face, narrowly missing your eyes as it drips down your cheek. 'Are you going to keep me waiting? I could take what I need if you prefer.' Licking his lips at his threatening promise, he squeezes his knot and wags his vulpine shaft imperiously.";
			say "     'You'd like to take charge and ride me?' Pondering your face as he speaks, the demon fox clicks his tongue, then offers a paw, spreading his legs and waggling his cock invitingly as if to draw you in. 'Were it anyone else, I would decline such an offer, but you've proven that you will not abuse the privilege. Come then, show your devotion.' Without wasting a moment, you clamber onto the fox's lap, wincing as your cot screams in protest and bows further. Worries disappear as you feel that heated rod test your entrance, nuzzling up against it as if knocking at a door, and before you can think about the logistics of taking such a monstrous cock, you find yourself sitting down, piercing yourself on his pointed tip.";
			WaitLineBreak;
			if "Twisted Capacity" is listed in Feats of Player:
				say "     'You never cease to amaze me, pet. It's like you were born to take every inch.' Hissing through clenched teeth, the fox praises your efforts, his shaft sliding into you like a hot knife through butter. A mischievous smirk cracks his muzzle as you bottom out against his knot, and you feel his palms rest against your hips, holding you in place. 'In fact, I think it's time I show you another benefit to belonging to me. A talented kit like yourself should be able to withstand it.' Before you can ask what he means, a confused moan cuts off your speech. His shaft grows hotter, and your stuffed passage burns with a new stretch as his length fattens. The snaking sensation of his cock's upward growth leaves no doubt about what he's doing, swelling the outline of his cock through your stomach into an alarmingly stretched tent.";
				say "     'Still nowhere near your breaking point.' Sighing happily, the fox tested your hole, rearranging your innards with every squishing thrust. Even his knot is colossal, almost as large as your ass itself. 'Isn't it perfect, kit? Only I can fill you like this. Only I can give you what you crave.' Too overwhelmed to answer, you dangle at his mercy, drooling and moaning with every hard thrust. You're nothing more than a fleshlight for his mammoth cock, but somehow that excites you. He's right, he's the only one that can make you feel like this, and your steel-hard cock agrees, slapping your violated stomach with every hard push. Sliding up and down like nothing more than a fleshlight, a deluge of orange precum clearing the way for Kal Ren's swollen bitchbreaker, you cling to his chest for dear life, closing your eyes against his fur. You're so close to the edge that you can taste it, and the demon fox's cock is bucking hard enough to knock the wind from your lungs, so you know it won't be long.";
				WaitLineBreak;
				say "     Digging his claws into your thighs hard enough to draw blood, the demon fox growls triumphantly, throwing his head back and letting his tongue flop from the side of his maw. With a wet pop, Kal Ren forces that monster knot past your defenses, corking your hole as his tip bloats and spits its virile load deep into your innards, blasting a pregnant bulge into your already stretched stomach and filling it out until you swear you're nothing more than a filled condom, your cock adding its desire to the mess of sweat and drool slicking Kal Ren's fur. You rest against the fox's chest, too exhausted to attempt to break your connection, but all too soon, you feel his member shrink, uncorking a deluge of cum from your ruined hole. As you fall to the side, holding your sloshing stomach, you close your eyes against the flash of light from Kal Ren's disappearance, your eyes drifting closed as his voice echoes in your ears. 'Until next time, kit.'";
			else:
				say "     Kal Ren is as overwhelmingly large as usual, but you brace yourself for the twinge of pain from the stretch his member gives your hole. Swiveling your hips from side to side, you slide each inch past your entrance until you find a makeshift seat on his knot, pausing to enjoy the pleasant fullness radiating from your stretched rear. You're slightly proud of yourself for taking most of him in one go, but you doubt he'll be satisfied until his knot buries itself inside you. 'Take your time, kit. If I get bored, I can pin you to the wall and take what I want.' Showing sharp teeth, the fox taunts you, flexing his shaft to brush its thick length against your sweet spot. He seems amused by your willingness to please, but his eyes show a depth of lust that puts your legs back to work.";
				say "     Up and down, up and down, growing more confident with each stroke, you ride him like it was what you were born to do, your increasingly pre-slicked ass filling the room with a symphony of sounds to mingle with pleased growls and your frantic moans. Outside of his knot, Kal Ren's size is manageable, but you crave its stretch, testing your hole's limits with each heavy bounce and growing more frustrated as it won't slip in. 'Poor thing. Let me help you.' Kal Ren's voice breaks through your concentration as his hips meat yours, putting opposing force into each needy bounce. Your dick feels like it's going to melt, flopping wildly and drooling spiderwebs of pre, and you can feel Kal Ren's twitch with every motion, ready to explode.";
				WaitLineBreak;
				say "     Pop. You see stars as your combined efforts finally pop the demon fox's knot past your defenses, and you cry out as sharp teeth find your shoulder, clamping down in an impressive display of flexibility. Spraying your desire and clinging to the biting fox, you beg for his finish wordlessly, your breath hitching in your throat. Steaming cum erupts from his buried tip, swelling your stomach until you feel like it will pop. Each spurt sends his cock into a flopping frenzy, battering your prostate and prolonging your pleasure while he growls and gnaws at your shoulder, leaving his mark. Sore, battered, and bruised, you fall to the side as soon as the fox pulls himself from your depths, your vision blurring as he wipes his cock across your exhausted form. 'Goodbye, kit.' He purrs as you hold your swollen stomach, fighting the urge to pass out. 'If you want more, you know where to find me.'";
			say "     Dragging yourself from the cot after your stomach's swelling fades enough that you can stand, you clean yourself up and wince as your used hole protests. Perhaps the next time you meet, you'll ask Kal Ren to go easy on you. You shake your head, smiling ruefully. As if that would happen.";
			NPCSexAftermath Player receives "AssFuck" from Kal Ren;

Section 8 - Player Fled Arc

to say PlayerFled_KalRen_Arc:
	say "     Greeting you with a grimace and a dismissive wave of his paw, the demon fox speaks in a condescending tone. 'You again? I grow tired of your presence. I have no use for cowards not [italic type]man enough [roman type]to submit to me. [bold type]Would you prefer to stop summoning me, or would you rather I force the issue?'[roman type][line break]";
	let KalRenFledChoices be a list of text;
	add "Submit to the fox. What he's saying sounds ominous. Best to stay on his good side." to KalRenFledChoices;
	add "Offer to stop summoning him. You still have business with other denizens of the tome." to KalRenFledChoices;
	add "Taunt him. He couldn't catch you before. What could he possibly do to you now?" to KalRenFledChoices;
	let KalRenFledChoice be what the player chooses from KalRenFledChoices;
	if KalRenFledChoice is:
		-- "Submit to the fox. What he's saying sounds ominous. Best to stay on his good side.": [Defaults to Submissive route]
			LineBreak;
			say "     Meekly, you step closer, promising to submit to the fox as long as you don't have to face whatever consequences his words foreshadowed. Your apology is weak, and you sweat bullets as you watch his face contort into laughter, but you feel instant relief as the fox's expression cracks into an impish smile and he wipes his eyes theatrically. 'Oh, cowardly kit. Don't worry, I won't hold it against you. Let's start over now that you know your place. We'll pretend this never happened.'";
			now DemonFox_PlayerFled is false;
			now DemonFox_PlayerSubmitted is true;
		-- "Offer to stop summoning him. You still have business with other denizens of the tome.": [Removes Kal Ren from save.]
			LineBreak;
			say "     The truth is, you're not interested in Kal Ren. Now that you've met him, you believe that he's a reasonable enough fox, so you decide to be honest. If you promise not to summon him, that should be enough to keep you out of his hair. 'Fine.' The fox sighs, shrugging his shoulders. 'What's another hundred years? I suppose, since you asked nicely, I'll rest a while until the book falls into the hands of someone more fun.'";
			TraitGain "DemonFoxGone" for Kal Ren;
		-- "Taunt him. He couldn't catch you before. What could he possibly do to you now?": [Bad Idea. Your funeral.]
			LineBreak;
			say "     You taunt Kal Ren, demanding to know what his problem is. He couldn't catch you before, so how is that your problem? You'll do whatever you please! Confident in your ability to escape and emboldened by his quiet stare, you make the mistake of stepping closer.";
			if vorelevel >= 2: [more vore selected]
				say "     The sound of clanking teeth silences you before you finish your last words. Perhaps you shouldn't be mouthy around something that can eat you in a single bite.";
				wait for any key;
				now battleground is "Void";
				the Player was ended by "Demon Fox";
				trigger ending "Player has died";
				end the story saying "You have been eaten by an irate demon fox.";
			if vorelevel is 1:
				say "     Death by Demon fox. You were dead before you realized he'd moved.";
				wait for any key;
				now battleground is "Void";
				the Player was ended by "Demon Fox";
				trigger ending "Player has died";
				end the story saying "You have been killed by an irate demon fox.";
	now TomeTimer is turns;

Section 9 - Player Won Arc

to say PlayerWon_KalRen_Arc:
	say "     You use the spell to summon Kal Ren, bracing for the blinding flash of light by holding the book in front of your eyes. 'Well, hello, kit,' you hear him greet in his rumbling voice, opening your eyes and lowering the book to look at him. 'Do you desire some companionship?'";
	if DemonFox_PlayerWon is false or (DemonFox_PlayerWon_Fucked is true and DemonFox_PlayerWon is true):
		say "     You scowl as he taunts you with his infantilizing nickname, quickly stating that you don't belong to him, no matter what he thinks. He laughs, shaking his head before his body suddenly seems to grow before your eyes, one massive paw swiping at your chest and knocking you to the ground. You look into his leering visage, searing drool landing on your face from his dripping maw. 'Oh, so you don't think you're mine? [if DemonFox_PlayerDefeated is true]Perhaps I'll show you your place. You don't realize what that bite I gave you meant. [else if DemonFox_PlayerFled is true] If you're going to run again, kindly refrain from summoning me. Unless you wish for me to [italic type]catch you.[roman type] [else if DemonFox_PlayerWon_Fucked is true]Even after you defeated me, you [italic type]still[roman type] let me fuck you. [end if]As far as I'm concerned, you're mine.'";
	else:
		say "     You scowl at his comment, denying his hold over you, even as your stomach flutters with indecision. He laughs before you're suddenly pinned under a much larger version of him, his paw completely covering your torso. He leers above you, a drop of his nearly scalding saliva dripping onto your face. 'Just because you won last time doesn't mean you'd win again. It wouldn't take much for me to mark you as mine...'";
	WaitLineBreak;
	say "     Removing his paw, he lets those words sink in, his deep chuckle bringing a flush to your cheeks. Soon enough, he returns to his previous size, tugging you to your feet with one fluffy tail. You blink, slightly bewildered and somewhat frightened, as his vulpine grin adds to your embarrassment. 'You...' he says breathlessly, 'you should've seen the look on your muzzle, kit! It looked like you were going to [italic type]piss yourself![roman type]' You look away as he continues laughing for far too long, finally settling down as he sits on his haunches, sharp teeth bared in a teasing grin.";
	say "     'Now... You've called me here. Is there anything you want to do?'";
	LineBreak;
	if thirst of kal ren is 0:
		say "     [bold type]It seems he's willing to let you control the flow of your interactions, to some degree. What would you like to suggest?[roman type][line break]";
		say "     [link](1)[as]1[end link] - You beat Kal Ren, fair and square. You'd like to explore your options on a more even footing.";
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
			say "[KalRen_PlayerWonFuckMenu]";
		else if calcnumber is 2: [Serve]
			LineBreak;
			say "     While kal Ren's ferocious charms excite and scare you in equal measure, there's something you've been gathering the courage to ask. In your many interactions, you couldn't help but notice that the demon fox's ass is perfectly muscled, with its trio of prehensile tails. If his ever-present musk is any indication, more of his dizzying scent hides beneath those tails, and you would love to taste what he has to offer. Choosing your words carefully, you ask if he'd be interested in letting you worship his ass. 'Daring little kit, aren't you?' Crossing the distance between you and tilting your chin with one paw, kal Ren searches your eyes for something, his heated breath inches from your face. His eyes seem deep enough to devour you, and you can't look away. 'Alright. I'll allow this one indulgence. If you abuse the privilege, I will make sure you pay. Do not test me.'";
			now thirst of Kal Ren is 1;
			now hunger of Kal Ren is 1;
			say "[KalRen_PlayerWonFuckMenu]";
	else:
		say "[KalRen_PlayerWonFuckMenu]";

to say KalRen_PlayerWonFuckMenu:
	say "     Do you want to talk to the vulpine menace, or do you just wish to serve him?";
	say "     [link](Y)[as]y[end link] - You have something to say that doesn't involve wet-slapping noises...";
	say "     [link](N)[as]n[end link] - No, you're here to kneel and serve.";
	if Player consents:
		say "[KalRenPlayerWonTalkMenu]";
	else:
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
		if thirst of Kal Ren >= 1:
			choose a blank row in table of fucking options;
			now title entry is "Worship his Ass with your Tongue";
			now sortorder entry is 4;
			now description entry is "Ren's muscled ass has caught your eye. Just a taste...";
		[]
		if thirst of Kal Ren >= 2:
			choose a blank row in table of fucking options;
			now title entry is "Offer your Cock as a Toy";
			now sortorder entry is 5;
			now description entry is "You don't care whether you sound desperate, you need your cock in his hole, now!";
		[]
		if stamina of Kal Ren is 1:
			choose a blank row in table of fucking options;
			now title entry is "????";
			now sortorder entry is 6;
			now description entry is "????????";
		[]
		if thirst of Kal Ren is 0:
			choose a blank row in table of fucking options;
			now title entry is "Offer your services in a different way";
			now sortorder entry is 7;
			now description entry is "You've been thinking about Kal Ren's ass for a while. Shoot your shot?";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Nevermind[as]0[end link][line break]";
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
					else if nam is "????":
						say "[KalRenPregnancy]";
					else if nam is "Offer your services in a different way":
						say "[KalRenAnalOffer]";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	now TomeTimer is turns;
	wait for any key;
	clear the screen and hyperlink list;


to say KalRenPlayerWonTalkMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Ask why Kal Ren won't take you seriously";
	now sortorder entry is 1;
	now description entry is "You always feel like Kal Ren is talking down to you, despite the fact that you defeated him once. Why is that?";
	[]
	if stamina of Kal Ren is 2:
		choose a blank row in table of fucking options;
		now title entry is "Discuss Janaz";
		now sortorder entry is 2;
		now description entry is "Ask Kal Ren why he felt the need to create Janaz?";
	[]
	if stamina of Kal Ren is 3:
		choose a blank row in table of fucking options;
		now title entry is "Demand Janaz's freedom";
		now sortorder entry is 3;
		now description entry is "Demand your son's freedom.";
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
				if nam is "Ask why Kal Ren won't take you seriously":
					say "[KalRenMockingPlayer]";
				else if nam is "Discuss Janaz":
					say "[KalRenJanazTalk]";
				else if nam is "Demand Janaz's freedom":
					say "[KalRenJanazFreedomTalk]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the demon fox, deciding on a different course of action. He disappears into a puff of smoke with a shrug at your indecision, looking a bit annoyed, but says nothing. You'll probably have to wait to summon him again. [bold type] Maybe you should make sure you know what you want to do next time? Kal Ren doesn't seem like the sort you want to anger. At the very least, he's likely to give you the cold shoulder.[roman type][line break]";
			wait for any key;
		else:
			say "Please choose a valid option!";
	wait for any key;
	now tometimer is turns;
	clear the screen and hyperlink list;

to say KalRen_PlayerWon_Fuck1: [Suck his Cock]
	say "     [if Player is kinky]Sliding to your knees without bothering to disrobe, you smear the fox's sheath over your cheeks, burying your face in the plump ring of leathery flesh around its apex. Sealing your mouth over its salty surface, you suckle, delving your tongue inside to tease his shaft and moaning as it bucks against your appendage, greeting your efforts with droplets of glowing virility. B[else]B[end if]arely able to contain your excitement, you disrobe before the masculine fox, unashamed of your growing excitement[if Player is kinky]. The scent clinging to your nose from his musky sheath settles a lusty haze over you, and you can hear your heartbeat in your ears as your sight arrows to nothing but that delightfully awful scent of demonic fox cock[end if]. You know that he's productive, and as much as you'd love to carry his scent around with you, you're unsure what his cum would do to your clothing.";
	say "     'Eager. Could it be that winning our little spat was nothing more than an attempt to save face?' Pushing his peeking cock against your face, the demon fox demands his due, his hips working his slimy tip over your face in a delightfully degrading and surprisingly gentle motion. That teasing tone flushes your cheeks, and you follow its path, finally capturing his cock as it flops free from his sheath. His knot hasn't swollen yet, but you endeavor to change that fact, setting your gaze on the fluffy pubic fur at the base of your prize. Inch after inch disappears into your mouth, encouraged by a playful, condescending growl, and soon your vision is obscured by the fluff, your huffing breaths taking in intoxicating musk. Slow bobs test your throat's ability to handle him, and, satisfied, you slurp away, growing bolder by the second.";
	WaitLineBreak;
	say "     Praising your efforts in a huffing voice, the demonic fox meets each worshipful bob of your stuffed mouth with a slow thrust, dumping claiming globs of approval down your throat. 'Ah, this is somewhat of a rarity. Was your pride what drove you to defeat me, despite your love of cock?' Drool dripping from his open mouth, kal Ren increased his pace, taking over and leaving you with little to do but stare up at him, relaxing your throat for his pointed tip. The heavy rhythm of balls slapping against your chin, the enticing aroma of demonic musk, and whispered (though vaguely insulting) praise mix into a submissive cocktail, scrambling your brain and reducing you to nothing more than a bundle of desperate nerves. It isn't until Kal Ren's cock has worked your lips into a lather of orange pre, covering your chest in spiderwebs of mixed fluids and bringing you to the edge, that you recognize the telltale throb of an impending meal.";
	say "     Opening your throat, you gurgle as he unleashes a flood of searing cum, your eyes slipping closed as you endeavor to swallow every drop, releasing your meager contribution to the mess on the ground below as your stomach swells with his demonic offering. His departure saddens you, but a final belch of cum rewards your devotion, marking your nose with powerful musk. A flash of light leaves you alone with your sloshing stomach and sloppy reminders of your devotion to the fox's cock, festooning your naked body. Shaky and musk drunk, you re-equip yourself, thankful that nothing happens upon you in your moment of weakness.";
	NPCSexAftermath Player receives "OralCock" from Kal Ren;
	now hunger of Kal Ren is 1;

to say KalRen_PlayerWon_Fuck2: [Ride his Cock]
	say "     'Finished playing the hero, are you? I can't say I blame you. I am rather irresistible.' Smirking as he speaks, the fox sits, his legs spread to show off those churning orbs. Patting his knee, he beckons to you. 'Pants off, then. It's time to show that you deserve my attention.' Scrambling to disrobe, you throw yourself into the fox's waiting lap, settling your rump against that peeking tip before you realize how eager you are for it. It's too late to rethink your choices, though. Seconds after, that slick cock slots itself against your hole, and clawed fingers clamp around your waist, holding you in place for a piercing thrust that spills kal Ren's length into your waiting hole. 'What's the matter, kit? Is it too much for you?' Taunting you with his muzzle inches from your ear, kal Ren slaps your stuffed ass, growling his pleasure as your hole reflexively tightens, wringing his shaft. 'You wanted to ride me, so why not get to work?' Loosening his grip, he pants, his hips bucking insistently to stir your innards.";
	say "     As much as you hate to admit it, he's right. From the moment he stuffed himself into you, you felt that it [italic type]belonged[roman type] there. Shaking your head to clear the submissive thought, you drape your arms over the demonic fox's shoulders, wiggling your ass and then bringing it down on that swollen knot. If kal Ren wants you to give yourself to him, you will-  but you won't make it easy. 'Feisty kit. Admit it. You need this.' Kal Ren coos, his growling voice almost affectionate as he slaps his heavy balls against your bouncing ass, meeting each of your movements with an impatient thrust. Squirting desire slickens the way, and before long, the space echoes with sloppy noises. Your inner walls feel like they'll melt from searing pre, his heated shaft, and the claws digging into your waist, but you refuse to give up, clamping yourself around his cock. There has to be a way to show that you're not just his pet. You're doing this because you want to, not as some sick way to give yourself to him as a sex slave. Zeroing in on his open, sneering muzzle, you steel your resolve. It's time to give him a taste of his own medicine!";
	WaitLineBreak;
	say "     Capturing the demon fox's lips with your own, you silence his taunts with your tongue. His muzzle is as hot as the rest of him, and you can feel his thrusts speed as you force a kiss on the surprised vulpine. He doesn't push you away, instead countering with his slippery appendage, invading your mouth with wet slurps that smear slick drool over every inch. Before long, he's turned the tables, fucking your throat with his flat tongue, and his knot slams against your hole, threatening to break you open. Thankfully for the sanctity of your abused hole, the fox doesn't stuff his knot past your entrance, instead grinding it against your stubborn clench as fiery ropes fill your innards, coating every inch of your insides in clinging heat and swelling your stomach into a perverse pseudo-pregnancy. His tongue continues its domineering slurp long after he's finished stuffing your hole, only withdrawing once you grow faint and paint his muscular stomach with your load.";
	say "     As you pant, desperate to catch your breath, the fox licks his lips, that dexterous appendage rolling over sharp teeth in an exaggerated motion. 'Nice try, kit, but no matter how you struggle, I know that what you truly want is to be mine. You can't defeat your desires.' Cradling your chin in one paw, the fox stops your attempts to look away. A hungry expression covers his muzzle, and you feel your heart skip a beat before he speaks. 'I suppose I'll have to keep showing you your place. Do struggle, though. It's fun to watch.' Condescending as it is, the laugh that the fox leaves behind as he flashes out of existence sends a chill through your body. Was he right? Staring down at your dripping cock, you can't deny the intensity of the orgasm submitting to him tore from your body. Shaking your head, you gather your gear, massaging the spot where the fox's paw stung your ass cheek. Why did the pain feel so right?";
	NPCSexAftermath Player receives "AssFuck" from Kal Ren;
	if Stamina of Kal Ren is 0:
		now Stamina of Kal Ren is 1;

to say KalRen_PlayerWon_Fuck3: [present yourself]
	say "     'What's this? Have you learned your place?' Raising an eyebrow as you strip and present your ass, Kal Ren licks his lips, closing the distance between you to press his sheath between your cheeks. His pointed tip claims your hole with a sticky squirt, leaving a slick film hot enough to bring a slight sting to his grind. 'If you want to be marked, all you have to do is ask.' Shaking your head in denial, you resist the urge to spear yourself on that pointed tip. You want to feel that perfect cock inside you, that's all. It has nothing to do with becoming his pet. Whether you're lying to yourself remains to be seen. 'Ah, then you haven't succumbed. Pity.' Drawing a yelp from your lips as he shoves forward, the fox buries several inches of heated flesh past your clenching ring, hunching over your back. Contorting to reach your ear, he places both hands on his hips, whispering in a greedy, deep growl. 'I'll have to show you what it could be like if you gave yourself to me.'";
	say "     Before you can rethink your choices, the fox's claws dig into your waist, his cock withdrawing until his pointed tip bounces against your hole, then stuffing you. A slow but forceful rhythm follows, creating a bulge in your stomach at the apex of his cock. His panting muzzle disappears from your ear as those claws sink in deeply enough to draw blood, and you feel your feet leave the ground as he endeavors to impale you on that thick spire. You've been reduced to nothing but a hole and a flopping, impossibly hard cock as he has his way with you. Coherent thought fades away as he pummels your prostate, and arcing strings of precum stain the ground, but he shows no signs of stopping, ruining your once-tight entrance. You're his whore- no- his fleshlight, with a body meant to please, and all you can imagine is how good it'll feel when he fills you up.";
	WaitLineBreak;
	say "     You cum long before the pummeling fox, whimpering your desire as he fucks you open and swinging like a ragdoll, your cock spraying its submission over your body. You can feel yourself clenching, desperately milking more steaming pre into your aching innards, and you hold your tented stomach, caressing his massive member. You know what's coming next, and you want- no, need it to happen- to be knotted by this magnificent creature. A satisfied sigh rumbles through the rutting fox as a wet pop heralds his completion, corking your innards as wave after wave blasts deep inside you, swelling your belly into a stretched dome. Paws leave your waist, and you collapse forward, your arms barely reaching the ground as the swollen bulb at the base of his cock holds you in place, dangling like a used condom from his crotch.";
	NPCSexAftermath Player receives "AssFuck" from Kal Ren;
	if Stamina of Kal Ren is 0:
		now Stamina of Kal Ren is 1;

to say KalRen_PlayerWon_Fuck4: [worship his ass]
	say "     Trembling with anticipation, you ask Kal Ren if he's willing to follow through on your suggestion. All the while, you watch those myriad tails sway and curl, obscuring muscular cheeks and fanning a musk that brings a mouthful of drool into existence. You need him to sit on your face, now! Even the tinge of shame at wanting something so degrading isn't enough to stop your imagination from running wild, stiffening your manhood until it hurts. 'Impatient, are we, hero? I suppose I did promise I'd let you taste me.' Seemingly relishing your desire, the fox licks his lips, his cock peeking from its home to drool to the floor. 'Alright. Sit.' He commands with one sharp claw pointing downward. Grumbling at the implication that you're nothing more than a trained dog about to receive a treat, you lie on the ground in the indicated spot, shifting uncomfortably as your cock [if Player is not naked]rubs against the inside of your pants[else]bounces against your bare stomach[end if]. However, this angle allows you a peek into the shade behind the fox's balls, and as your imagination runs wild, a protest dies in your throat.";
	say "     'Hah. If I knew this would shut you up, I would have sat on your face long ago.' Taunting you even as he flicks his tails upward and squats over you, Kal Ren teases you with a shake of his hips, showing off an onyx patch of skin beneath, ringed by red fur. Musk intensifies as he settles into place, inches above your face. 'Breathe it in, kit. You're the first to experience this privilege.' Flushing as his onyx pucker flexes, you bathe in a wave of earthy musk that rolls over you, accompanied by heat from the fox's supernaturally sizzling hole. You breathe deeply, intoxicated by how deliciously manly he smells, and raise your head, pressing your nose against his pucker to snort more of that heady scent. Heated cheeks wreathe your face, flexing to trap you in place, and your mouth hangs open, your tongue dripping in anticipation.";
	WaitLineBreak;
	say "     The soft worship you expected to give that ass is rudely interrupted by the slam of the fox's weight, crushing your face beneath muscular cheeks. Barely protected by his sculpted mounds' padding, you bounce off the ground below, coming to rest with your world swallowed up by searing flesh and heated fur. 'Oh, come now, kit. You didn't expect me to take a passive role in this. It's not in my nature.' Muffled as it is by the expanse of his ass, Kal Ren's condescending tone vibrates through your head. 'Get to work before I change my mind and mount your face.' You don't need him to tell you twice. Testing that hole with a long lick, you feel it flex and clench beneath your touch, so tight that you're sure no one's ever entered its depths [if AnalVirgin of Kal Ren is false]besides you[end if]. It tastes even better than it smells, like salt and musk, and something you can't quite place, infusing every lick with warmth. Before long, you're attacking that hole with your tongue, slurping away and coating your face in dripping drool.";
	say "     'Good kit. Fuck, that's better than I thought it would be.' As you fill the air between his cheeks with wet, sloppy sounds of worship, Kal Ren growls, rocking his hips and smearing your face between his cheeks, treating you as nothing more than a toy. Wet, slick sounds from above tell you all you need to know about his enjoyment, and heated drips rain down [if player is naked]on your naked body[else]staining your clothes with his infernal pre[end if]. Unsure of time's passage, you suck at Kal Ren's pucker until it loosens enough to slip your tongue inside, then slurp your way inside, mashing your nose against it as his efforts to get off grow fevered, his thrusting hips threatening to slam your head against the ground. Sitting down hard, he traps you, clamping down on your tongue and cutting off your air supply as the fox's body moves in obvious orgasm.";
	WaitLineBreak;
	say "     Five productive spurts with the intensity of a gushing hose paint your [if player is naked]naked body[else]clothes[end if], marking you with the demon fox's scent for the foreseeable future. That hole relaxes to a gentle pulse on all sides of your tongue, and just as your vision starts to gain hazy starbursts and your lungs scream for air, the fox's ass raises. Gasping for air, you can only watch as that dusky hole retreats into the distance, replaced by a twitching cock that marks your face with its last gooey dribble. 'That was surprising, kit. Perhaps I should dominate you this way more often. I wonder if you're sturdy enough to serve as my toy.' Voice holding a small amount of condescending affection, Kal Ren praises you in a roundabout way, his claw trailing over your [if player is naked]bare erection[else]tented pants[end if]. As a flash of light removes the fox from your presence, you lay there, licking your lips free of orange cum. Your [if player is naked]body [else]outfit [end if]glistens with Kal Ren's glowing satisfaction, and his words echo in your ears. Perhaps next time, you might convince him to ride your cock.";
	if thirst of Kal Ren is 1:
		now thirst of Kal Ren is 2;

to say KalRen_PlayerWon_Fuck5: [offer your cock]
	say "     [if Player is not naked]Hooking your fingers into your waistband to bare your [else]Taking hold of your nude [end if]erection, you offer your [Cock of Player] penis to the fox, asking if he'd like to use you to get off. His gaze brings an eager throb to your cock, and you feel you'll cum on the spot. '[if Player is not naked]Strip and s[else]S[end if]it.' Kal Ren says with an eager smirk, pushing at your shoulders. Before you finish complying, he stuffs two fingers in your mouth, swabbing your throat with thrusting fingers until your saliva covers those furry digits, the excess drooling down to your bare chest. For a moment, you worry that it was all a ruse to ram his cock down your throat, but those fingers disappear beneath his tail. Smearing your drool over his pucker as he pushes you onto your back, slotting your cock between his muscular cheeks and rolling its tip against his tight pucker, he pauses, digging his claws into your bare chest.";
	say "     'Beg for it.' He says with a hungry stare, clenching his cheeks as his heavy paws pin you to the ground. Your cock feels like it will melt away between those cheeks, and the slick, silky hole prodding against your tip promises a heavenly grip, demanding your subservience. Without missing a beat, you beg for Kal Ren's hole, your needy cock at odds with your pride. Nothing else matters besides sinking yourself to the root. You know he won't accept anything less than complete submission, and you're past the point where that choice would bother you. 'Good kit.' Pleased with your subservience, the fox rocks backward, swallowing your [Cock of Player] shaft into impossibly tight depths. Somehow, you doubt that he's as untouched as he seems, but through some magic, he's wringing your cock, crushing it in slick warmth that feels like it could rip your member from its base.";
	WaitLineBreak;
	say "     Unable to resist, you helplessly thrust into the fox's slow rhythm, your helpless member gushing to ease the way and slickening your union. With each passing moment, he grows more insistent, speeding his hips and slapping his cheeks against your hips hard enough that your balls begin to ache. You get the feeling that if you cum before your vulpine master, he'll punish you, but you can feel the tide rising from your balls, threatening to christen the fox's hole with its [if AnalVirgin of Kal Ren is true]first [end if]load. 'Right there. Harder.' Eyes flashing and dick slapping your chest, Kal Ren quickens his pace as he demands more, his hole clamping down with every slap of those dominating cheeks. A fountain of glowing precum coats your bare chest and stomach, and he seems too enthralled with the sensations your cock provides to tend to himself. You aren't sure whether that's a compliment or his way of demanding a hands-free orgasm, but you couldn't care less.";
	say "     'Fuck.' With only a single word, snarled through clenched teeth and accompanied by drool dripping from the corners of his mouth, the demonic fox fires his satisfaction over your chest, raining down gooey strings of orange cum that mark you with his scent. Before you know it, his inner walls clamp like an angry gorilla's fist, ripping your orgasm from your sore balls. Milking you for every drop, he traps your gushing member in place, his tightness letting nothing escape[if Player is kinky]. Cool air assaults your cock as it's ripped from the comfortably steaming depths, but before you can protest, the fox covers your mouth with his drooling hole. Rocking his hips, he wordlessly demands you clean up your mess, grunting his pleasure as your tongue sets to work. You ride out the afterglow beneath that muscled ass, his grinding rhythm rolling a mixture of sweat and cum over your face, leaving you with a reminder of your place[end if]. Soon enough, a familiar flash leaves you alone with your thoughts, panting in a puddle of orange cum. Your muscles ache, and it's several minutes before you can move your legs, but you can't help but think it was worth it. Idly, you wonder if the nanites could repair a broken pelvis.";
	NPCSexAftermath Kal Ren receives "AssFuck" from Player;

to say KalRenAnalOffer:
	LineBreak;
	say "     While kal Ren's ferocious charms excite and scare you in equal measure, there's something you've been gathering the courage to ask. In your many interactions, you couldn't help but notice that the demon fox's ass is perfectly muscled, with its trio of prehensile tails. If his ever-present musk is any indication, more of his dizzying scent hides beneath those tails, and you would love to taste what he has to offer. Choosing your words carefully, you ask if he'd be interested in letting you worship his ass. 'Daring little kit, aren't you?' Crossing the distance between you and tilting your chin with one paw, kal Ren searches your eyes for something, his heated breath inches from your face. His eyes seem deep enough to devour you, and you can't look away. 'Alright. I'll allow this one indulgence. If you abuse the privilege, I will make sure you pay. Do not test me.'";
	now thirst of Kal Ren is 1;

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

Section 11 - Demon Fox Winning Route Continuation

to say KalRenPregnancy:
	LineBreak;
	say "     You feel a strange compulsion to ask Kal Ren for something unknown. At a loss for words, you try to articulate this feeling, growing more flustered by the second until you stop speaking, lamely asking whether he knows why your brain is screaming at you. All the while, your manhood pulses in his presence, calling out a different sort of need that feels just as supernatural. 'Well, isn't this rich?' Ren circles you, his claws tapping on the ground and his perpetual sneer twitching as he sniffs you. 'You're in heat. Not in the biological way, mind.' The demon pushes at your lower back, forcing you to bend over as the unmistakable sound of him licking his lips echoes behind you. Without regard for any obstacles, he shoves his meaty cock against your hole, piercing your entrance with copious pre slickening the way and worming his way to the root. 'My little gift has blossomed.'";
	say "     Intense pangs of pleasure radiate from his penetration, and words die on your lips, smothered by a moan. There's something different about the path his cock is taking, as though he's stretching a brand new piece of your anatomy. You attempt to ask him what's happening, but all you can do is push back, your body reveling in the heat of the furry balls that churn against your manhood, hanging low and fertile. 'Don't worry, little hero. You see, I was troubled by your attempts to defy me. I don't take no for an answer.' Voice unbroken despite the heavy rhythm of his thrusts, the demon fox taunts you with his explanation, even as he cores you out. 'You need to learn your place, and it seems my presence isn't enough. A reminder- something that can reinforce your submission.' All the while, he pulverizes your colon, gooey virility firing deep into your inner depths and filling you with a warmth that melts all reason.";
	WaitLineBreak;
	say "     Pitiful and overstimulated, you cum long before the rutting's over, spilling your seed to the floor below and clamping down on the progressively rougher, more insistent cock threatening to turn you inside out. It's like nothing you've ever felt before. It's as though the demon fox is fucking your soul- raping your innermost self and tainting it with his lust. If you weren't so desperate for more, you'd worry that there was no way back. 'Yes. That's it.' Kal Ren's drooling maw murmurs in your ear as you feel his shaft heave, the underside bloating in rhythmic contractions. 'You're ready for your salvation.' He groans, stuffing his knot past your slackening defenses and ballooning your stomach with the first of many gooey shots, his balls churning and slapping against your softened shaft. There's nothing gentle about his movements, and once the last drops have melted your insides, he tugs his way out, leaving you with your ass in the air and your hole clenching ineffectually.";
	WaitLineBreak;
	say "     There's something wrong. In place of the usual slow drain of Kal Ren's fluids and the recovery time you've come to expect, you feel a vague sense of draining. Some part of you is oozing away into the load that swells your stomach. Your fears are confirmed as the swollen bulge heaves and twists, moving in a way that skin shouldn't, reminiscent of a child kicking from inside their mother's womb. As you squirm with pain, your body curling around the quickening movements in your stomach, you feel a paw on the back of your head, forcing you to look downward at the bubbling cauldron your stomach has become. 'You feel that, hero? Of course. You can't help it.' Kal Ren hasn't disappeared yet, leaning over you with an almost paternal tone to his mocking. 'You're going to love my little gift.'";
	say "     Before you can ask what he's done to you, the cum that filled you begins to trickle down your thighs, and you feel the unholy, squirming bulge in your stomach begin to make its way down your body. Your cock is rock hard despite the intense pain accompanying the stretch of your defenseless, and as the awful thing reaches your prostate, you dribble pitifully, your already empty balls giving up what little they have. Your body stretches as it never has before, pushing out something with coarse fur and threatening to rip, saved only by the copious lubrication of demon fox cum. You're not sure how long you push, wracked with unwanted orgasms and intense agony, but eventually, mercifully, your gaped hole flexes, empty and violated, while a wriggling mass of wet fur rights itself, finding its footing in the mess you made.";
	WaitLineBreak;
	say "     'Beautiful, isn't he? My little Janaz.' Kal Ren taunts you, kneeling to tilt your chin downward and give you a better view of the quadrupedal creature shaking itself off as it grows to full size. It easily dwarfs your kneeling figure, and as cum drips from its fur, you realize that its coloration matches Kal Ren's, as though he cloned himself in a more bestial form. Right down to the drooling cock between its legs, hard and bouncing above two massive balls. 'Why don't you say hello to your progeny like a proud father should?' Kal Ren coos, spreading your legs with powerful paws and baring your still ruined hole for the newly created creature. You attempt to protest, to beg for a break, but your words trail off into a strangled moan as your hole is pierced by Janaz's cock. Gritting your teeth, you dig your fingers into the ground as he humps away, his claws digging into your inner thighs and adding the slight tang of blood to the cloying scents of musk and cum.";
	say "     Your progeny uses you more thoroughly than Kal Ren, forcing his knot in and out of your weakened hole and pouring so much cum into your poor, abused stomach that it fountains out around his penetration, leaving you little footing. Even when you crash to the ground, he continues, his teeth sinking into your shoulder and his thrusting body crushing yours into the puddle of cum. As Kal Ren disappears in a puff of smoke, you realize with horror that the thing on your back doesn't budge an inch, still panting in your ear. With no hope for rest and a body wracked by unwanted pleasure and pain, you have no choice but to close your eyes, eventually passing out despite the wet pop of that wrecking ball of a knot ruining the rim of your hole.";
	WaitLineBreak;
	say "     When you awaken, you weakly crawl to the pile of your things, re-equipping yourself and standing on shaky legs. Tempted to believe that the situation was nothing more than one of the demon fox's tricks, you attempt to forget the humiliating experience of being fucked by your newly birthed son, but as you shoulder your pack, your eye lights on a pair of golden eyes staring at you from a nearby alley, and a flash of black and red fur. It seems it won't be that easy.";
	TraitGain "Hunting" for Janaz;
	now Stamina of Kal Ren is 2;

to say KalRenMockingPlayer:
	say "     Grimacing at the fox demon's usual mocking demeanor, you confront him about it. In no uncertain terms, you ask why he's such an asshole to you. You won his little 'game,' so what more is there for you to do? You don't appreciate his disrespect. 'And yet... You summon me again and again.' Kal Ren perches on his tails like a fuzzy throne, akin to a kangaroo rearing back, his fist holding up his chin as he regards you with an amused expression. 'Disrespect, dehumanization, all these imagined slights against a hero's immaculate character, and you come crawling back, legs spread and tail between your legs. I'd wager that says more about your character than mine.'";
	say "     Revealing sharp teeth in a mocking grin, Kal Ren stretches languidly, blatantly showing off the oversized manhood between muscular thighs. 'In fact, it appears you enjoy every second of my 'abuse.' Perhaps you'd be more comfortable if you'd accept your place. I promise I take good care of my toys...' Shuddering at your body's instinctual desire to do as asked, you shake your head. You're not sure why you keep summoning the fox, but it's not because you're some addicted slut looking for a fix of cock. Is it? The more you think about it, the more you regret pursuing this conversation. Thankfully for your bruised ego, you don't have to suffer any more of Kal Ren's mocking laughter, and he disappears in a puff of smoke as you go quiet, as though stating your conversation is no longer worth his time.";

to say KalRenJanazTalk:
	say "     Still reeling from the forced birth of Kal Ren's newest amusement, you confront him, demanding to know why he violated you! It's one thing when you willingly submit to him- You can rationalize that. You're just horny! However, it's much more insulting that he forced a constant stalking reminder of your submission to follow you. 'Still denying our deepest desires, are we?' Inspecting his claws, Kal Ren regards you with a look similar to an adult admonishing a child. 'You've given yourself to me time and again- prostrated yourself- debased yourself- and yet you're still holding onto this indignant facade?' Darting forward, the fox cups your chin in his paw, tilting your face upward toward his with a sneer. 'Your deepest, darkest desires birthed that mongrel. I molded him for my amusement. A walking example of the sins of his father, reflected in their most lustful form. If your soul were spotless, the seed wouldn't take.' Leaning in, the fox murmurs in your ear. 'You deserve everything our son gives you and more.' Dissolving into smoke before you can gather your wits, he leaves you with mocking laughter and his scent surrounding you.";

to say KalRenJanazFreedomTalk:
	say "     Steeling your nerves, you confront Kal Ren about your son's fate, broaching the subject of Janaz's newfound freedom from indoctrination. Despite his originally lewd purpose, you'd like to show Janaz there's more to life than punishing you and being the demon fox's puppet. You're even willing to fight for him if you need to! After all, you've fought and won against Kal Ren once already. Suddenly sharpening his gaze, Kal Ren crosses the slight distance between you, teeth flashing in a silent snarl. So close you can feel his breath on your face, he leans in until your fingers twitch toward your weapon, then breaks character, laughing and falling backward onto his nest of tails. Holding his sides and cackling hard enough that tears gather in his eyes, he takes a moment to compose himself. 'You've fallen in love with it? Oh, that's rich! A soulless creation imbued with your darkest desires, designed entirely to break your spirit and bring you crawling back to me- and you're playing house with it!' Kal Ren laughs at you long enough that you start to feel insulted, then holds up his paw and snaps his fingers, bringing a bewildered-looking Janaz to his side. 'Father, I-' Janaz attempts to advocate for himself, tails between his legs and ears back, but a reproachful look sends him hiding behind you. Cowering there like a frightened puppy, he shakes against your legs.";
	say "     That expression is enough to bring forth fatherly instincts, and you rise to the challenge. Should you [bold type]bargain with Kal Ren for Janaz's freedom, or attempt to fight for it?[roman type][line break]";
	say "     [link](Y)[as]y[end link] - The demon fox won't react well to threats- attempt to bargain with him.";
	say "     [link](N)[as]n[end link] - Fuck this. You're tired of being made a joke!";
	if Player consents:
		say "     Kneeling before Kal Ren, you beg for Janaz's life before the amused fox, staring defiantly at the floor. Declaring that you'll do anything for your son's freedom, you pat Janaz's head to steady his shaking without looking up. 'Now, now, little hero. Calm yourself.' Waving his hand, Kal Ren surprises you with a show of placation. 'It's far too amusing to end this farce now. I'll play my role without the need for groveling, though I must admit you look delicious.' Contemplating the cowed feral behind you, he sighs. 'However, I won't waste my power on your parental whim. You'll have to [bold type]find a way to sustain him yourself.[roman type]' Disappearing in a puff of smoke, the fox leaves you with one last warning, no doubt hinting at the lengths you'll have to go to for Janaz. 'Do be sure to take care of that soul of yours. I plan to savor it someday.'";
	else:
		say "     Taking a stance and readying yourself for battle, you stand before the amused fox, staring defiantly at his Cheshire grin. Declaring that you'll fight for your son's freedom, you pat Janaz's head to steady his shaking. 'Now, now, little hero. Calm yourself.' Waving his hand, Kal Ren surprises you with a show of placation. 'It's far too amusing to end this farce now. I'll play my role without the need for bloodshed.' Contemplating the cowed feral behind you, he sighs. 'However, I won't waste my power on your parental whim. You'll have to [bold type]find a way to sustain him yourself.[roman type]' Disappearing in a puff of smoke, the fox leaves you with one last warning. 'Do be sure to take care of that soul of yours. I plan to savor it someday.'";
	if debugactive is 1:
		say "     {For those struggling with this, just go to Baron! He'll continue the questline. Baron is in the swamps in the Lizardman village!}";
	TraitGain "Almost Free" for Janaz;
	now HP of Baron is 1;

Demon Fox ends here.
