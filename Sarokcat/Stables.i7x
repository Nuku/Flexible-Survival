Stables by Sarokcat begins here.

"Adds a new area to Flexible Survival with a variety of npcs..."

Section 1- The Stables

Stables is a room. It is fasttravel. It is private. 
Stable is a room.
Stalls is a room.

The description of Stables is "The lobby of this large sprawling building seems to be in surprisingly good repair. The room is lit by fashionable oil lamps lining the walls, filling the room with a warm light and illuminating the reception area. The reception desk is currently empty, although someone has set up an obviously handwritten sign that welcomes new visitors to 'The Stables' and asks that they ring the bell for service. Unfortunately there doesn[apostrophe]t appear to be a bell here to ring right now. A smaller sign is set on the other edge of the desk, advising all customers to please have payment ready when they enter the area.";
[in order to add additional rooms off the main room, merely type the new room and state that it is some direction from your current room. For example]

Northeast of Stables is Stalls.
West of Stables is Employee Access. 

The invent of The Stables is { "lucky horseshoe" , "lucky horseshoe" };

[This part creates a hunting area for your location, feel free to ignore it or remove it if the area does NOT have a random encounter zone.]
Stable entry is a door. "The lobby trails off to the north where a series of elevators and large double doors can be seen.". It is dangerous.

North of Stable entry is Stable.
North of The Stables is Stable entry.

The marea of Stable entry is "Stable".


[Additional rooms are easy as well]

The description of Stalls is "This room appears to be the small lobby to one of the guest wings, and while it looks like the main part of the building is still mostly boarded up, this part appears to have been repaired recently, and halls to the north and south appear to have been refurbished for use. Strangely enough, someone seems to have hung a sign in this area, labeling this particular area 'The Stalls'.";

North of Stalls is Mares Quarters. 
South of Stalls is Holding Pens.


Mares Quarters is a room.

The description of Mares Quarters is "This rather large hall leads to a large open room, with several smaller rooms opening up onto it. Someone has set out quite a bit of food on the side of the room, and a few mares are browsing the selection absently when you come in. A small desk has been set up near the entry, and a rather amused looking white mare wanders over to the desk and looks you up and down as you approach.";
Fancy is in Mares Quarters.
Daisy is in Mares Quarters.
Feeding Table is in Mares Quarters.

Feeding Table is a man.
The description of Feeding Table is "A large table that has been set up to the side of the room, it appears to have several different varieties of food set out on it. Perhaps not surprisingly, most of the food is of the type most attractive to horses, with several different types of oatcakes, and cereals set out, as well as some chips and grain trail mixes. There is also a small bowl of what appears to be labeled as, Mare[apostrophe]s Milk. Looking around, you note that some of the mares are eying you with curiosity as you look at the table, and a few even grin as they gesture for you to 'Sample the Food', maybe it wouldn[apostrophe]t hurt to 'Try the Horsefood' set out on the table?";



Lastmarefed is a number that varies. Lastmarefed is usually 250.
marefed is a number that varies. marefed is usually 0.

Marefeeding is an action applying to nothing.

Understand "Try the Horsefood" as Marefeeding;
Understand "Try Horsefood" as Marefeeding;
Understand "Sample the Food" as Marefeeding;
Understand "Sample food" as Marefeeding;
Understand "Sample Horsefood" as Marefeeding;

Check Marefeeding:
	If Feeding Table is not visible, say "huh?" instead;

Carry out Marefeeding:
	if Lastmarefed – turns is less than 8:
		say "You wander over to the table filled with food for the mares again, only to see several of the mares shooting you rather dirty looks as you look over the food. Sighing slightly, you decide that being greedy about the food isn[apostrophe]t worth annoying the so far polite horsewomen, and decide to try to snag some of the food again at a later time.";
	otherwise:
		say "Wandering over to the table filled with food on the side of the room, you notice several of the mares seem quite amused as you browse the selection, several of them coming over to help. The mares selecting several different bits of food for you to try, all the while they are giggling to themselves as you enjoy the strangely flavorful food selections. By the time the mares let you go after you have sampled at least a bite or two of most of the dishes set out on the table, you are definitely starting to feel a bit strange yourself, and definitely horny from all the attention the mares have been giving you.";
		decrease hunger of player by 10;
		infect "Mareslut";
		increase libido of player by 20;
		


Holding Pens is a room.

The description of Holding Pens is "This area seems to be a rather large hallway, with several open doors leading into small cell like rooms, that are all mostly unoccupied, though the smell of equine musk lingers strongly in the air. Strangely enough, all the rooms seem to have been modified with small bars to make them hard to escape from. Interestingly enough, one of the Cells at the end of the hallway appears to be occupied, and next to it someone has hung a handmade sign, reading, 'Onyx'.";
Onyx is in Holding Pens.




Employee Access is a room.

The description of Employee Access is "This long narrow hallway curves north, and has several doors along the sides, eventually ending in a pair of large closed double doors, labeled Master[apostrophe]s Stable. Unfortunately most of the doors are sealed tight, and you will need to find the keys or some other way to open them before you can go any further in this direction.";





Stables ends here.

