Version 2 of Otter by Nuku Valente begins here.
[Version 2.2 - Rimming scene and More/Less Anal checks - Stripes]

"Adds a Otter to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

Otterdefeat is a number that varies.
Otterconsent is a number that varies.

[Summary of the dancing around the flags:
Anal play scenes will not occur if the player is set as Less Anal.
If guy is banned, the male interplay scenes are removed from the sex. Female scenes will instead be more likely (75% chance each).
If girl is banned, the female interplay scenes are removed from the sex. Male scenes will instead be more likely (75% chance each).
A male otter may ride the player's cock if guy is not banned, but the female is more common (75%) unless female is banned.
An otter (75% male/25% female unless banned) may rim the player if they're not receiving anal sex and if the player is set for More Anal.
If girl or guy is banned, direct reference to that gender is removed from combat.
If both guy and girl are banned, then they will show as normal during combat.
If both guy and girl is banned, a special case is reached, with a unique herm otter coming in for the sex.
If guy, girl and hermaphrodite are banned, the player will be punished.]

to say otterdesc:
	choose row MonsterID from Table of Random Critters;
	if "Female Preferred" is listed in feats of Player:
		now sex entry is "Female";
	else if "Herm Preferred" is listed in feats of Player:
		now sex entry is "Both";
	else:
		now sex entry is "Male";
	if guy is banned and girl is banned and hermaphrodite is banned:
		setmongender 19; [creatures are mixed/variable]
	else if guy is banned and girl is not banned:
		setmongender 14; [creatures are female]
	else if girl is banned and guy is not banned:
		setmongender 13; [creatures are male]
	else:
		setmongender 19; [creatures are mixed/variable]
	say "     Not one, but a group of playful looking otters. They spot you and move to intercept you swiftly, swimming all around you with their athletic forms rubbing amorously against your own. Your fingers can't help but brush against their aroused bodies in the rush before one grins at you, 'You want to play with us?'";

to say otterstrike:
	if guy is banned and girl is banned and hermaphrodite is banned:
		say "The otters, shocked by your banning of all genders, join hands in a circle around you and yell 'WTF!' This sonic attack is devastating, crushing your bones into jelly.";
		decrease the HP of Player by 1000;
	else if guy is banned and girl is not banned:
		say "[one of]An otter grabs you around the midsection, her pussy grinding against your hip as she hauls you underwater for a moment of panic.[or]An otter leaps from the water just to land on you, plunging you into the depths. You learn that it is as she as her slender breasts press against you even as you struggle for breath.[or]Two otters grab either of your hands and play tug o war with you, arguing over who gets to play first.[or]Even as you try to defend yourself, you feel something warm descend on your groin, lapping at you eagerly and unexpectedly. You squeak in surprise, but hands grab at you and pull you beneath the waves.[at random]";
	else if girl is banned and guy is not banned:
		say "[one of]An otter grabs you around the midsection, his long cock poking between your cheeks as he hauls you underwater for a moment of panic.[or]An otter leaps from the water just to land on you, plunging you into the depths. The eager male gropes and fondles your body even as you struggle for breath.[or]Two otters grab either of your hands and play tug o war with you, arguing over who gets to play first.[or]Even as you try to defend yourself, you feel something warm descend on your groin, lapping at you eagerly and unexpectedly. You squeak in surprise, but hands grab at you and pull you beneath the waves.[at random]";
	else:
		say "[one of]An otter grabs you around the midsection, his long cock poking between your cheeks as he hauls you underwater for a moment of panic.[or]An otter leaps from the water just to land on you, plunging you into the depths. You learn that it is as she as her slender breasts press against you even as you struggle for breath.[or]Two otters grab either of your hands and play tug o war with you, arguing over who gets to play first.[or]Even as you try to defend yourself, you feel something warm descend on your groin, lapping at you eagerly and unexpectedly. You squeak in surprise, but hands grab at you and pull you beneath the waves.[at random]";

