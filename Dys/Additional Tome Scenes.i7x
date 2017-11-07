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
[ TentacleStatus stores the state of the player and the tentacles           ]
[   0  = Never encountered                                                  ]
[   10 = Encountered and fled                                               ]
[   12 = Encountered and got raped                                          ]

Section 1 - Variables

TomeTimer is a number that varies. TomeTimer is usually 5000.
TomeInfluence is a number that varies. TomeInfluence is usually 0.
TomeInteractions is a number that varies. TomeInteractions is usually 0.
TentacleInteractions is a number that varies. TentacleInteractions is usually 0.
DemonFoxInteractions is a number that varies. DemonFoxInteractions is usually 0.
DemonFoxRead is a truth state that varies. DemonFoxRead is usually false.
TentacleRead is a truth state that varies. TentacleRead is usually false.
TentacleStatus is a number that varies. TentacleStatus is usually 0.

Section 2 - Menus

to say TomeSexMenu:
	say "     The dark book seems to draw you towards it. You can't help but to be tempted to use it. Do you give in? If so, what will you do with it?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if TentacleInteractions > 0:
		choose a blank row from table of fucking options;
		now title entry is "Summon a tentacle monster";
		now sortorder entry is 1;
		now description entry is "Perhaps you could get the tentacle monster to have it's way with you";
	[]
	if DemonFoxInteractions > 0:
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
	say "     You pull the tome out of your pack once more, looking over it's leather cover for a moment before deciding that giving it another read wouldn't hurt too much. After all, you only read about half of it, previously! You should at least finish what you started.";
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
		say "     As you read about the mass of tentacles, your eyes widen in horror. Apparently, the tentacles will not only rape the player, they also sometimes lay eggs in their victims. No one is exactly sure why the tentacles do this, or who they'll do it to, as it seems to be random. If there's one good thing to note, it's that the tentacles don't usually fertilize the eggs. Instead, they leave them there for the victim to do with as they please. You shut the book after reading the page, shaking your head in attempt to get thought of egg-laying tentacles out of your head.";
		now TentacleRead is true;
		now TomeInteractions is 2;
	else if calcnumber is 2 and DemonFoxRead is false:
		say "     Looking over the page about the fox, you manage to learn a few things. The demon fox is apparently able to change it's size to whatever it desires. In addition, it's cum is said to glow a bright orange, almost like lava. The fox is also supposedly very possesive and domineering, desiring to have others submitting to it. Anyone who has encountered the beast has reaffirmed that fact.";
		now DemonFoxRead is true;
		now TomeInteractions is 2;
	else if DemonFoxRead is true or TentacleRead is true:
		say "     You've already read about that!";
	else if calcNumber is 0:
		say "     You shake your head before slamming the book closed. Both of the ideas don't appeal to you, and honestly, you're not entirely sure why you opened the damn thing in the first place.";

Section 4 - Other Scenes

to say TentacleSex:
	say "     You look over the instructions on how to summon the tentacle beast before shaking your head. You've had enough time with that thing.";
	say "     [italic type]More content will be added with the tentacles in the future[roman type].";

