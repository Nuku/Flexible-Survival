Version 1 of Basic Locations by Core Mechanics begins here.

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
	say ". The small sink taking up a corner of the room seems to be broken, producing no water no matter how much the knob is turned. Two doorways to the north and northeast lead to adjoining rooms - showers and a small restroom, while a thicker, secure-looking door opens to the stairwell used to go [bold type]outside[roman type].";
	if "old boombox" is listed in invent of Bunker:
		say "     You have set up the old boombox in one corner where it continues to play despite not being plugged into anything. Maybe it has really amazing batteries - or draws energy some other way. No matter what, it provides a mix of tunes and the occasional weather report on the continuing heat wave. Fiddling with the dials can get different songs and genres of music, but no actual news or broadcast radio. The radio broadcaster you hear seems the same across the stations, though his tone and delivery suits the format of the current [']station[']. Its dials and settings change on their own from time to time as if to provide music to suit the situation or dropping its volume when you're taking a nap.";

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

to say abbey desc:
	say "     This former abbey has been rebuilt to become a mid-sized library. The architecture and design shows its origins despite the renovations made - a number of simple yet elegant columns, wall sconces and several other of the original features have been kept to give the library some 'character'. The central room has a reception desk at the front, with long rows of bookshelves stretching out behind it and to the sides. Small seating groups chairs and sofas make the library quite a nice place to hang out in and read. There is an upper story to the library too, overhanging the ground floor with about a third of the floor left open in the middle, allowing people to look down into the main stacks over the wooden railings. A stairway leads up there not too far from where you're standing. High above, thick wooden beams form the rafters of the building's roof.";
	say "     [if library computer is powered]Now that the building has power, the overhead lights glow, although they sometimes flicker and dim as whatever goes on in the rest of the city right now causes fluctuations. The computer on the front desk has power as well now and might be of some use[else]A computer sits on the front desk, although without power it isn't of any help right now[end if]. You came here because you remembered there was a disused bunker in the basement. It's kept you alive, so far.";
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

Grey Abbey Library is below Grey Abbey 2F.
Grey Abbey 2F is a room.  The description of Grey Abbey 2F is "[abbey 2F desc]".
the scent of Grey Abbey 2F is "The smell of books permeates the air in the library, the musty odour is slightly more noticeable up here on the second floor thanks to the older, less frequently used tomes.".

to say abbey 2F desc:
	say "     The spacious second story of the library opens up in the middle, with the floor of about a third of the width of the building missing and surrounded by well-crafted wooden railings. They clearly are a part of the old abbey's features that was kept in the renovation, giving the place quite a nice atmosphere. From what therefore is basically a huge balcony, you can overlook the main stacks below. As in the rest of the building, rows of bookshelves take up most of the space, though small seating groups with sofas and cushioned chairs promise comfortable places to rest too. There are a few secluded desks here and there, serving as quiet study places.";

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

Basic Locations ends here.
