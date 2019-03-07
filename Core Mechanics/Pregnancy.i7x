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

Definition: A person (called x) is impreg_now: [Is the player currently pregnant. Male and/or Female] [impreg_now and its variants should only be used for technical reasons - if an NPC is observing that the player might be pregnant (unless they know absolutely for sure that it's not a hijack) consider the vacant definitions instead]
	if player is fpreg_now or player is mpreg_now, yes;
	no;

Definition: A person (called x) is partial_vacant: [if EITHER male OR female vacant]
	if player is fem_vacant or player is male_vacant, yes;
	no;

Definition: A person (called x) is total_vacant: [if BOTH male AND female vacant]
	if player is fem_vacant and player is male_vacant, yes;
	no;

[Female/vaginal-particular]
Definition: A person (called x) is fpreg_ok: [Can the player become pregnant in general. Female]
	if "Sterile" is listed in feats of player, no;
	if player is female, yes;
	no;

Definition: A person (called x) is fpreg_able: [Can the player be impregnated RIGHT NOW. Female]
	if "Sterile" is listed in feats of player, no;
	if player is not female, no;
	if gestation of child > 0 or child is born, no;
	if preghijack is true, no;
	if insectlarva is true and larvaegg is 2, no;
	yes;

Definition: A person (called x) is fpreg_now: [Is the player currently pregnant. Female]
	if gestation of child > 0 and pregtype is 1, yes;
	no;

Definition: A person (called x) is fem_vacant: [Disregarding fertility, is the player's cunt occupied by something]
	if player is not female, no;
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
					if player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if player is male]male[else]neuter[end if], now [breast size desc of player] breasts on your [bodytype of player] body. Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly. Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
			else if gestation of child < 15:
				say "[detailpregnancy]";
				if a random chance of 1 in 20 succeeds and ( breast size of player > 0 ):
					increase breast size of player by 1;
					follow breast descr rule;
					if player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if player is male]male[else]neuter[end if], now [breast size desc of player] breasts on your [bodytype of player] body.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly.";
			else if gestation of child < 30 or (gestation of child > 0 and a random chance of 1 in 3 succeeds):
				say "[detailpregnancy]";
				if a random chance of 1 in 30 succeeds and ( breast size of player > 0 ):
					increase breast size of player by 1;
					follow breast descr rule;
					if player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if player is male]male[else]neuter[end if], now [breast size desc of player] breasts.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of player], the mammary flesh stretched lightly.";
			if gestation of child < 1 and ( player is female or player is mpreg_ok ) and skipturnblocker is 0:
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
					if z > 4, now z is 4; [extra chance, still limited to 4]
					if ubpreg is not "false":
						now z is 1;
					if "Chase's Breeder" is listed in feats of player and ChaseOffspring is 0: [override for Chase's first kids]
						now z is 2;
					if "Fang's Mate" is listed in feats of player and hunger of Fang is 0:
						now z is 2;
					if z is 2:
						say "Twins![line break]";
						if pregtype is 2, increase mpregcount by 1; [more mpreg practice]
					else if z is 3:
						say "Triplets![line break]";
						if pregtype is 2, increase mpregcount by 2; [more mpreg practice]
					else if z is 4:
						say "Quadruplets![line break]";
						if pregtype is 2, increase mpregcount by 3; [more mpreg practice]
					repeat with y running from 1 to z:
						now child is born;
						Birth;
					increase score by 15; [15 base +5/child]
					extend game by 4;
					now pregtype is 0;
					if "Chris's Breeder Slut" is listed in feats of player:
						remove "Chris's Breeder Slut" from feats of player;
					else if "Human Carrier" is listed in feats of player:
						remove "Human Carrier" from feats of player;
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
		if player is not female:
			say "Your [bodytype of player] belly protrudes in a firm dome from your [if player is male]male[else]neuter[end if] pregnancy, full with [if snakehijack > 0][one of]your serpentine hijacker[or]the illegitimate occupant[or]the sneaky snake[as decreasingly likely outcomes][else]growing life[end if][if snakeocc > 1]s[end if] which will soon emerge into the world. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
		else:				[MPreg]
			say "Your [bodytype of player] belly protrudes in a firm dome of pregnancy, full of [if snakehijack > 0][one of]your serpentine hijacker[or]the illegitimate occupant[or]the sneaky snake[as decreasingly likely outcomes][else if ovipregnant is true]the growing egg[else]some unborn being[end if][if snakeocc > 1]s[end if], waiting to see the world, such as it is. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
	else if gestation of child < 10:
		if player is not female:
			say "Your [bodydesc of player] body is somewhat enlarged by the effects of your unusual pregnancy. It is progressing with worrying speed, but a strange sense of fulfillment keeps fear at bay.";
		else:
			say "Your [bodydesc of player] body is somewhat rounded with the effects of [if ovipregnant is true]what feels like an egg growing inside you[else]your oncoming pregnancy[end if]. It is progressing with worrying speed, but a warm sense of fulfillment keeps fear at bay.";
	else if gestation of child > 0:
		if player is not female:
			say "[one of]You feel a soft shifting of something inside your lower belly[or]Warm tingles gently run through your lower belly[at random].";
		else:
			say "[one of]You feel a soft shifting of something inside your lower belly[or]Warm tingles gently run through your lower belly[at random][if ovipregnant is true] as something hard and heavy shifts around inside you[end if].";

to say detailbirth:
	detailbirth;

to detailbirth:
	LineBreak;
	if "Fang's Mate" is listed in feats of player:
		if player is female and pregtype < 2:
			say "     With a sudden pouring of fluids, the time of [if ovipregnant is true]egg laying[else]birth[end if] arrives. You settle down without much choice, breathing quickly as your body spasms in readiness. As if he had sensed the imminent [if ovipregnant is true]egg laying[else]birth[end if], Fang appears beside you, his warm fur comforting in your grasp. You have no idea how he got here so quickly, but now isn't the time to question it.";
		else: [mpreg]
			say "     There is a shifting in your lower belly as your special incubation chamber opens, releasing something large and heavy into your bowels. With the completion of your unusual pregnancy fast approaching, you settle down without much choice, breathing quickly as your body spasms in readiness. As if he had sensed the imminent egg laying, Fang appears beside you, his warm fur comforting in your grasp. You have no idea how he got here so quickly, but now isn't the time to question it.";
		follow cunt descr rule;
		if player is female and pregtype < 2:
			if "All-Mother's Blessing" is listed in feats of player:
				say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All on their own, your arms come up in a holding pose, and as they do, the [if ovipregnant is true]large egg that has[else]two wolf pups that have[end if] been growing inside of you suddenly appear in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
			else if playercanub is true:
				say "     The powerful muscles in your altered, stretchable cunt have little difficulty with the birth, an act that becomes quite pleasurable for you. You simply recline and relax, letting your instincts take over as you easily push out the [if ovipregnant is true]large egg[else]two slimy wolf pups[end if] from your [bodytype of player] body. They slip out almost effortlessly along your well-lubricated tunnel, ready to be welcomed in your caring embrace.";
			else if cunt width of player > 10:
				say "     Your [descr] sex almost laughs at the idea of birth. You recline and concentrate, and your mutated [bodytype of player] body pushes the [if ovipregnant is true]large egg[else]two slimy wolf pups[end if] almost effortlessly out of your well-lubricated tunnel, ready to be welcomed in your caring embrace.";
				increase morale of player by 5;
			else if cunt width of player > 3:
				say "     You begin to realize why labor is called that. Huffing and pushing as best as you can, you slowly push the [if ovipregnant is true]large egg[else]newborns[end if] from your [descr] birthing canal. It is not as painful as the movies make out, and after about twenty minutes, the [if ovipregnant is true]egg is[else]two slimy wolf pups are[end if] ready to be held. You feel tired, but whole and satisfied.";
				increase morale of player by 5;
			else:
				say "     Horrible pain lances through your body as your [descr] sex disgorges the [if ovipregnant is true]large egg[else]children[end if] only after what feels like hours of struggle. Your [bodydesc of player] body covered in sweat, you are left exhausted and winded, but bearing [if ovipregnant is true]a large egg[else]two slimy wolf pups[end if].";
				now HP of player is 1;
				decrease morale of player by 10;
		else:
			if "All-Mother's Blessing" is listed in feats of player:
				say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All on their own, your arms come up in a holding pose, and as they do, the large egg that had been inside of you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
				increase mpregcount by 1;
			else if mpregcount < 3:			[First few times, painful]
				say "     Shifting the large mass through your lower colon sends horrible pain through your body as it struggles to adapt to this method of birthing. You claw at the ground and moan as your tight asshole is stretched and forced to open for the large egg. Your body squeezes and pushes as your [bodydesc of player] body is covered in sweat, and your [facename of player] face grimaces in pain with each painful shift. By the time you manage to push it free, you are left exhausted and winded, but have somehow managed to lay the noticeably big oval of an egg from your ass. Collapsed on your side, you gently caress the rocking egg as the shell which protected your child through this difficult passage starts to crack.";
				now HP of player is 1;
				decrease morale of player by 10;
				increase mpregcount by 1;
			else if mpregcount < 6:		[Next few times, struggle]
				say "     As you struggle with your unusual birthing, you huff and push as best you can, working to nudge the large egg onwards, working to expel it from your anus. It is not nearly as painful as the first few times, your [bodytype of player] body having become more adjusted to the process. After about twenty minutes of pushing and grunting, the egg is pushed free with only a little discomfort and even some pleasure as your body feels a rush of pride at having created new life. You hold the big egg in your arms, cradling it as the shell starts to crack.";
				increase morale of player by 5;
				increase mpregcount by 1;
			else:					[After that, easy]
				say "     Your well-practiced body has little trouble with the shifting and releasing of the egg. You recline and concentrate, feeling your [bodytype of player] body easily working the large egg along your lower bowels, into your rectum, before spreading your legs wide to pop it free of your anus. The egg pops free with some effort at the last step, but the process actually comes with considerable pleasure. As you pull the rocking, cracking egg into your arms, you [if player is male]can't help but feel considerable pride at what your male body has accomplished[else]can't help but feel considerable pride at what your neuter body has accomplished[end if].";
				increase morale of player by 5;
				increase mpregcount by 1;
	else:
		if player is female and pregtype < 2:
			say "     With a sudden pouring of fluids, [if ovipregnant is true]egglaying[else]birth[end if] is upon you. You settle without much choice, breathing quickly as your body spasms in readiness.";
		else: [mpreg]
			say "     There is a shifting in your lower belly as your special incubation chamber opens, releasing something large and heavy into your bowels. With the completion of your unusual pregnancy fast approaching, you settle without much choice, breathing quickly as your body spasms in readiness.";
		follow cunt descr rule;
		if player is female and pregtype < 2:
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
				say "     Shifting the large mass through your lower colon sends horrible pain through your body as it struggles to adapt to this method of birthing. You claw at the ground and moan as your tight asshole is stretched and forced to open for the large egg[if ubpreggers is 1] now encapsulating the engulfed [ubpreg][end if]. Your body squeezes and pushes as your [bodydesc of player] body is covered in sweat and you have a grimace of pain on your [facename of player] face with each painful shifting inside you. By the time you manage to push it free, you are left exhausted and winded, but have somehow managed to lay the noticeably big oval of your egg from your ass. Collapsed on your side, you gently caress the rocking egg as the shell which protected your child through this difficult passage starts to crack.";
				now HP of player is 1;
				decrease morale of player by 10;
				increase mpregcount by 1;
			else if mpregcount < 6:		[Next few times, struggle]
				say "     As you struggle with your unusual birthing, you huff and push as best you can during your unnatural labor, working to nudge the large egg onwards, working to expell it from your anus. It is not nearly as painful as your first few were, your [bodytype of player] body having become more adjusted to the process. After about twenty minutes of pushing and grunting, the egg is pushed free with a little discomfort and even some pleasure as your [if player is male]male[else]neuter[end if] body feels a rush of pride at having [if ubpreggers is 1]turned the captured [ubpreg] into your newest offspring[else]created a new life[end if]. You hold the big egg in your arms, cradling it as the shell starts to crack.";
				increase morale of player by 5;
				increase mpregcount by 1;
			else:					[After that, easy]
				say "     Your well-practiced body has little trouble with the shifting and releasing of the egg within you. You recline and concentrate, feeling your [bodytype of player] body easily working the large egg along your lower bowels, into your rectum before spreading your legs wide to pop it free of your anus. The egg pops free with some effort at the last step, but the process actually comes with considerable pleasure[if player is male], and you can't help but stroke yourself into cumming as the firm shell grinds and presses against your prostate as it moves[end if]. As you pull the rocking, cracking egg into your arms, you [if ubpreggers is 1]know it contains the [ubpreg] you unbirthed and have now remade into your offspring[else if player is male]can't help but feel considerable pride at what your male body has accomplished[else]can't help but feel considerable pride at what your neuter body has accomplished[end if].";
				increase morale of player by 5;
				increase mpregcount by 1;

To Birth:
	let infection be "";
	if "Maternal" is listed in feats of player:
		increase morale of player by 3;
	if snakehijack is 0 or "They Have Your Eyes" is listed in feats of player:
		if "Chase's Breeder" is listed in feats of player:
			now skinname of child is "Tiger";
			now bodyname of child is "Tiger";
			now tailname of child is "Tiger";
			now facename of child is "Tiger";
		else if "Fang's Mate" is listed in feats of player:
			now skinname of child is "Feral Wolf";
			now bodyname of child is "Feral Wolf";
			now tailname of child is "Feral Wolf";
			now facename of child is "Feral Wolf";
		else if "Chris's Breeder Slut" is listed in feats of player:
			now skinname of child is "Orc Warrior";
			now bodyname of child is "Orc Warrior";
			now tailname of child is "Orc Warrior";
			now facename of child is "Orc Warrior";
			increase ChrisPlayerOffspring by 1;
		else if "Human Carrier" is listed in feats of player:
			now skinname of child is "Human";
			now bodyname of child is "Human";
			now tailname of child is "Human";
			now facename of child is "Human";
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
	if (playercanub is true and ubpreg is not "false") or snakehijack > 0: [Unbirth and Snake Hijack]
		let wwvar be 0;
		if "Wild Womb" is listed in feats of player, let wwvar be 1;
		if player is female and pregtype < 2:
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
	else if "Chase's Breeder" is listed in feats of player: [special NPC impregnation]
		if player is female and pregtype < 2:
			say "     Vagina birth of the chosen one.";
		else if breasts of player > 0:
			say "     Anal birth of the chosen one - with boobs.";
		else:
			say "     Anal birth of the chosen one - no boobs.";
		if ChaseOffspring is 0:
			say "twin1";
		if ChaseOffspring is 1:
			say "twin2";
		else:
			say "regulars";
		increase ChaseOffspring by 1;
	else if "Fang's Mate" is listed in feats of player: [Special Pregnancy from Fang]
		if hunger of Fang is 1:
			if "All-Mother's Blessing" is listed in feats of player: [Appeared in arms]
				say "You and Fang watch in wonder as [if ovipregnant is true]the egg disintegrates, revealing a pair of wolf pups huddled together, [else]the pair of wolf pups disentangle themselves from each other in your arms, [end if]the two of you sharing a loving glance with each other. [if scalevalue of player > 1]You hold them against your chest, their mouths eagerly searching for a nipple. [else]They appear to still be growing, and you are forced to place them on the ground as they reach a size similar to your own, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			else if ovipregnant is true: [Hatched from Egg]
				say "As the shell of the egg slowly cracks, you and Fang watch in anticipation, occasionally sharing a loving glance at each other. Seemingly reaching a critical point, the egg crumbles, revealing the two infants huddled together inside, their fur coated in viscous fluid. [if scalevalue of player > 1]You lift them from the fragile shell, each fitting easily in your palm and gently hold them against your chest, their mouths eagerly searching for a nipple. [else]You approach your newborns, each only slightly smaller than you, but likely not for long, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. You have no idea how that egg managed to fit inside of you. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			else if pregtype is 1: [Normal Birth]
				say "Fang presses himself against your side as you both gaze adoringly at the two bundles of fur that are held in your hands after sharing a brief but intense kiss. The second one born seems to be grasping the other's tail in his mouth, bringing a small smile to your face. [if scalevalue of player > 1]You hold them against your chest, their mouths eagerly searching for a nipple. [else]They appear to still be growing, and you are forced to place them on the ground as they reach a size similar to your own, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			else if pregtype is 2: [Anal Birth]
				say "     As the shell of the egg slowly cracks, you and Fang watch in anticipation, occasionally sharing a loving glance at each other. Seemingly reaching a critical point, the egg crumbles, revealing the two infants huddled together inside, their fur coated in viscous fluid. [if scalevalue of player > 1]You lift them from the fragile shell, each fitting easily in your palm and gently hold them against your chest, their mouths eagerly searching for a nipple. [else]You approach your newborns, each only slightly than you, but likely not for long, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. You have no idea how that egg managed to fit inside of you. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			say "     You carefully slump to the ground, exhausted from childbirth, but elated at bringing such adorable puppies into the world. Fang lies down next to you, equally as proud of his children as you are, and you are sure that his bond with you will be even greater than it was before, especially if the heartfelt look that he is giving you is anything to go by. You begin to stroke your children's backs as you look at them for who they are. A quick inspection reveals that one of your puppies is male while the other is female, your son having dark-gray fur and being slightly larger than his pale-gray-furred sister. Their eyes have yet to open, and they don't even seem capable of making any noise, mouthing silently at the air as they try to express something that is not understandable to you. Seeming to know what they want, Fang nudges them against your chest and guides each to an exposed nipple. With gusto, they begin to suckle, gulping down mouthful after mouthful of rich milk. They let out soft sighs as they continue to feed, a steady dribble of milky bubbles spilling from the corners of their mouths.";
			now hunger of Fang is 2;
			WaitLineBreak;
		if hunger of Fang is 2:
			say "     A feeling of contentment fills you, and you tiredly caress your children's heads while they greedily drink. Fang rests his head on your knees, keenly watching the children with wide eyes as he takes in their shape and movements, committing them to memory. With a final suck, your daughter detaches from your nipple and curls into a ball on your lap, her face pressed against her father's. A few moments later, her brother joins her, curling himself around her side so that his head is beside Fang's too. The view in front of you fills you with such love for both of your children as well as your mate, and you relax to enjoy the moment while listening to the pups small breaths contrasting against the deeper sound of Fang's. You'll have to come up with a name for them, perhaps something to do with the shades of their fur? A memory of some Latin that you had learnt when you were younger comes back to you, remembering the words for light and shadow: Lux and Umbra. They seem good enough names for now, and you doubt that Fang will have much to say either way.";
			say "     You look up from gazing over your sleeping children to meet the yellow eyes of Fang, staring intently at you over the top of his pups. You can see the struggle he is facing to express everything he wants to say in just a look, not wanting to say anything that might disturb the children, and you're not sure whether he would have the vocabulary anyway. To your surprise, he gently eases his head from between your knee and Lux's face and stands up before approaching you. He tenderly licks your face, showing his appreciation and adoration for bearing his puppies and being his mate. He sits down beside you before speaking, 'Ours.' You earnestly agree with him. They are as much his as yours, two children that you both love, for both of you to raise, though you wonder whether you will have to stay at the library to do so, looking to Fang to see his opinion. He seems to know what you are thinking and shakes his head. 'I feed. I father.' You understand that as him saying that he will look after them while you are away, feeding and protecting them.";
			WaitLineBreak;
			say "     You rest there together for several hours, content to idly watch your children breathe and twitch in their sleep while you stroke Fang's side. Eventually they wake though, crawling around on the ground, letting out pitiful whines and squeaks as they blindly explore their surroundings. They seem to be staying together, though as they stray slightly further from you, it is Umbra in the lead, his sister determinedly staying near him but slightly behind. Feeling that they have strayed far enough, Fang walks over to them and lightly grasps them by their scruffs and carries them back to you, placing them on your lap again. You give your children a quick kiss before standing up, deciding that you should get back to doing something. The puppies seem sad, but Fang snuffles at them, settling them down easily. Telling your family that you'll see them soon, Fang escorts Lux and Umbra away. He'll likely keep them near to him in the library, but you should still visit them from time to time as they grow so that you can be part of their lives. They are both your children after all. Dusting yourself off and arranging yourself, you are ready to continue exploring the city.";
		increase hunger of Fang by 1;
		remove "Fang's Mate" from feats of player;
		now hp of Lux is 1;
		now hp of Umbra is 1;
		now LuxUmbraMaturityCounter is 120;
	else if "Wild Womb" is listed in feats of player:
		if player is female and pregtype < 2:
			say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of player] breast. Strange sensations sweep over your [bodytype of player] body as it drinks down its new mother's milk. A dark sense of fulfillment begins to creep though you as your newborn suckles at your teat, drawing not only nutrition but instinct and lust as they rapidly reach maturity. They pop free and stand, a feral look of wanton desire on their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin.";
		else if breasts of player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of player] body. A dark sense of fulfillment begins to creep though you as your newborn suckles at your teat, drawing not only nutrition but instinct and lust as they rapidly reach maturity. They pop free and stand, a feral look of wanton desire in their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin.";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of player] body strives to complete its task and begins to lactate temporarily to feed your offspring. A dark sense of fulfillment begins to creep though you as your newborn suckles at your teat, drawing not only nutrition but instinct and lust as they rapidly reach maturity. They pop free and stand, a feral look of wanton desire in their [facename of child] face as they inspect their [bodyname of child] form, covered in [skinname of child] skin.";
		say "     As your feral offspring stalks off into the city, leaving you to recover from the ordeal of childbirth, a part of you worries about your contribution to the ever growing number of creatures in the city...and yet, a part of you is awash in contentment, an instinctual need to propagate and spread your infection temporarily sated.";
	else: ["normal pregnancies"]
		if player is female and pregtype < 2:
			say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of player] breast. Strange sensations sweep over your [bodytype of player] body as it drinks down its new mother's milk. Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
		else if breasts of player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of player] body. Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of player] body strives to complete its task and begins to lactate temporarily to feed your offspring. As it feeds, it grows rapidly against you as strange sensations sweep over your body. Not only nutrition but personality and knowledge seep through the nipple into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their [facename of child] face and [bodyname of child] body, covered in [skinname of child] skin.";
		increase hunger of player by 3;
		increase thirst of player by 3;
	if "Wild Womb" is not listed in feats of player:
		if ("Chase's Breeder" is not listed in feats of player) and ("Fang's Mate" is not listed in feats of player):
			add facename of child to childrenfaces;
			add bodyname of child to childrenbodies;
			add skinname of child to childrenskins;
		if perception of player < 24, increase perception of player by 1;
	else:
		increase FeralBirths by 1;
		decrease humanity of player by 5;
	increase score by 5; [15 base +5/child]
	now child is not born;
	now gestation of child is 0;
	now ubpreg is "false";


