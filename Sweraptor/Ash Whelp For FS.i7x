Version 2 of Ash Whelp For FS by Sweraptor begins here.
[ Version 2.1 - Demoted to lvl 2]
"Adds an Ash Whelp to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Ash Whelps serve as a pathetic and annoying early warning system for the Ash brood. Only dangerous to weakened or new adventurers losing to these annoying mites is truly pathetic.]

Section 1 - Monster Responses

whelpdefeat is a number that varies.
to say whelp attack:
	if whelpdefeat is 0:
		say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock emerges from its sheath. The Ash Whelp flutters down towards you, coming to rest on your heaving chest. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. After a few inexperienced thrusts the whelp finally shoves his dick in your mouth. With eager abandon he happily begins thrusting forward. Accepting this will be over faster with your assistance you wrap your tongue around the unnaturally warm prick and begin to suck. The whelpling squeals in delight as you work his shaft with your tongue and his tail wags happily. The cock tastes like dirt, but you do not have to endure the humiliation of the whelp's eager thrusts much longer. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis[']s undercarriage. Throwing his head back and letting out a pathetic, yet triumphant roar, he floods your mouth with a little warm seed. Soon afterwards he scampers away and takes to the air in search of food.";
		 now whelpdefeat is 1;
	otherwise:
		if a random chance of 2 in 3 succeeds: [ Prefer male action]
			if cunts of player > 0:
				if cunt length of player is less than 15 or cunt width of player is less than 15:
					say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The whelp flutters down to your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. Tired and beaten you can do nothing as your legs are forced apart and he eagerly begins thrusting forward, searching for your [cunt size desc of player] pussy. Finding his mark, you can only groan helplessly as he squeals victoriously, thrusting with abandon into your snatch. Despite his small size, his tempo and warmth slowly turn your experience into a positive one. You wrap your legs around the little brute in a final act of submission as he picks up the pace. After a short ten minutes you find yourself gasping and moaning as the whelp comes to an early climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Nipping you possessively he sinks as deep as his smaller than average prick will allow and lets forth a few quick bursts of unusually warm semen into your belly. Exhausted and thoroughly beaten you can only mewl as he pulls out out quickly and takes to the air.[impregchance]";
				otherwise:
					say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The Whelp flutters down your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. Tired and beaten you can do nothing as your legs are forced apart and he eagerly begins thrusting forward, searching for your [cunt size desc of player] cunt. He quickly finds your waiting tunnel and easily slips his dick inside. Sadly his small shaft is so well accommodated by your plush folds that you hardly feel anything at all except the quick clumsy thrusts of his body, and the annoying squeals. After an agonizingly long twenty minutes of him working on your cunt he finally approaches his climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Throwing his head back he squeals his victory. The glowing shaft throbs in your depths and your inner walls are splattered with the whelps mildly glowing seed. The whelp quickly pulls free and flapping his baby dragon wings takes to the air in search of safety and easy prey.[impregchance]";
			otherwise:
				say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The whelp flutters down your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. The young whelp begins to thrust forward searching for a cunt. However, due to his clumsy inexperience the whelp immediately finds a different hole. Too stupid to tell the difference he chitters delightedly and begins thrusting into your anus. You can only grimace and growl as the whelp takes pleasure from your body while his own small shaft shares little. Lying back you close your eyes and concentrate on breathing and relaxing as you are taken by the eager little beast. Clearly impressed with himself the whelp frantically pounds into your ass, hoping to father more whelps or eggs upon you. After a short ten minutes of his annoying noises he approaches climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Throwing his head back he squeals his victory. The glowing shaft throbs in your depths, your intestines are splattered with the whelps mildly glowing seed. The whelp quickly pulls free and flapping his baby dragon wings takes to the air in search of safety and easy prey.[mimpregchance]";
		otherwise: [ Prefer female action]
			say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The whelp flutters down your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. The young whelp begins to thrust forward searching for a cunt. However, due to his clumsy inexperience the whelp immediately finds a different hole. Too stupid to tell the difference he chitters delightedly and begins thrusting into your anus. You can only grimace and growl as the whelp takes pleasure from your body while his own small shaft shares little. Lying back you close your eyes and concentrate on breathing and relaxing as you are taken by the eager little beast. Clearly impressed with himself the whelp frantically pounds into your ass, hoping to father more whelps or eggs upon you. After a short ten minutes of his annoying noises he approaches climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Throwing his head back he squeals his victory. The glowing shaft throbs in your depths, your intestines are splattered with the whelps mildly glowing seed. The whelp quickly pulls free and flapping his baby dragon wings takes to the air in search of safety and easy prey.[mimpregchance]";

