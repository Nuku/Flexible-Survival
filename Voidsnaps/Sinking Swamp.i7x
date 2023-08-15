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

Sinking Swamp ends here.