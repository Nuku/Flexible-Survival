Alpha Fang Scenes by Prometheus begins here.
[ Version 1.0 - Three different scenes depending on current lust levels - Nuku Valente                  ]
[ Version 1.1 - Paragraph indents, typo fixes, and rephrasing where needed to read more smoothly - Song ]
[ Version 1.2 - adding in Female Fang versions and moving the file to the Prometheus folder - Lost      ]
"Adds additional scenes to Fang."

Every turn when the player is in Grey Abbey Library and Fang is visible:
	if HP of Fang is 3 or HP of Fang is 4: [alpha Fang]
		increase score by 0;
	else:
		continue the action;
	if lastfuck of Fang - turns < 10:
		continue the action;
	let qualify be 0;
	let playerlust be 0;
	let Fanglust be 0;
	if Libido of Player > 60:
		now qualify is 1;
		now playerlust is 1;
	if ( lastfuck of Fang - turns > ( 19 - HP of Fang ) ):
		now qualify is 1;
		now Fanglust is 1;
	if qualify is 0:
		continue the action;
	if Fang is male:
		setmonster "Feral Wolf Male";
		if Fanglust is 1 and playerlust is 0:
			say "[MaleFangRapePlayer]";
			decrease humanity of Player by 3;
			follow the turnpass rule;
		else if Fanglust is 1 and playerlust is 1:
			say "[MaleFangMutualLust]";
			decrease humanity of Player by 3;
			follow the turnpass rule;
		else if a random chance of 1 in 3 succeeds:
			say "[MaleFangPlayerLust]";
			decrease humanity of Player by 3;
			follow the turnpass rule;
		else:
			continue the action;
	else: [femFang]
		if Fanglust is 1 and playerlust is 0:
			say "[FemaleFangRapePlayer]";
			decrease humanity of Player by 3;
			follow the turnpass rule;
		else if Fanglust is 1 and playerlust is 1:
			say "[FemaleFangMutualLust]";
			decrease humanity of Player by 3;
			follow the turnpass rule;
		else if a random chance of 1 in 3 succeeds:
			say "[FemaleFangPlayerLust]";
			decrease humanity of Player by 3;
			follow the turnpass rule;
		else:
			continue the action;


to say MaleFangPlayerLust:
	say "     Aching with need, you look around for Fang. He's laying by the door, watching the room with his usual alertness. As you walk towards him, he sits up on his haunches. When you reach for him, he lightly nips at your hand and chuffs disapproval. He remains seated, watching you penetratingly as you consider how to approach. A second reach to pat him earns another nip before he suddenly rears up and knocks you over backwards. The oversized wolf clambers up on top of you, his shaggy coat rubbing against your belly as he assumes the superior position. He licks your throat twice as he parts your legs and aligns himself with your entrance.";
	if Cunt Depth of Player > 0 and player is female and (a random chance of 2 in 3 succeeds or anallevel is 1):
		say "     He rolls his hips forward, pressing the pointed tip of his large wolf cock to your [cunt size desc of Player] nethers, then sinks in with a long, smooth thrust. His paws pull you down against his thrust as he bites into your throat, holding you still. He begins to rock, driving his slick red member through the wet hot tunnel, pushing in with easy and vigorous motions. Above, his tail lifts and wags lightly at the end of every movement, growling around your throat as he breeds you as his bitch.";
		say "     You raise your hands to his powerful sides, feeling the play of his muscles as he ruts into you with feral intensity. Your sounds of delight mix with his eager growls as his claws scrape against the library floor. His oversized knot is forced into you and he hunches against you. Liquid heat spreads through your [bodydesc of Player] body as you're filled with his thick, virile cream. The sensation is enough to send your cunt into spasms of release, clamping wetly around the twitching member. He sags against you, spent and content, and as the haze lifts, you realize the raging heat inside of you has ebbed a little, leaving you clearheaded and thankful to your alpha.";
		NPCSexAftermath Player receives "PussyFuck" from Fang;
		if Player is impreg_able and hunger of Fang is 0:
			add "Fang's Mate" to feats of Player;
			now hunger of Fang is 1;
	else:
		say "     He hunkers down and nudges forward, pressing the point of his large shaft to your pucker, easing his way into your backdoor carefully. You can feel that canine member spreading you and release a low groan of pleasure as he sinks more than halfway in your depths. He licks over your throat again, then presses forward, losing another inch to the heat of your [bodydesc of Player] body as he rocks his way forward bit by bit, burying his sword into your eager flesh. You lift your [BodySpeciesName of Player in lower case] legs as high as you can to raise your ass into better position, allowing Fang to move more easily as he builds up to a soft pounding.";
		say "     His expanding lupine knot rams against your ass, demanding entrance as Fang emits a low growl. He locks his teeth at your throat and gives a powerful push, forcing the fat bulb past your ring and securing it. Though his movement is much more limited, he resumes his thrusting with short, sharp motions back and forth between sheath and knot. Soon, he reaches the point of no return and explodes into your [bodytype of Player] form, filling your bowels with his thick, virile essence as he howls out in ecstasy.";
		NPCSexAftermath Player receives "AssFuck" from Fang;
	say "     You relax with Fang for a while as his climax ebbs, enjoying the feeling of warmth and fullness that suffuses your body while his tongue sweeps over your nape. When he draws from you, you unsteadily rise to your feet and collect your belongings, feeling much more ready to tackle the wastelands.";
	FangInfect;

