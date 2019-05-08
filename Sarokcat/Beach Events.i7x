Beach Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival located at or focusing on the beach."

Section 1 - Beach bum

Table of GameEventIDs (continued)
Object	Name
Beach bum	"Beach bum"

Beach Bum is a situation.
The sarea of Beach Bum is "Beach".

Instead of resolving a Beach Bum:
	if Resolution of Beach Bum is 0:
		say "     Traveling along the rough beach, you hear a voice call out to you from nearby, turning you see what seems to be a rough figure sitting outside a small tent on the edge of the beach. The tent is surrounded by what seems to be a large pile of junk, partially covered in sand, and the figure itself is so covered in rags and a multitude of various different pieces of clothing that its true form is impossible to determine.";
		say "     The strange person calls out to you again, and against your better judgment you move a bit closer, until a normal conversation is possible. In a raspy, hard to understand voice, the figure explains that they live here, scavenging useful items from the beach and trading for food and other items. Apparently the scavenging has been good lately, with all sorts of strange and unusual items washed up along the beach. Unfortunately, the people he usually deals with for food have all pretty much become too changed to deal with, and he was wondering if you would be willing to take their place doing some trading for him.";
		if Player consents:
			say "     The strange bum seems rather happy to hear it, and you imagine he is smiling underneath all that cloth as he offers you a bit of something to take away with you as a sign of your partnership... admittedly not something you would usually have chosen for yourself though, but it would be rude to refuse.";
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					add loot entry to invent of Player;
					say "You acquired 1 [loot entry].";
				else:
					increase carried of dirty water by 1;
					say "You acquired some dirty water.";
			now Resolution of Beach Bum is 1; [player traded]
		else:
			say "     The bum seems to sigh sadly, as he waves you on your way, you get the feeling you probably won't be seeing him around here much longer...";
			now Resolution of Beach Bum is 99; [disinterest]
			now Beach bum is resolved;
	else if Resolution of Beach Bum is 1:
		say "     Traveling along the long beach you once again see the strange pile of junk and bits of ship wreckage that mark the location of the strange beach bum. Recalling your bargain with the strange person, you trudge over to see if you have anything he might want to trade for.";
		if chips is owned:
			say "     Spying something he definitely wants, the beach bum moves more swiftly than you would normally have given him credit for, snatching your package of chips, and ripping it open before you can say a word. In seconds it is stuffing chips into its mouth, pieces of chips flying everywhere and covering its cloth wrappings in bits of chip and grease. Glancing up from its gruesome feast, the bum seems almost embarrassed as it offers you several items from its strange hoard.";
			delete chips;
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					add loot entry to invent of Player;
					say "You acquired 1 [loot entry].";
				else:
					increase carried of dirty water by 1;
					say "You acquired some dirty water.";
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					add loot entry to invent of Player;
					say "You acquired 1 [loot entry].";
				else:
					increase carried of dirty water by 1;
					say "You acquired some dirty water.";
		else if food is owned:
			say "     Glancing through your stuff, the bum seems somewhat happy to have found some spare food, which they quickly swipe, before offering you a small item from their beach findings.";
			delete food;
			let bumtrade be a random number from 1 to number of filled rows in the Table of Random Critters;
			choose row bumtrade from the Table of Random Critters;
			if there is a loot entry:
				if loot entry is not " " and loot entry is not "":
					add loot entry to invent of Player;
					say "You acquired 1 [loot entry].";
				else:
					increase carried of dirty water by 1;
					say "You acquired some dirty water.";
		else:
			say "     After taking a look at what you have available, the strange bum sighs and shakes its cloth wrapped head sadly, apparently finding nothing edible amongst your offerings. The strange creature waves you away, and feeling somewhat relieved, you continue along the beach.";


Section 2 - Flotsam bits

Table of GameEventIDs (continued)
Object	Name
Flotsam bits	"Flotsam bits"

Flotsam bits is a situation.
The sarea of Flotsam bits is "Beach".

