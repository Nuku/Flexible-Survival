Pirate Island by Sarokcat begins here.

"Adds a quest to seek pirate treasure."

Section 1- Pirate Island environment

Pirate Island is a room. It is fasttravel. It is private.

The description of Pirate Island is "Finally the island with the treasure marked on the map! The small island seems to be a rather nice island not far off the coast, seeming just like many other similar islands in the area, this one happens however to be riddled with what seems to be a rather large amount of caves and tunnels, just waiting to be explored.".

instead of sniffing Pirate Island:
	say "The island smells of the ocean and fetid sea caves.";



Treasure cave is a man.
The description of Treasure cave is "Not just one cave but a large series of caves that dot the shores of the island, they look like the perfect place for some suspicious pirate to have hidden some treasure. Still the dark openings look ominous, and you can hear water sloshing within some of them occasionally, it will take a lot of bravery to explore these caves. You will have to [']hunt for treasure['] in them.".
Treasure cave is in Pirate Island.

instead of linkactioning Treasure Cave when treasurefound is 0:
	say "Possible Actions: [link]hunt for treasure[end link], [link]smell[as]smell treasure cave[end link][line break]";

instead of sniffing Treasure cave:
	say "The sea cases smell of stagnant sea air.";

Treasurefound is a number that varies.
Lasttreasurehunt is a number that varies. Lasttreasurehunt is usually 250.
treasurehunt is a number that varies. treasurehunt is usually 0.

treasurehunt is an action applying to nothing.

understand "explore caves" as treasurehunt.
understand "explore cave" as treasurehunt.
understand "explore tunnel" as treasurehunt.
understand "explore tunnels" as treasurehunt.
understand "explore the caves" as treasurehunt.
understand "treasure hunt" as treasurehunt.
understand "hunt for treasure" as treasurehunt.
understand "explore treasure caves" as treasurehunt.
understand "find treasure" as treasurehunt.
understand "find the treasure" as treasurehunt.
understand "search cave" as treasurehunt.
understand "search caves" as treasurehunt.
understand "search the caves" as treasurehunt.


check treasurehunt:
	if Treasure cave is not visible, say "where?" instead;


