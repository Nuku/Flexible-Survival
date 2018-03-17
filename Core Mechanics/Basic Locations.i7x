Version 1 of Basic Locations by Core Mechanics begins here.
[Version 1.5 - Library Expansion - Luneth]

Grey Abbey Library is a room.  Grey Abbey Library is fasttravel.  Grey Abbey Library is sleepsafe.
The description of Grey Abbey Library is "[abbey desc]".
Bunker is a room.  The description of Bunker is "[bunker desc]".
The invent of Bunker is { "face mask","medkit","medkit","water bottle","water bottle","water bottle","food","food","pocketknife","cot" }.
Library door is a door. "Solid oak doors lend a stately appearance to the library.". Library door is dangerous.
East of 7th Street & Main is the Library Door. "Solid oak doors lend a stately appearance to the library.".
East of library door is Grey Abbey Library.
Bunker is below Grey Abbey Library.
The player is in Bunker.
The marea of library door is "Outside".

to say bunker desc:
	say "     Sparsely appointed, this bunker was built as a fallout shelter back during the Cold War, then abandoned to become a forgotten curiosity at best. You are standing in the main bunker room, a rectangular chamber measuring about 60 feet in length and 30 feet in width. Its walls are solid concrete and long rows of shelves are built into the back wall. There are several large storage lockers in the bunker as well. They look like a good place to store all your extra stuff. A long double row of simple metal beds is bolted to the floor and walls for those taking shelter here to [bold type]rest[roman type] upon";
	if "cot" is listed in invent of Bunker:
		say ".  One of the cots apparently was poorly installed and the bolts attaching it to the floor have come loose. You could take it along if you'd like";
	say ". The small sink taking up a corner of the room seems to be broken, producing no water no matter how much the knob is turned. Two doorways to the north and northeast lead to adjoining rooms - showers and a small restroom, while a thicker, secure-looking door opens to the stairwell used to go [bold type]outside[roman type]. Your own personal room is to the south, it's actually just a large maintenance closet but at least its private.";
	if "old boombox" is listed in invent of Bunker:
		say "     You have set up the old boombox in one corner where it continues to play despite not being plugged into anything. Maybe it has really amazing batteries - or draws energy some other way. No matter what, it provides a mix of tunes and the occasional weather report on the continuing heat wave. Fiddling with the dials can get different songs and genres of music, but no actual news or broadcast radio. The radio broadcaster you hear seems the same across the stations, though his tone and delivery suits the format of the current [']station[']. Its dials and settings change on their own from time to time as if to provide music to suit the situation or dropping its volume when you're taking a nap.";
	if RestoreMode is true:
		[WaitLineBreak;]
		now RestoreMode is false;
		try restoring the game;
		if maxHP of player is 0:
			try restarting the game;


North of Bunker is Communal Shower.
Communal Shower is a room. The description of Communal Shower is "[bshower desc]".
lastShowerUse is a number that varies. lastShowerUse is usually 10000.

to say bshower desc:
	say "     The bunker has a small communal shower with a pretty simple setup. The first thing one sees when entering is a short bench for people to sit on as they undress. Walking to the end of a short dividing wall and then stepping over a raised border that keeps the water in, you're in the actual shower cabin a few seconds later - a tiled space with five showerheads on the walls all around and a large drain in the middle.";
	if library computer is powered:
		say "     Experimentally turning the knobs under one of the showerheads, you get a light spray of water coming out of it. Seems like you can at least wash here now. Drinking the water wouldn't be advisable though, as you vaguely remember mentions of the use of lead piping from the tour you once took through the place. As corroded as that has to be by now, you decide not to risk lead poisoning on top of all your other problems.";
	else:
		say "     Experimentally turning the knobs under one of the showerheads, you get... nothing. Seems like the showers are out of commission for the moment. Thinking back to the tour of the place you joined a year back (which is why you knew of the bunker in the first place), you remember them saying that there is a large water tank somewhere in the underground nearby. A pump powered by batteries is supposed to supply the bunker - but those will be long deterioated by now. Maybe you can get the water running by [bold type]supplying the library with power[roman type] instead.";

