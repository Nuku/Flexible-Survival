Tattoo Parlor by Sarokcat begins here.

"Adds a new area to Flexible Survival with a possible npc and eventually some tattoos and piercings..."

Section 1- Tattoo parlor

Tattoo parlor is a room. It is fasttravel. It is private [in order to make something only found through a quest or revealed, put 'It is private.' here as well]

The description of Tattoo parlor is "The painted dragon tattoo parlor stands empty, though there are obviously signs someone had stockpiled food and water for quite a while, most of the food has obviously been eaten, and what water there is left is of dubious quality. Looking around you see signs that whoever was here last has only been gone for a couple of days at best, probably they were hiding here as long as they could before venturing out into the city when their supplies ran low. The tattoo parlor itself is both large and clean, rather reminescent of a barber shop with its large mirrors, hair dying equipment, and adjustable couches.  Every bit of the walls not  covered with mirrors, is devoted to all sorts of fantasy artwork, with everything from stylized dragons, to roaring felines, to biker gang symbols adorning the shop and displaying the different types of tattoos available.";

The invent of Tattoo parlor is { "dirty water" , "dirty water" , "dirty water" };



Section 2 – Finding the parlor

tattoonpiercing is a situation.
The sarea of tattoonpiercing is "Red";



Instead of resolving tattoonpiercing:
	if tattoohunter is 0:
		say "Wandering through the red light district, you come across a strange barricade it looks like someone set up across the entrance to a small alley. A closer look reveals that while the barricade may be made up of all sorts of different items, including several large dumpsters, and piled furnishings, it is well made enough that you can[apostrophe]t manage to find a way past it. Shrugging you hope it will keep whoever built it safe from the creatures roaming the city,  though it is pretty likely that whoever they are has already succumed to the infection quite a while ago given the state of things in the city.";
		stop the action;
	if tattoohunter is 1:
		say "Hunting through the red light district for the location Harold gave you, you wander the nearby streets growing increasingly frustrated as you realize it must be near here somewhere. Finally on your third trip around the area, you find yourself looking at the remains of a small makeshift barricade covering a small alley, and decide to take a closer look. The barricade itself looks fine on close inspection, and actually remarkably well constructed considering the mixture of materials used to make it, however it is obvious someone on the inside moved key pieces aside and opened the barricade up so they could leave. Moving past the open barricade, you spot a sign not far along in the alley, apparently advertising the entrance to the Painted Dragon Tattoo and piercing parlor. You grin at your succssessful find for a minute, before glancing back at the opened barricade and getting something of a bad feeling about the situation. Moving forward carefully you try the door to the parlor, only to find it unlocked, going inside you find the place to be eerily quiet, though it was obviously occupied recently enough. After spending several hours searching the place for any clue as to where Harold[apostrophe]s friend vanished, you sigh and realize that you will have to return to the Palomino and let the unicorn bartender know that his friend isn[apostrophe]t home, and hasn[apostrophe]t been for several days, and that they are probably infected by now, though you make note of the location in case you have to come back later.";
		now Tattoo parlor is known;
		now tattoohunter is 2;
		now tattoonpiercing is resolved;
 







Tattoo Parlor ends here.
