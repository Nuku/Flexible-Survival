Version 2 of Panther Herm by Sarokcat begins here.
[ Version 2 - Sven specific endings added ]


"Adds a Pantherherm to Flexible Survival's Wandering Monsters table, with impreg chance"


Section 1 - Creature Responses


to say Pantherherm attack:
	say "'whee.'";
	wait for any key;
	if Player is female:
		say "nothing to see here, move along";
		infect "Panther Herm";
	else:
		say "hump hump hump";
		infect "Panther Herm";


To say Pantherherm loss:
	say "khaaaaaaan.'";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Panther"; [name of the overall species of the infection, used for children, ...]
	add "Panther Herm" to infections of FelineList;
	add "Panther Herm" to infections of FurryList;
	add "Panther Herm" to infections of NatureList;
	add "Panther Herm" to infections of HermList;
	add "Panther Herm" to infections of BarbedCockList;
	add "Panther Herm" to infections of SheathedCockList;
	add "Panther Herm" to infections of BipedalList;
	add "Panther Herm" to infections of TailList;
	now Name entry is "Panther Herm";
	now enemy title entry is "Pantherherm"; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]She leaps forward, slamming into you roughly![or]Lowering her head, she points her sharp horns at you as she charges.[or]Leaping up she lashes out at you with her hooflike feet![or]Dancing forward she lashes out with her hoof like hand.[or]Springing forward, she slams her body into you, knocking you down.[at random]";
	now defeated entry is "[Pantherherm loss]";
	now victory entry is "[Pantherherm attack]";
	now desc entry is "Angie pounces you happily, mmmm angiepouncing!";
	now face entry is "now a panther-like muzzle, with bright golden panther eyes. Your face is a perfect and erotic blend of panther and human features, a feline grin tugging at your muzzle as you stare out at the world from your new"; ["You have a (your text) face."]
	now body entry is "powerful and predatory, your large frame balances easily on your rather paw-like feet, your changed legs giving you the impression of always being ready to pounce forward on an opponent, and your clawed hands have soft pads on the palms for easier pouncing"; [Your Body is (your text)"]
	now skin entry is "[one of]black furred[or]dark-furred[or]panther-like[at random]"; [ skin Description, format as "Looking at yourself, your body is covered in (your text) skin"]
	now tail entry is "You have a long feline tail extending down from your spine, the tail lashing back and forth in a predatory manner with every step you take."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "[one of]feline[or]Panther[or]barbed[or]pointed feline[at random]"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your muscles shift and crack, your jaw stretching out slightly as your teeth take on a sharper more feline form, your face pushing out slightly into a small muzzle as all your senses seem to sharpen, the world coming into a bright new focus through your slit pupiled golden feline eyes"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it seems to stretch and lengthen, your spine cracking slightly as you stretch instinctively with the changes, your body becoming more lithe and flexible even as your hands and feet seem to shift slightly, your legs shifting so that you now can balance easily on the pads of your new hindpaws, and soft velvety pads covering your palms even as sharp claws push out of your slightly thicker fingers. Finished stretching, you smile as you realize you seem to have put on several inches of height, and a decent amount of extra muscle as well"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "a strange comforting warmth spreads over your body, soft black fur pushing out of your skin and settling into place all over your body, covering you completely with its silken softness"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your spine seems to extend outwards, a long feline tail quickly forming behind you and lashing happily from side to side"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it narrows down, soft feline barbs forming along its slightly more pointed length as it draws up between your legs. A soft, panther-like sheath forms around it and holds it up closer to your body, leaving just the tip of your cock poking out teasingly"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 18;
	now dex entry is 24;
	now sta entry is 18;
	now per entry is 16;
	now int entry is 15;
	now cha entry is 20;
	now sex entry is "Both";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 100;
	now lev entry is 10;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 20;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 8;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 12;
	now Cunt Tightness entry is 6;
	now SeductionImmune entry is false;
	now libido entry is 60;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sleek[or]powerful[or]sultry[at random]";
	now type entry is "feline";  [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Panther Herm ends here.
