Version 3 of Female Husky by Nuku Valente begins here.
[ Version 1.0 - Original form, unknown content - Unknown writer                                          ]
[ Version 2.0 - Moved to Nuku Valente folder. Added Latex Husky mode - Stripes                           ]
[ Version 2.1 - Player victory sex adjustment - Stripes                                                  ]
[ Version 2.2 - Victory: Beta capture for Dom - Stripes                                                  ]
[ Version 2.3 - Victory: Dominant w/knot and cunnilingus scenes added - Stripes                          ]
[ Version 3.0 - Comprehensive writing cleanup. Added cunnilingus scene for female/herm victors - Song    ]

"Places the original Female Husky creature in a separate file for updated use."

to say GenerateTrophyList_Husky_Bitch:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "husky bitch fur" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "soda" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "tennis ball" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

to say femalehuskydesc:
	setmongender 4; [creature is female]
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		project Figure of Husky_Bitch_icon;
		let RandomizedHuskyBitch be a random number from 1 to 5;
		if RandomizedHuskyBitch is:
			-- 1: [mindless whore]
				say "     You run into a beautiful anthro canine covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears, along with a large, fluffy husky tail. Her chest bears two firm and grope-able C cup breasts along with two B cup pairs of breasts underneath them, all of them oozing small droplets of milk. The female dog's cream-colored tummy is slightly swollen as if she is barely pregnant, though that will probably change soon if the aching need oozing from her swollen slit is anything to judge by. It's obvious that she's become nothing more than a needy whore, happy to be full of pups and eager to be bred again and again.";
			-- 2: [flirty]
				say "     You run into a beautiful anthro canine covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears, along with a large, fluffy husky tail. Her chest bears two firm and grope-able C cup breasts along with two B cup pairs of breasts underneath them. Your gaze is drawn down to her flat, white-furred tummy as she sways her hips, then even lower as the bitch spreads her pussy with two fingers. 'See something you like?' she asks in a teasing tone, followed by the words, 'We'll have so much fun together!' With that said, she starts walking towards you.";
			-- 3: [somewhat more pushy]
				say "     As you walk along the street, you suddenly hear a sharp whistle from somewhere to the side and turn that way. Not too far off, you see a beautiful anthro canine with soft, grey and white fur, smiling as she allows you to take in all of her naked, shapely form. Shaking her chest a little in an enticing way, she laughs as your gaze is drawn to the two firm and grope-able C cup breasts along with two B cup breasts underneath them. 'I need someone to take care of this pussy, and you'll do very nicely!' she calls out in a lusty tone, not asking but telling you what she expects next.";
			-- 4:
				say "     You're walking along the street when you become aware of needy moans and sighs coming from somewhere nearby. Trying to locate the source out of sheer curiosity, you peek around the corner of a nearby alleyway and find yourself face to face with a beautiful anthro canine covered in soft, snowy fur. She's naked except her fur and leans against the wall of the right-hand building, one hand cupping one of her four breasts, the other buried between her legs and frigging the dripping canine pussy down there. 'The heat's too much - I NEED something inside me. A cock, or even a tongue!' Apparently half-crazed with unfulfilled cravings, she wants you to take that role, if you want to or not!";
			-- 5:
				say "     You run into a beautiful anthro canine covered in soft, snowy fur. She has a slim, feminine muzzle and perky, overly large ears, along with a large, fluffy husky tail. Her chest bears two firm and grope-able C cup breasts along with two B cup pairs of breasts underneath them. Meeting your gaze and twirling a strand of her long hair around a finger, the bitch says, 'You know, I tried to resist the urges for days, until I realized how stupid that was. If you just give in, you'll feel so much better! Let me show you what fun we can have together!'";

