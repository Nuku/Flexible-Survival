Version 1 of Golden Retriever Male Infection by Luneth begins here.
[Version 1 - New Female Variant]

"Adds a male variant of the Golden Retriever to Flexible Survival"

Section 1 - Creature Responses


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Golden Retriever";
	add "Golden Retriever Male" to infections of CanineList;
	add "Golden Retriever Male" to infections of FurryList;
	add "Golden Retriever Male" to infections of NatureList;
	add "Golden Retriever Male" to infections of MaleList;
	add "Golden Retriever Male" to infections of TaperedCockList;
	add "Golden Retriever Male" to infections of KnottedCockList;
	add "Golden Retriever Male" to infections of SheathedCockList;
	add "Golden Retriever Male" to infections of BipedalList;
	add "Golden Retriever Male" to infections of TailList;
	now Name entry is "Golden Retriever Male";
	now enemy title entry is "";
	now enemy Name entry is "Landon";
	now enemy type entry is 1; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a golden retriever, with large folded ears atop your head and warm brown eyes. Your muzzle has a friendly appearance, giving off the effect that you're constantly smiling.";
	now body entry is "that of a canine, with an Adonis-like torso with equally thick arms and digitigrade legs that end in large paws. Your hands have also become somewhat paw-like, while they have maintained some dexterity, it is clear they have become very canine, with short but slender digits topped with small claws";
	now skin entry is "a thick, shiny coat of golden fur over your";
	now tail entry is "Your tail is that of a golden retriever, long and covered with soft golden fur. It wags happily constantly without your input unless you make a conscious effort to stop it.";
	now cock entry is "[one of]canine[or]knotted[or]sheathed[at random]";
	now face change entry is "you feel an immense pressure build in your head, only to have it release moments later as your face pushes out into a canine muzzle. You are distracted from your changing head when your ears begin to ring painfully, you realize why when you feel them shifting to the top of your head while the rest of your face changes to match a masculine golden retriever almost exactly";
	now body change entry is "you stumble and fall to all fours, your legs twisting to a digitigrade configuration with canine paws. The changes continue up your body like a wave, leaving you with a muscular figure and paw-like hands";
	now skin change entry is "as a thick coat of golden fur covers your entire body";
	now ass change entry is "powerful muscles overtake it leaving you with a meaty bubble butt that appears to be a cross between a human and a canine. Meanwhile you feel nearby muscles working without your input, looking backwards you find they are wagging your growing golden retriever tail happily, regardless of your opinion";
	now cock change entry is "your entire manhood is consumed by a growing golden furred sheath, once covered you feel an unusual pressure while it changes into that of a male golden retriever";
	now str entry is 16;
	now dex entry is 20;
	now sta entry is 16;
	now per entry is 22;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";            [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 90;                 [ How many HP has the monster got? ]
	now lev entry is 12;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";        [ Case sensitive]
	now Cock Count entry is 1;          [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 9;
	now Ball Size entry is 5;           [ Size of balls ]
	now Nipple Count entry is 2;        [ Number of nipples. ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;          [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 25;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 75;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "strong";
	now type entry is "canine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;



Section 3 - Items

Golden Retriever Male Infection ends here.
