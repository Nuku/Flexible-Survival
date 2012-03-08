Slutrat by Nuku Valente begins here.
 
To say slut rat growth:
	if "Female Preferred" is listed in feats of player:
		say "You resist the growth!";
	otherwise:
		increase cock width of player by a random number from 1 to 3;
		say "Your balls feel like they have become [ball size]!";
 
 to say slut rat victory:
	if the location of the player is slutrat den:
		say "The rat grins as she pushes you towards the others, 'Let[']s remind this one how we treat bad people'. Of course, how they treat bad people and how they treat good people can be a bit foggy at times. At the call, the other rats stop their coupling and stroking and other diversions to instead gather around you with hungry expressions.";
	otherwise:
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

There is a ratdartboard in SlutRat Den. "The dart board looks like anyone could [bold type]throw darts[roman type] if they felt like it.".

ratdarts is an action applying to nothing.
understand "throw darts" as ratdarts.
understand "play darts" as ratdarts.

check ratdarts:
	if the location of the player is not Slutrat Den, say "What darts?" instead;
	if visittimes of slutrat den is less than 1:
		say "The rats scowl at you when you approach the dart board. Perhaps you should reconsider.";
		say "Continue?";
		if the player consents:
			say "One of the rats hops to her feet and rushes at you angrily.";
			challenge "Slut Rat";
			if lost is 1:
				move the player to Mall Foodcourt;
				stop the action;
		otherwise:
			say "Reconsidering your options, you back away from the dart board.";
			stop the action;
		
Carry out ratdarts:
	let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus]: Taking a brief breath, you draw back the dart and eye the center circle. With a sudden thrust, the dart sails forward. ";
	let total be bonus + dice;
	now total is total / 5;
	if total is less than 0, now total is 0;
	if total is greater than 5, now total is 5;
	if total is:
		-- 0:
			say "Your dart goes drastically wide, almost hitting one of the lounging rats. With a loud annoyed sound, she moves to tackle you to the ground.";
			say "Do you let her?";
			if the player consents:
				increase slutratsub by 1;
				say "[slutratsubsex]";
			otherwise:
				challenge "Slut Rat";
				if lost is 1:
					move player to Mall Foodcourt;
		-- 1:
			say "You missed entirely! The rat bounces lightly off the cement wall behind the board and falls to the ground with a soft clatter. The rats snicker softly at your performance.";
			if a random chance of 1 in 3 succeeds:
				say "A naked pink tail swats across your back end, 'You can do better than that.'";
		-- 2:
			say "Your dart lands on the outer rim of the board. The rats nod lightly, but none of them look terribly impressed at your skill. Perhaps with more practice...";
		-- 3:
			say "With pride, you land in the inner section of the board, shy of a bulls eye. One of the rats tosses a pack of chips towards you with a thumbs up.";
			add "chips" to invent of player;
		-- 4:
			say "Yes! Your dart lands in the central circle, a bulls eye! The rats give a polite cheer at your excellent shot. One of them reaches under herself and pulls out a can of soda and tosses it to you, still warmed from her rump.";
			add "soda" to invent of player;
		-- 5:
			say "Perfection. Your dart lands right in the middle of the central circle. A soft whistle of appreciation raises through the gathered rats. You can't help but feel more confident in yourself as a result.";
			decrease slutratsub by 1;
			increase score by 5;
			say "One of the rats seems interested in you as a result of your athleticism. Do you wish to approach her?";
			if the player consents:
				say "[slutratdomsex]";
	follow the turnpass rule;
	
instead of sniffing SlutRat Den:
	say "The den is heavy with the musky scents of the lustful rats, which is only slightly masked by the soft incenses.";

SlutratSub is a number that varies.
Slutratcor is a number that varies.
lastratvisit is a number that varies.

To say slutratsubsex:
	say "Scene not written yet.";

To say slutratdomsex:
	say "Scene not written yet.";
	
