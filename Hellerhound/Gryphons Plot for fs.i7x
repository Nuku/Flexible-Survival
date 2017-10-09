Gryphons Plot for fs by Hellerhound begins here.
[Version 1.1 - Some rewriting and expansion by Wahn]

Gryphons plot is a situation.  The level of Gryphons plot is 2.
the sarea of gryphons plot is "Outside".
milsave is a number that varies.
when play begins:
	add Gryphons plot to badspots of hermaphrodite;
	add Gryphons plot to badspots of furry;

instead of resolving a gryphons plot:
	if milsave is 0:
		if the perception of the player > 14:
			say "You hear the screeching of several gryphons, sounding like they are battling something. Maybe you should check it out?";
			if the player consents:
				say "Wandering through the debris in the correct direction, you come across three gryphons attacking a group of soldiers in a military jeep. Seems like they ambushed the men by boxing their vehicle in with an abandoned car rolled out on the street behind them while the men were trying to clear some rubble at the front. Now the soldiers can't drive away and are stuck hiding out in the jeep from a near-constant aerial bombardment with trash and all kinds of stuff. The men are still unchanged, but they are getting more desperate, judging by the extreme amount of swearing coming from the car. Do you help them fight off their feral attackers?";
				if the player consents:
					if the bodyname of the player is not "Hermaphrodite Gryphon":
						say "You leap in front of one of the gryphons gathering something to throw in another round of dive bombing, to the rescue and surprise of the soldiers. All of the gryphons react with furious screeches to your intrusion and attack you with singleminded intensity.";
						challenge "Hermaphrodite Gryphon";
						say "Almost as soon as the first gryphon goes down, the next attacks.";
						challenge "Hermaphrodite Gryphon";
						say "The third gryphon, wary of the defeat of the first two, flees.";
						now milsave is 1;
						say "The soldiers congratulate you and thank you for helping them, though they are rather wary of your own exposure to the nanites in the city and hesitate at coming too close to you. While they clear a way out of the ambush, they give you some well-meant suggestions, mostly about finding a safe place to hide from the troubles in the city until the military has time to marshal their forces and save you. Then they drive off, though not without leaving a small stack with several ration bars from their pockets for you to collect as a reward.";
						increase carried of food by 2;
					else:
						say "You fly into the air on your wings, screeching a challenge at the gryphons. One, flying low, is startled and crashes into a nearby building, eliminating her from the fight. The other two don't pay their unfortunate compatriot any mind, come on to attack you with singleminded intensity.";
						challenge "Hermaphrodite Gryphon";
						say "That's one down, but the other gryphon immediately takes over and attacks.";
						challenge "Hermaphrodite Gryphon";
						now milsave is 1;
						say "The soldiers congratulate you and thank you for helping them, though they are rather wary of your own exposure to the nanites in the city and hesitate at coming too close to you. Giving some well-meant suggestions of finding a safe place to hide from the troubles in the city until the military has time to marshal their forces and save you, they soon drive off, though not without leaving a small stack with several ration bars from their pockets for you to collect as a reward.";
						say "     As you pick up the food, you hear someone groan nearby - it's the gryphon that crashed into one of the buildings around you earlier, looking only somewhat bruised though still rather out of it. Seems like her fall was slowed by the car roof she landed on and dented in, and the nanites are now doing their usual quick work of quickly fixing anything that doesn't kill instantly. Seeing the trickle of milk running down the windscreen of the car the semiconscious gryphon lies on and starting at her generous bosom, you decide to be pragmatic and use the chance to milk her, filling up an empty plastic bottle from your pack before you move on.";
						increase carried of food by 2;
						increase carried of gryphon milk by 1;
				else:
					if the bodyname of the player is "Hermaphrodite Gryphon" and the cockname of the player is "Hermaphrodite Gryphon":
						say "Do you join in on the gryphons attack and help them?";
						if the player consents:
							say "With your help on top of the three other gryphons, the men in the jeep are quickly overwhelmed. Accompanied by gryphon screeches of victory, the soldiers are dragged out of their seats and stripped, then pinned to the ground by your lusty compatriots. Your own pick from among the men is the driver, a handsome guy with short-cut black hair whom you take from behind on the back seats. Fucking his ass hard and deep, you see him changing under you, tail extending and blue fur growing. As you blow your load into his rear you notice he now has a pussy. Good. It was time you took some...";
							say "You transition your still cumming cock into his waiting pussy, the parting swollen pussy lips dripping in anticipation. The newly transformed herm under you squawks in surprise as you take his virginity, then quickly gets into getting fucked, rocking back to meet each of your thrusts. As you slam in and out of him, you both let out a keening noises of pleasure, increasing in volume until you both climax.";
							if the cunts of the player > 0 and the cunt length of the player > 12:
								say "As soon as you catch your breath, you turn around and point your rear in his direction. Already subsumed by the infection, the former soldier does what any real gryphon herm would do - mount you and slam his still transforming cock into your waiting hole, pistoning in and out. Even though you've already come two times, feeling his manhood inside you quickly gets you going again, especially as you feel his knot form and get hard inside you. As you're quickly driven over the edge and a copious amount of femcum starts to drip onto the back seats of the jeep from your stretched pussy, the changed soldier leans in with a cry and climaxes into you.[ovichance]";
							WaitLineBreak;
							say "For a while, you seem to lose all sense of time and place in the lustful haze you're in, then realize you are in front of one of the feral gryphons coming at you with amorous intent.";
							say "[losetohgryphon]";
							say "You pass out after she leaves, lying on the cum-stained back seats of the jeep when you come to later.";
							follow turnpass rule;
							now milsave is -1;
						else:
							say "Standing back and not interfering, you watch as the three gryphons do several more bombardment runs before they switch tactics and land instead of just dropping their loads. Before the soldiers leaning away from the windows to not get hit realize what's going on, the blue-feathered attackers are right at the jeep, ripping open the doors to get at them. Some quick hand to clawed hand wrangling later, the humans - being the losers - are dragged out of the car, stripped and fucked. You leave the soldiers in a state of sexual frenzy and transformation, fucking and being fucked by the three gryphons while they themselves start sprouting blue fur.";
							now milsave is -1;
					else:
						say "Standing back and not interfering, you watch as the three gryphons do several more bombardment runs before they switch tactics and land instead of just dropping their loads. Before the soldiers leaning away from the windows to not get hit realize what's going on, the blue-feathered attackers are right at the jeep, ripping open the doors to get at them. Some quick hand to clawed hand wrangling later, the humans - being the losers - are dragged out of the car, stripped and fucked.";
						say "Do you join the soldiers in their submission?";
						if the player consents:
							say "You run towards the small free-for-all orgy, removing any clothing on the go, and jump right in.";
							if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
							say "[losetohgryphon]";
							say "[losetohgryphon]";
							say "[losetohgryphon]";
							say "The orgy lasted a long time, and by the time you wake, the others are long gone. Trails of cum lead off down the road...";
							say "As you go to collect your clothes and gear, you notice two formerly empty bottles from your pack resting on top of it, filled with obviously fresh gryphon milk. Seems like one of your sexual partners felt the need to relieve themselves of some pressure by milking their gryphon breasts and left you the result.";
							increase carried of gryphon milk by 2;
							now milsave is -1;
						else:
							say "You leave the soldiers in a state of sexual frenzy and transformation, fucking and being fucked by the three gryphons while they themselves start sprouting blue fur.";
							now milsave is -1;
			else:
				say "You change direction and wander back, leaving the sounds of combat behind. It's very likely that you just avoided getting your butt kicked.";
			now gryphons plot is resolved;
		else:
			say "You think you hear a commotion in the distance, but are unable to place it.";
[
	else if milsave < 0:
		say "     <Further plots the player is asked to help.>";
	else if milsave > 0:
		say "     <Further plots the player can foil.>";
]

Gryphons Plot for fs ends here.
