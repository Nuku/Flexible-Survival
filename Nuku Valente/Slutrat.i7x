Slutrat by Nuku Valente begins here.
 
To say slut rat growth:
	if "Female Preferred" is listed in feats of player:
		say "You resist the growth!";
	otherwise:
		increase cock width of player by a random number from 1 to 3;
		say "Your balls feel like they have become [ball size]!";
 
 to say slut rat victory:
	say "Defeated, she grabs you and hauls you rapidly back towards her den, grinning the whole way like she knows a joke she does not care yet to share. When you arrive, you find many large pillows strewn about comfortably, and almost half a dozen other slut rats, stroking themselves, or each other, or kissing and otherwise engaged.[line break][line break]They all pause when you are hauled in, and scramble to their feet, rushing up to enjoy and share the fresh meat.";
	if cocks of player is greater than 0:
		say "One rat lowers before you and takes your [cock size desc of player] [cock of player] dick into her waiting snout, suckling firmly as her hands caress your [ball size] in eager rubs of her smooth hands.";
		if cocks of player is greater than 1:
			let x be cocks of player minus 1;
			say "Your extra endowment is not put to waste, as a rat girl reaches for each, and you are soon being stroked in increasingly fast motions. [if x is greater than 1]Your extra cocks[otherwise]Your extra cock[end if] is stroked with loving adoration as they nuzzle into your excited flesh and lap at it with warm soft tongues.";
	if cunts of player is greater than 0:
		say "The rat who brought you in tips you forward, pressing her massive tool against your exposed snatch and rubbing along it in slow teasing motions, considering.";
		if cunt length of player is less than 12 or cunt width of player is less than 7:
			say "She humphs, 'You will not fit, but we can fix that,' she assures in a needy whisper in your ear. Soon your head is being tipped back as something sickly sweet is poured down your throat, making your female organs tingle powerfully as they begin to expand.";
			increase cunt length of player by 4;
			increase cunt width of player by 3;
			if cunt length of player is less than 12 or cunt width of player is less than 7:
				say "Despite the growth, you remain a bit too small, but the rat only has so much patience. She drives up, stuffing her huge organ into your now sopping wet cunt, the lubrication doing much to ease the passage as she begins to piston against you, slapping your bottom with her huge swaying balls and breeding you with a feral intensity.[impregchance]";
			otherwise:
				say "Now large enough, she smoothly pops her cock into your drenched hole, your needy fluids making it quite easy for her to pump lovingly against your wanton sex, grinding her hips against you when she isn't rocking with increasing intensity, her huge balls bumping you, promising a terrific load.[impregchance]";
		otherwise:
			say "Your needy cunt is soon being stuffed and your body rocked as she crashes into you with practiced strokes, tickling at your most sensitive places with her rock hard member. You can feel the tool spurting thick gobs of fluid inside of you with every thrust, even though she hasn't even climaxed yet, your body tingling with pleasure.[impregchance]";
	otherwise:
		say "The rat who took you leans you forward and presses her massive tool to your back door, easing up into your body with strange ease despite the size of the tool. As she rocks against you, new sensations explode and echo through your body. She pets over your [skin of player] form and cooes in your ear, pistoning against your ass with increasingly eager thumps.";
	say "A rat grabs your head and pulls you off towards a waiting nipple. The milk flows thick and sweet across your tongue as your groin throbs and tingles with new delights.[slut rat growth]";
	say "All at once, everyone is climaxing. In you, around you, shuddering squeals of rodent delight before you feel your own body shudder in powerful release. As darkness claims you, you can see the den getting smaller, the original rat dragging you away.";
	if a random chance of 1 in 2 succeeds and slutrat den is unknown:
		say "You remember the way back!";
		now the Slutrat Den is known;
	
SlutRat Den is a room. "This little slice of 'heaven' is a cleaned out section of the sewers. Despite its location, it smells of a soft incense, mixed with the heavy, musky, odor of the rats that dwell within it. Large pillows have been thrown around, many supporting the full rumps of their rodent owners as they watch your movements. For entertainment, besides one another, small heaps of books have been scattered about wherever their owners last grew tired of them. A dart board is also set up on the far wall with small metal darts poking in it at wildly varying points.[slutratdenscene]". Slutrat Den is private. Slutrat Den is fasttravel. It has a number called visittimes.

SlutratSub is a number that varies.
Slutratcor is a number that varies.

