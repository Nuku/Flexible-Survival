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
lastratdartthrow is a number that varies.  lastratdartthrow is usually 555.
ratdartcount is a number that varies.

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
	if lastratdartthrow - turns < 8:
		say "The other rats grumble about you hoggin['] the board all the time.  Maybe you should wait a while before playing again.";
	otherwise:
		if ratdartcount is 3, now ratdartcount is 0;
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
					if slutratsub > 10, now slutratsub is 10;
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
				if slutratsub < 0, now slutratsub is 0;
				increase score by 5;
				say "One of the rats seems interested in you as a result of your athleticism. Do you wish to approach her?";
				if the player consents:
					say "[slutratdomsex]";
		increase ratdartcount by 1;
		if ratdartcount is 3, now lastratdartthrow is turns - 1;	[max three darts before a delay is imposed]
		follow the turnpass rule;
	
instead of sniffing SlutRat Den:
	say "The den is heavy with the musky scents of the lustful rats, which is only slightly masked by the soft incenses.";

SlutratSub is a number that varies.  SlutratSub is usually 5.		[0 to 10 range, 5=neutral, higher is more a rat sub]
Slutratcor is a number that varies.
lastratvisit is a number that varies.

To say slutratsubsex:
	say "The horny rat pins you down, clearly intent on having her way with your body.  You moan softly and strip as you submit yourself to her needs.  Her paws run over your body";
	if cunts of player > 0:
		say ", drifting down your chest to your groin[if cocks of player > 0].  She wraps her paw around your cock and balls, then lifts them out of the way to expose your waiting pussy[otherwise].  She slides her fingers across your waiting pussy[end if].  You moan softly as the rat herm teases your pussy with a hungry, lustful grin.  She moves into position, lining her cock up with your slit and thrusts into you[if cunt length of player < 10 or cunt width of player < 6].  Your wet snatch is a tight fit for the well-hung rat, but she growls and thrusts all the harder, eventually stuffing your pussy full of rat cock[otherwise].  Your wet snatch spreads open for the well-hung rat, taking her cock fully into you, making you both moan in pleasure[end if].";
		if SlutratSub > 5:
			say "'Mmm... you're a good little bitch, aren't you?' she moans in you ear as she fucks you.  You can't help but nod in agreement, loving the feel of this powerful, sexy rat dominating you.  Her big, thick cock throbs inside you so deliciously with each push it makes into your eager body.    You grip her balls and fondle them, longing for her to fill you with her seed[if cocks of player > 0].  She takes your cock in hand and starts stroking your meat, making you whimper in pleasure like the horny slut you are[otherwise].  She slides her paws to your breasts, groping and squeezing them, making you whimper in pleasure like the horny slut you are[end if].  Eventually the rat girl's penis drives into you one last time and unleashes a hot rush of seed deep inside you.  You can feel each blast of that powerful rat's cum and longing for more even after the heavy load you've received[if cocks of player > 0].  Your paint your chest with your own cum as the pleasure of this wild romp pushes you to orgasm hard for dominant rat pumping your shaft[end if].  Satisfied, she withdraws her softening shaft and gives your ass a swat while rat cum leaks from your gaping slit.";
		otherwise:
			say "'Mmm... nice to be bottom for a change, isn't it?' she moans in you ear as she fucks you.  You can't help but nod in agreement, loving the feel of this powerful, sexy rat atop you.  Her big, thick cock throbs inside you so deliciously with each push it makes into your eager body.    You grip her balls and fondle them, eager to help her get off[if cocks of player > 0].  She takes your cock in hand and starts stroking your meat, spreading your leaking precum over it[otherwise].  She slides her paws to your breasts, groping and squeezing them, making you nipples painfully hard[end if].  Eventually the rat girl's penis drives into you one last time and unleashes a hot rush of seed deep inside you.  You can feel each blast of that beautiful rat's cum and watch your tummy swell a little from the output of her big balls[if cocks of player > 0].  Your paint your chest with your own cum as the pleasure of this wild romp pushes you to orgasm hard for sexy rat pumping your shaft[end if].  Satisfied, she withdraws her softening shaft and gives your ass a swat while rat cum leaks from your gaping slit.";
	otherwise:
		say ", moving up to grab your head and pulling it between her legs.  Finding your face pressed against the rat's large cock, you take in her strong, arousing scent.  Her strong scent is quite arousing and you find yourself submitting to her desires and begin to lick and kiss her throbbing meat.  She moans happily and rubs her paws over your head, scritching your ears.";
		if SlutratSub > 5:
			say "'Mmmm... you're a good little bitch, aren't you?' she moans as you open wide and start sliding your lips over her musky meat.  You can't help but nod in agreement, bobbing your head over her cock as you love the taste of this powerful, sexy rat.  Her precum leaks into your mouth and down your throat, its delicious taste making you release a muffled moan.  Your cock throbs and dribbles pre onto the dirty floor as she rubs her rat foot down onto it.  Taking her heavy balls in your hands, you fondle and caress them, eager for the tasty treat they contain.  She forces your head forward, sliding her large, dripping glans down your throat as she starts thrusting, fucking your face.  Your tongue lavishes attention upon the sexy rat dominating you until she moans loudly when her pulsing cock shoots her hot seed down your throat.  Pulling back after a few spurts, she fills your mouth with the rest, letting you taste her seed before you swallow it down to join the rest warming your belly.  As you swallow her musky, virile seed, you cum hard under her footpaw, spraying your semen onto the floor.  Satisfied, she withdraws her softening shaft and gives your ass a swat to send you back to the group.";
		otherwise:
			say "'Mmmm... I'm going to enjoy giving you a tasty treat,' she moans as you open wide and start sliding your lips over her musky meat.  You can't help but nod in agreement, bobbing your head over her cock as you love the taste of this powerful, sexy rat.  Her precum leaks into your mouth and down your throat, its delicious taste making you release a muffled moan.  Your cock throbs and dribbles pre onto the dirty floor as she rubs her rat foot down onto it.  Taking her heavy balls in your hands, you fondle and caress them, eager for the tasty treat they contain.  She guides your head forward, sliding her large, dripping glans down your throat as she starts thrusting as you deep throat her.  Your tongue lavishes attention upon the sexy rat before you until she moans loudly when her pulsing cock shoots her hot seed down your throat.  Pulling back after a few spurts, she fills your mouth with the rest, letting you taste her seed before you swallow it down to join the rest warming your belly.  As you swallow her musky, virile seed, you cum hard under her footpaw, spraying your semen onto the floor.  Satisfied, she withdraws her softening shaft and gives your ass a swat to send you back to the group.";
	infect "Slut Rat";

