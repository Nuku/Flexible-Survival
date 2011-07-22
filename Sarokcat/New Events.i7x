New Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival with several different outcomes."

Section 1- Military presence

Military presence is a situation

MTP is a number that varies.


Instead of Resolving a Military presence:
	if mtp is 0:
		say "You encounter what appears to be a military jeep parked by the side of the road, your heart jumps as you think about the potential for rescue or some military equipment.  Approaching cautiously you notice that the interior is covered in what appears to be dried cum.  There is no signs of the former occupants and they sadly appear to have taken anything of use with them.";
		increase mtp by 1;
	If mtp is 1:
		say "While traveling through the deserted city all of a sudden a glint of light catches your eye on one of the nearby rooftops.  Hoping to find signs of another survivor you start moving to get a better view of the roof, straining your eyes to see what it might have been.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 10:
			say "Spotting the glint again on one of the nearby rooftops, you quickly focus on it, catching a glimpse of a camoflauged person with a set of powerful binoculars.  The person on the roof quickly ducks under the railing on the roof as soon as they realize they have been spotted, making you even more interested in finding out what's going on. As you begin working your way over to the building with the person on the roof, you can see more movement on the roof, and small glances downward from the person on it, almost as if they are worried about what you are doing.  Unfortunately for them, they should have been paying more attention to the skies above, as you can see one of those blue gryphons swoop down on the roof behind whoever is up there. [line break] You swiftly begin running across the street to the building, hoping to arrive in time to help whoever is on the roof.  Drawing close to the building, you can hear the signs of a struggle from the roof.  However as you arrive at the building, you can hear the sounds from above go silent for a minute, before moans and other sounds of a more intimate nature begin coming from above.  Hoping there might still be something left to talk to up above, you quickly search around the building for a way up, eventually finding a fire escape ladder within easy reach of the ground.  After climbing up the fire escape, with the moans and squealing getting louder with every step, you prepare yourself for combat as you peek up onto the rooftop.  Just as you do, there is a loud beating of wings as two grphons take off from the roof, dancing and flirting with each other in the air as they take off for parts unknown. [line break] Sighing you continue to investigate the rooftop, stepping carefully to avoid the copious amounts of cum and milk spread all over from the grphon[apostrophe]s copulating. You find several scraps of what was obviously a military uniform scattered around the area, as well as a pair of dog tags lying in the middle of a pool of cum.  The only other object of note up here appears to be the military issue binoculars, with several useful attachments and a nice case, this was obviously the item you saw glinting on the roof as their former owner scanned the area.  Shrugging, you string the nice pair of binoculars around your own neck, as obviously the former owner won't be needing them anymore. Climbing down the fire escape and back into the city, you can already see the binoculars helping out your perception, though you still have more questions then answers about what the person was doing here.";
			increase perception of player by 2;
			say "your perception has increased by 2!";
			increase mtp by 1;
		otherwise:
			say "Sadly no matter how hard you search, you can't seem to figure out where the glint of light came from exactly.  Nor can you determine what exactly it was from the little you saw of it, chalking it up as just another of the strange events going on in the city, you continue about your way.";
	If mtp is 2:
		say "Traveling through the streets again you hear a distant sound in the air for a minute.  Looking up and all around you can only barely make out a jet trail high in the sky.  Wondering why someone would be traveling that high you are about to turn away and continue about your buisness when you notice a small speck drifting in the sky.  You pull out your newly acquired binoculars and try to focus in on the speck to see what it is.  Surprisingly as you focus in the binoculars, the speck resolves itself into several people in urban camoflauge falling through the sky!  As you watch breathlessly their parachutes open and they straighten up to land, though a sudden swirl of wind from over near the capitol building scatters their neat formation, blowing several of them to entirely different parts of the city.  Shaking your head as the figures fall out of sight and into the city itself, you can't help but wonder what this means for the city and your hopes of rescue.";
		extend game by 12;
		now Military presence is resolved;

Section 2- Cream truck

Cream truck is a situation

