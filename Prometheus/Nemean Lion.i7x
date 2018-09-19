Version 1 of Nemean Lion by Prometheus begins here.

"Adds a Nemean Lion creature to Flexible Survivals Wandering Monsters table"

Section 1 - Monster Responses

when play begins:
[These flags indicate which monster groups your creature belongs to, should someone want to remove any given type.]
	add { "Nemean Lion" } to infections of girl;
	add { "Nemean Lion" } to infections of guy;
	add { "Nemean Lion" } to infections of furry;
	add { "Nemean Lion" } to infections of Felinelist;      [list of feline infections]
	add { "Nemean Lion" } to infections of BarbedCocklist;   [List of creatures with a barbed cock]

to say losetoNemeanLion:
	say "     Collapsing from exhaustion, you look up at the victorious lion. Blood streams from a myriad of unhealing wounds pooling next to your crumpled body. You consider cursing the gods, but you made this decision. Curiosity got you killed by the cat. As you lose consciousness, you hear someone running up the hill with a masculine warcry.";

to say beattheNemeanLion:
	say "     Battered and bloody, you stand victorious over your foe. The Nemean Lion lies on its side, slipping in and out of consciousness as it tries to recover. Amazingly, despite all the punishment it has just received, its hide is still undamaged with only a few smears of dirt marring the golden fur. If the sizable feline manages to recover you aren't sure you'd be able to defeat it again as you're exhausted too. That said, you aren't sure what you are supposed to do next. Are you meant to skin the still living animal?";


to say NemeanLiondesc:
	say "     The giant feline glares at you in an appraising manner, possibly judging how much difficulty it is likely to face in defeating you. It's fur is a dull gold, undamaged by the centaurs['] arrows. An impressive dark brown mane surrounds its fierce face, long white fangs visible as it snarls at you. Deciding you are easy enough prey, the Nemean Lion pounces at you, dagger-like claws extended and fast approaching your face.";


Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Nemean Lion";      [The creature's name as displayed and used in naming descriptions]
	now enemy title entry is "Nemean Lion";
	now enemy name entry is "Leo";
	now enemy type entry is 1; [non-unique enemy]
	now attack entry is "[one of]The Nemean Lion slashes at you with its claws![or]The Nemean Lion attempts to bite you![or]The Nemean Lion pounces on you![or]The Nemean Lion attempts to maul you![at random]";   [Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheNemeanLion]";            [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetoNemeanLion]";               [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[NemeanLiondesc]";                  [ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";      [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";   [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";   [ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";   [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "feline";                  [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head changes in some descriptive manner";   [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body takes on a newly described form";   [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain fur/scales/skin/patterns described herein";   [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your tail or ass changes in the manner described by this text";   [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a new, kinky form";      [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 40;         [ These are now the creature's stats... ]
	now dex entry is 30;         [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 40;         [ These values may be used as part of alternate combat.]
	now per entry is 20;
	now int entry is 20;
	now cha entry is 20;
	now sex entry is "Male";                      [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 600;                           [ The monster's starting hit points. ]
	now lev entry is 30;                           [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 50;                          [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";                  [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;                         [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 15;                  [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 8;                    [ Cock width, more commonly used for ball size. ]
	now breasts entry is 6;                       [ Number of breasts the infection will give a player. ]
	now breast size entry is 1;                   [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;              [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;                         [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 12;                   [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 8;                    [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50;                       [ Target libido the infection will rise towards. ]
	now loot entry is "";                         [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;                    [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;                         [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "imposing";       [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "feline";               [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                     [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;                 [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;            [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0;                [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;             [ Row used to designate any special combat features, "default" for standard combat. ]

Nemean Lion ends here.
