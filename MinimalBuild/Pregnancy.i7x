Version 1 of Pregnancy by MinimalBuild begins here.
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
			say "     [bold type]Out of the blue, a sudden thought strikes you, making you remember the [MainInfection of Impregnated Feral] you recently had carnal relations with. You don't know how or why exactly, but you feel certain that your encounter resulted in them becoming pregnant and giving birth to your offspring. Somewhere out there in the city, a new life as entered the world.[roman type][line break]";
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
		if (gestation of child > 0 and pregtype is 1) or child is born, no;
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
		if ("MPreg" is listed in feats of Player or "Mpreg" is listed in feats of Player), yes;
		no;
	else:
		if X is sterile, no;
		if ("MPreg" is listed in traits of X or "Mpreg" is listed in traits of X), yes; [mpreg capable]
		no;

Definition: A person (called X) is mpreg_able: [Can X be impregnated RIGHT NOW. Male]
	if X is Player:
		if Player is sterile, no; [not fertile]
		if gestation of child > 0 or child is born, no; [currently pregnant]
		if insectlarva is true and larvaegg is 2, no; [parasites]
		if ("MPreg" is listed in feats of Player or "Mpreg" is listed in feats of Player), yes; [mpreg capable]
		no;
	else:
		if X is sterile, no; [not fertile]
		if ImpregTimer of X > 0, no; [currently pregnant]
		if ("MPreg" is listed in traits of X or "Mpreg" is listed in traits of X), yes; [mpreg capable]
		no;

Definition: A person (called X) is mpreg_now: [Is X currently pregnant. Male]
	if X is Player:
		if gestation of child > 0 and pregtype is 2, yes; [currently pregnant]
		no;
	else:
		if ("MPreg" is listed in traits of X or "Mpreg" is listed in traits of X) and ImpregTimer of X > 0, yes; [currently pregnant]
		no;

Definition: A person (called X) is male_vacant: [Disregarding fertility, is X's ass occupied by something]
	if X is Player:
		if insectlarva is true and larvaegg is 2, no; [parasites]
		if (gestation of child > 0 and pregtype is 2) or child is born, no;
		yes;
	else:
		if ("MPreg" is listed in traits of X or "Mpreg" is listed in traits of X) and ImpregTimer of X > 0, no; [currently pregnant]
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
	let GenderList be { "male", "male", "male", "female", "female", "female" };
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
				say "[detailpregnancy]";
				if a random chance of 1 in 10 succeeds and ( Breast Size of Player > 0 ): [cut the cunt requirement for cuntboys, breast size is enough]
					increase Breast Size of Player by 1;
					follow breast descr rule;
					if Player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if Player is male]male[else]neuter[end if], now [breast size desc of Player] breasts on your [bodytype of Player] body. Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of Player], the mammary flesh stretched lightly. Pinching your nipples causes a little of the milk to feed the child growing inside you to dribble out.";
			else if gestation of child < 15:
				say "[detailpregnancy]";
				if a random chance of 1 in 20 succeeds and ( Breast Size of Player > 0 ):
					increase Breast Size of Player by 1;
					follow breast descr rule;
					if Player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if Player is male]male[else]neuter[end if], now [breast size desc of Player] breasts on your [bodytype of Player] body.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of Player], the mammary flesh stretched lightly.";
			else if gestation of child < 30 or (gestation of child > 0 and a random chance of 1 in 3 succeeds):
				say "[detailpregnancy]";
				if a random chance of 1 in 30 succeeds and ( Breast Size of Player > 0 ):
					increase Breast Size of Player by 1;
					follow breast descr rule;
					if Player is not female:
						say "Your breasts feel especially tender and you are surprised to find them swelling larger despite being [if Player is male]male[else]neuter[end if], now [breast size desc of Player] breasts.";
					else:
						say "Your breasts feel especially tender, swollen with your condition, now [breast size desc of Player], the mammary flesh stretched lightly.";
			if gestation of child < 1 and ( Player is female or Player is mpreg_ok ) and skipturnblocker is 0:
				if pregtype is 1 and Cunt Count of Player is 0:
					now pregtype is 2;
				say "[detailbirth]";
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
			else:
				if gestation of child < 0, now gestation of Child is 1;