Chapter 3-1 - Impregnation and Ovi-Impreg Subroutines

To impregnate with (x - text):
	if child is born or gestation of child > 0 or "Sterile" is listed in feats of player or larvaegg is 2 or ( cunts of player is 0 and player is not mpreg_ok ):
		stop the action;
	if player is not female and "MPreg" is listed in feats of player and ( level of Velos is 1 and HP of Velos > 2 ):
		stop the action;
	if "Cheerbreeder" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with a Football Wolfman child?";
			if player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
		now gestation of child is a random number from 24 to 48;
		now skinname of child is "Football Wolfman";
		now bodyname of child is "Football Wolfman";
		now tailname of child is "Football Wolfman";
		now facename of child is "Football Wolfman";
	else if "Chase's Breeder" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with a Tiger child?";
			if player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Chase's Breeder" from feats of player;
				stop the action;
		now gestation of child is a random number from 24 to 48;
		now skinname of child is "Tiger";
		now bodyname of child is "Tiger";
		now tailname of child is "Tiger";
		now facename of child is "Tiger";
	else if "Fang's Mate" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with Fang's child?";
			if player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Fang's Mate" from feats of player;
				now hunger of Fang is 0;
				stop the action;
		now gestation of child is a random number from 24 to 48;
		now skinname of child is "Feral Wolf";
		now bodyname of child is "Feral Wolf";
		now tailname of child is "Feral Wolf";
		now facename of child is "Feral Wolf";
	else if "Chris's Breeder Slut" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with an Orc Warrior child?";
			if player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Chris's Breeder Slut" from feats of player;
				stop the action;
		now gestation of child is a random number from 24 to 48;
		now skinname of child is "Orc Warrior";
		now bodyname of child is "Orc Warrior";
		now tailname of child is "Orc Warrior";
		now facename of child is "Orc Warrior";
	else if "Human Carrier" is listed in feats of player:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with a human child?";
			if player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Human Carrier" from feats of player;
				stop the action;
		now gestation of child is a random number from 24 to 48;
		now skinname of child is "Human";
		now bodyname of child is "Human";
		now tailname of child is "Human";
		now facename of child is "Human";
	else:
		if "Selective Mother" is listed in feats of player:
			say "Do you wish to be impregnated with a/an [x] child?";
			if player consents:
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
	if player is not female:
		say "[line break]     There is a pleasant sense of warmth from your lower belly, filling an emptiness you did not know was there.";
		if pregtype is 0, now pregtype is 2; [mpreg]
	else:
		say "[line break]     You have an odd feeling, a palpable wave of contentment from within your lower belly.";
		if pregtype is 0, now pregtype is 1; [fpreg]

