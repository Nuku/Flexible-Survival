Version 2 of Copper Dragoness by Kurainyx begins here.
[ Version 1.0 - Creation - Kurainyx ]
[ Version 2.0 - Added victory scenes and libido numbers. Nerfed health - Kurainyx ]
[ Version 2.1 - Fixed libido errors - Kurainyx ]

Section 1 - Creature Responses

to say CopperDragonessDesc:
	setmongender 4;	[female]
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:
		say "     Loud rustling is the only warning you get before a truck-sized dragon bursts through a nearby thicket of trees. Its scales are a reddish-brown, having a metallic sheen that makes them look like copper while two horns jut out from the top of its head with frills adorning the sides. Noting the curves and sleek form of the beast, you realize that the dragon is a dragoness, a dragoness who is leering at you with a hungry glint in her eyes as she unfurls her wings to charge toward you.";

to say LoseToCopperDragoness:
	if inasituation is true:
		say ""; [dealt with at the event source]
	else:	[Random chance of unbirth or anal vore scene]
		if a random chance of 1 in 2 succeeds:	[unbirth]
			if scalevalue of Player > 4:	[Too big for unbirth]
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form; however, she frowns slightly when she looks over your large [bodydesc of Player] body. Grabbing you with her claws, the reptile flips onto her back, taking you with her as she directs your face to her gaping pussy. At first, you think that she just wants you to merely service her, but because of her incessant pushing, you realize that she's actually trying to shove you into her cunt. However, after a minute without any progress, it becomes clear that you're simply too big to fit inside of the female. With a disgruntled growl, the dragoness kicks you off of her and stomps away.";
			else:
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form, picking you up with one of her claws as she reclines her back against a thick tree. After her other claw divests you of your gear, she brings you close to her mouth, and her tongue darts out from between her scaly lips to drag across your face, then to the rest of your body. Once you're coated with saliva, the beast brings you to between her legs, and her other claw moves below you to part her slit, revealing the pink, cavernous depths of her pussy. Realizing the dragoness's plan, you try to resist by pushing against the soft scales surrounding her cunt while you're lowered toward her sex, but between your slathered body and her strength, your head is effortlessly shoved inside of the damp tunnel.";
				say "     The salacious female rumbles in delight as you sink into her, and you can't do anything to halt your progress into the darkness, slick flesh eagerly engulfing you and contouring to your body. Inch by inch, you are slowly fed into the slit, the scaly beast huskily crooning from using your helpless form. Even as the last of you passes through the dragoness's lower lips, her claw tips follow you, continuing to gently push you further down the tight tunnel. Eventually, the claws retreat, and your journey into the dragoness's sex comes to a stop, but with you so deep inside of her, you can barely move, the pliant walls pressing into you from all sides. And yet, despite being trapped in the sweltering, confined space, you can't help but get aroused from stewing in the rapacious reptile's musk, as well as the oddly erotic caresses of the encompassing soft tissue.";
				say "     With no way to tend to yourself, you are kept in a suspended state of lust, but eventually, the fleshy prison begins to shake as the surrounding walls clench down on you. Only when femcum starts to pool around you, accompanied by the dragoness's lustful growls, do you realize that your captor must be pleasuring herself because of the new toy inside of her. The walls press down on you one final time before you are rapidly shot back the way you came from, suddenly releasing you back into the outside world when you are forcibly ejected out of the dragoness's pussy, along with a torrent of her juices. Reeking of sex and exhausted, you shakily stand back up, only to balk when you see the lecherous beast eyeing you. Fortunately, she simply gives you a satisfied smirk and makes no effort to pursue you while you stumble off to recover from your twisted ordeal.";
				LibidoBoost 20;
		else:	[anal vore]
			if scalevalue of Player > 4:	[Too big for anal vore]
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form; however, she frowns slightly when she looks over your large [bodydesc of Player] body. She moves around until all that you can see above is a voluptuous, scaly booty. You are propped upright by the reptile's sinuous tail just as her ample rear crashes into you, grinding her anus into your face. At first, you think that she just wants you to merely service her, but because of her incessant pushing, you realize that she's actually trying to shove you into her ass. However, after a minute without any progress, it becomes clear that you're simply too big to fit inside of the female. With a disgruntled growl, the dragoness throws you to the side and stomps away.";
			else:
				say "     You fall to the ground from the dragoness's advances, and the leering beast saunters over to your beaten form. One of her massive claws pins your prone form, but thankfully not rough enough to cause any further injuries. Her head then lowers to your trapped body, and her tongue darts out from between her scaly lips to drag across your face, then to the rest of your body. Once you're coated with saliva, the beast picks you up in her claw as she lowers her body, arching her back to leave only her rear end off of the ground. You are then brought to the dragoness's behind, and when she lifts her tail high into the air, you are treated to the sight of her puckered asshole. Realizing what lies in wait, you try to escape your captor's grasp, but your feeble struggles are no match for her raw strength.";
				say "     You can only watch in horror as your lower half is fed into her hungry sphincter, the hot, pliant tissue stretching to accommodate your helpless form. More and more of you disappears into the depraved female's depths as she slowly pushes you in, prolonging her pleasure while dragging out your abuse. Eventually, when only your head is awaiting to sink into her ass, the dragoness stands back up and lowers her tail, letting the clenching muscles at the base of her tail finish taking you in. The light of the outside world shrinks away as you are ferried deeper into the reptile's anus until everything fades into darkness. The sweltering confines completely immobilize you, hot dragon meat clenching down on you from every angle amidst a din of squelching flesh. And yet, despite being trapped in the depraved prison, the encompassing walls squeezing down on you is strangely erotic.";
				say "     Eventually, through the ever-present clenches from your surroundings, you can feel your fleshy prison shift as the dragoness flops onto her side, followed by even more movement as everything begins to shake. Muffled as they are, ragged breathing and lustful growls tell you that your captor is greatly enjoying the new toy inside of her. With a mighty roar, and one final squeeze on your helpless form, you are expelled from the dragoness's anus, back into the outside world, and unceremoniously dumped onto the ground. Exhausted, you shakily stand back up, only to balk when you see the lecherous beast eyeing you. Fortunately, she simply gives you a satisfied smirk and makes no effort to pursue you while you stumble off to recover from your twisted ordeal.";
				LibidoBoost 20;