Instead of resolving a Flotsam bits:
	say "     Wandering along the beach, you spy a small pile of flotsam washed up on the beach. Approaching cautiously, everything seems safe enough, so you spend a moment searching through the detritus. The only thing of use that you turn up is a sea hardened bit of wood that could possibly serve as a giant club. It is a large log of driftwood with several branch stubs protruding from it. A couple are placed such that you could swing it like a massive club or battering ram. Despite its time in the salt water, the wood is unusually hard, reminding you of the giant tree creatures you've spotted in the city. Shrugging, you take the bit of wood with you and continue along the beach.";
	increase carried of flotsam club by 1;
	now Flotsam bits is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"flotsam club"	"A rough log of driftwood, polished smooth by the waves and somehow hardened in the salt water. It is quite cumbersome and were it not lightened by its time in the sea, it would be too heavy to wield at all."	15	flotsam club

flotsam club is an armament. It is part of the player. It has a weapon "[one of]your giant club[or]your rough club[or]your flotsam log[or]your length of sea hardened wood[at random]". The weapon damage of flotsam club is 10. The weapon type of flotsam club is "Melee". It is not temporary. the objsize of flotsam club is 5. the hitbonus of flotsam club is -2.

instead of sniffing flotsam club:
	say "The large club smells of the sea and those giant trees.";

Section 3 - Strange tide

Table of GameEventIDs (continued)
Object	Name
Strange tide	"Strange tide"

Strange tide is a situation.
The sarea of Strange tide is "Beach".

Instead of resolving a Strange tide:
	say "     Walking along the beach, you notice a strange roiling of the tide. Not far out in the water, pausing to look for a minute, it seems almost as if the tide is being disturbed from below. Closer inspection reveals that you can almost see something large moving around down there, or perhaps several somethings moving together. Realizing how vigorously whatever is down there must be moving, you decide to continue on your way before it notices you.";
	now Strange tide is resolved;


Section 4 - Strange wave

Table of GameEventIDs (continued)
Object	Name
Strange wave	"Strange wave"

Strange wave is a situation.
The sarea of Strange wave is "Beach".
when play begins:
	add Strange wave to badspots of girl;
	add Strange wave to badspots of furry;

Instead of resolving a Strange wave:
	say "     Walking along the beach, you hear a strange noise all of a sudden, almost like a loud groan, causing you to look towards the water. You are shocked to note that there is a large wave of water coming towards you from the beach, and due to the sheer surprise, you almost don't get out of the way in time. Still a decent amount of the water splashes you as it slams into the beach, causing you to wonder just what happened as you clean the water off of you, some of it seeming to cling to you a bit more than you would expect.";
	infect "Feral Sea Dragon";
	now Strange wave is resolved;


Section 5 - Smashed boat

Table of GameEventIDs (continued)
Object	Name
Smashed boat	"Smashed boat"

Smashed boat is a situation.
The sarea of Smashed boat is "Beach".

Instead of resolving a Smashed boat:
	say "     As you go along the beach, you come across a boat smashed up against some rocks. Seeing no one around, you move closer to investigate. From what you can tell, it looks like whoever was on this boat was trying to flee whatever was going on in the city, having stocked up on supplies, and a chart to the next city down the way. Unfortunately, it doesn't look like they made it that far... but you do decide to take some of their supplies with you, since you doubt they will be needing them anymore wherever or whatever they now are.";
	increase carried of food by 2;
	increase carried of water bottle by 1;
	say "You acquired quite a bit of food, but only a little water.";
	now Smashed boat is resolved;


Section 6 - Dragon voyeurism

Table of GameEventIDs (continued)
Object	Name
Dragon voyeurism	"Dragon voyeurism"

Dragon voyeurism is a situation.
The sarea of Dragon voyeurism is "Beach".
when play begins:
	add Dragon voyeurism to badspots of girl;
	add Dragon voyeurism to badspots of guy;
	add Dragon voyeurism to badspots of furry;


