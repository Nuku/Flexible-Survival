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
	
SlutRat Den is a room. "This little slice of 'heaven' is a cleaned out section of the sewers. Despite its location, it smells of a soft incense, mixed with the heavy, musky, odor of the rats that dwell within it. Large pillows have been thrown around, many supporting the full rumps of their rodent owners as they watch your movements. For entertainment, besides one another, small heaps of books have been scattered about wherever their owners last grew tired of them. A dart board is also set up on the far wall with small metal darts poking in it at wildly varying points.[slutratdenscene]". Slutrat Den is private. Slutrat Den is fasttravel.

To Say SlutRatDenScene:
	

Slutrat ends here.
