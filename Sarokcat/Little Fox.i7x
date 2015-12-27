Little Fox by Sarokcat begins here.

"Adds a special event to Flexible Survival with a potential pet."

Section 1-Little fox

Little fox is a pet. The description of the little fox is "The little fox is so cute and friendly! It has a cute little fox face with eyes that shine with love as they stare at you. Its lithe and quick body is almost constantly in motion as it explores the world around you.". little fox is a part of the player.
The weapon damage of little fox is 4.
The level of little fox is 1.
The Dexterity of little fox is 10.
The summondesc of little fox is "Wriggling its way out of your pack, the cute little fox looks around the area before sitting down and staring at you with its bright shining eyes, eager to explore.".
The assault of little fox is "[one of]The little fox darts forward quickly and trips your opponent![or]Yipping and harassing your opponent, the little fox allows you to score a glancing blow![or]Growling ferociously, your little fox friend springs forward to attack, only to slip and knock over some junk nearby, luckily pelting your opponent with it.[or]Your opponent jumps and twists around suddenly in pain, allowing you to see your little fox friend hanging onto their rear valiantly by their teeth.[or]Taking advantage of your foe's momentary distraction, your pet fox manages to get in a few solid nips.[at random]".
The fuckscene of little fox is "The little fox kit is both too small and too young for such shenanigans.  There are plenty of fox-people running around; go find some of them if that's what you're into.".

instead of sniffing Little fox:
	say "The little fox has the scent of normal vulpine musk.";

Abandoned Fox is a situation.
The sarea of Abandoned Fox is "Park".

Instead of resolving Abandoned Fox:
	say "Traveling through the park, you hear a strange soft noise coming from one of the nearby bushes. It sounds almost like something small calling out. Do you investigate?";
	If player consents:
		say "Pushing the screening bushes aside you find a small hole in the ground, and sprawled outside the whole is a skinny looking young fox pup making pathetic noises.  Staring at the young fox and the area around the den, you realize it must have been abandoned for a while at this point.  Its mother hasn't been back to feed it, and has likely become another victim of the changes sweeping the city at this point. Leaving the little pup here all alone crying for help. Sighing at life's unfairness you begin to turn away only to hear the soft yipping noises take on a more plaintive note as it notices you and starts pleading for food and attention";
		if food is owned:
			say ". Do you help it?";
			if the player consents:
				delete food;
				say "Unable to bear hearing the poor things cries going unanswered, you carefully kneel down and pull out some food(-1 food), cautiously at first, then with increasing enthusiasm the half starved fox cub tears at the food, ripping and playing with it until it is all gone.  You smile at the cute sight before standing up and getting ready to leave, though you haven't gone more than a few steps when you hear something behind you.  Turning you see the fox cub you helped is valiantly trying to keep up with you, its large canine eyes staring at you adoringly. Trying to shoo it back to the empty den seems pointless, and the cute little fox seems to have taken a strong fancy to you now, shrugging you give in and let it come with you.  The little fox cub bouncing along in your wake and occasionally darting off to pounce on and threaten one of the nearby leaves on the ground. It looks like you've acquired a little pet. As you head back to the park trail, you make it a little nest in your backpack, making sure it will be comfortable while you travel.";
				now little fox is tamed;
				say "(The little fox is now tamed! You can make it your active pet by typing [bold type][link]pet little fox[end link][roman type]. You can see all the pets you have tamed with the [bold type][link]pet[end link][roman type] command. Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of a pet? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";
				now Abandoned Fox is resolved;
			otherwise:
				say "Hardening your heart to its plaintive cries, you move back from the abandoned fox den and leave nature to take its course.";
				now Abandoned Fox is resolved;
		otherwise:
			say ".  You have no food to feed the fox kit, so you quietly leave before its cries draw something dangerous.";
	otherwise:
		say "Worried that you might be walking into some kind of trap, you turn your back on the noise and continue your walk through the park.";



when play ends:
	if little fox is tamed:
		if humanity of player is less than 10:
			say "When you give in to your feral instincts, the little fox you rescued stays with you, traveling with you and helping as best it can, trying to help you hunt and teasing at you to play with it.  Finally though it grows large enough that one day it leaves on its own, fully able to forage for itself now, and leaving you to your fate. You miss the little creature occasionally.... when you can remember it anyways.";
		otherwise:
			say "After your rescue, you manage to convince the distracted military that the little fox isn't a threat, and he comes with you out into your new life.  Being a mostly wild creature, he doesn't really fit in anywhere that you take him however, and so eventually you decide to find a wilderness preservation to release him into, where you hear there are several other foxes for the little fellow to play with.  Several years later though, you are surprised to find someone has left another little baby fox at your door while you slept, a roughly scrawled note just says 'thanks mom,' with a little paw mark in the corner.";

Little Fox ends here.