Chapter 3-2 - Impregchance and Ovichance Routines

to say impregchance:		[General Pregnancy Routine]
	impregchance;

to impregchance:		[General Pregnancy Routine]
	if player is fpreg_able:
		say "[fimpregchance]";
	else if player is mpreg_able:
		say "[mimpregchance]";

To impregchance with (x - text):
	setmonster x;
	impregchance;

to say fimpregchance:		[Female-particular Pregnancy Roll]
	fimpregchance;

to fimpregchance:		[Female-particular Pregnancy Roll]
	if player is fpreg_able:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if "Fang's Mate" is listed in feats of player, decrease target by 10;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if playercanub is true, increase target by 1;
		choose row monster from the Table of Random Critters;
		if a random chance of 2 in target succeeds:
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now pregtype is 1; [fpreg]
			impregnate with name entry;
			if libido of player > 49:
				now libido of player is (libido of player) / 2;
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
		if "Fang's Mate" is listed in feats of player, decrease target by 10;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if playercanub is true, increase target by 1;
		choose row monster from the Table of Random Critters;
		if a random chance of 2 in target succeeds:
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now pregtype is 2; [mpreg]
			impregnate with name entry;
			if libido of player > 49:
				now libido of player is (libido of player) / 2;
			else if libido of player > 25:
				decrease libido of player by (libido of player / 10);
	now callovi is false;

