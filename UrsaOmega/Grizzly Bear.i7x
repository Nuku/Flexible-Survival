Version 2 of Grizzly Bear by UrsaOmega begins here.
[Version 1.1 - Added player loss anal and oral endings w/being cum on - Stripes]
[Version 2 - Added CV loss scene - Gherod]

"Adds a Grizzly Bear creature to Flexible Survival's Wandering Monsters table"


Section 1 - Creature Responses

to say grizzlydesc:
	setmongender 3; [creature is male]
	say "     A large bear-man stands before you. His large stature and shaggy brown fur seem to paint him as a grizzly bear. Except for his fur, he's only wearing a ragged pair of pants, the holes in which allow some short glimpses at a thick furred sheath and hefty balls hanging between his legs. A thick ursine cock peeks out just a little from the sheath. 'Ah! Another upstart cub!' he growls. 'It's been a while since I've had some fun!'";
	say "     Suddenly, he charges at you! It's a fight!";

to say losetogrizzly:
	if glowing mushroom is owned and vorelevel > 1:
		say "[GrizzlyLoseCV]";
	else:
		let bearanal be anallevel - 1;
		if Player is female and a random chance of 1 in 3 succeeds:
			say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. The grizzly bear walks behind your kneeling form, firmly pushing your face into the dirt while stroking his hardening bearcock. 'Looks like I'll have to teach ya your place, cub...' Raising your hips up with one paw while guiding his cock to your moist, [cunt size desc of Player] pussy with the other. ";
			if Cunt Tightness of Player < 3:
				say "His thick cock stretches your lips open as you struggle to accommodate his substantial man-meat. With a grunt on his part and a moan from you he bottoms out inside you, his balls resting against your rear.";
			else:
				say "His thick cock spears your womanly folds with ease, smoothly sliding his shaft into your cunt with an approving grunt.";
			say "     He begins sliding his cock in and out of your vagina, each thrust ending in the resounding slap of flesh on flesh. As both your climaxes grow closer, he leans over your back, fucking you deep and hard with his large ursine shaft. One of his thrusts hits you just right and you're crying out in pleasure as you cum around his length. Your muscular contractions milk up and down his length and then with a growl he's thrust all the way in your cunt and is cumming deep inside you. When he finishes his orgasm he pulls out of you, rubs his cock clean on your rear, and leaves you twitching on the ground, bear cum dripping from your abused cunt.[impregchance]";
		else if Player is male and a random chance of bearanal in 3 succeeds:
			say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. The grizzly bear walks behind your kneeling form, firmly pushing your face into the dirt while stroking his hardening bearcock. 'Looks like I'll have to teach ya your place, cub...' Raising your hips up with one paw while guiding his cock to your puckered anus. He rubs his glans against the entrance to your back passage, his pre dribbling from the tip and into the cleft of your ass. 'Heh... tight li'l cub...' he grumbles, before beginning to force his way into your rectum. You gasp as he slips past your muscled ring and sheathes his entire length inside you in one firm thrust.";
			if a random chance of 2 in 3 succeeds or player is mpreg_able:
				say "     He begins to slide back and forth within you, his sizable cock pressing at your prostate in all the right ways. Before long, he's leaning over your back, penetrating you with long, deep ball-slapping thrusts. One thrust rubs your prostate just right and you're yelling out in orgasm, your [cock size desc of Player] [Cock of Player] cock spurting your submissive seed over the ground. Your rippling anal contractions cause the rutting bear above you to groan and shoot his ursine seed deep in your guts, pulling out for the last few spurts to paint your backside white. He wipes his cock clean on your rear and leaves you twitching on the ground, bear cum dripping from your messy asshole.[mimpregchance]";
			else:
				say "     He begins to slide back and forth within you, his sizable cock pressing at your prostate in all the right ways. Before long, he's leaning over your back, penetrating you with long, deep ball-slapping thrusts. One thrust rubs your prostate just right and you're yelling out in orgasm, your [cock size desc of Player] [Cock of Player] cock spurting your submissive seed over the ground. The big ursine chuckles at this and pulls out roughly, rolling you over onto your back even as you're still cumming. Those splatters of your own seed are soon added to and covered by the big ursine's own semen as he cums across your belly and groin. You run your hands through it, rubbing the bear stud's cum across your loins and into your skin, enjoying smelling of the strong grizzly. He chuckles and leaves you on the ground like that, a messy example of what happens to those who cross him.";
		else:
			say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. Grinning at your weakened state he walks up to your front, one paw slowly stroking up and down his sizable bear dick. Reaching out with a large, bearlike paw, he grabs the back of your head and pulls it in to his groin. 'You know what to do, cub,' he growls, rubbing his cock against your face. Your nose fills with the musky scent of male bear, [if Player is male]your cock becoming rock-hard, [end if][if Player is female]your cunt moistening with need, [end if]and your head starts to spin a bit. You eagerly lick up and down the ursine shaft. You even duck down to his ballsack, juggling his testicles a bit with your tongue before returning to lapping at his shaft.";
			if a random chance of 2 in 3 succeeds:
				say "     The grizzly interrupts you, grunting 'That's enough, cub, now it's time for the main event!' and gripping both sides of your head. Without ceremony, he pulls your mouth down on his cock, groaning as your mouth envelops his cock. He guides your head up and down his shaft, the salty taste of his precum filling your mouth. Just as you get comfortable sucking his cock, his thrusts get more forceful, pushing his cock down your throat. You suppress your gag reflex as he begins face-fucking you, his hefty ballsack slapping against your [FaceName of Player] face. You hear the grizzly growl above you and feel his shaft pulse in your throat before you feel him pour hot bearcum down your gullet. He starts pulling out as he cums, filling your mouth with his strong-tasting seed and finally painting your face with the last few spurts of grizzly cum. 'Not bad, cub. We should do this more often,' he says before walking off, leaving you to clean yourself up.";
			else:
				say "     The grizzly interrupts you, grunting 'That's enough, cub, now it's time for the main event!' and gripping both sides of your head. Without ceremony, he pulls your mouth down on his cock, groaning as your mouth envelops his cock. He guides your head up and down his shaft, the salty taste of his precum filling your mouth. After a few minutes of this, you feel his cock pulse and throb in your mouth. Pushing your head off his cock with one paw, he grabs it in the other and pumps his meat frantically. With a growl, he cums hard, splattering his thick, musky load across your [FaceName of Player] face. You're marked with sticky bearcum that covers your face and drips down onto your chest. The scent of it is strong and you can't help yourself from licking up as much of it as you can get. The big ursine chuckles at this. 'That's a good, eager cub. Lick it all up and come back for more later,' he says before trundling off with a rumbling chuckle.";


