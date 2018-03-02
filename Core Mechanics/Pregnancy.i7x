Version 1 of Pregnancy by Core Mechanics begins here.
[Version 1.3 - Fix attempt for Mpreg + NPC issues - Stripes]

Chapter 1 - Definitions and Variables

A person can be impreg_ok. A person is usually not impreg_ok.
A person can be impreg_able. A person is usually not impreg_able.
A person can be impreg_now. A person is usually not impreg_now.
A person can be mpreg_ok. A person is usually not mpreg_ok.
A person can be mpreg_able. A person is usually not mpreg_able.
A person can be mpreg_now. A person is usually not mpreg_now.
A person can be fem_vacant. A person is usually fem_vacant.
A person can be male_vacant. A person is usually male_vacant.
A person can be fpreg_ok. A person is usually not fpreg_ok.
A person can be fpreg_able. A person is usually not fpreg_able.
A person can be fpreg_now. A person is usually not fpreg_now.
A person can be partial_vacant. A person is usually partial_vacant.
A person can be total_vacant. A person is usually total_vacant.

[Male and/or Female]

Definition: A person (called x) is impreg_ok: [Can the player become pregnant in general. Male and/or Female]
	if player is fpreg_ok or player is mpreg_ok, yes;
	no;

Definition: A person (called x) is impreg_able: [Can the player be impregnated RIGHT NOW. Male and/or Female]
	if player is fpreg_able or player is mpreg_able, yes;
	no;

