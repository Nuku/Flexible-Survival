Version 1 of Lernean Hydra by Prometheus begins here.

"Adds a Lernean Hydra creature to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

Section 1.1 - First Form

to say losetoLerneanHydraOne:
	say "     Bleeding from multiple lacerations and gaping puncture wounds that the nanites seem unable to fix, you desperately scramble backwards cursing your hubris for thinking that you could defeat such a monster. As its head rears back to deliver the final blow, you close your eyes and wait for the end.";

to say beattheLerneanHydraOne:
	say "     With a pained cry, the hydra collapses to its knees and slowly sinks to the ground, thick purple fluid leaking from tears in its scaly hide and melting through metal. You shudder to think what it could have done to your flesh if you had got any on you.";

to say LerneanHydraOnedesc:
	say "     Dodging this initial attack, you get a brief reprieve to look over the mythical hydra. Towering over the surrounding mounds of junk, it has a single draconic head on a long, serpentine neck. As it opens its mouth to his at you, you can see many rows of sharp fangs as well as a forked purple tongue. Its wide body is supported on four powerful legs that allow it to move a lot faster than one might expect, as you experienced before. Its heavy, armored hide is covered in thick, emerald scales that you might consider pretty if it wasn't trying to tear you limb from limb.";

Section 1.2 - Second Form

to say losetoLerneanHydraTwo:
	say "     Bleeding from multiple lacerations and gaping puncture wounds that the nanites seem unable to fix, you desperately scramble backwards cursing your hubris for thinking that you could defeat such a monster. As its head rears back to deliver the final blow, you close your eyes and wait for the end.";

to say beattheLerneanHydraTwo:
	say "     Once again, the hydra collapses to its knees with a shrill cry and slowly sinks to the ground, more acidic purple blood leaking from new tears in its scaly hide and melting through nearby pieces of steel. You express relief that once again you managed to avoid contact with such a corrosive fluid.";

to say LerneanHydraTwodesc:
	say "     Though it bears some of the scars from your earlier fight, the hydra looks even more dangerous now, especially with the furious glow in its eyes at it lunges at you to try and rend you limb from limb.";

Section 1.3 - Third Form

to say losetoLerneanHydraThree:
	say "     Bleeding from multiple lacerations and gaping puncture wounds that the nanites seem unable to fix, you desperately scramble backwards cursing your hubris for thinking that you could defeat such a monster. As its head rears back to deliver the final blow, you close your eyes and wait for the end.";

to say beattheLerneanHydraThree:
	say "     With a pained cry, the hydra collapses to its knees and slowly sinks to the ground, thick purple fluid leaking from tears in its scaly hide and melting through metal. You shudder to think what it could have done to your flesh if you had got any on you.";

to say LerneanHydraThreedesc:
	say "     Dodging this initial attack, you get a brief reprieve to look over the mythical hydra. Towering over the surrounding mounds of junk, it has a single draconic head on a long, serpentine neck. As it opens its mouth to his at you, you can see many rows of sharp fangs as well as a forked purple tongue. Its wide body is supported on four powerful legs that allow it to move a lot faster than one might expect, as you experienced before. Its heavy, armored hide is covered in thick, emerald scales that you might consider pretty if it wasn't trying to tear you limb from limb.";


Section 2 - Creature Insertion

