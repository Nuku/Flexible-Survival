Gryphons Plot for fs by Hellerhound begins here.

Gryphons plot is a situation.  The level of Gryphons plot is 2.
the sarea of gryphons plot is "Outside";
milsave is a number that varies.
when play begins:
	add Gryphons plot to badspots of hermaphrodite;
	add Gryphons plot to badspots of furry;

instead of resolving a gryphons plot:
	if milsave is 0:
		if the perception of the player > 14:
			say "You hear the screeching of three gryphons, sounding like they are battling something. Maybe you should check it out?";
			if the player consents:
				say "Wandering through the debris in the correct direction, you come across the three gryphons. They seem to be attacking a military jeep. The soldiers are still unchanged, but they are getting more desperate, judging by the extreme amount of swearing coming from the car. Do you help them?";
				if the player consents:
					if the bodyname of the player is not "Hermaphrodite Gryphon":
						say "You leap in front of the dive bombing gryphons, to the rescue and surprise of the soldiers. The gryphons screech in fury, and attack you with singleminded intensity.";
						challenge "Hermaphrodite Gryphon";
						say "The next attacks.";
						challenge "Hermaphrodite Gryphon";
						say "The third, wary of the defeat of the first two, flees.";
						now milsave is 1;
						say "The soldiers congratulate you and thank you for helping them. The give you some food.";
						add "food" to the invent of the player;
						add "food" to the invent of the player;
					otherwise:
						say "You fly into the air on your wings, screeching a challenge at the gryphons. One, flying low, is startled and crashes into a nearby building, spraying milk all over. The other two come on to attack.";
						challenge "Hermaphrodite Gryphon";
						say "The next attacks.";
						challenge "Hermaphrodite Gryphon";
						now milsave is 1;
						say "The soldiers thank you for helping them, and they give you food in reward. You also collect some of the spilled milk from the gryphon that crashed.";
						add "food" to the invent of the player;
						add "food" to the invent of the player;
						add "gryphon milk" to the invent of the player;
				otherwise:
					if the bodyname of the player is "Hermaphrodite Gryphon" and the cockname of the player is "Hermaphrodite Gryphon":
						say "Do you help the gryphons?";
						if the player consents:
							say "You fuck one of the soldiers in the rear, watching as he changes below you, tail extending and blue fur growing. As you blow your load into his rear you notice he now has a pussy. Good. It was time you took some.";
							say "You transition your still cumming cock into his waiting pussy, the lips dripping in anticipation. As you slam in and out you both let out a keening noise of pleasure, increasing in volume until you both climax.";
							if the cunts of the player > 0 and the cunt length of the player > 12:
								say "Then you turn around and point your rear in his direction. Already subsumed by the infection, he slams his smaller cock into your waiting hole, pistoning in and out. As the juices drip onto the back of the jeep, he leans in with a cry and climaxes into you.";
								say " [impregchance]";
							say "You seem to lose all sense of time and place, and soon realize you are in front of one of the feral gryphons.";
							say "[gryphon fuck]";
							say "You pass out after she leaves.";
							follow turnpass rule;
							now milsave is -1;
						otherwise:
							say "You leave the soldiers in a state of sexual frenzy, fucking and being fucked by the three gryphons.";
							now milsave is -1;
					otherwise:
						say "As you refuse to act, the gryphons pound the soldiers, whipping their guns away and shredding their clothes. Almost immediately the gryphons begin to feed the soldiers.";
						say "Do you join the soldiers in their submission?";
						if the player consents:
							say "You run towards the soldiers, removing any clothing, and jumping right in.";
							if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
							say "[gryphon fuck]";
							say "[gryphon fuck]";
							say "[gryphon fuck]";
							say "The orgy lasted a long time, and by the time you wake, the others are long gone. Trails of cum lead off.";
							say "Do you gather some of the remained fluids?";
							if the player consents:
								say "You manage to get several bottles of gryphon milk out of the carnage.";
								repeat with N running from one to 6:
									add "gryphon milk" to the invent of the player;
							otherwise:
								say "You decide to leave the mess[one of] drying in the sun[or] alone[or] as it is[or], messy[at random].";
							now milsave is -1;
						otherwise:
							say "You leave the soldiers in a state of sexual frenzy, fucking and being fucked by the three gryphons.";
							now milsave is -1;
			otherwise:
				say "You wander back, sure that you just avoided getting your butt kicked.";
			now gryphons plot is resolved;
		otherwise:
			say "You think you hear a commotion in the distance, but are unable to place it.";
	





Gryphons Plot for fs ends here.
