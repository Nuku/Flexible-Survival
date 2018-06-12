Version 1 of Ancient Tentacles by Dys begins here.

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

Section 1 - Scenes

to say TentacleSex:
	say "     You look over the instructions on how to summon the tentacle beast before shaking your head. You've had enough time with that thing.";
	say "     [italic type]More content will be added with the tentacles in the future[roman type].";

to say TentaclesFirstEncounter:
	say "     As you're going about your business, something suddenly wraps around your legs. You're harshly yanked backwards, and you fling out your arms in a desperate attempt to avoid smashing your face on the ground. Once that's been taken care of, you whirl around to look at what's ensnared you. The sight that greets you makes your skin go cold. A writhing mass of purple tentacles are jutting out of the ground, each coated in a slick, sticky slime. Desperately, you yank your foot away, managing to get it out of the tendril's grasp.";
	say "     [bold type]You need to take advantage of you momentary freedom! What do you do?";
	say "     [link]Run away as fast as you can![as]y[end link] - (Y)[line break]";
	say "     [link]See if you can find some sort of central mass.[as]n[end link] - (N)[line break]";
	if player consents:
		say "     You dash off into the city, having no idea where you're going. The mass of tentacles are following closely behind for a while, but soon enough, they seem to reach the perceived limits of their length. You keep running for a while longer, just to be sure that you've managed to escape them. When you're sure you're in the clear, you stop, panting to catch your breath. That was too close for comfort...";
		now TentacleInteractions is 1;
		now TentacleStatus is 10; [Player fled]
		WaitLineBreak;
	else:
		say "     With a righteous yell, you charge straight into the mass of tentacles, looking for some sort of central mass so you can kill the thing! However, as you get closer and closer to the origin of the tentacles, you're distraught to see that there's no obvious [']brain['] controlling the mass. They just seem to be coming out of the ground! Realizing your mistake, you try to backpedal away, hoping to escape. You're never given that opportunity, however, as four of the writhing tendrils latch onto each of your limbs, wrapping around them and hoisting you into the air. They pull each limb in a different direction, leaving you completely spread eagle.";
		WaitLineBreak;
		say "     A new, slimmer tentacle slips under your shirt, before yanking it off of your body. Another similar tendril slips into the rest of your clothing, pulling that away from your body as well. More of the tentacles caress over your body, leaving slimy trails of blue fluid in their wake. You let out a startled gasp as you feel a new tendril slipping between your ass cheeks before pressing its way into your hole mercilessly. The thing worms its way into you slowly and deliberately, winding around your interior paths, before it begins to pull out.";
		if player is mpreg_ok:
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
	say "     As you read about the mass of tentacles, your eyes widen in horror. Apparently, the tentacles will not only rape the unlucky victim, they also sometimes lay eggs in them! No one is exactly sure why the tentacles do this, or who they'll do it to, as it seems to be random. If there's one good thing to note, it's that the tentacles don't usually fertilize the eggs. Instead, they leave them there for the victim to do with as they please. [if player is puremale]Interestingly[else]Thankfully[end if], they only seem to be interested in [italic type]males[roman type], oddly enough. You shut the book after reading the page, shaking your head in attempt to get thought of egg-laying tentacles out of your head.";
	now TentacleRead is true;
	now TomeInteractions is 2;
	now TomeEventPending is true;

Ancient Tentacles ends here.