to say Otter attack:
	if HP of Player > 0:
		say "     When you stop struggling, the otters squeal with joy, pressing in warmly from all directions and holding you in their loving, if lecherous, arms. You are passed from one otter to the next, sniffed at and licked across the face and chest along the way. Only when you've been passed to each in turn do they push you into the center, all smiling, and move to begin play in earnest.";
		now otterconsent is 1;
		WaitLineBreak;
	if guy is banned and girl is banned and hermaphrodite is banned:		[HUH! All banned! Madness!]
		say "     The otters, so confused that you're even here at all, collectively throw up their hands and leave. Floating like a boneless jellyfish, you eventually wash up on shore.";
		wait for any key;
	else if guy is banned and girl is banned:					[in herm only mode - special case]
		choose row MonsterID from the Table of Random Critters;
		now sex entry is "Both";
		say "     As the otters swim around you excitedly, they seem to sense something about you and back off as a group, letting a lone member of the raft move up to you. You notice immediately that this member is special, being both male and female in one. Around hir neck is a short pendant with pink and periwinkle colored scallop shells. Hir small bosom, dainty handfuls, seems perfect on hir swimmer's frame, letting hir move through the water with grace. Shi moves up to you, running hir paws across your chest as hir smooth body swims around you, examining you intently.";
		if ( player is puremale ) or ( player is male and a random chance of 1 in 2 succeeds ):
			say "     Shi runs hir paws down your body, taking your cock in hir webbed paws and starts deftly strokes your cock to get you hard. Hir soft touch gets you hard faster than any vigorous stroking ever has, your body responding to hir immediately. Shi seems to smile and cups your balls in one paw and you moan, feeling them grow heavy and churn with the need to release the seed you can feel filling them.";
			WaitLineBreak;
			say "     Sensing your readiness, shi presses hir chest to yours, rubbing her bosom and hard prick against you. But it is not hir cock that needs attention, but hir pussy, which shi brings into position over your shaft before sinking down onto it. Feeling hir pussy sliding over you, you can't help but moan loudly. With hir arms around your chest, shi starts riding your cock slowly, letting you enjoy every sensual moment.";
			WaitLineBreak;
			say "     The other otters around you help support you in the water, but don't interfere in any way, leaving you for what must be their leader and priestess. As you grow more in sync with the beautiful herm atop you, you become aware that must be what shi is. Your leader and holy figure. Shi must be divine to make you feel this wonderful.";
			WaitLineBreak;
			say "     You both continue your mating, kissing and nuzzling at one another as you grow more and more enraptured with hir. When your release finally comes, you blast your heavy load, emptying your overfilled balls into hir. Shi clenches hir pussy down firmly around you, keeping all of your cum inside, letting it fill hir with your heat even as a strange heat grows in your loins in response. When you are spent, shi eases hirself off of you and nibbles your ear lightly before swimming away.";
			WaitLineBreak;
		else:
			say "     Shi runs hir paws down your body, moving to your thighs and then between them to caress your pussy, deftly playing with your folds. Hir soft touch gets you wet and dripping juices into the water, your body responding to hir immediately. Shi seems to smile and slips a pair of fingers into you, making your body shiver in delight, feeling so good you have a quick orgasm that sends tingles up into your belly, warmth filling your womb.";
			WaitLineBreak;
			say "     Sensing your readiness, shi presses hir chest to yours, rubbing hir bosom and hard prick against you. You want to feel that cock in you so badly and shi happily obliges, bringing hir shaft into position before sinking it slowly into you. Feeling hir hard member sliding into you, you can't help but moan loudly. With hir arms around your chest, shi starts thrusting into you slowly, letting you enjoy every sensual moment.";
			WaitLineBreak;
			say "     The other otters around you help support you in the water, but don't interfere in any way, leaving you for what must be their leader and priestess. As you grow more in sync with the beautiful herm atop you, you become aware that must be watch shi is. Your leader and holy figure. Shi must be divine to make you feel this wonderful.";
			WaitLineBreak;
			say "     You both continue your mating, kissing and nuzzling at one another as you grow more and more enraptured with hir. When hir release finally comes, shi blasts hir heavy load into you, emptying hir potent seed into your womb. You moan and tremble as the heat of hir cum fills you, flowing out to warm your whole body as you are wracked with a series of powerful orgasms. The multiple orgasms leave you spent and panting in the water as shi eases hirself out of you. Shi nibbles your ear lightly before swimming away.[impregchance][impregchance]"; [2x chance impreg]
		say "     The other otters pull you to shore, leaving you to recover on the beach, still buzzing with a wicked afterglow. Shi said nothing, but you can feel shi wants you to join them and part of you longs to do it so you can be with hir again.";
		[drop 2d6 humanity due to the otter herm's power]
		decrease humanity of Player by a random number between 1 and 6;
		decrease humanity of Player by a random number between 1 and 6;
		if "Strong Psyche" is listed in feats of Player, increase humanity of Player by 2;
		if "Weak Psyche" is listed in feats of Player, decrease humanity of Player by 2;
		wait for any key;
		infect "Sea Otter"; [powerful, extra infection]
	else:
		if girl is banned:
			say "     As the otters swim around you excitedly, the females move off, sensing something about you. They instead swim on watch to prevent any interruption of your time with the male members of the raft.";
			WaitLineBreak;
		if guy is banned:
			say "     As the otters swim around you excitedly, the males move off, sensing something about you. They instead swim on watch to prevent any interruption of your time with the female members of the raft.";
			WaitLineBreak;
		if guy is not banned and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and girl is banned ) ) and anallevel > 1:
			say "     An otter swims up behind you and grabs you at the sides, pulling you back against a stiff shaft. He nuzzles into your left ear, then right, as he snuggles up against your back and works the pointed tip of his bestial member into your back door, slowly working it into your body as his friends bark and cheer their encouragement. He pulls you back firmly, sinking several inches more of himself into you, the pain giving way to nanite induced pleasure that echoes outwards from where he stretches you lustfully. His slick, throbbing cock feels increasingly pleasurable inside you, finally peaking when his hot semen floods your bowels.[mimpregchance]";
			WaitLineBreak;
		else if ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and girl is banned ) ) and anallevel is 3:
			let randomog be 1; [male]
			if guy is banned or ( girl is not banned and a random chance of 1 in 4 succeeds ), now randomog is 2; [female]
			say "     An otter swims up behind you and nuzzles at your rear, tickling at your bottom with [if randomog is 1]his[else]her[end if] whiskered face. [if randomog is 1]He[else]She[end if] nuzzles between your cheeks and starts licking at your pucker, making you squirm in response. Soon [if randomog is 1]his[else]her[end if] tongue's pressing past your anal ring and sliding into you through your back door. [if randomog is 1]His[else]Her[end if] webbed paws knead at your bottom as the playful lutrine licks your asshole, a sensation that grows increasingly pleasant as [if randomog is 1]he[else]she[end if] and the other otters play with you.";
		if guy is not banned and player is female and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and girl is banned ) ):
			say "     An otter nuzzles into your throat as he presses himself against your front for a moment. He grabs for your hips, then leans back, pressing his eager pointed tool against your nethers, easing it into you with a few sharp thrusts. He begins to piston against you like a machine, eyes closed and chest heaving with heavy gulps of air as he makes wild love. The rough loving is painful only for the first moment, giving way to erotic waves of tingling pleasure that run up and down your belly, centered on your ecstatic cunt, trembling tightly around the penetrating pole of that eager creature.";
			say "     The playful otter strokes his webbed paws across your hips as he thrusts into you before finally emptying his load into your trembling pussy. Sated, he moves back, only to be replaced by another. They continue to take turns with you, seeding you again and again.[impregchance]";
			WaitLineBreak;
		if a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and ( guy is banned or girl is banned ) ):
			if girl is not banned and ( a random chance of 3 in 4 succeeds or guy is banned ):
				say "     An otter suddenly clambers up on top of you, somehow avoiding plunging you into the waves as it settles down on your head and perches. It turns out to be a she, the heated scent of her aroused cunt close to your nose as she curls to look down at you from above, grinning";
			else if guy is not banned:
				say "     Soft pricks are felt as otter paws grab you and pull you down. Narrowly avoiding plunging you, an otter scales you and perches on your head with a happy bark, his balls draping over your face to obscure your vision for a moment before he laughs and moves a bit";
			say ". The otter on your head leans back a little, balancing quite well as they begin to pleasure themselves with throaty groans and loud barks, sharing in the pleasure of the moment.";
			WaitLineBreak;
		if Player is male and girl is not banned and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and guy is banned ) ):
			if Cock Length of Player > 12:
				say "     Too large for her to ride the traditional way, one of the females goes for the alternative, grabbing at your huge length and grinding her entire front along it, stroking it with her slender breasts and thick waterproofed hide. Her arms warp around it as she works you closer to climax.";
				if Cock Count of Player > 1:
					say "     Not to let your other organs go to waste, her tail snags around another, loosely stroking at it in time with her energetic body massage against your primary dick, coaxing you towards a wild release.";
				WaitLineBreak;
			else:
				say "     A sleek female otter moves up against you, grabbing for your [cock of Player] dick and squeezing lightly as she looks into your eyes. She slips in closer, guiding your cock into her needy sex, sinking wetly into the snug passage as she presses her groin down to consume it entirely. She thrusts in rapid little motions that thrashes the water with bubbles swirling around you in the motions. Strange warmth builds in your cock as it plunges deeper and deeper into her willing passage, pleasure building in your body in the motions.";
				if Cock Count of Player > 1:
					say "     Noticing you have extra male meat, another female swims up, one to a cock. It becomes quite crowded as they all press in tight to work your cocks deep into their sopping wet cunts, but they seem up for the challenge as they pile in together to work at you and bleed you of every drop of cum you can produce.";
				WaitLineBreak;
		else if Player is male and guy is not banned and ( a random chance of 1 in 2 succeeds or ( a random chance of 1 in 2 succeeds and girl is banned ) ) and anallevel > 1:
			say "     You can feel the soft, webbed paws of one of the otter's on your cock and you glance down to see a slender, young male grabbing and stroking your cock. He seems to almost grin as he nuzzles his softly-furred face against it";
			if Cock Length of Player > 12:
				say ". Too large for him to take, he continues to work his paws over your big cock. His digits move to fondle your balls as well as he worships your impressive member. His brown eyes are locked on it, staring at it lustfully";
				if Cock Count of Player > 1:
					say ". Not to let your other organs go to waste, his upper body rubs against them, sliding his waterproof fur across them while lavishing attention on the one in his paws. This energetic body massage to your cocks gets you really worked up, coaxing you towards a wild release.";
				else:
					say ".";
				WaitLineBreak;
			else:
				say ". After worshipping your cock and gotten you quite hard and eager, the male slides his body across yours, running his waterproof fur across your chest. The eager fellow slides his tail across your legs and presses down onto your shaft, taking it into his rear easily. He grinds and wriggles atop it, making your cock throb with need. A strange warmth builds in your cock as it plunges hard and fast into the otter male's rump, pleasure building in your body in the motion of the otters around you.";
				if Cock Count of Player > 1:
					if girl is not banned:
						say "     Not to be left out, the females swim up, intent on your extra male meat. The flexible otters wriggle into position, the females taking turns with your additional maleness. The feel of their pussies around your cock is different from the male riding your cock, but both are equally enjoyable in their own ways.";
					else:
						say "     Noticing you have extra male meat, another male swims up, one to a cock. It becomes quite crowded as they all press in tight to work your cocks deep into their tight rears, but they seem up for the challenge as they pile in together to work at you and bleed you of every drop of cum you can produce.";
				WaitLineBreak;
		say "     Time is lost as the otters have their way with you. Frantic acts of filling and being filled eventually spill over to all members of the raft have their turn reaching their complete satisfaction, taking you along for the ride. By the time it is over, you are soaked in sweat and several other fluids, and are left on the sandy beach to recover, sore, but still buzzing with a wicked afterglow.";
		wait for any key;