to say fhuskywinner:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	else:
		if HP of Player > 0: [player submitted]
			say "     As you submit to the husky bitch, she smiles with lustful eagerness and [if player is not naked]pulls your gear and clothing off piece by piece, casually letting them fall where they may lie as she is far more interested in you than anything you might own. Then she [end if]saunters around you, stroking your body and rubbing her breasts against your naked form. 'Let's lie down,' she soon goes on to say, pushing lightly against your chest for you to stretch out on the ground. Joining you a moment later, she is quick to follow up with teasing caresses of your naked form.";
		else:
			say "     Swaying from the exhaustion of the fight, you try to blink away stars and catch your balance, only to have the husky bitch step right up to you and lay her slender paw-hand on your chest, giving a light push. In your current state, that is enough to make you fall on your ass, bruising it at least a little and finishing off the last shreds of resistance you currently can muster. Slumping back with a groan, you don't struggle as [if player is not naked]the horny bitch pulls your gear and clothing off piece by piece, casually letting them fall where they may lie as she is far more interested in you than anything you might own. Then she [end if]leans over you, brushing her breasts against your naked form and touching you with teasing caresses.";
		if Player is male:
			if a random chance of 2 in 3 succeeds:
				say "     The amorous husky bitch's eager stroking causes your [cock of player] shaft to quickly harden and stand at attention, which she welcomes with a rapturous smile. Letting out a needy whine, the anthro woman climbs on top of you, demonstratively waving her swollen canine pussy in your face before settling back. The quivering folds of her sex brush against your length and leave a trail of female juices behind, to be spread by her hand as she strokes along your erection and holds it straight up to lower herself onto it. Her pussy is warm and oh so very wet around your cock, enveloping it in a tight embrace that has you instinctively humping up and into her a little. The female husky yips in arousal at your thrust and proceeds to make her hips rise and fall, her quartet of breasts jiggling about with every pound down against you.";
				WaitLineBreak;
				say "     Being ridden by the sex-obsessed minx of a canine bitch is definitely a workout, as she stimulates you wildly, gyrating her hips to make your cock rub all sorts of spots inside her. Given such an enthusiastic partner with a hot, tightly clenching pussy, you're pushed to a screaming climax fairly quickly and she joins you in orgasm as she revels in the sensation of warm cum filling her insides. Yet that isn't the end, not for this bitch! The husky is still panting as she goes on to lay on top of you, nuzzling and licking your face while rubbing her breasts against your chest. She never even tries to pull off, simply continuing to squeeze her inner muscles around your cock while doing everything she can to get you aroused enough for round two. It works, as mere minutes later, you're hard as a rock inside her sex again, and the needy slut lets out a happy yip while sitting up and grinding her crotch against yours.";
				say "     Humping against you, with the warmth of your previous load squishing around your hard shaft, the husky puts you through the sensual, glorious torture of enjoying the fuck, at the same time as suffering from her rubbing your still sensitive shaft mercilessly. Not that she cares much for anything except her own pleasure and the sensation of being a well-filled bitch, bred and about to be filled again with even more creamy cum. Rubbing over her soft-furred belly while riding you, as if imagining it already swelling up with a litter, the husky fills the air around the two of you with lusty moans and barks, their volume and urgency rising as she approaches another orgasm. Then the time has come and the hurny slut howls in completion, her insides trembling and squeezing your manhood rhythmically and driving you over the edge right along with her. Breathlessly gasping, you find yourself humping up and into her, wanting to bury it all inside and deliver your seed into her innermost depths.";
				WaitLineBreak;
				say "     The force of the almost volcanic eruption of your cum into her needy cunt almost makes you pass out, as it seems your last reserves of energy are spent delivering the rich, creamy seed into that hungry pussy. You can do little but flop and twitch under her while gushing forth all the cum you still have to give. The husky bitch enjoys herself for some time afterwards, simply staying on top and grinding against you lightly, with you too weak to do anthing much about it really. Some time later, she finally up from you with a wet sucking noise from her sated cunt, leaving a dripped trail over your crotch and the side of your hips as she stands up. 'Thank you sweety,' she says in a well-satisfied tone, then saunters off, leaving you in a puddle of sweat to recover at your own pace.";
				CreatureSexAftermath "Husky Bitch" receives "PussyFuck" from "Player";
			else:
				say "     The amorous husky bitch's eager stroking causes your [cock of player] shaft to quickly harden and stand at attention, which she welcomes with a rapturous smile. Letting out a needy whine, the anthro woman climbs on top of you, demonstratively waving her swollen canine pussy in your face as she takes the classic '69' position, with her knees to the left and right of your head. Leaning her upper body down, the bitch runs her long, wet tongue across your manhood, teasingly tracing veins and the rim of your dickhead with her tongue-tip. Then her long snout descends, taking it in entirely as she bobs slowly, suckling and milking your balls with a softly furred hand. Meanwhile on her other end, you're left to stare at a swollen cunt dripping female juices, right in front of your face. In the increasingly lust-fogged state your mind is in, it appears only natural to give back to the canine woman pleasuring you, so before long, your tongue is between her nether lips, licking and wiggling against her inner walls.";
				say "     Moments of mutual satisfaction flow into each other, and you enjoy what feels like an eternity of arousing licks and teasing sucking, all the while you slurp up the juices of the white-furred bitch. The two of you push each other's buttons fairly evenly, speeding up your ministrations when the other finds just the right spot. This ensures a joyful escalation of the oral play going back and forth, with the husky eventually pushing you past the point of no return, following herself just a heartbeat or two later. As you are filling her snout, each shot of creamy cum eagerly swallowed and some small amount dribbling past her sucking lips to be lapped up after, the bitch gushes fluids onto your tongue that you swallow in turn, never stopping the laps of your tongue up and down between her nether lips.";
				WaitLineBreak;
				say "     Riding out your respective orgasms, the two of you stay in position for a while longer, sharing light caresses as you catch cour breaths. Then eventually, the husky starts to rise, swinging her leg over you and getting to her feet. 'Thank you sweety,' she says in a well-satisfied tone, then saunters off, leaving you in a puddle of sweat to recover at your own pace.";
				CreatureSexAftermath "Husky Bitch" receives "OralCock" from "Player";
				CreatureSexAftermath "Player" receives "OralPussy" from "Husky Bitch";
		else if player is female:
			say "     The amorous husky bitch's eager stroking causes your pussy to open up a little and start to leak female juices, which she watches with a smile on her lips. Letting out a needy whine, the anthro woman climbs on top of you, demonstratively waving her swollen canine pussy in your face as she takes the classic '69' position, with her knees to the left and right of your head. Leaning her upper body down, the bitch runs her long, wet tongue across your folds, teasingly tracing her tongue-tip along their outsides before pushing in between them. Then her long snout descends, wet nose bumping against your clit before nuzzling your opening and allowing her long tongue to wiggle inside of you. Meanwhile on her other end, you're left to stare at a swollen cunt dripping female juices, right in front of your face. In the increasingly lust-fogged state your mind is in, it appears only natural to give back to the canine woman pleasuring you, so before long, your tongue is between her nether lips, licking and wiggling against her inner walls.";
			say "     Moments of mutual satisfaction flow into each other, and you enjoy what feels like an eternity of arousing licks and teasing sucking, all the while you slurp up the juices of the white-furred bitch. The two of you push each other's buttons fairly evenly, speeding up your ministrations when the other finds just the right spot. This ensures a joyful escalation of the oral play going back and forth, with the husky eventually pushing you past the point of no return, following herself just a heartbeat or two later. As you are gushing all over her snout, with her licking and swallowing what she can, the bitch bucks against your tongue and leaks quite a lot of femcum, with you never stopping the laps of your tongue up and down between her nether lips.";
			WaitLineBreak;
			say "     Riding out your respective orgasms, the two of you stay in position for a while longer, sharing light caresses as you catch cour breaths. Then eventually, the husky starts to rise, swinging her leg over you and getting to her feet. 'Thank you sweety,' she says in a well-satisfied tone, then saunters off, leaving you in a puddle of sweat to recover at your own pace.";
			CreatureSexAftermath "Husky Bitch" receives "OralPussy" from "Player";
			CreatureSexAftermath "Player" receives "OralPussy" from "Husky Bitch";
		else:
			say "     The amorous husky bitch's eager stroking makes your sexless crotch all tingly and sensitive, which she takes in stride even though being a little surprised that you do not have any sexual organs at all. Letting out a needy whine, the anthro woman climbs on top of you, demonstratively waving her swollen canine pussy in your face as she takes the classic '69' position, with her knees to the left and right of your head. Leaning her upper body down, the bitch runs her long, wet tongue across your crotch, teasingly tracing her tongue-tip over its flat expanse. Then her long snout descends, wet nose bumping against your skin as she searches for your pleasure spots. Meanwhile on her other end, you're left to stare at a swollen cunt dripping female juices, right in front of your face. In the increasingly lust-fogged state your mind is in, it appears only natural to give back to the canine woman pleasuring you, so before long, your tongue is between her nether lips, licking and wiggling against her inner walls.";
			say "     Moments of mutual satisfaction flow into each other, and you enjoy what feels like an eternity of arousing licks and teasing sucking, all the while you slurp up the juices of the white-furred bitch. The two of you push each other's buttons fairly evenly, speeding up your ministrations when the other finds just the right spot. This ensures a joyful escalation of the oral play going back and forth, with the husky eventually pushing you past the point of no return, following herself just a heartbeat or two later. While you are trembling and twitching, the bitch bucks against your tongue and leaks quite a lot of femcum, with you never stopping the laps of your tongue up and down between her nether lips.";
			WaitLineBreak;
			say "     Riding out your respective orgasms, the two of you stay in position for a while longer, sharing light caresses as you catch cour breaths. Then eventually, the husky starts to rise, swinging her leg over you and getting to her feet. 'Thank you sweety,' she says in a well-satisfied tone, then saunters off, leaving you in a puddle of sweat to recover at your own pace.";
			CreatureSexAftermath "Player" receives "OralPussy" from "Husky Bitch";

