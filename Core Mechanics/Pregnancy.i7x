Version 1 of Pregnancy by Core Mechanics begins here.
[Version 1.3 - Fix attempt for Mpreg + NPC issues - Stripes]

Chapter 0 - Impregnation Stand-in Character Shells

[For objects/tables and functions of player offspring, see Offspring.i7x]

Table of GameCharacterIDs (continued)
object	name
Impregnator	"Impregnator"
Impregnatee	"Impregnatee"
child	"child"
Impregnated Feral	"Impregnated Feral"

Impregnator is a creature.
The printed name of Impregnator is "Impregnator".

Impregnatee is a creature.
The printed name of Impregnatee is "Impregnatee".

Child is a creature.
The printed name of Child is "Child".
Child has a number called Gestation.
Child can be born. Child is not born.

Impregnated Feral is a creature. [standin character for pregnant enemies after combat sex]

an everyturn rule:
	if Libido of Impregnated Feral > 0: [knocked up by the player]
		decrease Libido of Impregnated Feral by 1; [counting down]
		if Libido of Impregnated Feral is 0: [birthing time]
			say "     [bold type]Out of the blue, a sudden thought strikes you, making you remember the [MainInfection of Impregnated Feral] you recently had carnal relations with. You don't know how or why exactly, but you feel certain that your encounter resulted in them becoming pregnant and giving birth to your offspring. Somewhere out there in the city, a new life has entered the world.[roman type][line break]";
			say "     While it is very unlikely that you will ever encounter your child - or the two of you will even recognize each other - you can't help but feel that they'll [one of]do great things[or]be an unholy terror[or]spread your genes far and wide[or]give you grandkids before long[or]dominate their surroundings[at random]. And whatever else, this is one more wild and feral inhabitant for the city, making it all the harder for the military to move in and regain control.";
			BehaviorCount "Breeder";
			extend game by a random number between 3 and 12;
			increase FeralBirths by 1;
			increase Score by 5;

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

[Lists of Child Body Parts - remnants of the previous system of tracking offspring (vs the current tables) - kept for backwards compatibility]
Childrenfaces is a list of text that varies.
Childrenskins is a list of text that varies.
Childrenbodies is a list of text that varies.

ovipregnant is a truth state that varies. ovipregnant is usually false.		[marks if ovi-pregnant now]
ovipregalways is a truth state that varies. ovipregalways is usually false.	[marks if allowed to pick always ovi]

mpregcount is a number that varies. [mpreg experience]

[Male and/or Female]

Definition: A person (called X) is impreg_ok: [Can X become pregnant in general. Male and/or Female]
	if X is fpreg_ok or X is mpreg_ok, yes;
	no;

Definition: A person (called X) is impreg_able: [Can X be impregnated RIGHT NOW. Male and/or Female]
	if X is fpreg_able or X is mpreg_able, yes;
	no;

