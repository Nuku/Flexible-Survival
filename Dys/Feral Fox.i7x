Version 1 of Feral Fox by Dys begins here.

"Adds a feral fox enemy to the Urban Forest."
[Description text for this Extension.]
[
Section 0 - Flags

when play begins:
	add { "Feral Fox" } to infections of guy;
	add { "Feral Fox" } to infections of feral;
	add { "Feral Fox" } to infections of Knotlist;
	add { "Feral Fox" } to infections of Vulpinelist;

Section 1 - Monster Responses

to say FeralFoxDefeat:
	say "     You were beaten by the creature.";
	if cocks of player > 0:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say FeralFoxVictory:
	say "     You were victorious over the creature.";
	if libido of player > 40:
		say "     Additional paragraph for a player with a libido greater than 40.  Do they want sex?";
		if the player consents:
			say "     The player agreed to sex.  Fun times begin.";
			if cunts of player > 0:
				say "     The player is female/herm, so sex goes like this for her.";
			else:
				say "     The player must be male, so sex goes like this for him.";
		else:
			say "     Awww!  The player refused the sex.  Party pooper.";

to say FeralFoxDesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
when play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Feral Fox";
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
	now body change entry is "your body shifts, forcing you onto all fours. Your arms shorten to match the length of your legs, which also change, becoming digitigrade. Your hands and feet become that of a fox's paws, and your nails turn into sharp cla";
	now skin change entry is "fur begins to sprout all over your body, with differing colors on different parts. Your chest and lower chin grow a cream colored fur, while the rest of your body grows a deep orange instead. The tips of your ears and all of your limbs grow black fur.";
	now ass change entry is "a long and fluffy tail suddenly grows. It sways gently behind you";
	now cock change entry is "its tip tapers out, becoming distinctly vuline. The shaft smooths out, taking on a distinct red color, and a large knot forms at the base. After its change completes, it recedes into a new sheath";
	now str entry is 22;
	now dex entry is 25;
	now sta entry is 19;
	now per entry is 25;
	now int entry is 29;
	now cha entry is 26;
	now sex entry is "Male";
	now hp entry is 60;
	now lev entry is 5;
	now wdam entry is 12;
	now area entry is "Forest";
	now cocks entry is 1;
	now cock length entry is 18;
	now cock width entry is 14;
	now breasts entry is 0;
	now breast size entry is 0;
	now male breast size entry is 0;
	now cunts entry is 0;
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 45;
	now loot entry is "fox cum";
	now lootchance entry is 50;
	now scale entry is 3;
	now body descriptor entry is "[one of]slender[or]fluffy[or]lithe[at random]";
	now type entry is "vulpine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;
	now altcombat entry is "default";


Section 3 - Item

Table of Game Objects(continued)
name	desc	weight	object
"fox cum"	"A small vial of fox cum you managed to get from a defeated feral fox."	1	fox cum

fox cum is a grab object. fox cum is cum.

instead of sniffing fox cum:
	say "The bottled semen has a very distinct and musky smell to it. It reminds you of the woods.";

the usedesc of fox cum is "[FoxCumUse]";

to say FoxCumUse:
	say "You pop the lid off the container before chugging it down. Dropping the now empty vial, you start scratching all over yourself as you body suddenly heats up.";
	if libido of player < 75:
		now libido of player is 75;

fox cum is infectious. The strain of fox cum is "Feral Fox".

]
Feral Fox ends here.
