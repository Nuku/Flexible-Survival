Version 3 of Elijah by Wahn begins here.
[Version 3.2 - Offer for Evil Elijah made at any point cure does not go ahead]
"Adds an NPC named Elijah to the Flexible Survival game"

[ HP states of Elijah                                                  ]
[   0: Chained up in the Chapel                                        ]
[   1: At Bunker, unconscious                                          ]
[   2: At Bunker, revival quest started                                ]
[   3: At Bunker, up and talking + clueless virgin                     ]
[   4: At Bunker, more human-like                                      ]
[  99: At Bunker, Evil Elijah                                          ]
[ 100: Lost to the demons                                              ]

[ npcEint (npc-Elijah-interaction state) = ABCDEFGHIJKLMN              ]
[ Character A - Candy Interaction: (Char-A of Elijah)                  ]
[   0: Nothing happened                                                ]
[   1: Candy-Care-Event done                                           ]
[   2: Candy talked to Virgin Elijah                                   ]
[   3: Candy-Cane gift done                                            ]
[   4: Assfucking Candy done                                           ]
[ Character B - Sarah Interaction: (Char-B of Elijah)                  ]
[   0: Nothing happened                                                ]
[   1: Sarah-Care-Event done                                           ]
[   2: Praying with Sarah done                                         ]
[   3: Playing Ball done                                               ]
[   4: Facefucking Sarah done                                          ]
[ Character C - Sven Interaction: (Char-C of Elijah)                   ]
[   0: Nothing happened                                                ]
[   1: Sven-Care-Event done                                            ]
[   2: Listening to Sven done                                          ]
[   3: Sexxxings                                                       ]
[ Character D - Felinoid Companion Interaction: (Char-D of Elijah)     ]
[   0: Nothing happened                                                ]
[   1: Rubbing up done                                                 ]
[   2: Elijah stroking done (same for hp state 3+4)                    ]
[   4: Assfucking Felinoid done                                        ]
[ Character E - Helper Dog Interaction: (Char-E of Elijah)             ]
[   0: Nothing happened                                                ]
[   1: Keeping company done                                            ]
[   2: Stroking the dog done                                           ]
[   3: Shaking paws done                                               ]
[   4: Failed Transformation done                                      ]
[ Character F - Little Fox Interaction: (Char-F of Elijah)             ]
[   0: Nothing happened                                                ]
[   1: Keeping company done                                            ]
[   2: Sleeping peacefully done                                        ]
[   4: Thrown off the bunk done                                        ]
[ Character G - Denise (gryphoness) Interaction: (Char-G of Elijah)    ]
[   0: Nothing happened                                                ]
[   1: Singing company done                                            ]
[   2: Choir done                                                      ]
[   3: Feather grooming done                                           ]
[   4: Denise running off done                                         ]
[ Character H - Crab Pet Interaction: (Char-H of Elijah)               ]
[   0: Nothing happened                                                ]
[   2: Grabbing a wingtip done (same for hp state 3+4)                 ]
[   4: Thrown off the bunk done                                        ]
[ Character I - Fang Interaction: (Char-I of Elijah)                   ]
[   0: Nothing happened                                                ]
[   2: Guard duty done                                                 ]
[   3: Stroking Fang done                                              ]
[   4: Husky female done                                               ]
[ Character J - Honey Interaction: (Char-J of Elijah)                  ]
[   0: Nothing happened                                                ]
[   1: Frets over Elijah done                                          ]
[   2: Chat done                                                       ]
[   3: Hive prayer done                                                ]
[   4: Grabby Elijah done                                              ]
[ Character K - Unassigned Interaction: (Char-K of Elijah)             ]
[ Character L - Unassigned Interaction: (Char-L of Elijah)             ]
[ Character M - Unassigned Interaction: (Char-M of Elijah)             ]

[ NPC Connection summary for endings (hp state 4 only) :               ]
[ - Likes & Impregnates Denise                                         ]
[ - Takes pet-Sarah for walks as a dog                                 ]
[ - Immune to Felinoid, but likes petting him                          ]
[ - Playful sex with Sven                                              ]

[ thirst of Elijah - tracking submissive sex with Evil Elijah          ]
[   0: base state                                                      ]
[   1: had the event with the spidertaur                               ]
[   2: had the event with Brutus                                       ]
[   3: Brutus told to obey Elijah                                      ]
[ 100: declined sub bondage sex with Zephias/Elijah                    ]

Section 1 - Meeting Event

Angel vs Demons is a situation. The level of Angel vs Demons is 10.
The sarea of Angel vs Demons is "Red".
when play begins:
	add Angel vs Demons to badspots of guy; [Elijah is male]
	add Angel vs Demons to badspots of hellspawn; [demons everywhere - he might even become one]

Instead of resolving a Angel vs Demons:
	if hp of Gabriel is 0:
		say "     While exploring this seedy district of town, you hear a terrible racket and disconcerting shrieks from inside an adult-only movie theatre you're just passing. Then suddenly a section of its front wall explodes outward as a creature gets thrown right through it, sending bricks flying all over the street. You catch a glimpse of its horned, demonic form sailing past, then everything goes black as a brick hits you in the head.";
		LineBreak;
		say "     When you open your eyes again a short while later, the street around you is a battlefield of shattered and burning buildings. Sitting up makes you go woozy again for a moment, then thankfully your vision clears. Center of the destruction surrounding you is a humanoid figure with large white wings, garbed in shimmering plate-mail and wielding a flaming sword. It is surrounded by a golden halo of energy, making it difficult to discern any more. Surrounding the apparition there is a mid-sized flock of demons, incubi, succubi and hellhounds. Several of them are hurt and you see ...pieces... of others on the ground, but they still hold a circle around the angel in their midst, waiting for the time to strike while dodging strikes of his sword.";
		say "     Your revival hasn't gone unnoticed and brings some movement into the standoff, as a hellhound turns towards you. It decides you might serve as a good mid-combat snack and rushes forward. You feel its foul breath as it opens its snout to tear out your throat - then, there is a flash of fire in the air and the creature collapses lifelessly on top of you, a flaming sword sticking in its side. The angel must have thrown it to save you.";
		say "     That was just the moment the other demons have waited for. They pile on top of the now disarmed angel, clawing and biting, and wrestle him to the ground. You're still busy wriggling out from under the dead hound when they carry him off towards a ruined chapel at the far end of the street.";
		LineBreak;
		say "     When you finally manage to get free a bit later, you're alone between the burning buildings. The flaming sword still sizzling in the flesh of the dead hellhound sadly isn't something you could use - it's all flame, even the grip. Looking down the street where the demons went, you see the [bold type]Burned-Out Chapel[roman type] they went into. You could follow them, if you think you're strong enough. But don't wait too long... who knows what they'll do to him.";
		wait for any key;
		now Burned-Out Chapel is known;
		move Elijah to Burned-Out Chapel;
		now lastfuck of Elijah is turns; [to clarify: only using this for timing purposes here - he's still a virgin, they only hurt him and cum on him before the player gets to the chapel]
		now NPCintCounter is turns;
		now npcEint is "0000000000000N";
		now Char-A of Elijah is "0";
		now Char-B of Elijah is "0";
		now Char-C of Elijah is "0";
		now Char-D of Elijah is "0";
		now Char-E of Elijah is "0";
		now Char-F of Elijah is "0";
		now Char-G of Elijah is "0";
		now Char-H of Elijah is "0";
		now Char-I of Elijah is "0";
		now Char-J of Elijah is "0";
		now Char-K of Elijah is "0";
		now Char-L of Elijah is "0";
		now Char-M of Elijah is "0";
		increase score by 15;
		Now Angel vs Demons is resolved;
	else if hp of Gabriel is 1:
		say "     Once again, as you make your way into this seedy part of town, you find a battlefield in the streets. Steaming patches of hellhound drool and blood mar the ground, followed by pieces of multiple of those dangerous creatures. An unconscious demon brute leans against a nearby building's wall, his left arm nothing but a whirl of purple smoke as the nearby cut-off extremity slowly dissolves and wafts back to him. The sound of an impact and shattering glass draws your attention to the next street corner, and as you make your way over there to see what's going on, you hear an imperious voice call out, 'Where is he? Tell me what you have done with him, hellspawn!'";
		say "     Peeking around the corner, your yes fall upon the imposing figure of an angel, standing tall in white robes and gleaming armor. In one hand, he holds a flaming sword, while the other just reaches out to pick up an incubus by the neck, peeling him out of the dent he made in a car after being thrown against it. 'Elijah! Where is he? Speak!', the divine warrior shouts, shaking the sex demon impatiently. The incubus gives a weak groan, then focuses his red eyes on his captor and spits at him - which the angel easily avoids. Then the demon gives a somewhat choked chuckle and says, 'We don't have him, you overgrown chicken! One of your precious humans stole him from us... not that most of them look human anymore these days. And the kicker is - somehow the do-gooder got turned afterwards. Your boy has been making rounds all over the city, fucking everyone and everything he could get his hands on. Lots of bitches will be popping out nephilim soon...'";
		WaitLineBreak;
		say "     A furious expression on his face, the angel shouts, 'No! This cannot be - Elijah could never fall that far! You must be lying - but I sense at least some truth in your words. Tell me about this mortal - I will search him out and question him myself!' The incubus gives a disconcertingly good description of yourself, with those features and specifics that will mostly stay the same no matter what form you are in...";
		say "     Pulling your head back before this avenging angel is done with his captive and might spot anyone watching, you quietly walk away, then start running after you're out of range for them to hear your footfalls. You'll have to keep an eye out for that guy - as he surely won't be gentle when he learns about what you did.";
		now hp of Gabriel is 2;
		repeat with y running from 1 to number of filled rows in Table of random critters:
			choose row y in table of random critters;
			if name entry is "Seraphim":
				now monster is y;
				now area entry is "Red";
				break;
		Now Angel vs Demons is resolved;


Burned-Out Chapel is a room. It is fasttravel.
The description of Burned-Out Chapel is "[chapelplacedesc]".

instead of sniffing Burned-Out Chapel:
	say "The heavy scent of burned wood hangs in the room, mixed with a trace of blood and [if hp of Elijah is 100]the all-pervading stench of [end if]demonic cum.";

to say chapelplacedesc:
	if (Elijah is not in Burned-Out Chapel and hp of Elijah is 0): [if the player got here before Elijah was captured]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other than kindling. The altar is cracked, and the wooden cross behind it has had manacles added to it. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";
	else if (hp of Elijah is 0): [Starting state - Elijah chained up]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other than kindling. A winged humanoid is chained to the wooden cross standing behind a cracked altar. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";
	else if (hp of Elijah > 0) and (hp of Elijah < 100 or hp of Elijah is 101): [Elijah rescued]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other kindling. Behind a cracked altar, you see a wooden cross with manacles dangling down from it. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";
	else if (hp of Elijah is 100): [after the demons had an orgy there]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other kindling. Behind a cracked altar, there is a horrible sticky mess of ash and demonic cum. Surprisingly, there are no demons in sight, but you do hear some moans and ominous sounds from several side doors.";

Northeast of Burned-Out Chapel is Sacristy.
The description of Sacristy is "     This sacristy has been... redecorated recently. You're pretty sure it didn't originally have red silk drapes and a large bed, currently bathed in the light of about a hundred candles. There's a fire going in a brazier with a large stack of bibles beside it to provide additional fuel. In between various dildos and sex toys strewn about on the bed, there's a golden chalice and a few crosses, which got used for the same purpose as the rest, from their sticky state...".

Section 2 - Elijah the Seraphim

[Smells, Description, Conversation]

Elijah is a man. The hp of Elijah is normally 0.
The description of Elijah is "[Elijahdesc]".
The conversation of Elijah is { "Mew!" }.
NPCintCounter is a number that varies. NPCintCounter is normally 555.
npcEint is an indexed text that varies. npcEint is normally "0000000000000N".	[SAVING]
Elijah has a text called Char-A. Char-A of Elijah is normally "0".	[Candy]
Elijah has a text called Char-B. Char-B of Elijah is normally "0".	[Sarah]
Elijah has a text called Char-C. Char-C of Elijah is normally "0".	[Sven]
Elijah has a text called Char-D. Char-D of Elijah is normally "0".	[Felinoid]
Elijah has a text called Char-E. Char-E of Elijah is normally "0".	[Helper Dog]
Elijah has a text called Char-F. Char-F of Elijah is normally "0".	[Little Fox]
Elijah has a text called Char-G. Char-G of Elijah is normally "0".	[Gryphoness]
Elijah has a text called Char-H. Char-H of Elijah is normally "0".	[Cute Crab]
Elijah has a text called Char-I. Char-I of Elijah is normally "0".	[Fang]
Elijah has a text called Char-J. Char-J of Elijah is normally "0".	[Honey]
Elijah has a text called Char-K. Char-K of Elijah is normally "0".	[unassigned]
Elijah has a text called Char-L. Char-L of Elijah is normally "0".	[unassigned]
Elijah has a text called Char-M. Char-M of Elijah is normally "0".	[unassigned]
honeygiven is a truth state that varies. honeygiven is normally false.

instead of sniffing Elijah:
	if hp of Elijah is 0: [chained up in the chapel]
		say "The angel smells of blood and demonic cum.";
	if (hp of Elijah is 1) or (hp of Elijah is 2): [wounded + unconscious in the bunker]
		say "The injured angel smells of slightly of blood.";
	if (hp of Elijah > 2) and (hp of Elijah < 99): [virgin + good Elijah]
		say "Elijah is surrounded by the faint smell of sandalwood.";
	if (hp of Elijah is 99): [evil Elijah]
		say "The stench of brimstone and sulfur hangs in the air around Elijah.";

to say elijahdesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Elijah], npcEint: [npcEint], Thirst: [thirst of Elijah] <- DEBUG[line break]";
	if (hp of Elijah is 0): [chained up in the chapel]
		say "     The angel has had his armor ripped away and his white tunic is thorn, bloodstained and splattered with cum-stains. Even his once bright halo has suffered, now a pale flickering shadow of its former glory. He looks young, with an unlined face and long golden-blond hair. At the moment, his arms are chained to a wooden cross, the chains being the only thing holding him upwards as he drifts in and out of consciousness. His wings hang limply from his shoulders.";
	if (hp of Elijah is 1) or (hp of Elijah is 2): [wounded + unconscious in the bunker]
		say "     The angel is tall and well-built, looking an early 20 years old. His unlined, very pretty face is framed by long strands of golden blond hair. At the moment, he's spending most of his time asleep on a bunk in the bunker, opening his azure eyes only rarely to look around tiredly and a bit confused. He's naked under the sheet, and his large white wings poke out over the sides of the bed, reaching almost to the next bunk in line.";
	if (hp of Elijah is 3): [virgin Elijah]
		say "     Elijah is tall and well-built, looking an early 20 years old. His unlined, very pretty face is framed by long strands of golden blond hair. At the moment, he's spending most of his time sitting quietly on his bunk, hands folded in prayer and observing his surroundings with azure eyes. He's garbed in a simple white shirt and a pair of pants - where those came from, you can only wonder. His large white wings are folded together behind his back.";
	if (hp of Elijah is 4): [good Elijah]
		say "     Elijah is tall and well-built, looking an early 20 years old. He has an unlined, very pretty face with azure eyes, crowned by an impressive mohawk of golden blond hair. Lately, he's often up and about, strolling out into the library and the nearer city blocks or having a look around from the air. He's taken up wearing a pair of tight jeans and military boots he found somewhere, leaving his chest bare and showing off some handsomely sculpted abs. His large white wings are folded together behind his back, but tend to spread out a bit and move animatedly when he's talking to you.";
	if (hp of Elijah is 99): [evil Elijah]
		say "     Elijah's form holds a terrible beauty that makes you shiver inside. His body is tall and well-built, looking an early 20 years old. He has an unlined, pretty face with glowing red eyes and a superior smirk, framed by long strands of night-black hair. He's taken up wearing tight leather pants and leather bracers with spikes on the side, leaving his chest bare and showing off some handsomely sculpted abs. Large, black-feathered wings are folded together behind his back.";
	if (hp of Elijah is 100):
		say "ERROR-Elijah-3C: He should be in hell by now! Please report what you did to see this.";
	if (hp of Elijah > 4) and (hp of Elijah < 99):
		say "ERROR-Elijah-1A: Wrong hp setting for Elijah! Please report what you did to see this.";

instead of conversing the Elijah:
	if (hp of Elijah is 0): [chained up in the chapel]
		say "     The angel isn't really in the shape to communicate much right now. He's drifting in and out of consciousness, and there was only a short moment when his eyes were open and focusing, giving you a pleading look. Do you want to try to free him?[line break]";
		if the player consents: [freeing him - should lead to a demon orgy scene (see section 4) if you get beaten]
			say "     The chains are too sturdy for you to break or damage, but luckily you find the key for the manacles not too far away - lying in a puddle of caustic hellhound urine. Dragging it out with a piece of wood (that immediately starts smoking), you wipe it off with a shred of the altar-cloth and take it. Then you unlock the shackles holding the angel, carefully supporting him so he doesn't fall down.";
			say "     You manage that well, but don't have another hand free to take hold of the chain, so it noisily clatters against the wall and other chains as it falls away from the angel's arm. Oh-oh, you hear some growls, then spot glowing red eyes open up in the darkness behind several doorways on the sides of the chapel.";
			now inasituation is true;
			if girl is banned:
				say "     Leading the mob of demons rushing at you is a incubus. Its normally handsome face is distorted into one of demonic anger with twisted features, sharp teeth and burning eyes as it cries out. 'That's our prize, you thieving mortal. When I'm done with you, you'll be begging for the hellhounds to take you!";
				challenge "Incubus";
			else:
				say "     Leading the mob of demons rushing at you is a busty succubus, who shrieks angrily. 'He's ours, you little thief. You'll become a bitch in the hellhound kennels for trying to steal him!'";
				challenge "Succubus";
			if fightoutcome >= 20 and fightoutcome <= 29: [lost]
				say "[losetochurchdemons]";
			else if fightoutcome >= 30: [fled]
				say "[fledfromchurchdemons]";
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				if girl is banned:
					say "     The defeated incubus is driven away, fleeing through one of the doorways. That's one down - instantly replaced by another snarling incubus lunging at you.";
				else:
					say "     The succubus shrieks in pain, falling back from you and fleeing through one of the doorways. That's one down - instantly replaced by a snarling incubus lunging at you.";
				challenge "Incubus";
				if fightoutcome >= 20 and fightoutcome <= 29: [lost]
					say "[losetochurchdemons]";
				else if fightoutcome >= 30: [fled]
					say "[fledfromchurchdemons]";
				else if fightoutcome >= 10 and fightoutcome <= 19: [won]
					say "     As the incubus falls down beaten and is pulled away by one of his brethren, the other demons take a step back, not wanting to be the next one to take you on. All except one that is - a massive brutish beast who roars at you in fury. He pushes the others aside and comes at you.";
					challenge "Demon Brute";
					if fightoutcome >= 20 and fightoutcome <= 29: [lost]
						say "[losetochurchdemons]";
					else if fightoutcome >= 30: [fled]
						say "[fledfromchurchdemons]";
					else if fightoutcome >= 10 and fightoutcome <= 19: [won]
						say "     When the demon beast collapses in front of you, the rest of the mob decide to abandon the fight, leading to a mad rush away from you on wing and foot. Now let's get out of here before they change their minds or braver individuals arrive. Pulling the angel's arm over your shoulder, you lead him away as quickly as possible. When you're half a block distant, you hear an infuriated roar from the chapel. This is followed by a harsh, growling voice yelling 'Find them, you sniveling cowards or I'll flay the skin off the lot of you!' You dodge behind a dumpster and watch demon search parties file and fly out of the ruin. Time to run.";
						LineBreak;
						say "     Against all odds, you do arrive safely at the library several hours later. There were several really close calls, but you managed to shake your hunters - for now. After getting him out of his stained and ripped tunic, you put your almost delirious rescuee on one of the cots in the bunker, then lock up the entrance tight to get some much-needed rest.";
						now hp of Elijah is 1;
						move Elijah to bunker;
						move player to bunker;
						now lastfuck of Elijah is turns;
						now the icon of Elijah is Figure of Elijah_naked_icon;
						increase score by 20;
			now inasituation is false;
		else: [try it later, 32 turns time to save him]
			say "     The demons might not be here right at this very moment, but they'd surely notice you making off with their prized catch. So you'll bide your time for the moment. Let's hope their captive will hold out a bit longer...";
	else if (hp of Elijah is 1): [wounded + unconscious in the bunker - starting the revival quest]
		say "     He's alive but still very weak and still not ready for communicating in any great length. Hell, he's barely conscious at all. There might be some things out there in the city that could possibly help him... perhaps you could try milk and honey, that's supposed to be good for you. And if you mix in something to boost his healing ability, your resident angel should be back on his feet in no time.";
		now hp of Elijah is 2;
		now Sweet Surprise is unresolved;
		if furry is not banned, now Examination Room is unresolved;
	else if (hp of Elijah is 2): [wounded + unconscious in the bunker - revival quest started already]
		blank out the whole of table of itemselection;
		repeat with Q running through owned milky grab objects:
			choose a blank row in table of itemselection;
			now object entry is Q;
			now holding entry is carried of Q;
			now objname entry is printed name of Q;
		if there is no object in row 1 of table of itemselection:
			say "     To mix together something to cure the injured angel, you need a good base to start with. Some form of milk should do the trick nicely...";
			if demon seed is owned:
				say "     As you think of getting the milk, you remember the demon seed you still have in your pack. A wicked little thought sneaks into your mind - wouldn't it be interesting to see what the potent liquid might do to the helpless angel you have at your mercy?";
				say "[elijah_ds_tempt]";
		else:
			if honeycomb is not owned and bee girl is not tamed:
				say "     You got the milk as base for your angel revival shake. Now to gather some honey to mix into it... maybe you can find some somewhere in the park.";
				if demon seed is owned:
					say "     As you try to think of someplace you can find some honey, you remember the demon seed you still have in your pack. A wicked little thought sneaks into your mind - wouldn't it be interesting to see what the potent liquid might do to the helpless angel you have at your mercy?";
					say "[elijah_ds_tempt]";
			else:
				if honeycomb is not owned:
					say "     As you look over your supplies but find no honey, Honey tugs at your arm and offers you one of her precious supply to use instead. That taken care of, you focus on the next step.";
				if healing booster is not owned:
					say "     Milk and honey should be a nice start, but you need something more. Maybe you should check out the hospital for something to really boost your patient's healing ability.";
					if demon seed is owned:
						say "     As you think of getting the some proper healing agent, you remember the demon seed you still have in your pack. A wicked little thought sneaks into your mind - wouldn't it be interesting to see what the potent liquid might do to the helpless angel you have at your mercy?";
						say "[elijah_ds_tempt]";
				else:
					say "     You got the milk, honey and even a vial of healing booster. Do you want to mix it all together now and administer the result to Elijah?[line break]";
					if player consents:
						let chosenmilk be pocketknife;
						if the number of filled rows in table of itemselection is 1:
							choose row 1 in table of itemselection;
							now chosenmilk is object entry;
						else:
							sort table of itemselection in object order;
							say "Which milk would you prefer to use? (no different results)[line break]";
							repeat with y running from 1 to number of filled rows in table of itemselection:
								choose row y from the table of itemselection;
								say "[link][y] - [objname entry][as][y][end link] ([holding entry])[line break]";
							say "[link][bracket]0[close bracket][end link] - NONE[line break]";
							while chosenmilk is pocketknife:
								say "Pick the corresponding number (0-[number of filled rows in table of itemselection])> [run paragraph on]";
								get a number;
								if calcnumber > 0 and calcnumber <= number of filled rows in table of itemselection:
									choose row calcnumber in table of itemselection;
									now chosenmilk is object entry;
								else if calcnumber is 0:
									now chosenmilk is journal;
						if chosenmilk is not journal:
							say "     An empty soda bottle serves as the container into which you carefully pour your collected ingredients. Holding the bottle closed, you then give it your best bartender impression, shaking it like a martini. The result is a pale blue liquid, smelling pleasantly of honey.";
							say "     And now to test if it works... you put your hand under patient's head, raising it a bit and guide the bottle to his lips. Slowly, you let some of the liquid flow into his mouth until his swallowing reflex kicks in, continuing in that way until he's drunk all of what was in the bottle.";
							say "     You sit on the next bunk in line, eagerly watching the angel. And you don't have to wait long - a more healthy color returns to his face pretty quickly and then he opens his azure eyes. Raising his upper body a bit, supported on the bunk by one of his wings, the angel looks around, then smiles brightly at you as he notices you at his side.";
							say "     'My name is Elijah and I thank you, my friend. I feel much better now. Although rather strange...' he says, his brows knitting as he wiggles his fingers, flexes the muscles in his arms, followed by stretching first one, then the other wing to its fullest extent. Then he lifts the blanket he's under a bit and looks down, his eyes widening suddenly.";
							say "     'My memories are a bit woozy, but I'm sure THAT wasn't there before. Must have originated with one of the demons, but it doesn't feel evil in of itself. Curious. Oh well, I guess I'll ignore it for now and it'll be taken care of when I get home.'";
							delete chosenmilk;
							if honeycomb is owned:
								delete honeycomb;
							else:
								now honeygiven is true;
							delete healing booster;
							now hp of Elijah is 3;
							now the icon of Elijah is Figure of Elijah_virgin_icon;
							increase score by 20;
						else:
							say "     Maybe this isn't the right thing to do after all. There is still a small chance he might recover without you dosing him with experimental mixtures of stuff you picked up somewhere.";
					else:
						if demon seed is owned:
							say "     Reconsidering giving your impromptu cure, you remember the demon seed you still have in your pack. A wicked little thought sneaks into your mind - wouldn't it be interesting to see what the potent liquid might do to the helpless angel you have at your mercy?";
							say "[elijah_ds_tempt]";
						else:
							say "     Maybe this isn't the right thing to do after all. There is still a small chance he might recover without you dosing him with experimental mixtures of stuff you picked up somewhere.";
	else if (hp of Elijah is 3): [virgin Elijah]
		say "[ElijahTalkMenu]";
	else if (hp of Elijah is 4): [good Elijah]
		say "[ElijahTalkMenu]";
	else if (hp of Elijah is 99): [evil Elijah]
		say "[ElijahTalkMenu]";
	else if (hp of Elijah is 100): [lost to demons]
		say "ERROR-Elijah-1B: He shouldn't be available to talk any longer! Please report how you got to this message.";

to say elijah_ds_tempt:[temptation for Evil Elijah]
	if player consents:
		say "     You put your hand under your patient's head, raising it a bit and guide the old soda bottle holding the demon cum to his lips. Slowly, you let some of the liquid flow into his mouth until his swallowing reflex kicks in, continuing in that way until he's drunk all of what was in the bottle.";
		say "     At first nothing happens, but then suddenly the angel's body starts convulsing on the bunk. As you hold him down, you feel waves of heat run through him, accompanying rapid physical changes. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
		say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed,' this changed version of the angel growls. 'I'm Elijah, by the way - and I'm horny, so how about a quick fuck?'";
		decrease carried of demon seed by 1;
		now hp of Elijah is 99;
		now the icon of Elijah is Figure of Elijah_evil_icon;
		now lastfuck of Elijah is turns + 8; [guarantee he's ready for action]
		now hp of Gabriel is 1;
		now Angel vs Demons is not resolved;
	else:
		say "     Where did that thought come from? You shake it off, your mind returning to the remaining ingredients you need for the your angel revival milkshake.";

to say ElijahTalkMenu:
	LineBreak;
	say "What do you want to talk with Elijah about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk about what comes to mind";
	[]
	if hp of Elijah < 99 and libido of Skarnoth > 2 and libido of Skarnoth < 11:
		choose a blank row in table of fucking options;
		now title entry is "The imps hunting for you and him";
		now sortorder entry is 2;
		now description entry is "See if Elijah has an idea how to deal with that situation";
	[]
	if hp of Elijah < 99 and CloudKnowledge > 0:
		choose a blank row in table of fucking options;
		now title entry is "The area above the belltower";
		now sortorder entry is 3;
		now description entry is "Ask Elijah about the area above the belltower";
	[]
	sort the table of fucking options in sortorder order;
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
				if (nam is "Just chat a bit"):
					say "[ElijahTalk1]";
				if (nam is "The imps hunting for you and him"):
					say "[ElijahTalk2]";
				if (nam is "The area above the belltower"):
					say "[ElijahTalk3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the handsome angel, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ElijahTalk1:
	if (hp of Elijah is 3): [virgin Elijah]
		say "     Elijah says [one of]'Blessings be with you, my saviour.', combined with a small bow.[or]'I'm still feeling a bit weak.'[or]'I miss my flaming sword.'[or]'I hope my memories will come back soon. I can't even remember how to get home right now.'[or]'My prayers for your safe return are with you when you go out into the city.'[or]'Sometimes I get all tingly down here. Is that a bad thing?', and waves a hand over his crotch area.[or]'Do you have any experience with -' he waves at the bulge in the crotch of his tunic. 'Sometimes I think it has a mind of its own...'[at random]";
	else if (hp of Elijah is 4): [good Elijah]
		say "     Elijah says [one of]'Hi, how are you today.'[or]'What do you think of my new hair? Wicked cool, hm?'[or]'Be careful when you go out into the city.'[or]'How about we spend some quality time together?' and gives you a seductive smile.[or]nothing, giving you a smile instead that makes you feel all warm and happy inside.[or]nothing, he just leans in and gives you a hot kiss that leaves you gasping for more.[or]'Watch out if you go to the junkyard. I saw something big moving around there.'[or]'Did you know there are centaurs on the plains? Saw a whole herd of them when I flew over the area.'[or]'There is a flying city moving around in the sky at the edge of this reality. Not huge, but still quite impressive. Seems to be magically shielded from sight, so I guess you could only see it from very close up. Look for the red and green apartment houses, it stops there regularly.'[at random]";
	else if (hp of Elijah is 99): [evil Elijah]
		say "     Elijah says [one of]'I need something to fuck. Time to go hunting again.'[or]'You should have seen that succubus last night - she was begging me for to go again and again.'[or][if lastfuck of Elijah - turns > 6]'I'm horny, wanna fuck?'[end if][or]nothing, he just smirks at you, stroking the growing bulge at the front of his pants.[or]'All those creatures in the city look so tiny and weak from above - and they still do so when I swoop down and grab one to fuck.'[or]'You should get a few incubi in here. Best cocksuckers ever.'[at random]";

to say ElijahTalk2:
	if libido of Skarnoth is 3: [player wasn't beaten by imps yet, just fought them off and wants to get rid of them for good]
		say "     As you step up to Elijah and tell him of your encounters with the imps, a shadow of worry crosses his face. He explains, 'Imps may be small and weak in stature, but their powers should not be discounted. They are cunning little creatures that often serve stronger demons - both because they're usually forced to do so, but also of their own volition and ambition to rise in the ranks. You can be certain that they won't just go way until they have found their target and delivered it to their master. And as for him...' Elijah's brows draw together as he thinks for a moment, then nods to himself before he continues, 'Yes, now I remember the name. Skarnoth. Last I heard he took control of a pocket dimension between hell and earth and is styling himself a demon prince... which is technically true, since he is a fairly strong demon and only his minions populate the place otherwise. Still, he is a dangerous threat that we must deal with. Skarnoth has a reputation of ruthlessness and determination, so the only thing we can expect is an escalation of force if his hunting parties won't succeed for too long.'";
		say "     Elijah does paint a rather grim picture of what Skarnoth might send after you - swarms of imps instead of single scouts, hellhounds and other creatures. Sure, so far you didn't have any problems with the demon's minions, but who knows how long that will last. Could you take two imps at the same time? Or three? You're still in your thoughts as the blond angel clears his throat and gives your upper arm a squeeze. 'I would suggest that we don't wait for him to find us. In all likelihood, Skarnoth thinks I am still severely wounded and unconscious - being treacherous creatures, demons rarely take into account that one can help a fallen comrade rather than just waiting to see if he lives or dies. Surely he doesn't expect that I got such excellent care by a kind soul.' The handsome angel gives you an almost literally glowing smile, then stands up a bit straighter. 'So - even though I am still weakened and lost my sword, I can fight. Let us go for him together at a time when he doesn't expect it. Cut the head off this snake in a counterattack while his minions are out searching for us or still... sating themselves out in the chaos that has gripped this city.";
		LineBreak;
		say "     [bold type]Do you agree with Elijah's plan and set out to take the fight to Skarnoth himself ([link]Y[as]y[end link]), or will you put the angel off for the moment ([link]N[as]n[end link])?[roman type][line break]";
		if player consents: [go for Skarnoth]
			LineBreak;
			say "[DemonLairAttack]";
		else:
			LineBreak;
			say "     Shaking your head, you explain to Elijah that you're not yet ready to attack the demon prince. He takes your deferral calmly, but with visible disappointment. Pressing his lips together, Elijah nods slowly and say, 'You will know best when you are ready. But I would still suggest haste - it would be expedient to strike sooner, rather than later.'";
			now libido of Skarnoth is 4; [player talked to Eli, didn't go through with the attack]
	else if libido of Skarnoth is 4:
		say "     As you step up to Elijah and bring up the demon prince Skarnoth again, the angel gets quite lively, almost coming to attention. Feathers ruffle and spread as he stretches his wings, seemingly ready to take off at a moment's notice. 'Is it time to take on our enemy? Remember, the sooner we strike the less he will expect it. Let us cut off the head of the snake with a lightning strike!' Wow, the prospect of a good fight against demons sure got your handsome angel excited quick...";
		LineBreak;
		say "     [bold type]Do you agree with Elijah's plan and set out to take the fight to Skarnoth himself ([link]Y[as]y[end link]), or will you put the angel off for the moment once more ([link]N[as]n[end link])?[roman type][line break]";
		if player consents: [go for Skarnoth]
			LineBreak;
			say "[DemonLairAttack]";
		else:
			LineBreak;
			say "     Shaking your head, you explain to Elijah that you're not yet ready to attack the demon prince. He takes your deferral calmly, but with visible disappointment. Pressing his lips together, Elijah nods slowly and say, 'You will know best when you are ready. But I would still suggest haste - it would be expedient to strike sooner, rather than later.'";
	else if libido of Skarnoth is 10: [player got marked by an imp, the hellhounds are on their way]
		say "     As you step up to Elijah and tell him of your encounter with the imp, worry creases his forehead and he looks at you with an intense gaze. Glowing eyes go wide as he examines a part of you that only he can see. He raises one hand and reaches for your face, then blushes and lets it drop again. 'Uhm... I'm sorry, but you got... something on your face. I mean, your spirit does.' The angel indicates his own handsome visage with a wave of his hand, then some spots on his upper chest, indicating a full facial of imp cum that has dripped down a bit too. Swallowing visibly and blinking a few times to turn off his spiritual gaze, Elijah then clears his throat and adds, 'Sorry, but I can't help you remove... that. I'm sure it will come off eventually. Though until then... you're pretty clearly marked for anyone with the eyes - or nose - to notice it. And hellhounds are experts in taking up a scent-trail too.'";
		say "     You give a grave nod to the angel, recounting what the imp said about the beasts taking their sweet time as they enjoy the bountiful prey of the city - for now. But this is something that will only last until their master Skarnoth gets impatient and sends them off to bring you in after a few painful reminders that he's the boss. Elijah's brows draw together as he thinks for a moment, then nods to himself before he explains, 'Yes, I remember the name. Skarnoth. Last I heard he took control of a pocket dimension between hell and earth and is styling himself a demon prince... which is technically true, since he is a fairly strong demon and only his minions populate the place otherwise. Still, he is a dangerous threat that we must deal with, and time is running out before the pack of his hounds find you.";
		WaitLineBreak;
		say "     Elijah does paint a grim picture of what a whole pack of hellhounds can do - vicious and intelligent, those demon beasts are dangerous enough on their own. The concerted attack of a whole pack is the stuff of nightmares, usually leaving not much more of the victim than a few blood-dripping shreds. You're still trying to shake off thoughts of such a scene when the blond angel clears his throat and gives your upper arm a squeeze. 'I would suggest that we don't wait for them to find us. As the imp said, the beasts are pretty easily distracted - and it will take their master's whip to send them after you. So - let us go for him together at a time when he doesn't expect it. Cut the head off this snake in a counterattack while his minions are out searching for us or still... sating themselves out in the chaos that has gripped this city.";
		LineBreak;
		say "     [bold type]Do you agree with Elijah's plan and set out to take the fight to Skarnoth himself ([link]Y[as]y[end link]), or will you put the angel off for the moment ([link]N[as]n[end link])?[roman type][line break]";
		if player consents: [go for Skarnoth]
			LineBreak;
			say "[DemonLairAttack]";
		else:
			LineBreak;
			say "     Shaking your head, you explain to Elijah that you're not yet ready to attack the demon prince. He looks at you with urgent concern, then says, 'Please be quick in your preparations. We don't know when the pack will be sent to find you. They might be on their way even now!'";
			now libido of Skarnoth is 11; [marked player talked to Eli, didn't go through with the attack]
	else if libido of Skarnoth is 11: [marked player talked to Eli, didn't go through with the attack]
		say "     As you step up to Elijah and bring up the demon prince Skarnoth again, the angel gets quite lively, almost coming to attention. Feathers ruffle and spread as he stretches his wings, seemingly ready to take off at a moment's notice. 'Is it time to take on our enemy? Remember, the hellhounds could take up your trail any time now. Let us cut off the head of the snake they call master before he reminds them of their task!' Wow, the prospect of a good fight against demons sure got your handsome angel excited quick... well, that or he's really worried about you.";
		LineBreak;
		say "     [bold type]Do you agree with Elijah's plan and set out to take the fight to Skarnoth himself ([link]Y[as]y[end link]), or will you put the angel off for the moment once more ([link]N[as]n[end link])?[roman type][line break]";
		if player consents: [go for Skarnoth]
			LineBreak;
			say "[DemonLairAttack]";
		else:
			LineBreak;
			say "     Shaking your head, you explain to Elijah that you're not yet ready to attack the demon prince. He looks at you with urgent concern, then says, 'Please be quick in your preparations. We don't know when the pack will be sent to find you. They might be on their way even now!'";
			now libido of Skarnoth is 11; [marked player talked to Eli, didn't go through with the attack]

to say ElijahTalk3:
	if CloudKnowledge is 1:
		say "     'Oh? The Clouds?' Elijah asks. You tilt your head at him, intrigued. Seeing that you don't know what he's talking about, the angel explains further. 'That area moved to the campus after your apocalypse, why are you interested in it?' Is his continued response. You explain to your friend that you wish to get up there, as there appears to be quite a few people who go up there to hang out and you're curious about it. Elijah nods before giving you a smile. 'Alright then, if you need a ride up there, then just ask me, I'll take you.' He tells you. Nodding, you tell him that you'll keep it in mind.";
		now CloudKnowledge is 2;
	if CloudKnowledge is 2:
		say "     Elijah gives you a smile before holding his arms wide open. 'Come on,' He says to you. With an intrigued look on your face but you do what he asks, stepping foward. He picks you up in a bridal style carry before he moves to the outside and spreads his wings. In an instant he pushes off the ground and begins to flap his wings, the two of you soaring into the sky. As you make your way to the campus you can see the entire city, a sight that fills you with wonder. It doesn't take long though to reach your destination and once there Elijah starts bringing you higher until you are above the clouds. The two of you land on the surprisingly firm ground before the angel puts you down. 'Don't worry about being stuck here. I spotted a pool right below one of the clouds. You could land in there.' He says cheerfully before leaving you there after saying that he'll see you back at the bunker.";
		move player to The Clouds;

to say DemonLairAttack:
	say "     Armed and prepared as good as you're gonna get, you set out into the wild streets of the city together with Elijah. Some creatures along the way raise their heads and look over at the two of you with lusty gazes, but something about the determined stride and grim expressions you show puts them off from attacking. Seems like they're not ready to take on a [bodyname of player] and an angel on a mission - not as long as there's countless easier marks to pick from for some sexy fun. A short while later, you arrive at the burned-out chapel from where you rescued Elijah from his captors and step in through the open entrance portal. 'It pains me to see a house of our father in such a state,' Elijah says as he looks around, taking in the ruined remains of the pews and the blackened walls.";
	say "     His brows draw together in scorn a moment later, and following his gaze you see the cracked altar at the end of the large room. It is literally dripping cum - some creature must have used it as a fuck-pad and came all over the stone block! The shocked silence at the sacrilege is broken a second later by a whimper and groan coming from behind the altar, and looking further down, the two of you spot a slender human foot poke out from behind the defiled altar. In answer, a deep and gravelly voice can be heard from an open archway in the left-hand wall, saying in a cruel tone, 'Trying to crawl away bitch? Its my turn now and I'm gonna punish you for that! Fuck you till you're raw!' With that said, a hulking demon brute steps out of the shadows, his massive erect shaft leading the way.";
	WaitLineBreak;
	say "     'Not while I'm here, creature!' Elijah shouts in rage and sprints forward, engaging the purple demon in a fight. You try to close up and help him, but a second demon follows after the first - coming out of the darkened side room. This one isn't fully hard and his weighty shaft dangles down between thick and muscled legs, its length glisteningly wet and with cum smeared over the head and shaft. Looks like he's the one who took their victim before and 'decorated' the altar in his seed. With an eager grin showing a worrying amount of sharp teeth, the demonic creature turns his red-glowing eyes on you and roars with battle-lust!";
	challenge "Demon Brute";
	if fightoutcome >= 20 and fightoutcome <= 29:  [lost]
		say "     After sating himself on you, the demon stands up straight again and starts to turn around, wanting to check out what his buddy has been doing to Elijah. As it turns out, the purple brute got his ass handed to him, and Elijah smashes your opponent in the head with a singed wooden beam before he really knows what's going on. The demon that just raped you goes to his knees, momentarily stunned, giving Elijah enough seconds time to pull you up from the ground and loop your arm over his shoulders, bracing you to keep standing. He half-turns around, looking over to the demon's victim - a naked and bruised young woman, as it turns out - but as the creatures start getting up again, he can do nothing more than call out, 'I'm really sorry. We can't... help you right now.'";
		say "     With that said, he drags you towards the exit, step for stumbling step. The demons roar and come after you, but as soon as the angel reaches the open street, he takes off with frantic beats of his wings, carrying you along. Elijah is pretty exhausted from the fight and carrying so much extra weight, you almost hit the edge of a building's roof several times, but his improvised escape works and you land half a block away, having shaken the demons. The blond man folds his wings and gives a deep sigh, then looks at you shame-facedly and says, 'We - we got to try again. They still have that woman at their mercy - and without taking out the master demon, the hellhounds will eventually find you!' Nodding silently and wondering how to improve your combat-readiness, you make your way back to the library with him.";
	else if fightoutcome >= 30:  [fled]
		say "     Retreating from the might of the demon brute, you high-tail it out of the chapel, running to the exit and onto the streets as the demon brute chases you. He keeps coming after you for a good while and the growls and sounds of scraping claws close behind keep you running all out until you finally manage to shake him. As you catch your breath and start making your way back to the library afterwards, Elijah passes overhead some time later, searching for you from the skies. The blond man lands next to you and folds his wings, giving a deep sigh. Then he looks at you shame-facedly and says, 'We - we got to try again. They still have that woman at their mercy - and without taking out the master demon, the hellhounds will eventually find you!' Nodding silently and wondering how to improve your combat-readiness, you make your way back to the library with him.";
	else if fightoutcome >= 10 and fightoutcome <= 19:  [won]
		WaitLineBreak;
		say "     The cloud of purple smoke that your demon opponent turns into wafts away, quickly following the one Elijah took out just moments before you. 'Look where they're going, I'll take care of her,' the blond angel calls out to you in a somewhat breathless voice, nodding to the dark passage into which the smoke clouds move. You see him kneel next to the creature's victim as you quickly dash forward, then almost stumble on some rubble that is hard to see in the darkness. From ahead of you, a dim red glow gives at least a little light, and as you turn a corner a moment later, you come upon what seems to have been a storage room - shards of glass litter the floor, as do empty wine bottles and ripped open packets of communion wafers. Seems like the latter weren't to the taste of the demons and mostly got strewn all over the floor and stomped to bits, but someone got roaringly drunk on the wine. The back wall of the room bears a large pentagram smeared on the stones, its lines glowing dimly red. The air in front of it wavers visibly and you see the demon smoke clouds float there and vanish without a trace.";
		say "     A moment later, Elijah catches up to you and turns his gaze at the pentagram in a knowing nod. 'This is it, the portal to Skarnoth's domain. Let us go in and take out the head of the snake!' After giving your upper arm a companionable squeeze, Elijah bravely steps forward and vanishes himself. You follow right after him and find yourself in a well-sized room with a lewd, somewhat medieval flair, from its stone wall and floor to an arched ceiling and cast-iron sconces depicting naked men and women entwined around the flames they hold between them. Several other pentagrams on the walls indicate that this is a kind of hub, but only the one you came through seems to be active.";
		WaitLineBreak;
		say "     'There is a vile energy in this place,' Elijah tells you in a low tone, 'It has been created by foul magic and bears Skarnoth's mark. Be ready for another fight.' Peeking through a door leading from the room, you find an empty hallway with further rooms along its length, then quietly walk into it along with Elijah. None of the doors are locked and checking them one by one, you find various storerooms of plundered luxury items from the city, as well as a chamber of... either torture instruments or disturbingly creative sex toys - maybe both, actually. You're about to open another door when a shouted moan from the other side makes you pause. 'Yeah, take that dick you bastard!' is shouted by a man with a rich, masculine voice - and after a questioning look to Elijah if he's ready, you pull open the door and see who is in there.";
		say "     Behind the door is a lavishly appointed bedroom, complete with an exceedingly large four-poster bed with red silk sheets and a mirror on the ceiling. A male human lies spread-eagled on the bed, his arms and legs tied securely to the posts. From the looks of the logo on his ripped t-shirt, he's a student from Tenvale College in the city, no doubt dragged off to this little pocket of hell to serve as a sex toy for the demons. As he is right now, actually - a succubus straddles the young guy's head, grinding her crotch against his face as she holds him by the hair. Meanwhile, his other end is doubly occupied, with a slender incubus bouncing up and down on the human's erection while a quite imposing demon fucks his ass. This must be Skarnoth, there's little doubt about it.";
		WaitLineBreak;
		say "     Looking closely at the terrible but magnificent sight of the demon prince, you take in his muscular body, glistening with the sweat of a long fuck-session. Overall human in shape, he has a ripped physique, albeit with small red scales on the sides of his upper body, then larger and more solid ones on his hips and down the legs. Covered in those overlapping plates, his digitigrade legs end in feet bearing sharp claws that dangle over the edge of the bed, as does a long tail. The appendage has a ridge of scales going down its length starting from the small of his back and ends in a spaded tip. Further scale-plates make it appear as if he is wearing elaborate bracers as well as spiky pauldrons to cover his shoulders. The demon's hands bear strong fingers with sharp claws, which he playfully uses to leave shallow scratches over his human toy's legs. Crowning Skarnoth's attractive body is a horned head with blood red hair as well as a gorgeous face with glowing yellow eyes and a little goatee. An expression of gleeful bliss overs his face as he thrusts into the young man his minions brought for him.";
		say "     'Stop this at once, you corrupter of innocents!' Elijah shouts angrily and steps forward into the room, causing the gyrations of the demons on the bed to freeze for a second. Turning his head to give you and your angelic companion a lewd look, Skarnoth gives a snort of amusement and says in a gleeful tone, 'And I thought I'd have to drag you here kicking and screaming. Now this is just fucking convenient - my future angelic slut and fuckhole comes all on his own and even brings an extra. Get him, my pets!' The succubus and incubus on the bed jump up without hesitation and immediately rush to attack Elijah, while Skarnoth himself almost lazily pulls his shaft out of the student. 'I'll be right back sweet-cheeks,' he says to the spread-eagled human, teasingly tracing a line down his front with a clawed finger, starting at a black metal collar and ending at the young man's balls, then stands up to face you.";
		WaitLineBreak;
		challenge "Demon Prince";
		if fightoutcome >= 20 and fightoutcome <= 29:  [lost]
			say "     After his last blow leaves you swaying back and forth, Skarnoth pulls your feet out from under you with a swipe of his tail. Crashing down on the stone floor and bumping your head hard on unforgiving flagstones, you see nothing but stars dance before your eyes for a moment. By the time you regain your senses and can shake off the dizzyness, the field of your vision is dominated by red - pale reddish skin and the dark red scales that cover Skarnoth's legs. The demon prince is crouching over your chest, his clawed feet planted just beside your chest. You feel something warm touching your stomach and legs so you look down for a second, past the dangling erection and full balls of the demon, seeing that it is the fleshy underside of his tail rubbing up against you.";
			say "     While you're still busy taking in your situation, Skarnoth's attention is directed towards his demon playmates for the moment, chuckling darkly at the sounds of scuffling and fists impacting flesh. You can't see what's happening, but judging from the demon prince's gleeful expression, it can't be good. Eventually Skarnoth says, 'That's enough. Don't rough him up too much... I want to have lots of fun with him yet. Take our little angel to the dungeon and wait for me there. I will join you after a little appetizer.' With that said, he turns his black eyes filled with two glowing yellow irises onto you. 'Let's see how well you can serve mortal'";
			WaitLineBreak;
			say "     The demon takes hold of your head with one clawed hand, pulling it up with a sharp tug on the hair. His other hand holds the long and thick shaft of his erection, holding it up for you to take in all the details - from the veins throbbing along the shaft to the drop of pre clinging to the cum-slit and radiating a yellow glow of demonic power. 'This is your new god, fuckmeat. You will crave my cock and beg me for it before to long,' Skarnoth tells you in a mocking tone. Then he yanks on your hair again, thrusting his manhood into your open mouth a you gasp in pain. He doesn't stop until his full shaft is down your throat either, just holding on to you firmly as you twitch and try to adjust to the sudden invasion of his demonic cock.";
			say "     You're face-fucked harshly with rapid and deep thrusts, half of the time feeling as if you're about to pass out for lack of air. Despite this, [if player is male]your own manhood becomes hard as rock[else if player is female]your pussy gets more than just a little moist[else]your whole body tenses in arousal[end if] as it somehow can't help but respond to the demanding way Skarnoth is breaking you in as his newest slave. This must have something to do with his power as a demon prince and being your rightful master. 'Master?!' you say to yourself in your mind after that thought, wondering where the term suddenly came from. The confusion and attempt at resistance melts away like a sand-castle in the rain an eye-blink later as Skarnoth proceeds to cut off your airway with his cock once more, making you almost pass out.";
			WaitLineBreak;
			say "     After who knows how long of being face-fucked (you can barely string your thoughts together right now due to the harsh treatment), Skarnoth gives a satisfied roar and the thick shaft between your lips gives a mighty throb, followed by another and another. Warmth fills your insides, burning a little as the too hot demon cum is blasted down your throat and right into your stomach. Demonic power pulses through your body as you are marked as Skarnoth's property for good, with each new spurt staining your body and soul further. After enjoying the tightness of your throat for a few moments, he proceeds to pull back and fills your mouth with even more cum - tasting quite hot and spicy, as if his seed was flavoured with jalapeno peppers.";
			say "     Eventually Skarnoth pulls his prick out of your mouth, gleefully spurting slightly glowing demon cum over your face for good measure. He even hits you in the right eye (on purpose), which stings like hell, then wipes the last drops of his load on your other cheek as you rub at the clenched eyelid. 'That's a good pet. I'll enjoy having you again and again,' the demon says with a cruel grin, then stands up again. He starts walking away, only to pause after a few steps and look over his shoulder. 'Oh yeah, you may come too, slut. Do it now.' His eyes glow even brighter for a second as demonic power lashes out with the command - overwhelming you with a sudden orgasm. Bucking on the hard ground as you scream in lust, [if cocks of player > 0]your cock erupts with cum, blasting away everything that your balls have to give and making a total mess of yourself[else if cunts of player > 0]your pussy starts leaking and squirting femcum like crazy, making a total mess of yourself and forming a puddle between your legs[else]your sexless body is wracked by unfulfilled breeding imperatives that turn you into a drooling mess[end if]. Skarnoth laughs at the spectacle and says, 'Someone will be along to clean you up eventually.' With that, he walks out of the room, leaving you behind in your still twitching and totally exhausted state.";
			WaitLineBreak;
			now battleground is "Void";
			now bodyname of player is "Demon Slave";
			end the story saying "You're stuck in hell - there's no coming back from that!";
		else if fightoutcome >= 30:  [fled]
			say "     You might have gotten away from Skarnoth himself for a second, turning your back on Elijah and running from the demon prince's bedroom, but as fate will have it, a large group of demons come through the pentagram gate just as you reach the hub. Within moments, you're overwhelmed and brought before their master once more, who gleefully fastens your very own slave collar around your neck and then introduces you to the beginning of an eternity of servitude in hell.";
			now battleground is "Void";
			now bodyname of player is "Demon Slave";
			end the story saying "You're stuck in hell - there's no coming back from that!";
		else if fightoutcome >= 10 and fightoutcome <= 19:  [won]
			say "     As you knock the demon prince to the ground, the two sex demons who had been keeping Elijah engaged in team-work attacks look rather shocked at the fact that a mortal beat their master. The two of them share a wide-eyed gaze, then turn and flee out the door, abandoning Skarnoth without a second thought. 'That is the weakness of forced obedience,' Elijah says with audible contempt, then quickly moves to the bed to free the captive. Meanwhile, Skarnoth pushes himself up into a half-crouch, looking at you defiantly as he sneers, 'You think I'm beaten?! You've seen nothing yet!' The demon spits at you, the gob almost hitting your foot, then looks at Elijah with a sneer. 'I notice you're not wearing your blade, little angel. Just how do you plan to finish this then? A bit hard to strike down a man in judgement without it, hah. Goody two-shoes angels are too weak to get their hands dirty - I know you, remember?'";
			say "     Looking over at Elijah, you see him raise a glowing hand to the student's neck, then quickly pull the slave collar from him, dropping the segmented ring of metal on the bed. It glows hotly and singes the silk sheets - looks like he had to use quite a bit of power to get that thing off the captive. Then he lays his still glowing hand on the human and his many scratches and bruises vanish in seconds. As the young man hugs Elijah's midriff and whimpers in relief, the angel looks at Skarnoth with a steely gaze, then over to you. Biting his lower lip, the handsome angel clenches his fists, then looks down and opens them again. 'I - um, he isn't all wrong about this actually. If I take his life with my own hands, get blood on them, I - I will never be able to heal anyone again. You just can't bring comfort after such an act. This is not what they were made for...";
			WaitLineBreak;
			say "     Skarnoth chuckles cruelly at Elijah's dilemma and says, 'Guess you'll just have to let me go, you two heroes. I promise not to come after you ever again, honest! You can trust my word.' His contemptuous grin almost drips with duplicity, but then freezes in disbelief as Elijah adds, '...but I will do what I must. Your evil cannot go unchecked.' Patting the rescued student and gently pulling his arms from around his hips, the angel takes a first step towards Skarnoth, then another. 'Wait! Hey, we can talk about this,' the demon pleads, now for the first time actually fearing for his life.";
			LineBreak;
			say "     [bold type]How do you deal with this situation? Watch Elijah 'take care' of Skarnoth ([link]Y[as]y[end link])? (Be advised that this will severely affect the angel.) Or would you rather step in and handle this yourself - one way or another ([link]N[as]n[end link])?[roman type][line break]";
			if player consents: [Elijah does it]
				LineBreak;
				say "     You stand back and watch your angelic friend walk over to Skarnoth, who tries to scramble away - soon reaching the unyielding stone wall of his bedroom. Back pressed against the cold stone, the demon prince spurts out the words, 'No! You'll regret this! I can...' Then Elijah's hands close around his neck and the angel starts to squeeze as hard as he can. Scratching and kicking for his life, trying to get out of his hated opponents grasp, Skarnoth can't escape no matter what he tries and eventually, his limbs slacken, falling lifeless to the ground. When the deed is done, Elijah slowly rises and lets both hands drop to his sides, looking at you and the student with sadness in his eyes.";
				say "     Silence stretches out for a few seconds, until groans and cracks start up all around you - seems like this little magical realm won't survive its creator too long. After a hasty retreat back to the gate hub, the three of you stumble through the portal and end up back in the burned-out chapel. 'You should be safe from the hounds now,' Elijah tells you in a quiet voice, then takes the young guy you rescued from hell by the hand. 'And you, I'll bring home safely now. After that, I - I got to be alone for a while.' With a wave to you, he walks off with the student, leaving you to find your way back to the library on your own.";
				now libido of Skarnoth is 100; [dead]
				now hp of Elijah is 101; [left after killing Skarnoth]
				remove Elijah from play;
			else:
				LineBreak;
				say "     Stepping into the way of the solemn angel, you hold him back from Skarnoth and quietly say that you will be the one to handle him. Elijah gulps visibly, then nods, relief painfully clear on his face.";
				say "     [bold type]Well then - what do you do? Can't let this demon roam free - so there are basically two choices here. You could snatch up that slave collar and put it on Skarnoth ([link]Y[as]y[end link]), or do actually choke the life out of him ([link]N[as]n[end link])?[roman type][line break]";
				if player consents: [enslave Skarnoth]
					LineBreak;
					say "     Reaching out to take the black collar lying on the nearby bed, you feel its power as your fingers close around the metal. It is almost as if it is alive, whispering to you about the power and control it can give you - but that's surely just your over-active imagination, right? Elijah's brows rise as he sees you step up to the crouching demon with the collar in hand and he clears his throat. 'Are you sure you want to do this? Containing a demon is not an easy task. He will bargain with you and try to get away, try to corrupt you and gain his freedom. They are a vile, deceptive breed.' Having made your decision, you try to calm Elijah and tell him that it is the best of several bad options, then get back to approaching your captive.";
					say "     'You won't regret this decision,' Skarnoth tells you in the sweetest tone imaginable and gives a friendly smile. 'I knew you were a reasonable person.' He holds still as you lay the collar around his neck, then grinds his teeth together as the loose segments of its ends melt together and singe his neck. 'No problem, I like it hot,' he chokes out through clenched teeth, then quickly takes on the smile for you again. 'Err... my 'master', we should get going now. With my magic bound by this delightful piece of jewelry, I fear that this place won't last much longer. And just as he said - groans and cracks start up all around you and the ground shakes suddenly. After a hasty retreat back to the gate hub, the four of you stumble through the portal and end up back in the burned-out chapel. 'You should be safe from the hounds now. And... don't trust him, no matter what he says,' Elijah tells you and gives a glare at Skarnoth, then takes the young guy you rescued from hell by the hand. 'And you, I'll bring home safely right away.' With a wave to you, he walks off with the student, leaving you to find your way back to the library on your own, accompanied by your new demon slave.";
					WaitLineBreak;
					say "     Arriving back home not too long after, you look around for a place to keep Skarnoth in and eventually find a proper room - the half-renovated old dining hall of the former convent. The abandoned metal scaffold still standing in the large room is the ideal place to attach his collar by a long chain...";
					now hp of Skarnoth is 1;
					move Skarnoth to Half-Renovated Room;
					now SkarnothLibraryEntry is turns;
					move player to Half-renovated Room;
					now libido of Skarnoth is 20; [enslaved]
				else: [kill him]
					LineBreak;
					say "     You walk over to Skarnoth, who tries to scramble away - soon reaching the unyielding stone wall of his bedroom. Back pressed against the cold stone, the demon prince spurts out the words, 'No! You'll regret this! I can give you everyth...' Then your hands close around his neck and you start to squeeze as hard as you can. Scratching and kicking for his life, trying to get out of your grasp, Skarnoth can't escape no matter what he tries and eventually, his limbs slacken, falling lifeless to the ground. When the deed is done, you rise to stand over the body. Elijah's hand gently comes to rest on your shoulder and he gives you a squeeze, standing by you no matter what.";
					say "     Silence stretches out for a few seconds, until groans and cracks start up all around you - seems like this little magical realm won't survive its creator too long. After a hasty retreat back to the gate hub, the three of you stumble through the portal and end up back in the burned-out chapel. 'You should be safe from the hounds now,' Elijah tells you in a quiet voice, then takes the young guy you rescued from hell by the hand. 'And you, I'll bring home safely right away.' With a wave to you, he walks off with the student, leaving you to find your way back to the library on your own.";
					now libido of Skarnoth is 100; [dead]

Section 3 - Gathering (and other) Events

[This event exists mainly to allow players with girl banned to have a means to find a honeycomb.]

Sweet Surprise is a situation. Sweet Surprise is resolved.
The sarea of Sweet Surprise is "Park".

Instead of resolving a Sweet Surprise:
	say "     As you're searching through the park, you come across the remains of a picnic site that's been quite torn up. There's some shreds of clothes and sticky pools of sexual fluids scattered around the torn blanket. The dishes and cutlery are scattered and all that remains of the food is crumbs. An overturned bottle of wine's left a large stain on the blanket and you spot an empty ring case beside it. It seems things did not go quite as planned for this romantic picnic, but you hope that the couple are still together in whatever new forms they've gained. You're about to leave when you spot their wicker basket knocked into the nearby bushes. Whatever dessert was once in there has spoiled and become a suspicious green mass, but next to it is a sealed container holding a large honeycomb, probably meant to be used to top the dessert with fresh honey[if hp of Elijah is 2]. Remembering that you're looking for some to possibly heal the angel, you pack it away[end if].";
	increase carried of honeycomb by 1;
	increase score by 5;
	now Sweet Surprise is resolved;

[This event exists mainly to give players another means to obtain a healing booster.]

Examination Room is a situation. Examination Room is resolved. The level of Examination Room is 8.
The sarea of Examination Room is "Hospital".

Instead of resolving a Examination Room:
	say "     Coming across a set of examination rooms, you start searching them in the hopes of finding some useful supplies. Unfortunately, it seems that they've already been searched and much of the useful items have already been gathered. As you're ransacking a third of them in increasing frustration, you hear the door slam open as a jaguar dressed like an orderly comes striding in, clearly upset at having found you snooping around.";
	challenge "Jaguar";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having beaten the orderly, you give the other rooms a cursory search. As others may be drawn by the noise of the fight, you go as quick as you can. The only item of any use you're able to find is a small syringe labelled as a [']healing booster[']. Concerned that you've already tarried too long, you take it and leave.";
		increase carried of healing booster by 1;
		increase score by 5;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After the jaguar is finished with you, it roughly sends you on your way, driving you off. He then heads back to the examination rooms, probably to gather up the remaining medical supplies. You head back to the entrance to rethink your next move.";
	else:
		say "     You manage to move around the jaguar and make a run for it, heading back to the relative safety of the hospital entrance to rethink your next move.";
	now Examination Room is resolved;

instead of going inside from the Grey Abbey Library while (Elijah is in the Bunker and hp of Elijah is 99 and thirst of Elijah is 0 and "Submissive" is listed in feats of player and lastfuck of Elijah - turns > 6):
	move player to Bunker;
	say "     As you enter the bunker, you suddenly hear a voice say 'Ah, there you are' coming from right beside you. Turning, you see Elijah straighten up from where he was leaning against the wall next to the door. The dark angel in his tight black leather pants gives you an evaluating look, then continues with 'Come on, you can help me with something...' and starts up the stairs into the library. A shiver of arousal runs through you at being ordered around by the handsome man and you find yourself following him almost without thinking about it.";
	LineBreak;
	say "     When Elijah takes direction towards the library entrance doors next, it becomes obvious that he wants to go somewhere out in the city. Do you really want to follow him?"; [last chance at breaking this off]
	if player consents: [now it's sure the player will get fucked]
		now thirst of Elijah is 1; [setting the flag as the player gets fucked either way]
		now Captured Soldier is unresolved;
		setmonster "Spidertaur";
		choose row monster from the table of random critters;
		LineBreak;
		say "     Elijah leads you out of the library and towards a large townhouse several blocks over, giving you a grin as he ushers you inside, then pulls the door closed after entering himself. Following him further as he walks through the house, you soon find yourself stepping into a bedroom containing a large four-poster bed and lots of thick strands of spiders silk stretched from wall to wall. In the midst of that is a large spidertaur, just busy pulling things into their right place and handling a somewhat loose thread with three of his legs. The creature's black spider's body and legs show an interesting pattern of neon-green lines - seems someone, likely he himself, did some fine body-art with spray-paint.";
		say "     After the silk line is securely anchored, giving the structure of webbing more stability, the spidertaur gives a satisfied nod and turns towards Elijah and you. 'I'm done, look...' - he scuttles over to the bed, pointing out web lines hanging loosely from the posts of it - '...soft but durable restraints, securely tied down, ...' - then he moves to the bowl-like silk shape hanging in the midst of many lines anchoring it to the walls and ceiling - '...and here's your very own sex sling. Everything as ordered - so let's get to my payment, will we?' The spidertaur eyes your body with unrestrained lust in his eyes. Elijah answers 'But of course, Zephias', then gives your ass a slight squeeze before pushing softly against your back to move you forward. 'Have fun.'";
		LineBreak;
		say "     Your heart beats rapidly at the thought of Elijah pimping you out to others. Do you go along with your submissive impulses and just let this happen ([link]Y[as]y[end link]), or does that go too far for your taste and you want to get out of here ([link]N[as]n[end link])?";
		if player consents: [go into it willingly]
			say "     Stepping forward as directed, you pull off your gear and clothes and drop them to the ground as you walk towards the spidertaur. You're fully naked by the time you arrive in front of his large hybrid form. Zephias gives you an appreciative and lust-filled look, then turns to Elijah and remarks 'Very well trained, this one.' as he starts to run his human hands over you to stroke and caress your [bodytype of player] body. You can't help but pant and moan as you give yourself to be used by this stranger, used as payment for his services by the handsome fallen angel that brought you here.";
			say "     Zephias turns you around, stroking down your back and ogling your ass, then you can feel his breath against your neck, followed by a whisper into your ear 'You'll be fun, little fly.' He gives your earlobe a little nibble, then pulls your head aside and gives you a somewhat painful hickey on the side of your neck. Directing you to move over to the silk sex sling next, he has you lie back in its soft, slightly giving material.";
			WaitLineBreak;
			say "     From your new position, lying on your back, you see the spidertaur in all his terrible glory before you. His muscled, human upper body leans closely over you as he adjusts your position slightly and ties your arms up over your head with soft silk ropes. Taking in his attractive and a bit heady male scent as his muscled chest is right in front of you makes you pant in lust. Then he stretches up on long legs to adjust a web strand there, revealing his lower body to you. Your eyes are drawn to the crossover zone between his human upper body and the giant spider lower half, and you immediately notice that some of the black and green chitin plates at his crotch are pulled apart a bit now, allowing Zephias manhood to emerge in its now fully erect state. And he's... pretty well hung. You've got some interesting time ahead of you.";
			say "     Next, you feel the spidertaur's hands raising and spreading your legs, sliding them into already-prepared slings hanging from the ceiling. Turning towards Elijah, who stands nearby and observes, now with his leather pants lowered and a hand on his cock, Zephias grins and says 'Now let me show you how to use this properly.' Stepping up close to you, he slowly strokes the insides of your legs with his hands and you can feel his shaft rubbing against the crack of your ass.";
			WaitLineBreak;
			if cunts of player > 0: [female+herm]
				setmonster "Seraphim";
				choose row monster from the table of random critters;
				say "     Stepping up close to you, he slowly strokes the insides of your legs with his hands and you can feel his shaft rubbing against the crack of your ass. Zephias reaches down to take hold of his shaft, then puts the tip right against your dripping sex. He rubs it up and down over the sensitive pussy lips, making you moan loudly as he brushes over your clit. The aroused spidertaur puts the head of his cock just between your nether lips next, slightly nudging them apart as he says 'Get ready, my little fly.' Then he proceeds to take hold of your legs and thrusts forward, sinking his cock deep into your welcoming passage. Keeping going until he bottoms out, his balls touching your crotch, he leans forward and plants a kiss on your lips, pushing his tongue into your mouth to invade your body from both ends. After a while of tongue-fencing with you, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
				say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, the green-marked spidertaur has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, [if cocks of player > 0]your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering your naked chest with your own seed[else]you come, gushing femcum all around his hard shaft to run and drip down onto the silken sling under you[end if]. 'So you got off from having me inside you, hm? Your pussy feels amazing with all the little twitches going through your now.' Zephias remarks, then gets back into fucking you hot and hard, even speeding up a bit as his own orgasm approaches. It's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.[fimpregchance]";
				WaitLineBreak;
				say "     After a moment to catch his breath, the spidertaur pulls out of your freshly-bred pussy with a little plop, leaving it stretched open and dripping cum. Giving your asscheeks a playful slap each, he then says to Elijah 'As good as you promised. A pleasure doing business with you. Hope you have fun with the setup.' The naked angel gives him a lusty grin, then steps up in front of the sex sling and replies 'Oh, I will.' as he enters your sloppy hole all the way in a deep thrust. He continues 'You - can - bet - on - that', each word grunted out as he pulls back and pounds against your crotch again and again.";
				say "     Even though you just came, getting fucked - getting taken by a second dominant man in a row - quickly has your lust rising again. The squishy sounds of cum squirting out of you as Elijah slams his cock in your pussy are joined by your moans and pants, then your begging for him to fuck you harder. Thrusting in and out of your cum-filled passage, your angel pimp speeds up more and more, then suddenly lets out a grunt of 'I'm gonna... cum!', accompanied by slamming forward one last time. You can feel his hard shaft pulse against your inner walls as he comes, spurt after spurt of his seed jetting into your insides.[fimpregchance]";
				WaitLineBreak;
				say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole as he puts a hand on [if cocks of player > 0]your hard shaft and jerks you off [else]your crotch and strokes you there. [end if]Grinning, he takes care not to get you off, just to keep you all hot and bothered, aching to come. Some time later, after giving you one last grope, Elijah takes off your bindings and helps your oversexed and trembling form to stand up from the sling. 'You did well, pet. I allow you to get yourself off now.' Your hands fly to your crotch [if cocks of player > 0]to grab your incredibly hard erection and jerk it[else]to stroke over your pussy lips and clit[end if]. In no time at all, you get your release, [if cocks of player > 0]spraying long strings of cum into the air to splatter[else]gushing femcum from your sex and dripping it onto[end if] the hardwood floor.";
				say "     'I need to bring you here more often' the dark angel says with a smile, followed by 'Time to clean up.' He then has you clean up the room - naked as you are - licking up the cum from where it leaked onto the sling and dripped on the smooth hardwood floor. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
			else: [male+neuter]
				say "     Stepping up close to you, he slowly strokes the insides of your legs with his hands and you can feel his shaft rubbing against the crack of your ass. Zephias pulls a compact bottle of lube out of a holster strapped against his left front leg, then puts a good amount of the slippery gel on his hard shaft. Putting the tip of manhood against your pucker and rubbing it up and down over it, then teasingly pressing against it, he says 'Get ready, my little fly.' Then he proceeds to take hold of your legs and thrusts forward, sinking his cock deep into your tight hole. Keeping going until he bottoms out, his cock resting deep inside your ass, he leans forward and plants a kiss on your lips, pushing his tongue into your mouth to invade your body from both ends. After a while of tongue-fencing with you, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
				say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, the green-marked spidertaur has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your [if cocks of player > 0]own cock starts to throb as spurt after spurt of cum jet from its tip, splattering your naked chest with your own seed[else]whole body starts to tremble and shake in an amazing orgasm[end if]. 'So you got off from having me inside you, hm? Your ass feels amazing with all the little twitches going through your insides now.' Zephias remarks, then gets back into fucking you hot and hard, even speeding up a bit as his own orgasm approaches. It's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
				WaitLineBreak;
				setmonster "Seraphim";
				choose row monster from the table of random critters;
				say "     After a moment to catch his breath, the spidertaur pulls out of your ass with a little plop, leaving it stretched open and dripping cum. Giving your asscheeks a playful slap each, he then says to Elijah 'As good as you promised. A pleasure doing business with you. Hope you have fun with the setup.' The naked angel gives him a lusty grin, then steps up in front of the sex sling and replies 'Oh, I will.' as he enters your sloppy hole all the way in a deep thrust. He continues 'You - can - bet - on - that', each word grunted out as he pulls back and pounds your ass again and again.";
				say "     Even though you just came, getting fucked - getting taken by a second dominant man in a row - quickly has [if cocks of player > 0]your manhood hardening[else]you going[end if] again. The squishy sounds of cum squirting out of you as Elijah slams his cock in your ass are joined by your moans and pants, then your begging for him to fuck you harder. Thrusting in and out of your cum-filled ass, your angel pimp speeds up more and more, then suddenly lets out a grunt of 'I'm gonna... cum!', accompanied by slamming forward one last time. You can feel his hard shaft pulse against your inner walls as he comes, spurt after spurt of his seed jetting into your insides.[mimpregchance]";
				WaitLineBreak;
				say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole as he puts a hand on [if cocks of player > 0]your hard shaft and jerks you off. [else]your crotch and strokes you there. [end if]Grinning, he takes care not to get you off, just to keep you all hot and bothered, aching to come. Some time later, after giving you one last grope, Elijah takes off your bindings and helps your oversexed and trembling form to stand up from the sling. 'You did well, pet. I allow you to get yourself off now.' Your hands fly to your crotch to [if cocks of player > 0]grab your incredibly hard erection and jerk it[else]stroke over the smooth but sensitive spot where your genitals should be, if you had any[end if]. In no time at all, you get your release, [if cocks of player > 0]spraying long strings of cum into the air.[else]a deep feeling of satisfaction running through your insides[end if]";
				say "     'I need to bring you here more often' the dark angel says with a smile, followed by 'Time to clean up.' He then has you clean up the room - naked as you are - licking up the cum from where it leaked onto the sling and dripped on the smooth hardwood floor. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
		else: [try to leave, without success]
			say "     Not so keen on following the dark angel's plans for you anymore, you turn around and brush past him, walking towards the door you came in through. Behind you, the spidertaur gives am evil grin and calmly pulls on one strand of webbing up in the air with one of his long legs. A silken web drops down in front of you from over the door just as you try to walk out, catching you in its sticky embrace. As you helplessly try to free yourself from the soft but amazingly tough web, you hear the click of the spidertaur's legs on the hardwood floor as he scuttles towards you.";
			say "     'This one has a bit of spirit, very nice Elijah. I like when they struggle a bit.' He steps up close behind you and you can feel Zephias human hands stroke over your wrapped form appreciatively. For a moment, you try to talk the spidertaur into letting you go, but the feelings at being helpless and in his power, with him touching you, get the better of you soon. Your pleading gets weaker and weaker, then is entirely replaced by moans at his caresses. You can feel his breath against your neck, then he whispers in your ear 'You'll be fun, little fly.' He gives your earlobe a little nibble, then pulls your head aside and gives you a somewhat painful hickey on the side of your neck. Cutting down the far ends of the strands keeping you upright in the door-frame, holding you in his arms instead, he proceeds to wrap the now lose silk ropes around you and tightens them. Taking the white silky package you've become up with his two front claws, he carries you over to the sex sling and lowers you into it.";
			WaitLineBreak;
			say "     From your new position, lying on your back, you see the spidertaur in all his terrible glory before you. His muscled, human upper body leans closely over you as he pushes you into a rather comfortable position and his attractive and a bit heady male scent makes you pant in lust for a moment. Then he stretches up on long legs to adjust a web strand there, revealing his lower body to you. Your eyes are drawn to the crossover zone between his human upper body and the giant spider lower half, and you immediately notice that some of the black and green chitin plates at his crotch are pulled apart a bit now, allowing Zephias manhood to emerge in its now fully erect state. And he's... pretty well hung. You've got some interesting time ahead of you.";
			say "     Next, you feel the webbing around your legs being cut away carefully, followed by the spidertaur's hands removing all the clothing and gear below your belly button. Then he raises your legs and spreads them, sliding them into already-prepared slings hanging from the ceiling. Turning towards Elijah, who stands nearby and observes, now with his leather pants lowered and a hand on his cock, Zephias grins and says 'Now let me show you how to use this properly.'";
			WaitLineBreak;
			if cunts of player > 0: [female+herm]
				say "     Stepping up close to you, he slowly strokes the insides of your legs with his hands and you can feel his shaft rubbing against the crack of your ass. Zephias reaches down to take hold of his shaft, then puts the tip right against your dripping sex. He rubs it up and down over the sensitive pussy lips, making you moan loudly as he brushes over your clit. The aroused spidertaur puts the head of his cock just between your nether lips next, slightly nudging them apart as he says 'Get ready, my little fly.' Then he proceeds to take hold of your legs and thrusts forward, sinking his cock deep into your welcoming passage. Keeping going until he bottoms out, his balls touching your crotch, he leans forward and plants a kiss on your lips, pushing his tongue into your mouth to invade your body from both ends. After a while of tongue-fencing with you, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
				say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, the green-marked spidertaur has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, [if cocks of player > 0]your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on the white bindings around your chest[else]you come, gushing femcum all around his hard shaft to run and drip down onto the silken sling under you[end if]. 'So you got off from having me inside you, hm? Your pussy feels amazing with all the little twitches going through your now.' Zephias remarks, then gets back into fucking you hot and hard, even speeding up a bit as his own orgasm approaches. It's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.[fimpregchance]";
				WaitLineBreak;
				setmonster "Seraphim";
				choose row monster from the table of random critters;
				say "     After a moment to catch his breath, the spidertaur pulls out of your freshly-bred pussy with a little plop, leaving it stretched open and dripping cum. Giving your asscheeks a playful slap each, he then says to Elijah 'As good as you promised. A pleasure doing business with you. Hope you have fun with the setup.' The naked angel gives him a lusty grin, then steps up in front of the sex sling and replies 'Oh, I will.' as he enters your sloppy hole all the way in a deep thrust. He continues 'You - can - bet - on - that', each word grunted out as he pulls back and pounds against your crotch again and again.";
				say "     Even though you just came, getting fucked - getting taken by a second dominant man in a row - quickly has your lust rising again. The squishy sounds of cum squirting out of you as Elijah slams his cock in your pussy are joined by your moans and pants, then your begging for him to fuck you harder. Thrusting in and out of your cum-filled passage, your angel pimp speeds up more and more, then suddenly lets out a grunt of 'I'm gonna... cum!', accompanied by slamming forward one last time. You can feel his hard shaft pulse against your inner walls as he comes, spurt after spurt of his seed jetting into your insides.[fimpregchance]";
				WaitLineBreak;
				say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole as he puts a hand on your [if cocks of player > 0]hard shaft and jerks you of[else]crotch and strokes you there[end if]. Grinning, he takes care not to get you off, just to keep you all hot and bothered, aching to come. Some time later, after giving you one last grope, Elijah takes off your bindings and helps your oversexed and trembling form to stand up from the sling. 'You did well, pet. I allow you to get yourself off now.' Your hands fly to your crotch to [if cocks of player > 0]grab your incredibly hard erection and jerk it[else]stroke over your pussy lips and clit[end if]. In no time at all, you get your release, [if cocks of player > 0]spraying long strings of cum into the air to splatter[else]gushing femcum from your sex and dripping it onto[end if] the hardwood floor.";
				say "     'I need to bring you here more often' the dark angel says with a smile, followed by 'Time to clean up.' He makes you strip completely naked, then has you clean up the room - licking up the cum from where it leaked onto the sling and dripped on the smooth hardwood floor. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
			else: [male+neuter]
				say "     Stepping up close to you, he slowly strokes the insides of your legs with his hands and you can feel his shaft rubbing against the crack of your ass. Zephias pulls a compact bottle of lube out of a holster strapped against his left front leg, then puts a good amount of the slippery gel on his hard shaft. Putting the tip of manhood against your pucker and rubbing it up and down over it, then teasingly pressing against it, he says 'Get ready, my little fly.' Then he proceeds to take hold of your legs and thrusts forward, sinking his cock deep into your tight hole. Keeping going until he bottoms out, his cock resting deep inside your ass, he leans forward and plants a kiss on your lips, pushing his tongue into your mouth to invade your body from both ends. After a while of tongue-fencing with you, he straightens his humanoid upper body again, giving you a smile as he starts to thrust in and out, fucking you with deep strokes.";
				say "     Pulling out till only the tip of his cock remains inside you, then slamming it all the way in again, the green-marked spidertaur has you gasping in lust and squirming in your silken bonds in no time. He takes great pleasure in dominating you, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your [if cocks of player > 0]own cock starts to throb as spurt after spurt of cum jet from its tip, splattering on the white bindings around your chest[else]whole body starts to tremble and shake in an amazing orgasm[end if]. 'So you got off from having me inside you, hm? Your ass feels amazing with all the little twitches going through your insides now.' Zephias remarks, then gets back into fucking you hot and hard, even speeding up a bit as his own orgasm approaches. It's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your ass.[mimpregchance]";
				WaitLineBreak;
				setmonster "Seraphim";
				choose row monster from the table of random critters;
				say "     After a moment to catch his breath, the spidertaur pulls out of your ass with a little plop, leaving it stretched open and dripping cum. Giving your asscheeks a playful slap each, he then says to Elijah 'As good as you promised. A pleasure doing business with you. Hope you have fun with the setup.' The naked angel gives him a lusty grin, then steps up in front of the sex sling and replies 'Oh, I will.' as he enters your sloppy hole all the way in a deep thrust. He continues 'You - can - bet - on - that', each word grunted out as he pulls back and pounds your ass again and again.";
				say "     Even though you just came, getting fucked - getting taken by a second dominant man in a row - quickly has [if cocks of player > 0]your manhood hardening [else]you going [end if]again. The squishy sounds of cum squirting out of you as Elijah slams his cock in your ass are joined by your moans and pants, then your begging for him to fuck you harder. Thrusting in and out of your cum-filled ass, your angel pimp speeds up more and more, then suddenly lets out a grunt of 'I'm gonna... cum!', accompanied by slamming forward one last time. You can feel his hard shaft pulse against your inner walls as he comes, spurt after spurt of his seed jetting into your insides.[mimpregchance]";
				WaitLineBreak;
				say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole as he puts a hand on [if cocks of player > 0]your hard shaft and jerks you off [else]your crotch and strokes you there. [end if]Grinning, he takes care not to get you off, just to keep you all hot and bothered, aching to come. Some time later, after giving you one last grope, Elijah takes off your bindings and helps your oversexed and trembling form to stand up from the sling. 'You did well, pet. I allow you to get yourself off now.' Your hands fly to your crotch [if cocks of player > 0]to grab your incredibly hard erection and jerk it. [else]to stroke over the smooth but sensitive spot where your genitals should be, if you had any. [end if]In no time at all, you get your release, [if cocks of player > 0]spraying long strings of cum into the air.[else]a deep feeling of satisfaction running through your insides[end if]";
				say "     'I need to bring you here more often' the dark angel says with a smile, followed by 'Time to clean up.' He makes you strip completely naked, then has you clean up the room - licking up the cum from where it leaked onto the sling and dripped on the smooth hardwood floor. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
		now lastfuck of Elijah is turns;
		now lastfuck of Zephias is turns;
	else:[submissive feat, but declined the scene]
		say "     Shaking off the urge to just let the dark angel lead you to whatever he has planned, you plant your feet solidly on the ground and stop walking. It takes a moment until Elijah notices you're no longer behind him, then he turns and looks at you. 'Come on, keep going. I've got something to do for you.' he says, then adds 'Get moving. NOW.', annoyance clearly in his voice and written all over his handsome face. Holding fast on the decision you made, you steel your will and shake your head. With an angry grunt, the fallen angel whirls around and walks to the exit. You can hear him muttering to himself '...not as subby as I thought, the little bitch. Now I have to catch a husky or someth-', then he's out the door and on the street, the closing door cutting off his further words.";
		now thirst of Elijah is 100; [declined sub bondage sex with Elijah]

instead of going inside from the Grey Abbey Library while (Elijah is in the Bunker and hp of Elijah is 99 and thirst of Elijah is 1 and "Submissive" is listed in feats of player and lastfuck of Elijah - turns > 6 and demon brute is tamed and cocks of player > 0):
	move player to Bunker;
	say "     As you enter the bunker, you suddenly hear a voice call out 'About time you got back, slut. I've been waiting for you.' Looking around, you see that it's Elijah who spoke, who is just standing up from where he was lounging on one of the beds. Dressed only in his tight black leather pants, the dark angel casually strolls over to you, a superior smirk on his face as you stare at the rippling muscles of his upper body, then drop your gaze lower to see the bulge in his trousers. Stepping up to you while you're still checking out his crotch, Elijah lightly grips your chin and pulls your head up so he can look you in the eye with an evaluating gaze. 'I'm still amazed that a subby bitch like you hasn't been snatched up on the street to serve one or another master.' Letting a hand wander over your chest, groping and stroking you, he continues, 'And that even though you clearly want to please your betters. You like following my orders, don't you? Tell me!'";
	say "     A shiver of arousal runs through you at being ordered around by the handsome man and you find yourself panting words that agree with him - which lead over into a needy moan as Elijah pushes a hand down the front of your pants to grope your crotch. His hand closes around your cock, stroking and jerking it, getting you all hot and bothered. 'Just look at you,' the dark angel says as he wrenches down your trousers, leaving them pushed down to your knees and exposing your already pretty hard manhood and the drop of pre-cum forming at its tip. 'Shivering in lust and almost dripping on the floor just because a real man takes control and handles you like the little bitch you are,' he continues, then muses 'How could someone like this ever get control over a demon?' [if companion of player is demon brute]and looks over to Brutus, who's been standing silently behind you all this time. 'Call over your tamed beast - I want to talk to him.' Elijah orders next, and you comply, waving the demon closer.[else]and hooks a finger under the band of your demontooth amulet, inspecting it before letting it fall back against your chest. 'Call fourth your tamed beast - I want to talk to him.' Elijah orders next, and you comply, watching Brutus solidify from purple smoke after you speak his command word.[end if]";
	WaitLineBreak;
	if DBCaptureQuestVar is 5: [evil Brutus]
		if DemonBruteStatus is 2: [female Brutus]
			setmonster "Seraphim";
			choose row monster from the table of random critters;
			say "     After spending a moment to take in Brutus large, muscular and naked body, Elijah calls to your demonic slave 'Aren't you ashamed of yourself to haven been captured by such a weak-willed little man? Having to follow his orders and even letting him take your cock?' A deep, rumbling growl starts to grow in Brutus chest as Elijah goads and teases him, and you can see the demon's claws twitching as he strains against the amulet's magic. Elijah wraps an arm around you from behind, making you turn to watch the furious demon and says in a smooth tone, 'Look, your little demon has gotten all riled up. Now, we can't let the poor, stupid beast keep it all bottled up inside him, can we? That's not good for him after all...'";
			say "     At that point, the dark angel lets his hands wander down your body, one wrapping itself around your cock, the other rubbing a finger up and down between your asscheeks. Starting to jerk you off, Elijah continues, 'I think you'll have to allow him to let off some steam. Go on pet - say that you want to give dear little Brutus some oral pleasure. Allow him to be a bit rough with you and let some of that anger out. Do it!' Getting all tingly inside - both from Elijah's hands on you as well as him manipulating you and ordering you around, you repeat what he wants you to say in halting sentences interrupted by moans...";
			WaitLineBreak;
			say "     'As you command 'master'.' Brutus roars in an evil tone, reaching out to lay a hand on your shoulder. He grips you as tight as he can - with the amulet protecting you from real hurt from him - then wrenches you forward, making you stumble and fall since your pants are still around your lower legs. Chuckling darkly at seeing you on all fours on the ground before him, the demon then sits down at the edge of a nearby bed, legs spread and his dripping pussy presented at about head-height for you. 'Go on, crawl over and service him!' Elijah orders you, getting you moving with a light slap on the butt.";
			say "     On all fours, you make your way over to Brutus, closely followed by the red eyes of the demon, which glow in satisfaction at seeing you like this. As soon as you're close enough, he reaches out and pulls your face right against his crotch, rubbing it against his swollen and dripping sex. Following Elijah's commands, you get to work servicing the big brute, no longer his master for now, but a submissive bitch serving for his pleasure. You lick his pussy and tease the transformed demon's clit while he holds your head with one of his big hands, growling and pulling on you to direct your movements.";
			WaitLineBreak;
			say "     A short while later, you suddenly feel two hands grip the sides of your hips, then slide down to cup the cheeks of your butt and pull them apart. The warm length of an erect cock rubbing against your ass-crack tells you that Elijah decided to join in too - even before you hear his smooth-talking voice say 'Since you're already in such a nice position, my little bitch, I'll make use of your other end. Try to relax - or maybe don't.' With that, he gives your right buttcheek a hard slap, then presses forward with his hips, pushing his cockhead against your pucker. You gasp as the muscle yields and his member pushes inwards, stretching your hole around his shaft.";
			say "     'I'm going to enjoy giving you the pounding that I know you crave, you horny slut,' the dark angel adds, then and thrusts into you hard and fast, causing you to moan loudly. Being treated like this really gets you going, playing right to your submissive urges to let yourself be used by Elijah and even your demon slave Brutus. As you grind back against Elijah's rod, eager to feel him inside you, the angel laughs, 'Mmm... such a needy bitch,' then starts to pound into you even harder. How strange - before all this started, you certainly wouldn't have thought that you'd ever be taken at the same time by an angel and a demon. And now - your anal muscles quiver and clench down around that divine rod and your face is tightly pressed against a demon's warm skin, with your tongue wiggling in his drippingly wet pussy.";
			WaitLineBreak;
			say "     Neither of them puts any effort into pleasing you - but that's just fine with you, as your arousal soars from such treatment. You grow increasingly excited just by having the confident angel manipulating you into going down on Brutus and using you for his own satisfaction. In fact, you're the first to cum soon afterwards, being pushed over the edge by another of Elijah's deep thrusts. While you blow your load all over the bunker floor between your legs, the angel follows suit just a moment later, grinding his hips tightly against your butt as he fills you with his potent load. Though that's not the end of it - as he just stays inside and keeps on fucking you when his cock gets hard again...";
			say "     By the time Elijah is finally through with you, you both have up come several times and your ass is delightfully sore and dripping with angelic semen. Furthermore, your oral attention got Brutus off more than once too, resulting in him squirting quite a bit of femcum all over you and your upper body. He's quite a shooter - even in his new female form. Though coming again and again seems to have worn the big demon out - he lay back on the bed to doze even before Elijah fucked you the last time. After pulling out, Elijah stands up and looks at you a superior grin on his face. 'That's a good little cum-slut,' he chuckles, then walks off, uninterested in helping you clean up. You just moan softly at being left like a used and cum-stained sex toy.";
		else: [herm and male Brutus]
			say "     After spending a moment to take in Brutus large, muscular and naked body, Elijah calls to your demonic slave 'Aren't you ashamed of yourself to haven been captured by such a weak-willed little man? Having to follow his orders and serve him?' A deep, rumbling growl starts to grow in Brutus chest as Elijah goads and teases him, and you can see the demon's claws twitching as he strains against the amulet's magic. Elijah wraps an arm around you from behind, making you turn to watch the furious demon and says in a smooth tone, 'Look, your little demon has gotten all riled up. Now, we can't let the poor, stupid beast keep it all bottled up inside him, can we? That's not good for him after all...'";
			say "     At that point, the dark angel lets his hands wander down your body, one wrapping itself around your cock, the other rubbing a finger up and down between your asscheeks. Starting to jerk you off, Elijah continues, 'I think you'll have to allow him to let off some steam. Go on pet - say that you want to give dear little Brutus some oral pleasure. Allow him to be a bit rough with you and let some of that anger out. Do it!' Getting all tingly inside - both from Elijah's hands on you as well as him manipulating you and ordering you around, you repeat what he wants you to say in halting sentences interrupted by moans...";
			WaitLineBreak;
			say "     'As you command 'master'.' Brutus roars in an evil tone, reaching out to lay a hand on your shoulder. He grips you as tight as he can - with the amulet protecting you from real hurt from him - then wrenches you forward, making you stumble and fall since your pants are still around your lower legs. Chuckling darkly at seeing you on all fours on the ground before him, the demon then sits down at the edge of a nearby bed, legs spread and his massive manhood standing erect at about head-height for you. 'Go on, crawl over and service him!' Elijah orders you, getting you moving with a light slap on the butt.";
			say "     On all fours, you make your way over to Brutus, closely followed by the red eyes of the demon, which glow in satisfaction at seeing you like this. As soon as you're close enough, he reaches out and pulls your face right against his crotch, rubbing it against the round and full globes of his balls, then growling 'Lick!' Following Elijah's commands, you get to work servicing the big brute, no longer his master for now, but a submissive bitch serving for his pleasure. You lap at his orbs and lick the underside of Brutus shaft, then slide your lips over the cockhead, suckling at it while taking as much into your mouth as you can. The demon soon takes hold of you again and starts to face-fuck you, grumbling in satisfaction as his rough thrusts make you choke more than once.";
			WaitLineBreak;
			say "     A short while later, you suddenly feel two hands grip the sides of your hips, then slide down to cup the cheeks of your butt and pull them apart. The warm length of an erect cock rubbing against your ass-crack tells you that Elijah decided to join in too - even before you hear his smooth-talking voice say 'Since you're already in such a nice position, my little bitch, I'll make use of your other end. Try to relax - or maybe don't.' With that, he gives your right buttcheek a hard slap, then presses forward with his hips, pushing his cockhead against your pucker. You gasp as the muscle yields and his member pushes inwards, stretching your hole around his shaft.";
			say "     'I'm going to enjoy giving you the pounding that I know you crave, you horny slut,' the dark angel adds, then and thrusts into you hard and fast, causing you to moan loudly. Being treated like this really gets you going, playing right to your submissive urges to let yourself be used by Elijah and even your demon slave Brutus. As you grind back against Elijah's rod, eager to feel him inside you, the angel laughs, 'Mmm... such a needy bitch,' then starts to pound into you even harder. How strange - before all this started, you certainly wouldn't have thought that you'd ever be spit-roasted by an angel and a demon. And now - your anal muscles quiver and clench down around that divine rod and a demon's hot, throbbing shaft is in your mouth, thrusting all the way down your throat again and again.";
			WaitLineBreak;
			say "     Neither of them puts any effort into pleasing you - but that's just fine with you, as your arousal soars from such treatment. You grow increasingly excited just by having the confident angel manipulating you into going down on Brutus and using you for his own satisfaction. In fact, you're the first to cum soon afterwards, being pushed over the edge by another of Elijah's deep thrusts. While you blow your load all over the bunker floor between your legs, the angel follows suit just a moment later, grinding his hips tightly against your butt as he fills you with his potent load. Brutus joins the two of you not long afterwards, blasting thick streams of demon cum into your mouth. He's a real shooter and even though you try to swallow it all, there's just no way you can. After just the third spurt, you can't help but pull away and gasp for breath, which results in Brutus massive cock blasting the rest of his seed all over your face and back, with one shot even hitting Elijah in the chest.";
			say "     Though that's not the end of it - as Elijah just keeps grinding his hips against your ass and you soon feel him start to get hard again inside you. Then he pulls out for just a moment and smears the demon cum on his shaft before thrusting back in all the way in one swift move. By the time Elijah is finally through with you, you both have up come several times and your ass is delightfully sore and dripping with angelic semen - and a small amount of demon cum. Furthermore, your oral attention got Brutus off more than once too, resulting in him gushing more of his cum all over you and your upper body. He's quite a shooter - covering you in enough demonic seed to impregnate two or three convents worth of nuns. Though coming again and again seems to have worn the big demon out - he lay back on the bed to doze off even before Elijah fucked you the last time. After pulling out, Elijah stands up and looks at you a superior grin on his face. 'That's a good little cum-slut,' he chuckles, then walks off, uninterested in helping you clean up. You just moan softly at being left like a used and cum-stained sex toy.";
			setmonster "Seraphim";
			choose row monster from the table of random critters;
			say "     [mimpregchance]";
			setmonster "Demon Brute";
			choose row monster from the table of random critters;
			say "     [mimpregchance]";
			setmonster "Seraphim";
			choose row monster from the table of random critters;
			say "     [mimpregchance]";
	else: [cleansed Brutus]
		if DemonBruteStatus is 2: [female Brutus]
			say "     After spending a moment to take in Brutus large, muscular and naked body, Elijah calls to your demonic companion 'Aren't you ashamed of yourself to haven been captured by such a weak-willed little man? Having to follow his orders and even letting him take your cock?' A deep, rumbling growl rumbles in Brutus chest and the demon replies 'Watch your tone. I love my master. He is kind and helped me. I am his.' Elijah grimaces in annoyance as his attempts to goad and tease Brutus fall flat, then changes tactics. He says 'So - you love him like a good little puppy. And you love his body too, don't you?' Elijah wraps an arm around you from behind, making you turn to face the obedient demon, half-naked as you are. 'I know your type, demon. Your needs and insatiable lust. Don't you want to touch him, feel his body and let him lick your pussy?'";
			say "     At that point, the dark angel lets his hands wander down your body, one wrapping itself around your cock, the other rubbing a finger up and down between your asscheeks. As you moan from the sensations Elijah's touch gives you, you see that Brutus is looking at your crotch and body with more than just a little interest. Starting to jerk you off and demonstratively wagging your cock towards the demon, Elijah says with a chuckle 'I think I've struck a nerve, my little bitch. Your lapdog has the hots for you bad but is too tame to take you on his own - so you'll have to order him to let off some steam. Go on pet - say that you want to give dear little Brutus some oral pleasure. Do it!' Getting all tingly inside - both from Elijah's hands on you as well as him manipulating you and ordering you around, you repeat what he wants you to say in halting sentences interrupted by moans...";
			WaitLineBreak;
			say "     'With pleasure, master.' Brutus says in his deep voice and reaches out to gently take hold of you. With your body pressed against his broad and muscled chest, the purple demon walks over to a nearby bed and sets you down, then sits on its edge and spreads his legs to present his dripping pussy to you. Gently pressing on your shoulders, he guides you to get on all fours, which puts your face right between his legs. Eager to feel you against his sex, Brutus reaches out and pulls your head to his crotch, rubbing his swollen and dripping nether lips against you. Following Elijah's commands, you get to work servicing the big brute, no longer his master for now, but a submissive bitch serving his pleasure. You lick his pussy and tease the gender-switched demon's clit while he holds your head with one of his big hands, moaning for you to continue and directing your movements.";
			WaitLineBreak;
			say "     A short while later, you suddenly feel two hands grip the sides of your hips, then slide down to cup the cheeks of your butt and pull them apart. The warm length of an erect cock rubbing against your ass-crack tells you that Elijah decided to join in too - even before you hear his smooth-talking voice say 'Since you're already in such a nice position, my little bitch, I'll make use of your other end. Try to relax - or maybe don't.' With that, he gives your right buttcheek a hard slap, then presses forward with his hips, pushing his cockhead against your pucker. You gasp as the muscle yields and his member pushes inwards, stretching your hole around his shaft.";
			say "     'I'm going to enjoy giving you the pounding that I know you crave, you horny slut,' the dark angel adds, then and thrusts into you hard and fast, causing you to moan loudly. Being treated like this really gets you going, playing right to your submissive urges to let yourself be used by Elijah and even your demon slave Brutus. As you grind back against Elijah's rod, eager to feel him inside you, the angel laughs, 'Mmm... such a needy bitch,' then starts to pound into you even harder. How strange - before all this started, you certainly wouldn't have thought that you'd ever be taken at the same time by an angel and a demon. And now - your anal muscles quiver and clench down around that divine rod and your face is tightly pressed against a demon's warm skin, with your tongue wiggling in his drippingly wet pussy.";
			WaitLineBreak;
			say "     Only Brutus puts any effort into pleasing you by stroking your back and sides - but that's just fine with you, as your arousal soars from Elijah's treatment. You grow increasingly excited just by having the confident angel manipulating you into going down on Brutus and using you for his own satisfaction. In fact, you're the first to cum soon afterwards, being pushed over the edge by another of Elijah's deep thrusts. While you blow your load all over the bunker floor between your legs, the angel follows suit just a moment later, grinding his hips tightly against your butt as he fills you with his potent load. Though that's not the end of it - as he just stays inside and keeps on fucking you when his cock gets hard again...";
			say "     By the time Elijah is finally through with you, you both have up come several times and your ass is delightfully sore and dripping with angelic semen. Furthermore, your oral attention got Brutus off more than once too, resulting in him squirting quite a bit of femcum all over you and your upper body. He's quite a shooter - even in his new female form. Though coming again and again seems to have worn the big demon out - he lay back on the bed to doze even before Elijah fucked you the last time. After pulling out, Elijah stands up and looks at you a superior grin on his face. 'That's a good little cum-slut,' he chuckles, then walks off, uninterested in helping you clean up. You just moan softly at being left like a used and cum-stained sex toy.";
		else: [herm and male Brutus]
			say "     After spending a moment to take in Brutus large, muscular and naked body, Elijah calls to your demonic companion 'Aren't you ashamed of yourself to haven been captured by such a weak-willed little man? Having to follow his orders and serve him?' A deep, rumbling growl rumbles in Brutus chest as the demon replies 'No, I love my master. He is kind and helped me. I am his.' Elijah grimaces in annoyance as his attempts to goad and tease Brutus fall flat, then changes tactics. He says 'So - you love him like a good little puppy. And you love his body too, don't you?' Elijah wraps an arm around you from behind, making you turn to face the obedient demon, half-naked as you are. 'I know your type, demon. Your needs and insatiable lust. Don't you want to touch him, feel his body and let him suck your cock?'";
			say "     At that point, the dark angel lets his hands wander down your body, one wrapping itself around your cock, the other rubbing a finger up and down between your asscheeks. As you moan from the sensations Elijah's touch gives you, you see that Brutus is looking at your crotch and body with more than just a little interest. Starting to jerk you off and demonstratively wagging your cock towards the demon, Elijah says with a chuckle 'I think I've struck a nerve, my little bitch. Your lapdog has the hots for you bad but is too tame to take you on his own - so you'll have to order him to let off some steam. Go on pet - say that you want to give dear little Brutus some oral pleasure. Do it!' Getting all tingly inside - both from Elijah's hands on you as well as him manipulating you and ordering you around, you repeat what he wants you to say in halting sentences interrupted by moans...";
			WaitLineBreak;
			say "     'With pleasure, master.' Brutus says in his deep voice and reaches out to gently take hold of you. With your body pressed against his broad and muscled chest, the purple demon walks over to a nearby bed and sets you down, then sits on its edge and spreads his legs to present his [if DemonBruteStatus is 1]dripping pussy[else]hard shaft[end if] to you. Gently pressing on your shoulders, he guides you to get on all fours, which puts your face right between his legs. Eager to feel you against his sex, Brutus reaches out and pulls your head to his crotch, rubbing his big balls against you. Following Elijah's commands, you get to work servicing the big brute, no longer his master for now, but a submissive bitch serving his pleasure. You lap at his orbs and lick the underside of Brutus shaft, then slide your lips over the cockhead, suckling at it while taking as much into your mouth as you can. The demon soon takes hold of you again and starts to face-fuck you, panting at the pleasure your warm and tight mouth gives him.";
			WaitLineBreak;
			say "     A short while later, you suddenly feel two hands grip the sides of your hips, then slide down to cup the cheeks of your butt and pull them apart. The warm length of an erect cock rubbing against your ass-crack tells you that Elijah decided to join in too - even before you hear his smooth-talking voice say 'Since you're already in such a nice position, my little bitch, I'll make use of your other end. Try to relax - or maybe don't.' With that, he gives your right buttcheek a hard slap, then presses forward with his hips, pushing his cockhead against your pucker. You gasp as the muscle yields and his member pushes inwards, stretching your hole around his shaft.";
			say "     'I'm going to enjoy giving you the pounding that I know you crave, you horny slut,' the dark angel adds, then and thrusts into you hard and fast, causing you to moan loudly. Being treated like this really gets you going, playing right to your submissive urges to let yourself be used by Elijah and even your demonic companion Brutus. As you grind back against Elijah's rod, eager to feel him inside you, the angel laughs, 'Mmm... such a needy bitch,' then starts to pound into you even harder. How strange - before all this started, you certainly wouldn't have thought that you'd ever be taken at the same time by an angel and a demon. And now - your anal muscles quiver and clench down around that divine rod and your face is tightly pressed against a demon's warm skin, with your tongue wiggling [if DemonBruteStatus is 1]in his drippingly wet pussy[else]over his full balls and erect cock[end if].";
			WaitLineBreak;
			say "     Only Brutus puts any effort into pleasing you by stroking your back and sides - but that's just fine with you, as your arousal soars from Elijah's treatment. You grow increasingly excited just by having the confident angel manipulating you into going down on Brutus and using you for his own satisfaction. In fact, you're the first to cum soon afterwards, being pushed over the edge by another of Elijah's deep thrusts. While you blow your load all over the bunker floor between your legs, the angel follows suit just a moment later, grinding his hips tightly against your butt as he fills you with his potent load. Brutus joins the two of you not long afterwards, blasting thick streams of demon cum into your mouth. He's a real shooter and even though you try to swallow it all, there's just no way you can. After just the third spurt, you can't help but pull away and gasp for breath, which results in Brutus massive cock blasting the rest of his seed all over your face and back, with one shot even hitting Elijah in the chest.";
			say "     Though that's not the end of it - as Elijah just keeps grinding his hips against your ass and you soon feel him start to get hard again inside you. Then he pulls out for just a moment and smears some demon cum on his shaft before thrusting back in all the way in one swift move. By the time Elijah is finally through with you, you both have up come several times and your ass is delightfully sore and dripping with angelic semen - and a small amount of demon cum. Furthermore, your oral attention got Brutus off more than once too, resulting in him gushing more of his cum all over you and your upper body. He's quite a shooter - covering you in enough demonic seed to impregnate two or three convents worth of nuns. Though coming again and again seems to have worn the big demon out - he lay back on the bed to doze off even before Elijah fucked you the last time. After pulling out, Elijah stands up and looks at you a superior grin on his face. 'That's a good little cum-slut,' he chuckles, then walks off, uninterested in helping you clean up. You just moan softly at being left like a used and cum-stained sex toy.";
			setmonster "Seraphim";
			choose row monster from the table of random critters;
			say "     [mimpregchance]";
			setmonster "Demon Brute";
			choose row monster from the table of random critters;
			say "     [mimpregchance]";
			setmonster "Seraphim";
			choose row monster from the table of random critters;
			say "     [mimpregchance]";
	now lastfuck of Elijah is turns;
	now thirst of Elijah is 2;

instead of going inside from the Grey Abbey Library while (Elijah is in the Bunker and hp of Elijah is 99 and thirst of Elijah is 2 and "Submissive" is listed in feats of player and lastfuck of Elijah - turns > 6 and demon brute is tamed and cocks of player > 0 and DemonBruteStatus is 0):
	move player to Bunker;
	say "     As you enter the bunker, you suddenly hear a voice call out 'There you are, finally! It time to service me again, you little slut. Come here at once!' Looking around, you see that it's Elijah who spoke, who is just standing up from where he was lounging on one of the beds. Dressed only in his tight black leather pants, the dark angel waits for you impatiently with both hands on his hips, a superior smirk on his face as you stare at the rippling muscles of his upper body, then drop your gaze lower to see the bulge in his trousers. As you hurry over to him, all the while still checking out his crotch, Elijah tightly grips your chin and pulls your head up so he can look you in the eye with an evaluating gaze. 'I'm still amazed that a subby bitch like you hasn't been snatched up on the street to serve one or another master. Maybe I should just keep you here, naked and ready to take my cock. I'm getting tired of waiting for you to show up - getting blue-balled while you little whore roam the streets for guys who fuck.'";
	say "     Letting a hand wander over your chest, groping you, he then starts to rip the clothes off your body, causing parts of them to tear from the rough treatment as he takes them from you and flings them aside. Soon the last piece is pulled off and you stand in front of the randy fallen angel, who loudly orders, 'On the bed. Now.' A shiver of arousal runs through you at being ordered around by the handsome man and you find yourself on all fours on the bed a moment later. Elijah leans over you, one hand brushing up and down over your crack and with a finger dipping in to rub your asshole as he whispers into your ear, 'You just love following my orders, don't you? Letting me do anything I want to you?' As you pant loudly and nod, he chuckles and says 'Let's see how much of a subby bitch you are...' With that, he stands back up from here he was kneeling on the bed, then brings his hand down on one of your asscheeks in an open-handed, stinging slap. 'Beg for more,' Elijah orders and gives you one more hit on your other cheek, then continues 'Show me how good a slave-boy you are! I will - *ngg* - let go, you stupid beast!'";
	WaitLineBreak;
	if companion of player is demon brute:
		say "     Curious what's going on, you look back and see Brutus towering form standing behind Elijah, with one clawed hand closed around the fallen angel's forearm, the other gripping his shoulder tight enough to draw a little bit of blood. Seems your trusty demon companion decided on his own to step in when he saw his master being violated.";
	else:
		say "     Curious what's going on, you look back and see Brutus towering form standing behind Elijah, with one clawed hand closed around the fallen angel's forearm, the other gripping his shoulder tight enough to draw a little bit of blood. Seems your trusty demon companion decided on his own to materialize and step in when he became aware of his master being violated.";
	say "After futilely trying to pull his striking hand free from the demon's grip, Elijah turns his angry gaze on you and snarls, 'Get your fucking pet off me, you little cunt. And while you're at it, order him to follow my commands as if they were yours!'";
	LineBreak;
	say "     You open your mouth to comply, then hesitate as you stop to think about what's really going on. Agreeing to remove Brutus protection could speed you down even more on the (maybe inevitable) path of [bold type]becoming Elijah's sex slave[roman type]... do you really want to do it?";
	if player consents:
		LineBreak;
		say "     Breathless from the excitement of submitting to Elijah, you pant for Brutus to let him go and order the demon to follow his instructions from now on. Rubbing his shoulder where Brutus claws left their mark, Elijah murmurs, 'Good, at least one slut down here knows how to follow orders. Now then... the two of you, kneel for me.' You quickly get off the bed and join Brutus on the floor, slumped at Elijah's feet. Looking up, you can see unholy pleasure at his dominance dance in the dark angel's eyes, and a grin on his face as he opens the button of his pants and pushes them down over his hips. With him not even wearing underwear, you're directly presented with a long and inhumanly perfect cock, dangling half-hard under a small bush of black pubic hair. Grabbing Brutus by the horns to pull his head level with yours, Elijah stands close before the two of you, jerking himself to full hardness in short order.";
		say "     Elijah rubs his erection in Brutus face, softly swatting it against his forehead and smearing a drop of pre-cum over his cheek, then he proclaims, 'Call me master, demon. Beg me to use your body and make you pay for interfering with me.' There is a small snarl from Brutus, but bound as he is, through the amulet to you and through you to the dark angel, he has no choice but to follow Elijah's demands. He calls on his new master to use and abuse him, fuck him and spank him - everything that the fallen angel lays out for him to repeat. As the last rumbling words fill the bunker, Elijah chuckles, 'Let's start with some oral,' before pushing his erection into the demon's mouth.";
		WaitLineBreak;
		say "     Brutus purses his lips to keep Elijah's manhood away from his sharp teeth and does his best to accommodate this new master's desires. He even snakes out his long tongue to lap at the fallen angel's balls as he fucks his face, holding on to the demon's two front horns to really pound into him. Kneeling next to them, you watch excitedly as your demon companion is used a submissive sex toy, just like you want to be. Though as much fun as it is to have a ringside seat for that, your heart starts racing as Elijah's domineering voice calls out, 'Hey you subby slut - why don't you wrap those pretty little lips of yours around his cock. You're gonna want to really get it wet...' Instantly falling on your knees, you take hold of Brutus massive erection with both hands and put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your demonic companion's cock, you slowly run your tongue up its underside, making him moan and mumble around Elijah's rod in his mouth. You take the head of Brutus cock into your own mouth, barely able to fit your lips around it, then start suckling and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
		say "     After some pleasurable moments of nothing but slurping sounds and moans filling the bunker, Elijah pulls his cock out of Brutus mouth with a wet pop and orders his two playtoys to stand up, which you and Brutus quickly do, obedient as ever. The dark angel looks at your naked bodies with a superior smirk on his face, then barks at you, 'On all fours on the bed, now! You're really gonna get it now.' Turning to Brutus, he adds in an evil chuckle, 'Since you were so intent on protecting your precious master before, you'll fuck him now - roughly. Fuck him hard and deep! Pound that ass till he can't sit on it for a day!' As you get on the bed and take position, you hear a displeased rumble from Brutus behind you, followed a moment later by a, 'Yes, master.' Then you feel the muscled bulk of the demon lean over you, one hand sliding around you from behind to hold and caress your chest. He kisses your neck and snakes his long tongue down to tickle your earlobe, mumbling under his breath, 'I'll try to be gentle - please play up your gasps a bit.'";
		WaitLineBreak;
		say "     There is a loud slapping noise as Elijah's hand hits Brutus butt and the dark angel taunts, 'Get on with it! Less cuddling, more fucking!' With a grunt that mixes eagerness with a certain reluctance, the demon raises up to stand straight again, moving his hips tight against you and gripping your cheeks with both clawed hands. You can feel the warmth of his erection rest against your back, leaking a steady stream of pre-cum, which is then wiped off by Brutus and smeared over your pucker. Then he takes hold of his massive erection and sets it against your opening, slowly increasing its pressure against your asshole until the head pushes open your pucker, stretching it wide as he enters your body with his hard shaft.";
		say "     It's big - very big, making you gasp from the initial penetration. Then, as it sinks deeper into your body, pleasant feelings prevail as the bumps on his shaft rub your inner walls. But even so, you can't help but wince a few times as he moves deeper and deeper, much to the unholy delight of the watching Elijah. Thankfully, he seems to be satisfied with this show, and with you adding in a number of false pained gasps to keep the angel entertained, Brutus can move relatively slowly, which allows you to get used to the girthy member. Then finally, he bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin. A moment later, Brutus hand strokes down your back in a slow caress, then he softly takes hold of your shoulders and starts to fuck you.";
		WaitLineBreak;
		say "     Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Then suddenly, Elijah's voice cuts into your pleasant buzz by saying, 'You're a bit slow and dainty in your thrusts, demon... but I think I know what might motivate you.' Raising your head, you see the dark angel stand close by, one hand on his hard cock and stroking it with quick jerks. He then walks around the bed, getting behind you and Brutus, then pulls up the demon's tail to bare his asshole. Not bothering with any more preparation than letting a gob of spit drip down on his shaft and spreading its wetness over it, Elijah jabs his manhood into Brutus rear passage an instant later, driving it in with a hard thrust. Your demon companion bellows at the sudden invasion and for a second his claws tighten and threaten to slice you, then he forces himself to relax again.";
		say "     With Elijah now starting to fuck Brutus['] ass with forceful and deep thrusts, the demon brute's own cock is pushed into you with increased temp too. Thankfully, the relatively slow and gentle fucking up till now allowed your muscles to get used to being stretched out, as well as leaving quite a bit of his precum to leak into you and lube you up. Therefore, you don't have too many problems with the uptake and simply pant and moan as the going gets faster and faster and slapping noises of your little fuck-train fill the bunker. Totally entranced by getting shafted so deep and good, you barely hear Elijah's jeers and taunts at being the master of both you and the demon.";
		WaitLineBreak;
		say "     Soon, the sensations drive your arousal over the edge and with a loud moan, your [cock of player] shaft sprays cum all over the bed. Your twitching and flexing hole around Brutus shaft quickly pushes the demon to reach his own climax, giving something like a very deep purr as he does so, his pleasure at serving his master quite obvious. With a loud grunt, he begins to pump your bowels full of his seed, easily filling your asshole and intestines. The remaining cum starts squirting out around the demon's thick cock as he thrusts into you a few more times, creating hot squishing noises and making the warm goop run down the inside of your legs. As he finally removes his cock with a loud *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your hole to create a large wet spot on the bed.[mimpregchance]";
		say "     Shoving against Brutus and even managing to push the exhausted demon brute to fall into the bed with you, Elijah steps up on the mattress himself, hand flashing rapidly up and down his shaft as he jerks himself off. It's not long at all before the dark angel reaches the point of no return, aiming his cock alternatively at Brutus and your face as he sends spurt after spurt of his seed flying to splat down on you. Soon you and your demon companion's faces are wet with cum, which makes Elijah laugh darkly and say, 'Yeah, that's a good look for you. Two submissive cum-sluts for me to enjoy. Go on, lick it off each other - you know you want to.' And indeed you do - or at least Brutus does, as his long tongue quickly snakes out to start lapping at your face. You quickly join him at cleaning each other up, licking Elijah's still warm cum off the demon brute's face, which quickly leads over to the two of you making out, kissing and caressing each other. Not too interested in watching that, Elijah steps off the bed and walks away to clean himself up, with a noticeable spring in his step.";
		if thirst of Elijah is 2:
			now thirst of Elijah is 3;
		now lastfuck of Elijah is turns;
	else:
		LineBreak;
		say "     No, submission may be down your alley, but total submission like Elijah is in the progress of establishing over you... not so much. Maybe you should order Brutus to teach the fallen angel a lesson, show him that there are limits beyond which you won't be pushed after all?";
		if player consents:
			LineBreak;
			say "     Reaching a decision, you tell Elijah that you're taking control of the situation this time, then tell Brutus he may pound the fallen angel's ass with his massive cock. Elijah only has time to say, 'Oh fuuuuckKK,' as your demonic companion lifts him off his feet to casually throw him on the bed , landing face-first on the crumpled blankets. Brutus is on top of him in a second and hooks one of his sharp claws under the waistband of Elijah's tight pants, effortlessly slicing the black leather apart and pulling the shreds aside to bare his shapely butt. Elijah starts to raise himself up from the bed on all fours and grumbles 'Those were designer pants, you bastard!' - only to find himself pressed back down by the demon's large hand on his back. The start of further grousing by the angel is replaced by a breathless gasp a moment later, when Brutus bends his head down to lick Elijah's asshole. He laps up and down between the firm, perfectly shaped cheeks of the fallen angel's butt, then seeks out the pucker with his long, forked tongue and wiggles its tips in. Getting his ass eaten out, expertly and oh so deeply, with Brutus long appendage lapping over his prostate, Elijah can't help but moan aloud, his hands gripping the sheets tightly as he writhes in pleasure.";
			say "     Brutus gives his now all too willing partner quite a bit of attention to ensure he's well-relaxed and ready, then eventually raises his head up from its position between Elijah's cheeks again and looks down on the angel's pale and perfect body, a lusty rumble in his chest. Moving into position to kneel behind him, Brutus spreads Elijah's cheeks with two large hands, then moves his hips to brush the massive erection between his legs up and down the angel's crack. In a deep voice full of lust and need, the demon says, 'I'm gonna fuck you. Now. Hard.' As wound-up as he is right now, Elijah just moans at that announcement, head pressed against the soft sheets and bare butt raised invitingly for the demon. He even spreads his legs a bit more and gives a little wiggle, proving that even though this might not have been his preferred outcome, he's far too much of a horndog to refuse any hot, sweaty sex.";
			WaitLineBreak;
			say "     Finally, Brutus takes his thick cock in hand and aims it right at Elijah's back door, then moves forward, slowly increasing the pressure against the angel's asshole until the cockhead pushes open his pucker, stretching it wide as he enters the Elijah's body with his hard shaft. Knowing how big your infernal companion's manhood his, you're not surprised at all to hear Elijah wince from the initial penetration and bite into the blanket on the bed. But then, as the massive cock sinks deeper into his body, pleasant feelings prevail as the bumps on Brutus['] shaft rub his inner walls. Even as relaxed as his muscles got during the thorough eating out the demon gave him it's still quite a lot to take. Thankfully, Brutus seems to know what very well, only slowly moving deeper and often stopping to allow Elijah the time to get used to it. Finally he bottoms out inside the dark angel, hard shaft buried all the way and his two large cum-factories resting against his skin.";
			say "     There is a lull in the action as the two hot males just hold still and bask in the feelings of such an intimate connection of their bodies, allowing you to remember your own carnal needs. Elijah had you going pretty well when Brutus... interrupted him, and with the hot show right in front of your eyes, you're horny as ever. Deciding that you want a piece of the angel too, you get on the bed in front of Elijah, then take hold of his long black hair and pull his head up against your crotch. Finding himself presented with your erect manhood, just inches in front of his face, he just goes with the flow and slides his sensuously soft lips over your cockhead. As Elijah starts to give you a pretty amazing blowjob, Brutus takes up fucking his ass in earnest now, slowly pulling his shaft out, then thrusting it back in.";
			WaitLineBreak;
			say "     Spit-roasted between Brutus and yourself, Elijah takes the face-fuck and ass-fuck like a pro, moaning around your hard shaft and dripping precum on the mattress between his legs. He even rocks back and forth to meet each of Brutus thrusts, eager to take the massive shaft deeper and deeper. With the three of you engaged in such a wild threesome, it is not that much longer before Brutus reaches his peak. Giving Elijah's hips some shallow claw-marks as he holds on tightly, Brutus hilts himself fully in the angel's shapely ass and growls loudly, releasing his infernal load. Excited by the sight of the large creature trembling with each blast of cum deep into Elijah, it's only a few last thrusts before you're emptying your own balls into the angel's mouth, coating his tongue in [cum load size of player] creamy-white seed. Being filled at both ends is too much for the angel and in short order, he cums as well, creating a sticky mess of cum all over the sheets under him.";
			say "     Phew, that was fun. After waiting a moment to let your orgasms ebb out, Brutus and you pull free. Leaving the freshly fucked and sticky man to clean himself up later, you grab your gear and clothes, then just walk away, accompanied by Brutus.";
			now lastfuck of Elijah is turns;
			now thirst of Elijah is 50;
		else:
			say "     Okay, let's not overreact. You take a deep breath and compose yourself, then get up from the bed and tell Elijah no. He looks pretty miffed at you shaking off your submissive mood now and stalks off in a huff when you order Brutus to let him go.";

Section 4 - NPC Interactions

An everyturn rule:
	if (hp of Elijah is 0) and (Angel vs Demons is resolved) and (lastfuck of Elijah - turns > 32): [time till demon orgy, after which Elijah will be dragged to hell]
		now hp of Elijah is 100;
		remove Elijah from play;
		say "Your mind wanders momentarily to the angel you once saw fighting those demons, but soon forget about him and return to your more immediate concerns.";
	[NPC Interaction section - sorted by Elijah hp state and NPC/pet - see file header]
	if (hp of Elijah is 1 or hp of Elijah is 2) and (NPCintCounter - turns > 2):
		if (player is in bunker):
			if Candy is in bunker and Char-A of Elijah is "0":
				say "     While taking your break before heading back into the city, you spot Candy kneeling beside the injured angel's bunk. The coon is helping him drink some water out of a bottle, then eases him back down on the bunk as his patient loses consciousness again. It seems Candy still has some of his health-care training intact from his past life. And what he also has is curiosity and an active interest in other men - while checking that the angel is resting comfortably, Candy lifts his sheet and peeks under it, giggling girlishly. He whispers 'Get well soon, big boy,' to the sleeping angel, then goes back to his own bunk.";
				now Char-A of Elijah is "1";
				now NPCintCounter is turns;
			else if (Sarah is in bunker) and Char-B of Elijah is "0":
				if sarahslut < 3: [mostly human]
					say "     While taking your break before heading back into the city, you spot Sarah leaning over the injured angel's bunk. She wipes sweat from his forehead with a small towel, then tucks him under his blanket again which he had partly struggled off in his sleep.";
				else if sarahslut is 3: [husky, still loose in the bunker]
					say "     While taking your break before heading back into the city, you spot Sarah on all fours beside the injured angel's bunk. She whines in sympathy to him and licks his shoulder, trying to make it all better.";
				else if sarahslut > 3: [husky with collar and leash]
					say "     While taking your break before heading back into the city, you spot Sarah pulling on her leash trying to get to the injured angel's bunk and whining pitifully. As you unclasp it from her collar, she walks over to him on all fours, licking his arm for a moment, then rests her head against his bare chest to keep him company.";
				now Char-B of Elijah is "1";
				now NPCintCounter is turns;
			else if (Sven is in bunker) and Char-C of Elijah is "0":
				say "     While taking your break before heading back into the city, you spot Sven sitting on the bunk next to your injured guest's. He's keeping the angel company, telling him a story about the adventures of a man named Per Gynt.";
				now Char-C of Elijah is "1";
				now NPCintCounter is turns;
			else if (felinoid companion is tamed) and Char-D of Elijah is "0":
				say "     While taking your break before heading back into the city, you see your felinoid companion standing beside your injured guest's bunk. He's rubbing the side of his furry head against the angel's cheek, purring loudly to make him better. And possibly trying to transform him into a shape he'd prefer more - but who knows how conscious and aware the big cat is of his changing influence.";
				now Char-D of Elijah is "1";
				now NPCintCounter is turns;
			else if (helper dog is tamed) and Char-E of Elijah is "0":
				say "     While taking your break before heading back into the city, you see the helper dog adjust the angel's blanket. Hobo then takes a seat quietly beside your injured guest's bunk. He's watching him, ready to signal if there's something wrong or he needs assistance.";
				now Char-E of Elijah is "1";
				now NPCintCounter is turns;
			else if (little fox is tamed) and Char-F of Elijah is "0":
				say "     While taking your break before heading back into the city, you see the little fox you rescued curled up sleeping on your injured guest's bunk. Looks like he wants to keep the angel a bit of company.";
				now Char-F of Elijah is "1";
				now NPCintCounter is turns;
			else if (gryphoness is tamed) and Char-G of Elijah is "0":
				say "     While taking your break before heading back into the city, you see hear a beautiful and calming song being sung. It's Denise, the gryphoness sitting on the corner of the injured angel's bunk. He's even somewhat awake, from time to time opening his eyes and smiling up at her before drifting off again.";
				now Char-G of Elijah is "1";
				now NPCintCounter is turns;
			else if (bee girl is tamed) and Char-J of Elijah is "0":
				say "     Honey frets nervously at your side, clutching herself to you tightly as you take a moment to look over the injured angel.";
				now Char-J of Elijah is "1";
				now NPCintCounter is turns;
	else if (hp of Elijah is 3) and (NPCintCounter - turns > 2): [virgin-mode]
		if (player is in bunker):
			if Candy is in bunker and (Char-A of Elijah is "0" or Char-A of Elijah is "1"):
				say "     While taking a break in the bunker, you pass Candy and Elijah going up into the library and catch some of their conversation. Candy says, '...and I even follow some of the rules you guys have. Isn't there something like 'love thy neighbour like yourself'? I sure love to stroke my dick and a hard shaft inside me, so of course I'm happy to do so for other men, too.' Elijah looks a bit puzzled at Candy's logic. Other parts of his anatomy seem to agree with the playful coon though, judging from the slight bulge in his tunic.";
				now Char-A of Elijah is "2";
				now NPCintCounter is turns;
			else if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1"):
				if sarahslut is 0: [mostly human, untouched by the player character]
					say "     While taking a break in the bunker, you see Sarah and Elijah sitting next to each other on one of the bunk beds. Looks like he's praying with her to help her deal with the urges that threaten to overcome her.";
				now Char-B of Elijah is "2";
				now NPCintCounter is turns;
			else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1"):
				say "     While taking your break before heading back into the city, you spot Sven and Elijah sitting next to each other on one of the bunk beds. The angel is attentively listening to a story Sven's telling about life in Norway.";
				now Char-C of Elijah is "2";
				now NPCintCounter is turns;
			else if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see your felinoid companion nudging Elijah in the hip with his head and rub the side of his feline body against the angel's legs. Elijah smiles at the big cat snuggling up against him, leaning down to give him a good scritch behind the ears. It remains to be seen if the constant close contact with the felinoid will have an influence on him. Only time will tell.";
				now Char-D of Elijah is "2";
				now NPCintCounter is turns;
			else if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see the helper dog sitting quietly beside Elijah's bunk, getting stroked. As Elijah sees you looking at them, he pats the dog softly on the head and remarks 'A most dutiful and brave animal. You can count yourself lucky for receiving his assistance.'";
				now Char-E of Elijah is "2";
				now NPCintCounter is turns;
			else if (little fox is tamed) and (Char-F of Elijah is "0" or Char-F of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see Elijah sleeping on his bunk with the little fox you rescued curled up in the crook of his arm. A very sweet and peaceful picture.";
				now Char-F of Elijah is "2";
				now NPCintCounter is turns;
			else if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1"):
				say "     While taking your break before heading back into the city, you hear Elijah talking with Denise. '...your voice truly is beautiful. Have you ever thought about joining a choir? You'd be perfect for a lot of hymns I know.' You're not quite sure, but from her mannerisms you think Denise is blushing under her feathers...";
				now Char-G of Elijah is "2";
				now NPCintCounter is turns;
			else if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see Elijah lying on his bunk reading a book. Then suddenly, his brow scrunches up a bit and he slowly raises a wing from where it was hanging over the side of the bunk. Your cute little crab pet is dangling off the wingtip, holding on with one of its claws. 'That's not there for you to pull on, little creature.' Elijah says, looking at it. 'You're lonely, aren't you? Here, let's give you something to play with.' With that, he pulls a small toy crab out of thin air and sets it down on the ground, soon followed by the real one. It takes hold of the toy and scampers off.";
				now Char-H of Elijah is "2";
				now NPCintCounter is turns;
			else if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1"):
				say "     As you're tending to a few odds and ends, you notice the bee girl, Honey, approach Elijah and ask if he's feeling better. 'I am, thank you,' he replies with a nod and a smile. 'Oh, I am told that a cure was made of milk and honey. Was that honey yours, little one?'  She [if honeygiven is true]nods, saying that it[else]replies that she's not sure, but adds that it probably[end if] came from her hive. He takes her hand in his. 'Then my thanks again to you and your hive,' he says. Honey gets a sad look in her eyes and buzzes off to be alone for a while, leaving Elijah confused.";
				now Char-J of Elijah is "2";
				now NPCintCounter is turns;
		else if player is in Grey Abbey Library:
			if Fang is in Grey Abbey Library and (Char-I of Elijah is "0" or Char-I of Elijah is "1"):
				say "     Elijah steps out of the bunker and into the library, passing through the stacks before finally selecting a book. With book in hand, he heads over to Fang and pets him lightly on the head. 'I thank and commend you for your vigilance. Your protection of this safe haven will not go unrewarded,' he states before turning and heading back into the bunker.";
				now Char-I of Elijah is "2";
				now NPCintCounter is turns;
	else if (hp of Elijah is 4) and (NPCintCounter - turns > 2): [more human-like, nice guy]
		if (player is in bunker):
			if (Candy is in bunker) and (Char-A of Elijah is "0" or Char-A of Elijah is "1" or Char-A of Elijah is "2"):
				say "     While taking a break in the bunker, you see Elijah walking up to Candy holding a rectangular box in colorful wrapping paper behind his back. He hands it over to the coon, who squeals 'A present? Oooh, thank you honey.' As Candy weighs it in his hands and shakes the box softly to try to figure out what it is, Elijah explains 'I found it in one of the offices next door. Apparently it was meant as a prank for a Christmas party. I thought... you might like it.'";
				say "     Curiosity and anticipation make Candy forget all restraint and he just shreds the wrapping paper and tears the lid of the cardboard box inside. What comes to light is... a rubber dildo, colored in the red and white striped pattern of a candy cane. Candy giggles as he sees it, then hugs Elijah and gives him a kiss on the cheek. 'Just what I always wanted. Let's go try it out!' The expression on Elijah's face is priceless as he stammers 'I - erm...' while Candy pulls him along in the direction of his bunk...";
				now Char-A of Elijah is "3";
				now NPCintCounter is turns;
				now lastfuck of Elijah is turns;
				now lastCandyfucked is turns;
			else if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1" or Char-B of Elijah is "2"):
				if sarahslut > 2: [husky, mostly animal mentally]
					say "     When you step back into the bunker after going out for a bit of fresh air, you're almost bowled over by Sarah rushing after a tennis ball on all fours. Looking where the projectile came from, you see Elijah standing there, looking a bit sheepishly. 'Oh, em - I was just playing a bit with Sarah. Hope you don't mind.'";
				now Char-B of Elijah is "3";
				now NPCintCounter is turns;
			else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 8 and hp of Sven < 30): [skips if player is not there to see it]
				say "     While taking your break before heading back into the city, you spot Elijah sitting on his bunk and reading a magazine. Or at least he's trying to until Sven moves into his view and does some suggestive stretches with his snowmeow body for a while, often bending over and smiling seductively at Elijah while wiggling his ass. Finally he moves to the bunk, sitting down next to Elijah and flirting his tail against the angel's neck and cheek, then pulls the magazine out of Elijah's hands and puts it down on the floor.";
				say "     Sven's little show has had quite an effect on Elijah - proven by the bulge in his jeans. With a winning smile, Sven undoes its button, pulling down the zipper to release Elijah's impressive manhood. Then he pushes against the angel's chest, making him lie back on the bunk and starts licking the shaft of his cock. Sven takes it into his muzzle, bobbing up and down on it, accompanied by Elijah's moans and groans as he's expertly sucked off.";
				say "     After a while, when Elijah's cock is slick and wet with saliva, Sven pulls off it, then moves over to kneel over Elijah with his legs left and right of the angel's hips. Leaning down, he runs his paws over Elijah's hard muscular chest, licking it with his rough tongue before moving on to make out deeply with him. When he comes back up a bit out of breath, Sven gives Elijah a grin, then feels behind himself for the angel's cock and holds it up against his asshole. Slowly leaning back, he then lowers himself on it, only stopping when his furry buns touch Elijah's hips and the whole thing is inside of him.";
				say "     Sven rides Elijah's cock for quite some time, filling the bunker with both their grunts, gasps and moans. He's having a lot of fun with your handsome angel, and really goes all out when he sees you as you step closer to get a better look. All too soon, Elijah stiffens on his bunk, pulling the Sven down to him for a kiss as his cock starts pulsing spurt after spurt of his seed deep into the snowmeow's ass. As Elijah sinks back on the bunk spent, Sven sits back up, stroking his own manhood until he shoots long strands of white cum on Elijah. Then he pulls off the angel's cock with a small plop and goes on to lick his come up from between the defined ridges of Elijah's chest.";
				say "     With both your handsome boys pretty exhausted and out of it, it doesn't surprise you that the cuddling that follows leads over to sleep. You ogle their naked bodies for a moment more, then pick up the light blanket from where it fell off the bunk and softly put it over them both.";
				now Char-C of Elijah is "3";
				now lastfuck of sven is turns;
				now lastfuck of Elijah is turns;
				now NPCintCounter is turns;
[			else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 30 and hp of Sven < 50): [skips if player is not there to see it]
				say "***confident Sven scene w/good Elijah.";
				now Char-C of Elijah is "3";
				now lastfuck of sven is turns;
				now lastfuck of Elijah is turns;
				now NPCintCounter is turns;]
			else if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see your felinoid companion nudging Elijah in the hip with his head and rub the side of his feline body against the angel's legs. Elijah smiles at the big cat snuggling up against him, leaning down to give him a good scritch behind the ears. It remains to be seen if the constant close contact with the felinoid will have an influence on him. Only time will tell.";
				now Char-D of Elijah is "2";
				now NPCintCounter is turns;
			else if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1" or Char-E of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah crouched in front of your helper dog. He waves you closer, saying 'Look at what he can do - give me your paw, dog.' ...and just as ordered, the dog raises his paw to have it shaken by Elijah. 'That's a good dog,' Elijah says and rewards him with a treat.";
				now Char-E of Elijah is "3";
				now NPCintCounter is turns;
			else if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1" or Char-G of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah and Denise sitting together on a bunk. They're chatting with each other while grooming each other's wings. Looks like quite a lot of work, stroking over each feather and making sure it's clean and lying correctly between the others. Especially the hard to reach ones at the base. No wonder they're so happy to help each other out.";
				now Char-G of Elijah is "3";
				now NPCintCounter is turns;
			else if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1" or Char-H of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah lying on his bunk reading a book. Then suddenly, his brow scrunches up a bit and he slowly raises a wing from where it was hanging over the side of the bunk. Your cute little crab pet is dangling off the wingtip, holding on with one of its claws. 'That's not there for you to pull on, little creature.' Elijah says, looking at it. 'You're lonely, aren't you? Here, let's give you something to play with.' With that, he pulls a small toy crab out of thin air and sets it down on the ground, soon followed by the real one. It takes hold of the toy and scampers off.";
				now Char-H of Elijah is "3";
				now NPCintCounter is turns;
			else if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1" or Char-H of Elijah is "2"):
				say "     While tending to some odds and ends, you see Elijah approach Honey, taking a seat beside her. 'I'm sorry if I upset you before. Could you tell me what I did to make you so sad?'  She sniffles a little and tells him how her hive was destroyed and all her hive-sisters are dead now. He takes her hand in his again, stroking it tenderly. 'I'm sorry to have inadvertently reminded you of your terrible loss. Would you like to talk to me about them? If they were as kind-hearted as you, then this world is diminished for their loss. But perhaps you can take solace that the honey they left behind was able to help another, as it helps you live to see a brighter future. Let us pray for these hard working souls who continue to help us both even after they are gone,' he says. They pray for some time, Honey wanting to say a proper farewell to each of her sisters. When they're finally done, the bee girl seems drained, but in brighter spirits.";
				if level of bee girl < level of player:
					increase level of bee girl by 1; [Free level]
					say "     The bee girl has gained level [level of bee girl]! Congratulations!";
					if remainder after dividing level of bee girl by 2 is 0:
						increase weapon damage of bee girl by 1;
					if remainder after dividing level of bee girl by 5 is 0:
						increase dexterity of bee girl by 1;
				now Char-J of Elijah is "3";
				now NPCintCounter is turns;
		else if player is in Grey Abbey Library:
			if Fang is in Grey Abbey Library and (Char-I of Elijah is "0" or Char-I of Elijah is "1" or Char-I of Elijah is "2") and ( lastfuck of Fang - turns >= 8 ) and ( lastfuck of Elijah - turns >= 8 ):
				say "     Looking around, you notice Fang stretched out on the floor with Elijah beside him, stroking the wolf's fur with one hand while the other is wrapped around the wolf's stiff cock. 'I hope you don't mind. Our guardian here seemed like he needed some attention, so I thought I'd show him how much we appreciate his continued vigilance,' the angelic figure says with a smile as he continues stroking the wolf's erection. Fang pants softly, clearly enjoying the soft touch of the angel's fingers along his rod, soon getting the wolf to cum with a howl of release.";
				now lastfuck of Fang is turns;
				now Char-I of Elijah is "3";
				now NPCintCounter is turns;
	else if hp of Elijah is 99 and NPCintCounter - turns > 2: [evil, very direct sex-fiend]
		if player is in bunker:
			if (Candy is in bunker) and (Char-A of Elijah is "0" or Char-A of Elijah is "1" or Char-A of Elijah is "2" or Char-A of Elijah is "3") and lastfuck of Elijah - turns >= 12:
				say "     While taking a break in the bunker, you see Elijah step up to Candy from behind and grab his ass. A furry bun in each hand, he squeezes them a bit, saying 'Bend over, I wanna fuck.' Candy replies 'Rather direct, aren't you now, hun. But I like men who know what they want.' He then takes up position against the nearest wall, bracing himself with his arms and pushing his ass back invitingly.";
				say "     Elijah grins at you as he steps out of his leather pants, then moves behind Candy, rubbing his long and hard cock against the fur of Candy's ass. He plays with Candy for a moment, running his manhood up and down his crack, pushing against his pucker, then going back to rubbing against his fur. When he has Candy mewling in need, he suddenly thrusts deep inside the coon, making him gasp as he adjusts to the size of the invader. Then he really goes to town on the boytoy, shafting him hard and deep between moments where he stops all of a sudden until Candy begs him needily to go on and fuck him.";
				say "     Accompanied by gasps, moans and whimpers, Elijah slams in and out of Candy for the next twenty minutes or so until he finally pushes the coon beyond the point of no return. Pink jets of cum shoot from Candy's coon cock all over the wall, filling the room with a sweet, candy-like smell. As Candy's body shakes in the throes of his orgasm, Elijah comes too, jamming his cock as deep as possible into his partner's ass and flooding it with his seed.";
				say "     After resting a moment longer inside Candy, Elijah pulls out his cock and walks past you to his bunk, making sure you see all of his naked glory.";
				now Char-A of Elijah is "4";
				now NPCintCounter is turns;
				now lastfuck of Elijah is turns;
				now lastCandyfucked is turns;
			else if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1" or Char-B of Elijah is "2" or Char-B of Elijah is "3") and lastfuck of Elijah - turns >= 12:
				if sarahslut > 3:
					say "     While taking a break in the bunker, you see Elijah teasing Sarah with a piece of food. He's dangling it in front of her, just at the edge of the reach of her leash, pulling it away each time she tries to grab it. After several failed attempts to get it, Sarah is reduced to whining beggingly at the fallen angel.";
					say "     'You want this nice little snack, little bitch? Then get working and earn it.' Elijah says, unzipping the bulging front of his pants, revealing his hard manhood as he slides them down his legs. With a last look at the tasty morsel of food Elijah is holding, Sarah starts sucking on his cock, bobbing up and down on his long shaft. Noticing you watching them, Elijah grins devilishly, then grabs on to Sarah's head and pumps his cock deep into her throat. He turns around a bit so you have a better view, brazenly showing off his face-fucking you husky bitch. Before too much longer, he moans loudly, holding Sarah's head tightly and shoots his load directly into her throat. Having gotten what he wanted, Elijah pulls out his saliva-coated cock from Sarah's mouth and throws the food on the ground nearby, smiling as she rushes after it. Without bothering to pick up his clothes, he then walks over to his bunk and drapes himself over it, lounging nakedly for you to watch.";
					now Char-B of Elijah is "4";
					now NPCintCounter is turns;
					now lastfuck of Elijah is turns;
			else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 8 and hp of Sven < 30): [skips if player is not there to see it]
				say "     While taking your break before heading back into the city, you spot Elijah walking up to Sven sitting on his bunk. With a 'Let's see how good a sex pet you are. Get sucking!' Elijah zips open the front of his tight leather pants and holds out his impressive manhood for Sven. Being an obedient little snowmeow, Sven glances over at you momentarily, receiving a nod of permission. He leans forward and runs his tongue over it with only a moment's hesitation, then takes it into his muzzle and bobs up and down on the shaft. As Elijah spots you watching them, he grins at you while grabbing Sven's head and thrusting deep into his throat, holding him there for a moment, then releasing him to gasp for breath.";
				say "     After some more time face-fucking Sven, Elijah grunts 'Time for some boypussy!'. He pulls out of Sven's muzzle, then strips off his pants completely and turns the snowmeow around so he's on all fours now with his inviting buns presented towards Elijah. The dark angel runs his hands through the warm fur on Sven's shapely buns, then pulls them apart and pushes his cock against the pink pucker between them. With a satisfied grunt and a gasp from Sven, Elijah thrusts deep into your pet, bottoming out and grinding his hips against Sven's ass. Then he takes a tight hold of the feline's hips and starts fucking him in earnest with rapid thrusts in and out.";
				say "     Being taken by a dominant male is just the thing for your snowmeow pet, and you watch Sven grunt and moan as he's fucked, his paws gripping the sheets of the bunk tightly. He gasps as the feelings of Elijah's long shaft sliding against his inner walls make him cum, spraying the bunk with his seed. Sven's cock doesn't have time to go soft, as Elijah just keeps going and starts thrusting in even harder and deeper, so he stays hard and ready from the sensations in his ass. It doesn't take long for Elijah to drive Sven into a lustful overload again, and you see him shudder as he blasts another big load onto the sheets. This time, his spasming anal muscles take Elijah over the edge with him, thrusting as far inside as he can go and spurting jet after jet of his seed into the kitty.";
				say "     His lust satisfied, Elijah pulls out of Sven and leaves him to collapse on the sticky bunk in exhaustion. Then he walks past you to the bathrooms, naked and still dripping some cum from his cock, smirking at you ogling his body.";
				now Char-C of Elijah is "3";
				now lastfuck of Elijah is turns;
				now NPCintCounter is turns;
[			else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 30 and hp of Sven < 50): [skips if player is not there to see it]
				say "***confident Sven scene w/Bad Elijah.";
				now Char-C of Elijah is "3";
				now lastfuck of Elijah is turns;
				now NPCintCounter is turns;]
			else if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1") and lastfuck of Elijah - turns >= 12:
				say "     While taking your break before heading back into the city, you see your felinoid companion walk up to Elijah's bunk where the angel is just lounging around naked, with nothing more than a sheet covering his hips. The big cat licks over his muscular chest and starts rubbing its furry head against the fallen angel's side. Elijah runs a hand through the felinoid's fur, saying 'Your efforts are in vain, big furball - no matter how much you rub against me, I'll never grow a cunt so you can breed me.'";
				say "     Then he throws aside his sheet, revealing the rest of his naked body and a sizeable erection. 'But it does make me quite horny, so let's see how tight that furry ass of yours is. Turn around!' he continues. The felinoid hesitates a moment at the forceful command, bringing his head over to Elijah's cock and sniffing it. Then he mews submissively and turns his big body around as Elijah's strong hands grip him. Elijah stands up and steps behind the big cat, groping his furred ass. Smiling demonically as he notices you watching, the fallen angel then grabs hold of the feline's tail, pulling it aside as he aligns his hard cock with the pucker below. Then, with one sharp thrust he slams it all in, burying his manhood completely and touching the furry behind in front of him with his hips. The cat roars at the sudden intrusion but calms down quickly as Elijah holds it in an iron grip and starts fucking in and out. Soon his own spined penis hardens and can be seen hanging under his quadrupedal body as the pain of the initial penetration fades and the good feelings begin to outweigh it.";
				say "     Accompanied by moans, some growls and a roar or two, Elijah slams in and out of the felinoid for the next twenty minutes or so until suddenly the cat's penis starts spraying cum all over the floor under it. The spasms of its anal muscles accompanying each shot drive its fucker over the edge too, and you hear Elijah moan loudly as he grips two handfuls of fur and fills the feline's ass with his seed.";
				say "     Still balls-deep inside the felinoid, Elijah sinks forward exhaustedly, resting for a moment on its back. Then he gives a short laugh, pulling out and plopping back onto his bunk. Reaching out and pulling the felinoid's head towards him, he says 'Now you know what rubbing against me will get you. Do it again soon.'";
				now Char-D of Elijah is "4";
				now NPCintCounter is turns;
				now lastfuck of Elijah is turns;
			else if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1" or Char-E of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah get your helper dog casually fetch a ball for him a few times. The dog seems more interested in keeping an eye on him than the ball, but does go retrieve it each time. After a few throws, Elijah pulls something and chucks the black oblong object across the room, where it bounces off the wall, shouting 'Go fetch, doggie.'  The helper dog seems into it this time, chasing after it, but then stops and detours to grab a towel from one of the cots. Confused by your dog's actions, you watch as the shepherd carries it over to where the black rod is rolling to a stop. The dog drops the cloth over it before picking it up in his mouth with care. Padding over to the nearby trash chute, Hobo depresses the foot lever with one paw and drops the towel-wrapped thing into the garbage while Elijah yells from across the room.";
				say "     'Stupid beast!' Elijah snarls. 'It's a lot of work to talk a succubus out of a dildo - and you won't even fetch it for me just this once. Gah!  Don't throw it out, you mutt!  You'd be a much more fun pet as a hellhound!'";
				now Char-E of Elijah is "4";
				now NPCintCounter is turns;
			else if (little fox is tamed) and (Char-F of Elijah is "0" or Char-F of Elijah is "1" or Char-F of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah lift the blanket of his bunk and scowl at what he finds below. He grabs the little fox you rescued by the scuff of his neck and dumps him on the concrete floor, growling 'Stay off my bunk, you little furball.'";
				now Char-F of Elijah is "4";
				now NPCintCounter is turns;
			else if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1" or Char-G of Elijah is "2") and lastfuck of Elijah - turns >= 12:
				say "     While taking your break before heading back into the city, you see Elijah propositioning Denise, stepping into her comfort zone and lewdly touching her body. 'You're such a nice little gryphon breeder, so why don't we put some eggs into you,' the fallen angel says, reaching down to finger her pussy as Denise shakes her head and tries to step back.";
				say "     Elijah is making her moan and whimper with his skilled fingers, but she manages to somewhat regain her composure, saying 'I... I - *moan* - I'm taken, you - ooh - can't have me.' Winding herself out of his grasp, she rushes away and throws her arms around you in a tight hug.";
				now Char-G of Elijah is "4";
				now NPCintCounter is turns;
			else if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1" or Char-H of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah lift the blanket of his bunk and scowl at what he finds below. He grabs your cute crab pet and dumps it on the concrete floor, growling 'Can't you keep your stupid critters in a pen somewhere?'";
				now Char-H of Elijah is "4";
				now NPCintCounter is turns;
			else if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1" or Char-J of Elijah is "2"):
				say "     While tending to some odds and ends, you see Elijah strut over to Honey and grab her. His hands run over the bee girl's body, fondling her pussy and tender abdomen. 'Mmm... I want to get at your honeypot, cutie,' he says with a lecherous grin. The bee girl squirms in his grip and smooshes the honeycomb she was snacking on into his face. She squirms out of his grip as he sputters angrily.";
				say "     'You're terrible. I'm sorry I ever felt sad that you got hurt,' she screams, tears in her eyes as she yells at him. She takes flight as he makes a grab for her, buzzing over to hide behind him, sobbing loudly.";
				say "     Elijah, meanwhile, is livid, growling about having to get this sticky gunk off his face and that he'll make her pay";
				if Candy is bunkered:
					say ". Candy giggles and puts up his hand, waving it in the air excitedly. 'Oh! Oh! Me-me-me! I'm a pro at licking up sticky sweet stuff,' the gay coon jokes. 'I'd be glad to help you out with that.'  As he sashays over, he gives Honey a wink to show he plans on distract the bad boy for her. From the bathroom where they end up, you can hear the loud cries of lustful pleasure as it sounds like Elijah's taking his frustration and excess libido out on the pink raccoon by being particularly rough with him.";
					now lastCandyfucked is turns - 2;
					now lastfuck of Elijah is turns - 2;
				else:
					say ". 'Get over here, you buzzing bitch. I'm gonna kick that sweet all of yours all across town,' he growls, storming forward. You keep between them and tell him to calm down and get cleaned up. He glares at you for a few moments, eyes flashing red with anger, but you stand your ground";
					if "water bottle" is listed in invent of bunker:
						say ". He turns and storms off, grabbing one of the spare bottles of water to use to clean himself up.";
						repeat with Q running from 1 to number of entries in invent of the bunker:
							if entry q of invent of the bunker is "water bottle":
								remove entry q from invent of the bunker;
								break;
					else if water bottle is owned:
						say ". He turns and storms off, but not before rummaging through your pack and grabbing one of the spare bottles of water to use to clean himself up.";
						delete water bottle;
				now Char-J of Elijah is "4";
				now NPCintCounter is turns;
		if player is in Grey Abbey Library:
			if Fang is in Grey Abbey Library and (Char-I of Elijah is "0" or Char-I of Elijah is "1" or Char-I of Elijah is "2") and ( lastfuck of Fang - turns >= 8 ) and ( lastfuck of Elijah - turns >= 8 ):
				say "     There is some commotion outside the door and you notice the Fang's already slipped outside. Elijah, who had been wandering the stacks looking among the books on Renaissance art for 'nudey pics' as he put it, heads over to see what it is as well. Looking outside, you see that Fang's captured a [if girl is not banned]husky girl that's wandered too close to your safe haven. He's pinned the husky beneath him and mounts the interloper, much to the dark angel's delight. 'Good boy,' he says with excitement. 'Fuck that bitch.'  He doesn't limit himself to just cheering, but unzips his pants and gets in front of her, forcing her to suck him off even as Fang pounds her wet pussy. After they've both drained their balls, they drive the nosey creature away[else]latex fox that's wandered too close to your safe haven. The wolf pins the fox beneath him and mounts the interloper, much to the fallen angel's delight. 'Good boy,' he says with excitement. 'Fuck that slut.'  He doesn't limit himself to just cheering, but unzips his pants and gets in front of him, forcing the fox to suck him off even as Fang pounds his tight ass. After they've both drained their balls, they drive the nosey creature away[end if].";
				now lastfuck of Fang is turns;
				now lastfuck of Elijah is turns;
				now Char-I of Elijah is "4";
				now NPCintCounter is turns;
	say "[NPCintUpdate]";

To npcEintAlter (N - number) with (L - text):
	replace character number N in npcEint with L.

to say NPCintUpdate:
	if NPCintCounter is turns:[was updated this turn]
		npceintAlter 1 with Char-A of Elijah;
		npceintAlter 2 with Char-B of Elijah;
		npceintAlter 3 with Char-C of Elijah;
		npceintAlter 4 with Char-D of Elijah;
		npceintAlter 5 with Char-E of Elijah;
		npceintAlter 6 with Char-F of Elijah;
		npceintAlter 7 with Char-G of Elijah;
		npceintAlter 8 with Char-H of Elijah;
		npceintAlter 9 with Char-I of Elijah;
		npceintAlter 10 with Char-J of Elijah;
		npceintAlter 11 with Char-K of Elijah;
		npceintAlter 12 with Char-L of Elijah;
		npceintAlter 13 with Char-M of Elijah;

after going inside from the Grey Abbey Library while (hp of Elijah is 1 or hp of Elijah is 2 and NPCintCounter - turns > 4):
	move player to Bunker;
	if debugactive is 1:
		say "     ELIJAH 1/2 WALKIN[line break]";
	if Candy is in bunker and Char-A of Elijah is "0":
		say "     As you come down into the bunker, you spot Candy kneeling beside the injured angel's bunk. The coon is helping him drink some water out of a bottle, then eases him back down on the bunk as his patient loses consciousness again. It seems Candy still has some of his health-care training intact from his past life. And what he also has is curiosity and an active interest in other men - while checking that the angel is resting comfortably, Candy lifts his sheet and peeks under it, giggling girlishly. He whispers 'Get well soon, big boy,' to the sleeping angel, then goes back to his own bunk.";
		now Char-A of Elijah is "1";
		now NPCintCounter is turns;
	else if (Sarah is in bunker) and Char-B of Elijah is "0":
		if sarahslut < 3: [mostly human]
			say "     As you come down into the bunker, you spot Sarah leaning over the injured angel's bunk. She wipes sweat from his forehead with a small towel, then tucks him under his blanket again which he had partly struggled off in his sleep.";
		else if sarahslut is 3: [husky, still loose in the bunker]
			say "     As you come down into the bunker, you spot Sarah on all fours beside the injured angel's bunk. She whines in sympathy to him and licks his shoulder, trying to make it all better.";
		else if sarahslut > 3: [husky with collar and leash]
			say "     As you come down into the bunker, you spot Sarah pulling on her leash trying to get to the injured angel's bunk and whining pitifully. As you unclasp it from her collar, she walks over to him on all fours, licking his arm for a moment, then rests her head against his bare chest to keep him company.";
		now Char-B of Elijah is "1";
		now NPCintCounter is turns;
	else if (Sven is in bunker) and Char-C of Elijah is "0":
		say "     As you come down into the bunker, you spot Sven sitting on the bunk next to your injured guest's. He's keeping the angel company, telling him a story about the adventures of a man named Per Gynt.";
		now Char-C of Elijah is "1";
		now NPCintCounter is turns;
	else if (felinoid companion is tamed) and Char-D of Elijah is "0":
		say "     As you come down into the bunker, you see your felinoid companion standing beside your injured guest's bunk. He's rubbing the side of his furry head against the angel's cheek, purring loudly to make him better. And possibly trying to transform him into a shape he'd prefer more - but who knows how conscious and aware the big cat is of his changing influence.";
		now Char-D of Elijah is "1";
		now NPCintCounter is turns;
	else if (helper dog is tamed) and Char-E of Elijah is "0":
		say "     As you come down into the bunker, you see the helper dog adjust the angel's blanket. Hobo then takes a seat quietly beside your injured guest's bunk. He's watching him, ready to signal if there's something wrong or he needs assistance.";
		now Char-E of Elijah is "1";
		now NPCintCounter is turns;
	else if (little fox is tamed) and Char-F of Elijah is "0":
		say "     As you come down into the bunker, you see the little fox you rescued curled up sleeping on your injured guest's bunk. Looks like he wants to keep the angel a bit of company.";
		now Char-F of Elijah is "1";
		now NPCintCounter is turns;
	else if (gryphoness is tamed) and Char-G of Elijah is "0":
		say "     As you come down into the bunker, you hear a beautiful and calming song being sung. It's Denise, the gryphoness sitting on the corner of the injured angel's bunk. He's even somewhat awake, from time to time opening his eyes and smiling up at her before drifting off again.";
		now Char-G of Elijah is "1";
		now NPCintCounter is turns;
	else if (bee girl is tamed) and Char-J of Elijah is "0":
		say "     Honey frets nervously at your side, clutching herself to you tightly as you take a moment to look over the injured angel.";
		now Char-J of Elijah is "1";
	now NPCintCounter is turns;
	say "[NPCintUpdate]";

after going inside from the Grey Abbey Library while (hp of Elijah is 3 and NPCintCounter - turns > 4): [virgin-mode]
	move player to Bunker;
	if debugactive is 1:
		say "     ELIJAH 3 WALKIN[line break]";
	if Candy is in bunker and (Char-A of Elijah is "0" or Char-A of Elijah is "1"):
		say "     As you come down into the bunker, you pass Candy and Elijah going up into the library and catch some of their conversation. Candy says, '...and I even follow some of the rules you guys have. Isn't there something like 'love thy neighbour like yourself'? I sure love to stroke my dick and a hard shaft inside me, so of course I'm happy to do so for other men, too.' Elijah looks a bit puzzled at Candy's logic. Other parts of his anatomy seem to agree with the playful coon though, judging from the slight bulge in his tunic.";
		now Char-A of Elijah is "2";
		now NPCintCounter is turns;
	else if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1"):
		if sarahslut is 0: [mostly human, untouched by the player character]
			say "     As you come down into the bunker,, you see Sarah and Elijah sitting next to each other on one of the bunk beds. Looks like he's praying with her to help her deal with the urges that threaten to overcome her.";
		now Char-B of Elijah is "2";
		now NPCintCounter is turns;
	else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1"):
		say "     As you come down into the bunker, you spot Sven and Elijah sitting next to each other on one of the bunk beds. The angel is attentively listening to a story Sven's telling about life in Norway.";
		now Char-C of Elijah is "2";
		now NPCintCounter is turns;
	else if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1"):
		say "     As you come down into the bunker, you see your felinoid companion nudging Elijah in the hip with his head and rub the side of his feline body against the angel's legs. Elijah smiles at the big cat snuggling up against him, leaning down to give him a good scritch behind the ears. It remains to be seen if the constant close contact with the felinoid will have an influence on him. Only time will tell.";
		now Char-D of Elijah is "2";
		now NPCintCounter is turns;
	else if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1"):
		say "     As you come down into the bunker, you see the helper dog sitting quietly beside Elijah's bunk, getting stroked. As Elijah sees you looking at them, he pats the dog softly on the head and remarks 'A most dutiful and brave animal. You can count yourself lucky for receiving his assistance.'";
		now Char-E of Elijah is "2";
		now NPCintCounter is turns;
	else if (little fox is tamed) and (Char-F of Elijah is "0" or Char-F of Elijah is "1"):
		say "     As you come down into the bunker, you see Elijah sleeping on his bunk with the little fox you rescued curled up in the crook of his arm. A very sweet and peaceful picture.";
		now Char-F of Elijah is "2";
		now NPCintCounter is turns;
	else if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1"):
		say "     As you come down into the bunker, you hear Elijah talking with Denise. '...your voice truly is beautiful. Have you ever thought about joining a choir? You'd be perfect for a lot of hymns I know.' You're not quite sure, but from her mannerisms you think Denise is blushing under her feathers...";
		now Char-G of Elijah is "2";
		now NPCintCounter is turns;
	else if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1"):
		say "     As you come down into the bunker, you see Elijah lying on his bunk reading a book. Then suddenly, his brow scrunches up a bit and he slowly raises a wing from where it was hanging over the side of the bunk. Your cute little crab pet is dangling off the wingtip, holding on with one of its claws. 'That's not there for you to pull on, little creature.' Elijah says, looking at it. 'You're lonely, aren't you? Here, let's give you something to play with.' With that, he pulls a small toy crab out of thin air and sets it down on the ground, soon followed by the real one. It takes hold of the toy and scampers off.";
		now Char-H of Elijah is "2";
		now NPCintCounter is turns;
	else if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1"):
		say "     As you come down into the bunker, you notice the bee girl, Honey, approach Elijah and ask if he's feeling better. 'I am, thank you,' he replies with a nod and a smile. 'Oh, I am told that a cure was made of milk and honey. Was that honey yours, little one?'  She [if honeygiven is true]nods, saying that it[else]replies that she's not sure, but adds that it probably[end if] came from her hive. He takes her hand in his. 'Then my thanks again to you and your hive,' he says. Honey gets a sad look in her eyes and buzzes off to be alone for a while, leaving Elijah confused.";
		now Char-J of Elijah is "2";
	now NPCintCounter is turns;
	say "[NPCintUpdate]";

after going inside from the Grey Abbey Library while (hp of Elijah is 4 and NPCintCounter - turns > 4): [more human-like, nice guy]
	move player to Bunker;
	if debugactive is 1:
		say "     ELIJAH 4 WALKIN[line break]";
	if (Candy is in bunker) and (Char-A of Elijah is "0" or Char-A of Elijah is "1" or Char-A of Elijah is "2"):
		say "     As you come down into the bunker, you see Elijah walking up to Candy holding a rectangular box in colorful wrapping paper behind his back. He hands it over to the coon, who squeals 'A present? Oooh, thank you honey.' As Candy weighs it in his hands and shakes the box softly to try to figure out what it is, Elijah explains 'I found it in one of the offices next door. Apparently it was meant as a prank for a Christmas party. I thought... you might like it.'";
		say "     Curiosity and anticipation make Candy forget all restraint and he just shreds the wrapping paper and tears the lid of the cardboard box inside. What comes to light is... a rubber dildo, colored in the red and white striped pattern of a candy cane. Candy giggles as he sees it, then hugs Elijah and gives him a kiss on the cheek. 'Just what I always wanted. Let's go try it out!' The expression on Elijah's face is priceless as he stammers 'I - erm...' while Candy pulls him along in the direction of his bunk...";
		now Char-A of Elijah is "3";
		now NPCintCounter is turns;
		now lastfuck of Elijah is turns;
		now lastCandyfucked is turns;
	else if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1" or Char-B of Elijah is "2"):
		if sarahslut > 2: [husky, mostly animal mentally]
			say "     As you come down into the bunker, you're almost bowled over by Sarah rushing after a tennis ball on all fours. Looking where the projectile came from, you see Elijah standing there, looking a bit sheepishly. 'Oh, em - I was just playing a bit with Sarah. Hope you don't mind.'";
		now Char-B of Elijah is "3";
		now NPCintCounter is turns;
	else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 8 and hp of Sven < 30): [skips if player is not there to see it]
		say "     As you come down into the bunker, you spot Elijah sitting on his bunk and reading a magazine. Or at least he's trying to until Sven moves into his view and does some suggestive stretches with his snowmeow body for a while, often bending over and smiling seductively at Elijah while wiggling his ass. Finally he moves to the bunk, sitting down next to Elijah and flirting his tail against the angel's neck and cheek, then pulls the magazine out of Elijah's hands and puts it down on the floor.";
		say "     Sven's little show has had quite an effect on Elijah - proven by the bulge in his jeans. With a winning smile, Sven undoes its button, pulling down the zipper to release Elijah's impressive manhood. Then he pushes against the angel's chest, making him lie back on the bunk and starts licking the shaft of his cock. Sven takes it into his muzzle, bobbing up and down on it, accompanied by Elijah's moans and groans as he's expertly sucked off. After a while, when Elijah's cock is slick and wet with saliva, Sven pulls off it, then moves over to kneel over Elijah with his legs left and right of the angel's hips. Leaning down, he runs his paws over Elijah's hard muscular chest, licking it with his rough tongue before moving on to make out deeply with him. When he comes back up a bit out of breath, Sven gives Elijah a grin, then feels behind himself for the angel's cock and holds it up against his asshole. Slowly leaning back, he then lowers himself on it, only stopping when his furry buns touch Elijah's hips and the whole thing is inside of him.";
		say "     Sven rides Elijah's cock for quite some time, filling the bunker with both their grunts, gasps and moans. He's having a lot of fun with your handsome angel, and really goes all out when he sees you as you step closer to get a better look. All too soon, Elijah stiffens on his bunk, pulling the Sven down to him for a kiss as his cock starts pulsing spurt after spurt of his seed deep into the snowmeow's ass. As Elijah sinks back on the bunk spent, Sven sits back up, stroking his own manhood until he shoots long strands of white cum on Elijah. Then he pulls off the angel's cock with a small plop and goes on to lick his come up from between the defined ridges of Elijah's chest.";
		say "     With both your handsome boys pretty exhausted and out of it, it doesn't surprise you that the cuddling that follows leads over to sleep. You ogle their naked bodies for a moment more, then pick up the light blanket from where it fell off the bunk and softly put it over them both.";
		now Char-C of Elijah is "3";
		now lastfuck of sven is turns;
		now lastfuck of Elijah is turns;
		now NPCintCounter is turns;
[	else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 30 and hp of Sven < 50): [skips if player is not there to see it]
		say "***confident Sven w/good Elijah.";
		now Char-C of Elijah is "3";
		now lastfuck of sven is turns;
		now lastfuck of Elijah is turns;
		now NPCintCounter is turns;]
	else if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1"):
		say "     As you come down into the bunker, you see your felinoid companion nudging Elijah in the hip with his head and rub the side of his feline body against the angel's legs. Elijah smiles at the big cat snuggling up against him, leaning down to give him a good scritch behind the ears. It remains to be seen if the constant close contact with the felinoid will have an influence on him. Only time will tell.";
		now Char-D of Elijah is "2";
		now NPCintCounter is turns;
	else if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1" or Char-E of Elijah is "2"):
		say "     As you come down into the bunker, you see Elijah crouched in front of your helper dog. He waves you closer, saying 'Look at what he can do - give me your paw, dog.' ...and just as ordered, the dog raises his paw to have it shaken by Elijah. 'That's a good dog,' Elijah says and rewards him with a treat.";
		now Char-E of Elijah is "3";
		now NPCintCounter is turns;
	else if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1" or Char-G of Elijah is "2"):
		say "     While taking your break before heading back into the city, you see Elijah and Denise sitting together on a bunk. They're chatting with each other while grooming each other's wings. Looks like quite a lot of work, stroking over each feather and making sure it's clean and lying correctly between the others. Especially the hard to reach ones at the base. No wonder they're so happy to help each other out.";
		now Char-G of Elijah is "3";
		now NPCintCounter is turns;
	else if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1" or Char-H of Elijah is "2"):
		say "     As you come down into the bunker, you see Elijah lying on his bunk reading a book. Then suddenly, his brow scrunches up a bit and he slowly raises a wing from where it was hanging over the side of the bunk. Your cute little crab pet is dangling off the wingtip, holding on with one of its claws. 'That's not there for you to pull on, little creature.' Elijah says, looking at it. 'You're lonely, aren't you? Here, let's give you something to play with.' With that, he pulls a small toy crab out of thin air and sets it down on the ground, soon followed by the real one. It takes hold of the toy and scampers off.";
		now Char-H of Elijah is "3";
		now NPCintCounter is turns;
	else if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1" or Char-H of Elijah is "2"):
		say "     While tending to some odds and ends, you see Elijah approach Honey, taking a seat beside her. 'I'm sorry if I upset you before. Could you tell me what I did to make you so sad?'  She sniffles a little and tells him how her hive was destroyed and all her hive-sisters are dead now. He takes her hand in his again, stroking it tenderly. 'I'm sorry to have inadvertently reminded you of your terrible loss. Would you like to talk to me about them? If they were as kind-hearted as you, then this world is diminished for their loss. But perhaps you can take solace that the honey they left behind was able to help another, as it helps you live to see a brighter future. Let us pray for these hard working souls who continue to help us both even after they are gone,' he says. They pray for some time, Honey wanting to say a proper farewell to each of her sisters. When they're finally done, the bee girl seems drained, but in brighter spirits.";
		if level of bee girl < level of player:
			increase level of bee girl by 1; [Free level]
			say "     The bee girl has gained level [level of bee girl]! Congratulations!";
			if remainder after dividing level of bee girl by 2 is 0:
				increase weapon damage of bee girl by 1;
			if remainder after dividing level of bee girl by 5 is 0:
				increase dexterity of bee girl by 1;
		now Char-J of Elijah is "3";
	now NPCintCounter is turns;
	say "[NPCintUpdate]";

after going inside from the Grey Abbey Library while (hp of Elijah is 99 and NPCintCounter - turns > 4): [evil, very direct sex-fiend]
	move player to Bunker;
	if debugactive is 1:
		say "     ELIJAH 99 WALKIN[line break]";
	if (Candy is in bunker) and (Char-A of Elijah is "0" or Char-A of Elijah is "1" or Char-A of Elijah is "2" or Char-A of Elijah is "3") and lastfuck of Elijah - turns >= 12:
		say "     As you come down into the bunker, you see Elijah step up to Candy from behind and grab his ass. A furry bun in each hand, he squeezes them a bit, saying 'Bend over, I wanna fuck.' Candy replies 'Rather direct, aren't you now, hun. But I like men who know what they want.' He then takes up position against the nearest wall, bracing himself with his arms and pushing his ass back invitingly.";
		say "     Elijah grins at you as he steps out of his leather pants, then moves behind Candy, rubbing his long and hard cock against the fur of Candy's ass. He plays with Candy for a moment, running his manhood up and down his crack, pushing against his pucker, then going back to rubbing against his fur. When he has Candy mewling in need, he suddenly thrusts deep inside the coon, making him gasp as he adjusts to the size of the invader. Then he really goes to town on the boytoy, shafting him hard and deep between moments where he stops all of a sudden until Candy begs him needily to go on and fuck him.";
		say "     Accompanied by gasps, moans and whimpers, Elijah slams in and out of Candy for the next twenty minutes or so until he finally pushes the coon beyond the point of no return. Pink jets of cum shoot from Candy's coon cock all over the wall, filling the room with a sweet, candy-like smell. As Candy's body shakes in the throes of his orgasm, Elijah comes too, jamming his cock as deep as possible into his partner's ass and flooding it with his seed.";
		say "     After resting a moment longer inside Candy, Elijah pulls out his cock and walks past you to his bunk, making sure you see all of his naked glory.";
		now Char-A of Elijah is "4";
		now NPCintCounter is turns;
		now lastfuck of Elijah is turns;
		now lastCandyfucked is turns;
	else if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1" or Char-B of Elijah is "2" or Char-B of Elijah is "3") and lastfuck of Elijah - turns >= 12:
		if sarahslut > 3:
			say "     As you come down into the bunker, you see Elijah teasing Sarah with a piece of food. He's dangling it in front of her, just at the edge of the reach of her leash, pulling it away each time she tries to grab it. After several failed attempts to get it, Sarah is reduced to whining beggingly at the fallen angel.";
			say "     'You want this nice little snack, little bitch? Then get working and earn it.' Elijah says, unzipping the bulging front of his pants, revealing his hard manhood as he slides them down his legs. With a last look at the tasty morsel of food Elijah is holding, Sarah starts sucking on his cock, bobbing up and down on his long shaft. Noticing you watching them, Elijah grins devilishly, then grabs on to Sarah's head and pumps his cock deep into her throat. He turns around a bit so you have a better view, brazenly showing off his face-fucking you husky bitch. Before too much longer, he moans loudly, holding Sarah's head tightly and shoots his load directly into her throat. Having gotten what he wanted, Elijah pulls out his saliva-coated cock from Sarah's mouth and throws the food on the ground nearby, smiling as she rushes after it. Without bothering to pick up his clothes, he then walks over to his bunk and drapes himself over it, lounging nakedly for you to watch.";
			now Char-B of Elijah is "4";
			now NPCintCounter is turns;
			now lastfuck of Elijah is turns;
	else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 8 and hp of Sven < 30): [skips if player is not there to see it]
		say "     As you come down into the bunker, you spot Elijah walking up to Sven sitting on his bunk. With a 'Let's see how good a sex pet you are. Get sucking!' Elijah zips open the front of his tight leather pants and holds out his impressive manhood for Sven. Being an obedient little snowmeow, Sven glances over at you momentarily, receiving a nod of permission. He leans forward and runs his tongue over it with only a moment's hesitation, then takes it into his muzzle and bobs up and down on the shaft. As Elijah spots you watching them, he grins at you while grabbing Sven's head and thrusting deep into his throat, holding him there for a moment, then releasing him to gasp for breath.";
		say "     After some more time face-fucking Sven, Elijah grunts 'Time for some boypussy!'. He pulls out of Sven's muzzle, then strips off his pants completely and turns the snowmeow around so he's on all fours now with his inviting buns presented towards Elijah. The dark angel runs his hands through the warm fur on Sven's shapely buns, then pulls them apart and pushes his cock against the pink pucker between them. With a satisfied grunt and a gasp from Sven, Elijah thrusts deep into your pet, bottoming out and grinding his hips against Sven's ass. Then he takes a tight hold of the feline's hips and starts fucking him in earnest with rapid thrusts in and out.";
		say "     Being taken by a dominant male is just the thing for your snowmeow pet, and you watch Sven grunt and moan as he's fucked, his paws gripping the sheets of the bunk tightly. He gasps as the feelings of Elijah's long shaft sliding against his inner walls make him cum, spraying the bunk with his seed. Sven's cock doesn't have time to go soft, as Elijah just keeps going and starts thrusting in even harder and deeper, so he stays hard and ready from the sensations in his ass. It doesn't take long for Elijah to drive Sven into a lustful overload again, and you see him shudder as he blasts another big load onto the sheets. This time, his spasming anal muscles take Elijah over the edge with him, thrusting as far inside as he can go and spurting jet after jet of his seed into the kitty.";
		say "     His lust satisfied, Elijah pulls out of Sven and leaves him to collapse on the sticky bunk in exhaustion. Then he walks past you to the bathrooms, naked and still dripping some cum from his cock, smirking at you ogling his body.";
		now Char-C of Elijah is "3";
		now lastfuck of Elijah is turns;
		now NPCintCounter is turns;
[	else if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 30 and hp of Sven < 50): [skips if player is not there to see it]
		say "***confident Sven scene w/Bad Elijah.";
		now Char-C of Elijah is "3";
		now lastfuck of Elijah is turns;
		now NPCintCounter is turns;]
	else if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1") and lastfuck of Elijah - turns >= 12:
		say "     As you come down into the bunker, you see your felinoid companion walk up to Elijah's bunk where the angel is just lounging around naked, with nothing more than a sheet covering his hips. The big cat licks over his muscular chest and starts rubbing its furry head against the fallen angel's side. Elijah runs a hand through the felinoid's fur, saying 'Your efforts are in vain, big furball - no matter how much you rub against me, I'll never grow a cunt so you can breed me.'";
		say "     Then he throws aside his sheet, revealing the rest of his naked body and a sizeable erection. 'But it does make me quite horny, so let's see how tight that furry ass of yours is. Turn around!' he continues. The felinoid hesitates a moment at the forceful command, bringing his head over to Elijah's cock and sniffing it. Then he mews submissively and turns his big body around as Elijah's strong hands grip him. Elijah stands up and steps behind the big cat, groping his furred ass. Smiling demonically as he notices you watching, the fallen angel then grabs hold of the feline's tail, pulling it aside as he aligns his hard cock with the pucker below. Then, with one sharp thrust he slams it all in, burying his manhood completely and touching the furry behind in front of him with his hips. The cat roars at the sudden intrusion but calms down quickly as Elijah holds it in an iron grip and starts fucking in and out. Soon his own spined penis hardens and can be seen hanging under his quadrupedal body as the pain of the initial penetration fades and the good feelings begin to outweigh it.";
		say "     Accompanied by moans, some growls and a roar or two, Elijah slams in and out of the felinoid for the next twenty minutes or so until suddenly the cat's penis starts spraying cum all over the floor under it. The spasms of its anal muscles accompanying each shot drive its fucker over the edge too, and you hear Elijah moan loudly as he grips two handfuls of fur and fills the feline's ass with his seed.";
		say "     Still balls-deep inside the felinoid, Elijah sinks forward exhaustedly, resting for a moment on its back. Then he gives a short laugh, pulling out and plopping back onto his bunk. Reaching out and pulling the felinoid's head towards him, he says 'Now you know what rubbing against me will get you. Do it again soon.'";
		now Char-D of Elijah is "4";
		now NPCintCounter is turns;
		now lastfuck of Elijah is turns;
	else if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1" or Char-E of Elijah is "2"):
		say "     As you come down into the bunker, you see Elijah get your helper dog casually fetch a ball for him a few times. The dog seems more interested in keeping an eye on him than the ball, but does go retrieve it each time. After a few throws, Elijah pulls something and chucks the black oblong object across the room, where it bounces off the wall, shouting 'Go fetch, doggie.'  The helper dog seems into it this time, chasing after it, but then stops and detours to grab a towel from one of the cots. Confused by your dog's actions, you watch as the shepherd carries it over to where the black rod is rolling to a stop. The dog drops the cloth over it before picking it up in his mouth with care. Padding over to the nearby trash chute, Hobo depresses the foot lever with one paw and drops the towel-wrapped thing into the garbage while Elijah yells from across the room.";
		say "     'Stupid beast!' Elijah snarls. 'It's a lot of work to talk a succubus out of a dildo - and you won't even fetch it for me just this once. Gah!  Don't throw it out, you mutt!  You'd be a much more fun pet as a hellhound!'";
		now Char-E of Elijah is "4";
		now NPCintCounter is turns;
	else if (little fox is tamed) and (Char-F of Elijah is "0" or Char-F of Elijah is "1" or Char-F of Elijah is "2"):
		say "     As you come down into the bunker, you see Elijah lift the blanket of his bunk and scowl at what he finds below. He grabs the little fox you rescued by the scuff of his neck and dumps him on the concrete floor, growling 'Stay off my bunk, you little furball.'";
		now Char-F of Elijah is "4";
		now NPCintCounter is turns;
	else if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1" or Char-G of Elijah is "2") and lastfuck of Elijah - turns >= 12:
		say "     As you come down into the bunker, you see Elijah propositioning Denise, stepping into her comfort zone and lewdly touching her body. 'You're such a nice little gryphon breeder, so why don't we put some eggs into you,' the fallen angel says, reaching down to finger her pussy as Denise shakes her head and tries to step back.";
		say "     Elijah is making her moan and whimper with his skilled fingers, but she manages to somewhat regain her composure, saying 'I... I - *moan* - I'm taken, you - ooh - can't have me.' Winding herself out of his grasp, she rushes away and throws her arms around you in a tight hug.";
		now Char-G of Elijah is "4";
		now NPCintCounter is turns;
	else if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1" or Char-H of Elijah is "2"):
		say "     As you come down into the bunker, you see Elijah lift the blanket of his bunk and scowl at what he finds below. He grabs your cute crab pet and dumps it on the concrete floor, growling 'Can't you keep your stupid critters in a pen somewhere?'";
		now Char-H of Elijah is "4";
		now NPCintCounter is turns;
	else if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1" or Char-J of Elijah is "2"):
		say "     While tending to some odds and ends, you see Elijah strut over to Honey and grab her. His hands run over the bee girl's body, fondling her pussy and tender abdomen. 'Mmm... I want to get at your honeypot, cutie,' he says with a lecherous grin. The bee girl squirms in his grip and smooshes the honeycomb she was snacking on into his face. She squirms out of his grip as he sputters angrily.";
		say "     'You're terrible. I'm sorry I ever felt sad that you got hurt,' she screams, tears in her eyes as she yells at him. She takes flight as he makes a grab for her, buzzing over to hide behind him, sobbing loudly.";
		say "     Elijah, meanwhile, is livid, growling about having to get this sticky gunk off his face and that he'll make her pay";
		if Candy is bunkered:
			say ". Candy giggles and puts up his hand, waving it in the air excitedly. 'Oh! Oh! Me-me-me! I'm a pro at licking up sticky sweet stuff,' the gay coon jokes. 'I'd be glad to help you out with that.'  As he sashays over, he gives Honey a wink to show he plans on distract the bad boy for her. From the bathroom where they end up, you can hear the loud cries of lustful pleasure as it sounds like Elijah's taking his frustration and excess libido out on the pink raccoon by being particularly rough with him.";
			now lastCandyfucked is turns - 2;
			now lastfuck of Elijah is turns - 2;
		else:
			say ". 'Get over here, you buzzing bitch. I'm gonna kick that sweet all of yours all across town,' he growls, storming forward. You keep between them and tell him to calm down and get cleaned up. He glares at you for a few moments, eyes flashing red with anger, but you stand your ground";
			if "water bottle" is listed in invent of bunker:
				say ". He turns and storms off, grabbing one of the spare bottles of water to use to clean himself up.";
				repeat with Q running from 1 to number of entries in invent of the bunker:
					if entry q of invent of the bunker is "water bottle":
						remove entry q from invent of the bunker;
						break;
			else if water bottle is owned:
				say ". He turns and storms off, but not before rummaging through your pack and grabbing one of the spare bottles of water to use to clean himself up.";
				decrease carried of water bottle by 1;
		now Char-J of Elijah is "4";
	now NPCintCounter is turns;
	say "[NPCintUpdate]";

Section 5 - Fucking Elijah

Instead of fucking the Elijah:
	[puts Seraphim as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Seraphim":
			now monster is y;
			break;
	if (hp of Elijah is 0): [in the chapel, losing him to the demons] [***]
		say "     The poor angel is hurt and chained up, with an unknown number of demons surely not too far away. Are you sure you want to do this right now?[line break]";
		if player consents:
			say "     The need for instant satisfaction of your urges wins out over the alarm bells your rational mind rings. You move over to the chained angel and pull the shreds of his tunic off his body, revealing his well-shaped and muscular physique to your lustful gaze. He's quite well equipped, the manhood dangling between his legs respectably long without even being hard. You can't wait to see how big it'll get, so you step up and start rubbing your [bodytype of player] body up against the angel, fondling his cock and balls.";
			say "     As enthralled as you have become, you don't even notice anything amiss until suddenly a long red tail snakes around your neck, choking you. An incubus and succubus step up beside you, grabbing your arms and pull you away from the chained angel. The incubus tightens his tail around your neck a bit more and says, 'Tztz - an uninvited guest wanting to grab some angel ass. That's OUR new plaything! But if you're here already, why don't you watch him lose his virginity.'";
			say "     You're pulled to the side of the chapel, making room for a whole group of incubi and succubi and a large demon brute who parade around the altar. They take the angel down, peel off his ripped tunic and try to shake him awake. The members of the mob lewdly fondle his body and cock, but don't have much luck getting either consciousness or arousal out of him. Switching to another tactic, a succubus grabs the dented silver chalice of the chapel from the ground and holds it up for her male brethren, becoming the center of a group of feverishly masturbating demons. Soon, the now cum-splattered succubus steps up to the angel, triumphantly raising the cup and pouring its contents into his mouth and over his body.";
			if girl is banned:
				say "     It works as intended - the angel's cock fills out and hardens almost instantly, inducing a satisfied moans and chuckles from the demon mob. The succubus throws the chalice aside and an incubus climbs onto the altar, waving over to the demon brute to bring the angel. As the incubus moves onto all fours, offering up his ass to receive some angel cock, the large demon brute impales their semi-conscious captive on his massive erection, then carries him over to the desecrated altar. With the help of many grabby hands, the angel's cock gets aligned with the incubus's asshole. Then the demon brute thrusts forward, moving the angel's hips too and sinking his virgin manhood into the damning embrace of his dark hole. Lustful moans and roars get louder and louder as they start fucking hard and deep with their angel cock-sleeve between them. The demon mob closes in around the altar area, jostling for better positions.";
			else:
				say "     It works as intended - the angel's cock fills out and hardens almost instantly, inducing a satisfied moans and chuckles from the demon mob. The succubus throws the chalice aside and moves over to sit on the altar, waving over to the demon brute to bring the angel. As she leans back and spreads her legs eagerly to receive some angel cock, the large demon brute impales their semi-conscious captive on his massive erection, then carries him over to her. With the help of many grabby hands, the angel's cock gets aligned with the succubus's cunt. Then the demon brute thrusts forward, moving the angel's hips too and sinking his virgin manhood into the damning embrace of her folds. Lustful moans and roars get louder and louder as they start fucking hard and deep with their angel cock-sleeve between them. The demon mob closes in around the altar area, jostling for better positions.";
			say "     The two demons holding you look almost spellbound at the action around the altar, then suddenly realize they're still holding you and not taking part themselves. You're quickly and unceremoniously dumped outside the chapel, its doors slammed shut behind you as the demons rush to join the orgy.";
			LineBreak;
			say "     You don't think you'll see that angel ever again after this, as the demons are very likely gonna take him home to hell with them, to use and abuse for all eternity.";
			now hp of Elijah is 100;
			remove Elijah from play;
			move player to Entrance to the Red Light District;
		else:
			say "     You manage to get your feral impulses under control. Now that you're a bit more rational again, you can't think of a worse time or place to try to get it on with an angel.";
	else if (hp of Elijah is 1) or (hp of Elijah is 2): [unconscious on the bunk, transform into Evil Elijah]
		if bodyname of player is not listed in the infections of hellspawn and bodyname of player is not "Hellhound":
			[if the player isn't a demon, he's not corrupt enough]
			say "     Looking down over the angel on his bunk, you decide you'd rather let him rest for now. He's strikingly handsome and wakes lust in you from just looking at him, but only the most wicked creatures would take advantage of this helpless and injured person who isn't even conscious most of the time.";
		else:
			say "     Handsome? Check. Virgin? Most definitively. Conscious? Who the hell cares...";
			say "     The remains of your human morality throw up a last despairing wail of protest. Do you want to silence those voices and just continue?[line break]";
			if player consents:
				say "     You pull the blanket off the angel's bunk, revealing his naked and very inviting body to your lewd gaze.";
				if (cocks of player > 0) and (cunts of player > 0): [herms may choose]
					say "     Which part of your versatile sex do you want to use to deflower your little angel? (Y for cock, N for pussy)[line break]";
					if the player consents:
						say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. Then you climb up on the cot yourself, spreading his legs and holding them up as you move your hips forward. Soon, the head of your [cock of player] cock is rubbing against the silky smooth cheeks of his ass, making you groan in anticipation.";
						say "     Aiming your hard rod at the angel's pucker with one hand, you push forward, slowly increasing your pressure until the cockhead pops into virgin territory. Sliding into him gives you a truly heavenly feeling, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, he starts moaning silently in his sleep, gasping when you drive in the last few inches and your balls touch his buns.";
						say "     You start pumping in and out of your defenseless partner, delighted how each movement makes him gasp and moan, and run a hand over a tightly muscled chest down to his slowly hardening cock. Giving the angel's balls a playful squeeze, you then grab his cock, pumping up and down on its shaft in rhythm with your own thrusts.";
						say "     He must never have felt something like this before, as all too soon, a shiver runs through the angel's body and long streaks of white cum blast from his perfect cock so splat down on his chest. The spasms of his insides with each shot grip your shaft tight as a vice, driving you over the edge in short order too and you deposit spurt after spurt of demonic cum deep inside your little angel.";
						WaitLineBreak;
						say "     You sink down exhaustedly, your cock still inside the angel, and rest your head on his sticky chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demon seed takes root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
						say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
						now hp of Elijah is 99;
					else:
						say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. You proceed to stroke him, your hands gliding over his smooth skin and tracing the outlines of well-defines muscles. As you reach the angel's crotch, you give his balls a playful squeeze, then grab his cock and start pumping you hand up and down its shaft. It quickly fills out and hardens, growing enough that you can put a second hand on it.";
						say "     When his manhood is good and ready, standing proudly erect like a flagpole, you climb up on the bunk yourself. At first you rub the head of his perfect shaft slowly over the lips of your cunt, but then your need to get him inside the dripping and ready cave quickly overwhelms your restraint. Guiding his cock with one hand, you lower yourself down onto it, panting and moaning as it slides into your body. As you sink in deeper and deeper, the angel starts groaning silently in his sleep, gasping when you take him all the way and your hips touch his balls.";
						say "     You start moving up and down on the shaft of your defenseless partner, delighted how each movement makes him gasp and moan, and run your hands over his tightly muscled chest. The feelings his cock wakes in you are just heavenly, rubbing against all the right spots. You could go on like this forever, your mind in a pleasant buzz of lust and satisfaction.";
						say "     Sadly, he must never have felt something like your pussy before, as all too soon, a shiver runs through the angel's body and long streaks of fertile seed blast upwards into your womb. As you feel his cock pulse and the cum fill you up, your body replies in kind, secreting a large amount of demonically infused female juices.[impregchance]";
						WaitLineBreak;
						say "     You sink down exhaustedly, his cock still deep inside your body slowly pulsing with its last spurts, and rest your head on his sweaty chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demonic juices seep into his cock from all sides and take root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
						say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
						now hp of Elijah is 99;
				else if (cocks of player > 0): [male]
					say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. Then you climb up on the cot yourself, spreading his legs and holding them up as you move your hips forward. Soon, the head of your [cock of player] cock is rubbing against the silky smooth cheeks of his ass, making you groan in anticipation.";
					say "     Aiming your hard rod at the angel's pucker with one hand, you push forward, slowly increasing your pressure until the cockhead pops into virgin territory. Sliding into him gives you a truly heavenly feeling, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, he starts moaning silently in his sleep, gasping when you drive in the last few inches and your balls touch his buns.";
					say "     You start pumping in and out of your defenseless partner, delighted how each movement makes him gasp and moan, and run a hand over a tightly muscled chest down to his slowly hardening cock. Giving the angel's balls a playful squeeze, you then grab his cock, pumping up and down on its shaft in rhythm with your own thrusts.";
					say "     He must never have felt something like this before, as all too soon, a shiver runs through the angel's body and long streaks of white cum blast from his perfect cock so splat down on his chest. The spasms of his insides with each shot grip your shaft tight as a vice, driving you over the edge in short order too and you deposit spurt after spurt of demonic cum deep inside your little angel.";
					WaitLineBreak;
					say "     You sink down exhaustedly, your cock still inside the angel, and rest your head on his sticky chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demon seed takes root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
					say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
					now hp of Elijah is 99;
				else if (cunts of player > 0): [female]
					say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. You proceed to stroke him, your hands gliding over his smooth skin and tracing the outlines of well-defines muscles. As you reach the angel's crotch, you give his balls a playful squeeze, then grab his cock and start pumping you hand up and down its shaft. It quickly fills out and hardens, growing enough that you can put a second hand on it.";
					say "     When his manhood is good and ready, standing proudly erect like a flagpole, you climb up on the bunk yourself. At first you rub the head of his perfect shaft slowly over the lips of your cunt, but then your need to get him inside the dripping and ready cave quickly overwhelms your restraint. Guiding his cock with one hand, you lower yourself down onto it, panting and moaning as it slides into your body. As you sink in deeper and deeper, the angel starts groaning silently in his sleep, gasping when you take him all the way and your hips touch his balls.";
					say "     You start moving up and down on the shaft of your defenseless partner, delighted how each movement makes him gasp and moan, and run your hands over his tightly muscled chest. The feelings his cock wakes in you are just heavenly, rubbing against all the right spots. You could go on like this forever, your mind in a pleasant buzz of lust and satisfaction.";
					say "     Sadly, he must never have felt something like your pussy before, as all too soon, a shiver runs through the angel's body and long streaks of fertile seed blast upwards into your womb. As you feel his cock pulse and the cum fill you up, your body replies in kind, secreting a large amount of demonically infused female juices.[impregchance]";
					WaitLineBreak;
					say "     You sink down exhaustedly, his cock still deep inside your body slowly pulsing with its last spurts, and rest your head on his sweaty chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demonic juices seep into his cock from all sides and take root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
					say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
					now hp of Elijah is 99;
				else: [neuter]
					say "     While you might be morally ready to do this, your distinct lack of demonic genitalia prevents you from acting out your impulses. Grow a cock or a pussy and try it again.";
				decrease humanity of player by 25;
				now the icon of Elijah is Figure of Elijah_evil_icon;
				now lastfuck of Elijah is turns;
				now hp of Gabriel is 1;
				now Angel vs Demons is not resolved;
			else if lastfuck of Elijah is not 400:
				say "     Your moral compass cheers as you step back from the precipice of damnation, grounding your mind a bit more on the human level.";
				now lastfuck of Elijah is 400; [using to mark resisting this impulse]
				if humanity of player < 95, increase humanity of player by 5;
			else:
				say "     You once again resist the dark impulse and decide you should focus more on helping him.";
	else if (hp of Elijah is 3): [de-virgin-ify him nice and slowly]
		if bodyname of player is listed in the infections of hellspawn or bodyname of player is "Hellhound":
			say "     As you approach Elijah and try to touch him, he flinches back from you, saying 'I feel that evil has corrupted you. You saved me, so let me now return the favor.' He catches your arm in an iron grip, visibly straining himself until a golden glow starts forming around his hand and flows into you. You feel strange, but better - a sense of oppression lifting from your soul as your body suddenly shifts.";
			say "[de-demonify]";
		else:
			say "     Do you want to explain the birds and the bees to Elijah and show him what to do with his new equipment?[line break]";
			if player consents:
				say "     You pull Elijah aside in a quiet moment and give him a much-needed explanation of what the appendage between his legs is actually for. His eyes get wider and wider the more you tell him. After you've gone over the basics, he hesitantly says, 'I-I had no idea. My kind wasn't meant for... that. But I'm no longer just an angel, am I? Will - will you - do you want to - ...show me how to be human?'";
				say "     You smile at Elijah and stroke his cheek, then pull him in for a kiss, in which he eagerly participates after a moment's hesitation. As you explore his mouth with your tongue, you slide a hand down the front of his tunic, stroking is the growing bulge at his crotch through the white fabric. Elijah closes his eyes and moans softly, reveling in the new sensations running through his body. You fondle him a few minutes, then stop and bring your hands to the fastenings of his tunic and undo them.";
				say "     The white fabric glides off your angel almost like water, revealing his youthful, perfectly proportioned body. You run your hands over his smooth skin, stroking and tickling him, making him giggle. Then you slowly lick over his chest, moving on to his nipples and playfully suck on them. Elijah moans, pulling you up to his head again, this time being the one to initiate a deep and long-lasting kiss. He's learning fast.";
				say "     Time to go on the offensive again - you reach down and grab hold of his impressively long manhood, then start to slowly stroke up and down on it. Elijah moans and pants as you jerk his cock, almost completely oblivious to everything around him as a powerful new feeling boils up inside him. Suddenly you feel his shaft pulse in your hand as he comes, burst after burst of his seed shooting out of it in high arcs.";
				LineBreak;
				say "     That ended a bit sudden, but hey - it's his first time. And from the looks of it you've gotten a very enthusiastic Elijah out of it. When he's got his body under control again, he gives you a deep kiss, saying 'I'm really looking forward to more 'human lessons' with you.'";
				now hp of Elijah is 4;
				now the icon of Elijah is Figure of Elijah_good_icon;
				now lastfuck of Elijah is turns;
	else if (hp of Elijah is 4): [good repeats]
		if bodyname of player is listed in the infections of hellspawn or bodyname of player is "Hellhound":
			say "     Elijah smiles at you as you approach him, eager to get another lesson in how to 'be human'. Then suddenly, his expression shifts when you reach out for him and he shies away from your touch. Elijah says, 'What happened to you? You feel... wrong. Evil almost. I'm sorry my friend, but I can't be close to you like that.' and hurries out of the room.";
		else:
			if (lastfuck of Elijah - turns < 6):
				say "     Maybe you should let Elijah rest a bit more first. You don't want to wear him out too much, he's still recovering from his ordeal at the demon's hands (and claws).";
			else:
				say "[ElijahSexMenu]";
				now lastfuck of Elijah is turns;
	else if (hp of Elijah is 99): [evil repeats]
		if (lastfuck of Elijah - turns < 6):
			say "     Elijah disinterestedly waves you off and keeps lounging around on his bunk as you proposition him. 'I'm not your pet - go grab yourself a husky or some other critter from the streets to fuck.'";
		else:
			say "[ElijahSexMenu]";
			now lastfuck of Elijah is turns;

to say ElijahSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Suck Elijah's cock";
	now sortorder entry is 1;
	now description entry is "Taste some heavenly seed";
	choose a blank row in table of fucking options;
	if (cunts of player > 0):
		now title entry is "Let Elijah fuck you";
	else:
		now title entry is "Let Elijah ass-fuck you";
	now sortorder entry is 4;
	now description entry is "Ride Elijah's angel cock";
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow you";
		now sortorder entry is 2;
		now description entry is "Put your angel's mouth to good use";
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Elijah's ass";
		now sortorder entry is 3;
		now description entry is "Fill the angel's ass with your cock";
	if (cocks of player > 0) and (Char-C of Elijah is "3") and hp of Sven >= 8 and hp of Sven < 30:
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Sven";
		now sortorder entry is 5;
		now description entry is "Share Sven's mouth and ass with Elijah";
	if (cunts of player > 0) and (Char-C of Elijah is "3") and hp of Sven >= 8 and hp of Sven < 30:
		choose a blank row in table of fucking options;
		now title entry is "Have sex with Elijah and Sven";
		now sortorder entry is 6;
		now description entry is "Have Elijah and Sven fuck your pussy";
[	***triggers for scenes w/confident Sven.]
	if (cocks of player > 0) and ((Char-D of Elijah is "2") or (Char-D of Elijah is "4")) and Felinoid companion is tamed:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Elijah and the Felinoid";
		now sortorder entry is 7;
		now description entry is "Take two hot creature's asses.";
	if (cunts of player > 0) and ((Char-D of Elijah is "2") or (Char-D of Elijah is "4")) and Felinoid companion is tamed:
		choose a blank row in table of fucking options;
		now title entry is "Have Elijah and the Felinoid fuck you";
		now sortorder entry is 8;
		now description entry is "Take two males in your pussy.";
	if (cocks of player > 0) and ((Char-A of Elijah is "3") or (Char-A of Elijah is "4")) and (Candy is in bunker):
		choose a blank row in table of fucking options;
		now title entry is "Fuck Elijah as he takes Candy's ass";
		now sortorder entry is 9;
		now description entry is "Have some fun with your coon and angel friends.";
	if (cunts of player > 0) and ((Char-A of Elijah is "3") or (Char-A of Elijah is "4")) and (Candy is in bunker):
		choose a blank row in table of fucking options;
		now title entry is "Take Elijah's cock as Candy fucks him";
		now sortorder entry is 10;
		now description entry is "Elijah fucks your pussy while Candy fucks his ass";
	if (( Char-I of Elijah is "3") or (Char-I of Elijah is "4")) and Fang is booked:
		if ( hp of Fang is 3 or hp of Fang is 4 ) and "Submissive" is listed in feats of player: [Alpha Fang + Submissive feat]
			choose a blank row in table of fucking options;
			if cunts of player >= 2:
				now title entry is "Get fucked by both Elijah and Fang at once";
				now sortorder entry is 11;
				now description entry is "Having more than one cunt, both Elijah and Fang can get one";
			else:
				now title entry is "Double-penetration by Elijah and Fang";
				now sortorder entry is 12;
				now description entry is "Elijah and Fang stuff your [if cunts of player > 0]cunt[else]ass[end if] at the same time";
	if (hp of Elijah is 99 and thirst of Elijah > 0 and "Submissive" is listed in feats of player):
		choose a blank row in table of fucking options;
		now title entry is "Submit to bondage by Elijah";
		now sortorder entry is 13;
		now description entry is "Have another bit of fun time in Elijah's sex nest";
	if (hp of Elijah is 99 and thirst of Elijah > 0 and "Submissive" is listed in feats of player):
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Elijah and Zephias the spidertaur";
		now sortorder entry is 14;
		now description entry is "Have another bit of fun time in Elijah's sex nest";
	if (hp of Elijah is 99 and thirst of Elijah > 0 and thirst of Elijah < 50 and cocks of player > 0 and DemonBruteStatus < 2 and "Submissive" is listed in feats of player and demon brute is tamed):
		choose a blank row in table of fucking options;
		now title entry is "Let Elijah dominate Brutus and you";
		now sortorder entry is 15;
		now description entry is "Get fucked by Brutus while Elijah rides his ass";
	if (hp of Elijah is 99 and thirst of Elijah is 50 and cocks of player > 0 and DemonBruteStatus < 2 and "Submissive" is listed in feats of player and demon brute is tamed):
		choose a blank row in table of fucking options;
		now title entry is "Make Brutus fuck Elijah";
		now sortorder entry is 15;
		now description entry is "Spitroast Elijah between Brutus and you";
	sort the table of fucking options in sortorder order;
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if (nam is "Suck Elijah's cock"):
					say "[ElijahSex1]";
				else if (nam is "Have him blow you"):
					say "[ElijahSex2]";
				else if (nam is "Let Elijah fuck you") or (nam is "Let Elijah ass-fuck you"):
					say "[ElijahSex3]";
				else if (nam is "Take Elijah's ass"):
					say "[ElijahSex4]";
				else if (nam is "Threesome with Sven"):
					say "[ElijahSex5]";
				else if (nam is "Have sex with Elijah and Sven"):
					say "[ElijahSex6]";
				else if (nam is "Fuck Elijah and the Felinoid"):
					say "[ElijahSex7]";
				else if (nam is "Have Elijah and the Felinoid fuck you"):
					say "[ElijahSex8]";
				else if (nam is "Fuck Elijah as he takes Candy's ass"):
					say "[ElijahSex9]";
				else if (nam is "Take Elijah's cock as Candy fucks him"):
					say "[ElijahSex10]";
				else if (nam is "Get fucked by both Elijah and Fang at once"):
					say "[ElijahSex11]";
				else if (nam is "Double-penetration by Elijah and Fang"):
					say "[ElijahSex12]";
				else if (nam is "Submit to bondage by Elijah"):
					say "[ElijahSex13]";
				else if (nam is "Threesome with Elijah and Zephias the spidertaur"):
					say "[ElijahSex14]";
				else if (nam is "Let Elijah dominate Brutus and you"):
					say "[ElijahSex15]";
				else if (nam is "Make Brutus fuck Elijah"):
					say "[ElijahSex16]";
				wait for any key;
				now lastfuck of Elijah is turns;
		else if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the angel, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ElijahSex1: [suck angel cock]
	if (hp of Elijah < 99): [good guy]
		say "     You decide to give your handsome angel a treat this time, putting your arms around his neck and giving him a quick kiss on the lips. Then you run your hands down over his hard, muscled chest, crouching down till your head is level with his crotch. Smiling up at him you undo the zipper of his jeans then pull them down off his legs, revealing Elijah in all his naked glory.";
		say "     Starting with a tentative lick over his balls, you run your tongue along the side of Elijah's long shaft, circling the head of his cock as you get to it. You stroke his dick with your hand a few times, then take its tip between your lips. Elijah moans as you slowly slide his manhood deeper into your mouth, running your tongue over its sensitive skin. Soon he hits the back of your mouth, but you take a deep breath and continue going. When your nose bumps into the skin under his navel, you have Elijah halfway down your throat and moaning about the feelings you're giving him.";
		say "     Pulling off his cock to get some air, you stroke his saliva-coated manhood some more, then start sucking him in earnest, pumping your lips up and down on his hard shaft. You keep him going for a while, bringing him to the brink of an orgasm several times, stopping each time to let him cool down a bit. Then finally you go all out, sucking on his cock hard and pumping it in and out of your throat. After you building up his arousal all this time, Elijah doesn't last much longer. A mind-blowing orgasm shakes his body, his cock pulsing as spurt after spurt of his seed shoot directly into your stomach.";
		LineBreak;
		say "     Satisfied with pleasing your angel friend, you stand up and give him another deep kiss, playfully exploring his mouth with your tongue.";
	else: [evil Elijah]
		say "     Elijah recognizes your lustful gaze playing over his crotch and steps close to you, then pushes you to your knees. Smiling down at you, he undoes the zipper of his leather pants, pushing them down off his legs and revealing Elijah in all his naked glory. His cock is already half hard and just waiting for you to service him.";
		say "     Starting with a tentative lick over his balls, you run your tongue along the side of Elijah's long shaft, circling the head of his cock as you get to it. You stroke his dick with your hand a few times, then take its tip between your lips. Elijah moans as you slowly slide his manhood deeper into your mouth, running your tongue over its sensitive skin. Soon he hits the back of your mouth and pushes on your head to encourage you to keep going. Taking a deep breath, you continue to slide more of his shaft past your lips. When your nose bumps into the skin under his navel, you have Elijah halfway down your throat and moaning about the sensations you're giving him.";
		say "     Pulling off his cock to get some air, you stroke his saliva-coated manhood some more, then start sucking him in earnest, pumping your lips up and down on his hard shaft. You keep him going for a while, bringing him to the brink of an orgasm several times, stopping each time to let him cool down a bit. Then finally you go all out, sucking on his cock hard and pumping it in and out of your throat. After you building up his arousal all this time, Elijah doesn't last much longer. A mind-blowing orgasm shakes his body, his cock pulsing as spurt after spurt of his seed shoot directly into your stomach.";
		LineBreak;
		say "     'Good job, cocksucker. You're better at this than most incubi.' Elijah says as he pulls out a bit, blasting the last shots of cum onto your tongue and giving you a taste of his seed.";

to say ElijahSex2: [cock sucked by Elijah]
	if (hp of Elijah < 99): [good guy]
		say "     You take off your clothing, then softly push Elijah to his knees in front of you. With your cock already half hard in anticipation it doesn't take him long to take its head into his mouth and start sucking, running his tongue over your shaft as he takes it in. Your sexy angel is a natural at cocksucking, making you pant and moan with his talented lips[if cock length of player > 7] and even managing to deep-throat your cock once or twice[end if].";
		say "     Although you'd wish Elijah would go on forever, all too soon your body tingles with an approaching orgasm. You slide out a bit until just the tip is inside Elijah's mouth, then blast your cum onto his tongue. Pulling the angel back to his feet, you then give him a deep kiss, sharing a taste of your seed as your tongue playfully fights with his.";
	else: [evil Elijah]
		say "     You take off your clothing, then push Elijah to his knees in front of you. With your cock already half hard in anticipation he gets right to work and starts sucking, running his tongue over your shaft as he takes it in. He's a natural at cocksucking, making you pant and moan with his talented lips[if cock length of player > 7] and effortlessly managing to deep-throat your cock once or twice[end if].";
		say "     Although you'd wish Elijah would go on forever, all too soon your body tingles with an approaching orgasm. You slide out a bit until just the tip is inside Elijah's mouth, then blast your cum onto his tongue. He just keeps on sucking, milking you for all you're able to give and swallowing it down greedily. With a satisfied grin, he pulls off, remarking how tasty your cum is.";

to say ElijahSex3: [fucked by Elijah - ass or pussy]
	if (hp of Elijah < 99): [good guy]
		say "     Preparing to give your angel something he won't forget anytime soon, you slip out of your clothing then walks slowly towards him, making sure to show off all of your naked [bodytype of player] body. You give Elijah a soft kiss on the lips, looking deep into his eyes as your hands move to undo the zipper of his pants. Then, taking hold of his hardening manhood you pull him towards the next bunk.";
		say "     Arriving at the bed you give him another longing kiss on the lips, then push softly against his chest, making him lie down on it. Putting a line of feather-light kisses down his chest, you work your way to his proudly standing erection, just barely touching it with your lips and making Elijah quiver in need. Then, you pull off his boots and slide down the jeans over his long legs until he's fully naked, lying there ready for you to take.";
		say "     Grasping his cock in one hand you start licking it, slowly pumping your hand up and down along its shaft, making it wet and slick with your saliva. With Elijah's moans getting louder with each run of your tongue over his dick and a first drop of precum forming on its head, you see it's time to get going.";
		WaitLineBreak;
		if cunts of player > 0:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it first against your pussy lips and then lowering yourself on it, sinking the embrace of your folds down over his shaft. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping your pussy up and down, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is fun, but you want Elijah to spread his wings a little (metaphorically). So after a while you lean down to him, kissing him deeply - then pull him up with you and lean backwards, further and further until you're on your back at the other end of the bed with him on top. Giving his tight ass a little squeeze, you whisper 'Fuck me.' to him and can almost feel him growing a bit more inside of you at being given the reins. Not wanting to disappoint, he starts thrusting deep and hard into you, using all kinds of tricks to make you gasp and moan in pleasure. It makes you wonder if he's found a copy of the Kama Sutra somewhere in the library or if he's just a natural.";
			say "     Elijah indulges your body's needs for a long time, keeping you in a pleasant lustful buzz, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your pussy as deep as he can and fills your womb with spurt after spurt of his fertile seed.[fimpregchance]";
			LineBreak;
			say "     Both rather out of breath you just lie there on the bunk for a while, then drift off to sleep, comforted by each other's presence.";
		else:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it between the buns of your ass and then lower yourself on it, your sphincter giving way to his cockhead after a bit of pressure. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping up and down on him, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is fun, but you want Elijah to spread his wings a little (metaphorically). So after a while you lean down to him, kissing him deeply - then pull him up with you and lean backwards, further and further until you're on your back at the other end of the bed with him on top. Giving his tight ass a little squeeze, you whisper 'Fuck me.' to him and can almost feel him growing a bit more inside of you at being given the reins. Not wanting to disappoint, he starts thrusting deep and hard into you, using all kinds of tricks to make you gasp and moan in pleasure. It makes you wonder if he's found a copy of the Kama Sutra somewhere in the library or if he's just a natural.";
			say "     Elijah indulges your body's needs for a long time, pausing when you're about to come, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your ass as deep as he can and starts shooting spurt after spurt of his fertile seed. As close as you're to the edge yourself, the pulsing of his hard shaft inside you is enough to make you come too, shooting cum all over yourself, one shot even hitting your own chin.[mimpregchance]";
			LineBreak;
			say "     Both rather out of breath you just lie there on the bunk for a while, then drift off to sleep, comforted by each other's presence.";
	else: [evil Elijah]
		say "     Preparing to give your angel something he won't forget anytime soon, you strip out of your clothing right in front of Elijah, giving him quite a nice show. He can't control himself, stepping close to fondle your [bodytype of player] body during your strip-show. When you're fully naked, you open the zipper of his by then bulging pants, grabbing hold of his hard cock and leading him by it towards the next bunk.";
		say "     Arriving at the bed you push softly against his chest, making him lie down on it. Putting a line of feather-light kisses down his chest, you work your way to his proudly standing erection, just barely touching it with your lips and making Elijah quiver in need. Then, you pull off his boots and slide down the jeans over his long legs until he's fully naked, lying there ready for you to take.";
		say "     Grasping his cock in one hand you start licking it, slowly pumping your hand up and down along its shaft, making it wet and slick with your saliva. With Elijah's moans getting louder with each run of your tongue over his dick and a first drop of precum forming on its head, you see it's time to get going.";
		WaitLineBreak;
		if the player is submissive and a random chance of 2 in 5 succeeds:
			if cunts of player > 0:
				say "     As you're about to climb onto the bed with him, he grabs you roughly at the wrist and side, flipping you over so you land face down on his bunk. 'Ah ah ah, my horny friend. I'm taking the top this time,' he whispers in your ear as he grinds his cock against your ass. 'I'm going to enjoy giving you the hard pounding that I know you crave, you horny slut,' he adds, letting his hands wander across your rear and between your legs to tease at your wet folds. In the mood to fuck, he doesn't waste any time playing around with you and instead pushes a pair of fingers into your dripping pussy and pulls, forcing you to raise your ass end as an offering to the once-divine being that now treats you so roughly. And, excited by your submissive urges, you revel in it.";
				say "     Chuckling, he gets his cock into position and thrusts into you hard and fast, causing you to moan loudly. You grind back against his rod as he gives your ass a hard swat. 'Mmm... such a slut,' he laughs before starting to thrust and pound away at you. Your hips quiver and your juices run down your legs as that divine cock pounds away at you. He doesn't put much effort into pleasing you, instead going for a good, hard pounding of your needy hole, and that's just fine with you. You grow increasingly excited just by having the confident angel using you for his own satisfaction. By the time he's finally through with you, you both have up come several times and your cunt is delightfully sore and dripping with angelic semen[if anallevel is 3], as is your asshole[end if].";
				say "     After pulling out, he pushes you off his bunk so he can stretch back out, just letting you roll off onto the floor. Your land onto a pile of his dirty clothes, as if you're another of his discarded things - dirty, cum-stained and smelling of him like the rest of it. You moan softly and settle onto the pile to rest and recover, such thoughts pleasing to you as you wallow in your submissive urges.[impregchance]";
			else:
				say "     As you're about to climb onto the bed with him, he grabs you roughly at the wrist and side, flipping you over so you land face down on his bunk. 'Ah ah ah, my horny friend. I'm taking the top this time,' he whispers in your ear as he grinds his cock against your ass. 'I'm going to enjoy giving you the hard pounding that I know you crave, you horny slut,' he adds, letting his hands wander across your rear and between your cheeks to tease at your crinkled hole. In the mood to fuck, he doesn't waste any time playing around with you and instead quickly lubes up your asshole with a pair of fingers before driving them deep into you and pulling you up, forcing you to raise your ass end as an offering to the once-divine being that now treats you so roughly. And, excited by your submissive urges, you revel in it.";
				say "     Chuckling, he gets his cock into position and thrusts into you hard and fast, causing you to moan loudly. You grind back against his rod as he gives your ass a hard swat. 'Mmm... such a slut,' he laughs before starting to thrust and pound away at you. Your hips quiver and clenches down around that divine rod pounding away at you. He doesn't put much effort into pleasing you, instead going for a good, hard pounding of your needy hole, and that's just fine with you. You grow increasingly excited just by having the confident angel using you for his own satisfaction. By the time he's finally through with you, you both have up come several times and your ass is delightfully sore and dripping with angelic semen.";
				say "     After pulling out, he pushes you off his bunk so he can stretch back out, just letting you roll off onto the floor. Your land onto a pile of his dirty clothes, as if you're another of his discarded things - dirty, cum-stained and smelling of him like the rest of it. You moan softly and settle onto the pile to rest and recover, such thoughts pleasing to you as you wallow in your submissive urges.[impregchance]";
		else if cunts of player > 0:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it first against your pussy lips and then lowering yourself on it, sinking the embrace of your folds down over his shaft. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping your pussy up and down, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is lots of fun, but Elijah seems to prefer a more dominant role. So after a while with you on top, he pulls you down for a hot kiss - then grabs you tightly, turning the two of you around so your back is on the mattress now. You can almost feel him growing a bit more inside of you when he takes over, thrusting forcefully into your body. You're overwhelmed, reduced to gasping and moaning in pleasure as he starts using all kinds of tricks, stroking your body in just the right spots while his cock finds pleasure zones you didn't even know you had. Must be something he learned from all those incubi and succubi he picks up out in the city.";
			say "     Elijah indulges his lusts with your body for a long time, keeping you in a pleasant lustful buzz, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your pussy as deep as he can and fills your womb with spurt after spurt of his fertile seed.[fimpregchance]";
			LineBreak;
			say "     After resting with you on the bunk for a moment, Elijah pulls out with a plop. He says, 'Nice pussy, can't wait for the next time.', then saunters off to the bathroom to clean himself up.";
		else:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it between the buns of your ass and then lower yourself on it, your sphincter giving way to his cockhead after a bit of pressure. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping up and down on him, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is lots of fun, but Elijah seems to prefer a more dominant role. So after a while with you on top, he pulls you down for a hot kiss - then grabs you tightly, turning the two of you around so your back is on the mattress now. You can almost feel him growing a bit more inside of you when he takes over, thrusting forcefully into your body. You're overwhelmed, reduced to gasping and moaning in pleasure as he starts using all kinds of tricks, stroking your body in just the right spots while his cock finds pleasure zones you didn't even know you had. Must be something he learned from all those incubi and succubi he picks up out in the city.";
			say "     Elijah indulges his lusts with your body for a long time, keeping you in a pleasant lustful buzz, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your ass as deep as he can and starts shooting spurt after spurt of his fertile seed. As close as you're to the edge yourself, the pulsing of his hard shaft inside you is enough to make you come too, shooting cum all over yourself, one shot even hitting your own chin.[mimpregchance]";
			LineBreak;
			say "     After resting with you on the bunk for a moment, Elijah pulls out with a plop. He says, 'Nice tight ass, can't wait for the next time.', then saunters off to the bathroom to clean himself up.";

to say ElijahSex4: [assfuck Elijah]
	if (hp of Elijah < 99): [good guy]
		say "     You take Elijah to his bunk bed and strip him naked, then instruct him to get on it on all fours. With such a handsome man smiling at you, just waiting for you to take him your cock springs to full hardness almost instantly. You rapidly strip your clothes off, flinging them away aimlessly and climb on the bunk behind Elijah.";
		say "     He wiggles his perfectly rounded ass at you invitingly, making you grab him eagerly and stroke the smooth skin of his buns with both hands. You move forward a bit, sliding your cock up and down the crack between his cheeks, then aim its head at his tight pucker. Pushing forward, you pop into him and slide into Elijah's ass, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, Elijah starts moaning with lust, gasping when you drive in the last few inches and your balls touch his buns.";
		WaitLineBreak;
		say "     Resting there for a moment, you lean forward and press a kiss on the middle of his back, and another further up between his wings. Then you start pumping in and out of your ready partner, delighted how each movement makes him gasp and moan. You reach around his body with one hand, running it over his muscled chest down to his fully erect cock. Giving the angel's balls a slight squeeze, you then grab his cock and pump up and down on his shaft in rhythm with your own thrusts.";
		say "     Pumping in and out of Elijah's ass like a horny bunny, the both of you fill the bunker's halls with lustful moans and shouts. After an exhausting but immensely satisfying time fucking each other, you hold on to the angel's wings as you do your last few deep thrusts into his ass and start blasting your cum into his insides. Your body shakes as jet after jet of your seed pulse through your cock, painting Elijah's insides and claiming him as yours.";
		say "     You sink down exhaustedly, your cock still inside Elijah, and rest your head on his sweaty back. Then, not to leave your amazing partner hanging, you slide your hand under his body and stroke his cock. As wound up as he is, your touch makes him cum almost immediately, moaning your name as he shoots his load onto the mattress.";
		LineBreak;
		say "     With both of you worn out and happy, you lie down on the less sticky sheets of the next bunk in line, just holding each other and soon drift off to sleep.";
	else: [evil Elijah]
		say "     You take Elijah to his bunk bed and strip him naked, then instruct him to get on it on all fours. He eagerly complies, taking the position and wiggling his ass at you lasciviously. With him pulling his cheeks apart and urging you to ride his ass, your cock springs to full hardness almost instantly. You rapidly strip your clothes off, flinging them away aimlessly and climb on the bunk behind Elijah.";
		say "     He wiggles his perfectly rounded ass at you, making you give him a playful slap on one cheek and stroke the smooth skin of his buns with both hands. You move forward a bit, sliding your cock up and down the crack between his cheeks, then aim its head at his tight pucker. Pushing forward, you pop into him and slide into Elijah's ass, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, Elijah starts moaning with lust, gasping when you drive in the last few inches and your balls touch his buns.";
		WaitLineBreak;
		say "     Resting there for a moment, you lean forward and press a kiss on the middle of his back, and another further up between his wings. Then you start pumping in and out of your ready partner, delighted how each movement makes him gasp and moan. You reach around his body with one hand, running it over his muscled chest down to his fully erect cock. Giving the angel's balls a tight squeeze, you then grab his cock and pump up and down on his shaft in rhythm with your own thrusts.";
		say "     Pumping in and out of Elijah's ass like a horny bunny, the both of you fill the bunker's halls with lustful moans and shouts. After an exhausting but immensely satisfying time fucking each other, you hold on to the angel's wings as you do your last few deep thrusts into his ass and start blasting your cum into his insides. Your body shakes as jet after jet of your seed pulse through your cock, painting Elijah's insides and claiming him as yours.";
		say "     You sink down exhaustedly, your cock still inside Elijah, and rest your head on his sweaty back. Then, not to leave your horny partner hanging, you slide your hand under his body and stroke his cock. As wound up as he is, your touch makes him cum almost immediately, grunting in satisfaction as he shoots his load onto the mattress.";
		LineBreak;
		say "     After catching his breath, Elijah says 'That was quite a fuck. Let's do it again soon.', then walks over to the bathroom to clean himself up.";

to say ElijahSex5: [assfuck Elijah + Sven]
	if (hp of Elijah < 99): [good guy]
		say "     You decide to have some fun with both Elijah and Sven, so you call them over to your bunk and tell your snowmeow pet to get on it. Sven already sees what's coming, licking his muzzle and flirting his tail as he readily complies. You guide Elijah to one side of the bunk, sliding your hand into his tight jeans to fondle his cock a bit, then unzip them as his growing bulge starts to strain against the material. With a hard and ready angelic cock presented at just the right height, Sven only has to lean forward a bit to start licking and sucking on it...";
		say "     After watching Sven blowing Elijah's cock for a moment, you step over to the other side of the bunk where Sven's tight asshole is just waiting for some attention. Pulling your own hard cock out, you stroke it and rub it against Sven's soft furry buns. Spreading the precum drooling from its tip along its length to make it a bit more slippery, you push against Sven's tight pucker and slowly sink yourself into his body as it allows you access. You hold still for a moment as you bottom out, running your hands through the warm fur of Sven's buns, then grab hold of his hips and start thrusting in and out of his body.";
		say "     Seeing your willing snowmeow pet suck on your friend's cock while you're fucking him gives the whole experience a whole new level of excellence in your mind. You grin over at Elijah as he moans deeply when Sven sucks on his cock, then return your full attention back to Sven, pulling almost all the way out and thrusting back in in quick fluid motions. Since you don't want this to be over too fast, a while later you stop yourself from hammering into your furry pet and pull out of Sven's tight behind, then wave Elijah to come over to your side of the bunk. Grabbing his rock-hard cock in one hand, you give him a quick kiss, then align it with Sven's asshole and give Elijah's ass a soft push until he's sinking his cock into the snowmeow. Moving to Sven's head yourself, you present him with your hard cock, which he expertly starts to lick and suck.";
		WaitLineBreak;
		say "     As you spit-roast Sven with one cock in his ass and one in his mouth, you soon hear Sven groan around your shaft in his muzzle and feel his body shudder as he sprays his cum onto the bunk. Your own orgasm doesn't feel too far off either, so before your restraint is overwhelmed, you decide on a certain place to spend your seed and pull out of Sven's mouth. Then you move over to the other side again, hugging Elijah from behind and rubbing your cock against his ass. He eagerly bends forward, readying himself for your entrance. You thrust deep inside his tight ass, gasping at the feelings of need and lust coming over you from the tightness and warmth around your cock. And Elijah seems to be quite aroused by being taken from behind while fucking, as it doesn't take much longer until you hear him moan as he fills Sven with his seed. His spasming anal muscles around your cock take you over the edge with him, making you shoot spurt after spurt of your seed into his ass.";
		LineBreak;
		say "     With your bunk being rather sticky from Sven cumming all over it while being fucked, you pull some blankets from several others nearby and throw them on the floor to make a comfy pile, then lie down on them with your two partners and cuddle a bit.";
	else: [evil Elijah]
		say "     You decide to have some fun with both Elijah and Sven, so you call them over to your bunk and motion for your snowmeow pet to get on it. Sven already sees what's coming, licking his muzzle and flirting his tail as he readily complies. Elijah's quick on the uptake too - he almost instantly slides his tight leather pants down and presents his hard cock to Sven. With a hard and ready angelic cock presented at just the right height, Sven only has to lean forward a bit to start licking and sucking on it...";
		say "     After watching Sven blowing Elijah's cock for a moment, you step over to the other side of the bunk where Sven's tight asshole is just waiting for some attention. Pulling your own hard cock out, you stroke it a bit and rub it against Sven's soft furry buns. Spreading the precum drooling from its tip along its length to make it a bit more slippery, you push against Sven's tight pucker and slowly sink yourself into his body as it allows you access. You hold still for a moment as you bottom out, running your hands through the warm fur of Sven's buns, then grab hold of his hips and start thrusting in and out of his body.";
		say "     Seeing your willing snowmeow pet suck on your friend's cock while you're fucking him gives the whole experience a whole new level of excellence in your mind. You grin over at Elijah as he moans deeply when Sven sucks on his cock, then return your full attention back to Sven, pulling almost all the way out and thrusting back in in quick fluid motions. Since you don't want this to be over too fast, you soon stop yourself from hammering into your furry pet and pull out of Sven's tight behind, then wave Elijah to come over to your side of the bunk. Grabbing his rock-hard cock in one hand, you give him a quick kiss, then align it with Sven's asshole and give Elijah's ass a soft push until he's sinking his cock into the snowmeow. Moving to Sven's head yourself, you present him with your hard cock, which he expertly starts to lick and suck.";
		WaitLineBreak;
		say "     As you spit-roast Sven with one cock in his ass and one in his mouth, you soon hear Sven groan around your shaft in his muzzle and feel his body shudder as he sprays his cum onto the bunk. Your own orgasm doesn't feel too far off either, so before your restraint is overwhelmed, you decide on a certain place to spend your seed and pull out of Sven's mouth. Then you move over to the other side again, pushing against Elijah's back to make him bend over and rubbing your cock against his ass. He eagerly bends forward, readying himself for your entrance. You thrust deep inside his tight ass, gasping at the feelings of need and lust coming over you from the tightness and warmth around your cock. And Elijah seems to be quite aroused by being taken from behind while fucking, as it doesn't take much longer until you hear him moan as he fills Sven with his seed. His spasming anal muscles around your cock take you over the edge with him, making you shoot spurt after spurt of your seed into his ass.";
		LineBreak;
		say "     With his needs satisfied, Elijah pulls out and gives Sven's ass a last quick squeeze, then walks off towards the bathroom. You're left with a rather sticky bunk from Sven cumming all over it while being fucked so you pull some blankets from several others nearby and throw them on the floor to make a comfy pile. Then you lie down on them and cuddle a bit with Sven.";

to say ElijahSex6: [Take Elijah and Sven in your pussy]
	if (hp of Elijah < 99): [good guy]
		say "     Feeling a bit adventurous, you strip completely naked and lie on your bunk, then call over Sven and Elijah. As they come to stand before you, eyes roaming over your bare [bodytype of player] body, their arousal quickly mounts up, with Sven's cock filling out in plain view while Elijah shows a growing bulge in his jeans. You smile at your eager boys, then order Sven to strip Elijah and give him a blowjob. As your faithful sexpet opens up the button and zipper and gets to work on Elijah's revealed manhood, you move a hand down to your pussy, stroking its lips and pushing two fingers inside.";
		say "     You watch for a while as Sven licks and sucks Elijah's cock, causing your handsome angel to moan in lust. Then you decide it's about time to put his angelic spear to some use yourself and tell them to come over to you. Sven pulls off Elijah's boots and helps him step out of his pants, then follows him to the side of your bunk. You open your legs, fingers spreading open the wet lips of your cunt and moan 'Fuck me, Elijah.'";
		WaitLineBreak;
		say "     He readily complies, aligning his long shaft with your pussy, then sinks himself deep into your folds and starts to thrust in and out. Sven seems to be content just watching your coupling, but you decide to give your pet a treat and reach out for his dick. You stroke your snowmeow, then pull him closer and take his feline shaft in your mouth, sucking on it and playing with it with your tongue.";
		say "     Your mind goes into a kind of lustful haze as your angelic friend fucks you with swift and deep strokes and you're making your soft-furred pet gasp and moan with your mouth and tongue. You can't really say how long the amazing fucking session lasts, but you orgasm several times in its course, your pussy getting drippingly wet around Elijah's thrusting cock[if cocks of player is 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[else if cocks of player > 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[end if]. Then at some point, Elijah's willpower is finally worn out and he can't hold back any longer, grinding his hips against yours to get as deep inside you as possible and burying his hands in the bunk's blanket. You feel his shaft pulse against the inner walls of your pussy as spurt after spurt of fertile seed gets deposited right in your womb.[fimpregchance]";
		LineBreak;
		say "     After the last blast of cum, Elijah sinks down on top of you, taking a deep breath and then giving you a long kiss. You let him rest against you for a moment, then push him softly to the side to lie on your bunk. Time to give your faithful pet his release too - Sven's still standing next to the bunk, a hopeful expression on his face and his feline cock ready to go. Do you want to let him finish in your pussy, or rather suck him off? (Y for pussy, N for sucking)[line break]";
		if player consents:
			[puts Snow Leopard as lead monster in case of impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Snow Leopard":
					now monster is y;
					break;
			say "     You tell Sven to fuck you, spreading your legs for him. Your snowmeow pet eagerly sinks his feline cock into your pussy's depths, finding it very well lubricated with Elijah's massive load and your own juices. You pull him down on you as he thrusts rapidly in and out with his hips, giving him a kiss on the muzzle. It's amazing how nice his soft fur feels against the insides of your legs and your chest. You wrap your arms and legs around him, pulling him tightly against you to make him rub against your skin as he fucks you. All too soon, you feel him stiffen against you, gasping in satisfaction as his cock twitches and fills you with his seed, mingling inside your womb with Elijah's earlier deposition.[fimpregchance]";
			LineBreak;
			say "     As exhaustion claims Sven and you, you shift a bit on the bunk to make room for the three of you, softly pushing the snowmeow off your body to rest between yourself and Elijah. Like that, you three fall asleep, resting together in a slightly sweaty and sticky, but very satisfied group on the bunk.";
		else:
			say "     You shift your body a bit so your head is dangling over the side of the bunk, looking at the world upside-down from your position on your back. Smiling at Sven, you wave him closer, then guide his cock into your waiting mouth. He pumps in and out, first slowly, then faster and faster as his urges tell him to. You relax as good as you can, allowing him to face-fuck you deeply, his feline shaft halfway down your throat often and his furry balls rubbing against your nose. With you sucking him before and the show of your coupling with Elijah, it doesn't take too long until he orgasms, spurting his come directly into your stomach.";
			LineBreak;
			say "     After the last spurt of cum from his cock, Sven pulls out of your mouth and you see him waver a bit with exhaustion. You shift a bit on the bunk to make room, then softly pull him down to lie between you and Elijah. Like that, you three fall asleep, resting together in a slightly sweaty and sticky, but very satisfied group on the bunk.";
	else: [evil Elijah]
		say "     Feeling a bit adventurous, you strip completely naked and lie on your bunk, then call over Sven and Elijah. As they come to stand before you, eyes roaming over your bare [bodytype of player] body, their arousal quickly mounts up, with Sven's cock filling out in plain view while Elijah shows a growing bulge in his leather pants. You smile at your eager boys, then order Sven to strip Elijah and give him a blowjob. As your faithful sexpet opens up the button and zipper and gets to work on Elijah's revealed manhood, you move a hand down to your pussy, stroking its lips and pushing two fingers inside.";
		say "     You watch for a while as Sven licks and sucks Elijah's cock, causing your handsome angel to moan in lust. Then Elijah decides to go for some pussy, pulling out of Sven's muzzle and telling the snowmeow to pull off his boots and help him out of his pants. Now fully naked, he steps over to your bunk, stroking his long shaft. You open your legs, fingers spreading open the wet lips of your cunt and moan 'Fuck me, Elijah.'";
		WaitLineBreak;
		say "     He readily complies, aligning his long shaft with your pussy, then sinks himself deep into your folds and starts to thrust in and out. Sven seems to be content just watching your coupling, but you decide to give your pet a treat and reach out for his dick. You stroke your snowmeow, then pull him closer and take his feline shaft in your mouth, sucking on it and playing with it with your tongue.";
		say "     Your mind goes into a kind of lustful haze as the fallen angel fucks you with swift and deep strokes and you're making your soft-furred pet gasp and moan with your mouth and tongue. You can't really say how long the amazing fucking session lasts, but you orgasm several times in its course, your pussy getting drippingly wet around Elijah's thrusting cock[if cocks of player is 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[else if cocks of player > 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[end if]. Then at some point, Elijah's willpower is finally worn out and he can't hold back any longer, grinding his hips against yours to get as deep inside you as possible and burying his hands in the bunk's blanket. You feel his shaft pulse against the inner walls of your pussy as spurt after spurt of fertile seed gets deposited right in your womb.[fimpregchance]";
		LineBreak;
		say "     After the last blast of cum, Elijah sinks down on top of you, taking a deep breath and giving your pussy a few more short thrusts to make his cum slosh around a bit and revel in having filled you with his fertile seed. Then he pulls out, grinning down at you in satisfaction, ogling your naked body and giving Sven a quick slap on the ass before he walks off to his bunk.";
		LineBreak;
		say "     Time to give your faithful pet his release too - Sven's still standing next to the bunk, a hopeful expression on his face and his feline cock ready to go. Do you want to let him finish in your pussy, or rather suck him off? (Y for pussy, N for sucking)[line break]";
		if player consents:
			[puts Snow Leopard as lead monster in case of impregnation]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Snow Leopard":
					now monster is y;
					break;
			say "     You tell Sven to fuck you, spreading your legs for him. Your snowmeow pet eagerly sinks his feline cock into your pussy's depths, finding it very well lubricated with Elijah's massive load and your own juices. You pull him down on you as he thrusts rapidly in and out with his hips, giving him a kiss on the muzzle. It's amazing how nice his soft fur feels against the insides of your legs and your chest. You wrap your arms and legs around him, pulling him tightly against you to make him rub against your skin as he fucks you. All too soon, you feel him stiffen against you, gasping in satisfaction as his cock twitches and fills you with his seed, mingling inside your womb with Elijah's earlier deposition.[fimpregchance]";
			LineBreak;
			say "     As exhaustion claims Sven and you, you shift a bit on the bunk to make room for him, softly pushing the snowmeow off your body to lie beside you. Like that, you fall asleep, resting together in a slightly sweaty and sticky, but very satisfied couple on the bunk.";
		else:
			say "     You shift your body a bit so your head is dangling over the side of the bunk, looking at the world upside-down from your position on your back. Smiling at Sven, you wave him closer, then guide his cock into your waiting mouth. He pumps in and out, first slowly, then faster and faster as his urges tell him to. You relax as good as you can, allowing him to face-fuck you deeply, his feline shaft halfway down your throat often and his furry balls rubbing against your nose. With you sucking him before and the show of your coupling with Elijah, it doesn't take too long until he orgasms, spurting his come directly into your stomach.";
			LineBreak;
			say "     After the last spurt of cum from his cock, Sven pulls out of your moth and you see him waver a bit with exhaustion. You shift a bit on the bunk to make room, then softly pull him down to lie beside you. Like that, you fall asleep, resting together in a slightly sweaty and sticky, but very satisfied couple on the bunk.";

to say ElijahSex7: [assfuck Elijah+Felinoid]
	if (hp of Elijah < 99): [good guy]
		say "     You see Elijah sitting on the edge of his bunk, bent over to pet the belly fur of your felinoid pet sprawled out on the ground before him. The large cat is loudly purring and is clearly enjoying itself a whole lot - he even shows a half-hard erection of his feline, spined maleness. That gives you an idea...";
		WaitLineBreak;
		say "     Going over to sit beside Elijah, you run a hand over his arm then pull his head to your lips. After a heavenly kiss with some playful tongue-wrestling, you say 'I want to be inside you - and let's involve your little friend here too. Look, you got him all worked up and ready for some fun!' You lean down and stroke the felinoid's warm fur, then let your hands wander a bit and brush over his erection.";
		say "     Standing up, you quickly strip off your clothes, then pull Elijah to his feet and over to the clear area between two rows of bunks. Running your hands along the sides of his chest and feeling his muscles, you continue down until you reach his jeans. You fondle his crotch for a moment, stroking his growing bulge and are soon joined by your felinoid companion, who interestedly sniffs at Elijah. Undoing the button and zipper, you push the jeans down his legs, pulling off his boots and having him step out of the pants. With your handsome angel now fully naked, you look up at his lean body then grab hold of his hard cock. You lick the tip and give it a few strokes, then tell him to lie on the felinoid's back.";
		WaitLineBreak;
		say "     Elijah climbs on top of your felinoid companion and you see the muscles in the large feline's legs flexing as he almost effortlessly takes the angel's weight. With Elijah lying on his stomach on the feline's furry back, his arms wrapped around its chest to hold on, his tight ass is right above the felinoid's. Your cock throbs at the inviting sight of your two friends waiting for you to take them and you stroke its hard length, then place it at Elijah's pucker and push forward.";
		say "     He moans deeply as you slide your shaft inside his body and holds tightly onto the felinoid as you sink deeper and deeper. When you bottom out and feel your balls against his skin, you lean forward to kiss his back between his wings, then start thrusting in and out. Soon you have your angel friend grunting and moaning as he's fucked hard and deep, moving his hips in rhythm with you. He goes back and forth to take your cock even deeper and also to rub his own cock against the felinoid's fur. Meanwhile Elijah's hands have found the felinoid's spined cock below his body and you hear - and feel - the large feline's rumbling purr as its maleness is stroked.";
		WaitLineBreak;
		say "     Remembering that you have another hole to fuck, you almost reluctantly pull out of Elijah's tight behind, then put your cockhead to the felinoid's pucker. Pushing forward, it resists you a moment, then opens up and allows your cock to slide into the tight warm cave beyond. The felinoid's body stiffens and you hear a roar as you invade his insides, but then the purring starts up again. Looks like he likes being fucked after all. Emboldened, you take out all the stops and slam your hips forward until your crotch rubs the soft fur of his ass. Amazing what sensations await in this changed world where taboos about fucking all kinds of creatures are a thing of the past.";
		LineBreak;
		say "     As you fuck your companion, you soon feel the urge to shoot your load rise inside you. Which one of your sexual partner's do you want to finish in today? (Y for Elijah, N for Felinoid)[line break]";
		if player consents:
			say "     Pulling out of the felinoid's warm chute while you still can, you angle your cock upwards and bury it inside Elijah in one stroke, making him gasp at the sudden intrusion - more in surprise than in pain. You have him moaning again in lust pretty quickly, rapidly pumping in and out of his body as your orgasm continues to build. Then you finally reach the point of no return and pulse after pulse of your seed blasts into Elijah's insides, filling him up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			LineBreak;
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and giving you an embrace and a deep kiss. Looking at the large felinoid beside you, its back fur sticky with the load or two Elijah shot onto it as you were fucking him, you nod Elijah to it's still fully hard erection. Your angel friend nods and kneels down beside the felinoid, taking its long cock in a hand and stroking it. He runs a finger over and around the short spines and jerks the felinoid off until it shoots an impressive load all over the concrete floor. Afterwards, he exhaustedly staggers over to his bunk, lying down on it to get some rest. He's quickly joined by the felinoid, who sprawls out on the floor just beside his bunk.";
		else:
			say "     You just keep going, the feelings of the non-human asshole of your felinoid companion around your manhood building up your lust further and further. Then you finally reach the point of no return and pulse after pulse of your seed blasts into the felinoid's insides, filling him up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			LineBreak;
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and giving you an embrace and a deep kiss. Looking at the large felinoid beside you, its back fur sticky with the load or two Elijah shot onto it as you were fucking him, you nod Elijah to it's still fully hard erection. Your angel friend nods and kneels down beside the felinoid, taking its long cock in a hand and stroking it. He runs a finger over and around the short spines and jerks the felinoid off until it shoots an impressive load all over the concrete floor. Afterwards, he exhaustedly staggers over to his bunk, lying down on it to get some rest. He's quickly joined by the felinoid, who sprawls out on the floor just beside his bunk.";
	else: [evil Elijah]
		say "     You come upon Elijah and your felinoid companion, with the fallen angel balls deep inside the large feline's ass, pumping his cock in and out. You watch them go at it a moment, then quickly strip off your clothes and step forward to join in.";
		LineBreak;
		say "     Embracing Elijah from behind, you let your hands roam over his muscled chest and rub your cock against the crack of his ass. Then you pull his head to the side to give him a quick tongue-kiss and tell him to lie down on the furry back of the beast he's fucking.";
		say "     Elijah climbs on top of your felinoid companion and you see the muscles in the large feline's legs flexing as he almost effortlessly takes the angel's weight. With Elijah lying on his stomach on the feline's furry back, his arms wrapped around its chest to hold on, his tight ass is right above the felinoid's. Your cock throbs at the inviting sight of your two friends waiting for you to take them and you stroke its hard length, then place it at Elijah's pucker and push forward.";
		say "     He moans deeply as you slide your shaft inside his body and holds tightly onto the felinoid as you sink deeper and deeper. When you bottom out and feel your balls against his skin, you start rapid thrusts in and out. Soon you have your dark angel grunting and moaning as he's fucked hard and deep, moving his hips in rhythm with you. He goes back and forth to take your cock even deeper and also to rub his own cock against the felinoid's fur. Meanwhile Elijah's hands have found the felinoid's spined cock below his body and you hear - and feel - the large feline's rumbling purr as its maleness is stroked.";
		WaitLineBreak;
		say "     Remembering that you have another hole to fuck, you almost reluctantly pull out of Elijah's tight behind, then put your cockhead to the felinoid's pucker. Pushing forward, you slide into its warm embrace - easy to enter, having been opened up by Elijah's cock, but still nice and tight around your shaft. There's a warm, squishy feeling to the felinoid's insides too - looks like Elijah already dropped a load in him - which makes your cock become even harder in anticipation of adding your own seed to his.";
		LineBreak;
		say "     As you fuck your companion, you soon feel the urge to cum rise inside you. Which one of your sexual partner's do you want to finish in today? (Y for Elijah, N for Felinoid)[line break]";
		if player consents:
			say "     Pulling out of the felinoid's warm chute while you still can, you angle your cock upwards and bury it inside Elijah in one stroke, making him gasp - quickly followed by a 'Yeah, harder!' and a hand reaching back to slap one of your ass-cheeks and pull you tight against him. You quicken your tempo, rapidly pumping in and out of Elijah's body as your orgasm continues to build. Then you finally reach the point of no return and pulse after pulse of your seed blasts into Elijah's insides, filling him up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			LineBreak;
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and rubbing his cock against the sticky patch where he shot a load while you were fucking him. Then the dark angel steps around to the felinoid's front and presents his cock to be licked clean. Grinning at you while his manhood is licked by your felinoid companion, he then saunters off to his bunk and lies down to rest.";
		else:
			say "     You just keep going, the feelings of the non-human asshole of your felinoid companion around your manhood building up your lust further and further. Then you finally reach the point of no return and pulse after pulse of your seed blasts into the felinoid's insides, filling him up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			LineBreak;
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and rubbing his cock against the sticky patch where he shot a load while you were fucking him. Then the dark angel steps around to the felinoid's front and presents his cock to be licked clean. Grinning at you while his manhood is licked by your felinoid companion, he then saunters off to his bunk and lies down to rest.";

to say ElijahSex8: [Take Elijah and the Felinoid in your pussy - at the same time]
	if (hp of Elijah < 99): [good guy]
		say "     When your felinoid companion comes over to you and rubs his shoulder against your hips, you decide to have a bit of fun today. You call over Elijah, who looks from the felinoid to you, then starts smiling as he sees the lustful glint in your eyes. He lets himself be led to a nearby bunk, where you quickly strip off his boots and clothes, followed by your own. You have him sit on the end of the bunk, then bend over and take his rapidly hardening cock into your mouth. Running your tongue over its warm skin as you bob your head up and down. From behind you, you hear an approving growl, followed by the felinoid's large, rough tongue licking over your exposed pussy.";
		say "     You blow Elijah's cock until it's good and wet - and your handsome angel is moaning in lust - then softly push against his chest for him to lie back and climb on the bunk with him. Kneeling over him, your legs to both sides of his hips, you then lower yourself on his erect, proudly standing maleness. Both of you moan and groan in lust as the tip of his cock pierces your folds and the sides of his shaft rub your insides. When your hips finally touch, you lean down and give Elijah a deep kiss, then look behind you and give the felinoid a meaningful glance as you wiggle your ass at him.";
		WaitLineBreak;
		say "     The large feline doesn't hesitate a second, pouncing at an opportunity of fucking your pussy. He rears up, putting his paws and strong legs to either side of Elijah's and your chest on the bunk. You feel the soft fur of his belly rubbing against your back and his tongue licking your neck. Then there's the sensation of his hot, barbed cock brushing against the crack of your ass, sliding up and down in search of your pussy. [if cunt width of player < 4]As he finds it and presses in beside Elijah, you don't think it'll fit at first, but then a slight shift goes through your body and your opening stretches to accommodate him - looks like his precum was enough to change that part of you.[else]He finds it and presses in beside Elijah, stretching your opening tight around the two cocks.[end if] A deep vibration goes through you and Elijah as the felinoid purrs in satisfaction, sinking his feline member into your body. He's soon joined by Elijah's moaning at the feeling of a cock rubbing against his own - and of course your own, as two virile males fill your pussy with both their shafts.";
		if cunt width of player < 4:
			increase cunt width of player by 4;
		if cunt length of player < 12:
			increase cunt width of player by 6;
		say "     Roaring in pleasure as he bottoms out inside you, the felinoid then starts to fuck you with deep, forceful thrusts, rocking your whole body back and forth. You have to grab his forelegs to hold on to so he doesn't push you too far up. With two cocks sliding in and out of your pussy and against each other, Elijah moaning below you and the felinoid purring and growling above, your mind gets lost in a lustful haze. You can't say how long this relentless animalistic mating takes, but who cares about such things when two mind-blowing orgasms rock your body in the meantime. Your pussy leaks a copious amount of female juices, lubricating the unending in-out movement of the felinoid's cock and dripping down onto Elijah's balls and crotch. [if cocks of player is 1]And your own cock spasms and shoots long strands of cum all over Elijah's muscular chest.[else if cocks of player > 1]And your own cocks spasm and shoot long strands of cum all over Elijah's muscular chest.[end if]";
		[puts Seraphim as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Seraphim":
				now monster is y;
				break;
		say "     Soon it's Elijah's turn to cum, driven over the edge by your tightness and the felinoid's hard shaft rubbing against his own. He gasps, pulling you down for a deep kiss as his balls pulse with spurt after spurt of fertile seed that erupts into your womb.[fimpregchance]";
		[puts Felinoid as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Felinoid":
				now monster is y;
				break;
		say "     The felinoid redoubles his fucking speed as he feels Elijah's angelic cum around his feline cock, trying to get his own sperm into the race for your eggs as fast as possible. After several more deep thrusts, he gives a satisfied roar and you feel forceful blasts of fertile felinoid seed fill your womb, mingling with Elijah's cum.[fimpregchance]";
		LineBreak;
		say "     Waiting until the last spurt of cum has leaked from his feline cock, the felinoid stays on top of you a moment longer. Then you feel the soft touch of his fur lift from your back, followed by the bunk shaking a bit as the large feline sprawls out against it on the floor. Elijah meanwhile holds you against his chest, softly stroking your body in post-coital bliss. 'That was amazing.' he sighs, and gives you a soft kiss on the lips. Content to lie in the arms of your angel lover, the bunk vibrating slightly with the purrs of the felinoid sprawled against it on the floor, you rest there peacefully for a while.";
	else: [evil Elijah]
		say "     When your felinoid companion comes over to you and rubs his shoulder against your hips, you decide to have a bit of fun today. You call over Elijah, who looks from the felinoid to you, then grins and strips off his boots and leather pants, revealing a rapidly hardening erection. He lets himself be led to a nearby bunk, where you have him sit on the end of it, then step back and do a little striptease with your clothes for him to watch. Bending over, you take his rapidly hardening cock into your mouth and bob your head up and down on it. From behind you, you hear an approving growl, followed by the felinoid's large, rough tongue licking over your exposed pussy.";
		say "     You blow Elijah's cock until it's good and wet - and your handsome angel is moaning in lust - then softly push against his chest for him to lie back and climb on the bunk with him. Kneeling over him, your legs to both sides of his hips, you then lower yourself on his erect, proudly standing maleness. Both of you moan and groan in lust as the tip of his cock pierces your folds and the sides of his shaft rub your insides. When your hips finally touch, you lean down and give Elijah a deep kiss, then look behind you and give the felinoid a meaningful glance as you wiggle your ass at him.";
		WaitLineBreak;
		say "     The large feline doesn't hesitate a second, pouncing at an opportunity of fucking your pussy. He rears up, putting his paws and strong legs to either side of Elijah's and your chest on the bunk. You feel the soft fur of his belly rubbing against your back and his tongue licking your neck. Then there's the sensation of his hot, barbed cock brushing against the crack of your ass, sliding up and down in search of your pussy. [if cunt width of player < 4]As he finds it and presses in beside Elijah, you don't think it'll fit at first, but then a slight shift goes through your body and your opening stretches to accommodate him - looks like his precum was enough to change that part of you.[else]He finds it and presses in beside Elijah, stretching your opening tight around the two cocks.[end if] A deep vibration goes through you and Elijah as the felinoid purrs in satisfaction, sinking his feline member into your body. He's soon joined by Elijah's moaning at the feeling of a cock rubbing against his own - and of course your own, as two virile males fill your pussy with both their shafts.";
		if cunt width of player < 4:
			increase cunt width of player by 4;
		if cunt length of player < 12:
			increase cunt width of player by 6;
		say "     Roaring in pleasure as he bottoms out inside you, the felinoid then starts to fuck you with deep, forceful thrusts, rocking your whole body back and forth. You have to grab his forelegs to hold on to so he doesn't push you too far up. With two cocks sliding in and out of your pussy and against each other, Elijah moaning below you and the felinoid purring and growling above, your mind gets lost in a lustful haze. You can't say how long this relentless animalistic mating takes, but who cares about such things when two mind-blowing orgasms rock your body in the meantime. Your pussy leaks a copious amount of female juices, lubricating the unending in-out movement of the felinoid's cock and dripping down onto Elijah's balls and crotch. [if cocks of player is 1]And your own cock spasms and shoots long strands of cum all over Elijah's muscular chest.[else if cocks of player > 1]And your own cocks spasm and shoot long strands of cum all over Elijah's muscular chest.[end if]";
		[puts Seraphim as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Seraphim":
				now monster is y;
				break;
		say "     Soon it's Elijah's turn to cum, driven over the edge by your tightness and the felinoid's hard shaft rubbing against his own. He gasps, grabbing your hips tightly and grinding his crotch up against you as his balls pulse with spurt after spurt of fertile seed that erupts into your womb.[fimpregchance]";
		[puts Felinoid as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Felinoid":
				now monster is y;
				break;
		say "     The felinoid redoubles his fucking speed as he feels Elijah's angelic cum around his feline cock, trying to get his own sperm into the race for your eggs as fast as possible. After several more deep thrusts, he gives a satisfied roar and you feel forceful blasts of fertile felinoid seed fill your womb, mingling with Elijah's cum.[fimpregchance]";
		LineBreak;
		say "     Waiting until the last spurt of cum has leaked from his feline cock, the felinoid stays on top of you a moment longer. Then you feel the soft touch of his fur lift from your back, followed by the bunk shaking a bit as the large feline sprawls out against it on the floor. Elijah meanwhile gives your ass a slight squeeze, then holds you tightly as he rolls over, leaving you to lie on your back on the bunk. He pulls out of your body, smiling at the cum still dripping from his shaft, then stands up. Looking down on the felinoid, he says 'Not bad fucking, you big furball. But don't think I won't be back to fuck your ass only because we were in a pussy together.' He leans down and shoves three fingers in the feline's asshole a few times, then laughs to himself and walks off to his own bunk. You're left lying there alone, your womb filled with cum. Then you feel a vibration going through you, coming from the felinoid's purring as he lies against the bunk on the floor. With how exhausted you are and the soothing purr suffusing your body, you soon fall asleep, giving you some much needed rest.";

to say ElijahSex9: [Fuck Elijah as he's balls deep inside Candy]
	if (hp of Elijah < 99): [good guy]
		say "     You spot Candy on all fours on his bunk, busy trying out the new toy Elijah gave him. With his bottom in the air, one hand pumping a red-and-white striped dildo in and out of his ass, the girly coon surely is a sight to behold. He's moaning loudly and has got his eyes closed as he imagines one of his dream males fucking him - which gives you an idea...";
		say "     Walking out into the library, where Elijah is sitting at a table and reading a book, you say 'I've got to show you something.' to him, then grab him by the arm and lead him into the bunker. The angel's eyes widen as he sees Candy pleasing himself. He opens his mouth to say something, but you lift a finger to your lips and direct him to stay silent. You whisper 'Don't you think he looks just delicious? You should go join him - a real cock is better than any toy.' while grabbing Elijah's crotch and feeling the growing bulge there. You see Elijah's Adam's apple bob as he swallows, his eyes riveted to Candy. Helping him out, you undo the laces of his boots and pull them off, then free his divine erection from his jeans and push them down and off his legs.";
		WaitLineBreak;
		say "     Only a very slight push in form of a quick squeeze of his buns is needed to get Elijah moving, walking over to Candy's bunk in his eye-catching nakedness. When he gets there, Elijah brushes his hand softly over Candy's furred buns, making the coon look over his shoulder in alarm - then giggle, as he sees the angel's erection pointing his way. The pink coon rolls over on his back, smiling up at Elijah as he spreads his legs and pulls out the dildo. With such an obvious invitation, Elijah doesn't hesitate, climbing up on the bunk and lining up his cock with Candy's waiting hole. With a lustful moan, he sinks himself inside the girly coon, spreading his wings wide as he feels the tight embrace of Candy's trained asshole.";
		say "     As you watch Elijah's first few thrusts into Candy, slow at first, then faster and faster, your own almost painfully hard cock throbs in anticipation. You quickly strip out of your clothing, then move over to Candy's bunk. Elijah's perfectly shaped ass rising up and down with your two male friend's coupling have an almost hypnotic quality for you. In a kind of lustful daze, you climb on the bunk behind Elijah, eyes never leaving his alluring manhole as you aim your cock at it. Then, you put the pre-cum dribbling cockhead to his pucker and enter him with half your length in one quick thrust. He gasps at the sudden invasion, then starts to moan even more than before as your cock rubs his inner walls.";
		WaitLineBreak;
		say "     Grabbing Candy's softly furred legs raised up beside Elijah's hips to hold on to, you take out all the stops and thrust forcefully forward, burying your cock to the hilt and driving Elijah's own maleness deeper into Candy's ass. You fuck Elijah - and through him Candy - hard and deep, filling the bunk room with loud moans and groans. It's an amazing feeling to have not one but two handsome males on a bunk for your pleasure - you wish it could last forever, but what ever does?";
		say "     The first to go is Candy, loudly moaning in his girlish voice as he sprays pink jets of cum all over his chestfur, filling the air with the smell of cotton candy. Not far behind, Elijah stiffens below you as his cock starts pulsing, filling Candy's ass with a torrent of his creamy cum. As he orgasms, his anal muscles spasm and contract around your cock, taking you over the edge right with him. With a satisfied groan, you plunge yourself in as deep as possible, then start unloading jet after jet of your seed inside his ass. As the last spurt leaves your body and gets deposited in Elijah, the overpowering urge to rut him vanishes, leaving you exhausted and out of breath. You hug Elijah from behind, running your hands over his chest and kiss his neck. Then you softly pull him to the side until you're lying next to Candy on his bunk. It's a bit of a tight fit, but you don't really care - wrapped around your handsome angel, your softening cock still inside him for now, there's no place where you'd rather be.";
	else: [evil Elijah]
		say "     You spot Candy on all fours on his bunk, busy fucking himself with a rubber dildo. With his bottom in the air, one hand pumping the sex toy in and out of his ass, the girly coon surely is a sight to behold. He's moaning loudly and has got his eyes closed as he imagines one of his dream males fucking him - which gives you an idea...";
		say "     Walking out into the library, where Elijah is busy sorting a pile of porno mags he acquired somewhere, you say 'I've got to show you something.' to him, then grab him by the arm and lead him into the bunker. A lustful sparkle begins to fill the fallen angel's eyes as he sees Candy pleasing himself. With a wide grin on his face, he pulls off his boots and pushes the leather pants down his legs, making sure you have a good view of his naked body. He wiggles his firm buttocks at you as he steps out of his pants, then saunters over to Candy's bunk.";
		WaitLineBreak;
		say "     When he gets there, Elijah grabs Candy's furred buns with both hands and gives them a quick squeeze, making the coon look over his shoulder in alarm - then giggle, as he sees the angel's erection pointing his way. The pink coon rolls over on his back, smiling up at Elijah as he spreads his legs and pulls out the dildo. Elijah doesn't hesitate for a second, climbing up on the bunk and lining up his cock with Candy's waiting hole. With a satisfied grunt, he sinks himself inside the girly coon, spreading his wings wide as he feels the tight embrace of Candy's trained asshole.";
		say "     As you watch Elijah's first few thrusts into Candy, slow at first, then faster and faster, your own almost painfully hard cock throbs in anticipation. You quickly strip out of your clothing, then move over to Candy's bunk. Elijah's perfectly shaped ass rising up and down with your two male friend's coupling have an almost hypnotic quality for you. In a kind of lustful daze, you climb on the bunk behind Elijah, eyes never leaving his alluring manhole as you aim your cock at it. Then, you put the pre-cum dribbling cockhead to his pucker and enter him with half your length in one quick thrust. He gasps at the sudden invasion, then starts to moan even more than before as your cock rubs his inner walls.";
		WaitLineBreak;
		say "     Grabbing Candy's softly furred legs raised up beside Elijah's hips to hold on to, you take out all the stops and thrust forcefully forward, burying your cock to the hilt and driving Elijah's own maleness deeper into Candy's ass. You fuck Elijah - and through him Candy - hard and deep, filling the bunk room with loud moans and groans. It's an amazing feeling to have not one but two handsome males on a bunk for your pleasure - you wish it could last forever, but what ever does?";
		say "     The first to go is Candy, loudly moaning in his girlish voice as he sprays pink jets of cum all over his chestfur, filling the air with the smell of cotton candy. Not far behind, Elijah stiffens below you as his cock starts pulsing, filling Candy's ass with a torrent of his creamy cum. As he orgasms, his anal muscles spasm and contract around your cock, taking you over the edge right with him. With a satisfied groan, you plunge yourself in as deep as possible, then start unloading jet after jet of your seed inside his ass. As the last spurt leaves your body and gets deposited in Elijah, the overpowering urge to rut him vanishes, leaving you exhausted and out of breath. The fallen angel pulls his cock out of Candy, then softly pushes you off his back to lie on the bunk and walks off. Too exhausted to go to your own bunk, you just snuggle up to Candy and fall asleep, your face buried in the warm fur of his side.";

to say ElijahSex10: [Let Fuck Elijah you as he's being shafted by Candy]
	if (hp of Elijah < 99): [good guy]
		say "     Deciding you're in the mood for some entertainment, you sit back comfortably on your bunk and call over Candy and Elijah. As they come over to stand side by side before you, you smile mischievously at them and say 'I'd like a little show from you two. Why don't you start with kissing each other...'";
		say "     Candy is the first to make a move, giggling girlishly as he rises on tiptoe to kiss the much taller Elijah on the lips. Elijah replies in kind, bowing down a bit and pulling Candy close for a long kiss that leads to a breathtaking make-out session. You watch with rising arousal as they kiss, run their hands over each other's body and do a playful tongue-wrestle.";
		WaitLineBreak;
		say "     Then Candy takes it to the next level, pushing a petite coon hand down under the front of Elijah's jeans, fondling him. With skillful movements, he has Elijah's button and zipper open and the jeans halfway down his legs in a moment. Candy then kneels down in front of him, stroking Elijah's long cock and licking his balls. He advances to giving Elijah a truly amazing blowjob, making your angelic friend gasp and moan at the sensations.";
		say "     With your pussy already getting wet with the show before you, it's time to join in - you strip off your clothing, then say 'Elijah, come here and fuck me...' and with a nod to Candy '...and why don't you shaft his ass at the same time.'";
		say "     A very eager Elijah steps up to your bunk, climbing up to kneel on it and taking hold of your legs as you spread them for him. Then you feel his hard shaft rubbing against your crotch until it finds the opening of your folds. You moan deeply as Elijah pierces your body, sinking himself inside your tight passage. Reaching up, you pull him down onto you, going for a lustful kiss as he bottoms out and his balls touch your skin. With Elijah's upper body leaned down in your embrace, Candy takes the opportunity to go for his ass as it is raised in the air. The girly coon smiles at you over Elijah's shoulder, aiming his manhood and then pushes in against Elijah's pucker. As he penetrates your angel friend, you feel Elijah's cock switch a bit in your pussy, getting even harder at the sensations from his ass.";
		say "     Candy then starts pushing in and out of Elijah, moaning as your friend's asshole grips his cock tightly. With each of his thrusts he drives deep into Elijah, rocking him forward and making Elijah's cock rub against your insides. Elijah joins him with his own hip movements, sometimes thrusting back to meet Candy for an especially deep penetration of his ass, at other times moving forward to combine their thrusts and slam into you together.";
		WaitLineBreak;
		say "     Over the next thirty minutes or so you're fucked hard and fast, your mind flooded with pleasure at Elijah's manhood inside you, his hands caressing your body and several more kisses you share between each other. You have two orgasms in that time, pussy juices flowing freely around Elijah's thrusting cock[if cocks of player is 1] and your own erection shooting long strands of cum all over yourself[else if cocks of player > 1] and your own erections shooting long strands of cum all over yourself[end if]. Then it's Elijah's turn - he leans down to hold you tight against himself and kiss you as his shaft pulses with each blast of fertile seed filling your womb. From behind him, you hear Candy gasping loudly as he creams your angel's insides, the contracting and twitching ass muscles of Elijah having driven him over the edge.[fimpregchance]";
		LineBreak;
		say "     Satisfied at your very pleasurable threesome, you whisper to Elijah to stay with you, then roll over a bit on the bunk. Your angel friend stretches out beside you, holding you to him with one strong arm over your chest. With a nice feeling of security, you fall asleep in his arms.";
	else: [evil Elijah]
		say "     Deciding you're in the mood for some entertainment, you sit back comfortably on your bunk and call over Candy and Elijah. As they come over to stand side by side before you, you smile mischievously at them and say 'I'd like a little show from you two. Why don't you start with kissing each other...'";
		say "     Candy is the first to make a move, giggling girlishly as he rises on tiptoe to kiss the much taller Elijah on the lips. After only the shortest brush of their lips, Elijah puts his hands on Candy's shoulders, pushing him downward and saying 'You can kiss my cock. Be really good, and you'll get a reward later.' You watch with rising arousal as Candy kneels down in front of Elijah, helping him to step out of his tight leather pants. He strokes Elijah's long cock and licks his balls, then advances to giving Elijah a truly amazing blowjob, making the fallen angel gasp and moan at the sensations.";
		WaitLineBreak;
		say "     A bit later, Elijah pushes Candy off his cock, stroking along its length. 'Time for some pussy!' he says, then walks over to you and quickly strips and rips your clothing from you. With barely contained lust Elijah steps up to your bunk, climbing up to kneel on it and taking hold of your legs as you spread them for him. Then you feel his hard shaft rubbing against your crotch until it finds the opening of your folds. You moan deeply as Elijah pierces your body, sinking himself inside your tight passage. He moans deeply as he bottoms out and his balls touch your skin. Then he turns around, with his upper body telling Candy 'Nice job, cocksucker. I'll let you fuck my ass as a reward.' Candy excitedly takes the offered opportunity, aiming his manhood and pushing in against Elijah's pucker. As he penetrates your angel friend, you feel Elijah's cock switch a bit in your pussy, getting even harder at the sensations from his ass.";
		say "     Then, Candy starts pushing in and out of Elijah, moaning as the dark angel's asshole grips his cock tightly. With each of his thrusts he drives deep into Elijah, rocking him forward and making Elijah's cock rub against your insides. Elijah joins him with his own hip movements, sometimes thrusting back to meet Candy for an especially deep penetration of his ass, at other times moving forward to combine their thrusts and slam into you together.";
		WaitLineBreak;
		say "     Over the next thirty minutes or so you're fucked hard and fast, your mind flooded with pleasure at Elijah's manhood inside you and his hands fondling your body. You have two orgasms in that time, pussy juices flowing freely around Elijah's thrusting cock[if cocks of player is 1] and your own erection shooting long strands of cum all over yourself[else if cocks of player > 1] and your own erections shooting long strands of cum all over yourself[end if]. Then it's Elijah's turn - he leans down to hold you tight against himself as his shaft pulses with each blast of fertile seed filling your womb. From behind him, you hear Candy gasping loudly as he creams your angel's insides, the contracting and twitching ass muscles of Elijah having driven him over the edge.[fimpregchance]";
		LineBreak;
		say "     His own lusts satisfied, Elijah pulls out of you a bit unceremoniously. He pushes a finger inside your pussy, grinning broadly as it comes out wet with his own cum and a small runnel of seed starts to seep out. Then he walks off, back to his own bunk.";

to say ElijahFangDoubleImpreg:
	if a random chance of 1 in 2 succeeds: [50/50 which sperm gets there first]
		[puts Seraphim as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Seraphim":
				now monster is y;
				break;
		say "[impregchance]";
		[puts Feral Wolf as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Feral Wolf":
				now monster is y;
				break;
		say "[impregchance]";
	else:
		[puts Feral Wolf as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Feral Wolf":
				now monster is y;
				break;
		say "[impregchance]";
		[puts Seraphim as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Seraphim":
				now monster is y;
				break;
		say "[impregchance]";

to say ElijahSex11: [Get fucked by both Elijah and Fang at once]
	if (hp of Elijah < 99): [Good Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking. Heading over to Elijah, you whisper your plan to him and he agrees, clearly seeing how much your body is craving it. You and he head into the library, approaching your alpha wolf. Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, laying back and welcoming you into his arms. Taking his cock in hand, you guide yourself down onto it with a lustful moan, which is echoed as Fang climbs atop you, sinking his hard rod into [if cunts of player > 2]another[else]your other[end if] wet pussy. You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		WaitLineBreak;
		say "     As the two horny males pound into you, your hot juices flow, your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once. The fact that one is a hot guy and the other is a wild beast makes it all the better. Elijah's hands run over your body, working to pleasure you even further. You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder. You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your hot pussies clamping down around the pair of cocks stuffed inside you. The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[else], first Fang and then Elijah[end if]. The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss. Once you finally come down, you are left panting and soaked in feminine juices and leaking semen from your well-stuffed holes.[ElijahFangDoubleImpreg]";
	else: [Evil Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking. Heading over to Elijah, you whisper your plan to him and he laughs and gives your ass a swat. 'You're such a horny slut. Let's go for it, honey,' he chuckles, pleased to indulge your lustful body's cravings. You and he head into the library, approaching your alpha wolf. Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, pulling you down into his arms as he lays back. Grabbing your hips, he thrusts onto it, making you release a lustful moan. This is echoed as Fang climbs atop you, sinking his hard rod into [if cunts of player > 2]another[else]your other[end if] wet pussy. You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		WaitLineBreak;
		say "     As the two horny males pound into you, your hot juices flow, your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once. The fact that one is a hot guy and the other is a wild beast makes it all the better. As you're being stuffed, Elijah talks dirty to you about how sexy you look and what a slut you are for being Fang's fucktoy. In the throws of your submissive urges, his words turn you on all the more, echoing how you feel and loving it. You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder. You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your hot pussies clamping down around the pair of cocks stuffed inside you. The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[else], first Fang and then Elijah[end if]. The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss. Once you finally come down, you are left panting and soaked in feminine juices and leaking semen from your well-stuffed holes.[ElijahFangDoubleImpreg]";
		decrease humanity of player by 3; [Additional humanity decrease from evil Elijah]
		if FangWS is 1 and a random chance of 3 in 5 succeeds:
			say "     After Fang and Elijah have pulled out, the wolf raises his hind leg with his dangling cock pointed at you. You moan softly as your alpha's hot urine starts to spray down onto you. His piss sprays across your [bodytype of player] body and across your face. You open your mouth to catch some, enjoying being covered in your alpha's scent. Hearing Elijah chuckle, you look up see him start to piss over you as well. 'You are such a dirty slut sometimes', he laughs as he sprays you down. Once they've drained their bladders over you, Elijah gives Fang's ears a scritch, telling the wolf that he's got a fine bitch there. Awash in the strong scent of the two males who just fucked you, you are pleased by he words, loving your place as a submissive slut.";
			increase libido of player by 16; [This will be 8 once halved below]
			decrease humanity of player by 5;
	infect "Feral Wolf";
	now libido of player is ( libido of player / 2 );
	decrease humanity of player by 3;


to say ElijahSex12:[Double-penetration by Elijah and Fang]
	if (hp of Elijah < 99): [Good Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking. Heading over to Elijah, you whisper your plan to him and he agrees, clearly seeing how much your body is craving it. You and he head into the library, approaching your alpha wolf. Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, laying back and welcoming you into his arms. Taking his cock in hand, you guide yourself down onto it with a lustful moan. You ride up and down on it while sharing some slobbery kisses with Fang, the wolf's long tongue sliding along yours. Once your [if cunts of player > 0]wet cunny[else]back door[end if] has had a chance to relax a little, you lean forward and pause in the fucking to let Fang mount you. You groan softly as you feel his pointed glans slide between your cheeks[if cunts of player > 0]. Wanting to make sure it finds the intended hole[else]. Eager to get him inside you[end if], you reach back and get it lined up. You cry out as Fang thrusts into you, pushing his lupine cock into your [if cunts of player > 0]vagina[else]anus[end if] atop Elijah's, stretching your [if cunts of player > 0]cunt[else]asshole[end if] wide to take them both. Once in, Fang wastes no time and starts pounding into you right away. You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		WaitLineBreak;
		say "     As the two horny males pound into you, [if cunts of player > 0]your hot juices flow[else]you do your best to ignore the initial discomfort and focus on the pleasure[end if], your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once in the same hole. The fact that one is a hot guy and the other is a wild beast makes it all the better. Elijah's hands run over your body, working to arouse you even further. You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder. You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your [if cunts of player > 0]hot pussy[else]tight ass[end if] clamping down around the pair of cocks stuffed inside you, squeezing their cocks firmly against one another. The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[else], first Fang and then Elijah[end if]. The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss as their combined load fills your [if cunts of player > 0]womb[else]bowels[end if]. Once you finally come down, you are left panting[if cunts of player > 0], soaked in feminine juices[end if] and leaking semen from your well-stuffed hole.[ElijahFangDoubleImpreg]";
	else: [Evil Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking. Heading over to Elijah, you whisper your plan to him and he laughs and gives your ass a swat. 'You're such a horny slut. Let's go for it, honey,' he chuckles, pleased to indulge your lustful body's cravings. You and he head into the library, approaching your alpha wolf. Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, pulling you down into his arms as he lays back. Grabbing your hips, he thrusts onto it, making you release a lustful moan. You bounce up and down in his lap as he pounds into you while you share some slobbery kisses with Fang, the wolf's long tongue sliding along yours. Once he's satisfied your [if cunts of player > 0]wet cunny[else]back door[end if] has had a chance to relax a little, he pulls you forward and pauses in the fucking to let Fang mount you. You groan softly as you feel his pointed glans slide between your cheeks[if cunts of player > 0]. Wanting to make sure it finds the intended hole[else]. Eager to get him inside you[end if], you reach back and get it lined up. You cry out as Fang thrusts into you, pushing his lupine cock into your [if cunts of player > 0]vagina[else]anus[end if] atop Elijah's, stretching your [if cunts of player > 0]cunt[else]asshole[end if] wide to take them both. Once in, Fang wastes no time and starts pounding into you right away. You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		WaitLineBreak;
		say "     As the two horny males pound into you, [if cunts of player > 0]your hot juices flow[else]you do your best to ignore the initial discomfort and focus on the pleasure[end if], your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once in the same hole. The fact that one is a hot guy and the other is a wild beast makes it all the better. As you're being stuffed, Elijah talks dirty to you about how sexy you look and what a slut you are for being Fang's fucktoy. In the throws of your submissive urges, his words turn you on all the more, echoing how you feel and loving it. You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder. You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your [if cunts of player > 0]hot pussy[else]tight ass[end if] clamping down around the pair of cocks stuffed inside you, squeezing their cocks firmly against one another. The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[else], first Fang and then Elijah[end if]. The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss as their combined load fills your [if cunts of player > 0]womb[else]bowels[end if]. Once you finally come down, you are left panting[if cunts of player > 0], soaked in feminine juices[end if] and leaking semen from your well-stuffed hole.[ElijahFangDoubleImpreg]";
		decrease humanity of player by 3; [Additional humanity decrease from evil Elijah]
		if FangWS is 1 and a random chance of 3 in 5 succeeds:
			say "     After Fang and Elijah have pulled out, the wolf raises his hind leg with his dangling cock pointed at you. You moan softly as your alpha's hot urine starts to spray down onto you. His piss sprays across your [bodytype of player] body and across your face. You open your mouth to catch some, enjoying being covered in your alpha's scent. Hearing Elijah chuckle, you look up see him start to piss over you as well. 'You are such a dirty slut sometimes', he laughs as he sprays you down. Once they've drained their bladders over you, Elijah gives Fang's ears a scritch, telling the wolf that he's got a fine bitch there. Awash in the strong scent of the two males who just fucked you, you are pleased by he words, loving your place as a submissive slut.";
			increase libido of player by 16; [This will be 8 once halved below]
			decrease humanity of player by 5;
	infect "Feral Wolf";
	now libido of player is ( libido of player / 2 );
	decrease humanity of player by 3;

to say ElijahSex13:[bondage and teasing by evil Elijah]
	if a random chance of 1 in 2 succeeds: [teasing and bondage on the bed]
		say "     Feeling your submissive urges overtaking you, you approach Elijah, your head demurely lowered as you come close to him. The fallen angel gives a quick laugh as he sees you, saying 'Itching for a fuck again, pet? You little slut... come on.' He starts walking up the stairs and into the library, not even looking back once to see if you're actually following him - but then, he doesn't have to, as you know your place and revel in submitting to such a handsome male's orders. Guiding you out of the library and onto the streets outside, Elijah takes you along the same route as last time, the two of you arriving at the large townhouse he took as his lair before much longer. Unlocking the front door and ushering you inside, soon you're back in the bedroom with its spidertaur-silk addons.";
		say "     Standing before you with folded arms, Elijah orders you to 'Strip - and make it a nice show'. You comply immediately, doing a little dance in which stretch and flex as you pull off your clothes piece by piece, showing off your body for the dark angel's enjoyment. And it obviously has some effect on him, judging from the bulge growing in his tight leather pants. The command 'On the bed - now!' follows after you've pranced around in front of him in all your naked glory for a while. Getting on the large four-poster bed, you lie on your back, then stretch out your arms and legs to Elijah can secure them correctly.";
		WaitLineBreak;
		say "     Your wrists are bound with strong but soft silk ropes keeping them stretched to your sides and down on the mattress, while your legs get lifted into loops hanging down from the upper end of the pillars at the bed's end. This leaves you open and helpless to pretty much anything your master wants to do now. The sexy dark angel gets on the bed too, moving forward on all fours from the end and getting in position on top of you, his lips searching out yours in a hungry kiss while one hand moves in on your crotch. As he makes out with you, he fondles your [if cocks of player > 0]cock, getting it fully hard[else if cunts of player > 0]pussy, getting you wet and dripping[else]sexless crotch, getting you all hot and bothered[end if] in no time at all.";
		say "     In between kisses, he asks 'Are you ready to get fucked now?' Your deep moan of 'Yes' betrays your lust and need - and you can see a somewhat cruel grin come over Elijah's face. 'Perfect' he says and pulls back from you, suddenly leaving you all alone on the bed. He's back almost immediately, holding something in front of your eyes - a little egg-shape with long cable leading to some sort of control device. After quickly applying some lube to it, he pushes the little egg up against your pucker, increasing his pressure slowly until it slips into you, then pushing it deeper with a finger. Turning a dial on the controls, the little device starts to vibrate a bit, lightly stimulating you from the inside. Then the dark angel walks over to a wing-back chair beside the bed and sits down, calmly leaning back to watch you.";
		WaitLineBreak;
		say "     With the vibrator keeping you hot and bothered, but no more than that, the ache to get fucked gets stronger and stronger inside you quickly. At first, you just pant and moan helplessly, [if cocks of player > 0]leaking precum on your belly[else if cunts of player > 0]dripping female juices onto the sheets under you[else]making your crotch tingle[end if], and you call out to Elijah to fuck you, or at least turn up the vibrator a bit. He chuckles, saying 'All in good time, pet.' As he doesn't seem to be willing to help you out, soon you get to the next stage of desperate arousal. Not being able to control yourself any longer, at this point you try pulling in your legs, then your arms - without any success. You twitch and spasm futilely in your bindings, much to the amusement of the watching Elijah. Sweaty and oh so horny, you finally have to stop your attempts to catch your breath, then start pleading, then begging the dark angel to get you off.";
		if cunts of player > 0: [female+herm]
			say "     Even then, he lets you go on for quite a bit before standing up and slowly walking over to the bed. A broad grin on his face, he opens up his tight pants, revealing a perfectly shaped and quite hard cock that makes you moan as you imagine it fucking you. Getting back on the bed, Elijah takes position between your raised legs, then puts the tip of his shaft right against your dripping sex. He rubs it up and down over the sensitive pussy lips, making you strain your silk ropes as you try to jerk down and impale yourself on it. Then finally, with a chuckle, he proceeds to take hold of your legs and thrusts forward, sinking his cock deep into your welcoming passage. Keeping going until he bottoms out, his balls touching your crotch, he waits a second, then pulls back and thrusts forward again, starting to fuck you with deep strokes.";
			WaitLineBreak;
			say "     As long as he kept you going with that vibrator, it doesn't take long at all until actually getting fucked now drives you over the edge to orgasm. Giving a loud moan, almost a scream, you squirm around under him, [if cocks of player > 0]your own cock throbbing as spurt after spurt of cum jet from its tip, splattering your naked chest with your own seed. [else]your pussy twitching around his thrusting shaft as femcum starts to gush out of it. [end if]Moving in and out of your soppingly wet passage, your angel master speeds up more and more, then suddenly lets out a grunt of 'I'm gonna... cum!', accompanied by slamming forward one last time. You can feel his hard shaft pulse against your inner walls as he comes, spurt after spurt of his seed jetting into your insides.[fimpregchance]";
			say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole. Grinning, he uses his fingers to gather up bit by bit of your [if cocks of player > 0]cum[else]femcum[end if] and feeds it to you. Some time later, after you've swallowed it all, he gives you one last grope and then takes off your bindings. 'You did well, pet.' the dark angel says with a smile, followed by 'Time to clean up.' He has you lick off the cum remaining on his manhood, then make the bed with fresh linen and throw out the old into a rubbish bin out on the street - naked as you are, showing off your freshly fucked body to anyone who might be watching. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
		else: [male+neuter]
			say "     Even then, he lets you go on for quite a bit before standing up and slowly walking over to the bed. A broad grin on his face, he opens up his tight pants, revealing a perfectly shaped and quite hard cock that makes you moan as you imagine it fucking you. Getting back on the bed, Elijah takes position between your raised legs, then puts the tip of his shaft right against your trembling pucker. He rubs it up and down the crack of your ass, making you strain your silk ropes as you try to jerk down and impale yourself on it. Then finally, with a chuckle, he pulls the vibrator egg out on its cable, then proceeds to take hold of your legs and thrusts forward, sinking his cock deep into your tight passage. Keeping going until he bottoms out, his balls touching your ass, he waits a second, then pulls back and thrusts forward again, starting to fuck you with deep strokes.";
			WaitLineBreak;
			say "     As long as he kept you going with that vibrator, it doesn't take long at all until actually getting fucked now drives you over the edge to orgasm. Giving a loud moan, almost a scream, you squirm around under him, [if cocks of player > 0]your own cock throbbing as spurt after spurt of cum jet from its tip, splattering your naked chest with your own seed. [else]a tingly feeling of satisfaction filling you or insides, beginning at the crotch. [end if]Moving in and out of your tight asshole, your angel master speeds up more and more, then suddenly lets out a grunt of 'I'm gonna... cum!', accompanied by slamming forward one last time. You can feel his hard shaft pulse against your inner walls as he comes, spurt after spurt of his seed jetting into your rectum.[mimpregchance]";
			say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole. [if cocks of player > 0]Grinning, he uses his fingers to gather up bit by bit of your cum and feeds it to you. Some time later, after you've swallowed it all[else]Some time later[end if], he gives you one last grope and then takes off your bindings. 'You did well, pet.' the dark angel says with a smile, followed by 'Time to clean up.' He has you lick off the cum remaining on his manhood, then make the bed with fresh linen and throw out the old into a rubbish bin out on the street - naked as you are, showing off your freshly fucked body to anyone who might be watching. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
	else: [getting fucked in the silk sex sling]
		say "     Feeling your submissive urges overtaking you, you approach Elijah, your head demurely lowered as you come close to him. The fallen angel gives a quick laugh as he sees you, saying 'Itching for a fuck again, pet? You little slut... come on.' He starts walking up the stairs and into the library, not even looking back once to see if you're actually following him - but then, he doesn't have to, as you know your place and revel in submitting to such a handsome male's orders. Guiding you out of the library and onto the streets outside, Elijah takes you along the same route as last time, the two of you arriving at the large townhouse he took as his lair before much longer. Unlocking the front door and ushering you inside, soon you're back in the bedroom with its spidertaur-silk addons.";
		say "     Standing before you with folded arms, Elijah orders you to 'Strip - and make it a nice show'. You comply immediately, doing a little dance in which stretch and flex as you pull off your clothes piece by piece, showing off your body for the dark angel's enjoyment. And it obviously has some effect on him, judging from the bulge growing in his tight leather pants. The command 'Get your ass in the sling - now!' follows after you've pranced around in front of him in all your naked glory for a while. Going over to stand in front of the large spidersilk construct hanging in the air from its many tether-threads, you find yourself rather enthralled by the beauty of it. Its white silk shape looking soft and delicate while being immensely tough and flexible. You can't help but touch it, slowly stroking your fingers over its soft material.";
		WaitLineBreak;
		say "     You barely register the impatient harrumph from behind you, only realizing that you are letting your master wait when he grabs you by the arm and pulls you around. 'You're tardy, pet - I'll have to punish you for that' the fallen angel says in a tone betraying his arousal at dominating you. With a shove against your collarbone, Elijah pushes you to fall backwards onto the sling. Then he grabs your left arm, pulling it up and over your head to tie it at the wrist with one of the many tough silk strands available for that purpose. Your right arm quickly is fastened to another, then he lifts your legs to slide into loops of strands and tightens those around your ankles, leaving you all stretched out and helpless.";
		if "Kinky" is listed in feats of player:
			say "     Slap! Elijah hits one of your buttocks with his open hand, hard enough to sting a little. 'You've been a bad, bad pet' he says with a chuckle, groping your other cheek before giving it another admonishing slap. Getting aroused by the spanking, you pant to Elijah that you deserve it, for him to hit you again, and harder, moaning loudly with each new slap. 'You're loving this, don't you, slut?' Elijah asks, then as you open your mouth gives you one a bit more powerful slap that makes you gasp in shared pain and lust. After that he says 'I'm gonna fuck you now' and moves his hands to open up the button of his tented leather trousers. They're quickly pushed down his legs, revealing an impressively long and perfectly shaped hard cock, ready and at attention.";
		else:
			say "     Slap! Elijah hits one of your buttocks with his open hand, hard enough to sting a little. 'You've been a bad, bad pet' he says with a chuckle, groping your other cheek before giving it another admonishing slap. Feeling the sting of your master's displeasure on both of your buttcheeks, you beg for his forgiveness, declaring that you should have followed his wishes without delay. He gives you another, somewhat lighter slap on the butt, then says 'Good enough, for now' and moves his hands to open up the button of his tented leather trousers. They're quickly pushed down his legs, revealing an impressively long and perfectly shaped hard cock, ready and at attention.";
		WaitLineBreak;
		if cunts of player > 0: [female+herm]
			say "     Stepping up close to you, Elijah gropes your body, his soft caresses over your ass replacing the memory of slaps. Then suddenly, you feel his manhood touching your crotch - he rubs its shaft over your sensitive nether lips, making you pant in lust, then puts the head of his cock right between them, slightly nudging them apart. With a satisfied grunt, he thrusts forward into your dripping pussy, only stopping when his balls touch your crotch and he's all the way inside. Leaning forward, he kisses you hungrily while his hips pull back a bit, then pound into you again and again. Moaning directly into his mouth as Elijah fucks you hard and deep, you feel the silk sling give a little with each thrust, then snap back into its original position. A Sasquatch could fuck you in this thing and still wouldn't break it.";
			say "     Elijah takes great pleasure in dominating your tied-up form, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, [if cocks of player > 0]your own cock starts to throb as spurt after spurt of cum jet from its tip, splattering your naked chest with your own seed[else]you come, gushing femcum all around his hard shaft to run and drip down onto the silken sling under you[end if]. 'Did you get off from me fucking you, pet?' Elijah says, then gets back into fucking you hot and hard without waiting for an answer. He soon speeds up a bit more as his own orgasm approaches. It's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum directly into your womb.[fimpregchance]";
			WaitLineBreak;
			say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole. There is a content look on his face and he says 'I need to bring you here more often' with a smile, followed by 'Time to clean up.' After loosening your restraints, he then has you clean up the room - naked as you are - licking up the cum from where it leaked onto the sling and dripped on the smooth hardwood floor. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
		else: [male+neuter]
			say "     Stepping up close to you, Elijah gropes your body, his soft caresses over your ass replacing the memory of slaps. Then suddenly, you feel his manhood touching your crack - he rubs its shaft up and down between your cheeks, making you pant in lust, then puts the head of his cock right against your pucker, playfully pushing against it. A moment later, he thrusts forward with a satisfied grunt, invading your tight asshole and only stopping when his balls touch your ass and he's all the way inside. Leaning forward, he kisses you hungrily while his hips pull back a bit, then pound into you again and again. Moaning directly into his mouth as Elijah fucks you hard and deep, you feel the silk sling give a little with each thrust, then snap back into its original position. A Sasquatch could fuck you in this thing and still wouldn't break it.";
			say "     Elijah takes great pleasure in dominating your tied-up form, his cock twitching every time you give him an involuntary moan after one of his sudden thrusts. Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, Soon this stimulation overwhelms your ability to hold back and as he bottoms out inside you again, your [if cocks of player > 0]own cock starts to throb as spurt after spurt of cum jet from its tip, splattering your naked chest with your own seed[else]whole body starts to tremble and shake in an amazing orgasm[end if]. 'Did you get off from me fucking you, pet?' Elijah says, then gets back into fucking you hot and hard without waiting for an answer. He soon speeds up a bit more as his own orgasm approaches. It's not too much longer until he pushes all of his shaft into you one last time and gives a satisfied grunt as he shoots a big load of cum deep inside your asshole.[mimpregchance]";
			WaitLineBreak;
			say "     Elijah stays inside you for a while, just letting his slowly softening shaft rest in your hole. There is a content look on his face and he says 'I need to bring you here more often' with a smile, followed by 'Time to clean up.' After loosening your restraints, he then has you clean up the room - naked as you are - licking up the cum from where it leaked onto the sling and dripped on the smooth hardwood floor. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
	decrease humanity of player by 3; [Additional humanity decrease from evil Elijah]
	now libido of player is ( libido of player / 2 );

to say ElijahSex14: [double penetration with Elijah and Zephias]
	say "     Feeling your submissive urges overtaking you, you approach Elijah, your head demurely lowered as you come close to him. The fallen angel gives a quick laugh as he sees you, saying 'Itching for a fuck again, pet? You little slut... come on.' He starts walking up the stairs and into the library, not even looking back once to see if you're actually following him - but then, he doesn't have to, as you know your place and revel in submitting to such a handsome male's orders. Guiding you out of the library and onto the streets outside, Elijah takes you along the same route as last time, the two of you arriving at the large townhouse he took as his lair before much longer. After unlocking the front door and ushering you inside, he and you are just on the stairs to go to up to the bedroom - when suddenly a loud knock echoes from the front door.";
	say "     Curious who this might be, Elijah goes to the door and pulls the decorative curtain in front of the small windows next to the door aside. Then he pulls the door open, to reveal Zephias the spidertaur standing there. The hybrid creature says 'Hello Elijah. By chance, I saw you come down the street and... just wanted to say hello. Everything ok with your setup in the bedroom? I could check the threads again, just to be sure.' He manages to say that with a pretty nonchalant tone, though it's still rather obvious why he's here really here. Zephias has a rather lusty stare in your direction and the chitin plates at his crotch are pulled apart to reveal his half-hard cock. Elijah steps up to the large taur with the decorated carapace, then takes hold oh his shaft and strokes it as he says 'So you want another go at my pet? Sure, come on in. Let's talk about what it'll cost you.' With that, he sends you ahead to the bedroom upstairs, where you're joined by the two of them a few minutes later.";
	WaitLineBreak;
	say "     Sitting down at the foot-end of the four-poster bed, Elijah orders you to 'Strip - and make it a nice show'. You comply immediately, doing a little dance in which stretch and flex as you pull off your clothes piece by piece, showing off your body for the enjoyment of the dark angel and his guest. And it obviously has quite an effect on them, judging from the bulge growing in Elijah's tight leather pants and Zephias by now rock hard erection. The command 'Take off my pants - now!' follows after you've pranced around in front of them in all your naked glory for a while. Kneeling down in front of the sitting Elijah, you open up the button and zipper of the leather pants and are treated with the mouth-watering shape of his perfect cock standing erect up right in front of your face. Next, you slide your hands around to his butt, stroking the angel's tightly muscled buns as you pull the pants down over them and off his legs.";
	say "     Taking hold of your head, Elijah pulls you closer to his crotch and you readily open your mouth to slide it over his perfect shaft and start sucking him off. Meanwhile, you see Zephias' black and green front legs from the corner of your eye as the large creature moves closer - followed by the touch of his hands on your back. As you bob up and down on Elijah's manhood, the spidertaur's hands move down to your butt, caressing your cheeks and pulling them apart. Then you hear a plasticky clicking sound - as you learn a moment later, from the cap on the bottle of lube Zephias always has in a holster on of his front legs. The spidertaur's slippery fingers move in circles around your pucker, brush over it, then push in and enter you, stroking your insides and stretching them bit by bit as he adds one digit, then after a while another.";
	WaitLineBreak;
	if cunts of player > 0: [female+herm]
		say "     You blow your master and are fondled a while longer, then Elijah pulls you up with his hands on your head. 'Time to mount up, pet. Join me on the bed' he says, then moves a bit further up, lying down on the bed on his back, his black wings stretched out to the sides, covering most of it and standing out at the sides. Eyes riveted to the dominant angel's erect pole, you stand up and climb on the bed, moving in to kneel over his crotch, legs left and right of his hips. He reaches down to hold his cock straight up for you and you lower yourself on it, moaning loudly as the tip pushes apart your nether lips and his hard shaft enters you. You keep going until you have all of him inside you and can feel his balls against your crotch, then lean forward, rocking back and forth on his cock. Elijah lets you fuck yourself for a second, then grabs your hips and thrusts upwards, burying his shaft in your pussy, pulling back and pounding into you again and again.";
		say "     Getting thoroughly fucked in the cowgirl position, your mind is in a lustful haze for you don't know how long, as you only concentrate on the feelings of Elijah moving inside you and you fill the whole room with your loud moans and gasps. Then, you suddenly feel... something changing - the mattress being pushed down, you think - but as you start turning your head to check it out, Elijah grabs you firmly behind the neck and pulls you down on him in a kiss. Eagerly making out with him, your tongues wrestling with another, you forget all about what's behind you - until you feel a nudge against your pucker, followed by a more forceful push as Zephias thrusts his manhood into you. Your eyes flying open at the sudden invasion, you now see the spidertaur's front legs resting on the bed to your left and right.";
		WaitLineBreak;
		say "     Having been somewhat in the grip of your arousal before, now you completely get lost in it as the two of them start moving in concert, one thrusting in as the other pulls out, bombarding you with the constant feeling of having one of them inside you. It doesn't take all that much longer until this double-fuck drives you over the edge, femcum squirting out of your pussy to drip down on Elijah [if cocks of player > 0]and cum shooting from your own cock [end if]as you orgasm. Zephias is the next to go, soon afterwards giving one last powerful thrust into your ass, his balls starting to pulsate as they unload blast after blast of his seed deep into your tight hole. Then, just moments later, Elijah groans 'Take my cum in your pussy, you little slut!', the head of his perfect cock right against your cervix and shooting long strings of his fertile cum directly into your womb.";
		setmonster "Spidertaur";
		choose row monster from the table of random critters;
		say "[mimpregchance]";
		setmonster "Seraphim";
		choose row monster from the table of random critters;
		say "[fimpregchance]";
		say "     Still breathing heavily, Elijah wraps his arms around you and holds you in position while Zephias moves around behind you. You can feel his hands on your butt again, groping your asscheeks and holding them apart, then something soft and wet touches you back there - his tongue. The spidertaur proceeds to eat you out, his tongue licking up what cum has run out of you, then wiggling around in your hole. After eating most of his own load out of you, he puts his mouth against your left bun, leaving a somewhat painful hickey there to mark you before he scuttles away from the bed and out of the room, his legs clicking on the hardwood floor.";
		WaitLineBreak;
		say "     Elijah stays inside you until his cock softens and slips out on its own, then gives a content sigh, tapping your shoulders to make you get off him. 'You're a very nice pet, my little submissive slut. Earning me quite a bit from our spidertaur friend.' the dark angel tells you, then continues with 'Now clean up everything.' He has you lick off the cum remaining on his manhood [if cocks of player > 0]and your own cum off his chest [end if], then make the bed with fresh linen and throw out the old into a rubbish bin out on the street - naked as you are, showing off your freshly fucked body to anyone who might be watching. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
	else: [male+neuter]
		say "     You blow your master and are fondled a while longer, then Elijah pulls you up with his hands on your head. 'Time to mount up, pet. Join me on the bed' he says, then moves a bit further up, lying down on the bed on his back, his black wings stretched out to the sides, covering most of it and standing out at the sides. Eyes riveted to the dominant angel's erect pole, you stand up and climb on the bed, moving in to kneel over his crotch, legs left and right of his hips. He reaches down to hold his cock straight up for you and you lower yourself on it, moaning loudly as the tip pushes apart your pucker and his hard shaft enters you. You keep going until you have all of him inside you and can feel his balls against your butt, then lean forward, rocking back and forth on his cock. Elijah lets you fuck yourself for a second, then grabs your hips and thrusts upwards, making his balls hit your cheeks with a nice little slap. With that, he starts fucking you hard and fast, pulling back and pounding into you again and again.";
		say "     Getting thoroughly fucked in the cowgirl position, your mind is in a lustful haze for you don't know how long, as you only concentrate on the feelings of Elijah moving inside you and you fill the whole room with your loud moans and gasps. Then, you suddenly feel... something changing - the mattress being pushed down, you think - but as you start turning your head to check it out, Elijah grabs you firmly behind the neck and pulls you down on him in a kiss. Eagerly making out with him, your tongues wrestling with another, you forget all about what's behind you - until you feel a nudge against your pucker, right beside Elijah's shaft. With a somewhat forceful push, Zephias thrusts his manhood into you at the same time as Elijah. Thank god he thoroughly stretched you before and lubed his shaft really well too. Your eyes flying open at the sudden double penetration, you now see the spidertaur's front legs resting on the bed to your left and right.";
		WaitLineBreak;
		say "     Having been somewhat in the grip of your arousal before, now you completely get lost in it as the two of them start moving in concert, one thrusting in as the other pulls out, bombarding you with the constant feeling of having one of them move inside you. Sometimes they also thrust in at the same time again, stretching you out quite a bit and making you gasp at the powerful feeling of fullness. It doesn't take all that much longer until this double-penetration fuck drives you over the edge, [if cocks of player > 0]long strings of cum shooting from your own cock and painting Elijah's chest in white streaks[else]a tingling feeling of satisfaction running through your whole body[end if]. With your asshole twitching around the two males fucking you and their cocks rubbing against each other, it's hard to say which of them is next to go, as they come either at the same time or the pulsing of one of their hard shafts drives the other over the edge too. Blast after blast of both men's seed shoot deep into your stretched hole, so much that it squirts out around their two cocks.";
		if a random chance of 1 in 2 succeeds:
			setmonster "Spidertaur";
			choose row monster from the table of random critters;
			say "[mimpregchance]";
			setmonster "Seraphim";
			choose row monster from the table of random critters;
			say "[mimpregchance]";
		else:
			setmonster "Seraphim";
			choose row monster from the table of random critters;
			say "[mimpregchance]";
			setmonster "Spidertaur";
			choose row monster from the table of random critters;
			say "[mimpregchance]";
		say "     Still breathing heavily, Elijah wraps his arms around you and holds you in position while Zephias pulls out of you and moves around behind you. You can feel his hands on your butt again, groping your asscheeks and holding them apart, then something soft and wet touches you back there - his tongue. The spidertaur proceeds to eat you out, his tongue licking up what cum has run out of you from Elijah's shaft, then wiggling around and into in your hole beside the angel's slowly softening erection. After eating all of the cum dripping out of you, he puts his mouth against your left bun, leaving a somewhat painful hickey there to mark you before he scuttles away from the bed and out of the room, his legs clicking on the hardwood floor.";
		WaitLineBreak;
		say "     Elijah stays inside you until his cock completely softens and slips out on its own, then gives a content sigh, tapping your shoulders to make you get off him. 'You're a very nice pet, my little submissive slut. Earning me quite a bit from our spidertaur friend.' the dark angel tells you, then continues with 'Now clean up everything.' He has you lick off the cum remaining on his manhood [if cocks of player > 0]and your own cum off his chest [end if], then make the bed with fresh linen and throw out the old into a rubbish bin out on the street - naked as you are, showing off your freshly fucked body to anyone who might be watching. Only when you've done this to his satisfaction does he allow you to dress and leads you back to the library.";
	decrease humanity of player by 3; [Additional humanity decrease from evil Elijah]
	now libido of player is ( libido of player / 2 );

to say ElijahSex15:
	setmonster "Demon Brute";
	choose row monster from the table of random critters;
	say "     Eager to let Elijah dominate you again, you quickly strip, then [if companion of player is demon brute]wave Brutus closer[else]use your demontooth amulet to summon Brutus[end if]. The two of you walk up to Elijah, naked as you are, and present yourself for his pleasure. A wide grin spreads on the fallen angel's face as he watches you approach and when you come to stand before him, he says 'That's a fine pet. Couldn't take it any longer without feeling my cock? Good, good. Now then... the two of you, kneel for me.' You and Brutus quickly get down on the floor, slumped at Elijah's feet. Looking up, you can see unholy pleasure at his dominance dance in the dark angel's eyes, and a grin on his face as he opens the button of his pants and pushes them down over his hips. With him not even wearing underwear, you're directly presented with a long and inhumanly perfect cock, dangling half-hard under a small bush of black pubic hair. Grabbing Brutus by the horns to pull his head level with yours, Elijah stands close before the two of you, jerking himself to full hardness in short order.";
	say "     Elijah rubs his erection in Brutus face, softly swatting it against his forehead and smearing a drop of pre-cum over his cheek, then he proclaims, 'Such a little lapdog of a demon! Beg me to use your body and make use of you. It's so much fun to hear you grovel.' There is a small snarl from Brutus, but bound as he is, through the amulet to you and through you to the dark angel, he has no choice but to follow Elijah's demands. He calls on his new master to use and abuse him, fuck him and spank him - everything that the fallen angel lays out for him to repeat. As the last rumbling words fill the bunker, Elijah chuckles, 'Let's start with some oral,' before pushing his erection into the demon's mouth.";
	WaitLineBreak;
	say "     Brutus purses his lips to keep Elijah's manhood away from his sharp teeth and does his best to accommodate this new master's desires. He even snakes out his long tongue to lap at the fallen angel's balls as he fucks his face, holding on to the demon's two front horns to really pound into him. Kneeling next to them, you watch excitedly as your demon companion is used a submissive sex toy, just like you want to be. Though as much fun as it is to have a ringside seat for that, your heart starts racing as Elijah's domineering voice calls out, 'Hey you subby slut - why don't you wrap those pretty little lips of yours around his cock. You're gonna want to really get it wet...' Instantly falling on your knees, you take hold of Brutus massive erection with both hands and put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your demonic companion's cock, you slowly run your tongue up its underside, making him moan and mumble around Elijah's rod in his mouth. You take the head of Brutus cock into your own mouth, barely able to fit your lips around it, then start suckling and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
	say "     After some pleasurable moments of nothing but slurping sounds and moans filling the bunker, Elijah pulls his cock out of Brutus mouth with a wet pop and orders his two playtoys to stand up, which you and Brutus quickly do, obedient as ever. The dark angel looks at your naked bodies with a superior smirk on his face, then barks at you, 'On all fours on the bed, now! You're really gonna get it now.' Turning to Brutus, he adds in an evil chuckle, 'Since you were so intent on protecting your precious master before, you'll fuck him now - roughly. Fuck him hard and deep! Pound that ass till he can't sit on it for a day!' As you get on the bed and take position, you hear a displeased rumble from Brutus behind you, followed a moment later by a, 'Yes, master.' Then you feel the muscled bulk of the demon lean over you, one hand sliding around you from behind to hold and caress your chest. He kisses your neck and snakes his long tongue down to tickle your earlobe, mumbling under his breath, 'I'll try to be gentle - please play up your gasps a bit.'";
	WaitLineBreak;
	say "     There is a loud slapping noise as Elijah's hand hits Brutus butt and the dark angel taunts, 'Get on with it! Less cuddling, more fucking!' With a grunt that mixes eagerness with a certain reluctance, the demon raises up to stand straight again, moving his hips tight against you and gripping your cheeks with both clawed hands. You can feel the warmth of his erection rest against your back, leaking a steady stream of pre-cum, which is then wiped off by Brutus and smeared over your pucker. Then he takes hold of his massive erection and sets it against your opening, slowly increasing its pressure against your asshole until the head pushes open your pucker, stretching it wide as he enters your body with his hard shaft.";
	say "     It's big - very big, making you gasp from the initial penetration. Then, as it sinks deeper into your body, pleasant feelings prevail as the bumps on his shaft rub your inner walls. But even so, you can't help but wince a few times as he moves deeper and deeper, much to the unholy delight of the watching Elijah. Thankfully, he seems to be satisfied with this show, and with you adding in a number of false pained gasps to keep the angel entertained, Brutus can move relatively slowly, which allows you to get used to the girthy member. Then finally, he bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin. A moment later, Brutus hand strokes down your back in a slow caress, then he softly takes hold of your shoulders and starts to fuck you.";
	WaitLineBreak;
	say "     Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Then suddenly, Elijah's voice cuts into your pleasant buzz by saying, 'You're a bit slow and dainty in your thrusts, demon... but I think I know what might motivate you.' Raising your head, you see the dark angel stand close by, one hand on his hard cock and stroking it with quick jerks. He then walks around the bed, getting behind you and Brutus, then pulls up the demon's tail to bare his asshole. Not bothering with any more preparation than letting a gob of spit drip down on his shaft and spreading its wetness over it, Elijah jabs his manhood into Brutus rear passage an instant later, driving it in with a hard thrust. Your demon companion bellows at the sudden invasion and for a second his claws tighten and threaten to slice you, then he forces himself to relax again.";
	say "     With Elijah now starting to fuck Brutus['] ass with forceful and deep thrusts, the demon brute's own cock is pushed into you with increased temp too. Thankfully, the relatively slow and gentle fucking up till now allowed your muscles to get used to being stretched out, as well as leaving quite a bit of his precum to leak into you and lube you up. Therefore, you don't have too many problems with the uptake and simply pant and moan as the going gets faster and faster and slapping noises of your little fuck-train fill the bunker. Totally entranced by getting shafted so deep and good, you barely hear Elijah's jeers and taunts at being the master of both you and the demon.";
	WaitLineBreak;
	say "     Soon, the sensations drive your arousal over the edge and with a loud moan, your [cock of player] shaft sprays cum all over the bed. Your twitching and flexing hole around Brutus shaft quickly pushes the demon to reach his own climax, giving something like a very deep purr as he does so, his pleasure at serving his master quite obvious. With a loud grunt, he begins to pump your bowels full of his seed, easily filling your asshole and intestines. The remaining cum starts squirting out around the demon's thick cock as he thrusts into you a few more times, creating hot squishing noises and making the warm goop run down the inside of your legs. As he finally removes his cock with a loud *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your hole to create a large wet spot on the bed.[mimpregchance]";
	say "     Shoving against Brutus and even managing to push the exhausted demon brute to fall into the bed with you, Elijah steps up on the mattress himself, hand flashing rapidly up and down his shaft as he jerks himself off. It's not long at all before the dark angel reaches the point of no return, aiming his cock alternatively at Brutus and your face as he sends spurt after spurt of his seed flying to splat down on you. Soon you and your demon companion's faces are wet with cum, which makes Elijah laugh darkly and say, 'Yeah, that's a good look for you. Two submissive cum-sluts for me to enjoy. Go on, lick it off each other - you know you want to.' And indeed you do - or at least Brutus does, as his long tongue quickly snakes out to start lapping at your face. You quickly join him at cleaning each other up, licking Elijah's still warm cum off the demon brute's face, which quickly leads over to the two of you making out, kissing and caressing each other. Not too interested in watching that, Elijah steps off the bed and walks away to clean himself up, with a noticeable spring in his step.";

to say ElijahSex16: [Brutus and player dominate Elijah]
	say "     Deciding that you want another round of dominating Elijah, you [if companion of player is demon brute]wave Brutus closer[else]use your demontooth amulet to summon Brutus[end if], then ask him to grab Elijah for you. His massive cock already getting hard as he thinks back to last time, Brutus quickly moves forward to where Elijah is just crouched down, sorting through some of his gear and grabs him by the shoulder and hip. Elijah only has time to say, 'Oh fuuuuckKK,' as your demonic companion lifts him off his feet to casually throw him on the bed, landing face-first on the crumpled blankets. Brutus is on top of him in a second and hooks one of his sharp claws under the waistband of Elijah's tight pants, effortlessly slicing the black leather apart and pulling the shreds aside to bare his shapely butt. Elijah starts to raise himself up from the bed on all fours and grumbles 'Those were designer pants, you bastard!' - only to find himself pressed back down by the demon's large hand on his back. The start of further grousing by the angel is replaced by a breathless gasp a moment later, when Brutus bends his head down to lick Elijah's asshole. He laps up and down between the firm, perfectly shaped cheeks of the fallen angel's butt, then seeks out the pucker with his long, forked tongue and wiggles its tips in. Getting his ass eaten out, expertly and oh so deeply, with Brutus long appendage lapping over his prostate, Elijah can't help but moan aloud, his hands gripping the sheets tightly as he writhes in pleasure.";
	say "     Brutus gives his now all too willing partner quite a bit of attention to ensure he's well-relaxed and ready, then eventually raises his head up from its position between Elijah's cheeks again and looks down on the angel's pale and perfect body, a lusty rumble in his chest. Moving into position to kneel behind him, Brutus spreads Elijah's cheeks with two large hands, then moves his hips to brush the massive erection between his legs up and down the angel's crack. In a deep voice full of lust and need, the demon says, 'I'm gonna fuck you. Now. Hard.' As wound-up as he is right now, Elijah just moans at that announcement, head pressed against the soft sheets and bare butt raised invitingly for the demon. He even spreads his legs a bit more and gives a little wiggle, proving that even though this might now have been his preferred outcome, he's far too much of a horndog to refuse any hot, sweaty sex.";
	WaitLineBreak;
	say "     Finally, Brutus takes his thick cock in hand and aims it right at Elijah's back door, then moves forward, slowly increasing the pressure against the angel's asshole until the cockhead pushes open his pucker, stretching it wide as he enters the Elijah's body with his hard shaft. Knowing how big your infernal companion's manhood his, you're not surprised at all to hear Elijah wince from the initial penetration and bite into the blanket on the bed. But then, as the massive cock sinks deeper into his body, pleasant feelings prevail as the bumps on Brutus['] shaft rub his inner walls. Even as relaxed as his muscles got during the thorough eating out the demon gave him it's still quite a lot to take. Thankfully, Brutus seems to know what very well, only slowly moving deeper and often stopping to allow Elijah the time to get used to it. Finally he bottoms out inside the dark angel, hard shaft buried all the way and his two large cum-factories resting against his skin.";
	say "     There is a lull in the action as the two hot males just hold still and bask in the feelings of such an intimate connection of their bodies, allowing you to remember your own carnal needs. Elijah had you going pretty well when Brutus... interrupted him, and with the hot show right in front of your eyes, you're horny as ever. Deciding that you want a piece of the angel too, you get on the bed in front of Elijah, then take hold of his long black hair and pull his head up against your crotch. Finding himself presented with your erect manhood, just inches in front of his face, he just goes with the flow and slides his sensuously soft lips over your cockhead. As Elijah starts to give you a pretty amazing blowjob, Brutus takes up fucking his ass in earnest now, slowly pulling his shaft out, then thrusting it back in.";
	WaitLineBreak;
	say "     Spit-roasted between Brutus and yourself, Elijah takes the face-fuck and ass-fuck like a pro, moaning around your hard shaft and dripping precum on the mattress between his legs. He even rocks back and forth to meet each of Brutus thrusts, eager to take the massive shaft deeper and deeper. With the three of you engaged in such a wild threesome, it is not that much longer before Brutus reaches his peak. Giving Elijah's hips some shallow claw-marks as he holds on tightly, Brutus hilts himself fully in the angel's shapely ass and growls loudly, releasing his infernal load. Excited by the sight of the large creature trembling with each blast of cum deep into Elijah, it's only a few last thrusts before you're emptying your own balls into the angel's mouth, coating his tongue in [cum load size of player] creamy-white seed. Being filled at both ends is too much for the angel and in short order, he cums as well, creating a sticky mess of cum all over the sheets under him.";
	say "     Phew, that was fun. After waiting a moment to let your orgasms ebb out, Brutus and you pull free. Leaving the freshly fucked and sticky man to clean himself up later, you grab your gear and clothes, then just walk away, accompanied by Brutus.";

to say de-demonify:
	if bodyname of player is listed in infections of hellspawn or bodyname of player is "Hellhound":
		now bodyname of player is "human";
		now body of player is "charmingly human";
	if skinname of player is listed in infections of hellspawn or skinname of player is "Hellhound":
		now skinname of player is "human";
		now skin of player is "smooth";
	if cockname of player is listed in infections of hellspawn or cockname of player is "Hellhound":
		now cockname of player is "human";
		now cock of player is "";
	if facename of player is listed in infections of hellspawn or facename of player is "Hellhound":
		now facename of player is "human";
		now face of player is "charmingly human";
	if tailname of player is listed in infections of hellspawn or tailname of player is "Hellhound":
		now tailname of player is "human";
		now tail of player is "";
	now scalevalue of player is 3;
	now bodydesc of player is "[one of]average[or]normal[or]unchanged[at random]";
	now bodytype of player is "human";
	now daycycle of player is 0;
	if isHellhound is true:
		say "     Elijah sags onto his bunk with a sad, exhausted sigh, looking pale and tired. 'I tried, my friend, but I do not have the strength to break the pact you entered into with that fel beast. I wish I could help you further, but it is beyond my abilities now. Your reprieve from the effects of the curse will be brief. You shall have to seek proper absolution from your dark choice elsewhere.";


Section 6 - Losing to the Demons at the Church

to say losetochurchdemons:
	say "     As you fall to your knees under the last attack, the mob howls in laughter at your failed attempt of saving their prisoner. An incubus and succubus step up beside you, grabbing your arms and pull you away from the angel leaning semi-consciously against the cross. The incubus snakes his long tail around your neck, saying 'Pathetic little do-good-er trying to make off with out prize! Now you'll have to watch him lose his virginity and be powerless to stop us!'";
	say "     You're pulled to the side of the chapel, making room for a whole group of incubi and succubi and a large demon brute who parade around the altar. They peel off the angel's ripped tunic and try to shake him awake. The members of the mob lewdly fondle his body and cock, but don't have much luck getting either consciousness or arousal out of him. Switching to another tactic, a succubus grabs the dented silver chalice of the chapel from the ground and holds it up for her male brethren, becoming the center of a group of feverishly masturbating demons. Soon, the now cum-splattered succubus steps up to the angel, triumphantly raising the cup and pouring its contents into his mouth and over his body.";
	say "     It works as intended - the angel's cock fills out and hardens almost instantly, inducing a satisfied moans and chuckles from the demon mob. The succubus throws the chalice aside and moves over to sit on the altar, waving over to the demon brute to bring the angel. As she leans back and spreads her legs eagerly to receive some angel cock, the large demon brute impales their semi-conscious captive on his massive erection, then carries him over to her. With the help of many grabby hands, the angel's cock gets aligned with the succubus's cunt. Then the demon brute thrusts forward, moving the angel's hips too and sinking his virgin manhood into the damning embrace of her folds. Lustful moans and roars get louder and louder as they start fucking hard and deep with their angel cock-sleeve between them. The demon mob closes in around the altar area, jostling for better positions.";
	say "     The two demons holding you look almost spellbound at the action around the altar, then suddenly realize they're still holding you and not taking part themselves. You're quickly and unceremoniously dumped outside the chapel, its doors slammed shut behind you as the demons rush to join the orgy.";
	LineBreak;
	say "     You don't think you'll see that angel ever again after this, as the demons are very likely gonna take him home to hell with them, to use and abuse for all eternity.";
	now hp of Elijah is 100;
	remove Elijah from play;

to say fledfromchurchdemons:
	say "     Recognizing a lost fight, you just take your legs under your arms and run as fast as you can. You can only guess what happened after that to the angel you left behind with all the demons. Nothing good, you're sure...";
	now hp of Elijah is 100;
	remove Elijah from play;


Section 7 - Endings

when play ends:
	if bodyname of player is "Demon Slave":
		say ""; [dealt with in Skarnoth's file]
	else:
		if (Elijah is in the bunker) and (hp of Elijah is 99): [evil Elijah]
			if (humanity of player < 10):
				say "     When you succumb to your infection, Elijah keeps you with him in the bunker for a while, fucking you and making you suck his cock whenever he fancies. After a while, he gets bored with you and releases you out into the city. You see him a few times after that as he grabs one or two new playtoys for himself, and he even fucks you again as he runs into you out on the streets. He doesn't recognize you though, or he just doesn't care for anything but a mouth or hole to satisfy his lust in.";
			else:
				say "     When the soldiers come through the city to rescue you and the others, Elijah decides not to leave. He says he's got a good thing going there, with all of the shifted people out on the streets to fuck as he pleases or grab and keep as more long-term pets and fucktoys in the bunker.[if sarahslut is 4] Just like you did, he remarks with a nod over to Sarah.[end if]";
		else if (Elijah is in the bunker) and (hp of Elijah is 1 or hp of Elijah is 2): [still injured]
			if (humanity of player < 10):
				say "     When you succumb to your infection, you forget about the injured angel you left behind unconscious on a cot in the bunker. Luckily, divine emissaries are pretty tough, so he's still alive when a team of soldiers checks out the library bunker for sane survivors. You see him again one more time several weeks later, now garbed in military clothing and part of a team trying to pacify the ferals in the city. It is a close thing, but you manage to escape from them in the ruined streets.";
			else:
				say "     When the soldiers come through the city to rescue you and the others, the injured angel you have in the bunker is airlifted out on a helicopter. You don't see him again after that, but in the following weeks hear rumors about a powerful winged protector that joined the teams of soldiers trying to contain the feral outbreak in the city.";
		else if (Elijah is in the bunker) and (hp of Elijah is 3): [virgin angel]
			if (humanity of player < 10):
				say "     When you succumb to your infection, Elijah sets out and tries to heal you, grasping your head in both hands and praying for your sanity. He fails - you're just too far gone, with almost nothing of your former self remaining inside. With tears in his eyes, he lets you go. Devastated about his inability to save you, he becomes somewhat fanatic about containing the outbreak, patrolling the borders of the city day and night, stopping anyone with even the slightest hint of change from leaving.";
			else:
				say "     When the soldiers come through the city to rescue you and the others, you're all taken to a containment facility for medical evaluation and quarantine. Elijah calmly exclaims that he's not actually infected, but in his natural form and asks to speak to the nearest priest. The military chaplain who gets called in is pretty surprised about Elijah's status report, during which he absolves the angel after an earnest confession of having lost his flaming sword in the line of duty. Asked about a replacement, he has to admit that the army doesn't really have a supply of divine weaponry and quickly changes the topic to other ways Elijah might be helping them. Soon the angel is released from the holding facility and brought elsewhere, but not before thanking you again for saving him.";
				say "     You don't see that much of Elijah after that, but are told he joined the special unit responsible for containing the outbreak. That job keeps him too busy to visit, although he does send you letters and greeting cards for your birthday and Christmas every year, without fail.";
		else if (Elijah is in the bunker) and (hp of Elijah is 4): [human-like]
			if (humanity of player < 10):
				say "     When you succumb to your infection, Elijah is heartbroken about losing the friend and lover who helped him explore his newfound humanity. He sets out and tries to heal you, grasping your head in both hands and praying for your sanity - but fails. You're just too far gone, with almost nothing of your former self remaining inside. With tears in his eyes, he lets you go to live out your time in the city. Devastated about his inability to save you, he becomes somewhat fanatic about containing the outbreak, patrolling the borders of the city day and night, stopping anyone with even the slightest hint of change from leaving.";
			else:
				if bodyname of player is listed in the infections of hellspawn or bodyname of player is "Hellhound": [can't stand demons]
					say "     When the soldiers come through the city to rescue you and the others, you're all taken to a containment facility for medical evaluation and quarantine. Elijah calmly exclaims that he's not actually infected, but in his natural form and asks to speak to the nearest priest. The military chaplain who gets called in is pretty surprised about Elijah's status report, during which he absolves the angel after an earnest confession of having lost his flaming sword in the line of duty. Then Elijah pulls you to the side, explaining that he's thankful for you saving him and showing him the pleasant side of being almost human - but that he just can't bear the touch of your corrupted form. With a tear in his eye, he gives you a little goodbye wave and leaves with the chaplain. You don't see any more of Elijah after that, but are told he joined the special unit responsible for containing the outbreak.";
				else: [living together]
					say "     When the soldiers come through the city to rescue you and the others, you're all taken to a containment facility for medical evaluation and quarantine. Elijah calmly exclaims that he's not actually infected, but in his natural form and asks to speak to the nearest priest. The military chaplain who gets called in is pretty surprised about Elijah's status report, during which he absolves the angel after an earnest confession of having lost his flaming sword in the line of duty. Then Elijah requests a leave of absence, stating that in his weakened form he can't fight too well, vowing instead to do good in other ways.";
					say "     When you get released some time after that, Elijah goes with you and you live together as friends and lovers. He takes up a lot of charity work, helping out wherever he can.";
					if gryphoness is tamed: [Denise pet]
						say "     Elijah becomes great friends with Denise, happily sharing your house - and bed - with her. They're often soaring through the sky near your home together, doing aerial acrobatics that bring fans and spectators from the surrounding areas. With as much time as they're spending together, it doesn't surprise you much to see Denise lay an[if knowpreg of gryphoness > 0]other[end if] egg pretty soon, from which a beautiful little white gryphlet hatches. The proud couple gives her the name Lailah. Not much time later, Elijah can be seen shepherding [if knowpreg of gryphoness is 2]your own two gryphlets from Denise and [else if knowpreg of gryphoness is 1]your own gryphlet from Denise and [end if]his pretty daughter on flying lessons to show [if knowpreg of gryphoness > 0]them[else]her[end if] some tricks.";
					if sarahslut is 4: [Sarah pet]
						say "     While saddened that Sarah lost her humanity so completely, Elijah accepts that most of the blame lies with the husky who originally infected her. Content that you're at least a master who cares for her and fulfills the needs of her husky form, he settles into a comfortable routine with her, often taking her for long walks and always ready to give her some attention and pet her.";
					if hp of Sven > 7 and hp of Sven < 30: [Sven pet]
						say "     Living in the same household, Sven decides to make a sport of getting Elijah aroused whenever he wants. He often hangs around near the angel, stretching his snowmeow body and waving his tail invitingly - especially at inappropriate moments. There are quite a few dinner parties or situations with guests in the house when Elijah has to excuse himself to take care of a growing problem in his pants - mostly by filling a very eager Sven's ass with his angelic cock. You often use the opportunities to join them for a hot threesome when you see first Sven, then Elijah sneak off into the adjoining rooms.";
	[				else if hp of Sven >= 30 and hp of Sven < 50:
						say "***Ending add-on w/confident Sven.";]
					if felinoid companion is tamed: [felinoid pet]
						say "     Elijah proves to be immune to the changing influence of your felinoid companion, staying completely unaffected even though he is in the same house every day. He likes the big cat, never hesitating to give him a good scritch under the chin or behind the ears. Usually when Elijah sits on the sofa in the evenings the felinoid joins him - often ending up sprawled out on the sofa on his back, purring like an idling motor as Elijah strokes his belly fur.";

Elijah ends here.
