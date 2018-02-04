Version 1 of Feral Mutt by CrimsonAsh begins here.

"Adds a Feral Dog creature to Flexible Survival's Wandering Monsters table"

FeralMuttCurrentBreed is a text that varies.
FeralMuttDetailedLook is a text that varies.
FeralMuttFurColor is a text that varies.
FeralMuttFurColorNumber is a number that varies.

Section 1 - Monster Responses

when play begins:
	add { "Feral Mutt" } to infections of guy;
	add { "Feral Mutt" } to infections of furry;
	add { "Feral Mutt" } to infections of feral;

to RandomizeFeralMutt:
	if a random chance of 1 in 2 succeeds: 
		now FeralMuttFurColorNumber is 1;
	else: 
		now FeralMuttFurColorNumber is 2;
	let randomnumber be a random number from 1 to 6; [adjust the latter number for the number of options]
	if randomnumber is:
	-- 1:
		now FeralMuttFurColor is "[if FeralMuttFurColorNumber is 1]brown[else]grey[end if]";
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
	if HP of player > 0:  								  [DID THE PLAYER SUBMIT? - YES]
		if cunts of player > 0 and cocks of player is 0:  	  [Yes = FEMALE Identified!]
			say "     Backing up, you place your arms up and lay back down on the cold ground, fully submitting to the canine beast. Before you can act further, the dog surges forward, tearing off your underclothes with sharp canines. Leaping atop your form at a moment's notice, the mutt's cock has since grown to its full eight inch erectness with a bulging, red knot at the base. Thrusting wildly at your tummy, the feral covers your neck and face in doggy kisses and slobber. The musky smell of the beast fills your senses and better judgement as he finds home in your cunt. Throwing your head back at the sudden penetration, the dog hilts himself to the knot inside of you in one lucky hump before he pulls back and resumes thrusting. As the dog's exotic, red cock ruts into your tender sex, the feral beast continues to lick and kiss your face and neck. Hammering into you, you're overcome with a feral base lust and start to moan and yip like a bitch in heat.";
			say "     Taking advantage of your parted lips, the beast slips his long, rough canine tongue into your mouth, tangling it with your own. It explores every inch of your mouth, and waves of tasty slobber follows, only further exciting you. As the feral beast essentially spit roasts you, he begins to speed up, humping with incredible speed into your receptive cunt. Letting his tongue withdraw from your mouth with a trail of saliva, the mutt bites down on your neck, enough to hold you firmly but not enough to draw blood. With one final massive thrust, the dog hilts himself in you again and continues to push, popping his huge, swollen knot into your soaked cunt. You let out a shriek of pleasure and clamp down around his hot doggy cock and climax. Still stuck firmly inside of your heavenly sex, the feral follows right after you and cums as well. Pumping load after load of fertile canine cum into you, the dog growls into your neck as he breeds you like a good bitch.";
			fimpregchance;
			WaitLineBreak;
			say "     Coming down from your climax, the dog stays in his dominant missionary position as your sex milks the last drops of his dog seed into you. He resumes covering your face in wet kisses while waiting for his large knot to deflate in you. You faithfully make out with your canine mate until he slips out of your sensitive lips. You let out a moan as he slides out of your well-fucked pussy and then trots off, seemingly content with his breeding. You lay there for a while, rubbing your cum-slicked lips as dog jizz runs down your thighs, before getting up and going on your way.";
		else if cunts of player is 0 and cocks of player > 0:    [Yes = MALE Identified!]
			say "     Backing up, you place your arms up and lay back down on the cold ground, fully submitting to the canine beast. Before you can act further, the dog surges forward, tearing off your underclothes with sharp canines. Leaping atop your form at a moment's notice, the mutt's cock has since grown to its full eight inch erectness with a bulging, red knot at the base. Thrusting wildly at your tummy, the feral covers your neck and face in doggy kisses and slobber. The musky smell of the beast fills your senses and better judgement as he finds home in your ass. Throwing your head back at the sudden penetration, the dog hilts himself to the knot inside of you in one lucky hump before he pulls back and resumes thrusting. As the dog's exotic, red cock ruts into your tender anus, the feral beast continues to lick and kiss your face and neck. Hammering into you, you're overcome with a feral base lust and start to moan and yip like a bitch in heat.";
			say "     Taking advantage of your parted lips, the beast slips his long, rough canine tongue into your mouth, tangling it with your own. It explores every inch of your mouth, and waves of tasty slobber follows, only further exciting you. As the feral beast essentially spit roasts you, he begins to speed up, humping with incredible speed into your receptive ass. Letting his tongue withdraw from your mouth with a trail of saliva, the mutt bites down on your neck, enough to hold you firmly but not enough to draw blood. With one final massive thrust, the dog hilts himself in you again and continues to push, popping his huge, swollen knot into your abused hole. You let out a shriek of pleasure and clamp down around his hot doggy cock, and you shoot your own load all over your chest as you spasm around the canine's member. Still stuck firmly inside of your heavenly sex, the feral follows right after you and cums as well. Pumping load after load of fertile canine cum into you, the dog growls into your neck as he breeds you like a good bitch.";
			mimpregchance;
			WaitLineBreak;
			say "     Coming down from your climax the dog stays in his dominant missionary position as your tender butt milks the last drops of his dog seed into you. He resumes covering your face in wet kisses while waiting for his large knot to deflate in you. You faithfully make out with your canine mate until he slips out of your sensitive lips. You let out a moan as he slides out of your well-fucked ass and then trots off, seemingly content with his breeding. You lay there for a while, rubbing your cum-slicked hole as dog jizz runs down your thighs, before getting up and going on your way.";
		else if cunts of player > 0 and cocks of player > 0:  			  [Yes = HERM Identified!]
			say "     Backing up you place your arms up and lay your back down on the cold ground below, fully submitting to the canine beast. Before you can act further, surging forward the dog tears off your underclothes with sharp canines. Leaping atop your form at a moments notice the mutts cock has since grown to its full eight inch erectness with a bulging red knot at the base. Thrusting wildly at your tummy the feral covers your neck and face in doggy kisses and slobber. The musky smell of the beast filling your senses and better judgement as he finds home in your cunt. Throwing your head back at the sudden penetration the dog hilts himself to the knot inside you in one lucky hump before he pulls back and resumes thrusting. As the dog's exotic red cock ruts into your tender sex the feral beast continues to lick and kiss your face and neck. Hammering into you, your overcome with a feral base lust and start to moan and yip like a bitch in heat.";
			say "     Taking advantage of your parted lips the beast slips his long canine tongue into your mouth as his rough tongue tangles with your own. It explores every inch of your mouth and waves of tasty slobber follows, only further exciting you. As the feral beast essentially spit roasts you, he begins to speed up, humping with incredible speed into your receptive cunt. Letting his tongue withdraw from your mouth with a trail of saliva the mutt bites down on your neck, enough to hold you firmly but not enough to draw blood. With one final massive thrust the dog hilts himself in you again and continues to push, popping his huge swollen knot into your soaked cunt you let out a shriek of pleasure and clamp down around his hot doggy cock and climax. You shoot your own load all over your chest as you spasm around the canine's member. Following with you and stuck firmly inside your heavenly sex the feral cums as well. Pumping load after load of fertile canine cum into you the dog growls into your neck as he breeds you like a good bitch.";
			fimpregchance;
			WaitLineBreak;
			say "     Coming down from your climax the dog stays in his dominant missionary position as your sex milks the last drops of his dog seed into you. He resumes covering your face in wet kisses while waiting for his large knot to deflate in you. You faithfully make out with your canine mate until he slips out of your sensitive lips. You let out a moan as it slides out of your well fucked pussy and then trots off, seemingly content with its breeding. You lay there for a while rubbing your cum slicked lips as dog jizz runs down your thighs before getting up and going on your way.";
	else:  										  [PLAYER LOST THE FIGHT!]
		if cunts of player > 0 and cocks of player is 0:  	  [Yes = FEMALE Identified!]
			say "     Covered in scratches and bites, you fall on your back, struggling to crawl away. Mid-crawl, the feral dog leaps atop your back and digs his jaws into your neck, pinching tightly but not quite enough to draw blood. The dog's tongue laps at your neck, covering it in slobber, as his hind legs yank down any obstructions you have between the canine and his prize. He humps wildly at your raised ass, rubbing his fully erect dog cock between your ass cheeks. Before long, he hits his mark, thrusting into your cunt and smashing his knot against your wet lips. The dog growls and barks as he fucks you. You moan as the canine pounds into you, and you begin to pant as the feral beast dominates and breeds your now willing body. Thrusting your ass back against the dog in time with his wild humps, you bark in pleasure as the male mutt pushes into you further, popping his swollen knot into your abused pussy lips.";
			say "     You throw your head back as he locks inside of you, now humping in short, sporadic bursts. The beast doesn't last much longer, slamming into you one last time and flooding your womb with thick spurts of canine seed. You moan in surprise and pleasure as you clamp down around his invading member, milking your mate's doggy cock as if it were all that mattered. Panting warm drool on your back, the dog leaps off of your back a moment later, yanking his still hard cock from your abused cunt. A tide of seed flows out of you and onto the ground below, soaking your thighs and legs in sticky cum. Looking back at your beast, you see him turning a corner and wandering off, likely searching for another bitch to breed.";
			fimpregchance;
		else if cunts of player is 0 and cocks of player > 0:  	  [Yes = MALE Identified!]
			say "     Covered in scratches and bites you fall on your back struggling to crawl away. Mid-crawl the feral dog leaps atop your back and digs his jaws into your neck pinching tightly but not quite drawing blood. The dog's tongue laps at your neck covering it in slobber as his hind legs yank down any obstructions you have between the canine and his prize. He humps wildly at your raised ass rubbing his fully erect dog cock between your ass cheeks. Before long he hits his mark, thrusting into your tight ass and smashing his knot against your anal ring the dog growls and barks as he fucks you. You moan as the canine pounds into you, you begin to pant as the feral beast dominates and breeds your now willing body. Thrusting your ass back against the dog in time with his wild humps you bark in pleasure as the male mutt pushes into you further, popping his swollen knot into your abused asshole.";
			say "     You throw your head back as he locks inside you, now humping in short sporadic bursts. The beast doesn't last much longer, slamming into you one last time and flooding your innards with thick spurts of canine seed. You moan in surprise and pleasure as you clamp down around his invading member, milking your mates doggy cock as if it were all that mattered. You find your own orgasm, jetting your load on the ground below and splattering on your lower half. Panting warm drool on your back the dog leaps off your back a moment later yanking his still hard cock from your abused ass. A tide of seed flows out of you and onto the ground below, soaking your thighs and legs in sticky cum. Looking back at your beast you see him turning a corner and wondering off, likely searching for another bitch to breed.";
			mimpregchance;
		else if cunts of player > 0 and cocks of player > 0:  			  [Yes = HERM Identified!]
			say "     Covered in scratches and bites you fall on your back struggling to crawl away. Mid-crawl the feral dog leaps atop your back and digs his jaws into your neck pinching tightly but not quite drawing blood. The dog's tongue laps at your neck covering it in slobber as his hind legs yank down any obstructions you have between the canine and his prize. He humps wildly at your raised ass rubbing his fully erect dog cock between your ass cheeks. Before long he hits his mark, thrusting into your cunt and smashing his knot against your wet lips the dog growls and barks as he fucks you. You moan as the canine pounds into you, you begin to pant as the feral beast dominates and breeds your now willing body. Thrusting your ass back against the dog in time with his wild humps you bark in pleasure as the male mutt pushes into you further, popping his swollen knot into your abused pussy lips.";
			say "     You throw your head back as he locks inside you, now humping in short sporadic bursts. The beast doesn't last much longer, slamming into you one last time and flooding your womb with thick spurts of canine seed. You moan in surprise and pleasure as you clamp down around his invading member, milking your mates doggy cock as if it were all that mattered. You find your own orgasm, jetting your load on the ground below and splattering on your lower half. Panting warm drool on your back the dog leaps off your back a moment later yanking his still hard cock from your abused cunt. A tide of seed flows out of you and onto the ground below, soaking your thighs and legs in sticky cum. Looking back at your beast you see him turning a corner and wandering off, likely searching for another bitch to breed.";
			fimpregchance;

