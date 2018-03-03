Version 1 of Azrael by Rikaeus begins here.
[Version 1 - New NPC and New Rooms]

[ AnatomyCourse                                            ]
[   0: Has not enrolled in class                           ]
[   1: Is enrolled in class                                ]
[   2: Has had introductory lesson on Humans               ]
[   3: Has acquired assignment to find an Orc              ]
[   4: Found Orc, class, new assignment for Blue Gel       ]
[   5: Found Gel, class, last assignment for Tiger-creature]
[   6: Asked Chase or Ryousei to help, had class           ]
[   7: Passed Final Exam                                   ]

[ AzraelRelationship                                       ]
[   0: Has not met Azrael                                  ]
[   1: Has met Azrael                                      ]
[   2: Has talked about enrolling in classes               ]
[   3: Has enrolled in their first class via Azrael        ]

[ AzraelFuckship                                           ]
[   0: Has not fucked Azrael for the first time            ]
[   1: Has fucked them for the first time                  ]

EnrollmentTokens is a number that varies.
AzraelRelationship is a number that varies.
ClassPaymentAccepted is a truth state that varies.

Section 1 - Introduction Event

instead of going up from College Administration Building while AzraelRelationship is 0:
	say "     When you make your way up the stairs you are suddenly greeted by a demon brute of all people. Bracing yourself for an attack you are surprised when nothing happens. Upon a closer look of the large male you notice he's not the same color as the ones you've ran into before. His skin instead is a pale purple that doesn't scream angry. On top of that you notice his attire. The demon is wearing a rather fancy looking suit and a pair of glasses, something that makes him appear rather educated. Even then so, he's giving you an exasperated look. 'I know you have probably had terrible encounters with my bretheren but I am completely different from them.' He says with a sigh before holding out their hand. You shake it tentatively, an action that makes the big guy roll his eyes.";
	say "     'My name is Theodore, and I am Dean Azrael's assistant. What is your business with him?' You explain to the male that you are new here and have no idea what to do. That appears to garner some recognition in the demon's eyes. 'Oh, then you may wish to follow me.' He tells you. The guy leads you to a door before opening it, revealing an office with, to your utter surprise an angel in a business suit sitting in a chair. Theo informs him that you're a new student, to your confusion before closing the door when he leaves. Azrael, you assume, gets up and walks in front of his desk before sitting on it. 'Welcome to Tenvale College. I am the Dean of the whole college. You wish to enroll?'";
	WaitLineBreak;
	say "     You inform him that you really aren't sure at the moment as you were just curious about what was up here. With a sigh the angel crosses his arms. 'Very well, in any case, if you wish to enroll in the future, ask me. Because you're new, I have to take care of it as all of the admissions clerks have... become feral.' He explains with a roll of his eyes. Azrael's posture loosens up quickly though as he smiles at you. 'Although if you wish to just talk with me that's fine... I'm sure we can have some fun too.' He says, winking at you before he gets back to his work.";
	now AzraelRelationship is 1;
	move player to Dean's Office;
	move Azrael to Dean's Office;

Section 2 - Declaring Azrael

Azrael is a man.
The description of Azrael is "[AzraelDesc]".
The conversation of Azrael is { "<This is nothing but a placeholder>" }.
The scent of Azrael is "He smells like a summer breeze, interestingly enough. Though you guess you should expect that as he's an angel.".

to say AzraelDesc:
	say "     The angel is rather clean looking, wearing a fancy suit that clings to his body rather nicely. Upon closer examination you see that it's an Armeowni suit, one of the highest quality if the silky-texture says anything. Detracting your attention from the fancy clothing, you look at his features. Azrael's wings are a bright white, something that you assume to be true twenty-four-seven and are bunched together so that he can fit in the chair. Turning your attention to his face you notice he has bright blue eyes and shoulder-length black hair. When the dean notices that you're looking at him, he smiles at you before gesturing for you to take a seat.";

Section 3 - Talking with Azrael

instead of conversing the Azrael:
	say "     The winged angel looks at you with an interested look as you approach him. 'What do you need?'";
	wait for any key;
	say "[AzraelTalkMenu]";

to say AzraelTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Azrael?";	
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Dean";
	now sortorder entry is 1;
	now description entry is "Ask him how and why he's the Dean";
	[]
	if AzraelRelationship < 2:
		choose a blank row in table of fucking options;
		now title entry is "Classes";
		now sortorder entry is 2;
		now description entry is "Ask about enrolling in classes";
	[]
	if AzraelRelationship > 1:
		choose a blank row in table of fucking options;
		now title entry is "Enroll";
		now sortorder entry is 3;
		now description entry is "Enroll in a class";
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
				if (nam is "Dean"):
					say "[AzraelDean]";
				if (nam is "Classes"):
					say "[AzraelClasses]";
				if (nam is "Enroll"):
					say "[AzraelEnroll]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head, which causes the angel to shrug and return to whatever he was working on.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say AzraelDean:
	say "     As soon as you ask him how he even became Dean in the first place, Azrael sighs and leans back in his chair. 'You vaguely understand what happened during you humans' apocalypse, yes?' He questions. You nod, knowing as much as that somebody released the nanites into the world which is what caused the changes. He nods and speaks up. 'Yes... that. What you humans, yes you're still human to me even if you look different. Anyways, what you don't understand is that the nanites caused a disturbance amongst Heaven and Hell and the other Divine Realms.' He explains, a weary frown forming on his face. You tilt your head, a tad bit confused about the Divine Realms. Azrael rolls his eyes, but still answers your confusion. 'The Divine Realms are more or less the areas that... more powerful beings reside.' He says. Ah, that explains it, you then ask him to continue.";
	say "     Nodding, the angel does as such. 'When the nanites hit your world, it kind of halted death. Sure, you had millions dying due to the nanites not understanding what to do and more or less turning them into gray dust or goo. However, they also bolstered everyone's health making it really hard for you to die.' He continues. You ask him what death has to do with him being Dean of a college. He raises his brow at you and gives you a peculiar stare. 'You must not be the religious type, I am Azrael, also known as the Angel of Death. I more or less help dead people pass on. But with death being slowed down severely... I don't have much of a job right now, hence me being Dean. Someone has to keep these students in line.' He says. You wonder why here specifically but Azrael says that's another question for another day before returning to his work.";

