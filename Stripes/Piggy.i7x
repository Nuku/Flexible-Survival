Version 1 of Piggy by Stripes begins here.

"Adds a Piggy creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say losetopiggy:
	say "     You were beaten by the creature.";
	if Player is male:
		say "     Additional paragraph for a male/herm player.";
	else:
		say "     Additional paragraph for a female player.";

to say beatthepiggy:
	say "     You were victorious over the creature.";
	if Libido of Player > 40:
		say "     Additional paragraph for a player with a libido greater than 40. Do they want sex?";
		if Player consents:
			say "     The player agreed to sex. Fun times begin.";
			if Player is female:
				say "     The player is female/herm, so sex goes like this for her.";
			else:
				say "     The player must be male, so sex goes like this for him.";
		else:
			say "     Awww! The player refused the sex. Party pooper.";


to say piggydesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Pig"; [name of the overall species of the infection, used for children, ...]
	add "Piggy" to infections of PorcineList;
	add "Piggy" to infections of FurryList;
	add "Piggy" to infections of NatureList;
	add "Piggy" to infections of TaperedCockList;
	add "Piggy" to infections of BipedalList;
	add "Piggy" to infections of TailList;
	now Name entry is "Piggy"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]"; [ Successful attack message ]
	now defeated entry is "[NonCombatError]"; [ Text when monster loses. ]
	now victory entry is "[NonCombatError]"; [ Text when monster wins. ]
	now desc entry is "[NonCombatError]"; [ Description of the creature when you encounter it. ]
	now face entry is "clearly porcine, having plump, rounded cheeks surrounding your upturned pig nose. Your head is bald with big, floppy pig ears atop it. Your features are rather hog-like now, with the occasional piggish snort to go along with it";
	now body entry is "quite big, plump and fat with pig hooves instead of feet";
	now skin entry is "pink and piggy";
	now tail entry is "You have a short and curly pig tail above your ass.";
	now cock entry is "[one of]musky[or]pink[or]boar[as decreasingly likely outcomes]";
	now face change entry is "pain briefly flares across it. As your nose bulges and pushes outwards, all the hair on your head falls out as your ears stretch out and then flop downwards. Your aching nose pushes forward and flattens out into a cute, piggy snout. Your cheeks and face are plump up with fat";
	now body change entry is "an itchiness starts at your feet. Looking down, you see them begin to change, forming in piggish hooves. Even as this transformation is taking place, your body plumps up, gaining weight rapidly and quickly blocking your view of your changing feet. You are left with a very pudgy, piggish body that feels so good that you just want to wallow somewhere and enjoy it";
	now skin change entry is "a strong, dirty smell exudes from your skin as it becomes a bright, fleshy pink with short, pale hairs. Scratching an itch, you find yourself wanting to roll in some mud";
	now ass change entry is "your lower spine changes to form a small, curly tail just like that of a pig";
	now cock change entry is "dribbles of greasy precum leak from it. As that slick pre runs down it, the flesh of your cock changes, becoming human-like, but pinker. It gains a thick, musky scent that is briefly overpowered when you cum, blasting a load of greasy, bacon-smelling semen from your new pig-cock";
	now str entry is 15; [ These are now the creature's stats... ]
	now dex entry is 8; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 9;
	now cha entry is 6;
	now sex entry is "nochange"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 24; [ The monster's starting HP. ]
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 18; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 8; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 18;
	now Cunt Tightness entry is 8;
	now SeductionImmune entry is false;
	now libido entry is 30; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fat[or]overweight[or]plump[at random]";
	now type entry is "[one of]porcine[or]piggish[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;



Section 3 - Items

Table of Game Objects (continued)
name	desc	weight	object
"piggy fur"	"A tuft of short pink fur that looks like it has been pulled out of the coat of a pig. It's nicely soft."	0	piggy fur

piggy fur is a grab object.
It is temporary.
piggy fur is infectious.
Strain of piggy fur is "Piggy".
Usedesc of piggy fur is "[piggy fur use]";

to say piggy fur use:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";

instead of sniffing piggy fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"piggy cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Piggy' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	piggy cum

piggy cum is a grab object.
piggy cum is cum.
piggy cum is infectious.
Strain of piggy cum is "Messy Pig".
Usedesc of piggy cum is "[piggy cum use]";

to say piggy cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing piggy cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"piggy milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Piggy Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	piggy milk

piggy milk is a grab object.
piggy milk is milky.
Purified of piggy milk is "distilled milk".
piggy milk is infectious.
Strain of piggy milk is "Piggy".
Usedesc of piggy milk is "[piggy milk use]";

to say piggy milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the canine man-milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing piggy milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

[
Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Piggy Infection"	"Infection"	""	Piggy Infection rule	1000	false

This is the Piggy Infection rule:
	if Player has a body of "Piggy":
		trigger ending "Piggy Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You succumb to your Piggy infection.";
		else:
			say "     You survive, but were infected by the Piggy.";
			if Player is male:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of Player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Piggy ends here.
