Version 1 of Ebonflame Drake by Blue Bishop begins here.
[ Version 1.0 - Initial replacement for Ash Drakenoid - Blue Bishop ]

"Adds an Ebonflame Drake to Flexible Survival."
[Inspired by the Ash Drakenoid]

blanchefight is a truth state that varies. blanchefight is usually false.

Section 1 - Creature Responses

to say ebdrakevic:
	if HP of Player > 0:
		say "     Some part of you questions the sanity of submitting to one of these horrors, but you do it all the same. It takes a moment for the drake to catch on that you're offering yourself, before she breaks out in shrill laughter.";
		say "     '[one of]Oh[or]Hmpf[or]Ha[at random], [one of]you're hardly worth my energy[or]such a pitiful creature[or]you're at least an amusing piece of fuckmeat[at random]!' Immediately, she strikes you down to leave you doubled over, tearing free any attire blocking her way before you're assaulted by a barrage of lashes against your ass, using her tail as a terrible whip to punish you.";
		say "     '[one of]Before you turn, all you'll remember of your past life is agony[or]So soft, you practically ask for pain[or]Have you forgotten already? You want for every bit of this suffering[at random]";
	else:
		say "     Having fallen to the ground, you desperately try to crawl away from the drake, either to flee or to try and get your footing. She seems to just cackle at you and strut alongside you until you finally can't go any further, laying there exhausted.";
		say "     '[one of]Idiot[or]Fool[or]Whelp[at random], [one of]playtime's over[or]you will know your place, you walking piece of fuckmeat[or]was that even supposed to be a challenge? Ha[at random]!' With one hand she pulls your rear exposed into the open air, tearing free any attire blocking her way before you're assaulted by a barrage of lashes against your ass, using her tail as a terrible whip to punish your failure.";
		say "     '[one of]No amount of suffering will suffice[or]So soft, you're hardly worth the energy[or]Hmpf, I should toss you to the whelps[at random]";
	say "!' She continues to harshly threaten you until your rear is glowing red with her constant abuse. Every time you think she might be satisfied, she lashes you again, just to watch you writhe.";
	say "     The dragon does eventually get bored of punishing you in this manner and starts to prepare you for something else, allowing you to take the small comfort of her brief relent...";
	if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds)):
		say "     Her plans become clear when you feel the tip one of her talons caress along the crevice of your sore behind, teasing you before the razor sharp thing forces its way through your anal ring. She cackles as you tremble against her digit so casually shaming you.";
		say "     '[one of]Such a soft hole, I'm going to take great joy in ravaging it[or]I'm going to love tearing you in half[or]Oh, don't worry, you're not going to feel a thing... After I'm done with you[at random]!' Finally pulling the talon free, it's apparent she wanted to humiliate you more than prepare, [if scalevalue of Player > 3]climbing on top of[else]positioning herself behind[end if] you before the pointed tip of the reptile's savage dick briefly presses against you quivering hole. Immediately, she plunges the massive thing as far in as she can, grunting as she forces what remains with successive thrusts. Not only is it apparent that she doesn't care to prepare you, but she actively enjoys hearing you howl in pain as her sharp barbs dig into your supple flesh, laughing and mocking you all along the way.";
		say "     The rod must be as hard as steel, since she has no problem shifting her weight all over the place, as if trying to pry your hole wider. You'd think she's hardly interested in fucking you if not for occasionally being wracked by the searing pain of her molten precum. You're dizzied by how intense the sensation is, until you eventually get somewhat numb to it.";
		say "     Gradually, the monster's sadistic revels melt away to leave her rising, primal needs, thrusting her terrible organ through your bowels with a wild, increasingly blind fervor. Howling terribly, the shrill dragon sharp talons rake along your back, slicked by sweat and soon her tongue's similarly searing saliva, as though the monster has regressed into a rabid, even more monstrous state.";
		say "     '[one of]Breed - breed - fuck, FUCK[or]Cum - CUM, fuck[or]I-...I must - FUCK[at random]!' Barely coherent by this point, you're afraid she's going to pound you completely into the ground before finally letting out a shrill, deafening howl, still fucking you wildly as the monster's cock gushes what feels like gallons of her burning seed. You're lost in an exhausted haze of tainted agony, but she doesn't relent, and instead seems to get -angry- at you as her lust dies down, wildly fucking you even as she's spent.[movichance]";
		say "     The dragoness eventually seems to give up. Heavy gouts of smoke puffing with each heavy pant from the creature, she otherwise seems barely exhausted by her rampage, sounding more amused by your wholly abused form. Wrenching herself free at last, she cackles, shoving you along with a foot and taunting you until you finally find the strength to crawl away on your own accord";
		if blanchefight is true:
			say "...";
		else:
			say ". You're half afraid she'll continue assaulting you, but it seems she finally gets bored and goes off to harass something else.";
			say "     Thankfully, as you finally find a place to catch your breath, the ordeal doesn't leave you with any lasting damage, but you imagine you're going to have some trouble walking for a couple hours...";
	else if Player is female and a random chance of 2 in 3 succeeds:
		say "     Her plans become clear when you feel the tip one of her talons caress along the crevice of your sore behind, teasing you before the razor sharp thing forces its way through[if Cunt Count of Player > 1] one of[end if] your cunt[sfn]. She cackles as you tremble against her digit so casually shaming you.";
		say "     '[one of]Such a soft hole, I'm going to take great joy in ravaging it[or]I'm going to love tearing you in half[or]Oh, don't worry, you're not going to feel a thing... After I'm done with you[at random]!' Finally pulling the talon free, it's apparent she wanted to humiliate you more than prepare, [if scalevalue of Player > 3]climbing on top of[else]positioning herself behind[end if] you before the pointed tip of the reptile's savage dick briefly presses against you supple lips. Immediately, she plunges the massive thing as far in as she can, grunting as she forces what remains with successive thrusts. Not only is it apparent that she doesn't care to prepare you, but she actively enjoys hearing you howl in pain as her sharp barbs dig into your tender flesh, laughing and mocking you all along the way.";
		say "     The rod must be as hard as steel, since she has no problem shifting her weight all over the place, as if trying to stretch your[if Cunt Depth of Player < 10] already strained[end if] pussy wider. You'd think she's hardly interested in fucking you if not for occasionally being wracked by the searing pain of her molten precum. You're dizzied by how intense the sensation is, until you eventually get somewhat numb to it.";
		say "     Gradually, the monster's sadistic revels melt away to leave her rising, primal needs, thrusting her terrible organ through your bowels with a wild, increasingly blind fervor. Howling terribly, the shrill dragon sharp talons rake along your back, slicked by sweat and soon her tongue's similarly searing saliva, as though the monster has regressed into a rabid, even more monstrous state.";
		say "     '[one of]Breed - breed - fuck, FUCK[or]Cum - CUM, fuck[or]I-...I must - FUCK[at random]!' Barely coherent by this point, you're afraid she's going to pound you completely into the ground before finally letting out a shrill, deafening howl, still fucking you wildly as the monster's cock gushes what feels like gallons of her burning seed. You're lost in an exhausted haze of tainted agony, but she doesn't relent, and instead seems to get -angry- at you as her lust dies down, wildly fucking you even as she's spent.[fovichance]";
		say "     The dragoness eventually seems to give up. Heavy gouts of smoke puffing with each heavy pant from the creature, she otherwise seems barely exhausted by her rampage, sounding more amused by your wholly abused form. Wrenching herself free at last, she cackles, shoving you along with a foot and taunting you until you finally find the strength to crawl away on your own accord";
		if blanchefight is true:
			say "...";
		else:
			say ". You're half afraid she'll continue assaulting you, but it seems she finally gets bored and goes off to harass something else.";
			say "     Thankfully, as you finally find a place to catch your breath, the ordeal doesn't leave you with any lasting damage, but you imagine you're going to have some trouble walking for a couple hours...";
	else:
		say "     The dragoness circles around your[if scalevalue of Player > 3] larger,[end if] [bodytype of Player] form, she wraps [if scalevalue of Player > 3]both[else]one[end if] of her scaled hands around your neck, pulling your head forward until you're forced to stare down her glowing eyes.";
		say "     '[one of]Ha[or]Hmm[or]Hmpf[at random], [one of]like what you see[or]don't you find me pretty[or]are you arrogant, or just plain stupid[at random]? [one of]How about a kiss for the lady[or]Would you like to feel this lady's tongue[at random]?' She doesn't seem to care for your response, because immediately she presses her coarse, scaled lip against yours, her powerful tendril-like tongue piercing your maw's depths.";
		say "     He saliva burns terribly against your soft flesh, [if HP of Player > 0]forced to writhe in protest even with your submission[else]driving you to weakly writhe in protest[end if], making her laugh against the forced kiss. You start to gag and cough as your lungs are flooded with her smoldering breath, and she finally pulls away once your wholly dazed from the affair.";
		say "     The lizard's hand[if scalevalue of Player > 3]s are[else] is[end if] still gripped around your neck, however, and she immediately plunges your head southwards, until she's rubbing your face against her charred black, throbbing cock. Sharp barbs pressing against you, her precum is just as burning as it's smeared against you.";
		say "     '[one of]Satisfy my need[or]Pay the tribute[or]Suck me off[at random], [one of]whelp[or]fool[or]plaything[at random], [one of]and maybe I'll let you off[or]and perhaps you'll live to see another day[or]or I'll be sure to prolong your suffering[at random]!' Guided by her forceful grip, the pointed tip of her draconic dick as plunged between your lips, taste flooded with the intense sensation of her molten, glowing seed. Forced to bob against the organ, its barbs do nothing but make your efforts more difficult, though she's dead set on making sure you don't slow down.";
		say "     As things progress, you become increasingly concerned about the monster's imminent bliss, the dragoness becoming increasingly feral and desperate for release with each passing second, until she's practically clawing at you to give it to her.";
		say "     '[one of]F-faster - fuck[or]I'm - going to burn a hole straight through you[or]If you don't make me cum r-right now, you can't even imagine - [at random]!' You're instinctively worried about when she finally climaxes, but your desperate attempts to pull away fail with her plunging you back on the burning rod. Your struggle is ultimately in vain as she finally lets out a deafening, shrill howl, pinning your lips firm against her crotch as she sputters thick, successive gouts of her fiery load down your throat.";
		if blanchefight is true:
			say "     You feel like you briefly black out from the intense sensation. You quickly regain consciousness, however, as the cackling monster kicks at you, having left you slumped on the ground...";
		else:
			say "     You feel like you briefly black out from the intense sensation. When you regain you thoughts, it seems she had push you off of her and left you abandoned, a faint memory of her mocking laughter and the intense pain of being full with her molten seed all she's left you with. Once the discomfort subsides and your head clears, you're able to scramble off someplace safe.";