to say BeatCopperDragoness:
	if inasituation is true:
		say "     "; [dealt with at the event source]
	else:
		say "     Unable to withstand your blows any longer, the dragoness slumps over in defeat. Given the winged beast's massive size, it would be difficult for you to effectively have your way with the fallen dragoness[if scalevalue of Player > 4], even for your sizeable stature[end if]. Still, that doesn't mean that you can't play with the dragoness.";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Tend to the dragoness's cunt";
		now sortorder entry is 1;
		now description entry is "Use your hands and tongue to play with some dragon pussy";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Play with the dragoness's ass";
		now sortorder entry is 2;
		now description entry is "Service the dragoness's rear with your tongue and hands";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Nevermind[as]0[end link][line break]";
		while sextablerun is 0:
			say "Pick the corresponding number> [run paragraph on]";
			get a number;
			if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
				now current menu selection is calcnumber;
				choose row calcnumber in table of fucking options;
				say "[title entry]: [description entry]?";
				if Player consents:
					let nam be title entry;
					now sextablerun is 1;
					if nam is "Tend to the dragoness's cunt":
						say "[CopperDragonessVictoryCunt]";
					if nam is "Play with the dragoness's ass":
						say "[CopperDragonessVictoryAss]";
				wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     The dragoness whines in disappointment when you turn to leave, but she doesn't make a move to follow you. After a bit of walking, you don't see any sign of her, and you resume your exploration.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		clear the screen and hyperlink list;