to say BeatTheFeralMutt:
	say "     After your assault, the dog collapses and whines sadly. As he struggles to stand, he wavers and falls over. You then notice his still hard cock poking out of his sheath, the tip drooling a bit of pre.";
	say "     [bold type]Should you have a little fun with the feral beast?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, screw that pooch.";
	say "     ([link]N[as]n[end link]) - No, no thank you.";
	if the player consents: [Decides to fuck feral dog]
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
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 3;
		now description entry is "Thrust your dick into the [FeralMuttFurColor] [FeralMuttCurrentBreed]'s ass";
	[]	
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Suck him off"):
					say "[SuckFeralMutt]";
				if (nam is "Ride his cock"):
					say "[RideFeralMutt]";
				if (nam is "Fuck his ass"):
					say "[FuckFeralMutt]";					
				now lastfuck of Brennan is turns;
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the [FeralMuttFurColor] [FeralMuttCurrentBreed], shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say RideFeralMutt:
	if cunts of player > 0 and cocks of player is 0:  	  [Yes = FEMALE Identified!]
		say "     Pushing the mutt onto his back, he whines pathetically while you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Whether understanding you or just because that he lost is a mystery, but he doesn't struggle as you stroke his red rocket and align it with your damp lips. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your lips, you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, and you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big, furry chest you start to speed up, feeling yourself getting closer to your climax.";
		say "     The beast below you cums first, shooting jets of canine seed into your eager cunt. Not willing to take that from the loser of the fight, you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your female juices over his abdomen. As your bouncing on the feral cock slows to a stop, you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually, it deflates enough for you to slip it out and stand up. You give the dog a pat on the head as you gather your things and get back on your way.";
		fimpregchance;
	else if cunts of player is 0 and cocks of player > 0:  	  [Yes = MALE Identified!]
		say "     Pushing the mutt onto his back he whines pathetically while you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Whether understanding you or just that he lost is a mystery but he doesn't struggle as you stroke his red rocket and align it up with your back entrance. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your sensitive anal ring you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big furry chest you start to speed up, growing increasingly as you feel yourself growing closer to your climax.";
		say "     With your other hand you begin to stroke your own member, feeling yourself approaching fast. The beast below you cums first, shooting jets of canine seed into your eager hole. Not willing to take that from the loser of the fight you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your male juices over his abdomen. Coming down as your bouncing on the feral cock slows to a stop you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually it deflates enough for you to slip it out and stand up, giving the dog a pat on the head as you gather your things and get back on your way.";
		mimpregchance;
	else if cunts of player > 0 and cocks of player > 0:  			  [Yes = HERM Identified!]
		say "     Pushing the mutt onto his back he whines pathetically while you straddle his lap. You grin down at the dog and tell him to just stay still and be a good boy. Whether understanding you or just that he lost is a mystery but he doesn't struggle as you stroke his red rocket and align it up with your damp lips. You drop down on him, throwing your head back as you sink down to his knot. Pressing the bulging knot against your lips you start to slowly ride up and down atop the canine, taking what you want from this wild mutt. The dog yips and whines in submission below you, you can see him panting and drooling as pleasure overwhelms his basic senses. Laying your hands on his big furry chest you start to speed up, growing increasingly as you feel yourself growing closer to your climax.";
		say "     With your other hand you begin to stroke your own member, feeling yourself approaching fast. The beast below you cums first, shooting jets of canine seed into your eager cunt. Not willing to take that from the loser of the fight you slam your full weight down onto the dog cock, pushing his knot into you. You clamp down around him like a vice and spray your male juices over his abdomen. Coming down as your bouncing on the feral cock slows to a stop you grin down at your defeated canine foe and lean over to give him a smooch on the snout while you wait for his knot to go down. Eventually it deflates enough for you to slip it out and stand up, giving the dog a pat on the head as you gather your things and get back on your way.";
		fimpregchance;

