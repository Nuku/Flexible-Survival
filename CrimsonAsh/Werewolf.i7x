Version 1 of Werewolf by CrimsonAsh begins here.
[ Version 1 - new file              ]

LastWerewolfFuck is a number that varies. LastWerewolfFuck is usually 10000.
WerewolfWatching is a truth state that varies. WerewolfWatching is usually false.

Werewolf Surprise is a situation.
The sarea of Werewolf Surprise  is "Nowhere".

when play begins:
	add Werewolf Surprise to badspots of girl;
	add Werewolf Surprise to badspots of furry;

Section 1 - Meeting Event

instead of resting while (WerewolfWatching is true and Werewolf Surprise is not resolved and player is in Urban Forest):
	say "     Finding a comfortable enough spot under a large oak you lay down to rest. You rest your eyes and slowly begin to drift to sleep. Suddenly, a heavy weight is thrown against you and your eyes shoot open to the darkness around you. The heavy weight has you pinned on your back, the heavy weight is furry, warm and... very well muscled as it presses against you. Your face is buried in that furry warmth and as you pull your head up to identify your assailant. Your met with two bright yellow wolf-like eyes, burning with a ferocious need that doesn't need words to convey. You can feel two soft mounds pressing into your body also covered in soft fur, two hard nubs on those mounds dig into your torso as a warm wetness drips and soaks down your leg.";
	say "     As your eyes adjust to the darkness around you, you lock eyes with a pair of glowing yellow orbs staring back at you with burning intensity. Below the eyes you see the canine features of a she-wolf, a snarling muzzle dripping saliva down her furred chin then onto your neck, with two furry wolf ears atop her black coated head. With her pressed right against your form your hit with her strong musky aroma, both her heat and feral scent overwhelm your senses and you can feel your body start to warm up. Her two muscled arms are at your side, holding you in place with long sharp claws which prod and poke into your prone form. After giving her a look over and she to you, the werewolf atop you makes her move. Her powerful hind legs spread your own while her right claw begins to tear at the equipment in between your bodies. If your going to stop her, now's the time, although she likely won't take it well.";
	say "     [bold type]What do you do?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Submit to her affections.";
	say "     ([link]N[as]n[end link]) - Fight her off.";
	if player consents:
		LineBreak;
		say "     ";
	else:
		LineBreak;
		say "     ";

Section 2 - Scenes

to say BeatWerewolf:
	say "     ...";
	
to say LoseToWerewolf:
	say "     ...";

to say WerewolfDesc:
	if inasituation is true:
		say ""; [dealt with elsewhere]
	else:
		say ""; [currently unused, only event encounters with her]

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Werewolf";
	now attack entry is "[one of]The werewolf bites at you, wounding you with razor sharp teeth![or]Leaping at you the werewoman slices her claws into you.[or]The wolf woman batters you with her claws.[at random]";
	now defeated entry is "[BeatWerewolf]";
	now victory entry is "[LoseToWerewolf]";
	now desc entry is "[WerewolfDesc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 18;
	now dex entry is 14;
	now sta entry is 18;
	now per entry is 14;
	now int entry is 6;
	now cha entry is 8;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 80; [ The monster's starting HP. ]
	now lev entry is 8; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 10; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ Case sensitive]
	now cocks entry is 0; [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 0;
	now cock width entry is 0; [ Size of balls ]
	now breasts entry is 2; [ Number of nipples. ]
	now breast size entry is 0; [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 4;
	now libido entry is 80; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "werewolf";
	now type entry is "werewolf";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only) ]
	now altcombat entry is "default";

Werewolf ends here.