Dalmatian by Wahn begins here.
[ Version 1.0 - Male Dalmatian by Kaleem Mcintyre          ]
[ Version 2.0 - Multi Gender Dalmatians plus Items by Wahn ]

Section 1 - Monster Responses

[see NonCombatError Function from Core Mechanics/Basic Functions: ]
[to say NonCombatError:
	say "ERROR! This is a noncombat creature that you should never see in a fight. Please report how you saw this on the FS Discord or Forum.";]

when play begins:
	add { "Dalmatian Male" } to infections of Guy;
	add { "Dalmatian Male" } to infections of Furry;
	add { "Dalmatian Bitch" } to infections of Girl;
	add { "Dalmatian Bitch" } to infections of Furry;
	add { "Dalmatian Herm" } to infections of hermaphrodite;
	add { "Dalmatian Herm" } to infections of Furry;
	add { "Dalmatian Transman" } to infections of Transgender;
	add { "Dalmatian Transman" } to infections of Furry;
	add { "Dalmatian Transbitch" } to infections of Transgender;
	add { "Dalmatian Transbitch" } to infections of Furry;

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Dalmatian Male"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "covered with black spots while long floppy ears hang down the side of your regal-looking head. A black button-nose at the end of a long[if player is female], delicate[end if] muzzle completes the image of an anthro Dalmatian's head";
	now body entry is "lean and limber, its form fitting an anthro canine built for both strength and speed. [if player is female]Besides that, there is also a bit of a feminine curve to your hips, making them somewhat wider as a preparation for bearing cubs. [end if]Your legs end in digitigrade dog's paws, while your arms sport paw-hands as dexterous as a human's";
	now skin entry is "short but thick fur, covered with black rosettes dotted all across your";
	now tail entry is "A thin, almost wiry white tail sways from out of the end of your bubble-shaped rump.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "your nose begins to push out from your face while your senses dull ever so slightly. Reaching up with a hand you have the strangest urge to scratch at your ears, which just so happen to be growing longer and floppier onside of your head, at the exact same moment your teeth are elongating into sharpened points. Feeling a strange sensation in your mouth, you open it while your muzzle is still taking shape, reflexively sticking out the long floppy tongue you have also gained";
	now body change entry is "strong muscle-spasms go through your form, soon followed by the crunching noise of re-forming bone. Feeling like you want to curl into a ball, you can't even manage that much in coordinated movements, instead just swaying rather drunkenly as your body reshapes itself. After long moments of painful transformation you'd rather forget, your body now resembles an anthro dalmatian, complete with digitigrade paws to stand on";
	now skin change entry is "white fur pushes free from out of your pores. The new growth quickly works to cover your entire body, bringing with it a random pattern of black dots on it";
	now ass change entry is "your buttcheeks tighten into a firm pair of buttocks and a thin and wiry tail sprouts from your lower back";
	now cock change entry is "it takes on a canine shape, complete with a furred sheath as well as a pair of weighty balls. Lust bubbles up inside you and the dog's cock that you now call your own hardens within seconds, showing off the thick knot swelling up at its base. Then you cum, spraying out what seems like a celebratory load from the newly formed cock.";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 22; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 22;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 66; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lean[or]wiry[or]dexterous[or]limber[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Dalmatian Bitch"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "covered with black spots while long floppy ears hang down the side of your regal-looking head. A black button-nose at the end of a long[if player is female], delicate[end if] muzzle completes the image of an anthro Dalmatian's head";
	now body entry is "lean and limber, its form fitting an anthro canine built for both strength and speed. [if player is female]Besides that, there is also a bit of a feminine curve to your hips, making them somewhat wider as a preparation for bearing cubs. [end if]Your legs end in digitigrade dog's paws, while your arms sport paw-hands as dexterous as a human's";
	now skin entry is "short but thick fur, covered with black rosettes dotted all across your";
	now tail entry is "A thin, almost wiry white tail sways from out of the end of your bubble-shaped rump.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "your nose begins to push out from your face while your senses dull ever so slightly. Reaching up with a hand you have the strangest urge to scratch at your ears, which just so happen to be growing longer and floppier onside of your head, at the exact same moment your teeth are elongating into sharpened points. Feeling a strange sensation in your mouth, you open it while your muzzle is still taking shape, reflexively sticking out the long floppy tongue you have also gained";
	now body change entry is "strong muscle-spasms go through your form, soon followed by the crunching noise of re-forming bone. Feeling like you want to curl into a ball, you can't even manage that much in coordinated movements, instead just swaying rather drunkenly as your body reshapes itself. After long moments of painful transformation you'd rather forget, your body now resembles an anthro dalmatian, complete with digitigrade paws to stand on";
	now skin change entry is "white fur pushes free from out of your pores. The new growth quickly works to cover your entire body, bringing with it a random pattern of black dots on it";
	now ass change entry is "your buttcheeks tighten into a firm pair of buttocks and a thin and wiry tail sprouts from your lower back";
	now cock change entry is "it takes on a canine shape, complete with a furred sheath as well as a pair of weighty balls. Lust bubbles up inside you and the dog's cock that you now call your own hardens within seconds, showing off the thick knot swelling up at its base. Then you cum, spraying out what seems like a celebratory load from the newly formed cock.";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 22; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 22;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 66; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 1; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 1; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lean[or]wiry[or]dexterous[or]limber[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Dalmatian Herm"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "covered with black spots while long floppy ears hang down the side of your regal-looking head. A black button-nose at the end of a long[if player is female], delicate[end if] muzzle completes the image of an anthro Dalmatian's head";
	now body entry is "lean and limber, its form fitting an anthro canine built for both strength and speed. [if player is female]Besides that, there is also a bit of a feminine curve to your hips, making them somewhat wider as a preparation for bearing cubs. [end if]Your legs end in digitigrade dog's paws, while your arms sport paw-hands as dexterous as a human's";
	now skin entry is "short but thick fur, covered with black rosettes dotted all across your";
	now tail entry is "A thin, almost wiry white tail sways from out of the end of your bubble-shaped rump.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "your nose begins to push out from your face while your senses dull ever so slightly. Reaching up with a hand you have the strangest urge to scratch at your ears, which just so happen to be growing longer and floppier onside of your head, at the exact same moment your teeth are elongating into sharpened points. Feeling a strange sensation in your mouth, you open it while your muzzle is still taking shape, reflexively sticking out the long floppy tongue you have also gained";
	now body change entry is "strong muscle-spasms go through your form, soon followed by the crunching noise of re-forming bone. Feeling like you want to curl into a ball, you can't even manage that much in coordinated movements, instead just swaying rather drunkenly as your body reshapes itself. After long moments of painful transformation you'd rather forget, your body now resembles an anthro dalmatian, complete with digitigrade paws to stand on";
	now skin change entry is "white fur pushes free from out of your pores. The new growth quickly works to cover your entire body, bringing with it a random pattern of black dots on it";
	now ass change entry is "your buttcheeks tighten into a firm pair of buttocks and a thin and wiry tail sprouts from your lower back";
	now cock change entry is "it takes on a canine shape, complete with a furred sheath as well as a pair of weighty balls. Lust bubbles up inside you and the dog's cock that you now call your own hardens within seconds, showing off the thick knot swelling up at its base. Then you cum, spraying out what seems like a celebratory load from the newly formed cock.";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 22; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 22;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 66; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lean[or]wiry[or]dexterous[or]limber[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Dalmatian Transman"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "covered with black spots while long floppy ears hang down the side of your regal-looking head. A black button-nose at the end of a long muzzle completes the image of an anthro Dalmatian's head";
	now body entry is "lean and limber, its form fitting an anthro canine built for both strength and speed. Your legs end in digitigrade dog's paws, while your arms sport paw-hands as dexterous as a human's";
	now skin entry is "short but thick fur, covered with black rosettes dotted all across your";
	now tail entry is "A thin, almost wiry white tail sways from out of the end of your bubble-shaped rump.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "your nose begins to push out from your face while your senses dull ever so slightly. Reaching up with a hand you have the strangest urge to scratch at your ears, which just so happen to be growing longer and floppier onside of your head, at the exact same moment your teeth are elongating into sharpened points. Feeling a strange sensation in your mouth, you open it while your muzzle is still taking shape, reflexively sticking out the long floppy tongue you have also gained";
	now body change entry is "strong muscle-spasms go through your form, soon followed by the crunching noise of re-forming bone. Feeling like you want to curl into a ball, you can't even manage that much in coordinated movements, instead just swaying rather drunkenly as your body reshapes itself. After long moments of painful transformation you'd rather forget, your body now resembles an anthro dalmatian, complete with digitigrade paws to stand on";
	now skin change entry is "white fur pushes free from out of your pores. The new growth quickly works to cover your entire body, bringing with it a random pattern of black dots on it";
	now ass change entry is "your buttcheeks tighten into a firm pair of buttocks and a thin and wiry tail sprouts from your lower back";
	now cock change entry is "it takes on a canine shape, complete with a furred sheath as well as a pair of weighty balls. Lust bubbles up inside you and the dog's cock that you now call your own hardens within seconds, showing off the thick knot swelling up at its base. Then you cum, spraying out what seems like a celebratory load from the newly formed cock.";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 22; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 22;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 66; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 0; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lean[or]wiry[or]dexterous[or]limber[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Dalmatian Transbitch"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "covered with black spots while long floppy ears hang down the side of your regal-looking head. A black button-nose at the end of a long, delicate muzzle completes the image of an anthro Dalmatian's head";
	now body entry is "lean and limber, its form fitting an anthro canine built for both strength and speed. Besides that, there is also a bit of a feminine curve to your hips, making them somewhat wider as a preparation for bearing cubs. Your legs end in digitigrade dog's paws, while your arms sport paw-hands as dexterous as a human's";
	now skin entry is "short but thick fur, covered with black rosettes dotted all across your";
	now tail entry is "A thin, almost wiry white tail sways from out of the end of your bubble-shaped rump.";
	now cock entry is "[one of]canine[or]knotted[or]doggy[at random]";
	now face change entry is "your nose begins to push out from your face while your senses dull ever so slightly. Reaching up with a hand you have the strangest urge to scratch at your ears, which just so happen to be growing longer and floppier onside of your head, at the exact same moment your teeth are elongating into sharpened points. Feeling a strange sensation in your mouth, you open it while your muzzle is still taking shape, reflexively sticking out the long floppy tongue you have also gained";
	now body change entry is "strong muscle-spasms go through your form, soon followed by the crunching noise of re-forming bone. Feeling like you want to curl into a ball, you can't even manage that much in coordinated movements, instead just swaying rather drunkenly as your body reshapes itself. After long moments of painful transformation you'd rather forget, your body now resembles an anthro dalmatian, complete with digitigrade paws to stand on";
	now skin change entry is "white fur pushes free from out of your pores. The new growth quickly works to cover your entire body, bringing with it a random pattern of black dots on it";
	now ass change entry is "your buttcheeks tighten into a firm pair of buttocks and a thin and wiry tail sprouts from your lower back";
	now cock change entry is "it takes on a canine shape, complete with a furred sheath as well as a pair of weighty balls. Lust bubbles up inside you and the dog's cock that you now call your own hardens within seconds, showing off the thick knot swelling up at its base. Then you cum, spraying out what seems like a celebratory load from the newly formed cock.";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 22; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 22;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 66; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 6; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 5; [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 5; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 6; [ Width of female sex the infection will try to give a player. ]
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lean[or]wiry[or]dexterous[or]limber[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Definition: a person is DalSkinned:
	if skinname of player is "Dalmatian Male" or skinname of player is "Dalmatian Bitch" or skinname of player is "Dalmatian Herm" or skinname of player is "Dalmatian Transman" or skinname of player is "Dalmatian Transbitch", yes;
	no;

to SetMonsterRandomDalOffspring:
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			setmonster "Dalmatian Male";
		-- 2:
			setmonster "Dalmatian Bitch";
		-- 3:
			setmonster "Dalmatian Herm";
		-- 4:
			setmonster "Dalmatian Transman";
		-- 5:
			setmonster "Dalmatian Transbitch";

Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"dalmatian cum"	"A tiny plastic shampoo bottle as you might find in a motel, filled with something milky white, thick and creamy. If you didn't know where it's from, you'd almost think it to be liquid soap rather than Darius's cum. You could drink it to quench your thirst, but who knows what else it might do to you..."	1	dalmatian cum

instead of sniffing dalmatian cum:
	say "You open the lid for a moment and take a sniff. Smells rather tasty actually, kinda nutty. You can't help but be tempted to take a swallow of it.";

dalmatian cum is a grab object. dalmatian cum is cum.
the usedesc of dalmatian cum is "[dalmatian cum use]";

to say dalmatian cum use:
	say "     Lifting the tiny plastic bottle to your mouth, you let Darius's creamy cum run over your tongue and down your throat. Mmmmh, this stuff actually tastes fairly nice and your body calls for more. You can't help yourself and keep pouring cum into your mouth, right until you're hungrily sucking at the mouth of the bottle with it turned upside down.";
	if Darius is visible:
		say "     Glancing over at you slurping down his cum, Darius lets out a hearty laugh. ";
		if player is female:
			say "'Yeah babe, just swallow it all! If you like that one, I've got a whole lot more here for you...' Grabbing his crotch, the anthro canine gives it a demonstrative squeeze.";
		else:
			say "'Let's hope the stuff makes something nice out of you. Wouldn't mind giving you more, if you want it that badly - as soon as you grow a juicy pussy!' Grabbing his crotch, the anthro canine gives it a demonstrative squeeze.";
	PlayerDrink 6;
	SanLoss 5;
	infect "Dalmatian Bitch";

Table of Game Objects (continued)
name	desc	weight	object
"dalmatian fur"	"A small tuft of white and black fur, held together by a rubber band. You bought it from Darius."	1	dalmatian fur

instead of sniffing dalmatian fur:
	say "     You sniff at the tuft of fur. It has a definitive smell of dog to it.";

dalmatian fur is a grab object.
dalmatian fur is temporary.
the usedesc of dalmatian fur is "[dalmatian fur use]";

to say dalmatian fur use:
	say "     Lifting the small tuft of fur with your fingers holding on to the rubber band around it, you brush the hairs over the inside of your other arm. It feels soft and tickles a little, then a lot, as the strands seem to slowly crumble away, leaving minute traces of silvery dust that vanishes into your skin.";
	if Darius is visible:
		say "     Glancing over at you playing around with the fur you bought, Darius lets out a hearty laugh. ";
		if player is female:
			say "'Damn babe, are you trying to become a dude? How about you rather come here and let me show you a good time? Then you'll have a nice spotted coat too and be much more fun all around.' Grabbing his crotch, the anthro canine gives it a demonstrative squeeze.";
		else:
			say "'Let's hope the stuff mans you up a bit. I could use some reliable help later on, when I expand this operation.' The anthro canine steps up to give you a fist bump.";
	SanLoss 2;
	infect "Dalmatian Male";


Section 4 - Endings

when play ends:
	if bodyname of player is "Dalmatian Male":
		if humanity of player < 10:
			say "     Giving yourself over to the Dalmatian infection taking over your body and mind you wander aimlessly about the city until you find yourself stumbling over a slightly familiar looking white and black spotted four legged canine. When the other gets a hold of your scent the Dalmatian immediately senses something wrong as it turns to look you over. Slowly padding its way over to try and administer comfort onto you, you find yourself whimpering back at the other as the need to rut as well as play overtakes your sensibilities. At the touch of the Dalmatian's cold nose touches your legs you kneel down next to the other Dal and then nuzzle the other four legged canine in turn before whining at it in confusion. Quickly as can be the feral creature barks into your face and then grabs you by your arm with its sharpened teeth to drag you off somewhere.";
			say "     Not having a reason to fight you simply let the other take you to wherever it's trying to get to. When you ultimately find yourself coming to a red brick edifice, which [italic type]really[roman type] looks familiar to you, you bark happily as you think that you've finally found the place where you belong. This fact is made even more certain when your new friend releases your arm and then goes over to bark and scratch at the front door to the building. Upon getting a response from someone from the inside you find yourself panting in joy as your bright eyes look over the form of a tall white and black spotted canine, this one standing on two legs instead of all fours, whom your confused canine mind screams at you that you should know intimately. Hurriedly you go over to tackle the other and then proceed to show them in rampant licks across the face.";
			say "     You definitely know now that this is where you belong now.";
		else:
			say "     When the military rolls around to try and finally clean up the place you find yourself somewhat displeased to be taken by them and then led to one of their campsites along with several other mutants at gun point. However, before you can go to grip about the indignity of your situation a scream coming out of one of the soldier's walkie-talkies about [italic type]fire[roman type] and [italic type]casualties[roman type] has you snatching the handheld device off of said soldier's hips and then barking into it about location. The soldier you just stole the walkie-talkie from doesn't try to retrieve his communication device as you are swiftly hauling tail out of the sheltered area to go see what you can do to help.";
			say "     What you see when you arrive is a somewhat high-class hotel on glistening with crimson flames from out of its windows along with several mutants all trying to run out at the same time with various items in their hands. Finding the person who had been squawking to you over the radio, quite literally in fact, you find yourself walking over to a large Pelican wearing a two-piece suit looking over the burning building with a quiet glare in his beady eyes. Asking the other about how many people are left in the complex you get your answer from a chimpanzee mutant instead of the bird. The simian creature nervously informs you that most of the people on the upper floors are outside now, but there might still be others on the lower floors. Not wasting a second to go over options you simply charge into the building and then begin sniffing around for any civilians who might have been left behind.";
			if firefighter coat is owned:
				say "     A faint ringing in your mind has you pulling out the firefighting coat Kenaz had given you and then tossing the heavy jacket over your furry white form.";
				say "     Ten minutes of searching leads you to finding several older people in the basement, two teenagers hiding in the back rooms of suite 108, and a single shy cougar female almost scared to death from the flames licking at the area surrounding her inside of room 309. Using your dexterity and strength to herd the others out of the building, your sense of smell being invaluable to help you to find the safest routes back out after some of the building's roof collapses in on your previous pathway, as well as your basic knowledge of fire safety, you manage to get everyone out of the building just as the local firefighting department is speeding its way down the side of the street.";
				LineBreak;
				say "     Working with the other Dalmatians of fire station 86 you and the rest of the team hook up hoses and then spray down the burning building with as much water as you can in order to make the laughing flames receded back into the edifice. All of you are silently thankful that the water to the city is now working again, though no one makes a comment on this as you are all busy working to get the thrashing flames battling against you under some kind of control[if waterworks is 1]. You don't spend time gloating about how you were the one who fought to get the water to the city back on as you literally have bigger fish to fry at the moment[end if].";
				say "     [if kto is 2]Humorously you find yourself chuckling into the back of your heads as you watch how Kenaz literally takes command of the situation as he barks out orders. You do the other Dalmatian proud by standing your ground and helping them finish up spraying down the building until at last, some thirty minutes later, the fire has finally died out[else]Watching as Othala and Kenaz work together to try and control this situation you chuckle mirthfully as you notice how all of the other Dalmatians follow the leadership of the former female without question. Othala wastes no time as she barks out orders amongst the pack while having Kenaz stand beside you to help shoulder some of the burden of having you hold onto the gushing hose in between your padded hands. The other male says nothing to you as you and he work together to put out the fire, however, you don't fail to notice the twinkle of pride shining in Kenaz's green orbs as he glances at you when he thinks you're not looking[end if]. Once the hungry flames of the fire have been completely drowned out the Dalmatians quickly turn to those around you, asking everyone the standard questions that go along with having survived an ordeal like this and giving medical aid to those that they can while waiting for the ambulance to get there.";
				LineBreak;
				if kto is 2:
					say "     When several white trucks pull up you find yourself sighing in relief... that is, right before you turn to notice a very angry Dalmatian looking down at you. Kenaz seems both pissed and elated that you've survived this trail, even more so at the fact that you actually managed to help out with your unrefined skills and instinctual talents. The herm makes no bones about telling you off though, and you actually pull back some as you try to whether the storm of the other's wrath. However, once the eight foot Dalmatian has calmed down he tiredly reaches around you to take you into his arms before hugging you tight. No words need be spoken between either of you as you both understand what the other is thinking. Ironically the military shows up to help, late as usual, some minutes later to lead you and everyone else back to one of their campsites.";
					say "     When you return with the armed forces back to their military camp to get checked over properly this time, you managing to drag the other Dals with you through some smooth jive talk, there's a lot of noise about you becoming a firefighter professionally after everything is said and done. However, you barely pay this any mind as you simply want to just be with Kenaz right now. The larger Dal is all too happy to comply with your desires, especially once the both of you get some alone time together at the behest of one of the scientist involved with checking you and Kenaz over. The howls you and your lover make are still talked about amongst the soldiers in the military to this day as many of them found themselves remembering the way a certain rickety cot inside of the tent you and Kenaz had been housed in literally squeaked and rocked a full night long.";
				else:
					say "     Othala seems more pissed at you than Kenaz as the former female Dal barks into your face as he tells you about how stupid you were. Of course just as soon as his anger has calmed down Othala is quick to congratulate you on doing such a fine job, what with your unrefined skills and all. You're not sure whether to be proud of yourself or ashamed as the growls from the former female Dalmatian have actually made the hairs on your body stand up on end. However, when Kenaz comes over to take you into his arms you find yourself melting as the other Dal kisses and licks you across the slightly burnt fur of your muzzle you find yourself blushing and then smiling tiredly up at the other as he goes about showering you in affection.";
					say "     When the military comes along to check over you, you find yourself, along with the rest of the pack, being taken in for inspection, much to everyone's annoyance. Being the [']hero['] of the hour does net you some perks though as when you and Kenaz finish being tested over by some of the weird procedures the doctors here have dreamed up for mutates of your species, the anal probing with thermometer is something you're still wondering about to this day, you find yourself being allowed some private time alone with Kenaz. No one present needed to guess what would happen next once the single flap to the tent you and your companion had been left in flipped to a close. And yet, the sounds of your [italic type]enjoyment[roman type] at being reunited with the Dalmatian makes for some interesting gossip amongst the both military and the pack of firefighting Dals days later. However, by that time your biggest concern has shifted from whether or not you and Kenaz were an item to whether or not you should become a full-fledged firefighter and stay with the others or not.";
					say "The offer is very tempting, considering that Kenaz and the others have decided to all buy a large condo together to make into their new den. However, you have a lot to think over first...";
			else:
				say "     Ten minutes of searching leads you to finding several older people in the basement, two teenagers hiding in the back rooms of suite 108, and a single shy cougar female almost scared to death from the flames licking at the area surrounding her inside of room 309. Using your dexterity and strength to herd the others out of the building, your sense of smell being invaluable to help you to find the safest routes back out after some of the building's roof collapses in on your previous pathway, as well as your basic knowledge of fire safety, you manage to get everyone out of the building just as the local firefighting department is speeding its way down the side of the street.";
				say "     Working with the other Dalmatians of fire station 86 you and the rest of the team hook up hoses and then spray down the burning building with as much water as you can in order to make the laughing flames receded back into the edifice. All of you are silently thankful that the water to the city is now working again, though no one makes a comment on this as you are all busy working to get the thrashing flames battling against you under some kind of control[if waterworks is 1]. You don't spend time gloating about how you were the one who fought to get the water to the city back on as you literally have bigger fish to fry at the moment[end if].";
				say "     [if kto is 2]Humorously you find yourself chuckling into the back of your heads as you watch how Kenaz literally takes command of the situation as he barks out orders. You do the other Dalmatian proud by standing your ground and helping them finish up spraying down the building until at last, some thirty minutes later, the fire has finally died out[else]Watching as Othala and Kenaz work together to try and control this situation you chuckle mirthfully as you notice how all of the other Dalmatians follow the leadership of the former female without question. Othala wastes no time as she barks out orders amongst the pack while having Kenaz stand beside you to help shoulder some of the burden of having you hold onto the gushing hose in between your padded hands. The other male says nothing to you as you and he work together to put out the fire, however, you don't fail to notice the twinkle of pride shining in Kenaz's green orbs as he glances at you when he thinks you're not looking[end if]. Once the hungry flames of the fire have been completely drowned out the Dalmatians quickly turn to those around you, asking everyone the standard questions that go along with having survived an ordeal like this and giving medical aid to those that they can while waiting for the ambulance to get there.";
				LineBreak;
				if kto is 2:
					say "     When several white trucks pull up you find yourself sighing in relief... that is, right before you turn to notice a very angry Dalmatian looking down at you. Kenaz seems both pissed and elated that you've survived this trail, even more so at the fact that you actually managed to help out with your unrefined skills and instinctual talents. The herm makes no bones about telling you off though, and you actually pull back some as you try to whether the storm of the other's wrath. However, once the eight foot Dalmatian has calmed down he tiredly reaches around you to take you into his arms before hugging you tight. No words need be spoken between either of you as you both understand what the other is thinking. Ironically the military shows up to help, late as usual, some minutes later to lead you and everyone else back to one of their campsites.";
					say "     When you return with the armed forces back to their military camp to get checked over properly this time, you managing to drag the other Dals with you through some smooth jive talk, there's a lot of noise about you becoming a firefighter professionally after everything is said and done. However, you barely pay this any mind as you simply want to just be with Kenaz right now. The larger Dal is all too happy to comply with your desires, especially once the both of you get some alone time together at the behest of one of the scientist involved with checking you and Kenaz over. The howls you and your lover make are still talked about amongst the soldiers in the military to this day as many of them found themselves remembering the way a certain rickety cot inside of the tent you and Kenaz had been housed in literally squeaked and rocked a full night long.";
				else:
					say "     Othala seems more pissed at you than Kenaz as the former female Dal barks into your face as he tells you about how stupid you were. Of course just as soon as his anger has calmed down Othala is quick to congratulate you on doing such a fine job, what with your unrefined skills and all. You're not sure whether to be proud of yourself or ashamed as the growls from the former female Dalmatian have actually made the hairs on your body stand up on end. However, when Kenaz comes over to take you into his arms you find yourself melting as the other Dal kisses and licks you across the slightly burnt fur of your muzzle you find yourself blushing and then smiling tiredly up at the other as he goes about showering you in affection.";
					say "     When the military comes along to check over you, you find yourself, along with the rest of the pack, being taken in for inspection, much to everyone's annoyance. Being the [']hero['] of the hour does net you some perks though as when you and Kenaz finish being tested over by some of the weird procedures the doctors here have dreamed up for mutates of your species, the anal probing with thermometer is something you're still wondering about to this day, you find yourself being allowed some private time alone with Kenaz. No one present needed to guess what would happen next once the single flap to the tent you and your companion had been left in flipped to a close. And yet, the sounds of your [italic type]enjoyment[roman type] at being reunited with the Dalmatian makes for some interesting gossip amongst the both military and the pack of firefighting Dals days later. However, by that time your biggest concern has shifted from whether or not you and Kenaz were an item to whether or not you should become a full-fledged firefighter and stay with the others or not.";
					say "     The offer is very tempting, considering that Kenaz and the others have decided to all buy a large condo together to make into their new den. However, you have a lot to think over first...";

Dalmatian ends here.