to say SuckFeralMutt:
	if cunts of player > 0 and cocks of player is 0:  	  [Yes = FEMALE Identified!]
		say "     Striding up to the creature, you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. Looking hungrily at the exotic cock, you lick your lips and duck beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. The dog wavers to the side and falls over, cock still being suckled by you as he lays on his side and whimpers in pleasure. You suck on the dog meat and rub the balls of the [FeralMuttCurrentBreed] before popping the raging-hard, red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog, you can feel your head swimming and your desire growing as you press your nose to the feral's scrotum, taking in his sexy, masculine scent.";
		say "     The dog, for his part, is on his side, tongue lolled out and panting in pleasure. You smile at the beast, letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking all the way to his knot. Holding there for a minute, you let your throat massage his canine cock. Suddenly, a torrent of thick feral seed is flooding your stomach, so much that it fills your mouth and oozes around your lips, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds as you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks, you look up to see the dog snoring soundly. You shake your head and smile. You wipe a dribble of canine cum from your chin and swallow it with a final smack of your lips before moving on.";
	else if cunts of player is 0 and cocks of player > 0:  	  [Yes = MALE Identified!]
		say "     Striding up to the creature you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. You lick your lips looking hungrily at the exotic cock and ducking beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. The dog waivers to the side and falls over, cock still being suckled by you as he lays on his side whimpering in pleasure. You suck on the dog meat and rub the balls of the [FeralMuttCurrentBreed] before popping the raging hard red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog you can feel your head swimming and your desire growing as you press your nose to the ferals scrotum taking in his sexy masculine scent.";
		say "     The dog for his part is on his side, tongue lolled out and panting in pleasure. You smile at the beast letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking it all the way to his knot. Holding their for a minute letting your throat massage his canine cock. Suddenly a torrent of thick feral seed is flooding your stomach, so much so that it fills your mouth and oozes around your lips and mouth, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks you look up to see the dog snoring soundly. You shake your head and smile, wiping a dribble of canine cum from your chin and swallowing it with a final smack of your lips before moving on.";
	else if cunts of player > 0 and cocks of player > 0:  			  [Yes = HERM Identified!]
		say "     Striding up to the creature you grab hold of his doggy cock, squeezing it and feeling it pulse and grow as spurts of canine pre dribble out of its tip. You lick your lips looking hungrily at the exotic cock and ducking beneath the muscled feral's furry underbelly to get a taste. You lick the long dog rod from knot to tip before taking the tasty meat into your maw and sliding it slowly down your throat. The dog waivers to the side and falls over, cock still being suckled by you as he lays on his side whimpering in pleasure. You suck on the dog meat and rub the balls of the [FeralMuttCurrentBreed] before popping the raging hard red rocket out and trailing your tongue down to his large gonads. Taking in the musky smell of the male dog you can feel your head swimming and your desire growing as you press your nose to the ferals scrotum taking in his sexy masculine scent.";
		say "     The dog for his part is on his side, tongue lolled out and panting in pleasure. You smile at the beast letting a testicle fall from your mouth before taking the dog's engorged member back into your mouth and sinking it all the way to his knot. Holding their for a minute letting your throat massage his canine cock. Suddenly a torrent of thick feral seed is flooding your stomach, so much so that it fills your mouth and oozes around your lips and mouth, trickling down your chin and onto the ground below. You swallow it down eagerly, making wet sucking and swallowing sounds you clean the canine thoroughly, drinking down every drop of musky seed. Letting the softening dog dong fall from your lips with a few final licks you look up to see the dog snoring soundly. You shake your head and smile, wiping a dribble of canine cum from your chin and swallowing it with a final smack of your lips before moving on.";

