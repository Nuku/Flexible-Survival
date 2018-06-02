Version 6 of Zoo by Wahn begins here.
[Version 6 - Adopted by Wahn (Originally Authored by Hellerhound)]

Zoo Entrance is a room. It is fasttravel.
The description of Zoo Entrance is "[ZooEntranceDesc]".
The earea of Zoo Entrance is "Outside".

to say ZooEntranceDesc:
	say "     This area is the grand entrance to the zoo, with wrought iron gates and a fence surrounding the zoo grounds. A number of booths stand ready to accommodate large groups of visitors, although they're of course empty now. A large sign that looks as if it was just put up a short while ago says 'free admission'. You know from experience that the tall fence extends all the way around the whole zoo, so it's very likely that most of the animals (and transformed visitors) are still inside. The zoo's gift shop is west of your position, to the southwest lies a parking area and in the south, you can go back out into the city along the road leading here.";

the scent of Zoo Entrance is "The whole area smells strongly of animal scents, arousal and sex.".

Zoo Gates is a door. Zoo Gates is dangerous. The marea of Zoo Gates is "Outside".
Zoo Gates is undescribed. Zoo Gates is south of Zoo Entrance. South of Zoo Gates is Outside Exploration.

Zoo Parking is a room.
The description of Zoo Parking is "[ZooParkingDesc]".

to say ZooParkingDesc:
	say "     The zoo has a fairly large parking space, complete with eight spots for buses. There are still a fairly large number of cars on it, so your guess would be that the spreading nanite infection reached the zoo during the opening hours and most owners of those cars are still inside, in whichever form they now have...";

Zoo Parking is southwest of Zoo Entrance. The earea of Zoo Parking is "Zoo".

Fence Path is a room. The description of Fence Path is "[FencePathDesc]".

to say FencePathDesc:
	say "     You're on a path running along the outer edge of the zoo here. It's quite nicely laid out, with a lot of grass and decorative plants on both sides. Behind the bushes, in the west, you see the metal border fence, tall and made of wrought iron with spikes on the top. To the north, a tall wall looms up some small distance away. As you walk along the path, you see one of the bars has been cut out of the fence of the cheetah exhibit in the east. You could climb into the enclosure through the resulting hole...";

Fence Path is north of Zoo entrance. east of Fence Path is cheetah habitat. north of Fence Path is Border Wall. The earea of Fence Path is "Zoo".

Dirty Hose is an object. It is in the fence path. It is fixed in place. Understand "hose" as dirty hose.
the description of dirty hose is "This old hose was once used to water plants or maybe spray the animals. A faint trickle of water still drips from it. You could [']drink['] it, if you trust the water.".

instead of drinking the dirty hose:
	increase carried of dirty water by 1;
	process dirty water;
	stop the action;

the scent of Fence Path is "The whole area smells strongly of animal scents, arousal and sex.".

Border Wall is a room. 
The description of Border Wall is "[BorderWallDesc]".

to say BorderWallDesc:
	say "     The outer boundary of the zoo in the north is formed by a huge wall that extends far in both directions, cutting the city off from what lies beyond. You vaguely remember reading about its construction at the start of the last century - apparently a fair bit of the countryside towards the north was owned by a single rich man then, who was mad as a hatter with germophobia and whatnot. At some point the guy decided he never wanted to see another human in his life, resulting in the construction of the 'Great Wall of the West'. It doesn't even have any openings, just arches around an area a dozen miles in circumference which borders the ocean. No one has been on the other side of since then, as the land is held by a trust and has been declared a nature sanctuary. Which means that it would actually make it a good place to flee to, escaping the creature-infested inner city.";

the scent of Border Wall is "The whole area smells strongly of animal scents, arousal and sex.". The earea of Border Wall is "Zoo".

Cheetah Habitat is a room. The earea of Cheetah Habitat is "Zoo".
The description of Cheetah Habitat is "[CheetahHabitatDesc]".

