Version 1 of Storage Locker by Core Mechanics begins here.
[ Storage Locker - Created by Stripes ]
[ Version 1.0 - Basic object, viewing storage and stash/retrieve commands ]

Section 1 - Storage Locker Setup

There is a storage locker in Bunker. It is fixed in place. It has a description "[stlockerdesc]".
understand "use [storage locker]" as examining.

instead of examining the storage locker, say stlockerdesc.

to say stlockerdesc:
	say "     There are several storage lockers built into the bunker. They may have once held supplies or necessary equipment, but that all seems to be long gone. Still, they'll make for handy storage that you and any other occupants can use. There's plenty of space, so you should be able to [bold type]stash[roman type] as much as you like so you can [bold type]retrieve[roman type] it later.";
	say "[line break][bold type]Options:[roman type][line break]";
	say "[link](1) Display player inventory[as]1[end link][line break]";
	say "[link](2) Display storage inventory[as]2[end link][line break]";
	say "[link](3) Stash everything[as]3[end link][line break]";
	say "[link](4) Retrieve everything[as]4[end link][line break]";
	say "[link](5) Command list[as]5[end link][line break]";
	say "[link](0) Exit[as]0[end link][line break]";
	while 1 is 1:
		say "Choice? (0-5)> [run paragraph on]";
		get a number;
		if calcnumber >= 0 and calcnumber <= 5:
			break;
		else:
			say "Invalid choice. Pick from 0 to 5.";
	if calcnumber is 1:
		displayplinv;
	else if calcnumber is 2:
		displaystorage;
	else if calcnumber is 3:
		say "[line break][run paragraph on]";
		try massstashing;
	else if calcnumber is 4:
		say "[line break][run paragraph on]";
		try massretrieving;
	else if calcnumber is 5:
		say "[line break][stlockercom]";
	else:
		say "[line break]You close the storage locker.";


instead of using storage locker:
	say "[stlockerdesc]";

instead of opening storage locker:
	say "[stlockerdesc]";


Section 2 - Displaying Contents

to displayplinv:
	if the number of owned grab objects is 0:
		say "There is nothing currently in your inventory.";
	else:
		say "Your backpack contains:[line break]";
		say "Type [bold type]stash <name>[roman type] to [bold type][bracket]S[close bracket][roman type]tash an item or [bold type]stashall <name>[roman type] to Stash [bold type][bracket]A[close bracket][roman type]ll of an item.";
		LineBreak;
		let L be a list of grab objects;
		repeat with x running through all owned grab objects:
			add x to L, if absent;
		sort L in printed name order;
		if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
		let linkparts be {{"S", "stash"}, {"A", "stashall"}};
		let y be 0;
		repeat with x running through L:
			increase y by 1;
			if hypernull is not 1:
				repeat with linktext running through linkparts:
					linkfind "[entry 2 of linktext] [x]"; [sets hyperindex to the existing or added entry matching link text]
					say "[set link hyperindex][bracket][entry 1 of linktext][close bracket][terminate link] ";
			say "[x] x[carried of x]";
			if y < number of entries in L:
				if the remainder after dividing y by invcolumns is 0:
					LineBreak;
				else:
					say "  ||  ";
		LineBreak;

to displaystorage:
	if the number of stored grab objects is 0:
		say "There is nothing currently in the storage locker.";
	else:
		say "The storage locker contains:[line break]";
		say "Type [bold type]retrieve <name>[roman type] to [bold type][bracket]R[close bracket][roman type]etrieve an item or [bold type]retrieveall <name>[roman type] to Retrieve [bold type][bracket]A[close bracket][roman type]ll of an item.";
		LineBreak;
		let L be a list of grab objects;
		repeat with x running through all stored grab objects:
			add x to L, if absent;
		sort L in printed name order;
		if invcolumns < 1 or invcolumns > 4, now invcolumns is 2;
		let linkparts be {{"R", "retrieve"}, {"A", "retrieveall"}};
		let y be 0;
		repeat with x running through L:
			increase y by 1;
			if hypernull is not 1:
				repeat with linktext running through linkparts:
					linkfind "[entry 2 of linktext] [x]"; [sets hyperindex to the existing or added entry matching link text]
					say "[set link hyperindex][bracket][entry 1 of linktext][close bracket][terminate link] ";
			say "[x] x[stashed of x]";
			if y < number of entries in L:
				if the remainder after dividing y by invcolumns is 0:
					LineBreak;
				else:
					say "  ||  ";
		LineBreak;

