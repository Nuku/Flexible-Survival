Version 1 of Jackal Femboy by Gherod begins here.

[Version 1 - Created file, currently infection only]

"Adds a Jackal Femboy enemy as a possible encounter"

Section 1 - Encounter

to say Femboy Jackal Desc:
	say "     Nothing at the moment.";

Section 1.1 - Defeat Scenes

to say Femboy Jackal Wins:
	say "     Nothing right now.";

Section 1.2 - Victory Scenes

to say Femboy Jackal Loses:
	say "     Nothing right now.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Jackal";
	add "Jackal Femboy" to infections of CanineList;
	add "Jackal Femboy" to infections of FurryList;
	add "Jackal Femboy" to infections of NatureList;
	add "Jackal Femboy" to infections of MaleList;
	add "Jackal Femboy" to infections of TaperedCockList;
	add "Jackal Femboy" to infections of KnottedCockList;
	add "Jackal Femboy" to infections of SheathedCockList;
	add "Jackal Femboy" to infections of BipedalList;
	add "Jackal Femboy" to infections of TailList;
	now Name entry is "Jackal Femboy";
	now enemy title entry is "Jackal Femboy";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]a[or]b[at random]";
	now defeated entry is "[Femboy Jackal Loses]";
	now victory entry is "[Femboy Jackal Wins]";
	now desc entry is "[Femboy Jackal Desc]";
	now face entry is "narrow canine head, with a long, sleek muzzle and a nicely flattened forehead. Your golden eyes seem to take in every aspect of the world around you as your sleek jackal ears swivel around on top of your head to catch the faintest noise. Overall, your features become effeminate, growing less and less masculine by the time";
	now body entry is "slim and sleek, only lightly muscled with digitigrade legs and jackal-like feet. Despite being slender, your hips have grown significantly, giving you a much more feminine presence.";
	now skin entry is "[one of]dark black[or]sleek black furred[or]jackal furred[at random]";
	now tail entry is "You have a sleek, black-furred jackal's tail attached to your rear, swaying happily over your enormously colossal bubble ass with every step you take.";
	now cock entry is "[one of]canine[or]jackalboy[or]jackal-like[or]knotted[at random]";
	now face change entry is "as your mouth pushes forward into a sleek black muzzle, and your eyes blur as they shift in both color and position. New sounds and smells explode through your enhanced senses as your new jackal's muzzle finishes forming and your ears complete shifting into proper canine ears, swiveling around on top of your head like a proper jackal's, with effeminate features that betray your gender";
	now body change entry is "it seems to slim down, its form becoming both sleek and slim as it seems to shorten slightly. You can feel your legs shift and change as well, causing you to stumble for a minute as your heels seem to shift upwards on your legs, shifting your weight forward onto the balls of your changing feet. Soon your feet finish their transformation and you find yourself balancing easily on your new jackal-like paws, as you stand on your slender digitigrade legs with especially wide thighs to complement your extended hips.";
	now skin change entry is "a soft tingling sensation spreads across your body and soft, sleek, black jackal fur begins to push its way out of it. The fur quickly covers your body in a sexy coat of short dark fur.";
	now ass change entry is "a strange tingling sensation seems to grow in your rear. It softens and flattens somewhat, then with a soft pulling sensation you feel a thin black canine tail slowly extend from your tailbone, lengthening until it is down past your knees before the changing stops. You can't help but notice that your buttocks seem quite heavier than before, and they don't stop growing for a good while, until they are made of such massive bubbliness that makes it hard for you to walk, at first";
	now cock change entry is "its shaft thins and changes, the tip tapering to a point while its base seems to swell up slightly before being covered in a soft black sheath of fur. Funnily enough, it seems keen on growing further";
	now str entry is 18;
	now dex entry is 22;
	now sta entry is 19;
	now per entry is 17;
	now int entry is 13;
	now cha entry is 20;
	now sex entry is "Male";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 65;
	now lev entry is 10;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 12;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Nowhere";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 27;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 5;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 80;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]altered[or]animalistic[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]jackal[at random]";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;



Jackal Femboy ends here.
