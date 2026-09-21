Snuggle's Loft by Sundered Dragon begins here.

Section 1  - Snuggle's Loft

Table of GameRoomIDs (continued)
Object	Name
Snuggle's Loft	"Snuggle's Loft"

Snuggle's Loft is a room. It is fasttravel.
Snuggle's Loft is private.
Snuggle's Loft is sleepsafe.
Description of Snuggle's Loft is "[loftdesc]".
the scent of Snuggle's Loft is "Oaky with underlying scents of mothballs, linseed oil, and aged linen.".

to say loftdesc:
	if Morale of Snuggle < 10:
		say "     Sparely furnished with a few old dressers covered in white, sun-faded cloth tarps set atop a burnished yellow wood floor, the goopy vixen's abode is a rather barren place that appears to have been abandoned or sealed long before the outbreak. Why though you can't be certain, as the visible hard wood shows no signs of wear and tear, must less mold or water damage. In places, you spy classical unassuming wavy patterns handcarved into the crownmolding, by no means ritzy or exceptional, the serviceable adornments add a little flare to the otherwise sparse loft. Despite the spartan accommodations, the room, along with the upper floors appear to have weathered the chaos of the city better than most abodes. Still, the odd vulpine tends to keep the blinds shut, and doors locked at all hours to avoid drawing unwanted attention to her private bolt hole, for now.";
	[else if Morale of Snuggle >= 10 and Morale of Snuggle < 30:
		say "     With the assistance of her goopy helpers, and perhaps some of your own adorable kits, Snuggle has begun the slow process of bringing furniture and rugging to liven up the loft. Though very much a work in progress as the clever fox does her best to conceal her presence, a soft, dense white shag rug now covering much of the old hard floor is a deeply welcome addition and lovely boon for your hard working peets to trod upon. Set on its center is a ponderously large velvety red dog bed embroidered with the word: 'Pet' in heavily italicized cursive. Beside it, a copper water bowl and silver bell rest nest neatly on a lacy white cloth. Arrayed along the walls are a pair of restored Victorian dressers, one a rather comely reddish-brown triple shelved vanity dresser with gold leaf inlays fashioned into creeping grape vine with a pristine silver backing has been placed opposite of the windows."; 
		say "     A second, far larger, armoire built from burnished teak has been tucked into the northwestern most corner of the loft. Rather plain to the eye, this simple yet expansive piece of furniture holds many of your kits personal finds, left as tribute to you and your Mistress. Most of which are useless bits of costume jewelry, or odd post-apocalyptic trinkets taken from one of their meals. Every now and then though, they tend to find objects of actual value. Given the sheer volume of discovers your bountiful babes recover though, you'll only have a limited amount of time to peruse their gift before most of it is thrown out to make room for their batch of plunder.";
	else if Morale of Snuggle >= 30:
		say "      No longer concerned with concealing her, or your cuddly kit's presence, Snuggle's Helpers have spliced into what's left of the city's power-grid to bring some much needed light to the loft. Stings of L.E.D bulbs have been hung along the wave crown molding, alongside a few standing metal lamps have been arrayed around the room. All of which are angled towards your personal bed, likely scavenged from one of the more high end pet stores. The supremely cushy bright red and cream white dog bed could easily fit a family of great danes, while rich golden tassels adorn its corners. Like your old bed, your new fluffy nest has the word: 'Pet' inscribed in deeply italicized cursive along one of its edges. Nestled beside it, is a plain white remote that controls a little heating coil woven into its luxurious cuddly contours. Your bowl too has been replaced with a large crystal one covered in ornate floral patterns attended by several Helper foxes who do their best to keep it topped off with sparkling water.";
		say "    Sadly, for all the abundance provided by her goopy work force, the supply of bubbly in the city is dwindling, so they can only refill it once per day. Save from some minor polishing, your bell however remains untouched. Placed alongside the original vanity dresser and armoire are a number of fancy mahogany chests secured with bands wrought iron largely filled with clothing and jewelry liberated from around the city during your cub's myriad excursions. While of varying size and value as few choice pieces still find their way into the mix, occasionally though your kits have been able to find weapons or scraps of armor laying about. Much like their regular tribute, your curious daughters constantly swap out their hoard every few days to avoid clutter. Meanwhile a few of your precious cubs have stuck loving notes and little doodles to the walls to break up the otherwise dull woodwork. Though not an artistic bunch, their kind words and fanciful drawing rarely fail to bring a smile your face.";]

Snuggle's Loft is inside of Shadowy Garage.
Snuggle's Loft is below Mansard.



Table of GameRoomIDs (continued)
Object	Name
Shadowy Garage	"Shadowy Garage"

Shadowy Garage is a room.
Description of Shadowy Garage is "[SGdesc]".
The scent of Shadowy Garage is "Oil, and the strangely sweet scents of various mechanical fluids waft about the darkened garage.".