Definition: A person (called x) is impreg_now: [Is the player currently pregnant. Male and/or Female] [impreg_now and its variants should only be used for technical reasons -- if an NPC is observing that the player might be pregnant (unless they know absolutely for sure that it's not a hijack) consider the vacant defintions instead]
	if player is fpreg_now or player is mpreg_now, yes;
	no;

Definition: A person (called x) is partial_vacant: [If EITHER male OR female vacant]
	if player is fem_vacant or player is male_vacant, yes;
	no;

Definition: A person (called x) is total_vacant: [If BOTH male AND female vacant]
	if player is fem_vacant and player is male_vacant, yes;
	no;

[Female/vaginal-particular]
Definition: A person (called x) is fpreg_ok: [Can the player become pregnant in general. Female]
	if "Sterile" is listed in feats of player, no;
	if cunts of player > 0, yes;
	no;

Definition: A person (called x) is fpreg_able: [Can the player be impregnated RIGHT NOW. Female]
	if "Sterile" is listed in feats of player, no;
	if cunts of player is 0, no;
	if gestation of child > 0 or child is born, no;
	if preghijack is true, no;
	if insectlarva is true and larvaegg is 2, no;
	yes;

Definition: A person (called x) is fpreg_now: [Is the player currently pregnant. Female]
	if gestation of child > 0 and pregtype is 1, yes;
	no;

Definition: A person (called x) is fem_vacant: [Disregarding fertility, is the player's cunt occupied by something]
	if cunts of player is 0, no;
	if (gestation of child > 0 and pregtype is 1) or child is born, no;
	if preghijack is true, no;
	if insectlarva is true and larvaegg is 2, no;
	yes;

[Male/Anal-particular]
Definition: A person (called x) is mpreg_ok: [Can the player become pregnant in general. Male]
	if "Sterile" is listed in feats of player, no;
	if "MPreg" is listed in feats of player and ( level of Velos is not 1 or HP of Velos < 3 ), yes;
	no;

Definition: A person (called x) is mpreg_able: [Can the player be impregnated RIGHT NOW. Male]
	if "Sterile" is listed in feats of player, no;
	if gestation of child > 0 or child is born, no;
	if mpreghijack is true, no;
	if insectlarva is true and larvaegg is 2, no;
	if "MPreg" is listed in feats of player, yes;
	no;

Definition: A person (called x) is mpreg_now: [Is the player currently pregnant. Male]
	if gestation of child > 0 and pregtype is 2, yes;
	no;

Definition: A person (called x) is male_vacant: [Disregarding fertility, is the player's ass occupied by something]
	if mpreghijack is true, no;
	if insectlarva is true and larvaegg is 2, no;
	if (gestation of child > 0 and pregtype is 2) or child is born, no;
	yes;

preghijack is a truth state that varies. preghijack is usually false. [General-purpose variable for detailing a hijacked pregnancy]
mpreghijack is a truth state that varies. mpreghijack is usually false. [male/anal version]
hijackgestation is a number that varies.
ebwhelphijack is a number that varies. [ 0 = none, 1 = cunt, 2 = anal]
ebgatorhijack is a number that varies.
pregtype is a number that varies. [1 = female, 2 = male, 0 = guess]
callovi is a truth state that varies. callovi is usually false; [true = ovi pregnant]

Chapter 2 - Pregnancy/Birth Detailing and Protocols

to pregprotocol:
	if ebgatorhijack > 0 or ebwhelphijack > 0:
		decrease hijackgestation by 1;
		if ebwhelphijack > 0:
			ebwhelphijackroutine;
		else if ebgatorhijack > 0:
			ebgatorhijackroutine;
	if player is impreg_now:
		if child is not born and gestation of child > 0:
			decrease gestation of child by 1;
			if "Fertile" is listed in feats of player and a random chance of 1 in 2 succeeds, decrease gestation of child by 1;
			if "Maternal" is listed in feats of player and a random chance of 1 in 3 succeeds, decrease gestation of child by 1;
			if gestation of child < 5:
				if ovipregnant is true and ovipreglevel is 1, now ovipregnant is false;
				if ovipregnant is false and ovipreglevel is 3, now ovipregnant is true;
				say "[detailpregnancy]";
				if a random chance of 1 in 10 succeeds and ( breast size of player > 0 ): [cut the cunt requirement for cuntboys, breast size is enough]
					increase breast size of player by 1;
					follow breast descr rule;
					if cunts of player is 0:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if cocks of player > 0]male[else]neuter[end if], now [breast size desc of player] breasts on your [bodytype of player] body. Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly. Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
			else if gestation of child < 15:
				say "[detailpregnancy]";
				if a random chance of 1 in 20 succeeds and ( breast size of player > 0 ):
					increase breast size of player by 1;
					follow breast descr rule;
					if cunts of player is 0:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if cocks of player > 0]male[else]neuter[end if], now [breast size desc of player] breasts on your [bodytype of player] body.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly.";
			else if gestation of child < 30 or (gestation of child > 0 and a random chance of 1 in 3 succeeds):
				say "[detailpregnancy]";
				if a random chance of 1 in 30 succeeds and ( breast size of player > 0 ):
					increase breast size of player by 1;
					follow breast descr rule;
					if cunts of player is 0:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if cocks of player > 0]male[else]neuter[end if], now [breast size desc of player] breasts.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly.";
			if gestation of child < 1 and ( cunts of player > 0 or "MPreg" is listed in feats of the player ) and skipturnblocker is 0:
				if pregtype is 1 and cunts of player is 0:
					now pregtype is 2;
				say "[detailbirth]";
				if snakehijack is 0:
					let z be 1;
					let fer be 0;
					if "Fertile" is listed in feats of player:
						increase fer by 3;
					if "Litter Bearer" is listed in feats of player:
						increase fer by 12;
					if a random chance of (1 + fer) in 100 succeeds:
						increase z by 1;
					if a random chance of (3 + fer) in 100 succeeds:
						increase z by 1;
					if a random chance of (5 + fer) in 100 succeeds:
						increase z by 1;
					if a random chance of fer in 100 succeeds:
						increase z by 1;
					if a random chance of fer in 100 succeeds:
						increase z by 1;
					if z > 4, now z is 4;		[extra chance, still limited to 4]
					if ubpreg is not "false":
						now z is 1;
					if z is 2:
						say "Twins![line break]";
					else if z is 3:
						say "Triplets![line break]";
						if pregtype is 2, increase mpregcount by 1;	[more mpreg practice]
					else if z is 4:
						say "Quadruplets![line break]";
						if pregtype is 2, increase mpregcount by 1;	[more mpreg practice]
					repeat with y running from 1 to z:
						now child is born;
						Birth;
					increase score by 15;		[15 base +5/child]
					extend game by 4;
					now pregtype is 0;
				else: [routine for various hijacks]
					repeat with y running from 1 to snakeocc:
						now child is born;
						Birth;
					if snakehijack is 1:
						now preghijack is false;
					else:
						now mpreghijack is false;
					now snakehijack is 0;
					now snakeocc is 0;
					now snakehijacktimer is turns;
			else:
				if gestation of child < 0, now gestation of child is 1;

to say detailpregnancy:
	detailpregnancy;

to detailpregnancy:
	LineBreak;
	if gestation of child < 5:
		if cunts of player is 0:
			say "Your [bodytype of player] belly protrudes in a firm dome from your [if cocks of player > 0]male[else]neuter[end if] pregnancy, full with [if snakehijack > 0][one of]your serpentine hijacker[or]the illegitimate occupant[or]the sneaky snake[as decreasingly likely outcomes][else]growing life[end if][if snakeocc > 1]s[end if] which will soon emerge into the world. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
		else:				[MPreg]
			say "Your [bodytype of player] belly protrudes in a firm dome of pregnancy, full of [if snakehijack > 0][one of]your serpentine hijacker[or]the illegitimate occupant[or]the sneaky snake[as decreasingly likely outcomes][else if ovipregnant is true]the growing egg[else]some unborn being[end if][if snakeocc > 1]s[end if], waiting to see the world, such as it is. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
	else if gestation of child < 10:
		if cunts of player is 0:
			say "Your [bodydesc of player] body is somewhat enlarged by the effects of your unusual pregnancy. It is progressing with worrying speed, but a strange sense of fulfillment keeps fear at bay.";
		else:
			say "Your [bodydesc of player] body is somewhat rounded with the effects of [if ovipregnant is true]what feels like an egg growing inside you[else]your oncoming pregnancy[end if]. It is progressing with worrying speed, but a warm sense of fulfillment keeps fear at bay.";
	else if gestation of child > 0:
		if cunts of player is 0:
			say "[one of]You feel a soft shifting of something inside your lower belly[or]Warm tingles gently run through your lower belly[at random].";
		else:
			say "[one of]You feel a soft shifting of something inside your lower belly[or]Warm tingles gently run through your lower belly[at random][if ovipregnant is true] as something hard and heavy shifts around inside you[end if].";

to say detailbirth:
	detailbirth;

to detailbirth:
	LineBreak;
	if cunts of player > 0 and pregtype < 2:
		say "     With a sudden pouring of fluids, [if ovipregnant is true]egglaying[else]birth[end if] is upon you. You settle without much choice, breathing quickly as your body spasms in readiness.";
	else:
		say "     There is a shifting in your lower belly as your special incubation chamber opens, releasing something large and heavy into your bowels. With the completion of your unusual pregnancy fast approaching, you settle without much choice, breathing quickly as your body spasms in readiness.";
	follow cunt descr rule;
	if cunts of player > 0 and pregtype < 2:
		if playercanub is true and ubpreg is not "false":
			say "     Your altered, stretchable cunt with its powerful muscles quiver in echo to the pleasure you felt when it earlier consumed the [ubpreg] now leaving your womb[if ovipregnant is true] as a large egg[end if]. You recline and concentrate, feeling your mutated [bodytype of player] body easily slipping your new child from it. Again, there is some effort, but it is far easier as they slip along your well-lubricated tunnel to enter your caring embrace.";
		else if "All-Mother's Blessing" is listed in feats of player:
			say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All of their own, your arms come up in a holding pose, and as they do, the [if ovipregnant is true]large egg[else]child[end if] that has been growing inside you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
		else if playercanub is true:
			say "     Your altered, stretchable cunt with its powerful muscles have little difficulty with the birth, an act that becomes quite pleasurable for you. You simply recline and relax, letting your instincts take over, slipping the [if ovipregnant is true]large egg[else]child[end if] easily free from your [bodytype of player] body. They slip almost effortlessly along your well lubricated tunnel to reach your caring embrace.";
		else if cunt width of player > 10:
			say "     Your [descr] sex almost laughs at the idea of birth. You recline and concentrate and can feel your mutated [bodytype of player] body easily slipping the [if ovipregnant is true]large egg[else]child[end if] free of you, slipping almost effortlessly along your well lubricated tunnel to reach your caring embrace.";
			increase morale of player by 5;
		else if cunt width of player > 3:
			say "     You begin to realize why labor is called that, huffing and pushing as best as you can, slowly nudging the [if ovipregnant is true]large egg[else]newborn[end if] from your [descr] birthing canal. It is not as painful as the movies make out, and after about twenty minutes, the [if ovipregnant is true]egg[else]child[end if] is ready to be held by you. You feel tired, but whole, and satisfied.";
			increase morale of player by 5;
		else:
			say "     Horrible pain lances through your body as your [descr] sex disgorges the [if ovipregnant is true]large egg[else]child[end if] only after what feels like hours of struggle. Your [bodydesc of player] body covered in sweat, you are left exhausted and winded, but bearing a newborn.";
			now HP of player is 1;
			decrease morale of player by 10;
	else:
		let ubpreggers be 0;
		if playercanub is true and ubpreg is not "false", now ubpreggers is 1;
		if "All-Mother's Blessing" is listed in feats of player:
			say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All of their own, your arms come up in a holding pose, and as they do, the large egg[if ubpreggers is 1] now encapsulating the engulfed [ubpreg][end if] that had been inside you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
			increase mpregcount by 1;
		else if mpregcount < 3:			[First few times, painful]
			say "     Shifting the large mass through your lower colon sends horrible pain through your body as it struggles to adapt to this method of birthing. You claw at the ground and moan as your tight asshole is stretched and forced to open for the large egg[if ubpreggers is 1] now encapsulating the engulfed [ubpreg][end if]. Your body squeezes and pushes as your [bodydesc of player] body is covered in sweat and you have a grimace of pain on your [facename of player] face with each painful shifting inside you. By the time you manage to push it free, you are left exhausted and winded, but have somehow managed to lay the noticably big oval of your egg from your ass. Collapsed on your side, you gently caress the rocking egg as the shell which protected your child through this difficult passage starts to crack.";
			now HP of player is 1;
			decrease morale of player by 10;
			increase mpregcount by 1;
		else if mpregcount < 6:		[Next few times, struggle]
			say "     As you struggle with your unusual birthing, you huff and push as best you can during your unnatural labour, working to nudge the large egg onwards, working to expell it from your anus. It is not nearly as painful as your first few were, your [bodytype of player] body having become more adjusted to the process. After about twenty minutes of pushing and grunting, the egg is pushed free with a little discomfort and even some pleasure as your [if cocks of player > 0]male[else]neuter[end if] body feels a rush of pride at having [if ubpreggers is 1]turned the captured [ubpreg] into your newest offspring[else]created a new life[end if]. You hold the big egg in your arms, cradling it as the shell starts to crack.";
			increase morale of player by 5;
			increase mpregcount by 1;
		else:					[After that, easy]
			say "     Your well-practiced body has little trouble with the shifting and releasing of the egg within you. You recline and concentrate, feeling your [bodytype of player] body easily working the large egg along your lower bowels, into your rectum before spreading your legs wide to pop it free of your anus. The egg pops free with some effort at the last step, but the process actually comes with considerable pleasure[if cocks of player > 0], and you can't help but stroke yourself into cumming as the firm shell grinds and presses against your prostate as it moves[end if]. As you pull the rocking, cracking egg into your arms, you [if ubpreggers is 1]know it contains the [ubpreg] you unbirthed and have now remade into your offspring[else if cocks of player > 0]can't help but feel considerable pride at what your male body has accomplished[else]can't help but feel considerable pride at what your neuter body has accomplished[end if].";
			increase morale of player by 5;
			increase mpregcount by 1;

To Birth:
	let infection be "";
	if "Maternal" is listed in feats of player:
		increase morale of player by 3;
	if snakehijack is 0 or "They Have Your Eyes" is listed in feats of player:
		if "Chris's Breeder Slut" is listed in feats of player:
			now skinname of child is "Orc Warrior";
			now bodyname of child is "Orc Warrior";
			now tailname of child is "Orc Warrior";
			now facename of child is "Orc Warrior";
			increase ChrisPlayerOffspring by 1;
			remove "Chris's Breeder Slut" from feats of player;
		else if "Human Carrier" is listed in feats of player:
			now skinname of child is "human";
			now bodyname of child is "human";
			now tailname of child is "human";
			now facename of child is "human";
			remove "Human Carrier" from feats of player;
		else if "Cheerbreeder" is listed in feats of player:
			now skinname of child is "Football Wolfman";
			now bodyname of child is "Football Wolfman";
			now tailname of child is "Football Wolfman";
			now facename of child is "Football Wolfman";
		else:
			if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
				now infection is skinname of child;
			else:
				now infection is skinname of player;
			now skinname of child is infection;
			if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
				now infection is bodyname of child;
			else:
				now infection is bodyname of player;
			now bodyname of child is infection;
			if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
				now infection is tailname of child;
			else:
				now infection is tailname of player;
			now tailname of child is infection;
			if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
				now infection is facename of child;
			else:
				now infection is facename of player;
			now facename of child is infection;
	else:
		let infection be "Snake";
		now skinname of child is infection;
		now bodyname of child is infection;
		now tailname of child is infection;
		now facename of child is infection;
	if (playercanub is true and ubpreg is not "false") or snakehijack > 0:
		let wwvar be 0;
		if "Wild Womb" is listed in feats of player, let wwvar be 1;
		if cunts of player > 0 and pregtype < 2:
			say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of player] breast. Strange sensations sweep over your [bodytype of player] body as it drinks down its new mother's milk. Having regressed partially during their time in your womb, they grow back to maturity while suckling[if wwvar is 1], giving you a dark sense of fulfillment[else], further strengthening their bond to you[end if]. They have not been left unchanged by their incubation within you[if wwvar is 1]. They pop free and stand, a feral look of wanton desire on their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin[else]. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin[end if]";
		else if breasts of player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, drinking down its new mother's milk as strange sensations sweep over your [bodytype of player] body. Having regressed partially during their time in your womb, they grow back to maturity while suckling[if wwvar is 1], giving you a dark sense of fulfillment[else], further strengthening their bond to you[end if]. They have not been left unchanged by their incubation within you[if wwvar is 1]. They pop free and stand, a feral look of wanton desire on their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin[else]. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin[end if]";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of player] body strives to complete its task and begins to lactate temporarily to feed your offspring. Having regressed partially during their time in your womb, they grow back to maturity while suckling[if wwvar is 1], giving you a dark sense of fulfillment[else], further strengthening their bond to you[end if]. They have not been left unchanged by their incubation within you[if wwvar is 1]. They pop free and stand, a feral look of wanton desire on their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin[else]. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin[end if]";
		if snakehijack > 0 and "They Have Your Eyes" is listed in feats of player:
			say ". It's clear that your influence has forcibly altered the once-snake to take on your appearance, a twisted fate for such a creature, who now assumes itself to be your legitimate offspring.";
		else if snakehijack > 0:
			say ". It's apparent that its prior act has caused the serpent to assume itself as one of your legitimate offspring, a twisted fate for such a creature.";
		else:
			say ".";
		if wwvar is 1:
			if snakehijack > 0:
				say "     Retaining its feral nature, it departs to stalk the city once more, leaving you to recover from the ordeal of childbirth. At the very least, its regression doesn't necessarily raise the number of creatures in the city, but you worry over who might end up a victim to that creature next";
			else:
				say "     As your rebirthed offspring stalks off into the city, returning to its feral ways, you are left to recover from the ordeal of childbirth. A part of you worries about what your offspring may do";
			say "... And yet, a part of you is awash in contentment, an instinctual need to transmit and spread your infection temporarily sated. Though you do become faintly aware of that emptiness inside your belly again.";
		else:
			say "     As your rebirthed offspring snuggles up beside you, you rest to recover from the ordeal of childbirth. Despite what you've done to the creature, you feel a contentment welling up inside you, your instinctual need to transmit your infection temporarily sated. Though you do become faintly aware of that emptiness inside your belly again.";
	else if "Wild Womb" is listed in feats of player:
		if cunts of player > 0 and pregtype < 2:
			say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of player] breast. Strange sensations sweep over your [bodytype of player] body as it drinks down its new mother's milk. A dark sense of fulfillment begins to creep though you as your newborn suckles at your teat, drawing not only nutrition but instinct and lust as they rapidly reach maturity. They pop free and stand, a feral look of wanton desire on their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin.";
		else if breasts of player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of player] body. A dark sense of fulfillment begins to creep though you as your newborn suckles at your teat, drawing not only nutrition but instinct and lust as they rapidly reach maturity. They pop free and stand, a feral look of wanton desire in their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin.";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of player] body strives to complete its task and begins to lactate temporarily to feed your offspring. A dark sense of fulfillment begins to creep though you as your newborn suckles at your teat, drawing not only nutrition but instinct and lust as they rapidly reach maturity. They pop free and stand, a feral look of wanton desire in their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin.";
		say "     As your feral offspring stalks off into the city, leaving you to recover from the ordeal of childbirth, a part of you worries about your contribution to the ever growing number of creatures in the city...and yet, a part of you is awash in contentment, an instinctual need to propagate and spread your infection temporarily sated.";
	else:
		if cunts of player > 0 and pregtype < 2:
			say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of player] breast. Strange sensations sweep over your [bodytype of player] body as it drinks down its new mother's milk. Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
		else if breasts of player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of player] body. Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of player] body strives to complete its task and begins to lactate temporarily to feed your offspring. As it feeds, it grows rapidly against you as strange sensations sweep over your body. Not only nutrition but personality and knowledge seep through the nipple into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
		increase hunger of player by 3;
		increase thirst of player by 3;
	if "Wild Womb" is not listed in feats of player:
		add facename of child to childrenfaces;
		add bodyname of child to childrenbodies;
		add skinname of child to childrenskins;
		if perception of player < 24, increase perception of player by 1;
	else:
		increase FeralBirths by 1;
		decrease humanity of player by 5;
	increase score by 5;		[15 base +5/child]
	now child is not born;
	now gestation of child is 0;
	now ubpreg is "false";


