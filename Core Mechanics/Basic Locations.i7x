Version 1 of Basic Locations by Core Mechanics begins here.
[Version 1.5 - Library Expansion - Luneth]

Section 1 - Room Definitions

A room can be known or unknown. A room is usually unknown. [marks if the player knows a fasttravel room]
A room can be fasttravel. A room is usually not fasttravel. [reachable through the 'nav' system]
A room can be private. A room is usually not private. [private rooms cannot be found randomly or through hunting]
A room can be sleepsafe. A room is usually not sleepsafe. [no encounter chance when sleeping there]
[A room can be restable. A room is usually not restable.]
A room has a text called earea. earea is usually "void". [exploration area]
A room has a text called RoomID. RoomID is usually "Room". [unique room identifier]
A room has a text called ObserveString. ObserveString is usually " ".
A room has a truth state called ObserveAvailable. ObserveAvailable is usually false.
Rooms has a list of text called invent. [room inventory]
Rooms have a text called scent.

[Outdated 'danger door' concept, kept around for backwards compatibility]
A door can be dangerous.
A door has a text called marea.

instead of going through a dangerous door (called x):
	if HP of Player < 1:
		say "You are too injured to go far. You rest instead.";
		Rest;
	else:
		now battleground is marea of x;
		follow the explore rule;

Section 2 - Debug Room

Table of GameRoomIDs (continued)
Object	Name
NPC Nexus	"NPC Nexus"
NPC Nexus	"nothing"
NPC Nexus	"nowhere"
SituationNexus	"SituationNexus"

NPC Nexus is a room.
Description of NPC Nexus is "This is the extradimensional storage room for unused NPCs. If you somehow ended up here during an import, please include your 'FSCharacterSave.glkdata' file in a bug report on the FS Discord. Also - DON'T PANIC - Trixie will be along in the next turn to pick you up for a trip back into the bunker".

SituationNexus is a room.
Description of SituationNexus is "This is the extradimensional storage room for unused Situations. DON'T PANIC - Trixie will be along in the next turn to pick you up for a trip back into the bunker".

Table of GameRoomIDs (continued)
Object	Name
Traveling	"Traveling"

Traveling is a room.
Description of Traveling is "You set out towards your destination...".
The earea of Traveling is "Outside".

Section 3 - Main Hub and other standard rooms

Table of GameRoomIDs (continued)
Object	Name
Bunker	"Bunker"

Bunker is a room. Description of Bunker is "[bunker desc]".
Bunker is sleepsafe.
The invent of Bunker is { "face mask", "medkit", "medkit", "water bottle", "water bottle", "water bottle", "food", "food", "pocketknife", "cot" }.
Library door is a door. "Solid oak doors lend a stately appearance to the library.".
The Library Door is east of Main & 7th Street.
Description of the Library Door is "Solid oak doors lend a stately appearance to the library.".
Grey Abbey Library is east of Library Door.
Bunker is below Grey Abbey Library.
The player is in Bunker.

after looking while player is in Bunker:
	project the Figure of Map_Bunker_Main_icon;

to say bunker desc:
	say "     Sparsely appointed, this bunker was built as a fallout shelter back during the Cold War, then abandoned to become a forgotten curiosity at best. You are standing in the main bunker room, a rectangular chamber measuring about sixty feet in length and thirty feet in width. Its walls are solid concrete, and long rows of shelves are built into the back wall. There are several large storage lockers in the bunker as well. They look like a good place to store all your extra stuff. Several long rows of simple metal beds are bolted to the floor and walls for those taking shelter here to [bold type]rest[roman type] upon";
	if "cot" is listed in invent of Bunker:
		say ". One of the cots apparently was poorly installed, and the bolts attaching it to the floor have come loose. You could take it along if you'd like";
	say ". The small sink taking up a corner of the room seems to be broken, producing no water no matter how much the knob is turned. Two doorways to the [link]north[as]north[end link] and [link]northeast[as]northeast[end link] lead to adjoining rooms - showers and a small restroom - while a thicker, secure-looking door opens to the stairwell used to go [link]outside[as]up[end link]. Your own personal room is to the [link]southwest[as]southwest[end link]. It's technically just a maintenance storeroom, but at least it's private.";
	if Boombox is in Bunker:
		say "     You have set up the old boombox in one corner, where it continues to play despite not being plugged into anything. Maybe it has really amazing batteries - or draws energy some other way. Regardless of the source of its power, the boombox provides a mix of tunes and the occasional weather report on the continuing heat wave. Fiddling with the dials results in different songs and genres of music, but no actual news or broadcast radio. The radio broadcaster you hear seems the same across the stations, though his tone and delivery suits the format of the current [']station[']. Its dials and settings change on their own from time to time as if to provide music to suit the situation or dropping its volume when you're taking a nap.";
	if debugactive is 1:
		say "DEBUG -> Invent of Bunker: [Invent of Bunker][line break]";

Table of GameRoomIDs (continued)
Object	Name
Communal Shower	"Communal Shower"

Communal Shower is north of Bunker.
Communal Shower is a room. Description of Communal Shower is "[bshower desc]".
Communal Shower is sleepsafe.
lastShowerUse is a number that varies. lastShowerUse is usually 10000.

after looking while player is in Communal Shower:
	project the Figure of Map_Bunker_Shower_icon;

to say bshower desc:
	say "     The bunker has a small communal shower with a pretty simple setup. The first thing one sees when entering is that everything is covered in smooth, checkered tile. There's a short bench near the entrance for people to sit on as they undress. This is separated from the shower area proper by a concrete dividing wall, serving as a privacy screen for those entering and drying off. Turning the corner, you see that five showerheads have been affixed to the back wall for several people to wash themselves at once. There's a subtle depression in the floor - enough to direct water to a central drain, but not enough to feel unsteady when standing on it. Around the shower is a raised border that serves as an additional safeguard from flooding the surrounding area.";
	if library computer is powered:
		say "     Experimentally turning the knobs under one of the showerheads, a light spray of water comes out of it. Seems like you can at least wash here now. Drinking the water wouldn't be advisable though, as you vaguely remember mentions of the use of lead piping from the tour you once took through the place. As corroded as that has to be by now, you decide not to risk lead poisoning on top of all your other problems.";
	else:
		say "     Experimentally turning the knobs under one of the showerheads, you get... nothing. Seems like the showers are out of commission at the moment. Thinking back to the tour of the place you joined a year back (which is why you knew of the bunker in the first place), you remember them saying that there is a large water tank somewhere in the underground nearby. A pump powered by batteries is supposed to supply the bunker, but those have probably deteriorated by now. Maybe you can get the water running by [bold type]supplying the library with power[roman type] instead.";

Table of GameRoomIDs (continued)
Object	Name
Underground Restroom	"Underground Restroom"

Underground Restroom is northeast of Bunker.
Underground Restroom is a room. Description of Underground Restroom is "[brestroom desc]".
Underground Restroom is sleepsafe.

after looking while player is in Underground Restroom:
	project the Figure of Map_Bunker_Restroom_icon;

to say brestroom desc:
	project the Figure of Map_Bunker_Restroom_icon;
	say "     This room is very barebones - a small chamber with several stalls containing toilets. Checking one out, you realize that it isn't a typical piece of bathroom installation. There is no water (or anything, really) under the tightly closing lid, only what seems like a long drop into darkness. You try not to imagine how the lower end of the shaft might look like - or smell.";

Table of GameRoomIDs (continued)
Object	Name
Maintenance Storeroom	"Maintenance Storeroom"

Maintenance Storeroom is southwest of Bunker.
Maintenance Storeroom is a room. Description of Maintenance Storeroom is "[bmaintenance desc]".
Maintenance Storeroom is sleepsafe.

after looking while player is in Maintenance Storeroom:
	project the Figure of Map_Bunker_Storeroom_icon;

