Version 1 of Basic Locations by Core Mechanics begins here.
[Version 1.5 - Library Expansion - Luneth]

Grey Abbey Library is a room. Grey Abbey Library is fasttravel. Grey Abbey Library is sleepsafe.
The description of Grey Abbey Library is "[abbey desc]".
The earea of Grey Abbey Library is "Outside".
Bunker is a room. The description of Bunker is "[bunker desc]".
The invent of Bunker is { "face mask","medkit","medkit","water bottle","water bottle","water bottle","food","food","pocketknife","cot" }.
Library door is a door. "Solid oak doors lend a stately appearance to the library.". Library door is dangerous.
East of 7th Street & Main is the Library Door. "Solid oak doors lend a stately appearance to the library.".
East of library door is Grey Abbey Library.
Bunker is below Grey Abbey Library.
The player is in Bunker.
The marea of library door is "Outside".

to say bunker desc:
	project the figure of Bunker_icon;
	say "     Sparsely appointed, this bunker was built as a fallout shelter back during the Cold War, then abandoned to become a forgotten curiosity at best. You are standing in the main bunker room, a rectangular chamber measuring about sixty feet in length and thirty feet in width. Its walls are solid concrete, and long rows of shelves are built into the back wall. There are several large storage lockers in the bunker as well. They look like a good place to store all your extra stuff. Two long rows of simple metal beds are bolted to the floor and walls for those taking shelter here to [bold type]rest[roman type] upon";
	if "cot" is listed in invent of Bunker:
		say ". One of the cots apparently was poorly installed, and the bolts attaching it to the floor have come loose. You could take it along if you'd like";
	say ". The small sink taking up a corner of the room seems to be broken, producing no water no matter how much the knob is turned. Two doorways to the north and northeast lead to adjoining rooms - showers and a small restroom - while a thicker, secure-looking door opens to the stairwell used to go [bold type]outside[roman type]. Your own personal room is to the south. It's technically just a large maintenance closet, but at least it's private.";
	if "old boombox" is listed in invent of Bunker:
		say "     You have set up the old boombox in one corner, where it continues to play despite not being plugged into anything. Maybe it has really amazing batteries - or draws energy some other way. Regardless of the source of its power, the boombox provides a mix of tunes and the occasional weather report on the continuing heat wave. Fiddling with the dials results in different songs and genres of music, but no actual news or broadcast radio. The radio broadcaster you hear seems the same across the stations, though his tone and delivery suits the format of the current [']station[']. Its dials and settings change on their own from time to time as if to provide music to suit the situation or dropping its volume when you're taking a nap.";


North of Bunker is Communal Shower.
Communal Shower is a room. The description of Communal Shower is "[bshower desc]".
lastShowerUse is a number that varies. lastShowerUse is usually 10000.

to say bshower desc:
	project the figure of Bunker_icon;
	say "     The bunker has a small communal shower with a pretty simple setup. The first thing one sees when entering is that everything is covered in smooth, checkered tile. There's a short bench near the entrance for people to sit on as they undress. This is separated from the shower area proper by a concrete dividing wall, serving as a privacy screen for those entering and drying off. Turning the corner, you see that five showerheads have been affixed to the back wall for several people to wash themselves at once. There's a subtle depression in the floor - enough to direct water to a central drain, but not enough to feel unsteady when standing on it. Around the shower is a raised border that serves as an additional safeguard from flooding the surrounding area.";
	if library computer is powered:
		say "     Experimentally turning the knobs under one of the showerheads, a light spray of water comes out of it. Seems like you can at least wash here now. Drinking the water wouldn't be advisable though, as you vaguely remember mentions of the use of lead piping from the tour you once took through the place. As corroded as that has to be by now, you decide not to risk lead poisoning on top of all your other problems.";
	else:
		say "     Experimentally turning the knobs under one of the showerheads, you get... nothing. Seems like the showers are out of commission at the moment. Thinking back to the tour of the place you joined a year back (which is why you knew of the bunker in the first place), you remember them saying that there is a large water tank somewhere in the underground nearby. A pump powered by batteries is supposed to supply the bunker, but those have probably deteriorated by now. Maybe you can get the water running by [bold type]supplying the library with power[roman type] instead.";