to say selfimpregchance:
	selfimpregchance;

to selfimpregchance:
	if player is mpreg_able or player is fpreg_able:
		let target be 12; [tougher check]
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if playercanub is true, increase target by 1;
		choose row monster from the Table of Random Critters;
		if a random chance of 2 in target succeeds:
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now ovipregnant is false;
			selfimpregnate;
			if libido of player > 49:
				now libido of player is (libido of player) / 2;
			else if libido of player > 25:
				decrease libido of player by (libido of player / 10);
	now callovi is false;

to selfimpregnate:
	if player is not mpreg_able and player is not fpreg_able:
		stop the action;
	[if player is not female and "MPreg" is listed in feats of player and level of Velos is 1 and HP of Velos > 2:
		stop the action;]
	if "Selective Mother" is listed in feats of player:
		say "Do you wish to be self-impregnated?";
		if player consents:
			increase score by 0;
		else:
			say "You choose not to accept the seed.";
			if "Fang's Mate" is listed in feats of player:
				remove "Fang's Mate" from feats of player;
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
	sort Table of Random Critters in random order;
	now monster is 1;
	choose row monster from Table of Random Critters;
	while there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from Table of Random Critters;
		if there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[impregchance]";

to say randommimpreg:		[Use when only MPreg would work]
	randommimpreg;