to say fhuskybeaten:
	if inasituation is true:
		say ""; [dealt with at the source of the event]
	let RandomizedHuskybitch be a random number from 1 to 3;
	if RandomizedHuskybitch is:
		-- 1:
			say "     The husky bitch whimpers as you rebuff her advances yet again, exhaustedly swaying on her paws. Your fight really took it out of her. 'I'm sorry! Didn't mean to make you angry,' she calls out and starts to turn around, wanting to run, but somehow simply stumbles over her own paws. Falling onto the ground, she looks up at you fearfully, her wide, doe-like eyes glistening with terror. With a sniff, she adds in a trembling voice, 'Don't hurt me! I can be a good girl for you...' The way her legs spread a little, presenting the wet slit of her canine pussy, leaves little to the imagination of what she is offering right now";
		-- 2:
			say "     Exhausted, the husky bitch slumps against you, now simply trying to keep standing on very shaky legs. Your fight really took it out of her and there are tears streaming along her furry cheeks. 'I shouldn't have been so pushy, sorry! The urges are just so strong,' she whimpers, fearfully glancing up at your face. 'Should have known that I can't make someone like you do anything they don't want. Can, - can I just be a good girl for you instead? Please, I need it!' She starts brushing her paw-hands at you gently, trying to offer sex as an apology";
		-- 3:
			say "     Exhausted, the husky bitch slumps against you, now simply trying to keep standing on very shaky legs. Your fight really took it out of her and there are tears streaming along her furry cheeks. The sounds she makes aren't even words, simply submissive whimpers as she fearfully glances up at your face. Seems like she's realized that you're too strong for her to beat. She starts brushing her paw-hands at you gently, touching and licking your skin in an apologetic gesture";
	let domtempting be false;
	if HP of Dominick >= 60 and HP of Dominick < 100 and player is female and ( BodyName of Player is "Breederslut" or FaceName of Player is "Breederslut" ) and inasituation is false:
		now domtempting is true;
		say ". The sight of her sends a tingle of excitement through your cunt. This cute husky girl might make a good breeder pet for Dominick. The prospect of pleasing him ends a second shiver of lust through you";
		if Player is male:
			say ". [bold type]You could prepare her to become another slutty pet for the alpha stud, though perhaps you might just having some fun of your own.[roman type][line break]";
		else:
			say ". [bold type]You could prepare her to become another slutty pet for the alpha stud or just let her go.[roman type][line break]";
	else if Player is male:
		say ". You find yourself considering having some fun with the anthro husky's shapely body. [bold type]Do you take advantage of the situation and her to sate your lusts?[roman type][line break]";
	else:
		say ". [bold type]You find yourself considering having some fun with the anthro husky's shapely body, but can't really decide what to do at this time.[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if domtempting is true:
		choose a blank row in table of fucking options;
		now title entry is "Recruit for Dominick";
		now sortorder entry is 1;
		now description entry is "Send the lust-crazed husky to Dom to be bred";
	[]
	if "Dominant" is listed in feats of Player and player is male and Cock Length of Player > 5 and player is knotted:
		choose a blank row in table of fucking options;
		now title entry is "Dominate and tie";
		now sortorder entry is 2;
		now description entry is "Take what you want and knot the husky bitch's hot cunt";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck her";
		now sortorder entry is 3;
		now description entry is "Get your rocks off by fucking the husky bitch";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Lesbian licking";
		now sortorder entry is 4;
		now description entry is "Make the doggy girl eat you out";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Lick her cunt";
	now sortorder entry is 9;
	now description entry is "Eat out that juicy canine muff";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Let her go[as]0[end link][line break]";
	now calcnumber is -1;
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck her":
					say "[fhuskybeaten_01]";
				else if nam is "Recruit for Dominick":
					say "[fhuskybeaten_dom]";
				else if nam is "Dominate and tie":
					say "[fhuskybeaten_02]";
				else if nam is "Lesbian licking":
					say "[fhuskybeaten_03]";
				else if nam is "Lick her cunt":
					say "[fhuskybeaten_04]";
				wait for any key;
		else if calcnumber is 0:
			say "     Having fought off her wild advances and driven her back, you see little in continuing to hurt the poor creature. You simply push her away and decide against harming her further, simply leaving her there.";
			now sextablerun is 1;
	clear the screen and hyperlink list;

