Version 2 of Mismatched Chimera by Stripes begins here.
[Version 2.4 - Player loss scene tree tweaked]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Mismatched Chimera creature to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses


bodyselector is a text that varies.
headdata is a text that varies.[@Tag:NotSaved]
larmdata is a text that varies.[@Tag:NotSaved]
rarmdata is a text that varies.[@Tag:NotSaved]
torsodata is a text that varies.[@Tag:NotSaved]
cockdata is a text that varies.[@Tag:NotSaved]
llegdata is a text that varies.[@Tag:NotSaved]
rlegdata is a text that varies.[@Tag:NotSaved]
breastdata is a number that varies.[@Tag:NotSaved]

when play begins:
	add { "Mismatched Chimera" } to infections of furry;
	add { "Mismatched Chimera" } to infections of hermaphrodite;


to say mischimdesc:
	setmongender 5; [creature is herm]
	say "[mixnmatch]     You have seen a variety of strange creatures and hominids in the city, but this is definitely one of the strangest. Somehow, it is a strange, cobbled-together mish-mash of other creatures. The body parts don't match and you can see stitchmarks in several places where they were grafted together. Several other spots have scars from what may have been medical procedures or experiments.";
	say "     This unfortunate creature has the head of a [headdata] sewn onto its [torsodata] body. Its body has several smaller mismatched patches and scars. The strange chimera's right arm and shoulder are that of a [rarmdata], ending in a clawed human hand while its left forearm has that of a [larmdata] grafted on. Its left leg is fully that of a [llegdata] attached on at the hip while its right leg is that of a [rlegdata] from the knee down. Stitched to its chest are [breastdata] mismatched breasts while a [cockdata] dick hangs between its legs over a large, stitched-up scrotum. It looks at you with its mismatched, animal eyes and growls lustfully before attacking.";
	choose row MonsterID from the Table of Random Critters;
	if hardmode is false and ( lev entry is 8 or lev entry is 9 ) and level of Player < 10:
		say "     This particular hybrid seems especially powerful and dangerous. Best be careful.";

to say mixnmatch:
	now bodyselector is "ready";
	say "[randombodypart]";
	now headdata is bodyselector;
	say "[randombodypart]";
	now larmdata is bodyselector;
	say "[randombodypart]";
	now rarmdata is bodyselector;
	say "[randombodypart]";
	now torsodata is bodyselector;
	say "[randombodypart]";
	now cockdata is bodyselector;
	say "[randombodypart]";
	now llegdata is bodyselector;
	say "[randombodypart]";
	now rlegdata is bodyselector;
	let T be a random number between one and three;
	now breastdata is ( T times 2 );
	choose row MonsterID from the Table of Random Critters;
	let qq be a random number between 5 and 9;
	let zz be a random number between 1 and 15;
	if hardmode is true and level of Player > 7:		[Hard Mode Version!]
		increase qq by level of Player - 7;
		now HP entry is 27 + ( ( 5 * qq ) + zz + a random number between 0 and qq );
		now monsterHP is HP entry;
		now lev entry is qq;
		if lev entry > 9:
			now wdam entry is 9 + ( ( qq * 2 ) / 7 );
		else:
			now wdam entry is ( ( ( qq - 1 ) * 3 ) / 2 );
		now dex entry is 15 + ( qq / 6 ) + ( square root of ( qq + 8 ) ); [faster initial growth, but slows down more]
	else:								[Normal Play Version!]
		now HP entry is ( ( 8 times qq ) plus zz );
		now monsterHP is HP entry;
		now wdam entry is ( ( ( qq minus 1 ) times 3 ) divided by 2 );
		now lev entry is qq;
		now dex entry is ( ( ( ( qq minus 1 ) times 4 ) divided by 3 ) plus 10 );
	[testing values achieved]
[	say "Lvl is [qq]. Variable is [zz].";
	say "HP is [HP entry].";
	say "Dmg is [wdam entry]. Dex is [dex entry].[line break]";]


to say randombodypart:
	let T be a random number between 1 and 20;
	if T is 1:
		now bodyselector is "husky";
	if T is 2:
		now bodyselector is "hawk";
	if T is 3:
		now bodyselector is "panther";
	if T is 4:
		now bodyselector is "horse";
	if T is 5:
		now bodyselector is "Doberman Bitch";
	if T is 6:
		now bodyselector is "gazelle";
	if T is 7:
		now bodyselector is "cheetah";
	if T is 8:
		now bodyselector is "kangaroo";
	if T is 9:
		now bodyselector is "skunk";
	if T is 10:
		now bodyselector is "bull";
	if T is 11:
		now bodyselector is "zebra";
	if T is 12:
		now bodyselector is "seal";
	if T is 13:
		now bodyselector is "tiger";
	if T is 14:
		now bodyselector is "hyena";
	if T is 15:
		now bodyselector is "wolf";
	if T is 16:
		now bodyselector is "Anthro Rabbit";
	if T is 17:
		now bodyselector is "mouse";
	if T is 18:
		now bodyselector is "pig";
	if T is 19:
		now bodyselector is "lizard";
	if T is 20:
		now bodyselector is "bat";