to randommimpreg:		[Use when only MPreg would work]
	sort Table of Random Critters in random order;
	now monster is 1;
	choose row monster from Table of Random Critters;
	while there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from Table of Random Critters;
		if there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[mimpregchance]";

to say randomfimpreg:		[Use when only female pregnancy would work]
	randomfimpreg;

to randomfimpreg:		[Use when only female pregnancy would work]
	sort Table of Random Critters in random order;
	now monster is 1;
	choose row monster from Table of Random Critters;
	while there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from Table of Random Critters;
		if there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[fimpregchance]";

to say randomovi:		[random ovi-impregnation - use when either would work]
	randomovi;

to randomovi:		[random ovi-impregnation - use when either would work]
	sort Table of Random Critters in random order;
	now monster is 1;
	choose row monster from Table of Random Critters;
	while there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from Table of Random Critters;
		if there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[ovichance]";

to say randommovi:		[random ovi-impregnation - use when only MPreg would work]
	randommovi;

to randommovi:		[random ovi-impregnation - use when only MPreg would work]
	sort Table of Random Critters in random order;
	now monster is 1;
	choose row monster from Table of Random Critters;
	while there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from Table of Random Critters;
		if there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[movichance]";

to say randomfovi:		[random ovi-impregnation - use when only female pregnancy would work]
	randomfovi;

to randomfovi:		[random ovi-impregnation - use when only female pregnancy would work]
	sort Table of Random Critters in random order;
	now monster is 1;
	choose row monster from Table of Random Critters;
	while there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from Table of Random Critters;
		if there is a non-infectious in row monster of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[fovichance]";

Pregnancy ends here.