to say FemaleFangPlayerLust:
	say "     Aching with need, you look around for Fang. She's laying by the door, watching the room with her usual alertness. As you walk towards her, she sits up on her haunches. When you reach for her, she lightly nips at your hand and chuffs disapproval. She remains seated, watching you penetratingly as you consider how to approach. A second reach to pat her earns another nip before she suddenly rears up and knocks you over backwards. The oversized wolf presses her paw up on top of you, her springy pads pressing against your belly as she assumes the superior position. She licks your throat twice as she parts your legs and aligns her muzzle with your nethers.";
	if player is purefemale: [female only]
		say "     She moves her head forward, pressing the warm wet tip of her large nose to your [cunt size desc of Player] nethers as she takes in your scent, then opens her muzzle and licks the entrance with a long, smooth motion. Her paws push you down against the floor as she growls into your feminine vent, holding you still. She begins to rock her head, driving her slick long tongue through the wet hot tunnel, pushing her way in slowly with easy and methodical motions. Above, her tail lifts and wags lightly at the end of every movement, growling around your warm vent as she attempts to exorcise you of your abundance of libido.";
		WaitLineBreak;
		say "     You raise your hands to the sides of her head, feeling the play of her muscles as she drills her tongue into you with feral intensity. Your sounds of delight mix with her eager growls as her claws scrape against the library floor. Her furry muzzle is forced into you and she pushes her head further into you. Ripples of tremors spread through your [BodyDesc of Player] body as you're drilled with her thick, furry muzzle. The sensations become too much to resist as your cunt spasms into release, clamping wetly around Fang's muzzle and tongue. She removes herself from you, chuffing in wolfish laughter as she licks her muzzle, and as the haze lifts, you realize the raging heat inside of you has ebbed a little, leaving you clear headed and thankful to your alpha.";
		NPCSexAftermath Fang receives "OralPussy" from Player;
	else if player is male: [male and herm]
		say "     She hunkers down and nudges forward, pressing the point of her wet nose onto your fully erect dick, testing your sensitivity carefully as if trying to gauge the amount of stimulation it would take to make you pop before engulfing some of its length in her lupine maw. You can feel her long tongue spreading saliva over it, causing you to release a low groan of pleasure as she sinks half of your erection into the depths of her maw. She retreats in order to allow the air to play over your shaft before licking over its surface again, then presses forward, pushing another inch as she gets to the heat of your [BodyDesc of Player] body as she rocks her way forward bit by bit, burying your spear into her muzzled maw. You spread your [BodySpeciesName of Player in lower case] legs as wide as you can to reveal more space around your genitals, allowing Fang to move more easily as she builds up to a steady bobbing.";
		WaitLineBreak;
		say "     Her lupine paws push against your midriff, demanding that you stay still as Fang emits a low growl. She curls her muzzle lips over her teeth while giving a powerful push, forcing you further into the library floor only lifting for a breath before grinding down again. Though she limits her movements, she continues her tempo with short, sharp motions back and forth between the midway and balls. Soon, you realize that you have reached the point of no return, something Fang has also noticed being that she clasped with her lips and tongue as she removed her muzzle from your cock, allowing you to explode onto your [BodyDesc of Player] form, covering you with your own thick, heady essence as she chuffs with laughter.";
		say "     You relax with Fang for a while as your climax ebbs, enjoying the feeling of the semen that covers your body while her tongue sticks out slightly in an uncharacteristic bratty fashion for her. When she parts from you to go back to her usual, you unsteadily rise to your feet, clean yourself off and collect your belongings, feeling much more ready to tackle the wastelands.";
		NPCSexAftermath Fang receives "OralCock" from Player;
	else: [neuter]
		say "     <NOTE: Sorry, the neuter version of this scene is WIP>";
	FangInfect;