Northeast of Bunker is Underground Restroom.
Underground Restroom is a room. The description of Underground Restroom is "[brestroom desc]".

to say brestroom desc:
	project the figure of Bunker_icon;
	say "     This room is very barebones - a small chamber with several stalls containing toilets. Checking one out, you realize that it isn't a typical piece of bathroom installation. There is no water (or anything, really) under the tightly closing lid, only what seems like a long drop into darkness. You try not to imagine how the lower end of the shaft might look like - or smell.";

South of Bunker is Maintenance Closet.
Maintenance Closet is a room. The description of Maintenance Closet is "[bmaintenance desc]".

to say bmaintenance desc:
	project the figure of Bunker_icon;
	say "     The maintenance room you have turned into your own private lodgings. Looking around, it isn't very large by any standards, about the size of a walk-in closet. Along the back wall is a twin size bed that the old janitor probably used to nap during breaks. The walls on the left and right are haphazardly lined with shelves and filing cabinets. There's nothing of any real interest inside of or on top of them, but you may find a use for the extra storage space in time.";

to say abbey desc:
	project the figure of Library1stfloor_icon;
	say "     This former abbey has been rebuilt to become a mid-sized library. The architecture and design shows its origins despite the renovations made. A number of simple yet elegant columns, wall sconces, and several other of the original features have been left untouched to give the library some [']character[']. The central room has a reception desk at the front, with long rows of bookshelves stretching out behind it and to the sides. [if library computer is powered]Now that the building has power, the overhead lights glow, although they sometimes flicker and dim when whatever is going on in the rest of the city causes fluctuations. The computer on the front desk has power now as well and might be of some use[else]A computer sits on the front desk, although without power, it isn't of any help right now[end if]. Small seating groups of chairs and sofas make the library quite a nice place to hang out in and read.";
	say "     There is an upper story to the library overhanging the ground floor, accessible through a stairway not too far from where you are standing. A third of the space has been left open in the middle, allowing people to look down into the main stacks over the wooden railings. High above, thick wooden beams form the rafters of the building's roof. To the north is a room with some white sheets covering assorted furniture. To the south is a glass window through which you are able to make out a dilapidated computer lab. Heading east will lead further into the library.";
	if Fang is booked and Alexandra is booked:
		say "     Fang and Alexandra are on guard here, taking shifts watching by the door";
		if HP of Fang < 3:
			say ". The wolf is tied to a [one of]column[or]desk[or]water fountain[or]metal staircase[or]wall sconce[at random]";
		else:
			say ". The powerful male wolf watches in stoic silence";
		say ". The doberwoman paces around, running her paw along her nightstick as if hoping for an opportunity to use it.";
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
The description of Library Microwave is "A black, mid-sized microwave stands on one of the countertops in the breakroom. Now that you have restored power to the library, you can make use of it. All you need to do is put stuff in and [bold type]microwave[roman type] whatever you want!".

to say gbreakroom desc:
	project the figure of Library1stfloor_icon;
	say "     The library staff breakroom is nothing more than a remodeled version of the abbey's old kitchen. The walls are still made with the original stone blocks, while the two windows in the room have thankfully been updated. Both are simple horizontal sliders, bathing the room in a simple glow from the natural lighting outside. [if Sidney is booked]Sidney apparently decided that the breakroom needed to be put into proper order. She's pushed the furniture around in an effort to organize the space[else]The tables have been pushed around, leaving no semblance of order to them, while the countertops at least are reasonably clean[end if]. [if Macadamia is booked]On one of the counters are a ton of Mack's jars, each filled with his own special blend of salted nuts. Just looking at the cartoonish labels with Mack on the cover makes you wonder if he's thinking of starting his own side business. [end if]To the west is the old kitchen's walk-in pantry.";
	if library computer is powered:
		say "     The only modern day conveniences in the breakroom are a microwave and a small fridge, both of which are ready to be used now that you have restored power to the library.";
	else:
		say "     The only modern day conveniences in the breakroom are a microwave and a small fridge. Sadly, they are both out of commission at the moment.";


