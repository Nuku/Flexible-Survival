Version 1 of Geimheal by OrangeHorned begins here.

Section 1 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Geimheal"	"[PrepCombat_Werewolf]"

to say PrepCombat_Geimheal:
	setmongender 3;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Firbolg-Orc Hybrid"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Firbolg-Orc Hybrid" to infections of FurryList;
	add "Firbolg-Orc Hybrid" to infections of OtherworldlyList;
	add "Firbolg-Orc Hybrid" to infections of OrcList;
	add "Firbolg-Orc Hybrid" to infections of MaleList;
	add "Firbolg-Orc Hybrid" to infections of BipedalList;
	add "Firbolg-Orc Hybrid" to infections of MpregList;
	now Name entry is "Firbolg-Orc Hybrid";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is "Geimheal"; [ Specific name of unique enemy. ]
	now enemy type entry is 2; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]Geimheal grabs you by the head and slams you into the pavement![or]The orc tackles you to the floor before bringing up his leg, slamming it down into your gut with all his might.[or]The drug dealer yoinks a chain around your leg to trip you up before smashing his fist into your chin![or]The firbolg half-breed flies a few feet into the air, getting behind you. Before you can react, metal slams into the back of your neck with the intent to kill![or]Geimheal slams the ground hard enough to lift you into the air, before grabbing you by the leg and quickly tossing your helpless body into the pavement harshly.[at random]";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 25;
	now dex entry is 14;
	now sta entry is 22;
	now per entry is 10;
	now int entry is 6;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 110; [ The monster's starting HP. ]
	now lev entry is 10; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 10;
	now Ball Size entry is 5; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 80; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is ""; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "firbolg-orc hybrid";
	now type entry is "firbolg-orc hybrid";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ]
	now DayCycle entry is 0; [ True=Nocturnal (night encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Section 2 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Geimheal Defeat"	"BadEnd"	""	Geimheal Defeat rule	20	false

This is the Geimheal Defeat rule:
	if ending "Geimheal Defeat" is triggered:
		say "     You succumb to the infection after you spend hours getting fucked by what feels like the population of a small town, any semblance of consciousness you once held broken in due process. Becoming nothing but a chimera, you wander the ground of the city looking for any that would fill your holes. It would be on a certain day you would run into a certain demon.";
		say "     The man who transformed that helpless... you can't remember anything but that he was a taur who... hurt someone... but it was so hot.";
		say "     When you offer yourself, he looks into your eyes. His smirk turns into a frown as he looks as if he saw a friend. He turns off, leaving you to find another to sate your desires.";
		the Player is lost;

Geimheal ends here.
