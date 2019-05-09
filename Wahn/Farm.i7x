Version 1 of Farm by Wahn begins here.
[Version 0.2 - Initial Setup in progress]

[ Events: Cow Hunting, Missing Cow                          ]
[ NPCs: Anthony the anteater, Corbin the cowboy cuntboy     ]
[                                                           ]
[ Further Plans:                                            ]
[ Mustang NPC+Infection + Quest                             ]
[ Wendy the cow NPC + her offspring with the gryphon        ]

"Adds a farm and NPC, or alternatively a Cowboy to Flexible Survival's Wandering Monsters table."


Section 1 - Farm Rooms

Table of GameRoomIDs (continued)
Object	Name
McDermott Farm Entrance	"McDermott Farm Entrance"

McDermott Farm Entrance is a room. It is a fasttravel. It is private.
The description of McDermott Farm Entrance is "     You're standing at entrance of a mid-sized farm, on the cracked asphalt that's left of a road leading here. Seems almost like the nanites enhanced grass to actively seek out and grow into and through human works to destroy them. Or at least try to - things on the other side of the long fence dividing the farm from the rest of the plains look pretty intact - which might have something to do with the two anthro horses with scythes you see working their way along, cutting down any sign of encroaching creeping grass. A sign on the archway over the road tells you that this is the 'McDermott Farm', in existence since 1792.".

Instead of sniffing McDermott Farm Entrance:
	say "     The scent of freshly cut grass hangs in the air.";

Open Grassland is a door. "Beyond the archway forming the entrance of the McDermott Farm, wide open grassland stretches out into the distance. Not as far as the eye can see, but nevertheless covering a significant area of what once was part of the city. The creeping grass sure was relentless in destroying buildings wherever it could spread.".
Open Grassland is south of McDermott Farm Entrance and north of Wandering the Plains.
Open Grassland is dangerous.
the marea of Open Grassland is "Plains".

Table of GameRoomIDs (continued)
Object	Name
Central Farm Square	"Central Farm Square"

Central Farm Square is a room.
Central Farm Square is north of McDermott Farm Entrance.
The description of Central Farm Square is "     You're on the central square between the different parts of the farm. Around you to the northwest is a big, pretty old farm house. Then to the west a large barn and beside that in the southwest another building that looks like it's the worker barracks. To the north you can see a fenced paddock, to the east a fairly large milking shed and between them a path that leads to the northeast. Finally, to the south is the archway that marks the entrance to the farm and through which you could leave again.".

Table of GameRoomIDs (continued)
Object	Name
Milking Shed Main Room	"Milking Shed Main Room"

Milking Shed Main Room is a room.
Milking Shed Main Room is east of Central Farm Square.
The description of Milking Shed Main Room is "[MShedDesc]".

to say MShedDesc:
	if daytimer is day:
		say "     You're in a big room that stretches for the full length of this building, making out at least half of its size all on its own. There is a whole row of milking stalls in here, all of them equipped with tubes and suction apparatuses. From one of the back rooms, the sound of a running generator is audible, explaining why the machines in here still work, contrary to the usual state of things in the city. Currently, there are several cows in various stalls, mooing contently from time to time as the pressure of the milk in their udders is being reduced.";
	else:
		say "     You're in a big room that stretches for the full length of this building, making out at least half of its size all on its own. There is a whole row of milking stalls in here, all of them equipped with tubes and suction apparatuses. At night, they sit silent and unused, empty until the cows get back in them the next day.";

Table of GameRoomIDs (continued)
Object	Name
Farmhouse Main Room	"Farmhouse Main Room"

Farmhouse Main Room is a room.
Farmhouse Main Room is northwest of Central Farm Square.
The description of Farmhouse Main Room is "     You're in the main room on the ground floor of the farmhouse, which is pretty big and includes a living and dining area, with the kitchen visible through an open archway in the back. This place has a certain rustic charm, with wooden walls and old but well-made looking furniture. Several comfy leather couches stand around a coffee table in the front half of the room, angled towards a fireplace and a large plasma television on the adjoining wall.".

Instead of sniffing Farmhouse Main Room:
	say "     The comfortable scents of wood and the leather couches hang in the air.";

Table of GameRoomIDs (continued)
Object	Name
Worker Barracks	"Worker Barracks"

Worker Barracks is a room.
Worker Barracks is southwest of Central Farm Square.
The description of Worker Barracks is "[BarracksDesc]".

