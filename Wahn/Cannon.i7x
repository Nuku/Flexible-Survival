Version 1 of Cannon by Wahn begins here.
[ Version 1.5 - Moved to Wahn ]
[ Version 1.4 - Moved to Guest Writers ]
[ Version 1.3 - Bounty for Bradford - Stripes ]
[ Original by Hiccup ]

"Adds a Cock Cannon to Flexible Survival's Wandering Monsters table"

Section 1 - Creature Responses

cclosscount is a number that varies.

to say cannon desc:
	say "     An at least nine-foot tall, perverted abomination stands before you: Literally an ambulatory, giant human cock. Its body consists of a throbbing, veiny shaft as thick as a human torso, covered in chocolate-colored skin. As impossible as that sounds, it can twist and bend its shaft any which way, aiming the mushroom-shaped dickhead as if to [']look['] around. There aren't any eyes on its head, only smooth, curved skin, with a slightly flared rim toward its upper back and a vertical slit that seems to be a sensory organ. The moist opening widens and narrows as it focuses on something it wants to study. Towards the rear, it has the most gloriously round and juicy pair of buttocks that you've ever seen on any unnatural cock-creature, with a slim, flexible tail growing out of the tailbone, about three feet long and ending in a spaded tip. A pair of firmly muscled legs that end in digitigrade, clawed feet complete the image of a creature that is quite abnormal[if Player is kinky], yet somehow hard to look away from[end if].";
	if "Female Preferred" is listed in feats of Player:
		say "     Becoming aware of your presence, it turns towards you, sending a tingle up your spine at the feeling of being watched. Staying perfectly still for a moment, it then tilts the head right and left a little, as if to get different viewing angles, while the tail behind its back begins to whip left and right in unruly, jerking movements. Something must have displeased it, as it immediately turns around and leaves.";
		say "     [bold type]Note: The creature won't fight you since you have the Female Preferred feat.[roman type][line break]";
		now combat abort is 1;
	else:
		say "     Becoming aware of your presence, it turns towards you, sending a tingle up your spine at the feeling of being watched. Staying perfectly still for a moment, it then tilts the head right and left a little, as if to get different viewing angles, while the tail behind its back begins to slowly weave left and right, like a curiously interested dog. Then it starts to trot forwards, slow steps quickly building up to an outright sprint.";

[The Cock Cannon inflicts no damage, but the player has a limited number of turns to defeat the Cock Cannon before it fires. If it fires, the player automatically loses.]

