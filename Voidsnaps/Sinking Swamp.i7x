Sinking Swamp by Voidsnaps begins here.

Section 1 - Swamp Hook Event and Rooms

Table of GameRoomIDs (continued)
Object	Name
Sinking Swamps	"Sinking Swamps"

Sinking Swamps is a room.
It is fasttravel.
earea of Sinking Swamps is "Sinking Swamps".

Description of Sinking Swamps is "     As far as you can see, waist deep water swallows the remnants of decaying buildings that look as though they've been abandoned for years, despite the fact that they were likely intact weeks ago. Throaty frogsong and the ever-present buzz of cicadas permeates the area like background music, and the scent of petrichor and decaying leaves tickles your nose. The water near your feet looks vaguely unsafe, and you remind yourself not to wade in without a good reason- it's too murky to see what lurks beneath. To the north, you see a narrow band of muddy embankments leading into the gloom.".

Table of GameRoomIDs (continued)
Object	Name
Muddy Path	"Muddy Path"

Muddy Path is a room.
Muddy Path is north of Sinking Swamps.
Muddy Path is east of Rundown Cabin.
Description of Muddy Path is "[MuddyPathDesc]".
earea of Muddy Path is "Sinking Swamps".

to say MuddyPathDesc:
	say "     The path continues to more solid footing, but the trees are just as dense around the narrow footpath. Mist coalesces in front of you, obscuring your view, but you can't shake the feeling you're being watched. Bubbles pop in the water near your feet, and you can't stop yourself from imagining what's making them. Is it safe to explore?";

Table of GameRoomIDs (continued)
Object	Name
Edge Of The Swamp	"Edge Of The Swamp"

Edge Of The Swamp is a room.
Edge Of The Swamp is north of Muddy Path.
Description of Edge Of The Swamp is "[SwampEdgeDesc]".
earea of Edge Of The Swamp is "Sinking Swamps".

to say SwampEdgeDesc:
	say "     The swamp ends abruptly, giving way to dry land alongside a river of clearer water leading up to a hole in the reservoir dam. Thankfully it's rather high up, so the entire area isn't underwater yet, but you worry about standing too close. To the north, you can see the dam, and to the south, the gloomy path leads back into the swamps.";

Table of GameRoomIDs (continued)
Object	Name
Lizard Village Entrance	"Lizard Village Entrance"

Lizard Village Entrance is a room.
Lizard Village Entrance is east of Muddy Path.
Description of Lizard Village Entrance is "[LizardVillageEntDesc]".
earea of Lizard Village Entrance is "Sinking Swamps".

to say LizardVillageEntDesc:
	say "     A hulking lizardman blocks your path, his cold gaze following your every movement. You get the feeling that he wouldn't like it if you tried to pass him. Past him to the northeast, you can see a raised village sloping into one of the few dry areas in the swamp, wrapping around trees and continuing upward toward the canopy.";

instead of going north from Lizard Village Entrance when "Lizard Village Welcome" is not listed in Traits of Kosk:
	say "     You attempt to push your way past the lizardman guard, only to be stopped by a hand on your shoulder. Like a bouncer dealing with an overly drunk patron, he shakes his head, his eyes brooking no argument. It seems you'll have to get on his good side before you can pass.";

Table of GameRoomIDs (continued)
Object	Name
Lizard Village Thoroughfare	"Lizard Village Thoroughfare"

Lizard Village Thoroughfare is a room.
Lizard Village Thoroughfare is north of Lizard Village Entrance.
Description of Lizard Village Thoroughfare is "[LizardVillageThoroughfareDesc]".

to say LizardVillageThoroughfareDesc:
	say "     What looked like a well-developed swamp village appears more shoddy up close. Roofs made of corrugated metal held together with what looks like zip ties, and walls that are little more than blankets with a bit of cardboard for structure cover an area the size of a city block, floating on old water jugs repurposed as pontoons. Still, it's impressive that so many houses could be created in such a short time, and the way that some of the more sturdy houses climb around gigantic swamp trees reminds you of something out of a fantasy novel.";

Table of GameRoomIDs (continued)
Object	Name
Baron's Apothecary	"Baron's Apothecary"

Baron's Apothecary is a room.
Baron's Apothecary is above Lizard Village Thoroughfare.
Description of Baron's Apothecary is "[BaronApothecaryDesc]".