To ratslutchug:
	say "Do you drink as hard as you can?";
	if player consents:
		say "The purple stuff is cloyingly sweet and as thick as any milkshake you have ever sampled. You begin to suck as hard as you can, cheeks collapsing inwards as you try to drain the stuff from the bottle despite how slowly it wants to move. Your tongue is rewarded with a few dribs and drabs at first, lungs aching as you try harder. The bottle begins to crinkle as it bends inwards and you are suddenly rewarded with a gush of the sweet stuff. It[']s as much eaten as it is drunk, like especially thick jello with a taste that reminds lightly of honey.";
		wait for any key;
		say "Desperate for breath, you break the seal of your lips for a gasp. The bottle snaps back to its usual dimensions and a solid object pops out of it, blocking your throat. You collapse to your knees, choking almost silently as you try to dislodge it. You can feel the rats as either side of you, rubbing their curvaceous forms along you and petting as they whisper soft enticements, telling you to swallow, not spit. With a painful gulp, the sphere descends into your belly heavily.";
		increase cock length by 8;
		increase cock width by 8;
		increase Slutratsub by 1;
		increase Slutratcor by 1;
		follow the cock descr rule;
		decrease humanity of the player by 20;
		say "As the pain fades, a warmth rushes down between your thighs. Your [cock of player] [if cocks of player is greater than 1]cocks begin[otherwise]cock begins[end if] to grow rapidly. The sound of stretching flesh is barely heard as pleasure runs through your altering shaft in sharp, almost painful, spikes of delight. The rats are cheering on the growth while the two beside you reach to rub and caress encouragingly. You are all too soon long enough for both of them to pull, squeeze, and play with you without getting in the way of the other, lavishing attention on your now [cock size desc of player] equipment with agile fingers and slippery tongues.";
		say "Their hands leave your sensitive bits to haul you to your feet. That[']s when you notice their scent has changed. Instead of smelling like dirty animals, they smell like a delicate floral perfume, subtle and bogglingly attractive. You reach for one of them and your hand is swatted away lightly, 'Easy there, bitch,' she says with a smile, 'Good bitch. But you only touch when told to,' she says as she leans in and plants a kiss. Her fur tickles lightly against your own [skin of player] flesh as she draws you in against her curvy form. Down below, her throbbing shaft nudges against you through the leather she wears[if slutratcor is 1], 'Welcome, bitch. We[']ll have lots of fun together.'[otherwise], 'That[']s a good boy, drink nice and hard.'[end if] Greeting given, she pushes you back half a step, and moves back to her pillow.";
		wait for any key;
		try looking;
		continue the action;
	otherwise:
		say "You seal your lips on the bottle, but make no special effort to chug down that thick, powerfully sweet, stuff. At first, the gunk doesn't move at all, being so thick, but the rats are quite happy to give it a squeeze, forcing a great dallop of the honey like texture. You force yourself to swallow it and the rats pull the bottle back, looking at you expectantly. All the rats are staring at you at this point. Your potential nervousness at this fades as a new sensation distracts you from down below. Your [cock of player] [if cocks of player is greater than 1]cocks begin[otherwise]cock begins[end if] to grow, slowly, inching forward as little crawly feelings run up and down your altering equipment.";
		increase cock length by 4;
		increase cock width by 4;
		follow the cock descr rule;
		decrease humanity of the player by 10;
		say "Those strange crawling sensations run from the tip of your [cock of player] [if cocks of player is greater than 1]cocks[otherwise]cock[end if] down to your swelling [ball size]. Your hips buck forward against your will, bits of prefluid slattering across the floor as arrousal mounts in your sensitive flesh. You clench your hands, gasping for breath as the growth begins to ebb, with a light stream of pearly fluids running down the underside of your [cock of player] equipment to pool between your legs on the floor. One of the two rats leans forward and flicks her tongue, wet and so warm, across the mess at the end, cleaning you with soft slurps. The other rat presses against your side, 'That is looking much better.'";
		say "As the excitement fades from you, the rats abandon you to your arrousal, moving to retake their places and watch you, ever so curiously, as if to see what you might do next.";
	if humanity of the player is less than 1:
		now lost is 1;

