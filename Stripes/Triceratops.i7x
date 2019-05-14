Version 1 of Triceratops by Stripes begins here.
[Version 1.1 - touch-ups]
[ Edit the above line, replace monster name with your monster's name, and your name with the name you'd like credited for the mod. ]
"Adds a Triceratops creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

[ Use To say for overlong behaviors that would make the table difficult to read and understand. Typically needed if there are a lot of cock/species/cunt checks. ]

when play begins:
	add { "Triceratops" } to infections of girl;
	add { "Triceratops" } to infections of furry;
	add { "Triceratops" } to infections of tailweapon;

to say tricdesc:
	setmongender 4; [creature is female]
	say "     Before you is a stunning dichotomy of anachronism! The female dinosaur woman, a triceratops with horns and a broad frill, is dressed as a disco maven. Her brown and green scaled body is only barely covered by the red disco dress she wears, exposing most of her bosom. It is made of smooth satin with rhinestones around bell-bottom-like wide ankles and pleated waves over her shoulders. The large afro behind her armored frill, the big sunglasses and high platform shoes complete the look. This double blast-from-the-past strikes a pose and strides to the beat, ready to mop the dance floor with you.";


to say losetotric:
	if dinonest is 1:
		now dnfightresult is 2;
	if Player is male and cockname of Player is "Triceratops":
		say "     Having exhausted your will to resist, you fall to your knees before her. She strides up to you and pushes you to lay back with one of her platform shoes. Her saurian paws run over your body, going for the triceratops cock she can smell enticing her. With a few strokes, she has you to full hardness, then slips herself out of her beautiful dress. She lowers herself down onto your cock, taking you in to her wide pussy with a loud moan of pleasure. She grips your shoulders and writhes atop you, moving her body to a beat that you can't quite hear. Your bodies move in time as her inner walls squeeze and tug at your cock in rhythm to her motions, exciting you further. Eventually, you can take no more and shoot your hot seed deep inside the beautiful female riding you. After panting to recover, she pulls herself up and off of you. She then grabs you and pulls you up, shoving you on your way. As you stagger off, she returns to dancing to that unheard beat.";
	else:
		say "     The dinosaur woman growls angrily and knocks you to the ground with a swipe of her heavy tail. She then strides overtop of you as she slides out of her disco dress. She reaches down and grabs your head roughly with one of her large, saurian hands, jamming it between her thighs. The scent of her wet pussy fills your nose and soon you are compelled to lick at it. As you lap at her dripping folds, she rocks her body with a quickening rhythm. Her hot juices flow out over your face as she cries out 'Ah yeah, baby!' in climax. Finished with you, she pushes you roughly away, slamming your head against the floor, making lights swirl in your eyes. When you come to, you are elsewhere, she is gone and you are left aroused and unsatisfied.";
		increase Libido of Player by 10;
		if Libido of Player > 100:
			now Libido of Player is 100;