Half-Renovated Room is a room.
North of Grey Abbey Library is Half-Renovated Room.
Half-Renovated Room is sleepsafe.
The description of Half-Renovated Room is "[LibrarySideRoomDesc]";

to say LibrarySideRoomDesc:
	project the figure of Library1stfloor_icon;
	say "     This large room seems to be where most of the furniture of the old abbey ended up when the building was converted to its new purpose. With its high ceiling, ample floor-space, and even a big fireplace, it may have served as a dining hall in the past. Now it is mostly filled with numerous pieces of furniture, some stacked quite high and partially covered in white sheets. The two still accessible walls are covered in scaffolding and show signs of recent work on them, as if renovations were in progress when the nanite outbreak began. Due west you can make out a room with tables strewn about and plenty of counter space. Back south it the main area of the library.";
	if Skarnoth is in Half-Renovated Room:
		say "     Since you brought the demon prince Skarnoth here and securely attached the long chain on his collar to the scaffolding, the imprisoned predator has done his best to improve the comfort of his prison. A soft (if somewhat threadbare and stained) couch has been dragged to stand against the back wall and shows signs of being used as a bed. He even found a high-backed armchair somewhere, which is now set up next to the fireplace. Sitting in it, the demon awaits you, wearing an arrogant expression as if he was a king awaiting supplicants.";


West of Breakroom is Pantry.
Pantry is a room. The description of Pantry is "[gpantry desc]".

to say gpantry desc:
	project the figure of Library1stfloor_icon;
	say "     The pantry is about the size of a walk-in closet. Inspecting the shelves on all three walls, hoping to find some extra food perhaps, you sadly only find a few leftover folders. After the building became a library, this pantry apparently ended up being turned into a simple storage room. Heading east from here will lead you back into the breakroom.";

South of Grey Abbey Library is Computer Lab.
Computer Lab is a room. The description of Computer Lab is "[gcomputerlab desc]".
The invent of Computer Lab is { "soda" }.

to say gcomputerlab desc:
	project the figure of Library1stfloor_icon;
	say "     Stepping into the old computer lab, it appears that someone had some anger management issues judging by all of the smashed monitors and towers. Every computer used to have its own cubicle, each one about four feet wide by three feet long. While not a room you would particularly enjoy staying in, you're sure you can find some use for it. To the west is a locked door. Heading north will take you back to the library entrance.";

East of Grey Abbey Library is Back Of The Library.
Back Of The Library is a room. The description of Back Of The Library is "[gbackofthelibrary desc]".

to say gbackofthelibrary desc:
	project the figure of Library1stfloor_icon;
	say "     The back of the library has less bookshelves, with tables taking up the majority of the space. Glancing around the area, you can make out three tables that haven't been destroyed yet and a single sofa. The walls have the same tacky pictures that most libraries have, one of them featuring an ice skating polar bear with the caption 'Chill Out And Read'. There are also copies of famous paintings littering the walls. To the south is a locked door. Heading north you can see a sign that reads 'Kidz Zone' hanging over the open doorway. Due east is a double glass door leading out into the back courtyard. Heading west will take you back to the entrance to the library.";

North of Back Of The Library is Makeshift Rec Room.
Makeshift Rec Room is a room. The description of Makeshift Rec Room is "[grecroom desc]".

to say grecroom desc:
	project the figure of Library1stfloor_icon;
	say "     The Kidz Zone was at one point the place where parents would dump their kids when they needed a break. Most of the brightly colored decorations have been torn down, leaving the area with a twisted, festive feel to it. A single table is set up in the back corner of the room, while the bookshelves have all been destroyed. [if Korvin is booked or Alexandra is booked]Recently, someone found an old pool table and dragged it all the way into the rec-room, and a deck of cards has been placed on a side table. While some may prefer reading to pass the time, others apparently find that far too dull for their tastes. The idea of hustling someone at pool or poker does have its appeal. [end if][if Nala is booked]Having set up a balcony-like seat out of a broken air vent, Nala can now watch and heckle to her heart's content. [end if]Heading south leads back to the library.";

