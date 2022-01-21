Version 1 of Doberman Male by Wahn begins here.

Section 1 - Creature Insertion [Doberman Male]


[ Guide to Trophy Functions                                                                                         ]
[ - Just add guaranteed drops to the CombatTrophyList, roll a random chance of X + LootBonus in 100 for rarer stuff ]
[ - Up to +10% come from the player (Perception-10)/2                                                               ]
[ - Up to +25% come from the Magpie Eyes and Mugger Feats                                                           ]
[ - A player with high perception and both feats is guaranteed items > 65%                                          ]
[ Recommended Range for Rare Drops: 1-20 %                                                                          ]
[ Recommended Range for Uncommon Drops: 21-40%                                                                      ]
[ Recommended Range for Common Drops: 41-80%                                                                        ]

to say GenerateTrophyList_Doberman_Male: [call from the table of random critters entry for the infection, to be executed when the player wins]
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	add "doberman male fur" to CombatTrophyList; [guaranteed drop]
	if a random chance of (50 + LootBonus) in 100 succeeds:
		add "food" to CombatTrophyList;
	if Debug is at level 10:
		say "Debug: Trophy List: [CombatTrophyList].";


Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Doberman";
	add "Doberman Male" to infections of CanineList;
	add "Doberman Male" to infections of FurryList;
	add "Doberman Male" to infections of NatureList;
	add "Doberman Male" to infections of MaleList;
	add "Doberman Male" to infections of TaperedCockList;
	add "Doberman Male" to infections of KnottedCockList;
	add "Doberman Male" to infections of SheathedCockList;
	add "Doberman Male" to infections of BipedalList;
	add "Doberman Male" to infections of TailList;
	now Name entry is "Doberman Male";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "that of a cunningly handsome looking Dobie"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "fit and toned without a trace of fat anywhere in sight, which results in a lithe and wiry appearance given your slim stature"; [ Body. Format as "Your body is [Body of Player]." ]
	now skin entry is "[one of]brown and black fur[or]a dense and dark pelt[or]a heavy cropping of water resistant fur[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your tail is moderately long and thin, like a Dalmatian's, but pitch black in color and curved upwards."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]knotted[or]tapered canine[or]dark crimson colored[at random]"; [ Cock. Format as "You have a 'size' [Cock of Player] cock." ]
	now face change entry is "your head shifts and then pops and then finally melts down into a point giving you a Doberman-like face while your ears push straight up onto your head and your eyes turn chocolate brown in color"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "your muscles firm up into ropy strands, seemingly ready for any exertion. Back arching, spine tingling you have just enough time to appreciate the fact that the heels of your feet are pulling back to give you a digitigrade stance before you sigh as your body finishes its transmogrification"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "short, dark brown and black fur pushes out from the pores of your skin making you itch all over"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "your butt expands outwards and then suddenly pulls inwards as your spine lengths with the onset of you growing tail. The fact that your glutes now look like the stereotypical 'bubble butt' only works to heighten the cuteness of your new appendage"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "the mass grows and then tapers off to a point while becoming crimson in color. The small bulb at the end of your rod is the only indication that you possess a canine's knot"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
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
	now Cock Length entry is 11; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 1; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [ Inches circumference. 3:extremely tight, 5:tight, 7:receptive, 10:open, 11+ gaping ]
	now SeductionImmune entry is false;
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "doberman male fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "doberman male cum";
	now TrophyFunction entry is "[GenerateTrophyList_Doberman_Male]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]lithe[or]dashing[or]sexy[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "Doberman Bitch"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Table of Game Objects (continued)
name	desc	weight	object
"doberman male fur"	"A tuft of dark brown fur that looks like it has been pulled out of the coat of a doberman. It's nicely soft."	0	doberman male fur

doberman male fur is a grab object.
Usedesc of doberman male fur is "[DobermanMaleFurUse]".

It is temporary.

to say DobermanMaleFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Doberman Male";

instead of sniffing doberman male fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";


Table of Game Objects (continued)
name	desc	weight	object
"doberman male cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Doberman Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	doberman male cum

doberman male cum is a grab object. doberman male cum is cum.
Usedesc of doberman male cum is "[doberman male cum use]";

to say doberman male cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;
	if "Iron Stomach" is not listed in feats of player:
		setmonster "Doberman Bitch";
		choose row MonsterID from the Table of Random Critters;
		now non-infectious entry is false;
		infect "Doberman Bitch";
		now non-infectious entry is true;

instead of sniffing doberman male cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Doberman Male ends here.
