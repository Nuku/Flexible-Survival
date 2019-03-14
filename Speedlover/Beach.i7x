Version 1 of Beach by Speedlover begins here.

Section 1 - Basic Setup [of rooms]

[Beach plaza]

Table of GameRoomIDs (continued)
Object	Name
Beach Plaza	"Beach Plaza"

Beach Plaza is a Room.
The Beach Plaza is fasttravel. The Beach Plaza is not known.
The description of beach plaza is "[BeachPlazaDesc]".
earea of Beach Plaza is "Outside".

to say BeachPlazaDesc:
	say "     Quite different from the dirty, ill-kempt streets of the city you know, the plaza you are standing upon presents itself in a sunny scene. It is fairly large, open and relatively clean, with a boardwalk extending toward the west. You can see a wooden railing in the distance there, with the sea visible beyond that. Remembering the layout of the beach from previous visits, you know that there is a sharp cliff that way, with stairs leading down to the public beach and the rest of the coastline. To the north is a church, its wide doors open and inviting.";
	say "     Numerous infected are present on this peaceful plaza, strolling around in a relaxed fashion and checking out various vendor stalls and buildings. Which is a bit surprising, to say the least - given the state of affairs everywhere else. Maybe the towering bronze statue of a crab straddling the street like an archway has something to do with it. You certainly do not remember that being there before all the trouble in the city started.";

Beach Exit is a door. Beach Exit is dangerous.
The marea of Beach Exit is "Outside". Beach Exit is undescribed. Beach Exit is east of Beach Plaza.

Table of GameRoomIDs (continued)
Object	Name
Outside Exploration	"Outside Exploration"

Outside Exploration is a room.
Outside Exploration is east of Beach Exit.

instead of sniffing the beach plaza:
	say "The seashore is near. There is salt in the air.";

Table of GameCharacterIDs (continued)
object	name
Bronze Crab	"Bronze Crab"

Bronze Crab is a man. Bronze Crab is in Beach Plaza.
The description of Bronze Crab is "[BronzeCrabDesc]".
The conversation of Bronze Crab is { "<This is nothing but a placeholder!>" }.
The scent of Bronze Crab is "     The giant statue smells... kinda like hot metal. Not surprising, since it bakes in the sun all day.".

to say BronzeCrabDesc:
	say "     The bronze crab is a true giant, effortlessly straddling the street on eight legs that hold it far enough up to comfortably walk underneath - or drive a car through. Studying the shining statue, you are surprised at just how elaborate it is, the metal formed into countless little details on every surface. Small bumps and ridges, and all that. As you are studying it, the colossal crustacean actually moves in turn, slightly shifting its legs and swivveling eye-stalks to focus on you. After a few seconds of what seems to be intent studying, it turns its attention back towards the city approach.";

instead of conversing the Bronze Crab:
	say "     You try to strike up a conversation with the giant crustacean, drawing the gaze of its eye-stalks. After listening to what you say for a few moments, its mandibles unfold from their normally relaxed position and you hear a series of clicks that have a metallic ring to them. After a few seconds of that, it finishes up with a sharper click and taps the street next to you with one front leg before turning its attention back towards the city approach. Feels like you just were lectured and then dismissed.";

instead of fucking the Bronze Crab:
	say "     Amorous thoughts fill your mind, and you step closer to one of the giant crab's legs to... rub up against it? Climb on it? Whatever it was, you are stopped cold by a huge pincer, closing around your midsection to hold you firm. With carefully meted-out force (to not accidentally snap you in half), the crab picks you up and sets you down outside the plaza, releasing its grasp there. You hear some clicking noises and see it gesture towards the city, although it doesn't seem to mind that you walk back to the plaza - without trying to have sex with it this time.";


[Boardwalk]
Boardwalk2 is west of Beach Plaza.

Table of GameRoomIDs (continued)
Object	Name
Boardwalk2	"Boardwalk"

Boardwalk2 is a Room.
The description of Boardwalk2 is "[BoardwalkDesc]".
Boardwalk2 is a room with printed name "Boardwalk".
earea of Boardwalk2 is "Outside".