to say ebdrakedef:
	say "     The drake reels backward, panting for breath as she falls to her knees, gouts of smoke spouting from her lips and nostrils.";
	say "     '[one of]Nng[or]Hmpf[or]Damnit[or]Asshole[at random], [one of]this is merely a setback[or]you only delay the inevitable[or]we will inherit our birthright[or]your world will be ours[or]we will have our vengeance[or]I am only one of an infinite many[at random]!' Before you can get any closer, she climbs back to her feet and takes flight, billowing up a gust of ash and dirt in her wake as she retreats into the sky. Once the dust settles and she's no longer visible you catch your breath before going about your business once more.";

to say ebdrakedesc:
	setmongender 5;      [creature is herm]
	choose row MonsterID from the Table of Random Critters;
	now firebreathcount is 0;
	now firebreathready is false;
	if blanchefight is true:
		say "     In the ash-filled haze, the imposing, dragon-humanoid figure glares angrily at you, no doubt smoldering over your surprise attack. Covered in an impenetrably dark shade of purple scales, she's almost naught but a silhouette against the[if daytimer is night] night's[end if] surroundings, save for her fiery eyes and the ample strings of the hermaphrodite's glowing, molten precum oozing from her terrifying, barbed cock.";
		say "     'You have the gall to try and steal what is already mine? Well then... Perhaps you wish to take her place!' She immediately comes to life, charging at you with a shrill howl, forcing you to ready yourself for combat!";
		let temp1 be HP entry / 8;
		if temp1 > weapon damage of Player, decrease monsterHP by weapon damage of Player;
		if temp1 <= weapon damage of Player, decrease monsterHP by temp1;
	else:
		say "     In the ash-filled haze, you see [if scalevalue of Player < 4]a towering[else]an imposing[end if], dragon-humanoid in the distance. [one of]You're barely given a chance to react before it notices you as well[or]Already the subject of its pursuit[stopping], it turns to amble towards you slowly. Covered in an impenetrably dark shade of purple scales, she's almost naught but a silhouette against the[if daytimer is night] night's[end if] surroundings, save for her fiery eyes and the occasional strings of the hermaphrodite's glowing, molten precum oozing from her terrifying, barbed cock.";
		say "     '[one of]Whelp[or]Mortal[or]Pitiful creature[at random]! [one of]Submit to the will of the Matriarch[or]You are not prepared[or]There is no escape[or]You will be my plaything[at random]!' Her pace begins to pick up, until the reptile is practically charging you down, forcing you to ready yourself for combat!";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Ebonflame Dragon"; [name of the overall species of the infection, used for children, ...]
	add "Ebonflame Drake" to infections of ReptileList;
	add "Ebonflame Drake" to infections of FurryList;
	add "Ebonflame Drake" to infections of MythologicalList;
	add "Ebonflame Drake" to infections of HermList;
	add "Ebonflame Drake" to infections of TaperedCockList;
	add "Ebonflame Drake" to infections of InternalCockList;
	add "Ebonflame Drake" to infections of BipedalList;
	add "Ebonflame Drake" to infections of TailList;
	add "Ebonflame Drake" to infections of TailweaponList;
	now Name entry is "Ebonflame Drake";
	now enemy title entry is ""; [name of the encountered creature at combat start - "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The drake[or]The terrifying reptile[or]She[or]The dragoness[at random] [one of]lets out a savage howl and charges at you, raking you with one of her savage talons and sending you reeling[or]grabs your [if scalevalue of Player > 4]larger, [bodytype of Player] form, displaying her superior strength as she lifts you into the ground before slamming you against the ground, causing the earth to tremble under your heavy impact[else][bodytype of Player] form, easily lifting you into the air before slamming you against the ground with an audible thud[end if][or]pounces you and assaults you with a barrage of tooth and claw, until you finally push her off and back away[or]manages to lash you with her powerful tail, singing through the air before assaulting you with a sharp and terrible pain[at random].";
	now defeated entry is "[ebdrakedef]";
	now victory entry is "[ebdrakevic]";
	now desc entry is "[ebdrakedesc]";
	now face entry is "distinctly draconic head, a pair of horns sprouting from its sides, curving back such that the tips nearly connect behind you. A set of faintly glowing, fiery eyes match your fierce set of teeth arraying your";
	now body entry is "tall and powerful. Your hands wield a fearsome set of claws, though they can be sheathed to not obstruct your articulation, and a similar set adorn your now-digitigrade feet. A set of under-developed wings also adorn your back";
	now skin entry is "an array of [one of]deep[or]abyssally[at random] dark, purple scales for";
	now tail entry is "You have a long and powerful tail. Quite prehensile, it narrows to a sharp tip that sings as it moves through the air.";
	now cock entry is "[one of]barbed[or]fearsome[or]intimidating[at random], [one of]draconic[or]reptilian[at random]";
	now face change entry is "a searing pain wracks your face. You cry out as bone and skin cracks and stretches to accommodate a new shape. Once the pain subsides, your head is revealed to have taken on the reptilian form of an ebonflame drake, elongated snout adorned with an array of razor-sharp teeth and a pair of glowing, fire-red eyes. A long pair of horns seem to have erupted from the back of your head, curving such that the tips almost touch";
	now body change entry is "it suddenly becomes engulfed in a terrible, burning pain. Falling to your knees, you nearly pass out from the intense sensation as limbs both old and new undergo a very aggressive transformation. When you recover, you find that you taken on a tall, humanoid form, hands and feet transformed into fierce talons that take you a while to acclimate to. Additionally, you appear to have grown a set of wings on your back, but they seem under-developed and you're too inexperienced to really make much use of them";
	now skin change entry is "it undergoes a transformation. Suddenly, you feel like you're engulfed in flames, blood boiling as you're covered in a set of deeply dark purple scales, melting away the remnants of your prior surface. As you recover, you feel as though your blood is constantly on fire, which seems to get you pumped up, but makes you anxious and impatient whenever you're not doing anything";
	now ass change entry is "it begins to burn terribly, causing you to fall to your knees until it subsides. Checking behind you, you now accommodate a large, powerful reptilian tail. Strong enough to support your weight, the end narrows to a sharp tip, whistling as it's lashed through the air";
	now cock change entry is "it burns with a terrible sensation, causing you to double over in pain. Once you recover, it's revealed to have taken on a jet-black, draconic shape, though wholly external. It's arrayed in a terrible set of barbs along the head and the undercarriage, and oozes a burning, glowing amber sexual fluid";
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 15;
	now sex entry is "Both";
	now HP entry is 80;
	now lev entry is 16;
	now wdam entry is 20;
	now area entry is "Capitol";
	now Cock Count entry is 1;
	now Cock Length entry is 10;
	now Ball Size entry is 3;
	now Nipple Count entry is 2;
	now Breast Size entry is 8;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 10;
	now libido entry is 60;
	now loot entry is "ebonflame scale";
	now lootchance entry is 75;
	now scale entry is 3;
	now body descriptor entry is "[one of]well-toned[or]draconic[or]powerful[or]fearsome[at random]";
	now type entry is "[one of]draconic[or]reptilian[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "firebreath";
	now BannedStatus entry is false;

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


Section 3 - Miscellaneous

when play ends:
	if BodyName of Player is "Ebonflame Drake":
		if humanity of Player < 10:
			say "     Overcome by your powerful, draconic infection, you're pulled inexorably towards your kin, informed by your dark, fiery strain on how you must act";
			if Player is submissive:
				say ". However, you are twisted by your submissive inclinations to serve your sisters as their plaything, often abused when there's no proper victim to take your place. You take a deep thrill in being subjugated by your own kind.";
			else:
				say ". You are forced to fight with your sisters until you prove your worth, soon joining them afterwards to sate your need on the many remaining victims in the city.";
			say "     There is a terrible need to move forward, as if to flee from your more feral kin. Dark whispers seem to compel your actions, but eventually there is only silence, punctuated by the cries of ecstasy.";
			if Player is submissive and player is kinky:
				say "     Your final, distinctive memories are that of no longer finding satisfaction in your sisters, instead turning inward to embrace to the more wild, virile influence of the terrible beasts that follow in your wake, more than eager to make your future eternally filled with a blur of constantly breeding...";
			else:
				say "     Eventually, everything blurs into a haze of constant sex, you're never even learn what dark powers compelled you, or if they achieved whatever it was that they sought...";
		else:
			say "     More than any other infected that is eventually rescued by the military, you're forced to linger in processing, largely from the infamy born of your strain";
			if Player is submissive or "Strong Psyche" is listed in feats of Player:
				say ". It's hard to keep everything together, but ultimately your [if Player is submissive]submissive tendencies allow[else]strong will allows[end if] you to endure until you're finally freed back into civilized society.";
				say "     You ultimately find yourself doing mercenary work keeping the mindless infected at bay in the borders of civilization[if Player is submissive], often by using your own body as a twisted tribute[end if]. It seems to sate your terrible, burning need, but only by so much...";
			else:
				say ". This terrible, dark compulsion eventually becomes too much, however, and you're eventually forced to tear out an escape for yourself. It takes some weeks for the military to eventually stop searching for you - perhaps because you weren't infectious and there's more pressing matters to attend to.";
				say "     Too lucid to join your sisters and too twisted to join society proper, you're forced to dwell in society's dark underbelly, torn between sating your fiery need and not becoming the monsters that first turned you. It's strange, at first, when you find others actively willing to be your plaything, but even they are paltry compared to the thrill of your terrible hunt...";

Table of Game Objects (continued)
name	desc	weight	object
"ebonflame scale"	"Coarse and dense, the scale still feels warm in your hand."	1	ebonflame scale

ebonflame scale is a grab object.
ebonflame scale is infectious. The strain of ebonflame scale is "Ebonflame Drake".
the usedesc of ebonflame scale is "You swallow the dark scale. It's extremely bitter and hot to the taste, like eating something charred black by an open fire.".

instead of sniffing ebonflame scale:
	say "It smells of something burnt to a crisp.";

Ebonflame Drake ends here.