To ratslutchug:
	say "Do you drink as hard as you can?";
	if player consents:
		say "The purple stuff is cloyingly sweet and as thick as any milkshake you have ever sampled. You begin to suck as hard as you can, cheeks collapsing inwards as you try to drain the stuff from the bottle despite how slowly it wants to move. Your tongue is rewarded with a few dribs and drabs at first, lungs aching as you try harder. The bottle begins to crinkle as it bends inwards and you are suddenly rewarded with a gush of the sweet stuff. It[']s as much eaten as it is drunk, like especially thick jello with a taste that reminds lightly of honey.";
		wait for any key;
		say "Desperate for breath, you break the seal of your lips for a gasp. The bottle snaps back to its usual dimensions and a solid object pops out of it, blocking your throat. You collapse to your knees, choking almost silently as you try to dislodge it. You can feel the rats as either side of you, rubbing their curvaceous forms along you and petting as they whisper soft enticements, telling you to swallow, not spit. With a painful gulp, the sphere descends into your belly heavily.";
		increase cock length of player by 8;
		increase cock width of player by 8;
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
		increase cock length of player by 4;
		increase cock width of player by 4;
		follow the cock descr rule;
		decrease humanity of the player by 10;
		say "Those strange crawling sensations run from the tip of your [cock of player] [if cocks of player is greater than 1]cocks[otherwise]cock[end if] down to your swelling [ball size]. Your hips buck forward against your will, bits of prefluid slattering across the floor as arrousal mounts in your sensitive flesh. You clench your hands, gasping for breath as the growth begins to ebb, with a light stream of pearly fluids running down the underside of your [cock of player] equipment to pool between your legs on the floor. One of the two rats leans forward and flicks her tongue, wet and so warm, across the mess at the end, cleaning you with soft slurps. The other rat presses against your side, 'That is looking much better.'";
		say "As the excitement fades from you, the rats abandon you to your arrousal, moving to retake their places and watch you, ever so curiously, as if to see what you might do next.";
	if humanity of the player is less than 1:
		now lost is 1;

To Say ratslutwelcome:
	if breasts of player is greater than 0 and breast size of player is greater than 0:
		say "Her slender fingers brush up across your [skin of player] breasts, squeezing lightly even as the sharp claws at the end slowly trail across delicate flesh. 'We[']re not always sharing.' she whispers as she gazes into your eyes with her own vibrantly violet ones, 'Such a good little bitch.' she croons, trailing claws down over your nipples as she looks downwards.";
	if (cocks of player is greater than 0 and cunts of player is 0) or ( cunts of player is greater than 0 and cocks of player is greater than 0 and a random chance of 1 in 2 succeeds):
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
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					end the game saying "You succumb to the honeyed drink.";
					stop the action;
			otherwise:
				say "'Bad bitch!' she hisses, 'If you won[']t learn your place, we[']ll just have to do it the hard way.";
				challenge "Slut Rat";
				if lost is 0:
					if slutratsub is greater than 0:
						decrease slutratsub by 1;
						say "You feel more confident about your dealings with the rat after that little battle.";
		continue the action;
	if cunts of player is greater than 0:
		say "Female Scene Pending";
	otherwise:
		if breasts of player is greater than 0 and breast size of player is greater than 0:
			say "The rat arrives at the junction of your thighs and seems surprised at what she finds, or does not find. Her teeth are felt, nipping twice at your [skin of player] skin before she looks back up, 'How do you live like that?' she says in an almost accusing tone. She rises to her feet and kisses your cheek, 'Poor thing. We will just have to fix that.'";
		otherwise:
			say "She brushes up alongside you, nose twitching lightly as she takes your scent, 'Mmm, something is wrong,' she murmurs, reaching for your flat chest, then grasping your featureless groin openly, 'You have nothing.' She moves around behind you and presses against your back, 'That won't work at all...'";
		if "female preferred" is not listed in feats of the player:
			say "She draws out a bottle of strange purple fluid and holds it up to you, 'Drink, as quickly as you can.'";
			ratslutchug;
		otherwise:
			say "Pink fingers curl at your hips as she leans in and nuzzles between your legs, 'You smell like you want to be a woman, but you're missing things.' A soft bite is felt where you should have something, then her warm tongue, slowly working her way back up along your front, 'We have just the thing.' The bite causes a light itching sensation, the demonically tainted rat's strain trying to work at your body.";
			infect "Slut Rat";
			say "Another rat hurries forward and seizes one of your hands, hauling you across the room and down a tunnel. Darkness closes in around you and she as you step quickly along the claustrophobic crawlways. Dim red light comes into view from around the corner. The rat guiding you, now that you she slows her steps and gives you a chance to look at her, is a bit more slender than the others. As she looks over her shoulders, you can see glasses balanced on her narrow snout, 'You have to go along from here,' she says, 'Pay proper respect.'";
			slutratpatron;
			