To say slutratdomsex:
	if cocks of player > 0:
		if a random chance of 1 in 2 succeeds:
			say "Feeling in the mood for a little fun, you press the slutty rat towards a battered and stained loveseat someone managed to get down here.  The rats sitting there vacate it reluctantly as you both strip, but the prospect of watching a little fun clearly helps.  You push the rat face down onto the stained cushions and get your cock lined up with her wet slit.  She moans softly as you tease your cock against her wet slit a few times before sinking into her, listening to her give a [if cock length of player < 6 or cock width of player < 4]soft sigh of pleasure as you mount her[otherwise if cock length of player < 18 and cock width of player < 12]delicious moan of pleasure as you mount her[otherwise]muffled yelp of painful pleasure as your big cock is driven into her[end if].  As you start thrusting, she squirms and wriggles under you, her wet cunt gripping and squeezing your cock with need[if slutratsub < 4].  You press her rodent muzzle against a musky stain on the cushions as you take her cock in your other hand and start pumping at it[otherwise].  You wrap your hand around her cock and start pumping at it[end if].  You pound into her again and again, loving her lustful cries as the others watch you have your way with the horny rat beneath you.  After a good, long fucking, you drive hard into her and blast your thick seed into her[if cock width of player > 12], making her belly swell with your ample load[otherwise], emptying your balls into her dripping slit[end if].  With you stroking her throbbing meat, she blasts her load onto the loveseat, adding another big, sticky stain to it[if slutratsub < 4], which you leave her lying in.  The rats who left the loveseat scramble back onto it, sharing other rat between them to deal with their own lusts now[otherwise].  Satisfied, you pull out and pull her up into a kiss while the loveseat's previous occupants reclaim it to satisfy their own excited lusts now[end if].";
		otherwise:
			say "Feeling in the mood for a little fun, you push the slutty rat to one of the walls and move in behind her.  Stripping off your clothes, you lift her rat tail up and grind your hard cock against her ass.  She moans and wiggles back against your throbbing meat.  Grabbing her bottom firmly, you sink your hard cock into her, making her [if cock length of player < 6 or cock width of player < 4]give a soft sigh of pleasure as you mount her[otherwise if cock length of player < 18 and cock width of player < 12]moan in satisfaction as you mount her[otherwise]release a muffled yelp of painful pleasure as your big cock is driven into her[end if][if slutratsub < 4].  She braces herself against the wall as you pound into her hard and fast, [otherwise].  She rubs back against you as you thrust into her steadily, [end if]making her wet cunt quiver and squeeze around you wonderfully.  Putting a free hand around her throbbing meat, you pump and stroke her cock as you fuck her until she blasts her thick seed across the wall, painting it with her semen.  As she orgasms, her cunt squeezes and milks at your shaft, getting you to cum hard and pump your load into her[if cock width of player > 12].  Your ample load makes her belly swell as you drain your big balls into her lustful body[end if][if slutratsub < 4].  Finished with her, you pull your cock free and leave her lying against the wall in a post-orgasmic daze, her cum running down the wall onto fur[otherwise].  Finished, you slide your cock free and pull her into a lustful kiss and an ass squeeze before parting[end if].";
	otherwise:
		if a random chance of 1 in 2 succeeds:
			say "Feeling in the mood for a little fun, you press the slutty rat towards a battered and stained loveseat someone managed to get down here.  The rats sitting there vacate it reluctantly as you both strip, but the prospect of watching a little fun clearly helps.  You push the rat to lay down on the stained cushions and straddle her throbbing cock.  You stroke and pump it, making sure its fully hard before moving to ease yourself down onto it, eager to take what you want from this sexy rat.  She moans as your wet pussy kisses her glans, then starts to spread open for it[if cunt width of player < 9 or cunt width of player < 6].  Her large cock is difficult for your small pussy to take, but you take your time and are persistent, forcing the rat below you to let you set the pace until you are stuffed full of her throbbing meat[otherwise if cunt length of player < 16 and cunt width of player < 12].  Her large cock is a wonderful fit for your large pussy, wonderfully long and filling.  You do take your time sinking down onto it, wanting to savour the sensation, forcing the rat below you to let you set the pace[otherwise].  Your cavernous pussy takes her large cock in easily, letting you drive the full length of it into you in one quick push.  The sexy rat moans deliciously as your hot, slick cunt swallows up her big penis in one go[end if].  You give the rat's cock a good, long ride, switching from fast pounding to slow creeping, drawing it out until the slut rat is moaning and begging you to let her finish.  As you feel your own orgasm approaching, you push towards it until you cum hard and allow the rat to finally get off and pump her ample load into you with a moan of satisfaction[if slutratsub < 4].  Finished with her, you get up and leave her on the loveseat in a daze for its previous occupants to use to sate their lusts[otherwise].  Finished, you get up and pull her into you arms for a lustful kiss and an ass squeeze before parting[end if].";
		otherwise:
			say "Feeling in the mood for a little fun, you push the slutty rat to her knees and [if slutratsub < 4]press[otherwise]guide[end if] her muzzle between your legs to your dripping cunt.  Obediently, she sets to licking and kissing your sensitive folds, then slides her slick tongue into your hot tunnel, making you sigh in pleasure.  You run your fingers through her rough hair and over her round ears.  She works hard to please you, working her tongue up inside you and flicking it against your inner walls to excite any sensitive spot she finds.  Between licking, she kisses and sucks at your clit, making you moan all the more.  She keeps this up diligently until you cum hard, soaking her face and muzzle in your hot juices, which she eagerly laps up.  As the rush of your orgasm starts to fade, you press her to lay back on the floor and take her cock firmly in hand.  As a reward for her hard work and attentive tongue-work, you pump her meat until she cums hard and sprays her seed over herself.  Finished with her, you leave her like that, stick with a mix of your juices and her semen.";
	infect "Slut Rat";
	