East of Back Of The Library is Courtyard.
Courtyard is a room. The description of Courtyard is "[gcourtyard desc]".
The invent of Courtyard is { "dirty water" }.

to say gcourtyard desc:
	project the figure of Library1stfloor_icon;
	say "     The courtyard has an almost peaceful aura about it, which is shocking considering the state of the rest of the city. A few trees have been sporadically planted around a large fountain in the center of the courtyard. While there is no water coming out of the fountain, it is still a nice area to sit and relax. To the north is a large shed, more than likely filled with gardening tools used for the courtyard. To the south is the remnants of what was once a garden. Heading west will take you back into the library.";

North of Courtyard is Large Shed.
Large Shed is a room. The description of Large Shed is "[glargeshed desc]".

to say glargeshed desc:
	project the figure of Library1stfloor_icon;
	say "     Stepping into the shed, it's a little disconcerting how much bigger it is compared to its outward appearance. Inspecting the interior, the walls are made from basic cement, no drywall or anything, which makes sense since given that this was just a place to stow gardening equipment. Most of the floor is smooth cement as well[if Philip is booked]. Philip has turned the ruined back corner into a muddy wrestling ring to roll around in, the pig prepared for any challengers[else], except for a back corner where the cement has been broken up into jagged balls of rock[end if]. Counters and cabinets line the wall on the right hand side of the shed. To the south is the door leading back out to the courtyard.";

South of Courtyard is Garden.
Garden is a room. The description of Garden is "[ggarden desc]".

to say ggarden desc:
	project the figure of Library1stfloor_icon;
	say "     Walking into the garden [if Honey is booked]shocks you at first. While most of the plant life around this part of the city is dead, the library's garden is thriving. Flowers of many different colors have begun to sprout up quickly, their speed of growth most likely linked to the nanites. Honey is buzzing back and forth between her plants, humming a cheery little melody as she works. She seems totally in her element, which shouldn't be all that surprising seeing that she is a bee now. The loving way the tiny insect girl cares for each individual plant shows that this is about more than instinct; she truly loves working with the flowers, and the small garden has grown into a sea of colors under her careful watch. You can't help but notice that the most prominent color is yellow, making honey almost appear to fade away at times[else]is slightly disheartening. Any flowers or vegetables that once grew here are long dead. When this was just an abbey, the garden must have served as the place where they would grow their food. Looking up, you are able to see the huge open window on the second floor. Who knows, maybe if it had someone to take care of it, perhaps the garden could return to its past glory? Going to the north will take you back to the courtyard[end if].";

Grey Abbey Library is below Grey Abbey 2F.
Grey Abbey 2F is a room. The description of Grey Abbey 2F is "[abbey 2F desc]".
the scent of Grey Abbey 2F is "The smell of books permeates the air in the library, the musty odor is slightly more noticeable up here on the second floor thanks to the older, less frequently used tomes.".

to say abbey 2F desc:
	project the figure of Library2ndfloor_icon;
	say "     The spacious second story of the library opens up in the middle, with the floor of about a third of the width of the building missing and surrounded by well-crafted wooden railings. They clearly are a part of the old abbey's features that were kept in the renovation, giving the place quite a nice atmosphere. From what therefore is basically a huge balcony, you can overlook the main stacks below. As in the rest of the building, rows of bookshelves take up most of the space, though small seating groups with sofas and cushioned chairs promise comfortable places to rest, too. There are a few secluded desks here and there, serving as quiet study places. To the northeast is a shabby sitting area, while to the southeast you can make out a darker spot that does not receive much light.";

Northeast of Grey Abbey 2F is Sitting Area.
Sitting Area is a room. The description of Sitting Area is "[usittingarea desc]".
The invent of Sitting Area is { "chips" }.

to say usittingarea desc:
	project the figure of Library2ndfloor_icon;
	say "     Obviously meant for small study groups, the area around you has only a few tables and couches spread about. Most of the nearby shelves have been knocked down, leaving their books strewn across the floor. Although disorganized, the area also has a very lived-in feel to it, helping you relax your nerves and reflect on your next move. Heading southwest will take you back to the second floor landing, and a huge window overlooks the back of the library to the southeast.";