to say bmaintenance desc:
	project the Figure of Map_Bunker_Storeroom_icon;
	if Memento Collection is not in Maintenance Storeroom:
		say "     The maintenance room you have turned into your own private lodgings. Looking around, it isn't very large by most standards, and much of that is filled with cluttered shelving. Along the back wall is a twin size bed that the old janitor probably used to nap during breaks. The walls on the left and right are haphazardly lined with shelves and filing cabinets. There's nothing of any real interest inside of, in or on top of them, but you may find a use for the extra storage space in time."; [" You'd just need to [link]unclutter[end link] it first.";]
	else:
		say "     You're in the maintenance room you have turned into your own private lodgings. Looking around, it isn't very large by most standards, but at least it looks a bit more roomy now that you've taken care of the mess that formerly was strewn about. Now the shelving is straightened out and fairly empty, allowing for you to stash some mementos there. Along the back wall is a twin size bed that the old janitor probably used to nap during breaks, now covered in a fresh bedspread at least.";

UnclutterStoreroom is an action applying to nothing.
understand "unclutter" as UnclutterStoreroom.

Check UnclutterStoreroom:
	if location of Player is not Maintenance Storeroom:
		say "You don't see anything you can unclutter here." instead;

Carry out UnclutterStoreroom:
	say "     Looking around, you dump out an almost empty box of cleaning supplies, filling it with all the loose items in the shelves that you'd never ever need or want to use anyways. That clears up a bunch of space, and after carrying your box outside and putting it down in the back corner of the larger bunker room, you return to the now seemingly more roomy storeroom. The cleaning supplies are old, but still usable, which allows you to clean up a bit too before you add them into the box of stuff outside. Then, with the shelves not loaded as before, you manage to straighten them out, followed by exploring the filing cabinet that was blocked before. In it, you find various items that people must have lost in the library over the years. One of them is a friendly-looking little figurine of an anthro dinosaur, which you place on the shelves with a chuckle. Finally, in a bottom drawer you find a folded bedspread, which you gladly put onto the bed you've claimed as your own.";
	say "     Taking a deep breath, you look around and can't help but feel good about what you've accomplished. This'll be a much nicer place to stay in now.";
	SanBoost 10;


[
now Memento Collection is in Maintenance Storeroom;
]
Memento Collection is a container. Memento Collection is transparent. Memento Collection is not openable. Memento Collection is not lockable. Memento Collection is not enterable.
Description of Memento Collection is "     You've made room to stash mementos of your time in the city in the shelves here.".


Table of GameRoomIDs (continued)
Object	Name
Grey Abbey Library	"Grey Abbey Library"

Grey Abbey Library is a room.
The invent of Grey Abbey Library is { "Sundered Codex" }.
Grey Abbey Library is fasttravel.
Grey Abbey Library is sleepsafe.
Description of Grey Abbey Library is "[abbey desc]".
earea of Grey Abbey Library is "Outside".
ObserveAvailable of Grey Abbey Library is true.
ObserveString of Grey Abbey Library is "[GreyAbbeyLibrary_ObserveMenu]".

after looking while player is in Grey Abbey Library:
	project the Figure of Map_Library_Front_icon;

to say abbey desc:
	say "     This former abbey has been rebuilt to become a mid-sized library. The architecture and design shows its origins despite the renovations made. A number of simple yet elegant columns, wall sconces, and several other of the original features have been left untouched to give the library some [']character[']. The central room has a reception desk at the front, with long rows of bookshelves stretching out behind it and to the sides. [if library computer is powered]Now that the building has power, the overhead lights glow, although they sometimes flicker and dim when whatever is going on in the rest of the city causes fluctuations. The computer on the front desk has power now as well and might be of some use[else]A computer sits on the front desk, although without power, it isn't of any help right now[end if]. Small seating groups of chairs and sofas make the library quite a nice place to hang out in and read.";
	say "     There is an upper story to the library overhanging the ground floor, accessible through two stairways to the left and right, not too far from where you are standing. A third of the space has been left open in the middle, allowing people to look down into the main stacks over the wooden railings. High above, thick wooden beams form the rafters of the building's roof. To the [link]north[end link] is a room with some white sheets covering assorted furniture. To the [link]south[end link] is a glass window through which you are able to make out a dilapidated computer lab. Heading [link]east[end link] will lead further into the library.";
	if Fang is booked and Alexandra is booked:
		say "     Fang and Alexandra are on guard here, taking shifts watching by the door";
		if HP of Fang < 3:
			say ". The wolf is tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random]";
		else:
			say ". The powerful [if Fang is Male]male [else]female [end if]wolf watches in stoic silence";
		say ". The doberwoman paces around, running her paw along her nightstick as if hoping for an opportunity to use it.";
	else if Fang is booked:
		if HP of Fang < 3:
			say "     Fang is on guard here by the door on [PosPro of Fang] rope leash, tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random].";
		else:
			say "     Fang is on guard here by the door, the powerful [if Fang is Male]male [else]female [end if]wolf watching in stoic silence.";
	else if Alexandra is booked:
		say "     Alexandra is on guard here, watching by the door for trouble. The doberwoman paces around, running her paw along her nightstick as if hoping for an opportunity to use it.";

instead of sniffing Grey Abbey Library:
	say "     The Grey Abbey Library has a complex scent with numerous layers upon layers. Wood, or maybe rather furniture polish, is definitively one of them, probably stemming from some dutiful librarians doing their best to keep up the historic building properly.";
	if Alexandra is present and "Horny" is listed in Traits of Alexandra:
		say "     Recently, the strong scent of your doberwoman bitch Alexandra has joined the rest of the aromas in here. With the whiff of her femcum ever-present in your nose now, you're seriously tempted to go over to her and strip the sexy canine naked for some fun-time.";

to say GreyAbbeyLibrary_ObserveMenu:
	say "     Glancing around, you spot several locations in which you could easily hang out without being obvious to anyone. This allows you the opportunity to just wait for a while and see what might happen.";
	say "     [bold type]Whom do you want to observe?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	[TODO: Add Alexandra and her puppies]
	[]
	choose a blank row in table of fucking options;
	now title entry is "General"; [move these into their own menu]
	now sortorder entry is 1;
	now description entry is "Watch things happening in the room";
	[]
	if Urik is booked or Urik is bunkered and orc supersized breeder is not listed in companionList of Player:
		choose a blank row in table of fucking options;
		now title entry is "Urik";
		now sortorder entry is 2;
		now description entry is "Watch what the orc is up to";
	[]
	sort the table of fucking options in title order;
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
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Urik"):
				LineBreak;
				say "[GreyAbbeyLibraryObservation_Urik]"; [see file Wahn/Urik.i7x]
			else if (nam is "General"):
				say "[GreyAbbeyLibraryObservation_General]";
		else if calcnumber is 0:
			now sextablerun is 1;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GreyAbbeyLibraryObservation_General:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Entrance Door"; [move these into their own menu]
	now sortorder entry is 1;
	now description entry is "Watch the front door";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Zoomba #1"; [move these into their own menu]
	now sortorder entry is 2;
	now description entry is "Watch a little machine vacuum the library";
	[]
	sort the table of fucking options in title order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			LineBreak;
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Entrance Door"):
				say "     You decide to take a seat at the front desk, watching the entrance door of the library. Minutes pass, then some more minutes, with no one even trying to open the unlocked door from outside. Seems like the mere fact that this is a library is discouraging people from coming anywhere close to it. Somehow, you're no longer surprised by the three inch tall stack of crossword puzzle magazines in one of the drawers of the desk...";
			else if (nam is "Zoomba #1"):
				say "     Waiting for a few minutes, you see a small vacuum robot, shaped like an oversized hockey puck, emerge from behind the front desk. The little device is colored black and silver, with the red letter [']1['] emblazoned on the front half. Glancing where it is coming from, you see a charging port there. Someone must have hooked it up to the emergency power supply that is also responsible for the lights in the bunker. Having nothing much better to do, you follow Zoomba #1 around, watching it patrol with a quiet hum and effectively wipe out any dust-bunnies that dare appear in these hallowed halls.";
		else if calcnumber is 0:
			now sextablerun is 1;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	wait for any key;
	clear the screen and hyperlink list;