to say DemonFoxMenu:
	say "     You recite the incantation shown in the book, albeit with a little difficulty. With a flash of light, you see the demon fox from before standing in front of you.";
	if DemonFoxStatus is 10:
		say "     'Well, if it isn't my pet from before...' the beast purrs out. 'You gonna try fighting me again? If so, I'm really not in the mood. I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFoxStatus is 11; [met after losing to him, he apologized]
		now TomeTimer is turns;
	else if DemonFoxStatus is 11 or DemonFoxStatus is 21 or DemonFoxStatus is 31 or DemonFoxStatus is 42:
		say "     Ren looks over you before he shakes his head. 'I already told you, kid, I'm not looking for another go just yet. Maybe sometime in the future.' With that abrupt dismissal, the fox disappears once more.";
	else if DemonFoxStatus is 20:
		say "     'Well, if it isn't my pet from before...' the beast purrs out. 'You wanna try actually fighting me this time? If so, I'm really not in the mood. I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFoxStatus is 21; [met after submitting, he apologized]
		now TomeTimer is turns;
	else if DemonFoxStatus is 30:
		say "     'Well, if it isn't the kit from before...' the beast purrs out. 'You gonna run away again? If so, I hate to break it to you, but I'm actually not always interested in sex and fighting.' You blink at him incredulously. 'I'm really not. It might have appeared that way from our first encounter, but I'll be the first to admit that I... didn't make a great first impression.'";
		say "     'Perhaps we can try this again. I'm Kal['] Ren, but you can just call me Ren,' he nods in introduction. Tentatively you introduce yourself as well. 'See? That wasn't so hard, now was it, kit?' he asks. 'However, I do believe that's enough chit-chat for now. Perhaps sometime in the future we can have another go.' With that, the fox disappears in another flash of light, leaving you slightly confused at everything that just transpired.";
		now DemonFoxStatus is 31; [met after fleeing, he apologized]
		now TomeTimer is turns;
	else if DemonFoxStatus is 40 or DemonFoxStatus is 41:
		say "     'Well, if it isn't you,' the demon greets in a surprisingly happy tone. 'You know, it's rare for a mortal to beat me in combat, but you managed it, amazingly. I respect you for that,' he says. 'The name's Kal['] Ren, by the way. You can just call me Ren.' You tentatively introduce yourself as well.";
		say "     'I know I said you could summon me if you were ever in the mood for a good breeding, but funnily enough, I'm actually not really feeling up to it right now. Sorry to say that.' He hesitates for just a moment before continuing, 'Maybe sometime in the future, though. I'll admit that you've piqued my interest.' Without giving you a chance to reply, he disappears in a flash of light, leaving you somewhat dumbfounded at the whole interaction.";
		now DemonFoxStatus is 42;
		now TomeTimer is turns;

to say DemonFoxFirstEncounter:
	say "     Out of nowhere, you're tackled to the ground! A large weight is pressing down upon your back and feel the hot breath of something along the back of your neck. Pinned as you are, you're unable to get a good look at your assailant, even as you feel sharp claws rip through your clothing, leaving you fully exposed to whatever it is that's attacking you. Suddenly, you feel a long, fluffy object wrapping around your midsection before it hoists you into the air, tossing you back onto the ground on your back. You're eyes widen and you let out a gasp as you see the huge demonic fox you read about earlier standing over you.";
	say "     Before you get a chance to react, the fox has you pinned once more, it's massive forepaws pinning you to the ground as it snarls in your face. 'Seems like I've finally got something to play with,' he says, surprising you slightly. 'I'm going to enjoy [if player is mpreg_ok]breeding[else]fucking[end if] you like the bitch you [if player is submissive]are[else]should be[end if].'";
	WaitLineBreak;
	say "     Mustering your strength, you manage to throw the beast off of you, causing him to let out a surprised grunt. You quickly scramble to your feet and ready yourself for a fight. 'Oh, so you're a feisty one, eh?' he asks, licking his chops and narrowing his eyes at you. 'I like that...'";
	now inasituation is true;
	challenge "Demon Fox";
	if fightoutcome >= 20 and fightoutcome <= 30: [lost or submitted]
		if HP of player > 0: [submitted]
			say "[DemonFoxFirstSubmit]";
		else: [lost]
			say "[DemonFoxFirstLoss]";
	else if fightoutcome > 30: [fled]
		say "[DemonFoxFirstFlee]";
	else if fightoutcome < 20: [player won]
		say "[DemonFoxFirstVictory]";
	now inasituation is false;
	now DemonFoxInteractions is 1;