carry out treasurehunt:
	if lasttreasurehunt - turns < 8:
		say "Approaching the dark caves that dot the island, you realize that you still haven't fully recovered from your last trip down into the darkness, and decide to come back again later...";
		stop the action;
	else:
		if treasurefound is 0:
			now lasttreasurehunt is turns;
			say "Stepping forward boldly, you eye the numerous caves that dot the shores of the island, knowing that inside one of them your future treasure awaits you, and you can't wait to find it! With a grin on your face you pick a cave and stride forward!";
			if rarequesting is 5:
				say "Traveling through the caves, you come across a large open cave with light filtering in from above, as you look in the cave, a glint of light catches on something shiny in a small pool towards the rear of the cave. Thinking it might be the treasure you quickly hurry over to take a look, only to realize your mistake when you hear a roar from behind you. The cave seems to be a Sea dragons lair!";
				challenge "Feral Sea Dragon";
				if lost is 1:
					say "Defeated by the large beast, you are forced to withdraw from the cave without determining whether or not the treasure was actually there, but you vow to yourself you will return and try again!";
					stop the action;
				else:
					say "Having driven back the sea dragon for now, you investigate the small pool where you saw the glint earlier. Looking down into the small pool, you see what appears to be an empty chest, someone else got to the treasure before you did! You sigh despondently, before realizing that an empty chest doesn't glint, looking around for the thing that made the glint, you spot a small handful of gold coins scattered around the bottom of the pool, and excited you quickly dive in and gather them all up. Heading out of the cave with your new bit of treasure, you realize that you may not have found a large pirates hoard, but just staring at the gold coins you did find makes you grin and feel better about your adventure, and the great experience you had finding it, and a bit of gold sure won't hurt once you get back to civilization either![line break]";
					say "Your XP has increased!";
					increase XP of player by 50;
					now treasurefound is 1;
					stop the action;
			else:
				let T be a random number between one and ten;
				if T is 1:
					say "Wandering through the dark caves, you feel increasingly nervous as they twist deeper and deeper into the island, becoming partially submerged at times, forcing you to wade through the still water in the dark, nevertheless, the thought of the treasure pushes you ever onwards, until you finally emerge into gleaming sunlight, having somehow ended up on the other side of the island, and no treasure.";
					stop the action;
				if T is 2:
					say "Walking through the dark and damp caves, you hear a soft trickling noise from one of the nearby alcoves, deciding to investigate you find a small stream trickling up from a crack in the wall. Taking a look at the small spring you find the water is both crisp and clear, and decide to gather some of it up to take with you. You continue exploring through the caves, but eventually find they twist and turn back on each other, and you end up back on the beach.[line break]";
					say "[bold type]You gain 1 water bottle![roman type][line break]";
					increase carried of water bottle by 1;
					stop the action;
				if T is 3:
					say "Walking through the caves, you find yourself starting to jog a bit, and then a bit more, as you move along the long cave, always following the left passage when it appears in an attempt to solve the maze of passages within. After some time you begin to tire, but there is no end to the cave in sight, as you move in the dim light you realize your surrounding seem increasingly familiar even as you continue to jog along. Finally in frustration you take a right turn instead of a left turn, and almost immediately shoot back out onto the beach from the cave you entered from, with an embarrassed glance behind you, you realize the left part of that cave looped in a large circle, and you have been running around it for hours. You sigh as you plop down on the beach to rest for a minute, still you do feel slightly more dexterous from all that jogging you find yourself thinking, as you let the waves lap at your body.[line break]";
					say "[bold type]Your dexterity has increased by 1![roman type][line break]";
					increase dexterity of player by 1;
					stop the action;
				If T is 4:
					say "Traveling along the dim caves, you can see small bits of light filter through from holes far above you in the cave walls, leaving you barely enough light to see as you slowly feel your way forward. The cave stretches on endlessly before you as you hunt for the treasure you know is in here somewhere, eventually you grow slightly careless as you move forward, and your foot comes down on empty air as you tumble forward into a natural pit in the rock. You lie there for a minute cursing at the dark hole, as your body aches with pain, slowly you climb back out of the pit, and in too much pain to continue, you carefully make your way back to the entrance, the treasure still safe in its caves, for now...";
					decrease HP of player by 20;
					stop the action;
				if T is 5:
					say "Wandering through the dark tunnels, you eventually trip over something as you explore one of the alcoves, reaching down you find a small item, hoping it is part of the treasure you decide to take it with you as you explore. Eventually you find your way back out of the caves, without finding the treasure and rather tired, and examine the site you found... well it may not be part of the treasure, but at least it will make a nice souvenir.";
					let minortreasure be a random number from 1 to number of filled rows in the table of random critters;
					choose row minortreasure from the table of random critters;
					if there is a loot entry:
						if loot entry is not " " and loot entry is not "journal":
							say "[bold type]You acquired 1 [loot entry].[roman type][line break]";
							add loot entry to invent of player;
							say "[bold type]You acquired 1 dirty water![roman type][line break]";
							increase carried of dirty water by 1;
						else:
							say "[bold type]You acquired 1 pirate bandana![roman type][line break]";
							increase carried of pirate bandana by 1;
					else:
						say "[bold type]You acquired some seafood![roman type][line break]";
						increase carried of food by 1;
					stop the action;
				if T is 6:
					say "Traveling through the caves, you come across a large open cave with light filtering in from above, as you look in the cave, a glint of light catches on something shiny in a small pool towards the rear of the cave. Thinking it might be the treasure you quickly hurry over to take a look, only to realize your mistake when you hear a roar from behind you. The cave seems to be a Sea dragons lair!";
					challenge "Feral Sea Dragon";
					if lost is 1:
						say "Defeated by the large beast, you are forced to withdraw from the cave without determining whether or not the treasure was actually there, but you vow to yourself you will return and try again!";
						stop the action;
					else:
						say "Having driven back the sea dragon for now, you investigate the small pool where you saw the glint earlier. Looking down into the small pool, you see what appears to be an empty chest, someone else got to the treasure before you did! You sigh despondently, before realizing that an empty chest doesn't glint, looking around for the thing that made the glint, you spot a small handful of gold coins scattered around the bottom of the pool, and excited you quickly dive in and gather them all up. Heading out of the cave with your new bit of treasure, you realize that you may not have found a large pirates hoard, but just staring at the gold coins you did find makes you grin and feel better about your adventure, and the great experience you had finding it, and a bit of gold sure won't hurt once you get back to civilization either![line break]";
						say "[bold type]Your gain 50 XP![roman type][line break]";
						increase XP of player by 50;
						now treasurefound is 1;
						stop the action;
				if T is 7:
					say "Traveling through the dark and damp caves, you swear you hear some off key singing from around the bend, peeking around you find several pirate sharks dicing over some small items in a cave half filled with water. You lean closer to get a closer look, only to be spotted by one of the sharks, they give out a cry and dive into the water, circling before charging back to engage you, looks like you are in for a fight!";
					challenge "Pirate Shark";
					challenge "Pirate Shark";
					challenge "Pirate Shark";
					say "After a long and exhausting time, the sharks have finally left, leaving you in the cave by yourself, sighing you lie down to rest for a minute, only to find something uncomfortable underneath you. Glancing down, you realize they left behind the items they were dicing over! While it may not be actual treasure, it certainly isn't anything to sniff at you think as you tuck the items into your pack.";
					let minortreasure be a random number from 1 to number of filled rows in the table of random critters;
					choose row minortreasure from the table of random critters;
					if there is a loot entry:
						if loot entry is not " " and loot entry is not "journal":
							add loot entry to invent of player;
							say "You acquired 1 [loot entry].";
							increase carried of dirty water by 1;
							say "You acquired some dirty water!";
						else:
							increase carried of pirate bandana by 1;
							say "You acquired a pirate bandana!";
					else:
						increase carried of food by 1;
						say "You acquired some seafood!";
					let minortreasure be a random number from 1 to number of filled rows in the table of random critters;
					choose row minortreasure from the table of random critters;
					if there is a loot entry:
						if loot entry is not " " and loot entry is not "journal":
							add loot entry to invent of player;
							say "You acquired 1 [loot entry].";
							increase carried of dirty water by 1;
							say "You acquired some dirty water!";
						else:
							increase carried of pirate bandana by 1;
							say "You acquired a pirate bandana!";
					else:
						increase carried of food by 1;
						say "You acquired some seafood!";
					stop the action;
				if T is 8:
					say "Hunting through the dark and dreary caves, you begin to wonder if you will ever find the treasure that is supposedly to be hidden in this place, sighing you continue your long journey through the caves, only to come across a cave exit that leads to a secluded pool on the interior of the island. Looking around you realize this place is absolutely beautiful, and seems to speak to something deep down inside you. Deciding not to worry about treasure for a time, you spend some time basking in the beautiful light as you watch it shine off the pool, and drinking your fill of the gloriously clear water. Eventually you get back up to leave, feeling much happier after your visit to the nice pool.";
					now thirst of player is 0;
					increase humanity of player by 15;
					stop the action;
				if T is 9:
					say "Wandering through the caves of the island, you hear a strange rhythmic noise coming from one of the caverns up ahead, do you want to investigate?";
					if player consents:
						say "Moving ahead you find yourself in a large open beach cave, a strange pleasant scent filling your nostrils as you move into the cave. The noise continues, before a loud roar lets out behind you. Jumping you turn around swiftly to see a sea dragon and dragoness panting together in the far back of the cave, this must be their lair, and the rhythmic sound was the sound of their mating! The two large beasts stare at you for a second, and you stare back at them as well, before they can react you break into a run, leaving the cave to the two large beasts before they can get around to punishing you for trespassing. Still after the encounter you find yourself feeling slightly strange and woozy, your head still filled with the scent of their mating as you realize it is trying to change you...";
						if player is female or girl is banned:
							infect "Feral Sea Dragon";
							infect "Feral Sea Dragon";
						else:
							infect "Feral Sea Dragoness";
							infect "Feral Sea Dragoness";
					else:
						say "Deciding that it probably isn't treasure, you continue on your way.";
					stop the action;
				else:
					say "Wandering through the dark caves, you slip on one of the damp corridors and find yourself sliding out of control down a long ramp, the ramp twists and turns before depositing your screaming body in the sea at the coast of the island, as you sputter and look around for a way back to the beach, you spot something heading your way!";
					now battleground is "Beach";
					fight;
					stop the action;
			if rarequesting is 3:
				say "You look at the dark caves, and think about entering them again to seek your fortune, only to pull out one of the coins you found earlier, flip it a few times, and decide that perhaps it would be best to be content with the treasure you have already found.";
				stop the action;
		else:
			say "You already found the treasure.";


