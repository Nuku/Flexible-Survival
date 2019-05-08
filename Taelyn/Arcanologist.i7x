Version 1 of Arcanologist by Taelyn begins here.

[ Rune, the Arcanologist                                                               ]
[                                                                                          ]
[ HP of Arcanologist                                                                       ]
[   0: starting state, not met yet                                                         ]
[   1: encountered his initial event (Event location is in Avalon)                         ]

[ Dexterity of Arcanologist                                                                ]
[   0: starting state                                                                      ]
[   1: enlarged state                                                                      ]

[ Strength of Arcanologist                                                                 ]
[   0:                                                                                     ]
[   1:                                                                                     ]

[ Stamina of Arcanologist                                                                  ]
[   0: starting state                                                                      ]
[   1: Makeshift-Spear                                                                     ]
[   2: Leather Vambraces                                                                   ]
[   3: Gambeson                                                                            ]

Table of GameCharacterIDs (continued)
object	name
Arcanologist	"Arcanologist"

Arcanologist is a man.
ScaleValue of Arcanologist is 3. [human sized]
SleepRhythm of Arcanologist is 0. [0 = awake at all times, 1 = awake in the day, 2 = awake at night]
Cock Count of Arcanologist is 1. [cock]
Cock Length of Arcanologist is 6. [cock length]
Ball Size of Arcanologist is 2. [ball size]
Ball Count of Arcanologist is 2. [no balls]
Cunt Count of Arcanologist is 0. [no pussy]
Cunt Length of Arcanologist is 0. []
Cunt Tightness of Arcanologist is 0. []
Nipple Count of Arcanologist is 2. [2 nipples]
Breast Size of Arcanologist is 0. [flat]
Humanity of Arcanologist is 90.
PlayerMet of Arcanologist is false.
PlayerRomanced of Arcanologist is false.
PlayerFriended of Arcanologist is false.
PlayerControlled of Arcanologist is false.
PlayerFucked of Arcanologist is false.
OralVirgin of Arcanologist is true.
Virgin of Arcanologist is true.
AnalVirgin of Arcanologist is true.

The description of Arcanologist is "[ArcanologistDesc]".
The conversation of Arcanologist is { "mew" }.
[Arcanologist is in ???]

The scent of Arcanologist is "[ArcanologistScent]";

to say ArcanologistScent:
	say "     a";

to say ArcanologistDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Arcanologist: [HP of Arcanologist], Dexterity: [Dexterity of Arcanologist], LIBIDO: [Libido of Arcanologist], LUST: [lust of Arcanologist], Strength: [Strength of Arcanologist], Stamina: [Stamina of Arcanologist] <- DEBUG[line break]";
	if Dexterity of Arcanologist is 0: [regular Arcanologist]
		say "     a";

Arcanologist ends here.
