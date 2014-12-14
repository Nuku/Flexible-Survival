Version 1 of Farm by Wahn begins here.
[Version 0.2 - Initial Setup in progress]

[ Events: Cow Hunting, Missing Cow                          ]
[ NPCs: Anthony the anteater, Corbin the cowboy cuntboy     ]
[                                                           ]
[ Further Plans:                                            ]
[ Mustang NPC+Infection + Quest                             ]
[ Wendy the cow npc + her offspring with the gryphon        ]

"Adds a farm and npc, or alternatively a Cowboy to Flexible Survival's Wandering Monsters table."

when play begins:
	add { "Cowboy" } to infections of hermaphrodite;

Section 1 - Events

Cow Hunting is a situation. The level of Cow Hunting is 5.
The sarea of Cow Hunting is "Plains".
when play begins:
	add Cow Hunting to badspots of hermaphrodite; [Cuntboy cowboy]

Instead of resolving a Cow Hunting:
	say "     Roaming through the plains, you see a person a bit off in the distance who waves and starts walking towards you. As he comes closer, you see that it's a guy in the shape of a humanoid horse, wearing a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area. His chest is bare, showing off a well-built upper body with washboard abs.";
	say "     'Hi there, I'm Corbin James. I was wondering if you might have seen a cow somewhere... an actual one, I mean. Some critter broke through the fences and the cows got out over at the farm I work at. I found most of them, but the best producer, Wendy, is still missing...'";
	say "     [line break]";
	say "     What do you say to him? 'Sorry, haven't seen any cows.' [link](1)[as]1[end link], 'Forget the stupid cow - I'll fuck you now.' (and attack) [link](2)[as]2[end link] or 'A Cow? Really? The world's in the middle of all this and you worry about cows?' [link](3)[as]3[end link][line break]";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to say you haven't seen any, [link]2[end link] to rape him or [link]3[end link] to ask if he's serious.";
	if calcnumber is 1: [no]
		say "     [line break]";
		say "     He nods as you tell him you haven't seen any standard non-infected cows around since before the outbreak. 'Well, thanks anyways. But if you do find her after all please come and tell me over at the farm. It's the McDermott family farm a few miles that way. Or if you could just bring Wendy along... then there'd be a reward in it for you. No worries, she's pretty tame and tractable as long as there isn't a slavering beast running after her.' With that, the cowboy makes his goodbye and walks off to keep searching.";
		now Missing Cow is unresolved;
		now McDermott Farm Entrance is known;
		move Duke to Sheep Meadow SW; [putting him in his starting position]
		now thirst of Duke is 1; [starting the day/night movement of Duke]
		now thirst of Corbin is 1; [starting the day/night movement of Corbin]
	otherwise if calcnumber is 2: [rape]
		say "     [line break]";
		say "     The cowboy brings out a 'No! What the hell's wrong with you fu-', then you land the first blow and the conversation comes to a crashing halt.";
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Cowboy Cuntboy":
				now monster is y;
				now area entry is "Plains";
				now non-infectious entry is false;
				break;
		challenge "Cowboy Cuntboy";
	otherwise: [seriously?]
		say "     [line break]";
		say "     He shrugs 'Why the hell not? Even if I now look like this, it's my job. And a farm isn't the worst place to wait out these strange times - plenty of food, you know. So what about the cow? Have you seen her? No? Well, time to keep searching for me then. If you see her by any chance later - bring the old gal to the [bold type]McDermott farm[roman type] - a few miles that way. There's a reward.' With that, the horsey cowboy walks off to keep searching for the missing cow.";
		now Missing Cow is unresolved;
		now McDermott Farm Entrance is known;
		move Duke to Sheep Meadow SW; [putting him in his starting position]
		now thirst of Duke is 1; [starting the day/night movement of Duke]
		now thirst of Corbin is 1; [starting the day/night movement of Corbin]
	now Cow Hunting is resolved; [event resolved, either peacefully or through combat]

Missing Cow is a situation. The level of Missing Cow is 5. Missing Cow is resolved.
The sarea of Missing Cow is "Plains".

Instead of resolving a Missing Cow:
	say "     Roaming through the plains, you suddenly hear loud mooing coming from somewhere and as you look around, you spot an... interesting scene a moderate distance away. Looks like a cow - a regular, non-transformed one - who's just being fucked by a pretty large gryphon. The winged predator is holding the bovine only lightly with his taloned paws as he ruts her from behind and it doesn't look like she's minding getting fucked by him - in fact, the sounds she makes seem rather pleased.";
	say "     This must be Wendy, the missing cow Corbin told you about. There's that reward waiting for you if you manage to bring her back to the McDermott Farm. What do you want to do about her now? You could just... wait, hoping the gryphon might fly off after he got his rocks off - on the other hand, there's no guarantee that the feral beast won't just want a quick snack after sex and could eat her.";
	say "     [line break]";
	say "     So - wait (Y) or attack now (N)?";
	if player consents:
		say "     [line break]";
		say "     You decide to just wait the gryphon out, keeping your distance (at first) and finding a good spot from which you can observe them. Lustful moos and gryphon shrieks sound out across the plains as the cow keeps getting mounted by the winged lion, both of them oblivious to anything around them. As you watch the unequal partner's coupling, you find yourself walking slowly towards them, eager to get a better view. Soon you're pretty close - close enough to hear the squelching noises as the gryphon thrusts in and see the wetness of the cow's fur on her backside and the hind legs. This obviously has been going on for quite a while, more than one load of the mythical beast leaking out around his shaft as he pounds into Wendy.";
		say "     The sex continues with unabated wildness for some more time, until you notice the feral gryphon getting louder in his shrieks and faster with the thrusts. Finally he pushes all of his hard cock into her for a final time, knotting with the bovine as he blasts another large load of his seed into her. Staying bound to Wendy for some more time after that, her pussy and womb flooded with his seed held in by the knot, the gryphon rubs the side of his beak and head against her back affectionately, taking care not to hurt her with the sharp tip of his beak.";
		say "     [WaitLineBreak]";
		say "     An intermediate time later, he dismounts her, pulling his knotted shaft free with a pop and a gush of milky white cum. The gryphon's cock dangles down between his legs, wet and dripping, now quickly softening. Now done with his bovine mate, the large creature looks around, giving a surprised squawk as he notices you for the first time. Putting a somewhat possessive as well as protective paw on the cow's back, he gives you a distrustful look. Not quite sure if this feral creature can even understand you, you raise your hands in a pacifying gesture and concentrate on keeping a calming tone of voice as you explain to him that you just want to bring Wendy back home where she'll be taken care of.";
		say "     Seems like you got through to him on some level... with a last squawk that might be a goodbye, the gryphon rubs his head against Wendy, then jumps into the air, flying off with strong beats of his large wings. You're left standing on the plains with Wendy the cow, now munching calmly on a mouthful of grass as she looks back at you and her pussy twitches as the gryphon's cum keeps dripping out of it.";
		say "     [WendyGryphonAftermath]";
	otherwise: [fight]
		say "     [line break]";
		say "     Rushing forward, waving your arms and shouting at the gryphon, you get its attention and ruin the mood for the large creature. With an annoyed squawk, the feral dismounts Wendy, then turns to you.";
		challenge "Feral Gryphon";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "     Having dealt with you, the gryphon gives a satisfied squawk, then turns back to Wendy. You hear his stomach rumble. Ohoh... that doesn't sound good - and you can't stop him now. The predatory beast walks towards the cow, then... rubs the side of his head against her in visible affection, squawks what you suppose is a goodbye and jumps into the air, flying off with powerful wing-beats. Phew - seems like he doesn't eat what he fucks. You pick yourself up from the ground, then walk over to the peacefully grazing cow. As you walk around her and her hindquarters come into sight, you realize that the gryphon must have been breeding her for some time already - his cum is just dripping out of her.";
			say "     [WendyGryphonAftermath]";
		otherwise if fightoutcome >= 30: [fled]
			say "     At some point as you were running, the feral gryphon turned around and made his way back towards the cow. You just hope that he goes back to fucking her and isn't munching on a piece of beef right now...";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     Having driven the gryphon off, you have a look at Wendy the cow, now calmly munching on a mouthful of grass. She doesn't seem to be bothered at all from having been fucked by a gryphon - multiple times at least, before you arrived, judging from the amount of cum oozing out of her pussy and making the fur on her back end wet and sticky.";
			say "     [WendyGryphonAftermath]";

to say WendyGryphonAftermath:
	say "     [WaitLineBreak]";
	if cocks of player > 0:
		say "     Seeing the thoroughly bred cunt of this large and docile creature right in front of you, the thought comes into your mind that you could just... try her out yourself. It's not like one more load would make much of a difference now, would it? Do you follow through with this idea (Y), or just bring the cow back to the McDermott Farm right now (N)?";
		if player consents:
			say "     [line break]";
			if scalevalue of player < 3:
				say "     The will to act may be there, but you're just too small to actually do it. There's no way you could get your cock up into Wendy's pussy on your own, and the number of stepladders available out here in the plains is rather low.";
			otherwise if scalevalue of player is 3:
				say "     Speaking in calming tones to the cow, you walk up to her and stroke her fur for a moment until she gets used to your presence. Since she's just a bit too tall for you to just take her, you lead her over a few feet to the stubby remains of a building that stood here before, maneuvering her into the right position next to a fallen wall. Standing on the low rocks, you gently lift her tail and have a look at her pussy. It's pretty large in human terms, but that's just to be expected from a bigger creature. Milky white cum slowly drips from her pussy lips. You pull our your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. For being so big and just having been fucked by a gryphon, Wendy is amazingly tight, instinctively gripping your member with her inner muscles. You pound into her with eager thrusts, not holding back for a second until you soon blast your own cum into Wendy to mingle with the gryphon's in her womb. Satisfied, you pull out, then put your clothes back on.";
			otherwise:
				say "     Speaking in calming tones to the cow, you walk up to her and stroke her fur for a moment until she gets used to your presence and lowers her head again to graze. Then you walk to her back end, gently lift her tail and have a look at her pussy. It's pretty large in human terms, but that's just to be expected from a bigger creature. Milky white cum slowly drips from her pussy lips. You pull our your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. For being so big and just having been fucked by a gryphon, Wendy is amazingly tight, instinctively gripping your member with her inner muscles. You pound into her with eager thrusts, not holding back for a second until you soon blast your own cum into Wendy to mingle with the gryphon's in her womb. Satisfied, you pull out, then put your clothes back on.";
		otherwise:
			say "     [line break]";
			say "     Fuck a cow? What strange ideas come up inside you these days... the nanites must be getting to you. You do your best to ignore that inner voice.";
	say "     [line break]";
	say "     Stroking Wendy and feeding her bits of grass, you manage to get the cow moving towards the farm. She's got a rather sedate tempo and often stops to rip off the rare green and more succulent plants along the way, but after about two hours, you finally arrive at the McDermott farm.";
	say "     [WaitLineBreak]";
	say "     Having been spotted on your approach, the anthro horse cowboy Corbin you met before out in the plains comes to greet you. 'Hey there, you actually found her. Thanks a lot for bringing Wendy back.' He rubs the cow's neck and scritches her on a special spot behind her ears as he talks to her 'You got frightened and ran away, then couldn't find your way back, could you? Poor Wendy, you must be really feeling the pressure in your udder now. Go on, you know the way to the milking shed, I'll be along shortly.' With a pleased 'Moo', the cow trots towards one of the larger buildings on the farm.";
	say "     Corbin nods with a smile as she starts walking, then gets pretty wide eyes as her hindquarters come into sight, still covered in by-now dried cum. 'What the -?' he gasps, turning to you with a questioning look, after which you explain about the gryphon you found the cow with. 'Wow, that's a pretty wild story. One of those winged lion things and Wendy having sex? I'll have to go check her out right now... oh, about the reward - go to the farmhouse and talk to Mr. McDermott, ok?'";
	say "     [line break]";
	say "     With that, Corbin rushes after the cow, leaving you standing alone at the farm entrance.";
	increase hp of Anthony by 1;
	move player to McDermott Farm Entrance;
	move Wendy to McDermott Barn;
	now Missing Cow is resolved;

Section 2 - Farm Rooms

McDermott Farm Entrance is a room. It is a fasttravel. It is private.
The description of McDermott Farm Entrance is "     You're standing at entrance of a mid-sized farm, on the cracked asphalt that's left of a road leading here. Seems almost like the nanites enhanced grass to actively seek out and grow into and through human works to destroy them. Or at least try to - things on the other side of the long fence dividing the farm from the rest of the plains look pretty intact - which might have something to do with the two anthro horses with scythes you see working their way along, cutting down any sign of encroaching creeping grass. A sign on the archway over the road tells you that this is the 'McDermott Farm', in existence since 1792.".

Instead of sniffing McDermott Farm Entrance:
	say "     The scent of freshly cut grass hangs in the air.";

North of McDermott Farm Entrance is Central Farm Square.
The description of Central Farm Square is "     You're on the central square between the different parts of the farm. Around you to the northwest is a big, pretty old farm house. Then to the west a large barn and besides that in the southwest another building that looks like it's the worker barracks. To the north you can see a fenced paddock, to the east a fairly large milking shed and between them a path that leads to the northeast. Finally, to the south is the archway that marks the entrance to the farm and through which you could leave again.".

East of Central Farm Square is Milking Shed Main Room.
The description of Milking Shed Main Room is "[MShedDesc]".

to say MShedDesc:
	if daytimer is day:
		say "     You're in a big room that stretches for the full length of this building, making out at least half of its size all on its own. There is a whole row of milking stalls in here, all of them equipped with tubes and suction apparatuses. From one of the back rooms, the sound of a running generator is audible, explaining why the machines in here still work, contrary to the usual state of things in the city. Currently, there are several cows in various stalls, mooing contently from time to time as the pressure of the milk in their udders is being reduced.";
	otherwise:
		say "     You're in a big room that stretches for the full length of this building, making out at least half of its size all on its own. There is a whole row of milking stalls in here, all of them equipped with tubes and suction apparatuses. At night, they sit silent and unused, empty until the cows get back in them the next day.";

Northwest of Central Farm Square is Farmhouse Main Room.
The description of Farmhouse Main Room is "     You're in the main room on the ground floor of the farmhouse, which is pretty big and includes a living and dining area, with the kitchen visible through an open archway in the back. This place has a certain rustic charm, with wooden walls and old but well-made looking furniture. Several comfy leather couches stand around a coffee table in the front half of the room, angled towards a fireplace and a large plasma television on the adjoining wall.".

Instead of sniffing Farmhouse Main Room:
	say "     The comfortable scents of wood and the leather couches hang in the air.";

Southwest of Central Farm Square is Worker Barracks.
The description of Worker Barracks is "[BarracksDesc]".

to say BarracksDesc:
	say "     This long building is mostly one large room, a kind of living area at the front with a table, sofas and a TV, the back half filled with quite a few bunk beds spaced a bit apart, with tall lockers in between. Several farm-workers are always present, for the main part anthro horsemen, though most don't seem to be all that talkative, coming here to rest and sleep after long hours battling the encroaching nanite-enhanced grassland. It looks like there's lots of unused room and empty beds in here - with these barracks being laid out for the number of people working in harvest time and currently only the base crew of permanent farm hands here.";
	if CorbinKidCounter is 1:
		say "     Corbin's child bounces around in here too, the little tyke being a pretty active and curious kid. Thankfully, the workers treat him well, even playing with him or teaching him stuff.";
	otherwise if CorbinKidCounter > 1:
		say "     Corbin's children bounce around in here too, the little tykes being pretty active and curious about everything. Thankfully, the workers treat them well, even playing with them or teaching them all kinds of stuff.";

Northeast of Central Farm Square is Farm Pathway.
The description of Farm Pathway is "     Between the long milking shed in the south and the fenced paddock in the west, northwest and north, this pathway leads from the central farm square in the southwest to a rather large green meadow in the east.".

East of Farm Pathway is Sheep Meadow SW.
The description of Sheep Meadow SW is "     You're in the southwestern corner of an enormous meadow, still green in contrast to the dry grassland outside the farm. White shapes of sheep trot around in the distance, peacefully grazing.".

to say MeadowSWDesc:
	say "     You're in the southwestern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Ending at the wall of the milking shed in the south, it stretches out further to the north, northeast and east. A path to the west leads back to the main farm buildings.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	otherwise:
		say "     At night, everything is still and quiet out here.";

East of Sheep Meadow SW is Sheep Meadow SE.
The description of Sheep Meadow SE is "[MeadowSEDesc]".

to say MeadowSEDesc:
	say "     You're in the southeastern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Ending at the wall of the milking shed in the south and bounded by a long fence to the east, it stretches out further to the west, northwest and north.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	otherwise:
		say "     Looks like all the sheep came together here as a herd to rest for the night. They're standing in a big bunch close to the wall of the milking shed.";

North of Sheep Meadow SE is Sheep Meadow NE.
The description of Sheep Meadow NE is "[MeadowNEDesc]".

to say MeadowNEDesc:
	say "     You're in the northeastern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Here, the long fence bounding the meadow makes a turn, not only restricting the way east, but also northeast and north. It stretches further to the south and west, fencing in the whole area.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	otherwise:
		say "     At night, everything is still and quiet out here.";

West of Sheep Meadow NE is Sheep Meadow NW.
The description of Sheep Meadow NW is "[MeadowNWDesc]".

to say MeadowNWDesc:
	say "     You're in the northwestern quadrant of an enormous meadow, still green in contrast to the dry grassland outside the farm. Here, the long fence bounding the meadow on the north side meets the fence of the paddock to the west, with the rest of the meadow stretching to the east, southeast and south.";
	if daytimer is day:
		say "     White shapes of sheep trot around in the distance, peacefully grazing.";
	otherwise:
		say "     At night, everything is still and quiet out here.";

Northeast of Sheep Meadow SW is Sheep Meadow NE.
Southeast of Sheep Meadow NW is Sheep Meadow SE.
North of Sheep Meadow SW is Sheep Meadow NW.

The Barn Door is a door.
The description of Barn Door is "The barn has a big set of wooden double doors, which don't even have a lock or anything, just a latch to hold them closed.".
understand "door" as the Barn Door.
east of Barn Door is Central Farm Square.
west of Barn Door is McDermott Barn.

McDermott Barn is a room.
The description of McDermott Barn is "[BarnDesc]".

to say BarnDesc:
	if daytimer is day:
		say "     You're in a large barn with many stalls for animals along the walls. They hold mostly cows, but also a few horses, munching peacefully on hay and other foodstuffs. From time to time, Corbin comes into the barn to lead a cow over to the milking shed or bring one of them back here. In the back of the room, there is a ladder leading up to a large hayloft.";
	otherwise:
		say "     You're in a large barn with many stalls for animals along the walls. They hold mostly cows, but also a few horses, all of them just standing there, sleeping. In the back of the room, there is a ladder leading up to a large hayloft.";

Up of McDermott Barn is Barn Hayloft.
The description of Barn Hayloft is "     The hayloft is pretty big and... filled with hay. Lots and lots of hay, piled up nearly to the ceiling. From time to time, something rustles somewhere inside. Who knows what's hiding here...".

Mustang Paddock is a room.
The description of Mustang Paddock is "     This large fenced area is the paddock of the wild mustang the farm got just before the nanite catastrophe. Now it is fully his domain, with any who trespass being in danger of becoming one of his new mares, several of whom you can see further back in the paddock. In the front bit, where you are, there is no one except the mustang himself, who is already galloping towards you.".

