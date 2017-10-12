Version 1 of Additional Tome Scenes by Dys begins here.
[v1 - Adds tentacles and demon fox.]

"Adds aditional content to the Ancient Tome item."

[ TomeInteractions tracks the number of times the player has used the tome. ]
[ TomeTentacleInteractions tracks the number of times the player interacted ]
[ with the tentacles.                                                       ]
[ TomeDemonFoxInteractions tracks the number of times the player interacted ]
[ with the demon fox.                                                       ]

Section 1 - Variables

TomeInteractions is a number that varies. TomeInteractions is usually 0.
TomeTentacleInteractions is a number that varies. TomeTentacleInteractions is usually 0.
TomeDemonFoxInteractions is a number that varies. TomeDemonFoxInteractions is usually 0.

Section 2 - Menus

to say TomeSexMenu:
	say "     The dark book seems to draw you towards it. You can't help but to be tempted to use it. Do you give in? If so, what will you do with it?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row from table of fucking options;
	now title entry is "Summon a tentacle monster";
	now sortorder entry is 1;
	now description entry is "Perhaps you could get a tentacle monster to have it's way with you";
	[]
	choose a blank row from table of fucking options;
	now title entry is "Summon a demon fox";
	now sortorder entry is 2;
	now description entry is "A demon fox sounds like it could be fun";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows from table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[line break][link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows from table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber from table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is:
					-- "Summon a tentacle monster":
						say "[TomeTentacleSex]";
					-- "Summon a demon fox":
						say "[TomeDemonFoxSex]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "     Change your mind and do something else?";
			if player consents:
				now sextablerun is 1;
				say "     You shake your head, banishing the tempting thoughts. You can't afford to give in to it.";
				WaitLineBreak;
			else:
				say "Pick an option.";
		else:
			say "Invalid selection made. Please pick an option from 0 to [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

Section 3 - Use Scenes

to say TomeExpansionUse:
	if TomeInteractions is 0: [First use]
		say "     You look over the ancient book, examining it closely as you ponder, what exactly, you can do with it. [if TomeFound is 4]You saw what happened to Eric. Even still, you could give it a read... [else if TomeFound is 20]You saw what nearly happened to Eric. Even still, you could give it a read... [else if TomeFound is 3]Something just doesn't feel right about it, even though Eric seemed relatively unaffected by it. Even still, you could give it a read... [else]Perhaps you could give it a read? [end if]It [italic type]is[roman type] a book, after all.";
		LineBreak;
		say "     [link](Y)[as]y[end link] - Give it a quick read.";
		say "     [link](N)[as]n[end link] - It's probably best not to.";
		if player consents:
			say "     You open the tome to a random page, deciding that no real harm can come from just quick glance at it. Your eyes skim over page after page of text and drawings depicting all sorts of monsters and demons, taking all the information in eagerly. For some reason you can't quite comprehend, the contents of the book have really piqued your interest. Nearly two hours later, you find that you've read more than half of the large books contents, and you suddenly blink, realizing how much time you've spent doing this. Shutting the book, you heave a sigh as you place it in your pack before moving on. There's some part of you that eagerly awaits further reading.";
			now TomeInteractions is 1;
		else:
			say "     You shake your head, deciding that there's not really any benefit to reading the contents of the book, before you place it back in your pack and move along.";
	else if TomeInteractions is 2: [Second use]
		say "     You pull the tome out of your pack once more, looking over it's leather cover for a moment before deciding that giving it another read wouldn't hurt too much. After all, you only read about half of it, previously! You should at least finish what you started.";
		say "     Opening the book to the portion you've yet to read, you are greeted with a few options. The page on the left depicts a sort of mass of tentacles[if TomeFound is 4], though these are different than the ones that assualted Eric[else if TomeFound is 20], though these are different than the ones that nearly took Eric[end if]. Each of the tendrils is a sort of bluish-purple, and they all seem to be covered in some sort of clear slime. The adjacent page depicts a demonic looking feral fox. It stands larger than a horse with jet black and yellow fur. Two curved horns poke out of the top of it's skull, and it has a series of spikes along it's back, almost like a dragon. It has three long tails, each of which appear to be burning with a yellow flame. Underneath its hulking form, you see a massive cock, an interesting mixture of both vulpine and draconic, featuring a tapered tip and a wide knot, as well as several protruding ridges along it's underside. The shaft itself fades from a dark metalic gold at the base to a bright yellow near the tip. It's leaking a stream of what almost looks like lava.";
		say "     [bold type]Seeing your two options, which of them do you read about[roman type]?";
		LineBreak;
		say "     [link](1)[as]1[end link] - Read about the tentacle monster.";
		say "     [link](2)[as]2[end link] - Read about the demon fox."
		LineBreak;
		say "     [link](0)[as]0[end link] - Change your mind.";
		now calcnumber is -1;
		while calcnumber < 0 or calcnumber > 2:
			say "Choice? (0-2)>[run paragraph on]";
			get a number;
			if calcnumber >= 0 and calcnumber <= 2:
				break;
			else:
				say "Invalid choice.";
		if calcnumber is 1:
			say "placeholder.";
		else if calcnumber is 2:
			say "placeholder.";
		else if calcNumber is 0:
			say "     You shake your head before slamming the book closed. Both of the ideas don't appeal to you, and honestly, you're not entirely sure why you opened the damn thing in the first place.";

Section 4 - Sex Scenes

to say TomeTentacleSex:
	say "     Placeholder.";

to say TomeDemonFoxSex:
	say "     Placeholder.";

Section 5 - Dev Cheats

GetTome is an action applying to nothing.
Understand "givetome" as GetTome.

Carry out GetTome:
	say "     Done.";
	increase carried of ancient tome by 1;

Additional Tome Scenes ends here.
