Ash Whelp For FS by Sweraptor begins here.

"Adds an Ash Whelp to Flexible Survivals Wandering Monsters table, With Impreg chance"
[Ash Whelps serve as a pathetic and annoying early warning system for the Ash brood. Only dangerous to weakened or new adventurers losing to these annoying mites is truly pathetic.]

Section 1 - Monster Responses

whelpdefeat is a number that varies.
to say whelp attack:
	if whelpdefeat is 0:
		say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock emerges from its sheath. The Ash Whelp flutters down towards you, coming to rest on your heaving chest. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. After a few unexperienced thrusts the whelp finally shoves his dick in your mouth. With eager abandon he happily begins thrusting forward. Accepting this will be over faster with your assistance you wrap your tongue around the unnaturally warm prick and begin to suck. The whelpling squeals in delight as you work his shaft with your tonuge and his tail wags happily. The cock tastes like dirt, but you do not have to endure the humiliation of the whelps eager thrusts much longer. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis[apostrophe]s undercarriage. Throwing his head back and letting out a pathetic, yet triumphant roar, he floods your mouth with a little warm seed. Soon afterwards he scampers away and takes to the air in search of food.";
		 now whelpdefeat is 1;
	otherwise:
		if a random chance of 2 in 3 succeeds: [ Prefer male action]
			if cunts of player > 0:
				if cunt length of player is less than 15 or cunt width of player is less than 15:
					say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The whelp flutters down to your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. Tired and beaten you can do nothing as your legs are forced apart and he eagerly begins thrusting forward, searching for your [cunt size desc of player] pussy. Finding his mark, you can only groan helplessly as he squeals victoriously, thrusting with abandon into your snatch. Despite his small size, his tempo and warmth slowly turn your experience into a positive one. You wrap your legs around the little brute in a final act of submission as he picks up the pace. After a short ten minutes you find yourself gasping and moaning as the whelp comes to an early climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Nipping you possessivly he sinks as deep as his smaller than average prick will allow and lets forth a few quick bursts of unusally warm semen into your belly. [impregchance] Exhausted and thouroughly beaten you can only mewl as he pulls out out quickly and takes to the air.";
				otherwise:
					say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The Whelp flutters down your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. Tired and beaten you can do nothing as your legs are forced apart and he eagerly begins thrusting forward, searching for your [cunt size desc of player] cunt. He quickly finds your waiting tunnel and easily slips his dick inside. Sadly his small shaft is so well accomadated by your plush folds that you harldy feel anything at all except the quick clumsy thrusts of his body, and the annoying squeals. After an agonizingly long twenty minutes of him working on your cunt he finally approaches his climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Throwing his head back he squeals his victory. The glowing shaft throbs in your depths and your inner walls are splattered with the whelps mildly glowing seed. [impregchance] The whelp quickly pulls free and flapping his baby dragon wings takes to the air in search of safety and easy prey.";
			otherwise:
				say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The whelp flutters down your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. The young whelp begins to thrust forward searching for a cunt. However, due to his clumsy inexperience the whelp immediatly finds a different hole. To stupid to tell the difference he chitters delightedly and begins thrusting into your anus. You can only grimace and growl as the whelp takes pleasure from your body while his own small shaft shares little. Lying back you close your eyes and concentrate on breathing and relaxing as you are taken by the eager little beast. Clearly impressed with himself the whelp franticly pounds into your ass, hoping to father more whelps or eggs upon you. After a short ten minutes of his annoying noises he approaches climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Throwing his head back he squeals his victory. The glowing shaft throbs in your depths, your intestines are splattered with the whelps mildly glowing seed. The whelp quickly pulls free and flapping his baby dragon wings takes to the air in search of safety and easy prey.";
		otherwise: [ Prefer female action]
			say "The whelp chitters delightedly at your exhausted form. It circles around you a few times as a small Ash Dragon cock slowly emerges from its sheath. The whelp flutters down your shivering body and lands clumsily between your legs. He begins nipping at you in an unrefined display of -dominance-, his small dick glowing faintly. The young whelp begins to thrust forward searching for a cunt. However, due to his clumsy inexperience the whelp immediatly finds a different hole. To stupid to tell the difference he chitters delightedly and begins thrusting into your anus. You can only grimace and growl as the whelp takes pleasure from your body while his own small shaft shares little. Lying back you close your eyes and concentrate on breathing and relaxing as you are taken by the eager little beast. Clearly impressed with himself the whelp franticly pounds into your ass, hoping to father more whelps or eggs upon you. After a short ten minutes of his annoying noises he approaches climax. His shaft swells in size and with heat. Distinctive rough bumps rise into existence along his penis undercarriage. Throwing his head back he squeals his victory. The glowing shaft throbs in your depths, your intestines are splattered with the whelps mildly glowing seed. The whelp quickly pulls free and flapping his baby dragon wings takes to the air in search of safety and easy prey.";
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of random critters;
	add "Ash Whelp" to infections of guy;
	now name entry is "Ash Whelp";
	now attack entry is "[one of]The Whelp hiccups, then burps, then finally coughs up a small fireball which is lobbed at you.[or]The whelp dives at you its snapping jaws catching your arm, he pulls away leaving you with a bloodied bite mark.[at random]"; 
	now defeated entry is "Crying mournfully the whelp loses its strength to fly and falls to the ground with a thud. where it does not stir again.";
	now victory entry is  "You sink to your knees, wounded badly. The Whelp chirps in triumph and approaches you slowly...[whelp attack]";
	now desc entry is "A squealing ball of needle sharp teeth plummets from the sky, clumsily wobbling through the air. The Ash Dragon Whelp's total size is the mass of an average humanoid torso, the dirty [one of]black-red speckled[or]dark ash grey[at random] scales, [one of]white[or]black[or]grey[at random] eyes, add to its fearsome appearance. A lava-like glow emanates from its core and the light seeps between its scales. Between its legs is a small pouch housing its minor genitals. The Ash Whelp appraises your [bodyname of player] form carefully for a time, then finally musters the courage to fly directly towards you!";
	now face entry is "set of horns growing out of your head that form a curious crown. The rest of your face is jet black save the molten embroidery of your viens. You have an Ash Dragon"; 
	now body entry is "Tall and imposing. Glittering black scales illuminated by your own luminescent blood. Cruel barbs and spikes form along your thighs, forarms and joints. Your Ash Dragon Body is a fearsome sight."; 
	now skin entry is "[one of]obsidian black scales for[or]ashen colored scales for[at random]";
	now tail entry is "You have a long prehensile tail trailing behind you. Despite its flexibility it is extremly tough and it ends with a sharp point.";
	now cock entry is "[one of]cruelly barbed ash dragon[or]glowing ash dragon impregnator[at random]";
	now face change entry is "strange sensations which build beneath your skin. Black shining scales form beneath your features and your old face sloughs off like a mask leaving a semi-recognizable version of your old self. You grab your cranium as a splitting headache erupts, new demonic horns lancing out from your head, oddly enough they look different from the reptilian horns most of the Ash Dragons sport. They almost seem to form a crown...";
	now body change entry is "pain wracks throughout it in spasms. Curling into a ball you feel your spine cracking, and from the soreness in your legs and limbs you are adding signifigant hieght to your frame. Overcome with a burning sensation, you double over, feeling sick. Your old skin peels away and falls off to reveal the black scales of the Ashen Dragon Brood. The blood in your very viens seems to swell with heat and soon you can see a glowing molten layout of your blood circulation. It forms an ornate eerie pattern over your body.";
	now skin change entry is "your flesh hardens and mollifys. It is burned black from the inside as your blood ignites.";
	now ass change entry is "a long prehensile tail forms from your backside. You find you can sweep it powerfully behind you. It takes some getting used too, however, soon you are using it almost like a third limb.";
	now cock change entry is "it engorges itself with molten blood. It now glows a deep orange and the viens of it glow brightly. There are evil looking barbs along its tip and along its belly, when ejaculating you know they will engorge and harden, making it impossible to pull away from your partner. Your balls also ignite with an inner light and a painful fire begins to brew within them.";
	now str entry is 14;
	now dex entry is 11;
	now sta entry is 11;					
	now per entry is 10;
	now int entry is 9;
	now cha entry is 8;
	now sex entry is "Both"; 	
	now hp entry is 20;			
	now lev entry is 6;		
	now wdam entry is 6;		
	now area entry is "Outside";	
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
	now loot entry is "Ash Dragon Heart";
	
			
