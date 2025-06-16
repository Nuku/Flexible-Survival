Table of Random Critters (continued) 
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
[The entire section on line 98-100 here creates a table entry for an infection to "live" in. Without it, the game will glitch. Never forget to add it for each infection! There's always a single empty line between the line of --s and the "choose" line below.]

Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false; [This should always say False. You don't need to know why, just remember it!]
	now Species Name entry is "Beag"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Beag" to infections of OtherwordlyList; 
	add "Beag" to infections of NatureList;
	add "Beag" to infections of MaleList;
	add "Beag" to infections of BluntCockList;
	add "Beag" to infections of HumanList;
	add "Beag" to infections of BipedalList;
	add "Beag" to infections of MagicalList;
	add "Beag" to infections of AlwaysRutList;
	now Name entry is "Beag"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "A taller human mutant stands in front of you in his naked glory, 'looks like you'll be some fun while I wait for my fine piece of ass to come back, get ready to dicked down!' "; 
	now enemy Name entry is "Beag"; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]The Beag slams into you and pins you to the ground for a moment, with your face in his sweaty crotch![or]The Beag grips you tightly before slamming you into the ground [or]The Beag slams his body into you, grinding his crotch fervently into your body before your able to recover, leaving you smelling like him![at random]";
	now defeated entry is "[beattheBeag]"; [ Text when monster loses. This plays when you win the fight!]
	now victory entry is "[losetoBeag]"; [ Text when monster wins. This plays when you lose or submit.]
	now desc entry is "[Beagdesc]"; [ Description of the creature when you encounter it. This plays before you start a fight.]
	now face entry is "that of a Beag, you look quite masculine as it is human, you lack any bovine features your 'big brothers' have."; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "that of a olympic sprinters, your muscled body is packed with dense muscle, yet your no bodybuilder to really monopolize on your new endurance."; [ Body description, format as "Your body is [Body of Player]." ]
	now skin entry is "blue-colored and rugged "; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your backside is a dense behind that you can slap multiple times and watch as it barely shakes, its completely dense enough to catch a bullet... though you wouldnt want to find out if that thought is true."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]large humans[or] 'horse-like' human shaft[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]

	now face change entry is "it stretches and warps, growing and pulling forward into a short ursine mouth. Your  teeth sharpen into points and your lips develop a little bit of give, all the better for baring your teeth. Two fluffy rounded ears sprout from the top of your head, twitching at the slightest noise"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "becomes hulking and weighty, yet cut and muscular. You broad shoulders and strong muscles peter off in a V-shape toward your waist, where a six pack sits. Your fingers grow claws, and the tips of them sport soft pads. Your feet become wider, with sharp nails and spread paws to support your weight"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin grows slightly damp, as though you're prone to sweating, and growsa thick layer of fluffy fur that soaks up the scents and moisture from it"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes rounded and bouncy, with just enough muscle to maintain its shape, topped with a nub of a tail that sits at the apex"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "takes on a distinctly canine shape, with a bulbous knot at the base and a tapering length. It has a distinct funky smell that pours off of it no matter what you do, like you've been at the gym for hours without a shower"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 17; [These stats affect the creature's combat potential when you encounter it as a monster.]
	now dex entry is 12; [Try not to make the values substantially high.]
	now sta entry is 22; [If you make them too high, the fight becomes far too hard.]
	now per entry is 10; [Bonus points if they match the creature's personality!]
	now int entry is 6;	[Like this setup would be a strong, medium fast himbo with a lot of stamina and bad people skills.]
	now cha entry is 8; 
	now sex entry is "Male"; [ Infection will move the Player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 77; [ The monster's starting HP. ]
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9; [ Monster's average damage when attacking. ]
	now area entry is "High Rise"; [ "Outside" "Mall" "Park" "Beach" etc... This determines where the creature will appear as an enemy. "Nowhere" means they can't be "hunted" and won't show up during "explore" commands.]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 8; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a Player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a Player. ]
	now SeductionImmune entry is false; [Whether or not the creature is immune to the the "tease" command.]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "Beag Hair"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 42; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Beag Sweat Bottle"; [Item given when using the "milk yourself" command in game.]
	now CumItem entry is "Beag Slimy Cum"; [Item given when using the "Jerk Off" command in game.]
	now TrophyFunction entry is "[GenerateTrophyList_Beag]"; [Points to a list of items you can get whe the creature is defeated.]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]beefy[or]muscular[at random]";
	now type entry is "Beag"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true; [Whether the creature is magical or not.]
	now resbypass entry is false; [Determines whether the creature can infect while ignoring the researcher feat. Usually false.]
	now non-infectious entry is false; [A switch to determine whether the creature infects players who have sex with them.]
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [Alternative combat. New writers should not mess with this. Leave it default.]
	now BannedStatus entry is false; [Leave on false. The game will ban the character based on player choices.]

to say GenerateTrophyList_Beag: [The list of item drops available to players after defeating the creature! You can make things as rare or as common as you like. Items must have an entry to drop, so don't make things up randomly without creating the item first!]
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "Beag Fur" to CombatTrophyList;
	if a random chance of (40 + LootBonus) in 100 succeeds:
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";