Section 3 - Commands

to say stlockercom:
	say "There are several commands you can use with the storage locker to manipulate objects between it and your inventory.";
	say "[bold type]stash <object>[roman type] - Place one of the named object in the locker.";
	say "[bold type]stashall <object>[roman type] - Place all copies of the named object in the locker.";
	say "[bold type]massstash[roman type] - Place everything you have (except journal and equipped gear) in the storage locker.";
	say "[bold type]retrieve <object>[roman type] - Take one of the named object from the locker.";
	say "[bold type]retrieveall <object>[roman type] - Take all copies of the named object from the locker.";
	say "[bold type]massretrieve[roman type] - Take everything from the locker.";


Stashing is an action applying to one thing.
Retrieving is an action applying to one thing.
Allstashing is an action applying to one thing.
Allretrieving is an action applying to one thing.
Massstashing is an action applying to nothing.
Massretrieving is an action applying to nothing.

understand "stash [grab object]" as stashing.
understand "stashall [grab object]" as allstashing.
understand "massstash" as massstashing.
understand "retrieve [grab object]" as retrieving.
understand "retrieveall [grab object]" as allretrieving.
understand "massretrieve" as massretrieving.

Check stashing a grab object (called x):
	if storage locker is not visible, say "Stash it where?" instead;
	if carried of x <= 0, say "You don't seem to have any [x] on you right now." instead;
	if x is journal, say "You'd best hang on to that." instead;
	if x is wielded or x is equipped, say "You're using that right now." instead;

Carry out stashing a grab object (called x):
	ItemLoss x by 1 silently;
	increase stashed of x by 1;
	say "You put [x] into the locker for storage.";

Check retrieving a grab object (called x):
	if storage locker is not visible, say "Retrieve from where?" instead;
	if stashed of x <= 0, say "There doesn't seem to be any [x] in the storage locker right now." instead;

Carry out retrieving a grab object (called x):
	decrease stashed of x by 1;
	ItemGain x by 1 silently;
	say "You take [x] from the storage locker.";


Check allstashing a grab object (called x):
	if storage locker is not visible, say "Stash them where?" instead;
	if carried of x <= 0, say "You don't seem to have any [x] on you right now." instead;
	if x is journal, say "You'd best hang on to that." instead;
	if x is wielded or x is equipped, say "You're using that right now." instead;

Carry out allstashing a grab object (called x):
	let num be carried of x;
	increase stashed of x by num;
	ItemLoss all x silently;
	say "You put [num] of [x] into the locker for storage.";

Check allretrieving a grab object (called x):
	if storage locker is not visible, say "Stash them where?" instead;
	if stashed of x <= 0, say "There doesn't seem to be any [x] in the storage locker right now" instead;

Carry out allretrieving a grab object (called x):
	let num be stashed of x;
	ItemGain x by num silently;
	now stashed of x is 0;
	say "You take [num] of [x] from the storage locker.";

Check massstashing:
	if storage locker is not visible, say "Stash them where?" instead;

Carry out massstashing:
	let yy be 0;
	let zz be 0;
	repeat with x running through all owned grab objects:
		if x is journal or x is equipped or x is wielded:
			next;
		else:
			increase yy by 1;
			increase zz by carried of x;
			increase stashed of x by carried of x;
			ItemLoss all x silently;
	if zz is 0:
		say "You have nothing you can store.";
	else:
		say "You stash [zz] things ([yy] different objects) in the storage locker.";

check massretrieving:
	if storage locker is not visible, say "Stash them where?" instead;

carry out massretrieving:
	let yy be 0;
	let zz be 0;
	repeat with x running through all stored grab objects:
		increase yy by 1;
		increase zz by stashed of x;
		ItemGain x by stashed of x silently;
		now stashed of x is 0;
	if zz is 0:
		say "The storage locker is already empty.";
	else:
		say "You retrieve [zz] things ([yy] different objects) from the storage locker.";



Storage Locker ends here.