The Mustang Paddock Gate is a door.
The description of Mustang Paddock Gate is "     The large gate leading to the paddock with the mustang and his harem looks pretty sturdy - and it and the adjoining fence have had an electrified wire running strung over their top added not too long ago from the looks of it. Finally, there is a padlock holding the gate closed. Its key hangs from a short chain besides it, but still... seems like someone really doesn't want those horses to get out.".
understand "gate" as the Mustang Paddock Gate.
south of Mustang Paddock Gate is Central Farm Square.
north of Mustang Paddock Gate is Mustang Paddock.

Section 3 - NPCs

[ hp states of Corbin                                                   ]
[   0: starting state                                                   ]
[   1: had oral sex with the player                                     ]
[   2: player caught him milking himself at night in the milking shed   ]
[   3: player fucked him                                                ]
[   4: his secret is out to the horsemen in the barracks                ]
[   5: player stopped the horsemen from fucking Corbin                  ]
[  90: player stood back and watched the horsemen gangbang Corbin       ]
[ 100: player attacked him, around as an encounter in the dry plains    ]

[ thirst of Corbin - Location                                           ]
[   0: not met                                                          ]
[   1: in the worker barracks                                           ]
[   2: in the milking shed                                              ]

[ libido of Corbin - father of his current baby                         ]
[   1: player                                                           ]
[   2: horseguy                                                         ]

[ Dexterity of Corbin - felinoid sex                                    ]
[   0: not met the cat                                                  ]
[   1: felinoid was interested, but was stopped                         ]
[   2: felinoid fucked Corbin                                           ]

[ CorbinPregnancy - pregnancy progress variable                         ]
[  0: not preggers                                                      ]
[  1: male player knocked him up (invisible)                            ]
[  2: male player knocked him up (slightly visible)                     ]
[  3: male player knocked him up (bulging belly)                        ]
[  4: after the kid's been born                                         ]

[ CorbinKidCounter - number of children with the player                 ]
[ CorbinPregCounter - timer for the next birth (48h from start)         ]

Corbin is a man. The hp of Corbin is normally 0. Corbin is in Worker Barracks.
The description of Corbin is "[CorbinDesc]".
The conversation of Corbin is { "Mew!" }.
CorbinPregnancy is a number that varies. [pregnancy progress variable - after 36 turns, the pregnancy becomes visible]
CorbinKidCounter is a number that varies.
CorbinPregCounter is a number that varies.
CorbinImpregnatingCock is a text that varies.

instead of sniffing Corbin:
	say "Corbin has a pleasant animalistic smell. Mostly male, like a stallion - but there's an undertone of a mare's musk.";

to say CorbinDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Corbin], THIRST: [thirst of Corbin], LIBIDO: [libido of Corbin], CORBINPREGNANCY: [CorbinPregnancy], CORBINKIDCOUNTER: [CorbinKidCounter], PREGCOUNTER [CorbinPregCounter] <- DEBUG[line break]";
	if hp of Corbin > 1 and hp of Corbin < 100:
		if CorbinPregnancy is 0 or CorbinPregnancy is 4:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there). Corbin's chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
		otherwise if CorbinPregnancy is 1:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there). As you look at him, your thoughts run back to you fucking the equine cuntboy, thrusting into the tight pussy hidden by his pants. Corbin's chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
		otherwise if CorbinPregnancy is 2:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there) - and an even more interesting bulge starting to show on his stomach, the result of [if libido of Corbin is 1]your[otherwise]someone's[end if] fertile seed being shot deep into his pussy. Corbin's chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
		otherwise if CorbinPregnancy is 3:
			say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area (resulting from the perky breasts you know he has there) - and an even more interesting massive bulge on his stomach, showing his advanced state of pregnancy, the result of [if libido of Corbin is 1]your[otherwise]someone's[end if] fertile seed being shot deep into his pussy. Corbin's chest is bare, showing off a well-built upper body. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
	otherwise if hp of Corbin is 1:
		say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area - which (as you now know) stems from a pair of perky breasts over a tight pussy. His chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";
	otherwise:
		say "     Corbin James wears a cowboy hat and a nice pair of jeans with an interesting bulge in the crotch area. His chest is bare, showing off a well-built upper body with washboard abs. He doesn't seem to mind at all that he isn't human anymore, now having the shape of a humanoid horse, with black and white dappled fur that looks pretty similar to the cows in the barn.";

instead of conversing the Corbin:
	if hp of Corbin < 4:
		say "     [one of]'Did anyone tell you yet that I'm the resident cocksucker here?' He gives a resigned shrug and adds 'I'm good at it too - although it sometimes can get a bit annoying when everyone just thinks they can walk up and whip it out at any time. Blow one guy in the barn and suddenly there's a line... good that I like the like the taste.' He winks to you at that last bit.[or]'The farm is a nice place to be, with all that's going on. Not that we don't have our share of problems, but it's a far cry from what I've seen out there...'[at random]";
	otherwise if hp of Corbin is 4:
		say "     'Damn, now everyone knows about me. It's just a question of time till they act on that. And I don't think I can resist becoming a total slut - just thinking about it makes me wet.' he says with a disconcerted frown.";
	otherwise if hp of Corbin is 5:
		say "     [one of]'Thanks for helping me against the others, I really appreciate it. Now they know I'm not just a slut to be used when they want.'[or]'The farm is a nice place to be, with all that's going on. Not that we don't have our share of problems, but it's a far cry from what I've seen out there...'[at random]";
	otherwise if hp of Corbin is 90:
		say "     You chat a bit with Corbin, noticing that he seems to be a bit down in general. As you ask him about that, he grimaces and says 'You're almost the only one who talked to me today with something other than 'Suck my cock' or 'I want to fuck you'. I like being an anthro horse, but not that everyone treats me like a brainless bimbo to be fucked!'";

instead of going east from Central Farm Square while (hp of Corbin < 2 and daytimer is night):
	move player to Milking Shed Main Room;
	say "     As you walk into the milking shed, you notice that even though it's night and the lights are off, the generator in the back is running. A chugging sound of working machinery comes from somewhere ahead. Curious, you walk along the long row of milking stalls, finding all of them empty - until you come to the next to last one, that is. Your cowboy friend Corbin is in there, his back turned to you and with his body in a bent-forward position, holding on to the metal railing at the back of the stall with one hand. A lantern resting on the floor illuminates his naked body in a dim light, revealing his shapely legs, well-rounded ass and muscular back.";
	say "     Taking in those attractive sights, you only notice a moment later that tubes of the milking apparatus dangle in the air on the front side of his body, twitching as something is sucked through them. Is he using that thing as a cock pump? You can't stop yourself from stepping forward to have a look. As you move up besides Corbin, you see that things aren't quite what you expected. He isn't a stallion at all, but has a rather wet mare's pussy between his legs into which he's thrusting a rubber dildo - and the two suction cups of the machine are attached to small but perky breasts just a bit above his genitals in the crotch area.";
	say "     [WaitLineBreak]";
	say "     Moaning softly, his eyes closed as a surprising amount of milk is chugged away by the machine out of his small breasts, Corbin doesn't notice you at first and just keeps using the dildo on himself. Soon, he reaches his goal, gasping loudly as he orgasms, then almost jumps out of his skin as he opens his eyes and sees you right next to him. As he stumbles away to catch himself on the railing at the other side of the stall, the suction cups are pulled off his breasts, flopping through the air in a spray of fresh milk. The dildo also escapes his grasp, slipping out of the cuntboy's female bits to wetly thump on the ground. It's shaped like a horse-cock you notice, flared tip and all.";
	say "     Still rather wide-eyed, Corbin turns to you 'Man - don't sneak up on me like that. How did you even get in here? Oh, I forgot to lock the door, didn't I?' As you nod, he looks from the dangling tube with its milking cups to the dildo and finally to his own dripping pussy. 'Guess I'm found out then - all the way. Having a pussy, breasts and all.' He sighs, then gives a shrug. 'You know, I've been coming here at night for weeks now to... take the edge off without anyone noticing. I don't mind being a horse, or a woman, down below - in fact, it's great. But... have you talked to the guys over in the barracks? They're good buddies, but if they'd know... I don't think I'd have a moment of rest with them coming over to 'visit' my bunk. And I doubt I could - or even would want to - stop them, not with how good this feels.' At that, he reaches down and strokes his swollen and drippingly wet pussy lips, then looks up at you and gives a wink. 'Since you already know, we could... have some fun here sometime, just us two after dark? As for the others - please keep this quiet, ok?'";
	say "     [WaitLineBreak]";
	say "     Wiping himself off with a towel, Corbin pulls his jeans back on and grabs a water bucket, rinsing the suction cups out in it and afterwards cleaning the horsecock dildo. He then takes it to a storage closet standing against the back wall, hiding it inside and locking the closet for good measure.";
	now lastfuck of Corbin is turns;
	now hp of Corbin is 2;

instead of going to Central Farm Square while (companion of player is Felinoid companion and hp of Corbin < 2 and daytimer is night and Dexterity of Corbin is 0):
	if debugactive is 1:
		say "DEBUG -> FELINOID + CORBIN WALKIN 1 <- DEBUG[line break]";
	say "     As you walk onto the central farm square, your felinoid companion gives a short rumble from his throat and stops suddenly, raising his head to sniff the air. Whatever it is that drew the feral beast's attention, he's obviously very keen on it and huffs deeply, while his tail raises almost straight up and twitches with interest. A moment later, the large cat leaves your side and pads over to the entrance of the milking shed, only giving a casual glance back at you before he vanishes inside.";
	say "     [line break]";
	say "     Do you want to go after your pet and see what he's up to (Y), or do you just let him go to do his cat-things, trusting that he'll return eventually (N)?";
	If player consents:
		say "     [line break]";
		say "     Following the large feline, you walk into the milking shed, immediatley noticing that even though it's night and the lights are off, the generator in the back is running. A chugging sound of working machinery comes from somewhere ahead, where you also see the felinoid weave in and out of the many deep shadows in this place. Curious, you walk along the long row of milking stalls, finding all of them empty - until you come to the next to last one, that is. Your cowboy friend Corbin is in there, his back turned to you and with his body in a bent-forward position, holding on to the metal railing at the back of the stall with one hand. A lantern resting on the floor illuminates his naked body in a dim light, revealing his shapely legs, well-rounded ass and muscular back.";
		say "     Taking in those attractive sights, you only notice a moment later that tubes of the milking apparatus dangle in the air on the front side of his body, twitching as something is sucked through them. Is he using that thing as a cock pump? You're tempted to step forward and have a look - but before you can do so, the felinoid is already stalking closer to Corbin on silent paws. He keeps sniffing the air, giving low rumbles from his throat and you can see the big cat's maleness get more erect by the second. Soon, the felinoid is right behind the horseman - at which point he stretches his head forward and gives the unsuspecting cowboy a lick between the legs. Confronted with someone making their presence known in such an intimate matter, Corbin whirls around - which is complicated a bit by the fact that there are two suction cups attached to the small but perky breasts just above his genitals. His female genitals at that - he isn't a stallion at all, but has a rather wet mare's pussy between his legs into which he was thrusting a rubber dildo.";
		say "     [WaitLineBreak]";
		say "     Startled by the sudden appearance of a large feral beast in his 'private place', Corbin flinches back, which is enough to pull the suction cups off his breasts, flopping through the air in a spray of fresh milk. He tries to catch them, but the only thing that generates is more chaos, as he doesn't hold on to the dildo in his pussy at that moment, making it slip out. In between trying to juggle too many items at once, the horseman stumbles and falls on the ground, at which point the loudly purring felinoid makes his move, stepping right next to Corbin and rubbing his head affectionately against his naked form. From the cuntboy's reaction, you see that your feline pet must have gone all out with his special pheromones at the moment, as Corbin can't help but moan loudly as he lies back, relaxing visibly and stroking his pussy.";
		say "     [line break]";
		say "     You have little doubt what the felinoid wants to do next. Do you let him mount Corbin (Y), or would you rather pull him off (N)?";
		if player consents:
			say "     [line break]";
			say "     Eager to sink his spined cock into a ripe and ready pussy, your feline companion gives a lusty growl and steps over Corbin. The big cat gives the cowboy's chest a lick and rubs the side of his head against Corbin's cheek one last time, then bends his hind legs and gets ready to fuck his entranced partner. There is a breathless moan from Corbin as his wet and swollen opening is nudged by the tip of your companion's erection, followed by a loud roar from the big cat as he thrusts in deeply, adding another person to his long line of conquests. The felinoid proceeds to fuck Corbin with the wild intensity of a feral beast, tail whipping through the air as he humps the cuntboy in a rapid pace.";
			say "     [WaitLineBreak]";
			say "     Meanwhile, the equine farm worker is deep in the grip of his own lusts, driven into overdrive as they are by your feline companion's musk. Corbin gasps and pants loudly as he gives himself fully to his feral conqueror, with both legs hooked behind the big cat's and hands dug firmly into the felinoid's chest fur, holding on tightly. Between the pheromones, the hard erection rubbing his inner walls with its nubby spines and the simple reality of being mounted by such a large, virile animal, it doesn't take long before Corbin's moans rise to an almost shouted climax and he comes, soaking the big cat's crotch with squirted femcum. The felinoid stops his thrusts for a short moment after that, giving a pretty self-satisfied purr and rubbing his furry cheeks against Corbin again, then he starts mating the cuntboy with undiminished intensity.";
			say "     Watching the hot coupling between the two unequal partners before you go on and on, with Corbin being driven to multiple screaming orgasms, one thing becomes clear - if the felinoid does pull someone under his spell, he certainly does an amazing job of taking care of them afterwards. Only when Corbin has been worn out almost completly, now just limply holding on to the big cat on top of him, does the lusty feline go all out in a rapid flurry of hard and deep thrusts until he himself roars out with his own climax. The large, furry orbs that are the big cat's balls twitch and pulse as spurt after spurt of his fertile seed splashes into Corbin's womb, filling him up with a huge load that eventually even squishes out around the felinoid's shaft.";
			say "     [WaitLineBreak]";
			say "     After he finishes cumming, the felinoid pulls out of Corbin's well-bred pussy with a wet slurp, then turns around and sniffs the cuntboy's crotch. With a satisfied grumble in his throat, the cat gives the cowboy's crotch a few quick licks before throwing himself on the ground besides his latest conquest for a post-coital nap. Meanwhile, Corbin slowly comes out of the pheromone-induced haze he was in, weakly raising his head and reaching down to touch his gaping pussy. Raising his hand and looking at the cum sticking to its fingers for a moment, he then turns his gaze over to you. 'Man - that... was intense. Is the big furball your pet? I - I think... wait - how did you two even get in here? Oooh, I forgot to lock the door, didn't I?' As you nod, he lets his head sink back to the ground and takes a few deep breaths, then says, 'Guess I'm found out then - all the way. Having a pussy and breasts - and letting myself get pounded like a bitch in heat.'";
			say "     Corbin sighs, then gives a shrug. 'You know, I've been coming here at night for weeks now to... take the edge off without anyone noticing. I don't mind being a horse, or a woman, down below - in fact, it's great. But... have you talked to the guys over in the barracks? They're good buddies, but if they'd know... I don't think I'd have a moment of rest with them coming over to 'visit' my bunk. And I doubt I could - or even would want to - stop them, not with how good this feels.' At that, he reaches down and strokes his swollen and cum-dripping pussy, then looks up at you and gives a wink. 'Since you already know, we could... have some fun here sometime, just us two after dark? Or just bring this sexy beast over... I certainly wouldn't mind being mounted by him again. As for the others - please keep this quiet, ok?'";
			now Dexterity of Corbin is 2;
		otherwise:
			say "     [line break]";
			say "     Quickly entering the stall, you grab the felinoid by the scruff of the neck and pull him aside. It's not an easy task, given the sheer size of the beast, but thankfully he relents after a moment of leaning stoicall against what force you can bring to bear. With a somewhat annoyed low growl, the big cat pads out of sight without looking back, somehow creating the expression that he never wanted Corbin in the first place. Almost as if you didn't stop him, but he decided for himself that he wanted to go somewhere else. With the felinoid now gone, you bend down and take the dildo that Corbin had been using from the ground. It's shaped like a horse-cock you notice, flared tip and all.";
			say "     As you stand there, inspecting the sex toy, Corbin slowly comes out of the pheromone-induced haze he was in. 'Man - that big cat is your pet? He really sneaked up on me... wait - how did you even get in here? Oh, I forgot to lock the door, didn't I?' As you nod, he looks from the dangling tube with its milking cups to the dildo and finally to his own dripping pussy. 'Guess I'm found out then - all the way. Having a pussy, breasts and all.' He sighs, then gives a shrug. 'You know, I've been coming here at night for weeks now to... take the edge off without anyone noticing. I don't mind being a horse, or a woman, down below - in fact, it's great. But... have you talked to the guys over in the barracks? They're good buddies, but if they'd know... I don't think I'd have a moment of rest with them coming over to 'visit' my bunk. And I doubt I could - or even would want to - stop them, not with how good this feels.' At that, he reaches down and strokes his swollen and drippingly wet pussy lips, then looks up at you and gives a wink. 'Since you already know, we could... have some fun here sometime, just us two after dark? As for the others - please keep this quiet, ok?'";
			now Dexterity of Corbin is 1;
		say "     [WaitLineBreak]";
		say "     Wiping himself off with a towel, Corbin pulls his jeans back on and grabs a water bucket, rinsing the suction cups out in it and afterwards cleaning the horsecock dildo. He then takes it to a storage closet standing against the back wall, hiding it inside and locking the closet for good measure.";
		now hp of Corbin is 2;
		now lastfuck of Corbin is turns;
		move player to Milking Shed Main Room;
	Otherwise:
		say "     [line break]";
		say "     The cat can look after himself generally, and the farm is a pretty peaceful place in today's world, so you jut leave the felinoid be. He'll return eventually, as he always does.";
		now lastfuck of Corbin is turns;
		move player to Central Farm Square;
		
