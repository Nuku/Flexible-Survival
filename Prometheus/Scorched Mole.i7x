Version 1 of Scorched Mole by Prometheus begins here.

"Adds a Scorched Mole creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

to say losetoScorchedMole:
	say "     Bleeding from multiple lacerations and covered in bruises, you sink to the ground under the onslaught of the giant mole, faring little better than Colleen did in the bunker. It is only thanks to the nanites that you are still conscious and not bleeding out in a corner. For a moment you wonder if the mole is about to leave as it walks back towards its hole, but the moment it turns around again, you realize that this might be the end for you. This creature has no appetite for sex, nor is it going to allow you to walk away.";

to say beattheScorchedMole:
	say "     Eventually, you emerge victorious, sending the mole scurrying away having avenged Colleen's injuries and hopefully giving it even less reason to want to return to the bunker in future. You watch as it disappears back down the same tunnel that it had come out of before, suggesting that that way lies its home, or whatever passes for one underground.";

to say ScorchedMoledesc:
	say "     The giant mole snorts fiercely, regarding you with cruel little eyes. Its short black fur looks almost like velvet, covering it from head to foot, though the scorch marks remain from where Sarah shot it with a flare. Long shar claws, tough enough to break through concrete, tip its paws, making you grateful for the healing effects of the nanites. Having regarded you for long enough, the mole resumes its attack.";


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mole"; [name of the overall species of the infection, used for children, ...]
	add "Scorched Mole" to infections of FeralList;
	add "Scorched Mole" to infections of NatureList;
	add "Scorched Mole" to infections of MaleList;
	add "Scorched Mole" to infections of TaperedCockList;
	add "Scorched Mole" to infections of QuadrupedalList;
	add "Scorched Mole" to infections of TailList;
	now Name entry is "Scorched Mole";      [The creature's name as displayed and used in naming descriptions]
	now enemy title entry is "Scorched Mole";
	now enemy Name entry is "Scorched Mole";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The Giant Mole slashes at you with its claws![or]The Giant Mole attempts to bite you![or]The Giant Mole charges at you![or]The Giant Mole attempts to disembowel you![at random]";   [Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheScorchedMole]";            [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetoScorchedMole]";               [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[ScorchedMoledesc]";                  [ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";      [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";   [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";   [ Skin desc., format as the text "Your body is covered in (your text) skin." Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";   [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "feline";                  [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head changes in some descriptive manner";   [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body takes on a newly described form";   [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain fur/scales/skin/patterns described herein";   [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your tail or ass changes in the manner described by this text";   [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a new, kinky form";      [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 20;         [ These are now the creature's stats... ]
	now dex entry is 16;         [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 20;         [ These values may be used as part of alternate combat.]
	now per entry is 20;
	now int entry is 20;
	now cha entry is 20;
	now sex entry is "Male";                      [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 100;                           [ The monster's starting hit points. ]
	now lev entry is 16;                           [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 20;                          [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";                  [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;                         [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 15;                  [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 3;                    [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 6;                       [ Number of breasts the infection will give a player. ]
	now Breast Size entry is 1;                   [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0;              [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;                         [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 12;                   [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 8;                    [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is true;
	now libido entry is 0;                       [ Target libido the infection will rise towards. ]
	now loot entry is "";                         [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;                    [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 4;                         [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "imposing";       [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "mole-ish";               [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                     [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;                 [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;            [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;                [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Scorched Mole ends here.
