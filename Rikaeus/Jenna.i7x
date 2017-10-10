Version 1 of Jenna by Rikaeus begins here.
[Version 1 - new npc]

[ JennaRelationship (leader of Wolverine Security          ]
[   0: not met                                             ]
[   1: met, has been seen carrying in Jeremy               ]
[   2: met, has been seen interacting with Nermine         ]
[   3: met, has been seen guarding Nermine's shop          ]
[   4: has started Murder Mystery quest + agreed to help   ]
[   5: has resolved Murder Mystery quest                   ]

[   MurderMystery                                          ]
[   0: Hasn't begun                                        ]
[   1: Has encounted Jenna and body                        ]
[   2: Has inspected the body fully                        ]
[   3: Has learned all they can from the suspects          ]
[   4: Has solved the mystery                              ]
[   5: Has learned that player can purchase culprit        ]
[   6: Has recieved the culrpit from Nermine end           ]

[   hp of Jenna                                            ]
[   0: Not Placed                                          ]
[   1: In Wolverine Guard Station                          ]
[   2: In Wolverine Lockup                                 ]

[   LoganCommand                                           ]
[   0: Not Known                                           ]
[   1: Has seen Logan get ousted of the Mall by Jenna      ]
[   2: Known, can be used to control him                   ]

LoganCommand is a number that varies.

Section 1 - Declaring Jenna

Jenna is a woman.
The description of Jenna is "[JennaDesc]".
The conversation of Jenna is { "<This is nothing but a placeholder!>" }.
The scent of Jenna is "     Jenna smells like hard work. No seriously, she smells very sweaty.".

to say JennaDesc:
	if MurderMystery < 4 and Jenna is in Wolverine Guard Station:
		say "     The female wolverine is wearing a Wolverine Security uniform like all the others. However, hers has the slight difference of big bold letters spelling 'Boss' onto it. Beyond that Jenna looks like a gruff looking person, though that may be due to the frustrated look on her face. To be honest, you can't blame the woman, as the murder has shaken you up as well. She sees you looking at her, which in turn causes Jenna to give you a hopeful look. That reminds you that you still need to solve that case.";
	else if Jenna is in Wolverine Lockup:
		say "     She is currently wearing her Wolverine Security uniform. The outfit is different than the guards at the cells as it has the word 'Boss' in bold letters on it. The female wolverine is glaring at the suspects in the cells, as if they have personally offended her. Though, they probably have in some way or another by being law breakers or something. However, when she sees you staring at her, Jenna gives you a smile and waves at you. Clearly you haven't pissed her off.";
	else:
		say "     Jenna is wearing a worn security uniform just like all her subordinates. Her outfit is slightly different from the others as proven by the giant letters that spell 'Boss'. The female wolverine has a soft look on her face, which makes her appear to be the most approachable of all the wolverines in the room. When she sees you, the woman smiles at you and waves at you, clearly happy to see you.";

Section 2 - Talking with Jenna

instead of conversing the Jenna:
	if JennaRelationship < 4: [should be not yet available]
		say "     ERROR: Jenna shouldn't be where a player can see her yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [JennaRelationship]";
	else:
		say "     As you walk up to Jenna, she smiles widely at you, clearly happy to see you. 'What brings you here?' she asks you nicely, balancing her attention between you and her subordinates.";
		wait for any key;
		say "[JennaTalkMenu]";

to say JennaTalkMenu:
	say "[line break]";
	say "What do you want to talk with Jenna about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (hp of Jenna is 1 and MurderMystery > 1 and MurderMystery < 4): [Jenna is in the Station]
		choose a blank row in table of fucking options;
		now title entry is "Lockup";
		now sortorder entry is 1;
		now description entry is "Ask Jenna to take you to see the suspects";
	[]
	if hp of Jenna is 2: [Jenna is in Lockup]
		choose a blank row in table of fucking options;
		now title entry is "Station";
		now sortorder entry is 2;
		now description entry is "Ask Jenna to take you back to the Station";
	[]
	if (MurderMystery < 4 and MurderMystery > 1 and hp of Jenna is 2):
		choose a blank row in table of fucking options;
		now title entry is "Solve the Murder";
		now sortorder entry is 3;
		now description entry is "Tell Jenna you can solve the murder";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Work";
	now sortorder entry is 4;
	now description entry is "Ask Jenna about her work";
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
				if (nam is "Lockup"):
					say "[JennaTalk1]";
				if (nam is "Station"):
					say "[JennaTalk2]";
				if (nam is "Solve the Murder"):
					say "[JennaTalk3]";
				if (nam is "Work"):
					say "[JennaTalk4]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the female wolverine, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JennaTalk1: [Ask to go to the Lockup.]
	say "     You tell Jenna you're ready to go visit the suspects. She nods at you and directs you to follow after her. The female wolverine leads you through a surprising amount of hallways, a rather large amount for the small cafe store. You mention this and she chuckles. 'Yeah, it was rather small when we first got this area. But me and the boys knocked down some of the walls leading into an empty store and boarded the entrance to it up.' She says. Soon though you guys reach a door that when opened shows entrance to a room filled with cells. In the cells are the four suspects, each of them doing different things. 'Let me know if you want to leave and head back out.' Jenna informs you before leaving you to your thoughts.";
	move player to Wolverine Lockup;
	move Jenna to Wolverine Lockup;
	now hp of Jenna is 2;

to say JennaTalk2: [Ask to return to the Station]
	say "     You let Jenna know that you want to head back out. She nods and leads you back out through the hallways and into the Wolverine Guard Station. Once there she gives you a look. 'If you want back in, just talk to me.' The female wolverine says. You nod at her, after which she leaves you alone, heading back to her original spot against the wall by the desk.";
	move player to Wolverine Guard Station;
	move Jenna to Wolverine Guard Station;
	now hp of Jenna is 1;

to say JennaTalk3: [Solve the Murder]
	say "     With a look of determination, you tell Jenna that you can solve the murder. The female wolverine looks at you in shock. 'Wait, you can?' She asks you, clearly wanting to make sure. You nod and tell her that you've gathered enough evidence to find the killer. 'Is that true? Then I'll gather all the suspects.' The woman tells you. Even though you're in the same room as her when she goes to get everyone from the cells, you are still left with your thoughts. Did you truly figure out who murdered Tyler? You have a bad feeling that if you end up guessing wrong, then something really horrible will happen. Once everyone's gathered you are standing in front of the four suspects with Jenna at your side.";
	say "     [line break]";
	say "     [bold type]Who do you think is the murderer?[roman type][line break]";
	say "     [line break]";
	say "     [link](1)[as]1[end link] - Barry";
	say "     [link](2)[as]2[end link] - Gordon";
	say "     [link](3)[as]3[end link] - Tawnya";
	say "     [link](4)[as]4[end link] - Cane";
	say "     [link](5)[as]5[end link] - I need more time to think";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-5)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to A, [link]2[end link] to B or [link]3[end link] to C.";
	if calcnumber is 1:
		say "     [line break]";
		say "     'What?! It's not me!' The big bear shouts, acting out in a panic. In the skirmish, you lose track of what's happening and suddenly feel a sharp piercing sensation all over. Lookng down you see severe cuts all over you and a knife in your stomach. As you're fading out, you can hear Jenna barking orders out loud to everyone else. 'God damnit! Barry's not the killer go get the real one! They ran off!' She shouts to all of her wolverine subordinates. Well, it turns out that you chose wrongly. That is the last thought you have before you die.";
		now bodyname of player is "dead";
		end the story saying "You're dead - DEAD!";
	else if calcnumber is 2:
		say "     [line break]";
		say "     You begin to pace in place musing to yourself before finally speaking. You tell everyone that the first clue to the murderer was the cuts. 'Cuts? I mean I saw those but how did they help?' Jenna asks. Simple, while originally it'd be rather difficult to tell what the murder weapon is by the cuts alone, you realized something. Upon closer inspection you figured out that the cuts were made by a profressional grade knife. This time it's the owner of the restaraunt that speaks up. 'Yeah, but a professional grade knife isn't something uncommon to find at my restaraunt.' Cane says, a confused look on his face. You shake your head and explain that while that is true, not many of the employees handle those knives. The canine murmurs something about that being true, as the knives can be rather dangerous. Seeing that everyone's following along, you move onward.";
		if CaneFurSuspicion is 1:
			say "     [line break]";
			say "     You then bring out the piece of fur, making sure to not bring it towards the Doggy Bowl owner. Thankfully though he also shies away from it so you won't have a sneezing canine on your hands. You proceed to tell them that the next piece of evidence was gathered by talking to Cane. 'Wait? Me? What did I do?' He asks, utterly confused. Gesturing to the fur, you ask him who in the room have the piece of evidence that he's oh so allergic to on them? The dog's eyes widen, showing that he realizes exactly what you're going for. 'That'd be... Tawnya, Gordon, and Barry.' The canine says, looking at them in concern. You nod and say that what Cane is talking about, is the cologne or perfume on the piece of fur, to which is something that the dog cannot wear because he is allergic to it. This explanation causes Jenna to narrow her eyes at the three remaining suspects. Once more, you move onward with your case.";
			WaitLineBreak;
		if TawnyaFurSuspicion > 1:
			say "     [line break]";
			say "     You proceed to face the lizard girl, who looks a bit concerned that you're going to accuse her. Instead, you ask her what she proved to you, gesturing to the fur. 'Oh! That! Well, I showed you I have no fur.' She says, possibly overwhelmed by the entire situation. Nodding, you then turn to everyone else. You tell them that the piece of testimony given to you by Tawnya was helpful, believe it or not as it cut down on how many suspects you had. 'What do you mean?' Jenna asks, trying to get more information. Simply put you ask them, if the lizard girl doesn't have fur then what does that mean? They shortly realize it meant that she could not have murdered Tyler. [if CaneFurSuspicion is 1]Jenna turns and glares at the only remaining two suspects, Barry and Gordon.[end if]";
			WaitLineBreak;
		if GordonFurSuspicion > 1:
			say "     [line break]";
			say "     The next thing you tell them, is explained to be a damning piece of evidence. You tell them that you learned this [if GordonFurSuspicion is 2]from a friendly lizard girl.[else]getting intimate with the person.[end if] Holding the piece of fur out in the open you proceed to ask Jenna who here has brown fur, that she can see. 'Uh, the bear and the dog.' She says, confused as to where you're going with this. You then tell her to have her subordinates strip the monkey.'Wha-WHAT?!' Gordon shouts as the female wolverine does just that and he's manhandled by the guards. Once stripped almost everyone not employed by Cane gasps when they see that on the monkey's ass is a patch of brown fur. 'So Gordon actually does have brown fur?!' Jenna shouts. You nod and say that it's pretty damn suspicious to dye your fur from your original color, a color that pertains to a murder suspect. You then move on from that, having explained all you could.";
			WaitLineBreak;
		if GordonMotive > 1:
			say "     [line break]";
			say "     The following piece of evidence makes you turn to Tawnya, who looks oddly at you. You ask the lizard girl to tell them of the relation between Tyler and Gordon. 'Oh! They used to date.' She says, causing the attention to be immediately drawn to the monkey. [if GordonMotive is 3]'B-but I told you I would've murdered Kevin!' the male shouts. You shake your head, saying that makes less sense because murders are usually committed by people you know, and usually love. As far as you knew, Gordon did not know Kevin.[end if] The monkey appears to panic at the attention being focused on him. You explain firmly that with him being the victim's ex, who in fact dumped him for someone else, he'd have the most motive out of everyone. Jenna turns to the monkey and glares at him, clearing rearing up to attack him.";
			WaitLineBreak;
		say "     You then turn to everyone a smile on your face. You tell them that it is with all the evidence you've gathered that you've discovered the killer. You slowly walk up to Gordon, gesturing for Jenna to walk in front of you. Out loud to everyone, you say that the killer of Tyler, is none other than the monkey. Instantly everyone gasps, staring at him in utter shock. Suddenly though he gets desperate and whips out a knife stained with blood, but due to you having Jenna in front of you, the monkey's quickly stopped by being tackled to the floor. However, that's not all that happens, no Gordon starts shouting at everyone. 'Of course I killed him! We had been dating for years and he goes and leaves me! And when I confront Tyler, the guy says he's not really dating Kevin, that the guy's blackmailing him! What a load of crock!' The monkey yells. Quickly though he's handcuffed by Jenna's subordinates before being thrown back into his cell. 'I have just the perfect punishment.' Jenna says, a determined look on her face before she leaves.";
		say "     When Jenna returns, to your utter surprise it's none other than Nermine. The jackaless let her eyes roam over the situation before turning to the female wolverine. 'Nermine would like to know why the gracious constabulary brought Nermine here.' She says, her tone surprisingly nice for someone who was dragged here without being told why. 'Well, I am in need of your services.' Jenna says, her earlier reluctance to deal with the woman gone. Nermine raises a brow at the woman, clearly intrigued. 'Oh? What does the constabulary need from Nermine?' The jackaless asks, curiosity very much present in her tone. The female wolverine directs her companion's attention to the monkey in the cell. 'This little shit murdered someone in the mall, I wanted to let you deal with him.' Jenna says. It appears that the magical shopkeeper doesn't care for killers, as she narrows her eyes at Gordon. 'Nermine would be glad to deal with such a serious offender.' She says, walking up to the cell.";
		WaitLineBreak;
		say "     To nobody's surprise, when Nermine touches the door, it clicks open. She walks in and everyone almost panics when Gordon lunges at her. But the jackaless is unfazed as suddenly the monkey is frozen in place. 'Nermine doesn't think attacking Nermine is a bright idea monkey.' She says before grabbing him by the hand. As the woman is taking him out of lockup and probably to her store, she stops and turns toward you. 'Perhaps you would like to peruse Nermine's wares later. Nermine just might have something for customer.' The jackaless says, casting a brief look at her captive before leaving with Gordon. Once she's gone, Jenna turns to you and smiles. 'Well, you've done it! You've solved the mystery.' She says, congratulating you. The female wolverine then turns to the ex-suspects and tells them that they'll get their stuff back and situated, before leading all of you out of lockup.";
		move Jenna to Wolverine Guard Station;
		move player to Wolverine Guard Station;
		now JennaRelationship is 5;
		now MurderMystery is 4;
	else if calcnumber is 3:
		say "     [line break]";
		say "     'What?! It's not me!' The lizard girl shouts, acting out in a panic. In the skirmish, you lose track of what's happening and suddenly feel a sharp piercing sensation all over. Lookng down you see severe cuts all over you and a knife in your stomach. As you're fading out, you can hear Jenna barking orders out loud to everyone else. 'God damnit! Tawnya's not the killer go get the real one! They ran off!' She shouts to all of her wolverine subordinates. Well, it turns out that you chose wrongly. That is the last thought you have before you die.";
		now bodyname of player is "dead";
		end the story saying "You're dead - DEAD!";
	else if calcnumber is 4:
		say "     [line break]";
		say "     'What?! It's not me!' The dog shouts, acting out in a panic. In the skirmish, you lose track of what's happening and suddenly feel a sharp piercing sensation all over. Lookng down you see severe cuts all over you and a knife in your stomach. As you're fading out, you can hear Jenna barking orders out loud to everyone else. 'God damnit! Cane's not the killer go get the real one! They ran off!' She shouts to all of her wolverine subordinates. Well, it turns out that you chose wrongly. That is the last thought you have before you die.";
		now bodyname of player is "dead";
		end the story saying "You're dead - DEAD!";
	else if calcnumber is 5:
		say "     [line break]";
		say "     You shake your head and tell Jenna that you need more time. She frowns at you but the shrugs her shoulders. The female wolverine directs all of the suspects back into their cells. When that's done, she makes her way back over to you with a frustrated look on her face. 'Please hurry, we need to get this solved before people in the mall start panicking about their safety.' Jenna says. You understand that very well, if it isn't solved, then the mall residents may be concerned that the killer will strike again. Mass panic is never a good thing, so you turn and face the possible culprits, musing about who you should ask more questions to.";

to say JennaTalk4: [Ask about work]
	say "     'My work?' She asks. You nod, wanting to know what she does on a daily basis. 'Well, I occasionally patrol the Mall, looking for any incidents.' Jenna tells you. Is that all the woman does? As you say this she chuckles at you. 'No, I sometimes help the residents here if they need it. Simple things like helping them carry their laundry, or if they need meals.' She happily says. That's... a lot different than her subordinates. The woman laughs at you and shakes her head fondly. 'I know they're a rough bunch but they mean well.' The wolverine smiles. You nod before taking a step back to end the conversation.";

Section 3 - Sexing Jenna

instead of fucking the Jenna:
	say "     'Get your mind out of the gutter, I don't have time for that.' Jenna says rather bruskily before getting back to work.";

Section 4 - Events with Jenna after she becomes NPC

instead of going north from Smith Haven Mall Lot South while (LoganCommand is 0):
	move player to Mall	Foodcourt;
	if debugactive is 1:
		say "     DEBUG: Walk-in Event in the mall foodcourt. LoganCommand: [LoganCommand].[line break]";
	say "     Upon entering the Mall for the first time, you walk into a quite public scene in the midst of a circle of onlookers. A very angry female wolverine stands there, hands on her hips as she is yelling at another mustelid like her, this one a somewhat larger and muscular male. He is wearing a similar uniform and is bristling with aggression too, but at the same time seems on the defensive, just taking the verbal abuse. Beyond the woman, a shivering male labrador in ripped clothing is being comforted by a mall rat. 'I have had it up to fucking here with you, you piece of donkey shit,' she roars, a crowd clearly forming around them. The guy snarls at her but doesn't say anything, showing that the female has the power here, interestingly enough. 'Your ass is lucky that we're short-staffed as is or I'd have fired and locked you up,' the female wolverine goes on to say in an angry tone.";
	say "     She sighs before shaking her head and turning to several other wolverines that have just shown up from deeper inside the mall. 'Boys, this worthless piece of crap is to be relegated to parking lot duty. He can cool his heels with the other rapists roaming the streets,' she orders with a firm look to the mustelids that appear to be her subordinates. The males nod at her and grab the angry offender and drag him out of the mall. The woman turns around and helps the mall rat comfort the near-rape victim and leads him away. This leaves you standing around in the midst of the very mixed crowd of countless different species as it slowly dissolves, and you overhear some murmurs of people to one another. Apparently the woman you saw is the leader of the Wolverine Guard and she is a quite well respected person in the mall. After learning this and some other interesting tidbits of information, you return to what you were doing before.";
	now LoganCommand is 1;

instead of going southeast from Mall East Wing while (MurderMystery > 3 and hp of Moreau > 0 and LoganCommand is 1):
	if debugactive is 1:
		say "     DEBUG: Walk-in Event in the body shop. MurderMystery: [MurderMystery].hp: [hp].LoganCommnad: [LoganCommand][line break]";
	say "     Upon entering the body shop you notice a familiar person in here, it is none other than Jenna, the leader of the Wolverine Guard. What's interesting is the person next to her, a fellow Wolverine Guard. But... by the look on his face and how he appears to stare at the woman angrily you can rather instantly tell it is the one guard that [italic type]does not[roman type] get along with her, Logan. Your friend looks to be talking to Moreau about something before the naga gestures for them to follow him to his offices. Your curioisity gets the better of you, so you follow them into the back. When you get there you can see that the body shop owner is staring intently at the male wolverine. 'Just look into my eyes and relax...' the naga orders, focusing his green-slitted irises on the anthro canine. 'Yes sir.' Logan tonelessly replies.";
	say "     Jenna, who has been looking at Logan during this, now turns to Moreau with a smile. 'Perfect. Now what?' she asks. That kind of response appears to make the naga chuckle at her. 'Now my dear, all you need to do is give me a trance command and one to bring him out of the trance,' he tells her. The female wolverine nods before thinking for a second, quickly coming to a decision. 'I think... 'Come here, will you?' would work for the trance command as it's something I can say without alerting others,' she replies to Moreau. Giving her a smile and a little nod of the head, the shop owner turns his attention back to the other wolverine. 'You will go into this trance whenever you hear the command 'Come here, will you?' Do you understand?' Moreau says. Logan mindlessly nods before repeating what he said earlier. The naga then turns to Jenna for the next command. 'Hmmm.. how about 'Good Boy' to end the trance?' she asks. The body shop owner shrugs before turning back to the male wolverine.";
	WaitLineBreak;
	say "     Moreau speaks once more to Logan in a commanding tone. 'If you are in a trance and hear the words 'Good Boy', you are to leave the trance and forget what happened while you were under the influence. Do you understand?' he asks. 'Yes sir,' the male wolverine replies. The naga nods before snapping his fingers in front of the buff guy's face. It drops him out of the trance and Logan looks around slightly confused. Jenna however ignores him and thanks the snake-man for helping. 'Just don't mention this to Nermine. Otherwise I won't hear the end of this,' she tells the tall naga in a quiet tone. That makes Moreau chuckle and wave her off. 'It's no problem, you keep us safe every day and I won't tell her,' he replies. You swear you see a glint in his eyes that says otherwise. However, you decide against staying any longer, lest you get caught... so you quickly make your way out of the Body Shop, keeping the command well in mind. Oh, what possibilities knowing that one might bring...";
	now LoganCommand is 2;

Jenna ends here.
