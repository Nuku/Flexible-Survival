Build by Maw begins here.

Part - Things that are

A Blueprint is an object. "A dark blue sheet of paper filled with light blue, finely lined boxes. You think you could [bold type]draw[roman type] plans up for some form of structures on it."
A Refinery is a building.
A Nursery is a building.
A College is a building.
A University is a building.
A Residential Area is a building.
A Barracks is a building.
The Refinery is a room.
The Nursery is a room.
The College is a room.
The University is a room.
The Residential Area is a room.
The Barracks is a room.

Part - Nouns

Understand "s" as south.
Understand "n" as north.
Understand "w" as west.
Understand "e" as east.
Understand "Buildings" as blist.
Understand "Draw" as bhelp.
Understand "Build [building] at [direction]" as Construct.

Construct is an action applying to one thing and one place.
blist is an action applying to nothing.

Part - Rules/Variables

check blist:
if blueprints is not visible, say "You must have lost them!" instead;

carry out blist:
	say "Available buildings: [no line break]";
	repeat with x running through valid research:
		if x is complete, next;
	

check building (building buying rule)
	if [cost] of the [building] is less than (freecred of tribe of player);
		
	instead;
		say "You are too poor.[one of[or] Maybe someone will grant you a loan?[or] Maybe [nerd] has some money you can borrow?[at random]"
		

The [room] is [direction] of the [player location].

Part - Rooms


Build ends here.
