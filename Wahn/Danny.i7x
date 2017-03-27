Version 1 of Danny by Wahn begins here.
[Version 1 - New NPC]

"Adds a mall rat npc to Flexible Survival"

[ Danny, the mall rat                                                                  ]
[                                                                                      ]
[ hp of Danny                                                                          ]
[  0: hasn't met the player yet                                                        ]
[  1: knows the player                                                                 ]

[ libido of Danny                                                                      ]
[  0: not watched Nermine get fucked yet                                               ]
[  1: watched Nermine get fucked                                                       ]

[ lust of Danny                                                                        ]
[  0: no sex with the player yet                                                       ]
[  1: fucked the player                                                                ]
[  2: got fucked by the player                                                         ]
[  3: fucked and got fucked by the player                                              ]


Section 1 - Description

Danny is a man. The hp of Danny is usually 0. Danny is in Mall Foodcourt.
The icon of Danny is Figure of Danny_clothed_icon.
The description of Danny is "[DannyDesc]".
The conversation of Danny is { "Woof." }.
DannyLibraryEntry is a number that varies. [when he was brought in]

to say DannyDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Danny], LIBIDO: [libido of Danny] <- DEBUG[line break]";	
	say "     Danny is a teenage mall-rat, wearing his signature sleek and stylish long coat that hangs down to his knees and highlights his slender frame. His face is pretty cute, with a pointy nose and large ears, framed by unruly streaks of green-dyed hair. He usually has a shiny black smartphone in one of his fine-boned hands, using the precious piece of still-working technology to take photos and videos of just about anything he sees.";

The scent of Danny is "     Danny smells hip, like the coolest rat ever.".

Section 2 - Talking

instead of conversing the Danny:
	if graphics is true:
		project the figure of Danny_face_icon;	
	if hp of Danny is 0:
		say "     As you walk up to the slender mall-rat, he raises his smartphone and calls out 'smile', then takes a picture. Sliding the device into his pocket afterwards, the anthro rodent then holds a hand out for you to shake and says, 'Welcome to the mall and nice to meet you. I'm Danny.' The young man is pretty friendly and starts a conversation with you about how things stand outside the mall. He is clearly interested in what new types of beings now live in the city and eagerly shows you some of the pictures he took since the whole trouble with the nanites started. There clearly are quite a few more types of creatures than you had even realized, and those are just the ones peaceful enough to be allowed in the mall. After a while, the topic of conversation swings over to the mall itself and its inhabitants, from Danny's ratty compatriots to the more unique Santa Claws and even the mysterious Nermine. He warns you about the jackaless, saying that stange things go on in her store.";
		now hp of Danny is 1;
	otherwise:
		say "     Walking up to Danny again, you're greeted with a wide smile from the friendly anthro rodent, accompanied by a welcoming pat on your arm. 'Glad to see you here again!' he says in a genuine tone, then starts a conversation with you about how things stand outside the mall. He is clearly interested in what new types of beings now live in the city and eagerly shows you some of the pictures he took since the whole trouble with the nanites started. There clearly are quite a few more types of creatures than you had even realized, and those are just the ones peaceful enough to be allowed in the mall. After a while, the topic of conversation swings over to the mall itself and its inhabitants, from Danny's ratty compatriots to the more unique Santa Claws and even the mysterious Nermine. [if libido of Danny is 0]He warns you about the jackaless, saying that stange things go on in her store.[otherwise]But then, you both know what happens in her store these days, and there's a whole other kind of grin being shared between you as he pulls out his mobile and flicks through the images of the sexy scene.[end if]";

Section 3 - Sex

Instead of fucking the Danny:
	if hp of Danny is 0: [player never talked to Danny]
		say "    The mall is a bit more civilized than the dangerous streets of the city. In general, you should at least speak with someone and introduce yourself before approaching with sex in your mind...";
	otherwise:
		say "    <Wahn: Sorry, these sex scenes are WIP currently. But Danny already has scenes in the game, connected with Nermine and Ares>";

to say DannySexMenu:
	setmonster "Mall Rat";
	say "   ...";

Danny ends here.
