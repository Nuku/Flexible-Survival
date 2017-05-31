Version 1 of Piggy by Stripes begins here.

"Adds a Piggy creature to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Piggy" } to infections of furry;

to say losetopiggy:
	say "     You were beaten by the creature.";
	if cocks of player > 0:
		say "     Additional paragraph for a male/herm player.";
	otherwise:
		say "     Additional paragraph for a female player.";

to say beatthepiggy:
	say "     You were victorious over the creature.";
	if libido of player > 40:
		say "     Additional paragraph for a player with a libido greater than 40.  Do they want sex?";
		if the player consents:
			say "     The player agreed to sex.  Fun times begin.";
			if cunts of player > 0:
				say "     The player is female/herm, so sex goes like this for her.";
			otherwise:
				say "     The player must be male, so sex goes like this for him.";
		otherwise:
			say "     Awww!  The player refused the sex.  Party pooper.";


to say piggydesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Piggy";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "ERROR-Piggy - You two shouldn't be fighting.";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthepiggy]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetopiggy]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[piggydesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "clearly porcine, having plump, rounded cheeks surrounding your upturned pig nose.  Your head is bald with big, floppy pig ears atop it.  Your features are rather hog-like now, with the occasional piggish snort to go along with it";
	now body entry is "quite big, plump and fat with pig hooves instead of feet";
	now skin entry is "pink and piggy";
	now tail entry is "You have a short and curly pig tail above your ass.";
	now cock entry is "[one of]musky[or]pink[or]boar[as decreasingly likely outcomes]";
	now face change entry is "pain briefly flares across it.  As your nose bulges and pushes outwards, all the hair on your head falls out as your ears stretch out and then flop downwards.  Your aching nose pushes forward and flattens out into a cute, piggy snout.  Your cheeks and face are plump up with fat";
	now body change entry is "an itchiness starts at your feet.  Looking down, you see them begin to change, forming in piggish hooves.  Even as this transformation is taking place, your body plumps up, gaining weight rapidly and quickly blocking your view of your changing feet.  You are left with a very pudgy, piggish body that feels so good that you just want to wallow somewhere and enjoy it";
	now skin change entry is "a strong, dirty smell exudes from your skin as it becomes a bright, fleshy pink with short, pale hairs.  Scratching an itch, you find yourself wanting to roll in some mud";
	now ass change entry is "your lower spine changes to form a small, curly tail just like that of a pig";
	now cock change entry is "dribbles of greasy precum leak from it.  As that slick pre runs down it, the flesh of your cock changes, becoming human-like, but pinker.  It gains a thick, musky scent that is briefly overpowered when you cum, blasting a load of greasy, bacon-smelling semen from your new pig-cock";
	now str entry is 15;			[ These are now the creature's stats... ]
	now dex entry is 8;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 15;			[ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 9;
	now cha entry is 6;
	now sex entry is "nochange";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 4;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 18;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 10;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 8;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 4;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 18;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 28;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]fat[or]overweight[or]plump[at random]";
	now type entry is "[one of]porcine[or]piggish[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[
when play ends:
	if bodyname of player is "Piggy":
		if humanity of player is less than 10:
			say "     You succumb to your Piggy infection.";
		otherwise:
			say "     You survive, but were infected by the Piggy.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Piggy ends here.