to say MaleFangRapePlayer:
	say "     'Late,' says Fang as he approaches you. His scent is intoxicatingly strong and his [one of]puppy pecker[or]doggy dong[at random] is jutting from his sheath, heavy and ready. Any word of complaint you may have had is lost as the wolf gives you a penetrating look, brokering no argument. There is a punishment to be had and a service to be rendered, and that is all there is to it.";
	say "     He grabs at you with his teeth, tugging you along and bringing you to a desk, pushing you against it so you're bent over it[if Nipple Count of Player > 0 and Breast Size of Player > 0]. Your [breast size desc of Player] breasts are squished against the smooth wood of the desk as he moves you into position, rubbing your nipples against the grain[else if Breast Size of Player > 0]. Your [breast size desc of Player] breasts are squished against the smooth wood of the desk as he moves you into position[end if]. He reaches around and removes any barrier to your bottom, tossing it aside for later with a soft, eager growl. Though you weren't very aroused when you walked in, his intense scent sends tingles through your form now, making you pant as you begin to warm up";
	let anal be 1;
	if Player is male:
		say ". Your cock[smn] swell[smv], [Cock of Player] flesh throbbing, dangling in the air and dripping pre onto the ground";
	if Player is female:
		say ". You feel warmth seeping through your feminine lips as you moisten with readiness and increasing anticipation. The thought of your alpha taking you is becoming more delicious by the moment";
		if a random chance of 2 in 3 succeeds or anallevel is 1, now anal is 0;
	say ".";
	if anal is 0:
		say "     His pointed cock is felt against your [Cock of Player] cunt before sinking to the hilt in one smooth motion. He leans in over you, biting at your shoulders as he grabs and pulls you back roughly. With powerful strokes, he claims you, filling you with his bright red shaft. Each deep thrust is met with a wet squelch and the impact of his bloated, furry balls against your [TailSpeciesName of Player in lower case] ass. Your cunt spasms wildly, climax locking you in place with trembles of heat. He sinks into the clenching tunnel, his oversized knot swelling in your lips, locking you to him as his seed begins to fill your waiting womb.";
		NPCSexAftermath Player receives "PussyFuck" from Fang;
		if Player is impreg_able and hunger of Fang is 0:
			add "Fang's Mate" to feats of Player;
			now hunger of Fang is 1;
	else:
		say "     He raises his slick red shaft to nudge against your tight pucker, then eases it in. His lust is too powerful to be overly concerned for your comfort, and he slams home into your bowels. When you yelp, he bites into the back of your neck lightly in admonishment, growling at you as he picks up tempo and intensity, pounding your [TailSpeciesName of Player in lower case] rump with a maddening zeal. The room seems full of the sound of your bodies striking one another, swaying balls slapping against you at the end of each rapid motion into your ass. His oversized knot swells powerfully, and he bumps it against you twice before he draws out to the tip, then lunges forward, tying you to him as his seed begins to spray out wildly, filling you with his essence. [if Player is male]With dizzying force, you suddenly spray your own cum across the desk, splattering its smooth surface with your spunk as you groan in pleasure alongside Fang. His paws support you as you go weak-kneed from the stimulation, and his[else]His[end if] teeth find purchase on the back of your neck, holding you still as he finishes.";
		NPCSexAftermath Player receives "AssFuck" from Fang;
	FangInfect;
	say "     Satisfied, Fang pants lightly as he relaxes on top of you for a few quiet minutes, gently nuzzling your back and sides with his muzzle. He gives a soft chuff in your ear, then pulls free of you with a wet pop, allowing some of the seed to run free as he goes to clean up while you sag to the floor, enjoying the feeling of his semen inside you.";
	say "[MaleFangWSContent]";