to say whelp desc:
	now firebreathcount is 0;
	now firebreathready is false;
	say "A squealing ball of needle sharp teeth plummets from the sky, clumsily wobbling through the air. The Ash Dragon Whelp's total size is the mass of an average humanoid torso, the dirty [one of]black-red speckled[or]dark ash grey[at random] scales, [one of]white[or]black[or]grey[at random] eyes, add to its fearsome appearance. A lava-like glow emanates from its core and the light seeps between its scales. Between its legs is a small pouch housing its minor genitals. The Ash Whelp appraises your [bodyname of player] form carefully for a time, then finally musters the courage to fly directly towards you!";

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	add "Ash Whelp" to infections of guy;
	now name entry is "Ash Whelp";
	now attack entry is "The [one of]whelp rushes at you, clawing and scratching viciously[or]whelp dives at you its snapping jaws catching your arm, he pulls away leaving you with a bloodied bite mark[or]creature flies at your legs, nipping and biting at them[at random].";
	now defeated entry is "Crying mournfully the whelp loses its strength to fly and falls to the ground with a thud. where it does not stir again.";
	now victory entry is  "You sink to your knees, wounded badly. The Whelp chirps in triumph and approaches you slowly...[whelp attack]";
	now desc entry is "[whelp desc]";
	now face entry is "set of horns growing out of your head that form a curious crown. The rest of your face is jet black save the molten embroidery of your veins. You have an Ash Dragon head";
	now body entry is "tall and imposing. Glittering black scales illuminated by your own luminescent blood. Cruel barbs and spikes form along your thighs, forearms and joints. Your Ash Dragon body is a fearsome sight";
	now skin entry is "[one of]obsidian black scales for[or]ashen colored scales for[at random]";
	now tail entry is "You have a long prehensile tail trailing behind you. Despite its flexibility it is extremely tough and it ends with a sharp point.";
	now cock entry is "[one of]cruelly barbed ash dragon[or]glowing ash dragon impregnator[at random]";
	now face change entry is "strange sensations which build beneath your skin. Black shining scales form beneath your features and your old face sloughs off like a mask leaving a semi-recognizable version of your old self. You grab your cranium as a splitting headache erupts, new demonic horns lancing out from your head, oddly enough they look different from the reptilian horns most of the Ash Dragons sport. They almost seem to form a crown";
	now body change entry is "pain wracks throughout it in spasms. Curling into a ball you feel your spine cracking, and from the soreness in your legs and limbs you are adding significant height to your frame. Overcome with a burning sensation, you double over, feeling sick. Your old skin peels away and falls off to reveal the black scales of the Ashen Dragon Brood. The blood in your very veins seems to swell with heat and soon you can see a glowing molten layout of your blood circulation. It forms an ornate eerie pattern over your body";
	now skin change entry is "your flesh hardens as it's modified into a scaly hide. It is burned black from the inside as your blood ignites.";
	now ass change entry is "a long prehensile tail forms from your backside. You find you can sweep it powerfully behind you. It takes some getting used too, however, soon you are using it almost like a third limb";
	now cock change entry is "it engorges itself with molten blood. It now glows a deep orange and the veins of it glow brightly. There are evil looking barbs along its tip and along its belly, when ejaculating you know they will stiffen, making it impossible to pull away from your partner. Your balls also ignite with an inner light and a painful fire begins to brew within them";
	now str entry is 14;
	now dex entry is 11;
	now sta entry is 11;
	now per entry is 10;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Both";
	now hp entry is 28;
	now lev entry is 2;
	now wdam entry is 6;
	now area entry is "Capitol";
	now cocks entry is 1;
	now cock length entry is 10;
	now cock width entry is 8;
	now breasts entry is 2;
	now breast size entry is 19;
	now male breast size entry is 0;
	now cunts entry is 1;
	now cunt length entry is 15;
	now cunt width entry is 10;
	now libido entry is 20;
	now lootchance entry is 10;		[ Chance of loot dropping 0-100 ]
	now loot entry is "ash dragon heart";
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]altered[or]powerful[or]fearsome[at random]";
	now type entry is "draconic";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "firebreath";		[ Row used to designate any special combat features, "default" for standard combat. ]


when play ends:
	if bodyname of player is "Ash Whelp":
		if humanity of player is less than 10:
			say "Compelled by some strange notion you venture towards the western center of the city. The buildings become more decrepit and it is obvious at one point or another nearly everything here has been on fire. As you wander further and further through the destruction you finally come to the capitol building. It stands above the ruins of surrounding skyscrapers like some ominous monolith. A roar, ripped from hell echoes from the capitol buildings peak. Your belly tingles with fertility. Somehow, you know your destiny waits on the top floor.";
			if cocks of player is greater than 0:
				say "As you wander through the wastes of the city central you are attacked by several Drakenoids. You handily defeat them each in turn and always leave a dishonoured female with a bloated belly in your wake. You even manage to hunt a few of the -normal- creatures from the surrounding city as you circle the capitol building. As much as you would like, you have no time to wait and see your squealing dragon offspring be born from your victims. You must prepare.";
			if cunts of player is greater than 0:
				say "As you ascend the capitol tower you feel your belly tingle with something akin to electricity. You know, somehow, that your body is preparing to bear a dragon brood of epic proportions.";
		otherwise:
			say "Having retained your sanity as an Ash Dragon you manage to escape the city. However civilization proves too much for your new urges and after a short span of time in which you spread many wild oats you find yourself fleeing to the east. A dark presence has emerged from the infected city, it is rumoured, and seems to be headed in your direction.";

Ash Whelp For FS ends here.