Section 2- Pirate island quest line


Noteinbottle is a situation.
The sarea of Noteinbottle is "Beach".

tmapfound is a number that varies.

Instead of resolving a Noteinbottle:
	say "     Walking along the beach enjoying the view of the surf you notice something bobbing on the waves just out of reach of shore. Do you dive in to try to get it?";
	if player consents:
		now fightoutcome is 100;
		fight;
		if fightoutcome >= 10 and fightoutcome <= 19:
			now fightoutcome is 100;
			fight;
			if fightoutcome >= 10 and fightoutcome <= 19:
				if guy is banned or furry is banned or hermaphrodite is banned:
					say "     Having braved the waves, you drag yourself back up onto the beach, one of your hands clutching the object you worked so hard for tightly. Closer examination shows it appears to be an old style glass bottle, with yes, as you half expected a roll of paper inside! More than a bit curious at this point, you quickly open the bottle up and fish the message out. But it seems water leaked into the bottle and the message is unreadable except for a short scrawl at the bottom that says: 'The treasure hunt requires guy, hermaphrodite and furry content to be available. Please try again. No purchase necessary. Void where prohibited. May cause unexpected priapism.' Hmmm... very strange.";
				else:
					say "     Having braved the waves, you drag yourself back up onto the beach, one of your hands clutching the object you worked so hard for tightly. Closer examination shows it appears to be an old style glass bottle, with yes, as you half expected a roll of paper inside! More than a bit curious at this point you quickly open the bottle up and fish the message out. Spreading it out on the sand beside you, you puzzle over the hastily scrawled message. It is very difficult to read, but something about 'rats' and 'missing the food court' can be made out. There also seems to be some kind of warning about some kind of pirate sharks in the deeper water? The marks on the back almost seem to be some kind of map, though without some kind of reference and a boat, it is totally useless to you right now. Still if there are pirates, there might be treasure, right? Just to be on the safe side, you brush some short, gray hairs from the map, roll it up and stick it in your pocket anyway. Perhaps you should do some more investigating.";
					now tmapfound is 1;
					Now Noteinbottle is resolved;
		if fightoutcome >= 20:
			say "     Driven back by the sea creatures, you are forced back to the beach. You've lost sight of the bottle for now.";
	else:
		say "     Deciding not to bother with the strange bobbing object, you continue your nice walk along the beach.";


