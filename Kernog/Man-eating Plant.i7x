Version 1 of Man-eating Plant by Kernog begins here.

"Adds a man-eating plant creature to Flexible Survival's Wandering Monsters table. Works in the same fashion as the parasitic plant, adds a bound state."

Section 1 - Monster Responses

to say beattheplant:
	if inasituation is false:
		say "     As you give one last blow to the flower, you watch it ted progressively, a sappy substance escaping from the wounds.";
	else:
		say ""; [dealt with in the event]


to say ManEatingPlantDesc:
	if inasituation is false:
		say "     You attempt to walk around the big trees on your path, when movement in the corner of your vision alerts you. Rooted into the bark of one of the trees, a large plant opens its petals, showing a multi-color inner pattern, going deep inside the tree. Vines begin to flail dangerously around you, trying to snatch you. You stay on your guard, as you decide what to do with the mutated vegetal.";
	else: [event]
		say ""; [dealt with at the event source]

Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Man-eating Plant"; [Name of your new Monster]
	now attack entry is "[didnotsubmit][one of]One of the vines slap your thigh, leaving a small bruise.[or]A vine makes a downward motion on your head, clubbering you with surprising strength.[or]You barely evade one of the vines attempting to grab your arm, leaving instead a shallow cut on your skin.[or]One of the vines manages to get around your neck, choking you until you can pull it off and gasp for air.[at random]"; [Text used when the monster makes an Attack]
	now defeated entry is "[ManEatingPlantVoreScene]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[ManEatingPlantVoreScene]"; [Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[ManEatingPlantDesc]";[ Description of the creature when you encounter it.]
	now face entry is "face entry goes here";[ Face description, format as the text "Your face is (your text)"]
	now body entry is "body entry goes here";[ Body Description, format as the text "Your Body is (your text)"]
	now skin entry is "skin entry goes here";[ skin Description, format as the text "You have (your text) skin"]
	now tail entry is "tail entry goes here";[ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "cock entry goes here";[ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "new face change"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "new body change"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "new skin change goes here"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "New ass change text goes here"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "new cock text goes here"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 14;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 18;
	now sex entry is "Both"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 60;
	now lev entry is 5; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 6; [Amount of Damage monster Does when attacking.]
	now area entry is "Island"; [ Current options are 'Outside' and 'Mall' Case sensitive]
	now cocks entry is 4; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 20; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 8; [Size of breasts infection will try to attain ]
	now male breast size entry is 0;[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 15; [ Length of female sex infection will attempt to give you. ]
	now cunt width entry is 5; [ Width of female sex infection will try and give you ]
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "man-eating flower seed";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "feminine";
	now type entry is "plant";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is true; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]

Section 3 - Alt Combat

[Plant has a messy pig-based alt attack, in which it captures the player. The player has five chances to escape, otherwise it is an instant loss]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"maneatingPlantReel"	--	maneatingPlantCaptureInc rule	--	maneatingPlantCapture rule	10	--	--	--	--	--

this is the maneatingPlantCaptureInc rule:			[increasing likelihood of alt attack]
	choose row monstercom from the table of critter combat;
	if alt1chance entry < 100, increase alt1chance entry by 10;

this is the maneatingPlantCapture rule:			[player capture alternative attack]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 10; [resets alt attack probability]
	choose row monster from table of random critters;
	let playernum be 150 + dexterity of player - libido of player + ( level of player * 2 );
	say "     One of the vines manage to coil around your arm. The plant begins to pull you towards its main body.";
	if tempnum is 1, decrease playernum by 30;
	let maneatingPlantcaught be 1;
	let maneatingPlantnum be 200 + ( lev entry * 2 ) + dex entry;
	if maneatingPlantcaught is 1:
		let playernum be a random number between 50 and playernum;
		let maneatingPlantnum be a random number between 50 and maneatingPlantnum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
	if maneatingPlantcaught is 1 and playernum >= maneatingPlantnum:		[caught / escape attempt]
		say "     With a quick torsion of the wrist, you manage to disentangle yourself. You promptly jump back out of reach.";
		now maneatingPlantcaught is 0;
	else if maneatingPlantcaught is 1:													[still caught]
		say "     The man-eating plant forces you to take several steps forward, putting you in reach of more of its limbs. Your arm is caught by another vine, and the plant and you are engaged in a contest of strength.";
	if maneatingPlantcaught is 1:							[second attempt]
		let playernum be a random number between 25 and playernum;
		let maneatingPlantnum be a random number between 25 and maneatingPlantnum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
	if maneatingPlantcaught is 1 and playernum >= maneatingPlantnum:		[caught / escape attempt]
		say "     Powering through, you take step after step backwards, until a strong pull forces the vine to give up, less they break under the strain.";
		now maneatingPlantcaught is 0;
	else if maneatingPlantcaught is 1:													[still caught]
		say "     With surprising power, the plant reels you in, like a fisherman. You lose your footing, and vines quickly take advantage to tie up your legs. Your legs are pulled into the plant's hole, and you feel the wet and squishy touch of its inner walls.";
	if maneatingPlantcaught is 1 and HP of player > 0 and libido of player < 110:							[third attempt. -10 malus on playernum applies]
		let playernum be a random number between 10 and playernum;
		let maneatingPlantnum be a random number between 10 and maneatingPlantnum;
		say "[special-style-1][playernum - 10][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
	if maneatingPlantcaught is 1 and playernum - 10 >= maneatingPlantnum:		[caught / escape attempt]
		say "     In desperation, your legs kick franctically inside the plant. Your efforts pay off when the plant, under your struggle, decide to spit you out and weaken you a little more before attempting to swallow you.";
		now maneatingPlantcaught is 0;
	else if maneatingPlantcaught is 1:													[still caught]
		say "     The plant's body wiggles and contracts around your lower limbs, taking you further in. Soon, your waist is trapped into the plant. You feel the plant [if player is male]squeeze your cock[else]grind against your pussy[end if], involuntarily exciting you. Your time runs short.";
	if maneatingPlantcaught is 1 and HP of player > 0 and libido of player < 110:							[caught and fighting. -20 malus on playernum applies]
	[		say "TEST: [playernum] vs [maneatingPlantnum]:[line break]"; ]
		let playernum be a random number between 1 and playernum;
		let maneatingPlantnum be a random number between 1 and maneatingPlantnum;
		say "[special-style-1][playernum - 20][roman type] vs [special-style-2][maneatingPlantnum][roman type]: ";
	if maneatingPlantcaught is 1 and playernum - 20 >= maneatingPlantnum:		[final escape attempt]
		say "     In desperation, your legs kick franctically inside the plant. Your efforts pay off when the plant, under your struggle, decide to spit you out and weaken you a little more before attempting to swallow you.";
		now maneatingPlantcaught is 0;
	else if maneatingPlantcaught is 1:													[still caught]
		say "     With one powerful contraction, the plant swallows your torso. [if breast size of player is 0]Your flat chest quickly follows[else if breast size of player <= 3]It takes the plant another suction to squeeze your [breast size desc of player] mammaries inside, squeezing them against your chest[else]It takes the plant several more suctions to squeeze your [breast size desc of player] inside, squeezing them against your chest[end if], and leaving only your neck free.";
		say "     Another muscle spasm, and you slide down completely inside, while the plant closes shut after you. In complete darkness, you slide down the skin-tight feeding tube. The air coming from outside is now damp, and laden with a spicy smell which begins to make you excited. You eventually slide down to a small pouch, which stretches to welcome your body, before vacuuming around you, leaving only a small layer of drug-filled air for you to breathe. Your brain urges you to push or claw your way out, before it is too late.";
		now fightoutcome is 23;
		Lose;

Section 4 - Vore Bound state

[Plays on loss]
to say ManEatingPlantVoreScene:
	if fightoutcome is 20:
		say "     Vines coil around your knocked-out body and pushes you into the plant's gullet, little by little, until only your neck remains. Another muscle spasm, and you slide down completely inside, while the plant closes shut after you. In complete darkness, you slide down the skin-tight feeding tube. The air coming from outside is now damp, and laden with a spicy smell which begins to make you excited. You eventually slide down to a small pouch, which stretches to welcome your body, before vacuuming around you, leaving only a small layer of drug-filled air for you to breathe. Your brain urges you to push or claw your way out, before it is too late.";
	if fightoutcome is 22:
		say "     You let the vines coil around you, and throw you legs-first into the plant's gullet. The vegetal swallows you, little by little, until only your neck remains. Another muscle spasm, and you slide down completely inside, while the plant closes shut after you. In complete darkness, you slide down the skin-tight feeding tube. The air coming from outside is now damp, and laden with a spicy smell which begins to make you excited. You eventually slide down to a small pouch, which stretches to welcome your body, before vacuuming around you, leaving only a small layer of drug-filled air for you to breathe. A small voice in your brain urges you to get out of this dangerous situation.";
	if waiterhater is 0, wait for any key;
	manEatingPlantVore;

to manEatingPlantVore:
	now lustatt is libido of player;
	now calcnumber is -1;
	let trixieexit be 0;
	while trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if HP of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     The silky touch of the plant's sack and the heavy pheromones in the air pushes you into a powerful climax. Your body, suspended into the vaccum-tight confines of the pod, is overtaken by several spasms, as you soak your prison with your [if player is herm]various sexual fluids[else if player is male][cum load size of player] discharge[else]vaginal juices[end if]. The fluids slowly pool down the pod, to be absorbed by the plant. You struggle to catch your breath, as you feel your sanity fade away.";
			if libido of player > 25, decrease libido of player by (libido of player / 10) + 1;
			now lustatt is libido of player;
			if struggleatt is 1, now struggleatt is 0;
			if struggleatt > 1, decrease struggleatt by 2;
			if enduring is true:
				decrease humanity of player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of player by 15 + (psycheadjust * 5);
		if (enduring is true and a random chance of 2 in 5 succeeds) or (enduring is false and a random chance of 4 in 5 succeeds):
			increase hunger of player by 1;
			increase thirst of player by 2;
		else if enduring is false or (enduring is true and a random chance of 2 in 3 succeeds):
			increase thirst of player by 1;
		say "     You are trapped into the skin-tight confines of a man-eating plant's feeding pod. The silky-soft skin of the pod is keeping you vacuum-sealed inside the pod, preventing you from moving more than a couple of centimeters. The top of the pod is still open, letting a small stream of aphrodisiac-laced air reach your lungs. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of player]	Thirst: [thirst of player]	Struggle: [maneatingPlantStruggleBar][line break][run paragraph on]";
		if humanity of player < 1:
			now voreloss is true;
			now trixieexit is 1;
			now bodyname of player is "Man-eating Plant";
			end the story saying "Became plant nanite nutriment";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				say "[line break]";
				increase struggleatt by 1;
				if struggleatt < 3:
					say "     You push with all your strength against the tight material. Fortunately for you, it is not completely sealed around your body, thanks to the small airhole, and this permits you to use the small leeway to give you more liberty.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll; [aka humanity loss]
					wait for any key;
				else if struggleatt is 3:
					say "     The pod becomes more and more saggy, as you make air reach inside. Having a good feeling, you begin to kick and claw the ways of your prison.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll; [aka humanity loss]
					wait for any key;
				else:
					say "     With a loud ripping sound, the plant's skin gives way under your efforts. A gush of light and fresh air fiils your prison and your body flops outside, in a growing puddle of plant sap. Even if the plant seems to have been fatally wounded, you cautiously put as much distance as possible between it and you, and any other suspicious tree for that matter.";
					cleanboundmemory;
					now pewtergenitalcap is 0;
					now trixieexit is 1;
					follow the turnpass rule;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				say "[line break]";
				if obliging is true:
					say "     Basking in the pleasurable sensation of the vacuum seal over your skin, you grind your [if player is male]cock[else]pussy[end if] against your prison, while taking big breathes of the pleasure-inducing air circulating inside the plant.";
					increase lustatt by 14 + (lustadjust * 4);
				else:
					say "     Another maddening contraction around your groin has you deem your current efforts to be useless, and you decide to stop struggling.";
					increase lustatt by 7 + (lustadjust * 2);
				say "[line break]";
				wyvhumanityroll;
				wait for any key;
				next;
			else:
				say "[line break]";
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					increase humanity of player by 3;
					now boundrecover is false;
					if humanity of player > 100, now humanity of player is 100;
				else:
					say "     You take a moment to catch your breath, and try your best to ignore the addling effects of the pod's silky surface on your skin and the dizzling smell of the air provided to your prison.";
				say "[line break]";
				increase lustatt by 3 + lustadjust;
				wyvhumanityroll;
				wait for any key;
				next;
			say "Invalid action.";

to say maneatingPlantStruggleBar:
	say "< [italic type][bracket]-[if struggleatt is 1]---[bold type]X[roman type][else if struggleatt is 2]--[bold type]XX[roman type][else if struggleatt is 3]-[bold type]XXX[roman type][else]-[bold type]XXXX[roman type]";


Section 4 - Endings

when play ends:
	if bodyname of player is "Man-eating Plant":
		say "     Three weeks after your capture, a military expedition lands on the island. As they progress through the forest, they come upon the plant that captured you. They watch with resignation at the outline of your body, trapped inside like many other victims before and after you throughout the island, unmoving and slowly digested by the plant. Sighing, the leader of the platoon signals one of the flamethrower-wielding troopers and has him burn the plant, the tree, and your half-digested, forever unidentified corpse.";

Man-eating Plant ends here.