Table of GameRoomIDs (continued)
Object	Name
Main & 7th Street	"Main & 7th Street"

Description of Main & 7th Street is "[7thMainDesc]". It is fasttravel.
The earea of Main & 7th Street is "Outside".

after looking while player is in Main & 7th Street:
	project the Figure of Map_Library_Street_icon;

to say 7thMainDesc:
	say "     You're at the corner of 7th Street and Main, the latter of which extends further towards the north and south, while 7th Street starts right in front of the entrance of the Grey Abbey Library and runs into the distance [link]westwards[as]west[end link]. Glancing at the historic structure of the library, you remember hearing somewhere that the old city center was actually fairly close by in the past. But then modern developments shifted the focus on the downtown area, where enough free room was available to put up high rises and new construction. As a historical section of the city, the area encompasses both residential buildings, a few shops and public buildings, having been built long before the introduction of zoning laws.";
	say "     The outbreak of the nanite apocalypse has had a noticeable impact on the area. You can see trash and abandoned remains of clothing scattered here or there, and a burned-out car wreck is standing in the middle of the T crossing. Thankfully, the library seems not to be holding too much interest for wandering beasts, but that may change quickly as you move farther away from it and explore.";

instead of sniffing Main & 7th Street:
	say "     An unpleasant odor hangs in the air, emanating from the burned wreck standing in the middle of the road.";

Table of GameRoomIDs (continued)
Object	Name
Looted Shops	"Looted Shops"

Looted Shops is west of Main & 7th Street.
The earea of Looted Shops is "Outside".
Description of Looted Shops is "[LootedShopsDesc]".

to say LootedShopsDesc:
	say "     You wander down the center of the empty 7th Street to stay away from the piles of trash and shards from shattered shop windows that dominate the sidewalk on both sides. There are barely any windows that haven't been vandalized, and many of the doors were torn out of their frames or clawed to pieces. You can't say if the destruction stemmed from pure malice or just some overly large creature making an entrance; it doesn't matter which really, as the result is the same. In the [link]southwest[end link], a thin path has been cleared through the trash and debris, leading to a shop that seems to have been of continuing interest of someone - or alternatively the target of some scavengers. The sign above the door declares it to be [']George's Animal Emporium[']. Towards the [link]west[end link] 7th Street leads on through the city.";
	if "Henry Recruited" is listed in Traits of Urik:
		say "     Someone appears to have cleared away a patch of trash and rubble recently, making the entrance of a store to the [link]north[end link] accessible. While the sign above the door declares it to be some sort of flower shop, the plywood board used to cover a broken window next to a newly hung door bears the words 'Henry's Brewery', above a spray-painted depiction of a muscular black man with a large hammer. The stylized image of a snarling orc face in the lower left corner lets you guess that Urik put this here.";

instead of sniffing Looted Shops:
	say "     The cans and sacks of trash that have been rotting out on the curb for more than two weeks fill your nose with many scents, none of them particularly pleasant.";

Table of GameRoomIDs (continued)
Object	Name
Bend in 7th Street	"Bend in 7th Street"

Bend in 7th Street is west of Looted Shops.
The earea of Bend in 7th Street is "Outside".
Description of Bend in 7th Street is "[Bend7thDesc]".

to say Bend7thDesc:
	say "     7th Street has a bend in the section you're standing in right now, surrounded by fairly nondescript and boring-looking buildings. The area looks pretty quiet and empty, almost as if it was just a normal day. Before long, this impression is dispelled by the not too far away noise of some creature in a mating rut though, and if you look closely, you can see some scraps of abandoned clothing here and there, evidence of the ongoing nanite apocalypse.";
	say "     Towards the [link]east[end link] you can see the row of looted shops that you passed earlier flanking the street, while the roadway continues on towards the [link]northwest[end link].";

Table of GameRoomIDs (continued)
Object	Name
Northwest 7th Street	"Northwest 7th Street"

Northwest 7th Street is northwest of Bend in 7th Street.
The earea of Northwest 7th Street is "Outside".
Description of Northwest 7th Street is "[NW7thDesc]".

to say NW7thDesc:
	say "     7th Street continues straight in this section, both towards the northwest and southeast, still surrounded by fairly nondescript and boring-looking buildings. One place catches your eye though - there's a 'Store Everything' business advertising itself to the west. Looks like an expansive facility too, complete with a wall around the complex, and a secure-looking gate made out of thick metal bars at the front. At the gate and beyond, you can see some activity of a few people coming and going, all of which seems oddly 'normal' in the usually lawless city.";
	say "     Towards the [link]west[end link] you can step up to the storage place, or go back [link]southeast[end link] to the bend in 7th Street.";

Table of GameRoomIDs (continued)
Object	Name
Store Everything	"Store Everything"

Store Everything is west of Northwest 7th Street.
The earea of Store Everything is "Outside".
Description of Store Everything is "[StoreEverythingDesc]".

to say StoreEverythingDesc:
	say "     The 'Store Everything' facility you're standing in front of seems to have made it through the nanite apocalypse pretty well so far, from what you can see. Though not unchanged, as a sign that read 'Personal Storage Solutions' has been modified by crossing out some letters with spray-paint, so it now declares 'Person Storage Solutions'. The whole complex looks fairly secure, what with its high wall, as well as a closed gate consisting of sturdy metal bars. A similarly constructed door next to it provides entry on foot, if someone lets you in that is - as the 'ring for entry' sign next to the buzzer proclaims. Right now that might not be necessary though, as a goo person is standing just a few steps beyond the door, next to a metal post holding the buttons to unlock the door.";
	say "     Towards the [link]east[end link] you can get back to 7th Street again.";

Table of GameRoomIDs (continued)
Object	Name
Henry's Brewery	"Henry's Brewery"

Henry's Brewery is a room.
Description of Henry's Brewery is "[BreweryDesc]".

to say BreweryDesc:
	say "     After you and Urik saved him and brought him here, Henry the Hercules beetle appears to have set right to rebuilding. The wrecked interior of the flower shop has been cleaned out, with the display tables now surrounded by a mixed selection of chairs and barstools scrounged up somewhere. A sign on the wall declares his prices for beer, and there are even [one of]two[or]three[or]four[at random] customers sitting around. The door to the back room stands open, as Henry often ducks in there to check his brewing setup and supplies.";

Table of GameRoomIDs (continued)
Object	Name
George's Animal Emporium	"George's Animal Emporium"

George's Animal Emporium is southwest of Looted Shops.
Description of George's Animal Emporium is "[PetShopDesc]".

to say PetShopDesc: [TODO: Eventually move Roxana and her girlfriend in here]
	say "     You're in a mid-sized pet store that has been recently looted. Judging from the tracks in the dust and grime blown in through the open front door, numerous people and creatures came and went before you. Almost all of the shelves have been rifled through and some even knocked over, creating quite a mess in here. Empty bags of all sorts of pet food are scattered everywhere, sometimes lying in sticky pools of what is clearly cum. With the food gone and the sheer scale of the mess in here, there could be some interesting and useful items to find if one were to spend some time to [link]sort[as]sort chaotic mess[end link] through the chaotic mess. Since digging up anything of worth will be rather work intensive, this would probably not be worth the time unless you had a use for it.";

instead of sniffing George's Animal Emporium:
	say "     Myriad different smells are all around you in here, wafting up from food wrappers and toys, as well as the remnants of hasty matings between previous looters and scavengers who have visited this place. Somewhere in this mess, a bag of catnip must have been torn open, its dried contents scattered all over the ground.";

[The fur brush object and the chaotic mess are defined in Pet Shop]

Table of GameRoomIDs (continued)
Object	Name
Breakroom	"Breakroom"

Breakroom is west of Half-Renovated Room.
Breakroom is a room.
Breakroom is sleepsafe.
Description of Breakroom is "[gbreakroom desc]".
The invent of Breakroom is { "food" }.
Library Microwave is an object. It is in Breakroom. It is fixed in place. Understand "microwave" as Library Microwave.
Description of Library Microwave is "[LibraryMicrowaveDesc]".

