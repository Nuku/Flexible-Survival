Version 1 of Demon Fox by Dys begins here.

"Adds a Demon Fox enemy and infection."

Section 0 - Flags

when play begins:
	add { "Demon Fox" } to infections of guy;
	add { "Demon Fox" } to infections of feral;
	add { "Demon Fox" } to infections of Knotlist;
	add { "Demon Fox" } to infections of Vulpinelist;
	add { "Demon Fox" } to infections of hellspawn;

Section 1 - Monster Responses

to say DemonFoxDefeat:
	if inasituation is true:
		say "";
	else:
		say "     You were beaten by the creature.";
		if cocks of player > 0:
			say "     Additional paragraph for a male/herm player.";
		else:
			say "     Additional paragraph for a female player.";

to say DemonFoxVictory:
	if inasituation is true:
		say "";
	else:
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

to say DemonFoxDesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
when play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Demon Fox";
	now attack entry is "[one of]The massive demonic vulpine leaps at you, sinking his talon-like claws into you![or]The demon head butts you roughly, knocking the air out of your lungs![or]The fox swipes at you, tearing through your flesh![or]The demon fox jumps at you, sinking his teeth into your form![at random]";
	now defeated entry is "[DemonFoxVictory]";
	now victory entry is "[DemonFoxDefeat]";
	now desc entry is "[DemonFoxDesc]";
	now face entry is "that of a demonic fox, with a long and narrow muzzle, a maw full of sharp teeth, pointy ears, and a set of horns protruding from the top of it. You're eyes glow a bright yellow and you have vertically slitted pupils. Black and yellow fur covers it completely";
	now body entry is "is quadrupedal in nature, and beastly in stature. Your hulking form is somehow both lithe and strong, conveying a sense of immense power. A deep black fur covers your back and sides, with a bright yellow covering your stomach and chest";
	now skin entry is "covered in thick and surprisingly soft fur";
	now tail entry is "You have three long tails, which are jet black up until the tip, which seems to burn with an demonic yellow fire.";
	now cock entry is "[one of]vulpine[or]knotted[or]fox[or]demonc[at random]";
	now face change entry is "as you feel a long and tapered muzzle growing outwards. Your ears shift to the top of your head, becoming triangular in shape and growing a bit larger. A sudden pain rushing through your head as two horns suddenly sprout just behind your ears";
	now body change entry is "your body shifts, forcing you onto all fours. Both you arms and legs lengthen, and your body in general also grows larger. Your legs snap and crack as they rearrange themselves, becoming digitigrade. Your hands and feet become that of a fox's paws, and your nails turn into long and sharp claws";
	now skin change entry is "fur begins to sprout all over your body, with differing colors on different parts. Your chest and lower chin grow a bright yellow fur, while the rest of your body grows a deep jet-black instead";
	now ass change entry is "a tails suddenly sprouts from the base of your spine, growing upwards of three feet long before an immense heat runs down the new appendage. It pulls apart into three distict tails, each long and fluffy, ending in a burning yellow flame";
	now cock change entry is "its tip tapers out, becoming distinctly vulpine. The shaft bulges and ripples as four distinctly draconic ridges form along the underside, and it's color changes, becoming dark gold at the base, and a bright yellow at the tip. A large knot forms at the base. A steady stream of molten looking pre dribbles from your tip before the whole thing recedes back into it's new sheath";
	now str entry is 41;
	now dex entry is 30;
	now sta entry is 50;
	now per entry is 35;
	now int entry is 50;
	now cha entry is 40;
	now sex entry is "Male";
	now hp entry is 155;
	now lev entry is 13;
	now wdam entry is 40;
	now area entry is "Nowhere";
	now cocks entry is 1;
	now cock length entry is 32;
	now cock width entry is 24;
	now breasts entry is 0;
	now breast size entry is 0;
	now male breast size entry is 0;
	now cunts entry is 0;
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 45;
	now loot entry is "demon fox fur";
	now lootchance entry is 50;
	now scale entry is 3;
	now body descriptor entry is "[one of]beastly[or]fluffy[or]lithe[or]hulking[at random]";
	now type entry is "vulpine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;
	now altcombat entry is "default";


Section 3 - Item

Table of Game Objects(continued)
name	desc	weight	object
"demon fox fur"	"A small tuft of black and yellow fur you managed to find after fighting the Demon Fox"	1	demon fox fur

demon fox fur is a grab object.

instead of sniffing demon fox fur:
	say "The fur has a distict, musky smell to it, reminding you of the fox you got it from.";

the usedesc of demon fox fur is "[DemonFoxFurUse]";

to say DemonFoxFurUse:
	say "You shrug before opening you mouth and eating the fur. Oddly enough, it almost seems to heat up, before it disolves in your mouth, a strong wave of heat rushing through your body.";
	if libido of player < 75:
		now libido of player is 75;

demon fox fur is infectious. The strain of demon fox fur is "Demon Fox".

Section 4 - Tome Specific Scenes

to say DemonFoxFirstLoss:
	say "     The fox rapes you. Oh noes.";

to say DemonFoxFirstFlee:
	say "     You attempt to flee, but he catches you and rapes you. Oh noes.";

to say DemonFoxFirstVictory:
	say "     You might choose to fuck him. Iunno.";


Demon Fox ends here.
