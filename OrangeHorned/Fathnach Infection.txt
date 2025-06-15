Fathnach [delete when putting in]
Table of Random Critters (continued) 
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;
[The entire section on line 98-100 here creates a table entry for an infection to "live" in. Without it, the game will glitch. Never forget to add it for each infection! There's always a single empty line between the line of --s and the "choose" line below.]

Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false; [This should always say False. You don't need to know why, just remember it!]
	now Species Name entry is "Fathnach"; 
	add "Fathnach" to infections of NatureList;
	add "Fathnach" to infections of MaleList;
	add "Fathnach" to infections of Bovinelist;
	add "Fathnach" to infections of MagicalList;
	add "Fathnach" to infections of BipedalList;
	add "Fathnach" to infections of OtherworldlyList;
	add "Fathnach" to infections of HermList;
	add "Fathnach" to infections of TransList;
	add "Fathnach" to infections of AlwaysLacList;
	add "Fathnach" to infections of AlwaysHeatList;
	add "Fathnach" to infections of Birthlist;
	add "Fathnach" to infections of MpregList;

	
	now Name entry is "Fathnach"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is "A Bovine-looking Giant who is a bit of a himbo, onlt in the worse ways possible due to their daunting size and strength."; 
	now enemy Name entry is "Fathnach"; 
	now enemy type entry is 0; 

	now attack entry is "[one of]The Fathnach slams into you and pins you to the ground for a moment, with your face between his pecs![or]The Fathnach grabs you and tosses you side to side![or]The Fathnach bashes at you with his powerful fists![or]The wild creature slams his body into you, grinding his large, stiff canine cock against you as he crushes you in his arms, tossing you to the ground with a coating of pre across your stomach![at random]";

	now defeated entry is "With a exhausted sigh the giant falls on its ass in a daze. You survived the horny beasts advances!"; [ Text when monster loses. This plays when you win the fight!]

	now victory entry is "'Oh finally, I get to claim you as mine, come'ere cutie!' Either willing or not, your dragged to a more closed off area nearby before the Fathnach has its way with you"; 
	[Will need to make the victory entry up above more detailed as well as the infection, for now will just have a base infection if you have a penis]

	now desc entry is "A Bovine-looking Giant comes barreling down towards you, eyes completely grazed over with the feral lusts of the city."; 

	now face entry is "that of a Fathnach, A very bulky face with slight stubble to compliment a more masculine body type"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is " now one of blueish green skin that makes you look like that of the mountainous forests, your giant pecs and ass bubble from your giant body that could feed a entire family of people. Your arms and legs jiggle until you flex them to become a iron wall of defense";  [Body description, format as "Your body is [Body of Player.]"]
	now skin entry is "that of a Fathnatch, soft to the touch, you could run your fingers over your body for hours if time wasnt a ongoing issue."; [ Skin. Format as Your skin is [Skin of Player.]" ]
	now tail entry is "Your large behind was signed to milk the cocks of those in the city and leave their balls completely empty, your hole itself puckers as you marvel at your mounds, with the cute little bovine tail wagging from your amusement."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[Your cock is that of a trans cock almost, being a length that has no balls but a labia-turned cock that lays ontop of a drooling twat]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]

	now face change entry is "at first your nose begins to grow more large, then your facial features and ears become more more cow like in nature as you are helpless to this new bovine themed facial structure!"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body balloons out as it transformed your chest into bountiful milk jugs, your muscles jiggle violently as the fat wrap perfectly to let it become hard or soft on a flex, by the time its finished you almost worry that your old clothes may no longer fit if you got even a slightly bit bigger"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "your skin tingles to something that was smooth as it was tough, you're prone to sweating all of a sudden at the slightest of movements as the hair on your body grows rugged"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "it becomes rounded and bouncy, with just enough muscle to maintain its shape, topped with a bovines tail that is easy to store away, it wiggles around depending on your mood"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "mecomes that of a trans-mans cock, placed ontop of your labia as it drools with lubercant, your sure any hole you stick it in will be able to fit it with how messy it gets when squeezed"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]

	now str entry is 50; [These stats affect the creature's combat potential when you encounter it as a monster.]
	now dex entry is 15; [Try not to make the values substantially high.]
	now sta entry is 25; [If you make them too high, the fight becomes far too hard.]
	now per entry is 8; [Bonus points if they match the creature's personality!]
	now int entry is 5;	[Like this setup would be a strong, medium fast himbo with a lot of stamina and bad people skills.]
	now cha entry is 25; 
	now sex entry is "Both"; [ Infection will move the Player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 80; [ The monster's starting HP. ]
	now lev entry is 11; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 20; [ Monster's average damage when attacking. ]
	now area entry is "High Rise"; [ "Outside" "Mall" "Park" "Beach" etc... This determines where the creature will appear as an enemy. "Nowhere" means they can't be "hunted" and won't show up during "explore" commands.]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 0; [ Number of nipples the infection will give a Player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 2; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 20; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 4; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex the infection will try to give a Player. ]
	now SeductionImmune entry is false; [For now..wink]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "Broken Fathnach G-String"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "Firbolg Sweaty Milk"; [Item given when using the "milk yourself" command in game.]
	now CumItem entry is "Firbolg Cum"; [Item given when using the "Jerk Off" command in game.]
	now TrophyFunction entry is "[GenerateTrophyList_Fathnach]"; [Points to a list of items you can get whe the creature is defeated.] [UNSURE WHAT THIS MEANS]
	now scale entry is 5; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]jiggly[or]beefy";
	now type entry is "Giant-kin"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true; [Whether the creature is magical or not.]
	now resbypass entry is true; [Determines whether the creature can infect while ignoring the researcher feat. Usually false.]
	now non-infectious entry is false; [A switch to determine whether the creature infects players who have sex with them.]
	now Cross-Infection entry is "Fathnach"; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]

	now altcombat entry is "default"; [Alternative combat. New writers should not mess with this. Leave it default.]
	now BannedStatus entry is false; [Leave on false. The game will ban the character based on player choices.]

to say GenerateTrophyList_Fathnach: [The list of item drops available to players after defeating the creature! You can make things as rare or as common as you like. Items must have an entry to drop, so don't make things up randomly without creating the item first!]
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "Giant-Kin Cloth" to CombatTrophyList;
	if a random chance of (40 + LootBonus) in 100 succeeds:
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";