[ - moved into Rod's dialog set
Instead of conversing Rod Mallrat while tmapfound is 1:
	say "'Oh hey that scratching looks kinda familiar!' Rod says when you show him the map, snatching it out of your hands he looks at it from several angles, before heading off to the north. 'I'll be right back, dude. I wanna show this to the others!' The well-dressed mall rat calls back over his shoulder. You spend some time wandering around the food court poking into places for a bit before Rod returns, your original message and map with him, and another piece of paper as well. 'Hey sorry about the delay, took a bunch of us to puzzle this stuff out,' he says as he hands you the two pieces of paper. 'Turns out that's some kinda map as ya figured, found a map store here in the mall and managed to match it up to the coast here for ya, leads to some island that ain't too far away actually. No clue what's on the island though, but the scratchings on the front part are definitely a warning about pirates[if level of player < (7 - levelwindow)]! You'd best toughen yourself up before trying to find a way over there[else]! Best be careful[end if].' Rod says with a shrug, then grins. 'Turns out one of our guys left and ran into some sea rats out there somewhere, too. Some of the other mall rats are thinking about hitting the beach sometime to find 'em. Not me though, but hey whatever you're doing, it sounds kinda exciting. Let us know how it all turns out, ok? And if ya see any sea rats, say hi for us,' Rod finishes, before he goes back to his being cool and hanging around the food court. You look down at your original map, and the translated map with a small speck of land not far off the coast circled - with this you might be able to find the pirates! And maybe some treasure too!";
	increase tmapfound by 1;
]