to say LibraryMicrowaveDesc:
	say "     A black, mid-sized microwave stands on one of the countertops in the breakroom. ";
	if findwires < 2 or fixedgens < 3:
		say "Sadly, without power it doesn't work.";
	else:
		say "Now that you have restored power to the library, you can make use of it. All you need to do is put stuff in and [bold type]microwave[roman type] whatever you want!";

after looking while player is in Breakroom:
	project the Figure of Map_Library_North2_icon;

to say gbreakroom desc:
	say "     The library staff breakroom is nothing more than a remodeled version of the abbey's old kitchen. The walls are still made with the original stone blocks, while the two windows in the room have thankfully been updated. Both are simple horizontal sliders, bathing the room in a simple glow from the natural lighting outside. [if Sidney is booked]Sidney apparently decided that the breakroom needed to be put into proper order. She's pushed the furniture around in an effort to organize the space[else]The tables have been pushed around, leaving no semblance of order to them, while the countertops at least are reasonably clean[end if]. [if Macadamia is booked]On one of the counters are a ton of Mack's jars, each filled with his own special blend of salted nuts. Just looking at the cartoonish labels with Mack on the cover makes you wonder if he's thinking of starting his own side business. [end if]To the [link]west[end link] is the old kitchen's walk-in pantry.";
	if library computer is powered:
		say "     The only modern day conveniences in the breakroom are a microwave and a small fridge, both of which are ready to be used now that you have restored power to the library.";
	else:
		say "     The only modern day conveniences in the breakroom are a microwave and a small fridge. Sadly, they are both out of commission at the moment.";

Table of GameRoomIDs (continued)
Object	Name
Half-Renovated Room	"Half-Renovated Room"

Half-Renovated Room is a room.
Half-Renovated Room is north of Grey Abbey Library.
Half-Renovated Room is sleepsafe.
Description of Half-Renovated Room is "[LibrarySideRoomDesc]";

after looking while player is in Half-Renovated Room:
	project the Figure of Map_Library_North3_icon;

to say LibrarySideRoomDesc:
	say "     This large room seems to be where most of the furniture of the old abbey ended up when the building was converted to its new purpose. With its high ceiling, ample floor-space, and even a big fireplace, it may have served as a dining hall in the past. Now it is mostly filled with numerous pieces of furniture, some stacked quite high and partially covered in white sheets. The two still accessible walls are covered in scaffolding and show signs of recent work on them, as if renovations were in progress when the nanite outbreak began. Due [link]west[end link] you can make out a room with tables strewn about and plenty of counter space. Back [link]south[end link] is the main area of the library.";
	if Skarnoth is in Half-Renovated Room:
		say "     Since you brought the demon prince Skarnoth here and securely attached the long chain on his collar to the scaffolding, the imprisoned predator has done his best to improve the comfort of his prison. A soft (if somewhat threadbare and stained) couch has been dragged to stand against the back wall and shows signs of being used as a bed. He even found a high-backed armchair somewhere, which is now set up next to the fireplace. Sitting in it, the demon awaits you, wearing an arrogant expression as if he was a king awaiting supplicants.";

Table of GameRoomIDs (continued)
Object	Name
Pantry	"Pantry"

Pantry is west of Breakroom.
Pantry is a room. Description of Pantry is "[gpantry desc]".
Pantry is sleepsafe.

after looking while player is in Pantry:
	project the Figure of Map_Library_North1_icon;

to say gpantry desc:
	say "     The pantry is about the size of a walk-in closet. Inspecting the shelves on all three walls, hoping to find some extra food perhaps, you sadly only find a few leftover folders. After the building became a library, this pantry apparently ended up being turned into a simple storage room. Heading [link]east[end link] from here will lead you back into the breakroom.";

Table of GameRoomIDs (continued)
Object	Name
Computer Lab	"Computer Lab"

Computer Lab is south of Grey Abbey Library.
Computer Lab is a room. Description of Computer Lab is "[gcomputerlab desc]".
Computer Lab is sleepsafe.
The invent of Computer Lab is { "soda" }.

after looking while player is in Computer Lab:
	project the Figure of Map_Library_South2_icon;

to say gcomputerlab desc:
	project the Figure of Map_Library_South2_icon;
	say "     Stepping into the old computer lab, it appears that someone had some anger management issues judging by all of the smashed monitors and towers. Every computer used to have its own cubicle, each one about four feet wide by three feet long. While not a room you would particularly enjoy staying in, you're sure you can find some use for it. To the west is a locked door. Heading [link]north[end link] will take you back to the library entrance.";

Table of GameRoomIDs (continued)
Object	Name
Back Of The Library	"Back Of The Library"

Back Of The Library is east of Grey Abbey Library.
Back Of The Library is a room.
Back Of The Library is sleepsafe.
Description of Back Of The Library is "[gbackofthelibrary desc]".

after looking while player is in Back Of The Library:
	project the Figure of Map_Library_Back_icon;

to say gbackofthelibrary desc:
	say "     The back of the library has less bookshelves, with tables taking up the majority of the space. Glancing around the area, you can make out three tables that haven't been destroyed yet and a single sofa. The walls have the same tacky pictures that most libraries have, one of them featuring an ice skating polar bear with the caption 'Chill Out And Read'. There are also copies of famous paintings littering the walls. To the [link]south[end link] is a locked door. Heading [link]north[end link] you can see a sign that reads 'Kidz Zone' hanging over the open doorway. Due [link]east[end link] is a double glass door leading out into the back courtyard. Heading [link]west[end link] will take you back to the entrance to the library.";

Table of GameRoomIDs (continued)
Object	Name
Makeshift Rec Room	"Makeshift Rec Room"

Makeshift Rec Room is north of Back Of The Library.
Makeshift Rec Room is a room. Description of Makeshift Rec Room is "[grecroom desc]".
Makeshift Rec Room is sleepsafe.

after looking while player is in Makeshift Rec Room:
	project the Figure of Map_Library_North4_icon;

to say grecroom desc:
	say "     The Kidz Zone was at one point the place where parents would dump their kids when they needed a break. Most of the brightly colored decorations have been torn down, leaving the area with a twisted, festive feel to it. A single table is set up in the back corner of the room, while the bookshelves have all been destroyed. [if Korvin is booked or Alexandra is booked]Recently, someone found an old pool table and dragged it all the way into the rec-room, and a deck of cards has been placed on a side table. While some may prefer reading to pass the time, others apparently find that far too dull for their tastes. The idea of hustling someone at pool or poker does have its appeal. [end if][if Nala is booked]Having set up a balcony-like seat out of a broken air vent, Nala can now watch and heckle to her heart's content. [end if][if Zoe is booked]Zoe reorganized one side of the room as her workshop. The entire wall has been painted into a large fresque depicting the city and many of the creatures who dwell in it. Carboxes worth of spray can supply sit neatly in a corner. Zoe arranged a private space, hidden behind a screen, which she took the opportunity to spray-paint as well. [end if]Heading [link]south[end link] leads back to the library.";

Table of GameRoomIDs (continued)
Object	Name
Courtyard	"Courtyard"

Courtyard is east of Back Of The Library.
Courtyard is a room. Description of Courtyard is "[gcourtyard desc]".
The invent of Courtyard is { "dirty water" }.

after looking while player is in Courtyard:
	project the Figure of Map_Library_Fountain_icon;

to say gcourtyard desc:
	say "     The courtyard has an almost peaceful aura about it, which is shocking considering the state of the rest of the city. A few trees have been sporadically planted around a large fountain in the center of the courtyard. While there is no water coming out of the fountain, it is still a nice area to sit and relax. To the [link]north[end link] is a large shed, more than likely filled with gardening tools used for the courtyard. To the [link]south[end link] is the remnants of what was once a garden. Heading [link]west[end link] will take you back into the library.";

Table of GameRoomIDs (continued)
Object	Name
Large Shed	"Large Shed"

Large Shed is north of Courtyard.
Large Shed is a room. Description of Large Shed is "[glargeshed desc]".
Large Shed is sleepsafe.

