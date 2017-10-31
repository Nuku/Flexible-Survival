Version 1 of Murder Mystery by Rikaeus begins here.
[Version 1 - new quest]

[   MurderMystery                                          ]
[   0: Hasn't begun                                        ]
[   1: Has encounted Jenna and body                        ]
[   2: Has inspected the body fully                        ]
[   3: Has learned all they can from the suspects          ]
[   4: Has solved the mystery                              ]
[   5: Has learned that player can purchase culprit        ]
[   6: Has gotten Nermine's required item for culprit, end ]

[ JennaRelationship (leader of Wolverine Security          ]
[   0: not met                                             ]
[   1: met, has been seen carrying in Jeremy               ]
[   2: met, has been seen interacting with Nermine         ]
[   3: met, has been seen guarding Nermine's shop          ]
[   4: has started Murder Mystery quest + agreed to help   ]
[   5: has resolved Murder Mystery quest                   ]

[   TawnyaFurSuspicion                                     ]
[   0: Not talked about yet                                ]
[   1: Says that she has no fur (unconfirmed)              ]
[   2: Has proved that she has no fur (after player charisma check, strip her naked) ]
[   3: Has proved that she has no fur, plus has had sex    ]

[   TawnyaMotive                                           ]
[   0: Not Talked about yet                                ]
[   1: Says she hasn't interacted with Tyler much          ]
[   2: Gordon says that Tyler had stole her backpack       ]
[   3: Tawnya says that no, she lent it to him             ]

[   CaneFurSuspicion                                       ]
[   0: Not talked about yet                                ]
[   1: Cane sneezes violently, proves he's allergic to it  ]

[   CaneMotive                                             ]
[   0: Not Talked about yet                                ]
[   1: Says that he has no motive for killing Tyler        ]
[   2: Barry says that the two argued quite a lot          ]
[   3: Admits it's true but was resolved yesterday         ]

[   BarryFurSuspicion                                      ]
[   0: Not Talked about yet                                ]
[   1: Says it can't be his as it is too soft, letting you feel]
[   2: Has proved that it's too soft and had sex           ]

[   BarryMotive                                            ]
[   0: Not Talked about yet                                ]
[   1: Says he has no motive                               ]
[   2: Cane says that Barry and Tyler's BF used to date    ]
[   3: Barry admits that even so, he would've killed Kevin instead]

[   GordonFurSuspicion                                     ]
[   0: Not Talked about yet                                ]
[   1: Says can't be his, that his fur is black            ]
[   2: Has learned that it used to be brown by Tawnya      ]
[   3: Has learned that it used to be brown via sex        ]

[   GordonMotive                                           ]
[   0: Not talked about yet                                ]
[   1: says he has no motive                               ]
[   2: Tawnya says that Gordon is Tyler's ex               ]
[   3: Says that he would've killed Kevin instead          ]

[   GordonApprehended                                      ]
[   0: Not done yet                                        ]
[   1: Has been given to Nermine                           ]
[   2: Has been purchased from Nermine                     ]

[   HP of Jenna                                            ]
[   0: Not Placed                                          ]
[   1: In Wolverine Guard Station                          ]
[   2: In Wolverine Lockup                                 ]

[   HP of Dead Body                                        ]
[   0: Not Placed                                          ]
[   1: In the Mall Atrium                                  ]

[   HP of Tawnya                                           ]
[   0: Not Placed                                          ]
[   1: In Lockup                                           ]

[   HP of Cane                                             ]
[   0: Not Placed                                          ]
[   1: In Lockup                                           ]

[   HP of Barry                                            ]
[   0: Not Placed                                          ]
[   1: In Lockup                                           ]

[   HP of Gordon                                           ]
[   0: Not Placed                                          ]
[   1: In Lockup                                           ]
[   2: In the Half-Renovated Room                          ]

[   BodyRelationship                                       ]
[   0: Hasn't examined anything                            ]
[   1: Has examined the cuts on the body                   ]
[   2: Has searched the body fully                         ]

[variables]
MurderMystery is a number that varies.
TawnyaFurSuspicion is a number that varies.
TawnyaMotive is a number that varies.
CaneFurSuspicion is a number that varies.
CaneMotive is a number that varies.
GordonFurSuspicion is a number that varies.
GordonApprehended is a number that varies.
GordonMotive is a number that varies.
BarryFurSuspicion is a number that varies.
BarryMotive is a number that varies.
BodyRelationship is a number that varies.

[Room Declaration]
East of the Mall Foyer is Wolverine Guard Station.
The description of Wolverine Guard Station is "[WolverineGuardStationDesc]".

to say WolverineGuardStationDesc:
	say "     The guard station is situated within a coffee shop. There are tiny little tables where big wolverines are sat at, working on paperwork their boss more than likely has assigned them. The shop counter has a wolverine sitting there with a lot more work than the others. Although judging by the fact that said male is also the receptionist, he surely must have more patience than the others. All in though, the place seems pretty homey and looks to be where the wolverines have also set up home as you can see a door with a sign that says sleeping quarters.";

[Room Declaration]
Wolverine Lockup is a room.
The description of Wolverine Lockup is "[WolverineLockupDesc]".

to say WolverineLockupDesc:
	say "     The place where they store their criminals seems to be located within a commandeered bank that they have connected to the station. You can tell this by the fact that on one side of the room is a massive vault door that is wide open, showing various security deposit boxes. However, the vault isn't where the suspects are stored, no, you see that they're held within the old cells that held money and other things in the bank. Overall, you think it's a pretty decent setup, and unlikely to fail unless the wolverines decide to hold someone much stronger than them and the bars.";

instead of going East from Mall West Wing while (JennaRelationship is 3 and MurderMystery < 1):
	if debugactive is 1:
		say "     DEBUG: Walk-in Event in the mall atrium. JennaRelationship: [JennaRelationship].MurderMystery: [MurderMystery].[line break]";
	say "     Upon heading into the mall atrium you are met with a rater gruesome sight. In the fountain that many residents of the mall have passed by was blood stained water and a red furred feline-morph. Surrounding the scene are many of the Wolverine Guards with Jenna shouting orders for them to secure the scene. She soon spots you and waves you over, a concerned look on her face. When you make your way there you get a closer look at the feline. The sight nearly makes you retch. There are vicious slashes all over the body that appear to have been made by a really sharp object if the cuts say anything. When you reach Jenna she sighs and turns to you. 'I can't believe this has happened,' the female wolverine says with a frown. You admit to her that you can't believe it either. She utters a sound of frustration before turning to you.";
	say "     'Would... would you help me with this investigation?' Jenna asks you tentatively. That... surprises you, mostly because you didn't expect to be asked to help with a murder case. You say that much to her, which she nods at. 'Yeah, normally before the whole infection shebang I wouldn't have asked. But... my... workers so to say, don't know that much about investigating murder. They'd much rather charge in,' the female wolverine explains. Well, that does make sense but what could you do? 'I don't know, investigate the scene for anything we've overlooked, maybe interrogate the suspects,' Jenna says. Suspects? 'Yeah, we have four suspects. But first I'll let you know about the victim,' the woman says before barking an order to one of her subordinates. He comes running over with a clipboard that he hands to you to look at.";
	WaitLineBreak;
	say "     'The victim is twenty-one year old Tyler Nyaning. He's a cat-morph with red fur, as you can see and was currently dating a male jaguar-morph named Kevin Javine,' she says as you look at the picture. So the victim had a boyfriend? Where was he at the time of the murder you wonder at loud. However, it appears that's a no go as Jenna shakes her head at you. 'Kevin's not a suspect, apparently the guy was all the way at the high rise district during the time of the murder,' she says with a sigh. The woman then tells you to flip the page, which you do so. You're met with the sight of a green scaled, female lizard-morph who has dark blue eyes. 'That's Tawnya Lisord, one of our four suspects. She's about twenty-five years old,' the female wolverine explains. You ask her as to how this suspect knew the victim. She gives you a toothy smile, making you feel like you've done something right. 'Good thought there, well you need to know that the four suspects and the victim all worked together under the supervising of the next suspect,' she says.";
	say "     You turn the page to see the next suspect and find your eyes met with a picture of a brown furred wolf-morph. In the picture he's giving a wolfish smile which makes his green eyes stand out. 'This is Cane Ein, he's twenty-three years old and runs the Doggy Bowl restauraunt out in the food court,' she explains. You nod once more and turn the page to find yourself face to face with a picture of a smiling male bear-morph with brown eyes. 'This is Barry Baire, twenty-eight years old. He does all the heavy lifting for Cane,' Jenna says before gesturing for you to turn the page. It appears to be the last page as you are met with the photograph of a black-furred monkey-morph with hazel eyes. 'This is Gordon Nanas, he's twenty-six years old and is Cane's head chef,' she says to you. After she finishes she tells you that you'll want to inspect the body. 'When you're done come to the mall foyer where our station is, you can interrogate the suspects there,' Jenna says before leaving you alone with the body and the guards.";
	now JennaRelationship is 4;
	now MurderMystery is 1;
	now HP of Dead Body is 1;
	move Dead Body to Mall Atrium;
	move player to Mall Atrium;

instead of going East from Mall Foyer while (JennaRelationship is 4 and MurderMystery is 2 and HP of Jenna is 0):
	if debugactive is 1:
		say "     DEBUG: Walk-in Event in Wolverine Guard Station. JennaRelationship: [JennaRelationship].MurderMystery: [MurderMystery].HP of Jenna: [HP of Jenna].[line break]";
	say "     When you enter the Guard Station after fully examining the body you spot Jenna standing against the wall by the impromptu desk the wolverines have set up. She spots you and walks over to you. 'Great! I'm guessing you've examined the body?' the female wolverine asks you. You nod and mention that you've found a few interesting facts. 'Oh? Really?' Jenna says, intrigued. You nod and show her the tuft of fur you found in the victim's hand as well as mention how the cuts appear to have been made with a professional knife. 'Hmm... well in a restaraunt you're bound to find those kinds of knives and two of the suspects have brown fur so...' she trails off. You nod and say that you'd like to question the suspects. 'Alright, just come talk to me when you want me to take you to lockup where they're being held,' Jenna says before going back to leaning against the wall";
	now HP of Jenna is 1;
	now HP of Tawnya is 1;
	now HP of Gordon is 1;
	now HP of Barry is 1;
	now HP of Cane is 1;
	move Tawnya to Wolverine Lockup;
	move Gordon to Wolverine Lockup;
	move Barry to Wolverine Lockup;
	move Cane to Wolverine Lockup;

Dead Body is man.
The description of Dead Body is "[TylerBodyDesc]".
The conversation of Dead Body is { "<This is nothing but a placeholder!>" }.
The scent of Dead Body is "     The body smells like a dead body would, disgusting and like copper. Though you think the last bit is due to all the blood.".

to say TylerBodyDesc:
	say "     The overall look of the dead body is rather gruesome. There are sharp cuts and gashes littering the body and from those spots, blood leaks from. Although because it has been some time since the body... has expired, it has tapered a weak trickle. You desperately wonder who could possibly have murdered this person during what is already a hectic time period.";

instead of conversing the Dead Body:
	if HP of Dead Body is 0: [should be not yet available]
		say "     ERROR: Tyler's dead body shouldn't be where a player can see it yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HP of Dead Body]";
	else:
		say "     As you walk up to the dead body you let out a sigh. Something like this should have never happened. With a vow to bring the murderer to justice, you get on your knees and begin to examine the body.";
		wait for any key;
		say "[TylerBodyTalkMenu]";

to say TylerBodyTalkMenu:
	say "[line break]";
	say "What about the body do you want to examine?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if BodyRelationship is 0: [Hasn't examined anything]
		choose a blank row in table of fucking options;
		now title entry is "The Cuts";
		now sortorder entry is 1;
		now description entry is "Try to learn about the cuts on the body";
	[]
	if BodyRelationship is 1: [Has examined the cuts]
		choose a blank row in table of fucking options;
		now title entry is "Search the body";
		now sortorder entry is 2;
		now description entry is "Search the body for anything of value";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "The Cuts"):
					say "[TylerBody1]";
				if (nam is "Search the body"):
					say "[TylerBody2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the dead body, shaking your head slightly as it gives no response.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;


to say TylerBody1:
	say "     You edge a little nearer to the rotting corpse and take a closer look. Upon examination of the cuts on the body you realize that they're actually clean cuts. There is almost no jaggedness to them. You muse and realize it implies that the murder weapon is a professional grade knife. If you think about it, wasn't one of the suspects the head chef of the Doggy Bowl? With a groan you move back, having examined everything that you can about the cuts. You should probably search the body for any clues.";
	now BodyRelationship is 1;

to say TylerBody2:
	say "     With a grimace at what you're about to do, you move your hands to the dead body. Like any deceased entity in running cold water, it's rather freezing. But you persist in the odd task, running your hands all over the corpse. First you check the shirt to see if there's anything there. Seconds later you discover nothing and move to the pants, to which the result is the same as earlier. It's not until you glance at the hand and see it's clenched around something. It takes a bit but you manage to pry it open to reveal a brown patch of fur grasped in the hand. It's not much but it's something to start with, so you grab it. With a groan you stand up. One of the Wolverine Guards come over to you and ask if you're done. You nod, and he and some of his buddies take the body away. You should get to Jenna. If you recall, the Wolverine Guard Station is east of the Mall Foyer.";
	now BodyRelationship is 2;
	move Jenna to Wolverine Guard Station;
	now MurderMystery is 2;
	remove Dead Body from play;

instead of fucking Dead Body:
	say "     'It's a dead body and you're in public. What are you expecting?";

Tawnya is a woman.
The description of Tawnya is "[TawnyaDesc]".
The conversation of Tawnya is { "<This is nothing but a placeholder!>" }.
The scent of Tawnya is "     Tawnya smells rather fresh, at least compared to the other suspects. The perfume coming off of her probably helps".

to say TawnyaDesc:
	say "     The lizard woman is wearing a waitress outfit, that covers up a lot compared to other outfits you've seen. You can't exactly tell what's under the dress and by the look on the lizard woman's face you'd rather not stare much longer. Other than her looks, Tawnya has set herself up in the corner of her cell, just standing there, irritated. When she sees you, you can tell that the woman's not exactly happy to see you.";

instead of conversing the Tawnya:
	if HP of Tawnya is 0: [should be not yet available]
		say "     ERROR: Tawnya shouldn't be where a player can see her yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HP of Tawnya]";
	else:
		say "     You walk up to the female suspect and tell the wolverine guarding her that you want to interrogate Tawnya. The male nods and then unlocks the cell before taking Tawnya by the hand and leading both of you to the interrogation room.";
		wait for any key;
		say "[TawnyaTalkMenu]";

to say TawnyaTalkMenu:
	say "[line break]";
	say "What do you wish to talk about with the lizard girl?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (TawnyaFurSuspicion < 3 or GordonFurSuspicion is 1):
		choose a blank row in table of fucking options;
		now title entry is "Fur Suspicion";
		now sortorder entry is 1;
		now description entry is "Try to learn about her and the fur";
	[]
	if TawnyaMotive < 3:
		choose a blank row in table of fucking options;
		now title entry is "Motive Suspicion";
		now sortorder entry is 2;
		now description entry is "Try to learn about her motives for killing Tyler";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fur Suspicion"):
					say "[TawnyaFurEvidence]";
				if (nam is "Motive Suspicion"):
					say "[TawnyaMotive]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head and tell the guard at the door that you don't have anything to say to her. He takes both of you back to lockup.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;


to say TawnyaFurEvidence:
	if TawnyaFurSuspicion is 0: [never talked about it]
		say "     Moving your hand into your pocket, you pull out the patch of brown fur and show it to her. 'The hell you showing it to me, are you stupid?' she asks you, her tone belaying that she does believe you are dumb. You tell her that you found it on the body and thought that it might be hers. The look on her face now says that Tawnya thinks you're beyond idiocy right now. 'I'm a fucking lizard-morph. I ain't got no fur on any part of my body. Are you blind?' She snarks. You shake your head mentally at her insults as you do believe you should check every possibility.";
		say "     [bold type]Believe her? She might not be pure lizard...[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Sure, she seems trustworthy.";
		say "     ([link]N[as]n[end link]) - Nope, it's time to strip!";
		if player consents:
			say "     [line break]";
			say "     She seems like a pretty trustworthy person, so you nod at her comment that she has no fur. Seeing the time, you realize you've been here a tiny bit and it appears the guard knows this too. The guard walks up and grabs Tawnya by the hand. He tells you that if you want to talk to her again, just approach her, otherwise she needs to go back to her cell. You nod and follow the guard and the irritated lizard woman back to lockup where you're once more face to face with the other suspects.";
			now TawnyaFurSuspicion is 1; [she said she has none]
		else:
			say "     [line break]";
			say "     [bold type]How do you want to get to her fur?[roman type][line break]";
			say "     [line break]";
			say "     ([link]Y[as]y[end link]) - Sex her up";
			say "     ([link]N[as]n[end link]) - Talk her into showing you everything";
			if player consents:
				say "     You offer to lick Tawnya's pussy in exchange for seeing her naked, which prompts a smile from the lizard girl. 'You really know how to convince a girl,' she says a toothy smile aimed towards you. Turning towards the guard, you ask him to leave the two of you alone, said male shrugging before doing so. Immeadiately after that Tawnya gets rid of her clothes, revealing her scaly legs and breasts, proving very much so far that she's all lizard. You hesitate worrying for a moment if she might try anything but you realise being in a locked room with a guard right outside the door there's little reason to be concerned. Following that thought, you move over to her, kneeling in front of her before she moves her musky pussy over your face. 'I'll appreciate it if you lick nice and deep.' Tawnya says almost moaning as lust starts affecting her.";
				say "     You do as she asks and start moving your tongue inside her twat as the lizard girl squirms and releases a steady flow of nectar which you quickly lap up. Soon she starts releasing a steady stream of quiet moans obviously trying to suppress the sound she makes as you continue eat her out. Eventually after some time of stimulating her Tawnya pushes herself harder onto your face making it difficult to breathe while releasing a long rolling moan signalling her orgasm, you put pressure on her legs to try and get room to breathe and she finally starts standing up. 'You have a gift there, my friend,' she says, slowly getting dressed, briefly turning around to allow you to get a look of her back. Once that's done, you call the guard back in and have him escort the both of you back to lockup where you wonder what to do next.";
				now TawnyaFurSuspicion is 3; [the player has seen her naked after sex and _knows_ she has none]
			else:
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
				if diceroll + bonus >= 16:
					say "     '...Alright, fine I'll show you, you have me convinced.' Tawnya says with a sigh. The lizard woman stands up and begins stripping her clothing off piece by piece until she's completely naked. Once she is, she does a twirl, which allows you to see all of her. It turns out that the lizard-morph wasn't lying, as there isn't a single piece of fur visible on her, proving that she's a full lizard. 'You've seen what you've needed?' Tawnya asks. You nod and she gets dressed before the guard lets you know that it's time for food for the suspects. He then takes both of you back to lockup.";
					now TawnyaFurSuspicion is 2; [the player has seen her naked and _knows_ she has none]
				else:
					say "     'Fuck off! I ain't strpping for you unless there's an incentive for me.' She swears at you, eyes glaring at you. You raise your hands up in surrender before backing off. You then turn to the wolverine guard and tell him that you're done with her for now. He nods and grabs her before leading the two of you back to lockup where you muse on who you should talk to next. Though maybe you should make another attempt at convincing Tawnya";
					now TawnyaFurSuspicion is 1; [she said she has none]
	else if TawnyaFurSuspicion is 1: [she said before she has no fur]
		say "     'You're totally a fucking dumbass, I told you I DON'T HAVE FUR!' she says, yelling the last part into your face. Though she does back down when the wolverine gets into a pose that basically says that if she doesn't then he'll attack her. Instead, she just grumbles about idiots who don't know when to give up. However, while she's having her quiet monologue you realize you asked her again because you couldn't truly accept her earlier response at face value. Although.... then again she does seem trustworthy.";
		say "     [bold type]Believe her? She might not be a pure lizard...[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Sure, she seems trustworthy.";
		say "     ([link]N[as]n[end link]) - Nope, it's time to strip!";
		if player consents:
			say "     [line break]";
			say "     You shake your head and decide to accept her statement once again. For one, the female lizard appears to be getting rather pissed at you and for two, while that anger is there, she does seem to be trustworthy. So, with a sigh you tell the Wolverine that you're done for now. He moves to Tawnya and grabs her arm, a little tightly if the wince on the lizard woman's face said anything. But then again she should have known better than to get angry in the presence of a wolverine when she's a suspect. They don't take no shit from potential law breakers, especially severe ones like murder. The two of you are then directed back to the lockup where you see the other suspects.";
			now TawnyaFurSuspicion is 1; [she said she has none]
		else:
			say "     [line break]";
			say "     [bold type]How do you want to get to her fur?[roman type][line break]";
			say "     [line break]";
			say "     ([link]Y[as]y[end link]) - Sex her up";
			say "     ([link]N[as]n[end link]) - Talk her into showing you everything";
			if player consents:
				say "     You offer to lick Tawnya's pussy in exchange for seeing her naked, which prompts a smile from the lizard girl. 'You really know how to convince a girl,' she says a toothy smile aimed towards you. Turning towards the guard, you ask him to leave the two of you alone, said male shrugging before doing so. Immeadiately after that Tawnya gets rid of her clothes, revealing her scaly legs and breasts, proving very much so far that she's all lizard. You hesitate worrying for a moment if she might try anything but you realise being in a locked room with a guard right outside the door there's little reason to be concerned. Following that thought, you move over to her, kneeling in front of her before she moves her musky pussy over your face. 'I'll appreciate it if you lick nice and deep.' Tawnya says almost moaning as lust starts affecting her.";
				say "     You do as she asks and start moving your tongue inside her twat as the lizard girl squirms and releases a steady flow of nectar which you quickly lap up. Soon she starts releasing a steady stream of quiet moans obviously trying to suppress the sound she makes as you continue eat her out. Eventually after some time of stimulating her Tawnya pushes herself harder onto your face making it difficult to breathe while releasing a long rolling moan signalling her orgasm, you put pressure on her legs to try and get room to breathe and she finally starts standing up. 'You have a gift there, my friend,' she says, slowly getting dressed, briefly turning around to allow you to get a look of her back. Once that's done, you call the guard back in and have him escort the both of you back to lockup where you wonder what to do next.";
				now TawnyaFurSuspicion is 3; [the player has seen her naked after sex and _knows_ she has none]
			else:
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Charisma Check):[line break]";
				if diceroll + bonus >= 16:
					say "     '...Alright, fine I'll show you, you have me convinced.' Tawnya says with a sigh. The lizard woman stands up and begins stripping her clothing off piece by piece until she's completely naked. Once she is, she does a twirl, which allows you to see all of her. It turns out that the lizard-morph wasn't lying, as there isn't a single piece of fur visible on her, proving that she's a full lizard. 'You've seen what you've needed?' Tawnya asks. You nod and she gets dressed before the guard lets you know that it's time for food for the suspects. He then takes both of you back to lockup.";
					now TawnyaFurSuspicion is 2; [the player has seen her naked and _knows_ she has none]
				else:
					say "     'Fuck off! I ain't strpping for you unless there's an incentive for me.' She swears at you, eyes glaring at you. You raise your hands up in surrender before backing off. You then turn to the wolverine guard and tell him that you're done with her for now. He nods and grabs her before leading the two of you back to lockup where you muse on who you should talk to next. Though maybe you should make another attempt at convincing Tawnya";
					now TawnyaFurSuspicion is 1; [she said she has none]
	else if TawnyaFurSuspicion is 2: [she showed before she has no fur]
		say "     'You've already seen that I have no fur so what the hell are you asking about that for?' the lizard-morph asks you. ";
		say "     [bold type]Get it on with her?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Sex with murder suspects is exciting!";
		say "     ([link]N[as]n[end link]) - Err, no - better not...";
		if player consents:
			say "     You offer to lick Tawnya's pussy in exchange for seeing her naked, which prompts a smile from the lizard girl. 'You really know how to convince a girl,' she says a toothy smile aimed towards you. Turning towards the guard, you ask him to leave the two of you alone, said male shrugging before doing so. Immeadiately after that Tawnya gets rid of her clothes, revealing her scaly legs and breasts, proving very much so far that she's all lizard. You hesitate worrying for a moment if she might try anything but you realise being in a locked room with a guard right outside the door there's little reason to be concerned. Following that thought, you move over to her, kneeling in front of her before she moves her musky pussy over your face. 'I'll appreciate it if you lick nice and deep,' Tawnya says almost moaning as lust starts affecting her.";
			say "     You do as she asks and start moving your tongue inside her twat as the lizard girl squirms and releases a steady flow of nectar which you quickly lap up. Soon she starts releasing a steady stream of quiet moans obviously trying to suppress the sound she makes as you continue eat her out. Eventually after some time of stimulating her Tawnya pushes herself harder onto your face making it difficult to breathe while releasing a long rolling moan signalling her orgasm, you put pressure on her legs to try and get room to breathe and she finally starts standing up. 'You have a gift there, my friend,' she says, slowly getting dressed, briefly turning around to allow you to get a look of her back. Once that's done, you call the guard back in and have him escort the both of you back to lockup where you wonder what to do next.";
			now TawnyaFurSuspicion is 3; [the player has seen her naked after sex and _knows_ she has none]
		else:
			say "You shake your head vigorously, sex with a murder suspect is a big no-no. If she is the murderer by some miracle, then you are liable to get murdered while you're doing the do. So instead you ask the guard to take her and you back to lockup. The wolverine nods at you and grabs Tawnya by the hand before leading the two of you back to your original location. There you are once more met with the sight of the other suspects, all doing their own things while the female lizard is being put back into her cell.";
	else if GordonFurSuspicion is 1: [Says it can't be his fur cause it is black]
		say "     You mention that Gordon said that the fur can't be his, saying that his fur is black. That appears to cause the female lizard to break out into hysterical laughter. 'Gordon? Black fur? Ahahah! That's a blatant fucking lie if I ever heard one,' Tawnya says, laughing really hard. You ask her what she means, as the monkey quite clearly has black fur at the moment. She shakes her head at you. 'No, that happened this morning. It was a bet between Tyler and Gordon that Gordon lost. So he had to dye his precious brown fur black, with Tyler's help,' she says. Wait, so the monkey actually had brown fur? So... him outright lying about it not being brown appears rather suspicious. You keep that in mind for later. Seeing nothing else to ask at the moment, you have the guard take both of you back to the lockup.";
		now GordonFurSuspicion is 2; [Has learned that it was brown from Tawnya]

to say TawnyaMotive:
	if TawnyaMotive is 0:
		say "     'Motive? I wouldn't really have one, since I didn't really interact with the cat that much,' she says nonchalantly. You sigh at the indifferent answer and then a different thought comes up. You instead ask her if any of the other suspects have any motive for murdering Tyler. That does appear to form a glint of recognition in her eyes. 'The others? Now that I think about it, Gordon may have a motive for killing Tyler. He was dumped by Tyler just so the cat could date Kevin. Rather heartless if I do say so myself,' Tawyna says. You wince at that and internally agree. You'd be pretty pissed if your boyfriend or girlfriend dumped you just to date someone else. The wolverine guard interrupts you two and says that time's up for now. So, you and the lizard woman are led back to lockup.";
		now TawnyaMotive is 1;
		now GordonMotive is 2;
	else if TawnyaMotive is 2:
		say "     'That backpack of mine?' she asks, clearly confused. You nod again, saying that Gordon said that Tyler stole it from you. Tawnya shakes her head at you. 'Nah, I lent the backpack to the guy. He needed something to carry supplies in and I wasn't using it at the time. If he had stolen it though I wouldn'tve been that pissed either,' the female lizard says. You ask her why's that, to which she smiles at you. 'Well, just two days ago I got a brand new backpack from one of the mallrats. He said it was a gift for being a waitress,' the woman says. You blink at that. Just for being a waitress? 'Yup! I get gifts like this all the time though this is the first that it's something useful. Usually it's expensive perfume that I rarely use, like today,' the lizard says. You nod and are then told it's time for Tawnya's meal. The two of you are then led back to lockup.";
		now TawnyaMotive is 3;

instead of fucking Tawnya:
	say "     'Ahaha, no. You can try better than just asking me to fuck,' she says with a roll of her eyes.";

Cane is a man.
The description of Cane is "[CaneDesc]".
The conversation of Cane is { "<This is nothing but a placeholder!>" }.
The scent of Cane is "     The brown-furred doggy smells of musk and food, which is to be expected as the owner of a restaraunt.".

to say CaneDesc:
	say "     The canine has brown fur, the same color as the fur you found in the victim's hand. Although, to be completely honest, you can't be one hundred percent sure that he is the culprit just on that alone. Beyond the fur, he has green eyes, just like the photo that you were presented with. Also, he's wearing a black shirt with red letters and a red dog bowl. The letters say 'Doggy Bowl' which make you think his top is the employee shirt for his restaraunt. When the dog looks your way he smiles at you and waves, clearly confident that he's innocent.";

instead of conversing the Cane:
	if HP of Cane is 0: [should be not yet available]
		say "     ERROR: Cane shouldn't be where a player can see him yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HP of Cane]";
	else:
		say "     You walk up to the canine suspect and tell the guard that you wish to interrogate him. The wolverine nods and grabs Cane out of the cell and leads the two of you to the interrogation room.";
		wait for any key;
		say "[CaneTalkMenu]";

to say CaneTalkMenu:
	say "[line break]";
	say "What do you wish to talk about with the dog?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if CaneFurSuspicion < 1:
		choose a blank row in table of fucking options;
		now title entry is "Fur Suspicion";
		now sortorder entry is 1;
		now description entry is "Try to learn about him and the fur";
	[]
	if (CaneMotive < 3 or BarryMotive is 1):
		choose a blank row in table of fucking options;
		now title entry is "Motive Suspicion";
		now sortorder entry is 2;
		now description entry is "Try to learn about his motives for killing Tyler";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fur Suspicion"):
					say "[CaneFurEvidence]";
				if (nam is "Motive Suspicion"):
					say "[CaneMotive]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head and tell the guard at the door that you don't have anything to say to him. He takes both of you back to lockup.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;


to say CaneFurEvidence:
	say "     Once the two of you are in the interrogation room you reach into your pocket and show him the patch of brown fur. He gives you an odd look, wondering why you'd show him that, he says as much too. 'What's that, a piece of trash you've found?' he asks. You shake your head and tell him that it was found in Tyler's hand at the scene of the crime. Following that, you make a move to bring the fur closer but suddenly Cane has a violent reaction to it. He begins to sneeze hard and bumps start to form on him. 'W-what the hell! That thing's doused in either cologne or perfume!' The dog shouts, moving as far as he can from the fur. You quickly put it away before asking him what he means. 'I'm allergic to cologne and perfume, so it can't be me. Though the other three wear cologne and perfume.' He admits. You nod, thank him, and then have the guard take the two of you back to lockup so that Cane can recover from his allergic reaction.";
	now CaneFurSuspicion is 1;

to say CaneMotive:
	if CaneMotive is 0:
		say "     'Me? I don't really have any reason to kill Tyler,' the dog says giving you a curious look. You ask him if he's sure about that. 'Yeah, the guy was my best Waiter. His looks would bring in loads of boys and girls.' Cane said. You nod and give out a sigh. Wanting to throw you a bone, he speaks up. 'However, Barry may have one. Tyler's current boyfriend used to date him before promptly dumping him for Tyler,' he tells you. That makes you smile as you thank the canine. Proceeding that, you tell the guard that you're done. The wolverine nods before taking the both of you back to lockup where you wonder what you'll do next.";
		now BarryMotive is 2;
		now CaneMotive is 1;
	else if CaneMotive is 2:
		say "     '...Ouch, you've heard about that?' he asks with a frown. You nod and then question about what the argument was for. 'Well, out of nowhere he wanted a vacation and I couldn't give it to him,' Cane says. Hmmm, well losing service could be a motive for the dog. 'Though, it was solved yesterday. Apparently one of his friends was going to fill in and I know the person, so it's all good,' the canine tells you, making you inwardly sigh at losing a suspect with a motive. The guard walks up to you and tells you it's time for the suspects['] lunch so he takes both of you back to lockup.";
		now CaneMotive is 3;

instead of fucking Cane:
	say "     '...Sorry but I have a husband and wife,' he says, shocking you with that statement. You shake your head and step back away from him.";

Barry is a man.
The description of Barry is "[BarryDesc]".
The conversation of Barry is { "<this is a placeholder!>" }.
The scent of Barry is "     The big bear smells heavily like musk, cologne.... and is that cotton candy?".

To say BarryDesc:
	say "     The bear is rather big, which is to be expected. But it looks like seventy-five percent of the weight on him is muscle while the other is fat. He has brown fur, brown eyes, and is wearing a simple black shirt with the words 'Doggy Bowl' on it and black jeans. Directing your attention to his face you can see he's a rather happy guy if the wide smile on his face says anything when he notices you looking at him. Overall he looks like someone you'd very much like to get to know.";

instead of conversing the Barry:
	if HP of Barry is 0: [should be not yet available]
		say "     ERROR: Barry shouldn't be where a player can see him yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [HP of Barry]";
	else:
		say "     You walk up to the bear he gives you a big smile. He asks you if you're here to interrogate him, his voice holding no anger, only kindness. You nod and have the Wolverine Guard take you two to the interrogation room.";
		wait for any key;
		say "[BarryTalkMenu]";

to say BarryTalkMenu:
	say "[line break]";
	say "What do you wish to talk about with the bear?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if BarryFurSuspicion < 1:
		choose a blank row in table of fucking options;
		now title entry is "Fur Suspicion";
		now sortorder entry is 1;
		now description entry is "Try to learn about him and the fur";
	[]
	if (BarryMotive < 3 or CaneMotive is 1):
		choose a blank row in table of fucking options;
		now title entry is "Motive Suspicion";
		now sortorder entry is 2;
		now description entry is "Try to learn about his motives for killing Tyler";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fur Suspicion"):
					say "[BarryFurEvidence]";
				if (nam is "Motive Suspicion"):
					say "[BarryMotive]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head and tell the guard at the door that you don't have anything to say to him. He takes both of you back to lockup.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BarryFurEvidence:
	if BarryFurSuspicion is 0: [never talked about it]
		say "     Once the two of you are situated in the interrogation room you pull out your only piece of physical evidence, the fur. Barry gives it a curious look, wondering why you brought that out. You mention that this was found in Tyler's dead hands and that since it doesn't match his, it was probably the killer's. The bear nods, following the conversation so far. 'So... what you want to know is if it's mine?' he asks you. You nod, saying that he got it right on the mark. 'Good, let me see it for a second.' Barry requests of you. It's odd but you shrug and hand it to him. The bear appears to feel it for a bit before laughing and setting it on the table.";
		say "     'It's not mine, it's far too soft to be. Here, feel my fur.' The guy says, pulling you hand to his fur. As soon as you touch the big male's fur you immediately can tell that it's not him. Compared to the evidence, the bear's is slightly rough, but not enough to cause discomfort. The evidence on the other hand is extremely soft, as if it was silk. However, you notice that your hand is groping Barry's body a bit, and said man is grinning widely at you. 'Ohoho, do you want a closer look?' He grins lewdly at you, causing a warmth to pool down below.";
		say "     [bold type]Do you want to frick frack with the big ol['] bear?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Sure! He doesn't seem too bad for a murder suspect.";
		say "     ([link]N[as]n[end link]) - Err, no - better not...";
		if player consents:
			say "     You smile at him and nod, causing the bear to give you a happy laugh. Turning to the guard, you ask him to leave the two of you alone. The guard looks weirdly at you before shrugging his shoulders and leaving to probably guard the door. Once you guys are alone, the bear starts shedding himself of his clothes, soon completley in the nude. You admire his body, the buff yet chubby looks of Barry, as well as what will be a big cock, if its soft state says anything. 'Hurry up and strip too, I gotta prepare you,' the guy cheerfully asks of you. Prepare? 'Mhm, I only do anal or blowjobs, but I want your ass right now.' The guy rumbles, the sound sending shivers up your spine. You shrug your shoulders and do as he asks, ridding yourself of your vestments and leaving you as naked as the day you were born. The bear then requests that you get up on the table, your ass facing him. Seeing no reason to ignore what he asks, you do so.";
			say "     Mere seconds later you feel the big guy's muzzle at your pucker, which is quickly proceeded by a wet feeling back there. You groan as his tongue, which it must be as you're pretty sure fingers can't bend that way, begins to explore your insides. The sensation continues for a bit, making you moan and wiggle on the table, ass in the bear's face as he rims you. Soon though, he pulls back, making you whine. 'Mmm well aren't you tasty.' Barry says, before placing two fingers at your asshole. He slowly pushes them in and begins to scissor at your entrance, causing you wince. 'Aw, don't be like that my little teddy bear. I have to get you ready.' The big bear rumbles, causing heat to pool in the cheeks on your face. After he stretches you for a while he pulls back his fingers. 'Alright, now come here and sit on my lap.' Barry tells you. You get up and see that he's sitting in his chair, legs wide open and cock slowly hardening.";
			WaitLineBreak;
			say "     With a mental gulp you slowly walk over to the bear and get onto his lap, positioning yourself so that his cock is poking at your pucker. The big guy wraps his arms around you and nuzzles your face with his muzzle, littering kisses on you, as he slowly pushes his dick into you. It appears that Barry's preparation did some good as the big prick doesn't cause as much pain as you thought it would. Inch by inch, his manhood buries itself into you. Once he's balls deep into you, he maneuvers your face so that it's facing his, with his muzzle no less, before kissing you softly. When he sees the confusion on your face the guy chuckles at you. 'You're probably wondering why I'm so soft with you, I'm like that with all my lovers. After all, I'm a big teddy bear afterall,' he says. Shortly after he finishes speaking he begins to pull out, quickly thrusting back in once only his cockhead is left in.";
			say "     Just as Barry said, the fucking is nice and loving with him kissing you softly, his tongue practically caressing yours the entire time. It's during this intimate time that you get rather familiar with his fur and once more confirm that your evidence couldn't point to him. Where the fur you found was extremely soft, the bear's fur was neither soft nor rough... it was just right. You slowly lose yourself in the love-making, for that was the only thing that the two of you were doing could be. You surrender yourself to the loving kisses, the hugs, and the nuzzles, all of it making you feel happy and peaceful. Sadly though, all things must come to an end and the bear soon climaxes, releasing his load into your ass, the warmth of it filling you up.";
			WaitLineBreak;
			say "     The two of you lay there just cuddling and sharing chaste kisses, enjoying the post-coitus bliss. During this time, you wonder if possibly the bear is single before shaking your head, you have a murder you need to solve. Perhaps after the mystery is solved? The two of you then get up and slowly get dressed. Once you two are fully clothed, the bear pulls you into one last kiss before speaking. 'I loved our time together, perhaps you could find me after all this clears up?' he asks you. You tell him with a smile that you'll think about it before asking the guard to come in. The wolverine tells you that it was a good thing you called him when you did, as it was time for the suspects' lunch. You nod and follow the guard and Barry back to lockup where you wonder what to do next.";
			now BarryFurSuspicion is 2;
		else:
			say "     You shake your head which causes the bear to give you a disappointed look. 'Well, if you change your mind, you know where to find me,' he says to you. You nod and then turn to the wolverine guard. Said male asks you what you want, so you tell him that you're done with Barry for now. The guy makes a humming noise before taking you two back to lockup where you wonder what you'll do next.";
			now BarryFurSuspicion is 1;
	if BarryFurSuspicion is 1:
		say "     'Oh? You're back? Are you up for a ride on the big bad bear?' Barry asks you, wiggling his eyebrows and grinning lewdly at you.";
		say "     [bold type]Do you want to frick frack with the big ol['] bear?[roman type][line break]";
		say "     [line break]";
		say "     ([link]Y[as]y[end link]) - Sure! He doesn't seem too bad for a murder suspect.";
		say "     ([link]N[as]n[end link]) - Err, no - better not...";
		if player consents:
			say "     You smile at him and nod, causing the bear to give you a happy laugh. Turning to the guard, you ask him to leave the two of you alone. The guard looks weirdly at you before shrugging his shoulders and leaving to probably guard the door. Once you guys are alone, the bear starts shedding himself of his clothes, soon completley in the nude. You admire his body, the buff yet chubby looks of Barry, as well as what will be a big cock, if its soft state says anything. 'Hurry up and strip too, I gotta prepare you,' the guy cheerfully asks of you. Prepare? 'Mhm, I only do anal or blowjobs, but I want your ass right now.' The guy rumbles, the sound sending shivers up your spine. You shrug your shoulders and do as he asks, ridding yourself of your vestments and leaving you as naked as the day you were born. The bear then requests that you get up on the table, your ass facing him. Seeing no reason to ignore what he asks, you do so.";
			say "     Mere seconds later you feel the big guy's muzzle at your pucker, which is quickly proceeded by a wet feeling back there. You groan as his tongue, which it must be as you're pretty sure fingers can't bend that way, begins to explore your insides. The sensation continues for a bit, making you moan and wiggle on the table, ass in the bear's face as he rims you. Soon though, he pulls back, making you whine. 'Mmm well aren't you tasty.' Barry says, before placing two fingers at your asshole. He slowly pushes them in and begins to scissor at your entrance, causing you wince. 'Aw, don't be like that my little teddy bear. I have to get you ready.' The big bear rumbles, causing heat to pool in the cheeks on your face. After he stretches you for a while he pulls back his fingers. 'Alright, now come here and sit on my lap.' Barry tells you. You get up and see that he's sitting in his chair, legs wide open and cock slowly hardening.";
			WaitLineBreak;
			say "     With a mental gulp you slowly walk over to the bear and get onto his lap, positioning yourself so that his cock is poking at your pucker. The big guy wraps his arms around you and nuzzles your face with his muzzle, littering kisses on you, as he slowly pushes his dick into you. It appears that Barry's preparation did some good as the big prick doesn't cause as much pain as you thought it would. Inch by inch, his manhood buries itself into you. Once he's balls deep into you, he maneuvers your face so that it's facing his, with his muzzle no less, before kissing you softly. When he sees the confusion on your face the guy chuckles at you. 'You're probably wondering why I'm so soft with you, I'm like that with all my lovers. After all, I'm a big teddy bear afterall,' he says. Shortly after he finishes speaking he begins to pull out, quickly thrusting back in once only his cockhead is left in.";
			say "     Just as Barry said, the fucking is nice and loving with him kissing you softly, his tongue practically caressing yours the entire time. It's during this intimate time that you get rather familiar with his fur and once more confirm that your evidence couldn't point to him. Where the fur you found was extremely soft, the bear's fur was neither soft nor rough... it was just right. You slowly lose yourself in the love-making, for that was the only thing that the two of you were doing could be. You surrender yourself to the loving kisses, the hugs, and the nuzzles, all of it making you feel happy and peaceful. Sadly though, all things must come to an end and the bear soon climaxes, releasing his load into your ass, the warmth of it filling you up.";
			WaitLineBreak;
			say "     The two of you lay there just cuddling and sharing chaste kisses, enjoying the post-coitus bliss. During this time, you wonder if possibly the bear is single before shaking your head, you have a murder you need to solve. Perhaps after the mystery is solved? The two of you then get up and slowly get dressed. Once you two are fully clothed, the bear pulls you into one last kiss before speaking. 'I loved our time together, perhaps you could find me after all this clears up?' he asks you. You tell him with a smile that you'll think about it before asking the guard to come in. The wolverine tells you that it was a good thing you called him when you did, as it was time for the suspects' lunch. You nod and follow the guard and Barry back to lockup where you wonder what to do next.";
			now BarryFurSuspicion is 2;
		else:
			say "     You shake your head which causes the bear to give you a disappointed look. 'Well, if you change your mind, you know where to find me,' he says to you. You nod and then turn to the wolverine guard. Said male asks you what you want, so you tell him that you're done with Barry for now. The guy makes a humming noise before taking you two back to lockup where you wonder what you'll do next.";

to say BarryMotive:
	if BarryMotive is 0:
		say "     'Motive? I don't think I'd ever hate Tyler.' The big guy says with a confused look on his face. To be honest you believe that as the bear appears way too amiacable to ever despise someone to the degree that murder would need. Although killing someone doesn't exactly require you to hate that person. After all, a person could whack another by accident. 'Though if you ask me, there is a chance that Cane has a motive. But I wouldn't ever want to think anything bad about him.' Barry says. That catches your attention and you question him as to why the dog would have a motive. 'Well... I don't want to say cause he gave me this job when I had none but... him and Tyler were arguing something fierce a few days ago,' he says. You keep that in mind and tell the guard that you're done before the wolverine escorts you two back to the lockup.";
		now BarryMotive is 1;
		now CaneMotive is 2;
	else if BarryMotive is 2:
		say "     The mention of Kevin being his ex makes the bear look embarrassed, though you don't know why. 'Ah... yeah I used to date Kevin.' Barry rumbles. The look on his face now screams depression, which suddenly causes you to feel sad for the bear. What he says next makes that feeling deepen. 'We... had been dating for two years and I was going to... well, propose to him.' The big guy tells you, fingering something in his pocket. Ouch, that had to hurt and to be completely honest, it does give him a motive... 'But, if I had to kill anyone it would've been Kevin, not Tyler.' Barry says. After he finishes speaking, he asks the wolverine if he could go back to his cell. As the guard takes the two of you back, you feel rather bad about bringing it up.";
		now BarryMotive is 3;

instead of fucking Barry:
	say "     'Nice try! But if you wanna have a fuck with me then you gotta ask elsewhere.' Barry says with a boisterous laugh.";

Murder Mystery ends here.
