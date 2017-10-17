Version 1 of Additional Tome Scenes by Dys begins here.
[v1 - Adds tentacles and demon fox.]

"Adds additional content to the Ancient Tome item."

[ TomeTimer tracks how long it's been since the player has been             ]
[ influenced by the tome.                                                   ]
[ TomeInfluence tracks how much the player has been influenced              ]
[   0 = Never influenced. Cannot use tome.                                  ]
[   1 = Influenced once. Cannot use tome.                                   ]
[   2 = Influenced twice. Cannot use tome.                                  ]
[   3 = Influenced three times. Can now use the tome.                       ]
[ TomeInteractions tracks the number of times the player has used the tome. ]
[ TentacleInteractions tracks the number of times the player interacted     ]
[ with the tentacles.                                                       ]
[ DemonFoxInteractions tracks the number of times the player interacted     ]
[ with the demon fox.                                                       ]
[ DemonFoxRead indicates whether or not the player has read about the       ]
[ demon fox.                                                                ]
[ TentacleRead indicates whether or not the player has read about the       ]
[ tentacles.                                                                ]

Section 1 - Variables

TomeTimer is a number that varies. TomeTimer is usually 5000.
TomeInfluence is a number that varies. TomeInfluence is usually 0.
TomeInteractions is a number that varies. TomeInteractions is usually 0.
TentacleInteractions is a number that varies. TentacleInteractions is usually 0.
DemonFoxInteractions is a number that varies. DemonFoxInteractions is usually 0.
DemonFoxRead is a truth state that varies. DemonFoxRead is usually false.
TentacleRead is a truth state that varies. TentacleRead is usually false.

Section 2 - Menus

to say TomeSexMenu:
	say "     The dark book seems to draw you towards it. You can't help but to be tempted to use it. Do you give in? If so, what will you do with it?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row from table of fucking options;
	now title entry is "Summon a tentacle monster";
	now sortorder entry is 1;
	now description entry is "Perhaps you could get the tentacle monster to have it's way with you";
	[]
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
						say "[DemonFoxSex]";
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
					now TomeInteractions is 1;
				else:
					say "     You shake your head, deciding that there's not really any benefit to reading the contents of the book, before you place it back in your pack and move along.";
			else if TomeInteractions is 1: [Second use]
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
					now TentacleRead is true;
					now TomeInteractions is 2;
					now TomeTimer is turns;
				else if calcnumber is 2:
					say "placeholder.";
					now DemonFoxRead is true;
					now TomeInteractions is 2;
					now TomeTimer is turns;
				else if calcNumber is 0:
					say "     You shake your head before slamming the book closed. Both of the ideas don't appeal to you, and honestly, you're not entirely sure why you opened the damn thing in the first place.";
			else if TomeInteractions is 2: [3+ uses]
				say "[TomeSexMenu]";
				now TomeTimer is turns;
		else:
			say "     You contemplate using the dark book for only a moment before shaking your head. Using it too often may be a bad idea.";

Section 4 - Sex Scenes

to say TentacleSex:
	say "     Placeholder.";

to say DemonFoxSex:
	say "     Placeholder.";

to say DemonFoxFirstEncounter:
	say "     Out of nowhere, you're tackled to the ground! A large weight is pressing down upon your back and feel the hot breath of something along the back of your neck. Pinned as you are, you're unable to get a good look at your assailant, even as you feel sharp claws rip through your clothing, leaving you fully exposed to whatever it is that's attacking you. Suddenly, you feel a long, fluffy object wrapping around your midsection before it hoists you into the air, tossing you back onto the ground on your back. You're eyes widen and you let out a gasp as you see the huge demonic fox you read about earlier standing over you.";
	say "     Before you get a chance to react, the fox has you pinned once more, it's massive forepaws pinning you to the ground as it snarls in your face. 'Seems like I've finally got something to play with,' he says, surprising you slightly. 'I'm going to enjoy [if player is mpreg_ok]breeding[else]fucking[end if] you like the bitch you [if player is submissive]are[else]should be[end if].'";
	WaitLineBreak;
	say "     Mustering your strength, you manage to throw the beast off of you, causing him to let out a surprised grunt. You quickly scramble to your feet and ready yourself for a fight. 'Oh, so you're a fiesty one, eh?' he asks, licking his chops and narrowing his eyes at you. 'I like that...'";
	now inasituation is true;
	challenge "Demon Fox";
	if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "[DemonFoxFirstLoss]";
	else if fightoutcome is 30: [fled]
		say "[DemonFoxFirstFlee]";
	else if fightoutcome < 20: [player won]
		say "[DemonFoxFirstVictory]";
	now inasituation is false;

Section 5 - Influence system

an everyturn rule:
	if carried of ancient tome > 0 and (cocks of player is not 0 and cunts of player is 0):
		if TomeInfluence is 0: [Never tempted by the book]
			if TomeTimer - turns >= 8 and a random chance of 1 in 3 succeeds:
				say "     As you go about your business, you mind keeps going to the book inside your bag. You can't help but be tempted to pull out the [bold type]ancient tome[roman type], just to see why you're so drawn to it.";
				now TomeTimer is turns;
				now TomeInfluence is 1;
		else if TomeInfluence is 1: [Tempted by the book once]
			if TomeTimer - turns >= 8 and a random chance of 1 in 3 succeeds:
				say "     You glance at your bag, a sudden desire to read the [bold type]ancient tome[roman type] entering your mind. Something about the book seems to be calling to you, and you can't help but be just a bit fearful of the thing.";
				now TomeTimer is turns;
				now TomeInfluence is 2;
		else if TomeInfluence is 2: [Tempted by the book twice]
			if TomeTimer - turns >= 8 and a random chance of 1 in 3 succeeds:
				say "     You blink, suddenly aware that your hand is reaching into your bag, seemingly on it's own accord. Wondering what could possibly be going on, you grab the first thing you touch and pull it out. It just so happens to be the [bold type]ancient tome[roman type]! You glance over its leather cover, running your fingers across its surface for a second before you flip the cover open, going to a random page. Much to your amazement, you can actually read the words there! [bold type]Perhaps you could give it a read, now that you can actually do so?[roman type]";
				now TomeTimer is turns;
				now TomeInfluence is 3;
		else if TomeInfluence is 3: [Tempted fully]
			if TomeTimer - turns >= 8:
				say "     You can't help but feel drawn to the book inside your bag. The [bold type]ancient tome[roman type] really seems like it wants you to [if TomeInteractions is 0]read it, now that you finally can[else]read it once more[end if].";
				now TomeTimer is turns;
	if DemonFoxRead is true and DemonFoxInteractions is 0 and (cocks of player is not 0 and cunts of player is 0) and TomeTimer - turns >= 4 and daytimer is night:
		say "[DemonFoxFirstEncounter]";
	if TentacleRead is true and TentacleInteractions is 0 and (cocks of player is not 0 and cunts of player is 0) and TomeTimer - turns >= 4 and a random chance of 1 in 3 succeeds:
		say "     You're raped by a tentacle monster! Oh noes!";


Section 6 - Dev Cheats

GetTome is an action applying to nothing.
Understand "givetome" as GetTome.

Carry out GetTome:
	say "     Done.";
	increase carried of ancient tome by 1;

Additional Tome Scenes ends here.