Definition: A person (called X) is impreg_now: [Is X currently pregnant. Male and/or Female] [impreg_now and its variants should only be used for technical reasons - if an NPC is observing that the player might be pregnant (unless they know absolutely for sure that it's not a hijack) consider the vacant definitions instead]
	if X is fpreg_now or X is mpreg_now, yes;
	no;

Definition: A person (called X) is partial_vacant: [if EITHER male OR female vacant]
	if X is fem_vacant or X is male_vacant, yes;
	no;

Definition: A person (called X) is total_vacant: [if BOTH male AND female vacant]
	if X is fem_vacant and X is male_vacant, yes;
	no;

[Female/vaginal-particular]
Definition: A person (called X) is fpreg_ok: [Can the player become pregnant in general. Female]
	if X is Player:
		if Player is sterile, no; [not fertile]
		if Player is female, yes; [has pussy]
		no;
	else:
		if X is sterile, no; [not fertile]
		if X is female, yes; [has pussy]
		no;

Definition: A person (called X) is fpreg_able: [Can X be impregnated RIGHT NOW. Female]
	if X is Player:
		if Player is sterile, no; [not fertile]
		if Player is not female, no; [no pussy]
		if gestation of child > 0 or child is born, no; [currently pregnant]
		if preghijack is true, no; [Velos]
		if insectlarva is true and larvaegg is 2, no; [parasites]
		yes;
	else:
		if X is sterile, no; [not fertile]
		if X is not female, no; [no pussy]
		if ImpregTimer of X > 0, no; [currently pregnant]
		yes;

Definition: A person (called X) is fpreg_now: [Is X currently pregnant. Female]
	if X is Player:
		if gestation of child > 0 and pregtype is 1, yes; [currently pregnant]
		no;
	else:
		if X is not female, no; [no pussy]
		if ImpregTimer of X > 0, yes; [currently pregnant]
		no;

Definition: A person (called X) is fem_vacant: [Disregarding fertility, is X's cunt occupied by something]
	if X is Player:
		if Player is not female, no;
		if (gestation of child > 0 or child is born) and pregtype is 1, no;
		if preghijack is true, no;
		if insectlarva is true and larvaegg is 2, no;
		yes;
	else:
		if X is not female, no;
		if ImpregTimer of X > 0, no; [currently pregnant]
		yes;

[Male/Anal-particular]
Definition: A person (called X) is mpreg_ok: [Can X become pregnant in general. Male]
	if X is Player:
		if Player is sterile, no; [not fertile]
		if "MPreg" is listed in feats of Player, yes;
		no;
	else:
		if X is sterile, no;
		if "MPreg" is listed in traits of X, yes; [mpreg capable]
		no;

Definition: A person (called X) is mpreg_able: [Can X be impregnated RIGHT NOW. Male]
	if X is Player:
		if Player is sterile, no; [not fertile]
		if gestation of child > 0 or child is born, no; [currently pregnant]
		if mpreghijack is true, no; [Velos]
		if insectlarva is true and larvaegg is 2, no; [parasites]
		if "MPreg" is listed in feats of Player, yes; [mpreg capable]
		no;
	else:
		if X is sterile, no; [not fertile]
		if ImpregTimer of X > 0, no; [currently pregnant]
		if "MPreg" is listed in traits of X, yes; [mpreg capable]
		no;

Definition: A person (called X) is mpreg_now: [Is X currently pregnant. Male]
	if X is Player:
		if gestation of child > 0 and pregtype is 2, yes; [currently pregnant]
		no;
	else:
		if "MPreg" is listed in traits of X and ImpregTimer of X > 0, yes; [currently pregnant]
		no;

Definition: A person (called X) is male_vacant: [Disregarding fertility, is X's ass occupied by something]
	if X is Player:
		if mpreghijack is true, no; [Velos]
		if insectlarva is true and larvaegg is 2, no; [parasites]
		if (gestation of child > 0 or child is born) and pregtype is 2, no;
		yes;
	else:
		if "MPreg" is listed in traits of X and ImpregTimer of X > 0, no; [currently pregnant]
		yes;

preghijack is a truth state that varies. preghijack is usually false. [General-purpose variable for detailing a hijacked pregnancy]
mpreghijack is a truth state that varies. mpreghijack is usually false. [male/anal version]
hijackgestation is a number that varies.
ebwhelphijack is a number that varies. [ 0 = none, 1 = cunt, 2 = anal]
ebgatorhijack is a number that varies.
pregtype is a number that varies. [1 = female, 2 = male, 0 = guess]
callovi is a truth state that varies. callovi is usually false; [true = ovi pregnant]

Chapter 2 - Pregnancy/Birth Detailing and Protocols

to decide which text is random child gender:
	let GenderList be { "male", "female" };
	if MaleList is not warded and MaleList is not banned:
		add { "male", "male" } to GenderList;
	if FemaleList is not warded and FemaleList is not banned:
		add { "female", "female" } to GenderList;
	if HermList is not warded and HermList is not banned:
		add { "herm", "herm" } to GenderList;
	if TransList is not warded and TransList is not banned:
		add { "trans male", "trans female" } to GenderList;
	let ChildGenderRoll be a random number from 1 to the number of entries in GenderList;
	decide on "[entry ChildGenderRoll of GenderList]";

to decide which text is random child personality:
	let PersonalityList be { "friendly", "playful", "mean", "curious", "stubborn", "independent", "sassy", "assertive", "meek", "extroverted", "introverted", "mischievous" };
	let ChildPersonalityRoll be a random number from 1 to the number of entries in PersonalityList;
	decide on "[entry ChildPersonalityRoll of PersonalityList]";

to pregprotocol:
	if ebgatorhijack > 0 or ebwhelphijack > 0:
		decrease hijackgestation by 1;
		if ebwhelphijack > 0:
			ebwhelphijackroutine;
		else if ebgatorhijack > 0:
			ebgatorhijackroutine;
	if Player is impreg_now:
		if child is not born and gestation of child > 0:
			decrease gestation of child by 1;
			if "Fertile" is listed in feats of Player and a random chance of 1 in 2 succeeds, decrease gestation of child by 1;
			if "Maternal" is listed in feats of Player and a random chance of 1 in 3 succeeds, decrease gestation of child by 1;
			if gestation of child < 5:
				if ovipregnant is true and ovipreglevel is 1, now ovipregnant is false;
				if ovipregnant is false and ovipreglevel is 3, now ovipregnant is true;
				if gestation of child > 0, say "[detailpregnancy]";
				if a random chance of 1 in 10 succeeds and ( Breast Size of Player > 0 ): [cut the cunt requirement for cuntboys, breast size is enough]
					increase Breast Size of Player by 1;
					follow breast descr rule;
					if Player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if Player is male]male[else]a neuter[end if], now [breast size desc of Player] breasts on your [bodytype of Player] body. Pinching your nipples causes a little of the milk for feeding the child growing inside you to dribble out.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of Player], the mammary flesh stretched lightly. Pinching your nipples causes a little of the milk for feeding the child growing inside you to dribble out.";
			else if gestation of child < 15:
				say "[detailpregnancy]";
				if a random chance of 1 in 20 succeeds and ( Breast Size of Player > 0 ):
					increase Breast Size of Player by 1;
					follow breast descr rule;
					if Player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if Player is male]male[else]a neuter[end if], now [breast size desc of Player] breasts on your [bodytype of Player] body.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of Player], the mammary flesh stretched lightly.";
			else if gestation of child < 30 or (gestation of child > 0 and a random chance of 1 in 3 succeeds):
				say "[detailpregnancy]";
				if a random chance of 1 in 30 succeeds and ( Breast Size of Player > 0 ):
					increase Breast Size of Player by 1;
					follow breast descr rule;
					if Player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if Player is male]male[else]a neuter[end if], now [breast size desc of Player] breasts.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of Player], the mammary flesh stretched lightly.";
			if gestation of child < 1 and ( Player is female or Player is mpreg_ok ) and skipturnblocker is 0:
				if pregtype is 1 and Cunt Count of Player is 0:
					now pregtype is 2;
				say "[detailbirth]";
				if snakehijack is 0:
					let z be 1;
					let fer be 0;
					if "Fertile" is listed in feats of Player:
						increase fer by 3;
					if "Litter Bearer" is listed in feats of Player:
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
					if "Chase's Breeder" is listed in feats of Player and ChaseOffspring is 0: [override for Chase's first kids]
						now z is 2;
					if "Fang's Mate" is listed in feats of Player and hunger of Fang is 0:
						if hunger of Fang is 0:
							now z is 2;
						else:
							if a random chance of 1 in 8 succeeds:
								now z is 4;
								now FangNewPuppies is 4;
							else if a random chance of 1 in 4 succeeds:
								now z is 3;
								now FangNewPuppies is 3;
							else if a random chance of 1 in 2 succeeds:
								now z is 2;
								now FangNewPuppies is 2;
							else:
								now z is 1;
								now FangNewPuppies is 1;
					if z is 2:
						say "[line break][Bold Type]It's twins![Roman Type][line break][line break]";
						if pregtype is 2, increase mpregcount by 1; [more mpreg practice]
					else if z is 3:
						say "[line break][Bold Type]It's triplets![Roman Type][line break][line break]";
						if pregtype is 2, increase mpregcount by 2; [more mpreg practice]
					else if z is 4:
						say "[line break][Bold Type]It's quadruplets![Roman Type][line break][line break]";
						if pregtype is 2, increase mpregcount by 3; [more mpreg practice]
					repeat with y running from 1 to z:
						now child is born;
						Birth;
					increase score by 15; [15 base +5/child]
					extend game by 4;
					now pregtype is 0;
					[removing the once off special birthing feats]
					if "Human Carrier" is listed in feats of Player:
						remove "Human Carrier" from feats of Player;
					if "Chase's Breeder" is listed in feats of Player:
						remove "Chase's Breeder" from feats of Player;
					if "Chris's Breeder Slut" is listed in feats of Player:
						remove "Chris's Breeder Slut" from feats of Player;
					if "Fang's Mate" is listed in feats of Player and Fang is Male:
						remove "Fang's Mate" from feats of Player;
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
				if gestation of child < 0, now gestation of Child is 1;

to say detailpregnancy:
	detailpregnancy;

to detailpregnancy:
	LineBreak;
	if gestation of child < 5:
		if Player is not female:
			say "Your [bodytype of Player] belly protrudes in a firm dome from your [if Player is male]male[else]neuter[end if] pregnancy, full with [if snakehijack > 0][one of]your serpentine hijacker[or]the illegitimate occupant[or]the sneaky snake[as decreasingly likely outcomes][else]growing life[end if][if snakeocc > 1]s[end if] which will soon emerge into the world. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
		else:				[MPreg]
			say "Your [bodytype of Player] belly protrudes in a firm dome of pregnancy, full of [if snakehijack > 0][one of]your serpentine hijacker[or]the illegitimate occupant[or]the sneaky snake[as decreasingly likely outcomes][else if ovipregnant is true]the growing egg[else]some unborn being[end if][if snakeocc > 1]s[end if], waiting to see the world, such as it is. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
	else if gestation of child < 10:
		if Player is not female:
			say "Your [bodydesc of Player] body is somewhat enlarged by the effects of your unusual pregnancy. It is progressing with worrying speed, but a strange sense of fulfillment keeps fear at bay.";
		else:
			say "Your [bodydesc of Player] body is somewhat rounded with the effects of [if ovipregnant is true]what feels like an egg growing inside you[else]your oncoming pregnancy[end if]. It is progressing with worrying speed, but a warm sense of fulfillment keeps fear at bay.";
	else if gestation of child > 0:
		if Player is not female:
			say "[one of]You feel a soft shifting of something inside your lower belly[or]Warm tingles gently run through your lower belly[at random].";
		else:
			say "[one of]You feel a soft shifting of something inside your lower belly[or]Warm tingles gently run through your lower belly[at random][if ovipregnant is true] as something hard and heavy shifts around inside you[end if].";

to say detailbirth:
	detailbirth;
	BehaviorCount "Breeder";

to detailbirth:
	LineBreak;
	if Fang is Male and "Fang's Mate" is listed in feats of Player:
		if Player is female and pregtype < 2:
			say "     With a sudden pouring of fluids, the time of [if ovipregnant is true]egg laying[else]birth[end if] arrives. You settle down without much choice, breathing quickly as your body spasms in readiness. As if he had sensed the imminent [if ovipregnant is true]egg laying[else]birth[end if], Fang appears beside you, his warm fur comforting in your grasp. You have no idea how he got here so quickly, but now isn't the time to question it.";
		else: [mpreg]
			say "     There is a shifting in your lower belly as your special incubation chamber opens, releasing something large and heavy into your bowels. With the completion of your unusual pregnancy fast approaching, you settle down without much choice, breathing quickly as your body spasms in readiness. As if he had sensed the imminent egg laying, Fang appears beside you, his warm fur comforting in your grasp. You have no idea how he got here so quickly, but now isn't the time to question it.";
		follow cunt descr rule;
		if Player is female and pregtype < 2:
			if "All-Mother's Blessing" is listed in feats of Player:
				say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All on their own, your arms come up in a holding pose, and as they do, the [if ovipregnant is true]large egg that has[else]two wolf pups that have[end if] been growing inside of you suddenly appear in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
			else if Player can UB:
				say "     The powerful muscles in your altered, stretchable cunt have little difficulty with the birth, an act that becomes quite pleasurable for you. You simply recline and relax, letting your instincts take over as you easily push out the [if ovipregnant is true]large egg[else]two slimy wolf pups[end if] from your [bodytype of Player] body. They slip out almost effortlessly along your well-lubricated tunnel, ready to be welcomed in your caring embrace.";
			else if Cunt Tightness of Player > 10:
				say "     Your [descr] sex almost laughs at the idea of birth. You recline and concentrate, and your mutated [bodytype of Player] body pushes the [if ovipregnant is true]large egg[else]two slimy wolf pups[end if] almost effortlessly out of your well-lubricated tunnel, ready to be welcomed in your caring embrace.";
				increase morale of Player by 5;
			else if Cunt Tightness of Player > 3:
				say "     You begin to realize why labor is called that. Huffing and pushing as best as you can, you slowly push the [if ovipregnant is true]large egg[else]newborns[end if] from your [descr] birthing canal. It is not as painful as the movies make out, and after about twenty minutes, the [if ovipregnant is true]egg is[else]two slimy wolf pups are[end if] ready to be held. You feel tired, but whole and satisfied.";
				increase morale of Player by 5;
			else:
				say "     Horrible pain lances through your body as your [descr] sex disgorges the [if ovipregnant is true]large egg[else]children[end if] only after what feels like hours of struggle. Your [bodydesc of Player] body covered in sweat, you are left exhausted and winded, but bearing [if ovipregnant is true]a large egg[else]two slimy wolf pups[end if].";
				now HP of Player is 1;
				decrease morale of Player by 10;
		else:
			if "All-Mother's Blessing" is listed in feats of Player:
				say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All on their own, your arms come up in a holding pose, and as they do, the large egg that had been inside of you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
				increase mpregcount by 1;
			else if mpregcount < 3:			[First few times, painful]
				say "     Shifting the large mass through your lower colon sends horrible pain through your body as it struggles to adapt to this method of birthing. You claw at the ground and moan as your tight asshole is stretched and forced to open for the large egg. Your body squeezes and pushes as your [bodydesc of Player] body is covered in sweat, and your [FaceSpeciesName of Player in lower case] face grimaces in pain with each painful shift. By the time you manage to push it free, you are left exhausted and winded, but have somehow managed to lay the noticeably big oval of an egg from your ass. Collapsed on your side, you gently caress the rocking egg as the shell which protected your child through this difficult passage starts to crack.";
				now HP of Player is 1;
				decrease morale of Player by 10;
				increase mpregcount by 1;
			else if mpregcount < 6:		[Next few times, struggle]
				say "     As you struggle with your unusual birthing, you huff and push as best you can, working to nudge the large egg onwards, working to expel it from your anus. It is not nearly as painful as the first few times, your [bodytype of Player] body having become more adjusted to the process. After about twenty minutes of pushing and grunting, the egg is pushed free with only a little discomfort and even some pleasure as your body feels a rush of pride at having created new life. You hold the big egg in your arms, cradling it as the shell starts to crack.";
				increase morale of Player by 5;
				increase mpregcount by 1;
			else:					[After that, easy]
				say "     Your well-practiced body has little trouble with the shifting and releasing of the egg. You recline and concentrate, feeling your [bodytype of Player] body easily working the large egg along your lower bowels, into your rectum, before spreading your legs wide to pop it free of your anus. The egg pops free with some effort at the last step, but the process actually comes with considerable pleasure. As you pull the rocking, cracking egg into your arms, you [if Player is male]can't help but feel considerable pride at what your male body has accomplished[else]can't help but feel considerable pride at what your neuter body has accomplished[end if].";
				increase morale of Player by 5;
				increase mpregcount by 1;
	else:
		if Player is female and pregtype < 2:
			say "     With a sudden pouring of fluids, [if ovipregnant is true]egglaying[else]birth[end if] is upon you. You settle without much choice, breathing quickly as your body spasms in readiness.";
		else: [mpreg]
			say "     There is a shifting in your lower belly as your special incubation chamber opens, releasing something large and heavy into your bowels. With the completion of your unusual pregnancy fast approaching, you settle without much choice, breathing quickly as your body spasms in readiness.";
		follow cunt descr rule;
		if Player is female and pregtype < 2:
			if Player can UB and ubpreg is not "false":
				say "     Your altered, stretchable cunt with its powerful muscles quivers in echo to the pleasure you felt when it earlier consumed the [ubpreg] now leaving your womb[if ovipregnant is true] as a large egg[end if]. You recline and concentrate, feeling your mutated [bodytype of Player] body easily slipping your new child from it. Again, there is some effort, but it is far easier as they slip along your well-lubricated tunnel to enter your caring embrace.";
			else if "All-Mother's Blessing" is listed in feats of Player:
				say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All on their own, your arms come up in a holding pose, and as they do, the [if ovipregnant is true]large egg[else]child[end if] that has been growing inside you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
			else if Player can UB:
				say "     Your altered, stretchable cunt with its powerful muscles has little difficulty with the birth, an act that becomes quite pleasurable for you. You simply recline and relax, letting your instincts take over, slipping the [if ovipregnant is true]large egg[else]child[end if] easily free from your [bodytype of Player] body. They slip almost effortlessly along your well lubricated tunnel to reach your caring embrace.";
			else if Cunt Tightness of Player > 10:
				say "     Your [descr] sex almost laughs at the idea of birth. You recline and concentrate and can feel your mutated [bodytype of Player] body easily slipping the [if ovipregnant is true]large egg[else]child[end if] free of you, sliding almost effortlessly along your well lubricated tunnel to reach your caring embrace.";
				increase morale of Player by 5;
			else if Cunt Tightness of Player > 3:
				say "     You begin to realize why labor is called that, huffing and pushing as best as you can, slowly nudging the [if ovipregnant is true]large egg[else]newborn[end if] from your [descr] birthing canal. It is not as painful as the movies make out, and after about twenty minutes, the [if ovipregnant is true]egg[else]child[end if] is ready to be held by you. You feel tired, but whole, and satisfied.";
				increase morale of Player by 5;
			else:
				say "     Horrible pain lances through your body as your [descr] sex disgorges the [if ovipregnant is true]large egg[else]child[end if] only after what feels like hours of struggle. Your [bodydesc of Player] body covered in sweat, you are left exhausted and winded, but bearing a newborn.";
				now HP of Player is 1;
				decrease morale of Player by 10;
		else:
			let ubpreggers be 0;
			if Player can UB and ubpreg is not "false", now ubpreggers is 1;
			if "All-Mother's Blessing" is listed in feats of Player:
				say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All on their own, your arms come up in a holding pose, and as they do, the large egg[if ubpreggers is 1] now encapsulating the engulfed [ubpreg][end if] that had been inside you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
				increase mpregcount by 1;
			else if mpregcount < 3:			[First few times, painful]
				say "     Shifting the large mass through your lower colon sends horrible pain through your body as it struggles to adapt to this method of birthing. You claw at the ground and moan as your tight asshole is stretched and forced to open for the large egg[if ubpreggers is 1] now encapsulating the engulfed [ubpreg][end if]. Your body squeezes and pushes as your [bodydesc of Player] body is covered in sweat and you have a grimace of pain on your [FaceSpeciesName of Player in lower case] face with each painful shifting inside you. By the time you manage to push it free, you are left exhausted and winded, but have somehow managed to lay the noticeably big oval of your egg from your ass. Collapsed on your side, you gently caress the rocking egg as the shell which protected your child through this difficult passage starts to crack.";
				now HP of Player is 1;
				decrease morale of Player by 10;
				increase mpregcount by 1;
			else if mpregcount < 6:		[Next few times, struggle]
				say "     As you struggle with your unusual birthing, you huff and push as best you can during your unnatural labor, working to nudge the large egg onwards, working to expel it from your anus. It is not nearly as painful as your first few were, your [bodytype of Player] body having become more adjusted to the process. After about twenty minutes of pushing and grunting, the egg is pushed free with a little discomfort and even some pleasure as your [if Player is male]male[else]neuter[end if] body feels a rush of pride at having [if ubpreggers is 1]turned the captured [ubpreg] into your newest offspring[else]created a new life[end if]. You hold the big egg in your arms, cradling it as the shell starts to crack.";
				increase morale of Player by 5;
				increase mpregcount by 1;
			else:					[After that, easy]
				say "     Your well-practiced body has little trouble with the shifting and releasing of the egg within you. You recline and concentrate, feeling your [bodytype of Player] body easily working the large egg along your lower bowels, into your rectum before spreading your legs wide to pop it free of your anus. The egg pops free with some effort at the last step, but the process actually comes with considerable pleasure[if Player is male], and you can't help but stroke yourself into cumming as the firm shell grinds and presses against your prostate as it moves[end if]. As you pull the rocking, cracking egg into your arms, you [if ubpreggers is 1]know it contains the [ubpreg] you unbirthed and have now remade into your offspring[else if Player is male]can't help but feel considerable pride at what your male body has accomplished[else]can't help but feel considerable pride at what your neuter body has accomplished[end if].";
				increase morale of Player by 5;
				increase mpregcount by 1;

To Birth:
	if "Maternal" is listed in feats of Player:
		increase morale of Player by 3;
	[NOTE: add any and all exceptions from "They have your Eyes" HERE]
	if "Human Carrier" is not listed in feats of Player and "Chase's Breeder" is not listed in feats of Player and "Chris's Breeder Slut" is not listed in feats of Player and "Fang's Mate" is not listed in feats of Player and "CheerBreeder" is not listed in feats of Player and "Hive Breeder" is not listed in feats of Player: [none of the exceptions apply, so we can overwrite]
		if "They Have Your Eyes" is listed in feats of Player: [overwriting randoms, unbirthed creatures and snakes]
			SetInfectionsOf Child to infections of Player;
	[Pureblood check]
	let IsPureblood be false;
	if HeadSpeciesName of Child is TorsoSpeciesName of Child:
		if HeadSpeciesName of Child is BackSpeciesName of Child:
			if HeadSpeciesName of Child is ArmsSpeciesName of Child:
				if HeadSpeciesName of Child is LegsSpeciesName of Child:
					if HeadSpeciesName of Child is AssSpeciesName of Child:
						if HeadSpeciesName of Child is TailSpeciesName of Child:
							now IsPureblood is true;
	[gender]
	let ChildGender be random child gender;
	if ChildGender is "male":
		SetMalePronouns for Child;
	else if ChildGender is "female":
		SetFemalePronouns for Child;
	else:
		SetNeutralPronouns for Child;
	[override for special species with gender bias - expand HERE for new species]
	if Child has a body of "Platypus" and a random chance of 9 in 10 succeeds:
		now ChildGender is "male";
	else if (Child has a body of "Orc Warrior" or Child has a body of "Orc Breeder") and a random chance of 9 in 10 succeeds:
		now ChildGender is "male";
	else if Child has a body of "Harpy" and a random chance of 15 in 20 succeeds:
		now ChildGender is "female";
	else if Child has a body of "Blue Gryphon Herm" and a random chance of 15 in 20 succeeds:
		now ChildGender is "herm";
	[Checking for visible tails]
	let ShowTail be false;
	if there is a name of TailName of Child in the Table of New Infection Parts: [creature already in the new table]
		choose a row with Name of TailName of Child in the Table of New Infection Parts;
		if Tail Description entry is not "":
			now ShowTail is true;
	[Checking for visible legs]
	let ShowLegs be true;
	if there is a name of LegsName of Child in the Table of New Infection Parts: [creature already in the new table]
		choose a row with Name of LegsName of Child in the Table of New Infection Parts;
		if Locomotion entry is "serpentine" or Locomotion entry is "sliding":
			now ShowLegs is false;
	[personality]
	let IsFeral be false;
	if "Wild Womb" is listed in feats of Player:
		now IsFeral is true;
	let ChildPersonality be random child personality;
	let PlayerRelationship be "indifferent";
	if IsFeral is true:
		if a random chance of 1 in 2 succeeds:
			now PlayerRelationship is "indifferent";
		else:
			now PlayerRelationship is "wary";
	else:
		if a random chance of 1 in 2 succeeds:
			now PlayerRelationship is "loving";
		else:
			now PlayerRelationship is "affectionate";
	[genetic abnormalities]
	let IsAlbino be false;
	let HasMelanism be false;
	if a random chance of 3 in 100 succeeds:
		now IsAlbino is true;
	else if a random chance of 2 in 100 succeeds:
		now HasMelanism is true;
	[On to the birthing]
	LineBreak;
	if (Player can UB and ubpreg is not "false") or snakehijack > 0: [Unbirth and Snake Hijack]
		if Player is female and pregtype < 2:
			if Nipple Count of Player > 0 and Breast Size of Player > 0:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of Player] breast. Strange sensations sweep over your [bodytype of Player] body as it drinks down its new mother's milk. Having regressed partially during their time in your womb, they grow back to maturity while suckling[if IsFeral is true], giving you a dark sense of fulfillment[else], further strengthening their bond to you[end if]. They have not been left unchanged by their incubation within you";
			else:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms. It [end if]nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. Having regressed partially during their time in your womb, they grow back to maturity while suckling[if IsFeral is true], giving you a dark sense of fulfillment[else], further strengthening their bond to you[end if]. They have not been left unchanged by their incubation within you";
		else if Nipple Count of Player > 0 and Breast Size of Player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, drinking down its new mother's milk as strange sensations sweep over your [bodytype of Player] body. Having regressed partially during their time in your womb, they grow back to maturity while suckling[if IsFeral is true], giving you a dark sense of fulfillment[else], further strengthening their bond to you[end if]. They have not been left unchanged by their incubation within you";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. Having regressed partially during their time in your womb, they grow back to maturity while suckling";
		if IsFeral is true:
			say ". They pop free and stand, a feral look of wanton desire on their [HeadSpeciesName of Child] face as they stretch [if ShowLegs is true][ArmsSpeciesName of Child] arms and [LegsSpeciesName of Child] legs. [else]their [ArmsSpeciesName of Child] arms. [end if]";
			if IsPureblood is true:
				say "Taking it all in, you see your child is a pureblood [HeadSpeciesName of Child]";
			else:
				say "You see that your child has a [TorsoSpeciesName of Child] front, [BackSpeciesName of Child] back[if ShowTail is false] and a [AssSpeciesName of Child] behind[else], a [AssSpeciesName of Child] behind and a [TailSpeciesName of Child] tail[end if]";
		else:
			say ". They pop free and stand, smiling. With a slow turn, they show off their [HeadSpeciesName of Child] head, their [TorsoSpeciesName of Child] front and [BackSpeciesName of Child] back. ";
			if IsPureblood is true:
				say "Taking it all in, you see your child is a pureblood [HeadSpeciesName of Child]";
			else:
				if Showlegs is true:
					say "Your child has [if ShowTail is true][ArmsSpeciesName of Child] arms, [LegsSpeciesName of Child] legs and a [TailSpeciesName of Child] tail[else][ArmsSpeciesName of Child] arms and [LegsSpeciesName of Child] legs[end if]";
				else:
					say "Your child has [ArmsSpeciesName of Child] arms[if ShowTail is true] and a [TailSpeciesName of Child] tail[end if]";
		if snakehijack > 0 and "They Have Your Eyes" is listed in feats of Player:
			say ". It's clear that your influence has forcibly altered the once-snake to take on your appearance, a twisted fate for such a creature, who now assumes itself to be your legitimate offspring.";
		else if snakehijack > 0:
			say ". It's apparent that its prior act has caused the serpent to assume itself as one of your legitimate offspring, a twisted fate for such a creature.";
		else:
			say ".";
		if IsAlbino is true:
			say "     Their pigmentation is muted and almost white, except for the eyes that appear red. [bold type]They're an albino![roman type][line break]";
		else if HasMelanism is true:
			say "     Their pigmentation is almost pure black. [bold type]They've got melanism![roman type][line break]";
		LineBreak;
		say "     As you spend a little time with your 'offspring', you get the feeling that they have [a ChildPersonality] personality.";
	else if "Chase's Breeder" is listed in feats of Player: [special NPC impregnation]
		now IsFeral is false;
		if Player is female and pregtype < 2:
			say "     Vagina birth of the chosen one.";
		else if Nipple Count of Player > 0:
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
	else if "Chris's Breeder Slut" is listed in feats of Player: [Special Pregnancy from Warrior Chris]
		now IsFeral is false;
		if Player is female and pregtype < 2:
			if Nipple Count of Player > 0 and Breast Size of Player > 0:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of Player] breast. Strange sensations sweep over your [bodytype of Player] body as it drinks down its new mother's milk. ";
			else:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms. It [end if]nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. ";
		else if Nipple Count of Player > 0 and Breast Size of Player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of Player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of Player] body. ";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. As it feeds, it grows rapidly against you as strange sensations sweep over your body. ";
		say "Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. ";
		if IsPureblood is true:
			say "With a slow turn, they show off their pureblood [HeadSpeciesName of Child] form.";
		else:
			say "With a slow turn, they show off their [HeadSpeciesName of Child] head, their [TorsoSpeciesName of Child] front and [BackSpeciesName of Child] back. Your child has [ArmsSpeciesName of Child] arms, [LegsSpeciesName of Child] legs[if ShowTail is false] and a [AssSpeciesName of Child] behind[else], a [AssSpeciesName of Child] behind and a [TailSpeciesName of Child] tail[end if].";
		LineBreak;
		if Player is in Sitting Area and Chris is in Sitting Area:
			say "     The young buck of an orc warrior looks at you with a broad grin as he continues to show off a bit more, stroking his large hands over the muscle-packed form of his body, then finally gravitating to his crotch. Experimentally wrapping his fingers around the thick shaft, he gives it a few strokes and grunts in pleasure as it fills out to an impressive length of green-skinned man-meat. Winking at you as he lets go and the huge cock swings down between his legs, he then turns to Chris, who'd been watching the birth of his son from a few steps away up until now. 'That's my boy!' Chris bellows out for the world to hear as he steps up to embrace the young orc warrior. 'Time for some male bonding with dad. See ya later!' your green-skinned offspring says over his shoulder, then the two of them walk off, boasting and chatting like frat brothers with each other.";
		else:
			say "     The young buck of an orc warrior looks at you with a broad grin as he continues to show off a bit more, stroking his large hands over the muscle-packed form of his body, then finally gravitating to his crotch. Experimentally wrapping his fingers around the thick shaft, he gives it a few strokes and grunts in pleasure as it fills out to an impressive length of green-skinned man-meat. Winking at you as he lets go and the huge cock swings down between his legs, he says, [if Player is booked or player is bunkered]'I'll go say hello to dad now. See ya later!' [else]'I'll go say hello to dad now. Maybe fuck a guy or two on the way too. See ya later!' [end if]With that said, he wanders off, naked as a jaybird and erect, in an open challenge to anyone who might see him.";
		increase Stamina of Chris by 1;
		increase ChrisPlayerOffspring by 1;
	else if "Hive Breeder" is listed in feats of Player: [Special Pregnancy from wasp warrors]
		now IsFeral is false;
		if Player is female and pregtype < 2:
			if Nipple Count of Player > 0 and Breast Size of Player > 0:
				say "     Your child pushes free of the flexible shell enclosing it and you gather the strange larva into your arms so it may suckle at your [breast size desc of Player] breast. Strange sensations sweep over your [bodytype of Player] body as it drinks down its new mother's milk, growing from a featureless lump of pale flesh into something more wasp-like. ";
			else:
				say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring, bringing the featureless, pale larva through several stages of growth until it looks more wasp-like. ";
		else if Nipple Count of Player > 0 and Breast Size of Player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of Player] breast, growing rapidly from a featureless lump of pale flesh into something more wasp-like as strange sensations sweep over your [bodytype of Player] body. ";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. As it feeds, it grows rapidly from a featureless lump of pale flesh into something more wasp-like against you as strange sensations sweep over your body. ";
		say "Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. With a slow turn, they show off their pureblood [HeadSpeciesName of Child] form.";
		LineBreak;
		if Player is inWaspHive:
			say "     Stretching his wings, your offspring checks on you, entwining his antennae with yours before wandering off to take his place within the hive, [if thirst of Zant > 1]joining his brothers hard at work on repairing and expanding the walls[else] wandering off to find a way to make himself useful within your hive[end if].";
		else:
			say "     Stretching his wings, your offspring entwines antennae with you as if thanking you for his birth, then buzzes off in the direction of the hive, his nude body glistening in the [if daytimer is day]sunlight[else]moonlight[end if], still smooth and devoid of any of the fuzz you've grown used to seeing on yourself.";
		increase thirst of Zant by 1;
	else if Fang is Male and "Fang's Mate" is listed in feats of Player: [Special Pregnancy from Fang]
		now IsFeral is false;
		if hunger of Fang is 1:
			if "All-Mother's Blessing" is listed in feats of Player: [Appeared in arms]
				say "You and Fang watch in wonder as [if ovipregnant is true]the egg disintegrates, revealing a pair of wolf pups huddled together, [else]the pair of wolf pups disentangle themselves from each other in your arms, [end if]the two of you sharing a loving glance with each other. [if scalevalue of Player > 1]You hold them against your chest, their mouths eagerly searching for a nipple. [else]They appear to still be growing, and you are forced to place them on the ground as they reach a size similar to your own, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			else if ovipregnant is true: [Hatched from Egg]
				say "As the shell of the egg slowly cracks, you and Fang watch in anticipation, occasionally sharing a loving glance at each other. Seemingly reaching a critical point, the egg crumbles, revealing the two infants huddled together inside, their fur coated in viscous fluid. [if scalevalue of Player > 1]You lift them from the fragile shell, each fitting easily in your palm and gently hold them against your chest, their mouths eagerly searching for a nipple. [else]You approach your newborns, each only slightly smaller than you, but likely not for long, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. You have no idea how that egg managed to fit inside of you. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			else if pregtype is 1: [Normal Birth]
				say "Fang presses himself against your side as you both gaze adoringly at the two bundles of fur that are held in your hands after sharing a brief but intense kiss. The second one born seems to be grasping the other's tail in his mouth, bringing a small smile to your face. [if scalevalue of Player > 1]You hold them against your chest, their mouths eagerly searching for a nipple. [else]They appear to still be growing, and you are forced to place them on the ground as they reach a size similar to your own, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			else if pregtype is 2: [Anal Birth]
				say "     As the shell of the egg slowly cracks, you and Fang watch in anticipation, occasionally sharing a loving glance at each other. Seemingly reaching a critical point, the egg crumbles, revealing the two infants huddled together inside, their fur coated in viscous fluid. [if scalevalue of Player > 1]You lift them from the fragile shell, each fitting easily in your palm and gently hold them against your chest, their mouths eagerly searching for a nipple. [else]You approach your newborns, each only slightly smaller than you, but likely not for long, and they nuzzle at you, mouths eagerly searching for a nipple while you pet them. You have no idea how that egg managed to fit inside of you. [end if]Fang nudges your hand aside and begins to wash his children, his tongue clearing the excess slime from them and smearing his scent over their fur, marking them as his children as well as yours. You haven't seen him look at anyone as tenderly and with as much care as he is doing so now to his puppies.";
			say "     You carefully slump to the ground, exhausted from childbirth, but elated at bringing such adorable puppies into the world. Fang lies down next to you, equally as proud of his children as you are, and you are sure that his bond with you will be even greater than it was before, especially if the heartfelt look that he is giving you is anything to go by. You begin to stroke your children's backs as you look at them for who they are. A quick inspection reveals that one of your puppies is male while the other is female, your son having dark-gray fur and being slightly larger than his pale-gray-furred sister. Their eyes have yet to open, and they don't even seem capable of making any noise, mouthing silently at the air as they try to express something that is not understandable to you. Seeming to know what they want, Fang nudges them against your chest and guides each to an exposed nipple. With gusto, they begin to suckle, gulping down mouthful after mouthful of rich milk. They let out soft sighs as they continue to feed, a steady dribble of milky bubbles spilling from the corners of their mouths.";
			now hunger of Fang is 2;
			WaitLineBreak;
		if hunger of Fang is 2:
			say "     A feeling of contentment fills you, and you tiredly caress your children's heads while they greedily drink. Fang rests his head on your knees, keenly watching the children with wide eyes as he takes in their shape and movements, committing them to memory. With a final suck, your daughter detaches from your nipple and curls into a ball on your lap, her face pressed against her father's. A few moments later, her brother joins her, curling himself around her side so that his head is beside Fang's too. The view in front of you fills you with such love for both of your children as well as your mate, and you relax to enjoy the moment while listening to the pups small breaths contrasting against the deeper sound of Fang's. You'll have to come up with a name for them, perhaps something to do with the shades of their fur? A memory of some Latin that you had learnt when you were younger comes back to you, remembering the words for light and shadow: Lux and Umbra. They seem good enough names for now, and you doubt that Fang will have much to say either way.";
			say "     You look up from gazing over your sleeping children to meet the yellow eyes of Fang, staring intently at you over the top of his pups. You can see the struggle he is facing to express everything he wants to say in just a look, not wanting to say anything that might disturb the children, and you're not sure whether he would have the vocabulary anyway. To your surprise, he gently eases his head from between your knee and Lux's face and stands up before approaching you. He tenderly licks your face, showing his appreciation and adoration for bearing his puppies and being his mate. He sits down beside you before speaking, 'Ours.' You earnestly agree with him. They are as much his as yours, two children that you both love, for both of you to raise, though you wonder whether you will have to stay at the library to do so, looking to Fang to see his opinion. He seems to know what you are thinking and shakes his head. 'I feed. I father.' You understand that as him saying that he will look after them while you are away, feeding and protecting them.";
			WaitLineBreak;
			say "     You rest there together for several hours, content to idly watch your children breathe and twitch in their sleep while you stroke Fang's side. Eventually they wake though, crawling around on the ground, letting out pitiful whines and squeaks as they blindly explore their surroundings. They seem to be staying together, though as they stray slightly further from you, it is Umbra in the lead, his sister determinedly staying near him but slightly behind. Feeling that they have strayed far enough, Fang walks over to them and lightly grasps them by their scruffs and carries them back to you, placing them on your lap again. You give your children a quick kiss before standing up, deciding that you should get back to doing something. The puppies seem sad, but Fang snuffles at them, settling them down easily. Telling your family that you'll see them soon, Fang escorts Lux and Umbra away. He'll likely keep them near to him in the library, but you should still visit them from time to time as they grow so that you can be part of their lives. They are both your children after all. Dusting yourself off and arranging yourself, you are ready to continue exploring the city.";
			increase hunger of Fang by 1;
			increase Charisma of Fang by 2;
			now HP of Lux is 1;
			now HP of Umbra is 1;
			move Lux to Grey Abbey Library;
			move Umbra to Grey Abbey Library;
			now Charisma of Lux is 120;
		else if hunger of Fang is 3:
			increase Charisma of Fang by FangNewPuppies;
			now FangNewPuppies is 0;
	else if "Wild Womb" is listed in feats of Player:
		if Player is female and pregtype < 2:
			if Nipple Count of Player > 0:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of Player] breast. Strange sensations sweep over your [bodytype of Player] body as it drinks down its new mother's milk. ";
			else:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms. It [end if]nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. ";
		else if Nipple Count of Player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of Player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of Player] body. ";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. ";
		say "A dark sense of fulfillment begins to creep though you as your newborn suckles at your teat, drawing not only nutrition but instinct and lust as they rapidly reach maturity. ";
		if IsPureblood is true:
			say "They pop free and stand, a feral look of wanton desire on their [HeadSpeciesName of Child] face as they stretch their limbs. Taking your offspring in, you see that it is a pureblood [HeadSpeciesName of Child]. ";
		else:
			say "They pop free and stand, a feral look of wanton desire on their [HeadSpeciesName of Child] head as they stretch [if ShowLegs is true][ArmsSpeciesName of Child] arms and [LegsSpeciesName of Child] legs. [else]their [ArmsSpeciesName of Child] arms. [end if]You see that your child has a [TorsoSpeciesName of Child] front and [BackSpeciesName of Child] back, with a [AssSpeciesName of Child] behind[if ShowTail is true] and a [TailSpeciesName of Child] tail[end if]. ";
		if IsAlbino is true:
			say "Their pigmentation is muted and almost white, except for the eyes that appear red. [bold type]They're an albino![roman type][line break]";
		else if HasMelanism is true:
			say "Their pigmentation is almost pure black. [bold type]They've got melanism![roman type][line break]";
		LineBreak;
		say "     In the little time you spend with your offspring, you get the feeling that they have [a ChildPersonality] personality.";
	else: ["normal pregnancies"]
		if Player is female and pregtype < 2:
			if Nipple Count of Player > 0 and Breast Size of Player > 0:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of Player] breast. Strange sensations sweep over your [bodytype of Player] body as it drinks down its new mother's milk. ";
			else:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms. It [end if]nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. ";
		else if Nipple Count of Player > 0 and Breast Size of Player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of Player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of Player] body. ";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather it into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. As it feeds, it grows rapidly against you as strange sensations sweep over your body. ";
		say "Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. ";
		if IsPureblood is true:
			say "With a slow turn, they show off their pureblood [HeadSpeciesName of Child] form. ";
		else:
			say "With a slow turn, they show off their [HeadSpeciesName of Child] head, their [TorsoSpeciesName of Child] front and [BackSpeciesName of Child] back. ";
			if Showlegs is true:
				say "Your child has [if ShowTail is true][ArmsSpeciesName of Child] arms, [LegsSpeciesName of Child] legs and a [TailSpeciesName of Child] tail[else][ArmsSpeciesName of Child] arms and [LegsSpeciesName of Child] legs[end if]. ";
			else:
				say "Your child has [ArmsSpeciesName of Child] arms[if ShowTail is true] and a [TailSpeciesName of Child] tail[end if]. ";
		if IsAlbino is true:
			say "Their pigmentation is muted and almost white, except for the eyes that appear red. [bold type]They're an albino![roman type][line break]";
		else if HasMelanism is true:
			say "Their pigmentation is almost pure black. [bold type]They've got melanism![roman type][line break]";
		LineBreak;
		say "     As you spend a little time with your offspring, you get the feeling that they have [a ChildPersonality] personality.";
		increase hunger of Player by 3;
		increase thirst of Player by 3;
	if IsFeral is false:
		if ("Chase's Breeder" is not listed in feats of Player) and ("Fang's Mate" is not listed in feats of Player) and ("Chris's Breeder Slut" is not listed in feats of Player) and ("Hive Breeder" is not listed in feats of Player): [kids that run off to their fathers]
			say "[line break][bold type]Please name your ([ChildPersonality], [ChildGender]) child[roman type]> [run paragraph on]";
			get typed command as playerinput;
			now Name of Child is playerinput;
			let ChildName be Name of Child;
			if Name of Child is "", now ChildName is "your child";
			LineBreak;
			say "     [bold type]Do you want to keep [ChildName] with you as you roam the streets?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
			say "     [link](2)[as]2[end link] - Send [ObjectPro of Child] to safety in the bunker.";
			say "     [link](3)[as]3[end link] - [SubjectProCap of Child] need[if Child is not NProN]s[end if] to make [PosAdj of Child] own way.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)> [run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to take [ObjectPro of Child] along, [link]2[end link] to send [ObjectPro of Child] into the bunker or [link]3[end link] to send [ObjectPro of Child] away.";
			LineBreak;
			if calcnumber is 1: [coming along]
				say "     With a hug and a kiss on [ChildName]'s forehead, you tell [ObjectPro of Child] to stay with you, for all of your safety.";
				choose a blank row in the Table of PlayerChildren;
			else if calcnumber is 2: [bunker]
				say "     With a hug and a kiss on [ChildName]'s forehead, you tell [ObjectPro of Child] to go to the bunker under the Grey Abbey Library. There, [SubjectPro of Child][']ll be safe.";
				choose a blank row in the Table of PlayerBunkerChildren;
			else if calcnumber is 3: [send away]
				say "     After a long hug and with a heavy heart, you send [ChildName] to fend for [ObjectPro of Child][if Child is not NProN]self[else]selves[end if] out on the streets.";
				choose a blank row in the Table of PlayerRoamingChildren;
				now PlayerRelationship is "indifferent";
			now Name entry is Name of Child;
			now BirthTurn entry is turns;
			now Gender entry is ChildGender;
			now Head entry is HeadSpeciesName of Child;
			now Torso entry is TorsoSpeciesName of Child;
			now Back entry is BackSpeciesName of Child;
			now Arms entry is ArmsSpeciesName of Child;
			now Legs entry is LegsSpeciesName of Child;
			now Ass entry is AssSpeciesName of Child;
			now Tail entry is TailSpeciesName of Child;
			now ShowTail entry is ShowTail;
			now ShowLegs entry is ShowLegs;
			now Pureblood entry is IsPureblood;
			now Albino entry is IsAlbino;
			now Melanism entry is HasMelanism;
			now Personality entry is ChildPersonality;
			now PlayerRelationship entry is PlayerRelationship;
			now Feral entry is IsFeral;
			if number of filled rows in the Table of PlayerBunkerChildren > 0:
				move Offspring to Bunker;
			LineBreak;
		if perception of Player < 24, increase perception of Player by 1;
	else: [feral child]
		say "[line break][bold type]Please name your ([ChildPersonality], [ChildGender]) child[roman type]> [run paragraph on]";
		get typed command as playerinput;
		now Name of Child is playerinput;
		if (Player can UB and ubpreg is not "false") or snakehijack > 0: [Unbirth and Snake Hijack]
			if IsFeral is true:
				if snakehijack > 0:
					say "     Retaining its feral nature, it departs to stalk the city once more, leaving you to recover from the ordeal of childbirth. At the very least, its regression doesn't necessarily raise the number of creatures in the city, but you worry over who might end up a victim to that creature next";
				else:
					say "     As your rebirthed offspring stalks off into the city, returning to its feral ways, you are left to recover from the ordeal of childbirth. A part of you worries about what your offspring may do";
				say "... and yet, a part of you is awash in contentment, an instinctual need to transmit and spread your infection temporarily sated. Though you do become faintly aware of that emptiness inside your belly again.";
			else:
				say "     As your rebirthed offspring snuggles up beside you, you rest to recover from the ordeal of childbirth. Despite what you've done to the creature, you feel a contentment welling up inside you, your instinctual need to transmit your infection temporarily sated. Though you do become faintly aware of that emptiness inside your belly again.";
		else:
			say "     As your feral offspring stalks off into the city, leaving you to recover from the ordeal of childbirth, a part of you worries about your contribution to the ever growing number of creatures in the city... and yet, a part of you is awash in contentment, an instinctual need to propagate and spread your infection temporarily sated.";
		choose a blank row in the Table of PlayerRoamingChildren;
		now Name entry is Name of Child;
		now BirthTurn entry is turns;
		now Gender entry is ChildGender;
		now Head entry is HeadSpeciesName of Child;
		now Torso entry is TorsoSpeciesName of Child;
		now Back entry is BackSpeciesName of Child;
		now Arms entry is ArmsSpeciesName of Child;
		now Legs entry is LegsSpeciesName of Child;
		now Ass entry is AssSpeciesName of Child;
		now Tail entry is TailSpeciesName of Child;
		now ShowTail entry is ShowTail;
		now ShowLegs entry is ShowLegs;
		now Pureblood entry is IsPureblood;
		now Albino entry is IsAlbino;
		now Melanism entry is HasMelanism;
		now Personality entry is ChildPersonality;
		now Feral entry is IsFeral;
		increase FeralBirths by 1;
		SanLoss 5;
		LineBreak;
	increase score by 5; [15 base +5/child]
	now child is not born;
	now gestation of Child is 0;
	now ubpreg is "false";

