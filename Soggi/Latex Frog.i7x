Version 1 of Latex Frog by Soggi begins here.

"Adds a Latex Frog to Flexible Survival's Wandering Monsters table."

[ Version 1 by Soggi. Tavaer asked for "Latex froggo" in Discord]


[
to say GenerateTrophyList_Latex_Frog:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (30 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (25 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";
]

Section 1 - Creature Responses

to say Latex Frog Wins:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if HP of Player > 0: [player submitted]
			say "     You stop trying to fight the latex frog and submit to the strange feral creature.";
		else:
			say "     Too weak to keep resisting, you surrender and accept your fate.";
		say "     The latex frog wraps itself tightly around your body, using its sticky toe pads to finally lock itself in place around you. The slippery dark green latex expands to surround you, and you give one last weak struggle as the material oozes up your neck and then surrounds your head, engulfing you in darkness. You seem able to breath through the material, but can barely move.";
		WaitLineBreak;
		if anallevel is 3:
			say "     The frog releases you now that you're wrapped in its slippery green latex, watching you wriggle for a few moments before forcing you onto your stomach. You feel the frog's wide mouth nuzzling between your legs for a few moments, when suddenly the long tongue shoots forward through a seam in the latex, plunging into your ass! You let out a helpless muffled cry as you feel the latex start to spread inside, while the tongue plunges in and out of you, seemingly wriggling deeper with each thrust. The latex wrapped around you seems to squeeze and caress all over you[if Cock Count of player > 0], squeezing and massaging the length of your cock[smn],[end if][if player is male and Ball Size of player > 0], gripping your balls and giving them slow rhythmic tugs[end if][if Cunt Count of player > 0], vibrating rapidly against your clit[sfn][end if], fondling your ass cheeks and caressing up and down your thighs.";
			say "     The tongue plunging in and out of your ass becomes overwhelming as it somehow finds a deeper spot with each penetration, until you feel yourself on the edge of orgasm. You make one last feeble struggle against the tightly wrapped latex suit before the material all squeezes in at once, locking you tight in place as you cum.[if Cock Count of player > 0] The tight latex seems to milk you as your cum pumps out, trapped inside with you smearing all over your thighs and belly.[end if][if Cunt Count of player > 0] The hot juices from your cunt[sfn] dribble out into the suit with you, leaving a mess spread all over your hips and ass.[end if]";
			CreatureSexAftermath "Player" receives "AssDildoFuck" from "Latex Frog";
		else:
			say "     The frog releases you now that you're wrapped in its slippery green latex, watching you wriggle for a few moments before forcing you onto your stomach. You feel the frog's wide mouth up against your face as it grinds its hips down against yours, when suddenly the long tongue shoots forward through a seam in the latex, plunging into your mouth! You let out a helpless muffled cry as the tongue wraps sensually around your tongue and starts to wriggle deeper into your throat. The latex wrapped around you seems to squeeze and caress all over you[if Cock Count of player > 0], squeezing and massaging the length of your cock[smn],[end if][if player is male and Ball Size of player > 0], gripping your balls and giving them slow rhythmic tugs[end if][if Cunt Count of player > 0], vibrating rapidly against your clit[sfn][end if][if Nipple Count of player > 1 and player is female], groping your chest and squeezing your nipples repeatedly[end if], fondling your ass cheeks and caressing up and down your thighs.";
			say "     The latex's molesting becomes overwhelming as you wriggle helplessly in place, and the deep french kiss of the latex frog sinks down deep into your throat, plunging in and out slowly. You make one last feeble struggle against the tightly wrapped latex suit before the material all squeezes in at once, locking you tight in place as you cum.[if Cock Count of player > 0] The tight latex seems to milk you as your cum pumps out, trapped inside with you smearing all over your thighs and belly.[end if][if Cunt Count of player > 0] The hot juices from your cunt[sfn] dribble out into the suit with you, leaving a mess spread all over your hips and ass.[end if]";
		WaitLineBreak;
		say "     Seemingly satisfied, the frog leaves you wrapped snugly in your latex cocoon with your own sex juices inside with you. The latex continues to pulsate and massage you, occasionally teasing you toward a second orgasm before relaxing again. After an hour, the latex has absorbed your [if Cock Count of player > 0]seed[else if Cunt Count of player > 0]wet girlcum[else if Player is female and Nipple Count of Player > 0]milk[else]sweat[end if] and releases you. In your exhausted state you watch the strange latex form hop off down into the nearby sewer drain, just starting to take the form of another latex frog...";

to say Latex Frog Loses:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if fightoutcome is 11: [submitted by libido victory]
			say "     As the latex frog becomes more and more aroused it seems increasingly confused, unsure whether to attack or submit to your advances. Flustered, the frog escapes quickly down the nearby sewer drain. You consider following, but decide to move on for now.'";
		else:
			say "     Striking a final decisive blow to the latex frog, the feral creature quickly deforms and escapes down the nearby sewer drain. You consider following, but decide to move on for now.";
		LineBreak;

to say Latex Frog Desc:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		say "     As you walk down the street, you see a sudden movement out of a sewer drain right next to you. A shiny dark green form leaps out from the drain, and turns to face you with interest, before letting out a loud *ribbit*. The latex frog with a wide mouth, eyes poking out above its head, and powerful hind legs looks ready to pounce on you. Its skin appears incredibly shiny and slippery, a thin layer of moisture coating it.'";
		say "     Suddenly the frog's thick tongue shoots out toward you with blinding speed! By luck it misses you by an inch, before zipping back into the frog's mouth.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Latex Frog";
	add "Latex Frog" to infections of FurryList;
	add "Latex Frog" to infections of NatureList;
	add "Latex Frog" to infections of FemaleList;
	add "Latex Frog" to infections of FeralList;
	add "Latex Frog" to infections of LatexList;
	add "Latex Frog" to infections of QuadrupedalList;
	now Name entry is "Latex Frog";
	now enemy title entry is "";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "The [one of]Latex Frog[or]sleek rubbery amphibian[or]slippery web-footed creature[or]frog[at random] [one of]flicks its tongue out with incredible speed, hitting you in the chest and leaving a bruise![or]jumps on you, trying to wrap its latex form around your body. After a difficult struggle you manage to break free.[or]flicks its tongue out and wraps it around your legs, causing you to trip and fall![or]kicks at you with its powerful hind legs.[at random]";
	now defeated entry is "[Latex Frog Loses]";
	now victory entry is "[Latex Frog Wins]";
	now desc entry is "[Latex Frog Desc]";
	now face entry is "changed to a sleek black wide mouthed, large-eyed latex frog head";
	now body entry is "shiny latex with webbed hands and toes.";
	now skin entry is "slippery dark green latex";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "your mouth stretches to an incredible wide shape, and your eyes shift slightly further apart and almost poke out from your head, life a frog's";
	now body change entry is "your hands and feet grow webbing between your digits";
	now skin change entry is "it shifts to a deep shiny green latex, some added moisture keeping your skin unnaturally slippery";
	now ass change entry is "it shrinks, making room for your swelling powerful thighs";
	now cock change entry is "your shaft shrinks until it is nestled completely inside your cloaca";
 	[ now Legs Change entry is "your thighs swell with powerful muscles, each almost as wide as your torso"; ]
	[ now Cunt Change entry is "it takes on a more rounded shape, perfect for laying soft tadpole eggs"; ]
	now str entry is 5;
	now dex entry is 14;
	now sta entry is 6;
	now per entry is 6;
	now int entry is 2;
	now cha entry is 8;
	now sex entry is "Female";  [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 12;
	now lev entry is 1;  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 3;  [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside";  [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 0;  [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0;  [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0;  [ Size of balls ]
	now Nipple Count entry is 2;  [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 3;  [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;  [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;  [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 2;
	now SeductionImmune entry is false;
	now libido entry is 80;  [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";  [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0;  [ Chance of loot dropping 0-100 ]
	now MilkItem entry is ""; [for later...]
	now TrophyFunction entry is ""; [also for later...]
	now scale entry is 3;  [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slippery[or]sleek[at random]";  [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "amphibian";
	now magic entry is false;
	now resbypass entry is false;  [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;  [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "latexhug";  [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Latex Frog ends here.