To ratslutchug:
	say "Do you drink as hard as you can?";
	if player consents:
		say "The purple stuff is cloyingly sweet and as thick as any milkshake you have ever sampled. You begin to suck as hard as you can, cheeks collapsing inwards as you try to drain the stuff from the bottle despite how slowly it wants to move. Your tongue is rewarded with a few dribs and drabs at first, lungs aching as you try harder. The bottle begins to crinkle as it bends inwards and you are suddenly rewarded with a gush of the sweet stuff. It[']s as much eaten as it is drunk, like especially thick jello with a taste that reminds lightly of honey.";
		wait for any key;
		say "Desperate for breath, you break the seal of your lips for a gasp. The bottle snaps back to its usual dimensions and a solid object pops out of it, blocking your throat. You collapse to your knees, choking almost silently as you try to dislodge it. You can feel the rats as either side of you, rubbing their curvaceous forms along you and petting as they whisper soft enticements, telling you to swallow, not spit. With a painful gulp, the sphere descends into your belly heavily.";
		increase cock length of player by 8;
		increase cock width of player by 8;
		increase Slutratsub by 1;
		if slutratsub > 10, now slutratsub is 10;
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
		say "Those strange crawling sensations run from the tip of your [cock of player] [if cocks of player is greater than 1]cocks[otherwise]cock[end if] down to your swelling [ball size]. Your hips buck forward against your will, bits of prefluid slattering across the floor as arousal mounts in your sensitive flesh. You clench your hands, gasping for breath as the growth begins to ebb, with a light stream of pearly fluids running down the underside of your [cock of player] equipment to pool between your legs on the floor. One of the two rats leans forward and flicks her tongue, wet and so warm, across the mess at the end, cleaning you with soft slurps. The other rat presses against your side, 'That is looking much better.'";
		say "As the excitement fades from you, the rats abandon you to your arrousal, moving to retake their places and watch you, ever so curiously, as if to see what you might do next.";
	if humanity of the player is less than 1:
		now lost is 1;
	otherwise:
		say "The slut rat wraps her paws around your swollen, oversized cock, stroking and pumping at it until you finally cum hard.  This drains your overgrown balls and cock somewhat, but you are still quite a bit larger than before.  She continues her inspection by letting her paws roam over the rest of your body, stroking your [if cunts of player > 1]cunts, [otherwise if cunts of player is 1]cunt, [end if]thighs and ass, putting you on display for all the other rats as she does.  After your lustful introduction to the rat nest, she gives your ass a swat.  'Go have fun now, little slut.'";