to say fhuskybeaten_01:
	say "     Deciding on enjoying yourself with the now oh so plyable anthro, you push her down onto the ground. She automatically adopts a position on all fours, head lowered while her ass is raised high, offering her holes under a stiff, raised tail. Eager to taste the fruits of your victory, you [SelfStripCrotch], step up behind her. Reaching out, you grab the needy bitch by the ass and her ears perk up a little. As you go on to stroke over her furred ass and thighs, enjoying the feeling of touching the tick, soft coat, she calms down a little, finding herself in a familiar position of submitting to a dominant partner. The husky braces herself and her tail starts to wag a little bit as she looks back over her shoulder.";
	say "     Presented with such a tempting offer, you can't hold back. Leaning forward, you reach between the woman's legs and rub her sex, feeling her wetness on your fingers before ";
	if Player is sheathed:
		say "dropping on all fours as well. The motion suits your sheath-enclosed member, which slides through the soft tube of furred flesh, triggering a rush of pleasure as you mount the husky, pressing your [one of]dribbling[or]precum-leaking[at random] tip against the dog's snatch. Then, with little need to prepare the hot and ready bitch, you thrust and bury yourself in her welcoming pussy, drawing a pleased sigh as you give the aroused woman what she craves. She pushes back eagerly as your slick shaft spears in, spreading her folds around the girth of your erection. Wrapping your arms around her chest and beginning to thrust, you pant loudly as the well-rounded female dog's inner walls envelop your [Cock of Player] shaft and squeeze it enticingly. Now literally having a bitch in heat moaning beneath you as you hump into her, you feel on top of the world!";
	else:
		say "crouching down. Taking hold of the base of your already hard [Cock of Player] shaft and rubbing the pre-dribbling tip against her sex, your attention is drawn to the sheen of wetness on your shaft as you pull back a moment later. She's wet and ready for you to take her! With a grin on your face, you then push in, your breath coming a little quicker as her folds open around your slick shaft. Gripping the sides of her hips, you push further and further into the quite eager husky, reveling in the lustful groan escaping her muzzle as you bottom out and grind your crotch against her buttocks. As you begin to thrust, pistoning in and out of the needy slut, you can feel her clench around you and push back to meet your hips. Literally having a bitch in heat moaning beneath you as you hump into her, you feel on top of the world!";
	WaitLineBreak;
	if Player is knotted:
		say "     Fucking a sexy female in the literal doggy-style position somehow seems to resonate very well with your [CockName of Player in lower case] manhood, and you can feel the bulge at its base start to throb. Popping it past the opening of your canine partner makes each thrust all the more enjoyable for both of you, with her quickly picking up on the fact that she's about to be bred 'properly' by a cock that's just right for her canine snatch. Hammering into the dog as she moans and barks in arousal, you feel the your climax rush towards you faster than you'd think was possible. With a loud howl of pure lust, you feel your knot swell and bulge, locking you within the canine as your shaft starts to throb and pulse... a long, continual climax, for as long as you remain swollen and tied to the bitch. After the first two or three blasts of your seed into her, the husky lets out a breathless and quite high-pitched howl as she orgasms, driven over the edge by the sensations of being bred.";
		say "     After you don't know (or really care) how long of shuddering, wanton bliss and holding on to the warm form of the canine beneath you, the swollen bulge of your knot eventually starts to soften inside your freshly-bred bitch. Resting inside her with your manhood buried balls-deep, with the soft fur of her coat against your skin and the warm, squishy feeling of a cum-filled pussy around your shaft, you almost want to stay like this forever. The anthro husky doesn't seem to mind either, relaxedly standing on all fours and with her bent-aside tail twitching a bit. No doubt, she'd be wagging it in a show of pleasure if you weren't pinning it between you. Sadly though, there are the concerns of surviving in the chaos of the city to consider, so after a little longer, you let out a soft sigh and pull free with a wet slurp. The grey and white-furred woman sinks to the ground and rolls over, spreading her legs to offer a good view of her cum-smeared snatch. Content and satisfied, she smiles at you, then sinks back to stretch out and rest while you continue on your way.";
	else:
		say "     Humping the sexy female in a half-standing crouch that allows you to put some force into each thrust, you really enjoy making use of your former opponent, reveling in the moans of  pleasure that escape her muzzle again and again. As you fuck the panting dog wildly, the sensation of an oncoming climax rushes towards you faster than you'd think was possible, startling you into a lustful shout as you feel your erection throb and pulse, your seed erupting into the husky's welcoming pussy in thick blasts. After the first two or three blasts of your seed into her, the husky lets out a breathless and quite high-pitched howl as she orgasms, driven over the edge by the sensations of being bred. The flexing of her inner muscles around your [Cock of Player] shaft prolongs your orgasm quite nicely, and you enjoy it to its utmost before eventually pulling free of her freshly bred pussy with a wet slurp. The grey and white-furred woman sinks to the ground and rolls over, spreading her legs to offer a good view of her cum-smeared snatch. Content and satisfied, she smiles at you, then sinks back to stretch out and rest while you continue on your way.";
	CreatureSexAftermath "Husky Bitch" receives "PussyFuck" from "Player";

