Version 2 of Additional Tome Scenes by Dys begins here.
[v1 - Adds tentacles and demon fox.                                         ]
[v2 - Breaks up the file into more abstract pieces.                         ]


"Adds additional content to the Ancient Tome item."

[ TENTACLE CODE -- Dys/Ancient Tentacles.i7x                                ]
[ DEMON FOX CODE -- Dys/Demon Fox.i7x                                       ]

[ TomeTimer tracks how long it's been since the player has been             ]
[ influenced by the tome.                                                   ]
[ TomeInfluence tracks how much the player has been influenced              ]
[   0 = Never influenced. Cannot use tome.                                  ]
[   1 = Influenced once. Cannot use tome.                                   ]
[   2 = Influenced twice. Cannot use tome.                                  ]
[   3 = Influenced three times. Can now use the tome.                       ]
[ TomeInteractions tracks the number of times the player has used the tome. ]
[ TomeEventPending flags if a tome event is waiting to fire.                ]


Section 1 - Variables

TomeTimer is a number that varies. TomeTimer is usually 5000.
TomeInfluence is a number that varies. TomeInfluence is usually 0.
TomeInteractions is a number that varies. TomeInteractions is usually 0.
TomeEventPending is a truth state that varies. TomeEventPending is usually false.
TomeInfluenceTimer is a number that varies. TomeInfluenceTimer is usually 5000.

Section 2 - Menus

to say TomeSexMenu:
	say "     The dark book seems to draw you towards it. You can't help but to be tempted to use it. Do you give in? If so, what will you do with it?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0 and cunts of player is 0 and TentacleInteractions > 0:
		choose a blank row from table of fucking options;
		now title entry is "Summon a tentacle monster";
		now sortorder entry is 1;
		now description entry is "Perhaps you could get the tentacle monster to have its way with you";
	[]
	if cocks of player > 0 and cunts of player is 0 and DemonFoxInteractions > 0:
		choose a blank row from table of fucking options;
		now title entry is "Summon a demon fox";
		now sortorder entry is 2;
		now description entry is "The demon fox sounds like it could be fun";
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
						say "[TentacleSex]";
					-- "Summon a demon fox":
						say "[DemonFoxMenu]";
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
	if TomeInfluence is 0: [Never influenced, can't read]
		say "     You open the old book and flip through a few pages. Sadly, it seems to be written in a squiggly script that you can make no heads or tails of, and the images in it are mildly disturbing, full of weird creatures and situations. A shiver runs down your spine as you close the book again.";
	else if TomeInfluence is 1: [Influenced once, can't read]
		say "     You open the dark book and flip through a few pages. Sadly, you're still unable to make heads or tails of the script inside. Something about it makes you shiver in dread, making you somewhat okay with your inability to understand its contents.";
	else if TomeInfluence is 2: [Influenced twice, can't read]
		say "     You open the thick tome and skim across a few pages. Surprisingly, you can actually make out a few words here and there, though they aren't near enough for you to actually [italic type]read[roman type] the thing. You tremble involuntarily before shutting the book, somewhat glad that you aren't able to read it.";
	else: [Influenced thrice, can finally read]
		if TomeTimer - turns >= 4:
			if TomeInteractions is 0: [First use]
				say "     You look over the ancient book, examining it closely as you ponder, what exactly, you can do with it. [if TomeFound is 4]You saw what happened to Eric. Even still, you could give it a read... [else if TomeFound is 20]You saw what nearly happened to Eric. Even still, you could give it a read... [else if TomeFound is 3]Something just doesn't feel right about it, even though Eric seemed relatively unaffected by it. Even still, you could give it a read... [else]Perhaps you could give it a read? [end if]It [italic type]is[roman type] a book, after all.";
				LineBreak;
				say "     [link](Y)[as]y[end link] - Give it a quick read.";
				say "     [link](N)[as]n[end link] - It's probably best not to.";
				if player consents:
					say "     You open the tome to a random page, deciding that no real harm can come from just quick glance at it. Your eyes skim over page after page of text and drawings depicting all sorts of monsters and demons, taking all the information in eagerly. For some reason you can't quite comprehend, the contents of the book have really piqued your interest. Nearly two hours later, you find that you've read more than half of the large books contents, and you suddenly blink, realizing how much time you've spent doing this. Shutting the book, you heave a sigh as you place it in your pack before moving on. There's some part of you that eagerly awaits further reading.";
					now TomeTimer is turns;
					now TomeInteractions is 1;
				else:
					say "     You shake your head, deciding that there's not really any benefit to reading the contents of the book, before you place it back in your pack and move along.";
			if TomeInteractions is 1: [Second use]
				say "[TomeReadMenu]";
			else if TomeInteractions is 2: [3+ uses]
				say "     Do you want to [link]read the tome[as]y[end link] (y), or [link]use the tome[as]n[end link] (n)?";
				if player consents:
					say "[TomeReadMenu]";
				else:
					say "[TomeSexMenu]";
		else:
			say "     You contemplate using the dark book for only a moment before shaking your head. Using it too often may be a bad idea.";

to say TomeReadMenu:
	say "     You pull the tome out of your pack once more, looking over its leather cover for a moment before deciding that giving it another read wouldn't hurt too much. After all, you only read about half of it, previously! You should at least finish what you started.";
	say "     Opening the book to the portion you've yet to read, you are greeted with a few options. The page on the left depicts a sort of mass of tentacles[if TomeFound is 4], though these are different than the ones that assaulted Eric[else if TomeFound is 20], though these are different than the ones that nearly took Eric[end if]. Each of the tendrils is a sort of bluish-purple, and they all seem to be covered in some sort of clear slime. The adjacent page depicts a demonic looking feral fox. It stands larger than a horse with jet black and yellow fur. Two curved horns poke out of the top of its skull, and it has a series of spikes along its back, almost like a dragon. It has three long tails, each of which appear to be burning with a yellow flame. Underneath its hulking form, you see a massive cock, an interesting mixture of both vulpine and draconic, featuring a tapered tip and a wide knot, as well as several protruding ridges along its underside. The shaft itself fades from a dark metallic gold at the base to a bright yellow near the tip. It's leaking a stream of what almost looks like lava.";
	say "     [bold type]Seeing your two options, which of them do you read about[roman type]?";
	LineBreak;
	say "     [if TentacleRead is false][link](1)[as]1[end link] - Read about the tentacle monster.[else](1) - You've already read about the tentacle monster.[end if]";
	say "     [if DemonFoxRead is false][link](2)[as]2[end link] - Read about the demon fox.[else](2) - You've already read about the fox.[end if]";
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
	if calcnumber is 1 and TentacleRead is false:
		say "[TentaclesFirstRead]";
	else if calcnumber is 2 and DemonFoxRead is false:
		say "[DemonFoxFirstRead]";
	else if DemonFoxRead is true or TentacleRead is true:
		say "     You've already read about that!";
	else if calcNumber is 0:
		say "     You shake your head before slamming the book closed. Both of the ideas don't appeal to you, and honestly, you're not entirely sure why you opened the damn thing in the first place.";

Section 4 - Other Stuff

to UpdateTomeEventPending:
	if TomeEventPending is true:
		if DemonFoxRead is true and TentacleRead is true and (TentacleInteractions is 0 or DemonFoxInteractions is 0): [One event completed, but another is pending.]
			now TomeEventPending is true;
		else:
			now TomeEventPending is false;
	else:
		now TomeEventPending is true;

Section 5 - Influence system

an everyturn rule:
	if carried of ancient tome > 0 and TomeEventPending is false:
		if TomeInfluence is 0: [Never tempted by the book]
			if TomeInfluenceTimer - turns >= 8 and a random chance of 1 in 3 succeeds:
				say "     As you go about your business, you mind keeps going to the book inside your bag. You can't help but be tempted to pull out the [bold type]ancient tome[roman type], just to see why you're so drawn to it.";
				now TomeInfluenceTimer is turns;
				now TomeInfluence is 1;
		else if TomeInfluence is 1: [Tempted by the book once]
			if TomeInfluenceTimer - turns >= 8 and a random chance of 1 in 3 succeeds:
				say "     You glance at your bag, a sudden desire to read the [bold type]ancient tome[roman type] entering your mind. Something about the book seems to be calling to you, and you can't help but be just a bit fearful of the thing.";
				now TomeInfluenceTimer is turns;
				now TomeInfluence is 2;
		else if TomeInfluence is 2: [Tempted by the book twice]
			if TomeInfluenceTimer - turns >= 8 and a random chance of 1 in 3 succeeds:
				say "     You blink, suddenly aware that your hand is reaching into your bag, seemingly on its own accord. Wondering what could possibly be going on, you grab the first thing you touch and pull it out. It just so happens to be the [bold type]ancient tome[roman type]! You glance over its leather cover, running your fingers across its surface for a second before you flip the cover open, going to a random page. Much to your amazement, you can actually read the words there! [bold type]Perhaps you could give it a read, now that you can actually do so?[roman type]";
				now TomeInfluenceTimer is turns;
				now TomeInfluence is 3;
		else if TomeInfluence is 3: [Tempted fully]
			if TomeInfluenceTimer - turns >= 8:
				say "     You can't help but feel drawn to the book inside your bag. The [bold type]ancient tome[roman type] really seems like it wants you to [if TomeInteractions is 0]read it, now that you finally can[else]read it once more[end if].";
				now TomeInfluenceTimer is turns;
	if DemonFoxRead is true and DemonFoxInteractions is 0 and (cocks of player is not 0 and cunts of player is 0) and TomeTimer - turns >= 4 and daytimer is night:
		say "[DemonFoxFirstEncounter]";
	if TentacleRead is true and TentacleInteractions is 0 and (cocks of player is not 0 and cunts of player is 0) and TomeTimer - turns >= 8 and (a random chance of 1 in 3 succeeds) or (TomeTimer - turns >= 11):
		say "[TentaclesFirstEncounter]";


Section 6 - Dev Cheats

GetTome is an action applying to nothing.
Understand "givetome" as GetTome.

Carry out GetTome:
	say "     Done.";
	increase carried of ancient tome by 1;

Additional Tome Scenes ends here.