to say BoardwalkDesc:
	say "     The broad boardwalk you are standing on extends for a fair bit, starting at the beach plaza to east of your position and leading to the edge of the beachside cliffs just west of here. A wooden railing makes sure no one falls over the edge while they enjoy the view of the open ocean and the beach and coastline at the foot of the cliff. A set of broad stairs lead down to the beach, twisting back and forth as they descend the rock wall. Meanwhile, small stores flank the boardwalk up here, although from what you can see they are almost uniformly closed. Apparently most now house people who are living in them, no doubt fled from the city to this halfway peaceful area.";
	say "     There is a decent amount of people of all sorts of species here, either chit-chatting or simply just hanging out by themselves, sitting at one of the many tables of a café that is actually still open. Sadly, the long line coming out of the door tells you that you won't be getting an ice-cream cone or other treat anytime soon. Overall, this area is a nice difference from the insanity of the city as everyone here appears to just want to relax.";

instead of sniffing the Boardwalk2:
	say "     The air smells fresh and salty.";

beach overview is an object. It is in Boardwalk2. It is fixed in place. Understand "map" as beach overview.
the description of beach overview is "[Beach_Overlook_Desc]".
The icon of beach overview is Figure of Beach_Overlook_icon.

to say Beach_Overlook_Desc:
	say "     From the railing at the edge of the platform, you have an exceptional overlook over the whole public beach and beyond.";

Table of GameRoomIDs (continued)
Object	Name
Restaurant	"Restaurant"

Restaurant is a Room.
Restaurant is north of Boardwalk2.
The description of Restaurant is "[RestaurantDesc]".

to say RestaurantDesc:
	say "     The restaurant is an interesting combination of high class and casual that seems to work, at least in your opinion. There are tables scattered throughout the building with some up against the wall and under windows that are open at the moment. In the back end of the food establishment is a bar with stools lined up to allow people to order their alcohol whenever they want it. Overall it's a very nice place.";

instead of sniffing the Restaurant:
	say "     The restaurant smells of hamburgers, French fries, and many other kinds of foods, something that makes your stomach rumble.";

Rat Twins Stash is a container in Restaurant. It is closed. It is scenery.

Instead of opening Rat Twins Stash:
	say "[RatTwinsTapeGet]";

Instead of examining the Rat Twins Stash:
	say "[RatTwinsTapeGet]";

to say RatTwinsTapeGet:
	say "     You approach from the pile of cots and clothes[if HP of Erin >= 2] belonging to the twins[end if]. A note that reads 'Back shortly. Keep your hands off our stuff' is taped on one of the bags. ";
	if "Rat Twin Tape" is not listed in tapes of player:
		if Lost Camera is unresolved:
			say "You notice a video tape sitting on a corner of the pile of stuff. You pick it up and examine it. It is labelled '1st day together in our new bodies'. If you find a compatible camera, this could prove an interesting watch.";
		else:
			say "You notice a video tape sitting on a corner of the pile of stuff. You pick it up and examine it. It is labelled '1st day together in our new bodies'. It seems compatible with the camera that you [if carried of video camera is 1]carry[else]put somewhere[end if].";
		say "[if HP of Erin >= 2]You grab the tape while the twins are distracted by one of the patrons of the restaurant coming to chat with them[else]You grab the tape while no one is here to watch you[end if].";
		say "[bold type]Rat Twin Tape has been added to your tape inventory![roman type][line break]";
		add "Rat Twin Tape" to tapes of player;
		now Rat Twins Stash is nowhere;

[Public Beach]
Public Beach is below Boardwalk2.
Public Beach is northwest of Wild Fringe.

Table of GameRoomIDs (continued)
Object	Name
Public Beach	"Public Beach"

Public Beach is a Room.
The description of Public Beach is "[PublicBeachDesc]".
earea of Public Beach is "Beach".

