Little Fox by Sarokcat begins here.

"Adds a special event to Flexible Survival with a potential pet."

Section 1-Little fox

Little fox is a pet. "The little fox is so cute and friendly! It has a cute little fox face with eyes that shine with love as they stare at you. Its lithe and quick body is almost constantly in motion as it explores the world around you.". little fox is a part of the player;
The weapon damage of little fox is 4;
The level of little fox is 1;
The Dexterity of little fox is 10;
The summondesc of little fox is "Wriggling its way out of your pack, the cute little fox looks around the area before sitting down and staring at you with its bright shining eyes, eager to explore.";
The assault of little fox is "[one of]The little fox darts forward quickly and trips your opponent![or]Yipping and harrassing your opponent, the little fox allows you to score a glancing blow![or]Growling ferociously, your little fox friend springs forward to attack, only to slip and knock over some junk nearby, luckily pelting your opponent with it.[or]Your oppenent jumps and twists around suddenly in pain, allowing you to see your little fox friend hanging onto their rear valiantly by their teeth.[or] taking advantage of your foes momentary distraction, your pet fox manages to get in a few solid nips.[at random]";

Abandoned Fox is a situation.
The sarea of Abandoned Fox is "Park";
Instead of resolving Abandoned Fox:
	say "Traveling through the park you hear a strange soft noise coming from one of the nearby bushes, it sounds almost like something small calling out. Do you investigate?";
	If player consents:
		say "pushing the screening bushes aside you find a small hole in the ground, and sprawled outside the whole is a skinny looking young fox pup making pathetic noises.  Staring at the young fox and the area around the den, you realize it must have been abandoned for a while at this point, its mother hasn't been back to feed it, and has likely become another victim of the changes sweeping the city at this point. Leaving the little pup here all alone crying for help. Sighing at lifes unfairness you begin to turn away only to hear the soft yipping noises take on a more plaintive note as it notices you and starts pleading for food and attention. Do you help it? ";
		if the player consents:
			delete food;
			say "unable to bear hearing the poor things crys going unanswered, you carefully kneel down and pull out some food(-1 food), cautiously at first, then with increasing enthusiasm the half starved fox cub tears at the food, ripping and playing with it until it is all gone.  You smile at the cute sight before standing up and getting ready to leave, though you haven't gone more then a few steps when you hear something behind you.  Turning you see the fox cub you helped is valiantly trying to keep up with you, its large canine eyes staring at you adoringly. Trying to shoo it back to the empty den seems pointless, and the cute little fox seems to have taken a strong fancy to you now, shrugging you give in and let it come with you.  The little fox cub bouncing along in your wake and occassionly darting off to pounce on and threaten one of the nearby leaves on the ground, it looks like you[apostrophe]ve acquired a little pet. As you head back to the park trail, you Make it a little nest in your backpack, making sure it will be comfortable while you travel. ";
			now little fox is tamed;
			say "[bold type](The little fox is now tamed! You can make it your active pet by typing pet little fox. You can see all the pets you have tamed with the pet command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use pet dismiss, or just dismiss)[roman type]";
			now Abandoned Fox is resolved;
		otherwise:
			say "hardening your heart to its plainitive cries, you move back from the abandoned fox den and leave nature to take its course.).";
			now Abandoned Fox is resolved;
	otherwise:
		say “Worried that you might be walking into some kind of trap, you turn your back on the noise and continue your walk through the park.”;




Little Fox ends here.