to say BarracksDesc:
	say "     This long building is mostly one large room, a kind of living area at the front with a table, sofas and a TV, the back half filled with quite a few bunk beds spaced a bit apart, with tall lockers in between. Several farm-workers are always present, for the main part anthro horsemen, though most don't seem to be all that talkative, coming here to rest and sleep after long hours battling the encroaching nanite-enhanced grassland. It looks like there's lots of unused room and empty beds in here - with these barracks being laid out for the number of people working in harvest time and currently only the base crew of permanent farm hands here.";
	if CorbinKidCounter is 1:
		say "     Corbin's son Dale is in here too, by now grown to a strapping teenager. Thankfully, the workers treat him pretty well, even teaching him some stuff so he can help on the farm.";
	else if CorbinKidCounter > 1:
		say "     Corbin's son Dale is in here too, and the strapping teenager watches out for his kid siblings, with the little tykes being pretty active and curious about everything. Strangely, he seems to be the only one that did grow especially fast, with all the other little horses still small children. Thankfully, the workers treat the little ones well, even playing with them or teaching them all kinds of stuff.";

Table of GameRoomIDs (continued)
Object	Name
Farm Pathway	"Farm Pathway"

Farm Pathway is a room.
Farm Pathway is northeast of Central Farm Square.
The description of Farm Pathway is "     Between the long milking shed in the south and the fenced paddock in the west, northwest and north, this pathway leads from the central farm square in the southwest to a rather large green meadow in the east.".

Table of GameRoomIDs (continued)
Object	Name
Sheep Meadow SW	"Sheep Meadow SW"

Sheep Meadow SW is a room.
Sheep Meadow SW is east of Farm Pathway.
The description of Sheep Meadow SW is "     You're in the southwestern corner of an enormous meadow, still green in contrast to the dry grassland outside the farm. White shapes of sheep trot around in the distance, peacefully grazing.".

to say MeadowSWDesc:
	say "     You're in the southwestern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Ending at the wall of the milking shed in the south, it stretches out further to the north, northeast and east. A path to the west leads back to the main farm buildings.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	else:
		say "     At night, everything is still and quiet out here.";

Table of GameRoomIDs (continued)
Object	Name
Sheep Meadow SE	"Sheep Meadow SE"

Sheep Meadow SE is a room.
Sheep Meadow SE is east of Sheep Meadow SW.
The description of Sheep Meadow SE is "[MeadowSEDesc]".

to say MeadowSEDesc:
	say "     You're in the southeastern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Ending at the wall of the milking shed in the south and bounded by a long fence to the east, it stretches out further to the west, northwest and north.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	else:
		say "     Looks like all the sheep came together here as a herd to rest for the night. They're standing in a big bunch close to the wall of the milking shed.";

Table of GameRoomIDs (continued)
Object	Name
Sheep Meadow NE	"Sheep Meadow NE"

Sheep Meadow NE is a room.
Sheep Meadow NE is north of Sheep Meadow SE.
The description of Sheep Meadow NE is "[MeadowNEDesc]".

to say MeadowNEDesc:
	say "     You're in the northeastern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Here, the long fence bounding the meadow makes a turn, not only restricting the way east, but also northeast and north. It stretches further to the south and west, fencing in the whole area.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	else:
		say "     At night, everything is still and quiet out here.";

Table of GameRoomIDs (continued)
Object	Name
Sheep Meadow NW	"Sheep Meadow NW"

Sheep Meadow NW is a room.
Sheep Meadow NW is west of Sheep Meadow NE.
The description of Sheep Meadow NW is "[MeadowNWDesc]".

to say MeadowNWDesc:
	say "     You're in the northwestern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Here, the long fence bounding the meadow on the north side meets the fence of the paddock to the west, with the rest of the meadow stretching to the east, southeast and south.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	else:
		say "     At night, everything is still and quiet out here.";

Sheep Meadow NE is northeast of Sheep Meadow SW.
Sheep Meadow SE is southeast of Sheep Meadow NW.
Sheep Meadow NW is north of Sheep Meadow SW.

The Barn Door is a door.
The description of Barn Door is "The barn has a big set of wooden double doors, which don't even have a lock or anything, just a latch to hold them closed.".
understand "door" as the Barn Door.
Central Farm Square is east of Barn Door.
McDermott Barn is west of Barn Door.

Table of GameRoomIDs (continued)
Object	Name
McDermott Barn	"McDermott Barn"

McDermott Barn is a room.
The description of McDermott Barn is "[BarnDesc]".

to say BarnDesc:
	if daytimer is day:
		say "     You're in a large barn with many stalls for animals along the walls. They hold mostly cows, but also a few horses, munching peacefully on hay and other foodstuffs. From time to time, Corbin comes into the barn to lead a cow over to the milking shed or bring one of them back here. In the back of the room, there is a ladder leading up to a large hayloft.";
	else:
		say "     You're in a large barn with many stalls for animals along the walls. They hold mostly cows, but also a few horses, all of them just standing there, sleeping. In the back of the room, there is a ladder leading up to a large hayloft.";