Chapter 3-1 - Impregnation and Ovi-Impreg Subroutines

To impregnate with (x - text):
	if child is born or gestation of child > 0 or "Sterile" is listed in feats of player or larvaegg is 2 or ( cunts of player is 0 and "MPreg" is not listed in feats of player ):
		stop the action;
	if cunts of player is 0 and "MPreg" is listed in feats of player and ( level of Velos is 1 and HP of Velos > 2 ):
		stop the action;
	if "Cheerbreeder" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with a Football Wolfman child?";
			if the player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
		now gestation of child is a random number from 24 to 48;
		now skinname of child is "Football Wolfman";
		now bodyname of child is "Football Wolfman";
		now tailname of child is "Football Wolfman";
		now facename of child is "Football Wolfman";
	else if "Chris's Breeder Slut" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with an Orc Warrior child?";
			if the player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
		now gestation of child is a random number from 24 to 48;
		now skinname of child is "Orc Warrior";
		now bodyname of child is "Orc Warrior";
		now tailname of child is "Orc Warrior";
		now facename of child is "Orc Warrior";
	else if "Human Carrier" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with a human child?";
			if the player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
			now skinname of child is "human";
			now bodyname of child is "human";
			now tailname of child is "human";
			now facename of child is "human";
	else:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with a/an [x] child?";
			if the player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
		now gestation of child is a random number from 24 to 48;
		let infection be "";
		if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
			now infection is x;
		else:
			now infection is skinname of player;
		now skinname of child is infection;
		if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
			now infection is x;
		else:
			now infection is bodyname of player;
		now bodyname of child is infection;
		if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
			now infection is x;
		else:
			now infection is tailname of player;
		now tailname of child is infection;
		if ( a random chance of 1 in 2 succeeds or "Breeding True" is listed in feats of player ) and "They Have Your Eyes" is not listed in feats of player:
			now infection is x;
		else:
			now infection is facename of player;
		now facename of child is infection;
	if cunts of player is 0:
		say "[line break]     There is a pleasant sense of warmth from your lower belly, filling an emptiness you did not know was there.";
		if pregtype is 0, now pregtype is 1;
	else:
		say "[line break]     You have an odd feeling, a palpable wave of contentment from within your lower belly.";
		if pregtype is 0, now pregtype is 2;