to say PublicBeachDesc:
	say "     Filling the interior of a cliff-flanked bay, the broad public beach of the city is quite pretty, with lightly colored, almost white sand. At the spot you are right now, the cliff-face rises sharply and one can see the edge of a wooden platform above, flanked with a broad railing that various people lean on to enjoy the view. A series of stairways snake their way up the cliff, allowing you to go up, and along the way is a nice little snack bar, situated in a cave hewn into the rock-face. You can reach it by walking up the first set of stairs in the northeast. The coast goes on in the southeast, although it looks a bit rocky and less nice that way, and towards the west one reaches the other end of the bay's bordering cliffs, with the beach curving around to meet them in the southwest. Just south is the shallow and calm water of the bay, perfect to bathe in.";
	say "     There are many people having fun on the beach, having brought with them countless towels and parasols that are scattered all over the place. There is even a volleyball net set up, with a match going on right now! You can't help but chuckle at the sight of all those people in their transformed shape relaxing in the sun and having a good time. Looks like even in the midst of the nanite apocalypse, everyone can't help but like and enjoy the beach. A small lifeguard's tower is set up in a central position on the beach, from where a large hunk of an orca in red shorts keeps an eye over the situation all around. Sun, beach games and sandcastles - this really looks like a nice place to hang out...";

instead of sniffing Public Beach:
	say "     The salt in the air is reminiscent of high tide at the beach.";

Table of GameRoomIDs (continued)
Object	Name
Shallow Bay	"Shallow Bay"

Shallow Bay is a room.
Shallow Bay is south of Public beach.
Shallow Bay is west of Wild Fringe.
Shallow Bay is southeast of Rocky Cliff.
Shallow Bay is east of BeachEnd.
The description of Shallow Bay is "[ShallowBayDesc]".
earea of Shallow Bay is "Beach".

to say ShallowBayDesc:
	say "     You're swimming (standing, in some places) in the nice and shallow water close to the public beach of the city. It is a nice area for a relaxing swim, without too many waves, as those mostly break further out to the south, where a series of rocks juts out of the depth. The ocean gets deeper that way fairly quickly, and you don't think it'd be healthy to swim that way on the best of days. So maybe just enjoy your refreshing bath in this part of the bay, before going back on land in the east, north, northwest or west.";

instead of sniffing the Wild Fringe:
	say "     You sniff around, and since the ocean water is almost sloshing into your nose, there is little wonder that you smell salt.";

[Wild Fringe]

Table of GameRoomIDs (continued)
Object	Name
Wild Fringe	"Wild Fringe"

Wild Fringe is a Room.
Wild Fringe is southeast of Public Beach.
The description of Wild Fringe is "[WildFringeDesc]".
earea of Wild Fringe is "Beach".

to say WildFringeDesc:
	say "     The southeastern fringe of the public beach gets more and more rocky as one goes along. Seems a bit more exposed too, so you assume that the highes tides in a given month might actually soak the area and send waves slapping against the cliff just behind the strip of sand. Scattered pieces of driftwood and a little plastic trash does support the theory too. Overall, this section of the beach looks a bit dishelved, explaining why many beachgoers tend to avoid coming this way. Further towards the southeast, the coastline gets a little bit nicer again, with the cliff getting lower and actual dunes visible between it and the ocean, but that also brings more exposure to wind, explaining why all of the development of the beach is to the northwest.";
	say "     You feel that if you go any further, you will probably leave the zone of peaceful beach relaxation, encountering what you've come to expect from the dangerous streets of the inner city.";

instead of sniffing the Wild Fringe:
	say "     The scent of salty water hangs in the air, although a gust from the southeast has a different undertone. Smells... yeah, like sex.";

[Beach Exploration]
Beach Exploration is a door. Beach Exploration is dangerous.
The marea of Beach Exploration is "Beach". Beach Exploration is undescribed.
Beach Exploration is southeast of Wild Fringe.

Table of GameRoomIDs (continued)
Object	Name
BeachDummyRoom	"BeachDummyRoom"

BeachDummyRoom is a room.
BeachDummyRoom is southeast of Beach Exploration.
The description of BeachDummyRoom is "This is a dummy room for exploration purposes.".

[Dirty Sheds]
Dirty Sheds is northwest of Public Beach.

Table of GameRoomIDs (continued)
Object	Name
Dirty Sheds	"Dirty Sheds"