instead of going to Central Farm Square while (companion of player is Felinoid companion and hp of Corbin > 1 and hp of Corbin < 100 and daytimer is night and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "DEBUG -> FELINOID + CORBIN WALKIN REPEAT <- DEBUG[line break]";
	say "     As you walk onto the central farm square, your felinoid companion gives a short rumble from his throat and stops suddenly, raising his head to sniff the air. Whatever it is that drew the feral beast's attention, he's obviously very keen on it and huffs deeply, while his tail raises almost straight up and twitches with interest. A moment later, the large cat leaves your side and pads over to the entrance of the milking shed, only giving a casual glance back at you before he vanishes inside.";
	say "     [line break]";
	say "     Do you want to go after your pet and see what he's up to (Y), or do you just let him go to do his cat-things, trusting that he'll return eventually (N)?";
	If player consents:
		say "     [line break]";
		say "     You can see where this is going from a mile away, so you follow the large feline into the milking shed, immediatley noticing that even though it's night and the lights are off, the generator in the back is running. A chugging sound of working machinery comes from somewhere ahead, where you also see the felinoid weave in and out of the many deep shadows in this place. Sounds like Corbin is at it again with one of his nightly milking sessions. Walking along the long row of milking stalls, you find all of them empty - until you come to the next to last one... where your cowboy friend Corbin is standing in a bent-forward position, holding on to the metal railing at the back of the stall with one hand. A lantern resting on the floor illuminates his naked body in a dim light, revealing his shapely legs, well-rounded ass and muscular back.";
		say "     Taking in those attractive sights, you only notice a moment later that tubes of the milking apparatus dangle in the air on the front side of his body, twitching as the cuntboy's creamy milk is sucked through them. Before you can do or say anything, the felinoid is already stalking closer to Corbin on silent paws. He keeps sniffing the air, giving low rumbles from his throat and you can see the big cat's maleness get more erect by the second. Soon, the felinoid is right behind the horseman - at which point he stretches his head forward and gives the unsuspecting cowboy a lick between the legs. Confronted with someone making their presence known in such an intimate matter, Corbin whirls around - which is complicated a bit by the fact that there are two suction cups attached to the small but perky breasts just above his genitals. His female genitals - a rather wet mare's pussy between his legs into which he was thrusting a rubber dildo.";
		say "     [WaitLineBreak]";
		say "     Startled by the sudden appearance of a large feral beast in his 'private place', Corbin flinches back, which is enough to pull the suction cups off his breasts, flopping through the air in a spray of fresh milk. He tries to catch them, but the only thing that generates is more chaos, as he doesn't hold on to the dildo in his pussy at that moment, making it slip out. In between trying to juggle too many items at once, the horseman stumbles and falls on the ground, at which point the loudly purring felinoid makes his move, stepping right next to Corbin and rubbing his head affectionately against his naked form. From the cuntboy's reaction, you see that your feline pet must have gone all out with his special pheromones at the moment, as Corbin can't help but moan loudly as he lies back, relaxing visibly and stroking his pussy.";
		say "     [line break]";
		say "     You have little doubt what the felinoid wants to do next. Do you let him mount Corbin (Y), or would you rather pull him off (N)?";
		if player consents:
			say "     [line break]";
			say "     Eager to sink his spined cock into a ripe and ready pussy, your feline companion gives a lusty growl and steps over Corbin. The big cat gives the cowboy's chest a lick and rubs the side of his head against Corbin's cheek one last time, then bends his hind legs and gets ready to fuck his entranced partner. There is a breathless moan from Corbin as his wet and swollen opening is nudged by the tip of your companion's hard erection, followed by a loud roar from the big cat as he thrusts in deeply, adding another person to his long line of conquests. The felinoid proceeds to fuck Corbin with the wild intensity of a feral beast, tail whipping through the air as he humps the cuntboy in a rapid pace.";
			say "     [WaitLineBreak]";
			say "     Meanwhile, the equine farm worker is deep in the grip of his own lusts, driven into overdrive as they are by your feline companion's musk. Corbin gasps and pants loudly as he gives himself fully to his feral conqueror, with both legs hooked behind the big cat's and hands dug firmly into the felinoid's chest fur, holding on tightly. Between the pheromones, the hard erection rubbing his inner walls with its nubby spines and the simple reality of being mounted by such a large, virile animal, it doesn't take long before Corbin's moans rise to an almost shouted climax and he comes, soaking the big cat's crotch with squirted femcum. The felinoid stops his thrusts for a short moment after that, giving a pretty self-satisfied purr and rubbing his furry cheeks against Corbin again, then he starts mating the cuntboy with undiminished intensity.";
			say "     Watching the hot coupling between the two unequal partners before you go on and on, with Corbin being driven to multiple screaming orgasms, one thing becomes clear - if the felinoid does pull someone under his spell, he certainly does an amazing job of taking care of them afterwards. Only when Corbin has been worn out almost completly, now just limply holding on to the big cat on top of him, does the lusty feline go all out in a rapid flurry of hard and deep thrusts until he himself roars out with his own climax. The large, furry orbs that are the big cat's balls twitch and pulse as spurt after spurt of his fertile seed splashes into Corbin's womb, filling him up with a huge load that eventually even squishes out around the felinoid's shaft.";
			say "     [WaitLineBreak]";
			say "     After he finishes cumming, the felinoid pulls out of Corbin's well-bred pussy with a wet slurp, then turns around and sniffs the cuntboy's crotch. With a satisfied grumble in his throat, the cat gives the cowboy's crotch a few quick licks before throwing himself on the ground besides his latest conquest for a post-coital nap. Meanwhile, Corbin slowly comes out of the pheromone-induced haze he was in, weakly raising his head and reaching down to touch his gaping pussy. Raising his hand and looking at the cum sticking to its fingers for a moment, he then looks over to you. 'Man - that... was intense. [if Dexterity of Corbin is 1]I was wondering how it'd feel to have him hump my pussy since the last time this big furball came along with you. And I got to tell you... he's fucking great! [otherwise]I just can't get enough of this big furball's prick! [end if]Man, I really let myself get pounded like a bitch in heat.'";
			now Dexterity of Corbin is 2;
			now lastfuck of Corbin is turns;
		otherwise:
			say "     [line break]";
			say "     Quickly entering the stall, you grab the felinoid by the scruff of the neck and pull him aside. It's not an easy task, given the sheer size of the beast, but thankfully he relents after a moment of leaning stoicall against what force you can bring to bear. With a somewhat annoyed low growl, the big cat pads out of sight without looking back, somehow creating the expression that he never wanted Corbin in the first place. Almost as if you didn't stop him, but he decided for himself that he wanted to go somewhere else. With the felinoid now gone, you bend down and take the dildo that Corbin had been using from the ground. It's shaped like a horse-cock you notice, flared tip and all.";
			say "     As you stand there, inspecting the sex toy, Corbin slowly comes out of the pheromone-induced haze he was in. 'Phew, that musk of his is just... out of this world. [if Dexterity of Corbin is 1]I wonder how it'd feel to have him actually mount me...'[otherwise]Next time, you can let him just go for it... I don't mind. Just thinking about the spines on his shaft makes me all weak-kneed and wet.'[end if] Wiping himself off with a towel, Corbin pulls his jeans back on and grabs a water bucket, rinsing the suction cups out in it and afterwards cleaning the horsecock dildo. He then takes it to a storage closet standing against the back wall, hiding it inside and locking the closet for good measure.";
			if Dexterity of Corbin is 0:
				now Dexterity of Corbin is 1;
		move player to Milking Shed Main Room;
	Otherwise:
		say "     [line break]";
		say "     The cat can look after himself generally, and the farm is a pretty peaceful place in today's world, so you jut leave the felinoid be. He'll return eventually, as he always does.";
		now lastfuck of Corbin is turns;
		move player to Central Farm Square;

instead of going southwest from Central Farm Square while (hp of Corbin is 4 and daytimer is day and thirst of Corbin is 1):
	move player to Worker Barracks;
	say "     As you walk into the barracks, you notice a group of horsemen standing around Corbin in the back, blocking him in with his back to one of the bunk beds. Their leader is saying '...keeping your pussy from us. You've even been fucking around with that stranger instead of one of us[if CorbinPregnancy > 1] and even let him knock you up[end if].' Corbin replies with 'Yes, but -', only to be interrupted by the horseman farmhand almost immediately. 'What, do you think we're not good enough for you? I guess we'll have to show show this little slut what he's been missing, don't we guys?' There is a general murmur of agreement and you hear the sound of a zipper or two being pulled down.";
	say "     Do you just want to stand back and let this unfold as it's about to (Y), or do you step in and show those horsemen how to treat Corbin right if they don't want a beating (N)? ";
	if player consents: [watch]
		say "     [line break]";
		say "     With you just watching, they have Corbin on one of the beds in short order and strip off his clothes while holding him down. 'You know you want a real man's cock to fuck you', the leader of the little mob tells the equine cuntboy as he pushes two fingers in and out of his soppingly wet pussy. 'At least your body knows what it needs. And I'm gonna give it to you!' With that, the large horseman climbs on the bed and slaps his thick cock against Corbin's pubic mound with a meaty thud or two. Then he positions his flared equine shaft at the transgendered cowboy's nether lips and thrusts in, grunting in satisfaction as he buries his manhood deep. Corbin can't stop himself from moaning loudly as the other farm-worker starts to fuck him hard, pounding his pussy with rapid thrusts.";
		say "     For some time, grunts, moans and the sounds of the horseman's balls hitting the cuntboy's crotch fill the barracks, finally building up to a shouted 'Uh uh uuuuh - I'm gonna fill you up, slut!' as Corbin's fucker slams forward one last time and floods the equine cowboy's womb with a deluge of cum. After he finishes coming, the horseman then pulls out unceremoniously and is immediately replaced by another, who sinks his own shaft into Corbin's freshly bred hole with a wet squishy noise and starts to fuck him. This continues for quite a while, with all of the men taking a turn, or even two, before they allow the totally exhausted and sticky cuntboy some rest.";
		now lastfuck of Corbin is turns;
		now hp of Corbin is 90;
	otherwise: [fight]
		now horsefight is 2;
		say "     [line break]";
		say "     Getting a grip on the shoulder of the farmhand preparing to fuck Corbin, you pull him back, much to the annoyance of the muscled equine. Enraged at you cock-blocking him, he comes at you with balled fists.";
		say "     [line break]";
		challenge "Horseman";
		if fightoutcome >= 20 and fightoutcome <= 29: [lost]
			say "[LoseInBarracksfight]";
		otherwise if fightoutcome >= 30: [fled]
			say "[RunFromBarracksfight]";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     One of the group of horsemen is out of the fight, though another steps right up.";
			say "     [line break]";
			challenge "Horseman";
			if fightoutcome >= 20 and fightoutcome <= 29: [lost]
				say "[LoseInBarracksfight]";
			otherwise if fightoutcome >= 30: [fled]
				say "[RunFromBarracksfight]";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say "     That's a second one of the group of horsemen out of the fight. But still, another equine farmhand steps right up, hands raised in a boxing pose.";
				say "     [line break]";
				challenge "Horseman";
				if fightoutcome >= 20 and fightoutcome <= 29: [lost]
					say "[LoseInBarracksfight]";
				otherwise if fightoutcome >= 30: [fled]
					say "[RunFromBarracksfight]";
				otherwise if fightoutcome >= 10 and fightoutcome <= 19: [won]
					say "     With you already having knocked out three of their buddies, the other farmhands don't look quite as eager to be the next one in line. There's a moment in which looks go back and forth between them, then most of them pull away from you. One guy, on suddenly finding himself standing in the front after everyone stepped back, says 'Okay okay - you win. He's all yours.'";
					say "     The confrontation over, the gathered horsemen help up their bruised buddies and go back to what they were doing before. That just leaves you and a pretty relieved-looking Corbin standing in the bunks area. He hugs you close, then says 'Thank you. That'll show them I'm not just a slut to be used.' He kisses you, then lets his hand wander down to your crotch, giving it a squeeze as he adds 'Not that I'm opposed to regular rolls in the hay - with the right person and on my schedule, not theirs.' With a suggestive wink, the cowboy cuntboy saunters over to his bed and lies back on it, grabbing a magazine to read.";
					now hp of Corbin is 5;
		now horsefight is 0;

instead of going southwest from Central Farm Square while (CorbinPregnancy is 4	and daytimer is day):
	if libido of Corbin is 1: [player was the father]
		say "     As you enter the barracks, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he waves over a little boy in his early teens and introduces you to your child, who looks like a [CorbinImpregnatingCock].";
	otherwise: [a horseman was the father]
		say "     As you enter the barracks, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he waves over a little boy in his early teens and introduces you to his horseman child.";
	now CorbinPregnancy is 0;

instead of going east from Central Farm Square while (CorbinPregnancy is 4	and daytimer is night):
	if libido of Corbin is 1: [player was the father]
		say "     As you enter the milking shed, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he tells you that your child is in the barracks, a sweet little boy in his early teens who looks like a [CorbinImpregnatingCock].";
	otherwise: [a horseman was the father]
		say "     As you enter the barracks, Corbin quickly comes up to you and gives you a hug. 'I gave birth while you were gone... and I have to say - being a mother is amazing. Carrying a new life inside yourself and then bringing it into the world.' Smiling, he tells you that your child is in the barracks, a sweet little horseman boy in his early teens.";
	now CorbinPregnancy is 0;
	
to say LoseInBarracksfight:
	say "     With you out of action, there isn't anything left so stop the horny horsemen. In short order, they have Corbin on one of the beds and strip off his clothes while holding him down. 'You know you want a real man's cock to fuck you', the leader of the little mob tells the equine cuntboy as he pushes two fingers in and out of his soppingly wet pussy. 'At least your body knows what it needs. And I'm gonna give it to you!' With that, the large horseman climbs on the bed and slaps his thick cock against Corbin's pubic mound with a meaty thud or two. Then he positions his flared equine shaft at the transgendered cowboy's nether lips and thrusts in, grunting in satisfaction as he buries his manhood deep. Corbin can't stop himself from moaning loudly as the other farm-worker starts to fuck him hard, pounding his pussy with rapid thrusts.";
	say "     For some time, grunts, moans and the sounds of the horseman's balls hitting the cuntboy's crotch fill the barracks, finally building up to a shouted 'Uh uh uuuuh - I'm gonna fill you up, slut!' as Corbin's fucker slams forward one last time and floods the equine cowboy's womb with a deluge of cum. After he finishes coming, the horseman then pulls out unceremoniously and is immediately replaced by another, who sinks his own shaft into Corbin's freshly bred hole with a wet squishy noise and starts to fuck him. This continues for quite a while, with all of the men taking a turn, or even two, before they allow the totally exhausted and sticky cuntboy some rest.";
	now lastfuck of Corbin is turns;
	now hp of Corbin is 90;

to say RunFromBarracksfight:
	say "     As you break away from the fight, the horseman you were facing doesn't really try to follow you, content in having driven you off. He's got other, more interesting things to do and immediately rejoins the group around the bunk beds. Soon after, grunts, moans and cheers echo out of the barracks building as they take turns with their new barracks slut.";
	move player to Central Farm Square;
	now hp of Corbin is 90;

An everyturn rule:
	if CorbinPregCounter is 1:
		if Corbin is in Worker Barracks and player is in Worker Barracks:
			say "     Suddenly, there is a gasp from Corbin and he yells 'It's coming!' Rushing over to the cuntboy who's panting and holding his pregnant belly, you can see a large patch of wetness on the crotch of his jeans - amniotic fluid from his womb that shows that this isn't a false alarm. Quickly guiding him over to the nearest bed, you help him get out of his clothes and sit beside him, holding his hand as he spreads his legs.";
			say "     Soon, the contractions come quicker and quicker, and then a little horseman foal slides out of Corbin's stretched vagina. You quickly grab a sheet and wipe the newborn down, then put it up against the transgendered cowboy's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
		otherwise if Corbin is in Milking Shed and player is in Milking Shed:
			say "     Suddenly, there is a gasp from Corbin and he yells 'It's coming!' Rushing over to the cuntboy who's panting and holding his pregnant belly, you can see a large patch of wetness on the crotch of his jeans - amniotic fluid from his womb that shows that this isn't a false alarm. Quickly guiding him over a pile of straw to lie down on, you help him get out of his clothes and sit beside him, holding his hand as he spreads his legs.";
			if libido of Corbin is 2: [horseman child]
				say "     Soon, the contractions come quicker and quicker, and then a little horseman foal slides out of Corbin's stretched vagina. You quickly grab Corbin's shirt from the floor and wipe the newborn down, then put it up against the transgendered cowboy's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			otherwise if libido of Corbin is 1: [player's kid]
				say "     Soon, the contractions come quicker and quicker, and then a little [CorbinImpregnatingCock] baby slides out of Corbin's stretched vagina. You quickly grab Corbin's shirt from the floor and wipe the newborn down, then put it up against the transgendered cowboy's breasts to drink. Hungrily sucking up milk, the little one quickly grows, arriving at early teen development before slowing down again.";
			now CorbinPregnancy is 0; [reset]
		otherwise:
			say "You have a strange feeling in your body, as if you somehow just know that a new life has entered this world. Maybe you should go back to the McDermott farm and check with Corbin.";
			now CorbinPregnancy is 4; [so he can tell the player about their kid in the next meeting]
		increase CorbinKidCounter by 1;
		now CorbinPregCounter is 0; [reset]
		now libido of Corbin is 0; [reset]
		now CorbinImpregnatingCock is " ";
	otherwise if CorbinPregCounter is 12:
		now CorbinPregnancy is 3; [very visible pregnancy]
	otherwise if CorbinPregCounter is 24:
		now CorbinPregnancy is 2; [visible pregnancy]
		if hp of Corbin < 4: [his secret isn't out yet]
			now hp of Corbin is 4; [with his visible pregnancy, it becomes obvious that something is going on]
	if CorbinPregCounter is greater than 1:
		decrease CorbinPregCounter by 1;
	if daytimer is night and thirst of Corbin is 1:
		move Corbin to Milking Shed Main Room;
		now thirst of Corbin is 2;
	otherwise if daytimer is day and thirst of Corbin is 2:
		move Corbin to Worker Barracks;
		now thirst of Corbin is 1;

instead of fucking the Corbin:
	if lastfuck of Corbin - turns < 6:
		say "     As you approach Corbin, he immediately sees the lust-filled twinkle in your eyes. He smiles at you, but gives a quick shake of his head. 'Sorry, I need a break for now... later, ok?'";
	otherwise:
		say "     You walk over to Corbin, who gives you a good look and asks 'What did you have in mind?'";
		say "[line break]";
		say "[CorbinSexMenu]";

to say CorbinSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your cowboy friend's mouth to good use";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put your cowboy friend's mouth to good use";
	[]
	if (hp of Corbin > 1):
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 3;
		now description entry is "Finger-fuck Corbin's pussy to make him cum";
	[]
	if (hp of Corbin > 1 and cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 4;
		now description entry is "Fill the pussyboy with your cock";
	[]
	if (hp of Corbin > 1 and cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Corbin's ass";
		now sortorder entry is 5;
		now description entry is "Fill your cowboy friend's ass with your cock";
	[]
	if (hp of Corbin > 1):
		choose a blank row in table of fucking options;
		now title entry is "Milk Corbin";
		now sortorder entry is 6;
		now description entry is "Milk the equine cuntboy";
	[]
	if (hp of Corbin > 1 and companion of player is felinoid companion and Corbin is in Milking Shed Main Room):
		choose a blank row in table of fucking options;
		now title entry is "Let Corbin mount the felinoid";
		now sortorder entry is 7;
		now description entry is "Allow your pet to be mounted by the cuntboy.";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if (nam is "Have him blow your cock"):
					say "[CorbinSex1]";
				otherwise if (nam is "Have him lick your pussy"):
					say "[CorbinSex2]";
				otherwise if (nam is "Finger his pussy"):
					say "[CorbinSex3]";
				otherwise if (nam is "Fuck his pussy"):
					say "[CorbinSex4]";
				otherwise if (nam is "Take Corbin's ass"):
					say "[CorbinSex5]";
				otherwise if (nam is "Milk Corbin"):
					say "[CorbinSex6]";
				otherwise if (nam is "Let Corbin mount the felinoid"):
					say "[CorbinSex7]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the equine cowboy, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say CorbinSex1: [cock sucked by Corbin]
	say "     As you ask the equine cowboy for a blowjob, he chuckles and says 'Want some attention by this farm's best cocksucker, hm?' Smiling, he crouches down, his hands already on your crotch. In no time at all, he's got your clothes out of the way and the strong fingers of his hand on your manhood. Stroking it till it's fully hard, he looks up at you, then kisses the tip and slides his lips down your shaft. Aaah, that feels great. Corbin teases your shaft with his tongue as he goes deeper and deeper, with his hand meanwhile cupping and fondling your balls. Finally his nose bumps against your crotch, the horseboy's breath hot against your skin as he holds all of your cock in his mouth.";
	say "     Running your hands through the cowboy's hair, you close your eyes and moan deeply as he starts to bob up and down on your shaft. He really is an expert on this, skillfully pleasing you with his lips and tongue while at the same time touching and stroking the rest of your body. At one point, he pulls off your cock, giving you a moment's pause as you wonder what he'll do next, then he holds up your penis and focuses all his attention on your balls for a moment. Playing with them, licking them, taking one then the other into his mouth... you're panting in lust almost instantly. Then it's back to cocksucking again, feeling those lips around your shaft, the urge to cum quickly rising inside you. Moaning that you're about to cum makes him speed up a bit, eagerly working to get you off, then swallowing blast after blast of your cum as it pulses into his mouth.";
	say "     Corbin keeps softly sucking on your manhood until the spurts of cum slowly ebb out, then pulls off and gives a last long lick up over your balls and the underside of your cock before he stands up. He smiles at you still breathing heavily, then says 'There, how was that?'";
	now lastfuck of Corbin is turns;

to say CorbinSex2: [cunt licked by Corbin]
	say "     As you ask the equine cowboy for some oral attention, he chuckles and says 'A lady wanting my services - let's see if I still know my way around after all the guys bugging me for blowjobs constantly.' Smiling, he crouches down, his hands already on your crotch. In no time at all, he's got your clothes out of the way and the strong fingers of his hand gently touching your pubic mound. He strokes softly over your sensitive pussy lips, smiling up at you as that makes you give a small moan. Working some magic with his fingers, he rubs and touches you, getting you pretty excited in no time at all. Then he spreads your nether lips, leaning his head forward to run his tongue over your open pussy. Man, he really knows what he does, showing a deep insight in how a woman likes to be touched. Rubbing and licking erogenous zones you barely knew you had, he keeps you going, panting and moaning, for quite a while until you finally reach the point of no return. With a loud gasp, you orgasm, dripping female juices over his fingers.";
	say "     Corbin still keeps going, fondling your lips as you shiver in pleasure and slurps up your femcum. When your orgasm slowly ebbs out, he gives your pussy a last long lick, then stands up. He smiles at you still breathing heavily, then says 'There, how was that?'";
	now lastfuck of Corbin is turns;

to say CorbinSex3: [Corbin's cunt licked/fingered]
	if thirst of Corbin is 1: [in the barracks]
		if hp of Corbin is 2 or hp of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch - then he realizes where you are, stepping backwards and looking around with concern in his eyes. He says in a low whisper 'Phew - no one noticed. Please, we can't do this here.' He bites his lip, then takes a deep breath, fighting down his arousal 'No, we really can't - later, in the milking shed tonight, ok?'";
			say "     Do you accept this (Y), or proceed anyways? (N)";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			otherwise:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, this time pushing your hand under the band of his pants before he can stop you. As your fingers touch his sensitive pussy lips and dip in between them, a needful moan escapes the equine cowboy's lips and all his resistance melts away in moments. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too.";
				say "     After some more stroking and fingering Corbin's pussy, you kneel down to pop open the button of his jeans, then lower the zipper and pull them down his legs. There's a murmur in the room as the cuntboy's swollen nether lips and the perky breasts on his crotch come into sight. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
				say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he says with an a bit pained voice 'Did you have to do that - here?' With a concerned look at the group of horny horsemen in the barracks leering at him, he pulls up his jeans and rushes out the back door of the barracks.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2;
				now hp of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, you kneel down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
			say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, gushing femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you lover, I really needed that.'";
			now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the somewhat damp fabric of his jeans there. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Then you push your hand under the band of his pants and feel for his sensitive pussy lips, slipping in a finger into the wet hole between them. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you kneel down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
			say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick, tasting his juices and the horseman cum, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep eating him out for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, gushing femcum from his spread pussy. As you stand up again, you suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, then lets himself be led off to the man's bunk to be mounted and bred.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	otherwise if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it and being rewarded with a squirt of tasty milk. You drink several swallows from this breast, then the other, pleased at the look of bliss coming over Corbin's face as you suckle from him. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets.";
		say "     Letting go of his breasts and turning your attention to Corbin's female bits, you give him a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's panting and squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you, I really needed that.'";
		now lastfuck of Corbin is turns;
		infect "Cowboy Cuntboy";

to say CorbinSex4: [Corbin's pussy fucked]
	if thirst of Corbin is 1: [in the barracks]
		if hp of Corbin is 2 or hp of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch - then he realizes where you are, stepping backwards and looking around with concern in his eyes. He says in a low whisper 'Phew - no one noticed. Please, we can't do this here.' He bites his lip, then takes a deep breath, fighting down his arousal 'No, we really can't - later, in the milking shed tonight, ok?'";
			say "     Do you accept this (Y), or proceed anyways? (N)";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			otherwise:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, this time pushing your hand under the band of his pants before he can stop you. As your fingers touch his sensitive pussy lips and dip in between them, a needful moan escapes the equine cowboy's lips and all his resistance melts away in moments. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too.";
				say "     After some more stroking and fingering Corbin's pussy, you kneel down to pop open the button of his jeans, then lower the zipper and pull them down his legs. There's a murmur in the room as the cuntboy's swollen nether lips and the perky breasts on his crotch come into sight. Standing back up again, one hand around his chest to hold him close, the other stroking his pussy, you walk Corbin over to the nearest bed and softly push his unresisting form to lie down on it.";
				say "     [WaitLineBreak]";
				say "     The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper - all the way!' Corbin tells you as he wraps his legs around your hips, pulling you closer against his body.";
				say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing him to pull you into a hot kiss. As he comes back up for air, he moans 'Fuck me' into your mouth, then lies back again, completely giving himself to you. With the warm, tight hole of such an eager partner around your cock, all restraint goes out the window and start fucking him hard and deep. Just as he likes it - Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
				say "     [WaitLineBreak]";
				say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's womb, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that pussy!' As he hears the horsemen's words, Corbin turns his head to look at them and gives a groan. He looks the other way, still breathing a bit heavily as he rides out the throes of his own orgasm, then winds his way out from under you and stands up. With an a bit pained voice he says to you 'Did you have to do that - here?' Then he grabs his pants, accompanied by wolf whistles from the other horsemen as he bends to pick them up, and rushes out of the back door of the barracks without even putting them on.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2;
				if CorbinPregnancy is 0: [not already preggers]
					let CorbinPregChance be a random number from 1 to 20;
					if CorbinPregChance > 10: [50% chance]
						now CorbinPregCounter is 48; [48 turns till birth]
						now CorbinPregnancy is 1; [invisibly pregnant]
						now libido of Corbin is 1; [player is the father]
						now CorbinImpregnatingCock is cockname of player;
				now hp of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. While you quickly take off your own clothes, he saunters over to his bunk and lies down on it. The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper - all the way!' Corbin tells you as he wraps his legs around your hips, pulling you closer against his body.";
			say "     [WaitLineBreak]";
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing him to pull you into a hot kiss. As he comes back up for air, he moans 'Fuck me' into your mouth, then lies back again, completely giving himself to you. With the warm, tight hole of such an eager partner around your cock, all restraint goes out the window and start fucking him hard and deep. Just as he likes it - Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
			say "     You have sex with him like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - you flop down to lie on your back on the mattress besides him. Exhaustedly, he reaches over to caress your chest, panting 'It's unbelievable how good you make me feel. Thank you.' Then he rolls over on his side, stretching a bit to give you a kiss on the cheek before promptly dozing off. Smiling at the sleeping horseman as you grab your clothes, you leave him to rest and quietly dress.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 1; [player is the father]
					now CorbinImpregnatingCock is cockname of player;
			now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the somewhat damp fabric of his jeans there. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Then you push your hand under the band of his pants and feel for his sensitive pussy lips, slipping in a finger into the wet hole between them. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. While you quickly take off your own clothes, he saunters over to his bunk and lies down on it. The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. The cuntboy gives a lust-filled grunt as you sink your cock into his cum-slick hole, gripping the sheets under him as arousal floods his body. A pant of 'Harder. Deeper.' escapes his lips in between moans.";
			say "     [WaitLineBreak]";
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing you to pull him into a hot kiss. As he comes sinks back on the mattress afterwards, he moans 'Fuck me' completely giving in to his bodies urges. With the warm, tight hole of the hot cuntboy around your cock, all restraint goes out the window and start fucking him hard and deep. Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
			say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's womb, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that pussy!' The equine cowboy also orgasms as you come in him, his female bits sending waves of pleasure through his body as they are filled with fertile seed as they're supposed to. You keep pumping in and out of his femcum-slick hole slowly for a while longer after you finish shooting, then suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, staying right where he is as the other man pushes you aside to fuck and breed him.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 1; [player is the father]
					now CorbinImpregnatingCock is cockname of player;
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	otherwise if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. While you quickly take off your own clothes, he grabs a thick blanket from the nearby supply closet, spreading it on the floor and lying down on it.";
		say "     The sight of the hot equine cuntboy, lying on his back, legs spread just waiting for you, has your cock hard and ready to go instantly. Eager to thrust into his wet folds but holding back for now, you kneel between his legs, letting your hard manhood rest against his pubic mound for a moment as you take hold of and fondle his breasts. Then you grind against him with your hips, your shaft rubbing over Corbin's swollen pussy lips before you put its tip between them and slide in, spreading the cowboy's passage around your cock. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper - all the way!' Corbin tells you as he wraps his legs around your hips, pulling you closer against his body.";
		say "     [WaitLineBreak]";
		say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his hips with a satisfying slap. His upper body rears up with a loud moan as you bottom out inside him, bringing his head close to yours and allowing him to pull you into a hot kiss. As he comes back up for air, he moans 'Fuck me' into your mouth, then lies back again, completely giving himself to you. With the warm, tight hole of such an eager partner around your cock, all restraint goes out the window and start fucking him hard and deep. Just as he likes it - Corbin gives lustful grunts to accompany the sound of your hips slapping against his crotch and is just panting with arousal.";
		say "     You have sex with him like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his womb with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - you flop down to lie on your back on the blanket besides him. Exhaustedly, he reaches over to caress your chest, panting 'You can't believe how good this feels after holding everything in for weeks. Thank you.' Then he rolls over on his side, stretching a bit to give you a kiss on the cheek before promptly dozing off. Smiling at the sleeping horseman as you grab your clothes, you leave him to rest and quietly sneak out of the building.";
		move player to Central Farm Square;
		now lastfuck of Corbin is turns;
		if CorbinPregnancy is 0: [not already preggers]
			let CorbinPregChance be a random number from 1 to 20;
			if CorbinPregChance > 10: [50% chance]
				now CorbinPregCounter is 48; [48 turns till birth]
				now CorbinPregnancy is 1; [invisibly pregnant]
				now libido of Corbin is 1; [player is the father]
				now CorbinImpregnatingCock is cockname of player;

to say CorbinSex5: [Corbin's ass fucked]
	if thirst of Corbin is 1: [in the barracks]
		if hp of Corbin is 2 or hp of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his ass, giving it a good squeeze. He instinctively pushes back against you, suppressing a moan - then suddenly, gives you a shove away from him and says loudly 'I may be willing to give blowjobs, but I'm not taking it up the ass.' Seeing the surprised look in your face, he gives you a telling stare and a little nod to the side, where you see one of the other horsemen casually observing the two of you. Corbin gives you a wink, whispering 'Tonight, in the milking shed, ok?'";
			say "     Do you accept this (Y), or proceed anyways? (N)";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			otherwise:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, sliding your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. Corbin puts his lips to yours, lust making him forget about his reluctance as he gives you a hungry kiss and asks 'So you want to take a ride on this pony? Fine - I need it bad!' He gives your crotch a light squeeze, then walks over a close-by bunk bed, letting his jeans drop and stepping out of them on the way. Bending forward, both hands on the metal rail of the upper bunk, he looks back at you and wiggles his ass invitingly.";
				say "     You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, making him whinny like a real horse, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
				say "     [WaitLineBreak]";
				say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that compliments his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the barracks with loud moans and the slapping noises as your hips and ass meet again and again.";
				say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's ass, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that bitch!' As he hears the horsemen's words, Corbin turns his head to look at them and gives a groan, now realizing what you two fucking here means without arousal clouding his judgement. He looks the other way, still breathing a bit heavily as he rides out the throes of his own orgasm, then slides off your shaft with a wet slurp and turns around. With an a bit pained voice he says to you 'Did you have to do that - here?' Then he grabs his pants, accompanied by wolf whistles from the other horsemen as he bends to pick them up, and rushes out of the back door of the barracks without even putting them on.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2;
				now hp of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you slide your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. As you start to slide a finger up and down his crack, teasing the cuntboy's pucker, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, Corbin says 'So you want to take a ride on this pony? Good - I need it bad!' He gives your crotch a light squeeze, then walks over a close-by bunk bed, letting his jeans drop and stepping out of them on the way. Bending forward, both hands on the metal rail of the upper bunk, he looks back at you and wiggles his ass invitingly. You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, making him whinny like a real horse, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
			say "     [WaitLineBreak]";
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that compliments his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the barracks with loud moans and the slapping noises as your hips and ass meet again and again.";
			say "     You have sex with Corbin like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his asshole with your seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - the two of you sink down to and lie on the bed in exhaustion. Exhaustedly, he reaches over to caress your chest, panting 'It's unbelievable how good you make me feel. Thank you.' Then he rolls over on his side, stretching a bit to give you a kiss on the cheek before promptly dozing off. Smiling at the sleeping horseman as you grab your clothes, you leave him to rest and quietly dress.";
			now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you slide your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. As you start to slide a finger up and down his crack, teasing the cuntboy's pucker, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. Giving a needful whinny, the transgendered cowboy walks over to a close-by bunk bed and bends forward, both hands on the metal rail of the upper bunk. You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
			say "     [WaitLineBreak]";
			say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that compliments his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the barracks with loud moans and the slapping noises as your hips and ass meet again and again.";
			say "     You have sex with him like a horny bunny for quite a while, the rapid thrusting and ever louder moans and groans building up to a breathtaking climax. When you finally pass the point of no return and start blasting your fertile load deep into Corbin's ass, a cheer goes through the watching crowd, combined with comments like 'Give it to him good!' and 'Fill that pussy!' The equine cowboy also orgasms as you come in him, anal muscles trembling around your shaft and his pussy squirting femcum to trickle down the inside of his leg. You keep pumping in and out of his cum-filled asshole slowly for a while longer after you finish shooting, then suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, staying right where he is as the other man pushes you aside to fuck and breed him.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	otherwise if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you slide your arms down the sides of his muscular chest, then around his body to grab both the shapely cheeks of his ass. The equine cuntboy can barely suppress a moan, automatically shifting his stance a bit forward to lean into your touch. Smiling, you move your hands upward a bit, then slip them into his pants, now kneading the lightly furred orbs of his ass directly. Corbin puts his lips to yours, giving you a hungry kiss, then asks 'So you want to take a ride on this pony? Bring it on!' He gives your crotch a light squeeze, then walks over to the back wall of the milking booth, letting his jeans drop and stepping out of them on the way. Bending forward, both hands on the metal rail on the wall, he looks back at you and wiggles his ass invitingly.";
		say "     You set a new record in getting out of your clothes and gear, quickly stepping into position behind the hot equine cuntboy with a by then fully hard and ready cock. Giving him a light slap on the ass, making him whinny like a real horse, you put your manhood between his cheeks, rubbing it up and down against the cowboy's crack. Corbin moans 'Come on, mount up - I'm waiting' and grinds his ass back against your crotch. Not losing any more time, you take hold of your cock, aim it at his pucker and press forward, finding that it readily accommodates your girth, stretching easily but still tightly around your manhood. Seems like he's got quite a bit of experience in taking it though the back door. 'Yeah, *pant* you feel so good inside me. *moan* Go deeper, harder - all the way!' Corbin tells you as he grips the metal bar tightly.";
		say "     [WaitLineBreak]";
		say "     Quick to respond to your handsome partner's request, you thrust forward, sliding yourself fully into his depths and meeting his cheeks with your hips with a satisfying slap. A loud, lustful groan can be heard from Corbin and he pushes back against you to make sure you're in as deep as you can go. Then he rocks forward and back a bit, too eager to get fucked to wait a second longer. Chuckling at his need to be fucked, you take up a rhythm that compliments his, holding on to his hips and slamming forward when he is just on the move back. The two of you fill the milking shed with loud moans and the slapping noises as your hips and ass meet again and again.";
		say "     You have sex with Corbin like a horny bunny for at least an hour, only stopping for a moment when you cum inside him and fill his asshole with your seed, then make out a bit until you're ready to go on. It's a wild ride with your horsey cuntboy, until finally - after him and you coming multiple times - the two of you sink down to lean against the wall in exhaustion. Smiling, he reaches over to caress your chest, panting 'You can't believe how good this feels after holding everything in for weeks. Thank you.' Then leans over to you, stretching a bit to give you a kiss on the cheek before promptly dozing off on your shoulder. You gently lower the sleeping horseman to the ground, putting his bunched-up jeans under his head as a pillow, then grab your stuff and leave him to rest, quietly sneaking out of the building.";
		move player to Central Farm Square;
		now lastfuck of Corbin is turns;

to say CorbinSex6: [Corbin milked]
	if thirst of Corbin is 1: [in the barracks]
		if hp of Corbin is 2 or hp of Corbin is 3: [player fucked him - or just saw him in the milking shed, his pussy still a secret]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch - then he realizes where you are, stepping backwards and looking around with concern in his eyes. He says in a low whisper 'Phew - no one noticed. Please, we can't do this here.' He bites his lip, then takes a deep breath, fighting down his arousal 'No, we really can't - later, in the milking shed tonight, ok?'";
			say "     Do you accept this (Y), or proceed anyways? (N)";
			if player consents:
				say "     After a last grope at Corbin's crotch, you nod and leave him be for now.";
			otherwise:
				say "     Not deterred from doing what you want by the cuntboy's words, you move to stand close again, this time pushing your hand under the band of his pants before he can stop you. As your fingers touch his sensitive pussy lips and dip in between them, a needful moan escapes the equine cowboy's lips and all his resistance melts away in moments. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too.";
				say "     After some more stroking and fingering Corbin's pussy, you kneel down to pop open the button of his jeans, then lower the zipper and pull them down his legs. There's a murmur in the room as the cuntboy's swollen nether lips and the perky breasts on his crotch come into sight. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
				say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he says with an a bit pained voice 'Did you have to do that - here?' With a concerned look at the group of horny horsemen in the barracks leering at him, he pulls up his jeans and rushes out the back door of the barracks.";
				move Corbin to Milking Shed Main Room;
				now thirst of Corbin is 2; [now in the milking shed]
				now hp of Corbin is 4; [he's 'out' to the horsemen - who're starting to get interested]
				now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 5: [player fought off the horsemen going for Corbin]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. Though while they might be... interested in Corbin, one pointed look from you in their direction has the closest few suddenly deciding they need some fresh air outside. Knocking out several of them before seems to have left an impact, with Corbin off-limits unless he initiates it. For which your grateful cuntboy cowboy leans in to plant a thankful kiss on your lips - leading over to a hungry bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. As you kneel down, Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
			say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you, I really needed that.'";
			now lastfuck of Corbin is turns;
		otherwise if hp of Corbin is 90: [barracks slut]
			say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the somewhat damp fabric of his jeans there. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Then you push your hand under the band of his pants and feel for his sensitive pussy lips, slipping in a finger into the wet hole between them. While you finger Corbin and get him to pant and gasp, you notice some movement in your peripheral view - it's several of the other horsemen in the barracks, turning to watch what you're doing and nudging others awake too. You don't let that distract you and just lean in to plant a hungry kiss on Corbin's lips - leading over to a bit of making out.";
			say "     After some enjoyable tongue-wrestling, you reach down and pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's swollen-looking nether lips come into sight, still wet with the cum one of his equine housemates blasted into him not too long ago. And left and right of that, his perky breasts await you, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
			say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices as well as the horseman cum, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, you suddenly feel a hand on your shoulder. It's one of the horseman farmhands, naked, with his hard prick in hand. He says 'Ok, you're done - my turn with the little slut.' Corbin only gives a sigh, staying right where he is as the other man pushes you aside to fuck and breed him.";
			if CorbinPregnancy is 0: [not already preggers]
				let CorbinPregChance be a random number from 1 to 20;
				if CorbinPregChance > 10: [50% chance]
					now CorbinPregCounter is 48; [48 turns till birth]
					now CorbinPregnancy is 1; [invisibly pregnant]
					now libido of Corbin is 2; [horseman is the father]
			now lastfuck of Corbin is turns;
	otherwise if thirst of Corbin is 2: [in the milking shed]
		say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You don't waste a second, leaning forward to put your lips to one of his nipples, softly suckling on it, then pulling back as the first drop of milk touches your lips. You caress his nipple, circling it with your finger, then lean down to your pack and grab an empty water bottle, starting to softly squeeze Corbin's breast and catch the milk squirting out in the bottle. A look of bliss coming over Corbin's face as you slowly milk him, taking care of the pressure in one of his breasts, then repeating the same on the other side. It's clearly giving him more than just a bit of arousal, judging from how wet and dripping his pussy gets...";
		say "     When the flow of milk slows down to just a trickle and the bottle is almost full anyways, you let go his breasts and turn your attention to Corbin's female bits. You can't just leave him panting in lust like this, so you give his pussy a careful lick and taste his juices, then really go to town on him - licking and fondling him until he's squirming in arousal, his hands grabbing your your shoulders to hold on to something. You keep going for quite a bit until suddenly, he gives a lust-filled gasp and orgasms, dripping femcum from his spread pussy. As you stand up next to the still heavily breathing cowboy, he grabs you and pulls you into a deep kiss, then says 'Thank you, I really needed that.'";
		now lastfuck of Corbin is turns;
		increase carried of cowboy milk by 1;

to say CorbinSex7: [Corbin + Felinoid]
	say "     Stepping up close to Corbin, you put your hand on his crotch, rubbing against the fabric of his jeans. The equine cuntboy can barely suppress a moan, his hips shifting a bit forward to lean into your touch. Kneeling down, you pop open the button of his jeans, then lower the zipper and pull them down his legs. Corbin's already a bit swollen-looking nether lips and the perky breasts on his crotch come into sight, looking pretty inviting. You slowly stroke your finger along his opening, giving the cuntboy a pleasant tingle, then gently rub his clit and ask if he'd like to mix things up a bit this time. Smiling at his curious expression, you reach up and run a finger along his equine jawline, turning his head a bit so he looks at the nearby spot where your felinoid companion is sprawled out on the ground, lounging in comfort and only opening his eyes from time to time as he mostly dozes peacefully. A lusty grin spreads over Corbin's face as he nods, then pulls you to your feet to share a quick kiss before walking over to where the big cat is lying.";
	say "     Crouching down besides the feral beast, Corbin starts rubbing the felinoid's belly fur, which quickly is answered by a resounding purr from the big feline. He slowly moves one of his stroking hands lower and lower until he reaches the felinoid's crotch, then cups the feline's furry balls, gently massaging them. By now, the large cat has raised his head to look down at the cowboy and you've moved in to scratch him behind the ears and on his chin. Soon, the felinoid's barbed cock starts poking out of its sheath, quickly hardening to its full glory. Corbin goes on to grab the great cat's shaft and jerks on it while his other hand moves to his own crotch to rub an increasingly wet and dripping pussy. You notice the felinoid's entrancing musk starting to fill the air - not that he needs it this time, with two willing partners coming to him on their own.";
	say "     [WaitLineBreak]";
	say "     With the felinoid all relaxed from all the stroking and scritching, perfectly willing to let you two continue pleasing him, he just keeps on purring loudly as you take a muscular foreleg, Corbin one of the hind legs and pull them to the side. It's pretty easy to roll the big feline over on his back, putting him in a stretched out position, legs spread and his manhood standing proudly erect. Giving you a wide smile, Corbin climbs on top of the felinoid, bracing himself against the cat's muscular underside as he lowers himself down on its crotch. The cuntboy cowboy gives a lust-filled pant as he feels the felinoid's cock start to spread his pussy lips, followed by a loud gasp as the big beast thrusts his hips up a bit with a growl and sinks himself halfway into the horseman.";
	say "     After getting in that first thrust, the felinoid relaxes again, content in letting the horny cuntboy on top of him fuck himself on his stiff pole. Which Corbin does, with a lot of enthusiasm. Bouncing up and down on the feline shaft, your friend moans loudly and runs his hands through the large animal's belly fur, soon totally lost in the moment.";
	say "     [line break]";
	say "     Getting pretty aroused by watching your two friends go at it yourself, you decide it's time to join in.";
	if cocks of player > 0:
		say "[CorbinSex7_Male]";
	otherwise:
		say "[CorbinSex7_Female]";


to say CorbinSex7_Male:
	say "     [line break]";
	say "     What shall it be you want to do with your cuntboy and felinoid friends? Fuck Corbin's ass [link](1)[as]1[end link], or rather the felinoid's ass [link](2)[as]2[end link], maybe get a blowjob from Corbin [link](3)[as]3[end link] or present your manhood to the felinoid to have him lick it [link](4)[as]4[end link]?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to fuck Corbin's ass, [link]2[end link] to fuck the felinoid in the ass, [link]3[end link] to get a blowjob from Corbin or [link]4[end link] to have the felinoid lick your cock.";
	say "     [line break]";
	if calcnumber is 1: [fuck Corbin]
		say "     Kneeling down on the ground between the felinoid's legs, you snake your arms around Corbin from behind, caressing his smooth chest. As the cuntboy cowboy eagerly leans into your touch, you plant a line of little kisses from his neck up to his right earlobe, playfully nibbling at it before you whisper that you want to fuck him in the ass. The young man looks back and gives you a smile over his shoulder, then leans forward, stretching his upper body out over the felinoid's furry belly while raising his ass a bit for you. Who could resist such an alluring display? You're almost twitching with the need and desire to fuck your handsome friend when you take hold of your manhood and line it up with his butt. Moving forward, you press the cockhead against his pucker, first lightly, then a bit harder until it it finally yields to your invading member.";
		say "			[WaitLineBreak]";
		say "     Grunting in satisfaction, you thrust deeper into your equine friend, revelling in the sensations of his insides gripping your shaft tightly. You keep still a while longer, just resting your cock inside him to give Corbin a time to get used to it - then suddenly he starts rocking back and forth, fucking himself on your and the felinoid's cocks at the same time. As he moves, you feel movement bump and rub against your cock - that must be the felinoid, his erection pumping in and out of Corbin's other hole. So hot - to be able to feel him through the walls of Corbin's insides.";
		say "     With the two of you balls deep inside Corbin as he fucks himself on your cocks, the arousal of everyone involved soon mounts higher and higher. The felinoid is the first one to pass the point of no return, suddenly stiffening under Corbin and giving a satisfied roar, with his cock pulsing as spurt after spurt of his seed is shot deep into Corbin's pussy. Getting bred by the large beast, his body being filled with fertile cum, drives Corbin to climax just a moment later. He gasps in lust, holding on to the felinoid's soft belly fur as the orgasm makes him writhe in pleasure. You speed up your own thrusts into Corbin's asshole, eager to fill him with another load of cum. After just a few more thrusts you come, a huge load boiling up from your balls and shooting into Corbin's body.";
		say "			[WaitLineBreak]";
		say "     Exhausted by the hot fuck, you rest for a moment against Corbin's back, your slowly softening shaft still inside him. The felinoid meanwhile just leans his head back in total relaxation, and you can literally feel his resounding purr through Corbin lying on the feline's chest. Corbin gives a satisfied sigh, then says, 'Man, you two are quite something.' while reaching back and stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	otherwise if calcnumber is 2: [fuck felinoid]
		say "     Kneeling down on the ground between the felinoid's legs, you snake your arms around Corbin from behind, caressing his smooth chest. As the cuntboy cowboy eagerly leans into your touch, you plant a line of little kisses from his neck up to his right earlobe, playfully nibbling at it before you whisper that you want to fuck the felinoid in the ass and he should distract the big kitty a bit. The young man looks back and gives you a smile over his shoulder, then leans forward, stretching his upper body out over the felinoid's furry chest while stroking him with his hands and pumping his own hips rapidly up and down on the big cat's hard shaft. At the same time, you take hold of your own cock and line it up with the tight hole under the felinoid's tail. Moving forward, you press the cockhead against his pucker, first lightly, then a bit harder until it finally yields to your erect member.";
		say "			[WaitLineBreak]";
		say "     Before he realizes what's happening and can do much more than start a surprised rumble in his throat, you're balls-deep in the felinoid's ass, hitting sensitive spots that make him purr even louder than before. Grunting in satisfaction, you thrust deeper into your feline friend, revelling in the sensations of his insides gripping your shaft tightly. You start sliding in and out of his hole while putting your hands on the big cat's muscular hind legs. Holding on to them as you pound the felinoid's ass, you find a rhythm with Corbin, slamming into his furry butt just as Corbin pulls up and vice versa. It's an amazing feeling to be moving in concert with your two companions, all of you in a lust-filled haze.";
		say "     With you fucking the felinoid's ass while Corbin fucks fucks himself on his cock, the arousal of everyone involved soon mounts higher and higher. The felinoid is the first one to pass the point of no return, suddenly stiffening under Corbin and giving a satisfied roar, with his cock pulsing as spurt after spurt of his seed is shot deep into Corbin's pussy. Getting bred by the large beast, his body being filled with fertile cum, drives Corbin to climax just a moment later. He gasps in lust, holding on to the felinoid's soft belly-fur as the orgasm makes him writhe in pleasure. Meanwhile, you speed up your own thrusts into the big cat's asshole, eager to fill him with your own load of cum. After just a few more thrusts you come, a huge load boiling up from your balls and shooting deep into the felinoid's body.";
		say "			[WaitLineBreak]";
		say "     Exhausted by the hot fuck, you rest for a moment against Corbin's back, your slowly softening shaft still inside the big feline under him. The felinoid meanwhile just leans his head back in total relaxation, and you can literally feel his resounding purr through Corbin lying on the great beast's chest. Corbin gives a satisfied sigh, then says, 'Man, you two are quite something.' while reaching back and stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	otherwise if calcnumber is 3: [BJ from Corbin]
		say "     Stepping up to stand over the felinoid, your feet left and right of his stretched-out body, you smile down at Corbin and hold out your hard [cock of player] shaft to him. He stops his movements on top of the large cat for a moment, sitting still with the large spined shaft deep in his pussy while he reaches out to grasp your cock and fondle your balls. Your eager cuntboy friend licks his lips, then gets to work sucking you off, taking the tip of your member into his mouth and running his tongue over it. After going down on your shaft all the way a few times, he starts sliding up and down on the felinoid's erection once again, timing it with bobbing his head towards you.";
		say "			[WaitLineBreak]";
		say "     Taking the felinoid's shaft deep in his pussy while he sucks you off, with its small spines rubbing his inner walls and causing incredible sensations, it doesn't take too much longer until Corbin's arousal peaks. With his lips tightly wrapped around your [cock of player] shaft, the cuntboy cowboy gives a somewhat muffled but still loud moan from his throat, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping his cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With him breathing deeply and still in the grip of his own orgasm, you take hold of your erect manhood and jerk it, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, blasting your load all over Corbin's face, neck and chest. The now pretty splattered equine gives you a broad smile, then reaches up to pull you down to his level and kiss him, after which you proceed to lick your own cum off him and share its taste while making out.";
		say "			[WaitLineBreak]";
		say "     Corbin gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	otherwise if calcnumber is 4: [BJ from felinoid]
		say "     Stepping up to stand against the head end of the bed, you give the felinoid's chin an affectionate scratch, then hold out your hard [cock of player] shaft to him. The large cat looks at you with his golden eyes, then down at Corbin riding his shaft and back at you. Finally giving an amicable growl, he nuzzles upwards into your groin, teasing your [cock size desc of player] [cock of player] shaft. A rough tongue flicks out across sensitive flesh, taking special care to carefully lap over your balls and tease the underside of your shaft.";
		say "			[WaitLineBreak]";
		say "     While you're getting head from the large beast, Corbin rides his spined cock with unabated vigor moaning and gasping loudly at the sensations it gives him. With how much he enjoys riding the big cat, it doesn't take too much longer until Corbin's arousal peaks. Panting unintelligible sounds in his lust, the cuntboy cowboy rises up and slams himself down on the hard erection under him, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping his cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar himself and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With him breathing deeply and still in the grip of his own orgasm, you take hold of your erect manhood and jerk it, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, blasting your load all over the felinoid's furry face, with a few shots landing in his open muzzle. The big cat gives a pleased mrowl at the taste of your seed, using his long tongue to lick up any that landed in the fur around his muzzle. Smiling at that, you help him out by wiping up any that he can't reach with your fingers and holding them out for him to lick your cum off. Then you step closer to Corbin, leaning forward to give him a deep kiss.";
		say "			[WaitLineBreak]";
		say "     One kiss follows another and Corbin keeps his position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside him. He gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";

to say CorbinSex7_Female:
	say "     Your pussy is almost dripping with arousal and you're ready to have someone lick it - though who shall it be? Corbin (Y) or the felinoid (N)?";
	if player consents: [BJ from Corbin]
		say "     [line break]";
		say "     Stepping up to stand on the bed, your feet left and right of the felinoid's body, you smile down at Corbin and demonstratively rub over your pussy lips, holding them apart for him. He stops his movements on top of the large cat for a moment, sitting still with the large spined shaft deep in his pussy while he reaches out to touch your privates, softly brushing against your clit. Your eager cuntboy friend licks his lips, then gets to work eating you out, taking great care in teasing your most sensitive spots. After a moment of giving you his full attention, he starts sliding up and down on the felinoid's erection once again, timing it with licking you.";
		say "			[WaitLineBreak]";
		say "     Taking the felinoid's shaft deep in his pussy while he gives oral to you, with its small spines rubbing his inner walls and causing incredible sensations, it doesn't take too much longer until Corbin's arousal peaks. After another lick that makes you shudder with need, the cuntboy cowboy gives a loud moan from his throat, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping his cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With him breathing deeply and still in the grip of his own orgasm, you put your fingers to work on your pussy in earnest, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, a squirt of femcum hitting Corbin in the chest to run down over his smooth skin and more of it dripping down on the felinoid's belly-fur. Your equine friend gives you a broad smile, then reaches up to pull you down to his level and kiss him.";
		say "			[WaitLineBreak]";
		say "     One kiss follows another and Corbin keeps his position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside him. He gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";
	otherwise: [BJ from felinoid]
		say "     [line break]";
		say "     Stepping up to stand against the head end of the bed, you give the felinoid's chin an affectionate scratch, then get on the bed to kneel over his head. His long whiskers tickle against your legs as the large cat nuzzles upwards into your groin, sniffing your moist and ready pussy. Then he starts to lick you, his rough tongue carefully lapping over sensitive flesh and seeking out your clit.";
		say "			[WaitLineBreak]";
		say "     While you're getting oral attention from the large beast, Corbin rides his spined cock with unabated vigor moaning and gasping loudly at the sensations it gives him. With how much he enjoys riding the big cat, it doesn't take too much longer until Corbin's arousal peaks. Panting unintelligible sounds in his lust, the cuntboy cowboy rises up and slams himself down on the hard erection under him, a shudder running through his whole body as he comes. Femcum trickling down the felinoid's shaft and Corbin's inner muscles gripping hiss cock like a vise make sure that it's only moments later that the big cat lets out a satisfied roar himself and his cock starts pulsing with spurt after spurt of his seed shooting into Corbin's pussy. The handsome cuntboy lowers his hand to the height of his belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With the felinoid busy savouring his own orgasm, you put your fingers to work on your pussy in earnest, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, a squirt of femcum hitting the felinoid's muzzle and more of it dripping down on the fur on his neck. The big cat gives a pleased rumble, licking it off his muzzle and lapping at your crotch a few times to get a bit more of a taste.";
		say "			[WaitLineBreak]";
		say "     Corbin gives a satisfied sigh, then says, 'Man, you two are quite something,' while stroking your side affectionately. After a while longer in this position, gently touching each other, an exhausted Corbin sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against his warm fur and with an arm and a leg still draped over him. You take position on the other side, leaning in against the big feline's warm bulk and rest for a while, then eventually stand up with a sigh and go to collect your clothes. Can't cuddle all day - there's still the matter of ensuring your survival in this chaotic city.";

[ hp states of Anthony                                                         ]
[   0: starting state                                                          ]
[   1: about to give a reward for returning Wendy to a player he never met     ]
[   2: talked to the player                                                    ]
[   3: about to give a reward for returning Wendy to a player he met before    ]
[   4: gave the player his reward for returning Wendy                          ]
[   5: player helped Shawn & Duke and got rewarded                             ]

Anthony is a man.  The hp of Anthony is normally 0. Anthony is in Farmhouse Main Room.
The description of Anthony is "[AnthonyDesc]".
The conversation of Anthony is { "Mew!" }.
The icon of Anthony is Figure of Anthony_icon.

instead of sniffing Anthony:
	say "Anthony has a pleasant animalistic smell. Clearly male and somewhat spicy, you almost have to hold yourself back from getting too close and pushing your nose into his lustrous fur.";

to say AnthonyDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Anthony] <- DEBUG[line break]";
	say "     Anthony McDermott is a tall anthro anteater in a kilt, with a light and slender build and the characteristic elongated head and narrow snout of a giant anteater. He has large brown eyes and expressive, flexible ears on top of his head, plus a beautiful mane of brown hair down to the midst of his back. One lock of his mane hangs down over his brow, giving him a somewhat dashing appearance.";
	say "     The young man's body is covered in lustrous and silky fur, with most of it light brown to blond and pretty short, showing off the fit shape and light muscles of his upper body, abs, legs and (you assume) crotch. Meanwhile, his forearms and lower legs have longer, almost purely blond hair covering them, and the very long prehensile tail behind him looks pretty big with the thick and darker brown fur along its length.";
	say "     Another thing of note are the long and curved claws on his hands and feet, longer than the fingers themselves. Looking at them makes you recall something you once read about a regular giant anteater being able to kill a jaguar in a stand-up fight...";

instead of conversing the Anthony:
	say "     What do you want to talk to him about? You could chat with him a bit [link](1)[as]1[end link], ask if there's any problems you could help with [link](2)[as]2[end link], or just change your mind and not say anything [link](3)[as]3[end link]?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to chat with him, [link]2[end link] to offer your help, or [link]3[end link] to break off the conversation.";
	if calcnumber is 1: [chat]
		say "     Chatting a bit about this and that, you finally come to the topic of [one of]Anthony's kilt. He laughs as you bring up the unconventional piece of clothing, running a hand over its fabric. 'Yeah, I know - it feels strange to be wearing a skirt - ok, kilt - all the time. Not that I have any choice - imagine trying to pull a pair of pants over those...' He nods down to the long curved claws on his feet. 'I ripped three pairs of jeans after I transformed until I remembered this thing. Thank god grandmother insisted on all of us men wearing 'traditional' outfits when my older sister married a few years back.'[or]the farm itself. Anthony explains 'This land has been in my family for generations. I spent quite a few summer holidays out here as a kid. Just a few months before all this...' *he raises one of his furred arms and clicks the claws against each other* 'happened, my grandfather died, leaving all of it to me and I moved here for good. I was just getting the hang of making everything work all right when the world got crazy. Since then, all us humans have become something else and various animals started acting strange. And then there's that strange grass, growing fast and actively trying to destroy things...'[or]the plains. Anthony says 'Crazy stuff, the grass out there. I mean, the farm was on the far edge of the city, pretty thinly built up with farmland and a few wooded areas around - now it's all just that endless sea of grass, with all the other buildings already collapsed and gone.'[at random]";
	otherwise if calcnumber is 2: [help]
		say "     Anthony smiles as you offer your help, putting his hand on your shoulder - carefully, because of his claws - and saying 'Thanks a lot, we really can use the help.' His eyes get a faraway expression as he thinks for a moment, trying to find the right job for you to do.";
		if hp of Anthony < 4:
			say "     'You've been around in the area and further into the city, so could you please have a look out for a cow - a regular, untransformed one. Some of our cows ran off when a critter broke through the fence and frightened them, and we still haven't found one of our best producers. Really hope she's all right. Her name is Wendy and she's very docile and peaceful. If you do find her, just calm her down, talk to her a bit and she'll follow you so you can bring her back here.'";
			say "     He looks to you with a hopeful expression, then continues with 'There's a reward too. If you bring Wendy back, I can give you a bag of food - farm-fresh and guaranteed infection free.'";
		otherwise if hp of Anthony is 4:
			if hp of Duke < 10:
				say "     'You're pretty resourceful and often out in the city, aren't you? Maybe you could find a way to help Shawn and Duke - they're shepherds, really nice guys and hard workers. Just go out to the meadow after dark and you'll see what's going on, ok?'";
			otherwise:
				say "     'I was gonna ask you to help out Shawn and Duke, but you already did that, didn't you? I'm glad you could help them. It'd have been terrible if Duke lost his boyfriend forever to these damned nanites. Let me give you a reward for your help.' With that, the anthro anteater starts turning to go into the kitchen and grab another tasty treat for you.";
				say "     [line break]";
				say "     Do you wait patiently for him to get you some food (Y), or would you rather pull him against yourself for a kiss and a more 'personal' reward (N)?";
				if player consents:
					say "     [line break]";
					say "     Calmly waiting for him, you accept a carrying bag of fresh fruit and thank Anthony.";
					increase carried of food by 4;
				otherwise:
					say "     [line break]";
					say "     [AnthonyRewardSex]";
				now hp of Anthony is 5;
		otherwise:
			say "     Clicking his claws together thoughtfully, he finally says 'I'll have to get back to you on that later, not sure what would be right for your skill-set at the moment. Just sending you to milk cows would be a waste of your time...' (further quests remain to be written - please have patience)";
	otherwise if calcnumber is 3: [break off talking]
		say "     You wave Anthony off and excuse yourself.";

instead of fucking the Anthony:
	say "     Anthony looks at you with interest as you make him your amorous offer, then sighs and shakes his head. 'I'd love to take you up on that, but right now isn't such a good time, sorry. With all the things that I have to worry about, sudden emergencies coming up and so on, I... can't just take time off right now. People on the farm count on me and grandfather would spin in his grave if I started fucking around with someone before sorting out the problems we have.'";

instead of going northwest from Central Farm Square while (hp of Anthony is 0 or hp of Anthony is 1 or hp of Anthony is 3 or hp of Anthony is 4 or hp of Anthony is 5):
	move player to Farmhouse Main Room;
	if hp of Anthony is 0: [first meeting, no reward for Wendy yet]
		say "     Entering the farmhouse, you find yourself in a large main room that combines the living and dining area. Sitting on a leather couch in the front part of the room, leaning forward to write on a notebook on the coffee table next to it, you see a lean, humanoid anteater. The young man stands up as he notices you, walking over to you and offering you his clawed hand in greeting. After introducing himself as Anthony McDermott, owner of the farm, he smiles and continues with 'Nice to see that not everyone out there has devolved into horny beasts. You're welcome to stay here with us for a while, if you want, though we can't offer any food or water, I hope you understand.'";
		now hp of Anthony is 2;
	otherwise if hp of Anthony is 1: [he never met the player before]
		say "     Entering the farmhouse, you find yourself in a large main room that combines the living and dining area. Sitting on a leather couch in the front part of the room, leaning forward to write on a notebook on the coffee table next to it, you see a lean, humanoid anteater. The young man stands up as he notices you, walking over to you and offering you his clawed hand in greeting. After introducing himself as Anthony McDermott, owner of the farm, he smiles and continues with 'Nice to see that not everyone out there has devolved into horny beasts. You're welcome to stay here with us for a while, if you want, though we can't offer any food or water, I hope you understand.'";
		say "     [line break]";
		say "     Nodding, you bring up the cow you found and led back to the farm. A visibly relieved Anthony puts his long arms around you, giving you an exuberant hug. Realizing a moment later that you don't really know him and might not like this, he lets you go, giving you a clap in camaraderie on the shoulder instead. 'Thank you, thank you. I had feared she'd just be lost out there, alone, maybe eaten. That's a big worry of my mind. Here, let me give you a reward for your efforts.' With that, the anthro anteater walks over into the kitchen, packing a carrying bag with fresh fruit for you, then handing it over with a smile.";
		increase carried of food by 4;
		now hp of Anthony is 4;
	otherwise if hp of Anthony is 3: [met the player before]
		say "     Entering the main room of the farmhouse, you walk up to Anthony and tell him about the cow you found and led back to the farm. Visibly relieved, he puts his long arms around you, giving you an exuberant hug. Realizing a moment later that you don't really know him all that well and might not like this, he lets you go, giving you a clap in camaraderie on the shoulder instead. 'Thank you, thank you. I had feared she'd just be lost out there, alone, maybe eaten. That's a big worry of my mind. Here, let me give you a reward for your efforts.' With that, the anthro anteater walks over into the kitchen, packing a carrying bag with fresh fruit for you, then handing it over with a smile.";
		increase carried of food by 4;
		now hp of Anthony is 4;
	otherwise if hp of Anthony is 4 and hp of Duke > 9:
		say "     Entering the main room of the farmhouse, you walk up to Anthony and tell him about Shawn's transformation from feral sheep to a more human form. Very happy to hear about that, he gives you a beaming smile and claps you in camaraderie on the shoulder. 'Thank you, thank you. I'm glad you could help them. It'd have been terrible if Duke lost his boyfriend forever to these damned nanites. Let me give you a reward for your help.' With that, the anthro anteater starts turning to go into the kitchen and grab another tasty treat for you.";
		say "     [line break]";
		say "     Do you wait patiently for him to get you some food (Y), or would you rather pull him against yourself for a kiss and a more 'personal' reward (N)?";
		if player consents:
			say "     [line break]";
			say "     Calmly waiting for him, you accept a carrying bag of fresh fruit and thank Anthony.";
			increase carried of food by 4;
		otherwise:
			say "     [line break]";
			say "     [AnthonyRewardSex]";
		now hp of Anthony is 5;
[		
	otherwise if hp of Anthony is 5 and hp of Selena is 1 and SelenaDelivery - turns > 16:
		say "     Entering the main room of the farmhouse, you are greeted by Anthony, who says, 'Hello my friend. Could I maybe ask you for a report about the newest spread of creatures out in the plains? We have to keep informed so we're not hit out of the blue when some new type of creature appears or any group expands their territory into the plains. So if -' His words are interrupted by a high-pitched voice calling out, 'Uncle Anthony! Can I ride one of the horses, today?' A small, spotted catgirl in an oversized t-shirt bounces into the room as she says the last words, which leads over to an 'Eep' as she notices you in the room too. Lightning-quick, the little feline flits to a spot behind Anthony, peeking out from behind him at you.";
		now hp of Anthony is 6;
		if xp of Selena is 1: [player lifted blanket, Selena vaguely remembers player]
			say "     The tawny kitten tilts her head to the side, her eyes wide with wonder. She looks up to him, gently tugging on his kilt as she speaks in a soft voice. 'Uncle Anthony? Who is that?'";
		otherwise if xp of Selena is 0: [player didn't lift blanket, no memories of player]
			say "     She grips his clothes a little tighter, [if facename of player is in infections of CanineList]ducking back behind him with a whimper[otherwise]looking up at him in concern.";
		say "     Anthony looks behind his back, then says in a calming tone, 'Don't worry, kitten. [if player is female]She[otherwise]He[end if]'s a friend. Even saved Wendy from the creatures out in the plains. You got nothing to fear from [if player is female]her[otherwise]him[end if]. Why don't you go and introduce yourself. That's only polite, you know.";
		say "     You do your best to give a friendly smile, and...";
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 19 and score [dice plus bonus]: (Charisma Check)[line break]";
		if dice + bonus >= 19:
			say "     ...she seems to be a little uncomfortable, but the kitten does step out from behind Anthony, walking foward towards you. The girl looks down, playing with the hem of her shirt as she stammers out, 'I-I'm Selena. It... it's nice to meet you, [if player is female]Miss[otherwise]Sir[end if].'";
		otherwise:
			say "     ...but it doesn't seem to be enough. She stays behind Anthony and gives a tiny wave. The little girl says, 'I'm S-Selena,' and ducks back behind her guardian, her tail now the only visible part of her.";
		say "     'There, that wasn't so hard, was it?' Anthony says and tousles Selena's hair affectionately. Then he crouches down beside the young catgirl and continues in a more apologetic tone, 'As for the horses - I'm afraid not, kitten. We've got a... a number of mares now, out in the paddock, but Lucifer won't let anyone really get at them. That mustang is pretty dangerous for anyone to deal with - especially a little girl. But I'm sure Corbin will give you a piggyback ride if you ask him nicely...'";
		say "     [WaitLineBreak]";
		say "     As Selena perks up and tenses to rush off at once, Anthony stops her with an arm around her midriff. 'Wait a minute - did you do your homework, little lady? Everyone needs to know how to read, so playtime is only after you're done for the day.' The spotted kitten looks up at the farmer, pleading with her big olive eyes. 'But Uncle Anthony... I like it when you read to me...' Anthony gives her a smile and strokes the little feline's cheek, then says, 'And I love reading stories for you, kitten. But... I won't be with you all the time everywhere you go, and you will need to understand things for yourself at some point. Now be a good girl and do your reading, okay?'";
		say "     Her ears droop at this, but Selena nods, giving him one last hug before trudging out of the room, briefly glancing at you before she disappears through the doorway. Waiting a few seconds after watching Selena walk out of the room, Anthony calls after her, 'I can see the shadow of your tail on the wall, little lady. Don't eavesdrop, that's not nice. And please go do your homework. Now.' After a little huff that can be heard through the open door, there is only silence. Something tells you she's gone now, but that anthro kitten walks on pretty quiet paws...";
		say "     [WaitLineBreak]";
		say "     Anthony clears his throat, then says, 'Hard to believe she's the kitten that got left at our gate only some short days ago. Growing up in jumps, large and small. Well, that's the new world I guess.' He shrugs and looks back over to the door through which Selena left, a smile playing over his lips. 'She's a sweet girl, and I'm glad to have her. One has to watch out a bit with her though - she can think up the wildest things to do. I'd appreciate it if you could try to rein her in a bit if you see her planning some hijinx on the farm grounds. Ha - a typical feline... let's just make sure that curiosity doesn't lead this kitty astray...'";
		now hp of Selena is 2;
		now libido of Selena is 5;   [neutral start]
]

to say AnthonyRewardSex:
	say "     Quickly stepping forward, you put a hand on Anthony's arm and pull him against you, finding his lips with yours. The sudden kiss startles him at first, but he quickly gets into it and eagerly replies, sliding an arm around you while making out. After some hot and hungry kisses, the giant anteater comes back up for air and pants 'So you want... something else as your reward, I gather?', looking down towards your crotch as he does so. Before you can do anything more than nod, he starts to pull off your clothes, guiding you step by step towards the nearest couch as he does so. Soon, you're completely naked and find yourself softly pushed to sit down and lean back, with Anthony kneeling between your legs. 'Just relax and enjoy' he says in a seductive voice, smiling up at you as he sticks out his long, long tongue and leans forward.";
	say "     [WaitLineBreak]";
	if cocks of player > 0:
		say "     Anthony is very careful as he handles your manhood and balls with his clawed hands, gently rubbing while his tongue plays over your skin in a feathery light touch. He spends some time teasing your balls, wrapping his tongue around one then the other and lightly squeezing them, [if anallevel > 1]even snakes it down between your legs to brush against your back door, [end if]then moves his attention to your soon fully hard cock. It's a strange but very pleasant feeling to have him play his long but thin tongue over your erection, then wrap around it and tug on it in a pretty stimulating fashion. Overwhelmed in the novel sensations of having this anthro anteater jerk you off with his tongue, you moan and lean your head backwards, savouring the pleasure he gives you.";
		say "     After a while of just licking and squeezing your manhood, Anthony moves on to giving you a more regular blowjob and slides his lips over your pole, taking it into his tight and narrow muzzle. It's good that anteaters have no teeth, otherwise you doubt that your cock would even have fit, as tightly as he's got his lips stretched around your shaft. Bobbing up and down in the pretty amazing blowjob he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
		say "     [WaitLineBreak]";
		say "     Arousal quickly mounting higher and higher from Anthony's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to cum rises in your bells. You moan that you're close, which only has the giant anteater speed up more, lips still tightly wrapped around your shaft as you blow your load. He eagerly swallows spurter after spurt of your cum, even milking the very last drops from your soon softening cock, then sits down on the couch next to you and moans 'Hmm, you're tasty' while licking his lips. After leaning in for a kiss, he continues 'I wish I had time to do this more often...'";
	otherwise if cunts of player > 0:
		say "     Anthony is very careful as he caresses your crotch with his clawed hands, gently pulling apart your nether lips while his tongue plays over its folds in a feathery light touch. He spends some time just licking your outermost lips, [if anallevel > 1]even snakes it down between your legs to brush against your back door, [end if]then moves his attention to your clit and inner labia. It's a strange but very pleasant feeling to have him play his long but thin tongue over your privates, then dip into your vagina and explore inside. Overwhelmed in the novel sensations of having this anthro anteater tease and lick the inner walls of your pussy, you moan and lean your head backwards, savouring the pleasure he gives you.";
		say "     After a while of gentle licking and soft poking, Anthony pulls back a bit, then puts his lips to your clitoris and really concentrates on that, nibbling on it and brushing over it with the tip of his tongue. Head against your crotch in the pretty amazing cunnilingus he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
		say "     [WaitLineBreak]";
		say "     Arousal quickly mounting higher and higher from Anthony's oral attention and his gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the giant anteater speed up more, pushing his long tongue even deeper into your vagina than before and finding all new spots to caress and tease. Moments later, you moan loudly, orgasming from the continued stimulation, femcum squirting from your pussy and hitting Anthony right on his long muzzle. He eagerly puts his lips to your sex, catching and swallowing it all after the first splash, then licks his muzzle clean with his long tongue and sits down on the couch next to you. 'Hmm, you're tasty' he moans and leans in for a kiss before continuing 'I wish I had time to do this more often...'";
	otherwise:
		say "     Anthony is very careful as he caresses your crotch with his clawed hands, gently stroking your genderless but still sensitive skin and playing over it in a feathery light touch with his tongue. He spends some time just licking your pubic area, then snakes his tongue down between your legs to brush against your back door and tease it a bit before returning to your crotch. Dealing with your sexless state without any hesitation, he's creative in the ways he tickles, licks and strokes you, giving you a very pleasant feeling. While his head is against your crotch in the pretty amazing oral attention he's giving you, Anthony meanwhile also strokes one of his arms over your chest, rubbing the long and very soft fetlock-hair of his forearms over your skin.";
		say "     [WaitLineBreak]";
		say "     Arousal quickly mounting higher and higher from Anthony's gentle touch, it doesn't take all that much longer until your pants get quicker and the need to come becomes almost unbearable. You moan that you're close, which only has the giant anteater speed up more, and moments later a feeling of bliss floods your body and you shake in orgasm. He continues pleasing you until your climax abates, then sits down on the couch next to you. 'Hmm, you're tasty' he moans and leans in for a kiss before continuing 'I wish I had time to do this more often...'";

Wendy is a woman.  The hp of Wendy is normally 0.
The description of Wendy is "[WendyDesc]".
The conversation of Wendy is { "Moh Moo Moh Mooo Moo - Moh!" }.

instead of sniffing Wendy:
	say "Wendy smells like a cow - so a big, furry animal. With her stall being cleaned as often as it does, that's not a half-bad smell.";

to say WendyDesc:
	say "     Wendy is a cow - but not just any cow. She's had quite a bit of excitement out in the dry plains lately, getting lost and having an... interesting time with a large feral gryphon. As you walk up to her stall, she gives a greeting 'Mooh', seemingly recognizing you. Then she turns, moving her hindquarters in your direction and looking back at you. Might just be your imagination, but it's a bit as if she was presenting herself to you, wanting a little more interspecies attention.";

instead of fucking the Wendy:
	if cocks of player is 0:
		say "     Sadly, you won't get very far with Wendy in your current gender state. She might be horny for another fuck by an exotic partner, but just isn't intelligent enough to take an active role and do anything but get fucked by someone's cock.";
	otherwise:
		if scalevalue of player < 3:
			say "     Looking to have some sexy time with Wendy, you look around a bit for something to solve the problem that you're just so much smaller than her. Finally, you push a hay-bale over into her stall, then climb on it. Speaking in calming tones to the cow, you stroke her fur for a moment so she gets used to your touch, then gently lift her tail and look at her pussy. It's pretty large in human terms, as expected from a bigger creature, and it seems like she's ready and waiting for you to fuck her - seeing that she's pretty wet already. You pull out your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. Wendy's pussy is surprisingly tight, as she instinctively grips your member with her inner muscles. You pound into her with eager thrusts, filling the barn with lustful moans and moo's. Fucking the docile bovine without holding back for a second, it doesn't take all that long until you blast your cum deep into her body.";
			say "     Satisfied, you pull out, then climb down from the hay-bale and get your clothes back in order. You're just carrying the bale out of Wendy's stall when [one of]a horseman farmhand comes into the barn and notices what you're doing. His eyes go from the hay-bale to you, then to Wendy, still with her backside turned to the stall entrance, leaking white cum from her freshly fucked pussy. A knowing smile spreading over his face, the man gives you a wink, then takes another cow to be milked.[or]you hear a creak from above. Looking up, you don't see anyone at the edge of the hayloft, but there might have been someone up there the whole time, watching you fuck the cow...[at random]";
		otherwise if scalevalue of player is 3:
			say "     Looking to have some sexy time with Wendy, you look around a bit for something to solve the problem that you're somewhat smaller than her. Finally, you grab a part of a cut-up wooden beam and lay it on the ground in her stall, stepping up on it. Perfect, now you're in the right height. Speaking in calming tones to the cow, you stroke her fur for a moment so she gets used to your touch, then gently lift her tail and look at her pussy. It's pretty large in human terms, as expected from a bigger creature, and it seems like she's ready and waiting for you to fuck her - seeing that she's pretty wet already. You pull out your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. Wendy's pussy is surprisingly tight, as she instinctively grips your member with her inner muscles. You pound into her with eager thrusts, filling the barn with lustful moans and moo's. Fucking the docile bovine without holding back for a second, it doesn't take all that long until you blast your cum deep into her body.";
			say "     Satisfied, you pull out, then step off your piece of wood and get your clothes back in order. You're just carrying the short beam out of Wendy's stall when [one of]a horseman farmhand comes into the barn and notices what you're doing. His eyes go from the piece of wood to you, then to Wendy, still with her backside turned to the stall entrance, leaking white cum from her freshly fucked pussy. A knowing smile spreading over his face, the man gives you a wink, then takes another cow to be milked.[or]you hear a creak from above. Looking up, you don't see anyone at the edge of the hayloft, but there might have been someone up there the whole time, watching you fuck the cow...[at random]";
		otherwise:
			say "     Looking to have some sexy time with Wendy, you walk up to her backside. Speaking in calming tones to the cow, you stroke her fur for a moment so she gets used to your touch, then gently lift her tail and look at her pussy. It's pretty large in human terms, as expected from a bigger creature, and it seems like she's ready and waiting for you to fuck her - seeing that she's pretty wet already. You pull out your hard cock and rub it up and down over her sex, then aim it right at her opening and push forward, spreading her slick passage with your manhood. Wendy's pussy is surprisingly tight, as she instinctively grips your member with her inner muscles. You pound into her with eager thrusts, filling the barn with lustful moans and moo's. Fucking the docile bovine without holding back for a second, it doesn't take all that long until you blast your cum deep into her body.";
			say "     Satisfied, you pull out, then step back from Wendy and get your clothes back in order. You're just exiting her stall when [one of]a horseman farmhand comes into the barn and notices what you're doing. His eyes go from you to Wendy, still with her backside turned to the stall entrance, leaking white cum from her freshly fucked pussy. A knowing smile spreading over his face, the man gives you a wink, then takes another cow to be milked.[or]you hear a creak from above. Looking up, you don't see anyone at the edge of the hayloft, but there might have been someone up there the whole time, watching you fuck the cow...[at random]";

[ hp states of Duke                                                     ]
[   0: starting state                                                   ]
[   1: player saw him getting fucked by Shawn                           ]
[   2: he asked the player to bring in some wool                        ]
[   3: sheep-player refused to transform Shawn                          ]
[  10: player helped transform Shawn                                    ]
[  11: player had sex with Duke                                         ]

[ thirst states of Duke (location)                                      ]
[   0: not met                                                          ]
[   1: Sheep Meadow SW                                                  ]
[   2: Sheep Meadow SE                                                  ]

Duke is a man. The hp of Duke is normally 0.
The description of Duke is "[DukeDesc]".
The conversation of Duke is { "Mew!" }.

instead of sniffing Duke:
	say "Duke has a pleasant animalistic smell, just like a male dog. Though there seems to be an undertone of of sheep-musk there too.";

to say DukeDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Duke], THIRST: [thirst of Duke] <- DEBUG[line break]";
	if daytimer is day:
		say "     Standing before you is an anthro German shepherd, standing tall on two digitigrade legs and keeping the spread-out sheep in his attentive gaze at all times. As his view crosses your position, he gives you a slight nod, then continues with his vigilance.";
		say "     The dog-morph has a fit, muscular body sporting the traditional brown and tan fur coat of his breed. Seeing as he's not wearing anything except a black dog-collar with a medallion bearing the name 'Duke', it is quite clear that he's male, with a furry canine sheath resting against is belly and a pair of golf ball size balls dangling beneath.";
	otherwise:
		say "     Standing before you is an anthro German shepherd, standing tall on two digitigrade legs. With the sheep now gathered in a compact group, it looks like he's relaxing a bit, only scanning over them from time to time. Most of his attention rests on one young ram that stands on the nearest side of the flock, though he gives you a short nod as you approach.";
		say "     The dog-morph has a fit, muscular body sporting the traditional brown and tan fur coat of his breed. Seeing as he's not wearing anything except a black dog-collar with a medallion bearing the name 'Duke', it is quite clear that he's male, with a furry canine sheath resting against is belly and a pair of golf ball size balls dangling beneath.";

instead of conversing the Duke:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Duke says [one of]'I take my duty protect the herd seriously, not now'[or]'I have to stay vigilant so the herd is safe, please don't distract me'[or]'I don't have time to chat now'[or]'Look for me this evening, if you want to talk'[at random], not even taking his eyes off the sheep and ignoring any attempt to start a conversation.";
	otherwise: [at night, he's got some time to chat]
		if hp of Duke is 0:
			say "     Note: Hm, you shouldn't be able to talk to him before watching his event with Shawn the ram - please report how you got to see this.";
		otherwise if hp of Duke is 1:
			if (bodyname of player is "ram" or bodyname of player is "ewe") and player is pure: [with a player in sheep form, this gets pretty easy]
				say "     As you walk up to Duke, he looks you up and down with a happy, almost ecstatic expression, his tail wagging excitedly. 'I haven't seen you around here before, so you came in from elsewhere in the city? And you're a sheep-person!' He turns his head to look at his 'special' ram friend, then back to you. 'I was hoping that there might be... sheep-people out there somewhere - and now you just walk into our farm and come to talk to me.'";
				say "     Duke takes a deep breath, then says 'You see - my boyfriend and I started working here a while ago as shepherds, and... then everything went crazy with that nanite infection and I turned into an actual German shepherd. At least still more or less humanoid...' He looks down over his naked body and stretches his arms a bit, then points at the young ram you saw him with before. 'Shawn on the other hand, he went all the way to being a sheep. He can't even talk, and barely recognizes me. I don't know if there's much left of him inside, he acts pretty much like any other ram.'";
				say "     He sniffs a bit, then continues 'I tried to... infect him with being a German shepherd, but it doesn't work. Nothing someone here on the farm has worked so far. I think having a similar infection might be the only way to make him a person again - a sheep-person, like you' Duke gives you a pleading look and a wag of his tail 'Could you maybe... rub your fur against his or something? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.'";
				say "     [line break]";
				say "     Well, that's a task for once that doesn't seem hard at all. Do you want to help Duke out and try to transform the ram yourself?";
				if player consents:
					say "     As you agree, Duke quickly goes to get Shawn, leading the young ram over to you. Kneeling down besides him, you wrap your arms around his furred body, giving him a hug and rubbing your own fur against him. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
					say "     [WaitLineBreak]";
					say "     [DukeShawnFirstTimeSex]";
				otherwise:
					say "     You tell Duke that you'd rather... not do that. The German shepherd's smile falls and he looks rather dejected as he replies 'Oh, then... I guess it's back to hoping for someone else to come along.' He turns from you, walking over to Shawn and kneeling next to him, stroking the sheep's fur. You can hear him talking to his friend, saying 'At least we're now sure that there is a sheep strain out there. We'll get it for you, eventually. And then it'll work - it must work!'";
			otherwise: [player isn't a sheep himself]
				say "     As you walk up to Duke, he turns to you with a hopeful expression. 'I haven't seen you around here before, so you came in from elsewhere in the city? Are you planning on... going back there again?' He turns his head to look at his 'special' ram friend, then back to you. 'I was wondering if there might be... sheep-people out there somewhere.'";
				say "     Duke takes a deep breath, then says 'You see - my boyfriend and I started working here a while ago as shepherds, and... then everything went crazy with that nanite infection and I turned into an actual German shepherd. At least still more or less humanoid...' He looks down over his naked body and stretches his arms a bit, then points at the young ram you saw him with before. 'Shawn on the other hand, he went all the way to being a sheep. He can't even talk, and barely recognizes me. I don't know if there's much left of him inside, he acts pretty much like any other ram.'";
				say "     Duke gives you a hopeful smile and a wag of his tail 'I can't just leave my duties here, so... if you do find someone with a sheep infection, could you bring back something they touched, or maybe some tufts of fur? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.' (clarification: you need to bring him [bold type]3 tufts of tainted wool[roman type])";
				if carried of Tainted wool > 2:
					say "     [line break]";
					say "     Remembering that you - by an amazing coincidence - already have several tufts of sheep fur in your pack, do you offer them to Duke?";
					if player consents:
						say "     Duke's tail wags exuberantly as you show him the wool and the shepherd gives you a beaming smile. 'Thank you. Thank you - it really must be fate that you already have that and just now came to us. Wait, I'll get Shawn...' With that, Duke quickly jogs over to the sheep and leads the young ram over to you. Kneeling down besides him, you take out the small bundles of wool, holding them up for Shawn to smell, then rub them over his sheep face and the rest of his body. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
						say "     [WaitLineBreak]";
						decrease carried of Tainted wool by 3;
						say "     [DukeShawnFirstTimeSex]";
					otherwise:
						say "     For now keeping quiet about the wool you have, you assure Duke you'll have an eye out and walk away from him a bit.";
						now hp of Duke is 2;
				otherwise:
					say "     [line break]";
					say "     You assure Duke you'll have an eye out for sheep in the city and walk away from him a bit.";
					now hp of Duke is 2;
		otherwise if hp of Duke is 2:
			if (bodyname of player is "Ram" or bodyname of player is "Ewe") and player is pure: [with a player in sheep form, this gets pretty easy]
				say "     As you walk up to Duke, he looks you up and down with a happy, almost ecstatic expression, his tail wagging excitedly. 'I ask you to get some wool, and you go all the way and come back as a sheep-person. Thank you - you're amazing!' He turns his head to look at his ram boyfriend, then back to you. 'Could you maybe... rub your fur against his or something? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.'";
				say "     [line break]";
				say "     Well, that's a task for once that doesn't seem hard at all. Do you want to help Duke out and try to transform the ram yourself?";
				if player consents:
					say "     As you agree, Duke quickly goes to get Shawn, leading the young ram over to you. Kneeling down besides him, you wrap your arms around his furred body, giving him a hug and rubbing your own fur against him. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
					say "     [WaitLineBreak]";
					say "     [DukeShawnFirstTimeSex]";
				otherwise:
					say "     You tell Duke that you'd rather... not do that. The German shepherd's smile falls and he looks rather dejected as he replies 'Oh, then... I guess it's back to hoping for someone else to come along.' He turns from you, walking over to Shawn and kneeling next to him, stroking the sheep's fur. You can hear him talking to his friend, saying 'At least we're now sure that there is a sheep strain out there. We'll get it for you, eventually. And then it'll work - it must work!'";
					now hp of Duke is 3;
			otherwise: [player isn't a sheep himself]
				say "     As you walk up to Duke, he gives you a hopeful expression. 'Have you found the sheep-people and got something from them? Maybe some wool?";
				if carried of Tainted wool > 2:
					say "     [line break]";
					say "     Remembering that you have several tufts of sheep fur in your pack, do you offer them to Duke?";
					if player consents:
						say "     Duke's tail wags exuberantly as you show him the wool and the shepherd gives you a beaming smile. 'Thank you. Thank you - you're a really nice person to help us out with this. Wait, I'll get Shawn...' With that, Duke quickly jogs over to the sheep and leads the young ram over to you. Kneeling down besides him, you take out the small bundles of wool, holding them up for Shawn to smell, then rub them over his sheep face and the rest of his body. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
						say "     [WaitLineBreak]";
						decrease carried of Tainted wool by 3;
						say "     [DukeShawnFirstTimeSex]";
					otherwise:
						say "     For now keeping quiet about the wool you have, you assure Duke you'll have an eye out and walk away from him a bit.";
						now hp of Duke is 2;
				otherwise:
					say "     [line break]";
					say "     Shaking your head to show that you don't have what he needs, you see Duke's raised tail droop a bit, then partly perk up again as you assure him you'll have an eye out for sheep in the city.";
					now hp of Duke is 2;
		otherwise if hp of Duke is 3:
			if (bodyname of player is "Ram" or bodyname of player is "Ewe") and player is pure: [with a player in sheep form, this gets pretty easy]
				say "     As you walk up to Duke, he gives you a hopeful but still somewhat guarded look, then says 'Have you changed your mind? Please let it be so. You could just... rub your fur against his or something? I'd be incredibly thankful -' *glancing at Shawn the ram, he adds* 'we both would be.'";
				say "     [line break]";
				say "     Well, that's a task for once that doesn't seem hard at all. Do you want to help Duke out and try to transform the ram yourself?";
				if player consents:
					say "     As you agree, Duke quickly goes to get Shawn, leading the young ram over to you. Kneeling down besides him, you wrap your arms around his furred body, giving him a hug and rubbing your own fur against him. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
					say "     [WaitLineBreak]";
					say "     [DukeShawnFirstTimeSex]";
				otherwise:
					say "     You tell Duke that you'd rather... not do that. The German shepherd's smile falls and he looks rather dejected as he replies 'Oh, then... I guess it's back to hoping for someone else to come along.' He turns from you, walking over to Shawn and kneeling next to him, stroking the sheep's fur. You can hear him talking to his friend, saying 'At least we're now sure that there is a sheep strain out there. We'll get it for you, eventually. And then it'll work - it must work!'";
					now hp of Duke is 3;
			otherwise: [player isn't a sheep himself]
				say "     As you walk up to Duke, he gives you a hopeful expression. 'Have you found the sheep-people and got something from them? Maybe some wool?";
				if carried of Tainted wool > 2:
					say "     [line break]";
					say "     Remembering that you have several tufts of sheep fur in your pack, do you offer them to Duke?";
					if player consents:
						say "     Duke's tail wags exuberantly as you show him the wool and the shepherd gives you a beaming smile. 'Thank you. Thank you - you're a really nice person to help us out with this. Wait, I'll get Shawn...' With that, Duke quickly jogs over to the sheep and leads the young ram over to you. Kneeling down besides him, you take out the small bundles of wool, holding them up for Shawn to smell, then rub them over his sheep face and the rest of his body. At first, there isn't any noticeable change, then suddenly Shawn gives a rather surprised 'Meeeh' as his body starts shifting and he loses his balance, falling to the ground. Accompanied by disconcerting crackles and pops, his body quickly turns more humanoid, some moments later stabilizing in an anthro sheep's form.";
						say "     [WaitLineBreak]";
						decrease carried of Tainted wool by 3;
						say "     [DukeShawnFirstTimeSex]";
					otherwise:
						say "     For now keeping quiet about the wool you have, you assure Duke you'll have an eye out and walk away from him a bit.";
						now hp of Duke is 2;
				otherwise:
					say "     [line break]";
					say "     Shaking your head to show that you don't have what he needs, you see Duke's raised tail droop a bit, then partly perk up again as you assure him you'll have an eye out for sheep in the city.";
					now hp of Duke is 2;
		otherwise if hp of Duke is 10 or hp of Duke is 11:
			say "     Duke gives you a happy smile as you approach, saying 'I can't thank you enough. What you've done for me and Shawn is just amazing.'";

to say DukeShawnFirstTimeSex:
	say "     Wincing, holding his horned head, Shawn rises from the ground on unsteady digitigrade legs. 'Man, I had the weirdest dream...' he says, then adds 'Wait - what's this?' as he looks at his hand, arm, then down his body. Nonplussed at his furred, anthro ram body, he looks to you, then is almost bowled over as Duke rushes in and gives him an exuberant embrace. The shepherd hugs his ram friend tight, saying 'It's me, Duke - so good to have you finally back. I've missed you terribly.'";
	say "     There is a moment of silence as the two of them just look into each other's eyes, then suddenly, they kiss and start making out with each other. Basically forgetting the world around them, Duke and Shawn just keep going at it, hands exploring each other's body while they're busy tongue-wrestling or Duke licks Shawn's face. It doesn't take long until the anthro canine sinks to the floor, still embracing Shawn and pulling him down with him to lie together in the green grass. Their make-out-session continues some more with Shawn now lying on top of Duke - until there is a moaned 'Fuck me' audible from Duke between their kisses.";
	say "     [line break]";
	say "     Do you want to watch them go at it (Y), or would you rather give em some privacy (N)?";
	if player consents:
		say "     [line break]";
		say "     Giving his canine lover a last loud smooch, Shawn moves back a little bit, coming to kneel between Duke's legs and looking down on him. A smile on the ram's face, he takes hold of his hard cock and rubs it against the German shepherd's knotted shaft, then takes both of them in one hand and strokes them together. Next, he moves his hands to Duke's legs, rubbing the insides of his thighs and lifting the legs up into the air. Duke readily helps him out with that, taking over holding his own legs in that position, his tail beating against the ground in the dog-morph's eagerness for what will come next.";
		say "     With Duke's hips raised a bit and his legs spread, he's in a perfect position for Shawn, who quickly aims his hard cock then pushes its tip against the German shepherd's pucker, easily stretching it around his shaft as he did so many times before when they were animals. Still, now with both of them in anthro shape, it's kind of their first time, so Shawn takes it slow, sinking his manhood into the dog bit by bit and taking breaks for him to get used to it. When he finally is all the way inside, Shawn leans forward, with Duke meeting his lips for a kiss. Then the ram takes up thrusting into his partner, quickly getting faster and harder as his libido runs high.";
		say "     [WaitLineBreak]";
		say "     The two of them going at it is quite a show. They're like - well... a bit like animals, though with lots of caresses and kisses between the loving partners thrown in. Standing where you are, watching them, you suddenly notice movement to your sides - it's several sheep, who've moved over to have a look too. One of them gives you a meaning-laden 'Meeeh', then looks back at Duke and Shawn.";
		say "     Observed by a growing flock of spectators, still oblivious to anything except each other, the dissimilar partners eventually reach an breathtaking and quite noisy orgasm. There is a shout of 'I'm coming!' by Shawn, right at the same time as Duke gasps and his knotted cock starts shooting long spurts of the dog's seed all over his chestfur.";
	otherwise:
		say "     [line break]";
		say "     Silently moving back a bit from the two men, you turn to leave, but are stopped from actually walking away by quite a few sheep encircling the scene now. One of them gives you a meaning-laden 'Meeeh', then returns its attention to Duke and Shawn. Observed by a growing flock of spectators, still oblivious to anything except each other, the dissimilar partners eventually reach an breathtaking and quite noisy orgasm. There is a shout of 'I'm coming!' by Shawn, right at the same time as Duke gasps in lust himself.";
	say "     [WaitLineBreak]";
	say "     As they come down from their respective climaxes, lying in the grass and holding one another, Shawn finally looks up and sees all the sheep standing in a circle around them. 'Did you like the show, guys and gals? Sadly, it's over for now... and I'm not letting go of this doggie until we're done cuddling. Just go back to the group-hug and get some sleep, ok?' Almost seems like the gathered sheep understood what he said, as they give a chorus of 'Meeh', then trot back over to where the rest of their herd are. The crowd around you now having vanished, you're left standing alone before the exhausted ram and German shepherd.";
	say "     Seeing you there, Duke says 'Oh, err - sorry for just leaving you to wait while we... got distracted'. He continues to tell Shawn all about your part in getting him transformed, both of them thanking you effusively afterwards.";
	now lastfuck of Duke is turns;
	move Shawn to Sheep Meadow SE;
	now hp of Duke is 10;

An everyturn rule:
	if daytimer is night and thirst of Duke is 1:
		move Duke to Sheep Meadow SE;
		now thirst of Duke is 2;
	otherwise if daytimer is day and thirst of Duke is 2:
		move Duke to Sheep Meadow SW;
		now thirst of Duke is 1;

instead of going east from Sheep Meadow SW while (hp of Duke is 0 and daytimer is night):
	move player to Sheep Meadow SE;
	say "     [DukeShawnSheepScene]";
	now lastfuck of Duke is turns;

instead of going southeast from Sheep Meadow NW while (hp of Duke is 0 and daytimer is night):
	move player to Sheep Meadow SE;
	say "     [DukeShawnSheepScene]";
	now lastfuck of Duke is turns;

instead of going south from Sheep Meadow NE while (hp of Duke is 0 and daytimer is night):
	move player to Sheep Meadow SE;
	say "     [DukeShawnSheepScene]";
	now lastfuck of Duke is turns;

to say DukeShawnSheepScene:
	say "     Walking towards where the herd of sheep has gathered during the night, you see the German shepherd watching over them on the other side of the flock, then suddenly disappear from sight. He must have crouched down or something. Curious, you make your way around the large gathering of sheep until you see the dog-morph again, kneeling next to a young ram and stroking his fur. Unobtrusively moving closer, you overhear him talking to the ram:[line break]";
	say "     'I really hope you're still in there, Shawn. This must all be difficult to understand, but inside this furry body, I'm me - Duke. And I still love you.' He gently pulls the sheep's muzzle to the side, giving him a kiss on the nose, making the ram give a somewhat confused 'Meeh?' Duke sighs, and you can only barely make out the quiet 'If only you'd just changed like I did... not went all the way to being an animal. I don't even know if you even understand a word I'm saying...'";
	say "     [WaitLineBreak]";
	say "     Giving another sigh, he continues 'I miss you. Talking to you, being with you...', his hand meanwhile wandering lower and touching the ram's crotch. Stroking his transformed boyfriend, it doesn't take long till he's got his ram hard and ready to go. Then the German shepherd takes a new position on all fours, ass raised high. Lust is clearly audible in the eager 'Meeeh!' given by the ram as he proceeds to mount the dog without much ceremony, just rearing up to get on top of him and plunging in his erect shaft. Duke takes it easily, this clearly not being his first time in getting fucked, and from the way he rocks back against the young ram to meet his thrusts, not just his fifth or tenth time either. He moans as the ram pounds his ass, gasping 'Fuck me! Yeah - harder!'";
	say "     With the sheep on top of Duke just rutting away, not remotely intelligent enough to think about giving his partner some additional pleasure or even simply talk, it doesn't take too much longer until he suddenly bleeks and fills the dog's ass with a load of his cum. Quickly dismounting him after that, the ram stands besides Duke as he jerks himself off, soon afterwards spraying his own load into the grass. Panting, the dog-morph puts his arms around his ram friend, holding and stroking his fur as he rides out is orgasm.";
	now lastfuck of Duke is turns;
	now hp of Duke is 1;

instead of fucking the Duke:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Duke says [one of]'I take my duty protect the herd seriously, not now'[or]'I have to stay vigilant so the herd is safe, please don't distract me'[or]'I don't have time to chat now, sorry'[or]'Look for me this evening if you want to talk, ok?'[at random], not even taking his eyes off the sheep and ignoring any attempt to start a conversation.";
	otherwise:
		if hp of Duke < 10:
			say "     As you make Duke your offer of some nice time together, he looks over to you and shakes his head. 'I'm flattered, but... no. I hardly know you, after all...'";
		otherwise if hp of Duke is 10:
			say "     As you make Duke your offer of some nice time together, he looks over to you and gives a smile. 'Of course I'm interested. I'd do almost anything for you. Though as you've... seen before, I'm gay, and a bottom at that. Pussy just doesn't do anything for me, so you'll have to excuse me if you wanted me to fuck you or anyone anyone...'";
			wait for any key;
			say "[DukeSexMenu]";
			now lastfuck of Duke is turns;
		otherwise:
			if daytimer is day:
				say "     As you make Duke your offer of some interesting time together, he looks over to you and gives a slight shake of his head. 'Got to watch the herd.'";
			otherwise:
				if lastfuck of Duke - turns < 6:
					say "     As you approach Duke and ask him for some sexy time, he shakes his head 'Not now, I'm exhausted.'";
				otherwise:
					say "     You walk over to Duke and ask him if he'd like to have some fun with you. Giving your body an appreciative look, the anthro dog smiles and steps closer to you, his tail wagging excitedly.";
					wait for any key;
					say "[DukeSexMenu]";
					now lastfuck of Duke is turns;

to say DukeSexMenu:
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your shepherd friend's mouth to good use.";
		now toggle entry is DukeSex rule;
	if (hp of Duke > 1):
		choose a blank row in table of fucking options;
		now title entry is "Give Duke a blowjob";
		now sortorder entry is 3;
		now description entry is "Blow off the German shepherd.";
		now toggle entry is DukeSex rule;
	if (hp of Duke > 1):
		choose a blank row in table of fucking options;
		now title entry is "Finger his ass";
		now sortorder entry is 4;
		now description entry is "Finger-fuck Duke and jerk him off at the same time.";
		now toggle entry is DukeSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Duke's ass";
		now sortorder entry is 6;
		now description entry is "Fill the German shepherd's ass with your cock.";
		now toggle entry is DukeSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your ass";
		now sortorder entry is 7;
		now description entry is "Take his canine shaft in the back door and be knotted by him.";
		now toggle entry is DukeSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the DukeSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have him blow your cock"):
			say "[DukeSex1]";
		otherwise if (nam is "Give Duke a blowjob"):
			say "[DukeSex2]";
		otherwise if (nam is "Finger his ass"):
			say "[DukeSex3]";
		otherwise if (nam is "Take Duke's ass"):
			say "[DukeSex4]";
		otherwise if (nam is "Let him fuck your ass"):
			say "[DukeSex5]";
		wait for any key;

to say DukeSex1: [cock sucked by Duke]
	say "     Rubbing your crotch, you tell Duke how much you'd appreciate some attention from him, pulling out your already half-hard shaft in an obvious invitation. With a smiling face, the German shepherd sinks to his knees and starts licking your manhood and balls, showing good skill in the use of his long and flexible tongue. Taking your shaft into his muzzle, carefully using his lips and tongue to hold it away from his teeth, Duke bobs up and down, sending shivers of pleasure up your spine. Meanwhile, he moves a hand up to tease and caress your balls, fondling them softly between his fingers.";
	say "     Running your hands over the German shepherd's head, you feel Duke's soft fur, then rub him behind his pointy ears. Finally you just hold on to him as he keeps giving you an amazing blowjob, giving yourself over to his skillful stimulation. It doesn't take much longer until you feel the urgent need to cum rise in your balls, the first spurt already blasting into Duke's mouth before you can say anything or warn him. He just takes it in stride and continues what he's doing, eagerly swallowing your seed. As he pulls off your cock after you stop cumming, the dog-morph gives it another slow lick along its side and smiles up at you. 'Your cum is pretty tasty, just so you know.' he adds, giving you a wink as he stands up.";
	if hp of Duke is 10:
		now hp of Duke is 11;

to say DukeSex2: [Blowjob for Duke]
	say "     Stepping up to Duke, you put your hand on his crotch, rubbing his balls and canine cock as it fills out and comes out of its sheath. He moans as you grasp the shaft, tongue hanging out of his mouth and tail wagging excitedly. Then you kneel, bringing your head to about the same level as his crotch. Holding the aroused canine's shaft up with one hand, you grab his balls with the other, squeezing them lightly as you fondle them with your fingers. You look up at Duke with a smile, then put your tongue to the underside of his penis, running it up along the shaft until you reach the tip and slide your lips over it.";
	say "     Duke moans as you go down on him, running his hands over your head as you take all of his cock in, deep-throating the horny German shepherd. 'Man, this feels great - your mouth on my dick' he pants, then starts to pull back a bit before thrusting back in, taking up a nice rhythm of face-fucking you. With him taking over on the front side, you decide to put some of your attention on another of the morphed dog's sensitive areas, sneaking your arm between his legs and reaching up to goose a firm, furry asscheek. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker.";
	say "     [WaitLineBreak]";
	say "     The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, just holding your head tight against his crotch until he gets himself back under control, then letting you go to catch a breath a moment later. 'I love having my ass played with' he tells you happily, then pulls your head to his cock again, pumping it in and out of your mouth with a fervor that foreshadows his upcoming orgasm. With you adding another finger and pushing them in deep to rub Duke's sensitive insides, it's pretty easy to drive his arousal to the roof, and it makes you smile how he yips loudly each time you brush over his prostrate.";
	say "     With Duke speeding up his face-fucking and you having two, then three, fingers knuckle-deep in his ass, it's not much longer until the muscular anthro dog calls out 'I'm... gonnna... cummmMMM!', grunting as his knotted shaft starts spurting sperm into your mouth and down your throat. His asshole twitches around your fingers with each blast of seed that splashes onto your tongue and that you immediately swallow.";
	say "     [WaitLineBreak]";
	say "     After he finishes coming and pulls out, Duke strokes your head and gives your shoulder a squeeze. 'Thanks a lot, you were awesome. A really great friend to have.'";
	if hp of Duke is 10:
		now hp of Duke is 11;

to say DukeSex3: [Duke's ass fingered]
	say "     Stepping up behind Duke, you slide your hand down his back, running through the soft fur until you arrive at a firm asscheek and give it a good squeeze. He gives a quick yip as you do it, moaning as you continue to grope his ass, tongue hanging out of his mouth and tail wagging excitedly. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker. The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, his knotted cock starting to push out of his shaft in arousal. 'I love having my ass played with' he tells you happily, leaning back to get a bit more of your finger in and rubbing his soft-furred and muscular back against yourself.";
	say "     [WaitLineBreak]";
	say "     With you adding another finger and pushing them in deep to rub Duke's sensitive insides, it's pretty easy to drive his arousal to the roof, and it makes you smile how he yips loudly each time you brush over his prostrate. Looking over his shoulder, you see that he's by now fully hard, his canine shaft standing at full attention and with a shining bead of pre-cum at its tip. Time to help him out with that too - you snake an arm around his hip, then grasp your furry friend's hard cock, jerking it in rhythm with your fingers thrusting in and out of his back door.";
	say "     Getting jerked off at the same time as having two, then three, fingers knuckle-deep in his ass, it's not much longer until the muscular anthro dog calls out 'I'm... gonnna... cummmMMM!', grunting as his knotted shaft starts spurting arcs of sperm in the air. His asshole twitches around your fingers with each blast of seed that splashes down onto the grass.";
	say "     [WaitLineBreak]";
	say "     After he finishes coming and you pull your fingers out, Duke turns around and gives your shoulder a squeeze. 'Thanks a lot, you were awesome. A really great friend to have.'";
	if hp of Duke is 10:
		now hp of Duke is 11;

to say DukeSex4: [Duke fucked in the ass]
	say "     Stepping up behind Duke, you slide your hand down his back, running through the soft fur until you arrive at a firm asscheek and give it a good squeeze. He gives a quick yip as you do it, moaning as you continue to grope his ass, tongue hanging out of his mouth and tail wagging excitedly. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker. The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, his knotted cock starting to push out of his shaft in arousal. 'I love having my ass played with' he tells you happily, leaning back to get a bit more of your finger in and rubbing his soft-furred and muscular back against yourself.";
	say "     [WaitLineBreak]";
	say "     Putting your arms around Duke from behind, you feel his muscular chest, while at the same time grinding your hips against his ass, letting him feel your hard cock. The dog-morph is like putty in your hands, content in your embrace and moaning as he pushes his ass back against your crotch. After letting go of him for a second and a really quick strip on your part, you move into place behind him again, pulling him against your naked form and feeling the soft fur of his back against your chest. Your hard cock pokes his butt, sliding up and down between his firm buns as Duke pushes himself back against you, rotating his hips a bit.";
	say "     Panting, the German shepherd turns his head and says over his shoulder 'Put it in please. Fuck me, I need it.' Grinning at having this muscular bottom boy for your pleasure, you reach down to take hold of your shaft, setting its tip at the canine's waiting pucker and thrust in, burying your manhood in him in one deep thrust. Duke's clearly used to taking hard cocks without complaint, only giving a loud satisfied moan as your hips meet his ass with an audible slap. His back passage stretches easily to allow your member in, then tightens around you, proving his skillful muscle control.";
	say "     [WaitLineBreak]";
	say "     After just resting like that for a moment, revelling in holding the athletic shepherd and being balls-deep inside him, you start thrusting in and out, fucking him with slow and sure strokes. Following his pants of 'Harder! Faster!', you quickly speed up until you're really pounding his ass, giving it to him like he is used to from getting mounted by a horny ram. He really is an amazing bottom - easy to penetrate but still tight and gripping when he flexes his muscles, almost jerking you off inside of his ass. And pretty vocal too, yipping in pleasure each time you hit his prostrate.";
	say "     Soon, the wild ride you're giving him pushes Duke over the edge and he orgasms, his sphincter gripping your cock like a vise as his knotted shaft starts spurting arcs of cum in the air. With Duke's hot hole tight around your cock and creating breathtaking sensations as you fuck him through his climax, you soon feel a familiar tingle rise in your balls. Plunging in one last time, you grind your hips against his furry ass and hold on tight as you come, shooting burst after burst of cum deep into his asshole.";
	say "     [WaitLineBreak]";
	say "     Holding the German shepherd until your orgasm ebbs out and the last spurt of cum is shot inside him, you pull out after a while, feeling his pucker pull tight the moment you leave his body, not letting one drop of your load escape. Duke turns around and gives your shoulder a squeeze, then leans in to lick your face. 'Thanks a lot, you were awesome. A really great friend to have.'";
	if hp of Duke is 10:
		now hp of Duke is 11;

to say DukeSex5: [Player fucked in the ass]
	setmonster "German Shepherd";
	choose row monster from the table of random critters;
	say "     Stepping up behind Duke, you slide your hand down his back, running through the soft fur until you arrive at a firm asscheek and give it a good squeeze. He gives a quick yip as you do it, moaning as you continue to grope his ass, tongue hanging out of his mouth and tail wagging excitedly. Then you move your hand to his crack, rubbing your fingers between his buns and finding his pucker. The German shepherd gives a lust-filled gasp as you push a probing digit into his back-door, his knotted cock starting to push out of his shaft in arousal. 'I love having my ass played with' he tells you happily, leaning back to get a bit more of your finger in and rubbing his soft-furred and muscular back against yourself.";
	say "     [WaitLineBreak]";
	say "     Putting your arms around Duke from behind, you feel his muscular chest, then whisper in his ear that he's not the only one who likes hard dick in his ass, reaching down to grab his erect canine manhood. Inviting him to be the top for a change, you walk around Duke, stripping your clothes off on the move to stop on your hands and knees in the grass in front of the German shepherd. Looking back at him, wiggling your naked ass invitingly, you tell him to mount you. Duke is a bit hesitant at first, always having been the bottom in his pairing with Shawn, then his natural (though nanite-enhanced) urges take over, making him follow the guiding arrow of his erect penis.";
	say "     The anthro dog kneels behind you, his hands cupping your buttcheeks, then kneading them. The next thing you feel is your canine friend's tongue, lapping up and down your crack to give you a pleasant tingly feeling. Wet nose pressed against your skin, he pushes his tongue against your hole teasingly, then wiggles its tip in as you relax your muscle. Duke happily eats you out and gets you nice and wet - giving you a very nice feeling as he does so, then you remind him that he's supposed to fuck you. 'Oh, yes - of course' he answers in a still rather submissive tone, then lifts his upper body and moves forwards till his hard cock pokes you in the butt.";
	say "     [WaitLineBreak]";
	say "     Brushing his erect canine cock against a willing partner's body seems almost to break a little dam in Duke's mind, and with a low lusty growl, he takes hold of his shaft and sets it right against your quivering pucker. Driven by animalistic instinct, he thrusts deep in your thankfully wet and well-lubed hole till the meaty bulge of his knots rests against its outside, then grips your hips with both hands and starts to really pound your ass with rapid thrusts. It feels amazing to have the well-hung canine fuck you, hitting just the right spots to have you moan in lust and grip the grass tightly. As his arousal mounts higher and higher, Duke eventually just keeps pushing against your hole when he's in to his knot - and with a sudden stretching sensation, it pops in too.";
	say "     Burying his manhood down to the base in your warm and tight ass is the last straw for the German Shepherd. He gives a sound that's halfway between a howl and an aroused grunt, then starts to flood your insides with blast after blast of canine seed, gushing forth as his knot expands even more and seals the two of you together. Panting, Duke leans against your back, his cock still pulsing with more cum shooting into you. He says 'That was... amazing.' and caresses your chest, then reaches down to take hold of your own shaft and return the favor. With how hot and horny all this fucking already made you, it doesn't take all that long until his eager jerking drives you over the edge and you spray your own seed all over the grass below.[mimpregchance]";
	say "     [WaitLineBreak]";
	say "     With both of you having gotten off, Duke just puts his arms around your body to hold you and pulls you down to lie on the grass as you wait for his knot to go down. He nuzzles against your neck from behind and whispers 'Thanks for letting me fuck you. I really could get used to this too...'";
	if hp of Duke is 10:
		now hp of Duke is 11;

Shawn is a man. The hp of Shawn is normally 0. 
The description of Shawn is "[ShawnDesc]".
The conversation of Shawn is { "Mew!" }.
	
instead of sniffing Shawn:
	say "Shawn has a pleasant animalistic smell, woolly and masculine.";

to say ShawnDesc:
	if daytimer is day:
		say "     Shawn is a young anthro ram, with ruggedly good looks on his flattened face and his blunt muzzle. Two horns adorn the sides of his forehead, just starting to curve downward, which will no doubt leave him with impressive spiral horns in a few years to come. He's tall, standing straight on digitigrade legs and hooves, his upper body pretty human-like - except for the fur, that is.";
		say "     Even though the anthro ram already has a quite respectable physique, about the level of a college-age athlete, he's pretty concentrated on expanding on that. Always busy keeping fit, jogging or doing push-ups and crunches in the grass.";
	otherwise:
		say "     Shawn is a young anthro ram, with ruggedly good looks on his flattened face and his blunt muzzle. Two horns adorn the sides of his forehead, just starting to curve downward, which will no doubt leave him with impressive spiral horns in a few years to come. He's tall, standing straight on digitigrade legs and hooves, his upper body pretty human-like - except for the fur, that is.";
		say "     Now that that the herd is gathered and Duke isn't quite as busy watching over them, Shawn hangs out with him, chatting and joking around. He often has his arm around Duke's shoulders, being pretty affectionate to his boyfriend, giving him small kisses and caresses.";

instead of conversing the Shawn:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Shawn says [one of]'Wanna train a bit with me? Come on, let's jog.'[or]'I can't thank you enough for making me... well, humanoid. Allowing me to think.'[at random]";
	otherwise: [at night, he's got some time to chat]
		say "     With Shawn almost constantly busy chatting with his boyfriend Duke, you can't get a word in edgewise.";
		say "     <Wahn says: He'll get more talkative in a future update>";

instead of fucking the Shawn:
	if daytimer is day: [he doesn't talk to the player during the day]
		say "     Shawn shakes his head. 'Not now, I'm busy training.'";
	otherwise: [at night, he's got some time to chat]
		say "     With Shawn almost constantly busy chatting with his boyfriend Duke, you can't get a word in edgewise.";
		say "     <Wahn says: Sex scenes can be added somewhen later...>";


instead of going north from Central Farm Square while (hp of Lucifer is 0):
	move player to Mustang Paddock;
	wait for any key;
	challenge "Wild Mustang";

[
Section 4 - Endings


when play ends:
	if bodyname of player is "Cowboy":
		if humanity of player is less than 10:
			if level of player > 10:
				say "     A";
			otherwise:
				say "     B";
		otherwise:
			say "     C";

]

Farm ends here.