Chapter 3-2 - Impregchance and Ovichance Routines

to say impregchance:		[General Pregnancy Routine]
	impregchance;

to impregchance:		[General Pregnancy Routine]
	if player is fpreg_able:
		say "[fimpregchance]";
	else if player is mpreg_able:
		say "[mimpregchance]";

to say fimpregchance:		[Female-particular Pregnancy Roll]
	fimpregchance;

to fimpregchance:		[Female-particular Pregnancy Roll]
	if player is fpreg_able:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if playercanub is true, increase target by 1;
		choose row monster from the table of random critters;
		if a random chance of 2 in target succeeds:
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now pregtype is 1;
			impregnate with name entry;
			if libido of player > 49:
				now the libido of player is (the libido of player) / 2;
			else if libido of player > 25:
				decrease libido of player by (libido of player / 10);
	now callovi is false;

to say mimpregchance:		[MPreg-particular Pregnancy Roll]
	mimpregchance;

to mimpregchance:		[MPreg-particular Pregnancy Roll]
	if player is mpreg_able:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if playercanub is true, increase target by 1;
		choose row monster from the table of random critters;
		if a random chance of 2 in target succeeds:
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now pregtype is 2;
			impregnate with name entry;
			if libido of player > 49:
				now the libido of player is (the libido of player) / 2;
			else if libido of player > 25:
				decrease libido of player by (libido of player / 10);
	now callovi is false;

