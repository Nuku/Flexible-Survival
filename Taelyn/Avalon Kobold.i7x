Avalon Kobold by Taelyn begins here.
[ Version 1.0 - by Taelyn         ]


Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Kobold";
	add "Avalon Kobold" to infections of ReptileList;
	add "Avalon Kobold" to infections of FurryList;
	add "Avalon Kobold" to infections of MythologicalList;
	add "Avalon Kobold" to infections of TaperedCockList;
	add "Avalon Kobold" to infections of InternalCockList;
	add "Avalon Kobold" to infections of BipedalList;
	add "Avalon Kobold" to infections of TailList;
	add "Avalon Kobold" to infections of OviImpregnatorList;
	now name entry is "Avalon Kobold"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "reptilian in shape and crowned with two small horns. Your wide, [Eye Color of Player] eyes are surprisingly keen, even while in the dark. Small but sharp teeth and a pointed tongue complete your draconic visage";
	now body entry is "lithe but surprisingly strong. It looks and feels perfect for a cave dwelling Kobold. [if player is female]Besides that, there is also a bit of a feminine curve to your hips, making them somewhat wider for egg laying. [end if]Your legs are digitigrade and end in three-toed feet, while your arms sport four fingered hands, each tipped with a small claw";
	now skin entry is "[if KoboldScaleColor is 1][one of]crimson[or]red[or]rose-red[at random][else if KoboldScaleColor is 2][one of]azure[or]blue[or]sea-blue[at random][else if KoboldScaleColor is 3][one of]verdant[or]green[or]forest-green[at random][else if KoboldScaleColor is 4][one of]obsidian[or]black[or]charcoal-black[at random][else if KoboldScaleColor is 5][one of]alabaster[or]white[or]snow-white[at random][else](Error, value invalid. Please report this issue to the FS Discord Server with KoboldScaleColor: [KoboldScaleColor].)[end if] scales. Despite their protective nature, you can still feel everything just fine through your now draconic";
	now tail entry is "A long and agile reptilian tail sways behind you, adjusting to your every movement to help you keep balance. It is surprisingly dexterous and you are able to control your tail as well as any other limb. It seems to wiggle at times when you are happy.";
	now cock entry is "[one of]reptilian[or]draconic[or]taperd[or]kobold[at random]";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 22; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20; [ These values may be used as part of alternate combat.]
	now per entry is 22;
	now int entry is 16;
	now cha entry is 20;
	now sex entry is "None"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 66; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 12; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 5; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 9; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 55; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lean[or]lithe[or]koboldy[or]slender[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]draconic[or]reptilian[or]kobold[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Avalon Kobold ends here.