To Say ratslutwelcome:
	if breasts of player is greater than 0 and breast size of player is greater than 0:
		say "Her slender fingers brush up across your [skin of player] breasts, squeezing lightly even as the sharp claws at the end slowly trail across delicate flesh. 'We[']re not always sharing.' she whispers as she gazes into your eyes with her own vibrantly violet ones, 'Such a good little bitch.' she croons, trailing claws down over your nipples as she looks downwards.";
	[Male scene, 50% chance if herm]
	if (cocks of player is greater than 0 and cunts of player is 0) or ( cunts of player is greater than 0 and cocks of player is greater than 0 and a random chance of 1 in 2 succeeds):
		say "She crouches down and reaches to cup your groin, fingers seeking out your [cock size desc of player] [cock of player] tool and give it a few soft pulls, stroking it ever so slowly to erection as she looks up at you, 'And just how big is our little man?' she coos, long tongue flicking out across it in a flicker";
		if cocks of player is greater than 1:
			say ".  Her fine whiskers tickle at your extra man meat. She leans back and brushes across all of your painfully erect shafts, tickling from the base to the tips and back down again in slow appraisal";
		if cock length of player > 9:
			say ".  Seemingly pleased with what she finds, she takes a moment to rub her snout alongside your [cock of player] [if cocks of player is greater than 1]cocks[otherwise]cock[end if]. With the barest flicker of her tongue, she continues her inspection.  Her paws roam over the rest of your body, stroking your [if cunts of player > 1]cunts, [otherwise if cunts of player is 1]cunt, [end if]thighs and ass, putting you on display for all the other rats as she does.  After your lustful introduction to the rat nest, she gives your ass a swat.  'Go have fun now, little bitch.'";
			infect "Slut Rat";
		otherwise:
			say ".  'This won[']t do,' she says with a frown on her pointed snout. Warm fingers squeeze at your shaft, 'This won[']t do at all.' On saying this, another rat hurries forward with a plastic bottle filled with some strange purple syrup that sloshes slowly with the vigorous movement. The first rat raises up and reaches for your mouth, 'Say [']ahhh[']' she beckons with a smile.";
			say "Allow her?";
			if player consents:
				say "The new rat pops off the top and lifts it to your [facename of player] lips. 'Drink drink drink,' she says with a clear excitement. She isn[']t alone in this. All the rats have their eyes on you, glowing eyes in the dim light locked on you as the bottle is upturned for you to swig on.";
				now lost is 0;
				ratslutchug;
				if lost is 1: [ bad end]
					say "Your thoughts seem a jumble as you stagger in place. You feel warm paws supporting you. You try to remember what you were just doing. Something about a drink? Why would you need a drink? Who are you? Who are they? One of the rats smiles at you, and the fog lifts. You remember. These rats are your kin. Wonderful, wonderful kin.";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					infect "Slut Rat";
					end the game saying "You succumb to the honeyed drink.";
					stop the action;
				otherwise:
					infect "Slut Rat";
			otherwise:
				say "'Bad bitch!' she hisses, 'If you won[']t learn your place, we[']ll just have to do it the hard way.";
				challenge "Slut Rat";
				if lost is 0:
					if slutratsub is greater than 5:
						say "You feel more confident about your dealings with the rat after that little battle.";
						decrease slutratsub by 1;
	otherwise if cunts of player is greater than 0:		[Female scene, Herm if above did not run]
		say "Her nimble paws drift down between your legs, slipping between your thighs and parting them easily.  Her fingers slide over your pussy, teasing your sensitive folds and getting you wet[if cunts of player > 1].  Finding more than one pussy tucked down there, she switches between them a few times before settling on one[end if].  She eases a finger into you, probing your pussy and stroking your inner walls.  'And just how accommodating is our new bitch,' she giggles as she slips second finger into you and then another.  She spreads her fingers and stretches you open, seeing how roomy your cunny is.  You moan and shiver at this sensual inspection, blushing a little as the other girls are clearly watching.";
		if cunt length of player is less than 10 or cunt width of player is less than 6:
			say "She humphs, 'Still quite tight, but we can fix that,' she assures you with a nibble at your ear. Soon your head is being tipped back as a cup with something sickly sweet pressed to your lips.  The rat grinds her bulging crotch against you thigh as she continues fingering you.  'Drink it down,' she beckons with a smile.  Allow her?";
			if the player consents:
				say "The rat smiles as the sweet liquid is poured down your throat, making your groin tingle powerfully.  Your female genitals begin to expand while her fingers continue to probe and stroke inside you, making you quiver in delight.  Soon enough, you're moaning and panting as she displays your growing cunt for the others, who snicker and giggle as they watch the arousing show.  Turned on by the display, you can see several of them groping themselves or one another.  Soon, it becomes too much and you cum, soaking the rat's paw in your female juices.  She grins and licks her paw clean, giving your rear a swat.  'Good little bitch,' she says with a chuckle.  'Go have fun, slut.'";
				increase cunt length of player by 4;
				increase cunt width of player by 3;
				infect "Slut Rat";
			otherwise:
				say "'Bad bitch!' she hisses, 'If you won[']t learn your place, we[']ll just have to do it the hard way.";
				challenge "Slut Rat";
				if lost is 0:
					if slutratsub is greater than 5:
						say "You feel more confident about your dealings with the rat after that little battle.";
						decrease slutratsub by 1;
		otherwise:
			say "She smiles as she manages to stuff her whole paw into you and starts pumping it in and out, making you moan and quiver as she fists you.  'Mmm... nice and roomy,' she rumbles.  'Just like a nice bitch should be,' she adds while wiggling her fingertips to tease inside you before slipping her paw free.  She licks her dripping paw as her other one gives you ass a swat.  'Good little bitch,' she says with a chuckle.  'Go have a fun, slut.'";
			infect "Slut Rat";
	otherwise:
		if breasts of player is greater than 0 and breast size of player is greater than 0:
			say "The rat arrives at the junction of your thighs and seems surprised at what she finds, or does not find. Her teeth are felt, nipping twice at your [skin of player] skin before she looks back up, 'How do you live like that?' she says in an almost accusing tone. She rises to her feet and kisses your cheek, 'Poor thing. We will just have to fix that.'";
		otherwise:
			say "She brushes up alongside you, nose twitching lightly as she takes your scent, 'Mmm, something is wrong,' she murmurs, reaching for your flat chest, then grasping your featureless groin openly, 'You have nothing.' She moves around behind you and presses against your back, 'That won't work at all...'";
		if "Female Preferred" is not listed in feats of the player:
			say "She draws out a bottle of strange purple fluid and holds it up to you, 'Drink, as quickly as you can.'";
			ratslutchug;
		otherwise:
			say "Pink fingers curl at your hips as she leans in and nuzzles between your legs, 'You smell like you want to be a woman, but you're missing things.' A soft bite is felt where you should have something, then her warm tongue, slowly working her way back up along your front, 'We have just the thing.' The bite causes a light itching sensation, the demonically tainted rat's strain trying to work at your body.";
			follow the sex change rule;
			infect "Slut Rat";
			say "Another rat hurries forward and seizes one of your hands, hauling you across the room and down a tunnel. Darkness closes in around you and she as you step quickly along the claustrophobic crawlways. Dim red light comes into view from around the corner. The rat guiding you, now that you she slows her steps and gives you a chance to look at her, is a bit more slender than the others. As she looks over her shoulders, you can see glasses balanced on her narrow snout, 'You have to go alone from here,' she says, 'Pay proper respect.'";
			slutratpatron;


