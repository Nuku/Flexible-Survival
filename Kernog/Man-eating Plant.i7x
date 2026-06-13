Version 1 of Man-eating Plant by Kernog begins here.

"Adds a man-eating plant creature to Flexible Survival's Wandering Monsters table. Works in the same fashion as the parasitic plant, adds a bound state."

Section 1 - Creature Responses

[Plays on loss]
to say ManEatingPlantVoreScene:
	say "     [if fightoutcome is 22]You let the vines coil around you, and throw you legs-first into the plant's gullet. The vegetal swallows you[else]Vines coil around your knocked-out body and pushes you into the plant's gullet[end if], little by little, until only your neck remains. Another muscle spasm, and you slide down completely inside, while the plant closes shut after you. In complete darkness, you slide down the skin-tight feeding tube. The air coming from outside is now damp, and laden with a spicy smell which begins to make you excited. You eventually slide down to a small pouch, which stretches to welcome your body, before vacuuming around you, leaving only a small layer of drug-filled air for you to breathe. [if fightoutcome is 22]A small voice in your brain urges you to get out of this dangerous situation[else]Your brain urges you to push or claw your way out, before it is too late[end if].";
	wait for any key;
	manEatingPlantVore;

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Man-eating Plant"	"[PrepCombat_Man-eating Plant]"