Chapter 3-1 - Impregnation and Ovi-Impreg Subroutines

To impregnate with (x - text):
	if child is born or gestation of child > 0 or "Sterile" is listed in feats of Player or larvaegg is 2 or ( Cunt Count of Player is 0 and player is not mpreg_ok ):
		stop the action;
	if Player is not female and "MPreg" is listed in feats of Player and ( level of Velos is 1 and HP of Velos > 2 ):
		stop the action;
	if there is a name of x in the Table of Random Critters:
		choose a row with Name of x in the Table of Random Critters;
	else:
		say "ERROR: Creature [x] not found in the Table of Random Critters. Please report this on the FS Discord.";
		stop the action;
	if "Cheerbreeder" is listed in feats of Player:
		if "Selective Mother" is listed in feats of Player:
			say "Do you wish to be impregnated with a Football Wolfman child?";
			if Player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
		now gestation of Child is a random number from 24 to 48;
		SetInfectionsOf Child to "Football Wolfman";
	else if "Chase's Breeder" is listed in feats of Player:
		if "Selective Mother" is listed in feats of Player:
			say "Do you wish to be impregnated with a Tiger child?";
			if Player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Chase's Breeder" from feats of Player;
				stop the action;
		now gestation of Child is a random number from 24 to 48;
		SetInfectionsOf Child to "Tiger";
	else if "Fang's Mate" is listed in feats of Player and Fang is Male:
		if "Selective Mother" is listed in feats of Player:
			say "Do you wish to be impregnated with Fang's child?";
			if Player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Fang's Mate" from feats of Player;
				if hunger of Fang < 3:
					now hunger of Fang is 0;
				stop the action;
		now gestation of Child is a random number from 24 to 48;
		SetInfectionsOf Child to "Feral Wolf Male";
	else if "Chris's Breeder Slut" is listed in feats of Player:
		if "Selective Mother" is listed in feats of Player:
			say "Do you wish to be impregnated with an Orc Warrior child?";
			if Player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Chris's Breeder Slut" from feats of Player;
				stop the action;
		now gestation of Child is a random number from 24 to 48;
		SetInfectionsOf Child to "Orc Warrior";
	else if "Hive Breeder" is listed in feats of Player:
		if "Selective Mother" is listed in feats of Player:
			say "Do you wish to be impregnated with a Wasp Warrior child?";
			if Player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
		now gestation of Child is a random number from 24 to 48;
		SetInfectionsOf Child to "Wasp Warrior";
	else if "Human Carrier" is listed in feats of Player:
		if "Selective Mother" is listed in feats of Player:
			say "Do you wish to be impregnated with a human child?";
			if Player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				remove "Human Carrier" from feats of Player;
				stop the action;
		now gestation of Child is a random number from 24 to 48;
		SetInfectionsOf Child to "Human";
	else: [normal pregnancy]
		if "Selective Mother" is listed in feats of Player:
			if Species Name entry is not "":
				say "Do you wish to be impregnated with [a Species Name entry in lower case] child?";
			else:
				say "Do you wish to be impregnated with [a Name entry in lower case] child?";
			if Player consents:
				increase score by 0;
			else:
				say "You choose not to accept the seed.";
				stop the action;
		now gestation of Child is a random number from 24 to 48;
		[making sure all body parts are available]
		SetInfectionsOf Impregnatee to infections of Player;
		SetInfectionsOf Impregnator to x;
		if "Breeding True" is listed in feats of Player: [child will always look like the father]
			SetInfectionsOf Child to infections of Impregnator;
		else if "They Have Your Eyes" is listed in feats of Player: [child will always look like the player]
			SetInfectionsOf Child to infections of Impregnatee;
		else: [random choosing]
			SetInfectionsOf Child randomized between Impregnator and Impregnatee;
	if Player is not female:
		say "[line break]     There is a pleasant sense of warmth from your lower belly, filling an emptiness you did not know was there.";
		if pregtype is 0, now pregtype is 2; [mpreg]
	else:
		say "[line break]     You have an odd feeling, a palpable wave of contentment from within your lower belly.";
		if pregtype is 0, now pregtype is 1; [fpreg]

