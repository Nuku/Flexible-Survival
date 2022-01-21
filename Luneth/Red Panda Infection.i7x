Version 1 of Red Panda Infection by Luneth begins here.

Section 1 - Creature Insertion [Red Panda]


Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Red Panda";
	add "Red Panda" to infections of FurryList;
	add "Red Panda" to infections of NatureList;
	add "Red Panda" to infections of MaleList;
	add "Red Panda" to infections of TaperedCockList;
	add "Red Panda" to infections of SheathedCockList;
	add "Red Panda" to infections of BipedalList;
	add "Red Panda" to infections of TailList;
	now Name entry is "Red Panda";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a cute looking red panda"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "short in stature, with a bit of extra weight around your middle"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "russet colored fur with white patches around your face"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your tail is long and covered in bushy fur."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "barbed ailurus"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your head shifts and pops and then finally melts down into a point giving you a Red Panda-like face while your ears stick out from the side and your eyes turn a golden hazel color"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your body starts to become much more pudgy and your hands and feet end going completely flat while hook like claws emerge from within"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "medium length, russet and white fur pushes out from the pores of your skin making you itch all over"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "your butt expands outwards and then suddenly pulls inwards as your spine lengths with the onset of your growing tail. All the while your ass has been become much thicker"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "the mass grows and then tapers off to a point while becoming crimson in color. At the base of your shaft you have sharp barbs going backwards"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 14; [ These are now the creature's stats... ]
	now dex entry is 18; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 13; [ These values may be used as part of alternate combat.]
	now per entry is 15;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 60; [ The monster's starting HP. ]
	now lev entry is 7; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 1; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "red panda cum";
	now TrophyFunction entry is "-";
	now scale entry is 2; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]chubby[or]pudgy[or]cute[at random]";
	now type entry is "ailurus"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;



Table of Game Objects (continued)
name	desc	weight	object
"red panda cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Red Panda Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	red panda cum

red panda cum is a grab object. red panda cum is cum.
red panda cum is infectious. Strain of red panda cum is "Red Panda".
Usedesc of red panda cum is "[Red Panda cum use]";

to say Red Panda cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing red panda cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Red Panda Infection ends here.