to say beatthetric:
	if dinonest is 1:
		now dnfightresult is 1;
	if Player is male and Libido of Player > 24 and cockname of Player is "Triceratops":
		say "     After the struggle with the powerful female, you look down at her, feeling a stirring in your loins. It feels as if you haven't had sex in 65 million years and it's time to get funky! Your balls start to ache for it and soon you are atop her with a growl, lining up your shaft with her dripping pussy. She is quite aroused, excited by the rich scent of a mate to breed her, and has pulled open her dress, unveiling her scaled body for you.";
		follow the sex change rule;
		LineBreak;
		say "     You bury your [cock size desc of Player] saurian shaft into the funky lady, intent on showing her your moves now. She moans beneath you as you set the beat and drive your shaft into her again and again, having her moan the tempo. You tease her nipples as you dance the oldest dance with her. You can feel her inner walls squeeze and tug at your cock, while your hearts pound like base drums. In time, the passionate thump of your bodies against one another becomes too much and you drive deep inside her, shooting your hot load into her eager body, making her moan loudly and writhe beneath you. You both pant as you catch your breath, then kiss before parting, your mating dance over.";
		decrease Libido of Player by 25;
		if Libido of Player < 0:
			now Libido of Player is 0;
	else if Player is male and Libido of Player > 49:
		say "     The strong female falls to her knees, no longer able to keep fighting. With a moan, she runs her paws over her body and slides open her dress, exposing her large bosom to you.";
		say "     [bold type]She coos softly as she sways her body, tempting you to finish your dance with her.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if Player consents:
			LineBreak;
			say "     You stride over to her and pull out your cock, which has gotten quite hard as you watched her tease herself. She takes it in one paw and starts licking at it with her broad tongue. You let her suck on it a little before pulling back and guiding her to lay on her back. She slides out of the rest of her funky dress with a sensual wiggle, exposing her large, wet pussy for you.";
			say "     You line yourself up and sink down into her and start thrusting. You pound away at her, making her moan and wiggle beneath you. She moves to a beat that you can't hear and that you can't quite follow. Her inner walls squeeze and tug at your cock with her motions, coaxing a hot load of your cum from you after a good, long fuck. She moans in climax as well, but seems a little unsatisfied. But you are, so you leave the dinosaur to continue on your way.";
		else:
			LineBreak;
			say "     You leave the Cretaceous beauty and continue on your way.";
	else:
		say "     The strong female falls to her knees, no longer able to keep fighting. With a moan, she runs her paws over her body and slides open her dress. You can here her continue to moan with lustful desire, but you are already walking away.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Triceratops"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The powerful female, after a flourish of quick steps, strikes you with a heavily armored punch![or]The dinosaur strides towards you, stepping to an unheard beat. She slashes her claws across your arm, leaving bloody scrapes![or]The triceratops waves her arms to the sides as she swings her hips, then turns suddenly and bashes your side with her tail while flashing her ass at you![or]With a flourish of funkability, the dinosaur thrusts her large horns at you. You manage to grab them to save yourself from being gored, but are sent tumbling![or]The dinosaur does a dancing spin and strikes you square in the jaw with her platform shoes, filling your eyes with visions of goldfish for a moment![or]The triceratops charges suddenly at you. Unable to dodge in time, you try to grab her horns, but she drops and slides on her knees. One horn jabs into your side![or]The dinosaur woman manages to grab your head and headbutts your with her bony skull, crying 'Oh yeah, baby!' as she does![at random]";
	now defeated entry is "[beatthetric]";
	now victory entry is "[losetotric]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[tricdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "changed to have a jutting muzzle adorned with a large horn. Two other horns grow from your brow, facing forward. You have a broad, bony frill protruding from the back of your saurian head"; [ Face description, format as "Your face is (your text)."]
	now body entry is "strong and sturdy, but always itching to sway and dance to a beat you can't quite hear. Your hands and feet are clawed, saurian ones, but still nimble and graceful"; [ Body Description, format as "Your body is (your text)."]
	now skin entry is "a mix of brown and green scales adorn your"; [ skin Description, format as "your body is covered in (your text) skin."]
	now tail entry is "You have a thick, scaled tail which sways behind you like a metronome, making your hips sway with rhythm. Your ass is firmly toned, like a professional dancer's."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "ridged saurian"; [ Cock Description, format as you have a 'size' (your text) cock.]
	now face change entry is "it stretches forward into a large, pointed muzzle. A hard, bony horn grows atop your nose. A bony frill and another pair of horns grow onto your head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "becomes strong, yet flexible. Your hands and feet change, becoming clawed and saurian in shape, but still nimble and graceful"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "toughened scales spread across your body, richly green with soft brown accents in key spots"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a strong, saurian tail forms behind you, swaying rhythmically"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it grows sensual ridges and takes on an animalistic, saurian shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 14;
	now sta entry is 20;
	now per entry is 10;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 95;
	now lev entry is 7; [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking.]
	now area entry is "Museum"; [ Location of monster, in this case the High Rise District]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	now libido entry is 45; [ Set to zero in this monster to control elsewhere ]
	now loot entry is ""; [ Dropped item. Key will be used later ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]flexible[or]saurian[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "saurian"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
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
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
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
	if bodyname of Player is "Triceratops":
		if humanity of Player < 10:
			say "     You can feel a growing rhythm in your mind, almost like music. You start to follow that funky beat, drawing you through the city. As you travel, you spot a clothing store display and break into it, wanting the clothes on display. With your change in attire, you continue on, eventually coming to the museum, striding in with confidence. You snap your fingers and stride to the beat playing in your mind. Your platform shoes echo in the antechamber as you start to dance. The sphinx at the front desk watches you with an inscrutable expression, but it is not for her you are dancing. When the rhythm of your steps is matched by that of another, the female triceratops striding into the room from one of the museum halls, then your dance can begin in earnest with your partner.";
			say "     You stride meaningfully across the room towards her, stepping to the rhythm. She dances tantalizingly as you come over to her. With your arms around her, you both start to dance with energy, kissing and touching each other between the moves of your passionate mating dance[if Player is male]. Your funky, lime-green bellbottoms rock to the motion of your hips while your tail sways behind you. Half-open over your chest is a large-collared shirt, resplendent in colors and patterns to draw the female's eye and she is clearly pleased with your bright, vibrant plumage. You strike a pose, swaying your hips and pointing, indicating to head further into the museum. With a grin, she strides off, her shoes still tapping out the beat while you move in time after her, following her to her nest, soon to be the love nest of you both[else]. Resplendent in your lime-green wrap dress, you sway your hips and while your tail moves behind you. You have sets of hoop earrings that you've turned into golden rings to adorn your upper horns. You strike a pose and the other female moves up beside you, without exchanging a glance, you both dance and stride down the museum halls in search of dance partners so you may fill your shared nest with eggs[end if].";
		else:
			say "     After leaving military custody, you settle into a rather boring daytime life of office work. It fills your day and earns your money, but you have no passion for it. You continue like this for a time, until one evening you hear music faintly from the corner of your ear. You follow it, coming to a small club off the beaten path. You would have completely missed it had not someone exited at that moment to free the sound. You go in and are met with music, lights and sights that breath life into you, filling you with energy. Your style, always seeming outdated to the rest of the world, fits right in here. You stride out onto the flashing dance floor under the disco ball and take center stage, stealing the show with your moves and rhythm. Despite your altered appearance, your disco dancing breaks down all barriers and you are a star.";
			if Player is male: [MALE/HERM]
				say "     You dance with lady after lady that night, and every night after that, always having boundless energy to return every evening. The retro disco hall is your mating grounds and the women are always captivated by your dance, giving you countless lovers. When a few grow heavy and eventually bear eggs, despite not being saurian, you can only smile and dance all the more, filled with the dance of life.";
			else if "Sterile" is not listed in feats of Player: [F-BREEDABLE]
				say "     You dance with man after man that night, and every night after that, always having boundless energy to return every evening. The retro disco hall is your mating grounds and the guys are always captivated by your dance, giving your countless lovers. When you eventually grow heavy with eggs, you have to stop dancing for a time, but instead work the club and play with your many lovers between their sets.";
			else: [F-STERILE]
				say "     You dance with man after man that night, and every night after that, always having boundless energy to return every evening. The retro disco hall is your mating grounds and the guys are always captivated by your dance, giving your countless lovers.";

Triceratops ends here.
