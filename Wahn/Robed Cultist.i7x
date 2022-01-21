Version 1 of Robed Cultist by Wahn begins here.
[Version 1 - New creature]

"Adds a Robed Cultist to Flexible Survival's Wandering Monsters table."

Section 1 - Creature Responses

to say Robed Cultist Wins:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Robed Cultist Loses:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Robed Cultist Desc:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Human";
	add "Robed Cultist" to the infections of HumanList;
	add "Robed Cultist" to the infections of MaleList;
	add "Robed Cultist" to the infections of BipedalList;
	now Name entry is "Robed Cultist";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The robed cultist slashes at you with a sharp knife.[or]You are kneed in the side by the cultist - that wide robe totally hid the movement till it was too late.[or]The cultist slashes at you with one hand showing scales and claws.[at random]";
	now defeated entry is "[Robed Cultist Loses]";
	now victory entry is "[Robed Cultist Wins]";
	now desc entry is "[Robed Cultist Desc]";
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
	now str entry is 14;
	now dex entry is 12;
	now sta entry is 14;
	now per entry is 10;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;                 [ How many HP has the monster got? ]
	now lev entry is 8;                 [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 8;                [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";        [ Case sensitive]
	now Cock Count entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples. ]
	now Breast Size entry is 2;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 8;
	now Cunt Tightness entry is 6;
	now SeductionImmune entry is false;
	now libido entry is 45;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";               [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;          [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]robed[at random]";
	now type entry is "human-like";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;





to say Deep One Wins:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Deep One Loses:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

to say Deep One Desc:
	if inasituation is true:
		stop the action; [dealt with at the event source]
	say ""; [for now]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Deep One";
	add "Deep One" to the infections of AquaticList;
	add "Deep One" to the infections of MythologicalList;
	add "Deep One" to the infections of OtherworldlyList;
	add "Deep One" to the infections of MaleList;
	add "Deep One" to the infections of BluntCockList;
	add "Deep One" to the infections of GillList;
	add "Deep One" to the infections of Swimlist;
	add "Deep One" to the infections of BipedalList;
	now Name entry is "Deep One";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The fish-man slashes at you with his claws.[or]The fish-man snaps at you with a maw full of sharp teeth.[or]A kick from the fish-man sends you stumbling backwards.[at random]";
	now defeated entry is "[Deep One Loses]";
	now victory entry is "[Deep One Wins]";
	now desc entry is "[Deep One Desc]";
	now face entry is "that of a human-fish hybrid, with a very wide maw filled with countless sharp teeth. Now having lidless eyes to take in the world, you never blink anymore. Instead of hair, a series of fins held up by bony spikes start on top of your head, running halfway down your back";
	now body entry is "shaped like a swimmers, with a long and flexible build that is tailor-made for swimming, darting and gliding through the water. The webbing between the fingers and toes of your claw-armed extremities also contributes to being well-adjusted to life in the ocean";
	now skin entry is "[one of]gray-blue and scaly[or]gray-blue[or]scaly[at random]";
	now tail entry is "Your buttocks are firm and tight, optimizing the hydrodynamics of your body.";
	now cock entry is "[one of]nonhuman[or]flared[or]upwards-curving[at random]";
	now face change entry is "it reshapes itself, giving you a very wide maw in which you can feel many sharp teeth with your tongue. Then your whole outlook on the world changes as your eyes grow into fairly large and lidless lenses that put your surroundings into a sharp, put somehow distant light";
	now body change entry is "your flesh is molded into a new form, becoming more slender and flexible before finally stabilizing in the shape of muscular swimmer. It is quite streamlined now, and you also grow webbing between the fingers and toes of your new claw-adorned extremities";
	now skin change entry is "it becomes grayish-blue and scaly, covering your body in a slightly shimmering new look";
	now ass change entry is "it becomes firm and tight, as if to avoid sticking out too much";
	now cock change entry is "it becomes a nonhuman in shape, with an upwards-curving shaft that ends in a flat, angled head at the end, surrounded by 'interesting' ridges";
	now str entry is 22;
	now dex entry is 16;
	now sta entry is 24;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 8;
	now sex entry is "Male";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 275;                [ How many HP has the monster got? ]
	now lev entry is 10;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 15;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now Cock Count entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 12;
	now Ball Size entry is 3;         [ Size of balls ]
	now Nipple Count entry is 2;            [ Number of nipples. ]
	now Breast Size entry is 4;        [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;              [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 6;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 35;            [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";              [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]scaled[or]aquatic[or]fish-like[at random]";
	now type entry is "aquatic";
	now magic entry is true;
	now resbypass entry is true;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Robed Cultist ends here.