when play begins:
	add "Broke-Ass Hoe" to invent of Large Shed;

after looking while player is in Large Shed:
	project the Figure of Map_Library_Shack_icon;

to say glargeshed desc:
	say "     Stepping into the shed, it's a little disconcerting how much bigger it is compared to its outward appearance. Inspecting the interior, the walls are made from basic cement, no drywall or anything, which makes sense given that this was just a place to stow gardening equipment. Most of the floor is smooth cement as well[if Philip is booked]. Philip has turned the ruined back corner into a muddy wrestling ring to roll around in, the pig prepared for any challengers[else], except for a back corner where the cement has been broken up into jagged balls of rock[end if]. Counters and cabinets line the wall on the right hand side of the shed. To the [link]south[end link] is the door leading back out to the courtyard.";

Table of GameRoomIDs (continued)
Object	Name
Grey Abbey Garden	"Grey Abbey Garden"

Grey Abbey Garden is south of Courtyard.
Grey Abbey Garden is a room. Description of Grey Abbey Garden is "[ggarden desc]".

after looking while player is in Grey Abbey Garden:
	project the Figure of Map_Library_Garden_icon;

to say ggarden desc:
	say "     Walking into the garden [if Honey is booked]shocks you at first. While most of the plant life around this part of the city is dead, the library's garden is thriving. Flowers of many different colors have begun to sprout up quickly, their speed of growth most likely linked to the nanites. Honey is buzzing back and forth between her plants, humming a cheery little melody as she works. She seems totally in her element, which shouldn't be all that surprising seeing that she is a bee now. The loving way the tiny insect girl cares for each individual plant shows that this is about more than instinct; she truly loves working with the flowers, and the small garden has grown into a sea of colors under her careful watch. You can't help but notice that the most prominent color is yellow, making honey almost appear to fade away at times[else]is slightly disheartening. Any flowers or vegetables that once grew here are long dead. When this was just an abbey, the garden must have served as the place where they would grow their food. Looking up, you are able to see the huge open window on the second floor. Who knows, maybe if it had someone to take care of it, perhaps the garden could return to its past glory? Going to the [link]north[end link] will take you back to the courtyard[end if].";

Table of GameRoomIDs (continued)
Object	Name
Grey Abbey 2F	"Grey Abbey 2F"

Grey Abbey 2F is above Grey Abbey Library.
Grey Abbey 2F is a room. Description of Grey Abbey 2F is "[abbey 2F desc]".
Grey Abbey 2F is sleepsafe.

the scent of Grey Abbey 2F is "     The smell of books permeates the air in the library; the musty odor is slightly more noticeable up here on the second floor thanks to the older, less frequently used tomes.".

after looking while player is in Grey Abbey 2F:
	project the figure of Map_Library_2F_West_icon;

to say abbey 2F desc:
	say "     The spacious second story of the library opens up in the middle, with the floor of about a third of the width of the building missing and surrounded by well-crafted wooden railings. They clearly are a part of the old abbey's features that were kept in the renovation, giving the place quite a nice atmosphere. From what therefore is basically a huge balcony, you can overlook the main stacks below. As in the rest of the building, rows of bookshelves take up most of the space, though small seating groups with sofas and cushioned chairs promise comfortable places to rest, too. There are a few secluded desks here and there, serving as quiet study places. To the [link]northeast[end link] is a shabby sitting area, while to the [link]southeast[end link] you can make out a darker spot that does not receive much light.";
	if Carl is in Grey Abbey 2F:
		say "     Since he joined you in the library, Carl moved one of the mattresses from the bunker up here, setting it up in a little camp near one of the front-side windows of the library. He spends much of his time on lookout over the approaches to the building, ready to give warning should any dangerous creatures approach.";

Table of GameRoomIDs (continued)
Object	Name
Sitting Area	"Sitting Area"

Sitting Area is northeast of Grey Abbey 2F.
Sitting Area is a room. Description of Sitting Area is "[usittingarea desc]".
Sitting Area is sleepsafe.

The invent of Sitting Area is { "chips" }.

after looking while player is in Sitting Area:
	project the figure of Map_Library_2F_North_icon;

to say usittingarea desc:
	say "     Obviously meant for small study groups, the area around you has only a few tables and couches spread about. Most of the nearby shelves have been knocked down, leaving their books strewn across the floor. Although disorganized, the area also has a very lived-in feel to it, helping you relax your nerves and reflect on your next move. Heading [link]southwest[end link] will take you back to the second floor landing, and a huge window overlooks the back of the library to the [link]southeast[end link].";
	if doberman companion is tamed:
		say "     At the edge of the open floor area, Spike has made a little man-cave for himself, dragging a mattress up from the bunker and setting a desk on its side to block the passage between two bookshelves. The little nook that created contains a number of posters of scantily dressed women";
		if Spike is visible:
			say ". The dobie frequently strokes himself off while looking at them";
		say ".";

Table of GameRoomIDs (continued)
Object	Name
Garden View	"Garden View"

Garden View is southeast of Sitting Area.
Garden View is a room. Description of Garden View is "[ugardenview desc]".
Garden View is sleepsafe.

after looking while player is in Garden View:
	project the figure of Map_Library_2F_East_icon;

to say ugardenview desc:
	say "     The huge windows at the back of the second floor allow sunlight to flood the area. Unfortunately, one of the large windows has been completely shattered. On the bright side, this allows a light breeze to flow through the rest of the library, airing out its musty scent. Looking out the window, you can see the garden and courtyard below. The sprawling city beyond it would make for a fantastic view if it wasn't in a state of ruin. There's a sitting area to the [link]northwest[end link], whereas going [link]southwest[end link] will lead you towards a dark alcove.";

Table of GameRoomIDs (continued)
Object	Name
Darkened Alcove	"Darkened Alcove"

Darkened Alcove is southwest of Garden View.
Darkened Alcove is southeast of Grey Abbey 2F.
Darkened Alcove is a room. Description of Darkened Alcove is "[udarkenedalcove desc]".
Darkened Alcove is sleepsafe.

after looking while player is in Darkened Alcove:
	project the figure of Map_Library_2F_South_icon;

to say udarkenedalcove desc:
	say "     This area goes a bit further away from the railing than the rest of the second floor. Under closer inspection, you find the reason why. What was at one point a separate room had its flimsy walls collapse, but there's no hint as to what caused it. Must have been a special collection there or so. Now it's a total shambles, with debris and fallen bookshelves everywhere. The light from the windows in the back of the library don't reach this room due to the walled-off features that were part of the original design. While still light enough to see your surroundings, it does feel gloomier and slightly creepy. From here, you can head [link]northeast[end link] towards the garden view windows or [link]northwest[end link] to return to the second floor landing. There is also a hatch in the ceiling leading [link]up[end link] into the attic.";

Table of GameRoomIDs (continued)
Object	Name
Attic	"Attic"

Attic is above Darkened Alcove.
Attic is a room. Description of Attic is "[tattic desc]".
Attic is sleepsafe.
The invent of Attic is { "water bottle" }.

to say tattic desc:
	say "     The attic is exactly what you expected it to be: chilly, badly lit, and empty. The rafters here are angled, forming a point in the ceiling. There is a small window in the far back, just big enough for a person to climb through, but that's about it. The shutters covering the window are broken, making them constantly bang against the windowsill. Climbing down the hatch will take you back into the darkened alcove.";
	if HP of Icarus is 7:
		say "     The floor is still covered in a mixture of blood and feathers, looking more like the scene of a murder than anything else. Memories flood your mind of how you broke your little songbird slut in every way imaginable.";

Table of GameRoomIDs (continued)
Object	Name
Outside Trevor Labs	"Outside Trevor Labs"

