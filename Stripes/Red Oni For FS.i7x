Version 1 of Red Oni For FS by Stripes begins here.
[Version 1 - placeholder]

"Adds a Red Oni creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
	add { "Red Oni" } to infections of guy;
	add { "Red Oni" } to infections of hellspawn;

to say losetoredoni:
	say "     You were beaten by the creature.";
	if cocks of player > 0:
		say "     Additional paragraph for a male/herm player.";
	otherwise:
		say "     Additional paragraph for a female player.";

to say beattheredoni:
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


to say redonidesc:
	say "     Monster description paragraph 1.";
	say "     Monster description paragraph 2.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Red Oni";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheredoni]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetoredoni]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[redonidesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "thesaurian";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head changes in some descriptive manner";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body takes on a newly described form";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain fur/scales/skin/patterns described herein";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your tail or ass changes in the manner described by this text";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a new, kinky form";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 12;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
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
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "erudite";	[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "conceptual";		[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

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

Red Oni For FS ends here.