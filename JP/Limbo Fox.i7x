Version 1 of Limbo Fox by JP Begins here.

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins: [This is Cyn's default creature encounter]
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Limbo Fox";
	add "Limbo Fox" to infections of VulpineList;
	add "Limbo Fox" to infections of FurryList;
	add "Limbo Fox" to infections of FemaleList;
	add "Limbo Fox" to infections of BipedalList;
	add "Limbo Fox" to infections of SheathedCockList;
	Add "Limbo Fox" to infections of KnottedCockList;
	add "Limbo Fox" to infections of TailList;
	add "Limbo Fox" to infections of TailWeaponList;
	now Name entry is "Limbo Fox"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "She [one of]swings her unnaturally long, sharp claws wildly at you, leaving thin red lines as they cut your [SkinName of Player] body[or]dashes towards you, using her elongated arms to propel herself and kneeing you in the stomach with great force[or]vanishes from view with a little giggle, and before you have time to react, she reappears behind you and kicks you in the back[at random].";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "on a vulpine head with a long muzzle and teeth. You have [one of]hollow[or]abyssal[or]jet[or]umbral[at random]-black eyes and black fur covers your face"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "seductively curved, with a tight, bubble butt. Your hands have hard, long, sharp, black claws at their fingertips and your feet are digitigrade paws"; [ Body Description, format as "Your Body is [Body of Player]." ]
	now skin entry is "smooth, black-colored fur over your body, with a white colored underbelly"; [ Skin Description, format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "From the base of your spine, you have two long, black-colored fox's luxurious tails."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "grey, knotted vulpine";
	now face change entry is "it shifts and stretches, gaining a long, slender muzzle which ends in a black nose and whiskers, black fur covers your muzzle as your ears move upwards and grow into pointed, vulpine ears"; [ Face change text, format as "Your face feels funny as [face change entry]." ]
	now body change entry is "it becomes a slender and seductively curved one. You can feel your butt shift as it becomes a taut bubble butt. Your hands become paw-like, with long, sharp, black claws at the tips of your fingers. You can hear cracks and pops as your ankles and feet change, becoming digitigrade paws"; [ Body change text, format as "Your body feels funny as [body change entry]." ]
	now skin change entry is "it grows a soft, fluffy layer of black fur, with a white underbelly"; [ Skin change text, format as "Your skin feels cold as [skin change entry]." ]
	now ass change entry is "two long, floofy fox tails extend from your spine. They are covered in soft, black fur"; [ Ass/tail change text, format as "Your ass feels slightly painful as [ass change entry]." ]
	now cock change entry is "it takes on a grey color as it changes shape, becoming pointed at the glans with a knot at its base"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 25;
	now dex entry is 30; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 15;
	now cha entry is 15;
	now sex entry is "Both"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 125;
	now lev entry is 25; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 20; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 7; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 6; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 5; [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 0; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "limbo fox milk";
	now CumItem entry is "Limbo Fox Cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]ghostly[or]ethereal[or]willowy[or]eldritch[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "Anomaly"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Limbo Fox ends here.