to say CheetahHabitatDesc:
	say "     This is the home of cheetahs, a relatively large and open area with a few rocks and trees. From the looks of it, there are none out and about right now, though that might change at any moment. After all, there is a large cat flap in the side of the building forming the front of the enclosure. One of the panes of glass meant for dividing animals from visitors has been shattered into pieces, so you can just walk though the hole and exit the habitat and cheetah house through the doors in its south wall.[CheetahLickChance]";
	
the scent of Cheetah Habitat is "A very strong scent of aroused cheetah hangs in the air here. Just standing here and breathing it in makes you excited and weak in the knees.". 

to say CheetahLickChance:
	LineBreak;
	if a random chance of 1 in 3 succeeds and inafight is not 1:
		say "     A throaty sound makes you look behind you and freeze, as a large spotted cat prowling towards you. You stand motionless as it walks up, inspecting you with interested eyes and sniffing at your legs, then even rearing up and placing its paws on your body to check your upper half out. Remembering from TV that the best thing to do in this situation is to remain still, you hope that it'll leave you alone, but the cat clearly has other plans.";
		say "     The cheetah nuzzles up to you, running a rough tongue over your exposed skin and pawing at your clothes to expose more - especially around your crotch. Getting lapped and played with by the wild beast, you relax a little after a while, as this seems to be about as far as it intends to go with you right now. Eventually, the big cat seems satisfied and leaves you alone, stalking away to a good spot and taking a nap there.";
		infect "Feral Cheetah";
		follow the turnpass rule;
	else:
		say "     It is eerily quiet in here. You should probably leave now.";

The Cheetah Doors is a door.
The description of Cheetah Doors is "A pair of double doors leads in and out of the cheetah house.".
understand "door" or "gate" as the Cheetah Doors.
south of Cheetah Doors is Zoo Entryway.
north of Cheetah Doors is Cheetah Habitat.

Zoo Entryway is a room. Zoo Entryway is east of Zoo Entrance.
The earea of Zoo Entryway is "Zoo".
The description of Zoo Entryway is "[ZooEntrywayDesc]".

to say ZooEntrywayDesc:
	say "     This is the main entryway of the zoo, start of the main path winding its way between the animal enclosures. The path is comfortably wide, clearly meant for large groups of visitors and leads on to the northeast, its surface formed by well-laid cobblestones. Flanking it in the north is the cheetah exhibit, while there are public restrooms on the south side.";

the scent of Entryway is "The whole area smells strongly of animal scents, arousal and sex.".

Zoo Restrooms is a room. Zoo Restrooms is south of Zoo Entryway.
The earea of Zoo Restrooms is "Zoo".
The description of Zoo Restrooms is "[ZooRestroomsDesc]".

to say ZooRestroomsDesc:
	say "     You're in the zoo's large public restrooms. Looks like someone went on a rampage in here... the stall doors of all the toilets have been ripped off, and it seems like something used toilet-paper rolls as chew toys, spreading shredded paper all throughout the rooms. Some large muddy paw-prints at the entrance show that it must have been an animal of some kind.";

the scent of Zoo Restrooms is "The air in the restrooms is thick with the musky scent of animal arousal and cum, with a light underlying note of urine. The heavy scents must be laden with pheromones or something, as you feel the urge to find a beastly lover rise in you.".

Main Path 1 is a room. Main Path 1 is northeast of Zoo Entryway.
The earea of Main Path 1 is "Zoo".
The description of Main Path 1 is "[MainPath1Desc]".

to say MainPath1Desc:
	say "     You're on the cobbled main path of the zoo, in between many different exhibits. In this section, there's the alligator enclosure in the north and a bird house with an enormous web canopy connected to it in the south. Coming from the entrance in the southwest, the path continues to the east, where it leads deeper into the zoo.";
		 
the scent of Main Path 1 is "The whole area smells strongly of animal scents, arousal and sex. The scent of the bird house to the south can faintly be smelled as well.". 

Main Path 2 is a room. Main Path 2 is east of Main Path 1.
The earea of Main Path 2 is "Zoo".
The description of Main Path 2 is "[MainPath2Desc]".