Outside Trevor Labs is a room. "     Like almost everyone else in this city, you've heard of Trevor Labs. They are - or were - a biopharm setup. Kind of new on the block, and the local news made a big stink a little while ago over accusations of skirting the edge of numerous laws in the name of science. The company's headquarters rise as a sleek and tall glass building to your [link]west[end link], surrounded by prettily arranged shrubbery and some small trees. You're not certain, but you think you can see some light in one of the windows on the first floor, in the northern half of the building. Curious. Definitively something to investigate...[line break]".
understand "lab" or "labs" as Outside Trevor Labs.
Outside Trevor Labs is fasttravel.
earea of Outside Trevor Labs is "Outside".

Away from Labs is a door. "To the [link]east[end link] of here lays the rest of the city." It is dangerous. The marea of Away from Labs is "Outside". Away from labs is east of Outside Trevor Labs and west of Wandering the City.

Table of GameRoomIDs (continued)
Object	Name
Trevor Labs Lobby	"Trevor Labs Lobby"

Trevor Labs Lobby is a room. "     You're standing in the ground floor lobby of Trevor Labs, which is fairly roomy, with open space above you, all the way to the glass roof six stories above. You can see two stairways leading [link]up[end link], to a balcony wrapping all the way around the atrium. As for the ground floor - much of the new age, blocky furniture has been ripped to shreds and thrown around, while the walls and floor are splattered in unknown liquids. Most of the gunk is creamy white, with some reddish-brown and even green streaks mixed in... all of it well dried by now thankfully. A hallway leading north seems to have been blocked by the unknown vandals, with all sorts of stuff piled up in it. On the other side in the south you see a small bistro that seems to have catered to the workers here, fairly thoroughly looted. In the [link]west[end link], you can see the start of a cubicle farm of offices. Towards the [link]east[end link], you can leave the building again.[line break]".
The earea of Trevor Labs Lobby is "Sealed".
Trevor Labs Lobby is sleepsafe.

Trevor Labs Lobby is west of Outside Trevor Labs.

Table of GameRoomIDs (continued)
Object	Name
2F Trevor Labs	"2F Trevor Labs"

2F Trevor Labs is a room. "     You're standing on a balcony wrapping all the way around the open lobby/atrium of the Trevor Labs building. Through a glass wall in the east, you can look out into the city, while a sign next to the hallway to the [link]north[end link] shows the words 'Primary Lab', with light shining through under a closed door at the very end of it. The hallway to the south reads 'Accounting', which seems much less interesting. To the west, you can see offices behind a glass divider that bears the word 'Marketing'. You could also use one of the two stairways to go [link]down[end link] into the lobby again.[line break]".
2F Trevor Labs is above Trevor Labs Lobby.
2F Trevor Labs is sleepsafe.


Table of GameRoomIDs (continued)
Object	Name
Second Floor Lab Hallway	"Second Floor Lab Hallway"

Second Floor Lab Hallway is a room. "     You're standing in a hallway on the second floor of the Trevor Labs. The lighting is dim, and beyond the two doors left and right along the walls, you can find abandoned offices and similar rooms. Only at the end of the corridor in the [link]north[end link] do you see a brilliant light shining from beneath a closed door at the end of the hallway, casting a cone of brightness into the gloom. The area is silent and smells of disinfectant. Towards the [link]south[end link] you can step back onto the balcony wrapping around the building's atrium.[line break]".
Second Floor Lab Hallway is north of 2F Trevor Labs.
Second Floor Lab Hallway is sleepsafe.

Table of GameRoomIDs (continued)
Object	Name
Primary Lab	"Primary Lab"

Primary Lab is a room. "     One of the few places in the city with working power, this lab is brilliantly lit, showing off just about all the medical and technological gear you can imagine. Trevor Labs really didn't spare any cost equipping their scientists, which isn't too surprising, as their work is what made the company money. A whole bank of computer terminals is arrayed towards the left side of the room, with monitors displaying dizzying amounts of information, largely obscure and technical. Overhead, soft humming of air conditioning is the likely reason that the room feels just a bit chilly. Towards the back of the room, you can see what appears to be some kind of multi-stage airlock, leading into a separated off smaller room behind a large, thick and reinforced window. The large warning sign reading 'Biosafety Level 3' on the window might have something to do with it. Within, what looks to be a comfortable camp has been set up, with a bed, supplies and everything. You can leave the lab by going [link]south[end link], back into the hallway that brought you here.[line break]".
Primary Lab is north of Second Floor Lab Hallway.
There is an Infection Terminal in Primary Lab. "A glowing infection terminal quietly lists all the infections in the corner.".

Table of GameRoomIDs (continued)
Object	Name
Park Entrance	"Park Entrance"

Park Entrance is a room. "     Ah, the city park. Smell that fresh pine air, and the scent of - wait no, that grass has not been mowed for quite a while. Just how long ago did all this trouble start anyway? Time seems fluid these days, making it hard for you to remember. No matter what, the grass has started to creep up onto the pavement that leads further into the park ([link]north[end link]) and all the other plants seem pretty overgrown and untamed too. The park's boundary wall remains largely intact, with a sign that welcomes you into the park, except during night hours, not that anyone is enforcing this rule at the moment.[line break]".
Park Entrance is fasttravel.
The earea of Park Entrance is "Park".
Park Entrance is sleepsafe.

Table of GameRoomIDs (continued)
Object	Name
Park Trail	"Park Trail"

Park Trail is a room.
earea of Park Trail is "Park".
Description of Park Trail is "[ParkTrailDesc]".

to say ParkTraiLDesc:
	say "     Following this north/south trail, you can see the severely overgrown state of the park all around you. All this can't be purely natural - it'd take ages to have gotten this bad. Seems like some of the spreading nanites decided to create a section of untamed wilderness right in the middle of the city. There are dense woods in almost every direction, including to the north, where the paved trail ends at a truly colossal tree that must have literally exploded out of the ground under it. It is wider than the path was in its intact state. A wooden sign pointing [link]east[end link] indicates the presence of a hiking trail going that way. In the [link]northwest[end link], there is an expanse of bamboo forest, with a bright red Torii arch forming the start of a gravel trail leading into it. [if Public Hitching Post is resolved]Besides that, you remember that there actually is a narrow way through the thick underbrush to the [link]northeast[end link], leading to a former picnic area. [end if][line break]";
	say "     Nature is abuzz and active all around you, with rustling in the woods and the occasional buzz of insects. The air is fresh here under the [short time of day] sky.";

Park Trail is north of Park Entrance.
Park Exit is a door. Park Exit is dangerous. The marea of Park Exit is "Outside". Park Exit is undescribed. Park Exit is south of Park Entrance. Outside Exploration is south of Park Exit.

Table of GameRoomIDs (continued)
Object	Name
Hiking Trail Start	"Hiking Trail Start"

Hiking Trail Start is a room.
Hiking Trail Start is east of Park Trail.
earea of Hiking Trail Start is "Park".
Description of Hiking Trail Start is "[HikingTrailStartDesc]".

to say HikingTrailStartDesc:
	say "     You're on a severely overgrown hiking trail through the city park, standing on well-trodden bare earth. Even here, just at the start of the trail, you almost feel like you're in the middle of wilderness, as there is no sight or sound of the city visible anywhere around you. With how lush and vibrant all of the plants are growing, the area has become akin to a centuries-old, undisturbed forest. Sounds of nature surround you, from wind blowing through the trees, rustling in the underbrush, birds singing, all the way to other noises from more human-like throats that sometimes crop up in the mix. Given what's happening everywhere else in the city, you guess that hearing moans and ecstatic shouting in the moderate distance isn't much of a surprise anymore.";
	say "     To the [link]west[end link], the edge of a paved path is visible past the all-encroaching plant life, while the path leads further [link]east[end link] deeper into the woods.";

Table of GameRoomIDs (continued)
Object	Name
Hiking Trail Bend	"Hiking Trail Bend"

Hiking Trail Bend is a room.
Hiking Trail Bend is east of Hiking Trail Start.
earea of Hiking Trail Bend is "Park".
Description of Hiking Trail Bend is "[HikingTrailBendDesc]".