to say BaronApothecaryDesc:
	say "     Unlike the rest of the village, the inside of this makeshift shop seems much more sturdy. Plywood makes up the bulk of the place, along with the shelves that line the sides. The owner seems to be an avid collector of jars and strangely colored liquids. As you step further, you catch a strange, herbal scent wafting from the back, and a bead curtain parts, revealing a scantily clad green-scaled iguana with a shaman mask clutched in one well-manicured, clawed hand. He leans against the shop's counter, the animal bone necklace around his neck clinking as he regards you with striking violet eyes.";

Section 2 - Introduction Event For Swamps

Table of GameEventIDs (continued)
Object	Name
Strange New Land	"Strange New Land"

Strange New Land is a situation.
ResolveFunction of Strange New Land is "[ResolveEvent Strange New Land]".
Sarea of Strange New Land is "Outside".

to say ResolveEvent Strange New Land:
	say "     As you wander the streets of the city, you find yourself near the Capitol District. At least you think you're near the Capitol District. The unmistakable scent of fire drifts from the south, but in front of you, a strange, ancient looking swamp extends to the north, transforming the edge of the streets into a muddy, water surrounded terrain. Even stranger, a permanent veil of summer seems to surround you, with the sound of cicadas buzzing all around, and an oppressive, wet heat.";
	AddNavPoint Sinking Swamps;
	now Strange New Land is Resolved;

Section 3 - Kidnapping Quest Areas and Frog Stronghold

Table of GameRoomIDs (continued)
Object	Name
Suspicious Swimming Hole	"Suspicious Swimming Hole"

Suspicious Swimming Hole is a room.
Suspicious Swimming Hole is east of Lizard Village Entrance.
Description of Suspicious Swimming Hole is "[SusSwimmingDesc]".
earea of Suspicious Swimming Hole is "Sinking Swamps".

to say SusSwimmingDesc:
	say "     Looking straight out of an 80's coming-of-age movie, a little grotto lined with thorny bushes stretches before you. Even the swamp's water looks inviting, far less murky than the water in the area normally is. If you didn't know about the disappearances, you'd love to jump right in.";

Table of GameRoomIDs (continued)
Object	Name
Flooded Mall	"Flooded Mall"

Flooded Mall is a room.
Description of Flooded Mall is "[FloodedMallDesc]".
earea of Flooded Mall is "void".

to say FloodedMallDesc:
	say "     Like something out of a post apocalyptic story, the ruined mall is flooded, covered in moss and pond scum. A broken skylight lets in the sun from above during the day, bathing the area in glowing warmth, while at night, it provides a nice view of the stars, unfettered by the lights of the city. While most of the stores surrounding the multiple stories have been repurposed into makeshift camps, the bottom floor is completely flooded, acting as a swimming pool for the various amphibian inhabitants, some of which are currently tossing a ball back and forth as carefree giggles reverberate through the open air";
	if "Hostile" is listed in traits of Ignacio:
		say ". The place is less sinister than you'd expect from a tribe of kidnappers";
	say ".";

instead of navigating Flooded Mezzanine when "Guilty Coward" is listed in Traits of Player:
	say "     You don't think it's a good idea to go anywhere near the flooded mall after you left Ignacio and Matteo to their doom. Coward's guilt aside, you don't know how they'll react if they find out what you did. You don't want any enemies...";

Table of GameRoomIDs (continued)
Object	Name
Flooded Mezzanine	"Flooded Mezzanine"

Flooded Mezzanine is a room. It is fasttravel. It is private.
Description of Flooded Mezzanine is "[FloodedMezzDesc]".
earea of Flooded Mezzanine is "Sinking Swamps".

to say FloodedMezzDesc:
	say "     Overtaken by muck and stagnant water, the lowest floor of the mall's outer area is rather hard to navigate. On one side, the parking garage has already sunk into the waters, leaving nothing but some lonely concrete monoliths, but on the other, the mall still stands relatively intact, only tilting slightly and holding strong against gentle waves.";

Table of GameRoomIDs (continued)
Object	Name
Froggy Prison	"Froggy Prison"

Froggy Prison is a room.
Froggy Prison is west of Flooded Mall.
Description of Froggy Prison is "[FroggyPrisonDesc]".
earea of Froggy Prison is "void".

