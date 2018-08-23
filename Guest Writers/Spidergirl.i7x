Version 1 of Spidergirl by Guest Writers begins here.
[ Version 1.1 - Modified code, new monster victory oral and minor corrections/adjustments - Stripes ]
[- Originally Authored By: Tentacle Specialist -]

"Adds a Spidergirl to Flexible Survival's Wandering Monsters table, with impregnation chance."

Section 1 - Monster Responses

to say spidergirl attack:
	say "     [if HP of player > 0]The spidergirl does not accept your peaceful surrender and you[else]You[end if] are pinned to the ground by the spider's webbing, your struggles ineffectual! The creature slowly approaches you, a gleam of desire in her eight eyes...";
	[ We're going to choose what kind of scene to do, male-ish (player has a cock which is used) or female-ish (player has a cunt which is used) or neither. ]
	let spider_choice be "neither";
	if a random chance of 1 in 4 succeeds and player is not impreg_able:
		say "[spidergirl_oral]";
	if player is herm and a random chance of 1 in 2 succeeds:
		say "[spidergirl_male]";
	else if player is female:
		say "[spidergirl_female]";
	else if player is male:
		say "[spidergirl_male]";
	else:
		say "[spidergirl_neuter]";

to say spidergirl_oral:
	say "     She takes delight in binding you up slowly, making sure that you both know you're thoroughly caught and immobile. She suspends your bound body in the air and skitters around you, poking her prize with her many feet. After the amusement of this wears off, she climbs onto the cocoon of webs holding you and grinds her plated crotch against your face. You are forced to watch as the armor plates at her crotch slide aside, revealing the juicy pussy beneath them. But that's not all that is there, a thick, purple tendril cock squirming free and into your mouth.";
	say "     Restrained as you are, you have little choice but to let the creature use your mouth as a fuckhole while she chuckles darkly. The spider creature works her squirming shaft in and out of your mouth, drooling gooey precum onto your tongue. It has a strong taste that isn't unappealing, but is tasty either... and yet you can't stop yourself from sucking for more. You lick and suckle at it that pulsating rod, growing more aroused but unable to do anything to sate yourself. Finally you're rewarded by a goopy blast of spider cum so thick and sticky that it fills your mouth like a gluey mess. It's difficult to fully swallow the stuff down even after several attempts. As you're struggling to get it all down, the spidergirl climbs up the web strand and slices you free, dropping you the ground with a hard *thump*. You crawl away while she laughs, your mouth still dealing with the last of her thick seed.";

to say spidergirl_male:
	if cock length of player >= 8: [ male-ish scene; best scene ]
		say "     She tears off your clothes and gasps in delight as your large cock is exposed. Scrabbling forward, the spider positions herself above you; then you see the armor plates between her front legs sliding apart, revealing the soft folds of a very human-like pussy. She lowers herself, and the warm wetness touches your upraised cock...";
		say "     The softness engulfs your sensitive member, making you groan. The spider girl lets out a screech of pleasure and she begins to rock her torso; you can feel internal muscles massaging and teasing your shaft, pulling you deeply into the spider girl, until your shaft is completely surrounded by her quivering tunnel, able to take in even your massive length. The pleasure is intense, building quickly to a peak-your member tenses and suddenly jerks with orgasm. You can't help writhing in your bonds as you helplessly pump your seed into the spider girl's waiting womb. She purrs and gently rocks atop you, milking your organ until you're completely dry. Then she pulls off with a soft pop, and her sex disappears behind the armored plates again. Smiling, she turns and walks off into the shadows.";
		say "After a few minutes the webbing turns brittle, letting you free.";
	else: [ male-ish scene, small penis; oral ]
		if player is female: [ player also has pussy ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls and reaches out to play with your member. Her touches quickly bring your body to full arousal, but she still seems unsatisfied. Finally she leans down and slips your cock into her mouth.";
			say "     You can't help but groan as the arachnid female bobs her head, sucking relentlessly. Held fast by the webbing, you can do nothing but lay there and take it as her mouth teases you closer and closer to orgasm... Then she increases the stimulation by pushing a couple of fingers into your pussy! The spider girl moans around your cock, fingering and sucking you relentlessly. Finally you can take no more-you buck your hips and spray your cum into her mouth. She swallows the first spurt, then she pulls back and lets the rest decorate her face and tits. Smiling, she gives your cock one last kiss and rubs your pussy one more time, then she turns and scurries off. Your member is so swollen with attention, it even appears to be growing...";
		else: [ no pussy ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls and reaches out to play with your member. Her touches quickly bring your body to full arousal, but she still seems unsatisfied. Finally she leans down and slips your cock into her mouth.";
			say "     You can't help but groan as the arachnid female bobs her head, sucking relentlessly. She lets you slip from her mouth for a moment and nestles your organ between her breasts, cooing at you; then she resumes suckling the head of your shaft. Held fast by the webbing, you can do nothing but lay there and take it as her mouth teases you closer and closer to orgasm. Finally you buck your hips and spray your cum into her mouth-she swallows the first spurt, then she pulls back and lets the rest decorate her face and tits. Smiling, she gives your cock one last kiss, then she turns and scurries off. Your member is so swollen with attention, it even appears to be growing...";
		[ since penis was small, increase it ]
		increase cock length of player by 1;
		if a random chance of 1 in 2 succeeds:
			increase cock width of player by 1;

to say spidergirl_female:
	if cunt width of player >= 5: [ If player's vagina is large enough, oviposition ]
		say "     The creature tears off your clothes and her eyes wander over your helpless form. Then she steps forward and lowers herself toward your hips. You see the armor plates between her legs pull back and separate, revealing pink flesh. There appears to be a female slit there, but there's also a thick purple appendage... an appendage that swells and stretches forward toward your exposed sex. The spider's legs twitch and scrabble at the ground as she positions herself - and suddenly she thrusts into your pussy! The swollen organ pounds into you, stretching your cunt wide. The spider girl tosses her head and shrieks as she rocks her hips, driving powerfully into you, claiming you as you writhe helplessly in the webbing. Suddenly she gasps and jerks her body, her hands going to her breasts to squeeze them. The shaft inside you swells impossibly and then sprays hot fluid into you, filling your womb with it. The spider girl lets out a long, chittering purr, and she gives you a satisfied smile. The purple organ withdraws from your gaping pussy, bringing a gush of white seed from it.[ovichance]";
	else: [ Vagina too small ]
		if a random chance of 1 in 2 succeeds: [ random choice of two scenes ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls, examining your genitals closely. ";
			if player is male:
				say "Seeming uninterested in your male member, she pokes down below at your pussy lips, ";
			else:
				say "Leaning down, she strokes at your wet pussy lips, ";
			say "even extending her tongue to lick at them. Finally she steps up to place her hips against yours; you see the armored plates between her legs part, revealing both a feminine slit and a pulsing masculine organ. The purple shaft swells and stretches down toward you... but it swells far too wide for your pussy to accept! The huge cockhead shoves up against your entrance; the spider girl rocks her hips, jabbing between your legs, making you wince as she tries to mount you. Finally she growls in frustration and turns, stalking off into the city. Your exposed genitals are left stained with spider precum... it seems to be making them quiver and tingle, strange feelings rippling through them.";
			[ increase pussy size ]
			increase cunt width of player by 1;
			if a random chance of 1 in 2 succeeds:
				increase cunt length of player by 1;
		else: [ second female small-vagina scene ]
			say "     The spider girl tears off your clothes and stares at you. Then she growls, examining your genitals closely. ";
			if player is male:
				say "She positions your male member up and out of the way, focusing her attention on your pussy lips. ";
			say "Finally she steps up to place her hips against yours; you see the armored plates between her legs part, revealing both a feminine slit and a pulsing masculine organ. The purple shaft swells and stretches down toward you... swelling to an impossible thickness! Despite the mismatch, the spider girl jabs herself against you, making you whimper with pain as she tries to mount you. Finally she pushes hard... setting herself... and it pops in! Her shriek of delight mingles with your gasp of pain, but there's no stopping her now as she bucks her torso with abandon, pounding into your cunt. Warm fluid slops from her organ to lubricate her way, dulling the pain slightly, but it's still hard to take. Finally the spider girl lets out a screech and sprays your womb with her arachnid seed. After your tunnel is painted with her cum, she pulls out and sprays the rest over your helpless body. With a growl of satisfaction, the arachnid creature turns and walks off into the city.[ovichance]";
			increase cunt length of player by 1;
			increase cunt width of player by 1;

to say spidergirl_neuter:
	say "The spider creature pushes you down onto your back and strips off your clothes...then she gasps as she sees your sexless groin. Staring at you in astonishment, she hesitates for a moment. Then she leans down and starts to lick between your legs. The sensation is odd, but pleasant, and then you feel a tingling in your lower body. Without warning your flesh stretches upward, forming a small but definitely masculine organ. The spider girl coos happily and kisses your cock, then she flashes you a smile and turns to scuttle off.";
	now cocks of player is 1;
	now cock length of player is 2;
	now cock width of player is 3;

to say spidergirl defeat:
	say "The insectile creature lets out a whining cry and slumps to the ground, all eight of her legs going limp.";
	if player is male and cock length of player >= 8: [ If player has cock, spidergirl tempts them ]
		say " She looks up at you and blinks pitifully; then you see the armor plates between her front pair of legs slide apart, exposing the soft pink folds of a very human-like pussy.[line break]Do you give her what she wants?";
		if player consents:
			say "You can feel your cock swell mightily as the spider creature presents herself to you. You push her down onto her back, bringing a soft, somehow happy screech from her throat. The thick head of your shaft easily finds her entrance, and you plunge inward without delay, sinking deeply into the spider's tunnel. She shrieks and grabs at your shoulders, squirming beneath you; your lust is already taking you over, your body nestling against hers, your hips pounding against her lower body. The spider's inner warmth grabs and massages you with startling strength and skill; your turgid cock is groped and squeezed even as you shove as far into her cunt as you can--before your orgasm swells up and bursts into her, pumping the spider's pussy full of your hot cum. You groan and finally pull out of her; she lays there, exposed and used, her human skin sweaty and flushed and her cunny trickling fluid. Suddenly her skin and face redden, and she quickly gets to her feet and scurries off, looking almost shy.";
		else:
			if libido of player >= 50: [ Player can't resist if libido is high ]
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

Section 2 - Monster Insertion [ Huh huh, insertion ]

Table of random critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Spidergirl";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
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
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 10; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 8; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 12; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 6; [ Width of female sex infection will try and give you ]
	now libido entry is 25; [ Amount player Libido will go up if defeated ]
	now loot entry is "spider webbing";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strange[or]hybrid[or]mutated[at random]";
	now type entry is "[one of]arachnid[or]spider-person[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Spidergirl":
		if humanity of player < 10:
			say "Your predatory instincts take over and you scurry off into the ruins of the city, drinking the blood of other outcasts and forcing them to bear your eggs. It is a rough existence, but eventually you acquire a sort of 'harem' of lovers who enjoy the rough imprisonment you offer...";
		else:
			say "Your arachnid form proves perfect for exploring ruined buildings. You are immediately recruited into the armed forces, eventually rescuing hundreds of people from disasters, often lowering them from great heights on web ropes. On your off days you help out with construction projects, ultimately becoming known the world over as a hero.";

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