Chapter 3-2 - Impregchance and Ovichance Routines

to say impregchance:		[General Pregnancy Routine]
	impregchance;

to impregchance:		[General Pregnancy Routine]
	if Player is fpreg_able:
		say "[fimpregchance]";
	else if Player is mpreg_able:
		say "[mimpregchance]";

To impregchance with (x - text):
	setmonster x;
	impregchance;

to say fimpregchance:		[Female-particular Pregnancy Roll]
	fimpregchance;

to fimpregchance:		[Female-particular Pregnancy Roll]
	if Player is fpreg_able:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of Player, decrease target by 3;
		if "Fang's Mate" is listed in feats of Player, decrease target by 10;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if Player can UB, increase target by 1;
		choose row MonsterID from the Table of Random Critters;
		if DebugLevel > 4:
			say "     DEBUG: FPreg Roll of 2 in [target].";
		if a random chance of 2 in target succeeds:
			if DebugLevel > 4:
				say "     DEBUG: FPreg Successful.";
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now pregtype is 1; [fpreg]
			impregnate with Name entry;
			if Libido of Player > 49:
				now Libido of Player is (Libido of Player) / 2;
			else if Libido of Player > 25:
				decrease Libido of Player by (Libido of Player / 10);
	now callovi is false;

to say mimpregchance:		[MPreg-particular Pregnancy Roll]
	mimpregchance;