to say losetomischim:
	if inasituation is true:
		say ""; [dealt with in the source event]
	else:
		[reset creature stats for next encounter]
		choose row MonsterID from the Table of Random Critters;
		now dex entry is 15; [ reset dexterity for random infection ]
		now lev entry is 6; [ reset level for random encounter availability ]
		if Player is female and a random chance of 1 in 2 succeeds:
			say "     The hybrid creature pushes you down onto a nearby hospital bed, bending you over it. With a little fumbling with your remaining clothes, it gets itself lined up with your pussy and mounts you with a throaty purr. The creature's [headdata] muzzle nips along your neck as it thrusts its [cockdata] cock into you again and again with increasing vigor. The chimera's heavy ballsack feels strange as it slaps against you again and again, quite full and heavy.";
			say "     You soon realize that it has at least four balls in there of various size, probably from a variety of creatures like the rest of its body. This leads you to the realization that the creature could contain almost any seed or strain of infection to alter you. You struggle for a moment, but the creature keeps you pinned with its clawed hand and [larmdata] paw. The pleasure of its mating starts to get to you and you find yourself growing less concerned about that and even more and more turned on by it as the strange creature's myriad scents excite you. The idea of it changing you in random ways or siring almost anything inside you arouses you greatly. As you push back into its final thrusts, you both moan in pleasure as you feel its hot seed, thick and plentiful from its many balls being shot deep into your womb.";
			say "[randomimpreg]";
		else if anallevel > 1 and ( Cunt Count of Player is 0 or anallevel is 3 ) and a random chance of anallevel in 5 succeeds:
			say "     The hybrid creature pushes you down onto a nearby hospital bed, bending you over it. With a little fumbling with your remaining clothes, it gets itself lined up with your anal ring and mounts you with a throaty purr. The creature's [headdata] muzzle nips along your neck as it thrusts its [cockdata] cock into you again and again with increasing vigor. The chimera's heavy ballsack feels strange as it slaps against you again and again, quite full and heavy.";
			say "     You soon realize that it has at least four balls in there of various size, probably from a variety of creatures like the rest of its body. This leads you to the realization that the creature could contain almost any seed or strain of infection to alter you. You struggle for a moment, but the creature keeps you pinned with its clawed hand and [larmdata] paw. The pleasure of its mating starts to get to you and you find yourself growing less concerned about that and even more and more turned on by it as the strange creature's myriad scents excite you. The idea of it changing you in random ways ";
			if Player is mpreg_ok:
				say "or siring almost anything inside you ";
			say "arouses you greatly. As you push back into its final thrusts, you both moan in pleasure as you feel its hot seed, thick and plentiful from its many balls being shot deep into your bowels.";
			if Player is mpreg_ok, say "[randomimpreg]";
		else:
			say "     The hybrid creature, quite aroused by its workout and victory, pushes you to your knees before it. It presses its [Name entry] cock to your face and into your mouth. It moans softly and strokes your head, coaxing you to lick and suck it. Its arousing scent, such a strong and virile mix, excites you and you comply willingly enough. It starts to thrust into you, holding your head steady with its clawed hand and [larmdata] paw while pumping its 8 inch cock into your eager mouth. Its precum leaks onto your tongue, thick with an array of arousing flavors.";
			say "     You slide a hand up to fondle its large, sewn-together ballsack and find it very full and heavy. As you fondle it, you come to realize that the heavy sac contains at least four different balls of various sizes, probably from a variety of creatures like the rest of its body. You soon realize as well that this means it could carry almost any strain of the infection and change you in unpredictable ways. You struggle for a moment, but the creature keeps you pinned with its strong grip and soon its mix of precum has done its job, filling you with lust and hunger for the chimera's mix of seed. The idea starts to fill you with excitement even. You start to picture yourself changing in random ways while these creatures have their way with you again and again.";
			say "     You moan in delight at the creature growls in climax, pumping a hot, thick medley of cum into your mouth and down your throat. You swallow down as much as you can of its impressive load, then sag to the ground as it releases you. Sated for now, the mismatched hybrid wanders off, leaving you to the infection's changes.";
		weakrandominfect;
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			increase MonsterID by 1;
			choose row MonsterID from Table of Random Critters;