to say AzraelClasses:
	say "     The angel smiles when you mention enrolling into classes. 'Great! First of all I need you to fill this out.' He says, handing you like two pieces of paper. You take a look and see that it's just two sheets asking for basic information. Although a few of the questions have been catered to the current world situation. Like for example, question twenty, do you ever plan to change infections while on campus. You muse that it probably makes sense to ask this so they could accommodate for any weird changes, like suddenly being partial to water. You mark it as possible, as you are unsure as to whether or not you'll get the whim to transform into something else while at college. While you're filling this out, Azrael explains the courses.";
	say "     'So, how courses work here compared to they did before the apocalypse is rather simple. To enroll in a class you must pay with either five bottles of water or five pieces of food.' He starts, a thought running through your head, saying it makes sense. 'Once you have either one of those, you come talk to me with them in hand and I'll show you what classes we have.' He informs. You nod and continue to finish up your paperwork, Azrael continuing to speak. 'We have a lot of courses available but the list I hand you at times may lack some of them as they are either full or something's happened to have that class unavailable at the moment, understand?' Once more you shake your head up and down and hand the angel the two pieces of paper. He accepts them and holds his hand out for you to shake. 'Great! Talk to me again when you want to enroll,' the male tells you.";
	WaitLineBreak;
	say "     Before you can leave he stops you and holds something out. It is a silver key with a tag on it, listing a number. 'This is the key to your dorm room. It is in the male dorms, to the northwest as soon as you enter. [if cunts of player > 0]I do apologize as the female dorms are full.[end if]' He explains as you take the key. You nod and turn to leave once more. The angel lets out a parting goodbye before he retunrs to his work.";
	change northwest exit of Second Floor Male Dorms to Your Dorm Room;
	change southeast exit of Your Dorm Room to Second Floor Male Dorms;
	now AzraelRelationship is 2;

to say AzraelEnroll:
	say "     'Good! Now here's the list of classes we have right now,' the angel says before handing you a list. 'Many courses are booked right now, but with how things are going these days, that might change quickly. And please do remember that you enroll in each class individually, with a new fee for each.'";
	say "[ClassPaymentOptions]";
	if ClassPaymentAccepted is true:
		say "     Once the angel has squared away the payment you've given him he happily hands you a little square of firm paper that bears the well-calligraphed words 'Class Tuition Payment Received - Valid For One Course', as well as a complex sigil. On the flip side there is a little map, showing that you need to go to the north of Lecture Street. It further explains that you'll only be able to get in during the day rather than night, as the classroom will be locked otherwise. You then nod and back away, letting Azrael return to work.";
		now ClassPaymentAccepted is false;
		increase EnrollmentTokens by 1;
		now AzraelRelationship is 3;
	else:
		say "     Azrael gives you a sad look before accepting your decision and asking you to return if you change your mind.";

to say ClassPaymentOptions:
	if (carried of food > 4 and carried of water bottle > 4):
		say "     [bold type]Aware that you are carrying enough of either option in your backpack, you start thinking what you want to give him.[roman type][line break]";
		say "     [link](1)[as]1[end link] - The food.";
		say "     [link](2)[as]2[end link] - The water.";
		say "     [link](3)[as]3[end link] - Nevermind.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to pay with food, [link]2[end link] to pay with water or [link]3[end link] decide against enrolling.";
		if calcnumber is 1 or calcnumber is 2:
			LineBreak;
			if calcnumber is 1:
				say "     You pull out a pile of food and hand it to the Dean who smiles and accepts it.";
				decrease carried of food by 5;
				now ClassPaymentAccepted is true;
			else if calcnumber is 2:
				say "     You pull out five bottles of water and hand them over to the Dean who gracefully accepts it.";
				decrease carried of water bottle by 5;
				now ClassPaymentAccepted is true;
		else:
			say "     You decide against it and shake your head.";
	else if carried of food > 4:
		say "     [bold type]Aware that you are carrying enough food in your backpack, do you want to give it to him?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah!";
		say "     [link]N[as]n[end link] - Nah.";
		if player consents:
			say "     You pull out the pile of food from your backpack and hand them over to the Dean who gladly accepts it.";
			decrease carried of food by 5;
			now ClassPaymentAccepted is true;
		else:
			say "     You shake your head, deciding against it.";
	else if carried of water bottle > 4:
		say "     [bold type]Aware that you are carrying enough water in your backpack, do you want to give it to him?[roman type][line break]";
		say "     [link]Y[as]y[end link] - Yeah!";
		say "     [link]N[as]n[end link] - Nah.";
		if player consents:
			say "     You pull out the water bottles from your backpack and hand them over to the Dean who gladly accepts it.";
			decrease carried of water bottle by 5;
			now ClassPaymentAccepted is true;
		else:
			say "     You shake your head, deciding against it.";

Azrael ends here.