Helpful Routine Templates by Core Mechanics begins here.
[NOTE: DO NOT COMPILE THIS WITH GAME. The purpose of this extension is to provide useful routine templates]
[ - Originally Made by Blue Bishop - ]

to staticmenu: [A basic, static menu that's easily expandible, but otherwise cannot change dynamically in size]
	now calcnumber is -1;
	say "     This is a static menu with listed interactions.";
	let menuexit be 0;
	while menuexit is 0:
		say "[bold type]Choices:[roman type][line break]";
		say "(1) [link]Choice 1[as]1[end link][line break]";
		say "[line break]";
		say "(0) [link]Abort[as]0[end link][line break]";	
		while 1 is 1:
			say "Choice? (0-1)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 1:
				break;
			otherwise:
				say "Invalid Selection.";
		if calcnumber is 1:
			if MISSING REQUIREMENTS: [An example of how you might handle pre-requisites such as anatomy or attributes]
				say "     [bracket]Invalid Interaction: You don't meet the requirements[close bracket][line break]";
			otherwise:
				say "     You make Choice 1.";
				now menuexit is 1;
		otherwise:
			say "     You abort.";
			now menuexit is 1;
			
to itemmenue: [This template is used to create a dynamic menu that goes through all player-owned items and lists them for consumption based on an attribute]
	blank out the whole of table of itemselection;
	repeat with Q running through owned TEMPLATE grab objects: [Replace TEMPLATE with an attribute held by grab objects]
		choose a blank row in table of itemselection;
		now object entry is Q;
		now holding entry is carried of Q;
		now objname entry is printed name of Q;
	if there is no object in row 1 of table of itemselection:
		say "     You lack the required object.";
	otherwise:
		let tappeditem be pocketknife;
		if the number of filled rows in table of itemselection is 1: [If there is only one relevant item]
			choose row 1 in table of itemselection;
			now tappeditem is object entry;
			say "     Having only one relevant item, you choose [tappeditem].";
		otherwise:
			sort table of itemselection in object order;
			say "[bold type]Choices:[roman type][line break]";
			say "[bracket]The effect is the same regardless of choice[close bracket][line break]";
			repeat with y running from 1 to number of filled rows in table of itemselection:
				choose row y from the table of itemselection;
				say "([y]) [link][objname entry][as][y][end link] ([holding entry])[line break]";
				say "[line break]";
			say "(0) [link]Abort[as]0[end link][line break]";
			while tappeditem is pocketknife:
				say "Choice? (0-[number of filled rows in table of itemselection])> [run paragraph on]";
				get a number;
				if calcnumber > 0 and calcnumber <= number of filled rows in table of itemselection:
					choose row calcnumber in table of itemselection;
					now tappeditem is object entry;
					say "     You choose [tappeditem].";
				otherwise if calcnumber is 0:
					now tappeditem is journal;
		if tappeditem is not journal:
			say "     Are you sure?";
			if player consents:
				say "     You use the item.";
				delete tappeditem;
				

Helpful Routine Templates ends here.