to say TentaclesFirstEncounter:
	say "     As you're going about your business, something suddenly wraps around you legs. You're harshly yanked backwards, and you fling out your arms in a desperate attempt to avoid smashing your face on the ground. Once that's been taken care of, you whirl around to look at what's ensnared you. The sight that greets you makes you skin go cold. A writhing mass of purple tentacles are jutting out of the ground, each coated in a slick, sticky slime. Desperately, you yank your foot away, manages to get it out of the tendrils grasp.";
	say "     [bold type]You need to take advantage of you momentary freedom! What do you do?";
	say "     [link]Run away as fast as you can![as]y[end link] - (Y)[line break]";
	say "     [link]See if you can find some sort of central mass.[as]n[end link] - (N)[line break]";
	if player consents:
		say "     You dash off into the city, having no idea where you're going. The mass of tentacles are following closely behind for a while, but soon enough, they seem to reach the perceived limits of their length. You keep running for a while longer, just to be sure that you've managed to escape them. When you're sure you're in the clear, you stop, panting to catch your breath. That was too close for comfort...";
		now TentacleInteractions is 1;
		now TentacleStatus is 10; [Player fled]
		WaitLineBreak;
	else:
		say "     With a righteous yell, you charge straight into the mass of tentacles, looking for some sort of central mass so you can kill the thing! However, as you get closer and closer to the origin of the tentacles, you're distraught to see that there's no obvious [']brain['] controlling the mass. They just seem to be coming out of the ground! Realizing your mistake, you try to back-pedal away, hoping to escape. You're never given that opportunity, however, as four of the writhing tendrils latch onto each of your limbs, wrapping around them and hoisting you into the air. They pull each limb in a different direction, leaving you completely spread eagle.";
		WaitLineBreak;
		say "     A new, slimmer tentacle slips under your shirt, before yanking it off of your body. Another similar tendril slips into the rest of your clothing, pulling that away from your body as well. More of the tentacles caress over your body, leaving slimy trails of blue fluid in their wake. You let out a startled gasp as you feel a new tendril slipping between your ass cheeks before pressing its way into your hole mercilessly. The thing worms its way into you slowly and deliberately, winding around your interior paths, before it begins to pull out.";
		if player is mpreg_ok:
			say "     Having found what it was looking for, you soon feel another, wider tentacle pushing its way into you. You open your mouth to let out a gasp of pain from the sudden intrusion, however, that to is suddenly filled with a drooling tendril. The new tentacle in your mouth leaks some sort of strange fluid, and you're forced to swallow it down. Your body flushes with heat as the liquid seems to arouse you, despite what's happening to you. Suddenly, the tentacles in each end of your body begin to thrust in and out in sync, pistoning in and out of your holes with determined fervor.";
			WaitLineBreak;
			say "     Eventually, their pace picks up, and the one in your mouth crams its way down your throat, forcing itself down your esophagus painfully. The one in your ass pushes further inwards as well, finding the entrance to your hidden womb, before it presses into there as well. With the tips exactly where the monster needs them, the tendrils quiver before you can see several pulsing bulges coming through both of them. At first, you're just expecting them to be this monster's equivalent of cum. This hypothesis is proven incorrect, however, when the first bulge reaches your mouth. It forces its way into you, definitely more solid than you were expecting. It's at this moment that you realize that the bulges aren't cum at all! They're eggs!";
			say "     The fleshy orb in your mouth forces itself down your throat before it comes to lie in your stomach. The next ones are following closely behind it. It's at this time that you feel the first egg pressing into your asshole, yawning the orifice open wider before it pushes in as well. The orb travels through your body before it comes to rest in your womb. As with the tendril in your mouth, this one keeps pumping eggs into you. Egg after egg gets pushed into you, and you can help but whimper in fear as you see your stomach bulging outwards, multiple distinct eggs visible through the stretched skin. Eventaully, you're completely stuffed full of the eggy cargo, and the tentacles withdraw from you.";
		else:
			say "     A new tentacle finds its way into your ass and begins thrusting wildly into you. The writhing appendage forces itself deep into you, only to yank itself out again. Another tendril slips into your mouth and starts thrusting into your throat roughly. This ritual continues for quite some time, before the tentacles stop, with their tips buried deep inside you. Each of the tendrils quiver before a fluid suddenly bursts from them. You can only guess it's the monster's cum, if the taste is anything to go by. You do your best to drink down all the fluids, and by the time the erruption of fluids has ended, your belly is distended almost comically. The two tendrils suddenly yank themselves out of you, and a flood of bluish semen leaks out of your abused holes.";
		WaitLineBreak;
		say "     The tentacles seem to be done with you, and you can't do anything to stop them anyway, so they just recede back into the ground. You're unsure if you'll ever see them again, or if you even want to...";

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
	if TentacleRead is true and TentacleInteractions is 0 and (cocks of player is not 0 and cunts of player is 0) and TomeTimer - turns >= 8 and a random chance of 1 in 3 succeeds:
		say "[TentaclesFirstEncounter]";


Section 6 - Dev Cheats

GetTome is an action applying to nothing.
Understand "givetome" as GetTome.

Carry out GetTome:
	say "     Done.";
	increase carried of ancient tome by 1;

Additional Tome Scenes ends here.