when play ends:
	if bodyname of player is "Ash Whelp":
		if humanity of player is less than 10:
			say "Compelled by some strange notion you venture towards the western center of the city. The buildings become more decepit and it is obvious at one point or another nearly everything here has been on fire. As you wander further and further through the destruction you finally come to the capitol building. It stands above the ruins of surrounding skyscrapers like some ominous monolith. A roar, ripped from hell echoes from the capitol buildings peak. Your belly tingles with fertility. Somehow, you know your destiny waits on the top floor.";
			if cocks of player is greater than 0:
				say "As you wander through the wastes of the city central you are attacked by several Drakenoids. You handily defeat them each in turn and always leave a dishonoured female with a bloated belly in your wake. You even manage to hunt a few of the -normal- creatures from the surrounding city as you circle the capitol building. As much as you would like, you have no time to wait and see your squealing dragon offspring be born from your victims. You must prepare.";
			if cunts of player is greater than 0:
				say "As you ascend the capitol tower you feel your belly tingle with something akin to electricty. You know, somehow, that your body is preparing to bear a dragon brood of epic proportions.";
		otherwise:
			say "Having retained your sanity as an Ash Dragon you manage to escape the city. However civilization proves to much for your new urges and after a short span of time in which you spread many wild oats you find yourself fleeing to the east. A dark presence has emerged from the infected city, it is rumoured, and seems to be headed in your direction.";

Ash Whelp For FS ends here.