to say HikingTrailBendDesc:
	say "     You're on a severely overgrown hiking trail through the city park, standing on well-trodden bare earth. It feels like you're in the middle of wilderness, as there is no sight or sound of the city visible anywhere around you. With how lush and vibrant all of the plants are growing, the area has become akin to a centuries-old, undisturbed forest. Sounds of nature surround you, from wind blowing through the trees, rustling in the underbrush, birds singing, all the way to other noises from more human-like throats that sometimes crop up in the mix. Given what's happening everywhere else in the city, you guess that hearing moans and ecstatic shouting in the moderate distance isn't much of a surprise anymore.";
	say "     The trail makes a bend here, leading further [Bold Type]west[roman type] and also [Bold Type]northeast[roman type], ever deeper into the woods.";


Table of GameRoomIDs (continued)
Object	Name
Hiking Trail Split	"Hiking Trail Split"

Hiking Trail Split is a room.
Hiking Trail Split is northeast of Hiking Trail Bend.
earea of Hiking Trail Split is "Park".
Description of Hiking Trail Split is "[HikingTrailSplitDesc]".

to say HikingTrailSplitDesc:
	say "     You're on a severely overgrown hiking trail through the city park, standing on well-trodden bare earth. It feels like you're in the middle of wilderness, as there is no sight or sound of the city visible anywhere around you. With how lush and vibrant all of the plants are growing, the area has become akin to a centuries-old, undisturbed forest. Sounds of nature surround you, from wind blowing through the trees, rustling in the underbrush, birds singing, all the way to other noises from more human-like throats that sometimes crop up in the mix. Given what's happening everywhere else in the city, you guess that hearing moans and ecstatic shouting in the moderate distance isn't much of a surprise anymore.";
	say "     A broken-off wooden signpost lies on the ground before you, its multiple arrows with directions mangled and mostly unreadable. Looks like something just snapped it off like a twig. This might have been deliberate, or the side effect of some larger beasts fighting with each other. No matter which, it doesn't help you now, and looking around, there doesn't appear to be any visible difference between one bit of forest and the next. Only a hiking trail to the [link]southwest[end link] seems to be a safe bet of moving towards the entrance of the park again. Continuing deeper into the woods pretty much means picking a random direction and hoping for the best from here on out.";

Hiking Direction 1 is a door. Hiking Direction 1 is dangerous. The marea of Hiking Direction 1 is "Park". Hiking Direction 1 is undescribed.
Hiking Direction 2 is a door. Hiking Direction 2 is dangerous. The marea of Hiking Direction 2 is "Park". Hiking Direction 2 is undescribed.
Hiking Direction 3 is a door. Hiking Direction 3 is dangerous. The marea of Hiking Direction 3 is "Park". Hiking Direction 3 is undescribed.
Hiking Direction 4 is a door. Hiking Direction 4 is dangerous. The marea of Hiking Direction 4 is "Park". Hiking Direction 4 is undescribed.
Hiking Direction 5 is a door. Hiking Direction 5 is dangerous. The marea of Hiking Direction 5 is "Park". Hiking Direction 5 is undescribed.
Hiking Direction 6 is a door. Hiking Direction 6 is dangerous. The marea of Hiking Direction 6 is "Park". Hiking Direction 6 is undescribed.
Hiking Direction 7 is a door. Hiking Direction 7 is dangerous. The marea of Hiking Direction 7 is "Park". Hiking Direction 7 is undescribed.

Table of GameRoomIDs (continued)
Object	Name
Hiking Exploration	"Hiking Exploration"

Hiking Exploration is a room.
Hiking Exploration is east of Hiking Direction 1.
Hiking Exploration is northeast of Hiking Direction 2.
Hiking Exploration is north of Hiking Direction 3.
Hiking Exploration is southeast of Hiking Direction 4.
Hiking Exploration is south of Hiking Direction 5.
Hiking Exploration is northwest of Hiking Direction 6.
Hiking Exploration is west of Hiking Direction 7.
Hiking Direction 1 is east of Hiking Trail Split.
Hiking Direction 2 is northeast of Hiking Trail Split.
Hiking Direction 3 is north of Hiking Trail Split.
Hiking Direction 4 is southeast of Hiking Trail Split.
Hiking Direction 5 is south of Hiking Trail Split.
Hiking Direction 6 is northwest of Hiking Trail Split.
Hiking Direction 7 is west of Hiking Trail Split.



Table of GameRoomIDs (continued)
Object	Name
Green Apartment Building	"Green Apartment Building"

Green Apartment Building is a room. It is fasttravel.
Description of Green Apartment Building is "[GreenAptDesc]".
The earea of Green Apartment Building is "Outside".

to say GreenAptDesc:
	say "     Standing in a somewhat out of the way neighborhood, a green-tinted apartment building rises before you, six stories tall. A fire escape clings to the outside of its structure, next to a colossal set of solar panels that stretch up the south wall of the building for its full height. The fire escape's retracting lowest set of stairs are weighted down with a number of cement blocks, allowing easy access to the roof. The place and its surroundings seem fairly quiet - while the streets around here are filled with the usual abandoned cars, sacks of uncollected trash and scattered clothes, you haven't actually seen any large groups of infected hanging around or roaming the streets. The petrified herm hyena standing in front of the entrance door might have something to do with that...";

Table of GameRoomIDs (continued)
Object	Name
Overgrown Rooftop	"Overgrown Rooftop"

Overgrown Rooftop is a room. Overgrown Rooftop is above Green Apartment Building.
Description of Overgrown Rooftop is "[GreenRoofDesc]";

to say GreenRoofDesc:
	say "     The roof of this apartment building is at least partially covered in soil, allowing a rooftop garden to grow on it. You see a large section of green grass (getting a bit long, now that no one is taking care of it anymore), some bushes and even a large planter with a cherry tree next to a vegetable garden. Must have been quite a nice spot to hang out on for the inhabitants. Looking over to the rooftop access to the interior of the building, you find that it has been thoroughly barricaded - from the inside, it seems. Thus the only way to get down again is the fire escape attached to one outside face of the freestanding building.";
	if staircaselocation is 2:
		say "     There appears to be a ghostly staircase just a step away from the back right corner of the building. You'd have missed it if you hadn't known it was there. Maybe you could go even further by using it up? (Or plunge to your death as you step off the roof... it does look incredibly transparent to the eyes.)";

Table of GameRoomIDs (continued)
Object	Name
Green Lobby	"Green Lobby"

Green Lobby is a room. Green Lobby is inside from Green Apartment Building.
Description of Green Lobby is "[GreenLobbyDesc]";

to say GreenLobbyDesc:
	say "     Just inside the building is a small lobby, with numerous post-boxes on one wall and a (surprisingly) still powered elevator. It opens up freely as you push the dimly glowing button, revealing a generous cabin, complete with a control panel that only has one button, for the lobby. Everything else is keyholes, four to each floor. Someone sure liked their privacy. Checking the interior stairway access door right next to it, you find it jammed; a glance through its little window reveals that about twenty feet of the stairway are completely barricaded by mixed pieces of furniture. Four doorways lead off into what must be the ground floor apartments - 1A, 1B, 1C and 1D. [if HP of Otto < 4]The first two and the last all have been nailed shut and the words 'Carnivorous Furniture' spray-painted on them[else]1A and 1D have been nailed shut and the words 'Closed for Repair' carefully stencilled onto signs hanging from their doorknobs[end if], while the door of apartment 1C is just leaned to[if HP of Otto > 3]. The door marked as 1B looks newly cleaned and you remember that this is where Doctor Fuchs has moved into[end if].";

Table of GameRoomIDs (continued)
Object	Name
Red Apartment Building	"Red Apartment"
Red Apartment Building	"Red Apartment Building"
[Upper entry is a bugfix for a renamed room]

Red Apartment Building is a room. It is fasttravel.
Description of Red Apartment Building is "[RedAptDesc]".
The earea of Red Apartment Building is "Outside".

to say RedAptDesc:
	say "     Standing in a somewhat out of the way neighborhood, a red-tinted apartment building rises before you, four stories tall. A fire escape clings to the outside of its structure, its retracting lowest set of stairs out of reach due to sturdy springs holding it up. In the area around the building, you can see several groups of partially infected people, mooching around and murmuring as they give you looks.";

