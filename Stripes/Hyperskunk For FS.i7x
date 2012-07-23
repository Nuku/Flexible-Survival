Version 1 of Hyperskunk For FS by Stripes begins here.

"Adds a Hyperskunk creature to Flexible Survivals Wandering Monsters table with impregchance"


Section 1 - Monster Responses

when play begins:
	add { "Hyperskunk" } to infections of hermaphrodite;
	add { "Hyperskunk" } to infections of furry;

to say losetohyperskunk:
	say "No combat.";

to say beatthehyperskunk:
	say "No combat.";

to say hyperskunkdesc:
	say "No combat.";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Hyperskunk";		[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The template attacks you in some abstract manner![or]The template leaves you greater understanding, thereby lowering your resistance to it![or]The template batters you with examples![or]The template firmly makes its point![at random]";	[Text used when the monster succeeds on an attack]
	now defeated entry is "[beatthehyperskunk]";				[ Text when monster loses.  Change 'template' as above. ]
	now victory entry is "[losetohyperskunk]";					[ Text when monster wins.  Change 'template' as above. ]
	now desc entry is "[hyperskunkdesc]";						[ Description of the creature when you encounter it. ]
	now face entry is "lovely skunk head with feminine lines.  You have pretty, gray eyes";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a sexy, wide-hipped skunk";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fluffy fur in a skunk pattern of black and white over your";
	now tail entry is "You have a big, fluffy striped tail like a skunk.";	[ Tail desc., written as a full sentence or left blank for none. ] 
	now cock entry is "slate gray";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your vision goes briefly blurry.  Your jaw pops and shifts as your new head takes shape with a very skunk-like appearance";
	now body change entry is "starts to shift and change starting at your hips.  These widen, giving you a large and sexy bottom with wide birthing hips.  Your thighs thicken as well to match.  As the changes spread further down your legs, your feet become more paw-like, though still largely resemble normal feet.  As this continues, spreading upward now, your waist grows fuller.  It's not enough to call you fat, but you're not slender either and definitely have a few inches to pinch or for someone to wrap their arms around.  Your upper body becomes shapely and sexy and your hands remain mostly human, though with slight traces of the skunk infection you've picked up like small claws instead of fingernails";
	now skin change entry is "you gain a thick and fluffy coat of skunk patterned fur";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "you get a nice, wide bottom with an even wider skunk tail, large and fluffy, to go with it";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "becomes thick and meat as it pulses with arousal, shooting spurts of semen.  As the changes subside, you can see that aside from its new, slate grey colour, it looks rather like a normal, if thick, human dick";
	now str entry is 12;			[ These are now the creature's stats... ]
	now dex entry is 12;			[ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 16;			[ These values may be used as part of alternate combat.]
	now per entry is 12;
	now int entry is 18;
	now cha entry is 18;
	now sex entry is "Both";		[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 50;			[ The monster's starting hit points. ]
	now lev entry is 6;			[ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 5;			[ Monster's average damage when attacking. ]
	now area entry is "nowhere";		[ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;			[ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 30;		[ Length infection will make cock grow to if cocks. ]
	now cock width entry is 36;		[ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;			[ Number of breasts the infection will give a player. ]
	now breast size entry is 10;		[ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;			[ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 30;		[ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 20;		[ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;			[ Target libido the infection will rise towards. ]
	now loot entry is "";			[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;		[ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 3;				[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]womanly[or]full-figured[or]wide-hipped[at random]";
	now type entry is "[one of]skunk[or]mephit[at random]";
	now magic entry is false;			[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is true;			[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;		[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;		[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";		[ Row used to designate any special combat features, "default" for standard combat. ]

[A sample structure for succumbing/surviving messages at the end of the game.]
[Numerous other examples can be found in existing creature files.]

when play ends:
	if bodyname of player is "Hyperskunk":
		say "Endings to come later.";


[ Edit this to have the correct creature name as well]
Hyperskunk For FS ends here.