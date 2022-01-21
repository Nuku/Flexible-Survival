Jackal Guard by Xenophiliac begins here.

"Adds a Jackal Guard to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say stoneguardiandesc:
	setmongender 3; [creature is male]
	say "     The beast standing before you is composed completely of stone, animated through some unseen force. It looks like a human man from the neck down; none of its body has any clothing carved into it, except for an Egyptian-style skirt shielding it down to its knees. The statue's head, however, is that of an Egyptian jackal, a very canine-esque face staring at you with stone eyes. Raising his massive metal sword, the statue marches purposefully forwards, intent on preventing your desecration of the altar. From the way these beasts are shambling forward, you're pretty sure that they are only animated guardians, not at all interested in sex.";


to say losetostoneguardian:
	say "     With one massive punch to your chest, the beast sends you flying backwards sprawling on the ground outside. Barely conscious and coughing up blood, your concussed mind registers that the guardians have reclaimed the regal sword and sealed the shrine.";

to say beatthestoneguardian:
	say "     Landing one heavy blow on the stone guardian's head, you send it stumbling back, wounded and disoriented. Cracks streak across the guardian's stone figure as small chunks of rock fall off of the awakened warrior. With one last step backwards, the beast crumbles into rubble, his sword clanging noisily to the ground.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Jackal Statue";
	add "Jackal Guard" to infections of NonOrganicList;
	add "Jackal Guard" to infections of MythologicalList;
	add "Jackal Guard" to infections of KnottedCockList;
	add "Jackal Guard" to infections of SheathedCockList;
	add "Jackal Guard" to infections of BipedalList;
	add "Jackal Guard" to infections of NotBreathingList;
	add "Jackal Guard" to infections of TailList;
	now Name entry is "Jackal Guard";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]Slamming his solid stone fist straight into your chest and knocking the breath out of you, you think that the guardian may have broken a few of your ribs[or]Slashing a deep gash across your chest, you're not even sure if you're going to survive this encounter[or]You're almost knocked out when the stone guardian hits you with his entire weight[at random].";
	now defeated entry is "[beatthestoneguardian]";
	now victory entry is "[losetostoneguardian]";
	now desc entry is "[stoneguardiandesc]";
	now face entry is "Impossible - Jackal Guard Error";
	now body entry is "Impossible - Jackal Guard Error";
	now skin entry is "Impossible - Jackal Guard Error";
	now tail entry is "Impossible - Jackal Guard Error";
	now cock entry is "Impossible - Jackal Guard Error";
	now face change entry is "Impossible - Jackal Guard Error";
	now body change entry is "Impossible - Jackal Guard Error";
	now skin change entry is "Impossible - Jackal Guard Error";
	now ass change entry is "Impossible - Jackal Guard Error";
	now cock change entry is "Impossible - Jackal Guard Error";
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "No Change";
	now HP entry is 75;
	now lev entry is 15;
	now wdam entry is 13;
	now area entry is "Nowhere";
	now Cock Count entry is 0;
	now Cock Length entry is 0;
	now Ball Size entry is 0;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is true;
	now libido entry is 0;
	now loot entry is "";
	now lootchance entry is 0;
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;
	now body descriptor entry is "";
	now type entry is "";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;




Jackal Guard ends here.