to say CopperDragonessVictoryCunt:
	say "     It takes a few moments, but the dragoness eventually understands your gestures to lay on her back. The scaly female obeys without a fuss, although you're pretty sure that it's not just because you bested her in combat, given the glint of lust you see in her eyes. You slowly approach the dragoness and straddle her tail, offering you a front row seat of her gaping pussy. Up close, you can see that her cunt is already drenched, the pulsating pink walls almost begging you for your touch, and the arousing scent of her sex stirs a heat within you. Enticed by the promising pussy, you mash your face up against her lower lips, the dragoness rumbling softly in satisfaction as your tongue reaches inside of her. As you lick the velvety folds, you taste an odd yet enjoyable mix of sweet, salty, and spicy, and it only drives you to probe for more. However, the dragoness whines needily, your ministrations only arousing her further.";
	say "     Realizing that your tongue is woefully insufficient to please the larger female, you withdraw your face and sink your arms inside of the slit, going all the way up to your elbows and eliciting an audible growl of delight from the dragoness. As you pump your arms in and out of the dragoness's slit, you suddenly freeze when one of her claws brushes across your back. The claw then begins nudging you gently, and you realize that she is simply encouraging your ministrations. However, soon after you resume moving your arms, her pushing becomes more incessant, urging you for more. With your arms inside of the dragoness, you are both literally and figuratively in too deep to give up now.";
	if scalevalue of Player > 4:	[Size 5 can only do fisting scene]
		say "[CopperDragonessFistCunt]";
	else:
		say "     [bold type]You can either continue using your arms, or you could try going into the dragoness and pleasure her from within.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get even more hands-on with the dragoness.";
		say "     ([link]N[as]n[end link]) - Delve into the dragoness to please her.";
		if Player consents:
			LineBreak;
			say "[CopperDragonessFistCunt]";
		else:
			LineBreak;
			say "[CopperDragonessEnterCunt]";

to say CopperDragonessVictoryAss:
	say "     Wanting to play with some draconic booty, you start walking around the larger female, the dragoness watching you with a mix of wariness and curiosity. When you come face to face with her butt, you detect a faint but alluring scent emanating from her rump, and combined with the lovely sight of her curvaceous, ample ass, you find yourself drawn to the scaly derriere. The dragoness rumbles in satisfaction when you place your hands on her rear and lean your face forward to begin licking around her asshole. As you trace your tongue along the edge of her sphincter, a musky flavor lingers on your taste buds, making you want more as you eagerly lavish the dragoness with your oral attention. However, even though you are quite content with rimming the titanic ass, the dragoness begins to whine needily, your small tongue giving her little relief and actually only making her more horny.";
	say "     Rethinking your plan to service the dragoness, you pull your face back and reach forward with one hand, carefully inserting it into the beast's hole. Taut muscles snugly hug your arm as you slowly slip it inside, and the lusty reptile growls in approval from the larger insertion. It takes a bit of effort to power through the tight hole, but you eventually manage to get a pistoning motion going with your arm as you start fisting the dragoness's ass with gusto. Amidst the larger female's moans of pleasure, you catch the smoldering gaze that she is giving you, urging you to give her more and sate her lust. With your arms inside of the dragoness, you are both literally and figuratively in too deep to give up now.";
	if scalevalue of Player > 4:	[Size 5 can only do fisting scene]
		say "[CopperDragonessFistAss]";
	else:
		say "     [bold type]You can either add your other hand into the mix, or you can try pushing your entire body inside of her.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get even more hands-on with the dragoness.";
		say "     ([link]N[as]n[end link]) - Delve into the dragoness to please her.";
		if Player consents:
			LineBreak;
			say "[CopperDragonessFistAss]";
		else:
			LineBreak;
			say "[CopperDragonessEnterAss]";


to say CopperDragonessFistCunt:
	say "     Redoubling your efforts, you thrust your arms even deeper into the dragoness's cunt until your shoulders are rubbing against her outer lips, and the velvety, slick walls of her humid depths squeeze down on your limbs, welcoming your touch. The scaly female croons with delight as you relentlessly pound into her, the heady scent of her sex growing more potent and egging you on. The giant pussy gets even wetter thanks to your efforts, slickening your arms and making it even easier for them to go in and out of her quim. As the dragoness starts moaning loudly and quivering with her approaching climax, you give one final push, plunging your arms deep inside of her, and in your fervor, part of your upper body also slips inside of the hot, pink tunnel.";
	say "     The walls within tightly clench down, trapping half of your body within the pussy, but it only lasts for a moment before you hear the dragoness roar in pleasure, and you are sent flying backwards onto the ground when a torrent of femcum gushes out of her cunt. You are unable to get up for a few moments as a waterfall of her juices rains down on you, soaking every inch of you in her heady arousal. When the shower of lust finally ends, you shakily get back up on your feet. The dragoness's head approaches your soaked form and begins licking you affectionately, both as a sign of appreciation as well as helping to clean you of her juices. When you're sufficiently cleaned, the satisfied dragoness walks away, leaving you to resume your explorations.";
	LibidoBoost 20;