[ [Otter loss] ]
To say Otter loss:
	say "     Defeated, the group of otters backs away from you with sad expressions. '[one of]We just wanted to play.'[or]Don't be so stuck up. We could have so much fun together!'[or]Come back when you change your mind, we'll save you some fish!'[at random]";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Sea Otter"; [Name of your new Monster]
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[otterstrike]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Otter loss]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[Otter attack]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[otterdesc]"; [ Description of the creature when you encounter it.]
	now face entry is "blunt nose of an otter, with small round ears set over your cute face"; [ Face description, format as "Your face is (your text)."]
	now body entry is "sleek and athletic. Almost androgynous in a way, with the curves subsumed in the trim musculature of a born swimmer. Your hands and feet are webbed with flaps of skins between fingers and toes that are quite ticklish when touched by another"; [ Body Description, format as "Your Body is (your text)"]
	now skin entry is "[one of]sleek pelted[or]smooth furred[or]waterproofed[at random]"; [ skin Description, format as "You have (your text) skin"]
	now tail entry is "You have a thick rudder of a tail, [skin of Player] and swaying lightly behind you. It could help a lot while swimming."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "otter"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your face reforms as you gain a short otterish snout and round [skin of Player] ears"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "you get the urge to stretch, reaching for the heavens as your body becomes slimmer and more streamlined. Your outspread fingers tickle fiercely as new flesh grows between each of them and short sharp claws sprout. Below, your feet become animal like paws, lifting partially from the ground even as your toes gain that same sensitive webbing"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "an oily sensation runs across your entire body, followed shortly by a dense layer of waterproof fur that coats your body perfectly"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "a thick limb bursts from your back end, forcing you to lean back for a moment as [skin of Player] flesh covers it. You peek over your shoulder to see it slowly swaying, your sense of balance returning"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it tingles and quivers with renewed lust. The shaft turns a soft pink color as it develops bumps not seen on human members, oozing softly with excitement"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 16;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 16;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 70;
	now lev entry is 10; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 17; [Amount of Damage monster Does when attacking.]
	now area entry is "Beach"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 2; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Length entry is 8; [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 60; [ Amount player Libido will go up if defeated ]
	now loot entry is "Tasty Fish";
	now lootchance entry is 25; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]athletic[at random]";
	now type entry is "[one of]otter[or]lutrine[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
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