To Say ratslutwelcome:
	if breasts of player is greater than 0 and breast size of player is greater than 0:
		say "Her slender fingers brush up across your [skin of player] breasts, squeezing lightly even as the sharp claws at the end slowly trail across delicate flesh. 'We[']re not always sharing.' she whispers as she gazes into your eyes with her own vibrantly violet ones, 'Such a good little bitch.' she croons, trailing claws down over your nipples as she looks downwards.";
	if cocks of player is greater than 0:
		say "She crouches down and reaches to cup your groin, fingers seeking out your [cock size desc of player] [cock of player] tool and give it a few soft pulls, stroking it ever so slowly to erection as she looks up at you, 'And just how big is our littleman?' she coos, long tongue flicking out across it in a flicker.";
		if cocks of player is greater than 1:
			say "Her fine whiskers tickle at your extra man meat. She leans back and brushes across all of your painfully erect shafts, tickling from the base to the tips and back down again in slow appraisal.";
		if cock length of player is greater than 12:
			say "Seemingly pleased with what she finds, she takes a moment to rub her snout alongside your [cock of player] [if cocks of player is greater than 1]cocks[otherwise]cock[end if]. With the barest flicker of her tongue, she continues her inspection.";
		otherwise:
			say "'This won[']t do,' she says with a frown on her pointed snout. Warm fingers squeeze at your shaft, 'This won[']t do at all.' On saying this, another rat hurries forward with a plastic bottle filled with some strange purple syrup that sloshes slowly with the vigorous movement. The first rat raises up and reaches for your mouth, 'Say [']ahhh[']' She beckons with a smile.";
			say "Allow her?";
			if player consents:
				say "The new rat pops off the top and lifts it to your [facename of player] lips. 'Drink drink drink,' she says with a clear excitement. She isn[']t alone in this. All the rats have their eyes on you, glowing eyes in the dim light locked on you as the bottle is upturned  for you to swig on.";
				now lost is 0;
				ratslutchug;
				if lost is 1: [ bad end]
					say "Your thoughts seem a jumble as you stagger in place. You feel warm paws supporting you. You try to remember what you were just doing. Something about a drink? Why would you need a drink. Who are you? Who are they? One of the rats smiles at you, and the fog lifts. You remember. These rats are your kin. Wonderful, wonderful kin.";
					if slutratsub is 0:
						infect "Slut Rat";
						infect "Slut Rat";
						infect "Slut Rat";
						infect "Slut Rat";
						infect "Slut Rat";
						say "You are equals, sisters of long tails. You surrender your old life, having forgotten it, to living alongside your sisters, loving fiercely, being loved in kind.";
					otherwise:
						say "NOT WRITTEN";
					stop the action;
			otherwise:
				say "'Bad bitch!' she hisses, 'If you won[']t learn your place, we[']ll just have to do it the hard way.";
				challenge "Slut Rat";
				if lost is 0:
					if slutratsub is greater than 0:
						decrease slutratsub by 1;
	say "Not Written Yet.";
	
 To Say slutratdenscene:
	if visittimes of SlutRat Den is 0:
		say "You follow your memory back through the sewers, pulling yourself along the, sometimes frighteningly narrow, pipes. At points you have to crawl on hands and knees for what feels like an hour. You wonder to yourself how the rat managed to haul you so effortlessly all this way, but you are determined. The scent of them hits you first, and you hasten your steps.[line break]Heart pounding, you start to run down the tunnel, skidding on the slimey floor and almost falling as you turn sharply, and half dive into the den. The rats are there, and look up at you with clear surprise.";
		say "'Fresh bitch just can[']t wait for more', says one of the rats as she smoothly slides to her feet. A hand dips between her shapely thighs to grab at the obscenely swollen package there as she eyes you with an intense desire burning in her eyes, 'Bitch doesn't know her place. I[']ll show her how things work around here...' She advances towards you with a leer.";
		Challenge "Slut Rat";
		If lost is 1:
			move player to Mall FoodCourt;
			try looking;
			continue the action;
		otherwise:
			say "The defeated rat withdraws into the den, scurrying beneath one of the pillows with a sullen expression. Her sisters laugh at the sight, and one of them rises to her feet in a hop, breasts wobbling enticingly as she approaches you, 'What a good bitch you are,' she croons, 'You just want some love, not fighting, am I right?'";
			say "Agree?";
			if the player consents:
				increase visittimes of slutrat den by 1;
				increase slutratsub by 1;
				say "[ratslutwelcome]";
			otherwise:
				say "She seems surprised when you refuse the offer. Despite it, she reaches to set her naked pink hands on your cheeks and draw you forward for a kiss, 'That will be fine then. Maybe you[']re not here to be our bitch after all.' Her tongue flicks over your face and she draws you to a pillow before flopping on it herself and leaving you standing. 'Fine then, tough guy, you can do what you want, welcome to our den.' The other rats give a brief round of applause before the celebration turns more intimate between a few pairs of them, coupling together in excited squeals that don't seem to include you for the moment.";
				increase visittimes of slutrat den by 1;
			continue the action;

Slutrat ends here.