to say CopperDragonessEnterCunt:
	say "     Thrusting your hands deep inside of the slit, you slowly part the pliable walls as you push forward, and the dragoness's moans of pleasure grow louder and louder as you crawl inside of her. You power through the contracting muscles, venturing deeper into the living tunnel until you're sure that you won't easily slip out before your intended work is done. With barely any light coming from where you came from, your other senses sharpen as they take in the twisted environment you willingly entered. The intoxicating musk of the dragoness's sex hits you full blast now that you're right in the source of it, and the strong yet spongy flesh of her inner walls presses into you from all sides. The warmth and comforting caresses of your surroundings almost make you want to relax into the dragoness's embrace, but you remind yourself that you came in here for a reason.";
	say "     The surrounding flesh hugs you tightly yet still offers enough freedom for you to wiggle around, allowing you to rub your whole body into the dragoness's inner walls. The large female moans in delight while you act as a vibrating dildo, pleasuring her from the inside with your movements. Every now and then, you make sure to concentrate your efforts on a different part of the beast's depths, listening to her howls of delight so that you can find her erogenous zones. All the while, the chamber gets warmer, and more of her arousal leaks from the walls, slickening your movements while also stoking the fires of your own lust.";
	say "     Sensing the dragoness nearing her peak, as well as feeling your own, you grind your [if Player is male]cock[smn][else if Player is female]cunt[sfn][else]crotch[end if] against her most sensitive spot, and you achieve your climax just as the dragoness does. While you're writhing in the throes of your own orgasm, the walls tightly clench down on your pleasure-wracked body, and you can hear the dragoness roar in ecstasy right before you are swiftly ejected from her cunt in a torrent of draconian femcum. You fall to the ground and are unable to get up for a few moments as a waterfall of her juices rains down on you, soaking every inch of you in her heady arousal. When the shower of lust finally ends, you shakily get back up on your feet. The dragoness's head approaches your soaked form and begins licking you affectionately, both as a sign of appreciation as well as helping to clean you of her juices. When you're sufficiently cleaned, the satisfied dragoness walks away, leaving you to resume your explorations.";
	LibidoLoss 40;

to say CopperDragonessFistAss:
	say "     With a bit of shifting around, you manage to shove your other arm into the puckered hole, the tight tunnel eagerly accepting your offering as it squeezes down on both of your limbs. It takes a bit more time than before to start fisting the dragoness, but once you do, the delighted moans you hear are worth the extra work. One arm pulls out of the dragoness's sphincter, all the way to your wrist, while the other plunges deeper into the beast's bowels. By alternating the movements of your arms, you create a constant pumping motion that massages and kneads the inner walls of the winged reptile. If the lustful pants that the dragoness is making don't make it obvious enough that your ministrations are being well-received, her nearby tail is also flicking around in ecstasy. Fortunately, her thrashing tail is far enough to let you concentrate on servicing the larger female, the heat of her rear tunnel growing hotter by the second as her peak rapidly approaches.";
	say "     Sensing the upcoming climax, you start moving both arms in sync, pistoning them in and out at the same time, before giving it your all in one final deep thrust that sinks your arms all the way up to your shoulders. The dragoness roars in pleasure, and the muscles in her rear clench down on your arms, trapping you, while your body is smooshed by her bodacious booty clenching down on you from both sides. You relish the divine feeling of being smothered by soft scales and plushy draconic ass, but all too soon, the relieved dragoness comes down from her orgasm, and you are released when her rear stops clenching. However, with how tiring the ordeal was, your arms being trapped in her ass was the only thing holding you up, so when your arms involuntary slip out of the tight tunnel, you flop backwards onto the ground with exhaustion. After a few moments for you, as well as the dragoness, to recover, you shakily get back up, and the dragoness moves her snout toward you, giving you a lick of affection before she goes on her way and leaves you to resume your exploration.";
	LibidoBoost 20;

