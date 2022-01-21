Version 1 of Anthro Cow Infections by Luneth begins here.

Book 1 - Cowbois

Section 1 - Cow-boi Male

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Cow";
	add "Cow-boi Male" to infections of BovineList;
	add "Cow-boi Male" to infections of FurryList;
	add "Cow-boi Male" to infections of MaleList;
	add "Cow-boi Male" to infections of BipedalList;
	now Name entry is "Cow-boi Male";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "     ..."; [Text used when the monster makes an Attack]
	now defeated entry is "     ...";   [ Text or say command used when Monster is defeated.]
	now victory entry is "     ...";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "     ...";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a charming cow, with a very wide muzzle and a damp nose that is a dark-purple color complete with flaring nostrils. Short black and white fur grows over your entire head other than the large black keratin horns that are sprouting from the sides of your skull. Your entire face tells the world that they should be trying to get your attention, the clincher being your inviting and warm honey-brown eyes";
	now body entry is "pretty wide, with powerful shoulder muscles that continue down across your pecs, abs, and thighs. Upon further inspection of your massive pecs, they appear to have far more muscle than the rest of you, almost giving off the effect of meaty tits rather than simple pecs. Giving your nips a slight squeeze, you are rewarded with some creamy milk on your fingers. To complete the look, your body is also covered in short black and white fur. ";
	now skin entry is "[one of]black and white furred[or]short furred[or]furred[at random]";
	now tail entry is "You have a wide and jiggling butt, rather than muscle, it appears as nothing more than a mass of fat, its hypnotic rhythm enticing even yourself. From above your ass emerges a decent length tail that whips back and forth smacking your tantalizing cheeks.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human[or]human-like[at random]";
	now face change entry is "it draws out into a bovine muzzle, with a moist dark-purple nose. Without warning, two large black keratin horns burst through the sides of your skull and slowly begin to grow outward. Your eyes begin to shift and grow larger, the iris's turning a honey-brown color and short black and white fur starts to cover your entire head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it bulges out and from under your flesh muscles start grow. Your pecs begin to swell up and an off-white liquid trickles from your newly sensitive nipples down your freshly formed abs. Your feet slowly melt together and harden into hooves while black and white fur creeps up your legs all the way until it covers your shoulders as well"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "short black and white fur spreads rapidly over your form"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your hips begin to widen and your ass fills out... however it doesn't seem to be stopping. Falling down to all fours, a large 'Mooooo' erupts from your throat as a thin whip-like tail emerges from the base of your spine and repeatedly starts smacking your behind. With each strike your already sizable rear grows even larger and wobbles back and forth. Thankfully, it doesn't take very long to get used to the added weight and you rise up, the constant whipping of your butt may take some more getting used to though"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your member grows thicker and gains a black and white color to the shaft, while the head turns a soft pastel-pink. Oddly enough after the color change your cock is left with a human-like shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
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
	now Cock Count entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 6;        [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 3;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]          [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "macho milk";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]burly[or]powerful[at random]";
	now type entry is "bovine";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;



Book 2 - Cow-babes

Section 2 - Cow-babe Females

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Cow";
	add "Cow-babe Female" to infections of BovineList;
	add "Cow-babe Female" to infections of FurryList;
	add "Cow-babe Female" to infections of MaleList;
	add "Cow-babe Female" to infections of BipedalList;
	now Name entry is "Cow-babe Female";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "     ..."; [Text used when the monster makes an Attack]
	now defeated entry is "     ...";   [ Text or say command used when Monster is defeated.]
	now victory entry is "     ...";    [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "     ...";            [ Description of the creature when you encounter it. ]
	now face entry is "that of a beautiful cow, with a soft, wide muzzle and a damp nose that is a dark-pink color complete with flaring nostrils. Short black and white fur grows over your entire head other than the small black keratin horns that are sprouting from the sides of your skull. Your entire face tells the world that they should be trying to get your attention, the clincher being your inviting and bubbly baby-blue eyes";
	now body entry is "pretty wide, with soft yet firm shoulder muscles that continue down across your breasts, abs, and thighs. Upon further inspection of your breasts, the flesh appears to be much more elastic than normal. Giving your nipples a slight squeeze, you are rewarded with some creamy milk on your fingers. To complete the look, your body is also covered in short black and white fur. ";
	now skin entry is "[one of]black and white furred[or]short furred[or]furred[at random]";
	now tail entry is "You have a wide and jiggling butt, rather than muscle, it appears as nothing more than a mass of fat, its hypnotic rhythm enticing even yourself. From above your ass emerges a decent length tail that whips back and forth smacking your tantalizing cheeks.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]human[or]human-like[at random]";
	now face change entry is "it draws out into a soft bovine muzzle, with a moist dark-pink nose. Without warning, two small black keratin horns burst through the sides of your skull and slowly begin to grow. Your eyes begin to shift and grow larger, the iris's turning a baby-blue color and short black and white fur starts to cover your entire head"; [ face change text. format as "Your face feels funny as (your text)." ]
	now body change entry is "it bulges out slightly and from under your flesh feminine muscles start grow. Your breasts begin to swell up and an off-white liquid trickles from your newly sensitive nipples down your flat tummy. Your feet slowly melt together and harden into hooves while black and white fur creeps up your legs all the way until it covers your shoulders as well"; [ body change text. format as "Your body feels funny as (your text)." ]
	now skin change entry is "short black and white fur spreads rapidly over your form"; [ skin change text. format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your hips begin to widen and your ass fills out... however it doesn't seem to be stopping. Falling down to all fours, a large 'Mooooo' erupts from your throat as a thin whip-like tail emerges from the base of your spine and repeatedly starts smacking your behind. With each strike your already sizable rear grows even larger and wobbles back and forth. Thankfully, it doesn't take very long to get used to the added weight and you rise up, the constant whipping of your butt may take some more getting used to though"; [ ass/tail change text. format as "Your ass feels funny as (your text)." ]
	now cock change entry is "your member grows thicker and gains a black and white color to the shaft, while the head turns a soft pastel-pink. Oddly enough after the color change your cock is left with a human-like shape"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 30;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 8;
	now cha entry is 12;
	now sex entry is "Female";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 100;                [ The monster's starting HP. ]
	now lev entry is 12;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 16;               [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";         [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0;        [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 3;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 16;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 2; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]          [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "sweet milk";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]strong[or]soft[or]squishy[at random]";
	now type entry is "bovine";
	now magic entry is false;           [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;





Anthro Cow Infections ends here.
