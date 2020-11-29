Version 1 of Draco-Mantis Infections by Prometheus begins here.

Section 1 - Creature Insertion

Section 1.1 - Male

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Draco-Mantis"; [name of the overall species of the infection, used for children, ...]
	add "Draco-Mantis Male" to infections of InsectList;
	add "Draco-Mantis Male" to infections of FurryList;
	add "Draco-Mantis Male" to infections of MaleList;
	add "Draco-Mantis Male" to infections of TaperedCockList;
	add "Draco-Mantis Male" to infections of InternalCockList;
	add "Draco-Mantis Male" to infections of BipedalList;
	now Name entry is "Draco-Mantis Male"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "now that of a Draco-Mantis, with what looks like a cross between a beak and a muzzle, chitonous and sharp";
	now body entry is "angular and intimidating, no visible fat to be seen. Upon each of your arms is a blade-like protrusion that look too sharp for you to wish to use in combat considering the amount of damage that they might cause";
	now skin entry is "green chiton";
	now tail entry is "You have a slight bump at the base of your spine, though you doubt that it could be considered a tail.";
	now cock entry is "[one of]scarlet[or]red[or]tapered[at random]";
	now face change entry is "your head fills with the hum of bees and other loud insects, hiding the sound of your bones crunching as your skull reshapes itself. When the buzzing stops, your head has settled into that of a Draco-Mantis like J'Reth";
	now body change entry is "you're unable to move as your muscles seize, a blinding light flashing around you. Despite your concern at this development, you don't feel any pain as your body begins to shift, armor-like plates forming over your torso and arms. Curved blades grow from your fore-arms, the edge of which looks extremely sharp. Once the light fades from around you, you appear well defended against physical threats around the city";
	now skin change entry is "a layer of hard green chiton spreads across your body. It looks smooth and hard enough to stop a blow with a decent amount of force behind it";
	now ass change entry is "you feel the base of your spine shift around. As it calms down again, you are left with a slight bump that you can't really consider a tail, but extends beyond your backside";
	now cock change entry is "your shaft pulses and throbs, releasing spurts of cum as it retreats into a genital slit that is developing on your groin. It looks similar to that of a dolphin, tapered and bright red in color. You can't help but find the look of it pleasing";
	now str entry is 13; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 14;
	now cha entry is 15;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 300; [ The monster's starting HP. ]
	now lev entry is 30; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 60; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 11; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]angular[or]sleek[or]armored[at random]";
	now type entry is "[one of]insectoid[or]Draco-Mantis[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 1.2 - Female

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Draco-Mantis"; [name of the overall species of the infection, used for children, ...]
	add "Draco-Mantis Female" to infections of InsectList;
	add "Draco-Mantis Female" to infections of FurryList;
	add "Draco-Mantis Female" to infections of FemaleList;
	add "Draco-Mantis Female" to infections of BipedalList;
	now Name entry is "Draco-Mantis Female"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "now that of a Draco-Mantis, with what looks like a cross between a beak and a muzzle, chitonous and sharp";
	now body entry is "angular and intimidating, no visible fat to be seen. Upon each of your arms is a blade-like protrusion that look too sharp for you to wish to use in combat considering the amount of damage that they might cause";
	now skin entry is "green chiton";
	now tail entry is "You have a slight bump at the base of your spine, though you doubt that it could be considered a tail.";
	now cock entry is "[one of]smooth[or]dark-green[or]hairless[at random]";
	now face change entry is "your head fills with the hum of bees and other loud insects, hiding the sound of your bones crunching as your skull reshapes itself. When the buzzing stops, your head has settled into that of a Draco-Mantis like J'Reth";
	now body change entry is "you're unable to move as your muscles seize, a blinding light flashing around you. Despite your concern at this development, you don't feel any pain as your body begins to shift, armor-like plates forming over your torso and arms. Curved blades grow from your fore-arms, the edge of which looks extremely sharp. Once the light fades from around you, you appear well defended against physical threats around the city";
	now skin change entry is "a layer of hard green chiton spreads across your body. It looks smooth and hard enough to stop a blow with a decent amount of force behind it";
	now ass change entry is "you feel the base of your spine shift around. As it calms down again, you are left with a slight bump that you can't really consider a tail, but extends beyond your backside";
	now cock change entry is "your shaft pulses and throbs as it retreats into a genital slit that is developing on your groin. It looks similar to that of a dolphin, tapered and bright red in color. You can't help but find the look of it pleasing";
	now str entry is 13; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 14;
	now cha entry is 15;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 300; [ The monster's starting HP. ]
	now lev entry is 30; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 60; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 2; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]angular[or]sleek[or]armored[at random]";
	now type entry is "[one of]insectoid[or]Draco-Mantis[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 1.3 - Herm

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Draco-Mantis"; [name of the overall species of the infection, used for children, ...]
	add "Draco-Mantis Herm" to infections of InsectList;
	add "Draco-Mantis Herm" to infections of FurryList;
	add "Draco-Mantis Herm" to infections of HermList;
	add "Draco-Mantis Herm" to infections of TaperedCockList;
	add "Draco-Mantis Herm" to infections of InternalCockList;
	add "Draco-Mantis Herm" to infections of BipedalList;
	now Name entry is "Draco-Mantis Herm"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "now that of a Draco-Mantis, with what looks like a cross between a beak and a muzzle, chitonous and sharp";
	now body entry is "angular and intimidating, no visible fat to be seen. Upon each of your arms is a blade-like protrusion that look too sharp for you to wish to use in combat considering the amount of damage that they might cause";
	now skin entry is "green chiton";
	now tail entry is "You have a slight bump at the base of your spine, though you doubt that it could be considered a tail.";
	now cock entry is "[one of]scarlet[or]red[or]tapered[at random]";
	now face change entry is "your head fills with the hum of bees and other loud insects, hiding the sound of your bones crunching as your skull reshapes itself. When the buzzing stops, your head has settled into that of a Draco-Mantis like J'Reth";
	now body change entry is "you're unable to move as your muscles seize, a blinding light flashing around you. Despite your concern at this development, you don't feel any pain as your body begins to shift, armor-like plates forming over your torso and arms. Curved blades grow from your fore-arms, the edge of which looks extremely sharp. Once the light fades from around you, you appear well defended against physical threats around the city";
	now skin change entry is "a layer of hard green chiton spreads across your body. It looks smooth and hard enough to stop a blow with a decent amount of force behind it";
	now ass change entry is "you feel the base of your spine shift around. As it calms down again, you are left with a slight bump that you can't really consider a tail, but extends beyond your backside";
	now cock change entry is "your shaft pulses and throbs, releasing spurts of cum as it retreats into a genital slit that is developing on your groin. It looks similar to that of a dolphin, tapered and bright red in color. You can't help but find the look of it pleasing";
	now str entry is 13; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 18; [ These values may be used as part of alternate combat.]
	now per entry is 14;
	now int entry is 14;
	now cha entry is 15;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 300; [ The monster's starting HP. ]
	now lev entry is 30; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 60; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 11; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 2; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now SeductionImmune entry is false;
	now libido entry is 45; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]angular[or]sleek[or]armored[at random]";
	now type entry is "[one of]insectoid[or]Draco-Mantis[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Draco-Mantis Infections ends here.
