Version 2 of Ancient Tentacles by Dys begins here.
[v2 - Tentacles get repeating scenes - Gherod                               ]

"Moves the Ancient Tentacle Monster from the Tome to its own file."

[ TentacleInteractions tracks the number of times the player interacted     ]
[ with the tentacles                                                        ]
[ TentacleRead indicates whether or not the player has read about the       ]
[ tentacles                                                                 ]
[ TentacleStatus stores the state of the player and the tentacles           ]
[   0  = Never encountered                                                  ]
[   10 = Encountered and fled                                               ]
[   12 = Encountered and got raped                                          ]

TentacleInteractions is a number that varies. TentacleInteractions is usually 0.
TentacleRead is a truth state that varies. TentacleRead is usually false.
TentacleStatus is a number that varies. TentacleStatus is usually 0.

LastTentacleFuck is a number that varies. [@Tag:NotSaved]
LastTentacleFuck is usually 20000.

Section 1 - Scenes

to say TentacleSex:
	if LastTentacleFuck - turns < 7:
		say "     You look over the instructions on how to summon the tentacle beast before shaking your head. You've had enough time with that thing for now.";
	else if companion of player is demonologist or (player is in Grey Abbey Library and Xaedihr is in Grey Abbey Library): [player summons tentacles with the demonologist present, being offered a way to control the tentacles' behavior]
		say "     Looking over the instructions on how to summon the tentacle beast, you're thinking about giving it another try with the ancient creature. However, there are a few things to note about its behavior. As you have previously read about this horrifying mass of tendrils, it is unclear on when they will lay eggs on their victims, often seeming like a random action rather than anything predictable. Turning to Xaedihr, who's standing nearby, you bring up the subject about wanting to summon them, and ask if there is some way to prevent the demonic tentacles from breeding you full of their eggs. 'There's a simple ward for that.' - he informs, leaning over to look at the tome's pages - 'If you want, I can cast it on you, and they will see you as an undesirable host. Can also reverse it to have the opposite effect. That is, if you're really keen on offering yourself to these things... I suppose I can see the fun in it... I mean, I share a similar power, just without the [']eggs['] part.' He gives you an unsubtle wink.";
		say "     Thanks to your sorcerer friend, there seems to be a way to have some control over the outcome of this encounter. Now the only question is, [bold type]should you accept the protecting ward, reverse it, refuse the spell or just give up on the idea?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Take the protective ward, denying any breeding.";
		say "     [link](2)[as]2[end link] - Reverse it, allowing yourself to be filled with eggs with an increased chance.";
		say "     [link](3)[as]3[end link] - Forget the spell and throw yourself to chance.";
		say "     [link](4)[as]4[end link] - Just don't do this, for now.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to protect yourself, [link]2[end link] to reverse the spell, [link]3[end link] to go in without any magical interference, or [link]4[end link] to drop the idea of summoning the ancient tentacles.";
		if calcnumber is 1:
			Linebreak;
			say "     With a nod, you tell Xaedihr to cast the protective ward on you. He does so without a problem, with a few arcane words and magic gestures, and the spell makes you feel a little funny, though nothing unbearable. You then proceed to summon the tentacle beast, carefully following the tome's instructions.";
			WaitLineBreak;
			TentacleFuck;
		else if calcnumber is 2:
			Linebreak;
			say "     With a nod, you tell Xaedihr to cast the reversed version of the ward on you. He shrugs, but does so without a problem, with a few arcane words and magic gestures, and the spell makes you feel a little funny, though nothing unbearable. You then proceed to summon the tentacle beast, carefully following the tome's instructions. This will increase the likelihood of getting egg-filled by the ancient creature.";
			WaitLineBreak;
			if a random chance of 3 in 4 succeeds:
				TentacleBreed;
			else:
				TentacleFuck;
		else if calcnumber is 3:
			say "     Shaking your head, you tell Xaedihr you won't need the spell, but thank him for the information. He replies with a shrug, ending with 'Well, it's up to you, then.' You then proceed to summon the tentacle beast, carefully following the tome's instructions. The outcome of this meeting is totally thrown to chance.";
			if a random chance of 1 in 2 succeeds:
				TentacleBreed;
			else:
				TentacleFuck;
		else if calcnumber is 4:
			say "     Shaking your head, you thank Xaedihr for the information, but you won't proceed with this ritual. With this in mind, you close the tome and put it down.";
	else: [player is alone]
		say "     Looking over the instructions on how to summon the tentacle beast, you're thinking about giving it another try with the ancient creature. However, there are a few things to note about its behavior. As you have previously read about this horrifying mass of tendrils, it is unclear on when they will lay eggs on their victims, often seeming like a random action rather than anything predictable. This means that summoning the tentacles will be a gamble of either you get filled with their eggs or just raped by them for who knows how long. With this in mind, [bold type]are you sure you wish to offer yourself to the demonic tendrils, risking getting egg-filled by them?[roman type][line break]";
		say "     [link](Y)[as]y[end link] - Sure, you're fine with this.";
		say "     [link](N)[as]n[end link] - Just drop the idea for now.";
		if player consents:
			say "     With your decision made, you then proceed to summon the tentacle beast, carefully following the tome's instructions. The outcome of this meeting is totally thrown to chance.";
			WaitLineBreak;
			if a random chance of 1 in 2 succeeds:
				TentacleBreed;
			else:
				TentacleFuck;
		else:
			say "     Thinking twice, you have decided not to proceed with the ritual, closing the tome and putting it down.";

to TentacleBreed:
	say "     Knowing what you'll be getting into, [if player is naked]you are already standing naked[else]you take your clothes off, standing naked[end if] so the creature can take you more easily. You can't help but feel the arousal building up in you, from the antecipation, as you go over everything you need to do in order to summon it, each word and gesture indicated by the tome. As you're finished with the chant, it's only a matter of time until the arcane energy takes shape around you, and just a couple of meters away from where you're standing, a rather shy tendril emerges from the ground, exploring its surroundings by flicking around the floor. As it senses your presence, the tentacle directs its tip towards you, and soon, a few more appear, getting thicker as their length increase, already leaving a trail of a slimy blue liquid that covers them, as if excited to see you.";
	say "     Your heartbeat accelerates, and your own [cock of player] manhood hardens as you bite your lips, aware of what's going to happen once you're within the tentacles' reach. Curiously, they seem to approach you very slowly as you're not moving, only flickering as you put your hand forward to touch one of them that comes closer. Way less aggressively than the first time, they wrap gently around you, albeit firmly and denying you of any chance to escape. One slides around your back, roaming to your chest and placing itself around your neck as the ones lying by the ground wrap themselves around your legs, and some coming for your arms as well. You'd fall if it wasn't the robust slimy tendril holding your balance, and as more of them reach to touch your body, they lift you off the ground slightly as you begin getting enveloped in their lengthy extensions.";
	WaitLineBreak;
	say "     The tentacle wandering just around the back of your neck shows itself across your cheek, soaking you in its fluids as it worms around you, and within seconds it begins tickling your lips, its tip oozing the slimy substance that starts to drop down your chin. At the same time, another tentacle finds itself slipping between your buttcheeks, pressing against your pucker and sliding in rather easily thanks to its slippery coating. As the thick tendril enters your ass, a moan is drew from your mouth, your lips opening just enough so the tentacle by your face could slide inside, rubbing itself against your tongue as your mouth remains wrapped around its length. You feel the juice's sweetness and its sticky texture holding against your taste buds as the tentacle wiggles deeper, towards your throat, and segregating more of its strange fluid, forcing you to swallow it. Its arousing effects slowly spread through your body in the form of a flushing heat.";
	say "     Desire overtakes you as, even if you had the will to struggle, you lose all inhibitions and give yourself into the care of the beast. As the tentacle in your mouth keeps pumping his drug-inducing liquid, the one in your ass keeps pushing, finding its way further inwards, so deep that you eventually lose track of its location inside you. When the tips are exactly where the monster needs them, the tendrils quiver before you can see several pulsing bulges coming through both of them. You already know what to expect once one of the prominences reach your mouth, nearly dislocating your jaw as you're forced to drop your chin even wider. They're the eggs of the creature, being pushed inside you, slowly and steadily.";
	WaitLineBreak;
	say "     The fleshy orb in your mouth forces itself down your throat before it comes to lie in your stomach, while the next ones follow closely behind it. It's at this time that you feel the first egg pressing into your asshole, as you feel it stretching to accomodate the girth of the arriving flesh-covered orb. It then slowly travels through your body before it comes to rest in its destination. As with the tendril in your mouth, this one keeps pumping eggs into you. Egg after egg enters through your esophagus almost painfully, and you can't help but whimper in fear as you see your stomach bulging outwards, multiple distinct eggs visible through the stretched skin. Eventually, you're completely stuffed full of the eggy cargo, and the tentacles start to withdraw from you.";
	say "     With surprising care, you're smoothly delivered to the ground, unable to move, as the beast lets go of your body. You see the tentacles removing themselves from plain sight, retracting back into the ground. You're then left lying down on the floor, weakened and abused, as your belly remains painfully extended to hoard the many eggs that have been shoved inside you.";
	now LastTentacleFuck is turns;

to TentacleFuck:
	say "     Knowing what you'll be getting into, [if player is naked]you are already standing naked[else]you take your clothes off, standing naked[end if] so the creature can take you more easily. You can't help but feel the arousal building up in you, from the antecipation, as you go over everything you need to do in order to summon it, each word and gesture indicated by the tome. As you're finished with the chant, it's only a matter of time until the arcane energy takes shape around you, and just a couple of meters away from where you're standing, a rather shy tendril emerges from the ground, exploring its surroundings by flicking around the floor. As it senses your presence, the tentacle directs its tip towards you, and soon, a few more appear, getting thicker as their length increase, already leaving a trail of a slimy blue liquid that covers them, as if excited to see you.";
	say "     Your heartbeat accelerates, and your own [cock of player] manhood hardens as you bite your lips, aware of what's going to happen once you're within the tentacles' reach. Curiously, they seem to approach you very slowly as you're not moving, only flickering as you put your hand forward to touch one of them that comes closer. Way less aggressively than the first time, they wrap gently around you, albeit firmly and denying you of any chance to escape. One slides around your back, roaming to your chest and placing itself around your neck as the ones lying by the ground wrap themselves around your legs, and some coming for your arms as well. You'd fall if it wasn't the robust slimy tendril holding your balance, and as more of them reach to touch your body, they lift you off the ground slightly as you begin getting enveloped in their lengthy extensions.";
	WaitLineBreak;
	say "     The tentacle wandering just around the back of your neck shows itself across your cheek, soaking you in its fluids as it worms around you, and within seconds it begins tickling your lips, its tip oozing the slimy substance that starts to drop down your chin. At the same time, another tentacle finds itself slipping between your buttcheeks, pressing against your pucker and sliding in rather easily thanks to its slippery coating. As the thick tendril enters your ass, a moan is drew from your mouth, your lips opening just enough so the tentacle by your face could slide inside, rubbing itself against your tongue as your mouth remains wrapped around its length. You feel the juice's sweetness and its sticky texture holding against your taste buds as the tentacle wiggles deeper, towards your throat, and its presence seems to nullify your gag reflex completely.";
	say "     All the sensations prove to be too great for you to resist, and you quickly give in to the care of the beast. With conjoined momentum, both the tentacles in your mouth and ass begin pushing themselves deeper into you, then pulling out rhythmically, literally fucking you in both your entrances with vigor. Each tendril wiggles and caresses your insides in such a way that makes you feel dazed with pleasure, and that only becomes more intense once another comes to wrap itself around your [cock of player] penis, which was already pulsing with each powerful wave of bliss you're getting with all the tentacle action. It squeezes your meat, and its tip circles around your cock's head, causing you to jerk your hips desperate for the sweet release that you feel coming closer.";
	WaitLineBreak;
	say "     The friction you're getting from the slimy tentacle's stroking around your dick, together with the others drilling both your ass and mouth, truly overwhelms your senses in a very good way. You don't want this to be over so soon, and your willingness is duly noted as the tentacle beast embraces your body even more, with every extension of itself brushing against all your sweet spots. It alternates how fast it's fucking you, from slow and steady movements to fast ones, until the creature is effectively edging you. With your orgasm so close to happen, you can't help but whimper and squirm around for the next few minutes. Finally, the tendril around your dick seems to be engulfing it, giving you the same sensation as someone was sucking on it, and that's when the creature decides to work on your climax.";
	say "     Your long wait is finally over as your whole body contracts, waves of heated pleasure surging through you as the beast milks you and rams against your prostate, so powerfully that you feel each spurt of cum being shot harder than ever! Your orgasm lasts for a while, but the creature doesn't let go of you just yet. Just when you start feeling each and every one of the tentacles thickening, the creature keeps them shoved as deep as possible inside you or around you, and suddenly, its tips begin splooging a thick, blue fluid all over and in you. It lasts so long that your belly has to extend in order to be able to hoard all the juice that's being pumped in you, and you can't help but whimper in fear of being blown up by the thing's massive load!";
	WaitLineBreak;
	say "     But it doesn't come to that point. The tentacles withdraw from your body as a flood of bluish semen leaks out of your abused hole. You see the tentacles removing themselves from plain sight, retracting back into the ground. You're then left lying down on the floor, weakened and abused, as your belly remains painfully filled with the beast's cum. You reflexively cough, and you're shocked to realize the creature filled you so much that you're also oozing the liquid from your nose! However, you're too full to be able to move around just yet, so you wait it out for a while until your body processes the contents delivered inside you.";
	now LastTentacleFuck is turns;

Section 2 - Initial Events

to say TentaclesFirstEncounter:
	say "     As you're going about your business, something suddenly wraps around your legs. You're harshly yanked backwards, and you fling out your arms in a desperate attempt to avoid smashing your face on the ground. Once that's been taken care of, you whirl around to look at what's ensnared you. The sight that greets you makes your skin go cold. A writhing mass of purple tentacles are jutting out of the ground, each coated in a slick, sticky slime. Desperately, you yank your foot away, managing to get it out of the tendril's grasp.";
	say "     [bold type]You need to take advantage of you momentary freedom! What do you do?[roman type][line break]";
	say "     [link]Run away as fast as you can![as]y[end link] - (Y)[line break]";
	say "     [link]See if you can find some sort of central mass.[as]n[end link] - (N)[line break]";
	if Player consents:
		say "     You dash off into the city, having no idea where you're going. The mass of tentacles are following closely behind for a while, but soon enough, they seem to reach the perceived limits of their length. You keep running for a while longer, just to be sure that you've managed to escape them. When you're sure you're in the clear, you stop, panting to catch your breath. That was too close for comfort...";
		now TentacleInteractions is 1;
		now TentacleStatus is 10; [Player fled]
		WaitLineBreak;
	else:
		say "     With a righteous yell, you charge straight into the mass of tentacles, looking for some sort of central mass so you can kill the thing! However, as you get closer and closer to the origin of the tentacles, you're distraught to see that there's no obvious [']brain['] controlling the mass. They just seem to be coming out of the ground! Realizing your mistake, you try to backpedal away, hoping to escape. You're never given that opportunity, however, as four of the writhing tendrils latch onto each of your limbs, wrapping around them and hoisting you into the air. They pull each limb in a different direction, leaving you completely spread eagle.";
		WaitLineBreak;
		say "     A new, slimmer tentacle slips under your shirt, before yanking it off of your body. Another similar tendril slips into the rest of your clothing, pulling that away from your body as well. More of the tentacles caress over your body, leaving slimy trails of blue fluid in their wake. You let out a startled gasp as you feel a new tendril slipping between your ass cheeks before pressing its way into your hole mercilessly. The thing worms its way into you slowly and deliberately, winding around your interior paths, before it begins to pull out.";
		if Player is mpreg_ok:
			say "     Having found what it was looking for, you soon feel another, wider tentacle pushing its way into you. You open your mouth to let out a gasp of pain from the sudden intrusion, but that too is suddenly filled with a drooling tendril. The new tentacle in your mouth leaks some sort of strange fluid, and you're forced to swallow it down. Your body flushes with heat as the liquid seems to arouse you, despite what's happening to you. Suddenly, the tentacles in each end of your body begin to thrust in and out in sync, pistoning in and out of your holes with determined fervor.";
			WaitLineBreak;
			say "     Eventually, their pace picks up, and the one in your mouth crams its way down your throat, forcing itself down your esophagus painfully. The one in your ass pushes further inwards as well, finding the entrance to your hidden womb, before it presses into there as well. With the tips exactly where the monster needs them, the tendrils quiver before you can see several pulsing bulges coming through both of them. At first, you're just expecting them to be this monster's equivalent of cum. This hypothesis is proven incorrect, however, when the first bulge reaches your mouth. It forces its way into you, definitely more solid than you were expecting. It's at this moment that you realize that the bulges aren't cum at all! They're eggs!";
			say "     The fleshy orb in your mouth forces itself down your throat before it comes to lie in your stomach. The next ones are following closely behind it. It's at this time that you feel the first egg pressing into your asshole, yawning the orifice open wider before it pushes in as well. The orb travels through your body before it comes to rest in your womb. As with the tendril in your mouth, this one keeps pumping eggs into you. Egg after egg gets pushed into you, and you can't help but whimper in fear as you see your stomach bulging outwards, multiple distinct eggs visible through the stretched skin. Eventually, you're completely stuffed full of the eggy cargo, and the tentacles withdraw from you.";
		else:
			say "     A new tentacle finds its way into your ass and begins thrusting wildly into you. The writhing appendage forces itself deep into you, only to yank itself out again. Another tendril slips into your mouth and starts thrusting into your throat roughly. This ritual continues for quite some time, before the tentacles stop, with their tips buried deep inside you. Each of the tendrils quiver before a fluid suddenly bursts from them. You can only guess it's the monster's cum, if the taste is anything to go by. You do your best to drink down all the fluids, and by the time the eruption of fluids has ended, your belly is distended almost comically. The two tendrils suddenly yank themselves out of you, and a flood of bluish semen leaks out of your abused holes.";
		WaitLineBreak;
		say "     The tentacles seem to be done with you, and you can't do anything to stop them anyway, so they just recede back into the ground. You're unsure if you'll ever see them again, or if you even want to...";
		now TentacleInteractions is 1;
		now TentacleStatus is 12; [got raped]
		UpdateTomeEventPending;

to say TentaclesFirstRead:
	say "     As you read about the mass of tentacles, your eyes widen in horror. Apparently, the tentacles will not only rape the unlucky victim, they also sometimes lay eggs in them! No one is exactly sure why the tentacles do this, or who they'll do it to, as it seems to be random. If there's one good thing to note, it's that the tentacles don't usually fertilize the eggs. Instead, they leave them there for the victim to do with as they please. [if Player is puremale]Interestingly[else]Thankfully[end if], they only seem to be interested in [italic type]males[roman type], oddly enough. You shut the book after reading the page, shaking your head in attempt to get thought of egg-laying tentacles out of your head.";
	now TentacleRead is true;
	now TomeInteractions is 2;
	now TomeEventPending is true;

Ancient Tentacles ends here.
