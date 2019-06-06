Version 1 of Ebonflame Dragator by Blue Bishop begins here.
[ Version 1.0 - Initial replacement for Ash Dragator - Blue Bishop]

"Adds an Ebonflame Dragator to Flexible Survival."
[Inspired by the Ash Dragator]

Section 1 - Creature Responses

ebgatord is a number that varies. [Ebonflame Gator dick memory. 1 = been described, 2 = egglaying described]

to say ebgatorvic:
	if HP of Player > 0:
		say "     You try surrendering to the beast but he appears to be either too dense or too bloodthirsty to notice your submission, swiping at you still and forcing you to keep some distance. You decide you'll have to go [']all in['] here, laying down face-first and leaving yourself wholly at the mercy of the gator.";
		say "     Immediately, it lunges once more at you and bites at your[if scalevalue of Player > 3] larger,[end if] vulnerable form, barely responding to your apparent compliance. It seems to get off on your cries in pain, as it does eventually begin to mount you...";
	else:
		say "     Completely battered and beaten, you crumple onto the ground, left to the mercy of the beast as it lunges forward and continues to assault you.";
		say "     Vicious gator hardly able to recognize that you're completely out of the fight, it continues to bite at your[if scalevalue of Player > 3] larger,[end if] vulnerable form. It seems to get off on your feeble cries in pain, as it does eventually begin to mount you...";
	if anallevel > 1 and (Cunt Count of Player is 0 or anallevel is 3) and (a random chance of 1 in 2 succeeds or (anallevel is 3 and a random chance of 1 in 3 succeeds) or (Cunt Count of Player is 0 and impregnatevalid is true)):
		say "     You soon feel the slightly flat head of the reptile's[if ebgatord is 0][else] peculiar,[end if] oversized dick press against your ass";
		if ebgatord is 0:
			say ", you're given a glimpse of the thing even as it's being forced past your[if scalevalue of Player < 4 and player is not twistcapped] tight[end if] ring. The organ looks as though it was supposed to be two dicks instead of one, but it quit about half the way through, giving the tool and overly wide and flat girth, making you groan [if HP of Player > 0]loudly[else]weakly[end if] as it's gradually plunged deeper into you.";
			now ebgatord is 1;
		else:
			say ", groaning [if HP of Player > 0]loudly[else]weakly[end if] as the overly wide organ is squeezed through your[if scalevalue of Player < 4 and player is not twistcapped] tight[end if] ring.";
		say "     The monster hisses loudly in rough satisfaction with each successive inch of the throbbing, molten-precum oozing cock is sunk through your[if scalevalue of Player < 4 and player is not twistcapped] meager-fitting[end if] bowels until he can't force it in any deeper. The heat of his coarsely scaled, heaving body like a fire against your [bodytype of Player] form, it's hard to say if you're aroused by the ordeal, given how numb you are from this intense sensation[if HP of Player < 1] and your prior defeat[end if], sweat almost feeling like it's boiling off as you as his motion becomes rougher with each powerful thrust.";
		say "     After what feels like hours of being pounded into the ground, the dragon-gator finally roars out, sinking its sharp talons into you as it plunges its wide organ deep inside you one last time";
		if impregnatevalid is true:
			say ". [if ebgatord < 2]You briefly think the lizard's dick is knotted for how it forces a large bulge at its back past your ring, but it quickly reveals its true purpose as the bulb ascends[else]You're quickly reminded of the intense sensation of being [']tied['] with the lizard's dick, large bulge at its base forced past your ring, ascending[end if] along its shaft, until a large, coarse egg is squeezed from its head and into your bowels.";
			say "     Still high from the throes of bliss - and perhaps ensuring the orb is planted deep within you - he still continues to fuck you senselessly, forcing a weak, [if scalevalue of Player > 3]slightly[else]substantially[end if] strained orgasm, [if Player is male]your unattended cock[smn] staining the ground with your [Cum Load Size of Player] load[else if Player is female]your unattended cunt[sfn] staining the ground with your juices[else]causing you to writhe in insatiable need[end if]. Finally satisfied, the beast wrenches his still-hard rod from your[if scalevalue of Player > 4 or player is twistcapped] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal. [italic type]You're somewhat worried about the long-term results of carrying this egg...[roman type]";
			if ebgatord < 2, now ebgatord is 2;
			now mpreghijack is true;
			now ebgatorhijack is 2;
			now hijackgestation is 8;
		else:
			say ". Like a fire hose, the lizard's dick pumps its substantial, molten cum deep into your bowels, making you wince and cry out in the intense, searing sensation.";
			say "     Still high from the throes of bliss - and its motion further lubricated by its glowing seed - it still continues to fuck you senselessly, forcing a weak, strained orgasm, [if Player is male]your unattended cock[smn] staining the ground with your [Cum Load Size of Player] load[else if Player is female]your unattended cunt[sfn] staining the ground with your juices[else]causing you to writhe in insatiable need[end if]. Finally satisfied, the beast wrenches his still-hard rod from your[if scalevalue of Player > 4 or player is twistcapped] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal.[mimpregchance]";
	else if Player is female:
		say "     You soon feel the slightly flat head of the reptile's[if ebgatord is 0][else] peculiar,[end if] oversized dick press against[if Cunt Count of Player > 1] one of[end if] your cunt[sfn]";
		if ebgatord is 0:
			say ", you're given a glimpse of the thing even as it's being forced past your[if Cunt Depth of Player < 12] tight[end if] lips. The organ looks as though it was supposed to be two dicks instead of one, but it quit about half the way through, giving the tool and overly wide and flat girth, making you groan [if HP of Player > 0]loudly[else]weakly[end if] as it's gradually plunged deeper into you.";
			now ebgatord is 1;
		else:
			say ", groaning [if HP of Player > 0]loudly[else]weakly[end if] as the overly wide organ is squeezed through your[if Cunt Depth of Player < 12] tight[end if] lips.";
		say "     The monster hisses loudly in rough satisfaction with each successive inch of the throbbing, molten-precum oozing cock is sunk through your[if Cunt Depth of Player < 12] meager-fitting[end if] passage until he can't force it in any deeper. The heat of his coarsely scaled, heaving body like a fire against your [bodytype of Player] form, it's hard to say if you're aroused by the ordeal, given how numb you are from this intense sensation[if HP of Player < 1] and your prior defeat[end if], sweat almost feeling like it's boiling off as you as his motion becomes rougher with each powerful thrust.";
		say "     After what feels like hours of being pounded into the ground, the dragon-gator finally roars out, sinking its sharp talons into you as it plunges its wide organ deep inside you one last time";
		if impregnatevalid is true:
			say ". [if ebgatord < 2]You briefly think the lizard's dick is knotted for how it forces a large bulge at its back past your lips, but it quickly reveals its true purpose as the bulb ascends[else]You're quickly reminded of the intense sensation of being [']tied['] with the lizard's dick, large bulge at its base forced past your lips, ascending[end if] along its shaft, until a large, coarse egg is squeezed from its head and into your womb.";
			say "     Still high from the throes of bliss - and perhaps ensuring the orb is planted deep within you - he still continues to fuck you senselessly, forcing a weak, [if Cunt Depth of Player < 12]slightly[else]substantially[end if] strained orgasm, your [if Player is male]unattended cock[smn] staining the ground with your [Cum Load Size of Player] load[else]pussy weakly throbbing against its oversized invader[end if]. Finally satisfied, the beast wrenches his still-hard rod from your[if Cunt Depth of Player > 11] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal. [italic type]You're somewhat worried about the long-term results of carrying this egg...[roman type]";
			if ebgatord < 2, now ebgatord is 2;
			now preghijack is true;
			now ebgatorhijack is 1;
			now hijackgestation is 8;
		else:
			say ". Like a fire hose, the lizard's dick pumps its substantial, molten cum deep into your bowels, making you wince and cry out in the intense, searing sensation.";
			say "     Still high from the throes of bliss - and its motion further lubricated by its glowing seed - it still continues to fuck you senselessly, forcing a weak, strained orgasm, your [if Player is male]unattended cock[smn] staining the ground with your [Cum Load Size of Player] load[else]pussy weakly throbbing against its oversized invader[end if]. Finally satisfied, the beast wrenches his still-hard rod from your[if Cunt Depth of Player > 11] slightly[end if] gaping hole.";
			say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal.[impregchance]";
	else:
		say "     You soon feel the slightly flat head of the reptile's[if ebgatord is 0][else] peculiar,[end if] oversized dick press against your face";
		if ebgatord is 0:
			say ", you're forced to stare down the barrel of the monstrous thing, just as he begins to shove it past your lips. The organ looks as though it was supposed to be two dicks instead of one, but it quit half way through, giving the tool and overly wide and flat girth, forcing a muffled groan from you as the tool is plunged ever-deeper down your gullet.";
			now ebgatord is 1;
		else:
			say ", a [if HP of Player > 0]loud[else]weak[end if], muffled groan escapes your lips as the blunt head of the overly wide organ is shoved past your lips, plunged ever-deeper down your gullet.";
		say "     The monster hisses loudly in rough satisfaction with each successive inch of the throbbing, molten-precum oozing cock is forced down your throat. The heat of its coarsely scaled, heaving body like a fire against your [bodytype of Player] form, it's hard to say if you're aroused by the ordeal, given how numb you are from this intense sensation[if HP of Player < 1] and your prior defeat[end if], sweat almost feeling like it's boiling off as you as his motion becomes rougher with each powerful thrust.";
		say "     After what feels like hours of being pounded into the ground, the dragon-gator finally roars out, sinking its sharp talons into you as it plunges its wide organ [if scalevalue of Player < 4]as deep as he can[else]all the way[end if] inside you one last time. Like a fire hose, the lizard's dick pumps its substantial, molten cum deep into your stomach, making you wince and gag out in the intense, searing sensation.";
		say "     Still high from the throes of bliss - and its motion further lubricated by its glowing seed - it still continues to fuck you senselessly until it's eventually apparent to him that he's completely spent. Finally satisfied, the beast wrenches his still-hard rod from your maw, quickly gasping and coughing against the marginally cooler open air.";
		say "     Abandoning your battered, bruised, and bloated form with a low hiss, you're forced to crawl away and recover from the consequences of the ordeal.";