Table of Game Objects (continued)
name	desc	weight	object
"Tasty Fish"	"A fish. It could be a big fish or a small fish, but it has scales on it. A sniff of it oddly reminds you of otters."	1	Tasty Fish

Tasty Fish is a grab object.

Tasty Fish is infectious. The strain of Tasty Fish is "Sea Otter".
usedesc of Tasty Fish is "[Fish]".
The purified of Tasty Fish is "food".

To say Tasty Fish:
	decrease hunger of Player by 15;
	if hunger of Player < 0, now hunger of Player is 0;

instead of sniffing Tasty Fish:
	say "It smells like a fish, somehow still fresh if a little odd... strangely reminding you of otters.";


when play ends:
	if bodyname of Player is "Sea Otter":
		if humanity of Player < 10:
			if Otterconsent is 1:
				say "     You return to the raft of otters that dominates your thoughts, throwing yourself into the water and swimming out into their eager grasps. Without further worry for the world, you live with them, fucking, being fucked, hunting for tasty fishes and clams. You find you have little complaint over your new, simple life.";
			else:
				say "     You feel an overwhelming desire to enter water, but try to resist against it. You end up at the mall, shivering and cold. The rats take you inside, and feed you, but as soon as you spot their fountain, you dive in. You become something of a permanent fixture there, but they don't really seem to mind your presence. You become a sort of mascot for them, not to mention a desperation date whenever a rat is feeling particularly lonely.";
		else:
			if Otterconsent is 1:
				say "     As the rescue arrives, you direct the military back out to the beach. With eager waves, you coax your friends up and all get rescued together, despite some initial misgivings by your raft mates. In time, the otters grow accustomed to civilized living, mostly, working as life guards for a wide strip of beach. After hours, you fill the waves with the sounds of lust and love.";
			else:
				say "     You are taken back to civilization, but find that, as an otter, you have a base need to be around water. You secure a job working at a city pool, where your aquatic skills come in handy, for rescues and training. You become a swim instructor for the city and remain so for the rest of your days, eagerly pressing your smooth form through the water.";

Otter ends here.
