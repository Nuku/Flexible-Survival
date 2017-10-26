Alpha Fang Scenes by Nuku Valente begins here.
"Adds another scene to Fang"

Every turn when the player is in Grey Abbey Library and fang is visible:
	if HP of fang is 3 or HP of fang is 4:
		increase score by 0;
	else:
		continue the action;
	if lastfuck of Fang - turns < 10:
		continue the action;
	let qualify be 0;
	let playerlust be 0;
	let fanglust be 0;
	if libido of player > 60:
		now qualify is 1;
		now playerlust is 1;
	if ( lastfuck of Fang - turns > ( 19 - HP of Fang ) ):
		now qualify is 1;
		now fanglust is 1;
	if qualify is 0:
		continue the action;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	if fanglust is 1 and playerlust is 0:
		say "[fangrapeplayer]";
	else if fanglust is 1 and playerlust is 1:
		say "[fangmutuallust]";
	else:
		say "[fangplayerlust]";
	decrease humanity of player by 3;
	follow the turnpass rule;

to say fangplayerlust:
	say "Aching with need, you look around for Fang. He's laying by the door, watching the room with his usual alertness. As you walk towards him, he sits up on his haunches. When you reach for him, he lightly nips at your hand and chuffs disapproval. He remains seated, watching you penetratingly as you consider how to approach. A second reach to pat him gets another nip, then he suddenly rears up and knocks you over backwards flat. The oversized wolf clambers up on top of you, his shaggy coat rubbing against your belly as he takes the superior position. He licks your throat twice as he parts your legs and gets into comfortable position.";
	let anal be 1;
	if cunt length of player > 0 and cunts of player > 0:
		if a random chance of 2 in 3 succeeds or "Less Anal" is not listed in feats of player, now anal is 0;
	if anal is 0:
		say "He rolls his hips forward, pressing the pointed tip of his large wolf cock to your [cunt size desc of player] nethers, then sinking in with a long smooth thrust. His paws pull you down against his thrust as he bites into your throat, holding you still. He begins to rock, driving his slick red member through the wet hot tunnel, pushing in with easy and vigorous rocking. Above, his tail lifts and wags lightly at the end of every movement, growling around your throat as he breeds you as his bitch.";
		say "You raise your hands to his powerful sides, feeling the play of his muscles as he ruts into you with feral intensity. Your sounds of delight mix with his eager growls as his claws scrape against the library floor. His oversized knot is forced into you and he hunches against you. Liquid heat spreads through your [bodydesc of player] body as you're filled with his virile thick cream. The sensation is enough to send your cunt into spasms of release, clamping wetly around the twitching member. He sags against you, spent and content, and as the haze lifts, you realise the raging heat inside of you has ebbed a little, leaving you clear headed and thankful to your alpha.[impregchance]";
	else:
		say "He hunkers down and nudges forward, pressing the point of his large shaft to your pucker, easing his way into your back door carefully. You can feel that canine member spreading you and can't hold back a groan of pleasure at it as he gets more than half way in. He licks over your throat again, then presses forward, losing another inch to the heat of your [bodydesc of player] body as he rocks his way forward bit by bit, burying his sword into your eager flesh. You lift your [bodyname of player] legs as high as you can to raise your ass into better position, allowing Fang to move more easily as he builds up to a soft pounding.";
		say "Fattened wolf knot rams against your entrance, demanding past as Fang gives a low growl. He locks his teeth at your throat, drawing you as he gives a powerful push, forcing it in and securing it. Though his movement is much more limited, he resumes thrusting, becoming short sharp motions back and forth between sheath and knot. Shortly, he hits top and explodes into your [bodytype of player] form with thick offerings to your bowels, filling you with the fertile essence as he howls out.[mimpregchance]";
	say "You relax with Fang as his climax ebbs, your own maddening lust feeling less urgent for the play. When he draws from you, you get to your feet and collect your things, feeling much more ready to tackle the wastelands.";
	infect "Feral Wolf";
	now lastfuck of Fang is turns;
	decrease libido of player by 20;
	if libido of player < 0, now libido of player is 0;


