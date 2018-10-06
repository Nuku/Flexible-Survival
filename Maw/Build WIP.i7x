Build WIP by Maw begins here.

When play begins:
	repeat with x running through construct:
		now x is a part of the blueprints;

Book - Dem Blues

blueprints is a object. "A large sheet of dark-blue paper with thin, light blue lining upon the broad face of it. With a little ingenuity one could consider this an invaluable tool for [bold type]building[roman type]".
blueprints is in Village center.

After examining the blueprints:
	if progress of current2 of blueprints < cost of current2 of blueprints:
		say "Current Construction Designs: [current2 of blueprints]([progress of current2 of blueprints]/[cost of current2 of blueprints])";
	say "[line break]To begin a new build, type [bold type]build (building) at (direction)[roman type].";
	say "Type [bold type]plan[roman type] alone to see available buildings.";

Part - Change Builds

builds is an action applying to nothing.
Understand "plan" as builds.

Check builds:
	if blueprints is not visible, say "You can't check your current designs without... your designs!" instead;

carry out researchlist:
	say "Available Designs: [no line break]";
	repeat with x running through valid construct:
		if x is complete, next;
		LineBreak;
		say "[x]([progress of x]/[cost of x])[if current2 of blueprints is x](Current construction)[end if][no line break]";
	say "To begin a new build, type [bold type]build (building) at (direction)[roman type].";

constructing is an action applying to one thing and one value.
Understand "Build [Construct] at [lolcation]" as constructing.

Check constructing:
	if blueprints is not visible, say "You can't give orders to your builders while you don't have your designs with you!" instead;
	if noun is complete, say "That building has already been constructed" instead;
	if noun is current2 of blueprints, say "Your builders stare at you, hammers and two-by-fours in hand, looking about ready to hammer you upside the head with both, 'We are working on it.' Maybe you should hire more builders?" instead;

Carry out constructing:
	say "[description of noun]";
	say "[line break]Construct?";
	if player consents:
		now current2 of blueprints is noun;
		now lolcation is second noun;
		say "Your builders begin constructing [noun] in the [second noun].";
	else:
		say "Aborted.";

Book - Define Construct

A Construct is a kind of room.
A Construct has a text called description.
A Construct has a rule called validation.
The validation of a Construct is usually Convailable rule.
A Construct has a number called progress.
A Construct has a number called cost.
A Construct has a rule called completion.
The completion of a Construct is usually nothing rule;
lolcation is a text that varies.[@Tag:NotSaved]

This is the nothing rule:
do nothing;

Definition: A Construct (called C) is valid:
	follow the validation of C;
	if rule succeeded:
		yes;
	else:
		no;

Definition: A Construct (called C) is complete:
	if progress of C >= cost of C:
		yes;
	else:
		no;

Carry out Completion:
		Change the lolcation exit of the location of player to the construct;
		Change the opposite of lolcation exit of the construct to the location of the player;

Part 2 - Constructs

The blueprint has a Construct called current2.
cur is a text that varies.[@Tag:NotSaved]

Agricultural Zone is a Construct.
The description of it is "A massive, flat area filled with rows upon rows of [one of]wheat[or]corn[or]tomato stalks[or]apple trees[or]grape vines[or]marijuana[sticky random]. You feel at peace here, the wildlife of the area unperterbed and singing happily. The rustic look quite an eyesore for the city-folk. (Increases farmers' efficency by offering organized plot of farmland (No effect on hunters))".
The cost of it is 60.
The completion of it is Agricultural Zone.
	if the value of direction is east;

Build WIP ends here.