Dirty Sheds is a Room.
Dirty Sheds is north of Rocky Cliff.
The description of Dirty Sheds is "[DirtyShedsDesc]".
earea of Dirty Sheds is "Beach".

to say DirtyShedsDesc:
	say "     Set a way back from the beach in a narrow ravine, the row of dilapidated sheds were used to store things like lifesaving equipment and other stuff. Now the overlong grass makes it nearly impossible to open the doors, besides big rusty padlocks holding them shut on top of that. One seems to have been broken into however, the door hanging off its hinges and ransacked interior barely visible. Between two of the sheds there is one oddity, a path north has been worn into the overlong grass.";

instead of sniffing the Dirty Sheds:
	say "     The whole place smells of wet wood and moss, not a very appealing scent if you're honest.";

[-----------------------------------------------------------------------------]
[Overgrown Area is in the hellhound file]
[-----------------------------------------------------------------------------]

[Rocky Cliff]

Table of GameRoomIDs (continued)
Object	Name
Rocky Cliff	"Rocky Cliff"

Rocky Cliff is a Room.
Rocky Cliff is west of Public Beach.
The description of Rocky Cliff is "[RockyCliffDesc]".
earea of Rocky Cliff is "Beach".

to say RockyCliffDesc:
	say "     The western end of the rocky cliffs flanking the beach in this little bay is a lot more jagged and uneven than further east. They lack the nice flat top too, so there are no buildings on top either. A number of large rocks poke out through the sand as well, breaking up the usable area, and some outcroppings create what almost seems like little caves. To the north, a narrow ravine cuts into the cliff-face, and you don't doubt that during storms, water will come pouring out of that. South of here, the curving beach and cliff meet and both end together, with nothing but the deeper waters beyond. If you do want to go swimming, the southeast is much nicer, with its shallow and calm waters.";
	say "     Overall, this part of the beach is less used, as it is further to reach from the city and come afternoon, the shadow of the curving cliffs falls over the sand, making it less popular to spend time here. Of course, this means that the somewhat out of the way spot has a certain appeal for... other interests. It is just perfect for secret meetings with lovers for a fun little tryst in the sand, something that one just can't do in the midst of all the bustle of the public beach.";

instead of sniffing the Rocky Cliff:
	say "     The place smells of the ocean mixed with an earth scent, something that you attribute to the cliffs.";

[BeachEnd]
BeachEnd is south of Rocky Cliff.
The description of BeachEnd is "[BeachEndDesc]".
BeachEnd is southwest of Public Beach.
BeachEnd is a room with printed name "End of the Beach".

Table of GameRoomIDs (continued)
Object	Name
BeachEnd	"End of the Beach"

BeachEnd is a Room.
earea of BeachEnd is "Beach".

to say BeachEndDesc:
	say "     The sand here curves sharply towards the cliff-side, meeting it a little further south, just where the cliff actually ends in the cean. Beyond, the water gets deeper quickly, and numerous craggy rocks stick out of the ocean, constantly trashed by crashing waves. That looks like a rather unhealthy area to get into the water - but wait, at one spot, there is a kind of coral-encrusted arch allowing passage through the rocks. Maybe you could brave the ocean after all and swim that way? Of course, if you just want to get wet, why not head east instead - inside the bay, the waters are shallow and much calmer. Otherwise, you can head northeast to the public beach or north to the foot of the rocky cliff where it gets much taller and more jagged.";

instead of sniffing the BeachEnd:
	say "     All you can smell out here is the strong scent of the ocean.";