Northeast of Bunker is Underground Restroom.
Underground Restroom is a room. The description of Underground Restroom is "[brestroom desc]".

to say brestroom desc:
	say "     This room is very bare bones - just a small chamber with several stalls containing toilets. Checking one out, you realize that it isn't a typical piece of bathroom installation. There is no water or anything really under the tightly closing lid... just what seems like a long drop into darkness. You try not to imagine how the lower end of the shaft might look like, or smell.";

South of Bunker is Maintenance Closet.
Maintenance Closet is a room. The description of Maintenance Closet is "[bmaintenance desc]".

to say bmaintenance desc:
	say "     The maintenance room you have turned into your own private lodgings. Looking around, it isn't very big by any standards, about the size of a walk in closet. Along the back wall is a twin sized bed, that more than likely the old janitor used for naps, or whos knows maybe he even stayed here some days. The walls on the left and right have some shelves and filing cabinets spread out, nothing of any real interest in or on them. But who knows, you may find a use for them in time.";

to say abbey desc:
	say "     This former abbey has been rebuilt to become a mid-sized library. The architecture and design shows its origins despite the renovations made - a number of simple yet elegant columns, wall sconces and several other of the original features have been kept to give the library some 'character'. The central room has a reception desk at the front, with long rows of bookshelves stretching out behind it and to the sides. Small seating groups chairs and sofas make the library quite a nice place to hang out in and read. There is an upper story to the library too, overhanging the ground floor with about a third of the floor left open in the middle, allowing people to look down into the main stacks over the wooden railings. A stairway leads up there not too far from where you're standing. High above, thick wooden beams form the rafters of the building's roof. To the north you can make out a room with some softly flowing white sheets covering assorted furniture.";
	say "     [if library computer is powered]Now that the building has power, the overhead lights glow, although they sometimes flicker and dim as whatever goes on in the rest of the city right now causes fluctuations. The computer on the front desk has power as well now and might be of some use[else]A computer sits on the front desk, although without power it isn't of any help right now[end if]. You came here because you remembered there was a disused bunker in the basement. It's kept you alive, so far. To the south is a glass window, peering inside you are able to make out what must have been at some point the computer lab. Heading east will lead further into the library.";
	if Fang is booked and Alexandra is booked:
		say "     Fang and Alexandra are on guard here, taking shifts watching by the door";
		if HP of Fang < 3:
			say ".  The wolf tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random]";
		else:
			say ".  The powerful male wolf watches in stoic silence";
		say ".  The doberwoman paces around, running her paw along her nightstick as if hoping for an opportunity to use it.";
	else if Fang is booked:
		if HP of Fang < 3:
			say "     Fang is on guard here by the door on his rope leash, tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random].";
		else:
			say "     Fang is on guard here by the door, the powerful male wolf watching in stoic silence.";
	else if Alexandra is booked:
		say "     Alexandra is on guard here, watching by the door for trouble. The doberwoman paces around, running her paw along her nightstick as if hoping for an opportunity to use it.";

West of Half-Renovated Room is Breakroom.
Breakroom is a room. The description of Breakroom is "[gbreakroom desc]".
The invent of Breakroom is { "food" }.
Library Microwave is an object. It is in Breakroom. It is fixed in place. Understand "microwave" as Library Microwave.
The description of Library Microwave is "A mid-sized black microwave stands on one of the countertops in the breakroom. Now that you have restored power to the library you can make use of it. All you need to do is put stuff in and [bold type]microwave[roman type] whatever you want!".