Southeast of Sitting Area is Garden View.
Garden View is a room. The description of Garden View is "[ugardenview desc]".

to say ugardenview desc:
	project the figure of Library2ndfloor_icon;
	say "     The huge windows at the back of the second floor allow sunlight to flood the area. Unfortunately, one of the large windows has been completely shattered. On the bright side, this allows a light breeze to flow through the rest of the library, airing out its musty scent. Looking out the window, you can see the garden and courtyard below. The sprawling city beyond it would make for a fantastic view if it wasn't in a state of ruin. There's a sitting area to the northwest, whereas going southwest will lead you towards a dark alcove.";

Southwest of Garden View is Darkened Alcove.
Southeast of Grey Abbey 2F is Darkened Alcove.
Darkened Alcove is a room. The description of Darkened Alcove is "[udarkenedalcove desc]".

to say udarkenedalcove desc:
	project the figure of Library2ndfloor_icon;
	say "     This area goes a bit further away from the railing than the rest of the second floor. Under closer inspection, you find the reason why. What was at one point an office had its flimsy walls collapse, but there's no hint as to what caused it. The light from the windows in the back of library don't reach this room due to the walled-off features that were part of the original design. While still light enough to see your surroundings, it does feel gloomier and slightly creepy. From here, you can head northeast towards the garden view windows or northwest to return to the second floor landing. There is also a hatch in the ceiling leading up into the attic.";

Darkened Alcove is below Attic.
Attic is a room. The description of Attic is "[tattic desc]".
The invent of Attic is { "water bottle" }.

to say tattic desc:
	say "     The attic is exactly what you expected it to be: chilly, badly lit, and empty. The rafters here are angled, forming a point in the ceiling. There is a small window in the far back, just big enough for a person to climb through, but that's about it. The shutters covering the window are broken, making them constantly bang against the windowsill. Climbing down the hatch will take you back into the darkened alcove.";
	if HP of icarus is 7:
		say "     The floor is still covered in a mixture of blood and feathers, looking more like the scene of a murder than anything else. Memories flood your mind of how you broke your little songbird slut in every way imaginable.";

Outside Trevor Labs is a room. "     Like almost everyone else in this city, you've heard of Trevor Labs. They are - or were - a biopharm setup. Kind of new on the block, and the local news made a big stink a little while ago over accusations of skirting the edge of numerous laws in the name of science. The company's headquarters rise as a sleek and tall glass building to your west. You're not certain, but you think you can see some light in one of the windows, visible in the [time of day] light. Curious. Definitively something to investigate...".
understand "lab" or "labs" as Outside Trevor Labs.
Outside Trevor Labs is fasttravel.
earea of Outside Trevor Labs is "Outside".

Away from Labs is a door. "East of here lays the rest of the city." It is dangerous. The marea of Away from Labs is "Outside". Away from labs is east of Outside Trevor Labs and west of Wandering the City.

Trevor Labs Lobby is a room. "     You're standing in the ground floor lobby of Trevor Labs. New age furniture has been ripped to shreds and thrown around, while the walls and floor are splattered in unknown liquids. Most of the gunk is creamy white, with some reddish-brown and even green streaks mixed in... all of it well dried by now thankfully. It is somewhat dark in here, but some emergency lights draw your attention to the stairs leading up and down.".
The earea of Trevor Labs Lobby is "Sealed".

West of Outside Trevor Labs is Trevor Labs Lobby.

2F Trevor Labs is a room. "     You're standing in a hallway on the second floor of the Trevor Labs. The lighting is dim, except for brilliant light shining from beneath a closed door at the end of the hallway. It casts a cone of brightness into the gloom. The area is silent and smells of disinfectant. There does not seem to be much here to look at besides a broken water cooler and a motivational poster with a kitten, encouraging you to hang in there.".
Trevor Labs Lobby is below 2F Trevor Labs.

