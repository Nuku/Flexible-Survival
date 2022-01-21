Version 1 of Placeholder Infections by Wahn begins here.
[Version 1]

Section 1 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Red Fox";
	add "Red Fox" to infections of VulpineList;
	add "Red Fox" to infections of FurryList;
	add "Red Fox" to infections of MaleList;
	add "Red Fox" to infections of TaperedCockList;
	add "Red Fox" to infections of SheathedCockList;
	add "Red Fox" to infections of BipedalList;
	now Name entry is "Red Fox";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]Fight Text 1.[or]Fight Text 1.[at random]";
	now defeated entry is " ";
	now victory entry is " ";
	now desc entry is "     This isn't supposed to be an actual infection, just a stand-in - please report how you saw this.";
	now face entry is "foxy";
	now body entry is "foxy";
	now skin entry is "red, furry";
	now tail entry is "You have a long bushy fox tail.";
	now cock entry is "foxy";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 12;
	now dex entry is 12;
	now sta entry is 12;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 25;                [ How many HP has the monster got? ]
	now lev entry is 1;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now Cock Count entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 3;         [ Size of balls ]
	now Nipple Count entry is 2;            [ Number of nipples. ]
	now Breast Size entry is 4;        [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;              [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 6;
	now Cunt Tightness entry is 4;
	now SeductionImmune entry is false;
	now libido entry is 25;            [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";              [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "foxy";
	now type entry is "foxy";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;     [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Placeholder Infections ends here.