To slutratpatron:
	say "You advance towards the ominous red light in the otherwise darkened sewers. The smell of sulfur grows thicker as the slick cement walls give way to rougher hewed stone that seems to reflect that malignant red light back like a man laughing at a cruel joke. Your feet can feel the increasingly rough terrain. Stalagmites become sharper and more frequent, slowing your progress, but you can see it now. Situated a few feet ahead is a raised pedastal of some dark stone. Perched on top is a heavy tome.";
	say "Just looking at that book causes strange whispered to echo in your mind. You can hear the clicking scitter of claws on cement, but a quick glance around shows nothing to produce it. As you approach the pedestal, a hand settles on your shoulder and turns you to face a rat face. This creature looks to have been a rat first, before taking on obscene bits of human sexuality and posture, weaving itself into a strangely attractive visage of oozing overdone lust. Her red fur seemed to smolder in the dark, flickering even as she smiles. With a puff of smoke, she draws you closer to herself, pushing her abundant chest to yours. Her eyes seem to bore into your own. You can't make out the color, you can't even make out the shape. Looking into them causes physical discomfort.";
	say "'I can see that they sent you to me for help,' she says with a soft, sensual growl.  As she speaks, her paws roam over your body and you shiver in pleasure at her every touch.  She seems to exhude sexual energy, wonderful and arousing.  You cannot help but long for her eager for anything she wishes of you or your body.  Her runs her paw along the edge of your ear then guides your head to her ample bosom, pressing your lips to her red nipples.  Her scent, even stronger now, almost commands you to start sucking and you obey that urge.  Her milk flows readily, thick, creamy and full of corrupting energies.";
	if cunts of player > 0:
		say "As you nurse from her, her cock grows hard and starts bumping against your pussy.  Her throbbing meat feels so hot as it drives its way into your tight hole, spreading you open around it.  You moan and quiver, unwilling to stop this darkly beautiful creature from fucking you.  You know its great size should be painful for your small cunt, but you are overwhelmed by the lustful pleasure of giving yourself to her.  When she finally cums, you are released and you stagger back to join the others, who grin at your belly bloated with milk and cum.";
	otherwise:
		say "As you nurse from her, her cock grows hard and starts grinding against your body.  You place your hands on it and start stroking, needing to please this darkly beautiful creature.  Her throbbing meat feels so hot as it grinds against you, leaking thick, sticky pre onto you.  You moan and quiver, unwilling to stop nursing from this lovely creature as you seek to please her.  When she finally cums, you are released and you stagger back to join the others, who grin at your belly bloated with milk and cum.";
	increase Slutratcor by 1;
	increase slutratsub by 2;
	if slutratsub > 10, now slutratsub is 10;
	follow the sex change rule;
	infect "Slut Rat";


