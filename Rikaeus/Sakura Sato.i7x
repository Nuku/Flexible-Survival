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
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Sakura Sato";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
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
	now cocks entry is 0;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 0;         [ Length infection will make cock grow to if cocks]
	now cock width entry is 0;          [ Size of balls ]
	now breasts entry is 2;             [ Number of Breasts infection will give you. ]
	now breast size entry is 4;         [ Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;               [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;         [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 0;          [ Width of female sex infection will try and give you ]
	now libido entry is 25;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Loot monster drops, ]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]toned[or]lithe[or]slender[at random]";
	now type entry is "human";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;   [ Row used to designate any special combat features, "default" for standard combat. ]

Sakura Sato ends here.
