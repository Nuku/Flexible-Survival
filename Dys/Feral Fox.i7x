Version 1 of Feral Fox by Dys begins here.

"Adds a feral fox enemy to the Urban Forest."

[
Section 0 - Flags

Section 1 - Creature Responses

to say FeralFoxDefeat:
	say "     You were beaten by the creature.";
	if Player is male:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say FeralFoxVictory:
	say "     You were victorious over the creature.";
	if Libido of Player > 40:
		say "     Additional paragraph for a player with a libido greater than 40. Do they want sex?";
		if the player consents:
			say "     The player agreed to sex. Fun times begin.";
			if Player is female:
				say "     The player is female/herm, so sex goes like this for her.";
			else:
				say "     The player must be male, so sex goes like this for him.";
		else:
			say "     Awww! The player refused the sex. Party pooper.";

to say FeralFoxDesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

when play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Fox"; [name of the overall species of the infection, used for children, ...]
	add "Feral Fox" to infections of VulpineList;
	add "Feral Fox" to infections of FurryList;
	add "Feral Fox" to infections of NatureList;
	add "Feral Fox" to infections of MaleList;
	add "Feral Fox" to infections of TaperedCockList;
	add "Feral Fox" to infections of KnottedCockList;
	add "Feral Fox" to infections of SheathedCockList;
	add "Feral Fox" to infections of QuadrupedalList;
	add "Feral Fox" to infections of TailList;
	now Name entry is "Feral Fox";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The feral vulpine leaps at you, sinking his claws into you![or]The fox charges at you, head-butting you with a surprising amount of force![or]The fox swipes at you, tearing through your flesh![or]The fox jumps at you, sinking his teeth into your form![at random]";
	now defeated entry is "[FeralFoxVictory]";
	now victory entry is "[FeralFoxDefeat]";
	now desc entry is "[FeralFoxDesc]";
	now face entry is "that of a vulpine, with a tapered muzzle and pointy ears, and your eyes are a piercing blue, pupils slitted like a vulpine's";
	now body entry is "sleek and lithe, definitely that of a fox. Your stance is feral in nature, each of your four legs ending with small paws. Small claws adorn each of the paws";
	now skin entry is "a mixture of orange, white, and black fur over your";
	now tail entry is "You have a long, fluffy fox tail sticking out of your rear, swaying gently.";
	now cock entry is "[one of]vulpine[or]knotted[or]fox[at random]";
	now face change entry is "as you feel a muzzle pushing out of it. Your ears shift to the top of your head, becoming triangular in shape and growing a bit larger.";
	now body change entry is "your body shifts, forcing you onto all fours. Your arms shorten to match the length of your legs, which also change, becoming digitigrade. Your hands and feet become that of a fox's paws, and your nails turn into sharp claws";
	now skin change entry is "fur begins to sprout all over your body, with differing colors on different parts. Your chest and lower chin grow a cream colored fur, while the rest of your body grows a deep orange instead. The tips of your ears and all of your limbs grow black fur";
	now ass change entry is "a long and fluffy tail suddenly grows. It sways gently behind you";
	now cock change entry is "its tip tapers out, becoming distinctly vulpine. The shaft smooths out, taking on a distinct red color, and a large knot forms at the base. After its change completes, it recedes into a new sheath";
	now str entry is 22;
	now dex entry is 25;
	now sta entry is 19;
	now per entry is 25;
	now int entry is 29;
	now cha entry is 26;
	now sex entry is "Male";
	now HP entry is 60;
	now lev entry is 5;
	now wdam entry is 12;
	now area entry is "Forest";
	now Cock Count entry is 1;
	now Cock Length entry is 18;
	now Ball Size entry is 4;
	now Nipple Count entry is 0;
	now Breast Size entry is 0;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 50;
	now loot entry is "fox cum";
	now lootchance entry is 50;
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]fluffy[or]lithe[at random]";
	now type entry is "vulpine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;





Section 3 - Item

Table of Game Objects(continued)
name	desc	weight	object
"fox cum"	"A small vial of fox cum you managed to get from a defeated feral fox."	1	fox cum

fox cum is a grab object. fox cum is cum.

instead of sniffing fox cum:
	say "The bottled semen has a very distinct and musky smell to it. It reminds you of the woods.";

Usedesc of fox cum is "[FoxCumUse]";

to say FoxCumUse:
	say "You pop the lid off the container before chugging it down. Dropping the now empty vial, you start scratching all over yourself as your body suddenly heats up.";
	if Libido of Player < 75:
		now Libido of Player is 75;

fox cum is infectious. Strain of fox cum is "Feral Fox".

]
Feral Fox ends here.
