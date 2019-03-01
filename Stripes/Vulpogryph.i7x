Version 1 of Vulpogryph by Stripes begins here.

"Adds a Vulpogryph infection to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Monster Responses

when play begins:
	add { "Vulpogryph" } to infections of girl;
	add { "Vulpogryph" } to infections of furry;

to say losetovulpogryph:
	say "";

to say beatthevulpogryph:
	say "";

to say vulpogryphdesc:
	choose row monster from the Table of Random Critters;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
		now libido entry is 45;
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
		now libido entry is 65;
	else:
		now sex entry is "Male";
		now libido entry is 55;
	say "";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Vulpogryph"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "<***>";
	now defeated entry is "[beatthevulpogryph]"; [ Text when monster loses. ]
	now victory entry is "[losetovulpogryph]"; [ Text when monster wins. ]
	now desc entry is "[vulpogryphdesc]"; [ Description of the creature when you encounter it. ]
	now face entry is "that of a crow. You have a black beak and sharp eyes, but a pair of vulpine ears as well";
	now body entry is "an unusual amalgamation of corvid and vulpine. Your upper body is predominantly avian, with large wings at your back, taloned hands like a bird. Meanwhile, your lower body is more vulpine, with fox-like legs and footpaws";
	now skin entry is "black feathered and silver furred";
	now tail entry is "You have a fluffy fox tail attached to your rear. It is silver-furred with ebon feathers forming its darker tip.";
	now cock entry is "[one of]black[or]ebon[or]vulpine[or]knotted[at random]";
	now face change entry is "your mouth is stretched and pulls forward. As it pushes out into a point, it begins to harden, working into a dark beak";
	now body change entry is "a strange lightness fills your bones, as if they're becoming light and hollow. They shift and pop as your back spasms several times before large, avian wings start to emerge, growing from new limbs below your shoulder blades. The changes spread to your arms, distorting their shape and turning your hands into bird-like talons. As the changes reach your lower body, their manifestation changes, turning your lower body and legs into a more vulpine form and giving you fox-like footpaws";
	now skin change entry is "ripples spread across your changing flesh. These spread in waves across your body, building in intensity each time until it stops. As you pant for breath, not aware that you were holding it throughout, a final wave surges across you, spreading black feathers across your upper body and silvery fur down your lower half. After this one, rapid burst, your new pelt is complete";
	now ass change entry is "your hips realign slightly to allow a fluffy, fox tail to emerge";
	now cock change entry is "precum leaks from it steadily as its flesh takes on a dark, black hue. A silver furred sheath and balls appear ready to cover it once that new knot you've gained goes down after you're done spurting a fresh load of vulpine seed";
	now str entry is 13;
	now dex entry is 17;
	now sta entry is 11;
	now per entry is 20;
	now int entry is 14;
	now cha entry is 10;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 55; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 7; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 5; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 7; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]winged[or]hybrid[or]corvid[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]vulpogryph[or]hybrid[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;
	now resbypass entry is true;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


to vulpogryphinfect:			[Solstice's magic infection bypasses researcher immunity]
	now researchbypass is 1;
	[puts Vulpogryph as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if name entry is "Vulpogryph":
			now monster is y;
			break;
	if "Female Preferred" is listed in feats of player:
		now sex entry is "Female";
		now libido entry is 45;
	else if "Herm Preferred" is listed in feats of player:
		now sex entry is "Both";
		now libido entry is 65;
	else:
		now sex entry is "Male";
		now libido entry is 55;
	infect;
	decrease humanity of player by 3;
	now researchbypass is 0;


Vulpogryph ends here.
