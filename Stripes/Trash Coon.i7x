Version 1 of Trash Coon by Stripes begins here.

"Adds a Trash Coon creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

notrashcoonsex is a number that varies.

to say trashcoondesc:
	setmongender 4; [creature is female]
	choose row MonsterID from Table of Random Critters;
	if "Male Preferred" is listed in feats of Player:
		now sex entry is "Male";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Female";
	say "     As you wander along, a [one of]large dumpster opens up[or]mound of trash shifts[or]pile of garbage bags tumble over[at random], revealing a large, female raccoon underneath. Her nimble paws brush over one another as she stares at you with bright eyes within her dark mask. This large, scruffy raccoon woman has dirty fur and nothing else on to cover her heavy-set body. Her wide hips and ample breasts are plain to see, as is the wet pussy between her legs. She has a strong odor about her, a mix of arousal and trash from her recent dumpster diving.";

to say losetotrashcoon:
	now notrashcoonsex is 0;
	say "     The big coon laughs merrily as she grabs you and tosses you to the ground. She pulls out a bottle of dirty water from where she was rummaging around in the trash. As she strides back towards you, she fastidiously washes her paws with the water, then pushes you back down and brings her damp paws to your ";
	if Player is male:
		say "[if Cock Count of Player > 1]cocks, stroking and caressing them[else]cock, stroking and caressing it[end if] to get you hard. Her nimble paws move back and forth from your throbbing maleness to your balls[if Player is female] and cunt[sfn][end if]. After a little teasing, she decides you're ready for the main course and climbs atop you, bringing her wide hips and lowering her wet pussy to your face. As she plunges her muzzle down over your cock, licking and sucking vigorously, you moan and take in her strong scent and the strength of her arousal overwhelms you. You push your face up into her folds, licking and kissing at her dripping slit, making her chirr happily and suck harder in return. She grinds down into your face, soaking you in her juices as she licks and sucks at your cock[smn] while fondling [if Player is female]your puss[yfn][else]you[end if]. Her hot juices flow into your mouth and down your face. Eventually, it all becomes too much and you buck beneath her, pumping your hot seed down her throat. After her tasty treat, she raises her heavy body off of you and sends you on your way with a kiss.";
	else:
		say "puss[yfn], stroking over your sensitive folds to get you to moan. Her nimble fingers slip into you and begin to caress your clit[sfn] and inner walls. After a little teasing, she decides you're ready for the main course and climbs atop you, bringing her wide hips and lowering her wet pussy to your face. As she plunges her muzzle between your legs and starts licking your wet lips, you moan and take in her strong scent and the strength of her arousal overwhelms you. You push your face up into her folds, licking and kissing at her dripping slit, making her chirr happily and dive her tongue deeper into you. She grinds down into your face, soaking you in her juices as she licks and laps at your cunt[sfn] while fingering you. Her hot juices flow into your mouth and down your face. Eventually, it all becomes too much and you buck beneath her, grinding your puss[yfn] against her muzzle and cumming hard. After her tasty treat, she raises her heavy body off of you and sends you on your way with a kiss.";