to say fhuskybeaten_02:
	say "     Grabbing your canine foe, you press her to the ground with a lustful growl. The husky gives a needy whimper, responding to your dominance once you force her onto all fours. You slap her ass with your hard erection and order that tail of hers up. She complies readily, her instinctual needs making her present herself.";
	WaitLineBreak;
	say "     You slide your cock across her dripping folds, getting her all the more hot and bothered. Soon she's panting and whimpering with need, which brings a grin to your face. While you know it's easy to get these bitches into such a state, you still feel a swell of pride at having done so - or is that just your knot starting to show? Taking that as your queue, you plunge your hard rod into her heated cunny, drawing a happy bark from her. Her vagina quivers and squeezes around you as you sink inch after inch into her.";
	say "     Planting your hands on her shoulders, you press them to the ground so you can thrust down into her. Your growing knot bumps against her wet petals and sensitive clit again and again. You can feel her starting to stretch open, preparing to be tied. You pause there, half-hard knot pressed at her entrance, and lean forward.";
	WaitLineBreak;
	say "     'Mmmm... you feel that, slut?' you ask as you hold your hips steady, your knot hard and warm against her cunt's sopping lips. 'You know what'll happen if I tie you - a bellyful of a stranger's pups inside you. Even knowing that, you want it, don't you?'";
	say "     [one of]Her response it to whimper and moan louder as she grinds her hips back in a clear need to be knotted[or]She whimpers and moans inarticulately, trying to urge you to finish fucking her senseless despite being beyond words[or]She moans how she needs that knot in her as she grinds her hips back[or]She moans how her cunt aches for your knot and her womb for your pups[at random]. After a few light motions that are more teasing than efforts to push in, you draw your hips back and plunge hard into her. A few drives of this rough pounding is all it takes to finish forcing your swollen knot in, ensuring there will be no escape from being bred. She releases a lustful [one of]bark[or]growl[at random] and cums hard, her cunt clenching around your meat. You slap her doggy ass and make hard, short thrusts, tugging around your fully engorged knot in that tight grip while you hump her like a dog would. You call her a good bitch as you climax, dumping your hot seed into her needy womb. You pump shot after shot until [if Ball Size of Player > 6]her belly swells to appear pregnant as you fire your [Ball Size Adjective of Player] balls['] massive load into her womb[else if Ball Size of Player > 5]her belly distends in a slight bulge from your hefty load[else]spent[end if].";
	WaitLineBreak;
	say "     You're left tied to the panting bitch for quite a while, giving your sperm ample opportunity to attack her eggs. You know she'll be full with pups soon thanks to you. And with all the creatures running around, what's a few more going to matter? When your knot does finally go down enough for you to pop free, you pull it out. The husky girl gives a feeble, needy whimper, having passed out from the ordeal. You leave her there and go on your way, only a small trickle of your cum leaking out of her stretched hole at this point.";