to say gbreakroom desc:
	say "     The library staff breakroom is nothing more than a remodeled version of the abbeys old kitchen. The walls are still made with the original stone blocks, while the two windows in the room have thankfully been updated. Both are simple horizontal sliders, leaving the room with a simple glow from the natural lighting outside.[if Sidney is booked] Sidney apparently decided that the breakroom needed to be put into proper order. She must have worked her butt off pushing the furniture around, at least now the breakroom is more organized.[else] The tables have been pushed around leaving no semblance of order to them, while the countertops at least are reasonably clean.[end if][if Macadamia is booked] On one of the counters are a ton of Mack's jars, each filled with his own special blend of salted nuts. Just looking at the cartoonish labels with Mack on the cover makes you wonder if he’s thinking of starting his own side business.[end if] To the west is the old kitchens walk-in pantry.";
	if library computer is powered:
		say "     The only modern day conveniences in the breakroom are a microwave and a small fridge, both of which are ready to be used now that you have restored the power to the library.";
	else:
		say "     The only modern day conveniences in the breakroom are a microwave and a small fridge, sadly they are both out of commission at the moment.";


West of Breakroom is Pantry.
Pantry is a room. The description of Pantry is "[gpantry desc]".

to say gpantry desc:
	say "     The pantry is about the size of a walk-in closet. Inspecting the shelves on all three walls, hoping to find some extra food perhaps, you sadly only find a few left over folders. Apparently after the building became a library, this pantry ended up being turned into a simple storage room. Heading back east will lead you back into the breakroom.";

South of Grey Abbey Library is Computer Lab.
Computer Lab is a room. The description of Computer Lab is "[gcomputerlab desc]".
The invent of Computer Lab is { "soda" }.

to say gcomputerlab desc:
	say "     Stepping into the old computer lab, it appears someone had some slight rage issues, judging by all of the smashed monitors and towers. Every computer apparently had its own cubicle, each one about four feet wide by three feet long. While not a room you would particularly enjoy staying in, your sure you could find some use for it. To the west is a locked door. Heading north will take you back to the library entrance.";

East of Grey Abbey Library is Back Of The Library.
Back Of The Library is a room. The description of Back Of The Library is "[gbackofthelibrary desc]".

to say gbackofthelibrary desc:
	say "     The back of the library has less bookshelves, with tables taking up the majority of the space. Glancing around the area, you can make out three tables that haven't been destroyed yet and a single sofa. The walls have the same tacky pictures that most libraries have. Such as one that has an ice skating polar bear which reads underneath 'Chill Out And Read', there are also copies of famous paintings littering the walls. To the south is a locked door. Heading north you can see a sign that reads 'Kidz Zone' hanging over the open doorway. Due east is a double glass door leading out into the back courtyard. Heading west will take you back to the entrance to the library.";

North of Back Of The Library is Makeshift Rec Room.
Makeshift Rec Room is a room. The description of Makeshift Rec Room is "[grecroom desc]".

to say grecroom desc:
	say "     The Kidz Zone was at one point the place where parents would dump their kids when they needed a break. Most of the brightly colored decorations have been torn down, leaving the area to have a twisted sort of festive feel to it. A single table is set up in the back corner of the room, while the bookshelves have all been destroyed, talk about a serious tantrum.[if Nala is booked] Having set up a balcony like seat out of a broken air vent, Nala watches everyone coming into the rec room as new and fun heckle material.[end if] Heading south will return you to the back of the library."

East of Back Of The Library is Courtyard.
Courtyard is a room. The description of Courtyard is "[gcourtyard desc]".
The invent of Courtyard is { "dirty water" }.

to say gcourtyard desc:
	say "     The courtyard has an almost peaceful presence about it, which is shocking considering the state of the rest of the city. A few trees have been sporadically planted around a large fountain in the center of the courtyard. While there is no water coming out of the fountain, it is still a nice area to sit and relax. To the north is a large shed, more than likely filled with gardening tools used for the courtyard. To the south is the remnants of what was once a garden. Heading west will take you back into the library.";

North of Courtyard is Large Shed.
Large Shed is a room. The description of Large Shed is "[glargeshed desc]".