to say selfimpregchance:
	selfimpregchance;

to selfimpregchance:
	if player is mpreg_able or player is fpreg_able:
		let target be 12;		[tougher check]
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if playercanub is true, increase target by 1;
		choose row monster from the table of random critters;
		if a random chance of 2 in target succeeds:
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now ovipregnant is false;
			selfimpregnate;
			if libido of player > 49:
				now the libido of player is (the libido of player) / 2;
			else if libido of player > 25:
				decrease libido of player by (libido of player / 10);
	now callovi is false;

to selfimpregnate:
	if player is not mpreg_able and player is not fpreg_able:
		stop the action;
	[if cunts of player is 0 and "MPreg" is listed in feats of player and level of Velos is 1 and HP of Velos > 2:
		stop the action;]
	if "Selective Mother" is listed in feats of player:
		say "Do you wish to be self-impregnated?";
		if the player consents:
			increase score by 0;
		else:
			say "You choose not to accept the seed.";
			stop the action;
	now gestation of child is a random number from 24 to 48;
	now skinname of child is skinname of player;
	now bodyname of child is bodyname of player;
	now tailname of child is tailname of player;
	now facename of child is facename of player;
	say "[line break]     There is an odd sensation of warmth inside you and you get a pleasantly perverse feeling.";

to say ovichance:		[to be used when either female or MPreg would work]
	ovichance;