to say PrepCombat_Man-eating Plant:
	setmongender 0; [creature is neuter-X]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Man-eating Plant"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Man-eating Plant" to infections of PlantList;
	add "Man-eating Plant" to infections of NatureList;
	add "Man-eating Plant" to infections of TentacleCockList;
	add "Man-eating Plant" to infections of BipedalList;
	add "Man-eating Plant" to infections of TailList;
	add "Man-eating Plant" to infections of TailweaponList;
	now Name entry is "Man-eating Plant";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]One of the vines slaps your thigh, leaving a small bruise[or]A vine makes a downward motion on your head, clubbing you with surprising strength[or]You barely evade one of the vines attempting to grab your arm, leaving instead a shallow cut on your skin[or]One of the vines manages to get around your neck, choking you until you can pull it off and gasp for air[at random]."; [Text used when the monster makes an Attack]
	now defeated entry is "     As you give one last blow to the flower, you watch it ted progressively, a sappy substance escaping from the wounds.[line break]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[ManEatingPlantVoreScene]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "     You attempt to walk around the big trees on your path when movement in the corner of your vision alerts you. Rooted into the bark of one of the trees, a large plant opens its petals, showing a multi-color inner pattern, going deep inside the tree. Vines begin to flail dangerously around you, trying to snatch you. You stay on your guard as you decide what to do with the mutated vegetal.[line break]"; [ Description of the creature when you encounter it.]
	now face entry is "androgynous, surrounded with petals, and with a small orifice replacing your mouth, which can turn into a gaping maw"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "smooth and flexible, its pores emiting a sweet, alluring fragrance"; [ Body Description, format as "Your Body is [Body of Player]." ]
	now skin entry is "green, plant-like"; [ Skin Description, format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "A long, arm-thick vine extends from your lower back, wiggling slowly, and involuntarily latching onto objects and people brushing past it."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[if looknow is true]tentacle[else][one of]vine-like[or]tentacle[or]green tendril[at random][end if]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your hair coalesces together, and turns into petals of many colors. Your nose disappears, and a strange sensation spreads through your mouth as it seals up and your teeth disappear. It is replaced by a small hole, which stretches to an unbelievable size as you try to open your mouth and shout. It feels moist with various fluids, which drool on your chin"; [ Face change text, format as "Your face feels funny as [face change entry]." ]
	now body change entry is "a sudden surge of vines and roots spread like an infection through your body from a seed hidden inside of you. Your legs become root-like vines that dig into the ground if you stay in one place for too long, while the rest of your body shifts. You start to sweat constantly, and your body is quickly surrounded by a small mist of sweet, enticing pheromones"; [ Body change text, format as "Your body feels funny as [body change entry]." ]
	now skin change entry is "it turns into a plant-like green color"; [ Skin change text, format as "Your skin feels funny as [skin change entry]." ]
	now ass change entry is "a very strange sensation spreads around your waist and your spine seems to stretch almost painfully! Reaching back you find it has expanded into a two-meter long vine, as thick as your arm. It suddenly wraps and squeezes around a nearby object. It seems that this new limb retains the vestigal reflexes of its original species"; [ Ass/tail change text, format as "Your ass feels funny as [ass change entry]." ]
	now cock change entry is "it swells into an odd, bulb-like shape and turns a green, plant-like color, while small green tendrils spread over your groin like roots"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 14;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Island"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 4; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 20; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 8; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 15; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 5; [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "man-eating flower seed";
	now lootchance entry is 33; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "man-eating plant milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is "man-eating plant cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "feminine";
	now type entry is "plant";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "maneatingPlantReel";
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

Section 3 - Alt Combat

[Plant has a messy pig-based alt attack, in which it captures the player. The player has five chances to escape, otherwise it is an instant loss]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"maneatingPlantReel"	retaliation rule	maneatingPlantCaptureInc rule	--	maneatingPlantCapture rule	10	--	--	--	--	--

this is the maneatingPlantCaptureInc rule:			[increasing likelihood of alt attack]
	choose row monstercom from the table of critter combat;
	if alt1chance entry < 100, increase alt1chance entry by 10;

this is the maneatingPlantCapture rule:			[player capture alternative attack]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 10; [resets alt attack probability]
	choose row MonsterID from Table of Random Critters;
	let playernum be 150 + dexterity of Player - Libido of Player + ( level of Player * 2 );
	say "One of the vines manages to coil around your arm. The plant begins to pull you towards its main body!";
	[if tempnum is 1, decrease playernum by 30;]
	let maneatingPlantcaught be true;
	let maneatingPlantnum be 200 + ( lev entry * 2 ) + dex entry;
	let playernum be a random number between 50 and playernum;
	let maneatingPlantnum be a random number between 50 and maneatingPlantnum;
	say "[special-style-1][playernum][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
	if playernum >= maneatingPlantnum:		[caught / escape attempt]
		say "With a quick torsion of the wrist, you manage to disentangle yourself. You promptly jump back out of reach.";
		now maneatingPlantcaught is false;
	else:													[still caught]
		say "The man-eating plant forces you to take several steps forward, putting you in reach of more of its limbs. Your arm is caught by another vine, and the plant and you are engaged in a contest of strength.";
	if maneatingPlantcaught is true:							[second attempt]
		let playernum be a random number between 25 and playernum;
		let maneatingPlantnum be a random number between 25 and maneatingPlantnum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
		if playernum >= maneatingPlantnum:		[caught / escape attempt]
			say "Powering through, you take step after step backwards, until a strong pull forces the vine to give up, lest they break under the strain.";
			now maneatingPlantcaught is false;
		else:													[still caught]
			say "With surprising power, the plant reels you in, like a fisherman. You lose your footing, and vines quickly take advantage to tie up your legs. Your legs are pulled into the plant's hole, and you feel the wet and squishy touch of its inner walls.";
			decrease humanity of Player by 3;
	if HP of Player > 0 and Libido of Player < 110:
		if maneatingPlantcaught is true:							[third attempt. -10 malus on playernum applies]
			let playernum be a random number between 10 and playernum;
			let maneatingPlantnum be a random number between 10 and maneatingPlantnum;
			say "[special-style-1][playernum - 10][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
			if playernum - 10 >= maneatingPlantnum:		[caught / escape attempt]
				say "In desperation, your legs kick frantically inside the plant. Your efforts pay off when the plant, under your struggle, decides to spit you out and weaken you a little more before attempting to swallow you.";
				now maneatingPlantcaught is false;
			else:													[still caught]
				say "The plant's body wiggles and contracts around your lower limbs, taking you further in. Soon, your waist is trapped into the plant. You feel the plant [if Player is male]squeeze your cock[else]grind against your pussy[end if], involuntarily exciting you. Your time runs short.";
	if HP of Player > 0 and Libido of Player < 110:
		if maneatingPlantcaught is true:							[caught and fighting. -20 malus on playernum applies]
[			say "TEST: [playernum] vs [maneatingPlantnum]:[line break]"; ]
			let playernum be a random number between 1 and playernum;
			let maneatingPlantnum be a random number between 1 and maneatingPlantnum;
			say "[special-style-1][playernum - 20][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
			if playernum - 20 >= maneatingPlantnum:		[final escape attempt]
				say "In desperation, your legs kick frantically inside the plant. Your efforts pay off when the plant, under your struggle, decide to spit you out and weaken you a little more before attempting to swallow you.";
				now maneatingPlantcaught is false;
			else:													[still caught]
				say "With one powerful contraction, the plant swallows your torso. [if Breast Size of Player is 0]Your flat chest quickly follows[else if Breast Size of Player <= 3]It takes the plant another suction to squeeze your [breast size desc of Player] mammaries inside, squeezing them against your chest[else]It takes the plant several more suctions to squeeze your [breast size desc of Player] inside, squeezing them against your chest[end if], and leaving only your neck free.";
				say "Another muscle spasm, and you slide down completely inside, while the plant closes shut after you. In complete darkness, you slide down the skin-tight feeding tube. The air coming from outside is now damp, and laden with a spicy smell which begins to make you excited. You eventually slide down to a small pouch, which stretches to welcome your body, before vacuuming around you, leaving only a small layer of drug-filled air for you to breathe. Your brain urges you to push or claw your way out, before it is too late.";
				now fightoutcome is 23;
				Lose;

Section 4 - Vore Bound state

to manEatingPlantVore:
	now lustatt is Libido of Player;
	let Trixieexit be false;
	while Trixieexit is false:
		if clearnomore is 0:
			clear the screen;
			LineBreak;
		if HP of Player > 0 or humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     The silky touch of the plant's sack and the heavy pheromones in the air pushes you into a powerful climax. Your body, suspended into the vacuum-tight confines of the pod, is overtaken by several spasms, as you soak your prison with your [if Player is herm]various sexual fluids[else if Player is male][Cum Load Size of Player] discharge[else]vaginal juices[end if]. The fluids slowly pool down the pod, to be absorbed by the plant. You struggle to catch your breath, as you feel your sanity fade away.[paragraph break]";
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
		else if enduring is false or a random chance of 2 in 3 succeeds:
			increase thirst of Player by 1;
		if humanity of Player < 1:
			now Trixieexit is true;
			trigger ending "Man-eating Plant Vore";
			the Player was ended by "Vore by Man-eating Plant";
			end the story saying "You became plant nanite nutriment.";
		else:
			say "     You are trapped into the skin-tight confines of a man-eating plant's feeding pod. The silky-soft skin of the pod is keeping you vacuum-sealed inside the pod, preventing you from moving more than a couple of centimeters. The top of the pod is still open, letting a small stream of aphrodisiac-laced air reach your lungs. You imagine your only active option is to [bold type]S[roman type]truggle enough until it lets you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] it or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.";
			now enduring is false;
			say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
			say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
			say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
			say "Sanity: [humanity of Player]/100  Lust: [lustatt]/100  Hunger: [hunger of Player]  Thirst: [thirst of Player]  Struggle: < [italic type][bracket]-[if struggleatt is 1]---[bold type]X[roman type][else if struggleatt is 2]--[bold type]XX[roman type][else if struggleatt is 3]-[bold type]XXX[roman type][else]-[bold type]XXXX[roman type][line break]";
			say "> [run paragraph on]";
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			LineBreak;
			if keychar is "s" or keychar is "1" or keychar is "return" or keychar in lower case matches the text "struggle":
				increase struggleatt by 1;
				say "     [if struggleatt < 3]You push with all your strength against the tight material. Fortunately for you, it is not completely sealed around your body, thanks to the small airhole, and this permits you to use the small leeway to give you more liberty[else if struggleatt is 3]The pod becomes more and more saggy, as you make air reach inside. Having a good feeling, you begin to kick and claw the ways of your prison[else]With a loud ripping sound, the plant's skin gives way under your efforts. A gush of light and fresh air fills your prison and your body flops outside, in a growing puddle of plant sap. Even if the plant seems to have been fatally wounded, you cautiously put as much distance as possible between it and you, and any other suspicious tree for that matter[end if].";
				if struggleatt > 3:
					cleanboundmemory;
					now Trixieexit is true;
					follow the turnpass rule;
				else:
					LineBreak;
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll; [aka humanity loss]
					wait for any key;
			else if (obliging is true and (keychar is "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar is "a" or keychar in lower case matches the text "abide")) or keychar is "2":
				if obliging is true:
					say "     Basking in the pleasurable sensation of the vacuum seal over your skin, you grind your [if Player is male]cock[else]pussy[end if] against your prison, while taking big breathes of the pleasure-inducing air circulating inside the plant.";
					increase lustatt by 14 + (lustadjust * 4);
				else:
					say "     Another maddening contraction around your groin has you deem your current efforts to be useless, and you decide to stop struggling.";
					increase lustatt by 7 + (lustadjust * 2);
				LineBreak;
				wyvhumanityroll;
				wait for any key;
			else if (boundrecover is true and (keychar is "r" or keychar in lower case matches the text "recover")) or (boundrecover is false and (keychar is "e" or keychar in lower case matches the text "endure")) or keychar is "3":
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					SanBoost 3;
					now boundrecover is false;
				else:
					say "     You take a moment to catch your breath, and try your best to ignore the addling effects of the pod's silky surface on your skin and the dizzying smell of the air provided to your prison.";
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wyvhumanityroll;
				wait for any key;
			else:
				say "Invalid action.";

Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Man-eating Plant Vore"	"Voreloss"	""	Man-eating Plant Vore rule	10	false

This is the Man-eating Plant Vore rule:
	if ending "Man-eating Plant Vore" is triggered:
		say "     Three weeks after your capture, a military expedition lands on the island. As they progress through the forest, they come upon the plant that captured you. They watch with resignation at the outline of your body, trapped inside like many other victims before and after you throughout the island, unmoving and slowly digested by the plant. Sighing, the leader of the platoon signals one of the flamethrower-wielding troopers and has him burn the plant, the tree, and your half-digested, forever unidentified corpse.";
		the Player is vored;

Section 6 - man-eating flower seed

Table of Game Objects (continued)
name	desc	weight	object
"man-eating flower seed"	"A small, round seed which rolled away from one of the man-eating flowers from Vohr Island. You can gulp it down in one go, but you are not sure its effects would be the ones you expect."	1	man-eating flower seed

man-eating flower seed is a grab object.
man-eating flower seed has a Usedesc "[man-eating flower seed use]".
Scent of man-eating flower seed is "As you take a sniff of the seed, you feel a sudden pang of hunger in your stomach. The effect leaves as quickly as it came.".

to say man-eating flower seed use:
	if Player cannot vore:
		say "     You muster all your courage, and throw the seed in your mouth, then gulp down. A violent stomach ache makes you double over, as the seed provokes a dramatic reaction in the nanites. A mutant stumbles upon your prone form, and run away as fast as they can when they notice the deadly glare in your eyes. [italic type]Food[roman type] the thought crosses your mind. The next couple of minutes are fuzzy. You remember lunging at the mutant and, after knocking him out, you start putting their feet in your mouth. Your mouth grows wide, wide, wide, as the mutant slowly descends in your stomach. When you return to full consciousness, the mutant is gone, and your stomach absurdly huge. You watch, fascinated, as you quickly digest your first prey, and your stomach returns to normal size.";
		HungerReset;
		FeatGain "Vore Predator";
		increase vorecount by 1;
	else:
		say "     You gulp down the seed. It does not seem to have an effect on the present you.";

Man-eating Plant ends here.