to say fangrapeplayer:
	say "'Late', says Fang as he approaches you. His scent is intoxicatingly strong and his [one of]puppy pecker[or]doggy dong[at random] is jutting from his sheath, heavy and ready. Any word of complaint you may have had is lost as the wolf gives you a penetrating look, brokering no argument. There is a punishment to be had and a service to be rendered, and that is all there is to it. He grabs at you with his teeth, tugging you along and bringing you to a desk, pushing you against it so you're bent over it.";
	if breast size of player > 0 and breasts of player > 0:
		say "Your [breast size desc of player] breasts are squished against the smooth wood of the desk as he moves you into position, rubbing your nipples against the grain.";
	say "He reaches around and removes any barrier to your bottom, tossing it aside for later with a soft, eager, growl. Though you weren't very aroused when you walked in, his intense scent sends warm tingles through your form now, making you pant as you begin to warm up. [run paragraph on]";
	let anal be 1;
	if cock length of player > 0 and cocks of player > 0:
		say "Your cock[if cocks of player > 1]s[end if] swell[if cocks of player > 1]s[end if], [cock of player] flesh throbbing, dangling in the air and dripping pre to the ground. [run paragraph on]";
	if cunt length of player > 0 and cunts of player > 0:
		if a random chance of 2 in 3 succeeds, now anal is 0;
		say "You feel warmth seeping through your feminine lips as you moisten with readiness and increasing anticipation. The thought of your alpha taking you was becoming more delicious by the moment. [run paragraph on]";
	if anal is 0:
		say "His pointed cock is felt against your [cock of player] cunt before sinking in to the hilt in a smooth motion. He leans in over you, biting at your shoulders as he grabs and pulls you back roughly. With powerful strokes, he claims you, filling you with his bright red shaft. Each deep thrust is met with a wet squelch and the brushing of his bloated, furry balls against your [tailname of player] ass. Your cunt spasms wildly, climax locking you in place with trembles of heat. He sinks into the clenching tunnel, his oversized knot swelling in your lips, locking you to him as warmth before to fire in thick shots into your waiting womb.[impregchance]";
	else:
		say "He raises his slick red shaft to nudge against your tight pucker, then eases it in. His lust is too powerful to be overly concerned for your comfort, and he slams home into your bowels. When you yelp, he bites into the back of your neck lightly in admonishment, growling at you as he picks up tempo and intensity, pounding your [tailname of player] rump with a maddening zeal. The room seems full of the sound of your bodies striking one another, swaying balls slapping against you at the end of each rapid motion into your ass. His oversized knot swells powerfully, and he bumps it against you twice before he draws out to the tip, then lunges forward, tying you to him as his seed begins to spray out wildly, filling you with his essence. His teeth find the back of your neck, holding you still as he finishes.[mimpregchance]";
	infect "Feral Wolf";
	if cock length of player > 0 and cocks of player > 0:
		say "With dizzying force, you suddenly spray your own seed out against the desk, splattering its smooth surface with your seed as you groan with pleasure alongside Fang. His paws support you as you go weak kneed from the stimulation. [run paragraph on]";
	say "Satisfied, Fang pants lightly as he relaxes on top of you for a few quiet minutes, gently nuzzling your back and sides with his muzzle. He gives a soft chuff in your ear, then pulls free of you with a wet pop, allowing some of the seed to run free as he goes to clean up while you sag to the floor, enjoying the feel of his semen filling you.";
	say "[fangwscontent]";
	now lastfuck of Fang is turns;
	decrease libido of player by 20;
	if libido of player < 0, now libido of player is 0;


