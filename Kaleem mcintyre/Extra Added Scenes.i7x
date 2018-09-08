Extra Added Scenes by Kaleem mcintyre begins here.
[Several events transferred to Consolidated Outside Events and Consolidated Park Events in Song's folder.]

"Adds a series of random events to Flexible Survival."


Section 1 - Strange Sight

[Moved to Consolidated Part Events file.]


Section 2 - Wish

Wish is a situation.
The sarea of Wish is "High".

Instead of resolving a Wish:
	say "Jogging through the area where the high rise district is located you come across and interesting sight as you find yourself looking up to stare at young black, orange and golden furred, calico cat looking mournfully up at the sky from out of an open window. Eyes seeming to be focusing on nothing, and yet everything at the same time, you find yourself captivated by the other as the feline clasps his/her hands together, clenches their eyes tight as though trying not to cry, before bowing their head. You can just make out the other's muzzle moving in a steady utterance, but from the distance between you, you can't really tell what the calico is saying. You'd guess that the other is praying, but maybe not because as soon as the feline lifts its head up you watch as the calico takes out a piece of paper from behind its back and then tears it into pieces. Reaching out to let the torn shreds float down onto the ground a stray wind sweeps them away before the white paper fragments can get half way to the concrete. Your own eyes widen in awe as you track the pieces of paper continue going overhead before they disappear completely. When you turn back to look at the Calico the other is gone and the window closed.";
	increase score by 1;
	Now Wish is resolved;


Section 3 - Loving Bond

Loving Bond is a situation.
The sarea of Loving Bond is "High".

Instead of resolving a Loving Bond:
	say "The sounds of someone speaking making you slow down from your jogging as you try to look around for the speaker. You realize that this is a dumb thing to do as you could be possibly be putting yourself into danger by doing something like this, but a strange feeling wells up inside of your chest and suddenly you find yourself coming to a full stop in the middle of the empty road. Turning your head this way and that you finally have to look up as you notice two figures, a black canine of some variety and a white sandy brown vulpine of another other, two stories above you conversing with each other while music is playing the background. And though you can't hear what they are saying exactly you do note that the song they are playing seems awfully familiar for some reason. You try and ponder why though, and when it finally hits you as to what's going on your eyes light up like fireworks as everything clicks into place. The reason why the song being played is so familiar is because it is the melody that's usually played at weddings! Not sure how that could be right considering that the high rise area is nowhere near a church, you scratch at your head as you continue to stare as the two figures, both being male from what you can see because of the lack of any breasts, exchange rings with one another. Placing the small bands around each the middle fingers on each other's right hands you blush furiously when the two give each other passionate kiss, the likes of which could fog up a glass window, before the two newlyweds began to grope and fondle each other lustfully. The music in the background soon changes to something more of an erotic beat and flushing slightly you decide to hurry on about your way, especially when the black canine hefts his new mate up, bridal style, and then takes the giggling fox back into their loft apartment. Who knew that love could find a way to prosper in this mad town? Guess the saying is true that love conquers all.";
	increase score by 1;
	Now Loving Bond is resolved;


Section 4 - Challenge of the Alphas

Challenge of the Alphas is a situation. The level of Challenge of the Alphas is 8.

when play begins:
	add Challenge of the Alphas to badspots of furry;
	add Challenge of the Alphas to badspots of guy;

Instead of resolving a Challenge of the Alphas:
	say "Finding yourself coming across an Alpha Husky and Alpha Wolf circling each other you have to blink in uncertainty as you wonder what are the two males doing together in the middle of the street as they are now. That is, right before you take a cautious step back when both mutants bare their fangs at each other after drawing up their fleshy black lips. Body postures suddenly going rigid the two stop dead in their tracks while glaring bloody murder at you for intruding, as if they weren't already wishing death on the other. Uncertain of what to do in this situation, you can see the rage rolling off of both creatures making your spine lock up almost, you continue to watch as the two lay their ears flat against their heads while their tails snap directly up into the air in a sign that their battle will grow physical in a matter of moments. Fur bristling so much that both look like aggravated porcupines, you feel your heart hammer tightly into your chest as you watch the two canines bark and growl and drool down the sides of their muzzles as the loose themselves to their inner animals. If something's not done soon, you know that this will end bloodily with either one or both of the males dead since neither seem to be taking the better choice to flee rather than fight. Yet is this really any of your business?";
	say "     [bold type] What do you care what two mutants do to one another? ...but still...[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay.";
	say "     ([link]N[as]n[end link]) - Run.";
	if player consents:
		LineBreak;
		say "Something inside of you makes you stay right where you are. This... this savagery can't continue. But what should you do? Getting in between one another might get you torn limb from limb.";
		say "     [bold type] Should you pick sides?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Alpha Wolf.";
		say "     ([link]N[as]n[end link]) - Alpha Husky.";
		if player consents:
			LineBreak;
			say "After rushing to tackle the Alpha Husky for the Alpha Wolf you find that the lupine is somewhat confused about your interference between their inopportune, yet destined, brawl. Having caught the Alpha Husky off guard you manage to deal with the other in a somewhat sophisticatedly violent manner with some well place punches and kicks to the gut and then watch as it rushes off, the other Alpha hadn't been expecting the extra added help from an outsider. Breathing slowly at being able to stop the two from possibly killing one another you wipe your forehead just in time to feel the breath of the Alpha Wolf behind you come up to sniff at your rump. Freezing slightly you hope you haven't made a big mistake by aiding this shaggy furred mutt. Of course, luck seems to be with you as the big Alpha Wolf simply nods at you in a sign of respect and then trots his way off down the road, thankfully opposite of where the Alpha Wolf had gone. Watching the slightly matted fur of the lupine trail off into the distance you suddenly feel as though you've done a good thing today. Looking down at the ground, you see a small mound of food place at your feet. Tilting your head slightly to the left you wonder if the Alpha wolf left that for you. Maybe? But if that's true then just how intelligent are these so-called aberrations of nature?";
			increase carried of food by 1;
			now Resolution of Challenge of the Alphas is 1; [helped Alpha Wolf]
		else:
			LineBreak;
			say "Looking for an opportunity you take the Alpha wolf by surprise and tackle the other to the ground. Before the disheveled lupine can so much as mutter a whine you're laying into the other with punches and kicks to the chest and torso. The Alpha Husky is somewhat confused by what in the world is going on but is soon lolling out his tongue as he watches his rival scurry away...for now. You have a little time to brush off the side of your face where the wolf managed to scrape at your face with his claws before a large figure is looming over you. Eyes snapping up to look into the Alpha Husky's slightly drooling face you wonder if you've made a mistake in coming to the other's aid. When the slightly dirty looking canine manages haul you up onto your feet by the shoulder you're not prepared to receive wet doggy kisses of affection. Sputtering and trying to not get any in your mouth you find everything coming to a sudden halt as something is pushed into your hands right before the Alpha Husky pulls away from you and then takes his leave of your presence. Blinking and then looking down you find a medkit placed firmly into your hold. It takes you a second to connect the dots but when you do you realize that the mutant must have been holding onto this in case his fight went against his favor. Maybe these creatures are much smarter than you and everyone else thinks?";
			increase carried of medkit by 1;
			now Resolution of Challenge of the Alphas is 2; [helped Alpha Husky]
		increase charisma of player by 1;
		say "[bold type]Your charisma has increased by 1![roman type][line break]";
		increase score by 5;
	else:
		say "This is none of your business. Gathering your courage you turn and run as fast your feet can carry you, just in time to hear the two canid males howl and then fly at each other. The wet sounds of flesh and fur being ripped away will probably haunt you forever in your dreams as you can only imagine what's happening back there.";
		now Resolution of Challenge of the Alphas is 99; [avoided the fight]
	now Challenge of the Alphas is resolved;


Section 5 - Anxiety

[Moved to Consolidated Park Events]


Section 6 - Secrets

[Moved to Consolidated Park Events]


Extra Added Scenes ends here.
