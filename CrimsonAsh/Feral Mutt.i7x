Version 1 of Feral Mutt by CrimsonAsh begins here.

"Adds a Feral Dog creature to Flexible Survival's Wandering Monsters table"

FeralMuttCurrentBreed is a text that varies.
FeralMuttDetailedLook is a text that varies.
FeralMuttFurColor is a text that varies.
FeralMuttFurColorNumber is a number that varies.
FeralMuttDominance is a number that varies.

Section 1 - Creature Responses

to RandomizeFeralMutt:
	if a random chance of 1 in 2 succeeds:
		now FeralMuttFurColorNumber is 1;
	else:
		now FeralMuttFurColorNumber is 2;
	let randomnumber be a random number from 1 to 6; [adjust the latter number for the number of options]
	if randomnumber is:
	-- 1:
		now FeralMuttFurColor is "[if FeralMuttFurColorNumber is 1]brown[else]gray[end if]";
		now FeralMuttCurrentBreed is "Malamute";
		now FeralMuttDetailedLook is "a well-muscled [FeralMuttFurColor] [FeralMuttCurrentBreed]";
	-- 2:
		now FeralMuttFurColor is "[if FeralMuttFurColorNumber is 1]brown[else]yellow[end if]";
		now FeralMuttCurrentBreed is "Labrador";
		now FeralMuttDetailedLook is "a sleek and fast [FeralMuttFurColor] [FeralMuttCurrentBreed]";
	-- 3:
		now FeralMuttFurColor is "[if FeralMuttFurColorNumber is 1]brown[else]black[end if]";
		now FeralMuttCurrentBreed is "Mastiff";
		now FeralMuttDetailedLook is "a strong looking [FeralMuttFurColor] [FeralMuttCurrentBreed]";
	-- 4:
		now FeralMuttFurColor is "[if FeralMuttFurColorNumber is 1]brown[else]golden-brown[end if]";
		now FeralMuttCurrentBreed is "Goldador";
		now FeralMuttDetailedLook is "a stray and rugged [FeralMuttFurColor] [FeralMuttCurrentBreed]";
	-- 5:
		now FeralMuttFurColor is "[if FeralMuttFurColorNumber is 1]brown[else]reddish-brown[end if]";
		now FeralMuttCurrentBreed is "Blood Hound";
		now FeralMuttDetailedLook is "a well-muscled [FeralMuttFurColor] [FeralMuttCurrentBreed]";
	-- 6:
		now FeralMuttFurColor is "[if FeralMuttFurColorNumber is 1]brown[else]white and brown[end if]";
		now FeralMuttCurrentBreed is "Bulldog";
		now FeralMuttDetailedLook is "a large snarling [FeralMuttFurColor] [FeralMuttCurrentBreed]";

to say FeralMuttDesc:
	setmongender 3;
	RandomizeFeralMutt;
	say "     From behind, you hear the telltale growl of an animal. Whirling around, you spot a large feral dog, growling and approaching predatorily towards you. The mutt seems to be a mixed breed, most closely resembling [FeralMuttDetailedLook]. As he approaches, you spot the red rocket that is his cock already half-poking out of his furry sheath, before it then slides into full view as the dog winds himself up to fuck you. Seconds later, the mutt leaps forward, barking and planning to take what he wants!";

