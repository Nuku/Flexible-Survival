Version 1 of Hypno Spider by Soggi begins here.

"Adds a Hypno Spider to Flexible Survival's Wandering Monsters table."

[ Version 1 by Soggi.]


Section 1 - Creature Responses

to say Hypno Spider Wins:
	if HP of Player > 0: [player submitted]
		say "     Instead of looking away, you stare intently into the spider's sparkling eyes.";
	else:
		say "     Weakened physically, you slump to your knees as the Hypno Spider approaches. You find yourself staring into its eyes as a sparkling pattern emerges behind their occasional shimmers.";
	say "     The Hypno Spider rises up on its hind legs and flashes of light wash over your face. You feel your mind slipping away, and your body relaxes as you give in to strange pulsing lights. You moan blankly while the spider starts to move quickly around you and a thick sticky layer of silk wraps around your arms and chest. The silk tightens around you, squeezing your [short breast size desc of player] breasts and making you gasp for breath. The spider maneuvers your limp body on the ground and wraps strong silken ropes around your legs, then you feel yourself being lifted up into the air, suspended in the air by the silk, legs slightly apart. You're twisted again and again as the silk wraps around your body... and you feel the last of your willpower fading as a thick sticky sheet wraps around your face, just barely permeated enough to breathe shallowly through.";
	WaitLineBreak;
	say "     The hypnotic trance starts to fade but you soon realize you're unable to move, dangling from silken strings feeling the legs of the spider skittering over your ensnared and bound body. It waits patiently, watching you wriggle for a few minutes trying to get free, but struggling is just making you more and more exhausted.";
	WaitLineBreak;
	if anallevel is 3 and a random chance of 2 in 3 succeeds:
		say "     You let out a helpless muffled cry as you feel a thick rubbery ovipositor slip through the sticky silk strings and plunge into your ass. The thrusts are slow but powerful, slipping deeper and deeper as you breathe heavily through the thick webbing. The strands of webbing squeeze as the spider tugs you into a better position[if Cock Count of Player > 0], stroking and massaging the length of your cock[smn][end if][if Player is male and Ball Size of Player > 0], massaging your balls and coating them in sticky slime[end if][if Cunt Count of Player > 0], rubbing back and forth against your slit[sfn] covering [itthemf] in a sticky slime[end if], and caressing up and down your thighs.";
		say "     Finally you feel a powerful squirt as sticky cum and webbing pumps into you. Your eyes widen as the sensation doesn't stop, thick creamy dollops of hot stickiness squirting deeper and deeper until you can feel it dribbling out down your legs. You give one last weak struggle against the cocoon as you succumb to pleasure and orgasm in response.";
		CreatureSexAftermath "Player" receives "AssDildoFuck" from "Hypno Spider";
	else:
		say "     You let out a helpless muffled cry as you feel a thick rubbery ovipositor slip through the sticky sheets of webbing and plunge into your moaning mouth. The thrusts are slow but powerful, slipping deeper and deeper down your throat, barely able to breathe through your nose and the thick webbing. The strands of webbing squeeze as the spider tugs you into a better position[if Cock Count of Player > 0], stroking and massaging the length of your cock[smn][end if][if Player is male and Ball Size of Player > 0], massaging your balls and coating them in sticky slime[end if][if Cunt Count of Player > 0], rubbing back and forth against your slit[sfn] covering [itthemf] in a sticky slime[end if], and caressing up and down your thighs.";
		say "     Finally you feel a powerful squirt as sticky cum and webbing pumps into you. Your eyes widen as the sensation doesn't stop, thick creamy dollops of hot stickiness squirting deeper and deeper until you can feel it dribbling out down your neck. Your eyes roll back as you give one last weak struggle against the cocoon and succumb to pleasure and orgasm in response.";
		CreatureSexAftermath "Player" receives "OralCock" from "Hypno Spider";
	WaitLineBreak;
	say "     You wait in panic for the inevitable eggs to squeeze out of the spider's long ovipositor, but seemingly satisfied for now, the spider pulls out of you and leaves you wrapped snugly in your sticky cocoon. In your mind you can picture the spider so easily wrapping you tighter and dragging you to its lair to be used over and over... but no other spiders arrive. After many minutes the cocoon becomes dry enough for you to tear through and escape, and you quickly flee the scene.";