to say beatthemischim:
	if inasituation is true:
		say ""; [dealt with in the source event]
	else:
		[reset creature stats for next encounter]
		choose row MonsterID from the Table of Random Critters;
		now dex entry is 15; [ reset dexterity for random infection ]
		now lev entry is 6; [ reset level for random encounter availability ]
		say "     You manage to defeat the strange, hybrid creature, driving it off.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Mismatched Chimera"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The mismatched hybrid strikes you with its [larmdata] fist![or]The strange chimera wraps its mismatched arms around you and squeezes you with a powerful bearhug![or]The disturbing creature manages to bite your arm with its [headdata] head![or]The vicious creature slashes at you with its clawed right hand, leaving bloody gashes![or]The beast charges at you, swinging a volley of wild punches and slashes![or]The angry creature grabs your arm bites your shoulder with its [headdata] mouth![or]The fractured beast growls and kicks you with its [llegdata]![at random]";
	now defeated entry is "[beatthemischim]";
	now victory entry is "[losetomischim]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[mischimdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "canine, rabbit-eared head"; [ Face description, format as "Your face is (your text)."]
	now body entry is "feline in form with bony spines protruding from your back"; [ Body Description, format as "Your Body is (your text)."]
	now skin entry is "scales over your body and white fur over your arms and legs to cover your"; [ skin Description, format as "your body is covered in (your text) skin."]
	now tail entry is "You have a slimy, suckered, octopus tentacle for a tail."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "equine member with a knot at the base of your"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "it becomes that of a dog, but with long rabbit ears"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes that of a humanoid feline with saurian back spines"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "it is covered in green scales over your body, but long white fur over your limbs"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a wet appendage starts to grow from it, shaping itself into an octopod's tentacle. It wiggles around behind you, largely beyond your control"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes equine in shape, but with a vulpine knot at its base"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 15;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 15;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;
	now lev entry is 6; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 8; [Amount of Damage monster Does when attacking.]
	now area entry is "Hospital"; [ Location of monster, in this case the City Hospital]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 6; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 12;
	now Cunt Tightness entry is 5;
	now libido entry is 60; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mismatched[or]patchwork[at random]";
	now type entry is "mutant"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



when play ends:
	if bodyname of Player is "Mismatched Chimera":
		if humanity of Player < 10:
			say "     As your identity collapses, you are left with your fractured mind and instincts. Lacking any true focus to your instincts, you wander the city in a haze. You pass from one territory group to another, mating with the creatures there, but never transforming further, remaining a mismatched hodgepodge of creatures. Several try to keep you as a mate or prisoner, but you always escape eventually and move on. Your existence is aimless and with little conscious thought, but filled with sex of endless variety from all those you meet.";
			if "Sterile" is not listed in feats of Player and player is female:
				say "     Your womb gives birth of a wide array of hybrid children over the years. Some are taken and assimilated into other groups, but some go on to form new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life. You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			else if Player is male:
				say "     You sire a wide array of hybrid children over the years. Some are taken and assimilated into other groups, but some go on to form new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life. You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			else:
				say "     You watch time march on over the centuries, taking lovers from the various new species and races that continually form from the intermingling of the infected groups. They rise and fall around you, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life. You are one of the few constants in this ever-changing world and exist as an eternal witness to the variety of life until the end of time.";
		else:
			say "     After your rescue from the city, you are left aimless and take frequently to wandering the world for extended periods. Your altered, hybrid body makes you stand out always, but you can always seem to find companionship for a time, perhaps drawn in by the medley of pheromones you emit. You take on temporary dalliances of all kinds on these journeys, loving to experience the endless variety of lovers this world can provide to you. You are never changed by these lovers, no matter how infected or mindless these may be.";
			if "Sterile" is not listed in feats of Player and player is female:
				say "     Your womb gives birth to a wide array of hybrid children over the years. Some, you are pleased to see, give rise to new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life. Even as your old friends and allies pass on, you continue your eternal drifting across the globe. You are always drifting discreetly through the world in your search to experience the ever-changing array of life rising and falling on this planet. You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			else if Player is male:
				say "     You sire a wide array of hybrid children over the years. Some, you are pleased to see, give rise to new species in their own right, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life. Even as your old friends and allies pass on, you continue your eternal drifting across the globe. You are always drifting discreetly through the world in your search to experience the ever-changing array of life rising and falling on this planet. You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";
			else:
				say "     You watch time march on over the centuries, taking on new lovers wherever you go, enjoying their company for a time before leaving and continuing on. The various species and races of the infected groups rise and fall over time, adding to the variety of lovers for you to mate with over the centuries of your strangely unending life. Even as your old friends and allies pass on, you continue your eternal drifting across the globe. You are always drifting discreetly through the world in your search to experience the ever-changing array of life rising and falling on this planet. You are one of the few constants in this ever-changing world and exist as an eternal source for much of this new life which you bear witness to until the end of time.";

Mismatched Chimera ends here.