impregnatevalid is a truth state that varies. impregnatevalid is usually false.
ebgatorcarrying is a number that varies. ebgatorcarrying is usually 1.

to say ebgatordesc:
	setmongender 3;      [creature is male]
	now firebreathcount is 0;
	now firebreathready is false;
	now impregnatevalid is false;
	if Player is female and ebneuterswitch is false:
		if Player is fem_vacant:
			if a random chance of ebgatorcarrying in 4 succeeds:
				now impregnatevalid is true;
				now ebgatorcarrying is 1;
				now tempnum2 is 1;
			else:
				increase ebgatorcarrying by 1;
	else if ebneuterswitch is false:
		if Player is male_vacant and anallevel > 1 and ((anallevel is 2 and (player is kinky or player is mpreg_ok)) or anallevel is 3):
			if a random chance of ebgatorcarrying in 4 succeeds:
				now impregnatevalid is true;
				now ebgatorcarrying is 1;
				now tempnum2 is 2;
			else:
				increase ebgatorcarrying by 1;
	say "     A loud, low hissing sound echoes from the open air as a monstrous, feral alligator lurches from the shadow. Twisted by an unholy influence, the six-legged beast is an abyssal shade of purple, hard scales and ridges jutting from its coarse frame, a soft red flame visibly glowing in the cracks and crevices.";
	say "     Twin pairs of eyes fixated on your [bodytype of Player] form, its drooling maw is agape, revealing its two rows of razor-sharp teeth. Without warning, it charges directly at you!";
	if impregnatevalid is true:
		say "     [bold type]...The creature has a slightly awkward gait, as if bloated with something...[roman type]";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Ebonflame Dragon"; [name of the overall species of the infection, used for children, ...]
	add "Ebonflame Dragator" to infections of ReptileList;
	add "Ebonflame Dragator" to infections of FurryList;
	add "Ebonflame Dragator" to infections of FeralList;
	add "Ebonflame Dragator" to infections of MythologicalList;
	add "Ebonflame Dragator" to infections of HermList;
	add "Ebonflame Dragator" to infections of TaperedCockList;
	add "Ebonflame Dragator" to infections of InternalCockList;
	add "Ebonflame Dragator" to infections of BipedalList;
	add "Ebonflame Dragator" to infections of TailList;
	add "Ebonflame Dragator" to infections of TailweaponList;
	now Name entry is "Ebonflame Dragator";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The gator[or]The oversized lizard[or]The scaled beast[or]The ebonflame dragator[or]It[or]He[at random] [one of]lunges forward and snaps it jaws around one of your limbs, the horribly sharp teeth digging into you until you finally pry its jaw wide enough to free yourself[or]shreds you painfully with its claws[or]attempts to pin you against the ground, biting and clawing at you until you push yourself free[or]painfully bashes you with its large, powerful tail[at random].";
	now defeated entry is "     With one final attack, the terrifying monster lets out a low groan and slumps onto the ground, completely spent and unable to move - save for the occasional stirring. You decide it's probably best to move on before the gator recovers.";
	now victory entry is "[ebgatorvic]";
	now desc entry is "[ebgatordesc]";
	now face entry is "NA";
	now body entry is "NA";
	now skin entry is "NA";
	now tail entry is "NA.";
	now cock entry is "NA";
	now face change entry is "NA";
	now body change entry is "NA";
	now skin change entry is "NA.";
	now ass change entry is "NA";
	now cock change entry is "NA";
	now str entry is 15;
	now dex entry is 18;
	now sta entry is 16;
	now per entry is 13;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Both";
	now HP entry is 70;
	now lev entry is 10;
	now wdam entry is 26;
	now area entry is "Capitol";
	now Cock Count entry is 1;
	now Cock Length entry is 15;
	now Ball Size entry is 4;
	now Nipple Count entry is 2;
	now Breast Size entry is 14;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 16;
	now Cunt Tightness entry is 17;
	now libido entry is 40;
	now lootchance entry is 40;
	now loot entry is "ebonflame scale";
	now scale entry is 4;
	now body descriptor entry is "NA";
	now type entry is "NA";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "firebreath";
	now BannedStatus entry is false;