Instead of Resolving a Cream truck:
	say “An abandoned ice cream truck lies sitting here lonesomely in the middle of the street, you quickly investigate to see if any of the delicious treats are left.  Looking in the cooler in back you are disappointed to find all the ice cream has melted all over the place, covering the inside of the ice cream truck in sticky white stuff. Taking a whiff of a strange smell you investigate further, and Closer investigation determines that the sticky white stuff may not be ice cream after all, but just plain someone or something cream...  You might be able to find something useful here, but it would be messy, do you try?”;
	If player consents:
		say “Carefully digging through the mess returns a few bottles of milk that doesn't appear to be too tainted for use, although in the process of searching you managed to get some of the sticky cream on you as well.  Trying to scrape the stuff off while leaving the truck, you find the cream seems to be seeping into your skin, and your insides twist as you feel yourself change slightly.”;
		add “gryphon milk” to invent of player;
		add “gryphon milk” to invent of player;
		gryphonify;
		now Cream truck is resolved;
	otherwise:
		say “Deciding it would be best to avoid any contact with whatever might be left in the truck, you continue on down the road, the truck soon lost in the distance behind you.”;
		now Cream truck is resolved;




Section 3- Wyvern Flight

Wyvern Flight is a situation

Instead of Resolving a Wyvern Flight:
	say “You spy a small group of Wyverns hauling off tables and chairs from a sidewalk cafe, apparently building a large nest somewhere nearby.  You quickly lie low in a nearby storefront until the activity ceases, thankful to not be noticed. It seems the city keeps getting more dangerous every day.”;
	now Wyvern Flight is resolved;


Section 4- Abandoned player

Abandoned player is a situation

Instead of Resolving a Abandoned player:
	say “As you search the deserted streets of the city, you hear some noise coming from a nearby alley, cautiously following it you prepare for combat as you move closer.  Gripping your makeshift weapon tightly, you duck around the corner and prepare to engage in epic combat... with an abandoned cd player.  Sighing you lower you weapon before looking around you in embarrasment, fortunately there was no one around to see that.  Checking the music player you decide to leave the instrument of your riducle where it was so it wont remind you of today, besides, you never liked that artist much anyways.”;
	Now Abandoned player is resolved;

Section 5- Hyena Gang

Hyena Gang is a situation.

HYG is a number that varies.


Instead of Resolving a Hyena Gang:
	if hyg is 0:
		say “Traveling along the empty streets of the city, a large patch of graffiti catches your eye. Pausing for a minute to decipher the large markings you realize that it appears to advertise that you are coming up on some hyena pack's territory.  And they appear looking for more people to join...”;
		Increase hyg by 1;
	if hyg is 1:
		Say “Searching the mostly empty streets of the city, you come across several familiar graffiti markings in the area. It seems like the territory claimed by that group of Hyenas is spreading rapidly, all of a sudden you feel like someone is watching you intently.  Glancing around you don't see anyone near by, but the uneasy feeling of being watched won[apostrophe]t leave you alone.  Deciding not to continue going in this direction, you turn and head back the way you came, trying not to break into a run as you leave.”;
		Now Hyena Gang is resolved;




Section 6- Locked utility room

Locked utility room is a situation.
The sarea of Locked utility room is “mall”;
LURM is a number that varies.


Instead of Resolving a Locked utility room:
	if lurm is 0:
		say “While exploring underneath the mall you come across a locked utility room, hoping for the best you search for some manner of prying the door open, only to notice the sticky white stuff leaking out from underneath the door. Deciding discretion is the better part of survival, you move quickly on your way.”;
		increase lurm by 1;
	if lurm is 1:
		say “Exploring the sewers further, you stumble across a large trail of dried cum. Feeling a sense of perverse curiousity you begin to backtrack to see where the large trail came from.  To your surprise the trail seems to lead you right back to the utility room you came across earlier, only this time the door appears to be open.  Carefully peeking around the side of the door, you see that this area hasn't been used as a simple utility room for quite some time. The tool racks are filled with strange and mildly disturbing looking skulls and other items, and the machinery is covered in strange symbols and writing that hurts your eyes to look at it.  [Line break] In the center of the room is a large black pentagram, surrounded by occult symbols, part of the pentagram is obscured by what appears to be a large pool of cum. Lying in their own smaller pools of seed are five empty black robes, probably worn by whoever was in here at the time.  The intense musky odor trapped in the room is starting to make your eyes water and your body heat up in response, deciding it would be a good idea to get out of there before you end up doing something you might (or might not!) regret. You quickly grab a couple items lying around and duck back outside.”;
		Add “demon seed” to invent of player;
		Add “demon seed” to invent of player;
		Now Locked utility room is resolved;







Section 7- Transformed Seals

Transformed Seals is a situation.
The sarea of Transformed Seals is “Beach”;