Instead of resolving a Dragon voyeurism:
	say "     Moving along the beach, you hear strange noises from up ahead, causing you to move cautiously as you look around the upcoming dune. You gasp at the strange sight before you, a male sea dragon in the shallows mounting what looks to be a mixture of a human and sea dragoness, shreds of a divers wetsuit still cling to her expanding body as he fucks her roughly. The expression on the woman's face is screwed up into one of the purest ecstasy as he thrusts into her, her happy cries and the strong musk of their mating causing you to grow excited as well. You find yourself unable to move on your eyes locked to the strangely erotic scene in front of you even as your hands begin to roam your body. The woman cooing and writhing wantonly under the dragon, even as her changes continue sweeping over her, until finally the sea dragon roars as he spills his seed into what used to be a human diver, and is now indistinguishable from just another sea dragon. The dragons stay there in the low surf for a minute, shuddering in pleasure, before the male sea dragon pulls out, and drags himself back out into the surf. The newly made dragoness looks around for a minute as if confused by something, before fixating on his retreating form, she quickly dives into the surf after him, swimming along quickly to catch up to the beast that changed her, and now owns her. You gasp in relief tinged with disappointment as they move away, your body tingling both from the sheer erotic nature of the sight you just witnessed, as well as the strong scent of sea dragon mating that covers the area and seems to cling to you strongly.";
	increase Libido of Player by 30;
	infect "Feral Sea Dragon";
	infect "Feral Sea Dragon";
	infect "Feral Sea Dragon";
	now Dragon voyeurism is resolved;


Section 7 - relaxing scene

Table of GameEventIDs (continued)
Object	Name
relaxing scene	"relaxing scene"

relaxing scene is a situation.
The sarea of relaxing scene is "Beach".

Instead of resolving a relaxing scene:
	say "     Moving along down the silent beach, a glint on the water catches your attention. You immediately realize that it was just a flash of light on the water, but the view is so impressive you stop and stare anyways. The sounds of the soft waves lapping the beach, the reflected glow of the light on the water, the crisp clean air, it all makes for such an idyllic and relaxing scene that you feel refreshed and happier after even just a moment of standing their soaking it all in..";
	SanBoost 20;
	now relaxing scene is resolved;


Section 8 - Plundered boat

Table of GameEventIDs (continued)
Object	Name
Plundered boat	"Plundered boat"

Plundered boat is a situation.
The sarea of Plundered boat is "Beach".

Instead of resolving a Plundered boat:
	say "     Walking along the beach, you come across a half sunk boat sticking out of the water, curiosity getting the best of you, you wade over to inspect the boat. Hauling yourself aboard you immediately note signs of a struggle, it looks like several people tried to put up some kind of fight here, but there are no signs of either the winners or the losers. Moving around the boat, you note that someone appears to have already plundered the boat and taken anything of value, although you do find a bit of ripped cloth that looks like it might be from some sort of bandana, the black cloth appears to have the skull and bones of a pirate logo printed on it, although the skulls teeth are pointed and shark-like. Shrugging and unable to find anything of use, you wade back to the beach and continue on your way.";
	now Plundered boat is resolved;


Section 9 - Tainted yacht

Table of GameEventIDs (continued)
Object	Name
Tainted Yacht	"Tainted Yacht"

Tainted Yacht is a situation.
The sarea of Tainted Yacht is "Beach".
when play begins:
	add Tainted Yacht to badspots of hermaphrodite;
	add Tainted Yacht to badspots of furry;