to say fhuskybeaten_03:
	say "     You assuage the desperate canine's worries, running your hands through her soft, smooth fur and letting her know that everything will be alright. She relaxes at your touch, her earlier mania waning. Smiling at the amicable husky, you guide her flush on her back while methodically teasing her form, pampering her with a constant stream of sultry insinuations and encouragement. Your movements soon lead between her thighs, spreading them gently, and your fingers stroke along her damp, pouting folds, tracing all the way from the base of her nectar-drenched vagina to the sensitive nub of her clit. Your spare hand explores her furry mounds throughout, thumb brushing over her nipples to tease and toy with the beautiful husky below you. Pleased by her obedience, you lean in to sweep your tongue along the rim of her silky ears, licking and nibbling on them playfully while whispering sweet nothings.";
	say "     You continue to torment the curvy canine beneath you, working her up until she's squirming and begging you to fuck her. All too happy to oblige, you move around above her head, then kneel down in a comfortable position, your [cunt size desc of Player] cunt poised directly above her muzzle. She doesn't hesitate to indulge you, her long tongue lolling free to attack your labial lips while her paw-like hands serve to pleasure herself in turn. Her firm and hurried sweeps prove imprecise, yet very enjoyable, what she lacks in finesse more than made up for by her wild enthusiasm. Once satisfied with her appetizer, that spit-slick muscle drives deep into your snatch, chasing after more of your heady female honey. Her furry snout tickles at your sensitive slit, the added stimulation sending jolts of pleasure through your loins[if Player is male] while your neglected cock[smn] twitch[esmv] in time with her sweeps[end if].";
	WaitLineBreak;
	say "     All too soon, her ravenous attention drives you over the edge, spilling your juices across her slender canine muzzle. [if Player is male]Your rigid length[smn] ripple as you mar her fur with your [Cum Load Size of Player] load, streaking her plush coat in alabaster ropes. [end if]You cry out in bliss and clench your thighs together with every potent throb, feeding her wet splatters of your sticky, nourishing nectar. The husky eagerly swallows as much as she can, slathering your depths in saliva as she imbibes with noisy gulps. She continues to jill herself to a powerful orgasm, her hazy groans muffled in the sordid confines of your sex.";
	say "     Spent and brutally satisfied, you withdraw from the husky's damp snout, dripping your remaining juices all over her face as you rise. The resulting slick splatters are quickly lapped up, her tongue sliding over her chops as her tail wags proudly. You lean over the girl's supine form to share one last tongue-filled kiss, then gather your bearings and depart, your mind still awash in the miasma of sex.";

to say fhuskybeaten_04:
	say "     Having stopped her uncontrolled advances, you decide to help the poor girl out now that she's not trying to assault you. Getting her on her back, you grab her legs and spread them wide. With her wet, canine muff on display, you can feel the heat from it and smell her arousal. You bury your face between her thighs and lap at her juicy folds.";
	say "     The husky girl moans and whimpers as your tongue plays across her, finally providing her some much-needed attention. You lick at her hot pussy, lapping up her flowing juices. As your tongue-work continues, she pants and yips with growing excitement, especially as you delve deeper. You push into her cunny, teasing across her inner walls as her vaginal muscles quiver around you. You lap deep and fast, tongue-fucking the horny husky until she cums in a barking orgasm that soaks your face with her femcum.";
	say "     With her wild lust temporarily sated, the husky girl heads off without further trouble. Her tail wags happily, wafting the scent of her arousal. You take a moment to wipe yourself clean before returning to your own affairs, pleased to have given the poor canine at least some fleeting relief from her need.";

