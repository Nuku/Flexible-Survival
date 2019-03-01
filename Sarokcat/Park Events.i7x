Park Events by Sarokcat begins here.
[Several events transferred to Consolidated Outside Events and Consolidated Park Events in Song's folder]

"Adds a series of random events to Flexible Survival to enhance the park."

Section 1 - Poppy field

Table of GameEventIDs (continued)
Object	Name
Poppy Field	"Poppy Field"

Poppy Field is a situation.
The sarea of Poppy Field is "Park".
when play begins:
	add Poppy Field to badspots of hermaphrodite;

Instead of Resolving a Poppy Field:
	say "     Traveling through the park, you stumble into a less used area where some strange flowers appear to have taken root. Looking closer at the brilliant blooms, you feel a sense of peace and tranquility wash over you, and for some reason you feel like stopping to relax here for a while. Do you take a rest?";
	if player consents:
		say "     Yawning, you stop to sit in the field of flowers for a minute, and find your eyes drifting shut, you aren't sure just how much time has passed, when all of a sudden something knocks you awake! Shaking off the damage and some plants that strangely seem to have settled on you, you begin to fight!.";
		decrease HP of player by 10;
		fight;
		say "     Exhausted now that the fight is over, you consider resting in the nice field again, as you start picking bits of plant off yourself. Only to realize some of those bits of plants seem to have started to take root in you! Realizing that the whole field is some kind of plant based trap, you still feel the allure of collapsing and resting here, but manage to drag yourself away. Once away from the field you quickly recover and feel much more alert, you still look a bit green around the edges though. Still it seems you have to thank that beast that attacked you, if it hadn't woken you up who knows what might have happened.";
		infect "Parasitic Plant";
		infect "Parasitic Plant";
		now Resolution of Poppy Field is 1; [fight]
		now Poppy Field is resolved;
	else:
		say "     You shake yourself and stagger onwards, your head feeling much clearer once you get out of the fields.";
		now Resolution of Poppy Field is 1; [avoid]
		now Poppy Field is resolved;


Section 2 - Empty jeep

[Moved to Consolidated Park Events]


Section 3 - small fire

[Moved to Consolidated Park Events]


Section 4 - fallen tree
[
Table of GameEventIDs (continued)
Object	Name
fallen tree	"fallen tree"

fallen tree is a situation. The level of fallen tree is 4.
The sarea of fallen tree is "Park".
when play begins:
	add fallen tree to badspots of girl;
	add fallen tree to badspots of furry;

Instead of Resolving a fallen tree:
	say "While traveling along one of the hiking paths in the park, you note a tree seems to have fallen across the path, it isn't in the best location for just going around either, as the thick undergrowth could conceal just about anything. You can continue onwards if you choose, but something seems slightly suspicious about this, maybe it would be safer to head back... Do you go on?";
	if player consents:
		say "Moving through the thick underbrush, you find you have played right into someone's hands, or paws as the case may be, as no sooner are you entangled than the beasts attack!";
		challenge "Cute Chinchilla Woman";
		challenge "Cute Chinchilla Woman";
		challenge "Cute Chinchilla Woman";
		say "After recovering from the sudden onslaught, you manage to stumble back onto the path to continue on your way, resolving not to underestimate the dangers of the park, however cute and cuddly they might be.";
	else:
		say "Deciding the whole situation is far too suspicious for your liking, you heft your pack and head back down the way you came.";
	now fallen tree is resolved;] [Chinchilla Alterations]


Section 5 - Felinoid lair

Table of GameEventIDs (continued)
Object	Name
Felinoid lair	"Felinoid lair"

Felinoid lair is a situation.
The sarea of Felinoid lair is "Park".
when play begins:
	add Felinoid lair to badspots of girl;
	add Felinoid lair to badspots of furry;

lairconsent is a number that varies.

Instead of Resolving a Felinoid lair:
	if lairconsent is 0:
		say "     While traveling through the park, you come across a small hollow set into one of the hillsides. From the looks of the surrounding area, something might have passed this way not too long ago, though it doesn't appear anything is nearby now. There is an intriguing scent teasing at the edges of your consciousness that seems to be coming from within the cave, and there could be something useful left inside, though you would have to almost crawl to enter the low cave. Do you decide to look inside?";
		if player consents:
			say "     Carefully crawling into the small cave, you find that some creature has obviously been using it as a den, its strong musk filling your nose with a spicy and intoxicating scent. The area not being too large, you quickly spot a small cache of food and water, near what must be the creatures bedding, crawling over to the small stash you find the intoxicating scent has grown even stronger here, the creatures strong musk inundating your senses and filling you with the strange desire to roll around in the bedding and cover yourself in its strong masculine odor. You manage to resist the strange strong urge to coat yourself in the musky scent long enough to grab the items and crawl out of the cave, but standing back up seems a little harder, as if you would rather be on all fours instead of two legs. You leave the vicinity of the cave for now, but for some reason you know you will be back.";
			increase carried of water bottle by 1;
			increase carried of food by 1;
			increase lairconsent by 1;
			infect "Felinoid";
			infect "Felinoid";
			now Resolution of Felinoid Lair is 1; [went inside]
		else:
			say "     You decide not to venture inside the cave this time, though you make a note of its location just in case you decide to return later.";
			now Resolution of Felinoid Lair is 2; [did no go in]
	else if lairconsent is 1:
		say "     Traveling along the park trail, you find your feet have brought you back once more to the strange hollow in the hill you visited before, looking around you see that once more the area seems unoccupied for now. You remember both the stash of food and water you recovered here before, as well as that wonderfully musky scent that even now makes you want more. But do you dare venturing inside again?";
		if player consents:
			say "     Moving down onto all fours, you crawl back into the small cave again, the wonderful musky odor once more filling your brain with its intoxicating odor. As your eyes adjust to the dim interior, you notice immediately that the owner of the cave has replaced its stash of food and water, as you can see some sitting right in plain sight in the deepest part of the hollow. Quickly moving forward on all fours, you snag your new loot, amazed at it just sitting there for you to take, and realize as you pause for a minute that the musk all around you is even stronger here. You find yourself pausing and just enjoying the wonderful scent for who knows how long before you snap out of it and recall that the owner of the cave could be back any minute. Strangely, the thought of waiting for the cave owners return is an extremely tempting one right now, and you can almost feel your body shifting and changing so you could greet him properly... Managing to shake yourself out of it somehow, you pad out of the cave on all fours, the position seeming almost natural after visiting the small cave, and head back out into the park. Somehow though, you know you will end up back here at the cave again... and maybe this time its owner will be there to...";
			increase carried of water bottle by 1;
			increase carried of food by 1;
			increase lairconsent by 1;
			infect "Felinoid";
			infect "Felinoid";
			infect "Felinoid";
			now Resolution of Felinoid Lair is 3; [went in again]
		else:
			say "     With some effort, you manage to draw yourself away from the welcoming cave entrance and stagger on your way through the park, though for some reason you find yourself hoping you run across the place again soon.";
			now Resolution of Felinoid Lair is 4; [stopped yourself]
	else if lairconsent is 2:
		say "     As you travel through the walking trails, you look up to find your wandering feet have taken you back once again to that familiar hollow in the side of the hill. Looking around again you still see no signs of the occupant anywhere around, though it is obvious that it still returns here fairly often. You try to decide whether or not to venture inside again, only to have your body decide for you, as before you know it, you are on all fours again and crawling into the hollow cave. Looking around the now familiar interior, you think you spot something in the back corner, and quickly crawl over to that area. The strong musk in the cave seems to be making you even hornier than before now, but you manage to hold yourself together until you reach the small object you saw which seems to be a soda can stuffed in the corner. As you tug at it, it comes away in your hand, causing you to realize it was empty, but even as you realize that, a stronger wave of musk from the corner washes over you, making you realize with your already fuzzy head that the occupant must have marked this area extensively with its strong masculine scent for when you came back.";
		if humanity of player < 40:
			say "     Unable to help yourself, your animalistic impulses take over and you find yourself rolling around in the strong masculine scent, the scent overwhelming you with instinctual needs and desires. You love the strong masculine musk of the beasts lair, and find yourself burying your muzzle into the scent and inhaling deeply, groaning as it sends shivers through your body of purest need. You realize that your body is shifting and changing, but you can't help but enjoy the sensations and embrace the changes, as on some level you realize they are making you better, making you a more suitable mate for the strong male owner of the lair. You can't help but purr slightly at that thought, your body shuddering at the thought of the lair's owner, wondering what it would be like to be owned by such an obviously strong and masculine beast yourself, to prostrate yourself before his strong dominant form and beg him to use you as he wishes.";
			say "     Groaning, you find yourself rubbing yourself against the strong scent, needing more of that strong musk, even as you can feel it sinking into your skin, marking you as his. You find yourself panting in need and desire as your lust-fogged mind imagines the handsome beast the musk has to belong to, moaning and yowling in need as you imagine yourself submitting and being taken by the creature, again and again. At some point you realize you have completely lost track of time, and the caves owner could be back any second, strangely this seems to make you even more excited as you imagine the beast returning to find you there, your body hot and ready for him to claim. You can already imagine his teeth on your neck as he pounds his dominance into you again and again with every thrust of his maleness... moaning you give yourself over to the sensations, masturbating on the beasts bedding again and again, your thoughts empty of everything but pleasure and masculine musk.";
			infect "Felinoid";
			infect "Felinoid";
			infect "Felinoid";
			infect "Felinoid";
			say "     Eventually you come back to yourself somewhat, your body still tingling with the aftereffects of your multiple strong orgasms, you take stock of your newest changes, almost purring subconsciously as you realize how much more like the owner of the lair you have become. Suddenly a new strong waft of scent enters the hollow, and you realize the owner of the cave has just returned, and you suddenly have a decision to make, do you fight to get out? Or submit to his tender ministrations? Even as you try to puzzle it out in your sex fogged mind, the decision is thrust upon you as the lion like beast enters the lair.";
			challenge "Felinoid";
			say "     Sighing, you crawl out of the lair, exhausted from the ordeal, and feeling even less like yourself and more like a beast than ever before, you slowly pad away from the feline creatures lair, though with the temptation to return this strong, you feel like you might not be able to stay gone for long...";
			decrease humanity of player by 10;
			now Resolution of Felinoid Lair is 5; [major infection]
		else:
			say "     You realize that you can't stay here any longer, even as you can feel your body changing from the musk, changing you to be a better mate for the strong masculine beast whose lair this is, you find yourself moaning at that thought before you manage to snap yourself out of it. You crawl outside desperately gasping for some air not scented by his powerful and dominating scent, that makes you want to moan and lift your body up for his strong touch. Groaning you realize your mind was once more back on being nothing more than the fucktoy of the lair's owner, submitting to him again and again in a wonderfully pleasurable night of bestial sex. Yowling out with need, you manage to drag yourself further away, until you can start to think somewhat clearly again, you know you need to get out of here quickly before the caves owner returns. Even as you leave you find your mind returning to the thought of waiting helplessly for the caves owner having him take you again and again, and know that you can't afford to come back here again, not unless you want to be reduced to just another animal. Still you realize that deep down the experience has changed you already, made you less human and more bestial on some level, and you really aren't sure if you regret the change either.";
			decrease humanity of player by 20;
			infect "Felinoid";
			infect "Felinoid";
			now Resolution of Felinoid Lair is 6; [escaped]
			now Felinoid lair is resolved;


Section 6 - Torn vegetation

[Moved to Consolidated Park Events]


Section 7 - Abandoned picnic

[Moved to Consolidated Park Events]


Section 8 - Groundskeepers cabin

[Moved to Consolidated Park Events]


Section 9 - Badger sighting

[Moved to Consolidated Park Events]


Park Events ends here.