to say detailpregnancy:
	detailpregnancy;

to detailpregnancy:
	LineBreak;
	if gestation of child < 5:
		if Player is not female:
			say "Your [bodytype of Player] belly protrudes in a firm dome from your [if Player is male]male[else]neuter[end if] pregnancy, full with which will soon emerge into the world. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
		else:				[MPreg]
			say "Your [bodytype of Player] belly protrudes in a firm dome of pregnancy, full of [if ovipregnant is true]the growing egg[else]some unborn being[end if], waiting to see the world, such as it is. Somehow, perhaps due to the nanites, you don't feel at all hindered despite being bloated.";
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
	if Player is female and pregtype < 2:
		say "     With a sudden pouring of fluids, [if ovipregnant is true]egglaying[else]birth[end if] is upon you. You settle without much choice, breathing quickly as your body spasms in readiness.";
	else: [mpreg]
		say "     There is a shifting in your lower belly as your special incubation chamber opens, releasing something large and heavy into your bowels. With the completion of your unusual pregnancy fast approaching, you settle without much choice, breathing quickly as your body spasms in readiness.";
	follow cunt descr rule;
	if Player is female and pregtype < 2:
		if "All-Mother's Blessing" is listed in feats of Player:
			say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All of their own, your arms come up in a holding pose, and as they do, the [if ovipregnant is true]large egg[else]child[end if] that has been growing inside you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
		else if Cunt Tightness of Player > 10:
			say "     Your [descr] sex almost laughs at the idea of birth. You recline and concentrate and can feel your mutated [bodytype of Player] body easily slipping the [if ovipregnant is true]large egg[else]child[end if] free of you, slipping almost effortlessly along your well lubricated tunnel to reach your caring embrace.";
			increase morale of Player by 5;
		else if Cunt Tightness of Player > 3:
			say "     You begin to realize why labor is called that, huffing and pushing as best as you can, slowly nudging the [if ovipregnant is true]large egg[else]newborn[end if] from your [descr] birthing canal. It is not as painful as the movies make out, and after about twenty minutes, the [if ovipregnant is true]egg[else]child[end if] is ready to be held by you. You feel tired, but whole, and satisfied.";
			increase morale of Player by 5;
		else:
			say "     Horrible pain lances through your body as your [descr] sex disgorges the [if ovipregnant is true]large egg[else]child[end if] only after what feels like hours of struggle. Your [bodydesc of Player] body covered in sweat, you are left exhausted and winded, but bearing a newborn.";
			now HP of Player is 1;
			decrease morale of Player by 10;
	else:
		if "All-Mother's Blessing" is listed in feats of Player:
			say "     A radiant glow starts to spread over your belly, settling into the shape of a five-pointed star. Any sense of discomfort brought on by the impending birth vanishes without a trace as pleasant warmth suffuses your whole being. All of their own, your arms come up in a holding pose, and as they do, the large egg that had been inside you suddenly appears in your grasp. After such an effortless birth, you joyfully hug your offspring in a caring embrace.";
			increase mpregcount by 1;
		else if mpregcount < 3:			[First few times, painful]
			say "     Shifting the large mass through your lower colon sends horrible pain through your body as it struggles to adapt to this method of birthing. You claw at the ground and moan as your tight asshole is stretched and forced to open for the large egg. Your body squeezes and pushes as your [bodydesc of Player] body is covered in sweat and you have a grimace of pain on your [FaceSpeciesName of Player in lower case] face with each painful shifting inside you. By the time you manage to push it free, you are left exhausted and winded, but have somehow managed to lay the noticeably big oval of your egg from your ass. Collapsed on your side, you gently caress the rocking egg as the shell which protected your child through this difficult passage starts to crack.";
			now HP of Player is 1;
			decrease morale of Player by 10;
			increase mpregcount by 1;
		else if mpregcount < 6:		[Next few times, struggle]
			say "     As you struggle with your unusual birthing, you huff and push as best you can during your unnatural labor, working to nudge the large egg onwards, working to expell it from your anus. It is not nearly as painful as your first few were, your [bodytype of Player] body having become more adjusted to the process. After about twenty minutes of pushing and grunting, the egg is pushed free with a little discomfort and even some pleasure as your [if Player is male]male[else]neuter[end if] body feels a rush of pride at having. You hold the big egg in your arms, cradling it as the shell starts to crack.";
			increase morale of Player by 5;
			increase mpregcount by 1;
		else:					[After that, easy]
			say "     Your well-practiced body has little trouble with the shifting and releasing of the egg within you. You recline and concentrate, feeling your [bodytype of Player] body easily working the large egg along your lower bowels, into your rectum before spreading your legs wide to pop it free of your anus. The egg pops free with some effort at the last step, but the process actually comes with considerable pleasure[if Player is male], and you can't help but stroke yourself into cumming as the firm shell grinds and presses against your prostate as it moves[end if]. As you pull the rocking, cracking egg into your arms, you [if Player is male]can't help but feel considerable pride at what your male body has accomplished[else]can't help but feel considerable pride at what your neuter body has accomplished[end if].";
			increase morale of Player by 5;
			increase mpregcount by 1;