To slutratpatron:
	say "You advance towards the ominous red light in the otherwise darkened sewers. The smell of sulfur grows thicker as the slick cement walls give way to rougher hewed stone that seems to reflect that malignant red light back like a man laughing at a cruel joke. Your [skin of player] feet can feel the increasingly rough terrain. Stalagmites become sharper and more frequent, slowing your progress, but you can see it now. Situated a few feet ahead is a raised pedastal of some dark stone. Perched on top is a heavy tome.";
	say "Just looking at that book causes strange whispered to echo in your mind. You can hear the clicking scitter of claws on cement, but a quick glance around shows nothing to produce it. As you approach the pedestal, a hand settles on your shoulder and turns you to face a rat face. This creature looks to have been a rat first, before taking on obscene bits of human sexuality and posture, weaving itself into a strangely attractive visage of oozing overdone lust. Her red fur seemed to smolder in the dark, flickering even as she smiles. With a puff of smoke, she draws you closer to herself, pushing her abundant chest to yours. Her eyes seem to bore into your own. You can't make out the color, you can't even make out the shape. Looking into them causes physical discomfort.";
	say "Scene not written yet.";
	
 To Say slutratdenscene:
	if lastratvisit - turns is less than 8 and lastratvisit is greater than 0:
		continue the action;
	now lastratvisit is turns;
	if visittimes of SlutRat Den is 0:
		say "You follow your memory back through the sewers, pulling yourself along the, sometimes frighteningly narrow, pipes. At points you have to crawl on hands and knees for what feels like an hour. You wonder to yourself how the rat managed to haul you so effortlessly all this way, but you are determined. The scent of them hits you first, and you hasten your steps.[line break]Heart pounding, you start to run down the tunnel, skidding on the slimey floor and almost falling as you turn sharply, and half dive into the den. The rats are there, and look up at you with clear surprise.";
		say "'Fresh bitch just can[']t wait for more', says one of the rats as she smoothly slides to her feet. A hand dips between her shapely thighs to grab at the obscenely swollen package there as she eyes you with an intense desire burning in her eyes, 'Bitch doesn't know her place. I[']ll show her how things work around here...' She advances towards you with a leer.";
		Challenge "Slut Rat";
		If lost is 1:
			move player to Mall FoodCourt;
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

When play ends:
	if humanity of the player is less than 10 and hp of the player is greater than 0:
		if bodyname of player is "Slut Rat":
			say "You can no longer deny your new basic needs. You flee to the mall and its comforting sewers. Following your instincts, you are soon in the welcoming embrace of your rodent sisters, who take turns fucking and being fucked by you for what feels like days in a celebration of your coming around. Your family remains there, hiding from the rescue, and living out your days together.";
			if slutratcor is greater than 4:
				end the game saying "Your [skin of player] hide slowly tints to a deep angry red shade, turning towards black at your hands and feet. Those feet harden into cloven like hooves as the months go by and strange images assault you in your fevered lust dreams. It all comes to a crest when you awaken to a rat sister mounted on top of you, riding you for all your worth. As you climax together, you realize that this is Rod's girl. She leans in and licks her tongue over your nose, gazing into your eyes, 'It[']s time,' she whispers. You rise with her, each smelling of the other, and leave the other rats behind. Your dark lords had need of you both.";
				continue the action;
			otherwise if visittimes of slutrat den is greater than 0:
				if slutratsub is 0:
					say "You are neither dominant nor submissive of your rat sisters, living as equals. This is not without its frictions, as you do not all have the same ideas, but you always managed to reach an accord, eventually. Sometimes this involves taking or being taken until someone realizes the error of their ways in a pile of sweat andother fluids, but you don't find that to be a disagreeable way to work things out.";
				if slutratsub is less than -1:
					say "The others call you [']little sister['] when they are very happy with you, and [']bitch['] the rest of the time. You are the omega of the group, made to do the more menial of tasks. Still, their love for you is unquestionable, and they protect you from any and all threats to your sewer lair.";
	otherwise:
		if bodyname of player is "Slut Rat":
			say "Despite your sanity, you find your thoughts drifting back to your rodent sisters. When the rescue comes, you point them out. They put out a terrific struggle, but, with your help, they are rounded up successfully and brought out of the city. They slowly come around to sentience again, and you all live together, working a massage parlor as a strangely loving family. No customer leaves unhappy.";


Slutrat ends here.