[
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


Section 3 - Miscellaneous

to ebgatorhijackroutine:
	LineBreak;
	if ebgatorhijack is 1 and Cunt Count of Player is 0:
		say "[italic type]Your lack of a vaginal passage causes you to feel as though your insides are shifting in strange and somewhat uncomfortable ways...[roman type][line break]";
		now preghijack is false;
		now mpreghijack is true;
		now ebgatorhijack is 2;
	if hijackgestation < 3: [LATE]
		say "Your [bodytype of Player] belly protrudes in a firm dome of pregnancy, full of the terrible, glowing egg, becoming increasingly difficult to lug around. You don't feel that hindered despite being so bloated but the constant, burning sensation of the churning orb torments you to no end.";
	else if hijackgestation < 5: [MIDDLE]
		say "Your [bodydesc of Player] body is somewhat rounded with the effects of the egg growing inside you. It's progressing at what would seem to be a terrifyingly fast speed, growing with every passing hour, in heat just as much as it does in size.";
	else: [EARLY]
		say "[one of]You feel an ominous shifting of something inside[or]An unsettling warmth churns through[at random] you as you continue to carry the dark egg.";
	if hijackgestation < 0:
		if preghijack is true:
			now tempnum is 1;
		else:
			now tempnum is 2;
		say "     Unable to hold itself within you any longer, you double over from the intense sensation of the dark egg finally being pushed through your [if tempnum is 1]birth canal[else]bowels[end if].";
		say "     So large is the orb that it takes considerable pains to push it past your [if tempnum is 1]cunt's strained lip[else]ass's strained ring[end if]. It takes numerous attempts to try and get rid of the thing, as it often slides back in at a moment's relent, before it finally, audibly pops from your gaping hole, the slick, dark purple egg twitching and churning on the ground.";
		say "     Looking at it, it's hard to imagine that thing was inside you, given how large it is[if scalevalue of Player > 3]. Even as large as you are, it seems the egg grew even larger to exploit the free space[end if]. The coarse orb is completely covered rings of grooved ridges, still slick from its prior home. It occasionally twitches and you hear bestial sounds from inside.";
		say "     Once you recover, you haul the egg off somewhere out of the way. After that ordeal, the last thing you need is another one of those monsters attacking you and starting this whole cycle all over again...";
		if ebgatorhijack is 1:
			now preghijack is false;
		else:
			now mpreghijack is false;
		now ebgatorhijack is 0;
		if HP of Player > 8, decrease HP of Player by 5;
		now tempnum is 0;

Ebonflame Dragator ends here.
