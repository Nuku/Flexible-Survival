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
The icon of Danny is Figure of Danny_icon.
The description of Danny is "[DannyDesc]".
The conversation of Danny is { "Woof." }.
DannyLibraryEntry is a number that varies. [when he was brought in]

to say DannyDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Danny], LIBIDO: [libido of Danny] <- DEBUG[line break]";	
	say "     Danny is WIP";

The scent of Danny is "     Danny smells hip, like the coolest rat ever.".

Section 2 - Talking

instead of conversing the Danny:
	say "     ...";


Section 3 - Sex

Instead of fucking the Danny:
	say "[DannySexMenu]";

to say DannySexMenu:
	setmonster "Mall Rat";
	say "   ...";

Danny ends here.
