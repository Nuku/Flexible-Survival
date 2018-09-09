New Events by Sarokcat begins here.
[Several events transferred to Consolidated Outside Events in Song's folder]

"Adds a series of random events to Flexible Survival with several different outcomes."


Section 1 - Military presence

Military presence is a situation

MTP is a number that varies.

Instead of Resolving a Military presence:
	if mtp is 0:
		say "     You encounter what appears to be a military jeep parked by the side of the road, and your heart jumps as you think about the potential for rescue or some military equipment. Approaching cautiously, you notice that the interior is covered in what appears to be dried cum. There are no signs of the former occupants, and they sadly appear to have taken anything of use with them.";
		now mtp is 1;
	else if mtp is 1:
		say "     While traveling through the deserted city, a sudden glint of light catches your eye on one of the nearby rooftops. Hoping to find signs of another survivor, you start moving to get a better view of the roof, straining your eyes to see what it might have been.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll > 10:
			say "     Spotting the glint again on one of the nearby rooftops, you quickly focus on it, catching a glimpse of a camouflaged person with a set of powerful binoculars. The person on the roof quickly ducks under the railing on the roof as soon as they realize that they've been spotted, making you even more interested in finding out what's going on. As you begin working your way over to the building with the person on the roof, you can see more movement above and small glances downward from the person on it, almost as if they are worried about what you are doing. Unfortunately for them, they should have been paying more attention to the skies above, as you can see one of those blue gryphons swoop down on the roof behind whoever is up there.";
			say "     You swiftly begin running across the street to the building, hoping to arrive in time to help whoever is on the roof. Drawing close to the building, you can hear the signs of a struggle from the roof. However, as you arrive at the building, you can hear the sounds go silent for a minute, before moans and other sounds of a more intimate nature begin coming from above. Hoping there might still be something left to talk to up above, you quickly search around the building for a way up, eventually finding a fire escape ladder within easy reach of the ground. After climbing up the fire escape, with the moans and squealing getting louder with every step, you prepare yourself for combat as you peek up onto the rooftop. Just as you do, there is a loud beating of wings as two gryphons take off from the roof, dancing and flirting with each other in the air as they fly to parts unknown.";
			say "     Sighing, you continue to investigate the rooftop, stepping carefully to avoid the copious amounts of cum and milk spread all over from the gryphon's copulating. You find several scraps of what was obviously a military uniform scattered around the area, as well as a pair of dog tags lying in the middle of a pool of cum. The only other object of note up here appears to be the military issue binoculars, with several useful attachments and a nice case. This was obviously the item you saw glinting on the roof as their former owner scanned the area. Shrugging, you string the nice pair of binoculars around your own neck, as obviously the former owner won't be needing them anymore. Climbing down the fire escape and back into the city, you can already see the binoculars helping out your perception, though you still have more questions than answers about what the person was doing here.";
			LineBreak;
			say "[bold type]Your perception has increased by 2![roman type][line break]";
			increase perception of player by 2;
			now mtp is 2;
		else:
			say "     Sadly, no matter how hard you search, you can't seem to figure out where the glint of light came from, nor can you determine what exactly it was from the little you saw of it. Chalking it up as just another of the strange events going on in the city, you continue about your way.";
	else if mtp is 2:
		say "     Traveling through the streets again, you hear a distant sound in the air for a minute. Looking up and all around, you can only barely make out a jet trail high in the sky. Wondering why someone would be traveling that high, you are about to turn away and continue about your business when you notice a small speck drifting in the sky. You pull out your newly acquired binoculars and try to focus in on the speck to see what it is. Surprisingly, as you focus in the binoculars, the speck resolves itself into several people in urban camouflage falling through the sky! As you watch breathlessly, their parachutes open and they straighten up to land, though a sudden swirl of wind from over near the capitol building scatters their neat formation, blowing several of them to entirely different parts of the city. Shaking your head as the figures fall out of sight and into the city itself, you can't help but wonder what this means for the city and your hopes of rescue.";
		extend game by 12;
		now mtp is 3;
		if girl is not banned, now Paratrooper is active; [- Vanessa]
		[also makes the 'womanfruittree' event live - Coleen]
	else if mtp is 3:
		say "     Traveling through the city, you come across what appears to have been a military style barricade, currently unoccupied. Investigating further, you find that several military tents had been set up past the barricade in a mostly empty store parking lot. Investigating carefully in case there are still any trigger-happy soldiers around, you find that the makeshift camp seems completely empty, though there are several signs of a struggle in some areas.";
		say "     Gathering up your courage, you start looking in some of the tents, only to be surprised when you find that the large tents are full of empty, movable beds with restraints and scientific equipment. Looking closer, you can see that several of the beds were occupied sometime recently, and from the looks of things, the occupants managed to either free themselves from their restraints or [']convinced['] whoever was with them to free them instead.";
		say "     However they managed to get free, they definitely managed to turn the tables on their captors, judging by the remnants of sexual fluids evident in several locations and the strong sexual musk lingering inside the tents. Several discarded or torn bio-hazard suits and sets of lab robes are scattered about. You decide that, whatever the military was doing here, it would probably be best for you not to stay too long, and you hurriedly search through the rest of the tents, hoping to find a gun or something else of use left behind. Eventually giving up, you are forced to leave without a weapon, having found several boxes of ammo but no guns to go with them. You do find several small boxes of what the military jokingly calls food and end up taking some with you.";
		increase carried of food by 2;
		LibidoBoost 30;
		now mtp is 4;
	else if mtp is 4:
		say "     Traveling through the city, you come upon a strange sight on one of the roads that eventually leads out of the city. You find a large, flatbed truck overturned on the road, with several jeeps abandoned next to it. Curiosity getting the better of you, you move closer to investigate the strange sight. Arriving at the overturned flatbed, you find that it appears to have been rigged to carry something relatively large, and from the way the straps and tie downs were burst open, alive. Moving around the truck to examine the jeeps, you discover that the jeeps and the area are covered in some kind of hardened goop, and sitting in the middle of the stuff are what appear to be several almost man-sized eggs.";
		say "     Wondering what happened here, you spy a bit of some military camo worked into the lining of one of the eggs. Closer investigation shows sign of a struggle, with several empty shell casings and even a thoroughly gummed up and useless military sidearm lying around. Recalling some of your earlier encounters and sightings with the wyverns in the city, you realize that it looks like they were trying to transport a couple of the beasts to some other location, probably for study like in that camp you saw earlier. Things obviously didn't go as planned again. As you look around at the numerous eggs that likely hold the transforming soldiers, you can't help but wonder what the military's interest in all of this is and why they aren't already in the city in force to help the survivors.";
		say "     You are startled out of your thoughts by one of the eggs shaking a bit as you stare at it and a small crack in the shell forming. Realizing that the eggs will probably start hatching soon, and that you are surrounded by quite a number of eggs indeed, you give a shudder as you hurry on your way, though you pause to take a sample of the goop surrounding the area.";
		increase carried of wyvern goop by 1;
		extend game by 8;
		now Military presence is resolved;


Section 2 - Cream truck

[Moved to Consolidated Outside Events]


Section 3 - Wyvern Flight

[Moved to Consolidated Outside Events]


Section 4 - Abandonedplayer

Abandonedplayer is a situation. The sarea of Abandonedplayer is "Warehouse".

Instead of Resolving a Abandonedplayer:
	say "     As you search the deserted streets of the area close to the waterfront, you hear some noise coming from a nearby alley. Cautiously following it, you prepare for combat as you move closer. Gripping your makeshift weapon tightly, you duck around the corner and come face to face with... an abandoned CD player. Sighing, you lower you weapon again before looking around sheepishly. Fortunately, there was no one around to see that. Checking the music player, you decide to leave the instrument of your ridicule where it lies to spare yourself from an embarrassing reminder.";
	now Abandonedplayer is resolved;


Section 5 - Hyena Gang

Hyena Gang is a situation.
when play begins:
	add Hyena Gang to badspots of hermaphrodite;
	add Hyena Gang to badspots of furry;

HYG is a number that varies.

Instead of Resolving a Hyena Gang:
	if hyg is 0:
		say "     Traveling along the empty streets of the city, a large patch of graffiti catches your eye. Pausing for a minute to decipher the large markings, you realize that it appears to advertise that you are coming up on some hyena pack's territory, and they appear to be looking for more people to join...";
		now Resolution of Hyena Gang is 1; [saw once]
		now hyg is 1;
	else if hyg is 1:
		say "     Searching the mostly empty streets of the city, you come across several familiar graffiti markings in the area. It seems like the territory claimed by that group of hyenas is spreading rapidly. All of a sudden, you feel like someone is watching you intently. Glancing around, you don't see anyone nearby, but the uneasy feeling of being watched won't leave you alone. Deciding not to continue going in this direction, you turn and head back the way you came, trying not to break into a run as you leave.";
		now Resolution of Hyena Gang is 1; [saw twice]
		now hyg is 2;
	else if hyg is 2:
		say "     As you are out searching the city, you once more encounter the same hyena graffiti that you found in several other locations in the area. Turning to leave before you run into trouble, you are surprised to see a hyena come sauntering out into the street behind you and quickly prepare for a fight, only to realize it doesn't show any signs of attacking as it approaches, its hands held out to the side in a nonthreatening manner.";
		say "     'Hey don't worry,' the hyena says as she draws closer, making you nervous. 'I'm not here for a fight, but we've noticed you near our turf and looking at our signage before,' she says with a gesture at the graffiti. 'So I thought I'd come over and offer you a chance to join on up. ";
		if bodyname of player is "Herm Hyena":
			say "Besides, it looks like you would fit right in around here already,' the hyena says as she eyes your hyena-like frame. 'What do you say to giving us a try?'";
			if player consents:
				say "     'Great! I'll just go and let the others know to keep an eye out for you! You should come back in a little bit,' she says with a toothy smile. 'But first,' she says, right before she pulls you into her arms for a crushing hug, causing you to open your mouth to protest, only to find yourself being sloppily kissed as her rough tongue darts into your mouth, her sharp teeth brushing up against your face. Before you can react, she puts you back down and gives you a big grin, before heading back towards the hyena territory. Glancing over her shoulder, she calls back, 'Just a little something to remember me by!' before vanishing around the corner";
				now Resolution of Hyena Gang is 3; [herm hyena player talked to gina and agreed]
				hyenaify;
				now hyg is 3;
			else:
				say "     'That's too bad,' she says as crosses her arms under her exposed breasts, pushing them upwards for a second. 'It ain't no life for a hyena out there all alone,' she continues as she runs her paw-like hand down her soft fur, posing for you, before fondling her large crotch for a second and winking. 'If you ever change your mind, you know where to find us, hun. Just follow your instincts.'";
				now Resolution of Hyena Gang is 4; [herm hyena player talked to gina and said no]
		else:
			say "Membership comes with some benefits, though you'll end up with a few changes as well,' the hyena says as she looks you up and down. 'Though trust me hun, the changes really are all for the better, and you should probably join while you can, since we might not be asking people nicely for long.'";
			if player consents:
				say "     'Great! I'll just go and let the others know to keep an eye out for you! You should come back in a little bit,' she says with a toothy smile, looking you over again. 'But first, I think you will need to fit in a bit more,' shi says, right before she pulls your startled body into her arms for a crushing hug, causing you to open your mouth to protest, only to find yourself being sloppily kissed as her rough tongue darts into your mouth, her sharp teeth brushing up against your face. Before you can react, she puts you back down and gives you a big grin, before heading back towards the hyena territory. Glancing over her shoulder, she calls back, 'Just a little something to remember me by! I look forward to seeing how the changes look on you!' before she vanishes around the corner, your body shuddering as it begins to change.";
				now Resolution of Hyena Gang is 5; [player talked to gina and agreed]
				hyenaify;
				hyenaify;
				now hyg is 3;
			else:
				say "     'That's too bad,' she says as crosses her arms under her exposed breasts, pushing them upwards for a second. 'You have no idea what you're missing out on,' she continues as she runs her paw-like hand down her soft fur, posing for you, before fondling her large crotch for a second and winking. 'If you ever change your mind, you know where to find us, hun.'";
				now Resolution of Hyena Gang is 5; [player talked to gina and said no]
	else if hyg is 3:
		say "     Wandering the city again, you come across one of the areas claimed by that strange gang of hyenas, causing you to recall your last encounter with the strange hyena recruiter. As if summoned by your thoughts of her, you see a familiar-looking hyena coming towards you from down a side street, a large grin on her muzzle. Before you can decide what to do about it, you are quickly enveloped once more in a large and enthusiastic hug.";
		say "     'I thought I scented you!' the large hyena herm exclaims, still hugging you tightly, 'I knew you'd come back to join us. You said you would, after all,' she says as she releases you, causing you to stagger for a minute, before she grabs your hand and starts dragging you down the street, heading deeper into what the graffiti tags proclaim to be hyena territory. 'You must be pretty special to have survived out here this long on your own, but you don't have to worry about that anymore,' the hyena says as you are led through a bewildering maze of side streets and partially wrecked buildings to one of the warehouse districts. 'You have a whole gang on your side now, or pack, whatever you want to call it. You got our back, we got yours. Speaking of which,' she says as she stops in the middle of the street, facing a row of shipment warehouses. 'The name's Gina, and I guess I'm your sponsor for now, so let me know if anyone bothers ya or if you need anything,' the newly introduced Gina says with a grin.";
		say "     'Course, first we have to make sure you smell like you belong to me...' she says, giving you an evil look. Before you can protest, she has you pinned to the ground underneath her as she rubs her softly furred body against yours. The sensation and sudden pouncing cause you to gasp in surprise, and she takes advantage of your open mouth to once more give you a deep kiss, exploring your mouth with her surprisingly flexible tongue and filling you with her almost addictive personal flavor. Gina breaks the kiss, leaving your mouth open and panting as she continues to rub herself all over you, her hyenalike musk coating you in its arousing scent. You find it hard to think straight as she rubs her nipples across your face, letting you lick them and toy with them for a minute, before she backs off of you and hauls you unsteadily back up to your feet, still aroused and needy.";
		say "     'There now, that should help you fit in here better,' Gina says with a self-satisfied smirk as you can feel your body becoming more hyenalike already. 'And now everyone will know you belong to me,' she finishes with a grin, causing you to realize that her own musky scent seems to be clinging to you now, its bestial odor both strange and arousing at the same time. Noticing your increasing arousal, Gina runs her hand along your side slowly, causing you to twitch at the erotic sensation, while her other hand caresses her large package. 'Mmmh, and if you want to pick up where that left off, maybe we should go inside instead of just standing around out here in the street?' So saying, she walks up to one of the side doors to a nondescript warehouse nearby, swishing her hips and hyena tail at you as you follow her, your nose filled with her erotic scent and your mind focused on her lovely assets, leaving you unable to think about doing anything but following along like a good little hyena. As she opens the door and ushers you inside, she gives you a minute to take it all in, before going over to several mattresses set up nearby, obviously letting you decide what to do next.";
		hyenaify;
		now hyg is 4;
		LibidoBoost 30;
		move player to Hyena hideout;
		now Hyena hideout is known;
		now Resolution of Hyena Gang is 6; [hyena hideout known]
		now hyena gang is resolved;
		now battleground is "void";


Section 6 - Locked utility room

Locked utility room is a situation.
The sarea of Locked utility room is "Mall".
when play begins:
	add Locked utility room to badspots of guy;
	add Locked utility room to badspots of hellspawn;

Instead of Resolving a Locked utility room:
	if Resolution of Locked Utility Room is 0: [first encounter]
		say "     While exploring underneath the mall, you come across a locked utility room. Hoping for the best, you search for some means of prying the door open, only to notice the sticky white stuff leaking out from underneath the door. Deciding discretion is the better part of survival, you move quickly on your way.";
		now Resolution of Locked Utility Room is 1; [first encounter done]
	else if Resolution of Locked Utility Room is 1: [second encounter]
		say "     Exploring the sewers further, you stumble across a large trail of dried cum. Feeling a sense of perverse curiosity, you begin to backtrack to see where the large trail came from. To your surprise, the trail seems to lead you right back to the utility room you came across earlier, only this time the door appears to be open. Carefully peeking around the side of the door, you see that this area hasn't been used as a simple utility room for quite some time. The tool racks are filled with strange and mildly disturbing looking skulls and other items, and the machinery is covered in strange symbols and writing that hurts your eyes to look at it.";
		say "     In the center of the room is a large black pentagram, surrounded by occult symbols. Part of the pentagram is obscured by what appears to be a large pool of cum. Lying in their own smaller pools of seed are five empty black robes, probably worn by whoever was in here at the time. The intense, musky odor trapped in the room is starting to make your eyes water and your body heat up in response. Deciding it would be a good idea to leave before you end up doing something you might regret, you quickly grab a couple items lying around and duck back outside.";
		increase carried of demon seed by 2;
		now Resolution of Locked Utility Room is 2; [locked utility room done]
		now Locked utility room is resolved;


Section 7 - Transformed Seals

Transformed Seals is a situation.
The sarea of Transformed Seals is "Beach";

Instead of Resolving a Transformed Seals:
	say "     While walking along the beach, you come across a shiny object half-buried in the sand, and dreams of treasure come over you as you as you quickly uncover it. You are surprised to find just a couple thin pieces of metal, but closer examination reveals that they're a pair of navy seal dog tags. Looking around more carefully, you notice the remains of several stretched and torn wet suits in the surf and a few other telltale signs of a struggle. Quickly brushing the sand off your hands, you move on down the beach before whatever happened to them happens to you.";
	now Transformed Seals is resolved;


Section 8 - Wrecked ships

Wrecked ships is a situation.
The sarea of Wrecked ships is "Beach".

Instead of Resolving a Wrecked ships:
	say "     You come across the wreckage of several smashed sailboats. It looks like they were broken apart by something trying to get at the people inside. You decide that maybe coming out here alone wasn't your best idea ever and quickly hurry on your way.";
	now Wrecked ships is resolved;


Section 9 - Dolphin lotion

Dolphin lotion is a situation.
The sarea of Dolphin lotion is "Beach".


Instead of Resolving a Dolphin lotion:
	say "     Traveling along the beach, you come across a large blanket set up on the sand next to an overturned beach umbrella. Moving closer, you find no sign of the occupant, though you do spy a pair of sunglasses and some sunblock lying in the sand. Deciding some extra protection couldn't hurt, you bend over to take the sunblock, only to notice what from this position looks like something was dragged along the sand to the water. Looking closer at the bottle of sunblock, you notice it is called [']Happy Dolphin['] suntan lotion and shows the picture of a grinning dolphin woman on the front, her large tail resting on the sand behind her. Deciding that on second thought you don't need any sun protection right now, you leave the tainted lotion behind and hurry along.";
	now Dolphin lotion is resolved;


Section 10 - Broken fountain

Broken fountain is a situation.
The sarea of Broken fountain is "Park".

Instead of Resolving a Broken fountain:
	say "     You hear a soft trickling noise while wandering through the park trail, like water softly running over stone. Following the noise, you come to a busted water fountain, apparently destroyed by several of the creatures fighting (or doing other things) in the area. Glancing around, you manage to find an empty container to put some of the water in before heading on your way.";
	increase carried of dirty water by 1;
	now Broken fountain is resolved;


Section 11 - Scenic View

Scenic View is a situation.
The sarea of Scenic View is "Park".

Instead of Resolving a Scenic View:
	say "     Wandering through the park trails, you come across a beautiful view of nature, almost unimpeded by the skyline of abandoned buildings. You pause in your searching for a minute to take in the view and relax before you have to head back into the city, feeling much better about yourself.";
	SanBoost 10;
	now Scenic View is resolved;


Section 12 - Twisted grove

Twisted grove is a situation.
The sarea of Twisted grove is "Park".
when play begins:
	add Twisted grove to badspots of girl;
	add Twisted grove to badspots of furry;

Instead of Resolving a Twisted grove:
	say "     Exploring the park trails, you hear muffled sounds from a distance. Deciding to investigate, you creep up over a small hill, only to stare in astonishment as what seems to be a small grove of animated plants violate a skunk-like woman, holding her suspended off the ground like some obscene fruit. As you watch, more and more cum drips off of her onto the ground as she is pounded by several vines into orgasm again and again. Your eye is quickly drawn to the patch of earth where some of the cum fell, the grass seeming to writhe and twitch and start to grow in obscene shapes as well. As there is nothing you can do for the skunkwoman against the growing grove of twisted plants, you decide to move on quickly before you end up joining her.";
	now Twisted grove is resolved;


Section 13 - Ominous hole

Ominous hole is a situation.
The sarea of Ominous hole is "Park".

Instead of Resolving a Ominous hole:
	say "     As you wander through the park, you notice another survivor in the distance. Quickly waving, you begin to run towards each other. Suddenly, the other survivor seems to disappear into thin air mid-step, causing you to duck and look around. When nothing else happens, you cautiously approach the area you last saw the other person, only to find that there seems to be a large hole dug there that's surrounded by a small mound of dirt, as if made by some burrowing creature of almost human size. You would investigate further, but the loud moans and other noises coming from the hole tell you more than you probably wanted to know about what's happening, as well as the fact that you won't be seeing that person again... as a person, anyways.";
	now Ominous hole is resolved;


Section 14 - squatters den

squatters den is a situation.
The sarea of squatters den is "Mall".

Instead of resolving a squatters den:
	say "     Exploring the sewers underneath the mall, you find signs of a recent struggle. Investigating more closely, you see where something came across what appears to be a recently-inhabited squatter's den. Piles of junk, blankets, and even an old shopping cart have been dragged down here and set up in a small alcove. From the looks of the recent struggle, the den isn't inhabited any longer. Carefully picking through the piles of junk, you look for anything that might be of use. Finding some food and a bottle of water that is none too clean, you leave the den and head about your business.";
	increase carried of dirty water by 1;
	increase carried of food by 1;
	now squatters den is resolved;


Section 15 - Leaking pipe

leaking pipe is a situation.
The sarea of leaking pipe is "Mall".

Instead of resolving a leaking pipe:
	say "     As you travel the sewers and utility corridors under the mall, you hear a steady trickling noise coming from down one of the passageways. The sound grows louder as you move closer, eventually discovering a leaking water pipe. You apparently aren't the only person to have discovered this source of water though, as someone has set up a couple small containers under the steady leak. As the containers are definitely overflowing, whoever set them up obviously hasn't been back in a while. Sensing an opportunity, you quickly gather up a couple of the full containers and place them in your pack, then hurry along before someone comes looking for them. ";
	increase carried of dirty water by 2;
	now leaking pipe is resolved;


Section 16 - Library Visitor

library visitor is a situation.
libvis is a number that varies.

Instead of Resolving a library visitor:
	if libvis is 0:
		say "     Returning from a rather boring time searching the city, you find the library doors scratched and dented, as if some large creature had attempted to enter, perhaps scenting your recent presence. Fortunately enough, it doesn't seem to have found a way in, although its attempt is still worrisome. You should probably keep an eye out in case it comes back.";
		now Resolution of Library Visitor is 1; [first encounter]
		now libvis is 1;
	else if libvis is 1:
		say "     Returning to the library in a better mood than normal, your foraging having gone well today, you find that some creature has paid the library a visit in your absence again. The creature seems to have actually tried searching the area around the building this time for other entry points, apparently not able to get in the doors you fortuitously locked behind you. You wonder if this is the same visitor as last time, as it is showing much more reasoning capability now.. Still, it didn't get in, and you came back from the city with some extra food. That's definitely a good sign, isn't it?";
		now Resolution of Library Visitor is 2; [second encounter]
		now libvis is 2;
		increase carried of food by 1;
	else if libvis is 2:
		say "     Returning from your hours of searching the city, you are relieved to see the library up ahead of you and the chance to rest and relax a little from your scavenging. However, as soon as you let your guard down to unlock the door and let yourself in, one of the creatures prowling the city springs out of concealment and attacks!'";
		fight;
		say "     Finally driving away the creature, you quickly duck inside the library to rest and relax, your heart hammering from the shock of the unexpected ambush and the fight itself. The beast was obviously lying in wait for your return, making you wonder if it was the creature that has been trying to get into the library these past several times. Hopefully its defeat at your hands means it won't be back this way again anytime soon. Then again, if it does come back, you suppose you will just have to be ready for it.";
		now Resolution of Library Visitor is 3; [third encounter]
		now libvis is 3;
	else if libvis is 3:
		say "     Returning to the library, you open the door and are shocked when you find that you had a visitor again, only this time they somehow made their way inside. You look around near the library entrance and the books knocked over and the obvious signs of someone or something searching the place, probably for you. Checking carefully, you determine that whatever it was and however it got in here, at least now it seems to be long gone. Following what you can of its trail, you sigh in relief as it doesn't seem to have found the entry to the bunker in its searching. Of course, you still haven't figured out how it found its way in to begin with...";
		now Resolution of Library Visitor is 4; [fourth encounter]
		now libvis is 4;
	else if libvis is 4:
		say "     After another long day searching the abandoned city, you are happy to return to the library for some hard earned rest. As you go to unlock the door, you remember your unwanted visitor from before and are thus careful when you open it, just in case. Your caution seems warranted, as the moment you begin to swing the door open, something inside barrels out and attacks you directly! From a glimpse of more movement from inside heading this way, apparently it isn't alone this time!";
		fight;
		say "     Dealing with your first opponent, you barely have time to take a breath before another creature that had been hiding outside around the corner moves in on you!";
		fight;
		say "     Fending off the attack from the rear, you bravely turn to face the creature still lurking inside the library. Your arms tired and your body tingling from the rush of adrenaline, you step into the library itself. You don't have to wait long for the creature to notice your presence, and with a swift cry it attacks!";
		fight;
		say "     Exhausted but victorious, you look around the site of the battle with a sigh, the ambushing beasts having left quite a bit of a mess behind themselves. Consoling yourself with the thought that you doubt they will try anything like that again, you begin the painstaking task of cleaning the area up at least enough that you can move around easily. In the process of cleaning up after the creatures, you find a formerly overlooked supply room with what appears to be an open utility door leading to a small maintenance shed out back that also seems to be open. Having figured out how the creatures found their way inside, you quickly lock both doors up and jam them closed, ensuring that the creatures won't be able to use that entry again.";
		say "[bold type]You find two cans of food and two water bottles in the supply room![roman type][line break]";
		increase carried of food by 2;
		increase carried of water bottle by 2;
		increase score by 10;
		now Resolution of Library Visitor is 5; [fifth encounter]
		now library visitor is resolved;


Section 17 - ruined supplies

ruined supplies is a situation.
The sarea of ruined supplies is "Mall".

Instead of resolving a ruined supplies:
	say "     Searching the area under the mall again, you find a small pallet of food supplies, obviously intended for use above at the food court. Unfortunately, you were not the first person to find these supplies, as someone has been here before you and made a pig out of themselves. Boxes are ripped open, food was obviously messily consumed, and almost all of the drinks have been opened, leaving the area strewn with wrappers and empty bottles. Eyeing the mess dubiously, you wonder if it is even worth searching through it all to see if there is anything left. Do you?";
	if player consents:
		say "     Tossing the supplies and boxes to the side, you realize that tossing things around as you look through the remains of the supplies is actually kind of fun. You find small bits of food and a few mouthfuls of drink left over and continue searching for more. You quickly stuff them in your face, enjoying this strange type of edible scavenger hunt you have embarked on. Before you know it, you look up and realize that you have spread the mess around an even larger area than before and that you have been rooting around in the remains like some sort of pig yourself. As you stand up to leave, you hesitate to leave such an enjoyable bit of fun, and you are sure there are still some crumbs left behind. Thinking this, you begin to turn back to the mess of wrappers and boxes, only to catch a glimpse of yourself in one of the shiny wrappers and realize that you really have started to become rather pig-like yourself from your messy endeavors! Realizing that staying here any longer, however tempting it may be, would almost certainly result in your becoming totally porcine, you quickly hurry away, darting a few longing looks over your shoulder at the remains of the supplies before managing to get a hold of yourself.";
		piggyify;
		piggyify;
		HungerReset;
		ThirstReset;
		now Resolution of ruined supplies is 1; [become a pig]
		now ruined supplies is resolved;
	else:
		say "     Deciding it's perhaps best not to get involved in such a total mess on the off chance you might find something useful left in the remains, you continue along your way, doing your best to forget the horrible carnage you are leaving behind.";
		now Resolution of ruined supplies is 1; [avoided becoming a piglet]
		now ruined supplies is resolved;


Section 18 - Strange preacher

[Moved to Consolidated Outside Events]


to piggyify:
	Infect "Messy Pig";

to hyenaify:
	Infect "Herm Hyena";

New Events ends here.