Findingboat is a situation. The level of Findingboat is 7.
the sarea of Findingboat is "Beach".
boatfound is a number that varies.	[tracks need for a boat for Bouncy Castle quest]
[0 = not looking, 1 = looking, 2 = dingy, 3 = boat]

Instead of resolving Findingboat:
	if tmapfound is 2:
		say "Wandering along the beach, you come across a large jumbled mess made up of several different abandoned boats from the marina that have all washed up ashore here. Glancing through the tangle of boats shows you that one or two of them might still work, even though they wouldn't go too far, they might be able to get you to the island shown on the map[if boatfound is 2]! While your little dingy won't make to the island, one of these might be able to do the job[else if boatfound is 1]. After you get back, you could probably use this to get to that bouncy castle the dolphins have set up, you think, though the thoughts of gold are in the foremost of your mind right now[else if boatfound is 4]. After you get back, you could probably use this to get to Vohr Island, follwing the tip of the rat twins, though the thoughts of gold are in the foremost of your mind right now[end if]. Deciding to take a look, you spend some time searching through the boats to find one that could get you where you need to go.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 14:
			say "Finding a usable boat, you make sure you have everything you might need, before setting out on the waves in search of the island the map talks about, visions of pirate treasure sparkling through your head.";
			challenge "Pirate Shark";
			if lost is 0:
				challenge "Pirate Shark";
				if lost is 0:
					say "Victorious over the pirates who seem intent on stopping you from reaching the island, you continue along your way, and soon the small island is in sight, the island doesn't seem much different from many other small islands in these waters, but you are sure it is the right one, and even better yet, you can see a much easier path back to the shore from here and a cove to store your boat. It should be much easier to visit and leave the island now that you have been here once!";
					Now Pirate Island is known;
					Move player to Pirate Island;
					now Findingboat is resolved;
					now tmapfound is 3;
					now boatfound is 3;
			if lost is 1:
				say "Sadly, the rough battle with the sharks has practically wrecked your little boat, and you barely make it back to shore before it sinks. It looks like you will have to try again another time with a different boat...";
		else:
			say "Sadly, you don't manage to find any useful boats here right now, and sighing you are forced to continue on your way. Maybe you will have better luck another time?";
	else if boatfound is 1:
		say "     You find a small rowboat that's been dragged up into the short strip of woods along this section of beach. It seems to have been here for a while, but still looks serviceable. You certainly wouldn't be able to take any long trips with it, but it should be capable of the trip out to the bouncy castle you found.";
		now boatfound is 2;
	else if boatfound is 4:
		say "     You find a small rowboat that's been dragged up into the short strip of woods along this section of beach. It seems to have been here for a while, but still looks serviceable. You certainly wouldn't be able to take any long trips with it, but it should be capable of the trip out to Vohr Island.";
		now boatfound is 2;
	else:
		say "Traveling along the beach, you come across a large jumbled mess made up of several different abandoned boats from the marina that have all washed up ashore here. Glancing through the tangle of boats shows you that one or two of them might still work, but they probably wouldn't be able to take you very far, so you end up continuing on your way, forced to look for another method of getting out of the city.";


Pirate Island ends here.