Instead of Resolving a Transformed Seals:
	say “While walking along the beach you come across a shiney object half buried in the sand, dreams of treasure come over you as you as you quickly uncover it.  You are surprised to find just a couple thin pieces of metal, closer examination shows them to be a pair of navy seal dog tags.  Looking around more carefully you notice the remains of several stretched and torn wet suits in the surf, and a few other telltale signs of a struggle.  Quickly brushing the sand off your hands, you move on down the beach before whatever happened to them happens to you.”;
	now  Transformed Seals is resolved;


Section 8- Wrecked ships

Wrecked ships is a situation.
The sarea of Wrecked ships is “Beach”;


Instead of Resolving a Wrecked ships:
	say “You come across the wreckage of several smashed sailboats, it looks like they were broken apart by something trying to get at the people inside. You decide that maybe coming out here alone wasn't your best idea ever and quickly hurry on your way.”;
	Now Wrecked ships is resolved;

Section 9- Dolphin lotion

Dolphin lotion is a situation.
The sarea of Dolphin lotion is “Beach”;


Instead of Resolving a Dolphin lotion:
	say “traveling along the beach you come across a large blanket set up on the sand, next to an overturned beach umbrella.  Moving closer you find no sign of the occupant, though you do spy a pair of sunglasses and some sunblock lying in the sand.  Deciding some extra protection couldn't hurt, you bend over to take the sunblock only to notice what from this position looks like something was dragged along the sand to the water. Looking closer at the bottle of sunblock you notice it is called 'happy dolphin' Suntan lotion, and shows the picture of a grinning dolphin woman on the front, her large tail resting on the sand behind her. Deciding that on second thought you don't need any sun protection right now, you hurry along, on leaving it behind.”;
	Now Dolphin lotion is resolved;

Section 10-  Broken fountain

Broken fountain is a situation.
The sarea of Broken fountain is “Park”;


Instead of Resolving a Broken fountain:
	Say “While wandering through the park trail you hear a soft trickling noise, like water softly running over stone. following the noise you come to a busted water fountain, apparently destroyed by several of the creatures fighting (or doing other things) in the area.  Glancing around you manage to find an empty container to put some of the water in, before heading on your way.”;
	Add “dirty water” to invent of player;
	Now  Broken fountain is resolved;
	



Section 10-  Scenic View

Scenic View is a situation.
The sarea of Scenic View is “Park”;


Instead of Resolving a Scenic View:
	Say “Wandering through the park trails you come across a beautiful view of nature, almost unimpeded by the skyline of abandoned buildings.  You pause in your searching for a minute to take in the view, and relax before you have to head back into the city, feeling much better about yourself.”;
	Increase Humanity of player by 10;
	Now Scenic View is resolved;


Section 11-  Twisted grove

Twisted grove is a situation.
The sarea of Twisted grove is “Park”;


Instead of Resolving a Twisted grove:
	say “Exploring the park trails, you hear muffled sounds from a distance.  Deciding to investigate you creep up over a small hill only to stare in astonishment as what seems to be a small grove of animated plants continue to violate a skunklike woman, holding her suspended off the ground like some obscene fruit.  As you watch more and more cum drips off her onto the ground, as she is pounded by several vines into orgasm again and again. Your eye is quickly drawn to the patch of grass where some of the cum fell as the grass seems to writhe and twitch and start to grow in obscene shapes as well.  As there is nothing you can do for the skunkwoman against the growing grove of twisted plants, you decide to move on quickly before you end up joining her.”;
	Now Twisted grove is resolved;


Section 12-  Ominous hole

Ominous hole is a situation.
The sarea of Ominous hole is “Park”;


Instead of Resolving a Ominous hole:
	say “As you wander through the park you notice another survivor in the distance, quickly waving you begin to run towards each other. Suddenly the other survivor seems to disappear into thin air mid step, causing you to duck and look around.  When nothing else happens you cautiously approach the area you last saw the other person, only to find there seems to be a large hole dug there instead surrounded by a small mound of dirt, as if made by some burrowing creature of almost human size.  You would investigate further, but the loud moans and other noises coming from the hole tell you more then you probably wanted to know about whats happening, as well as the fact that you be seeing that person again.... as a person anyways.”;
	Now Ominous hole is resolved;





















to gryphonify:
	repeat with y running from 1 to number of rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Hermaphrodite Gryphon":
			now monster is y;
			break;
	infect;
	infect;
	infect;


New Events ends here.
