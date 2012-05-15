Alpha Fang Scenes by Nuku Valente begins here.
"Adds another scene to Fang"

Every turn when in Grey Abbey Library:
	if fang is not visible, continue the action;
	if hp of fang is 3:
		let x be 0;
	otherwise:
		continue the action;
	let qualify be 0;
	let playerlust be 0;
	let fanglust be 0;
	if lust of player is greater than 60:
		now qualify is 1;
		now playerlust is 1;
	if ( lastFangfucked - turns is greater than ( 19 - hp of Fang ) ):
		now qualify is 1;
		now fanglust is 1;
	if qualify is 0:
		continue the action;
	if fanglust is 1 and playerlust is 0:
		say "[fangrapeplayer]";
		continue the action;
	if fanglust is 1 and playerlust is 1:
		say "[fangmutuallust]";
		continue the action;
	say "[fangplayerlust]";
	
to say fangplayerlust:
	say "Scene to be written.";

to say fangrapeplayer:
	say "'Late', says Fang as he approaches you. His scent is intoxicatingly strong and his [one of]puppy pecker[or]doggy dong[at random] is jutting from his sheath, heavy and ready. Any word of complaint you may have had is lost as the wolf gives you a penetrating look, brokering no argument. There was a punishment to be had and a service to be rendered, and that was all there was to it. He grabs at you and brings you to a desk, pushing you against it so you're bent over it.";
	if breast size of player is greater than 0 and breasts of player is greater than 0:
		say "Your [skin of player] [breast size desc of player] breasts are squished against the smooth wood of the desk as he moves you into position, rubbing your nipples against the grain.";
	say "He reaches around and removes any barrier to your bottom, tossing it aside for later with a soft, eager, growl. Though you weren['] very aroused when you walked in, his intense scent sends warm tingles through your form now, making you pant as you begin to warm up. [run paragraph on]";
	let anal be 1;
	if cock length of player is greater than 0 and cocks of player is greater than 0:
		say "Your cock[if cocks of player is greater than 1]s[end if] swell[if cocks of player is greater than 1]s[end if], [cock of player] flesh throbbing, dangling in the air and dripping pre to the ground. [run paragraph on]";
	if cunt length of player is greater than 0 and cunts of player is greater than 0:
		if a random chance of 2 in 3 succeeds, now anal is 0;
		say "You feel warmth seeping through your feminine lips as you moisten with readiness and increasing anticipation. The thought of your alpha taking you was becoming more delicious by the moment. [run paragraph on]";
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	if anal is 0:
		say "His pointed cock is felt against your [cock of player] cunt before sinking in to the hilt in a smooth motion. He leans in over you, biting at your shoulders as he grabs and pulls you back roughly. With powerful strokes, he claims you, filling you with his bright red shaft. Each deep thrust is met with a wet squelch and the brushing of his furry balls against your [skin of player] ass. Your cunt spasms wildly, climax locking you in place with trembles of heat. He sinks into the clenching tunnel, knot swelling in your lips, locking you to him as warmth before to fire in thick shots into your waiting womb.";
		say "[impregchance]";
	otherwise:
		say "He raises his slick red shaft to nudge against your tight pucker, then eases it in. His lust is too powerful to be overly concerned for your comfort, and he slams home into your bowels. When you yelp, he bites into the back of your neck lightly in admonishment, growling at you as he picks up tempo and intensity, pounding your [skin of player] rump with a maddening zeal. The room seems full of the sound of your bodies striking one another, swaying balls slapping against you at the end of each rapid motion into your ass. His knot swells powerfully, and he bumps it against you twice before he draws out to the tip, then lunges forward, tying you to him as his seed begins to spray out wildly, filling you with his essence. His teeth find the back of your neck, holding you still as he finishes.";
	if cock length of player is greater than 0 and cocks of player is greater than 0:
		say "With dizzying force, you suddenly spray your own seed out against the desk, splattering its smooth surface with your seed as you groan with pleasure alongside Fang. His paws support you as you go weak kneed from the stimulation. [run paragraph on]";
	say "Satisfied, Fang pants lightly as he relaxes on top of you for a few quiet minutes, gently stroking your sides and back with his hands. He gives a soft chuff in your ear, then pulls free of you with a wet pop, allowing some of the seed to run free as he goes to clean up.";

to say fangmutuallust:
	say "Scene to be written.";
		

Alpha Fang Scenes ends here.