to say MainPath2Desc:
	say "     You're on the cobbled main path of the zoo, in between many different exhibits. In this section, there's the snake house in the north, and in the south you can see the enormous web canopy of the bird enclosure arching over a moderately large forest area. If you want to go in and check it out, the bird house forming the entry is to the west of you. Further east, the path widens onto a small plaza.";

the scent of Main Path 2 is "The whole area smells strongly of animal scents, arousal and sex. The scent of the bird house to the south can faintly be smelled as well.".

Zoo Rest Area is a room.
Zoo Rest Area is east of Main Path 2. The earea of Zoo Rest Area is "Zoo".
The description of Zoo Rest Area is "[ZooRestAreaDesc]".

to say ZooRestAreaDesc:
	say "     This plaza in the midst of the zoo was meant to serve as a rest area for the visitors. Surrounding a bronze statue of a tiger in the middle, there are benches, several picnic tables and a number of food stands - thoroughly looted now, and one even has been completely flattened. Even those stands that sold non-edible goods were ransacked, the shreds of white fluff scattered about them attesting to the gruesome end of quite a few stuffed toys. Seeing this scene of devastation reminds you strongly that this isn't a safe and peaceful place anymore. Clearly, there are wild beasts out and roaming the area and you should take care if you want to explore any of the many paths leading off in all directions, leading to the expansive grounds of the zoo. It might just be a good idea to go back west towards to the entrance.". 

Zoo Paths 1 is a door. Zoo Paths 1 is dangerous. The marea of Zoo Paths 1 is "Zoo". Zoo Paths 1 is undescribed.
Zoo Paths 2 is a door. Zoo Paths 2 is dangerous. The marea of Zoo Paths 2 is "Zoo". Zoo Paths 2 is undescribed.
Zoo Paths 3 is a door. Zoo Paths 3 is dangerous. The marea of Zoo Paths 3 is "Zoo". Zoo Paths 3 is undescribed.
Zoo Paths 4 is a door. Zoo Paths 4 is dangerous. The marea of Zoo Paths 4 is "Zoo". Zoo Paths 4 is undescribed.
Zoo Paths 5 is a door. Zoo Paths 5 is dangerous. The marea of Zoo Paths 5 is "Zoo". Zoo Paths 5 is undescribed.
East of Zoo Paths 1 is Zoo Exploration. Northeast of Zoo Paths 2 is Zoo Exploration. North of Zoo Paths 3 is Zoo Exploration. Southeast of Zoo Paths 4 is Zoo Exploration. South of Zoo Paths 5 is Zoo Exploration.
Zoo Paths 1 is east of Zoo Rest Area. Zoo Paths 2 is northeast of Zoo Rest Area. Zoo Paths 3 is north of Zoo Rest Area. Zoo Paths 4 is southeast of Zoo Rest Area. Zoo Paths 5 is south of Zoo Rest Area.

Table of Game Objects(continued)
name	desc	weight	object
"red herring"	"The only plushy that survived the destruction of its compatriots in around the zoo rest area. It is wonderfully soft with bright red fur, green plastic eye-buttons and a goofy grin stitched on. Why would the city zoo have fish toys? It doesn't even have an aquarium... Strange, maybe this means something."	1	red herring

the scent of red herring is "The plushy inexplicably smells of licorice.".

red herring is a grab object. red herring is not temporary.
the usedesc of red herring is "[HerringUse]";

to say HerringUse:
	say "     Stroking over the red plush toy, you relax a bit, though your mind keeps wondering if you should use it for something specific, maybe give it to someone?";

when play begins:
	add "red herring" to invent of Zoo Rest Area;

Bird House is a room. Bird House is south of Main Path 1.
The earea of Bird House is "Zoo".
The description of Bird House is "[BirdHouseDesc]".

to say BirdHouseDesc:
	say "     You're in the bird house, which contains informative plaques and signs explaining lots of facts about all the feathered creatures. Then there is a door to the back area in which the zookeepers cared for the birds, which you assume contains supplies and all kinds of stuff - sadly, it's locked, and with a pretty sturdy lock too. And finally, there is a kind of airlock, consisting of two doors and a bit of hallway in between that leads into the bird enclosure itself. Back north is the exit to the main zoo pathway.";