to say glargeshed desc:
	say "     Stepping into the shed, it's a little disconcerting how much bigger it appears compared to the outward appearance. Inspecting the interior, the walls are made basic cement, no drywall or anything, makes sense since this was merely a place to keep gardening equipment. Most of the floor is smooth cement as well,[if Philip is booked] Philip has not just created his own mud sty, but a fun wrestling ring in the back corner ready for any challengers.[else]except a back corner where the cement has been broken up, just appearing in jagged balls of rock.[end if] The shed isn't completely without any features though, counters and cabinets line the wall on the right hand side of the shed. To the south is the door leading back out to the courtyard.";

South of Courtyard is Garden.
Garden is a room. The description of Garden is "[ggarden desc]".

to say ggarden desc:
	say "     [if Honey is booked]Walking into the garden is shocks you at first. While most of the plant life around this part of the city is dead, the libraries garden is thriving. Flowers of many different shades have begun to sprout up quickly, more than likely their speed of growth having to do with the nanites themselves. Honey is buzzing back and forth between her plants, humming a cheery little melody as she works. She seems totally in her element which shouldn't be all that surprising seeing as she is a bee now after all. The loving way the tiny insect girl cares for each individual plant shows this is about more than instinct, she actually truly loves working with flowers. The small garden has grown into a sea of colors. You can't help but snicker a bit at the fact that the most prominent color however is yellow, making honey appear to fade away at times.[else]Walking into the garden is slightly disheartening. Any flowers or vegetables that once grew here are long dead. When this was just an abbey the garden must have served as the place where they would grow their food. Looking up, you are able to see the huge open window on the second floor. Who knows maybe if it had someone to take care of it, perhaps the garden could return to its past glory. Going to the north will take you back to the courtyard.[end if]";

Grey Abbey Library is below Grey Abbey 2F.
Grey Abbey 2F is a room.  The description of Grey Abbey 2F is "[abbey 2F desc]".
the scent of Grey Abbey 2F is "The smell of books permeates the air in the library, the musty odour is slightly more noticeable up here on the second floor thanks to the older, less frequently used tomes.".

to say abbey 2F desc:
	say "     The spacious second story of the library opens up in the middle, with the floor of about a third of the width of the building missing and surrounded by well-crafted wooden railings. They clearly are a part of the old abbey's features that was kept in the renovation, giving the place quite a nice atmosphere. From what therefore is basically a huge balcony, you can overlook the main stacks below. As in the rest of the building, rows of bookshelves take up most of the space, though small seating groups with sofas and cushioned chairs promise comfortable places to rest too. There are a few secluded desks here and there, serving as quiet study places. To the northeast is a wrecked sitting area, while to the southeast you can make out a darkened area that does not receive much light.";

Northeast of Grey Abbey 2F is Sitting Area.
Sitting Area is a room. The description of Sitting Area is "[usittingarea desc]".
The invent of Sitting Area is { "chips" }.

to say usittingarea desc:
	say "     Obviously meant for small study groups. The area around you has a few tables and couches spread about. Most of the nearby shelves have been knocked down, leaving their books strewn across the floor. While for the most part it appears to be a disaster area, at the same time it has a very lived in feel to it, leaving you with a relaxed feeling rather than a uneasy one. Heading to the southwest will take you back to the second floor landing, while to the southeast you can head towards the huge window overlooking the back of the library.";

Southeast of Sitting Area is Garden View.
Garden View is a room. The description of Garden View is "[ugardenview desc]".

to say ugardenview desc:
	say "     The huge windows at the back of the second floor allow sunlight to flood the area. Unfortunately one of the large windows has been completely shattered, the plus side is that it also allows a light breeze to flow through the rest of the library. Looking out the window you can see the garden and courtyard below, gazing higher however leaves you with a fantastic view of the city. Well it would be fantastic if most of the city wasn't in a state of ruin. Heading northwest will take you to the sitting area, while going southwest will lead you towards a dark alcove.";

Southwest of Garden View is Darkened Alcove.
Southeast of Grey Abbey 2F is Darkened Alcove.
Darkened Alcove is a room. The description of Darkened Alcove is "[udarkenedalcove desc]".