To Birth:
	if "Maternal" is listed in feats of Player:
		increase morale of Player by 3;
	[NOTE: add any and all exceptions from "They have your Eyes" HERE]
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
	[override for special species with gender bias - expand HERE for new species]
	if Child has a body of "Platypus" and a random chance of 9 in 10 succeeds:
		now ChildGender is "male";
	if Child has a body of "Orc Warrior" or Child has a body of "Orc Breeder" and a random chance of 9 in 10 succeeds:
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
	if "Wild Womb" is listed in feats of Player:
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
			say "They pop free and stand, a feral look of wanton desire on their [HeadSpeciesName of Child] face as they stretch their limbs. Taking your offspring in, you see that it is a pureblood [HeadSpeciesName of Child].";
		else:
			say "They pop free and stand, a feral look of wanton desire on their [HeadSpeciesName of Child] head as they stretch [if ShowLegs is true][ArmsSpeciesName of Child] arms and [LegsSpeciesName of Child] legs. [else]their [ArmsSpeciesName of Child] arms. [end if]You see that your child has a [TorsoSpeciesName of Child] front and [BackSpeciesName of Child] back, with a [AssSpeciesName of Child] behind[if ShowTail is true] and a [TailSpeciesName of Child] tail[end if].";
		if IsAlbino is true:
			say "Their pigmentation is muted and almost white, except for the eyes that appear red. [bold type]They're an albino![roman type]";
		else if HasMelanism is true:
			say "Their pigmentation is almost pure black. [bold type]They've got melanism![roman type]";
		LineBreak;
		say "In the little time you spend with your offspring, you get the feeling that they have a [ChildPersonality] personality.";
	else: ["normal pregnancies"]
		if Player is female and pregtype < 2:
			if Nipple Count of Player > 0:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms so it may suckle[else]suckles[end if] at your [breast size desc of Player] breast. Strange sensations sweep over your [bodytype of Player] body as it drinks down its new mother's milk. ";
			else:
				say "     Your child [if ovipregnant is true]pushes free of the flexible shell enclosing it and you gather it into your arms. It [end if]nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. ";
		else if Nipple Count of Player > 0:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It starts to suckle at your [breast size desc of Player] breast, growing rapidly against you as strange sensations sweep over your [bodytype of Player] body. ";
		else:
			say "     Your child pushes free of the flexible shell enclosing it and you gather into your arms, feeling a strong affection for your bizarrely born child. It nuzzles at your chest and starts nursing, struggling for a while to draw milk from your flat chest, but your [bodytype of Player] body strives to complete its task and begins to lactate temporarily to feed your offspring. As it feeds, it grows rapidly against you as strange sensations sweep over your body. ";
		say "Not only nutrition but personality and knowledge seep through the teat into the newborn, who is not newborn for long, soon a young adult. They pop free and stand, smiling. ";
		if IsPureblood is true:
			say "With a slow turn, they show off their pureblood [HeadSpeciesName of Child] form.";
		else:
			say "With a slow turn, they show off their [HeadSpeciesName of Child] head, their [TorsoSpeciesName of Child] front and [BackSpeciesName of Child] back. ";
			if Showlegs is true:
				say "Your child has [if ShowTail is true][ArmsSpeciesName of Child] arms, [LegsSpeciesName of Child] legs and a [TailSpeciesName of Child] tail[else][ArmsSpeciesName of Child] arms and [LegsSpeciesName of Child] legs[end if].";
			else:
				say "Your child has [ArmsSpeciesName of Child] arms[if ShowTail is true] and a [TailSpeciesName of Child] tail[end if].";
		if IsAlbino is true:
			say "Their pigmentation is muted and almost white, except for the eyes that appear red. [bold type]They're an albino![roman type]";
		else if HasMelanism is true:
			say "Their pigmentation is almost pure black. [bold type]They've got melanism![roman type]";
		LineBreak;
		say "As you spend a little time with your offspring, you get the feeling that they have a [ChildPersonality] personality.";
		increase hunger of Player by 3;
		increase thirst of Player by 3;
	if IsFeral is false:
		LineBreak;
		say "[bold type]Please name your ([ChildPersonality], [ChildGender]) child: [roman type]";
		get typed command as playerinput;
		now Name of Child is playerinput;
		LineBreak;
		say "     [bold type]Do you want to keep your child with you as you roam the streets?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Yes, strength in numbers!";
		say "     [link](2)[as]2[end link] - Send them to safety in the bunker.";
		say "     [link](3)[as]3[end link] - They need to make their own way.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to take them along, [link]2[end link] to send them into the bunker or [link]3[end link] to send them away.";
		if calcnumber is 1: [coming along]
			say "     With a hug and a kiss on your child's forehead, you tell them to stay with you, for all of your safety.";
			choose a blank row in the Table of PlayerChildren;
		else if calcnumber is 2: [bunker]
			say "     With a hug and a kiss on your child's forehead, you tell them to go to the bunker under the Grey Abbey Library. There, they'll be safe.";
			choose a blank row in the Table of PlayerBunkerChildren;
		else if calcnumber is 3: [send away]
			say "     After a long hug and with a heavy heart, you send your child to fend for themselves out on the streets.";
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
		LineBreak;
		say "[bold type]Please name your ([ChildPersonality], [ChildGender]) child: [roman type]";
		get typed command as playerinput;
		now Name of Child is playerinput;
		say "     As your feral offspring stalks off into the city, leaving you to recover from the ordeal of childbirth, a part of you worries about your contribution to the ever growing number of creatures in the city...and yet, a part of you is awash in contentment, an instinctual need to propagate and spread your infection temporarily sated.";
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
	increase score by 5; [15 base +5/child]
	now child is not born;
	now gestation of Child is 0;

Chapter 3-1 - Impregnation and Ovi-Impreg Subroutines

To impregnate with (x - text):
	if child is born or gestation of child > 0 or "Sterile" is listed in feats of Player or larvaegg is 2 or ( Cunt Count of Player is 0 and player is not mpreg_ok ):
		stop the action;
	if Player is not female and ("MPreg" is listed in feats of Player or "Mpreg" is listed in feats of Player):
		stop the action;
	if there is a name of x in the Table of Random Critters:
		choose a row with Name of x in the Table of Random Critters;
	else:
		say "ERROR: Creature [x] not found in the Table of Random Critters. Please report this on the FS Discord.";
		stop the action;
	if "Selective Mother" is listed in feats of Player:
		if Species Name entry is not "":
			say "Do you wish to be impregnated with a/an [Species Name entry] child?";
		else:
			say "Do you wish to be impregnated with a/an [Name entry] child?";
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
		if "Fertile" is listed in feats of Player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
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
		if "Fertile" is listed in feats of Player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
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
		if "Fertile" is listed in feats of Player, decrease target by 3;
		if inheat is true, decrease target by 3;
		if inheat is true and heatlevel is 3, decrease target by 1;
		choose row MonsterID from the Table of Random Critters;
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