Instead of resolving a Tainted Yacht:
	say "     While moving along the nearly deserted coast, you spot a small, sixty foot yacht anchored nearby. You think with a bit of effort you might be able to swim out to the anchored boat. Do you try?";
	if Player consents:
		fight;
		say "     Making it to the ship at last, you tiredly haul yourself aboard, only to stare around you in shock. The deck is a slippery mess of fluid, and champagne glasses and bits of clothing lie scattered around the deck forlornly. Looking around inside carefully, you find the ship seems deserted, at least the front cabin is, you look around to try to figure out what happened here, and spot a few small journal entries in the log. Skimming the log you begin to understand what happened. While apparently the owners of this yacht were intending to wait out the infection in style with a close group of friends, one of the people they let on the boat must have been infected already and not shown it yet. Soon after they set up anchor for their nightly party, the orgy must have started, spreading the conversion throughout the small enclosed ship like a wildfire.";
		say "     Searching the ship further could be dangerous, as not all of the creatures may have abandoned ship fully, still you decide to check to see if the boat still runs. Unfortunately something seems to have flooded the engines, rendering them currently inoperable, moving forward to open the hatchway leading to the engines, you are overcome with the strong scent of musk and sex, making your skin twitch with the first signs of impending change. Quickly slamming the door shut you realize that an orgy seems to have taken place near the engine room, and whatever the engine is flooded with, trying to clean it out would most likely result in you turning into whatever creature these people became. Quickly abandoning that idea, you go check the food supplies only to find that they like everything else on the ship, are tainted with the results of the boats occupants long orgy. Sighing, you go about gathering up some of the least tainted of the water supplies before heading back to shore, only slightly changed by your experience.";
		increase carried of dirty water by 2;
		infect "Sewer Gator";
		infect "Sewer Gator";
		now Resolution of Tainted Yacht is 1; [got in the yacht]
	else:
		say "     Deciding some things are best left alone, you continue your nice walk along the sands.";
		now Resolution of Tainted Yacht is 99; [disinterest]
	now Tainted Yacht is resolved;


Section 10 - Strange castle

Table of GameEventIDs (continued)
Object	Name
Strange castle	"Strange castle"

Strange castle is a situation.
The sarea of Strange castle is "Beach".

Instead of resolving a Strange castle:
	say "     Traveling along the beach, you come to an area where someone has obviously recently been hard at work. Just sitting there near the surf is an extremely intricately made sand castle, a magnificent looking edifice with numerous carefully sculpted towers and many fine details. Looking around you can't see any sign of who might have made such a thing, and then just abandoned it here. Shaking your head at the strange little building, you continue along your way, the waves behind you beginning to erode away at the small castle's structure.";
	now Strange castle is resolved;


Section 11 - otter view

Table of GameEventIDs (continued)
Object	Name
otter view	"otter view"

otter view is a situation.
The sarea of otter view is "Beach".
when play begins:
	add otter view to badspots of furry;

Instead of resolving a otter view:
	say "     As you wander along the beach, you hear some laughter and splashing from the cove up ahead. Moving forward to take a closer look, you spy a small group of otters, laughing and frolicking in the shallow water. You smile at the innocently playful creatures for a while, until their play starts to get a bit more 'hands on' with each other. At which point you continue on your journey before they notice you.";
	now otter view is resolved;


Section 12 - Cream stand

Table of GameEventIDs (continued)
Object	Name
Cream stand	"Cream stand"

Cream stand is a situation. The level of Cream stand is 2.
The sarea of Cream stand is "Beach".
when play begins:
	add Cream stand to badspots of hermaphrodite;
	add Cream stand to badspots of furry;