to mimpregchance:		[MPreg-particular Pregnancy Roll]
	if Player is mpreg_able:
		let target be 10;
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of Player, decrease target by 3;
		if "Fang's Mate" is listed in feats of Player, decrease target by 10;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if Player can UB, increase target by 1;
		choose row MonsterID from the Table of Random Critters;
		if DebugLevel > 4:
			say "     DEBUG: MPreg Roll of 2 in [target].";
		if a random chance of 2 in target succeeds:
			if DebugLevel > 4:
				say "     DEBUG: MPreg Successful.";
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now pregtype is 2; [mpreg]
			impregnate with Name entry;
			if Libido of Player > 49:
				now Libido of Player is (Libido of Player) / 2;
			else if Libido of Player > 25:
				decrease Libido of Player by (Libido of Player / 10);
	now callovi is false;

to say selfimpregchance:
	selfimpregchance;

to selfimpregchance:
	if Player is mpreg_able or player is fpreg_able:
		let target be 12; [tougher check]
		if insectlarva is true:
			increase target by 2 + larvaegg;
		if "Fertile" is listed in feats of Player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		if Player can UB, increase target by 1;
		if DebugLevel > 4:
			say "     DEBUG: SelfPreg Roll of 2 in [target].";
		if a random chance of 2 in target succeeds:
			if DebugLevel > 4:
				say "     DEBUG: SelfPreg Successful.";
			if callovi is true or ovipreglevel is 3:
				now ovipregnant is true;
			else:
				now ovipregnant is false;
			now ovipregnant is false;
			selfimpregnate;
			if Libido of Player > 49:
				now Libido of Player is (Libido of Player) / 2;
			else if Libido of Player > 25:
				decrease Libido of Player by (Libido of Player / 10);
	now callovi is false;