To Say slutratdenscene:
	[puts Slut Rat as lead monster for easy use]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Slut Rat":
			now monster is y;
			break;
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
			increase visittimes of slutrat den by 1;
			say "The defeated rat withdraws into the den, scurrying beneath one of the pillows with a sullen expression. Her sisters laugh at the sight, and one of them rises to her feet in a hop, breasts wobbling enticingly as she approaches you, 'What a good bitch you are,' she croons, 'You just want some love, not fighting, am I right?'";
			say "Agree?";
			if the player consents:
				increase slutratsub by 1;
				if slutratsub > 10, now slutratsub is 10;
				say "[ratslutwelcome]";
			otherwise:
				say "She seems surprised when you refuse the offer. Despite it, she reaches to set her naked pink hands on your cheeks and draw you forward for a kiss, 'That will be fine then. Maybe you[']re not here to be our bitch after all.' Her tongue flicks over your face and she draws you to a pillow before flopping on it herself and leaving you standing. 'Fine then, tough guy, you can do what you want, welcome to our den.' The other rats give a brief round of applause before the celebration turns more intimate between a few pairs of them, coupling together in excited squeals that don't seem to include you for the moment.";
			continue the action;
	otherwise:
		increase visittimes of slutrat den by 1;


When play ends:
	if humanity of the player is less than 10 and hp of the player is greater than 0:
		if bodyname of player is "Slut Rat":
			say "You can no longer deny your new basic needs. You flee to the mall and its comforting sewers. Following your instincts, you are soon in the welcoming embrace of your rodent sisters, who take turns fucking and being fucked by you for what feels like days in a celebration of your coming around. Your family remains there, hiding from the rescue, and living out your days together.";
			if slutratcor is greater than 4:
				end the game saying "Your [skin of player] hide slowly tints to a deep angry red shade, turning towards black at your hands and feet. Those feet harden into cloven like hooves as the months go by and strange images assault you in your fevered lust dreams. It all comes to a crest when you awaken to a rat sister mounted on top of you, riding you for all your worth. As you climax together, you realize that this is Rod's girl. She leans in and licks her tongue over your nose, gazing into your eyes, 'It[']s time,' she whispers. You rise with her, each smelling of the other, and leave the other rats behind. Your dark lords had need of you both.";
				continue the action;
			otherwise if visittimes of slutrat den is greater than 0:
				if slutratsub is 5:
					say "You are neither dominant nor submissive of your rat sisters, living as equals. This is not without its frictions, as you do not all have the same ideas, but you always managed to reach an accord, eventually. Sometimes this involves taking or being taken until someone realizes the error of their ways in a pile of sweat and other fluids, but you don't find that to be a disagreeable way to work things out.";
				if slutratsub > 6:
					say "The others call you [']little sister['] when they are very happy with you, and [']bitch['] the rest of the time. You are the omega of the group, made to do the more menial of tasks. Still, their love for you is unquestionable, and they protect you from any and all threats to your sewer lair.";
	otherwise:
		if bodyname of player is "Slut Rat":
			say "Despite your sanity, you find your thoughts drifting back to your rodent sisters. When the rescue comes, you point them out. They put out a terrific struggle, but, with your help, they are rounded up successfully and brought out of the city. They slowly come around to sentience again, and you all live together, working a massage parlor as a strangely loving family. No customer leaves unhappy.";


Slutrat ends here.