to say FemaleFangRapePlayer:
	say "     'Late,' says Fang as she approaches you. Her scent is intoxicatingly strong, perhaps getting stronger every moment and her [one of]moist pussy[or]heated vent[at random] is leaking pre from between her legs, striking the floor in a steadily fashion, wordlessly relaying to you how terrible her need is. Any word of complaint you may have had is lost in transit as the wolf gives you a penetrating look, brokering no argument and silently telling you that resisting would only make things worse. There is a punishment to be had and a service to be rendered, and that is all there is to it.";
	say "     She grabs at you with her teeth, reaching around and removing any barrier to your bottom, tossing it aside for later with a soft, eager growl. She starts tugging you along and bringing you to a desk, pushing your back against it as she mounts you so you're pinned on top of it. [if Nipple Count of Player > 0 and Breast Size of Player > 0]Your [breast size desc of Player] breasts are jiggled slightly as your back is shoved against the smooth wood of the desk as she moves you into position, rubbing your nipples against her fur as she mounts you. [else if Breast Size of Player > 0]Your [breast size desc of Player] breasts are squished against the soft fur of Fangs body as she moves you into position, pinning you on the desk. [end if]Though you weren't very aroused when you walked in, the way Fang's soft and luxurious fur rubs against your body, the pure force of domination that rolls from her body and the growing intense scent sends tingles through your form, making you pant in erotically heated breaths as your body begins to warm up in preparation for the reckoning you know is coming. ";
	let anal be 1; [local, temporary variable]
	if a random chance of 2 in 3 succeeds or anallevel is 1, now anal is 0; [decision made with a check if the player randomly picks non-ass to fuck (66%) or has set that they don't want ever to see anal]
	if Player is male:
		say "Your cock[smn] swell[smv], [Cock of Player] flesh throbbing, dangling in the air and dripping pre onto the ground. ";
	if Player is female:
		say "You feel warmth seeping through your feminine lips as you moisten with readiness and increasing anticipation. The thought of your alpha taking you is becoming more delicious by the moment. ";
	WaitLineBreak;
	if Player is male: [male + herm]
		if anal is 0: [variable says "no" to anal]
			say "     Her tail star is felt against the tip of your [Cock of Player] cock before sinking to the hilt in one smooth motion. She leans in over you, biting at your shoulders as she grabs you with her mouth hard enough to leave a hicki and uses her thighs to push you down roughly. With powerful squats, she claims you mercilessly with her experienced tail star. Each hard squat is met with a squelch and the sounds of fleshy impact from your balls colliding against Fangs ass. Your cock spasms wildly, climax locking your muscles in place as your body trembles from the sensation. She sinks herself onto your front as she rides out her own orgasm, her femcum spraying out as feminine juices escape from her empty pussy lips all over the front of you, marking you as being claimed by her scent as your seed continues to fill her waiting bowels.";
			NPCSexAftermath Fang receives "AssFuck" from Player;
		else:
			say "     She moves her moist pussy to nudge against your ready cock, then eases over it, clamping down as she goes while languishing in the fullness it brings her. However her lust is too powerful to be satisfied by that small taste, as she looks you in the eye, you realize that its so powerful that what comes next will not be something achieved by having concern for your comfort, and she slams home down to the base of your cock and hitting your balls full force. When you yelp from the pain, she bites into your collarbone lightly in admonishment, growling at you as she picks up tempo and intensity, pounding into your [Cock of Player] cock with a maddening zeal. The room seems full of the sound of your bodies striking one another, swaying balls getting slapped full force against wolf ass at the end of each rapid motion. Her overfilled pussy wells with barely contained juices, and she humps in just the right way against you to have it spray out onto your midriff and the desk.";
			say "     Her motions striking twice before she draws out to the tip, then launches herself downward, spraying you with her femcum as it begins to spray out wildly, marking you with proof of her orgasm. With dizzying force, you suddenly spray your own cum through fangs passage and into her womb, with an output that backs out, splattering down your balls and staining the desks smooth surface with your spunk as you groan in pleasure alongside Fang. Her paws support you as you go limp from the stimulation, and her teeth again find purchase on your collarbone, holding you still as she finishes.";
			if Perception of Fang is 0:
				let FangPregchance be a random number from 1 to 20;
				if FangPregchance > 13:
					if HP of Lux is 0:
						add "Fang's Mate" to feats of Player;
					now Perception of Fang is 24;
			NPCSexAftermath Fang receives "PussyFuck" from Player;
	else: [female + neuter]
		say "     With  the steady dripping of her vaginal juices clueing you in on just how much she needs to get off, You feel that somehow mercy will not be included in the list of upcoming activities. Perhaps because of the knowledge that Fang is going to take you for a wild ride, you feel yourself growing wetter by the second. Noticing this, Fangs tail starts to wag as she moves herself until her hindquarters are right above your head, giving you a full view of the fate that awaits you. Thinking to yourself that she might forget to let you up for air, even as a part of you is weirdly ok with going out that way. Tired of the waiting and horniness, Fang does the obvious and lowers herself into a no-nonsense hump and grind. Moving her hips as she clamps down on your nose while she moves in a primitive yet effective fashion that causes sounds of her giving you a hot and violent snu snu session to fill the library.";
		say "     Continuing to use you as a masturbatory aid, time seems to get lost in the shuffle as your pussy leaks even more juices while Fang slathers her own all over your face. Knowing that you wont be allowed to breath until Fang gets off, you begin to lick her inner walls, adding saliva and attacking her sweet spot as you move your head in a steady nod, attempting to hasten her progress while using your nose as a makeshift dildo. Considering the added stimulation that Fang must be feeling, it comes as no surprise that her body begins to shake from the telltale signs of orgasm. However she doesn't just let it end there, she squats and aims her pussy as her climax hits, covering your body with glistening femcum, marking you as being hers with the scent of her pussy. Momentarily admiring her handy work, she settles down and recovers while laying on you.";
		NPCSexAftermath Player receives "OralPussy" from Fang;
	FangInfect;
	say "     Satisfied, Fang pants lightly as she relaxes on top of you for a few quiet minutes, gently nuzzling your neck and chest with her muzzle. She gives a soft chuff in your ear, then pulls free of you, allowing some of the juices to run free as she goes to clean up while you sag to the floor, enjoying the feeling of having served your alpha.";

to say MaleFangMutualLust:
	say "     You feel something nuzzling at your groin and look down to see Fang looking back up at you. His bright red canine shaft dangles between his hindlegs, and the sight and smell of him sets your already needy body aflame with desire. ";
	if Player is male:
		say "You feel hot splashes of pre pouring from yourself as you grow more lustful by the moment[if Ball Size of Player > 0], your [Ball Size Adjective of Player] [Balls] aching with the need to release[end if]. ";
	if Player is female:
		say "Your nethers grow damp as you begin to feel like a bitch in heat. The large wolf gives you a pointed look as one of your [BodySpeciesName of Player in lower case] hands wanders towards your thighs, a light nip warding it away. ";
	say "Unable to hold back further, you are soon beside Fang, pushing against him. You manage to get him onto his back, paws in the air, and grind your belly to his with a soft groan that is matched by a needful whine.";
	if Player is female:
		say "     His shaft prods lightly at your [Cock of Player] vulva as he seeks the right angle. You eagerly press down and back, sinking yourself onto that enlarged canine member, stuffing yourself with his manhood as your hips rise and fall in tandem. His teeth are felt at your chest in light nips before he gets a good grip at your throat, drawing you down as he begins to piston up into you with redoubled effort. Pleasure radiates from your groin as you submit to your alpha. His paws pull your form against his shaggy frame, forcing his half-full knot against you until he can slip it in with a pop, pain flaring briefly before the bliss of being filled replaces it. With a lurch, his shaft swells and begins to spray your fertile womb with his thick, virile seed. None of it can escape around his pulsing knot, allowing him to unload with a howl of ownership.";
		NPCSexAftermath Player receives "PussyFuck" from Fang;
		if Player is impreg_able and hunger of Fang is 0:
			add "Fang's Mate" to feats of Player;
			now hunger of Fang is 1;
	else:
		say "     Fang guides you around, turning you about until you are facing his excited shaft. Without needing further prompting, you flick your tongue out over the bright red shaft. Its slick and a little salty, giving off a strange but intense scent that has you coming back for seconds. When you think twice about it, the shaft is already in your mouth, engulfed half way as you swirl your tongue across the top. Fang growls approval before his wet snout is felt pressing between your legs, flicking out wide canine tongue to bathe you, licking and exploring. ";
		if Cock Count of Player > 1:
			say "With multiple [cock size desc of Player], [Cock of Player] poles to choose from, Fang licks along each from the base to the tip in slow motions of that wet tongue, tasting each with a nuzzle[if Ball Size of Player > 0] before dipping beneath to nuzzle at your [Ball Size Adjective of Player] [Balls] eagerly[end if]. The tongue lashing received there has you arching your back, spit-slick muscle teasing your [Skin of Player] sac in long, rapid motions, slathering you with lupine saliva and making your cocks twitch with need. After a little while, he returns attention to one of your lengths, running his tongue up and down it, teasing and stroking it with that wet appendage as he works you higher and higher towards your peak.";
		else if Player is male:
			say "He appraises your [cock size desc of Player], [Cock of Player] dick a moment before he buries his snout at your crotch at the base, delivering a soft caress of his tongue. The pearl of a tooth presses against the sensitive, [Skin of Player] flesh before he runs his wet tongue up towards the tip and engulfs it, sinking it into his accommodating snout as he bucks his hips up towards your face, rocking head and hips in tandem as the tension within you raises towards climax.";
		say "     Your [bodydesc of Player] body locks as climax arrives powerfully, trembling atop Fang as his skilled tongue works and cleans you even as you release. His knot swells, bumping against your lips before it starts to spray his creamy wolven spunk across your tongue. You eagerly swallow the contents of your alpha's swollen, virile balls, the rich taste pouring smoothly down your throat. Even after his shaft stops twitching, a thin trickle continues to drip onto your palate. You draw back, letting the shaft pops free of your mouth, and you kiss the tip before reaching to caress his swollen knot. You are rewarded with a loud yip as the sensitive organ is jostled and a final spurt of seed across your lips.";
		NPCSexAftermath Fang receives "OralCock" from Player;
		NPCSexAftermath Player receives "OralCock" from Fang;
	FangInfect;
	say "     Both satisfied, Fang squirms out from under you and licks your face before moving back towards the door to resume his watch.";
	say "[MaleFangWSContent]";

to say FemaleFangMutualLust:
	say "     You feel something nuzzling at your groin and look down to see Fang looking back up at you. Her juices drip down from her vagina rolling down her hindlegs signaling her desperate need as the sight and smell of her sets your already needy body aflame with desire in turn. ";
	if Player is male:
		say "You feel hot splashes of pre pouring from yourself as you grow more lustful by the moment[if Ball Size of Player > 0], your [Ball Size Adjective of Player] [Balls] aching with the need to release[end if]. ";
	if Player is female:
		say "Your nethers grow damp as you begin to feel like a bitch in heat. The large wolf gives you a pointed look as one of your [BodySpeciesName of Player in lower case] hands wanders towards your thighs, a light nip warding it away. ";
	say "Unable to hold back further, you are soon beside Fang, pushing against her. You manage to get her onto her back, paws in the air, and grind your belly to hers with a soft groan that is matched by a needful whine.";
	if Player is purefemale:
		say "     Her pussy prods lightly at your own pussy as she seeks the right angle. You eagerly press down and back, grinding yourself onto that wet and ready pussy, lubing yourself with her juices as your hips rise and fall in tandem. Her teeth are felt at your chest in light nips before she gets a good grip at your throat, drawing you down as she begins to piston up into you with redoubled effort. Pleasure radiates from your groin as you submit to your alpha. Her paws pull your form against her shaggy frame, forcing her dew filled pussy against you until she is able to slip its lips against yours with ease from the amount of lube shared betwixt your entwined pussy lips, as sparks fly from the amount of bumping and grinding.";
		say "     As the pressure builds from the sensation of having your combined nethers sharing juices and being lip locked in a french kiss, her pistoning becomes more insistent as your muscles begin to tense up. You think that you may end up being the first to orgasm only to have the thought cut off by Fang howling as she begins cover herself and you with her fem-cum, the movement and scent giving you that last push you needed to finally begin your own release as you push your face into Fangs and muffle your scream from the force of the climax. Having both gotten off, you and Fang hold each other while waiting to recover.";
		NPCSexAftermath Fang receives "OralPussy" from Player;
		NPCSexAftermath Player receives "OralPussy" from Fang;
	if player is male: [male + herm]
		say "     Fang guides you around, turning you about until you are facing her pussy that is leaking juices from her aroused state. Without needing further prompting, you flick your tongue out over the heated vent. Its slick and a little salty, giving off a strange but intense scent that has you coming back for seconds. When you think twice about it, the opening is already sucking in your mouth, engulfed half way as you swirl your tongue into her depths. Fang growls approval before her wet snout is felt pressing between your legs, flicking out wide canine tongue to bathe you, licking and exploring. ";
		if Cock Count of Player > 1:
			say "With multiple [cock size desc of Player], [Cock of Player] poles to choose from, Fang licks along each from the base to the tip in slow motions of that wet tongue, tasting each with a nuzzle[if Ball Size of Player > 0] before dipping beneath to nuzzle at your [Ball Size Adjective of Player] [Balls] eagerly[end if]. The tongue lashing received there has you arching your back, spit-slick muscle teasing your [Skin of Player] sac in long, rapid motions, slathering you with lupine saliva and making your cocks twitch with need. After a little while, she returns attention to one of your lengths, running her tongue up and down it, teasing and stroking it with that wet appendage as she works you higher and higher towards your peak.";
		else:
			say "She appraises your [cock size desc of Player], [Cock of Player] dick a moment before she buries her snout at your crotch at the base, delivering a soft caress of her tongue. The pearl of a tooth presses against the sensitive, [Skin of Player] flesh before she runs her wet tongue up towards the tip and engulfs it, sinking it into her accommodating snout as she bucks her hips up towards your face, rocking head and hips in tandem as the tension within you raises towards climax.";
		say "     While continuing to eat out Fangs pussy you find yourself tensing up with the unmistakable signs of an impending orgasm, but as you ready yourself for climax that you are sure will follow, you suddenly find that your dick is now awash in the cool air of the library. Slightly curious about what Fang has in mind, but not wanting to ruin the moment by stopping, you continue working on her moist pussy. Despite what you had in mind you find yourself being lifted by four paws and turned so that you are face-to-face with Fang as she brings you down dick first, inserting it into her vaginas embrace as she brings you into hers, holding you tightly with all four of her limbs, making sure you cant escape from the muzzled lip lock she has now sentenced you to. Despite her holding you as tightly as possible, you decide to go with the flow and please your alpha by pistoning your hips and cock into her pussy and eagerly return her frenching, making sure to thoroughly cuddle her tongue with yours.";
		say "     With all the attention your alpha is showering upon you, you find that familiar feeling returning as your [bodydesc of Player] body locks up in a powerful climax, trembling atop Fang as her skilled tongue continues to wrestle with yours even as you release. Her pussy grips and clamps on the base of your cock before it starts to spray her femcum across your entwined bodies. You eagerly return your alpha's affection, even as your moan resounds from within your throat to combine with Fangs. Even after your combined organs stop twitching, a thin trickle continues to drip onto the ground. You draw back, letting your shaft pop free of Fang's vagina, as you end the make out session by kissing the tip of Fangs nose before reaching to caress the back of her head. In response, Fang rewards your romantic service with a stroke of your cock, causing you to groan and let loose one final blast of seed as the sensitive organ is jostled.";
		NPCSexAftermath Fang receives "PussyFuck" from Player;
		if Perception of Fang is 0:
			let FangPregchance be a random number from 1 to 20;
			if FangPregchance > 13:
				if HP of Lux is 0:
					add "Fang's Mate" to feats of Player;
				now Perception of Fang is 24;
	FangInfect;
	say "     Both satisfied, Fang squirms out from under you and licks your face before moving back towards the door to resume her watch.";

Alpha Fang Scenes ends here.