to say udarkenedalcove desc:
	say "     This area goes a bit further away from the railing than the rest of the second floor. Under closer inspection you find the reason why, what was at one point an office is now had its flimsy walls collapse, no hint though as to what caused it. The light from the windows in the back of library dont reach this room, due to the walled off features that were part of the original design. While still light enough to see your surroundings, it does present a slightly creepy shadow effect. You can head northeast to reach the garden view windows, or head northwest to get back to the landing to the second floor. There is also a hatch in the ceiling which will allow you to head up into the attic.";

Darkened Alcove is below Attic.
Attic is a room. The description of Attic is "[tattic desc]".
The invent of Attic is { "water bottle" }.

to say tattic desc:
	say "     The attic is exactly what you would expect it to be. Chilly, badly lit, and empty. The rafters here head up on an angle forming  a point in the ceiling. There is a small window in the far back, just big enough for a person to climb through but that's about it. The shutters covering the window are broken making them constantly bang back against the windowsill. Climbing down the hatch will take you back into the darkened alcove.";
	if HP of icarus is 7:
		say "     The floor is still covered in a mixture of blood and feathers, looking more like the scene of a murder than anything else. Memories flood your mind of how you broke your little songbird slut in every way imaginable.";

Outside Trevor Labs is a room. "Like about everyone in this city, you've heard of Trevor Labs. They are - or were - a biopharm setup. Kind of new on the block, and the local news made a big stink a little while ago over accusations of skirting the edge of numerous laws in the name of science. The company's headquarters rise as a sleek and tall glass building to your west. You're not certain but you think you can see some light in one of the windows, visible in the [time of day] light. Curious. Definitively something to investigate...".
understand "lab" or "labs" as Outside Trevor Labs.
Outside Trevor Labs is fasttravel.
earea of Outside Trevor Labs is "Outside".

Away from Labs is a door. "East of here lays the rest of the city." It is dangerous. The marea of Away from Labs is "Outside". Away from labs is east of Outside Trevor Labs and west of Wandering the City.

Trevor Labs Lobby is a room. "You're standing in the ground floor lobby of Trevor Labs. New age furniture has been ripped to shreds and thrown around, while the walls and floor are splattered in unknown liquids. Most of the gunk is creamy white, with some reddish-brown and even green streaks mixed in... all of it well dried by now thankfully. It is somewhat dark in here, but some emergency lights draw your attention to the stairs leading up and down.".

West of Outside Trevor Labs is Trevor Labs Lobby.

2F Trevor Labs is a room. "You're standing in a hallway on the second floor of the Trevor Labs. The lighting is dim, except for brilliant light shining from beneath a closed door at the end of the hallway. It casts a cone of brightness into the gloom. The area is silent and smells of disinfectant. There does not seem to be much here to look at besides a broken water cooler and a motivational poster with a kitten, encouraging you to hang in there.".
Trevor Labs Lobby is below 2F Trevor Labs.

Primary Lab is a room. "One of the few places in the city with working power, this lab is brilliantly lit, showing off banks of busy computer terminals displaying dizzying amounts of information, largely obscure and technical. Overhead, soft humming of air conditioning is the likely reason that the room feels just a bit chilly. There is an especially comfy chair resting before the largest computer. There is only one window here, and it is mostly blocked by filing cabinets. Perhaps it is the light you saw outside.".
Primary Lab is north of 2F Trevor Labs.
There is an Infection Terminal in Primary Lab. "A glowing infection terminal quietly lists all the infections in the corner.".

Park Entrance is a room. "Ah, the city park. Smell that fresh pine air, and the scent of - wait no, that grass has not been mowed for quite a while. Just how long ago did all this trouble start anyway? Time seems fluid these days, making it hard for you to remember. No matter what, the grass has started to creep up onto the pavement that leads further into the park (north) and all the other plants seem pretty overgrown and untamed too. The park's boundary wall remains largely intact, with a sign that welcomes you into the park, except during night hours, not that anyone is enforcing this rule at the moment.".
Park Entrance is fasttravel.