to say fhuskybeaten_dom:
	say "     Taking hold of the husky girl from behind, you reach around to fondle her breasts and pussy[if scalevalue of Player < 3]. To accommodate your smaller size, you get her to move down onto her knees with a gentle prompting while rubbing her folds[end if]. Already quite lustful before the fight even began, getting her ready is an easy task. You make certain to use several of the techniques Dom showed you to get her really worked up. All the while, Dom's scent (which has been clinging to your shiba inu [if Player is breederslutbodied]form[else if Player is breederslutskinned]fur[else]head[end if]) seeps into her sensitive nose, arousing her all the more.";
	say "     After a few minutes of teasing and several small orgasms that increase her need rather than relieve it, you expect she's quite ready now[if Player is male]. You grind your shaft[smn] against her hip, but take it no further, using [itthemm] to tantalize her all the more[end if]. You nibble her ear and whisper what a horny girl she is and how you can just tell she needs a good, hard fucking. She moans about how much she needs it[if Player is male] and tries to push back onto your cock, but[else], and so[end if] you tell her where she can find a true husky stud to screw her. Quite suggestible at this point, you [one of]say that he's waiting for her[or]describe his studly physique and sexual prowess to her[or]go on about his ideal stud status as a top-ranked husky breeder[or]describe his hard, throbbing cock in lurid detail[at random].";
	say "     Given the vapid nature of these husky girls, you know she'll have a better chance of staying on track long enough to reach the kennel if her addled mind is fully focused on wanting him to breed her. To ensure this, you assault her a final series of licks, caresses and touches. At this peak of arousal, you tell her once again that the stud is ready and waiting to give her the fucking she needs, eager to breed her full of beautiful pedigree pups. With your description and directions in her mind, you release her on her way, her lust-addled mind locked on this idealized stud to mate her. She dashes off, her body aching for the relief her new master will bring, and you can't help but be pleased with your success.";
	now Libido of Dominick is 1;
	increase XP of Dominick by 1


Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Husky";
	add "Husky Bitch" to infections of CanineList;
	add "Husky Bitch" to infections of FurryList;
	add "Husky Bitch" to infections of NatureList;
	add "Husky Bitch" to infections of FemaleList;
	add "Husky Bitch" to infections of TaperedCockList;
	add "Husky Bitch" to infections of KnottedCockList;
	add "Husky Bitch" to infections of SheathedCockList;
	add "Husky Bitch" to infections of BipedalList;
	add "Husky Bitch" to infections of TailList;
	now Name entry is "Husky Bitch"; [ Infection/Creature name. Capitalized. ]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The sex-crazed husky manages to pin you against some debris as she gnaws at your shoulder. You're sure she means it as a come on, but it just hurts.[or]The husky howls in frustration and slices with her dull claws. It seems awkward, but it stings![or]She manages to get her hands on you and squeezes tightly, pressing her delightful assets to you even as she denies you breath in the tight embrace.[at random]";
	now defeated entry is "[fhuskybeaten]";
	now victory entry is "[fhuskywinner]";
	now desc entry is "[femalehuskydesc]";
	now face entry is "slim, feminine muzzle and large, perky ears over a canine";
	now body entry is "that of a [if latexhuskymode is true]quadrupedal dog with paw-like feet and[else]bipedal dog, with digitigrade legs and paw-like[end if] hands";
	now skin entry is "[if latexhuskymode is true]smooth and shiny, black and white latex[else][one of]softly furred[or]densely furred[or]white-furred[at random][end if]";
	now tail entry is "You have a [if latexhuskymode is true]curved husky tail made of smooth latex[else]long and fluffy dog's tail swaying behind you[end if].";
	now cock entry is "[if latexhuskymode is true][one of]latex[or]doggy[or]canine[or]knotted[at random][else][one of]canine[or]knotted[or]bright red doggy[or]bestial[at random][end if]";
	now face change entry is "[if latexhuskymode is true]it reflows into the smooth, husky head you had before. Your long, rubbery tongue hangs from your mouth, dripping with oily drool[else]your face draws forward into a slender canine snout. Your elongated tongue slips free of your new lips, lolling in the air wetly for a moment[end if]";
	now body change entry is "[if latexhuskymode is true]your arms and legs grow malleable and turn into doggy legs for your increasingly canine body. Soon enough you're back to the quadrupedal husky form you had earlier. It will be a struggle to stand or use your hands now, but being a doggy feels so much better anyhow[else]your legs bend and twist into digitigrade form with soft, subtle snaps of flowing bones. You look down to see your feet becoming entirely paw-like while your hands develop soft padding and claws[end if]";
	now skin change entry is "[if latexhuskymode is true]your skin flows, turning a glossy black and white, flowing around as it becomes a layer of latex in a husky pattern[else]your skin prickles from head to toes as fur begins to push through from underneath, soon covering you in a soft, almost comforting layer of fluffy white fur[end if]";
	now ass change entry is "[if latexhuskymode is true]a long, inflated tail balloons from your behind. It curves and wags, perpetually raised to show off your groin and butt[else]a long tail pushes from your spine. Uplifting in a stiff arc, it begins to slowly sway without your input[end if]";
	now cock change entry is "[if latexhuskymode is true]your shaft becomes smooth, latex flesh. It tapers to a point and gains a thick, doggy knot and a sheath of latex rubber to house it[else]your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, forming a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago[end if]";
	now str entry is 6;
	now dex entry is 12; [ ...and are only altered onto the player via Shifting or the Mighty Mutation feat ]
	now sta entry is 6; [ These values may be used as part of alternate combat.]
	now per entry is 6;
	now int entry is 2;
	now cha entry is 16;
	now sex entry is "Female"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 15;
	now lev entry is 1; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 3; [ Monster's average damage when attacking. ]
	now area entry is "Outside"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 0; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 4; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 4; [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 10; [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 3; [ Width of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 90; [ Target libido the infection will rise towards. ]
	now loot entry is "husky bitch fur"; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 50; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "husky bitch milk";
	now CumItem entry is "husky bitch cum";
	now TrophyFunction entry is "[GenerateTrophyList_Husky_Bitch]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if latexhuskymode is true][one of]quadrupedal[or]altered[or]animalistic[at random][else][one of]feminine[or]girly[at random][end if]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]husky[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is "Husky Alpha"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is "Husky Bitch"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 3; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 3; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 8; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a slender muzzle pushes forward to give you the head of a sleek female dog"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a sleek female husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "ponytail"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 6; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 6; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 4; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 4; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 2;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 2; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip. There is a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 1;
	now Cunt Depth entry is 10;
	now Cunt Tightness entry is 3;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"husky bitch fur"	"A tuft of grey and white fur that looks like it has been pulled out of the coat of a husky. It's nicely soft."	0	husky bitch fur

husky bitch fur is a grab object.
Usedesc of husky bitch fur is "[HuskyBitchFurUse]".

It is temporary.

to say HuskyBitchFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Husky Bitch";

instead of sniffing husky bitch fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";


Table of Game Objects (continued)
name	desc	weight	object
"husky bitch cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Husky Bitch Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	husky bitch cum

husky bitch cum is a grab object.
husky bitch cum is cum.
husky bitch cum is infectious.
Strain of husky bitch cum is "Husky Alpha".
Usedesc of husky bitch cum is "[husky bitch cum use]";

to say husky bitch cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

Table of Game Objects (continued)
name	desc	weight	object
"husky bitch milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Husky Bitch Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	husky bitch milk

instead of sniffing husky bitch cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

husky bitch milk is a grab object.
husky bitch milk is milky.
Purified of husky bitch milk is "distilled milk".
husky bitch milk is infectious.
Strain of husky bitch milk is "Husky Bitch".
Usedesc of husky bitch milk is "[husky bitch milk use]";

to say husky bitch milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the canine milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing husky bitch milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Husky Bitch Infection"	"Infection"	""	Husky Bitch Infection rule	1000	false

This is the Husky Bitch Infection rule:
	if ending "Husky Bitch with Colleen" is triggered:
		make no decision;
	if Player has a body of "Husky Bitch":
		trigger ending "Husky Bitch Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You are completely lost to your urges, an alpha predator, stalking the ruins of the city. Ah, but you are not alone. A pack coalesces around you, a dozen of so like-minded canines, howling their madness and need to an uncaring sky. Superior numbers and ferocity make you more than a match for the other beasts loose in the city. It doesn't take long before the echoing howls, calling your fellows to hunt, cause even the most ferocious mutants and monsters to look for a place to hide from the lustful tide of your husky pack. Those caught are either devoured or subdued and dragged back to your dens, their bodies changed and their minds worn down by a furious night of animal passion. Thick cum fills their every hole, the slick passion of the females coating their cocks and muzzles. Any female captured is pregnant by dawn, and with the high birth rate needed to keep up with the attrition rate, the city is not safe. You are the absolute ruler of your domain. A pity your mind is too far gone to appreciate it.";
		else:
			say "     In this strange new world, there are a hell of a lot worse things to end up as than a husky. Once things settle down, you move up north, ending up as a bartender in a small city bar frequented by the locals.";
			if Player is herm:
				say "     Life isn't bad; it takes a while, but you fit in just fine here. The regular humans accept you, and the mutants appreciate having a good representative in town. One slow weekday night, another herm saunters in and asks for a drink. She is beautiful, your heart skipping a beat as her eyes meet yours. All that practice of keeping your cool behind the heavy oak bar melt away, and you stammer like a teenager as you get her beer. She just smiles, and it isn't long at all until you are off of work and tangled up in her arms. The relationship lasts, both of you settling into your dual roles without too much trouble, taking turns bearing pups. Even humans envy the equanimity and quality of your relationship.";
			else if Player is male:
				say "     The endless tug-of-war between your rational mind and your instincts make adapting to life in [']the normal world['] a bit tougher than you expected. Humans and other mutants don't quite follow the same pack mentality your instincts demand. You struggle, and it's hard, make no mistake, but you rise above. Of course, it helps that once word gets out just how much fun a male canine is in bed, you are never short of female company of all shapes and species. With that urge taken care of at least, fitting in becomes a hell of a lot easier. Of course, the universe has a sense of a humor, and not three months later, a group of canines having the same issues as you start a co-op on the west side of town. This proves to be a great place for you, rising to the top of the pack and having your pick of the females - in heat, no less, and many of the next generation call you sire.";
			else:
				say "     Initially, things go quite smoothly. Everyone loves dogs, and your lovely female figure earns more than a few warm smiles and invitations to coffee. Then, unexpectedly, your heat strikes, the rush of pheromones and hormones nearly toppling the fragile life you've built for yourself. Luckily, you had become friends with a male dragon who understood better than most what you were going through. After a desperate phone call, you go over there, nearly tackling him onto the ground in your rush to soothe the burning need between your legs. The next week is spent in the throes of passion, impaling yourself on his thick shaft every chance you get. The heat passes, but it leaves behind a certain... emptiness, that you know won't be fulfilled until you find a male canine. That little search takes longer than you expected, and two more cycles of heat slam into you, driving you into the arms of a menagerie of humans and mutants, their spurts of seed dousing the fire enough for you to function. On a cool summer night, he saunters into the bar: a tall, strong male canine, just perfect. After a few weeks of getting to know each other, your relationship deepens. Everything is going just fine, and then your heat strikes again. You find yourself in his apartment, on your hands and knees, offering yourself to him. After what feels like an eternity, he takes you up on your plea, your howls of pleasure mingling as he drives into your needy body. You climax again and again as his thick knot ties you together, his fertile seed flooding your ready womb. It isn't long until your belly rounds with his pups. You feel... fulfilled.";

Female Husky ends here.
