Version 1 of Spidergirl by Guest Writers begins here.
[ Version 1.1 - Modified code, new monster victory oral and minor corrections/adjustments - Stripes ]
[- Originally Authored By: Tentacle Specialist -]

"Adds a Spidergirl to Flexible Survival's Wandering Monsters table, with impreg chance."

Section 1 - Creature Responses

to say spidergirl attack:
	say "     [if HP of Player > 0]The spidergirl does not accept your peaceful surrender and you[else]You[end if] are pinned to the ground by the spider's webbing, your struggles ineffectual! The creature slowly approaches you, a gleam of desire in her eight eyes...";
	[ We're going to choose what kind of scene to do, male-ish (player has a cock which is used) or female-ish (player has a cunt which is used) or neither. ]
	let spider_choice be "neither";
	if a random chance of 1 in 4 succeeds and player is not impreg_able:
		say "[spidergirl_oral]";
	if Player is herm and a random chance of 1 in 2 succeeds:
		say "[spidergirl_male]";
	else if Player is female:
		say "[spidergirl_female]";
	else if Player is male:
		say "[spidergirl_male]";
	else:
		say "[spidergirl_neuter]";

to say spidergirl_oral:
	say "     She takes delight in binding you up slowly, making sure that you both know you're thoroughly caught and immobile. She suspends your bound body in the air and skitters around you, poking her prize with her many feet. After the amusement of this wears off, she climbs onto the cocoon of webs holding you and grinds her plated crotch against your face. You are forced to watch as the armor plates at her crotch slide aside, revealing the juicy pussy beneath them. But that's not all that is there, a thick, purple tendril cock squirming free and into your mouth.";
	say "     Restrained as you are, you have little choice but to let the creature use your mouth as a fuckhole while she chuckles darkly. The spider creature works her squirming shaft in and out of your mouth, drooling gooey precum onto your tongue. It has a strong taste that isn't unappealing, but is tasty either... and yet you can't stop yourself from sucking for more. You lick and suckle at it that pulsating rod, growing more aroused but unable to do anything to sate yourself. Finally you're rewarded by a goopy blast of spider cum so thick and sticky that it fills your mouth like a gluey mess. It's difficult to fully swallow the stuff down even after several attempts. As you're struggling to get it all down, the spidergirl climbs up the web strand and slices you free, dropping you the ground with a hard *thump*. You crawl away while she laughs, your mouth still dealing with the last of her thick seed.";

to say spidergirl_male:
	if Cock Length of Player >= 8: [ male-ish scene; best scene ]
		say "     She tears off your clothes and gasps in delight as your large cock is exposed. Scrabbling forward, the spider positions herself above you; then you see the armor plates between her front legs sliding apart, revealing the soft folds of a very human-like pussy. She lowers herself, and the warm wetness touches your upraised cock...";
		say "     The softness engulfs your sensitive member, making you groan. The spider girl lets out a screech of pleasure and she begins to rock her torso; you can feel internal muscles massaging and teasing your shaft, pulling you deeply into the spider girl, until your shaft is completely surrounded by her quivering tunnel, able to take in even your massive length. The pleasure is intense, building quickly to a peak-your member tenses and suddenly jerks with orgasm. You can't help writhing in your bonds as you helplessly pump your seed into the spider girl's waiting womb. She purrs and gently rocks atop you, milking your organ until you're completely dry. Then she pulls off with a soft pop, and her sex disappears behind the armored plates again. Smiling, she turns and walks off into the shadows.";
		say "After a few minutes the webbing turns brittle, letting you free.";
	else: [ male-ish scene, small penis; oral ]
		if Player is female: [ player also has pussy ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls and reaches out to play with your member. Her touches quickly bring your body to full arousal, but she still seems unsatisfied. Finally she leans down and slips your cock into her mouth.";
			say "     You can't help but groan as the arachnid female bobs her head, sucking relentlessly. Held fast by the webbing, you can do nothing but lay there and take it as her mouth teases you closer and closer to orgasm... Then she increases the stimulation by pushing a couple of fingers into your pussy! The spider girl moans around your cock, fingering and sucking you relentlessly. Finally you can take no more-you buck your hips and spray your cum into her mouth. She swallows the first spurt, then she pulls back and lets the rest decorate her face and tits. Smiling, she gives your cock one last kiss and rubs your pussy one more time, then she turns and scurries off. Your member is so swollen with attention, it even appears to be growing...";
		else: [ no pussy ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls and reaches out to play with your member. Her touches quickly bring your body to full arousal, but she still seems unsatisfied. Finally she leans down and slips your cock into her mouth.";
			say "     You can't help but groan as the arachnid female bobs her head, sucking relentlessly. She lets you slip from her mouth for a moment and nestles your organ between her breasts, cooing at you; then she resumes suckling the head of your shaft. Held fast by the webbing, you can do nothing but lay there and take it as her mouth teases you closer and closer to orgasm. Finally you buck your hips and spray your cum into her mouth-she swallows the first spurt, then she pulls back and lets the rest decorate her face and tits. Smiling, she gives your cock one last kiss, then she turns and scurries off. Your member is so swollen with attention, it even appears to be growing...";
		[ since penis was small, increase it ]
		increase Cock Length of Player by 1;
		if a random chance of 1 in 2 succeeds:
			increase Ball Size of Player by 1;

to say spidergirl_female:
	if Cunt Tightness of Player >= 5: [ if Player's vagina is large enough, oviposition ]
		say "     The creature tears off your clothes and her eyes wander over your helpless form. Then she steps forward and lowers herself toward your hips. You see the armor plates between her legs pull back and separate, revealing pink flesh. There appears to be a female slit there, but there's also a thick purple appendage... an appendage that swells and stretches forward toward your exposed sex. The spider's legs twitch and scrabble at the ground as she positions herself - and suddenly she thrusts into your pussy! The swollen organ pounds into you, stretching your cunt wide. The spider girl tosses her head and shrieks as she rocks her hips, driving powerfully into you, claiming you as you writhe helplessly in the webbing. Suddenly she gasps and jerks her body, her hands going to her breasts to squeeze them. The shaft inside you swells impossibly and then sprays hot fluid into you, filling your womb with it. The spider girl lets out a long, chittering purr, and she gives you a satisfied smile. The purple organ withdraws from your gaping pussy, bringing a gush of white seed from it.[ovichance]";
	else: [ Vagina too small ]
		if a random chance of 1 in 2 succeeds: [ random choice of two scenes ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls, examining your genitals closely. ";
			if Player is male:
				say "Seeming uninterested in your male member, she pokes down below at your pussy lips, ";
			else:
				say "Leaning down, she strokes at your wet pussy lips, ";
			say "even extending her tongue to lick at them. Finally she steps up to place her hips against yours; you see the armored plates between her legs part, revealing both a feminine slit and a pulsing masculine organ. The purple shaft swells and stretches down toward you... but it swells far too wide for your pussy to accept! The huge cockhead shoves up against your entrance; the spider girl rocks her hips, jabbing between your legs, making you wince as she tries to mount you. Finally she growls in frustration and turns, stalking off into the city. Your exposed genitals are left stained with spider precum... it seems to be making them quiver and tingle, strange feelings rippling through them.";
			[ increase pussy size ]
			increase Cunt Tightness of Player by 1;
			if a random chance of 1 in 2 succeeds:
				increase Cunt Depth of Player by 1;
		else: [ second female small-vagina scene ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls, examining your genitals closely. ";
			if Player is male:
				say "She positions your male member up and out of the way, focusing her attention on your pussy lips. ";
			say "Finally she steps up to place her hips against yours; you see the armored plates between her legs part, revealing both a feminine slit and a pulsing masculine organ. The purple shaft swells and stretches down toward you... swelling to an impossible thickness! Despite the mismatch, the spider girl jabs herself against you, making you whimper with pain as she tries to mount you. Finally she pushes hard... setting herself... and it pops in! Her shriek of delight mingles with your gasp of pain, but there's no stopping her now as she bucks her torso with abandon, pounding into your cunt. Warm fluid slops from her organ to lubricate her way, dulling the pain slightly, but it's still hard to take. Finally the spider girl lets out a screech and sprays your womb with her arachnid seed. After your tunnel is painted with her cum, she pulls out and sprays the rest over your helpless body. With a growl of satisfaction, the arachnid creature turns and walks off into the city.[ovichance]";
			increase Cunt Depth of Player by 1;
			increase Cunt Tightness of Player by 1;

to say spidergirl_neuter:
	say "The spider creature pushes you down onto your back and strips off your clothes... then she gasps as she sees your sexless groin. Staring at you in astonishment, she hesitates for a moment. Then she leans down and starts to lick between your legs. The sensation is odd, but pleasant, and then you feel a tingling in your lower body. Without warning your flesh stretches upward, forming a small but definitely masculine organ. The spider girl coos happily and kisses your cock, then she flashes you a smile and turns to scuttle off.";
	now Cock Count of Player is 1;
	now Cock Length of Player is 2;
	now Ball Size of Player is 3;

to say spidergirl defeat:
	say "The insectile creature lets out a whining cry and slumps to the ground, all eight of her legs going limp.";
	if Player is male and Cock Length of Player >= 8: [ if Player has cock, spidergirl tempts them ]
		say " She looks up at you and blinks pitifully; then you see the armor plates between her front pair of legs slide apart, exposing the soft pink folds of a very human-like pussy.[line break]Do you give her what she wants?";
		if Player consents:
			say "You can feel your cock swell mightily as the spider creature presents herself to you. You push her down onto her back, bringing a soft, somehow happy screech from her throat. The thick head of your shaft easily finds her entrance, and you plunge inward without delay, sinking deeply into the spider's tunnel. She shrieks and grabs at your shoulders, squirming beneath you; your lust is already taking you over, your body nestling against hers, your hips pounding against her lower body. The spider's inner warmth grabs and massages you with startling strength and skill; your turgid cock is groped and squeezed even as you shove as far into her cunt as you can - before your orgasm swells up and bursts into her, pumping the spider's pussy full of your hot cum. You groan and finally pull out of her; she lays there, exposed and used, her human skin sweaty and flushed and her cunny trickling fluid. Suddenly her skin and face redden, and she quickly gets to her feet and scurries off, looking almost shy.";
		else:
			if Libido of Player >= 50: [ Player can't resist if libido is high ]
				say "You can feel your heart pound and your cock swell mightily as the spider creature presents herself to you. It's no use, you can't contain your lustful feelings. You push the spider girl down onto her back, bringing a soft, somehow happy screech from her throat. The thick head of your shaft easily finds her entrance, and you plunge inward without delay, sinking deeply into the spider's tunnel. She shrieks and grabs at your shoulders, squirming beneath you; you pound against her eagerly, rocking her body. Her inner warmth grabs and massages you with startling strength and skill; your turgid cock is groped and squeezed even as you shove as far into her cunt as you can-before your orgasm swells up and bursts into her, pumping the spider's pussy full of your heat. You groan and finally pull out of her, squirting the last of your cum over her heaving breasts, decorating her obscenely. The spider girl reddens, whimpering under your gaze; finally she gets to her feet, hunched over submissively, and she slowly scurries off into the shadows.";
			else:
				say "You are able to control your urges, and you turn away. You can hear the spider girl scrabble to her feet and scuttle off, whimpering.";
	else: [ Penis not big enough ]
		say " After a few moments she drags herself to her feet and scuttles off, whimpering.";
	if bradfordBountyNum is 6:
		if bradfordbounty > 0:
			LineBreak;
			decrease bradfordbounty by 1;
			say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
		else:
			say "     This encounter reminds you of your deal with bounty hunter, Bradford. You should go see him about getting your share of the reward.";

Section 2 - Creature Insertion [ Huh huh, insertion ]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Spidergirl" to infections of HybridList;
	add "Spidergirl" to infections of FurryList;
	add "Spidergirl" to infections of MythologicalList;
	add "Spidergirl" to infections of FemaleList;
	add "Spidergirl" to infections of InternalCockList;
	add "Spidergirl" to infections of OctapedalList;
	now Name entry is "Spidergirl";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[mongendernum 5][one of]She skitters up the wall and over the ceiling. As you try to follow, she sprays webbing down onto you![or]She leaps to one side and turns her abdomen to face you, and sticky strands spray over your form![or]She suddenly charges and knocks you down with the weight of her body, then she stands over you and sprays webbing over your prone form![at random]";
	now defeated entry is "[spidergirl defeat]";
	now victory entry is "[spidergirl attack]";
	now desc entry is "A hybrid of human and arachnid. From the waist up, the picture of a voluptuous woman, with smooth skin and heavy breasts topped with delicate pink nipples; she also has eight luminous [one of]violet[or]green[or]orange[or]magenta[at random] pupil-less eyes blinking from behind her [one of]short gray[or]long golden[or]raven-black[at random] hair. Down below she is a giant spider, with eight hairy, twitching legs and an abdomen armored with [one of]dull brown[or]shiny black[or]black and red[at random] chitin. At the tip of her abdomen can be seen an opening with spinnerets, and between the front pair of legs a set of armor plates look like they might be hiding something...";
	now face entry is "multi-eyed, but otherwise human";
	now body entry is "curved and feminine from the waist up, but your legs have been replaced with the abdomen of a great spider, twitching with hairy legs";
	now skin entry is "[one of]shiny black[or]dull brown[or]black and red[at random] chitin-armored";
	now tail entry is "Nestled in your backside are several spinnerets, ready to spin a web at a moment's notice.";
	now cock entry is "armor-protected";
	now face change entry is "swellings grow on your head, suddenly bursting open into new eyes, expanding your field of vision";
	now body change entry is "you fall to the ground, your lower torso flowing and bulging with great creaks and pops, swelling into a bulging abdomen. It sprouts chitinous armor and then eight legs, raising you up off the ground again to stand like a spider";
	now skin change entry is "it roughens and sprouts black armored plates, though much of your skin turns smoothly human";
	now ass change entry is "intricate glands swell within it, developing into spinnerets; you can even feel a bit of webbing ready to be spun";
	now cock change entry is "it shifts and lengthens, the base roughening and sprouting black plates of armor that reach up to conceal and cover it";
	now str entry is 12;
	now dex entry is 16; [ Lots of legs! ]
	now sta entry is 12;
	now per entry is 18; [ Lots of eyes! ]
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Both"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 35;
	now lev entry is 4; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [Amount of Damage monster Does when attacking.]
	now area entry is "Mall"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 8; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 25; [ Amount player Libido will go up if defeated ]
	now loot entry is "spider webbing";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strange[or]hybrid[or]mutated[at random]";
	now type entry is "[one of]arachnid[or]spider-person[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
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
]



when play ends:
	if BodyName of Player is "Spidergirl":
		if humanity of Player < 10:
			say "     Your predatory instincts take over and you scurry off into the ruins of the city, drinking the blood of other outcasts and forcing them to bear your eggs. It is a rough existence, but eventually you acquire a sort of 'harem' of lovers who enjoy the rough imprisonment you offer...";
		else:
			say "     Your arachnid form proves perfect for exploring ruined buildings. You are immediately recruited into the armed forces, eventually rescuing hundreds of people from disasters, often lowering them from great heights on web ropes. On your off days you help out with construction projects, ultimately becoming known the world over as a hero.";

Table of Game Objects (continued)
name	desc	weight	object
"spider webbing"	"A swatch of tough spider webbing. It seems pretty sticky."	1	spider webbing

instead of sniffing spider webbing:
	say "The spider webbing has a faintly enticing scent.";

spider webbing is a grab object.
the usedesc of spider webbing is "[spider webbing use]";

to say spider webbing use:
	say "You pull and tug at the spider webbing. It's surprisingly tough! But it's also quite sticky. You try to clean it off, but eventually it just seems to melt into your skin...";

spider webbing is infectious. The strain of spider webbing is "Spidergirl".

Spidergirl ends here.