to say beatthetrashcoon:
	let skipx be 0;
	if BodyName of Player is "Trash Coon" or FaceName of Player is "Trash Coon":
		now notrashcoonsex is 0;
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. Laying back against it, this gives you a lovely view of her pudgy raccoon body, awakening a lustful urge in you. Her aroused scent mixes with that of the trash, which also seems strangely enticing and you cannot help yourself. Tossing aside your gear, you pounce onto her bulky body and kiss her passionately. A little surprised by the kiss after the fight, she wraps her arms around you and welcomes the affection.";
	else if notrashcoonsex > 2:
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. As with the others of her kind, you take this opportunity to turn and head off, leaving her behind.";
	else if Libido of Player > a random number between 30 and 130:
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. Laying back against it, this gives you a lovely view of her pudgy raccoon body, awakening a lustful urge in you. Her aroused scent is heavy in the air, enticing you above the smell of the trash.";
		say "     [bold type]She is there for the taking, if you want her.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			now notrashcoonsex is 0;
			say "     Eying the horny coon, you decide to give in to your urges. Tossing aside your gear, you pounce onto her bulky body and kiss her passionately. A little surprised by the kiss after the fight, she wraps her arms around you and welcomes the affection.";
		else:
			LineBreak;
			say "     Resisting the urge to roll around in the trash with the lusty raccoon, you turn and head off, leaving her behind.";
			increase notrashcoonsex by 1;
			let skipx be 1;
	else:
		say "     The bulky coon stumbles back from the final blow and collapses atop the pile of trash she was rummaging through. Deciding to make use of this opportunity, you turn and head off, leaving her behind.";
		let skipx be 1;
	if Player is male and skipx is 0:
		say "     Your cock grows quite hard and throbs, soon slipping between her wet folds to dive into her needy pussy. She chirrs in pleasure as you penetrate her and start thrusting. With the cushion of her fat and the soft trash beneath her, you pound away vigorously, enjoying the soft sway of her body as you mate with her. You kiss one another repeatedly and your paws wander up to her bosom to grope her big breasts [if Breast Size of Player > 0]while she does the same to you[else]while her paws squeeze and pull at your ass with each thrust[end if]. Your tongues slide around inside each other's mouths as the pace quickens until finally you drive hard into her, pumping your hot [CockName of Player] semen into her and she orgasms powerfully in response. Her quivering pussy milks and squeezes at your cock, drawing out you cum until you collapse panting atop her. Spent now, you give her a final kiss before climbing off and heading on your way, leaving her to rest in the trash after the lustful mating.";
	else if Player is female and skipx is 0:
		say "     Your puss[yfn] grow[sfv] dripping wet and your clit[sfn] throb[sfv]. You bring a hand between her thighs, stroking and teasing her wet snatch. She chirrs in pleasure as you dive a trio of fingers into her start pumping, and she quickly returns the favor by rubbing your sensitive folds and slipping a few fingers into you. You kiss one another repeatedly while fingering one another. Your tongues slide around inside each other's mouths as the pace quickens until finally you are each pumping vigorously into the other as you orgasm powerfully in response. Your groins and hands are soaked in female cum as your pussies quiver and squeeze at the digits filling them until finally you collapse panting atop her softly padded body. Satisfied now, you give her a final kiss before climbing off and heading on your way, leaving her to rest in the trash after the lustful encounter.";
	else if skipx is 0:
		say "     Lacking much of a gender of your own, but still excited by the rotund female, you dive between her legs and start licking at her juicy cunt. Her strong scent and the taste of her juices is very exciting. You dive your tongue into her and rub her clit with your thumb, enjoying the chirring sounds of pleasure she's emitting. You work her to an eventual climax that is quite powerful and leaves your face soaked in her cum. You move atop her and give her a sticky kiss before climbing off and heading on your way, leaving her to rest in the trash after the lustful encounter.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Trash Coon" to infections of FurryList;
	add "Trash Coon" to infections of NatureList;
	add "Trash Coon" to infections of FemaleList;
	add "Trash Coon" to infections of TaperedCockList;
	add "Trash Coon" to infections of SheathedCockList;
	add "Trash Coon" to infections of BipedalList;
	add "Trash Coon" to infections of TailList;
	now Name entry is "Trash Coon"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The large coon punches you![or]The female raccoon twists your arm painfully![or]The horny raccoon woman takes you into a strong hug, burying your face in her bosom. Her strong smell makes you a little woozy![or]The big coon heaves you up and tosses you into a pile of junk![or]The female raccoon socks you one in the jaw![at random]"; [ Successful attack message ]
	now defeated entry is "[beatthetrashcoon]"; [ Text when monster loses. ]
	now victory entry is "[losetotrashcoon]"; [ Text when monster wins. ]
	now desc entry is "[trashcoondesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a scruffy looking raccoon. You have a raccoon's dark mask around your eyes and a perpetually dirty face. Your cute ears move and flick around, twitching at every sound";
	now body entry is "bulky and well-padded. Your hands have darker, nimble fingers ending in little, black claws";
	now skin entry is "scruffy gray fur which is darker across your back";
	now tail entry is "You have a fluffy raccoon tail growing from atop your wide hips. It is always a little dirty and the fur poorly groomed.";
	now cock entry is "[one of]raccoon[or]coon[at random]";
	now face change entry is "your mouth and nose elongate into a narrow, whiskered muzzle with a black nose at the end. A raccoon's dark mask forms around your eyes as your ears move up and reform into cute little cups";
	now body change entry is "you grow heavy, becoming soft and pudgy. This spreads down your arms and legs, terminating as your hands and feet become dark, nimble paws with little black claws at the end of your digits";
	now skin change entry is "scruffy gray fur spreads across your body";
	now ass change entry is "your hips grow wide and your ass becomes and plump and padded booty. There is a pulsing throb from your tailbone as it reshapes itself, growing out into an unkempt raccoon tail"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "it pulses and throbs. The air is filled with a strong, musky scent as your excitement grows until finally you moan loudly and cum hard, spurting your semen as your cock reshapes itself into that of a raccoon";
	now str entry is 15;
	now dex entry is 16;
	now sta entry is 13;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 40; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is "dirty water"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 13; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fat[or]pudgy[or]hefty[or]bulky[at random]";
	now type entry is "[one of]raccoon[or]coon-like[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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