Primary Lab is a room. "     One of the few places in the city with working power, this lab is brilliantly lit, showing off banks of busy computer terminals displaying dizzying amounts of information, largely obscure and technical. Overhead, soft humming of air conditioning is the likely reason that the room feels just a bit chilly. There is an especially comfy chair resting before the largest computer. There is only one window here, and it is mostly blocked by filing cabinets. Perhaps it is the light you saw outside.".
Primary Lab is north of 2F Trevor Labs.
There is an Infection Terminal in Primary Lab. "A glowing infection terminal quietly lists all the infections in the corner.".

Park Entrance is a room. "     Ah, the city park. Smell that fresh pine air, and the scent of - wait no, that grass has not been mowed for quite a while. Just how long ago did all this trouble start anyway? Time seems fluid these days, making it hard for you to remember. No matter what, the grass has started to creep up onto the pavement that leads further into the park (north) and all the other plants seem pretty overgrown and untamed too. The park's boundary wall remains largely intact, with a sign that welcomes you into the park, except during night hours, not that anyone is enforcing this rule at the moment.".
Park Entrance is fasttravel.
The earea of Park Entrance is "Park".

Park Trail is a room. "     Following this North/South trail, you can see the severely overgrown state of the park all around you. All this can't be purely natural - it'd take ages to have gotten this bad. Seems like some of the spreading nanites decided to create a section of untamed wilderness right in the middle of the city. There are dense woods in almost every direction, including to the North, where the paved trail ends at a tree that must have literally exploded out of the ground under it. In the Northwest, there is a small expanse of bamboo forest, with a Torii arch forming the start of a narrow gravel trail leading into it.[line break]The path northwest looks safe and strangely peaceful, but it'll be easy to become lost in the rest of the thick woods of the park - though perhaps exploring might have its own rewards. You can hear soft clopping sounds just beyond sight, and the occasional buzz of insects. The air is fresh here under the [short time of day] sky.".
earea of Park Trail is "Park".

North of Park Entrance is Park Trail.
Park Exit is a door. Park Exit is dangerous. The marea of Park Exit is "Outside". Park Exit is undescribed. Park Exit is south of Park Entrance. South of Park Exit is Outside Exploration.
East of Park Trail is Faint Trail.
East of Faint Trail is Lost in the Woods.

Faint Trail is a door.
The description of a faint trail is "A faint trail that heads eastwards into the deep woods. It looks dangerous - who knows what is lurking out there?".
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
	say "     Just inside the building is a small lobby, with numerous post-boxes on one wall and a (surprisingly) still powered elevator. It opens up freely as you push the dimly glowing button, revealing a generous cabin, complete with a control panel that only has one button, for the lobby. Everything else is keyholes, four to each floor. Someone sure liked their privacy. Checking the interior stairway access door right next to it, you find it jammed; a glance through its little window reveals that about twenty feet of the stairway are completely barricaded by mixed pieces of furniture. Four doorways lead off into what must be the ground floor apartments - 1A, 1B, 1C and 1D. The first two and the last all have been nailed shut and the words 'Carnivorous Furniture' spray-painted on them, while the door of apartment 1C is just leaned to.";

understand "plains" as Dry Plains.

Dry Plains is a room. It is fasttravel. "     At this edge of the city, the thinning buildings have collapsed before opening up to the great plain stretching away from you. You don't see any kind of military cordon here, making you suspect those already infected have spread out here before the military was mobilized to close it off. Their lines are probably further back. Some hoof prints you spot in a sandy patch nearby furthers this assumption. As for the open grasslands, it looks like the some kind of storm or quake leveled all the scattered buildings further out. Now all that is left of them among the dirt and grassland are mounds of rubble. The plains are dry and brown with only a few trees or bushes scattered across the rolling plains before you.".
The earea of Dry Plains is "Plains".
Plains Door is a door. The marea of plains door is "Plains". "The plains stretch out before you, with slight rolls in the landscape and dotted with fallen buildings and other rare features.". Plains Door is dangerous. Plains door is east of dry plains.
Plains door is west of wandering the plains.
Wandering the plains is a room.

the scent of the dry plains is "The dry plains smell lightly of dry grasses and disturbed earth. There is little of man-made origin to smell on the air except the scents coming from the city behind you.".

Basic Locations ends here.