to say FroggyPrisonDesc:
	if "Hostile" is listed in traits of Ignacio:
		say "     The backroom of a sports store has been co-opted as a makeshift prison. Its door has been torn off the hinges, replaced by a strangely well-made series of bars created from what appear to be broken hockey sticks held together with duct tape. If you wanted to, you could probably break out, but you worry about what your kidnappers might think. It could make things worse if you destroy something so hastily!";
	else:
		say "     Sitting empty, a makeshift prison in the back of a sports store stares back at you. You don't think there's anything to do in here right now, but if you got off on the wrong foot, you might have ended up behind those bars!";

Table of GameRoomIDs (continued)
Object	Name
Algae-Covered Atrium	"Algae-Covered Atrium"

Algae-Covered Atrium is a room.
Algae-Covered Atrium is below Flooded Mall.
Description of Algae-Covered Atrium is "[AlgaeAtriumDesc]".
earea of Algae-Covered Atrium is "void".

to say AlgaeAtriumDesc:
	say "     Besides a thick coating of duckweed and algae stained walls, the bottom floor of the mall looks like a giant swimming pool, complete with various pool toys. Young frogs play with water guns while adults watch from the sides, going about their days. It's quite peaceful, and you could while away hours people-watching.";

Table of GameRoomIDs (continued)
Object	Name
Amphibian Chieftain's Room	"Amphibian Chieftain's Room"

Amphibian Chieftain's Room is a room.
Amphibian Chieftain's Room is east of Algae-Covered Atrium.
Description of Amphibian Chieftain's Room is "[AmphibianChieftainRoomDesc]".
earea of Amphibian Chieftain's Room is "void".

to say AmphibianChieftainRoomDesc:
	say "     The mall's security room has been repurposed. Darkened TV screens peer back at you from all the nearby walls, and a desk has been dragged in, while a cot sits nearby, showing obvious signs of use. The Chieftain, a tired-looking crested newt with a red, bare chest looks back at you over the desk, adjusting glasses with no lenses. A plaque on the desk says 'Keiran.'";

Table of GameRoomIDs (continued)
Object	Name
Rundown Cabin	"Rundown Cabin"

Rundown Cabin is a room.
Rundown Cabin is west of Muddy Path.
Rundown Cabin is down from Creepy Swamp Cabin.
Description of Rundown Cabin is "[MudCabinRoomDesc]".
earea of Rundown Cabin is "void".

to say MudCabinRoomDesc:
	if "Burned Down" is listed in Traits of Riker:
		say "     There's almost no sign of the cabin. Instead, a pile of ashes and twisted timber sits in its place. It seems that either Kosk or Riker burned down the place after the lizard village's posse stormed it. At the least, you know that no one else will be locked up and trained to be a mindless sex slave inside...";
	else:
		say "     A lone cabin juts out of a small island surrounded by water. It looks both hastily constructed and extremely worn down, as though it's stood there for years, and it's surrounded by so much brush that you have a hard time believing this place was once a city. ";
		if "Matteo Quest" is listed in Traits of Ignacio:
			say "This seems to be the closest location to where lizards and amphibians alike have gone missing. Perhaps you should go inside and check things out.";
		else:
			say "It seems that no one's home. You get the feeling that something is watching you from nearby, and you should probably leave before whatever it is decides to do something about you.";

Table of GameRoomIDs (continued)
Object	Name
Creepy Swamp Cabin	"Creepy Swamp Cabin"

Creepy Swamp Cabin is a room.
Creepy Swamp Cabin is up from Rundown Cabin.
Description of Creepy Swamp Cabin is "[InsideCabinRoomDesc]".
earea of Creepy Swamp Cabin is "void".

to say InsideCabinRoomDesc:
	say "     A strangely cozy, violently rural cabin interior greets you as you walk in. A deer head hangs on the wall, flanked by a giant bookshelf and an old fireplace. Strangely, there's very little dust coating the place- as though someone's been living here.";

instead of going up from Rundown Cabin when "Burned Down" is listed in Traits of Riker:
	say "     There's no more 'inside' to go to. The building's been burned down.";

instead of going up from Rundown Cabin when "Abandoned Cabin" is listed in Traits of Riker:
	say "     Someone's cleaned everything out of the cabin. You won't be able to find anything in there. Thankfully, it seems you've scared the human traffickers away from the swamp, so you shouldn't see Riker anymore!";

instead of going up from Rundown Cabin when "Matteo Quest" is not listed in Traits of Ignacio and "Working With Riker" is not listed in Traits of Riker:
	say "     You get chills just looking at the Rundown Cabin's doors. Something tells you you're being watched and that you shouldn't attempt to go inside. You may never come back out.";

Sinking Swamp ends here.