[Rock Arch - *****Swimming is defined in Hellerhound's file - Underwater zone*****]
Rock Arch is southwest of BeachEnd.

Table of GameRoomIDs (continued)
Object	Name
Rock Arch	"Rock Arch"

Rock Arch is a Room.
The description of Rock Arch is "[RockArchDesc]".

to say RockArchDesc:
	say "     You're in the ocean close to the coast, right where the water gets deeper than the relatively shallow bay closer to the public beach. Jagged cliffs rise up in the north, northwest and west, while a large arch of weathered rock stretches over the sea in the southern directions. It allows passage through the choppy waters and jagged rocks that otherwise cut the bay off the open ocean. By passing through there, you would be able to move to and from the deeper reaches of the sea. Through the arch and to the south, you can see a shadowy shape beneath the water. Looks like a sunken ship, its broken mast helping you distinguish the shape. There's a [bold type]shipwreck[roman type] to explore! Of course, out there in the open sea, you'd really have to swim against the waves and currents to get to it.";

instead of sniffing the Rock Arch:
	say "     All you can smell out here is the strong scent of the ocean.";

after entering the Rock Arch:
	say "     You look up with awe at the natural rock formation. Not everyone can say that they visited this place.";
	increase score by 5;

Table of GameRoomIDs (continued)
Object	Name
Wyvern Nest	"Wyvern Nest"

Wyvern Nest is a room. [Wyvern Nest is above Rock Arch.]
the description of Wyvern Nest is "[WyvernNestDesc]".


to say WyvernNestDesc:
	say "     ...";
[
instead of going up from Rock Arch:
	say "     Strength check!";
	say "     Fail: Slip, scrape for some damage and splash into the water";
	say "     Success: move to the nest";
]

Table of GameRoomIDs (continued)
Object	Name
Open Ocean	"Open Ocean"

Open Ocean is a room. Open Ocean is south of Rock Arch.
The description of Open Ocean is "[AboveShip]";

to say AboveShip:
	say "     Below you is a large sunken ship and you can see multiple underwater creatures swimming around down there. If you needed to you could go down there but you would need some way to breathe. Of course, if you decided against that then there is the rock arch to the north. You could always swim back.";

Table of GameRoomIDs (continued)
Object	Name
Sunken Ship	"Sunken Ship"

Sunken Ship is a Room.
Sunken Ship is below Open Ocean.
understand "Shipwreck" as Sunken Ship.
understand "Wreck" as Sunken Ship.
The description of Sunken Ship is "A large ship lays sunken and rotting here. From the breaks in the old hull, it seems the ship ran afoul of the rocky waters and went down long ago. It is now an attraction for divers and sea creatures alike. Maybe going here was a bad idea. There is a cloudy mess of thick seed hanging in the water and stuck to part of the ship, tribute to some huge beast. You'd best be careful. Although in the distance to your west you can see a sparkling sight in the distance. From here, you can barely make out the lighter spot in the rocks that is the [bold type]Rock Arch[roman type] you passed through to get here. You could surface and swim to it if you want to get back to the beach.".

The invent of Sunken Ship is { "sea dragon cum", "sea dragon cum" }.

the scent of Sunken Ship is "You can't smell anything while underwater.".

Table of GameRoomIDs (continued)
Object	Name
Atlantis City Entrance	"Atlantis City Entrance"

Atlantis City Entrance is a room.
The description of Atlantis City Entrance is "[CityEntrance]";

to say CityEntrance:
	say "     The entrance to the underwater city is rather gorgeous, filled with golden and coral buildings. Behind you are the magical golden gates of the utopian city that create the amazing bubble that prevents the ocean waters from flooding the city. Standing at the entrance are a merman and a mermaid wearing fancy armor and holding spears. However, out of the two of them, only the merman looks approachable. The female appears to be too focused on her job to even notice you. To the west you see a cobblestone path leading to the center of the city.";

[--------------------------------------------------------------------------------------------------------------------]
[CHURCH HALL]
[--------------------------------------------------------------------------------------------------------------------]

Table of GameRoomIDs (continued)
Object	Name
Church Hall	"Church Hall"

Church Hall is a room. "     The inside of the Church is dim but not dark - relaxing, one could say. It seems all terribly normal, wooden pews filling much of the long hall, a smattering of heads sitting here and there. There's definitely no lack of space. There are some signs that whatever religion is practiced here, it's not anything you recognize. There are no crosses or other recognizable religious symbols. There are several freshly painted motifs however and they all seem to depict some great stylized beast offering protection and shelter to those near it. At the far end of the church, there seems to be a recessed door that, based on the outside of the building, must lead down some stairs.".

Church Hall is north of Beach Plaza.
There is a Church Notice Board in the Church Hall. It is rooted in place.
There is a Confession Booth in the Church Hall. "Standing against one wall, the dark wood of the large confession booth catches the eye. It has been modified to allow even a large creature such of those Panther Taurs to fit inside.". It is Rooted in place.
The invent of Church Hall is { "nullifying powder" }.

instead of sniffing Church Hall:
	say "The church smells of incense, arousal and the sea air from outside.";

[Definitions]
understand "board" as Church Notice Board.
understand "beach" as Beach Plaza.
understand "church" as Beach Plaza.

[Notice Board]
Table of board entries
entry text	entry trigger
"The Church would like to issue a warning to all roaming the district at night. Strange flickering green light has been seen behind the sheds north of the beach. It is advised no one visit this area."	"[hellhoundtoggle]"

Instead of examining the Church Notice Board:
	say "     Covering the notice board are many scraps of paper, most worse for wear. But at the same time most seem relatively new. Huh? Guess paper is a tad hard to come by. Most of them seem to be personal ads. Should those be on a church notice board?![line break]Anyways, here are a few that catch your attention.[line break]";
	repeat through Table of board entries:
		say "[line break][entry text entry][entry trigger entry]";

[Confession Booth]
lastconfession is a number that varies. lastconfession is 248.

instead of examining the confession booth:
	say "     It's quiet and nondescript, perhaps you should try to [bold type][link]enter[as]enter confession[end link][roman type] it and confess, or just talk to whomever is inside?";

instead of sniffing the confession booth:
	say "It smells faintly of incense and arousal from the various creatures who have been within it.";

instead of entering the Confession Booth:
	say "     As you close the door of the booth and kneel the best you can, a voice speaks slowly. It is warm, comforting, and unmistakably female. 'Welcome my child, you may not know but we do not follow the Christian tradition here. We simply are making use of what they left in place. Please feel free to ask questions, and if you have any troubles weighing heavily on your mind, please voice them. I will do my best to put your mind and spirit at ease.'";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about the church";
	now sortorder entry is 1;
	now description entry is "Learn more about the Church of the Maternal Beast";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Confess your sexual needs";
	now sortorder entry is 2;
	now description entry is "Talk about the urges that try to overwhelm you";
	[]
	if DBCaptureQuestVar is 5: [evil Brutus as pet]
		choose a blank row in table of fucking options;
		now title entry is "Ask about the possibility of freeing a demon of his inner evil";
		now sortorder entry is 3;
		now description entry is "Learn how to cleanse Brutus";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Ask about the church"):
					say "[ChurchQuestion]";
				if (nam is "Confess your sexual needs"):
					say "[ChurchLustConfess]";
				if (nam is "Ask about the possibility of freeing a demon of his inner evil"):
					say "[ChurchDemonCleanse]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You mumble a soft goodbye and thank-you, then leave the confessional, stepping back out into the church.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ChurchQuestion:
	say "     As you ask about the church, you hear a friendly little laugh from the other side of the booth. 'Indeed! That truly is the question we are asked most!' you sense the priestess smiling even though you cannot see her.";
	say "     'This is the place of the Great Mother, the Church of the Maternal Beast. Following her will, we have re-purposed this place to try and help those who suffer under the weight of the infection that runs rampant in the city. We try to offer peace and comfort, and to help other learn that while overwhelming, it does not need to control you.'";

to say ChurchLustConfess:
	say "     You hear a soft sigh. 'Indeed, you speak of one of the most dangerous aspects of the infection, for it leads towards loosing yourself. Please just listen, and I will attempt to help you overcome its controlling nature.'";
	if ( lastconfession - 7 ) > turns:
		say "     The priestess's words and advice do indeed help, granting you better control over your lusts, at least for now.";
		Decrease libido of player by 20;
		if libido of player < 0, now libido of player is 0;
		now lastconfession is turns;
	else:
		say "     Unburdening yourself again, you sadly discover it has little effect as you had nothing to add since your last confession session.";

[--------------------------------------------------------------------------------------------------------------------]
[CHURCH HALL ENDS HERE]
[--------------------------------------------------------------------------------------------------------------------]

Beach ends here.