Instead of resolving a Cream stand:
	say "     Wandering along the beach, you notice someone seems to have recently set up one of the ice cream stands, though you don't spot anyone nearby. It is something of a hot day - perhaps you should go help yourself to some ice cream?";
	if Player consents:
		say "     Deciding to have some ice cream, you move over to the small ice cream stand, and open up the cooler packed full of vanilla ice cream. Picking up a scooper, you place a hefty scoop on one of the cones and begin to eat the white flavorful treat. The taste of the ice cream makes you wonder for a second, as it doesn't taste quite like normal vanilla ice cream does, but since the taste is absolutely delicious, you eagerly finish off the cone anyways. Thinking about getting seconds, all of a sudden you moan as your stomach churns, and your body starts to writhe and change, before you can do more than wonder just what was in that ice cream, a shadow swoops down and takes advantage of your distraction!";
		decrease HP of Player by 20;
		infect "Blue Gryphon";
		challenge "Blue Gryphon";
		say "     The gryphon being long gone, you shake your head as you begin to recover from the ice cream and the attack, and take a closer look at the back part of the ice cream stand while you are here. You find some small containers of gryphon milk which were obviously fed into the ice cream machine in order to bait the gryphon's little trap. Sighing at the waste, you continue on your way, though you do take a couple containers of the leftover milk, just in case it might come in handy later... or if you find another ice cream machine, that did taste pretty good after all...";
		increase carried of gryphon milk by 2;
		now Resolution of Cream stand is 1; [got ice cream]
	else:
		say "     Being cautious by nature, you decide to forgo the tasty beach treat, and keep to your own supplies.";
		now Resolution of Cream stand is 99; [no ice cream]
	now Cream stand is resolved;


Section 13 - Lucky seashell

Table of GameEventIDs (continued)
Object	Name
Lucky seashell	"Lucky seashell"

Lucky seashell is a situation.
The sarea of Lucky seashell is "Beach".

Instead of resolving a Lucky seashell:
	say "     As you wander along the beach, you enjoy the feel of the sand underneath your feet and the beautiful sky overhead... until you nearly trip on something half buried in the sand. Cursing you look down and discover a large seashell was revealed when you nearly tripped over it, curiously you pick the shell up and marvel at the iridescent sheen of the shell. Just holding the thing makes you feel a bit better about things, who knows, maybe finding the shell means today will be a lucky day after all you think to yourself!";
	let T be a random number between one and five;
	if T is 1:
		say "     Finding the shell makes you scour the beach and pay much more attention to your surroundings as you continue on your walk, just in case there are any other such treasures. And while you don't actually find any more treasures on your trip down the beach, you do feel as if your eyes have become a bit sharper from the experience.";
		increase perception of Player by 2;
		say "[bold type]Your perception has increased by 2![roman type][line break]";
	else if T is 2:
		say "     Walking along the beach afterwards with a spring in your step, you scan the sands around you just in case something else useful turns up, and after just a short time, you spot a bottle of water! Wow this really must be your lucky day!";
		increase carried of water bottle by 1;
	else if T is 3:
		say "     Walking along the beach with the shell in hand, you can't help but play at tossing the thing up and down in your hands as you travel, enjoying the look of it as it spins in the air, and the challenge of catching it quickly and accurately. Eventually you manage to drop it into the surf, and no matter how hard you look you don't find the shining shell again. Still you resolve to pay a bit more attention to how you move your hands from now on so you don't drop anything else important, and playing with the shell already made you more aware of their positioning, so it isn't a total loss";
		say "[bold type]Your dexterity has increased by 2![roman type][line break]";
		increase dexterity of Player by 2;
	else if T is 4:
		say "     Traveling along with the shell, it seems like tripping over it was the least of your worries today! Your walk turns into a harrowing experience as you slip on the sand and fall several times, the wind blows sand into your face, and your feet seem to find every rock on the beach. Deciding maybe it was the shells fault after the fourth time you are nearly dragged out to sea by a sudden wave, you toss the shining pretty thing into the sea from whence it came. You feel much more ragged from the experience, though it has taught you a bit about stubbornly enduring things...";
		say "[bold type]Your stamina has increased by 2![roman type][line break]";
		increase stamina of Player by 2;
	else:
		say "     Taking the shell along with you, you find that it seems to make the day brighter as you carry it and makes you feel a bit more human just to have it with you. Eventually reaching the end of your walk, you set the shell back down on the beach so it can brighten someone else's day up like it did yours'";
		SanBoost 20;
	now Lucky seashell is resolved;

Beach Events ends here.
