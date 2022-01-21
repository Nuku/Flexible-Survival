Version 1 of Pink Fox by Gherod begins here.

"Adds the Pink Fox infection to work together with the Cherry NPC."

[Version 1 - File created - Gherod]

Section 1 - Lootlist

to say GenerateTrophyList_Pink_Fox:
	say "Trophylist";
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	[if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "hellfire demon horn shard" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "soda" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "obsidian coin" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "libido pill" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";]

Section 2 - Creature Responses

to say PinkFox wins:
	say "DefeatScenes";

to say PinkFox loses:
	say "WinScenes";

to say PinkFox Desc:
	say "Description";

Section 3 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Pink Fox";
	add "Pink Fox" to infections of VulpineList;
	add "Pink Fox" to infections of FurryList;
	add "Pink Fox" to infections of HermList;
	add "Pink Fox" to infections of TaperedCockList;
	add "Pink Fox" to infections of KnottedCockList;
	add "Pink Fox" to infections of SheathedCockList;
	add "Pink Fox" to infections of BipedalList;
	add "Pink Fox" to infections of TailList;
	now Name entry is "Pink Fox";
	now enemy title entry is "Pink Fox"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "";
	now defeated entry is "[PinkFox loses]";
	now victory entry is "[PinkFox wins]";
	now desc entry is "[PinkFox Desc]";
	now face entry is "short muzzle filled with sharp teeth set below deep brilliant rose red eyes and pointed fox-like ears, all giving you a very elegant and alluring look";
	now body entry is "tall and fit, with ample curves and powerful thighs. You have fox-like digitigrade legs that end in sharp claws";
	now skin entry is "fluffy pink pearl fur covering your whole body, gaining a stronger bubblegum pink tone at the extremeties of your limbs"; [ format as "You have (your text) skin"]
	now tail entry is "You have powerful, plump glutes, with a long fluffy tail that swings back and forth behind you, changing from pink pearl fur to a stronger pink towards the tip"; [ write a whole Sentence or leave blank. ]
	now cock entry is "[one of]canid[or]vulpine[or]knotted[or]pointed[at random]"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "your mouth pushes out into a slim muzzle. Your ears taper to points and seem to stretch out above your head as your face begins to reshape itself into the narrow, sexy visage of a fox, your slim, new muzzle full of sharp teeth and your bright, shining eyes seeing the world around you in an entirely new and more sexual light"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "you find yourself falling to the floor, your muscles twitching as your body reshapes into a slimmer and more streamlined form. Your feet shift and compress into small, dainty vulpine paws, even as your hands seem to narrow, and your fingers grow closer together as soft claws push their way out of your new, slightly paw-like hands"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "a strange warmth begins to spread across your body, and a soft, downy layer of pure, pearl pink fur begins to push out of your skin. Longer, thicker fur begins to grow in, even as you begin to stroke your soft, rosy white undercoat, until you have a full pelt of pink fox fur"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your rear seems to tighten, then fill into a sexier ample shape as a soft tail begins to push its way out of your body. As your new appendage stretches out behind your body, you swish it experimentally as soft, puffy, pink pearl fur covers your new vulpine brushtail"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it tapers to a soft point, your skin distending slightly at the base as a sheath begins to form around your increasingly canid cock, and you find yourself groaning slightly as the base of your cock bulges out as a knot forms, then slips into its new waiting sheath"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 21;
	now dex entry is 24;
	now sta entry is 19;
	now per entry is 18;
	now int entry is 19;
	now cha entry is 22;
	now sex entry is "Both";
	now HP entry is 96;
	now lev entry is 14;
	now wdam entry is 19;
	now area entry is "";         [ Case sensitive]
	now Cock Count entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 9;
	now Ball Size entry is 3;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples. ]
	now Breast Size entry is 8;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 3; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 80;             [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50;          [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "pink fox milk";
	now CumItem entry is "pink fox cum";
	now TrophyFunction entry is "[GenerateTrophyList_Pink_Fox]";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]athletic[or]agile[or]furred[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "vulpine";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 2;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 4 - Items

Table of Game Objects (continued)
name	desc	weight	object
"pink fox fur"	"A pink fluff of fur from a pink fox."	0	pink fox fur

pink fox fur is a grab object.
It is temporary.
Usedesc of pink fox fur is "[pink fox fur use]";

to say pink fox fur use:
	say "Holding the fur between your palms, you stroke over it, carefully. Strangely, the fluff disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin. It seems to cause some sort of reaction with the nanites in your system...";
	infect "Pink Fox";

instead of sniffing pink fox fur:
	say "It smells sweet, like cherry blossoms.";

[---]

Table of Game Objects (continued)
name	desc	weight	object
"pink fox cum"	"The white, gooey seed of one of your past lovers. Comes inside a plastic water bottle that could be mistaken for some sort of buttermilk, if someone hadn't written 'Pink Fox' across the label. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	pink fox cum

pink fox cum is a grab object.
pink fox cum is cum.
Usedesc of pink fox cum is "[pink fox cum use]";

to say pink fox cum use:
	say "     The warm, sticky liquid tastes very sweet as you drink it. You feel the warm seed going down your throat, leaving the delightful sensation of a tasty and hot beverage. It kind of leaves you craving for more...";
	PlayerDrink 5;
	SanLoss 5;
	increase Libido of Player by 10;
	if "Iron Stomach" is not listed in Feats of Player:
		say "     It seems to cause a reaction with the nanites in your system...";
		infect "Pink Fox";

instead of sniffing pink fox cum:
	say "It smells a bit like you would expect cum to smell, but there is something different about it that you cannot identify.";

[---]

Table of Game Objects (continued)
name	desc	weight	object
"pink fox milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Pink Fox Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	pink fox milk

pink fox milk is a grab object.
pink fox milk is milky.
Purified of pink fox milk is "distilled milk".
Usedesc of pink fox milk is "[pink fox milk use]";

to say pink fox milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the pink fox milk run over your tongue and down your throat. Tastes rich and oddly sweet. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;
	if "Iron Stomach" is not listed in Feats of Player:
		say "     It seems to cause a raction with the nanites in your system...";
		infect "Pink Fox";

instead of sniffing pink fox milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Section 5 - Endings

Pink Fox ends here.
