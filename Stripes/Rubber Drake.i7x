Version 1 of Rubber Drake by Stripes begins here.

"Adds a Rubber Drake infection to Flexible Survival's Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Rubber Drake" } to infections of humorous;
	add { "Rubber Drake" } to infections of Tailweapon;		[usable for Tail Strike feat]
	add { "Rubber Drake" } to infections of Reptilelist;	[list of reptile infections]
	add { "Rubber Drake" } to infections of Latexlist;		[list of latex/rubber/PVC skin infections]
	add { "Rubber Drake" } to infections of Firebreathlist;	[list of fire breathing creatures]

to say losetorubberdrake:
	say "ERROR: Rubber Drake - Not a creature.";

to say beattherubberdrake:
	say "ERROR: Rubber Drake - Not a creature.";

to say rubberdrakedesc:
	say "ERROR: Rubber Drake - Not a creature.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Rubber Drake";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "ERROR: Rubber Drake - Not a creature.";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattherubberdrake]";				[ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetorubberdrake]";					[ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[rubberdrakedesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "stretched out into a draconic muzzle with brow ridges and horns. It all feels kind of rubbery and all molded together, even the tiara you're wearing is part of it and appears as if shoddily painted golden yellow. It is more like some kind of [if mdasslevel > 0]Magic Drake [end if]mask you can't take off, though it certainly feels like its part of you when you touch it";
	now body entry is "excessively curved with outlandishly over-sized hips and buttocks on an otherwise average (if nine-foot tall) frame. This massive bottom has no real weight to it, feeling empty as if filled only with air, much like the rest of you. Your hands and feet have changed, now sporting rubbery talons like costume gloves. You have a pair of latex wings on your back that, despite being balloon-like, you're able able to move around[if mdasslevel > 0]. Overall, you look and feel like a rubbery imitation of a certain drake you've met[end if]";
	now skin entry is "green rubber with a scale pattern printed across your";
	now tail entry is "You sport a puffy rubber tail loosely shaped like that of a dragon.";
	now cock entry is "[one of]green[or]rubber[or]draconic[at random]";
	now face change entry is "stretches and shifts and you begin to feel light-headed. Through momentarily blurred vision, you can see a rubbery, draconic muzzle start to form. Brow ridges and horns sprout up, but they're made of firm rubber and feel as if a molded part of your head. The whole of it seems to be molded together actually, with the seams a little uneven at times";
	now body change entry is "an unusual sensation spreads through you. Starting off as a tingle of strange energy, it builds until your body starts reshaping itself. Your figure changes, becoming nearly nine feet tall, with an exaggeratedly curvy shape. While your torso and arms are standard enough, your [if breast size of player > 5]breasts, [end if]ass and hips swell up, inflating to great size. They grow and grow until each buttock exceeds your own waist in size. Distracted by this change, you hardly notice at first your hands and feet gaining rubbery talons and textured scales. The growing pressure at your shoulder blades does get your attention though, building uncomfortably until finally pushing out a pair of latex dragon wings with inflated, balloon-like struts";
	now skin change entry is "green rubber spreads across your skin with a scaled pattern marked onto it";
	now ass change entry is "your rear puffs up, filling with air pressure. This grows and grows until that air is funnelled into a new, draconic tail made of rubber that swells from your spine";
	now cock change entry is "throbs and twitches. Precum drools from it and, as you watch with an odd excitement, it becomes green in colour with a rubbery feel";
	now str entry is 11;			[ These are now the creature's stats... ]
	now dex entry is 10;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 6;			[ These values may be used as part of alternate combat. ]
	now per entry is 13;
	now int entry is 8;
	now cha entry is 14;
	now sex entry is "Male";		[ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 9;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 36;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 30;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 15;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 15;	[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;
	now body descriptor entry is "[one of]plump[or]pudgy[or]rubbery[or]inflatable[or]curvaceous[or]girly[or]feminine[at random]";
	now type entry is "[one of]draconic[or]inflatable[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry;
	now altcombat entry is "default";

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

Section 3 - Endings

[
when play ends:
	if bodyname of player is "Rubber Drake":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		else:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			else if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			else:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

[ Edit this to have the correct creature name as well]
Rubber Drake ends here.