Park Trail is a room. "Following this North/South trail, you can see the severely overgrown state of the park all around you. All this can't be purely natural - it'd take ages to have gotten this bad. Seems like some of the spreading nanites decided to create a section of untamed wilderness right in the middle of the city. There are dense woods in almost every direction, including to the North, where the paved trail ends at a tree that must have literally exploded out of the ground under it. In the Northwest, there is a small expanse of bamboo forest, with a Torii arch forming the start of a narrow gravel trail leading into it.[line break]The path northwest looks safe and strangely peaceful, but it'll be easy to become lost in the rest of the thick woods of the park - though perhaps exploring might have its own rewards. You can hear soft clopping sounds just beyond sight, and the occasional buzz of insects. The air is fresh here under the [short time of day] sky.".
earea of Park Trail is "Park".

North of Park Entrance is Park Trail.
Park Exit is a door. Park Exit is dangerous. The marea of Park Exit is "Outside". Park Exit is undescribed. Park Exit is south of Park Entrance. South of Park Exit is Outside Exploration.
East of Park Trail is Faint Trail.
East of Faint Trail is Lost in the Woods.

Faint Trail is a door.
The description of a faint trail is "A faint trail that heads eastwards into the deep woods. Looks dangerous, who knows what is lurking out there...".
Faint Trail is dangerous.
The marea of Faint Trail is "Park".


Green Apartment Building is a room. It is fasttravel.
The description of Green Apartment Building is "[GreenAptDesc]".
The earea of Green Apartment Building is "Outside".

to say GreenAptDesc:
	say "     Standing in a somewhat out of the way neighborhood, a green-tinted apartment building rises before you, six stories tall. A fire escape clings to the outside of its structure, its retracting lowest set of stairs weighted down with a number of cement blocks, allowing easy access to the roof. The place and its surroundings seem fairly quiet - while the streets around here are filled with the usual abandoned cars, sacks of uncollected trash and scattered clothes, you haven't actually seen any large groups of infected hanging around or roaming the streets. The petrified herm hyena standing in front of the entrance door might have something to do with that...";

Overgrown Rooftop is a room. Overgrown Rooftop is above Green Apartment Building.
The description of Overgrown Rooftop is "[GreenRoofDesc]";

to say GreenRoofDesc:
	say "     The roof of this apartment building is at least partially covered in soil, allowing a rooftop garden to grow on it. You see a large section of green grass (getting a bit long, now that no one is taking care of it anymore), some bushes and even a large planter with a cherry tree next to a vegetable garden. Must have been quite a nice spot to hang out on for the inhabitants. Looking over to the rooftop access to the interior of the building, you find that it has been thoroughly barricaded - from the inside, it seems. Thus the only way to get down again is the fire escape attached to one outside face of the freestanding building.";
	if staircaselocation is 2:
		say "     There appears to be a ghostly staircase just a step away from the back right corner of the building. You'd have missed it if you hadn't known it was there. Maybe you could go even further by using it up? (Or plunge to your death as you step off the roof... it does look incredibly transparent to the eyes.)";

Green Lobby is a room. Green Lobby is inside from Green Apartment Building.
The description of Green Lobby is "[GreenLobbyDesc]";

to say GreenLobbyDesc:
	say "     Just inside the building is a small lobby, with numerous post-boxes on one wall and a (surprisingly) still powered elevator. It opens up freely as you push the dimly glowing button, revealing a generous cabin, complete with a control panel that only has one button, for the lobby. Everything else is keyholes, four to a each floor. Someone sure liked their privacy. Checking the interior stairway access door right next to it, you find it jammed; a glance through its little window reveals that about 20 feet of the stairway are completely barricaded by mixed pieces of furniture. Four doorways lead off into what must be the ground floor apartments - 1A, 1B, 1C and 1D. The first two and the last all have been nailed shut and the words 'Carnivorous Furniture' spray-painted on them, while the door of apartment 1C is just leaned to.";


Basic Locations ends here.
