Version 1 of Spidertaur Female by Wahn begins here.
[Version 1 - New Female Variant]

"Adds a female variant of the Spidertaur to Flexible Survival"

Section 1 - Creature Responses

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Spidertaur";
	add "Spidertaur Female" to infections of InsectList;
	add "Spidertaur Female" to infections of HybridList;
	add "Spidertaur Female" to infections of OctapedalList;
	add "Spidertaur Female" to infections of MythologicalList;
	add "Spidertaur Female" to infections of FemaleList;
	add "Spidertaur Female" to infections of InternalCockList;
	add "Spidertaur Female" to infections of OviImpregnatorList;
	now Name entry is "Spidertaur Female";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a handsome human female, with sharp features and long white hair to frame it";
	now body entry is "a nicely muscled human female's from the waist up, with everything below shaped like a giant spider, with eight long legs and a spider's abdomen covered in gleaming black chitin. Your genitals are hidden beneath protective chitin plates at the front of your spider body";
	now skin entry is "night-black";
	now tail entry is "Nestled in your backside are several spinnerets, ready to spin web at a moment's notice.";
	now cock entry is "armor-protected";
	now face change entry is "it takes on the sharp features of a handsome human male and you grow pale-white hair to hang down over your shoulders";
	now body change entry is "you fall to the ground, your lower torso flowing and bulging with creaks and pops, swelling into a bulging spider's abdomen. It sprouts chitinous armor and then eight legs, giving you an arachnid shape. Your upper body becomes human in the meantime, taking on the form of a nicely muscled man's chest with defined abs and strong arms.";
	now skin change entry is "all blemishes and hairs vanish, leaving you with flawless night-black skin";
	now ass change entry is "intricate glands swell within it, developing into spinnerets; you can even feel a bit of webbing ready to be spun";
	now cock change entry is "it shifts and lengthens, the base roughening and sprouting black plates of armor that reach up to conceal and cover it";
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 16;
	now per entry is 22;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Female";          [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;                 [ How many HP has the monster got? ]
	now lev entry is 12;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";        [ Case sensitive]
	now Cock Count entry is 0;          [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 0;
	now Ball Size entry is 0;           [ Size of balls ]
	now Nipple Count entry is 2;        [ Number of nipples. ]
	now Breast Size entry is 4;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;          [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 16;
	now Cunt Tightness entry is 4; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 65;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "spidertaur hair"; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 75;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strange[or]hybrid[or]fantastic[at random]";
	now type entry is "[one of]arachnid[or]spider-person[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Spidertaur Female ends here.