to say LoseToFeralDog:
	if HP of Player > 0: 								  [DID THE PLAYER SUBMIT? - YES]
		if Player is herm: 			  [Yes = HERM Identified!]
			say "     Backing up you place your arms up and lay your back down on the cold ground below, fully submitting to the canine beast. Before you can act further, surging forward the dog tears off your underclothes with sharp canines. Leaping atop your form at a moments notice the mutts cock has since grown to its full eight inch erectness with a bulging red knot at the base. Thrusting wildly at your tummy the feral covers your neck and face in doggy kisses and slobber. The musky smell of the beast filling your senses and better judgement as he finds home in your cunt. Throwing your head back at the sudden penetration the dog hilts himself to the knot inside you in one lucky hump before he pulls back and resumes thrusting. As the dog's exotic red cock ruts into your tender sex the feral beast continues to lick and kiss your face and neck. Hammering into you, you're overcome with a feral base lust and start to moan and yip like a bitch in heat.";
			say "     Taking advantage of your parted lips the beast slips his long canine tongue into your mouth as his rough tongue tangles with your own. It explores every inch of your mouth and waves of tasty slobber follows, only further exciting you. As the feral beast essentially spit roasts you, he begins to speed up, humping with incredible speed into your receptive cunt. Letting his tongue withdraw from your mouth with a trail of saliva the mutt bites down on your neck, enough to hold you firmly but not enough to draw blood. With one final massive thrust the dog hilts himself in you again and continues to push, popping his huge swollen knot into your soaked cunt you let out a shriek of pleasure and clamp down around his hot doggy cock and climax. You shoot your own load all over your chest as you spasm around the canine's member. Following with you and stuck firmly inside your heavenly sex the feral cums as well. Pumping load after load of fertile canine cum into you the dog growls into your neck as he breeds you like a good bitch.";
			fimpregchance;
			WaitLineBreak;
			say "     Coming down from your climax the dog stays in his dominant missionary position as your sex milks the last drops of his dog seed into you. He resumes covering your face in wet kisses while waiting for his large knot to deflate in you. You faithfully make out with your canine mate until he slips out of your sensitive lips. You let out a moan as it slides out of your well-fucked pussy and then trots off, seemingly content with its breeding. You lay there for a while, rubbing your cum-slicked lips as dog jizz runs down your thighs before getting up and going on your way.";
		else if Player is female: [Yes = FEMALE Identified!]
			say "     Backing up, you place your arms up and lay back down on the cold ground, fully submitting to the canine beast. Before you can act further, the dog surges forward, tearing off your underclothes with sharp canines. Leaping atop your form at a moment's notice, the mutt's cock has since grown to its full eight inch erectness with a bulging, red knot at the base. Thrusting wildly at your tummy, the feral covers your neck and face in doggy kisses and slobber. The musky smell of the beast fills your senses and better judgement as he finds home in your cunt. Throwing your head back at the sudden penetration, the dog hilts himself to the knot inside of you in one lucky hump before he pulls back and resumes thrusting. As the dog's exotic, red cock ruts into your tender sex, the feral beast continues to lick and kiss your face and neck. Hammering into you, you're overcome with a feral base lust and start to moan and yip like a bitch in heat.";
			say "     Taking advantage of your parted lips, the beast slips his long, rough canine tongue into your mouth, tangling it with your own. It explores every inch of your mouth, and waves of tasty slobber follows, only further exciting you. As the feral beast essentially spit roasts you, he begins to speed up, humping with incredible speed into your receptive cunt. Letting his tongue withdraw from your mouth with a trail of saliva, the mutt bites down on your neck, enough to hold you firmly but not enough to draw blood. With one final massive thrust, the dog hilts himself in you again and continues to push, popping his huge, swollen knot into your soaked cunt. You let out a shriek of pleasure and clamp down around his hot doggy cock and climax. Still stuck firmly inside of your heavenly sex, the feral follows right after you and cums as well. Pumping load after load of fertile canine cum into you, the dog growls into your neck as he breeds you like a good bitch.";
			fimpregchance;
			WaitLineBreak;
			say "     Coming down from your climax, the dog stays in his dominant missionary position as your sex milks the last drops of his dog seed into you. He resumes covering your face in wet kisses while waiting for his large knot to deflate in you. You faithfully make out with your canine mate until he slips out of your sensitive lips. You let out a moan as he slides out of your well-fucked pussy and then trots off, seemingly content with his breeding. You lay there for a while, rubbing your cum-slicked lips as dog jizz runs down your thighs, before getting up and going on your way.";
		else if Player is male: [Yes = MALE Identified!]
			say "     Backing up, you place your arms up and lay back down on the cold ground, fully submitting to the canine beast. Before you can act further, the dog surges forward, tearing off your underclothes with sharp canines. Leaping atop your form at a moment's notice, the mutt's cock has since grown to its full eight inch erectness with a bulging, red knot at the base. Thrusting wildly at your tummy, the feral covers your neck and face in doggy kisses and slobber. The musky smell of the beast fills your senses and better judgement as he finds home in your ass. Throwing your head back at the sudden penetration, the dog hilts himself to the knot inside of you in one lucky hump before he pulls back and resumes thrusting. As the dog's exotic, red cock ruts into your tender anus, the feral beast continues to lick and kiss your face and neck. Hammering into you, you're overcome with a feral base lust and start to moan and yip like a bitch in heat.";
			say "     Taking advantage of your parted lips, the beast slips his long, rough canine tongue into your mouth, tangling it with your own. It explores every inch of your mouth, and waves of tasty slobber follows, only further exciting you. As the feral beast essentially spit roasts you, he begins to speed up, humping with incredible speed into your receptive ass. Letting his tongue withdraw from your mouth with a trail of saliva, the mutt bites down on your neck, enough to hold you firmly but not enough to draw blood. With one final massive thrust, the dog hilts himself in you again and continues to push, popping his huge, swollen knot into your abused hole. You let out a shriek of pleasure and clamp down around his hot doggy cock, and you shoot your own load all over your chest as you spasm around the canine's member. Still stuck firmly inside of your heavenly sex, the feral follows right after you and cums as well. Pumping load after load of fertile canine cum into you, the dog growls into your neck as he breeds you like a good bitch.";
			mimpregchance;
			WaitLineBreak;
			say "     Coming down from your climax the dog stays in his dominant missionary position as your tender butt milks the last drops of his dog seed into you. He resumes covering your face in wet kisses while waiting for his large knot to deflate in you. You faithfully make out with your canine mate until he slips out of your sensitive lips. You let out a moan as he slides out of your well-fucked ass and then trots off, seemingly content with his breeding. You lay there for a while, rubbing your cum-slicked hole as dog jizz runs down your thighs, before getting up and going on your way.";
	else: 										  [PLAYER LOST THE FIGHT!]
		if Player is herm: [Yes = HERM Identified!]
			say "     Covered in scratches and bites you fall on your back struggling to crawl away. Mid-crawl the feral dog leaps atop your back and digs his jaws into your neck pinching tightly but not quite drawing blood. The dog's tongue laps at your neck covering it in slobber as his hind legs yank down any obstructions you have between the canine and his prize. He humps wildly at your raised ass rubbing his fully erect dog cock between your ass cheeks. Before long he hits his mark, thrusting into your cunt and smashing his knot against your wet lips the dog growls and barks as he fucks you. You moan as the canine pounds into you, you begin to pant as the feral beast dominates and breeds your now willing body. Thrusting your ass back against the dog in time with his wild humps you bark in pleasure as the male mutt pushes into you further, popping his swollen knot into your abused pussy lips.";
			say "     You throw your head back as he locks inside you, now humping in short sporadic bursts. The beast doesn't last much longer, slamming into you one last time and flooding your womb with thick spurts of canine seed. You moan in surprise and pleasure as you clamp down around his invading member, milking your mates doggy cock as if it were all that mattered. You find your own orgasm, jetting your load on the ground below and splattering on your lower half. Panting warm drool on your back the dog leaps off your back a moment later yanking his still hard cock from your abused cunt. A tide of seed flows out of you and onto the ground below, soaking your thighs and legs in sticky cum. Looking back at your beast you see him turning a corner and wandering off, likely searching for another bitch to breed.";
			fimpregchance;
		else if Player is female: [Yes = FEMALE Identified!]
			say "     Covered in scratches and bites, you fall on your back, struggling to crawl away. Mid-crawl, the feral dog leaps atop your back and digs his jaws into your neck, pinching tightly but not quite enough to draw blood. The dog's tongue laps at your neck, covering it in slobber, as his hind legs yank down any obstructions you have between the canine and his prize. He humps wildly at your raised ass, rubbing his fully erect dog cock between your ass cheeks. Before long, he hits his mark, thrusting into your cunt and smashing his knot against your wet lips. The dog growls and barks as he fucks you. You moan as the canine pounds into you, and you begin to pant as the feral beast dominates and breeds your now willing body. Thrusting your ass back against the dog in time with his wild humps, you bark in pleasure as the male mutt pushes into you further, popping his swollen knot into your abused pussy lips.";
			say "     You throw your head back as he locks inside of you, now humping in short, sporadic bursts. The beast doesn't last much longer, slamming into you one last time and flooding your womb with thick spurts of canine seed. You moan in surprise and pleasure as you clamp down around his invading member, milking your mate's doggy cock as if it were all that mattered. Panting warm drool on your back, the dog leaps off of your back a moment later, yanking his still hard cock from your abused cunt. A tide of seed flows out of you and onto the ground below, soaking your thighs and legs in sticky cum. Looking back at your beast, you see him turning a corner and wandering off, likely searching for another bitch to breed.";
			fimpregchance;
		else if Player is male: [Yes = MALE Identified!]
			say "     Covered in scratches and bites you fall on your back struggling to crawl away. Mid-crawl the feral dog leaps atop your back and digs his jaws into your neck pinching tightly but not quite drawing blood. The dog's tongue laps at your neck covering it in slobber as his hind legs yank down any obstructions you have between the canine and his prize. He humps wildly at your raised ass rubbing his fully erect dog cock between your ass cheeks. Before long he hits his mark, thrusting into your tight ass and smashing his knot against your anal ring the dog growls and barks as he fucks you. You moan as the canine pounds into you, you begin to pant as the feral beast dominates and breeds your now willing body. Thrusting your ass back against the dog in time with his wild humps you bark in pleasure as the male mutt pushes into you further, popping his swollen knot into your abused asshole.";
			say "     You throw your head back as he locks inside you, now humping in short sporadic bursts. The beast doesn't last much longer, slamming into you one last time and flooding your innards with thick spurts of canine seed. You moan in surprise and pleasure as you clamp down around his invading member, milking your mates doggy cock as if it were all that mattered. You find your own orgasm, jetting your load on the ground below and splattering on your lower half. Panting warm drool on your back the dog leaps off your back a moment later yanking his still hard cock from your abused ass. A tide of seed flows out of you and onto the ground below, soaking your thighs and legs in sticky cum. Looking back at your beast you see him turning a corner and wondering off, likely searching for another bitch to breed.";
			mimpregchance;
	increase FeralMuttDominance by 1; [one extra step towards dominance]
	if FeralMuttDominance > 2:
		now Mutt Pack Attack is active; [active when they reach level 3 dominance]
	else:
		now Mutt Pack Attack is inactive; [inactive when they're not dominant enough]
	if FeralMuttDominance > -3:
		now Mutt Pack Submission is inactive; [inactive when they're not subby enough]


to say BeatTheFeralMutt:
	say "     After your assault, the dog collapses and whines sadly. As he struggles to stand, he wavers and falls over. You then notice his still hard cock poking out of his sheath, the tip drooling a bit of pre.";
	say "     [bold type]Should you have a little fun with the feral beast?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, screw that pooch.";
	say "     ([link]N[as]n[end link]) - No, no thank you.";
	if Player consents: [Decides to fuck feral dog]
		LineBreak;
		say "[FeralDogSexMenu]";
	else:
		LineBreak;
		say "     Shaking your head to put any such lewd impulses out of your mind, you walk away quickly before the feral beast gets back up.";

to say FeralDogSexMenu:
	say "     What exactly do you plan on doing with the dog?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck him off";
	now sortorder entry is 1;
	now description entry is "Give the [FeralMuttCurrentBreed] a blowjob";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 2;
	now description entry is "Impale yourself on the [FeralMuttFurColor] [FeralMuttCurrentBreed]'s cock";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 3;
		now description entry is "Thrust your dick into the [FeralMuttFurColor] [FeralMuttCurrentBreed]'s ass";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Suck him off"):
					say "[SuckFeralMutt]";
				if (nam is "Ride his cock"):
					say "[RideFeralMutt]";
				if (nam is "Fuck his ass"):
					say "[FuckFeralMutt]";
				decrease FeralMuttDominance by 1;
				if FeralMuttDominance > -3:
					now Mutt Pack Submission is inactive; [inactive when they are less than 3x submissive]
				else:
					now Mutt Pack Submission is active; [active when they're sufficiently subby]
				if FeralMuttDominance < 3:
					now Mutt Pack Attack is inactive; [inactive when they're not dominant enough]
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the [FeralMuttFurColor] [FeralMuttCurrentBreed], shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RideFeralMutt:
	if Player is herm: 			  [Yes = HERM Identified!]
		say "     Pushing the mutt onto his back he whines pathetically while you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Whether understanding you or just that he lost is a mystery but he doesn't struggle as you stroke his red rocket and align it up with your damp lips. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your lips you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big furry chest you start to speed up, growing increasingly as you feel yourself growing closer to your climax.";
		say "     With your other hand you begin to stroke your own member, feeling yourself approaching fast. The beast below you cums first, shooting jets of canine seed into your eager cunt. Not willing to take that from the loser of the fight you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your male juices over his abdomen. Coming down as your bouncing on the feral cock slows to a stop you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually it deflates enough for you to slip it out and stand up, giving the dog a pat on the head as you gather your things and get back on your way.";
		fimpregchance;
	else if Player is female: 	  [Yes = FEMALE Identified!]
		say "     Pushing the mutt onto his back, he whines pathetically while you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Whether understanding you or just because that he lost is a mystery, but he doesn't struggle as you stroke his red rocket and align it with your damp lips. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your lips, you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, and you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big, furry chest you start to speed up, feeling yourself getting closer to your climax.";
		say "     The beast below you cums first, shooting jets of canine seed into your eager cunt. Not willing to take that from the loser of the fight, you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your female juices over his abdomen. As your bouncing on the feral cock slows to a stop, you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually, it deflates enough for you to slip it out and stand up. You give the dog a pat on the head as you gather your things and get back on your way.";
		fimpregchance;
	else if Player is male: 	  [Yes = MALE Identified!]
		say "     Pushing the mutt onto his back he whines pathetically while you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Whether understanding you or just that he lost is a mystery but he doesn't struggle as you stroke his red rocket and align it up with your back entrance. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your sensitive anal ring you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big furry chest you start to speed up, growing increasingly as you feel yourself growing closer to your climax.";
		say "     With your other hand you begin to stroke your own member, feeling yourself approaching fast. The beast below you cums first, shooting jets of canine seed into your eager hole. Not willing to take that from the loser of the fight you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your male juices over his abdomen. Coming down as your bouncing on the feral cock slows to a stop you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually it deflates enough for you to slip it out and stand up, giving the dog a pat on the head as you gather your things and get back on your way.";
		mimpregchance;


to say SuckFeralMutt:
	if Player is herm: 			  [Yes = HERM Identified!]
		say "     Striding up to the creature you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. You lick your lips looking hungrily at the exotic cock and ducking beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. The dog waivers to the side and falls over, cock still being suckled by you as he lays on his side whimpering in pleasure. You suck on the dog meat and rub the balls of the [FeralMuttCurrentBreed] before popping the raging hard red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog you can feel your head swimming and your desire growing as you press your nose to the ferals scrotum taking in his sexy masculine scent.";
		say "     The dog for his part is on his side, tongue lolled out and panting in pleasure. You smile at the beast letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking it all the way to his knot. Holding their for a minute letting your throat massage his canine cock. Suddenly a torrent of thick feral seed is flooding your stomach, so much so that it fills your mouth and oozes around your lips and mouth, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks you look up to see the dog snoring soundly. You shake your head and smile, wiping a dribble of canine cum from your chin and swallowing it with a final smack of your lips before moving on.";
	else if Player is female: 	  [Yes = FEMALE Identified!]
		say "     Striding up to the creature, you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. Looking hungrily at the exotic cock, you lick your lips and duck beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. The dog wavers to the side and falls over, cock still being suckled by you as he lays on his side and whimpers in pleasure. You suck on the dog meat and rub the balls of the [FeralMuttCurrentBreed] before popping the raging-hard, red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog, you can feel your head swimming and your desire growing as you press your nose to the feral's scrotum, taking in his sexy, masculine scent.";
		say "     The dog, for his part, is on his side, tongue lolled out and panting in pleasure. You smile at the beast, letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking all the way to his knot. Holding there for a minute, you let your throat massage his canine cock. Suddenly, a torrent of thick feral seed is flooding your stomach, so much that it fills your mouth and oozes around your lips, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds as you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks, you look up to see the dog snoring soundly. You shake your head and smile. You wipe a dribble of canine cum from your chin and swallow it with a final smack of your lips before moving on.";
	else if Player is male: 	  [Yes = MALE Identified!]
		say "     Striding up to the creature you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. You lick your lips looking hungrily at the exotic cock and ducking beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. The dog waivers to the side and falls over, cock still being suckled by you as he lays on his side whimpering in pleasure. You suck on the dog meat and rub the balls of the [FeralMuttCurrentBreed] before popping the raging hard red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog you can feel your head swimming and your desire growing as you press your nose to the ferals scrotum taking in his sexy masculine scent.";
		say "     The dog for his part is on his side, tongue lolled out and panting in pleasure. You smile at the beast letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking it all the way to his knot. Holding their for a minute letting your throat massage his canine cock. Suddenly a torrent of thick feral seed is flooding your stomach, so much so that it fills your mouth and oozes around your lips and mouth, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks you look up to see the dog snoring soundly. You shake your head and smile, wiping a dribble of canine cum from your chin and swallowing it with a final smack of your lips before moving on.";


to say FuckFeralMutt:
	if Player is herm: [Yes = HERM Identified!]
		say "     Seeing your opportunity for a display of dominance, you position yourself behind the dazed mutt. Fishing out your hardening length you give yourself a few strokes while holding the flanks of the beaten mutt in place. Pressing the tip of your malehood against the wild dog's anal ring, you slowly push into the tight warm confines, making the mutt below you whine in a mix of pain and pleasure. After a few gentle thrusts, the horny beast is panting and leaning back against your hips. You can feel his gripping confines tighten around you as he shoots his load onto the cold ground below. His canine cock twitches and pulses as it slowly deflates, dripping a little more cum onto the soaked dirt beneath.";
		say "     Far from satisfied though you don't let up, you pound the feral's ass until you reach your own pleasant climax and fill the barely conscious hound up with thick spunk. It fills his back passage to the brim and spurts out, drooling down the base of your slowly softening member. Pushing the beast off your cock you stand up triumphant over the creature. You take a few moments to enjoy the sight of the creamed and abused ass of the [FeralMuttCurrentBreed] before you continue on your way, quite satisfied.";
	else if Player is male: [Yes = MALE Identified!]
		say "     Seeing your opportunity for a display of dominance, you position yourself behind the dazed mutt. Fishing out your hardening length, you give yourself a few strokes while holding the flanks of the beaten mutt in place. Pressing the tip of your malehood against the wild dog's anal ring, you slowly push into the tight warm confines, making the mutt below you whine in a mix of pain and pleasure. After a few gentle thrusts, the horny beast is panting and leaning back against your hips. You can feel his gripping confines tighten around you as he shoots his load onto the cold ground below. His canine cock twitches and pulses as it slowly deflates, dripping a little more cum onto the soaked dirt beneath.";
		say "     Far from satisfied though you don't let up, you pound the feral's ass until you reach your own pleasant climax and fill the barely conscious hound up with thick spunk. It fills his back passage to the brim and spurts out, drooling down the base of your slowly softening member. Pushing the beast off your cock you stand up triumphant over the creature. You take a few moments to enjoy the sight of the creamed and abused ass of the [FeralMuttCurrentBreed] before you continue on your way, quite satisfied.";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	add "Feral Mutt" to infections of CanineList;
	add "Feral Mutt" to infections of FurryList;
	add "Feral Mutt" to infections of NatureList;
	add "Feral Mutt" to infections of MaleList;
	add "Feral Mutt" to infections of TaperedCockList;
	add "Feral Mutt" to infections of KnottedCockList;
	add "Feral Mutt" to infections of SheathedCockList;
	add "Feral Mutt" to infections of BipedalList;
	add "Feral Mutt" to infections of TailList;
	now Name entry is "Feral Mutt";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The [FeralMuttFurColor] [FeralMuttCurrentBreed] snaps at you and wounds you with his teeth![or]Jumping up at you, the [FeralMuttFurColor] [FeralMuttCurrentBreed] leaves scratches with his claws.[or]The feral mutt bites you in the leg.[at random]";
	now defeated entry is "[BeatTheFeralMutt]";
	now victory entry is "[LoseToFeralDog]";
	now desc entry is "[FeralMuttDesc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 14;
	now dex entry is 12;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 4;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 35; [ The monster's starting HP. ]
	now lev entry is 6; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 8; [ Monster's average damage when attacking. ]
	now area entry is "Junkyard"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 8;
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 65; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "canine";
	now type entry is "canine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 3 - Mutt Pack

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Mutt"; [name of the overall species of the infection, used for children, ...]
	add "Mutt Pack" to infections of CanineList;
	add "Mutt Pack" to infections of FurryList;
	add "Mutt Pack" to infections of NatureList;
	add "Mutt Pack" to infections of MaleList;
	add "Mutt Pack" to infections of TaperedCockList;
	add "Mutt Pack" to infections of KnottedCockList;
	add "Mutt Pack" to infections of SheathedCockList;
	add "Mutt Pack" to infections of BipedalList;
	add "Mutt Pack" to infections of TailList;
	now Name entry is "Mutt Pack";
	now enemy title entry is "Mutt Pack";
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]A feral mutt snaps at you and wounds you with his teeth![or]Jumping up at you, a feral mutt leaves scratches with his claws.[or]One of the feral mutts bites you in the leg.[at random]";
	now defeated entry is "[BeatTheMuttPack]";
	now victory entry is "[LoseToMuttPack]";
	now desc entry is "";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 18;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 16;
	now int entry is 4;
	now cha entry is 8;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 150; [ The monster's starting HP. ]
	now lev entry is 12; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 15; [ Monster's average damage when attacking. ]
	now area entry is "Nowhere"; [ Case sensitive]
	now Cock Count entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 10;
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples. ]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 65; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "canine";
	now type entry is "canine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is "Feral Mutt"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Section 4 - Mutt Pack Events

Table of GameEventIDs (continued)
Object	Name
Mutt Pack Submission	"Mutt Pack Submission"

Mutt Pack Submission is a situation.
Mutt Pack Submission is inactive. [activated by fighting the mutt pack]
The sarea of Mutt Pack Submission is "Junkyard".

when play begins:
	add Mutt Pack Submission to BadSpots of FurryList;

Instead of resolving a Mutt Pack Submission:
	say "     As you walk the junk yard grounds you hear an unmistakable canine bark behind you. Spinning around to face the noise you spot the feral mutt you had dominated before. And behind that dog is another canine, a large, slightly mangy pit bull. And to the side of him a golden furred shepherd pads a few feet forward. Looking around you see a total of five feral mutts, all males, and all extremely aroused if they're hard red rockets are anything to go off of. They look to you expectantly and you think to ready yourself for a fight until the lead mutt lets out a whine of need and lowers his head before you. Accepting your dominance in their territory and apparently, asking to mate with you.";
	say "     [bold type]Do you want to have sex with the pack?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Accept their submission.";
	say "     ([link]N[as]n[end link]) - Decline for now.";
	if Player consents:
		LineBreak;
		say "[PackSubmissionScenes]";
		now Resolution of Mutt Pack Submission is 1; [accepted their submission]
	else:
		LineBreak;
		say "     You shake your head and begin backing up slowly. At first you expect them to try and take what they want, but they just whine a little while they watch you leave.";
		now Resolution of Mutt Pack Submission is 2; [rejected their submission]

to say PackSubmissionScenes:
	if Player is herm: [herms]
		say "     The idea of mating with a group of submissive feral hounds sends a naughty shiver down your spine. You give a grin and begin to strip, you can already feel yourself flushed with arousal, your crotch already beginning to dampen. After stripping you wade into the group of them and kneel down to scratch the heads of two of the mutts. The others crowd around you, eagerly sniffing you and wagging their tails wildly. You lean in to give a third dog a kiss on the head, still petting the other two you kiss down this new canine's face ending on his muzzle. Meanwhile the other two dogs have ducked they're heads low and have begun licking at your exposed body. They run thick, coarse tongues over your belly before swiping over your nipples and giving you a jolt of pleasure that runs down your back.";
		say "     You moan over the attentions of the submissive pack, but right now, you need more. You're overwhelmed with an intense heat and a need to be ravaged by a pack of dogs. The mutts give a brief whine until you lay back and go spread eagle before them. The pack gives a few joyful barks and then set about enjoying they're shared alpha. Perhaps not what you were expecting, the mutts don't immediately start humping away at you. They all stand over you, gathered around, before lowering their heads and each individual dog starts to lap at your body with a wet, heavenly dog-tongue. Two mutts are licking your lower half while two others lap at your chest. The final mutt, the large one who had originally approached you leans his canine muzzle down to your own. And begins to lick your face, covering most of it in a thin layer of slobber within the first few laps.";
		WaitLineBreak;
		say "     At first a bit hesitant at your face being licked at by an animal you eventually stop moving your head around and just lay back to enjoy the tongue bath. While the other four work below your neck, the mutt licking your face runs his tongue over your ear causing you to moan with parted lips. Whether meaning to or not the dog takes his opportunity and presses his feral muzzle to your lips. Unrolling a thick slobbering dog tongue in your mouth, effectively French kissing you. You moan into his maw and run your own oral-muscle over his wet lips and pointed canine teeth. You find yourself enjoying his taste and musky dog-breath, it seems to only excite and soak your womanhood further. Sniffing more arousal the two mutts licking at your hips change targets, while one licks and slobbers over your knob the other ducks below and presses his canine muzzle into your womanhood pushing his thick tongue into you.";
		say "     You moan loudly into the dog's muzzle as your overwhelmed by pleasant tongues. You explode into a sudden climax and buck your hips up. Right into the two mutts lapping at your crotch, you shoot your load into the first dogs mouth, some of it shooting around his face as he eager swallows it down while the one below is shot with a spray of cum as your pussy quivers and cums over his tongue. Slowly coming down from the bliss of your orgasm you barely notice you're no longer making out with the canine stud anymore, your face now covered in a thick layer of dog slobber. The other mutts have all but backed off, now gathered in a circle around you with the one who had locked lips with you now in between your still raised legs. You can now see the mutts fully aroused, with red dog-cocks that surround you and an intoxicating musk that overwhelms your senses. You give a woozy smile and wiggle your hips, inviting the one between your legs forward.";
		WaitLineBreak;
		say "     Taking that as his go ahead the mutt before you gives a happy bark and leaps on you. Pushing you further onto your back the hound flops his raging hard erection on your belly, rubbing it briefly against your sex. You moan out and lay your arms back, the hound for his part starts to thrust wildly, obviously overtaken by his base nature to be very accurate. Your raise your hips more and wiggle them into his thrusts, it takes a few tries but finally your dog finds home. He thrusts into your soaked cooter and begins to hammer away at you like the dog he is. This mutt's cock in particular has to at least be ten or eleven inches long, with a large thick knot that now humps against your damp lips. And you notice around you the others are around the same size. You can't help but lick your lips in excitement, nearly cumming yourself at the thought of taking all these dog cocks.";
		say "     The one inside you humps away as if he hasn't had a mate in months. Maybe he hasn't with the way he's hammering into you. And it shows too, he begins to speed up even more so after a while. Until he's fucking you with an almost unnatural speed, then he shoves forward suddenly. Shoving the whole of his knot into you all at once. Your mind explodes into white hot ecstasy and so does the hound's. You can feel a months worth of dog cum splatter directly into your womb and you shoot out what feels a similar amount over your chest and crotch. The dog thrusts jaggedly into you as he lets out short barks of pleasure as he drools over your chest. Spurt after spurt of potent canine jism fills you as you clamp around his member and suck every drop of his seed into your womb.";
		WaitLineBreak;
		say "     You lay on the ground, enjoying your aftershocks for some time when suddenly the dog locked in your cunt yanks at his cock embedded deep in your well-fucked cunt. You moan loudly as his nearly foot long length is slowly pulled from your sex. The mutt leans down and gives your pussy a last lick before bounding off behind a junk pile. Looking around you still see the other four mutts surrounding you, looking just as horny as the mutt who had just fucked you. You sigh and you can feel your pussy start to quiver with excitement again. You then turn over and put yourself in the doggy style position. Raising your ass to the group of mutts still waiting their turn. 'Come and get it boys.' You moan out in anticipation.";
		say "     They leap to you, at first there's a small scuffle as to who gets to go next but eventually one wins out. The new mutt, the golden furred shepherd mounts your rear and thrusts into your sloppy cunt. The previous dogs cum runs down your thighs and squishes out of your sex which make wet sucking noises as the golden shepherd fucks you with a renewed vigor. For the next few hours you're fucked by all four dogs. Each of them mounting you, thrusting into you, knotting you, and then filling you up with what feels like gallons of canine spunk. When they're finally done your fucked cunt is stretched wide and gushing a mixture of dog jism and your own juices from it, while your member is just a spent mess covered in your own cum.";
		WaitLineBreak;
		say "     As the final dog pulls his thick cock from you, he stays behind a while to lap at your sloppy cunt for before he too bounds off into the junkyard, barking after his pack. You lay there for a while, ass raised and slowly rubbing your creamed sex as your breathing slows again. Eventually you manage to stand, still very shaky and a little sore from the amazing fucking you've just gotten. You'll have to visit these mutts again sometime... maybe soon if this is what man's best friend is doing nowadays. You walk off contemplating this, globs of canine spunk still seeping out of your pussy and dripping to the ground or down your legs as you walk.";
	else if Player is female: [female]
		say "     The idea of mating with a group of submissive feral hounds sends a naughty shiver down your spine. You give a grin and begin to strip, you can already feel yourself flushed with arousal, your crotch already beginning to dampen. After stripping you wade into the group of them and kneel down to scratch the heads of two of the mutts. The others crowd around you, eagerly sniffing you and wagging their tails wildly. You lean in to give a third dog a kiss on the head, still petting the other two you kiss down this new canine's face ending on his muzzle. Meanwhile the other two dogs have ducked they're heads low and have begun licking at your exposed body. They run thick, coarse tongues over your belly before swiping over your nipples and giving you a jolt of pleasure that runs down your back.";
		say "     You moan over the attentions of the submissive pack, but right now, you need more. You're overwhelmed with an intense heat and a need to be ravaged by a pack of dogs. The mutts give a brief whine until you lay back and go spread eagle before them. The pack gives a few joyful barks and then set about enjoying they're shared alpha. Perhaps not what you were expecting, the mutts don't immediately start humping away at you. They all stand over you, gathered around, before lowering their heads and each individual dog starts to lap at your body with a wet, heavenly dog-tongue. Two mutts are licking your lower half while two others lap at your chest. The final mutt, the large one who had originally approached you leans his canine muzzle down to your own. And begins to lick your face, covering most of it in a thin layer of slobber within the first few laps.";
		WaitLineBreak;
		say "     At first a bit hesitant at your face being licked at by an animal you eventually stop moving your head around and just lay back to enjoy the tongue bath. While the other four work below your neck, the mutt licking your face runs his tongue over your ear causing you to moan with parted lips. Whether meaning to or not the dog takes his opportunity and presses his feral muzzle to your lips. Unrolling a thick slobbering dog tongue in your mouth, effectively French kissing you. You moan into his maw and run your own oral-muscle over his wet lips and pointed canine teeth. You find yourself enjoying his taste and musky dog-breath, it seems to only excite and soak your womanhood further. Sniffing more arousal the two mutts licking at your hips change targets, and both focus on your dripping cunt now.";
		say "     You moan loudly into the dog's muzzle as your overwhelmed by pleasant tongues. You explode into a sudden climax and buck your hips up. Right into the two mutts lapping at your crotch, who lick quickly and eagerly trying to get every drop of your juices to themselves. Slowly coming down from the bliss of your orgasm you barely notice you're no longer making out with the canine stud anymore, your face now covered in a thick layer of dog slobber. The other mutts have all but backed off, now gathered in a circle around you with the one who had locked lips with you now in between your still raised legs. You can now see the mutts fully aroused, with red dog-cocks that surround you and an intoxicating musk that overwhelms your senses. You give a woozy smile and wiggle your hips, inviting the one between your legs forward.";
		WaitLineBreak;
		say "     Taking that as his go ahead the mutt before you gives a happy bark and leaps on you. Pushing you further onto your back the hound flops his raging hard erection on your belly, rubbing it briefly against your sex. You moan out and lay your arms back, the hound for his part starts to thrust wildly, obviously overtaken by his base nature to be very accurate. Your raise your hips more and wiggle them into his thrusts, it takes a few tries but finally your dog finds home. He thrusts into your soaked cooter and begins to hammer away at you like the dog he is. This mutt's cock in particular has to at least be ten or eleven inches long, with a large thick knot that now humps against your damp lips. And you notice around you the others are around the same size. You can't help but lick your lips in excitement, nearly cumming yourself at the thought of taking all these dog cocks.";
		say "     The one inside you humps away as if he hasn't had a mate in months. Maybe he hasn't with the way he's hammering into you. And it shows too, he begins to speed up even more so after a while. Until he's fucking you with an almost unnatural speed, then he shoves forward suddenly. Shoving the whole of his knot into you all at once. Your mind explodes into white hot ecstasy and so does the hound's. You can feel a months worth of dog cum splatter directly into your womb. The dog thrusts jaggedly into you as he lets out short barks of pleasure as he drools over your chest. Spurt after spurt of potent canine jism fills you as you clamp around his member and suck every drop of his seed into your womb.";
		WaitLineBreak;
		say "     You lay on the ground, enjoying your aftershocks for some time when suddenly the dog locked in your cunt yanks at his cock embedded deep in your well-fucked cunt. You moan loudly as his nearly foot long length is slowly pulled from your sex. The mutt leans down and gives your pussy a last lick before bounding off behind a junk pile. Looking around you still see the other four mutts surrounding you, looking just as horny as the mutt who had just fucked you. You sigh and you can feel your pussy start to quiver with excitement again. You then turn over and put yourself in the doggy style position. Raising your ass to the group of mutts still waiting their turn. 'Come and get it boys.' You moan out in anticipation.";
		say "     They leap to you, at first there's a small scuffle as to who gets to go next but eventually one wins out. The new mutt, the golden furred shepherd mounts your rear and thrusts into your sloppy cunt. The previous dogs cum runs down your thighs and squishes out of your sex which make wet sucking noises as the golden shepherd fucks you with a renewed vigor. For the next few hours you're fucked by all four dogs. Each of them mounting you, thrusting into you, knotting you, and then filling you up with what feels like gallons of canine spunk. When they're finally done your fucked cunt is stretched wide and gushing a mixture of dog jism and your own juices from it.";
		WaitLineBreak;
		say "     As the final dog pulls his thick cock from you, he stays behind a while to lap at your sloppy cunt for before he too bounds off into the junkyard, barking after his pack. You lay there for a while, ass raised and slowly rubbing your creamed sex as your breathing slows again. Eventually you manage to stand, still very shaky and a little sore from the amazing fucking you've just gotten. You'll have to visit these mutts again sometime... maybe soon if this is what man's best friend is doing nowadays. You walk off contemplating this, globs of canine spunk still seeping out of your pussy and dripping to the ground or down your legs as you walk.";
	else if Player is male: [male]
		say "     The idea of mating with a group of submissive feral hounds sends a naughty shiver down your spine. You give a grin and begin to strip, you can already feel yourself begin to stiffen with arousal. After stripping you wade into the group of them and kneel down to scratch the heads of two of the mutts. The others crowd around you, eagerly sniffing you and wagging their tails wildly. You lean in to give a third dog a kiss on the head, still petting the other two you kiss down this new canine's face ending on his muzzle. Meanwhile the other two dogs have ducked they're heads low and have begun licking at your exposed body. They run thick, coarse tongues over your belly before swiping over your chest and giving you a jolt of pleasure that runs down your back.";
		say "     You moan over the attentions of the submissive pack, but right now, you need more. You're overwhelmed with an intense heat and a need to ravage this pack of dogs. The mutts give a brief whine until you lay back and pump your cocks a few time to get the point across. The pack gives a few joyful barks and then set about enjoying they're shared alpha. Perhaps not what you were expecting, the mutts don't immediately start humping away at you. They all stand over you, gathered around, before lowering their heads and each individual dog starts to lap at your body with a wet, heavenly dog-tongue. Two mutts are licking your lower half while two others lap at your chest. The final mutt, the large one who had originally approached you leans his canine muzzle down to your own. And begins to lick your face, covering most of it in a thin layer of slobber within the first few laps.";
		WaitLineBreak;
		say "     At first a bit hesitant at your face being licked at by an animal you eventually stop moving your head around and just lay back to enjoy the tongue bath. While the other four work below your neck, the mutt licking your face runs his tongue over your ear causing you to moan with parted lips. Whether meaning to or not the dog takes his opportunity and presses his feral muzzle to your lips. Unrolling a thick slobbering dog tongue in your mouth, effectively French kissing you. You moan into his maw and run your own oral-muscle over his wet lips and pointed canine teeth. You find yourself enjoying his taste and musky dog-breath, it seems to only excite and soak your womanhood further. Sniffing more arousal the two mutts licking at your hips change target and while one licks and slobbers over your knob the other moves lower and begins to lap at your testicles, his long thick tongue reaching back to brush over your ass hole when he licks.";
		say "     You moan loudly into the dog's muzzle as your overwhelmed by pleasant tongues. You explode into a sudden climax and buck your hips up. Right into the two mutts lapping at your crotch, you shoot your load into the first dogs mouth, some of it shooting around his face as he eager swallows it down while the one below continues to lather your balls with warm saliva. Slowly coming down from the bliss of your orgasm you barely notice you're no longer making out with the canine stud anymore, your face now covered in a thick layer of dog slobber.";
		WaitLineBreak;
		say "     The dogs you notice have backed up slightly and have sat down, presenting they're hard aching cocks to you. Waiting for they're alpha to decide, a few mutts whine they're need to you. Feeling reinvigorated you get to your knees and pull one of your pack members forward. He gives out a yip of surprise as you turn him around, lift up his tail and reveal his asshole. Realizing what your doing the mutt pushes back against your hips. Bringing his head down submissively while pushing his ass toward your hard, saliva-slicked manhood.";
		say "     You decide to waste no more time and give the beast what he and his pack wants. You thrust into the black and brown dogs asshole. His heat surrounds you and squeezes you tightly, wringing you while you thrust deep into his back door. The other dogs around you leap and bark in cheer as they're alpha takes his pack mate. You start off hammering away at the mutt, giving him little time to recover after each thrust. After a few moments of rough fucking you grab the dogs head and begin to move in short, lightning-fast thrusts. You grab roughly at his ears and hips before bottoming out inside the mutts right asshole.";
		WaitLineBreak;
		say "     You shoot your load directly into his ass. Soaking it in your seed and causing the dog your fucking to howl in delight and loll his tongue out. His ass quivers around your member as you shoot the last ropes of your jism into your mutt. Seemingly unmoving and passed out you pull your cock from the abused ass of the dog. Your cock is still rock hard and as you look around you see the other four dogs with their backs turned and presenting they're winking assholes to you. A few of them shake in anticipation and you feel yourself driven forward, moving and thrusting your member in another mutt's ass.";
		say "     You fuck the new dog raw, pounding him hard before pulling out and cumming on his furry back. Then you take the next, then the next, and finally you fuck the last beast surrounding you until you're surrounded by panting, cum covered canines. You yourself are staggering and drained dry from the pack of dogs. You wipe your cock clean on the ass of your final conquest and stand up slowly, stretching and giving one last look at the pack of mutts before smiling and heading off, eager to run into another pack.";

Table of GameEventIDs (continued)
Object	Name
Mutt Pack Attack	"Mutt Pack Attack"

Mutt Pack Attack is a situation.
Mutt Pack Attack is inactive.
The sarea of Mutt Pack Attack is "Junkyard".

when play begins:
	add Mutt Pack Attack to BadSpots of FurryList;

Instead of resolving a Mutt Pack Attack:
	say "     As you walk the junk yard grounds you hear an unmistakable canine bark behind you. Spinning around to face the noise you spot the feral mutt that had bred you earlier. And behind that dog is another canine, a large, slightly mangy pit bull. And to the side of him a golden furred shepherd pads a few feet forward. Looking around you see a total of five feral mutts, all males, and all extremely aroused if they're hard red rockets are anything to go off of. The one that had fucked you before strides closer, growling and standing tall, his veiny cock swaying as he moves. It doesn't take a genius to know what he wants, you, and now.";
	say "     [bold type]Are you gonna submit like a good bitch or fight back?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Submit.";
	say "     ([link]N[as]n[end link]) - Fight them!";
	if Player consents:
		LineBreak;
		if Player is herm: [herms]
			say "     Backing up, a bit intimidated you can't help but grow both wet and hard at the thought of being dominated by not only one but five feral dogs. You strip what you can then fall to your hands and knees, then turning around to give it a little wiggle in the dog's direction. Giving a loud bark the large mutt leaps onto your back, doggy style. His slobbering muzzle brushes over your neck as his legs grip your hips and he humps wildly at your ass. The other mutts crowd around you, leaning into sniff and lick at you while they're alpha humps you. Finally after a few blind thrusts his tip penetrates your lips. You moan out and there's a cacophony of barks as he slips into you.";
			say "     Not slowing his humping he hammers at your pussy, his squirting canine pre-cum lubing you up and sending stings of pleasure through you as he goes. You moan loudly and shut your eyes only to have a shadow go over your head and a musky head brush over your lips. Opening your eyes you see the golden shepherd has walked over your head and parked himself there. His nearly foot long canine cock waiting and throbbing expectantly for service. Not wanting to disappoint you open your mouth and move your tongue down the length of his musky meat. You lean in and take the tip of the knotted cock in your mouth.";
		else if Player is female:
			say "     Backing up, a bit intimidated you can't help but grow a little wet at the thought of being dominated by not only one but five feral dogs. You strip what you can then fall to your hands and knees, then turning around to give it a little wiggle in the dog's direction. Giving a loud bark the large mutt leaps onto your back, doggy style. His slobbering muzzle brushes over your neck as his legs grip your hips and he humps wildly at your ass. The other mutts crowd around you, leaning into sniff and lick at you while they're alpha humps you. Finally after a few blind thrusts his tip penetrates your lips. You moan out and there's a cacophony of barks as he slips into you.";
			say "     Not slowing his humping he hammers at your pussy, his squirting canine pre-cum lubing you up and sending stings of pleasure through you as he goes. You moan loudly and shut your eyes only to have a shadow go over your head and a musky head brush over your lips. Opening your eyes you see the golden shepherd has walked over your head and parked himself there. His nearly foot long canine cock waiting and throbbing expectantly for service. Not wanting to disappoint you open your mouth and move your tongue down the length of his musky meat. You lean in and take the tip of the knotted cock in your mouth.";
		else if Player is male:
			say "     Backing up, a bit intimidated you can't help but grow a little hard at the thought of being dominated by not only one but five feral dogs. You strip what you can then fall to your hands and knees, then turning around to give it a little wiggle in the dog's direction. Giving a loud bark the large mutt leaps onto your back, doggy style. His slobbering muzzle brushes over your neck as his legs grip your hips and he humps wildly at your ass. The other mutts crowd around you, leaning into sniff and lick at you while they're alpha humps you. Finally after a few blind thrusts his tip penetrates the rim of your ass. You moan out and there's a cacophony of barks as he slips into you.";
			say "     Not slowing his humping he hammers at your ass, his squirting canine pre-cum lubing you up and sending stings of pleasure through you as he goes. You moan loudly and shut your eyes only to have a shadow go over your head and a musky head brush over your ass. Opening your eyes you see the golden shepherd has walked over your head and parked himself there. His nearly foot long canine cock waiting and throbbing expectantly for service. Not wanting to disappoint you open your mouth and move your tongue down the length of his musky meat. You then lean in and take the tip of the knotted cock in your mouth.";
		WaitLineBreak;
		say "[PackDominanceScenes]";
		now Resolution of Mutt Pack Attack is 1; [submitted to them]
	else:
		LineBreak;
		say "     Hell no, you're not laying down like a bitch! You ready yourself for a fight.";
		challenge "Mutt Pack";
		now Resolution of Mutt Pack Attack is 2; [fought them]

to say PackDominanceScenes:
	setmonster "Feral Mutt";
	if Player is herm: [herms]
		say "     It tastes salty and delicious, the red dog cock throbs in your mouth as you slowly start sucking. Two of the other mutts have leaned in and started to lap at your chest, your dangling nipples licked and drooled over by rough doggy tongues. And out of the corner of your eye you see the final mutt, a big brown pit bull, sitting near you, whining quietly as he watches you. You smile around a spit slicked red rocket and wrap your hand around the pit bulls waiting man-meat. He groans in pleasure and humps up into your hand. All the while the brown mutt who had dominated you from the start continues to plow into your soaking sex while your throbbing member flops back and forth.";
		say "     The dogs knot constantly pushed against your lips the mutt thrusts one last time, hard. He shoves his entire knot into you in one final thrust. Your eyes shoot open and you climax suddenly, screaming around the dog cock you're currently slobbering over as you clamp down around the thick canine member fucking you and shoot your load onto the ground below you, splattering your knees with your own seed. As you cum, so does the dog now locked inside you. He shoots what feels like a gallon of potent dog seed into your womb. Rope after thick, white rope of seed shoots into you and coats your walls, not a drop of it able to leak out around his knot bulging your stomach slightly. Not shortly after the meaty member you're sucking also explodes into your mouth. Most of it shooting down your throat while some of it overflows your mouth and leaks down your chin.";
		WaitLineBreak;
		say "     While swallowing down gulps of feral seed, some of it dripping down your neck and chest you feel more warm seed cover your hand. The pit bull you were jerking whines out and shoots his load over your hand. You clean off the mutt who is now slightly swaying above you and drink down what remaining seed there is. You're sure to lick your hand clean from the pit bull as well, mixing the delicious seed together in your mouth. When you're finished the mutts back off, the one tied inside you yanking his knotted cock free in a mixture of pain and pleasure. A wave of white canine spunk flows out of your abused pussy as he does.";
		say "     Not a minute after barely having had time to recover another dog leaps onto your back burying his canine dong into you. You yell out in surprise but sigh pleasantly as you're once again fucked. And as you look up you see from your ground position you see four still hard dog cocks before, each nearly a foot in size. You lick your lips and get to work on your duties as a bitch. When they're finally done with you, you've been fucked senseless. Your cunt is stretched wide and is leaking globs of feral seed from it, running down your thighs and dripping onto the ground below while your cock is drained and leaking a few final drops of white seed. You're slightly delirious from the constant fuck but are positively glowing, biting your lower lip and fondling your ruined pussy while thinking about the next time. It seems the dogs have all wandered off, leaving you to recover on your own time...";
		fimpregchance;
	else if Player is female:
		say "     It tastes salty and delicious, the red dog cock throbs in your mouth as you slowly start sucking. Two of the other mutts have leaned in and started to lap at your chest, your dangling nipples licked and drooled over by rough doggy tongues. And out of the corner of your eye you see the final mutt, a big brown pit bull, sitting near you, whining quietly as he watches you. You smile around a spit slicked red rocket and wrap your hand around the pit bulls waiting man-meat. He groans in pleasure and humps up into your hand. All the while the brown mutt who had dominated you from the start continues to plow into your soaking sex.";
		say "     The dogs knot constantly pushed against your lips the mutt thrusts one last time, hard. He shoves his entire knot into you in one final thrust. Your eyes shoot open and you climax suddenly, screaming around the dog cock you're currently slobbering over as you clamp down around the thick canine member fucking you. As you cum, so does the dog now locked inside you. He shoots what feels like a gallon of potent dog seed into your womb. Rope after thick, white rope of seed shoots into you and coats your walls, not a drop of it able to leak out around his knot bulging your stomach slightly. Not shortly after the meaty member you're sucking also explodes into your mouth. Most of it shooting down your throat while some of it overflows your mouth and leaks down your chin.";
		WaitLineBreak;
		say "     While swallowing down gulps of feral seed, some of it dripping down your neck and chest you feel more warm seed cover your hand. The pit bull you were jerking whines out and shoots his load over your hand. You clean off the mutt who is now slightly swaying above you and drink down what remaining seed there is. You're sure to lick your hand clean from the pit bull as well, mixing the delicious seed together in your mouth. When you're finished the mutts back off, the one tied inside you yanking his knotted cock free in a mixture of pain and pleasure. A wave of white canine spunk flows out of your abused pussy as he does.";
		say "     Not a minute after barely having had time to recover another dog leaps onto your back burying his canine dong into you. You yell out in surprise but sigh pleasantly as you're once again fucked. And as you look up you see from your ground position you see four still hard dog cocks before, each nearly a foot in size. You lick your lips and get to work on your duties as a bitch. When they're finally done with you, you've been fucked senseless. Your cunt is stretched wide and is leaking globs of feral seed from it, running down your thighs and dripping onto the ground below. You're slightly delirious from the constant fuck but are positively glowing, biting your lower lip and fondling your ruined pussy while thinking about the next time. It seems the dogs have all wandered off, leaving you to recover on your own time...";
		fimpregchance;
	else if Player is male:
		say "     It tastes salty and delicious, the red dog cock throbs in your mouth as you slowly start sucking. Two of the other mutts have leaned in and started to lap at your chest, your sensitive nipples licked and drooled over by rough doggy tongues. And out of the corner of your eye you see the final mutt, a big brown pit bull, sitting near you, whining quietly as he watches you. You smile around a spit slicked red rocket and wrap your hand around the pit bulls waiting man-meat. He groans in pleasure and humps up into your hand. All the while the brown mutt who had dominated you from the start continues to plow into your soaking sex while your throbbing member flops back and forth.";
		say "     The dogs knot constantly pushed against your asshole the mutt thrusts one last time, hard. He shoves his entire knot into you in one final thrust. Your eyes shoot open and you climax suddenly, screaming around the dog cock you're currently slobbering over as you clamp down around the thick canine member fucking you and shoot your load onto the ground below you, splattering your knees with your own seed. As you cum, so does the dog now locked inside you. He shoots what feels like a gallon of potent dog seed into your innards. Rope after thick, white rope of seed shoots into you and coats your walls, not a drop of it able to leak out around his knot bulging your stomach slightly. Not shortly after the meaty member you're sucking also explodes into your mouth. Most of it shooting down your throat while some of it overflows your mouth and leaks down your chin.";
		WaitLineBreak;
		say "     While swallowing down gulps of feral seed, some of it dripping down your neck and chest you feel more warm seed cover your hand. The pit bull you were jerking whines out and shoots his load over your hand. You clean off the mutt who is now slightly swaying above you and drink down what remaining seed there is. You're sure to lick your hand clean from the pit bull as well, mixing the delicious seed together in your mouth. When you're finished the mutts back off, the one tied inside you yanking his knotted cock free in a mixture of pain and pleasure. A wave of white canine spunk flows out of your abused ass as he does.";
		say "     Not a minute after barely having had time to recover another dog leaps onto your back burying his canine dong into you. You yell out in surprise but sigh pleasantly as you're once again fucked. And as you look up you see from your ground position you see four still hard dog cocks before, each nearly a foot in size. You lick your lips and get to work on your duties as a bitch. When they're finally done with you, you've been fucked senseless. Your rear end is stretched wide and is leaking globs of feral seed from it, running down your thighs and balls while some just drips onto the ground below while your cock is drained and leaking a few final drops of white seed. You're slightly delirious from the constant fuck but are positively glowing, biting your lower lip and fondling your ruined asshole while thinking about the next time. It seems the dogs have all wandered off, leaving you to recover on your own time...";
		mimpregchance;

to say LoseToMuttPack:
	setmonster "Feral Mutt";
	if Player is herm: [herms]
		say "     Your gear torn and you beaten you fall to your hands and knees, your backside to unintentionally facing the pack of mutts. Giving a loud bark the large mutt leaps onto your back, doggy style. His slobbering muzzle brushes over your neck as his legs grip your hips and he humps wildly at your ass. The other mutts crowd around you, leaning into sniff and lick at you while their alpha brutally humps at you. Finally after a few blind thrusts his tip penetrates your lips. You moan out and there's a cacophony of barks as he slips into you.";
		say "     Not slowing his humping he hammers at your pussy, his squirting canine pre-cum lubing you up and sending stings of pleasure through you as he goes. You moan loudly in forced pleasure and shut your eyes only to have a shadow go over your head and a musky head brush over your lips. Opening your eyes you see the golden shepherd has walked over your head and parked himself there. His nearly foot long canine cock waiting and throbbing expectantly for service. Not having much choice considering your position you open your move and move your tongue down the length of his musky meat. You then lean in and take the tip of the knotted cock in your mouth.";
	else if Player is female:
		say "     Your gear torn and you beaten you fall to your hands and knees, your backside to unintentionally facing the pack of mutts. Giving a loud bark the large mutt leaps onto your back, doggy style. His slobbering muzzle brushes over your neck as his legs grip your hips and he humps wildly at your ass. The other mutts crowd around you, leaning into sniff and lick at you while their alpha brutally humps at you. Finally after a few blind thrusts his tip penetrates your lips. You moan out and there's a cacophony of barks as he slips into you.";
		say "     Not slowing his humping he hammers at your pussy, his squirting canine pre-cum lubing you up and sending stings of pleasure through you as he goes. You moan loudly in forced pleasure and shut your eyes only to have a shadow go over your head and a musky head brush over your lips. Opening your eyes you see the golden shepherd has walked over your head and parked himself there. His nearly foot long canine cock waiting and throbbing expectantly for service. Not having much choice considering your position you open your move and move your tongue down the length of his musky meat. You then lean in and take the tip of the knotted cock in your mouth.";
	else if Player is male:
		say "     Your gear torn and you beaten you fall to your hands and knees, your backside to unintentionally facing the pack of mutts. Giving a loud bark the large mutt leaps onto your back, doggy style. His slobbering muzzle brushes over your neck as his legs grip your hips and he humps wildly at your ass. The other mutts crowd around you, leaning into sniff and lick at you while their alpha brutally humps at you. Finally after a few blind thrusts his tip penetrates the rim of your ass. You moan out and there's a cacophony of barks as he slips into you.";
		say "     Not slowing his humping he hammers at your asshole, his squirting canine pre-cum lubing you up and sending stings of pleasure through you as he goes. You moan loudly in forced pleasure and shut your eyes only to have a shadow go over your head and a musky head brush over your ass. Opening your eyes you see the golden shepherd has walked over your head and parked himself there. His nearly foot long canine cock waiting and throbbing expectantly for service. Not having much choice considering your position you open your move and move your tongue down the length of his musky meat. You then lean in and take the tip of the knotted cock in your mouth.";
	WaitLineBreak;
	say "[PackDominanceScenes]";

to say BeatTheMuttPack:
	say "     You beat back the feral rapists and leave them bruised and whimpering on the grimy ground below. Dusting yourself off, you take your leave of the junkyard dogs.";

Feral Mutt ends here.