when play ends:
	if BodyName of Player is "Trash Coon":
		if humanity of Player < 10:
			say "     As your human mind falters, it is filled with a longing for trash and scavenging. You find your way to the city mall and set up your home among the many dumpsters behind the food court. Several of the rats who live there become friends with you, though only a few are willing to have a romp with you in the messy trash, much preferring their clean stores and mall. They try to encourage you to come in and live with them, but you much prefer your messy home, though you'll go through the trouble of cleaning up (a little) to visit on occasion.";
		else:
			say "     You manage to maintain your sanity during your time in the city until rescue from the military arrives. You join the others in their holding area and have to wait through testing and processing. [if coonstatus > 0]While the pink raccoon is distracting the guards at night[else]During this time[end if], you do manage to slip away at night on occasion, drawn to the dumpsters behind the mess hall. You rummage around in them happily, unable to stop yourself. When you get caught one night by one of the mess officers, you are able to convince him to not call the MPs in exchange for a blow job. After that, he stops by every night during your nocturnal visits to enjoy another blow job. You are happy to see his balls and cock swelling and gaining gray fur after a few quickies with you. [if Player is female]And after a few nights, it's on to him fucking you roughly in the dumpster and his changes progress further[else]His changes continue to progress over the next week or so until finally there no hiding them[end if]. After that, there's another messy coon in the waiting area with you. He's not at all upset with this, enjoying the pleasures of his new form and joining you in sneaking off to the dumpsters at night.";
			if Player is female:
				say "     The cook remains with you and you get a house together, having rough, messy sex all over your home whenever you can. Soon enough, your belly grows full with kits and you have lots of scruffy coons running around the place. You are happy to stay home and raise them while your mate runs a greasy diner.";
			else:
				say "     You and the cook remain friends, roommates and occasional lovers to satisfy your lusts. That is, until you meet a big, sexy coon woman. After a few dates, she moves in with you and you have wild, messy sex with her all over your home. When you come home from work at the recycling facility one day, you find your roommate fucking your girlfriend. A loud fistfight ensues that reminds you of your fights back in the city, the three of you collapse into a heap and it devolves into a lustful threesome. From that point on, you have a messy [italic type]ménage a trois[roman type], filling her with litters of kits from both of you.";

Trash Coon ends here.
