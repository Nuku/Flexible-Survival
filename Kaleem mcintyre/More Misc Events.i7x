Version 2 of More Misc Events by Kaleem mcintyre begins here.
[ Version 1.0 - Events by Kaleem ]
[ Version 1.5 - Several events transferred to Consolidated Outside Events in Song's folder ]
[ Version 2.0 - Rework by Draegon ]

"Adds a series of random events to Flexible Survival."

FoxMasterEncounters is a number that varies.

Section 1- Unorthodox Sight

Table of GameEventIDs (continued)
Object	Name
Unorthodox Sight	"Unorthodox Sight"

Unorthodox Sight is a situation.
ResolveFunction of Unorthodox Sight is "[ResolveEvent Unorthodox Sight]".
Sarea of Unorthodox Sight is "Red".
when play begins:
	add Unorthodox Sight to BadSpots of FurryList;
	add Unorthodox Sight to BadSpots of MaleList;

to say ResolveEvent Unorthodox Sight:
	say "     Suddenly overcome by the sensation that something is wrong, you quickly whip your head around, looking this way and that in an attempt to figure out what is amiss. Due to having managed to brave a great deal of dangers already, you know it is wise to listen to your instincts when they tell you that something is off. For now the street seems empty, with nothing but the burned-out husks of buildings on the side opposite you and a row of uninteresting shops along your side of the street. They seem to be the kind of places that virtually nobody would ever actually bother going into. You assume they only managed to survive at all because the rent was cheap here right at the edge of the red light district. Focusing on your other senses, you then hear movement somewhere down the street and around a corner. Whoever it is doesn't appear to be in a rush, but even so, they'll be here soon enough.";
	say "     [bold type]What to do you want to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Hide and observe who or what it could be.";
	say "     ([link]N[as]n[end link]) - Just get out of here.";
	if Player consents:
		LineBreak;
		say "     Against the side of the building nearest to you, you notice a delivery truck with the logo of a plumbing business on the side. Spotting a short stack of crates with what appears to be the same insignia as the truck, you rush over and crouch down behind them. Noticing the rather large cum stains on the side of the crates, you assume that the delivery driver had a bad day. Huddling down and scanning the area, you keep searching for any sign of danger, yet what appears a moment later is more peculiar than hostile. A quick glimpse over the edge of your boxes reveals two canine forms walking down the street together. Before ducking out of sight again, you notice that the smaller of the two is a feral walking on all fours, while the larger form is walking tall and proud on two legs beside it. They appear relaxed and happy from the way their tails are wagging, just out for a nice little stroll through the wild streets of this city.";
		say "     Since one can never be sure what any creature these days might do, you stay crouched behind your crates and don't reveal yourself. Once the pair walks past, you turn around to observe the two of them more closely. From your experiences in and around the city, you know that most of the time, bigger and tougher beings will utterly dominate the weak. This is clearly not the case here, as the comparably small feral fox is holding the grip of a leash between his teeth, which ends at a collar that his anthro wolf companion has strapped to his wrist as a cuff. Despite the fact that the wolf man is so much larger and more muscular than the fox, he allows himself to be led around quite happily.";
		WaitLineBreak;
		say "     A moment later, you can see proof that the fox really is in control. He tugs the leash as they near a wrecked motorcycle in their path and the wolf obeys right away, moving over and walking around it - a weird relationship, but it seems to work for them. Silently studying the canines a little more openly, you see that the gray-furred wolfman is fully nude except for a red backpack strapped to his muscular back, with straps almost too small for his bulk. He is apparently large in all areas too, as you catch glimpses of a prodigious sheath and weighty balls that swing between his legs as he walks. At the same time, the fox seems utterly average in almost every regard, with nothing to differentiate him from a normal animal except the obvious intelligence he is demonstrating. The fur of the gray wolf's buttocks is matted and seems wet, which you quickly realize is due to the fresh cum oozing out of his asshole with every step as he is led along.";
		say "     Soon, the fox gives another tug on the leash and stops walking for a second, making his pet react by crouching down next to him and petting him in all of those hard to reach places. With a satisfied yip, the vulpine returns the affection of his companion, licking his muzzle and enjoying further grooming. He eventually leads the wolf onwards, soon vanishing from your sight around a corner. Once they are safely out of range, you get up from your hiding spot and stretch as you reflect on the unorthodox scene you witnessed.";
		increase FoxMasterEncounters by 1;
		now Resolution of Unorthodox Sight is 1; [hid and observed]
	else:
		LineBreak;
		say "     With the old saying [']Better safe than sorry['] in the forefront of your mind, you decide not to risk it and just dash the other way, quickly turning a corner. The swift escape avoids any contact at all between yourself and the unknown stranger, which is just fine in your book.";
		now Resolution of Unorthodox Sight is 99; [disinterest]
	now Unorthodox Sight is resolved;

Section 2 - Desperation

[Moved to Consolidated Outside Events]


Section 3 - Family Fun

Table of GameEventIDs (continued)
Object	Name
Family Fun	"Family Fun"

Family Fun is a situation.
ResolveFunction of Family Fun is "[ResolveEvent Family Fun]".
Sarea of Family Fun is "Beach".
when play begins:
	add Family Fun to BadSpots of FurryList;
	add Family Fun to BadSpots of MaleList;

to say ResolveEvent Family Fun:
	say "     As you stroll down the beach, you spot a young male fox walking between two muscular wolves. The wolf on the left is the largest, with a wide and burly figure, while the one on the right is comparatively lithe. The fox between the two appears rather young, most likely a teenager. All three of them are completely naked, making no effort to conceal their sizable sheaths and balls. Despite their altered bodies, they hold each other's hands like a family enjoying a vacation at the beach. You watch as the teenage vulpine looks between the two, presumably his guardians or parents, with a happy smile upon his narrow muzzle. You find your gaze locked to them as they continue down the beach.";
	say "     Curious about the peculiar sight, you follow a few yards behind them so as to not disturb their moment together. As the canine trio reaches a stretch of empty beach, they suddenly let go of their clasped hands and run away from the fox. You wonder why they would do that, only to realize with a start that they're actually playing a game of tag! While you watch, both of the big wolves take turns acting as the [']prey['] for the other two at a seemingly random interval. You take your leave as the game changes from tag to wrestling, quietly pleased that there is still something sweet left in the world despite the chaos and depravity of the city.";
	increase score by 1;
	now Family Fun is resolved;


Section 4 - Magic

["Ritual Location" revised in Misc Events - Pandemonium]

Section 5 - Auto Shop

Table of GameEventIDs (continued)
Object	Name
Auto Shop	"Auto Shop"

Auto Shop is a situation.
ResolveFunction of Auto Shop is "[ResolveEvent Auto Shop]".
Sarea of Auto Shop is "Red".
when play begins:
	add Auto Shop to BadSpots of FurryList;
	add Auto Shop to BadSpots of MaleList;

to say ResolveEvent Auto Shop:
	say "     As you carefully make your way through the city's most notorious district, your ears twitch at the sound of a car revving. Pausing briefly to figure out where it is coming from, you move towards the source. As you get closer you find yourself slowing, wary of the possibility that although it may be a sane person or persons, it could just as easily be just a sex focused monster screwing around with a car. You continue regardless of your disquiet and soon find yourself looking at the entrance to an auto shop. With surprise, you see that the lights inside are on and quickly realize that it must be running off a generator.";
	say "     Peering in the open garage door you see an erotic sight. In pairs and trios around the garage various mutants are having very raunchy and open sex. Given that they are mostly wearing pieces of mechanics outfits you figure that they must be sane but horny enough to have an orgy, perhaps having recently been changed. If so, they've certainly not wasted much time in getting it on, as you can literally see whole puddles of cum on the ground in there. The majority of those within the garage appear to be one type or another of canines, but a few felines are scattered about having some fun too. The garage is filled with wet slaps, loud moans, and growls as the group helps each other get off. The smell of musk and jizz is almost overwhelming to your senses as you watch. In the center of the garage is a relatively intact Jeep that you notice to be the source of the revving.";
	WaitLineBreak;
	say "     As you turn your focus on the Jeep you realize that the revving is being caused by the occupants having raunchy fun of their own. Inside are a rather large, barely clothed donkey hunk and a fully nude doberman twink. With each thrust into the twinky doberman the donkey man's hoof hits the Jeep's gas pedal. The doberman moans as he spears himself full of donk meat, eagerly taking the donkey cock down to the balls. As you watch around the corner you find that you cannot help but be aroused by the sight, its level of sheer eroticism almost mind blowing. The interspecies pair in the Jeep quickly reach orgasm together, the belly of the doberman swelling as he is over-filled with cum.";
	say "     Unsure if those inside are actually sane or not, and guessing that no matter which, they might just draw you into their orgy given their current mood, you decide to gain some distance for now. Maybe returning here at another time could allow for a safer first contact...";
	increase score by 1;
	now Auto Shop is resolved;


More Misc Events ends here.
