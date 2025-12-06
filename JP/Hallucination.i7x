Version 1 of Hallucination by JP Begins here.

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins: [This is Cyn's default creature encounter]
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hallucination";
	add "Hallucination" to infections of FurryList;
	add "Hallucination" to infections of BipedalList;
	add "Hallucination" to infections of FemaleList;
	add "Hallucination" to infections of SheathedCockList;
	Add "Hallucination" to infections of KnottedCockList;
	add "Hallucination" to infections of TailList;
	now Name entry is "Hallucination"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 1; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "She [one of]swings her unnaturally long, sharp claws wildly at you, leaving thin red lines as they cut your [SkinName of Player] body[or]dashes towards you, using her elongated arms to propel herself and kneeing you in the stomach with great force[or]vanishes from view with a little giggle, and before you have time to react, she reappears behind you and kicks you in the back[at random].";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "Error face entry is missing";[ Face description, format as "Your face is s ss s [Face of Player]." ]
	now body entry is "body entry is missing"; [ Body description, format as "Your body is [Body of Player]. ]
	now skin entry is "skin entry is missing"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin. ]
	now tail entry is "tail entry is missing"; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "cock entry is missing"; [ Cock. Format as "You have a 'size' [Cock of Player] cock. ]
	now face change entry is "     Error"; [ Face TF text. Format as "Your face tingles as [face change entry]. ]
	now body change entry is "     Error"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "     Error"; [ Skin TF text, format as "... [skin change entry]. ]
	now ass change entry is "     Error"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]. ]
	now cock change entry is "     Error"; [ Cock TF text, format as "Your groin tingles as [cock change entry]. ]
	now str entry is 25;
	now dex entry is 20; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 10;
	now cha entry is 13;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 125;
	now lev entry is 25; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 20; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 0; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "limbo fox milk";
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]ghostly[or]ethereal[or]willowy[or]eldritch[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "Anomaly"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Hallucination ends here.