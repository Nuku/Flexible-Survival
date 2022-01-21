Version 1 of Sakura Sato by Rikaeus begins here.
[Version 1 - Impletation of Fight Stats of Sakura]

to say SakuraSatoLoses:
	if inasituation is true:
		stop the action; [solved in event]
	say ""; [for now]

to say SakuraSatoWins:
	if inasituation is true:
		stop the action; [solved in event]
	say ""; [for now]

to say SakuraSatoDesc:
	if inasituation is true:
		say "     The person in front of you in the lecture hall is very different from all the other anime babes, first and foremost she has a much more toned body to her lithe form. Second of all, she's not wearing the stereotypical schoolgirl uniform. Rather, she's wearing a long sleeved blue sweater and a pair of jeans, both of which are splattered with paint. She seems very determined to get you to leave, so you better be ready for a fight.";
	else:
		say ""; [for now]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human"; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Sakura Sato";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]With the grace of a track runner the lithe girl dashes to you and launches into a kick![or]Turning her eyes towards one of the desks she suddenly throws it in your direction![or]The artistic girl quickly moves into a handspring and lands feet first onto your face.[or]Grabbing one of her paint brushes she uses it as a makeshift shank and slams it into your side for maximum pain![at random]";
	now defeated entry is "[SakuraSatoLoses]";
	now victory entry is "[SakuraSatoWins]";
	now desc entry is "[SakuraSatoDesc]";
	now face entry is "<Noninfective>";
	now body entry is "<Noninfective>";
	now skin entry is "<Noninfective>";
	now tail entry is "<Noninfective>";
	now cock entry is "<Noninfective>";
	now face change entry is "<Noninfective>";
	now body change entry is "<Noninfective>";
	now skin change entry is "<Noninfective>";
	now ass change entry is "<Noninfective>";
	now cock change entry is "<Noninfective>";
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 8;
	now cha entry is 15;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;                 [ How many HP has the monster got? ]
	now lev entry is 10;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 11;                [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";      [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;         [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]          [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 25;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]toned[or]lithe[or]slender[at random]";
	now type entry is "human";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


   [ Row used to designate any special combat features, "default" for standard combat. ]

Sakura Sato ends here.