to selfimpregnate:
	if DebugLevel > 4:
		say "     DEBUG: Self-Impregnation.";
	if Player is not mpreg_able and player is not fpreg_able:
		stop the action;
	if "Selective Mother" is listed in feats of Player:
		say "Do you wish to be self-impregnated?";
		if Player consents:
			increase score by 0;
		else:
			say "You choose not to accept the seed.";
			stop the action;
	now gestation of Child is a random number from 24 to 48;
	SetInfectionsOf Child to infections of Player;
	say "[line break]     There is an odd sensation of warmth inside you and you get a pleasantly perverse feeling.";
	if Player is not female:
		if pregtype is 0, now pregtype is 2; [mpreg]
	else:
		if pregtype is 0, now pregtype is 1; [fpreg]

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
	if DebugLevel > 4:
		say "     DEBUG: Random F/M Impregnation.";
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[impregchance]";

to say randommimpreg:		[Use when only MPreg would work]
	randommimpreg;

to randommimpreg:		[Use when only MPreg would work]
	if DebugLevel > 4:
		say "     DEBUG: Random M Impregnation.";
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[mimpregchance]";

to say randomfimpreg:		[Use when only female pregnancy would work]
	randomfimpreg;

to randomfimpreg:		[Use when only female pregnancy would work]
	if DebugLevel > 4:
		say "     DEBUG: Random F Impregnation.";
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[fimpregchance]";

to say randomovi:		[random ovi-impregnation - use when either would work]
	randomovi;

to randomovi:		[random ovi-impregnation - use when either would work]
	if DebugLevel > 4:
		say "     DEBUG: Random Ovi Impregnation.";
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[ovichance]";

to say randommovi:		[random ovi-impregnation - use when only MPreg would work]
	randommovi;

to randommovi:		[random ovi-impregnation - use when only MPreg would work]
	if DebugLevel > 4:
		say "     DEBUG: Random Ovi M Impregnation.";
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[movichance]";

to say randomfovi:		[random ovi-impregnation - use when only female pregnancy would work]
	randomfovi;

to randomfovi:		[random ovi-impregnation - use when only female pregnancy would work]
	if DebugLevel > 4:
		say "     DEBUG: Random Ovi F Impregnation.";
	sort Table of Random Critters in random order;
	now MonsterID is 1;
	choose row MonsterID from Table of Random Critters;
	while there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
		increase MonsterID by 1;
		choose row MonsterID from Table of Random Critters;
		if there is a non-infectious in row MonsterID of Table of Random Critters and non-infectious entry is true:
			next;
		break;
	say "[fovichance]";

Pregnancy ends here.
