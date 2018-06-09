Inventory Management Enhancements by Core Mechanics begins here.
[- Originally Authored By: Mirumu -]

After reading a command:
	if the player's command matches "drop all":
		replace the player's command with "dropitall";
	else if the player's command matches "drop everything":
		replace the player's command with "dropitall";
	else if the player's command includes "drop all ":
		replace the matched text with "dropall ";

masslittering is an action applying to one thing.

Understand "dropall [owned grab object]" as masslittering.

To decide which action name is the action to be: (- action_to_be -).

Rule for printing a parser error while the latest parser error is the can't see any such thing error and the action to be is the masslittering action:
        say "You don't see that in your backpack.";

Carry out masslittering something (called x):
	if x is wielded or x is equipped:
		say "You're [if x is wielded]wielding[else]wearing[end if] that. Take it off first.";
		stop the action;
	else if x is owned:
		let found be carried of x;
		repeat with z running from 1 to found:
			add printed name of x to invent of location of player;
		now carried of x is 0;
		if found > 0:
			say "You set down [found] x [x].";

criminallittering is an action applying to nothing.

Understand "dropitall" as criminallittering.

Carry out criminallittering:
	let droptotal be 0;
	repeat with x running through owned grab objects:
		if x is journal or x is equipped or x is wielded:
			next;
		else:
			let found be carried of x;
			repeat with z running from 1 to found:
				add printed name of x to invent of location of player;
			increase droptotal by carried of x;
			now carried of x is 0;
	if droptotal is 0:
		say "You don't have anything you're ready to drop.";
	else:
		say "You drop everything but your journal and any equipped items you have. You get rid of [droptotal] item(s) in all[if droptotal > 4]. Ahhh! Your back feels much better now[end if].";


Inventory Management Enhancements ends here.
