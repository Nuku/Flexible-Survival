Version 1 of Football Gorilla Infections by Luneth begins here.

Section 1 - Football Gorilla Male

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Gorilla";
	add "Football Gorilla Male" to infections of PrimateList;
	add "Football Gorilla Male" to infections of FurryList;
	add "Football Gorilla Male" to infections of MaleList;
	add "Football Gorilla Male" to infections of BipedalList;
	now Name entry is "Football Gorilla Male";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The gorilla throws himself on you in a tackle that drives the air out of your lungs.[or]Calling out, 'Come on, let's have some fun,' the gorilla claps his strong hand against your back, with a strength that leaves you somewhat stunned.[or]You get thrown aside and fall down as the gorilla demonstrates one of his moves - by running at you at full steam and striping you with his armored shoulder-pad.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[Gorilla Loses]";   [ Text or say command used when Monster is defeated.]
	now victory entry is "[Gorilla Wins]";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[Gorilla Desc]";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a gorilla, with a very wide, thin-lipped mouth, almost as wide and flat as your nose along with human-like eyes under heavy brows. Short fur covers your whole head with the exception of your inner facial area";
	now body entry is "relatively wide and burly, with strong muscles that allow you to move and run pretty fast despite the large bulk. The curve of your spine and two elongated arms make it easy to drop to all fours to do so, but you're still capable of upright walking if you chose to do so";
	now skin entry is "[one of]black furred[or]densely furred[or]furred[at random]";
	now tail entry is "You have a wide and meaty butt, ideally cushioned to sit down on if you want to rest your bulky shape.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human[or]human-like[at random]";
	now face change entry is "it reshapes itself into a gorilla's simian visage, with a wide and very flat nose, pretty thin-lipped mouth and protruding brows over human-like eyes. Short fur sprouts everywhere but the innermost facial area"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it morphs into burly shape of a big gorilla, large-boned and with considerable bulk, but also a set of strong muscles to go with all that. Your arms end up being a bit longer than your legs, which allows for easy walking on all fours from, now on, if you so choose"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "dense black fur spreads rapidly over your form"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it gets meaty and well-cushioned, perfect to rest a heavy body on when you sit down"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your member grows thicker and gains a dark black skin color and human-like shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 30;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100;                [ The monster's starting HP. ]
	now lev entry is 12;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 16;               [ Monster's average damage when attacking. ]
	now area entry is "Campus";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 16;        [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]          [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 60;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]burly[or]powerful[at random]";
	now type entry is "simian";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;



Section 2 - Football Gorilla Cuntboi

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Gorilla";
	add "Football Gorilla Cuntboi" to infections of PrimateList;
	add "Football Gorilla Cuntboi" to infections of FurryList;
	add "Football Gorilla Cuntboi" to infections of TransList;
	add "Football Gorilla Cuntboi" to infections of BipedalList;
	now Name entry is "Football Gorilla Cuntboi";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "     ..."; [Text used when the monster makes an Attack]
	now defeated entry is "     ...";   [ Text or say command used when Monster is defeated.]
	now victory entry is "     ...";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "     ...";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a gorilla, with a very wide, thin-lipped mouth, almost as wide and flat as your nose along with human-like eyes under heavy brows. Short fur covers your whole head with the exception of your inner facial area";
	now body entry is "relatively wide and burly, with strong muscles that allow you to move and run pretty fast despite the large bulk. The curve of your spine and two elongated arms make it easy to drop to all fours to do so, but you're still capable of upright walking if you chose to do so";
	now skin entry is "[one of]black furred[or]densely furred[or]furred[at random]";
	now tail entry is "You have a wide and meaty butt, ideally cushioned to sit down on if you want to rest your bulky shape.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human[or]human-like[at random]";
	now face change entry is "it reshapes itself into a gorilla's simian visage, with a wide and very flat nose, pretty thin-lipped mouth and protruding brows over human-like eyes. Short fur sprouts everywhere but the innermost facial area"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it morphs into burly shape of a big gorilla, large-boned and with considerable bulk, but also a set of strong muscles to go with all that. Your arms end up being a bit longer than your legs, which allows for easy walking on all fours from, now on, if you so choose"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "dense black fur spreads rapidly over your form"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it gets meaty and well-cushioned, perfect to rest a heavy body on when you sit down"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your member grows thicker and gains a dark black skin color and human-like shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 30;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100;                [ The monster's starting HP. ]
	now lev entry is 12;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 16;               [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0;        [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 8;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]          [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 60;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]burly[or]powerful[at random]";
	now type entry is "simian";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;




Football Gorilla Infections ends here.
