Park Events by Sarokcat begins here.
[Several events transfered to CEOutside and CEPark documents in Stripes's folder.]

"Adds a series of random events to Flexible Survival to enhance the park."

Section 1- Poppies field

Poppies field is a situation.
The sarea of Poppies field is "Park".
when play begins:
	add Poppies field to badspots of hermaphrodite;


Instead of Resolving a Poppies field:
	say "Traveling through the park you stumble into a less used area, where some strange flowers appear to have taken root, looking closer at the brilliant blooms, you feel a sense of peace and tranquility wash over you, for some reason you feel like stopping to relax here for a while, do you take a rest?";
	If player consents:
		say "Yawning, you stop to sit in the field of flowers for a minute, and find your eyes drifting shut, you aren't sure just how much time has passed, when all of a sudden something knocks you awake! Shaking off the damage and some plants that strangely seem to have settled on you, you begin to fight!.";
		decrease hp of player by 10;
		fight;
		say "Exhausted now that the fight is over, you consider resting in the nice field again, as you start picking bits of plant off yourself. Only to realize some of those bits of plants seem to have started to take root in you! Realizing that the whole field is some kind of plant based trap, you still feel the allure of collapsing and resting here, but manage to drag yourself away. Once away from the field you quickly recover and feel much more alert, you still look a bit green around the edges though. Still it seems you have to thank that beast that attacked you, if it hadn't woken you up who knows what might have happened.";
		infect "Parasitic Plant";
		infect "Parasitic Plant";
		now Poppies field is resolved;
	else:
		say "You shake yourself and stagger onwards, your head feeling much clearer once you get out of the fields..";
		now Poppies field is resolved;


Section 2- Empty jeep

[Moved to CEPark file.]


Section 3- small fire

[Moved to CEPark file.]


Section 4 - fallen tree

[fallen tree is a situation. The level of fallen tree is 4.
The sarea of fallen tree is "Park".
when play begins:
	add fallen tree to badspots of girl;
	add fallen tree to badspots of furry;

Instead of Resolving a fallen tree:
	say "While traveling along one of the hiking paths in the park, you note a tree seems to have fallen across the path, it isn't in the best location for just going around either, as the thick undergrowth could conceal just about anything. You can continue onwards if you choose, but something seems slightly suspicious about this, maybe it would be safer to head back... Do you go on?";
	If player consents:
		say "Moving through the thick underbrush, you find you have played right into someones hands, or paws as the case may be, as no sooner are you entangled than the beasts attack!";
		challenge "Cute Chinchilla Woman";
		challenge "Cute Chinchilla Woman";
		challenge "Cute Chinchilla Woman";
		say "After recovering from the sudden onslaught, you manage to stumble back onto the path to continue on your way, resolving not to underestimate the dangers of the park, however cute and cuddly they might be.";
	else:
		say "Deciding the whole situation is far too suspicious for your liking, you heft your pack and head back down the way you came.";
	now fallen tree is resolved;] [Chinchilla Alterations]


Section 5- Poke trap

[Poke trap is a situation. The level of Poke trap is 4.
The sarea of Poke trap is "Park".
when play begins:
	add Poke trap to badspots of girl;
	add Poke trap to badspots of furry;

Instead of Resolving a Poke trap:
	say "Minding your own business as you wander the park, you start to hear a strange noise from off to the side, when you turn to look you see a flash of yellow fur, like on some small creature, and a soft pi pi pi noise, Do you investigate further? ";
	if player consents:
		say "As you move into the bushes, you see a small yellow rodent, not more than a foot or two in height, with its back to you, its yellow tail shaped almost like a lightning bolt as it makes soft pi noises. Feeling somewhat surprised you realize this rather reminds you of some pop culture lightning creature you have seen before, from a video game of all things. As if confirming your suspicion, you hear the slight crackle of electricity in the air. Do you move closer?";
		if player consents:
			say "As you draw closer, you are almost within touching range of the little beast when it straightens up and turns around, and you recognize it as one of those Chinchilla women that have been running around the park. Apparently it got hold of some type of yellow paint or dye, and made itself up to look like most kids['] favorite Pokemon, most likely as bait... which you just fell for! Before you can finish taking this all in, you realize the crackling sound is from some sort of taser that the little beast has managed to get its hands on... and proceeds to shock you with! As you jerk and twitch from the electricity several more of the little beasts burst from cover to come pounce on you while your weakened!";
			decrease hp of player by 25;
			challenge "Cute Chinchilla Woman";
			challenge "Cute Chinchilla Woman";
			challenge "Cute Chinchilla Woman";
			say " After managing to survive the rather elaborate trap set by the little beasts, you crawl back towards the park trail, your nerves still jangled from where the electricity scrambled them. You decide in the future maybe you should be a little more skeptical of all things cute and fluffy.";
		else:
			say "Deciding that of all things you have seen, this one is just too freaky, you quickly leave the pikachu like creature behind while you still can... maybe you can find something to scrub the memory of its existence out of your brain if you look hard enough.";
	else:
		say "Your paranoia getting the best of you, you continue minding your own business.";
	now Poke trap is resolved;] [Chinchilla Alteration]


Section 6- Felinoid lair

Felinoid lair is a situation.
The sarea of Felinoid lair is "Park".
when play begins:
	add Felinoid lair to badspots of girl;
	add Felinoid lair to badspots of furry;

lairconsent is a number that varies.

Instead of Resolving a Felinoid lair:
	if lairconsent is 0:
		say "While traveling through the park, you come across a small hollow set into one of the hillsides. From the looks of the surrounding area, something might have passed this way not too long ago, though it doesn't appear anything is nearby now. There is an intriguing scent teasing at the edges of your consciousness that seems to be coming from within the cave, and there could be something useful left inside, though you would have to almost crawl to enter the low cave. Do you decide to look inside?";
		if player consents:
			say "Carefully crawling into the small cave, you find that some creature has obviously been using it as a den, its strong musk filling your nose with a spicy and intoxicating scent. The area not being too large, you quickly spot a small cache of food and water, near what must be the creatures bedding, crawling over to the small stash you find the intoxicating scent has grown even stronger here, the creatures strong musk inundating your senses and filling you with the strange desire to roll around in the bedding and cover yourself in its strong masculine odor. You manage to resist the strange strong urge to coat yourself in the musky scent long enough to grab the items and crawl out of the cave, but standing back up seems a little harder, as if you would rather be on all fours instead of two legs. You leave the vicinity of the cave for now, but for some reason you know you will be back.";
			increase carried of water bottle by 1;
			increase carried of food by 1;
			increase lairconsent by 1;
			infect "Felinoid";
			infect "Felinoid";
		else:
			say "You decide not to venture inside the cave this time, though you make a note of its location just in case you decide to return later.";
	else if lairconsent is 1:
		say "Traveling along the park trail, you find your feet have brought you back once more to the strange hollow in the hill you visited before, looking around you see that once more the area seems unoccupied for now. You remember both the stash of food and water you recovered here before, as well as that wonderfully musky scent that even now makes you want more. But do you dare venturing inside again?";
		if player consents:
			say "Moving down onto all fours, you crawl back into the small cave again, the wonderful musky odor once more filling your brain with its intoxicating odor. As your eyes adjust to the dim interior, you notice immediately that the owner of the cave has replaced its stash of food and water, as you can see some sitting right in plain sight in the deepest part of the hollow. Quickly moving forward on all fours, you snag your new loot, amazed at it just sitting there for you to take, and realize as you pause for a minute that the musk all around you is even stronger here. You find yourself pausing and just enjoying the wonderful scent for who knows how long before you snap out of it and recall that the owner of the cave could be back any minute. Strangely, the thought of waiting for the cave owners return is an extremely tempting one right now, and you can almost feel your body shifting and changing so you could greet him properly... Managing to shake yourself out of it somehow, you pad out of the cave on all fours, the position seeming almost natural after visiting the small cave, and head back out into the park. Somehow though, you know you will end up back here at the cave again... and maybe this time its owner will be there to...";
			increase carried of water bottle by 1;
			increase carried of food by 1;
			increase lairconsent by 1;
			infect "Felinoid";
			infect "Felinoid";
			infect "Felinoid";
		else:
			say " with some effort you manage to draw yourself away from the welcoming cave entry, and stagger on your way through the park, though for some reason you find yourself hoping you run across the place again soon.";
	else if lairconsent is 2:
		say "As you travel through the walking trails, you look up to find your wandering feet have taken you back once again to that familiar hollow in the side of the hill. Looking around again you still see no signs of the occupant anywhere around, though it is obvious that it still returns here fairly often. You try to decide whether or not to venture inside again, only to have your body decide for you, as before you know it, you are on all fours again and crawling into the hollow cave. Looking around the now familiar interior, you think you spot something in the back corner, and quickly crawl over to that area. The strong musk in the cave seems to be making you even hornier than before now, but you manage to hold yourself together until you reach the small object you saw which seems to be a soda can stuffed in the corner. As you tug at it, it comes away in your hand, causing you to realize it was empty, but even as you realize that, a stronger wave of musk from the corner washes over you, making you realize with your already fuzzy head that the occupant must have marked this area extensively with its strong masculine scent for when you came back.";
		If humanity of player is less than 40:
			say "Unable to help yourself, your animalistic impulses take over and you find yourself rolling around in the strong masculine scent, the scent overwhelming you with instinctual needs and desires. You love the strong masculine musk of the beasts lair, and find yourself burying your muzzle into the scent and inhaling deeply, groaning as it sends shivers through your body of purest need. You realize that your body is shifting and changing, but you can't help but enjoy the sensations and embrace the changes, as on some level you realize they are making you better, making you a more suitable mate for the strong male owner of the lair. You can't help but purr slightly at that thought, your body shuddering at the thought of the lair's owner, wondering what it would be like to be owned by such an obviously strong and masculine beast yourself, to prostrate yourself before his strong dominant form and beg him to use you as he wishes.[line break]";
			say " Groaning you find yourself rubbing yourself against the strong scent, needing more of that strong musk, even as you can feel it sinking into your skin, marking you as his. You find yourself panting in need and desire as your lust-fogged mind imagines the handsome beast the musk has to belong to, moaning and yowling in need as you imagine yourself submitting and being taken by the creature, again and again. At some point you realize you have completely lost track of time, and the caves owner could be back any second, strangely this seems to make you even more excited as you imagine the beast returning to find you there, your body hot and ready for him to claim. You can already imagine his teeth on your neck as he pounds his dominance into you again and again with every thrust of his maleness... moaning you give yourself over to the sensations, masturbating on the beasts bedding again and again, your thoughts empty of everything but pleasure and masculine musk.";
			infect "Felinoid";
			infect "Felinoid";
			infect "Felinoid";
			infect "Felinoid";
			say "Eventually you come back to yourself somewhat, your body still tingling with the aftereffects of your multiple strong orgasms, you take stock of your newest changes, almost purring subconsciously as you realize how much more like the owner of the lair you have become. Suddenly a new strong waft of scent enters the hollow, and you realize the owner of the cave has just returned, and you suddenly have a decision to make, do you fight to get out? Or submit to his tender ministrations? Even as you try to puzzle it out in your sex fogged mind, the decision is thrust upon you as the lion like beast enters the lair.";
			challenge "Felinoid";
			say " Sighing you crawl out of the lair, exhausted from the ordeal, and feeling even less like yourself and more like a beast than ever before, you slowly pad away from the feline creatures lair, though with the temptation to return this strong, you feel like you might not be able to stay gone for long...";
			decrease humanity of player by 10;
		else:
			say "You realize that you can't stay here any longer, even as you can feel your body changing from the musk, changing you to be a better mate for the strong masculine beast whose lair this is, you find yourself moaning at that thought before you manage to snap yourself out of it. You crawl outside desperately gasping for some air not scented by his powerful and dominating scent, that makes you want to moan and lift your body up for his strong touch. Groaning you realize your mind was once more back on being nothing more than the fucktoy of the lair's owner, submitting to him again and again in a wonderfully pleasurable night of bestial sex. Yowling out with need, you manage to drag yourself further away, until you can start to think somewhat clearly again, you know you need to get out of here quickly before the caves owner returns. Even as you leave you find your mind returning to the thought of waiting helplessly for the caves owner having him take you again and again, and know that you can't afford to come back here again, not unless you want to be reduced to just another animal. Still you realize that deep down the experience has changed you already, made you less human and more bestial on some level, and you really aren't sure if you regret the change either.";
			decrease humanity of player by 20;
			infect "Felinoid";
			infect "Felinoid";
			now Felinoid lair is resolved;


Section 7- Torn vegetation

[Moved to CEPark file.]


Section 8- Abandoned picnic

[Moved to CEPark file.]


Section 9- Groundskeepers cabin

[Moved to CEPark file.]


Section 10- Badger sighting

[Moved to CEPark file.]


Park Events ends here.
