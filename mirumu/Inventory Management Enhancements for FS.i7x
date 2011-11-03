Inventory Management Enhancements for FS by mirumu begins here.

After reading a command:
	if the player's command matches "drop all":
		replace the player's command with "dropitall";
	otherwise if the player's command matches "drop everything":
		replace the player's command with "dropitall";
	otherwise if the player's command includes "drop all ":
		replace the matched text with "dropall ";

masslittering is an action applying to one thing.

Understand "dropall [owned grab object]" as masslittering.

To decide which action name is the action to be: (- action_to_be -).

Rule for printing a parser error while the latest parser error is the can't see any such thing error and the action to be is the masslittering action:
        say "You don't see that in your backpack."

Carry out masslittering something(called x):
	if x is wielded:
		say "You're wielding that, take it off first.";
		stop the action;
	otherwise if x is owned:
		let found be 1;
		let number dropped be 0;
		while found is 1:
			let number be 1;
			now found is 0;
			repeat with junk running through the invent of the player:
				if junk matches the regular expression printed name of x, case insensitively:
					now found is 1;
					add junk to the invent of the location of the player;
					remove entry number from invent of the player;
					increase number dropped by 1;
					break;
				increase number by 1;
		if number dropped is greater than 0:
			say "You set down [number dropped] x [x].";

criminallittering is an action applying to nothing.

Understand "dropitall" as criminallittering.

Carry out criminallittering:
	let x be a text;
	add the invent of the player to the invent of the location of the player;
	now the invent of the player is {};
	add "journal" to the invent of the player;
	remove "journal" from invent of the location of the player;
	if the weapon object of the player is not the journal:
		now x is the name corresponding to an object of weapon object of the player in the table of game objects;
		add x to the invent of the player;
		remove x from invent of the location of the player;
	say "You drop everything but your journal[if weapon object of the player is not the journal], and the [x] you[apostrophe]re wielding[end if].";
					

Inventory Management Enhancements for FS ends here.
