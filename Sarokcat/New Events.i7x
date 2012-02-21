New Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival with several different outcomes."

Section 1- Military presence

Military presence is a situation

MTP is a number that varies.


Instead of Resolving a Military presence:
	if mtp is 0:
		say "You encounter what appears to be a military jeep parked by the side of the road, your heart jumps as you think about the potential for rescue or some military equipment.  Approaching cautiously you notice that the interior is covered in what appears to be dried cum.  There is no signs of the former occupants and they sadly appear to have taken anything of use with them.";
		increase mtp by 1;
		stop the action;
	If mtp is 1:
		say "While traveling through the deserted city all of a sudden a glint of light catches your eye on one of the nearby rooftops.  Hoping to find signs of another survivor you start moving to get a better view of the roof, straining your eyes to see what it might have been.";
		let bonus be (( the Perception of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 10:
			say "Spotting the glint again on one of the nearby rooftops, you quickly focus on it, catching a glimpse of a camouflaged person with a set of powerful binoculars.  The person on the roof quickly ducks under the railing on the roof as soon as they realize they have been spotted, making you even more interested in finding out what's going on. As you begin working your way over to the building with the person on the roof, you can see more movement on the roof, and small glances downward from the person on it, almost as if they are worried about what you are doing.  Unfortunately for them, they should have been paying more attention to the skies above, as you can see one of those blue gryphons swoop down on the roof behind whoever is up there. [line break] You swiftly begin running across the street to the building, hoping to arrive in time to help whoever is on the roof.  Drawing close to the building, you can hear the signs of a struggle from the roof.  However as you arrive at the building, you can hear the sounds from above go silent for a minute, before moans and other sounds of a more intimate nature begin coming from above.  Hoping there might still be something left to talk to up above, you quickly search around the building for a way up, eventually finding a fire escape ladder within easy reach of the ground.  After climbing up the fire escape, with the moans and squealing getting louder with every step, you prepare yourself for combat as you peek up onto the rooftop.  Just as you do, there is a loud beating of wings as two gryphons take off from the roof, dancing and flirting with each other in the air as they take off for parts unknown. [line break] Sighing you continue to investigate the rooftop, stepping carefully to avoid the copious amounts of cum and milk spread all over from the gryphon[apostrophe]s copulating. You find several scraps of what was obviously a military uniform scattered around the area, as well as a pair of dog tags lying in the middle of a pool of cum.  The only other object of note up here appears to be the military issue binoculars, with several useful attachments and a nice case, this was obviously the item you saw glinting on the roof as their former owner scanned the area.  Shrugging, you string the nice pair of binoculars around your own neck, as obviously the former owner won't be needing them anymore. Climbing down the fire escape and back into the city, you can already see the binoculars helping out your perception, though you still have more questions then answers about what the person was doing here.";
			increase perception of player by 2;
			say "your perception has increased by 2!";
			increase mtp by 1;
		otherwise:
			say "Sadly no matter how hard you search, you can't seem to figure out where the glint of light came from exactly.  Nor can you determine what exactly it was from the little you saw of it, chalking it up as just another of the strange events going on in the city, you continue about your way.";
		stop the action;
	If mtp is 2:
		say "Traveling through the streets again you hear a distant sound in the air for a minute.  Looking up and all around you can only barely make out a jet trail high in the sky.  Wondering why someone would be traveling that high you are about to turn away and continue about your business when you notice a small speck drifting in the sky.  You pull out your newly acquired binoculars and try to focus in on the speck to see what it is.  Surprisingly as you focus in the binoculars, the speck resolves itself into several people in urban camouflage falling through the sky!  As you watch breathlessly their parachutes open and they straighten up to land, though a sudden swirl of wind from over near the capitol building scatters their neat formation, blowing several of them to entirely different parts of the city.  Shaking your head as the figures fall out of sight and into the city itself, you can't help but wonder what this means for the city and your hopes of rescue.";
		extend game by 12;
		increase mtp by 1;
		stop the action;
	if mtp is 3:
		say "Traveling through the city you come across what appears to have been a military style barricade, currently unoccupied, investigating further you find that past the barricade several military tents had been set up in a mostly empty store parking lot. Investigating carefully in case there are trigger happy soldiers still around, you find that the makeshift camp seems completely empty, though there are several signs of a struggle in some areas. [line break] Gathering up your courage you start looking in some of the tents, only to be surprised to find the large tents seem full of empty movable beds with restraints and scientific equipment.   Looking closer you can see several of the beds were occupied at some point recently, and that from the looks of things the occupants managed to either free themselves from their restraints, or managed to somehow 'convince' whoever was with them to free them instead.  From the strong sexual musk lingering inside the tents, however they managed to get free, they definitely managed to turn the tables on their captors, the remnants of sexual fluids evident in several locations, as are several discarded or torn bio-hazard suits and sets of lab robes. [line break]  Deciding that whatever the military was doing here, it would probably be best for you not to stay to long, you hurriedly search through the rest of the tents, hoping to find a gun or something else of use left behind.  Eventually giving up, you are forced to leave without a weapon, having found several boxes of ammo, and no guns to go with them.  Though you do find several small boxes of what the military jokingly calls food, and end up taking some with you.";
		add "food" to invent of player;
		add "food" to invent of player;
		increase libido of player by 30;
		increase mtp by 1;
		stop the action;
	if mtp is 4:
		say " Traveling through the city you come upon a strange sight on one of the roads that eventually leads out of the city.  You find a large flatbed truck overturned on the road, with several jeeps abandoned next to it.  Curiosity getting the best of you, you move closer to investigate the strange sight.  [line break]  Arriving at the overturned flatbed, you find that it appears to have been rigged to carry something relatively large, and from the way the straps and tie downs were burst open, alive.  Moving around the truck to examine the jeeps, you find that up close the jeeps and the area are covered in some kind of hardened goop, and sitting in the middle of the stuff are what appear to be several almost man sized eggs. [line break] Wondering what happened here, you spy a bit of some military camo worked into the lining of one of the eggs, closer investigation shows sign of a struggle, with several empty shell casings, and even a thoroughly gummed up and useless military sidearm lying around. Recalling some of your earlier encounters and sightings with the wyverns in the city, you realize that it looks like they were trying to transport a couple of the beasts to some other location, probably for study like in that camp you saw earlier.  Things obviously didn't go as planned again you note as you look around at the numerous eggs that likely hold the transforming soldiers, you can[apostrophe]t help but wonder what the military[apostrophe]s interest in all this is, and why they aren[apostrophe]t already in the city in force to help the survivors. [line break] You are startled out of your thoughts by one of the eggs shaking a bit as you stare at it, and a small crack in the shell forming. Realizing that the eggs will probably start hatching soon, and that you are surrounded by quite a number of eggs indeed, you give a shudder as you hurry on your way. Though you pause to take a sample of the goop surrounding the area";
		add "wyvern goop" to invent of player;
		extend game by 8;
		now Military presence is resolved;

Section 2- Cream truck

Cream truck is a situation

Instead of Resolving a Cream truck:
	say "An abandoned ice cream truck lies sitting here lonesomely in the middle of the street, you quickly investigate to see if any of the delicious treats are left.  Looking in the cooler in back you are disappointed to find all the ice cream has melted all over the place, covering the inside of the ice cream truck in sticky white stuff. Taking a whiff of a strange smell you investigate further, and Closer investigation determines that the sticky white stuff may not be ice cream after all, but just plain someone or something cream...  You might be able to find something useful here, but it would be messy, do you try?";
	If player consents:
		say "Carefully digging through the mess returns a few bottles of milk that doesn't appear to be too tainted for use, although in the process of searching you managed to get some of the sticky cream on you as well.  Trying to scrape the stuff off while leaving the truck, you find the cream seems to be seeping into your skin, and your insides twist as you feel yourself change slightly.";
		add "gryphon milk" to invent of player;
		add "gryphon milk" to invent of player;
		gryphonify;
		now Cream truck is resolved;
	otherwise:
		say "Deciding it would be best to avoid any contact with whatever might be left in the truck, you continue on down the road, the truck soon lost in the distance behind you.";
		now Cream truck is resolved;




Section 3- Wyvern Flight

Wyvern Flight is a situation

Instead of Resolving a Wyvern Flight:
	say "You spy a small group of Wyverns hauling off tables and chairs from a sidewalk cafe, apparently building a large nest somewhere nearby.  You quickly lie low in a nearby storefront until the activity ceases, thankful to not be noticed. It seems the city keeps getting more dangerous every day.";
	now Wyvern Flight is resolved;


Section 4- Abandoned player

Abandoned player is a situation

Instead of Resolving a Abandoned player:
	say "As you search the deserted streets of the city, you hear some noise coming from a nearby alley, cautiously following it you prepare for combat as you move closer.  Gripping your makeshift weapon tightly, you duck around the corner and prepare to engage in epic combat... with an abandoned CD player.  Sighing you lower you weapon before looking around you in embarrassment, fortunately there was no one around to see that.  Checking the music player you decide to leave the instrument of your ridicule where it was so it wont remind you of today, besides, you never liked that artist much anyways.";
	Now Abandoned player is resolved;

Section 5- Hyena Gang

Hyena Gang is a situation.

HYG is a number that varies.

Instead of Resolving a Hyena Gang:
	if hyg is 0:
		say "Traveling along the empty streets of the city, a large patch of graffiti catches your eye. Pausing for a minute to decipher the large markings you realize that it appears to advertise that you are coming up on some hyena pack's territory.  And they appear looking for more people to join...";
		Increase hyg by 1;
		stop the action;
	if hyg is 1:
		Say "Searching the mostly empty streets of the city, you come across several familiar graffiti markings in the area. It seems like the territory claimed by that group of Hyenas is spreading rapidly, all of a sudden you feel like someone is watching you intently.  Glancing around you don't see anyone near by, but the uneasy feeling of being watched won[apostrophe]t leave you alone.  Deciding not to continue going in this direction, you turn and head back the way you came, trying not to break into a run as you leave.";
		Increase hyg by 1;
		stop the action;	
	if hyg is 2:
		say "As you are out searching the city, you once more encounter the same hyena graffiti that you found in several other locations in the area.  Turning to leave before you run into trouble, you are surprised to see a hyena come sauntering out into the street behind you, and quickly prepare for a fight, only to realize it doesn[apostrophe]t show any signs of attacking as it approaches, its hands held out to the side in a nonthreatening manner.[line break] 'Hey don[apostrophe]t worry,' the hyena says as she draws closer, making you nervous, 'I[apostrophe]m not here for a fight, but we[apostrophe]ve noticed you near our turf and looking at our signage before,' he says with a gesture at the graffiti, 'So I thought I[apostrophe]d come over and offer you a chance to join on up,"; 
		if the bodyname of the player is "herm hyena":
			say "'Besides, it looks like you would fit right in around here already,' the hyena says as shi eyes your hyenalike frame, 'What do you say to giving us a try?'";
			If player consents:
				say "'Great! I[apostrophe]ll, just go and let the others know to keep an eye out for you!  You should come back in a little bit' Shi says, with a toothy smile, 'but first.' Shi says, right before she pulls you into her arms for a crushing hug, causing you to open your mouth to protest, only to find yourself being sloppily kissed as her rough tongue darts into your mouth, her sharp teeth brushing up against your face. Before you can react shi puts you back down and gives you a big grin, before heading back towards the hyena territory.  Glancing over her shoulder she calls back, 'Just a little something to remember me by!' before vanishing around the corner";
				hyenaify;
				Increase hyg by 1;
				stop the action;	
			otherwise:
				say "'That[apostrophe]s to bad,' shi says as crosses her arms under her exposed breasts, pushing them upwards for a second. 'It ain[apostrophe]t no life for a hyena out there all alone,' Shi continues as she runs her pawlike hand down her soft fur, posing for you.  Before fondling her large crotch for a second and winking at you.  'If you ever change your mind, you know where to find us hun, just follow your instincts.'";
				stop the action;	
		otherwise:
			say "'Membership comes with some benefits, though you[apostrophe]ll end up with a few changes as well' the hyena says as shi looks you up and down, 'Though trust me hun, the changes really are all for the better, and you should probably join while you can, since we might not be asking people nicely for long.'";
			If player consents:
				say "'Great! I[apostrophe]ll, just go and let the others know to keep an eye out for you!  You should come back in a little bit' Shi says, with a toothy smile, looking you over again, 'But first I think you will need to fit in a bit more.' Shi says, right before she pulls your startled body into her arms for a crushing hug, causing you to open your mouth to protest, only to find yourself being sloppily kissed as her rough tongue darts into your mouth, her sharp teeth brushing up against your face. Before you can react shi puts you back down and gives you a big grin, before heading back towards the hyena territory.  Glancing over her shoulder she calls back, 'Just a little something to remember me by!  I look forward to seeing how the changes look on you!' before she vanishes around the corner, your body shuddering as it begins to change.";
				hyenaify;
				hyenaify;
				Increase hyg by 1;
				stop the action;	
			otherwise:
				say "'That[apostrophe]s to bad,' shi says as crosses her arms under her exposed breasts, pushing them upwards for a second. 'You have no idea what your missing out on,' Shi continues as she runs her pawlike hand down her soft fur, posing for you.  Before fondling her large crotch for a second and winking at you.  'If you ever change your mind, you know where to find us hun'";
				stop the action;	
	if hyg is 3:
		say "Wandering the city again, you come across one of the areas claimed by that strange gang of hyenas, causing you to recall your last encounter with the strange hyena recruiter. As if summoned by your thoughts of her, you see a familiar looking hyena coming towards you from down a side street, a large grin on her hyena muzzle.  Before you can decide what to do about it, your are quickly enveloped once more in a large and enthusiastic hug. [line break]";
		say "'I thought I scented you!' The large herm hyena exclaims, still hugging you tightly, 'I knew you[apostrophe]d come back to join us, you said you would after all.'  She says as she releases you, causing you to stagger for a minute, before she grabs your hand and starts dragging you down the street, heading deeper into what the graffiti tags proclaim to be hyena territory.  'You must be pretty special to have survived out here this long on your own, but you don[apostrophe]t have to worry about that anymore' the hyena says as you are led through a bewildering maze of side streets and partially wrecked buildings to one of the warehouse districts.  'You have a whole gang on your side now, or pack, whatever you want to call it, you got our back, we got yours. Speaking of which,' She says as she stops in the middle of the street, facing a row of shipment warehouses. 'The names Gina, and I guess I[apostrophe]m your sponsor for now, so let me know if anyone bothers ya or if you need anything.' the newly introduced Gina says with a grin. [line break]";
		say "'Course first we have to make sure you smell like you belong to me...' She says giving you an evil look. Before you can protest, she has you pinned to the ground underneath her, as she rubs her soft hyena furred body against yours.  The sensation and sudden pouncing cause you to gasp in surprise, and she takes advantage of your open mouth to once more give you a deep kiss, exploring your mouth with her surprisingly flexible tongue, and filling you with her almost addictive personal flavor.  Gina breaks the kiss, leaving your mouth open and panting as she continues to rub herself all over you, her hyenalike musk coating you in its arousing scent. You find it hard to think straight as she rubs her nipples across your face, letting you lick them and toy with them for a minute, before she backs off of you and hauls you unsteadily back up to your feet, still aroused and needy. [line break]";
		say "'There now, that should help you fit in here better,' Gina  says with a self satisfied smirk as you can feel your body becoming more hyenalike already.  'And now everyone will know you belong to me.' She finishes with a grin, causing you to realize that her own musky scent seems to be clinging to you now, its bestial odor both strange and arousing at the same time.  Noticing your increasing arousal, Gina runs her hand along your side slowly, causing you to twitch at the erotic sensation, while her other hand caresses her large package. 'Hmmm and if you want to pick up where that left off, maybe we should go inside instead of just standing around out here in the street.'  So saying she walks up to one of the side doors to a nondescript warehouse nearby, swishing her hips and hyena tail at you as you follow her, your nose filled with her erotic scent and your mind on her lovely assets, leaving you unable to think about doing anything but follow along like a good little hyena. As she opens the door and ushers you inside, she gives you a minute to take it all in, before going over to several mattresses set up nearby, obviously letting you decide what to do next.'";
		hyenaify;
		now hyg is 4;
		increase libido of player by 30;
		move player to Hyena hideout;
		now Hyena hideout is known;
		now hyena gang is resolved;



Section 6- Locked utility room

Locked utility room is a situation.
The sarea of Locked utility room is "mall";
LURM is a number that varies.


Instead of Resolving a Locked utility room:
	if lurm is 0:
		say "While exploring underneath the mall you come across a locked utility room, hoping for the best you search for some manner of prying the door open, only to notice the sticky white stuff leaking out from underneath the door. Deciding discretion is the better part of survival, you move quickly on your way.";
		increase lurm by 1;
		stop the action;
	if lurm is 1:
		say "Exploring the sewers further, you stumble across a large trail of dried cum. Feeling a sense of perverse curiosity you begin to backtrack to see where the large trail came from.  To your surprise the trail seems to lead you right back to the utility room you came across earlier, only this time the door appears to be open.  Carefully peeking around the side of the door, you see that this area hasn't been used as a simple utility room for quite some time. The tool racks are filled with strange and mildly disturbing looking skulls and other items, and the machinery is covered in strange symbols and writing that hurts your eyes to look at it.  [Line break] In the center of the room is a large black pentagram, surrounded by occult symbols, part of the pentagram is obscured by what appears to be a large pool of cum. Lying in their own smaller pools of seed are five empty black robes, probably worn by whoever was in here at the time.  The intense musky odor trapped in the room is starting to make your eyes water and your body heat up in response, deciding it would be a good idea to get out of there before you end up doing something you might (or might not!) regret. You quickly grab a couple items lying around and duck back outside.";
		Add "demon seed" to invent of player;
		Add "demon seed" to invent of player;
		Now Locked utility room is resolved;







Section 7- Transformed Seals

Transformed Seals is a situation.
The sarea of Transformed Seals is "Beach":


Instead of Resolving a Transformed Seals:
	say "While walking along the beach you come across a shiny object half buried in the sand, dreams of treasure come over you as you as you quickly uncover it.  You are surprised to find just a couple thin pieces of metal, closer examination shows them to be a pair of navy seal dog tags.  Looking around more carefully you notice the remains of several stretched and torn wet suits in the surf, and a few other telltale signs of a struggle.  Quickly brushing the sand off your hands, you move on down the beach before whatever happened to them happens to you.";
	now  Transformed Seals is resolved:


Section 8- Wrecked ships

Wrecked ships is a situation.
The sarea of Wrecked ships is "Beach";


Instead of Resolving a Wrecked ships:
	say "You come across the wreckage of several smashed sailboats, it looks like they were broken apart by something trying to get at the people inside. You decide that maybe coming out here alone wasn't your best idea ever and quickly hurry on your way.";
	Now Wrecked ships is resolved;

Section 9- Dolphin lotion

Dolphin lotion is a situation.
The sarea of Dolphin lotion is "Beach";


Instead of Resolving a Dolphin lotion:
	say "traveling along the beach you come across a large blanket set up on the sand, next to an overturned beach umbrella.  Moving closer you find no sign of the occupant, though you do spy a pair of sunglasses and some sunblock lying in the sand.  Deciding some extra protection couldn't hurt, you bend over to take the sunblock only to notice what from this position looks like something was dragged along the sand to the water. Looking closer at the bottle of sunblock you notice it is called 'happy dolphin' Suntan lotion, and shows the picture of a grinning dolphin woman on the front, her large tail resting on the sand behind her. Deciding that on second thought you don't need any sun protection right now, you hurry along, on leaving it behind.";
	Now Dolphin lotion is resolved;

Section 10-  Broken fountain

Broken fountain is a situation.
The sarea of Broken fountain is "Park";

Instead of Resolving a Broken fountain:
	Say "While wandering through the park trail you hear a soft trickling noise, like water softly running over stone. following the noise you come to a busted water fountain, apparently destroyed by several of the creatures fighting (or doing other things) in the area.  Glancing around you manage to find an empty container to put some of the water in, before heading on your way.";
	Add "dirty water" to invent of player;
	Now  Broken fountain is resolved;
	



Section 10-  Scenic View

Scenic View is a situation.
The sarea of Scenic View is "Park";


Instead of Resolving a Scenic View:
	Say "Wandering through the park trails you come across a beautiful view of nature, almost unimpeded by the skyline of abandoned buildings.  You pause in your searching for a minute to take in the view, and relax before you have to head back into the city, feeling much better about yourself.";
	Increase Humanity of player by 10;
	Now Scenic View is resolved;


Section 11-  Twisted grove

Twisted grove is a situation.
The sarea of Twisted grove is "Park";


Instead of Resolving a Twisted grove:
	say "Exploring the park trails, you hear muffled sounds from a distance.  Deciding to investigate you creep up over a small hill only to stare in astonishment as what seems to be a small grove of animated plants continue to violate a skunklike woman, holding her suspended off the ground like some obscene fruit.  As you watch more and more cum drips off her onto the ground, as she is pounded by several vines into orgasm again and again. Your eye is quickly drawn to the patch of grass where some of the cum fell as the grass seems to writhe and twitch and start to grow in obscene shapes as well.  As there is nothing you can do for the skunkwoman against the growing grove of twisted plants, you decide to move on quickly before you end up joining her.";
	Now Twisted grove is resolved;


Section 12-  Ominous hole

Ominous hole is a situation.
The sarea of Ominous hole is "Park";

Instead of Resolving a Ominous hole:
	say "As you wander through the park you notice another survivor in the distance, quickly waving you begin to run towards each other. Suddenly the other survivor seems to disappear into thin air mid step, causing you to duck and look around.  When nothing else happens you cautiously approach the area you last saw the other person, only to find there seems to be a large hole dug there instead surrounded by a small mound of dirt, as if made by some burrowing creature of almost human size.  You would investigate further, but the loud moans and other noises coming from the hole tell you more then you probably wanted to know about whats happening, as well as the fact that you be seeing that person again.... as a person anyways.";
	Now Ominous hole is resolved;

Section 13- squatters den

squatters den is a situation.
The sarea of squatters den is "mall";

Instead of resolving a squatters den:
	say "exploring the sewers underneath the mall, you find signs of a recent struggle.  Investigating more closely you see where something came across what appears to be a recently inhabited squatters den, piles of junk and blankets and even an old shopping cart have been dragged down here and set up in a small alcove.  From the looks of the recent struggle the den isn't inhabited any longer, carefully picking through the piles of junk looking for anything that might be of use.  Finding some food and a bottle of none to clean water, you head on about your business";
	Add "dirty water" to invent of player;
	Add "food" to invent of player;
	Now squatters den is resolved;


Section 14- Leaking pipe

leaking pipe is a situation.
The sarea of leaking pipe is "mall";

Instead of resolving a leaking pipe:
	say "as you travel the sewers and utility corridors under the mall, you hear a steady trickling noise coming from down one of the passageways, the sound grows louder as you move closer, eventually discovering a leaking water pipe. You apparently aren't the only person to have discovered this source of water though, as someone has set up a couple small containers under the steady leak.  As the containers are definitely overflowing whoever set them up obviously hasn't been back in a while. Sensing an opportunity you quickly gather up a couple of the full containers and place them in your pack, you then hurry along before someone comes looking for them. ";
	Add "dirty water" to invent of player;
	Add "dirty water" to invent of player;
	Now leaking pipe is resolved;



Section 15- Library Visitor

library visitor is a situation.
libvis is a number that varies.

Instead of Resolving a library visitor:
	if libvis is 0:
		say "Returning from a rather boring time searching the city, you find the library doors scratched and dented, as if some large creature had attempted to enter... perhaps scenting your recent presence. Fortunately enough it doesn't seem to have found a way in, although its attempt is still worrisome, you should probably keep an eye out in case it comes back.";
		increase libvis by 1;
		stop the action;
	if libvis is 1:
		say "Returning to the library in a better mood then normal, your foraging having gone well today, you find that some creature has paid the library a visit in your absence again.  The creature seems to have actually tried searching the area around the building this time for other entry points, apparently not able to get in the doors you fortuitously locked behind you.  You wonder if this is the same visitor as last time, as it is showing much more reasoning capability now... still it didn't get in and you came back from the city with some extra food.  That's definitely a good sign isn[apostrophe]t it?";
		increase libvis by 1;
		Add "food" to invent of player;
		stop the action;
	if libvis is 2:
		say "returning from your hours of searching the city, you are relieved to see the library up ahead of you, and the chance to rest and relax a little from your scavenging.  However just as soon as you let your guard down to unlock the door and let yourself in, one of the creatures prowling the city springs out of concealment and attacks!'";
		fight;
		say "Finally driving away the creature, you quickly duck inside the library to rest and relax, your heart hammering from the  shock of the unexpected fight and the fight itself.  The beast was obviously lying in wait for your return, making you wonder if it was the creature that has been trying to get into the library these past several times. Hopefully its defeat at your hands means it won[apostrophe]t be back this way again anytime soon, then again if it does come back you suppose you will just have to be ready for it.";
		increase libvis by 1;
		stop the action;
	if libvis is 3:
		say "Returning to the library you are shocked to open the door to find that you appear to have had a visitor again, only this time they somehow made their way inside. You look around at the library entrance and the books knocked over and the obvious signs of someone or something searching the place, probably for you.  Checking carefully you determine that whatever it was and however it got in here, at least now it seems to be long gone, luckily enough.  Following what you can of it's trail, you sigh in relief as it doesn[apostrophe]t seem to have found the entry to the bunker in its searching, of course you still haven[apostrophe]t figured out how it found its way in to begin with...";
		increase libvis by 1;
		stop the action;
	if libvis is 4:
		say "After another long day searching the abandoned city, you are happy to return to the library to for some hard earned rest. As you go to unlock the door you remember your unwanted visitor from before, and are thus careful when you go to open the door up, just in case. You[apostrophe]re caution seems warranted as as soon as you begin to swing the door open, something inside barrels out and attacks you directly! And from a glimpse of more movement from inside heading this way, apparently this time it isn't alone!";
		fight;
		say "Dealing with your first opponent, you barely have time to take a breath before another creature that had been hiding outside around the corner moves in on you!";
		fight;
		say "Fending off the attack from the rear, you bravely turn to face the creature still lurking inside the library.  Your arms tired and your body tingling from the rush of adrenaline, you step into the library itself.  You don't have to wait long for the creature to notice your presence, and with a swift cry it attacks!";
		fight;
		say "Exhausted but victorious, you look around the site of the battle with a sigh, the ambushing beasts having left quite a bit of a mess behind themselves.  Consoling yourself with the thought that you doubt they will try anything like that again, you begin the painstaking task of cleaning the area up at least enough that you can move around easily. In the process of cleaning up after the creatures, you find a formerly overlooked supply room with what appears to be an open utility door leading to a small maintenance shed out back that also seems to be open.  Having figured out how the creatures found their way inside, you quickly lock both doors up, and jam them closed, ensuring that the creatures won't be able to use that entry again. You are in a much better mood now that you have found out how the creatures managed to get inside, and even better you found some much needed supplies in the supply room as well! [line break]."; 
		say "You find 2 food and 2 water bottles in the supply room!";
		Add "food" to invent of player;
		Add "food" to invent of player;
		Add "water bottle" to invent of player;
		Add "water bottle" to invent of player;
		Increase score by 10;
		Now library visitor is resolved;



Section 16- ruined supplies

ruined supplies is a situation.
The sarea of ruined supplies is "mall";


Instead of resolving a ruined supplies:
	say "Searching the area under the mall again, you find a small pallet of food supplies obviously intended for use above at the food court. Unfortunately you were obviously not the first person to find these supplies, and some person has obviously been here before you and made a pig out of themselves.  Boxes are ripped open, food was obviously messily consumed, and almost all of the drinks have been opened, leaving the area strewn with wrappers and empty bottles. Eying the mess dubiously, you wonder if it is even worth searching through it all to see if there is anything left. ";
	if player consents:
		say "tossing the supplies and boxes to the side, you realize that tossing things around as you look through the remains of the supplies is actually kind of fun.  You find small bits of food and a few mouthfuls of drink left over, and continue searching for more, as you quickly stuff them in your face, enjoying this strange type of edible scavenger hunt you have embarked on. Before you know it you look up and realize that you have spread the mess around an even larger area then before, and that you have been rooting around in the remains like some sort of pig yourself.  As you stand up to leave you hesitate to leave such an enjoyable bit of fun, and you are sure there are still some crumbs left behind. Thinking this you begin to turn back to the mess of wrappers and boxes, only to catch a glimpse of yourself in one of the shiny wrappers and realize that you really have started to become rather pig like yourself from your messy endeavors! Realizing that staying here any longer, however tempting it may be would almost certainly result in your becoming totally piglike, you quickly hurry away, darting a few longing looks over your shoulder at the remains of the supplies before managing to get a hold of yourself.";
		piggyify;
		piggyify;
		now hunger of player is 0;
		now thirst of player is 0;
		Now ruined supplies is resolved;
	otherwise:
		say "Deciding its perhaps best not to get involved in such a total mess, just on the off chance you might find something useful left in the remains, you  continue along your way doing your best to forget the horrible carnage you are leaving behind.";
		Now ruined supplies is resolved;







Section 17- Strange preacher

Strange preacher is a situation

Instead of Resolving a Strange preacher:
	say "Wandering the deserted streets, you hear what sounds like a loud voice from down the street a ways. Hurrying to see who is talking, you are shocked to see a strange creature shouting out to an empty street.  Moving closer in case this is some kind of trick, you get a better look at the creature and finding yourself shaking your head in astonishment.  With the lower body of one of those panther taurs, she is resting her front legs on a box of some type while her back ones brace her on the street, her legs spread giving you a good look at hir erect feline cock.  Behind hir though a long reptilian tail is lashing in time with her words, its scaled length almost as long as her entire furred panther lower body. Her torso seems to be covered in rough brown dog fur, with a cowlike udder hanging off her upper body’s stomach, Her arms are twisted around and pulled up into almost wyvernlike wings, obviously not strong enough to lift her even an inch of the ground.  It is almost startling to see the rather humanlike head sitting on the shoulders of the creature, her eyes closed as she continues to speak. [line break] You realize as you have been staring at the strangeness of her form, you have hardly paid any attention to what she was actually saying, you pause to listen for a minute.  Listening to her speak, it quickly becomes obvious she is singing the praises of something called the church of the maternal beast, and someone she calls the Great Mother.  She appears to be trying to appeal to the infected by telling them to embrace the changes, and the new sexuality sweeping the city, but not to let it overwhelm them. She continues on in lewd detail about the things that one should be careful of doing, or else you might give in and lose yourself completely, her body shaking as she depicts several strange lewd acts to be avoided, and you can see her hind legs pumping her erect cock in the empty air eagerly as she continues to get more and more explicit in her descriptions. Shaking your head at the absurdity of it all, you leave the strange thing to its preaching, unsure if it even noticed you stopping to listen for a minute.";
	Now Strange preacher is resolved;









to piggyify:
	Infect "Messy Pig";


to gryphonify:
	Infect "Hermaphrodite Gryphon";

to hyenaify:
	Infect "Herm Hyena";

New Events ends here.