Section 2.1 - First Form

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hydra"; [name of the overall species of the infection, used for children, ...]
	add "Lernean Hydra Stage One" to infections of ReptileList;
	add "Lernean Hydra Stage One" to infections of FeralList;
	add "Lernean Hydra Stage One" to infections of MythologicalList;
	add "Lernean Hydra Stage One" to infections of MagicalList;
	add "Lernean Hydra Stage One" to infections of MaleList;
	add "Lernean Hydra Stage One" to infections of FemaleList;
	add "Lernean Hydra Stage One" to infections of TaperedCockList;
	add "Lernean Hydra Stage One" to infections of InternalCockList;
	add "Lernean Hydra Stage One" to infections of QuadrupedalList;
	add "Lernean Hydra Stage One" to infections of TailList;
	add "Lernean Hydra Stage One" to infections of OviImpregnatorList;
	now Name entry is "Lernean Hydra Stage One";      [The creature's name as displayed and used in naming descriptions]
	now enemy title entry is "Lernean Hydra";
	now enemy Name entry is "The Lernean Hydra";
	now enemy type entry is 2; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The Lernean Hydra slashes at you with its claws![or]The Lernean Hydra attempts to bite you![or]The Lernean Hydra bludgeons you with its heads![or]The Lernean Hydra attempts to mangle you with its teeth and claws![at random]";   [Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheLerneanHydraOne]";            [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetoLerneanHydraOne]";               [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[LerneanHydraOnedesc]";                  [ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";      [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";   [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";   [ Skin desc., format as the text "Your body is covered in (your text) skin." Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";   [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "reptilian";                  [ Cock desc., format as "You have a 'size' (your text) cock." ]
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
	now hp entry is 500;                           [ The monster's starting hit points. ]
	now lev entry is 40;                           [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 50;                          [ Monster's average damage when attacking. ]
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
	now scale entry is 5;                         [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "imposing";       [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "mythical";               [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                     [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;                 [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;            [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;                [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hydrabeast";
	now BannedStatus entry is false;

Section 2.2 - Second Form

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hydra"; [name of the overall species of the infection, used for children, ...]
	add "Lernean Hydra Stage Two" to infections of ReptileList;
	add "Lernean Hydra Stage Two" to infections of FeralList;
	add "Lernean Hydra Stage Two" to infections of MythologicalList;
	add "Lernean Hydra Stage Two" to infections of MagicalList;
	add "Lernean Hydra Stage Two" to infections of MaleList;
	add "Lernean Hydra Stage Two" to infections of FemaleList;
	add "Lernean Hydra Stage Two" to infections of TaperedCockList;
	add "Lernean Hydra Stage Two" to infections of InternalCockList;
	add "Lernean Hydra Stage Two" to infections of QuadrupedalList;
	add "Lernean Hydra Stage Two" to infections of TailList;
	add "Lernean Hydra Stage Two" to infections of OviImpregnatorList;
	now Name entry is "Lernean Hydra Stage Two";      [The creature's name as displayed and used in naming descriptions]
	now enemy title entry is "Lernean Hydra";
	now enemy Name entry is "The Lernean Hydra";
	now enemy type entry is 2; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The Lernean Hydra slashes at you with its claws![or]The Lernean Hydra attempts to bite you![or]The Lernean Hydra bludgeons you with its heads![or]The Lernean Hydra attempts to mangle you with its teeth and claws![at random]";   [Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheLerneanHydraTwo]";            [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetoLerneanHydraTwo]";               [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[LerneanHydraTwodesc]";                  [ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";      [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";   [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";   [ Skin desc., format as the text "Your body is covered in (your text) skin." Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";   [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "reptilian";                  [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head changes in some descriptive manner";   [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body takes on a newly described form";   [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain fur/scales/skin/patterns described herein";   [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your tail or ass changes in the manner described by this text";   [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a new, kinky form";      [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 50;         [ These are now the creature's stats... ]
	now dex entry is 40;         [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 50;         [ These values may be used as part of alternate combat.]
	now per entry is 30;
	now int entry is 30;
	now cha entry is 30;
	now sex entry is "Male";                      [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 600;                           [ The monster's starting hit points. ]
	now lev entry is 50;                           [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 60;                          [ Monster's average damage when attacking. ]
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
	now scale entry is 5;                         [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "imposing";       [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "mythical";               [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                     [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;                 [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;            [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;                [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hydrabeast";
	now BannedStatus entry is false;

Section 2.3 - Third Form

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hydra"; [name of the overall species of the infection, used for children, ...]
	add "Lernean Hydra Stage Three" to infections of ReptileList;
	add "Lernean Hydra Stage Three" to infections of FeralList;
	add "Lernean Hydra Stage Three" to infections of MythologicalList;
	add "Lernean Hydra Stage Three" to infections of MagicalList;
	add "Lernean Hydra Stage Three" to infections of MaleList;
	add "Lernean Hydra Stage Three" to infections of FemaleList;
	add "Lernean Hydra Stage Three" to infections of TaperedCockList;
	add "Lernean Hydra Stage Three" to infections of InternalCockList;
	add "Lernean Hydra Stage Three" to infections of QuadrupedalList;
	add "Lernean Hydra Stage Three" to infections of TailList;
	add "Lernean Hydra Stage Three" to infections of OviImpregnatorList;
	now Name entry is "Lernean Hydra Stage Three";      [The creature's name as displayed and used in naming descriptions]
	now enemy title entry is "Lernean Hydra";
	now enemy Name entry is "The Lernean Hydra";
	now enemy type entry is 2; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The Lernean Hydra slashes at you with its claws![or]The Lernean Hydra attempts to bite you![or]The Lernean Hydra bludgeons you with its heads![or]The Lernean Hydra attempts to mangle you with its teeth and claws![at random]";   [Text used when the monster succeeds on an attack]
	now defeated entry is "[beattheLerneanHydraThree]";            [ Text when monster loses. Change 'template' as above. ]
	now victory entry is "[losetoLerneanHydraThree]";               [ Text when monster wins. Change 'template' as above. ]
	now desc entry is "[LerneanHydraThreedesc]";                  [ Description of the creature when you encounter it. ]
	now face entry is "now a head described by this text";      [ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a well-described new form put here";   [ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "fur/scales/patterns that now cover your";   [ Skin desc., format as the text "Your body is covered in (your text) skin." Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "Your tail gets a full sentence ending in a period.";   [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "reptilian";                  [ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "your head changes in some descriptive manner";   [ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "your body takes on a newly described form";   [ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "you gain fur/scales/skin/patterns described herein";   [ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your tail or ass changes in the manner described by this text";   [ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it takes on a new, kinky form";      [ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 60;         [ These are now the creature's stats... ]
	now dex entry is 50;         [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 60;         [ These values may be used as part of alternate combat.]
	now per entry is 40;
	now int entry is 40;
	now cha entry is 40;
	now sex entry is "Male";                      [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now hp entry is 700;                           [ The monster's starting hit points. ]
	now lev entry is 60;                           [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 70;                          [ Monster's average damage when attacking. ]
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
	now scale entry is 5;                         [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "imposing";       [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "mythical";               [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;                     [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;                 [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true;            [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;                [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hydrabeast";
	now BannedStatus entry is false;


	[ Row used to designate any special combat features, "default" for standard combat. ]

Lernean Hydra ends here.