to say cannon wins:
	increase cclosscount by 1;
	if "Female Preferred" is listed in feats of Player:
		say "ERROR - The Cock Cannon should not fight a player with the Female Preferred feat.";
	else:
		if cclosscount < 3 or cclosscount is even or scalevalue of Player > 4 or vorelevel is 1:
			say "     You hear a strange whistling noise in the air, before a huge glob of sticky white cum falls out of the sky and soaks your [bodytype of Player] body from head to foot. The blast is so large it knocks you to the ground, leaving you dazed and soaked in semen. Its job completed, the cock cannon leaves.";
		else:
			say "     As it bends its cock-shaped body to aim the slit of its mushroom head in your direction, the cock-cannon's inner workings make a sloshing sound, immediately followed by the weird creature unloading a powerful blast right at you. An unbelievably large torrent of sticky white cum gushes forth, and the sheer momentum of this first monstrous spurt simply knocks you over, sending you sprawling to the ground in a daze. This is just the beginning, as the over-excited creature ejaculates all over your form, completely soaking your [bodytype of Player] body from head to foot. Though smaller than the first eruption, each new blast must be close to a gallon of cum in volume, dousing you in its slick, clinging load. Only after fully draining its internal reserves does the cock-monster relent, wobbling a little unsteadily on its feet as it approaches to inspect its handiwork.";
			say "     Plastered to the street by lukewarm goop, you count your blessings that the creature's load doesn't sting your eyes, as they're completely covered like the rest of your dripping form. Still, seeing through a layer of cum gives the world a hazy, whiteish appearance, as if you were in an incredibly thick fog bank, so you quickly wipe your face - which reveals the cock cannon's head right above your own, staring down at you intently with its vertical cum-slit in a narrow focus. As it is literally just a foot above your face, you think you can make out the edges of the slit vibrating in a miniscule but very rapid fashion, sending out echolocation(?) signals to take in your cum-covered body. With a self-satisfied gurgle, the cock cannon bends its body even closer, at which point it becomes apparent that the cum-slit of its head extends far beyond the 'normal' amount it opened so far. With a ripple of flexing muscles that previously were pressed together so firmly that there was barely a visible line between the two sides, the creature opens the vertical slit to its maximum, gaping all the way across the full curve of its dickhead!";
			LineBreak;
			say "     [bold type]Having opened itself wide enough to engulf you, and coming closer by the second, you barely have a second to decide that...[roman type][line break]";
			LineBreak;
			let CockCannon_Loss_Choices be a list of text;
			add "You'll clench your eyes shut and endure what comes next. Far too late to escape now!" to CockCannon_Loss_Choices;
			add "You'll welcome being pulled into it! The thought is pretty hot actually, and it turns you on." to CockCannon_Loss_Choices;
			add "You'll fight it till the last! You don't wanna be slurped up by no cock monster!" to CockCannon_Loss_Choices;
			let CockCannon_Loss_Choice be what the player chooses from CockCannon_Loss_Choices;
			if CockCannon_Loss_Choice is:
				-- "You'll clench your eyes shut and endure what comes next. Far too late to escape now!":
					LineBreak;
					say "     Resigning yourself to what the weird beast has in store for you next, you clench your eyes and mouth firmly shut and go to your happy place, trying to shut out the ever-weirder reality of the city. A moment later, you can feel the warm, slippery touch of the cock monster's toothless maw sliding over your head and widening as it engulfs your shoulders, gulping you into its monstrous shaft like a snake swallowing its prey. The cock cannon proceeds to suck you in further and further, voraciously making use of your lack of resistance. Soon, your torso, hips and then legs are engulfed, and it raises its body at an angle to let gravity assist your body's glide into its pulsating innards. Rolling muscle-flexes of the enormous cum-tube propel you deeper, and the pervasive scent of semen completely fills your nostrils. At least you don't have to taste it! Your lips are tightly clenched, keeping the gooey cocktail from invading your mouth.";
					say "     Then suddenly, your head bumps against... some sort of pucker, which opens up to allow passage into a moderately more spacious chamber beyond. Before you have an opportunity to react, you're already pushed past the ring muscle and sent tumbling into the creature's internal compartment, landing face-first in the fluid filling the lower third of it. Thankfully it is 'only' cum, as some of the goop goes up your nose and you quickly blow it out. The internal cum-reservoir you landed in is still fairly snug, but much better than the vice-like grip of the cum tube, so you manage at least to turn yourself the right way up with some amount of difficulty, given the slick-slippery walls['] lack of handholds.";
					WaitLineBreak;
					say "     Curling yourself into a tight ball, you sit tight and endure, silently thankful that there isn't anything worse happening right now, besides being stashed in this weird, warm and slimy chamber. It's better than being eaten by something with a more conventional stomach, that's for sure! Still, you're getting rather woozy from the moist, musky air in here, and walking/running movements of the surrounding creature throw you left and right, amidst the load of sloshing cum. After who-knows-how-long of marinating in the cum-chamber of the cock creature, you realize at some point that the fluid level of cum around you is rapidly rising, as the beast seems to be building up for what can only be a new eruption! While your confused, sluggish mind is still reeling as it tries to comprehend what that might mean for you, pressure grows within the cum reservoir, and you're expelled from its fleshy tube with bewildering speed, arcing through the air like a slippery comet with a tail of white cock-monster semen.";
				-- "You'll welcome being pulled into it! The thought is pretty hot actually, and it turns you on.":
					LineBreak;
					say "     Eagerly awaiting whatever experience the weird beast has in store for you next, you smile at the approaching dickhead and draw your arm out from the enveloping goop of cum plastering it to the asphalt beneath. Slipping free with a wet slurp, you raise your hand to the cock cannon, slowly as not to appear aggressive, stroking the wet curve of its head to the side of the open, quivering cum-slit. As your fingers sweep over the soft, slick skin, you reach the lower rim of the mushroom head and slip your fingertips beneath that, rubbing and caressing like one would scritch the chin of a cat. And it works - the weird beast really likes being touched there apparently, craning its head against your fingers while the wide-open maw quivers excitedly.";
					say "     The cock cannon enjoys your petting and stays still for a little while, before eventually letting out a happy gurgle, with an increased amount of wet goop dripping from its open cum-slit. Seems like it wants to move on to the main event now, which is just fine by you. You smile and give it a last stroke, then raise both arms to place your hands between the gaping sides of the opening. Letting your fingers play over the smooth inner walls, you feel your heart beat faster in excitement. Then the toothless maw tightens around your forearms, and you can feel it start to suck you in. As you're just waiting to be engulfed, the cock cannon easily slurps in your arms, quickly followed by the rim of its cum-slit passing over your head. This gives you a fascinating close-up view of the wet and slimy inner walls of the creature, and you just can't help yourself and stick your tongue out to lick it experimentally, taking in the pleasantly sweet taste and tingly aftereffects of its slick pre-cum on your tastebuds.";
					WaitLineBreak;
					say "     In the blink of an eye, you're pulled in further, with all light snuffed out by the enveloping flesh, so you focus on all your other senses, not wanting to miss a moment of this unique experience. Soon, your torso, hips and then legs are engulfed, and it raises its body at an angle to let gravity assist your body's glide into its pulsating innards. Rolling muscle-flexes of the enormous cum-tube you're inside of propel you deeper, and the pervasive scent of semen completely fills your nostrils. As you're being moved along, you keep flicking out your tongue to tease the inner walls playfully, getting some more of the cock beast's taste in your mouth. Suddenly, you can feel your hands bump against... some sort of pucker, which opens up to allow passage into a moderately more spacious chamber beyond. Before you have an opportunity to react, you're already pushed past the ring muscle and sent tumbling into the creature's internal compartment, landing face-first in the fluid filling the lower third of it.";
					say "     Unsurprisingly, it is more cum, which is just fine by you, and you gulp up a mouthful to swallow down, filling your insides with pleasant warmth as it trickles down your throat. The internal cum-reservoir you landed in is still fairly snug, but much better than the vice-like grip of the cum tube, so you manage to turn yourself the right way up again with some amount of difficulty, given the slick-slippery walls['] lack of handholds. All around you is the warm, womb-like chamber of the large beast, and you're sitting in a bathwater-warm pool of its cum like some perverted hot-tub. Something about all of this is oddly pleasant and stimulating, with even the way the fluid sloshes around a little as your current host walks around contributing to a comfortable sensation in your mind.";
					WaitLineBreak;
					say "     [bold type]The cock cannon seems quite content with having you just residing where you are for now. How do you want to occupy yourself while you're inside its body?[roman type][line break]";
					LineBreak;
					let CockCannon_Internal_Choices be a list of text;
					add "A nap seems just about right! This is just the perfect place for it!" to CockCannon_Internal_Choices;
					if Player is male:
						add "You'll jerk off! This is a cum chamber, so why not add a little bit more?!" to CockCannon_Internal_Choices;
					if Player is female:
						add "Dip your fingers between your nether lips and masturbate." to CockCannon_Internal_Choices;
					add "Finger your ass and get off. Your digits are certainly slick enough!" to CockCannon_Internal_Choices;
					let CockCannon_Internal_Choice be what the player chooses from CockCannon_Internal_Choices;
					if CockCannon_Internal_Choice is:
						-- "A nap seems just about right! This is just the perfect place for it!":
							LineBreak;
							say "     With a chuckle, you simply curl up and lean against the warm wall beside your head, waiting for sleep to come. Taking in slow, deep breaths of the moist, musky air in here, it doesn't take too long before you doze off happily enough. After marinating in the cum-chamber of the cock creature for who knows how long, something wakes you from your slumber. You realize then that the fluid level of cum around you is rapidly rising, as the beast seems to be building up for what can only be a new eruption! While your still rather groggy, sluggish mind is still reeling as it tries to comprehend what that might mean for you, pressure grows within the cum reservoir, and you're expelled from its fleshy tube with bewildering speed, arcing through the air like a slippery comet with a tail of white cock-monster semen.";
						-- "You'll jerk off! This is a cum chamber, so why not add a little bit more?!":
							LineBreak;
							say "     Your libido flares up, excited by the situation you landed yourself in, and your hands quickly fly to your crotch[if Player is not barecrotch] freeing it from your clothing and [else], [end if]wrapping your fingers around the rapidly hardening shaft of your [Cock of Player] manhood. What a place to jerk off, hah! Your erection twitches as you dip it into the cock monster's seed, then use that as improvised lube to allow your hand to easier slide along your length. You fill the inside of the cock cannon with moans and the wet sounds of pleasuring yourself, rapidly enflaming your arousal to new heights. Soon, [if Player is not internalBalls]your balls pull up in their sack, dripping-wet with the cock cannon's semen, and [end if]you erupt into your host's cum chamber. If only there was light in here, you'd love to see your seed painting its inner walls and mingling with the creature's cum.";
							say "     As you come down from the high of your orgasm, you start to realize the fluid level of cum around you is rapidly rising, and not just from your own contribution. The beast seems to be building up for what can only be a new eruption! While your still pretty lust-fogged mind is still reeling as it tries to comprehend what that might mean for you, pressure grows within the cum reservoir, and you're expelled from its fleshy tube with bewildering speed, arcing through the air like a slippery comet with a tail of white cock-monster semen.";
							CreatureSexAftermath "Player" receives "Stroking" from "Cock Cannon";
						-- "Dip your fingers between your nether lips and masturbate.":
							LineBreak;
							say "     Your libido flares up, excited by the situation you landed yourself in, and your hands quickly fly to your crotch[if Player is not barecrotch] freeing it from your clothing and [else], [end if]parting the folds of your pussy and dipping two fingers in between them. Given that you're crouched hip-deep in the creature's cum, your fingers would be slick and slippery even if you weren't moist and dripping from arousal, and your thrusting digits push the comfortably warm goop deeper and deeper into your body. At the same time, your other hand's fingers are covering your sensitive clit, rubbing it with excited energy. What a place to finger yourself, hah! Your arousal spikes and soon cannot be contained anymore, and with a breathless moan, you orgasm around your thrusting fingers, mixing your own juices [if Player is Male]and cum [end if]with the creature's seed.";
							say "     As you come down from the high of your orgasm a little while later, you start to realize the fluid level of cum around you is rapidly rising, and not just from your own contribution of [if Player is Male]cum and [end if]femcum. The beast seems to be building up for what can only be a new eruption! While your still pretty lust-fogged mind is still reeling as it tries to comprehend what that might mean for you, pressure grows within the cum reservoir, and you're expelled from its fleshy tube with bewildering speed, arcing through the air like a slippery comet with a tail of white cock-monster semen.";
							CreatureSexAftermath "Player" receives "Stroking" from "Cock Cannon";
							setmonster "Cock Cannon";
							fimpregchance; [intentionally externalized, so that the cock cannon isn't taking virginities if its just the player fingerbanging themselves]
						-- "Finger your ass and get off. Your digits are certainly slick enough!":
							LineBreak;
							say "     Your libido flares up, excited by the situation you landed yourself in, and your hands quickly fly to your hips[if Player is not barecrotch] freeing it from your clothing and [else], [end if]reaching around to part the cheeks of your rear end. Given that you're crouched right in the creature's cum, you don't even need to lower your hand to slicken your fingers with that improvised lube, instead just moving straight to feel up your quivering hole. With things being so very slick and slippery, you easily sink your digits into your back door, and your thrusting digits push the comfortably warm goop of cock cannon seed deeper and deeper into your body. At the same time, your other hand's fingers [if Player is male]are wrapped around your cock, jerking it with excited haste. [else if Player is female]are covering your sensitive clit, rubbing it with excited energy. [else]are playing over your own genderless crotch, stimulating it with excited haste. [end if][line break]";
							say "     What a place to finger yourself in, hah! Your arousal spikes and soon cannot be contained anymore, and with a breathless moan, you orgasm while finger-banging your ass[if Player is male], mixing your own cum with the creature's seed. [else if Player is female], mixing your own femcum with the creature's seed. [else]. [end if]As you come down from the high of your orgasm a little while later, you start to realize the fluid level of cum around you is rapidly rising[if Player is not neuter], and not just from your own contribution of [end if][if Player is herm]cum and femcum[else if Player is male]cum[else]femcum[end if]. The beast seems to be building up for what can only be a new eruption! While your still pretty lust-fogged mind is still reeling as it tries to comprehend what that might mean for you, pressure grows within the cum reservoir, and you're expelled from its fleshy tube with bewildering speed, arcing through the air like a slippery comet with a tail of white cock-monster semen.";
							CreatureSexAftermath "Player" receives "Stroking" from "Cock Cannon";
							setmonster "Cock Cannon";
							mimpregchance; [intentionally externalized, so that the cock cannon isn't taking virginities if its just the player fingerbanging themselves]
					WaitLineBreak;
				-- "You'll fight it till the last! You don't wanna be slurped up by no cock monster!":
					LineBreak;
					say "     Trying to bring up your arm is much harder than you'd have thought, buried under clinging white goop as it is. You have to put in some force to wrench it free with a wet slurp that sends droplets of cum flying. Sadly, this delay gives your opponent plenty of time to ready itself for your attack. As your dripping fist swings up to the cock cannon's head, it is already waiting, and what should have been a strong blow is simply swallowed up by the toothless maw of its bisected dickhead. With your arm instantly buried up to the elbow, the cock cannon proceeds to suck it in further, voraciously ignoring your attempt to resist. An eyeblink later, your head is the next thing to be pulled between the quivering edges of the giant dickhead, giving you an involuntary close-up view of the wet and slimy inner walls of the creature before you're so far inside that there's no light anymore.";
					say "     Flailing your free arm around in a last attempt to reverse this predicament, you manage to grasp the rim of the creature's mushroom head. Contrary to the slick and smooth top side, the under-rim of the cock monster's head is more spongy and squishy underneath your fingers. Clearly, it also is an erogenous zone for the weird beast, as you can feel a warm throb all around your partly-engulfed top half, accompanying a lustful gurgle from the cock cannon. With newly increased vehemence for wanting to slurp you up completely, it sucks on you [italic type]hard[roman type], making you lose your grip and slip down further along the inside of its shaft. With your second arm now clamped tight against your side as the enveloping walls wrap tight around your torso, you can do little but let out muffled screams and kick impotently as your whole form is soon engulfed by the creature.";
					WaitLineBreak;
					say "     Rolling muscle-flexes of the enormous cum-tube you're inside of propel you further and further into the dark, and the pervasive scent of semen completely fills your nostrils. At least you don't have to taste it, keeping your lips tightly clenched. Then suddenly, you can feel your raised fist pass... some sort of pucker, with a less confining chamber beyond. Before you have any opportunity to act beyond simply registering this, you're already sliding bodily into the creature's internal compartment, landing face-first in the fluid filling the lower third of it. Thankfully it is 'only' cum, as some of the goop goes up your nose and you quickly blow it out. The internal cum-reservoir you landed in is still fairly snug, but much better than the vice-like grip of the cum tube, so you manage at least to turn yourself the right way up again with some amount of difficulty, given the slick-slippery walls['] lack of handholds.";
					say "     After a moment of searching around with your fingers for the spot where you came into the chamber, maybe to climb back up or escape in some way, you become frustrated as everything feels kinda the same: warm, slimy, and too smooth to grip. Growling at the indignity of being gobbled up by a cock monster, you blindly unleash a flurry of punches against its inner walls. It isn't very effective since the moist, musky air in here makes you quite woozy and weak, but you do cause a reaction, as there is a rumbling from all around you, and the walls squeeze in tighter, then relax, and squeeze again. It's difficult to notice at first, given that you're already soaked and in the dark, but the fluid level of cum around you is rapidly rising, as the beast seems to be building up for a new eruption! While your confused, sluggish mind is still reeling as it tries to comprehend what that might mean for you, pressure grows within the cum reservoir, and you're expelled from its fleshy tube with bewildering speed, arcing through the air like a slippery comet with a tail of white cock-monster semen.";
			WaitLineBreak;
			say "     The outside world flashes past your cum-covered eyes in a milky haze, only allowing you to make out that you were thankfully launched at a fairly shallow angle, before you hit the cock cannon's intended target: some [one of]canine[or]feline[or]reptile[or]equine[or]bunny[or]rodent[or]humanoid[as decreasingly likely outcomes] creature, bowling it over. While crashing into someone isn't particularly pleasant, it is much better than more solid alternatives, like a wall for example. Still, having been launched face-first, you're knocked out by the impact, and come to again a little while later, rubbing your head as you sit up. There is no sign of the beast you fought before, but its unlucky target is clearly quite easily affected by the nanites, as they're in the process of transforming rapidly, becoming increasingly phallic and making it hard to identify who or what they were. You get up quickly and make your messy escape before you have to deal with yet another cock-monster.";
			infect;

to say cannon loses:
	say "     Visibly struggling to keep up with what you're dishing out, the cock cannon rears back, flexing the throbbing shaft of its body to shake its 'head' as if to clear it, giving you a long 'look' with the cum-slit of the mushroom head. The tail behind its back waves left and right in whip-like movements that you interpret as wanting to challenge you yet again. Given that the thing [italic type]does[roman type] think with its dickhead, it doesn't appear to realize that you're about to defeat it. The next thing it does is charge right for you, as subtle as a snorting bull. Perhaps to overwhelm you with the mother of all cock-slaps? Worn out from your fight as the cock cannon is, it isn't hard at all to just jump out of the way, leaving the weird beast to careen past you at running speed, only to find an obstacle in its path. Unable to stop its momentum, while only partially succeeding at a twist to the side, the walking cock slams against [one of]a wall[or]a lamppost[or]a garbage container[or]a wrecked bus[or]a wrecked car[or]a tree[at random].";
	say "     Staggered by the impact, the cock cannon keeps stumbling around for a few more steps before losing its balance completely. Slumping to its knees, the creature can't hold up its shaft-like body anymore and thuds onto the ground. Finally, the beast's will to fight has been suppressed, and its erect form deflates a little bit, just resting where it lies for now. You're still a bit wary, but also curious, so you move around the thing, which only gives you a weak 'glance' with its cum-slit and doesn't try to get up again. Instead, a sad burbling sound emerges from its body, with the tail behind its back hanging down limply.";
	say "     [bold type]What do you want to do now?[roman type][line break]";
	let Cock_Cannon_Defeated_Choices be a list of text;
	add "Step up and study its shaft and head, including some (non-sexual) touching." to Cock_Cannon_Defeated_Choices;
	add "Step up and study its legs and rear, including some (non-sexual) touching." to Cock_Cannon_Defeated_Choices;
	if Player is male:
		add "Get some use out of it - Fuck the creature's ass!" to Cock_Cannon_Defeated_Choices;
		add "Get some use out of it - Fuck the creature's cum-slit!" to Cock_Cannon_Defeated_Choices;
	add "Get away from the weird thing and leave it behind." to Cock_Cannon_Defeated_Choices;
	let Cock_Cannon_Defeated_Choice be what the player chooses from Cock_Cannon_Defeated_Choices;
	if Cock_Cannon_Defeated_Choice is:
		-- "Step up and study its shaft and head, including some (non-sexual) touching.":
			say "     Deciding to use the opportunity to examine the momentarily pacified cock-beast, you move closer and have a detailed look and touch. Making some calming noises, you reach out to lay a hand on the side of the shaft, which feels pleasantly warm and toasty, plus fairly solid, even in its current state. A number of thick, pulsing veins run across the cock-like body, allowing exceptional blood-circulation that keeps the creature's form heated from within, no matter its surroundings. You can feel the steady beat of a large heart through the throbbing of the veins. Moving further up the shaft, you brush against the underside of the dickhead's rim, which sends a visible throb along its body. The beast also tries to prolong the contact, attempting to rub against you. It seems like your cock-monster likes to have that sensitive zone touched, quite a bit. Which of course means that you've got to keep your hands away, otherwise the currently pacified creature might get ideas. You don't want your exploration cut short, after all!";
			say "     Pulling back from accidentally arousing the cock cannon even further, you move your hands up on top of the head instead. This area is slightly softer to the touch than the shaft below, with the smoothly curved skin under your fingertips being a little slick due to fluid that leaked from the slit at the center. There is no hint of normal eyes or other sensory organs, though by its earlier behavior, the cum-slit seems to fill that role and the cock cannon does widen or narrow the opening as it focuses on things near and far. Could that be... echolocation? If so, maybe the blunt head and its raised rim at the back serve as a 'receiver' for vibrations bouncing off nearby objects? While still wondering about that, you realize that there's an almost invisible line running up over the dickhead, and down too, starting at the ends of the cum-slit. It almost looks like the dickhead isn't a single piece at all, but rather two halves...";
			WaitLineBreak;
			say "     In best explorer fashion (After all, 'Goo is good - without the d!'), you stick two fingers into the slick opening, gently pressing them against its sides as you run your fingers downwards - and indeed, what looks like the 'end' of the slit is not what it appeared to be at first glance. Strings of slimy goop stretch between the two sides as your fingers run along the 'seam' of pressed-together muscle that opens for maybe an inch or two around your fingers, then seals almost invisibly once your digits pass further downwards. After reaching the lower rim of the head, where the slit [italic type]actually[roman type] ends, you proceed to examine the upper side too, finding that the slit continues all the way up to where the 'crest' of the dickhead begins. Turns out that the cock cannons can open up their cum-slit to an orifice as wide as their shaft-like body, with what feels like strong and flexible muscles on the inside! Your imagination gleefully paints some very unnatural images detailing what the creature could use this ability for, while you distractedly wipe your goopy fingers off against its shaft.";
			say "     As fascinating as your examination was, all the stroking and fingering seems to have re-invigorated the weird beast and you can see its shaft fill out further by the second! Soon no longer content to limply lie around, the cock body starts to curve up at the end, and the tail begins to move animatedly once more. You decide to call it quits for now, before the cock cannon decides to go for round two. It'd be a shame to have to fight again, after it docilely submitted to your examination up to this point. With a friendly pat of its dickhead, you stand up and hurry to gain some distance before the creature can rise on its clawed feet.";
			TraitGain "CockCannon_Head_Exam" for Player;
		-- "Step up and study its legs and rear, including some (non-sexual) touching.":
			say "     Starting at the feet, you let your eyes wander over one of the most 'inhuman' parts of the cock cannon, odd as that may sound for a wholly unnatural beast. But in the end, most of the creature is made up of regular human anatomy, just enlarged to a ridiculous degree and baffling the imagination. How can such a cock monster even be alive at all? Focusing back on the feet, you see they're fairly terrifying, shaped like large digitigrade paws with three large claws ending in sharp points. It wouldn't be pretty if the creature slashed someone with those! Thankfully, the cock cannon showed no intention of using its claws in combat, even when you had it in dire straits and were about to win. Perhaps it keeps them in reserve unless its life truly is in danger? Either way, it is good to know that at least your current example of a cock monster may be combative, but isn't vicious. Feeling around a little, you push against the underside of one paw to see how far the claws can stretch apart. A heartbeat after you touch a certain spot, the creature begins to writhe on the ground in an uncoordinated fashion, with gurgling and sloshing noises welling up from the slit on its head.";
			say "     Unsure what's happening, if you hurt it accidentally or something like that, you relax your fingers from pressing against its foot, but the cock cannon doesn't even try to pull away. Further, its squirming seems more... delighted than distressed, and the paw rests in your grasp without any sign of aggression from the creature. It's almost as if it's inviting you to have another go. And that's when the realization strikes you that it simply is ticklish! With a smile on your face, you playfully walk your fingers over the underside of the paw one more time before moving on with your examination once it calms down. Working your way up the legs, you let your fingers wander over thick, ropy muscles that feel warm and firm, and which empower it to charge like a bull. Then there's that wondrously bouncy ass - a gloriously round and full pair of juicy orbs with a perfect mixture of jiggle and firmness, splayed out smooth and pristine before you.";
			WaitLineBreak;
			say "     Actually, its ass is suspiciously smooth... the realization strikes you that the creature you are examining [italic type]literally[roman type] has no hair follicles, anywhere on its body. It's not just that there is no hair growing, but the skin isn't even equipped for that at all. At this point, you suppose you shouldn't be surprised. 'Strange and unnatural' seems to be the entire point of its existence. Shaking your head, you continue with a casual inspection of the cock monster's crack that reveals relatively normal human anatomy, complete with the wrinkled ring of a pucker. Curiosity dares you to brush your fingertip over it, making the creature writhe in pleasure and push back against your touch, with its back door trembling and flexing. Another sensitive spot to mark down in your mental notes. Moving up a little, you find the base of the tail, emerging from the back of the cock-body, just above the ass. The appendage growing out from there is smooth and round, and you can feel the outline of its bones through the skin when you give it a squeeze (which the creature doesn't seem to like!). This leads to you being able to observe a remarkable flexibility as the tail tries to wind itself out of your grasp.";
			say "     As your subject is getting a bit unruly now, still trying to free its tail, you decide to move forward quickly to finish your examination. Snatching the flailing appendage's end, you grab hold of the tail spade, which thankfully turns out to be flexible and fleshy, not the dangerous spike it appears to be at first glance. Looks like the cock cannon can bend, roll and flex the triangle as it wishes, and you hazard a guess that it might be fully prehensile, making it a fairly important part of the cock creature's body. That would explain why having the tail trapped in your hands is so disconcerting for the beast, which grows more and more animated by the second. Best to call it quits for now, before the cock cannon gets back onto its feet for a second round...";
			TraitGain "CockCannon_Rear_Exam" for Player;
		-- "Get some use out of it - Fuck the creature's ass!":
			say "     Walking around to the back side of the creature, you feast your eyes on the round globes of his rear end. The shiny, chocolate-colored skin is just irresistible, and you reach out to touch the pair of juicy orbs, squeezing and shaking them a little. For being a giant cock monster, the ass on this thing is simply amazing, with the perfect mixture of jiggle and firmness to the smooth-skinned buttocks. Pulling them apart, your gaze falls upon the hairless crack between, and the beauty of a tight hole just waiting for your [Cock of Player] shaft. Gathering a bunch of spit, you let it drip off the tip of your tongue, then use two fingers to spread the improvised lube across the wrinkled pucker of your currently pacified cock cannon. Feeling your fingers glide over the sensitive area of its back door has a marked effect on the weird beast, as it writhes in apparent pleasure and pushes itself back, so suddenly that your fingertips accidentally slip inside instead of just teasing the hole.";
			say "     The cock monster's insides snugly envelop your digits, being at the same time surprisingly moist and slick, almost as if it had already been lubed for your pleasure. Deciding to just keep going, you sink your pair of fingers in deeper, allowing them to be enveloped by the comfortable warmth of the creature's asshole. As you proceed to explore, your fingers twisting and rotating as they feel around, you soon encounter a spot that feels a little firmer than the surrounding passage, and experimentally give it a rub. There is a sort of sloshing sound from your inhuman plaything, and the cock cannon's shaft seems to fill out a little, re-gaining some of its hardness. Lifting its dickhead, the creature twists it around to glance at you with its slit starting to leak some clear fluid that looks like pre-cum. With a pleased reaction like that, you're fairly sure that you found the prostate, and that your play-mate really liked being fingered there.";
			WaitLineBreak;
			say "     Playfully, you rub your former opponent's magic button a little more, with the creature being perfectly happy to just be stimulated like this, even laying its head back down to loll back and forth a little as its shaft trembles in pleasure. It is fun to see how it reacts to tapping, stroking or thrusting against its prostate with your two fingers, and you move your other hand to touch your crotch as you do so. Soon, you're ready to unleash your own desires, wanting to penetrate the cock cannon properly now, and start to withdraw your fingers from its insides. Yet, before you even reach your first set of knuckles, the creature's three foot long tail begins to wrap itself tightly around your arm, urgently dragging it back against the ass-crack to keep your fingers inside to fuel its burning libido. Laying your free hand gently on its lower back and caressing the cock-beast, you explain in a soothing tone that you just want to switch over to something that'll feel even better.";
			say "     There is a low gurgling noise up at its head, followed by the tail slackening just a little bit. Stroking the inhuman beast's skin with slow, circling movements, you work your arm free, fingers slipping out of a needy hole that only reluctantly releases its grip. Just as eager as your former opponent, you quickly [if Player is not barecrotch]free [else]grab hold of [end if]your [Cock of Player] shaft and guide it to the cock cannon's asshole, which 'winks' at you as the cock cannon actively opens itself to you, in the desperate desire to be filled once more. Brushing your sensitive dickhead over the opening, you make note of the pleasurable warmth of that touch, and also awaiting you within. The cock cannons must naturally run at a hotter temperature than a run of the mill human. But that's a thought to be explored another time - right now, you're too horny to waste one more moment on such secondary concerns!";
			WaitLineBreak;
			say "     With one hand holding your cock just below the dickhead, you guide yourself into the asshole of your play-mate, sliding inside the welcoming opening. It feels great to sheathe yourself in the defeated beast, inch after inch sinking into the embrace of that tight cave. You're not the only one enjoying the experience, as demonstrated by the beast's tail coming to wrap around your midriff, drawing you closer while eagerly wiggling its rear a little, heightening the sensation of slick walls rolling against your cock. With a moan on your lips, your dickhead brushes up against the creature's prostate for the first time, and the cock cannon begins to writhe in pleasure, its inner passage squeezing tight around your erection. ";
			if Cock Length of Player > 10: [extra special scene for long cocks]
				say "Continuing to sink more of your length into the tight hole, you find yourself momentarily surprised as you encounter another sphincter after maybe ten or so inches within. It provides only momentary resistance before letting you push through, allowing your dickhead into what feels like a more open section of the creature's insides. There's no sensation of tightness there, past where the sphincter forms a snug ring around your shaft, but your dickhead instead feels like it is bathed in slick, cozily warm fluid.";
				say "     Looking down, you guess that you're buried far enough inside the cock cannon to have reached the very base of its shaft, where it connects to the ass and legs. Hmm... it doesn't have external balls, neither normal sized nor grown to the ridiculous scale of the cock, so that must mean that there's some [italic type]other[roman type] place where this thing stores its cum. Did your long spear of a cock truly invade the innermost recesses of this strange beast? In a mixture of curiosity and arousal, you start to withdraw, slowly not to spook the cock monster, and as your erection slides into view bit by bit, white traces along the shaft seem to confirm your suspicion. The emergence of your dickhead clears up any possibly ambiguity, as it is drenched in white and accompanied by a gush of cum that must have leaked past the inner pucker when you pulled out. Looks like your cock is long enough that you're fucking straight into the inner cum-chamber of the cock monster, which is... oddly satisfying and arousing.";
				WaitLineBreak;
				say "     You can't help but grin as you place your cummy dickhead right up against the gaping hole of the cock cannon's ass, then thrust yourself home as deep as you can go. With the head of your dick entering its inner chamber once more, both of you tremble in pleasure, and the creature's cum roils and sloshes almost as if welcoming you back. Leaning forward to wrap your arms around the cock-monster's shaft, you begin to hump its ass with wild abandon, hammering in and out of the slick, yet tightly gripping passage and churning its load to mix with your leaking pre. Given the plentiful stimulation in its ass, and having you embracing the shaft-like body in a tight hug, it's hard to miss that the cock monster quickly gets harder than ever, its body re-invigorated and full of energy. So much so, that it gets its feet back under itself soon after, rising up from the ground easily, even as you cling on frantically, rabbit-fucking its ass.";
				say "     Thankfully, the cock monster has no desire to throw you off or do anything drastic. It simply twists its once more erect shaft around to amicably 'nuzzle' your side with its dickhead, leaving a moist patch of pre-cum behind as it does so, and twerks its juicy rear to meet your hammering thrusts. The close embrace of your unnatural union continues in a sweat-driving, wild and untamed display of lustful mating, until you can feel yourself getting close and loudly announce this, even though you don't even know if the beast understands anything you say. Of course, the increasingly frantic air of your thrusts and your tightly wrapped arms on its shaft make things more than clear. Moments later, you bury your cock inside as deep as it will go, and you start to gush your creamy load to mix together with the cock cannon's seed.";
				WaitLineBreak;
				say "     Something about the pulse of cum-spurts through your erection throbbing against its prostate, or possibly you filling up its cum-chamber, pushes the cock monster over the edge right along with you, and it straightens up urgently, aiming skywards in a proud pillar of throbbing flesh. Then, with an overwhelming gurgle and splash, it erupts like a geyser, sending a first wrist-thick spurt of foamy seed arching high into the air to land god-knows-where. Your eyes roll up in their sockets from the incredible sensation of being sucked off [italic type]hard[roman type] by the cum-chamber in its process of being emptied-out, drawing in what it can from your own balls to fuel the ongoing series of semen blasts erupting from the creature. Riding out this experience in a mindless haze of pleasure, you clutch tightly onto your abnormal sex-partner, losing all sense of time.";
				say "     Eventually, when your thoughts become clear again, you find yourself still hugging the cock cannon, both of you lying on the ground in a sweaty, thoroughly satisfied heap. Having emptied itself out, and just orgasmed, the creature is as limp as you've ever seen, yet there is an air of fulfillment in its lazy movements. Weakly raising its large dickhead, it focuses the slit to look at you once more, then lets out a friendly burble before laying down on the ground to rest, soon dozing peacefully. This leaves you free to disentangle yourself, pulling out and cleaning yourself up before you get going. Phew, that was certainly an extraordinary experience!";
			else: [regular cocks]
				say "Leaning forward to wrap your arms around the cock-monster's shaft, you begin to hump its ass with wild abandon, hammering in and out of the slick, yet tightly gripping passage. Given the plentiful stimulation in its ass, and having you embracing the shaft-like body in a tight hug, it's hard to miss that the cock monster quickly gets harder than ever, its body re-invigorated and full of energy. So much so, that it gets its feet back under itself soon after, rising up from the ground easily, even as you cling on frantically, rabbit-fucking its ass.";
				say "     Thankfully, the cock monster has no desire to throw you off or do anything drastic. It simply twists its once more erect shaft around to amicably 'nuzzle' your side with its dickhead, leaving a moist patch of pre-cum behind as it does so, and twerks its juicy rear to meet your hammering thrusts. The close embrace of your unnatural union continues in a sweat-driving, wild and untamed display of lustful mating, until you can feel yourself getting close and loudly announce this, even though you don't even know if the beast understands anything you say. Of course, the increasingly frantic air of your thrusts and your tightly wrapped arms on its shaft make things more than clear. Moments later, you bury your cock inside as deep as it will go, and you start to gush your creamy load into its depths.";
				WaitLineBreak;
				say "     Something about the pulse of cum-spurts through your erection throbbing against its prostate pushes the cock monster over the edge right along with you, and it straightens up suddenly, aiming skywards in a proud pillar of throbbing flesh. Then, with an overwhelming gurgle and splash, it erupts like a geyser, sending a first wrist-thick spurt of foamy seed arching high into the air to land god-knows-where. Your eyes roll up in their sockets from a surprising sensation starting at the same time - you're being sucked off [italic type]hard[roman type], inside of the creature's asshole! All the cum you already shot into it is drawn deeper into the creature, followed by whatever your balls are ready to add, almost as if you were fueling the ongoing series of semen blasts erupting from the creature. Riding out this experience in a mindless haze of pleasure, you clutch tightly onto your abnormal sex-partner, losing all sense of time.";
				say "     Eventually, when your thoughts become clear again, you find yourself still hugging the cock cannon, both of you lying on the ground in a sweaty, thoroughly satisfied heap. Having emptied itself out, and just orgasmed, the creature is as limp as you've ever seen, yet there is an air of fulfillment in its lazy movements. Weakly raising its large dickhead, it focuses the slit to look at you once more, then lets out a friendly burble before laying down on the ground to rest, soon dozing peacefully. This leaves you free to disentangle yourself, pulling out and cleaning yourself up before you get going. Phew, that was certainly an extraordinary experience!";
			CreatureSexAftermath "Cock Cannon" receives "AssFuck" from "Player";
		-- "Get some use out of it - Fuck the creature's cum-slit!":
			say "     Walking around to the front side of the creature, you feast your eyes on the lengthy shape of its cock-like body, enormous even if it is partially flaccid right now. The chocolate-colored skin of the cock monster shines in the light, and your gaze follows the trails of the veins along the shaft, running from the base towards the large dickhead. Crouching in front of it, you reach out to lay your palm on the smooth, glistening curve of the giant mushroom head. It is comfortably warm to the touch, squishy yet flexible, and has a moist sheen that must have leaked out of the cum-slit. While you are touching it, the cock cannon remains mostly motionless, only tilting its head up a little to aim the slit, as if to focus its 'view' on you. Even as the creature seems to use that slit as a sensory organ, it never stops slowly leaking clear pre-cum. That opening is doing double-duty currently... soon to be triple-duty, because you've decided that this is just the right hole to stick your dick in!";
			say "     Eager to get going, you experimentally push two fingers into the opening, which easily takes them without any sign of discomfort from the creature. The inside is warm and slick, pre-lubed with the beast's own juices, and you push deeper until the knuckles of your other fingers, and your thumb rest on the curved flesh around the slit. That'll be plenty of room to sink your [Cock of Player] shaft into! Curiosity drives you to feel around, digits gliding over the smooth and flexible inner skin of the weird beast's cum-tube, and the cock cannon makes some happy sloshing noises when you rub it a little, lightly squeezing the side of its opening together as if to say that it is ready to play with you. With an anticipation-filled chuckle, you pull your fingers out of the creature after some more fondling, wipe off the excess goop on its mushroom head, then quickly [if Player is not barecrotch]free [else]grab hold of [end if]your own manhood.";
			WaitLineBreak;
			say "     You glance down at your cock, hard and erect as it is, then at the creature. It's on another scale entirely, looking mightily big in comparison! Despite this, you're the one preparing to fuck it now, having demonstrated your own might during the fight. Something about taking this Goliath of a cock-monster as your private cock-sheath is intensely satisfying, and your shaft throbs as you imagine the sensations awaiting you once your erection slides inside. Playfully, you dab your dickhead down against the curved head of the creature, drawing a thin string of transferred pre-cum between both erections. As the cock-creature's slit isn't exactly at the right height for you to thrust comfortably without having to do some gymnastics, you slide your hands over the head to reach the rim, right where it starts to flare out a little. The raised 'crest' of the cock cannon's mushroom head is just perfect as a handhold, giving you a piece of anatomy to hold onto that's not as squishy and bulging.";
			say "     Palms resting on the curved skin, you wrap your fingers around the rim, stroking its underside as you search for a good grip. Quite liking the sensation of your hands on an erogenous zone, the cock cannon shivers in anticipation of more to come, its shaft regaining enough firmness to lift the head from limply lying on the ground. Then, it starts to tilt and twist its mushroom head slightly, not so much aiming to shake your hands off, but rather to have your fingers brush further against the spongy underside. As your former opponent is working to get itself off within your grasp, you can't help but think to yourself that it is well past time to get your fuck on! Tugging the giant cockhead into position before your crotch, you can see the cock cannon throbbing visibly in enjoyment at being 'man-handled'. A grin spreads over your face as you're about to get your own slice of pleasure from it in turn, and with a victorious bellow, you thrust your hips forward HARD, slamming your erection deep inside the beast!";
			WaitLineBreak;
			say "     Despite the almost violent entry your raging libido demands, the interior of the cum-tube is surprisingly welcoming, its flesh stretching quite readily around your girth, then flexing to squeeze gently from all sides. Hands tightening their grip on the rim of its dickhead, you continue straight into a breathless and sweat-driving deep fuck, tugging the head towards your crotch in rhythm with every thrust. Your balls slap against the smooth curve of the dickhead with satisfying thuds, churning with the desire to fill its slippery hole. Even in the midst of... Face-fucking? Cock-fucking? Dickhead-pounding, maybe? ...the unnatural beast, it is hard to miss that the cock monster quickly gets harder than ever, its body re-invigorated and full of energy from all the stimulation. So much so, that it gets its feet back under itself before much longer, its rear end rising up from the ground easily while the head remains static, resting in your grasp and simply brushing up against your fingers.";
			say "     Then, after your next hip-thrust makes you bottom out and grind your pubes against the creature's face, you feel something new, a pleasant surprise of having your balls suddenly gulped into a warm, somewhat moist cave. Glancing down, you realize that the slit you're fucking is just a small part of the large opening this creature calls its own, as almost the whole head is bisected vertically along its curvature, with the formerly tightly clenched and mostly invisible dividing line revealing itself as a ripple of movement runs along it! The lower half of the toothless maw is what engulfed your balls, closing around them with gentle pressure. Finding the cock monster's internal muscle-movements massaging your balls and cock is quite stimulating, adding onto your urgent instinct to hump this thing like there's no tomorrow. Wildly thrusting, you realize that you don't actually need to hold onto the head to hold it in place, and instead start to run both of your hands along its crest, fingers focusing on stroking the sensitive, fleshy underside.";
			WaitLineBreak;
			say "     What started as taking advantage of a defeated enemy has advanced to become a shared sexual act with an eager partner, both of you doing your utmost to drive the other to higher and higher pleasure. Given the ever hotter-burning flame of libido that is fed by a bit of playful one-upmanship with your former opponent, both parties careen towards the inevitable breathtaking finish at roughneck speed. Despite your best efforts to make the cock cannon come first with the skillful use of caressing fingertips, the pleasurable suction and ball massage it ravishes you with is just too much to withstand! A somewhat whorish moan escapes your lips as you grind against the giant dickhead, then erupt into the cock cannon's gulping cum-tube, with it greedily taking every last drop you can give. Meanwhile, your legs go a little weak from the force of your orgasm, and you have to hang onto its head to keep standing.";
			say "     Only when you're well and truly drained does the weird creature let go of you, keeping its slit tightly wrapped around your [Cock of Player] shaft as it draws back, as if wanting to make sure it slurps off every little bit of cum. A second later, you're eye to 'eye' with the giant mushroom head, with it coming closer, closer, and then... it rubs the curved side of its slick, warm dickhead against your cheek, almost affectionately. Afterwards, it turns its body side-on to you, straightening its shaft fully, only to add a quick glance sideways and bobbing its head to indicate your hands. It is obvious what it wants, so you raise your arms and start rubbing the underside of the dickhead, this time all the way around, from the larger back of the crest, to the only fingertip-wide but much more sensitive section on the opposite side. With you now fully concentrating on pleasuring the weird beast, it doesn't take all that long until you push it over the edge...";
			WaitLineBreak;
			say "     Standing beside the proud pillar of throbbing flesh, your hands rubbing its warm skin, gives you a somewhat awe-inspiring close-up of the action that follows. With an overwhelming gurgle and splash, the creature erupts like a geyser, sending a first wrist-thick spurt of foamy seed arching high into the air. Looking up to follow the streak of white, you see it easily top the roof of the nearest building, flying further and further before it crests the apex of its trajectory and starts to curve back toward the ground, and you lose sight of the cum-spurt due to some buildings being in the way. Who knows where that came down!? The cock cannon keeps up its barrage for several shots, then picks a new angle and inclination to keep going, scattering its spray over multiple targets before eventually running out of steam. Even for a giant cock, you can't help but feel that it shot [italic type]a lot[roman type]. Maybe, just maybe, your own little 'contribution' to its cum reserves helped with that, or encouraged the beast to give everything it could.";
			say "     By the time it empties itself out, the creature is as limp as you've ever seen it, yet there is an air of fulfillment in its lazy movements. Weakly raising its large dickhead, it focuses the slit to look at you once more, then lets out a friendly burble before laying down on the ground to rest, soon dozing peacefully. This leaves you free to clean yourself up before you get going. Phew, that was certainly an extraordinary experience!";
			CreatureSexAftermath "Cock Cannon" receives "OralCock" from "Player";
		-- "Get away from the weird thing and leave it far behind.":
			say "     Making use of the opportunity to get away from this weird creature, you hurry off. Soon, you turn a corner and the cock cannon is out of sight and out of mind.";
	if HP of Bradford is 2:
		LineBreak;
		if bradfordbounty > 0:
			decrease bradfordbounty by 1;
			say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
		else:
			say "     This encounter reminds you of your deal with the bounty hunter, Bradford. You should go see him about getting your share of the reward.";

Section 2 - Creature Insertion

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Cock Cannon"	"[PrepCombat_Cock Cannon]"

to say PrepCombat_Cock Cannon:
	now cclosttarget is false;
	now ccmiss is 0;
	now cannonprep is 0;
	project Figure of Cock_Cannon_icon;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Cock Cannon"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	add "Cock Cannon" to infections of BodyHorrorList;
	add "Cock Cannon" to infections of HumorousList;
	add "Cock Cannon" to infections of MaleList;
	add "Cock Cannon" to infections of BipedalList;
	add "Cock Cannon" to infections of TailList;
	add "Cock Cannon" to infections of CockVoreList;
	add "Cock Cannon" to infections of InternalBallsList;
	now Name entry is "Cock Cannon";
	now enemy title entry is ""; [ Name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name. ]
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "ERROR! Cock Cannon: Attack"; [Text used when the monster makes an Attack]
	now defeated entry is "[cannon loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is "[cannon wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[cannon desc]"; [ Description of the creature when you encounter it.]
	now face entry is "devoid of any features except for a large slit in the center of a fleshy, mushroom-shaped head with a raised rim towards the back. You're able to 'see' your surroundings through echolocation, sending clicking vibrations from the slit, and it serves as a mouth too, enabling you to suck up food and fluids. Thus you can live fairly normally despite your lack of a mouth or eyes"; [ Face description, format as "Your face is [Face of Player]." ]
	now body entry is "relatively tube-shaped, but able to bend and flex freely in any direction. It looks like the shaft of a penis from the hips upwards, while your two sturdy legs end in digitigrade feet with three large claws"; [ Body Description, format as "Your Body is [Body of Player]." ]
	now skin entry is "smooth, veiny"; [ Skin Description, format as "Looking at yourself, your body is covered in [Skin of Player] skin." ]
	now tail entry is "Your ass has the perfect bubble butt shape, with two nicely round and full globes sticking out behind your back. Above the buns of your booty, a thin and fairly long tail extends from your tailbone, ending in a prehensile tail spade."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "body-length"; [ Cock Description, format as you have a 'size' (your text) cock]
	now face change entry is "your head swells out until it is mushroom-shaped, with a slightly raised rim on the back side. Your eyes, nose, and mouth disappear, leaving you momentarily blind before a large vertical slit opens in the center of your curved head. Somehow, you're able to 'see' through the slit, as it seems to vibrate almost imperceptively, sending out echolocation signals. Experimenting a little, you quickly learn to focus your new perception by controlling the slit's opening"; [ Face change text, format as "Your face feels funny as [face change entry]." ]
	now body change entry is "it thickens to a fairly tube-like shape from the hips upwards, losing all other curves and features until it looks like the shaft of a penis. Meanwhile, your legs become solid and sturdy, ending in digitigrade feet with three large claws"; [ Body change text, format as "Your body feels funny as [body change entry]." ]
	now skin change entry is "it becomes smooth and hairless, with some large veins visible beneath the skin"; [ Skin change text, format as "Your skin feels funny as [skin change entry]." ]
	now ass change entry is "it plumps up, forming nicely smooth and quite rounded buttocks. A momentary itching sensation around your tailbone resolves itself when a slender tail forms behind your back, ending in a triangular tail-spade"; [ Ass/tail change text, format as "Your ass feels funny as [ass change entry]." ]
	now cock change entry is "it gets absorbed into and replaced by your body"; [ cock change text. format as "Your cock feels funny as (your text)." ]
	now str entry is 14;
	now dex entry is 10;
	now sta entry is 14;
	now per entry is 14;
	now int entry is 10;
	now cha entry is 10;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 3; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 0; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Red"; [ Current options are 'Outside' and 'Mall' and 'Park' and 'Red' Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 50; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 5; [ Size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity] [ Length of female sex infection will attempt to give you. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping] [ Width of female sex infection will try and give you ]
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "cock cannon milk"; [ Item to be given to the player if they have this infection and milk themselves. ]
	now CumItem entry is ""; [ Item to be given to the player if they have this infection and jerk off. ]
	now TrophyFunction entry is "-"; [ Function to generate a list of optional loot items, of which the player can choose one after victory. ]
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]slender[or]sexualized[or]phallic[or]twisted[at random]";
	now type entry is "mutant"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [ Infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own strain. ] [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "cockcannon"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
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
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
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
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
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
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
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
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetrable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Section 3 - The Table of Critter Combat

[
to say cannon fire:		[outmoded, now uses alt-attack below]
	if cannonprep is 0:
		[Elevation]
		now cannonprep is 1;
		say "The Cock Cannon calculates the proper elevation, then lifts its mushroom-shaped head up towards the sky.";
	else if cannonprep is 1:
		[Wind direction]
		now cannonprep is 2;
		say "The Cock Cannon moves its mushroom-shaped head to the [one of]right[or]left[at random] in order to adjust for wind direction.";
	else if cannonprep is 2:
		[Masturbate]
		now cannonprep is 3;
		say "The Cock Cannon's arms start to stroke its penis-shaped body.";
	else if cannonprep is 3:
		[Fire]
		now cannonprep is 0;
		say "The Cock Cannon reaches its peak and ejaculates with a loud BOOM!";
		now HP of Player is 0;
]

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"cockcannon"	cockcannon rule	--	--	--	--	--	--	--	--	--


cannonprep is a number that varies. cannonprep is usually 0.
ccmiss is a number that varies.
cclosttarget is a truth state that varies. cclosttarget is usually false.

this is the cockcannon rule:
	choose row MonsterID from Table of Random Critters;
	let playernum be 10;
	let ccnum be 10;
	now monsterhit is false;
	now avoidance is 0;
	say "[avoidancecheck]";
	if gascloud > 0, decrease gascloud by 1;
	if avoidance is 1:
		now monsterhit is false;
	else:
		if cannonprep is 0:			[Elevation - int]
			let playernum be dexterity of Player + level of Player + pldodgebonus;
			let ccnum be int entry + lev entry + monhitbonus + 5;
		else if cannonprep is 1:		[Wind direction - perc]
			let playernum be dexterity of Player + level of Player + pldodgebonus;
			let ccnum be per entry + lev entry + monhitbonus + 5;
		else if cannonprep is 2:		[Masturbate - dex]
			let playernum be 12;
			if HardMode is true, increase playernum by ( level of Player / 2 );
			let ccnum be dex entry + lev entry + monmindbonus + 5;
		else if cannonprep is 3:		[Fire - stam]
			let playernum be 12;
			if HardMode is true, increase playernum by ( level of Player / 2 );
			let ccnum be sta entry + lev entry + monmindbonus + 5;
		if "Flash" is listed in feats of Player and a random chance of 3 in 20 succeeds:
			say "Calling upon your hidden power, you flash brightly with light, [one of]filling the phallic creature's 'eye' with spots[or]startling the Cock Cannon[or]making it harder for the Cock Cannon to focus on its [if cannonprep is 0 or cannonprep is 1]aiming[else]self-pleasure[end if][purely at random].";
			increase playernum by 5;
[		say "TEST: player = [playernum] vs cock cannon = [ccnum]:[line break]"; ]
		let playernum be a random number between 1 and playernum;
		let ccnum be a random number between 1 and ccnum;
		say "[special-style-1][playernum][roman type] vs [special-style-2][ccnum][roman type]: ";
		if Playernum < ccnum:
			now monsterhit is true;
		else:
			now monsterhit is false;
	if cannonprep is 0:
		if monsterhit is true:
			now cannonprep is 1;
			say "[special-style-2]Hit[roman type]: The Cock Cannon pauses and seems to focus on you as it calculates the proper elevation, then lifts its mushroom-shaped head up towards the sky.";
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon tries to focus on you, but you manage to keep evading and it has trouble targeting you.";
	else if cannonprep is 1:
		if monsterhit is true:
			now cannonprep is 2;
			say "[special-style-2]Hit[roman type]: The Cock Cannon moves its mushroom-shaped head to the [one of]right[or]left[at random] in order to adjust for wind direction and is now locked onto you.";
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon tries to make adjustments for the wind conditions, but your constant harassment and evasion slows it down.";
			increase ccmiss by 1;
			if ccmiss > 2 and cclosttarget is false:
				say "Your continued resistance frustrates it, forcing it to reposition and reacquire targeting.";
				now cclosttarget is true;
				decrease cannonprep by 1;
	else if cannonprep is 2:
		if monsterhit is true:
			now cannonprep is 3;
			say "[special-style-2]Hit[roman type]: The Cock Cannon's tail bends upwards to stroke its flexible tail-tip along the sides of its penis-shaped body, increasing its visible size and arousal. Precum starts to flow steadily from the top of its phallic head.";
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon attempts to pleasure itself, running its flexible tail-tip over its body, but with little success for now.";
			increase ccmiss by 1;
			if ccmiss > 4 and cclosttarget is false:
				say "One of your continued swings bumps it, forcing it to recalculate its aim.";
				now cclosttarget is true;
				decrease cannonprep by 1;
	else if cannonprep is 3:
		if monsterhit is true:
			now cannonprep is 0;
			say "[special-style-2]Hit[roman type]: The Cock Cannon reaches its peak and ejaculates with a loud sloshing sound!";
			now Libido of Player is 110;
		else:
			say "[special-style-1]Miss[roman type]: The Cock Cannon continues to stroke and rub itself, trying unsuccessfully to get itself off.";
			increase ccmiss by 1;
			if ccmiss > 5 and cclosttarget is false:
				say "Your continued evasion frustrates it, making its full-body erection wane a little as it tries to remain on target.";
				now cclosttarget is true;
				decrease cannonprep by 1;
	now peppereyes is 0;
	if HP of Player > 0 and Libido of Player < 110:
		[wait for any key;]
		AttemptToWaitBeforeClear;
	else:
		now fightoutcome is 20;
		Lose;
	rule succeeds;


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Cock Cannon Infection"	"Infection"	""	Cock Cannon Infection rule	1000	false

This is the Cock Cannon Infection rule:
	if Player has a body of "Cock Cannon":
		trigger ending "Cock Cannon Infection";
		if humanity of Player < 10:
			say "Lost to your new instincts, you spend the next several days looking for victims to transform. Then the military arrives. Following a compulsion, you climb onto the roof of the nearest building and start stroking your penis-shaped body as fast as you can. The military soldiers don't notice the blobs of cum falling out of the sky from you and the rest of the penile artillery until it is too late.";
		else:
			say "After being rescued by the military, you have trouble fitting in with the rest of society due to the fact that your body is shaped like a giant penis. But then you discover that the infection left many women with pussies so large that nobody could fill them but you...";

Cannon ends here.