to say SGdesc:
	say "     Intentionally left barren the goopy vixen, this expansive cement garage seems to have been a more recent addition to this building as the few visible outlets and lone hand sized brass drain situated at the center appear to be of a more modern design the rest of the upper floor. Idly looking at the original wooden staircase along with a fleeting impression of an old door's hinges left beside the still sealed loading dock. You surmise it might have been an open carriage stall that was converted near the turn of the last century. Oddly, despite the near total breakdown of the city's plumbing, you can still hear a faint bubbling gurgle coming from the drain at times. On a lark you occasional try to peer down vast hole just to see what's down there, yet never once have you seen it bottom, much less any sign activity.";

Shadowy Garage is outside of Snuggle's loft.


Table of GameRoomIDs (continued)
Object	Name
Mansard	"Mansard"

Mansard is a room.
Description of Mansard is "[Mansarddesc]".
The scent of Mansard is "Dry wood and a musky tang evocative of a middle end thrift shop fills much of the upper floor and its motley collection of rooms. While neither off putting nor inviting, Snuggle has made a modest effort to bring in a few flowers and scavenged air fresheners to tamp down the banal odor.".

To say Mansarddesc:
	if Morale of Snuggle < 10:
		say "    Little more than an empty dark hall connected to several vacant rooms, this mansard appears to have been abandoned long ago by the store's original owner. Much of the slanted roof alongside its surrounding walls appear unfinished, and in some places pink bundles of insulation can be seen peaking out from the lathing. The underlying structure looks to be as sound as the rest of the building, at least to your layman's eye. Regrettably, the mansard lacks much in the way of natural light and air flow save a small wooden vent nestled along the apex of the roof facing the street leaving the air somewhat stagnant at times. To that end, Snuggle has brought in a number of flowers from around the area to add not only some much needed color to the area, but cut the smell of old wood and neglect. Despite this, there is a quite a bit of potential in this place and perhaps if you were to make her a few Helpers as she calls them they could improve the area.";
	else if Morale of Snuggle >=  10 and Morale of Snuggle < 30:
		say "    With the assistance from her goopy Helper Foxes and some occasional help from your own cuddly kits, Snuggle has slowly begun sending out scouting parties through the to salvage and in some cases loot fresh construction material to effect 'repairs' on the mansard. Though owing to their gelatinous nature, the Helpers skills are questionable at best, yet the sheer volume of reclaimed timber and carpeting has given them plenty to tinker with while Snuggle does her best to direct them. The result is a wild hodgepodge of grains and lumber thrown together to cover the lathing, with the help of a little paint though it shouldn't be hard to cover that though. Meanwhile, the floors have been upholstered in densely padded sound damping white carpet, a feature you're often grateful for. As Mistress's Helpers have no concept of regular working hours. Leaving them more than content to work through all hours of the day so long as they have the resources to do so."; 
		say "     Beyond that, Snuggle's Helpers have brought more dog beds for your visiting kit so sleep on alongside a few electric lanterns to brighten the gloom. While a number of plastic folding tables too have been brought into the central hall, each host to unadorned green floral vases filled with all manner of flowers taken from the city and few random knicknacks pilfered from your kits travels."; [more to be add if/when PC starts converting people]
	else if Morale of Snuggle >= 30:
		say "    Thoroughly painted and rehabbed, you would hardly recognize the almost opulent mansard was once little more than a dark dingy garret nestled atop some run down shop in the middle of town. Owing to the constant tinkering of dozens of Helper Foxes ripping apart every store, shed, and utility room they find, the gleaming white walls of the mansard shine like mother of pearl in the lantern light. In places, modified golden candelabra have been installed onto the walls and leech what little power flows through the city. Spotty at the best of times, they flicker at odd hours, yet the industrious oozes have pillaged a few solar panels with the aid of your cubs to lighten the load during the daylight hours. Untrained as they are, it's a miracle they were able to wire the place without burning it down. Streaming down alongside the Sconces are velvety red ribbons lightly tack the wall, devilishly smooth, their rich cinnabar lengths flutter ever-so-slighty in the fresh breeze let in by the window installed along the street facing side of Snuggle's abode.";
		say "    Gone are the old plastic tables and banal vases lining the cushy carpet, in their place the Helpers and your kits have brought in redwood burl tables, topped with black marble streaked with gold leaf. The vases too have been replaced with sapphire hued vessels bearing striking images of roman-esqu women in loving repose upon their polished surfaces. Your kits rooms too have been furnished with larger, cuddlier dog beds befitting the voluptuous vixen's regal proportions. Most are only used in passing and left largely uncluttered save for the odd chest or metal shelf affixed to the walls. A few though are more lived in by some of your grand kits who seem content to stay close to Mistress. Their numbers though are growing by the hour, as such a new doorway leading to the adjoining building has been carved into the mansard to allow your family to expand outward under Snuggle's protection."; [Mention Al and the adoptive kits if when they are added.]

Mansard is above Snuggle's Loft.



Snuggle's Loft ends here.