to say CopperDragonessEnterAss:
	say "     Using both of your hands, you push apart the rim of the dragoness's asshole and stick your head inside of the heated tunnel. The musk is more potent at its source, urging you to continue pushing forward. As the ring of the puckered hole reaches your shoulders, you find yourself having some trouble pushing in, that is until you feel the dragoness's claw on your lower half, gently pushing you in as she croons blissfully. Once your shoulders finally slip into the tight hole, the dragoness's claw leaves you as the clenching muscles of her rear take over and slowly draw in the rest of your body. Slick, firm flesh ferries you deeper, and with your movements limited by the hot, living tube, you briefly wonder if you were perhaps a bit overzealous in your attempts to please the dragoness.";
	say "     Fortunately, the ride soon comes to a stop, and you're not too deep into the bowels of the beast, even though barely any light filters in from where you came in. The warmth surrounding you along with the pulsating walls caressing your body tempts you to relax, but you remind yourself that you came in here for a reason. Despite the tight tube of muscles squeezing down on you, there is just enough give for you to wriggle about. Even though your movements are restricted, you do your best to rub yourself along every inch of your surroundings, and before long, you can hear the dragoness rumble in pleasure from your squirming. The heat and musk intensifies in the tight confines, driving your own lust, and you begin grinding your [if Player is male]cock[smn][else if Player is female]cunt[sfn][else]crotch[end if] against the surrounding supple flesh.";
	say "     With the air thick with horny draconic musk, you achieve your climax first, but the dragoness is close behind. You practically feel her climax when the walls tightly clench down on your pleasure-wracked body, the dragoness roaring in ecstasy. The feeling of being squeezed and smothered from all sides by supple flesh is oddly pleasant as you ride out the dragoness's orgasm. When the horny female comes down from her high, the surrounding walls relax as you are slowly pushed out. You eventually emerge from the beast's rear and are unceremoniously dumped onto the ground, exhausted from your ordeal. After a few moments for you, as well as the dragoness, to recover, you shakily get back up, and the dragoness moves her snout toward you, giving you a lick of affection before she goes on her way and leaves you to resume your exploration.";
	LibidoLoss 40;


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Copper Dragon"; [name of the overall species of the infection, used for children, ...]
	add "Copper Dragoness" to infections of ReptileList;
	add "Copper Dragoness" to infections of FurryList;
	add "Copper Dragoness" to infections of MythologicalList;
	add "Copper Dragoness" to infections of FemaleList;
	add "Copper Dragoness" to infections of TaperedCockList;
	add "Copper Dragoness" to infections of InternalCockList;
	add "Copper Dragoness" to infections of BipedalList;
	add "Copper Dragoness" to infections of TailList;
	add "Copper Dragoness" to infections of TailweaponList;
	now Name entry is "Copper Dragoness"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The dragoness bowls you over and grinds her crotch on your prone form[or]A powerful beat of the dragoness's wings creates a gust of wind that knocks you down[or]With surprising speed, the dragoness whirls around, her tail whipping around and slamming into you[at random]."; [ Successful attack message ]
	now defeated entry is "[BeatCopperDragoness]"; [ Text when monster loses. Change 'Behemoth' as above. ]
	now victory entry is "[LoseToCopperDragoness]"; [ Text when monster wins. Change 'Behemoth' as above. ]
	now desc entry is "[CopperDragonessDesc]"; [ Description of the creature when you encounter it. ]
	now face entry is ""; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is ""; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is ""; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is ""; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is ""; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is ""; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is ""; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is ""; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is ""; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 32; [ These are now the creature's stats... ]
	now dex entry is 25; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 30; [ These values may be used as part of alternate combat.]
	now per entry is 20;
	now int entry is 22;
	now cha entry is 10;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 200; [ The monster's starting HP. ]
	now lev entry is 20; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 35; [ Monster's average damage when attacking. ]
	now area entry is "Island"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 16; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 10; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 0; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "scaly"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "draconic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
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


Copper Dragoness ends here.