to say FuckFeralMutt:
	if cunts of player is 0 and cocks of player > 0:  	  [Yes = MALE Identified!]
		say "     Seeing your opportunity for a display of dominance you position yourself behind the dazed mutt. Fishing out your hardening length you give yourself a few strokes whilst holding the flanks of the beaten mutt in place. Pressing the tip of your male-hood against the wild dog's anal ring, you slowly push into the tight warm confines, making the mutt below you whine in a mix of pain and pleasure. Before long though, after a few gentle thrusts the horny beast is panting and leaning back against your hips. You can feel his tight confines tighten around you as he shoots his load onto the cold ground below. His canine cock twitches and pulses as it slowly deflates, dripping a little more cum onto the soaked dirt beneath.";
		say "     Far from satisfied though you don't let up, you pound the feral's ass until you reach your own pleasant climax and fill the barely conscious hound up with thick spunk. It fills his back passage to the brim and spurts out, drooling down the base of your slowly softening member. Pushing the beast off your cock you stand up triumphant over the creature. You take a few moments to enjoy the sight of the creamed and abused ass of the [FeralMuttCurrentBreed] before you continue on your way, quite satisfied.";
	else if cunts of player > 0 and cocks of player > 0:  			  [Yes = HERM Identified!]
		say "     Seeing your opportunity for a display of dominance you position yourself behind the dazed mutt. Fishing out your hardening length you give yourself a few strokes whilst holding the flanks of the beaten mutt in place. Pressing the tip of your male-hood against the wild dog's anal ring, you slowly push into the tight warm confines, making the mutt below you whine in a mix of pain and pleasure. Before long though, after a few gentle thrusts the horny beast is panting and leaning back against your hips. You can feel his tight confines tighten around you as he shoots his load onto the cold ground below. His canine cock twitches and pulses as it slowly deflates, dripping a little more cum onto the soaked dirt beneath.";
		say "     Far from satisfied though you don't let up, you pound the feral's ass until you reach your own pleasant climax and fill the barely conscious hound up with thick spunk. It fills his back passage to the brim and spurts out, drooling down the base of your slowly softening member. Pushing the beast off your cock you stand up triumphant over the creature. You take a few moments to enjoy the sight of the creamed and abused ass of the [FeralMuttCurrentBreed] before you continue on your way, quite satisfied.";

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Feral Mutt";
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
	now cocks entry is 1; [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 8;
	now cock width entry is 6; [ Size of balls ]
	now breasts entry is 2; [ Number of nipples. ]
	now breast size entry is 4; [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0; [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 0;
	now cunt width entry is 0;
	now libido entry is 65; [ Amount player Libido will go up if defeated ]
	now loot entry is ""; [ Loot monster drops, ]
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "canine";
	now type entry is "canine";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Feral Mutt ends here.