Table of GameRoomIDs (continued)
Object	Name
Barn Hayloft	"Barn Hayloft"

Barn Hayloft is a room.
Barn Hayloft is above McDermott Barn.
The description of Barn Hayloft is "     The hayloft is pretty big and... filled with hay. Lots and lots of hay, piled up nearly to the ceiling. From time to time, something rustles somewhere inside. Who knows what's hiding here...".

Table of GameRoomIDs (continued)
Object	Name
Mustang Paddock	"Mustang Paddock"

Mustang Paddock is a room.
The description of Mustang Paddock is "     This large fenced area is the paddock of the wild mustang the farm got just before the nanite catastrophe. Now it is fully his domain, with any who trespass being in danger of becoming one of his new mares, several of whom you can see further back in the paddock. In the front bit, where you are, there is no one except the mustang himself, who is already galloping towards you.".

The Mustang Paddock Gate is a door.
The description of Mustang Paddock Gate is "     The large gate leading to the paddock with the mustang and his harem looks pretty sturdy - and it and the adjoining fence have had an electrified wire running strung over their top added not too long ago from the looks of it. Finally, there is a padlock holding the gate closed. Its key hangs from a short chain beside it, but still... seems like someone really doesn't want those horses to get out.".
understand "gate" as the Mustang Paddock Gate.
Central Farm Square is south of Mustang Paddock Gate.
Mustang Paddock is north of Mustang Paddock Gate.


instead of going north from Central Farm Square while (HP of Lucifer is 0):
	move player to Mustang Paddock;
	wait for any key;
	challenge "Feral Mustang";

instead of going north from Central Farm Square while (HP of Lucifer is 1 and Dexterity of Lucifer is 0):
	say "     As you move to open the gate to the horse paddock, someone calls out to you, making you turn and look. It is a horseman, clearly one of the farm workers, who casually strolls over to you with a bundle of... something on his shoulder, consisting of lots of sturdy leather straps and buckles. Soon, he comes to stand before you on his broad hooves and gives you a calculating grin. 'Hey there, partner. Name's Lee. I saw you making all buddy buddy with Lucifer in there. You're a brave one, that I have to admit. Lots of others tried and ended up as mares right quick. There's a betting pool how long you'll last, just you know.' Looking you up and down as if to evaluate your body's willingness to transform, the horseman gives a knowing nod, then focuses back on your face. 'Anyhow, I got a proposition for you. Since you're so friendly with the big bad stallion, I'll offer you this thing for a low, low price. Hell, I'll even play pit crew if you need me to,' Lee explains, pulling the leather harness from under his arm and spreading it out for you to see.";
	say "     It looks like... a sex sling, with a sturdy leather pad on which to lie, plus very long leather straps, arranged so they can fit a broad barrel shape. You study the arrangement for a few seconds, then your eyes go wide in realization and you glance to the horses out on the paddock's green grass. 'Exactly,' the farmhand says, smiling broadly. 'You see, we had a... horse enthusiast, coming over sometimes before everything went to hell like this. At night, or when the boss was off for a few days, you know. For the right price, me and a few of the guys allowed him to have his fun, strapped him in. The guy had been waiting for a chance to try the new stud, but with everything going on...' Lee waves at his own horseman body and the entrance of the farm, beyond which you can see the creeping grass move in waves that have nothing at all to do with wind.";
	WaitLineBreak;
	say "     Lee goes on to say, 'I don't think he'll be back. So here I got this harness, and you could be the one to use it now... if you catch my drift. Come on, we both know you wanna get it on with Lucifer. Won't even have to pay me much for the harness and my help. Cash's useless anyways these days, so I'll do it if you get me something. Strands of hair from a centaur mare. I - got plans for that stuff.' Glancing over towards the barracks and barn, a lewd smile plays over Lee's face, then he pats your shoulder and says, 'Think about it, will ya? I'll keep an eye out and you just wave me over if you're in the paddock and wanna get your fun on with this baby.' He pats the harness and tucks it under his arm, then strolls off, leaving you to enter the paddock on your own.";
	move player to Mustang Paddock;
	now Dexterity of Lucifer is 1;

[
Section 4 - Endings


when play ends:
	if bodyname of Player is "Cowboy":
		if humanity of Player < 10:
			if level of Player > 10:
				say "     A";
			else:
				say "     B";
		else:
			say "     C";

]

Farm ends here.