to say GrizzlyLoseCV:
	say "     You collapse to your knees in front of the grizzly bear, submitting to his superior strength. The grizzly bear walks behind your kneeling form, firmly pushing your face into the dirt while stroking his hardening bearcock. 'Looks like I'll have to teach ya your place, cub...' he says, but then he stops with a 'Hm...' followed by him leaning over your stuff. 'Is that what I think it is?' He asks, as he grabs something that you seem to have dropped, nothing more nothing less than one of the magic shrinking shrooms that you have gathered in the past. 'Ya've been carrying these around, eh? Cub likes being a lil'one... Now that'd be fun.' He then crouches down, keeping your body pinned underneath his whole furred weight, his thick bear cock already hard and throbbing.";
	say "     'Open up, cub.' - he demands, pushing the shroom gently against your lips - 'Don't make me force it in ya.' You are trapped under the bear, after having been beaten into submission. Things don't look favorable in your end...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Comply.";
	say "     ([link]N[as]n[end link]) - Resist (Strength Roll).";
	if player consents:
		Linebreak;
		say "     Right now, you really don't stand a chance, nor are willing to try to resist him.";
		SanLoss 10;
		say "     Inevitably, you have to part your lips open, allowing the grizzly bear to efforlessly slide the shroom inside your mouth. He gives you a gentle pat on your cheek with one of his large paws and gives you a smile. 'That's a good little cub...'";
		GrizzlyLoseCV2;
	else:
		Linebreak;
		say "     This would mean bad news for you! You can't allow the grizzly bear to force one of the shrinking shroom down your hatch! Imagine the things he could do to you if you were of such a small size...! You must fight back with all your strength.";
		WaitLineBreak;
		let bonus be (strength of player);
		say "[bold type]Strength Check[roman type]: [special-style-1][bonus][roman type] vs [special-style-2]20[roman type]";
		if bonus >= 20: [Automatic Success]
			say "     Fortunately, you are in possession of enough physical force to break free from the bear's grasp, able to push him away from you and start running. He doesn't have enough time window to catch you, nor catch up to you. He disappears in the distance, and you're free.";
			say "     Although, it appears you're one shroom shorter, after all that...";
			ItemLoss glowing mushroom by 1;
		else: [Not a failure yet, but the player is struggling...]
			say "     But... it's not quite enough to outright push the bear away. He takes note of your resistance, and reinforces his position above you. 'I said open! Be a good cub, now, or I'll have to get rough...!'";
			WaitLineBreak;
			let bonus be (( strength of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]22[roman type] (Strength Check):[line break]";
			if diceroll + bonus >= 22: [Player succeeds, barely...]
				Linebreak;
				say "     And by some miracle, or perhaps you really are stronger than you think, you manage to make the bear lose balance and are able to push him away from you. Then, you immediately get up and start running as fast as you can, not givin him enough time window to catch you, nor catch up to you. He disappears in the distance, and you're free.";
				say "     Although, it appears you're one shroom shorter, after all that...";
				ItemLoss glowing mushroom by 1;
			else:
				Linebreak;
				say "     Your resistance is futile. The bear has got you pinned down good, and it's only a matter of time until he gets what he wants.";
				say "     Inevitably, you have to part your lips open, allowing the grizzly bear to efforlessly slide the shroom inside your mouth. He gives you a gentle pat on your cheek with one of his large paws and gives you a smile. 'Now that's a good little cub... Why did y'think ya could fight me?'";
				GrizzlyLoseCV2;

to GrizzlyLoseCV2:
	WaitLineBreak;
	say "     With enough given time, your body begins to shrink [if player is not naked]out of your clothes[end if]. In your perspective, the grizzly bear just becomes much, much larger than before compared to you. Several seconds pass, and you're nothing but a tiny little creature in front of an enormous giant bear, who looks very excited to be looking at you in such state. He then reaches for you with his big paws, picking you up and bringing you to his eye level. 'Ya look so cute, so small... Love having such a tiny little cub to play with...' You notice him grabbing his thick nine-inch bearhood, which at your current size manages to be longer, wider and heavier than your whole body, and give it some strokes as he eyes you from top to bottom.";
	say "     'Looks like y'saw something ya like...' he teases you, letting you watch him stroke his cock playfully by rubbing it all over with his paw, slowly and gently, moving a finger over the tip and showing you a long strain of precum as he pulls away, spreading it all across his shaft. It glistens in its full erection, wet and slick, already throbbing with excitement. 'Wanna see it up close?' he asks, but instead of waiting for an answer, he simply brings you directly towards his cock, leaning your tiny body on top of it with your head turned towards the tip, then begins to jerk off slowly as he pushes your body across his shaft back and forth. During all the process, you feel his enormous organ throbbing against you, as if fond of your close presence.";
	WaitLineBreak;
	say "     Amidst all that rubbing between your body and the bear's warm cock, hard as a rock and pulsing an intoxicating warmth that leaves you dizzy, and you notice that he begins to focus most movement closer to the tip. 'Mmmh... I got ya a little surprise too, cub.' he says, as you feel yourself being pushed all the way to the tip of his bearhood, before he flips you around and has your feet facing his rod instead. It all seems like he's just wanting you to feel his throbbing dong from every angle, as that thick bear cock keeps oozing a glob of precum every so often, even when your feet are close enough to poke at the gleaming glans, coated in slippery juice. The bear lets out a huff, his meat hardening to its peak as he feels your smallness touching the head of his prick...";
	say "     ... And that's when you see the gaping slit, which occasionally nibbles around your toes when they pass through. At first, it looks just like a consequence of your size difference, but you feel them sinking in a bit deeper as the furred beast begins to push you in just slightly. He lets out a soft moan, looking a bit overwhelmed by all the lust that is taking over him. His thick fingers envelop you, pressing your arms and legs against your body, then pushing both your feet into his slit up to your ankles, another moan escaping the bear's mouth. 'I've got the perfect way to turn ya into a cute little cub for real... One way or another...' You don't quite get the meaning of his latter words, but it does feel like he intends to keep pushing you down his meat...!";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sounds pretty hot...";
	say "     ([link]N[as]n[end link]) - What?! No! Try to break free!";
	if player consents:
		Linebreak;
		SanLoss 10;
		say "     You can't help but think that's actually very arousing, feeling that massive bear cock slurp you in, inch by inch, until it has fully consumed you and ready to send you down to those heavy, cum-filled balls. From what you gather, this is exactly what the bear is thinking about, as he continues to push you in. As you have decided before, you offer no resistance, allowing his massive member to take you up to your waist at a glance. He grins, and seems pleased at your submission. 'Ye're taking it well, cub... That's how I like it...' says the beast, as he now lets his thick log do all the work.";
	else:
		Linebreak;
		say "     It's too late for that. It seems the bear's cock has got a good grasp on your feet, and the more you move, the more powerful its sucking motions are. It is quickly slurping you in, inch by inch, and your captor does not make it any easier for you. He continues to push you in, and within the blink of an eye, you're down on his meat log all the way to your waist, squirming and wiggling fiercely. He grins, and seems pleased at the situation, despite your resistance. 'Aw cub, don't ya know? The more ya fight, the deeper ya go, and the better it feels for me...' says the beast, as he now lets his thick log do all the work.";
	WaitLineBreak;
	say "     With each throb, more of your being sinks inside his cock, pulsing as it swallows you bit by bit, as you look at the happy bear staring down at you as you disappear into his meat. No matter how much you'd squirm, kick or attempt to squeeze yourself out, nothing would work in getting you out. You would simply continue to go down without a break. As that happens, you feel a thick finger rubbing against your head, before it positions itself above, then it starts pushing you downwards. 'C'mon now, time to go in, cub. My balls are aching...' he says, as you're sure he's fondling and rubbing them all over while trying to accelerate the process. You are left helpless, your only following consequence being simply falling down deeper, until only your head pokes out of his shaft.";
	say "     A final push makes you completely slide inside, as his grin widens with increasing pleasure. Your world is replaced with darkness and squeezing slick walls as his slit shuts before your eyes, and you've got nothing else to do but accept your fate. The bear strokes his dick ever so gently, trying to feel your shape inside the thick shaft, and even then, he [']helps['] go sink lower. All you perceive with your touch is the throbbing flesh bumping on you, pushing and pulling you down until the base of his bearhood. While in there, it is only a matter of time until a passage opens for your body, depositing your whole existence into some wobbly surroundings, already half-filled with lots of bear cum. You feel like you're stuck, bouncing inside his hanging balls, which is exactly what is happening.";
	WaitLineBreak;
	say "     'In no time, you'll be the perfect cub... Just relax and enjoy yourself...' he teases you, his voice booming out of every side into your ears like a thunder, even with the gentle tone he used. The humid air and the thick liquid surrounding you makes you feel funny and dizzy, not to mention that it is also warming your crotch [if player is male]as your cock stands solidly erect[else]your pussy moistens with engorged labia[end if], making it difficult to think. This is not looking too bright for you...";
	SanLoss 20;
	WaitLineBreak;
	if humanity of player > 50: [player can still think clearly]
		let bonus be (intelligence of player);
		say "[bold type]Intelligence Check[roman type]: [special-style-1][bonus][roman type] vs [special-style-2]15[roman type]";
		if bonus >= 15: [Player manages to think of a solution and may pursue it]
			Linebreak;
			say "     But amidst all this, you still retained the ability to think. Things don't look good for you, with all the hot cum enveloping you, your bouncing surroundings, the smell of sex and beast alike... You would quickly be overwhelmed by all the elements that are threatening your sanity, except you can still do something to gain your escape a bit earlier. While your position seems to be unfortunate, you are fairly close to the bear's sensitive areas that could cause a spontaneous orgasm, effectively earning a shot out of his junk. Pressing the right pressure points would do the trick, but you need a firm touch...";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - You've literally gone too deep, might as well end this now.";
			say "     ([link]N[as]n[end link]) - Why bother? This actually feels great...";
			if player consents:
				Linebreak;
				say "     Enough anatomy knowledge allows you to move around within the constraining space of the bear's balls, adjusting your position for the intended effect, that is, providing enough internal stimulation in order to provoke his climax. With your strategy in mind, you direct your applied strength towards a pressure point that connects with the base of his bearhood through a nerve, and having detected his weak point, you proceed to pound it generously. Given the tremble you feel all around you as the beast moans in ecstasy, and as the space inside the orbs shrinks due to him holding them with his big paw, you know you're getting the desired result. He grunts and squirms in uncontrollable pleasure the more effort you put into your plan...";
				WaitLineBreak;
				say "     An animalistic groan is the cue to the early orgasm you're forcing the beast to have, and before you know it, you're being pumped through his cock and shot away from all the mess. The force is enough to take you away from the bear into safety, but you're still pretty much covered in his cum, unable to escape without some of the infection taking shape in your body. You feel sore and woozy from the temporary gravity shift and the ordeal you went through, but you're good to go as soon as you return to your normal size, recovering your stuff in the process.";
				infect;
			else:
				Linebreak;
				say "     It feels so good that you can't think about anything too complicated right now. Debilitated as you are, with all the hot cum enveloping you, your bouncing surroundings, the smell of sex and beast alike... It is too much for you to handle at your current state. Even if you attempted to escape, the walls are just too slippery, the passage above is shut, and you're effectively stuck inside one of the bear's orbs that keeps constantly squeezing you with its wobbly flesh. It starts getting worse once you feel it all flooding, as your body is about to sink completely into the beast's seed. You try to avoid the inevitable by raising your head as high as you can, but it is useless... Within a matter of seconds, you are fully submerged in bear cum...";
				SanLoss 10;
				GrizzlyLoseCV3;
		else: [Player's low cognitive values makes them sink deeper into depravity...]
			Linebreak;
			say "     Unfortunately, there's not much you can do. Debilitated as you are, with all the hot cum enveloping you, your bouncing surroundings, the smell of sex and beast alike... It is too much for you to handle at your current state. Even if you attempted to escape, the walls are just too slippery, the passage above is shut, and you're effectively stuck inside one of the bear's orbs that keeps constantly squeezing you with its wobbly flesh. It starts getting worse once you feel it all flooding, as your body is about to sink completely into the beast's seed. You try to avoid the inevitable by raising your head as high as you can, but it is useless... Within a matter of seconds, you are fully submerged in bear cum...";
			SanLoss 10;
			GrizzlyLoseCV3;
	else: [player doesn't manage to think clearly, which makes them sink deeper into depravity...]
		Linebreak;
		say "     Unfortunately, there's not much you can do. Debilitated as you are, with all the hot cum enveloping you, your bouncing surroundings, the smell of sex and beast alike... It is too much for you to handle at your current state. Even if you attempted to escape, the walls are just too slippery, the passage above is shut, and you're effectively stuck inside one of the bear's orbs that keeps constantly squeezing you with its wobbly flesh. It starts getting worse once you feel it all flooding, as your body is about to sink completely into the beast's seed. You try to avoid the inevitable by raising your head as high as you can, but it is useless... Within a matter of seconds, you are fully submerged in bear cum...";
		SanLoss 10;
		GrizzlyLoseCV3;

to GrizzlyLoseCV3: [Instant loss, heavy sanity decreases, total infection (5x)]
	WaitLineBreak;
	say "     It's about time that he begins to pick up the pace, jerking faster and faster by the second, your surroundings bouncing up and down frantically as his thick cum envelops you... Physically, you feel sluggish, as if you were about to melt, a consequence of being inside someone's balls with all that massive quantity of nearly scorching hot seed, which tingles around your skin so [italic type]good[roman type] that you actually forget about it. It starts taking over your mind, and inevitably, you begin to give in...";
	SanLoss 20;
	say "     But before the situation takes itself into a point of no return, you feel the liquid around you getting pumped upwards, and soon, your body is pushed through the opening separating the bear's cock from the sack. Traversing its length once more, you are then shot with immense force, as a massive quantity of beast juice follows, to soak you completely on the outside. The force is enough to take you away from the bear into safety, but you're still pretty much covered in his cum, unable to escape without a lot of the infection taking shape in your body. You feel sore and woozy from the temporary gravity shift and the ordeal you went through, but you're good to go as soon as you return to your normal size, recovering your stuff in the process.";
	infect;
	infect;
	infect;
	infect;
	infect;



to say beatthegrizzly:
	say "     The grizzly collapses before you, breathing heavily from your fight. You can see the grizzly's ursine cock peeking out of his furry sheath - it looks like he's up for some more fun. Do you take advantage of the big bear?";
	if Player is herm:
		say "     Would you like to [link]mount the grizzly's ass (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], take him [link]in your pussy (3)[as]3[end link], take him [link]in your ass (4)[as]4[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 4:
			say "Choice? (0-4)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[gbeargiveanal]";
		else if calcnumber is 2:
			say "[gbeargetsucked]";
		else if calcnumber is 3:
			say "[gbearridevag]";
		else if calcnumber is 4:
			say "[gbearrideanal]";
		else:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	else if Player is female:
		say "     Would you like to take him [link]in your pussy (1)[as]1[end link], take him [link]in your ass (2)[as]2[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[gbearridevag]";
		else if calcnumber is 2:
			say "[gbearrideanal]";
		else:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	else if Player is male:
		say "     Would you like to [link]mount the grizzly's ass (1)[as]1[end link], get him to [link]suck your cock (2)[as]2[end link], take him [link]in your ass (3)[as]3[end link] or [link]leave (0)[as]0[end link]?";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 3:
			say "Choice? (0-3)>[run paragraph on]";
			get a number;
		if calcnumber is 1:
			say "[gbeargiveanal]";
		else if calcnumber is 2:
			say "[gbeargetsucked]";
		else if calcnumber is 3:
			say "[gbearrideanal]";
		else:
			say "     You decide against fucking the bear right now, walking away from his defeated form.";
	else:		[neuter loss needed? - adjust some possible scenes]
		say "     You briefly taking advantage of the fallen bruin, but decide in the end against it due to your own lack of gender.";

to say gbeargiveanal:
	say "     With some effort, you roll the grizzly over and raise his hips up so his ass is sticking up in the air. You admire the bear's anus, currently twitching in anticipation, tucked under his stubby bear tail. You press a finger against his muscular ring and push inward. Surprisingly, it slips in with very little effort - this bear doesn't seem to be new to being mounted. You add two more fingers, testing his flexibility with deep, scissoring strokes. The grizzly gives a manly grunt as you do, his hardening length quickly slipping from his sheath. With your preparations complete, you move behind him, gripping his hips and lining your cock up with his tailhole. You hilt yourself inside his rectum in one firm thrust, gasping as you feel his hot, muscular anal cavity envelop your [cock size desc of Player] [Cock of Player] cock.";
	say "     You by making slow, deep strokes in and out of his ass, relishing the feeling of your ursine ass-slut clenching down on your cock as you pull back before driving yourself back in with a ball-slapping thrust. The grizzly begs you (between pants and moans) to fuck him harder, and you comply by increasing the frequency and depth of your thrusts. This redoubled anal assault is too much for your bottom bear, who starts shooting grizzly cum over the ground. The orgasmic contractions of his ass send you over the edge as well, and you start filling the bear's ass with your seed. You pull out and shoot the last of your load over his backside before stepping back to admire your handiwork. Satisfied, you get dressed and leave the bear in a pool of cum.";

to say gbeargetsucked:
	say "     You walk up to the grizzly, your cock hardening at the thought of taking his muzzle. You push his muzzle into your groin, rubbing your [cock size desc of Player] [Cock of Player] cock against his lips and the sides of his muzzle. The grizzly breaks down and starts giving your shaft long licks with his broad ursine tongue; the rough texture feels great on your cock. Occasionally he dips down under your shaft to suck on your testicles, juggling them with his tongue, before returning to lavishing your [Cock of Player] cock with oral attention.[line break]";
	if anallevel is 3:
		say "     The grizzly pulls off of your cock for a minute to look up and give you a lecherous grin as he puts two fingers in this mouth, sucking on them. You raise an eyebrow as he removes the fingers from his muzzle and then leans back into your groin, this time engulfing your entire length in his muzzle. The wet heat wrapped around your dick feels great, and you almost don't notice the bear sneaking the two saliva-coated fingers under your ballsack[if Player is female] and past your womanly netherlips[end if]. Realizing what he's planning, you look down at the bear eagerly sucking his way up and down your shaft and return the lecherous grin, spreading your legs a bit to give him better access to your pucker. While continuing to give your [Cock of Player] cock a masterful blowjob, he strokes his two slick fingers across your pucker, relaxing it. On one particularly deep throating of your cock, he slides his digits into your rectum. You grunt as he finds your prostate gland and starts stroking it vigorously. Each press of his fingers is like the press of a pleasure buzzer in your ass, and you start leaking pre into his muzzle like a leaky tap. Your knees can hardly hold your body up, so you lean on him while he drives you higher and higher with his talented tongue, muzzle, and fingers. Finally, you can't take the stimulation overload any more and cum hard, filling his mouth up and squeezing on his fingers in your ass. You pull out for the last few shots of seed, painting his snout in streaks of white with your load. Getting dressed, you leave the sex-starved bear to take care of his own needs.";
	else:
		say "     Eager to get to the real deal, the bear dives down on your [Cock of Player] cock, taking it to the base in his muzzle. The wet heat wrapped around your dick feels great, and you give a satisfied grunt as he starts to move his mouth up and down your length, all the while using his tongue to stroke and tease the head of your penis. You move your hands to the back of his head but he hardly needs any encouragement as he eagerly suckles your [Cock of Player] cock, sucking down your precum. Soon you can't take it any more as his rippling throat and talented tongue push you over the edge, and you're spilling your semen down his throat and then in his mouth. You pull out for the last few shots of seed, painting his snout in streaks of white with your load. Getting dressed, you leave the sex-starved bear to take care of his own needs.";

to say gbearridevag:
	say "     The grizzly falls on his back, breathing heavily. Eyeing his bulging groin you decide you want him in your hot cunt. Walking over to his prone form you begin taking your pants off and then removing his, revealing his thick nine inch bearhood. The grizzly, too weak to react, looks at you eagerly. Straddling the ursine, you position his shaft at your pussy. You tease his glans with your entrance a bit before sinking down into his bear cock. It spreads you open delightfully and strokes your clit just right as you slide down the full length of his cock. He moves to place his hands on your hips but a quick glare reminds him who's in charge. You begin moving up and down on his shaft, each thrust penetrating a little deeper into your cunt, his cock filling you exquisitely. Feeling yourself getting close to your peak you start to increase the pace, filling the air with the sound of smacking flesh. Finally, on one particularly deep thrust, you cry out, your vaginal muscles clamping down on his bear dick[if Player is male] and your cock spurting seed in thick ropes over his chest[end if]. The grizzly is right behind you, filling you up with thick spurts of bear cum. You collapse, panting, on top of the exhausted form of the grizzly, his cum oozing from your pussy. You pull yourself off of the bear, clean yourself up, get dressed, and continue on your way.[impregchance]";

to say gbearrideanal:
	say "     The grizzly falls on his back, breathing heavily. Eyeing his bulging groin you decide you want him in your ass. Walking over to his prone form you begin taking your pants off and then removing his, revealing his thick nine inch bearhood. The grizzly, too weak to react, looks at you eagerly.";
	if anallevel is 3:
		say "     Before you have your fun, you'll need to... prepare properly. Moving your naked rear over the bear's face you spread your asscheeks and brusquely command him to get licking. The bear-man complies eagerly, plunging his muzzle between your cheeks. First you feel the cold wetness of his nose, but that is soon replaced by the warm slickness of his tongue. He starts by lapping gently at your ring of muscle, but as your pucker relaxes he transitions to deep, stimulating licks. His broad ursine tongue fills you so completely you almost cum on the spot. Satisfied with his performance you pull off of him, your cleft now dripping with grizzly saliva.";
	say "     Straddling the ursine, you position his shaft at your asshole. You tease his glans with your entrance a bit before sinking down into his bear cock. It spreads you open delightfully and hits your prostate just right as you slide down the full length of his cock. He moves to place his hands on your hips but a quick glare reminds him who's in charge. You begin moving up and down on his shaft, each thrust penetrating a little deeper into your ass. Feeling yourself getting close to your peak you start to increase the pace, filling the air with the sound of smacking flesh. Finally, on one particularly deep thrust, you have a hands free orgasm, spilling ropes of cum over the grizzly's thick chest fur. Your orgasmic anal contractions quickly bring him over the edge as well, and you feel your anal passage begin to fill with pulses of thick bear seed. You collapse, panting, on top of the exhausted form of the grizzly, his cum oozing out of your ass. You pull yourself off of the bear, clean yourself up, get dressed, and continue on your way.[mimpregchance]";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Grizzly Bear";
	add "Grizzly Bear" to infections of UrsineList;
	add "Grizzly Bear" to infections of FurryList;
	add "Grizzly Bear" to infections of NatureList;
	add "Grizzly Bear" to infections of MaleList;
	add "Grizzly Bear" to infections of TaperedCockList;
	add "Grizzly Bear" to infections of SheathedCockList;
	add "Grizzly Bear" to infections of BipedalList;
	add "Grizzly Bear" to infections of TailList;
	now Name entry is "Grizzly Bear";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The grizzly swipes at you with a huge paw![or]The grizzly hits you with a huge brown-furred shoulder slam.[or]The grizzly charges you with a powerful headbutt![at random]";
	now defeated entry is "[beatthegrizzly]";
	now victory entry is "[losetogrizzly]";
	now desc entry is "[grizzlydesc]";
	now face entry is "now the head of a grizzly bear, with a short muzzle tipped in a large, wet, black nose and a wide head topped by two round bearish ears"; [ Face. Format as Your face is [Face of Player]. ]
	now body entry is "that of a bipedal grizzly bear, thickly proportioned and muscled, with large ursine paw-like hands ending in sharp claws";
	now skin entry is "[one of]thick brown fur covered[or]grizzly furred[or]shaggy brown furred[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "You have a short, ursine tail that hangs over your ass."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "ursine";
	now face change entry is "your head widens and your face pushes out. Your nose becomes large and wet as it migrates to the end of your new bearlike muzzle and your ears move to the top of your head, becoming rounded and ursine"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it becomes large, thicker, and more muscular, more ursine. Your neck widens, as do your arms and legs, and your hands become more paw-like";
	now skin change entry is "thick shaggy brown bear fur spreads across your skin";
	now ass change entry is "your rump becomes thicker and more rounded and bearlike, with a short fuzzy tail growing over your new ursine ass"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "a furred sheath grows around it, holding it when it's not erect"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male"; [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 96;
	now lev entry is 14; [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 18; [ Monster's average damage when attacking. ]
	now area entry is "Zoo"; [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1; [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9; [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 4; [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2; [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0; [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width in inches of female sex the infection will try to give a player. ]
	now SeductionImmune entry is false;
	now libido entry is 50; [ Target libido the infection will rise towards. ]
	now loot entry is ""; [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0; [ Percentage chance of dropping loot, from 0-100. ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]burly[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]ursine[or]grizzly[or]bearlike[at random]"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
]




Section 3 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Grizzly Bear Infection"	"Infection"	""	Grizzly Bear Infection rule	1000	false

This is the Grizzly Bear Infection rule:
	if Player has a body of "Grizzly Bear":
		trigger ending "Grizzly Bear Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			say "     You succumb to your bear instincts, going completely feral. When the military finds you, you're almost entirely unable to communicate with them. You manage to defeat each squad that discovers you, using your unnatural strength and stamina to take them out one by one. You enjoy leaving the last one conscious so you can fuck them into big, strong bears like yourself. Your luck finally runs out one day when searching for your next victim. You feel a pinch at your neck; swatting your paw at the sensation you notice the tranquilizer dart. Already beginning to feel the effects, you turn to see two squads of soldiers descending upon you. You fight fiercely, but a second prick signals the end of the fight as your body becomes too heavy to lift. Before you slip into unconsciousness you hear one of the soldiers mention that the dose was practically enough to down an elephant...";
			say "     You wake up in a government holding facility, where you are poked and prodded (under heavy restraint and anesthesia) for what feels like a month. The scientists must not have been optimistic about your prospects in the post-infection world, because after another elephant dose of tranquilizer you wake up somewhere heavily wooded and remote. You find a salmon-rich stream nearby and settle into a decidedly ursine lifestyle of mostly eating and sleeping.";
			if Player is female:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A very male one, at that. You feel a need growing between your legs and in your womb, a need you've been ignoring during your time in the wild. After a brief period of wary sniffing you're on your hands and knees under the grizzly getting filled with bear cum. You rub a paw over your stomach contentedly, looking forward to raising your new cubs after the next hibernation.";
			else if Player is male and player is not mpreg_ok:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A fertile female one, at that. You feel a need growing between your legs and in your balls, a need you've been ignoring during your time in the wild. After a brief period of wary sniffing you're on your hands and knees behind the grizzly, filling her womb up with your virile bear cum. You rub her stomach contentedly, looking forward to raising your new cubs after the next hibernation.";
			else if Player is mpreg_ok:
				say "     One hot summer day, you run into a rare sight - another grizzly bear! A very male one, at that. You feel a need growing in your rear, a need you've been ignoring during your time in the wild. The bear is hostile at first, but after a brief period of wary sniffing he realizes you're just another female and then you're on your hands and knees under the grizzly getting filled with bear cum. You try to get the other grizzly to reciprocate, but he's having none of it - maybe next time. You rub a paw over your stomach contentedly, looking forward to raising your new cubs after the next hibernation.";
			else:
				say "";
		else:
			say "     When the military finds you, you are sent off to a processing camp and determined to be safe. You live out the rest of your days in relative normalcy, though you now find yourself more partial to going to the gym, eating fish and berries, and taking very, very long naps.";

Grizzly Bear ends here.