to say fangmutuallust:
	say "You feel something nuzzling at your groin and look down to see Fang looking back up at you. Bright red of his canine shaft dangles between his hind legs. The sight and smell of him sets your already needy body on fire with desire. [run paragraph on]";
	if cocks of player > 0 and cock length of player > one:
		say "You feel hot splashes of pre pouring from yourself as you grow more lustful by the moment. [if cock width of player > 0]Your [ball size] ache with the need to release. [end if][run paragraph on]";
	if cunts of player > 0 and cunt length of player > one:
		say "Your nethers grow damp as you begin to feel like a bitch in heat. The large wolf gives you a pointed look as one of your [bodyname of player] hands wander towards your thighs. A light nip wards your hand away. [run paragraph on]";
	say "Unable to hold back further, you are soon beside Fang, pushing against him. You manage to get him onto his back, paws in the air, and grind your belly to his with a soft groan matched with his needful whine. [run paragraph on]";
	if cunts of player > 0 and cunt length of player > 0:
		say "His shaft prods lightly at your [cock of player] vulva as he seeks the right angle. You eagerly press down and back, sinking yourself onto that enlarged canine member, stuffing yourself with his masculinity as your hips rise and fall in counter points. His teeth are felt at your chest in light nips before he gets a good grip at your throat, drawing you down as he begins to piston up into you with redoubled effort. Pleasure radiates from your groin as you submit to your alpha. His paws pull your form against his shaggy frame, forcing his half knot against you in the motions until he can slip it in with a pop, pain flaring briefly before the satisfaction of fullness replaces it. With a lurch, his shaft swells and begins to spray your fertile womb with his virile, ready seed. None of it can escape around his pulsing knot, allowing him to unload with a howl of ownership.[impregchance]";
	else:
		say "Fang guides you around, turning you about until you are facing his excited shaft. Without needing further prompting, you flick your tongue out over the bright red shaft. Its slick and a little salty, giving off a strange but intense scent that has you coming back for seconds. When you think twice about it, the shaft is already in your mouth, engulfed half way as you swirl your tongue across the top. Fang growls approval before his wet snout is felt pressing between your legs, flicking out wide canine tongue to bathe you, licking and exploring. [run paragraph on]";
		if cock length of player > 0 and cocks of player > 0:
			if cocks of player > 1:
				say "With multiple [cock size desc of player] [cock of player] poles to choose from, Fang licks along each from the base to the tip in slow motions of that wet tongue, tasting each with a nuzzle[if cock width of player > 0] before dipping beneath to nuzzle at your [ball size] eagerly[end if]. The tongue lashing received there has you arching your back, tongue teasing your [skin of player] sac in rapid, long, motions, slathering you with wolf saliva and making your cocks twitch with lust.";
				say "He returns attention to one of your dicks, running his tongue up and down it, teasing and stroking it with that wet appendage as he works you higher and higher towards your peak. [run paragraph on]";
			else:
				say "He seems to appraise your [cock size desc of player] [cock of player] dick a moment before he buries his snout at your crotch at the base, delivering a soft caress of tongue. The pearl of a tooth runs across the sensitive [skin of player] flesh before he runs wet tongue up towards the tip and engulfs it, sinking it into his accommodating snout as he bucks his hips up towards your face, rocking face and hips in counter point as the tension within you raises towards release. [run paragraph on]";
		say "Your [bodydesc of player] body locks as climax arrives powerfully, trembling atop Fang as his skilled tongue works and cleans you even as you release. His knot swells, bumping against your lips before it starts to spray the creamy wolf spunk across your tongue. The rich taste pours smoothly as you swallow down his injection. You receive a large load from your alpha's swollen, virile balls. Even after the shaft stops powerfully twitching, a thin trickle continues to pour out. You draw back, letting the shaft pops free of your mouth and kiss the tip before reaching to caress his swollen knot. You are rewarded with a loud yip as the sensitive organ is jostled and a final spurt of seed across your lips.";
	infect "Feral Wolf";
	say "Both satisfied, Fang squirms out from under you and licks your face before moving back towards the door to resume his watch.";
	say "[fangwscontent]";
	now lastfuck of Fang is turns;
	now libido of player is libido of player / 2;


Alpha Fang Scenes ends here.
