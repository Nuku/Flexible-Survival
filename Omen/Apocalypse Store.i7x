Version 2 of Apocalypse Store by Omen begins here.
[Version 1 - originally authored by DrGryphon]

"Adds new equipment for the player."

Table of GameEventIDs (continued)
Object	Name
Clothing Store	"Clothing Store"

Clothing Store is a scavevent.
ResolveFunction of Clothing Store is "[ResolveEvent Clothing Store]".
Sarea of Clothing Store is "Outside".

to say ResolveEvent Clothing Store:
	say "     As you explore the city, you come across an outlet mall. Most of the buildings have been destroyed, the area is littered with debris. Trash cans are blown over, spilling their contents into the streets. All the cars here are damaged beyond repair, though one of them has somehow maintained its car alarm which continues to go off. Most of the cars are simply smoldering chunks of metal, fire having stripped them of anything useful. You keep your distance from these cars, doing your best to avoid the strong smell of burning tires. Some of the buildings are still standing, for now at least; you could try to enter one if you wish.";
	say "     [bold type]Do you try and enter one of the stores?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure - there might be something useful.";
	say "     ([link]N[as]n[end link]) - No, its too dangerous.";
	if Player consents:
		LineBreak;
		say "     You scour the remaining buildings, looking for one that seems safe to enter. Passing some that are downright ruins, it's not too long before you come across a sporting goods store which seems to have survived the fire reasonably well. Most of the goods have been destroyed or are missing, with some carelessly thrown to the ground and stained with dried cum. Apparently others have already looted the area, and spent some time doing other things too. Only as you venture further into the store, you begin to see items that are mostly intact. To your left, a forgotten mannequin is standing silently, wearing a slightly singed hoodie. Stepping up to check it out, you pull the hoodie off the human-sized posing doll and examine it more closely. It's one of those nice and soft, but vastly overpriced hoodies with a few holes in it. Surely nice enough to add to your pack!";
		ItemGain Apocalypse Hoodie by 1;
		WaitLineBreak;
		say "     After shoving the garment into your backpack, a treasure-hunter's instinct leads you further, soon reaching the changing rooms in the back. Opening door after door and finding them empty, you almost give up, only to find something useful in the last one. There are some lightly damaged compression shorts in a heap on the ground, which you pick up and inspect. Stretchy, and sure to be a tight fit for most human-sized people, but then again, modesty doesn't mean much in this city anymore. The returns-rack at the back of the section bears more things to find - a skirt along with a scarf in halfway passable condition.";
		ItemGain Apocalypse Shorts by 1;
		ItemGain Apocalypse Skirt by 1;
		ItemGain Apocalypse Scarf by 1;
		WaitLineBreak;
		say "     [bold type]Do you try to look around some more, or take what you have and head back?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - There's a equipment section on the right side of the store, it's possible something survived the fire.";
		say "     ([link]N[as]n[end link]) - No, you're satisfied with what you found.";
		if Player consents:
			LineBreak;
			say "     Deciding to further examine the remains of this store, you head over to the equipment section in the more charred section of the store. Passing some racks of golf supplies that have been burned and warped by the fire, you come across an overturned shelf of baseball equipment. While examining the collapsed shelf, you see something glinting in the rubble. You give the metal a firm tug, pulling it free from the charred remains. Blowing on it a bit reveals an emblem of the local college team printed upon it. It is entirely made of metal and seems to be more of a decorative bat rather than something someone would use in the sport. Giving the bat a few practice swings, you think this would make a decent weapon to defend yourself with. After picking the bat up, you head back satisfied.";
			ItemGain Metal Baseball Bat by 1;
		else:
			say "     After looking around a bit one last time you decide to head back.";
		increase score by 5;
	else:
		say "     You decide whatever clothing you might get out of this isn't worth risking a building collapsing on top of you and head back.";
	now Clothing Store is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"Apocalypse Skirt"	"A very short skirt that has been singed and torn by an explosion. It's still wearable and the destroyed look fits in with the current situation."	1	Apocalypse Skirt
"Apocalypse Shorts"	"A pair of stretchy running shorts that have been singed and torn by an explosion. They're still wearable and the destroyed look fits in with the current situation."	1	Apocalypse Shorts
"Apocalypse Hoodie"	"A large zippable hoodie that has been singed and torn by an explosion. It's still wearable and the destroyed look fits in with the current situation."	1	Apocalypse Hoodie
"Apocalypse Scarf"	"A long scarf that has been torn and burnt from an explosion. It's still wearable and the destroyed look fits in with the current situation."	1	Apocalypse Scarf


Apocalypse Skirt is a grab object.
Apocalypse Skirt is equipment.
It is not temporary.
The AC of Apocalypse Skirt is 0.
The effectiveness of Apocalypse Skirt is 0.
Traits of Apocalypse Skirt is {"slutty", "grungy"}.
The placement of Apocalypse Skirt is "body".
The descmod of Apocalypse Skirt is "A torn and burnt mini skirt barely covers your lower [BodyName of Player in lower case] body.".
The slot of Apocalypse Skirt is "legs".
the scent of Apocalypse Skirt is "There is a faint smell of smoke lingering on the item of clothing.".

Apocalypse Shorts is a grab object.
Apocalypse Shorts is equipment.
It is not temporary.
Plural of Apocalypse Shorts is true.
The AC of Apocalypse Shorts is 0.
The effectiveness of Apocalypse Shorts is 0.
Traits of Apocalypse Shorts is {"sporty", "grungy"}.
The placement of Apocalypse Shorts is "body".
The descmod of Apocalypse Shorts is "A torn and burnt pair of running shorts covers your legs.".
The slot of Apocalypse Shorts is "legs".
the scent of Apocalypse Shorts is "There is a faint smell of smoke lingering on the item of clothing.".

Apocalypse Hoodie is a grab object.
Apocalypse Hoodie is equipment.
It is not temporary.
Taur-compatible of Apocalypse Hoodie is true.
The AC of Apocalypse Hoodie is 0.
The effectiveness of Apocalypse Hoodie is 0.
Traits of Apocalypse Hoodie is {"grungy"}.
The placement of Apocalypse Hoodie is "body".
The descmod of Apocalypse Hoodie is "A torn and burnt hoodie covers your [bodydesc of Player] body.".
The slot of Apocalypse Hoodie is "back".
the scent of Apocalypse Hoodie is "There is a faint smell of smoke lingering on the item of clothing.".

Apocalypse Scarf is a grab object.
Apocalypse Scarf is equipment.
It is not temporary.
Taur-compatible of Apocalypse Scarf is true.
The AC of Apocalypse Scarf is 0.
The effectiveness of Apocalypse Scarf is 0.
Traits of Apocalypse Scarf is {"grungy"}.
The placement of Apocalypse Scarf is "head".
The descmod of Apocalypse Scarf is "A torn and burnt scarf covers your [FaceSpeciesName of Player in lower case] face.".
The slot of Apocalypse Scarf is "face".
the scent of Apocalypse Scarf is "There is a faint smell of smoke lingering on the item of clothing.".

[Metal Baseball Bat moved to Core Mechanics/Weapons.i7x]


Apocalypse Store ends here.
