Version 1 of Grey Squirrel For FS by Stripes begins here.

"Adds a Grey Squirrel infection for use with Macadamia."

Section 1 - Monster Responses

when play begins:
	add { "Grey Squirrel" } to infections of guy;
	add { "Grey Squirrel" } to infections of furry;

to say losetogreysquirrel:
	say "non-combative.";

to say beatthegreysquirrel:
	say "non-combative.";

to say greysquirreldesc:
	say "non-combative.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Grey Squirrel";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "non-combative.";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthegreysquirrel]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetogreysquirrel]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[greysquirreldesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "at once adorable and sexy as a squirrel.  You have cute whiskers, a short muzzle and rounded ears.  You have a long mane of flowing hair that always seems permed";
	now body entry is "[if cunts of player > 0]very sexy, always moving to show off its shapely form.  You possess wide hips, a slender waist and overall feminine lines[otherwise]very sleek and agile, with great flexibility[end if].  Your hands end in dainty little paws with claws made for climbing";
	now skin entry is "grey fur";
	now tail entry is "You have a big, bushy squirrel's tail.";
	now cock entry is "pink";
	now face change entry is "your head reshapes itself, jaw and cheekbones reforming into a small muzzle.  Your ears change, growing rounded as long locks of well-styled hair flows out from the back of your head.  Soon you have a cute and sexy squirrel's head atop your shoulders";
	now body change entry is "your spine starts to bend and flex as you become a cute and sexy squirrel with dainty, nimble paws with hard claws for climbing at your fingertips";
	now skin change entry is "smooth, fluffy grey fur spreads over you.  It has a lighter tone across the chest and loins, drawing the eyes there";
	now ass change entry is "a long tail forms, rapidly filling out with a large, fluffy coat of grey fur and forming into a big squirrel tail with a noticeable curl at the end";
	now cock change entry is "it shifts and takes on a largely human form with a natural flesh tone to it";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 10;
	now dex entry is 20;
	now sta entry is 10;
	now per entry is 12;
	now int entry is 6;
	now cha entry is 16;
	now sex entry is "Female";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 24;			[ The monster's starting hit points. ]
	now lev entry is 1;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 3;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 12;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 6;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 6;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 5;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 45;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if cunts of player > 0][one of]womanly[or]full-figured[or]wide-hipped[at random][otherwise][one of]flexible[or]slender[or]cute[or]pretty[at random][end if]";
	now type entry is "[one of]squirrel[or]sciurine[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[to be added later]
[
when play ends:
	if bodyname of player is "Grey Squirrel":
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

[ Edit this to have the correct creature name as well]
Grey Squirrel For FS ends here.