the scent of Bird House is "This whole area smells strongly of birds.".

Bird Enclosure is a room. The earea of Bird Enclosure is "Zoo".
The description of Bird Enclosure is "[BirdEnclosureDesc]".

to say BirdEnclosureDesc:
	say "     This bird enclosure isn't so much a cage as it is a small piece of forest under an enormous web-canopy, held up by very long steel struts and quite a few strands of steel cables. There's nothing between the birds and the walkways through the enclosure - which might not be such a good thing these days, now that you think of it. Who knows what creatures now populate this area and how dangerous they are.[BirdExposureChance]";

the scent of Bird Enclosure is "This whole area smells strongly of birds.". 

The Bird Doors is a door. The description of Bird Doors is "     Two doors with a short corridor in between make sure that none of the birds leave their enclosure. Or they did, in the time before there were intelligent bird-creatures in here. They might still pose a problem for some inhabitants of the habitat, but many will no doubt be able to go in and out here.".
understand "door" or "gate" or "doors" as the Bird doors.
Outside of Bird Doors is Bird House.
Inside of Bird Doors is the Bird Enclosure.

to say BirdExposureChance:
	LineBreak;
	if a random chance of one in three succeeds:
		if a random chance of 1 in 2 succeeds and inafight is not 1:
			say "     A blue bird with a white belly comes swooping down and pecks you on the head. You have no idea what you did to annoy it, but the spot it hit hurts!";
			infect "Hermaphrodite Gryphon";
		else:
			say "A light brown bird more commonly known as a wren flies over and pulls up, headed to the ceiling in from of you. As it does this, it lets loose and hits you full in the chest with a big splatter of bird poop.[line break]Disgusting!";
			infect "Harpy";
	else:
		say "     There is an ominous feeling about here, and you feel real uncomfortable.";

Snake house is a room. Snake house is north of Main Path 2.
The earea of Snake House is "Zoo".
The description of Snake house is "[SnakeHouseDesc]".

to say SnakeHouseDesc:
	say "     This house has quite a number of terrariums set into the walls of room after room. They're all empty, which might just be the result of having their glass fronts smashed in. No evidence remains who did this or why, but you can make out where the snakes went from the tracks through all the little glass fragments on the floor. They lead outside, ending at a nearby sewer grate that has been bent and warped, creating an opening big enough to slither through, though not for you to follow. Looks like any snakes are now in the sewers.";
	
the scent of Snake House is "The whole area smells strongly of snakes.". 

Gator Pit is a room. Gator Pit is north of Main Path 1.
The earea of Gator Pit is "Mall".
The description of Gator Pit is "[GatorPitDesc]".

to say GatorPitDesc:
	say "     This enclosure held alligators once, but it's empty now. Behind a shattered glass wall, there is a pit formed from artificial rock that clearly held water once. In the middle of that is... a footprint? Almost looks like a giant stepped on it - and broke right through, his weight collapsing a section of the alligators['] water pit into the sewer tunnel not far below. Which might just be where the alligators went. The way into the tunnels is still open, if you want to dare climbing down over the rubble and explore the sewers. Although it looks dangerous down there...";

the scent of Gator Pit is "This enclosure smells strongly of the gators who once lived here. The scents rising from the sewers make you pinch your nose shut.". 

Sewer Exploration is a door. Sewer Exploration is dangerous. Sewer Exploration is undescribed.
Down of Gator Pit is Sewer Exploration.
Down of Sewer Exploration is Sewers A7.
The marea of Sewer Exploration is "Mall". The Sewer Exploration is open. The description of Sewer Exploration is "The black hole of the sewer tunnel is accessible through climbing down over the rubble in the gator enclosure. Looks dangerous down there, but nothing ventured, nothing gained, right?". understand "tunnel" and "hole" as the Sewer Exploration.

[Angie and the Zoo Giftshop have been moved to the Angie file in Sarokcat's folder.]

[The Feral Cheetah creature has been moved to the Feral Cheetah for FS.i7x file.]

The Zoo ends here.