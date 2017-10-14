Version 2 of Modern Conveniences by Emily Short begins here.

"Modern Conveniences creates kitchen and bathroom kinds of room, which will automatically be furnished with a set of plausible appliances. (This was originally an example in the manual of how to create extensions, and an annotated version may still be found there.)"

Section 1 - Kitchens

A kitchen is a kind of room.

A refrigerator is a kind of container. A refrigerator is usually closed and openable. A refrigerator is usually fixed in place. A refrigerator is usually scenery. Understand "fridge" as a refrigerator.

A freezer compartment is a kind of container. A freezer compartment is usually closed and openable. A freezer compartment is part of every refrigerator.

Inclusion relates a thing (called X) to a thing (called Y) when Y is part of X. The verb to include (it includes, they include, it included, it is included) implies the inclusion relation.

A stove is a kind of supporter. It is usually scenery.
An oven is a kind of container. An oven is usually openable and closed. One oven is a part of every stove.
A switch is a kind of device. A switch is part of every stove. A switch is part of every oven.
Understand "[something related by reversed incorporation] switch" as a switch.

Setting action variables for opening a stove (this is the stove-opening rule):
	let relevant oven be a random oven which is part of the noun;
	change the noun to the relevant oven.

Setting action variables for switching on something which includes a switch (this is the redirecting switches for switching on rule):
	let relevant switch be a random switch which is part of the noun;
	change the noun to the relevant switch.

Setting action variables for switching off something which includes a switch (this is the redirecting switches for switching off rule):
	let relevant switch be a random switch which is part of the noun;
	change the noun to the relevant switch.

Before printing the name of a switch (called target) (this is the switch identification rule):
	say "[random thing which includes the target] ".

A sink is a kind of container. A sink is usually fixed in place and scenery. A tap is a kind of switch. A tap is part of every sink. Understand "faucet" or "taps" as a tap. Understand "[something related by reversed incorporation] tap/faucet/taps" as a tap.

Instead of opening a tap, try switching on the noun. Instead of closing a tap, try switching off the noun.

Report switching on a tap (this is the standard report switching taps on rule):
	say "You turn on [the noun]." instead. [since "switch on" sounds weird in this context.]

Report switching off a tap (this is the standard report switching taps off rule):
	say "You turn off [the noun]." instead.

After examining something which includes a switched on tap (called relevant tap) (this is the report flowing water rule):
	say "The water is flowing from [the relevant tap]."

A drain is a kind of container. A drain is part of every sink. Understand "plughole" as the drain. Understand "[something related by reversed incorporation] drain/plughole" as a drain.

Instead of inserting something into a drain (this is the no clogging drains rule), say "Pointless."

A cabinet is a kind of container. A cabinet is usually openable and closed. It is scenery.
	Understand "cupboard" or "cupboards" or "cabinets" as a cabinet.

A counter is a kind of supporter. It is scenery.
	Understand "countertop" as a counter.

A cabinet is in every kitchen.
A counter is in every kitchen.
A refrigerator is in every kitchen.
A sink is in every kitchen.
A stove is in every kitchen.

Section 2 - Bathrooms

A bathroom is a kind of room.

A toilet is a kind of supporter. Understand "john" as a toilet. A toilet is usually fixed in place and enterable and scenery.

A bath is a kind of container. A bath is usually a fixed in place and enterable and scenery. A tap is part of every bath. A drain is part of every bath. Understand "bathtub" or "shower" as a bath.

A sink is in every bathroom.
A toilet is in every bathroom.
A bath is in every bathroom.
A cabinet is in every bathroom.

Understand "flush [toilet]" or "use [toilet]" as a mistake ("You have no need at the moment.").

Understand "take shower" or "take a shower" or "take bath" or "take a bath" or "bathe" or "wash" as bathing. Bathing is an action applying to nothing.

Check bathing (this is the restrict baths to bathrooms rule):
	if the location is not a bathroom, say "This isn't the place." instead.

Check bathing (this is the block bathing rule):
	say "You haven't time for a bath." instead.

Washing is an action applying to one thing. Understand "clean [something]" or "wet [something]" or "wash [something]" as washing.

Instead of washing the player, try bathing.

Check washing (this is the restrict washing to the proximity of sinks rule):
	if the player can touch a sink, do nothing;
	else say "This isn't the place." instead.

Check washing (this is the block washing rule):
	say "It doesn't seem worth the bother." instead.

Modern Conveniences ends here.

---- Documentation ----

Modern Conveniences provides a kitchen kind and a bathroom kind of room. Kitchens will automatically be furnished with scenery cabinets, counters, stove-and-oven assemblies, sinks, and refrigerators. Bathrooms will automatically be furnished with sinks, toilets, baths, and cabinets.

One slight challenge lies in giving these assembled pieces separate descriptions. When we have an assembly that adds parts to objects, we can then talk about (for instance) "the stove's switch" elsewhere in the code. But items that have been assigned rooms are not named in the same way, so we cannot talk about "the Industrial Kitchen's stove" in our code as a way to assign it a description or special behavior.

If we only have one instance of each item in our game, we may simply say something like

	The description of a stove is "Scrupulously polished."

applying the description to the class as a whole since there will only be one instance of it.

In a game that features multiple bathrooms and kitchens, this won't be enough; we might instead give the items descriptions that check their location (if there are only a couple of each):

	The description of a stove is "[if in Industrial Kitchen]A massive stainless steel stove-top with six burners[else]Your standard four-burner item[end if]."

or create an

	Instead of examining the stove in the Industrial Kitchen: ...

sort of rule for those objects we want to describe specially; or, as the most extreme case, we might write a When play begins: ... rule to initialize the features of the generated objects, like so:

	When play begins:
		let N be a random stove in the Industrial Kitchen;
		move the boiling pot to N;
		change the description of N to...

We can also, of course, use the appliances individually. In the end, the "kitchen" and "bathroom" room types are likely to be most useful when we want to include the standard props but not actually make them a critical part of the game; if stoves and sinks have more of a starring role in the production, we may be better off coding them or at the very least placing them by hand, as in

	The Industrial Kitchen is a room.
	Thor is a stove in the Industrial Kitchen. It supports a boiling pot.

Example: * Our House - A minimalist house consisting of two rooms.

	*: "Our House"

	Include Modern Conveniences by Emily Short.

	Our Household Kitchen is a kitchen.

	The Tiny Bathroom is a bathroom. It is west of Our Household Kitchen.

	The description of a stove is "Scrupulously polished."

	The description of a refrigerator is "It is baby blue and has the contours of a 50's chevy. One of these days it really will break down, but it's been serving your family faithfully since your grandmother's honeymoon."

	Test me with "x refrigerator / open fridge / x freezer / look in freezer / open freezer / turn on stove / turn on oven / x oven switch / turn off oven switch / turn off stove switch / turn on taps / x sink / w / x sink / turn on sink / take bath / use toilet".