to say Hypno Spider Loses:
	if fightoutcome is 11: [submitted by libido victory]
		say "     As the Hypno Spider becomes more and more aroused it seems increasingly confused, unsure whether to attack or submit to your advances. Flustered, the spider escapes quickly down the nearby sewer drain. You consider following, but decide to move on for now.";
	else:
		say "     Striking a final decisive blow to the Hypno Spider, the creature curls its legs up on itself and a puddle of sticky slime oozes out from its erect ovipositor. Examining the creature it seems entirely desiccated. You decide to move on for now.";
	LineBreak;

Section 2 - Creature Insertion

to say Hypno Spider Desc:
	say "     Walking down a dark alley that seems infrequently traveled, you step into invisible strands of a spiderweb. Much stickier and stronger than you expect, it takes a few moments for you to break free. You hear a noise and step away just in time to avoid a massive black spider the size of a medium dog dropping down from the ceiling. Its body is covered in a thick layer of hair, and its eyes seem to sparkle with a strange mesmerizing light.";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Hypno Spider"	"[PrepCombat_Hypno Spider]"

to say PrepCombat_Hypno Spider:
	setmongender 3; [creature is male]

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Hypno Spider";
	add "Hypno Spider" to infections of ArachnidList;
	add "Hypno Spider" to infections of NatureList;
	add "Hypno Spider" to infections of MaleList;
	add "Hypno Spider" to infections of FeralList;
	add "Hypno Spider" to infections of OviPositorList;
	add "Hypno Spider" to infections of OctapedalList;
	now Name entry is "Hypno Spider";
	now enemy title entry is "";
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "The [one of]Hypno Spider[or]eight-legged creature[or]spider[or]shimmering-eyed spider[at random] [one of]snaps its legs out, hitting you in the chest and leaving a bruise![or]jumps on you, trying to wrap its sticky webbing around your body. After a difficult struggle you manage to break free.[or]wraps a strand of webbing around your legs, causing you to trip and fall![at random]";
	now defeated entry is "[Hypno Spider Loses]";
	now victory entry is "[Hypno Spider Wins]";
	now desc entry is "[Hypno Spider Desc]";
	now face entry is "sleek dark chitinous";
	now body entry is "sleek dark chitinous";
	now skin entry is "sleek dark chitinous";
	now tail entry is "";
	now cock entry is "sleek dark chitinous";
	now face change entry is "your eyes shift slightly further apart and your eye-lids grow a thick dark chitinous armor";
	now body change entry is "your hands and feet grow sleek dark chitinous armor";
	now skin change entry is "it shifts to a sleek dark hard chitinous texture";
	now ass change entry is "it shrinks, making room for your swelling powerful thighs";
	now cock change entry is "your shaft grows a dark chitinous armor that stays fully erect at all times";
 	[ now Legs Change entry is "your thighs swell with powerful muscles, each almost as wide as your torso"; ]
	[ now Cunt Change entry is "it takes on a more rounded shape, perfect for laying soft tadpole eggs"; ]
	now str entry is 5;
	now dex entry is 14;
	now sta entry is 6;
	now per entry is 6;
	now int entry is 2;
	now cha entry is 8;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 16;
	now lev entry is 1; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 5; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 4; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 2; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 2;
	now SeductionImmune entry is false;
	now libido entry is 80; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "spider webbing"; [see Spidergirl.i7x] [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "hypno spider milk"; [ Item to be given to the player if they have this infection and milk themselves. ] [for later...]
	now CumItem entry is "hypno spider cum"; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [also for later...]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slippery[or]sleek[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "arachnid";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Hypno Spider ends here.
