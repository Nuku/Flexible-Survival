Version 2 of Red Oni For FS by Stripes begins here.
[Version 2 - scene-less creature/infection]

"Adds a Red Oni creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Red Oni" } to infections of guy;
	add { "Red Oni" } to infections of hellspawn;

to say losetoredoni:
	say "     The red oni does some particularly rough and uncouth things with you to celebrate its victory.  You are left quite sore and sticky by the end of it.";
	if hp of Hayato is 16 or hp of Hayato is 17:
		now hp of Hayato is 18;
		say "     As you're recovering from its abusive lust, you remind yourself to inform Hayato about this new development.";
 

to say beattheredoni:
	say "     With your final blow, the demon ogre growls angrily and stumbles back several steps.  It smashes its club heavily to the earth, cracking the ground with a mighty crash.  '[one of]I shall have my vengeance[or]Your kind will suffer soon[or]I shall crush you next time, [if scalevalue of player < 4]gnat[otherwise]wretch[end if][or]My brothers shall avenge me[or]The Oni Lord will crush you and all your kind[at random],' he snarls before storming off.";


to say redonidesc:
	if hp of Hayato is 99:
		now hp of Hayato is 100;
		say "     Before you is a hulking red creature not unlike the one you'd encountered before.  Its face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs.  Atop its head is a thick mane of scraggly black hair.  The red oni wears only a crude [one of]tiger-skin[or]animal-skin[or]furry[or]leather[or]hide[at random] loincloth tied by a hemp rope that imperfectly covers its enlarged and stiffening manhood.  Standing roughly 10 feet tall and heavily muscled, the demon ogre carries a studded iron club nearly as tall as it.  It has a snarling, menacing expression on its face as it glares at you and advances.";
	otherwise if hp of Hayato is 16 or hp of Hayato is 17:
		increase hp of Hayato by 1;
		say "     Before you is a hulking red creature not unlike Hayato - another red oni.  Its face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs.  Atop its head is a thick mane of scraggly black hair.  This oni wears only a crude [one of]tiger-skin[or]animal-skin[or]furry[or]leather[or]hide[at random] loincloth tied by a hemp rope that imperfectly covers its enlarged and stiffening manhood.  Standing roughly 10 feet tall and heavily muscled, the demon ogre carries a studded iron club nearly as tall as it.  It has a snarling, menacing expression on its face as it glares at you and advances.";
	otherwise:
		say "     Before you is another red-skinned oni.  Its face is quite demonic, with a pair of large horns pointing up, an exaggerated brow and chin, yellow eyes and large, protruding fangs.  Atop its head is a thick mane of scraggly black hair.  It wears only a crude [one of]tiger-skin[or]animal-skin[or]furry[or]leather[or]hide[at random] loincloth that imperfectly covers its enlarged and stiffening manhood.  Standing roughly 10 feet tall and heavily muscled, it carries a studded iron club nearly as tall as it.  The red oni has a snarling, menacing expression on its face as it glares at you and advances.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Red Oni";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "The [one of]red oni[or]demon ogre[or]red brute[or]muscular oni[at random] [one of]bashes you with its enormous club[or]strikes you with its spiked club[or]pounds you with a big fist[or]kicks you hard enough to knock you back a few feet[or]grabs you with one of its clawed hands and headbutts you[at random]!";
	now defeated entry is "[beattheredoni]";
	now victory entry is "[losetoredoni]";
	now desc entry is "[redonidesc]";
	now face entry is "quite frightening in appearance, having gained an exaggerated brow, yellow eyes and protruding fangs.  Sticking straight up from your scraggly dark hair is a pair of horns, giving you the appearance of an oni from Japanese folklore";
	now body entry is "overall human-like, but grown to 10 feet tall and heavily muscled.  Your proportions are slightly off and your feet and hands have large, claw-like nails[if player is redonicocked].  Around your waist, a dirty loincloth of tigerskin loosely covers your crotch[end if]";
	now skin entry is "[one of]bright red[or]blood red[at random]";
	now tail entry is "";
	now cock entry is "[one of]meaty[or]veined[or]red[or]crimson[at random]";
	now face change entry is "your skull pounds angrily.  As the changes overtake you, your brow enlarges and your jaw stretches into an angry snarl.  Soon your nose swells and your chin protrudes even as your incisors grow into large fangs that stick past your lips.  As the pounding fades, a pair of horns grow onto the top of your head";
	now body change entry is "your body shifts and changes, becoming larger than normal.  You gain powerful muscles and a bit of a gut to go with it.  Your hands and feet snap and grind as they become slightly misshapen and gain dark, clawed nails";
	now skin change entry is "a wash of red spreads across it.  The red deepens until it's as rich and crimson as blood across your entire body";
	now ass change entry is "your glutes become firm and meaty";
	now cock change entry is "it becomes a deep red in colour, darkening to near black at the glans.  From your skin around your waist grows a tigerskin loincloth, somehow already dirty and frayed";
	now str entry is 22;			[ These are now the creature's stats... ]
	now dex entry is 17;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 9;
	now cha entry is 6;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 95;			[ The monster's starting hit points. ]
	now lev entry is 12;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 13;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;		[ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 0;		[ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;		[ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;		[ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]meaty[or]powerful[at random]";
	now type entry is "[one of]oni[or]demonic[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Definitions

Definition: a person is redonicocked:
	if the cockname of the player is "Red Oni", yes;
	no;


Section 4 - Endings

[
when play ends:
	if bodyname of player is "Red Oni":
		if humanity of player is less than 10:
			say "     You succumb to your template infection.";
		otherwise:
			say "     You survive, but were infected by the template.";
			if cocks of player > 0:							[MALE/HERM]
				say "     Additional text for a male/herm survivor.";
			otherwise if "Sterile" is not listed in feats of player:	[F-BREEDABLE]
				say "     Additional text for a female survivor who can become preggers.";
			otherwise:									[F-STERILE]
				say "     Additional text for a female survivor who cannot become preggers.";
]

Red Oni For FS ends here.