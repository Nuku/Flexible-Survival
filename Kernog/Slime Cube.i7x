Version 1 of Slime Cube by Kernog begins here.

"Adds a man-eating plant creature to Flexible Survival's Wandering Monsters table. Classic monster, with vore-themed loss scene."

Section 1 - Monster Responses

when play begins:
	add { "Slime Cube" } to infections of hermaphrodite;

[ Slime falls upon you while you explore the island. Big cube of translucent material, which reminds you of the goo girl]
to say slimeCubeDesc:
	if inasituation is false:
		say "     A big and gooey translucent cube stands in front of you. Despite making you remember the goo girls of the city, its body is completely featureless, save the few boney remnants of previous victims floating inside. It wobbles slowly in your direction, and it seems it will relentlessly do so until it absorbs you into its body.";
	else:
		say ""; [dealt with in the event]

to say beatSlimeCube:
	if inasituation is false:
		say "     Mortally wounded, the slime loses its coherency, and dissolves into a pile of smelly goop.";
	else: [event]
		say ""; [dealt with at the event source]

Section 2 - Monster Insertion

Table of Random Critters (continued)
name	enemy title	enemy name	enemy type	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	DayCycle	altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now name entry is "Slime Cube";
	now enemy title entry is "";
	now enemy name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The slime charges ahead and rams into you. You reel back under the impact.[or]The cube fires a slime ball which lands right into your chest.[or].[at random]";
	now defeated entry is "[beatSlimeCube]";
	now victory entry is "[slimeCubeVoreScene]";
	now desc entry is "[slimeCubeDesc]";
	now face entry is "that of a pretty human's, yet with a curiously disquieting smile"; [ Face. Format as Your face is [face of player]. ]
	now body entry is "human-like, but melded together just at your thighs, flowing together into a large and bulbous base of [skin of player] flesh"; [ Body. Format as "Your body is [body of player]." ]
	now skin entry is "[one of]jellied[or]gelatin-like[or]translucent[at random] [if goocolor is 1]blue[else if goocolor is 2]purple[else]green[end if]"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of player] skin." ]
	now tail entry is ""; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]partially fluid[or]flexibly semi-solid[or]jellied[at random]"; [ Cock. Format as "You have a 'size' [cock of player] cock." ]
	now face change entry is "you can feel your face reshaping into rather pretty, human proportions. An urge overtakes you and you smile, and never stop"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "[googirlbodychange]"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "[googirlskinchange]"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "you get an odd feeling, but see no change"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "your [cock size desc of player] dick gives a powerful lurch as strange fluid rushes up into it, making it swell a moment before the former color drains, leaving the new, somewhat flexible, gelatin behind. A squeeze confirms that it is still quite solid enough to get the job done"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 8;
	now dex entry is 10; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 10; [ These values may be used as part of alternate combat.]
	now per entry is 10;
	now int entry is 10;
	now cha entry is 5;
	now sex entry is "Both";
	now HP entry is 50;
	now lev entry is 5; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 4; [ Monster's average damage when attacking. ]
	now area entry is "Island"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 6; [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4; [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2; [ Number of nipples the infection will give a player. ]
	now breast size entry is 3; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 20; [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 20; [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 40; [ Target libido the infection will rise towards. ]
	now loot entry is "glob of goo"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 40; [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]mutated[or]flowing[or]altered[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "gelatinous"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false; [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;


Section 4 - Vore Bound state

[Plays on loss]
to say slimeCubeVoreScene:
	if fightoutcome is 20:
		say "     Like a giant die, the slime rolls on the ground until it reaches your knocked-out force, and slams down on you. Your body pops into the gelatinous body, and slowly floats towards its center. The inside of the slime feels hot on your skin, and you understand that the creature aims to digest you slowly, after making sure that you oppose no more resistance.";
	if fightoutcome is 22:
		say "     You welcome the slime as it rolls in a die-like fashion upon you, and slams down on your waiting body. Your body pops into the gelatinous body, and slowly floats towards its center. The inside of the slime feels hot on your skin, and you understand that the creature aims to digest you slowly, after making sure that you oppose no more resistance.";
	say "     The slime washes around your body as it attempts to keep you stimulated and placated. [if cunts of player > 1]It slowly pushes past each of your pussy lips, then suddenly stretches inside, forming thick, slimy limbs before relentlessly pound each of your wombs. [else if player is female]It slowly pushes past your pussy lips, then suddenly stretches inside, forming a thick, slimy limb before relentlessly pounding your womb. [end if][if cocks of player > 1]An ever-changing flow wraps around each of your [cockname of player] shafts, keeping them hard and massaged, experimentally focusing their efforts on your [cocks of player] glans. [else if player is male]An ever-changing flow wraps around your [cockname of player] shaft, keeping it hard and massaged, experimentally focusing their efforts on your glans. [end if]The slime does not forget to relentlessly tease every part of your body, including your nipples and your [breasts of player] [bodyname of player] breasts[if anallevel > 1], and flowing into your ass[end if].";
	say "     Time is on the essence. If you do not struggle out in time, these intense sensations may be the last you will ever experience.";
	WaitLineBreak;
	slimeCubeVore;

to slimeCubeVore:
	now lustatt is libido of player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if clearnomore is 0, clear the screen;
		if HP of player > 0 or humanity of player < 50:
			now obliging is true;
		checkboundrecover;
		if lustatt > 99:
			say "     The sexual stimulation of the slime pushes you past your limits. You cum hard, while the slime patiently absorbs your discharge, as an appetizer. You feel your life force fading away and your mind blank out further, as you come back from your pleasure height.";
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
		say "     You float in the middle of a translucent slime. The gelatinous material slowly flows around your body, relentlessly penetrating and stimulating you. Despite its viscosity, you are certain that, with some effort, you may 'swim' your way out. You imagine your only active option is to [bold type]S[roman type]truggle enough until they let you go, else you can [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] them, or [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if] these questionable circumstances.[line break]";
		now enduring is false;
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break][run paragraph on]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break][run paragraph on]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break][run paragraph on]";
		say "Sanity: [humanity of player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of player]	Thirst: [thirst of player]	Struggle: [maneatingPlantStruggleBar][line break][run paragraph on]";
		if humanity of player < 1:
			now voreloss is true;
			now Trixieexit is 1;
			now bodyname of player is "Slime Cube";
			end the story saying "Digested by a slime.";
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
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 3:
					say "     You desperately wiggle your limbs and eventually make some progress towards the slime's surface.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll; [aka humanity loss]
					wait for any key;
				else if struggleatt < 5:
					say "     You can finally feel your fingers stretch the outer layer of the slime. Liberty is only a few strokes away.";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll; [aka humanity loss]
					wait for any key;
				else:
					say "     Your arms eventually escape the confines of the slime. The firmer outer skin of the slime acts against it, and gives you additional leeway to push yourself out. You instinctively run as fast as you can away from the much slower slime.";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					say "     Lost in the sensations procured by the slime, you contort your body inside your living prison, a smile on your face.";
					increase lustatt by 14 + (lustadjust * 4);
				else:
					say "     As the slime amped up its ministrations, you greet your teeth and decide to ride the wave of pleasure which wrecks your body.";
					increase lustatt by 7 + (lustadjust * 2);
				LineBreak;
				wyvhumanityroll;
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					increase humanity of player by 3;
					now boundrecover is false;
					if humanity of player > 100, now humanity of player is 100;
				else:
					say "     You take a moment to get your bearings and focus on deciding in which direction you should keep digging your way.";
				LineBreak;
				increase lustatt by 3 + lustadjust;
				wyvhumanityroll;
				wait for any key;
				next;
			say "Invalid action.";

to say maneatingPlantStruggleBar:
	say "< [bracket][if struggleatt is 0]-----[else if struggleatt is 1]----[bold type]X[roman type][else if struggleatt is 2]---[bold type]XX[roman type][else if struggleatt is 3]--[bold type]XXX[roman type][else]-[bold type]XXXX[roman type][end if][close bracket]";


Section 4 - Endings

when play ends:
	if bodyname of player is "Slime Cube":
		say "     The last of your consciousness fades away. You are already comatose when the hotness upon your skin turns into a burning sensation and your body dissolves piece by piece, until only your bones remain, to be digested for the weeks to come.";


Slime Cube ends here.