Table of GameRoomIDs (continued)
Object	Name
Red Apartment 1st Floor	"Red Apartment 1st Floor"
Red Apartment 2nd Floor	"Red Apartment 2nd Floor"
Red Apartment 3rd Floor	"Red Apartment 3rd Floor"
Red Apartment 4th Floor	"Red Apartment 4th Floor"

Red Apartment 1st Floor is a room.
Red Apartment 1st Floor is inside from Red Apartment Building.
Description of Red Apartment 1st Floor is "[RedApt1stDesc]".

to say RedApt1stDesc:
	say "     The interior lobby of the red apartment building is marked by the typical sights of the nanite apocalypse: Scattered clothes and possessions of people who were overtaken by feral infected, combined with crusty patches of dried cum on the floor, walls and sometimes even ceiling. The fact that the building has fairly large glass doors on two sides seems to have worked against the inhabitants, making them easily visible for passing predators. Several of the doors are marked with claw-slashes and half-torn out of their frames, while others show more calculated destruction. There must have been a crowbar at work for those, likely from looters going for a quick smash and grab. A stairway allows access to the next floor [Bold Type]up[roman type].";

Red Apartment 2nd Floor is a room.
Red Apartment 2nd Floor is above Red Apartment 1st Floor.
Description of Red Apartment 2nd Floor is "[RedApt2ndDesc]".

to say RedApt2ndDesc:
	say "     The middle section of the red apartment building seems to have been a sort of communal area, with a seating area of several sofas, as well as a vending machine. Of course, the latter has been broken into and cleaned out down to the last chocolate bar, and one sofa has been pushed to block the end of the stairway coming up from below. Two other pieces of furniture seem to be missing entirely, with scratchmarks on the linoleum floor allowing a guess that they were dragged into one apartment in the [link]northeast[end link]. Glancing around, you see less damage than on the floor below, with only one or two doors having experienced a looter's touch. A stairway on the other side of the room leads further [Bold Type]up[roman type] in the building.";

Red Apartment 3rd Floor is a room.
Red Apartment 3rd Floor is above Red Apartment 2nd Floor.
Description of Red Apartment 3rd Floor is "[RedApt3rdDesc]".

to say RedApt3rdDesc:
	say "     The middle section of the red apartment building seems to have been a sort of communal area, with formerly neat rows of chairs lined up before a small podium and whiteboard. The typical chaos of the city shows in the fact that several chairs are knocked over or pushed together in untidy clumps, and someone has scrawled lewd, but surprisingly artistic scenes of varied interspecies sex on the whole board. The doors of apartments all around you appear untouched. A stairway on the other side of the room leads further [Bold Type]up[roman type] in the building.";

Red Apartment 4th Floor is a room.
Red Apartment 4th Floor is above Red Apartment 3rd Floor.
Description of Red Apartment 4th Floor is "[RedApt4thDesc]".

to say RedApt4thDesc:
	say "     The middle section of the red apartment building seems to have been a sort of communal area, which meant a community garden under large skylights. The front section appears to be mostly decorative, while further back, there are a number of fruit-bearing plants, surprisingly still with their rich bounty attached. Yet the temptation to go help yourself to some is quickly suppressed as you notice that at least one large, spindly plant is actually a monstrously large stick insect, standing perfectly motionless among the greenery with raised striking claws. It doesn't react in any way to your presence, or being spoken to. The doors of apartments all around you appear untouched, and a stairway leads [Bold Type]down[roman type] to the next lower floor. Finally, there is a fairly inconspicuous 'roof access' door on the opposite side of the room.";

Table of GameRoomIDs (continued)
Object	Name
Red Apartment Rooftop	"Red Apartment Rooftop"

Red Apartment Rooftop is a room.
Red Apartment Rooftop is above Red Apartment 4th Floor.
Description of Red Apartment Rooftop is "[RedRoofDesc]";

to say RedRoofDesc:
	say "     The roof of this apartment building is covered in loose gravel, with some lichen and moss growing on it. The center section is made up of large skylights, allowing the sun to reach the community garden inside.";
	if staircaselocation is 1:
		say "     There appears to be a ghostly staircase just a step away from the back left corner of the building. You'd have missed it if you hadn't known it was there. Maybe you could go even further by using it up? (Or plunge to your death as you step off the roof... it does look incredibly transparent to the eyes.)";

Table of GameRoomIDs (continued)
Object	Name
Dry Plains	"Dry Plains"

understand "plains" as Dry Plains.

LastTrashSearchTurn is a number that varies. [@Tag:NotSaved]

Dry Plains is a room. It is fasttravel. "     At this edge of the city, the thinning buildings have collapsed before opening up to the great plain stretching away from you, all the way to the harsh and insurmountable cliff-faces of Mount Shirley, the northern barrier of the wide river valley the city was originally founded in. You don't see any kind of military cordon here, making you suspect those already infected have spread out here before the military was mobilized to close it off. Smoke rising far in the northwest makes you guess that their lines are probably there, at the chokepoint between the mountain and the expansive Pacifica Nature Preserve. Some hoof prints you spot in a sandy patch nearby furthers the assumption that it is no longer human civilization that rules here. As for the open grasslands, it looks like something leveled just about all of the scattered buildings further out. Now all that is left of them among the dirt and grassland are mounds of rubble. The plains are dry and brown with only a few trees or bushes scattered across the rolling plains before you.[line break]".
The earea of Dry Plains is "Plains".
Plains Door is a door. The marea of plains door is "Plains". "The plains stretch out before you, with slight rolls in the landscape and dotted with fallen buildings and other rare features.". Plains Door is dangerous. Plains door is east of dry plains.
Plains door is west of Wandering the Plains.

the scent of the dry plains is "     The dry plains smell lightly of dry grasses and disturbed earth. There is little of man-made origin to smell on the air except the scents coming from the city behind you.".

Table of GameRoomIDs (continued)
Object	Name
Wandering the Plains	"Wandering the Plains"
Wandering the Plains	"wandering the plains"

Wandering the Plains is a room.

the scent of the Wandering the Plains is "     The dry plains smell lightly of dry grasses and disturbed earth. There is little of man-made origin to smell on the air except the scents coming from the city behind you.".




Table of GameRoomIDs (continued)
Object	Name
Loading Dock	"Loading Dock"

Loading Dock is a room.
Description of Loading Dock is "     This loading dock is discreetly placed behind and down the hill from Trevor Labs. The security gate outside it has been broken open. From the scattered clothes and splatters of dried, musky fluids around, it seems like some of those infected within got out before the security doors were closed. Using the keycard you found, you can slip in this way to go [link]down[end link] into the underground labs if you'd like. Otherwise, you can head [link]east[end link] around the hill again to get back to the main road.[line break]".
The earea of Loading Dock is "Sealed".

the scent of Loading Dock is "     This place has the stale smell of sex, as if nothing's left this place for some time.".

When Play begins:
	change east exit of Loading Dock to Outside Trevor Labs;

basement portal is a door. basement portal is dangerous.
Down of Trevor Labs Lobby is basement portal.

basement security door is a door. basement security door is dangerous.
Down of Loading Dock is basement security door.

Table of GameRoomIDs (continued)
Object	Name
dark basement	"dark basement"

dark basement is a room.
dark basement is below basement portal.
The marea of basement portal is "Sealed". The basement portal is open. Description of Basement Portal is "A foot-thick steel door that looks like it was designed more to keep something in, than anything else... ". understand "basement" and "portal" as the basement portal.

Table of GameRoomIDs (continued)
Object	Name
darkbasement2	"darkbasement2"

darkbasement2 is a room. [placeholder room for the doors]
darkbasement2 is below basement security door.
The marea of basement security door is "Sealed". The basement security door is open. Description of Basement security door is "A foot-thick steel door that looks like it was designed more to keep something in, than anything else... ". understand "basement", "portal" and "door" as the basement security door.

Basic Locations ends here.