to ovichance:		[to be used when either female or MPreg would work]
	if ovipreglevel is not 1:
		now callovi is true;
	else:
		now callovi is false;
	impregchance;

to say movichance:		[to be used when only MPreg would work]
	movichance;

to movichance:		[to be used when only MPreg would work]
	if ovipreglevel is not 1:
		now callovi is true;
	else:
		now callovi is false;
	say "[mimpregchance]";

to say fovichance:		[to be used when only female pregnancy would work]
	fovichance;

to fovichance:		[to be used when only female pregnancy would work]
	if ovipreglevel is not 1:
		now callovi is true;
	else:
		now callovi is false;
	say "[fimpregchance]";

to say selfovichance:
	selfovichance;

to selfovichance:
	if ovipreglevel is not 1:
		now callovi is true;
	else:
		now callovi is false;
	say "[selfimpregchance]";

Chapter 3-3 - Random Impreg Routines

to say randomimpreg:		[Use when either would work]
	randomimpreg;

to randomimpreg:		[Use when either would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "[impregchance]";

to say randommimpreg:		[Use when only MPreg would work]
	randommimpreg;

to randommimpreg:		[Use when only MPreg would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "[mimpregchance]";

to say randomfimpreg:		[Use when only female pregnancy would work]
	randomfimpreg;

to randomfimpreg:		[Use when only female pregnancy would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "[fimpregchance]";

to say randomovi:		[random ovi-impregnation - use when either would work]
	randomovi;

to randomovi:		[random ovi-impregnation - use when either would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "[ovichance]";

to say randommovi:		[random ovi-impregnation - use when only MPreg would work]
	randommovi;

to randommovi:		[random ovi-impregnation - use when only MPreg would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "[movichance]";

to say randomfovi:		[random ovi-impregnation - use when only female pregnancy would work]
	randomfovi;

to randomfovi:		[random ovi-impregnation - use when only female pregnancy would work]
	sort table of random critters in random order;
	now monster is 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	say "[fovichance]";

Pregnancy ends here.
