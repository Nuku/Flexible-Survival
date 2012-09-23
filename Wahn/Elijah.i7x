Version 2 of Elijah by Wahn begins here.
[Version 2: Reducing Memory Load caused by npcEint]
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


Section 1 - Meeting Event

Angel vs Demons is a situation. The level of Angel vs Demons is 10.
The sarea of Angel vs Demons is "Red";
when play begins:
	add Angel vs Demons to badspots of guy;       [Elijah is male]
	add Angel vs Demons to badspots of hellspawn; [demons everywhere - he might even become one]

Instead of resolving a Angel vs Demons:
	say "     While exploring this seedy district of town, you hear a terrible racket and disconcerting shrieks from inside an adult-only movie theatre you're just passing. Then suddenly a section of its front wall explodes outward as a creature gets thrown right through it, sending bricks flying all over the street. You catch a glimpse of its horned, demonic form sailing past, then everything goes black as a brick hits you in the head.";
	say "     [line break]";
	say "     When you open your eyes again a short while later, the street around you is a battlefield of shattered and burning buildings. Sitting up makes you go woozy again for a moment, then thankfully your vision clears. Center of the destruction surrounding you is a humanoid figure with large white wings, garbed in shimmering plate-mail and wielding a flaming sword. It is surrounded by a golden halo of energy, making it difficult to discern any more. Surrounding the apparition there is a mid-sized flock of demons, incubi, succubi and hellhounds. Several of them are hurt and you see ...pieces... of others on the ground, but they still hold a circle around the angel in their midst, waiting for the time to strike while dodging strikes of his sword.";
	say "     Your revival hasn't gone unnoticed and brings some movement into the standoff, as a hellhound turns towards you. It decides you might serve as a good mid-combat snack and rushes forward. You feel its foul breath as it opens its snout to tear out your throat - then, there is a flash of fire in the air and the creature collapses lifelessly on top of you, a flaming sword sticking in its side. The angel must have thrown it to save you.";
	say "     That was just the moment the other demons have waited for. They pile on top of the now disarmed angel, clawing and biting, and wrestle him to the ground. You're still busy wriggling out from under the dead hound when they carry him off towards a ruined chapel at the far end of the street.";
	say "     [line break]";
	say "     When you finally manage to get free a bit later, you're alone between the burning buildings. The flaming sword still sizzling in the flesh of the dead hellhound sadly isn't something you could use - it's all flame, even the grip. Looking down the street where the demons went, you see the Burned-Out Chapel they went into. You could follow them, if you think you're strong enough.";
	wait for any key;
	now Burned-Out Chapel is known;
	now lastElijahfucked is turns;    [to clarify: only using this for timing purposes here - he's still a virgin, they only hurt him and cum on him before the player gets to the chapel]
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

Burned-Out Chapel is a room. It is fasttravel. It is private. 
The description of Burned-Out Chapel is "[chapelplacedesc]";

instead of sniffing Burned-Out Chapel:
	say "The heavy scent of burned wood hangs in the room, mixed with a trace of blood and [if hp of Elijah is 100]the all-pervading stench of [end if]demonic cum.";

to say chapelplacedesc:
	if (hp of Elijah is 0):   [Starting state - Elijah chained up]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other than kindling. A winged humanoid is chained to the wooden cross standing behind a cracked altar. Surprisingly, there are no demons in sight.";
	if (hp of Elijah > 0) and (hp of Elijah < 100):   [Elijah rescued]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other kindling. Behind a cracked altar, you see a wooden cross with chains dangling down from it.";
	if (hp of Elijah is 100):   [after the demons had an orgy there]
		say "     This chapel has had a fire recently, severely damaging its roof and interior. The walls are blackened with soot and there isn't much left of the benches other kindling. Behind a cracked altar, there is a horrible sticky mess of ash and demonic cum.";


Section 2 - Elijah the Seraphim

[Smells, Description, Conversation]

Elijah is a man.  Elijah is in Burned-Out Chapel.  The hp of Elijah is normally 0.
The description of Elijah is "[Elijahdesc]";
The conversation of Elijah is { "Mew!" }.
lastElijahfucked is a number that varies.  lastElijahfucked is normally 555.
NPCintCounter is a number that varies.  NPCintCounter is normally 555.
npcEint is an indexed text that varies. npcEint is normally "0000000000000N";	[SAVING]
Elijah has a text called Char-A.  Char-A of Elijah is normally "0";	[Candy]
Elijah has a text called Char-B.  Char-B of Elijah is normally "0";	[Sarah]
Elijah has a text called Char-C.  Char-C of Elijah is normally "0";	[Sven]
Elijah has a text called Char-D.  Char-D of Elijah is normally "0";	[Felinoid]
Elijah has a text called Char-E.  Char-E of Elijah is normally "0";	[Helper Dog]
Elijah has a text called Char-F.  Char-F of Elijah is normally "0";	[Little Fox]
Elijah has a text called Char-G.  Char-G of Elijah is normally "0";	[Gryphoness]
Elijah has a text called Char-H.  Char-H of Elijah is normally "0";	[Cute Crab]
Elijah has a text called Char-I.  Char-I of Elijah is normally "0";	[Fang]
Elijah has a text called Char-J.  Char-J of Elijah is normally "0";	[Honey]
Elijah has a text called Char-K.  Char-K of Elijah is normally "0";	[unassigned]
Elijah has a text called Char-L.  Char-L of Elijah is normally "0";	[unassigned]
Elijah has a text called Char-M.  Char-M of Elijah is normally "0";	[unassigned]
honeygiven is a truth state that varies.  honeygiven is normally false.

instead of sniffing Elijah:
	if hp of Elijah is 0:   [chained up in the chapel]
		say "The angel smells of blood and demonic cum.";
	if (hp of Elijah is 1) or (hp of Elijah is 2):   [wounded + unconscious in the bunker]
		say "The injured angel smells of slightly of blood.";
	if (hp of Elijah > 2) and (hp of Elijah < 99):   [virgin + good Elijah]
		say "Elijah is surrounded by the faint smell of sandalwood.";
	if (hp of Elijah is 99):   [evil Elijah]
		say "The stench of brimstone and sulfur hangs in the air around Elijah.";

to say elijahdesc:
	if (hp of Elijah is 0):   [chained up in the chapel]
		say "     The angel has had his armor ripped away and his white tunic is thorn, bloodstained and splattered with cum-stains. Even his once bright halo has suffered, now a pale flickering shadow of its former glory. He looks young, with an unlined face and long golden-blond hair. At the moment, his arms are chained to a wooden cross, the chains being the only thing holding him upwards as he drifts in and out of consciousness. His wings hang limply from his shoulders.";
	if (hp of Elijah is 1) or (hp of Elijah is 2):   [wounded + unconscious in the bunker]
		say "     The angel is tall and well-built, looking an early 20 years old. His unlined, very pretty face is framed by long strands of golden blond hair. At the moment, he's spending most of his time asleep on a bunk in the bunker, opening his azure eyes only rarely to look around tiredly and a bit confused. His large white wings poke out from under the sheet, reaching almost to the next bunk in line.";
	if (hp of Elijah is 3):   [virgin Elijah]
		say "     Elijah is tall and well-built, looking an early 20 years old. His unlined, very pretty face is framed by long strands of golden blond hair. At the moment, he's spending most of his time sitting quietly on his bunk, hands folded in prayer and observing his surroundings with azure eyes. He's garbed in a simple tunic of shining white fabric - where did that come from, you wonder. His large white wings are folded together behind his back.";
	if (hp of Elijah is 4):   [good Elijah]
		say "     Elijah is tall and well-built, looking an early 20 years old. He has an unlined, very pretty face with azure eyes, crowned by an impressive mohawk of golden blond hair. Lately, he's often up and about, strolling out into the library and the nearer city blocks or having a look around from the air. He's taken up wearing a pair of tight jeans and military boots he found somewhere, leaving his chest bare and showing off some handsomely sculpted abs. His large white wings are folded together behind his back, but tend to spread out a bit and move animatedly when he's talking to you.";
	if (hp of Elijah is 99):   [evil Elijah]
		say "     Elijah's form holds a terrible beauty that makes you shiver inside. His body is tall and well-built, looking an early 20 years old. He has an unlined, pretty face with glowing red eyes and a superior smirk, framed by long strands of night-black hair. He's taken up wearing tight leather pants and leather bracers with spikes on the side, leaving his chest bare and showing off some handsomely sculpted abs. Large, black-feathered wings are folded together behind his back.";
	if (hp of Elijah is 100):
		say "ERROR-Elijah-3C: He should be in hell by now! Please report what you did to see this.";
	if (hp of Elijah > 4) and (hp of Elijah < 99):
		say "ERROR-Elijah-1A: Wrong hp setting for Elijah! Please report what you did to see this.";

instead of conversing the Elijah:
	if (hp of Elijah is 0):   [chained up in the chapel]
		say "     The angel isn't really in the shape to communicate much right now. He's drifting in and out of consciousness, and there was only a short moment when his eyes were open and focusing, giving you a pleading look. Do you want to try to free him?[line break]";
		if the player consents:   [freeing him - should lead to a demon orgy scene (see section 4) if you get beaten]
			say "     The chains are too sturdy for you to break or damage, but luckily you find the key for the manacles not too far away - lying in a puddle of caustic hellhound urine. Dragging it out with a piece of wood (that immediately starts smoking), you wipe it off with a shred of the altar-cloth and take it. Then you unlock the shackles holding the angel, carefully supporting him so he doesn't fall down.";
			say "     You manage that well, but don't have another hand free to take hold of the chain, so it noisily clatters against the wall and other chains as it falls away from the angel's arm. Oh-oh, you hear some growls, then spot glowing red eyes open up in the darkness behind several doorways on the sides of the chapel.";
			if girl is banned:
				say "     Leading the mob of demons rushing at you is a incubus.  Its normally handsome face is distorted into one of demonic anger with twisted features, sharp teeth and burning eyes as it cries out.  'That's our prize, you thieving mortal.  When I'm done with you, you'll be begging for the hellhounds to take you!";
				challenge "Incubus";
			otherwise:
				say "     Leading the mob of demons rushing at you is a busty succubus, who shrieks angrily.  'He's ours, you little thief.  You'll become a bitch in the hellhound kennels for trying to steal him!'";
				challenge "Succubus";
			if lost is 1:
				say "[losetochurchdemons]";
			otherwise:
				if girl is banned:
					say "     The defeated incubus is driven away, fleeing through one of the doorways.  That's one down - instantly replaced by another snarling incubus lunging at you.";
				otherwise:
					say "     The succubus shrieks in pain, falling back from you and fleeing through one of the doorways. That's one down - instantly replaced by a snarling incubus lunging at you.";
				challenge "Incubus";
				if lost is 1:
					say "[losetochurchdemons]";
				otherwise:
					say "     As the incubus falls down beaten and is pulled away by one of his brethren, the other demons take a step back, not wanting to be the next one to take you on. All except one that is - a massive brutish beast who roars at you in fury.  He pushes the others aside and comes at you.";
					challenge "Demon Brute";
					if lost is 1:
						say "[losetochurchdemons]";
					otherwise:
						say "     When the demon beast collapses in front of you, the rest of the mob decide to abandon the fight, leading to a mad rush away from you on wing and foot. Now let's get out of here before they change their minds or braver individuals arrive. Pulling the angel's arm over your shoulder, you lead him away as quickly as possible. When you're half a block distant, you hear an infuriated roar from the chapel.  This is followed by a harsh, growling voice yelling 'Find them, you sniveling cowards or I'll flay the skin off the lot of you!' You dodge behind a dumpster and watch demon search parties file and fly out of the ruin. Time to run.";
						say "     [line break]";
						say "     Against all odds, you do arrive safely at the library several hours later. There were several really close calls, but you managed to shake your hunters - for now. You put your almost delirious rescuee on one of the cots in the bunker, then lock up the entrance tight to get some much-needed rest.";
						now hp of Elijah is 1;
						move Elijah to bunker;
						move player to bunker;
						now lastElijahfucked is turns;
						increase score by 20;
		otherwise:   [try it later, 32 turns time to save him]
			say "     The demons might not be here right at this very moment, but they'd surely notice you making off with their prized catch. So you'll bide your time for the moment. Let's hope their captive will hold out a bit longer...";
	otherwise if (hp of Elijah is 1):  [wounded + unconscious in the bunker - starting the revival quest]
		say "     He's alive but still very weak and still not ready for communicating in any great length. Hell, he's barely conscious at all. There might be some things out there in the city that could possibly help him... perhaps you could try milk and honey, that's supposed to be good for you. And if you mix in something to boost his healing ability, your resident angel should be back on his feet in no time.";
		now hp of Elijah is 2;
		now Sweet Surprise is unresolved;
		now Examination Room is unresolved;
	otherwise if (hp of Elijah is 2):  [wounded + unconscious in the bunker - revival quest started already]
		let milkchoicelist be a list of text;
		if "gryphon milk" is listed in invent of player, add "gryphon milk" to milkchoicelist;
		if "dog milk" is listed in invent of player, add "dog milk" to milkchoicelist;
		if "panther milk" is listed in invent of player, add "panther milk" to milkchoicelist;
		if "chocolate milk" is listed in invent of player, add "chocolate milk" to milkchoicelist;
		if "vixen milk" is listed in invent of player, add "vixen milk" to milkchoicelist;
		if "dolphin milk" is listed in invent of player, add "dolphin milk" to milkchoicelist;
		if "cow milk" is listed in invent of player, add "cow milk" to milkchoicelist;
		if milkchoicelist is empty:
			say "     To mix together something to cure the injured angel, you need a good base to start with. Some form of milk should do the trick nicely...";
			if ("demon seed" is listed in invent of player):
				say "     As you think of getting the milk, you remember the demon seed you still have in your pack. A wicked little thought sneaks into your mind - wouldn't it be interesting to see what the potent liquid might do to the helpless angel you have at your mercy?";
				if player consents:
					say "     You put your hand under your patient's head, raising it a bit and guide the old soda bottle holding the demon cum to his lips. Slowly, you let some of the liquid flow into his mouth until his swallowing reflex kicks in, continuing in that way until he's drunk all of what was in the bottle.";
					say "     At first nothing happens, but then suddenly the angel's body starts convulsing on the bunk. As you hold him down, you feel waves of heat run through him, accompanying rapid physical changes. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
					say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed,' this changed version of the angel growls. 'I'm Elijah, by the way - and I'm horny, so how about a quick fuck?'";
					now hp of Elijah is 99;
					now lastElijahfucked is turns + 8; [guarantee he's ready for action]
				otherwise:
					say "     Where did that thought come from? You shake it off, your mind returning to the gryphon milk you need for the your angel revival milkshake.";
		otherwise:
			if ("Honeycomb" is not listed in invent of player) and bee girl is not tamed:
				say "     You got the milk as base for your angel revival shake. Now to gather some honey to mix into it... maybe you can find some somewhere in the park.";
			otherwise:
				if "Honeycomb" is not listed in invent of player:
					say "     As you look over your supplies but find no honey, Honey tugs at your arm and offers you one of her precious supply to use instead.  That taken care of, you focus on the next step.";
				if ("healing booster" is not listed in invent of player):
					say "     Milk and honey should be a nice start, but you need something more. Maybe you should check out the hospital for something to really boost your patient's healing ability.";
				otherwise:
					say "     You got the milk, honey and even a vial of healing booster. Do you want to mix it all together now and administer the result to Elijah?[line break]";
					if player consents:
						let chosenmilk be "empty";
						if the number of entries in milkchoicelist is 1:
							now chosenmilk is entry 1 of milkchoicelist;
						otherwise:
							sort milkchoicelist;
							say "Which milk would you prefer to use? (no different results)[line break]";
							repeat with y running from 1 to number of entries in milkchoicelist:
								say "[link][bracket][y][close bracket][as][y][end link] - [entry y of milkchoicelist][line break]";
							say "[link][bracket]0[close bracket][end link] - ABORT[line break]";
							while chosenmilk is "empty":
								say "Pick the corresponding number> [run paragraph on]";
								get a number;
								if calcnumber > 0 and calcnumber <= number of entries in milkchoicelist:
									now chosenmilk is entry calcnumber in milkchoicelist;
								otherwise if calcnumber is 0:
									now chosenmilk is "none";
						if chosenmilk is not "none":
							say "     An empty soda bottle serves as the container into which you carefully pour your collected ingredients. Holding the bottle closed, you then give it your best bartender impression, shaking it like a martini. The result is a pale blue liquid, smelling pleasantly of honey.";
							say "     And now to test if it works... you put your hand under patient's head, raising it a bit and guide the bottle to his lips. Slowly, you let some of the liquid flow into his mouth until his swallowing reflex kicks in, continuing in that way until he's drunk all of what was in the bottle.";
							say "     You sit on the next bunk in line, eagerly watching the angel. And you don't have to wait long - a more healthy color returns to his face pretty quickly and then he opens his azure eyes. Raising his upper body a bit, supported on the bunk by one of his wings, the angel looks around, then smiles brightly at you as he notices you at his side.";
							say "     'My name is Elijah and I thank you, my friend. I feel much better now. Although rather strange...' he says, his brows knitting as he wiggles his fingers, flexes the muscles in his arms, followed by stretching first one, then the other wing to its fullest extent. Then he lifts the blanket he's under a bit and looks down, his eyes widening suddenly.";
							say "     'My memories are a bit woozy, but I'm sure THAT wasn't there before. Must have originated with one of the demons, but it doesn't feel evil in of itself. Curious. Oh well, I guess I'll ignore it for now and it'll be taken care of when I get home.'";
							repeat with Q running from 1 to number of entries in invent of player:
								if chosenmilk is entry q in invent of player:
									remove entry q from invent of player;
									break;
							if "Honeycomb" is listed in invent of player:
								delete Honeycomb;
							otherwise:
								now honeygiven is true;
							delete healing booster;
							now hp of Elijah is 3;
							increase score by 20;
						otherwise:
							say "     Maybe this isn't the right thing to do after all.  There is still a small chance he might recover without you dosing him with experimental mixtures of stuff you picked up somewhere.";
					otherwise:
						say "     Maybe this isn't the right thing to do after all. There is still a small chance he might recover without you dosing him with experimental mixtures of stuff you picked up somewhere.";
	otherwise if (hp of Elijah is 3):   [virgin Elijah]
		say "     Elijah says [one of]'Blessings be with you, my saviour.', combined with a small bow.[or]'I'm still feeling a bit weak.'[or]'I miss my flaming sword.'[or]'I hope my memories will come back soon. I can't even remember how to get home right now.'[or]'My prayers for your safe return are with you when you go out into the city.'[or]'Sometimes I get all tingly down here. Is that a bad thing?', and waves a hand over his crotch area.[or]'Do you have any experience with -' he waves at the bulge in the crotch of his tunic. 'Sometimes I think it has a mind of its own...'[at random]";
	otherwise if (hp of Elijah is 4):   [good Elijah]
		say "     Elijah says [one of]'Hi, how are you today.'[or]'What do you think of my new hair? Wicked cool, hm?'[or]'Be careful when you go out into the city.'[or]'How about we spend some quality time together?' and gives you a seductive smile.[or]nothing, giving you a smile instead that makes you feel all warm and happy inside.[or]nothing, he just leans in and gives you a hot kiss that leaves you gasping for more.[or]'Watch out if you go to the junkyard. I saw something big moving around there.'[or]'Did you know there are centaurs on the plains? Saw a whole herd of them when I flew over the area.'[or]'There is a flying city moving around in the sky at the edge of this reality. Not huge, but still quite impressive. Seems to be magically shielded from sight, so I guess you could only see it from very close up. Look for the red and green apartment houses, it stops there regularly.'[at random]";
	otherwise if (hp of Elijah is 99):   [evil Elijah]
		say "     Elijah says [one of]'I need something to fuck. Time to go hunting again.'[or]'You should have seen that succubus last night - she was begging me for to go again and again.'[or][if lastElijahfucked - turns > 6]'I'm horny, wanna fuck?'[end if][or]nothing, he just smirks at you, stroking the growing bulge at the front of his pants.[or]'All those creatures in the city look so tiny and weak from above - and they still do so when I swoop down and grab one to fuck.'[or]'You should get a few incubi in here. Best cocksuckers ever.'[at random]"; 
	otherwise if (hp of Elijah is 100):   [lost to demons]
		say "ERROR-Elijah-1B: He shouldn't be available to talk any longer! Please report how you got to this message.";


Section 3 - Gathering Events

[This event exists mainly to allow players with girl banned to have a means to find a Honeycomb.]

Sweet Surprise is a situation. Sweet Surprise is resolved.
The sarea of Sweet Surprise is "Park";

Instead of resolving a Sweet Surprise:
	say "     As you're searching through the park, you come across the remains of a picnic site that's been quite torn up.  There's some shreds of clothes and sticky pools of sexual fluids scattered around the torn blanket.  The dishes and cutlery are scattered and all that remains of the food is crumbs.  An overturned bottle of wine's left a large stain on the blanket and you spot an empty ring case beside it.  It seems things did not go quite as planned for this romantic picnic, but you hope that the couple are still together in whatever new forms they've gained.  You're about to leave when you spot their wicker basket knocked into the nearby bushes.  Whatever dessert was once in there has spoiled and become a suspicious green mass, but next to it is a sealed container holding a large honeycomb, probably meant to be used to top the dessert with fresh honey[if hp of Elijah is 2].  Remembering that you're looking for some to possibly heal the angel, you pack it away[end if].";
	add "Honeycomb" to invent of player;
	increase score by 5;
	now Sweet Surprise is resolved;

[This event exists mainly to give players another means to obtain a healing booster.]

Examination Room is a situation. Examination Room is resolved.  The level of Examination Room is 8.
The sarea of Examination Room is "Hospital";

Instead of resolving a Examination Room:
	say "     Coming across a set of examination rooms, you start searching them in the hopes of finding some useful supplies.  Unfortunately, it seems that they've already been searched and much of the useful items have already been gathered.  As you're ransacking a third of them in increasing frustration, you hear the door slam open as a jaguar dressed like an orderly comes striding in, clearly upset at having found you snooping around.";
	challenge "Jaguar";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having beaten the orderly, you give the other rooms a cursory search.  As others may be drawn by the noise of the fight, you go as quick as you can.  The only item of any use you're able to find is a small syringe labelled as a [']healing booster['].  Concerned that you've already tarried too long, you take it and leave.";
		add "healing booster" to invent of player;
		increase score by 5;
	otherwise if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After the jaguar is finished with you, it roughly sends you on your way, driving you off.  He then heads back to the examination rooms, probably to gather up the remaining medical supplies.  You head back to the entrance to rethink your next move.";
	otherwise:
		say "     You manage to move around the jaguar and make a run for it, heading back to the relative safety of the hospital entrance to rethink your next move.";
	now Examination Room is resolved;


Section 4 - NPC Interactions

An everyturn rule:
	if (hp of Elijah is 0) and (Burned-Out Chapel is known) and (lastElijahfucked - turns > 32):  [time till demon orgy, after which Elijah will be dragged to hell]
		now hp of Elijah is 100;
		remove Elijah from play;
		say "Your mind wanders momentarily to the angel you once saw fighting those demons, but soon forget about him and return to your more immediate concerns.";
	[NPC Interaction section - sorted by Elijah hp state and NPC/pet - see file header]
	if (hp of Elijah is 1 or hp of Elijah is 2) and (NPCintCounter - turns > 2):
		if (player is in bunker):
			if Candy is in bunker and Char-A of Elijah is "0":
				say "     While taking your break before heading back into the city, you spot Candy kneeling besides the injured angel's bunk. The coon is helping him drink some water out of a bottle, then eases him back down on the bunk as his patient loses consciousness again. It seems Candy still has some of his healthcare training intact from his past life. And what he also has is curiosity and an active interest in other men - while checking that the angel is resting comfortably, Candy lifts his sheet and peeks under it, giggling girlishly. He whispers 'Get well soon, big boy,' to the sleeping angel, then goes back to his own bunk.";
				now Char-A of Elijah is "1";
				now NPCintCounter is turns;
			otherwise if (Sarah is in bunker) and Char-B of Elijah is "0":
				if sarahslut < 3:   [mostly human]
					say "     While taking your break before heading back into the city, you spot Sarah leaning over the injured angel's bunk. She wipes sweat from his forehead with a small towel, then tucks him under his blanket again which he had partly struggled off in his sleep.";
				otherwise if sarahslut is 3:   [husky, still loose in the bunker]
					say "     While taking your break before heading back into the city, you spot Sarah on all fours besides the injured angel's bunk. She whines in sympathy to him and licks his shoulder, trying to make it all better.";
				otherwise if sarahslut > 3:   [husky with collar and leash]
					say "     While taking your break before heading back into the city, you spot Sarah pulling on her leash trying to get to the injured angel's bunk and whining pitifully. As you unclasp it from her collar, she walks over to him on all fours, licking his arm for a moment, then rests her head against his bare chest to keep him company.";
				now Char-B of Elijah is "1";
				now NPCintCounter is turns;
			otherwise if (Sven is in bunker) and Char-C of Elijah is "0":
				say "     While taking your break before heading back into the city, you spot Sven sitting on the bunk next to your injured guest's. He's keeping the angel company, telling him a story about the adventures of a man named Per Gynt.";
				now Char-C of Elijah is "1";
				now NPCintCounter is turns;
			otherwise if (felinoid companion is tamed) and Char-D of Elijah is "0":
				say "     While taking your break before heading back into the city, you see your felinoid companion standing beside your injured guest's bunk. He's rubbing the side of his furry head against the angel's cheek, purring loudly to make him better. And possibly trying to transform him into a shape he'd prefer more - but who knows how conscious and aware the big cat is of his changing influence.";
				now Char-D of Elijah is "1";
				now NPCintCounter is turns;
			otherwise if (helper dog is tamed) and Char-E of Elijah is "0":
				say "     While taking your break before heading back into the city, you see the helper dog adjust the angel's blanket.  Hobo then takes a seat quietly beside your injured guest's bunk. He's watching him, ready to signal if there's something wrong or he needs assistance.";
				now Char-E of Elijah is "1";
				now NPCintCounter is turns;
			otherwise if (little fox is tamed) and Char-F of Elijah is "0":
				say "     While taking your break before heading back into the city, you see the little fox you rescued curled up sleeping on your injured guest's bunk. Looks like he wants to keep the angel a bit of company.";
				now Char-F of Elijah is "1";
				now NPCintCounter is turns;
			otherwise if (gryphoness is tamed) and Char-G of Elijah is "0":
				say "     While taking your break before heading back into the city, you see hear a beautiful and calming song being sung. It's Denise, the gryphoness sitting on the corner of the injured angel's bunk. He's even somewhat awake, from time to time opening his eyes and smiling up at her before drifting off again.";
				now Char-G of Elijah is "1";
				now NPCintCounter is turns;
			otherwise if (bee girl is tamed) and Char-J of Elijah is "0":
				say "     Honey frets nervously at your side, clutching herself to you tightly as you take a moment to look over the injured angel.";
				now Char-J of Elijah is "1";
				now NPCintCounter is turns;
	otherwise if (hp of Elijah is 3) and (NPCintCounter - turns > 2): [virgin-mode]
		if (player is in bunker):
			if Candy is in bunker and (Char-A of Elijah is "0" or Char-A of Elijah is "1"):
				say "     While taking a break in the bunker, you pass Candy and Elijah going up into the library and catch some of their conversation. Candy says, '...and I even follow some of the rules you guys have. Isn't there something like 'love thy neighbour like yourself'? I sure love to stroke my dick and a hard shaft inside me, so of course I'm happy to do so for other men, too.' Elijah looks a bit puzzled at Candy's logic. Other parts of his anatomy seem to agree with the playful coon though, judging from the slight bulge in his tunic.";
				now Char-A of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1"):
				if sarahslut is 0:   [mostly human, untouched by the player character]
					say "     While taking a break in the bunker, you see Sarah and Elijah sitting next to each other on one of the bunk beds. Looks like he's praying with her to help her deal with the urges that threaten to overcome her.";
				now Char-B of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1"):
				say "     While taking your break before heading back into the city, you spot Sven and Elijah sitting next to each other on one of the bunk beds. The angel is attentively listening to a story Sven's telling about life in Norway.";
				now Char-C of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see your felinoid companion nudging Elijah in the hip with his head and rub the side of his feline body against the angel's legs. Elijah smiles at the big cat snuggling up against him, leaning down to give him a good scritch behind the ears. It remains to be seen if the constant close contact with the felinoid will have an influence on him. Only time will tell.";
				now Char-D of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see the helper dog sitting quietly beside Elijah's bunk, getting stroked. As Elijah sees you looking at them, he pats the dog softly on the head and remarks 'A most dutiful and brave animal. You can count yourself lucky for receiving his assistance.'";
				now Char-E of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (little fox is tamed) and (Char-F of Elijah is "0" or Char-F of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see Elijah sleeping on his bunk with the little fox you rescued curled up in the crook of his arm. A very sweet and peaceful picture.";
				now Char-F of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1"):
				say "     While taking your break before heading back into the city, you hear Elijah talking with Denise. '...your voice truly is beautiful. Have you ever thought about joining a choir? You'd be perfect for a lot of hymns I know.' You're not quite sure, but from her mannerisms you think Denise is blushing under her feathers...";
				now Char-G of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see Elijah lying on his bunk reading a book. Then suddenly, his brow scrunches up a bit and he slowly raises a wing from where it was hanging over the side of the bunk. Your cute little crab pet is dangling off the wingtip, holding on with one of its claws. 'That's not there for you to pull on, little creature.' Elijah says, looking at it. 'You're lonely, aren't you? Here, let's give you something to play with.' With that, he pulls a small toy crab out of thin air and sets it down on the ground, soon followed by the real one. It takes hold of the toy and scampers off.";
				now Char-H of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1"):
				say "     As you're tending to a few odds and ends, you notice the bee girl, Honey, approach Elijah and ask if he's feeling better.  'I am, thank you,' he replies with a nod and a smile.  'Oh, I am told that a cure was made of milk and honey.  Was that honey yours, little one?'  [if honeygiven is true]She nods, saying that it came from her hive[otherwise]She replies that she's not sure, but adds that it probably came from her hive[end if].  He takes her hand in his.  'Then my thanks again to you and your hive,' he says.  Honey gets a sad look in her eyes and buzzes off to be alone for a while, leaving Elijah confused.";
				now Char-J of Elijah is "2";
				now NPCintCounter is turns;
		otherwise if player is in Grey Abbey Library:
			if Fang is in Grey Abbey Library and (Char-I of Elijah is "0" or Char-I of Elijah is "1"):
				say "     Elijah steps out of the bunker and into the library, passing through the stacks before finally selecting a book.  With book in hand, he heads over to Fang and pets him lightly on the head.  'I thank and commend you for your vigilence.  Your protection of this safe haven will not go unrewarded,' he states before turning and heading back into the bunker.";
				now Char-I of Elijah is "2";
				now NPCintCounter is turns;
	otherwise if (hp of Elijah is 4) and (NPCintCounter - turns > 2): [more human-like, nice guy]
		if (player is in bunker):
			if (Candy is in bunker) and (Char-A of Elijah is "0" or Char-A of Elijah is "1" or Char-A of Elijah is "2"):
				say "     While taking a break in the bunker, you see Elijah walking up to Candy holding a rectangular box in colorful wrapping paper behind his back. He hands it over to the coon, who squeals 'A present? Oooh, thank you honey.' As Candy weighs it in his hands and shakes the box softly to try to figure out what it is, Elijah explains 'I found it in one of the offices next door. Apparently it was meant as a prank for a Christmas party. I thought... you might like it.'";
				say "     Curiosity and anticipation make Candy forget all restraint and he just shreds the wrapping paper and tears the lid of the cardboard box inside. What comes to light is... a rubber dildo, colored in the red and white striped pattern of a candy cane. Candy giggles as he sees it, then hugs Elijah and gives him a kiss on the cheek. 'Just what I always wanted. Let's go try it out!' The expression on Elijah's face is priceless as he stammers 'I - erm...' while Candy pulls him along in the direction of his bunk...";
				now Char-A of Elijah is "3";
				now NPCintCounter is turns;
				now lastElijahfucked is turns;
				now lastCandyfucked is turns;
			otherwise if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1" or Char-B of Elijah is "2"):
				if sarahslut > 2:   [husky, mostly animal mentally]
					say "     When you step back into the bunker after going out for a bit of fresh air, you're almost bowled over by Sarah rushing after a tennis ball on all fours. Looking where the projectile came from, you see Elijah standing there, looking a bit sheepishly. 'Oh, em - I was just playing a bit with Sarah. Hope you don't mind.'";
				now Char-B of Elijah is "3";
				now NPCintCounter is turns;
			otherwise if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 8 and hp of Sven < 50):		[skips if player is not there to see it]
				say "     While taking your break before heading back into the city, you spot Elijah sitting on his bunk and reading a magazine. Or at least he's trying to until Sven moves into his view and does some suggestive stretches with his snowmeow body for a while, often bending over and smiling seductively at Elijah while wiggling his ass. Finally he moves to the bunk, sitting down next to Elijah and flirting his tail against the angel's neck and cheek, then pulls the magazine out of Elijah's hands and puts it down on the floor.";
				say "     Sven's little show has had quite an effect on Elijah - proven by the bulge in his jeans. With a winning smile, Sven undoes its button, pulling down the zipper to release Elijah's impressive manhood. Then he pushes against the angel's chest, making him lie back on the bunk and starts licking the shaft of his cock. Sven takes it into his muzzle, bobbing up and down on it, accompanied by Elijah's moans and groans as he's expertly sucked off.";
				say "     After a while, when Elijah's cock is slick and wet with saliva, Sven pulls off it, then moves over to kneel over Elijah with his legs left and right of the angel's hips. Leaning down, he runs his paws over Elijah's hard muscular chest, licking it with his rough tongue before moving on to make out deeply with him. When he comes back up a bit out of breath, Sven gives Elijah a grin, then feels behind himself for the angel's cock and holds it up against his asshole. Slowly leaning back, he then lowers himself on it, only stopping when his furry buns touch Elijah's hips and the whole thing is inside of him.";
				say "     Sven rides Elijah's cock for quite some time, filling the bunker with both their grunts, gasps and moans. He's having a lot of fun with your handsome angel, and really goes all out when he sees you as you step closer to get a better look. All too soon, Elijah stiffens on his bunk, pulling the Sven down to him for a kiss as his cock starts pulsing spurt after spurt of his seed deep into the snowmeow's ass. As Elijah sinks back on the bunk spent, Sven sits back up, stroking his own manhood until he shoots long strands of white cum on Elijah. Then he pulls off the angel's cock with a small plop and goes on to lick his come up from between the defined ridges of Elijah's chest.";
				say "     With both your handsome boys pretty exhausted and out of it, it doesn't surprise you that the cuddling that follows leads over to sleep. You ogle their naked bodies for a moment more, then pick up the light blanket from where it fell off the bunk and softly put it over them both.";
				now Char-C of Elijah is "3";
				now lastSvenfucked is turns;
				now lastElijahfucked is turns;
				now NPCintCounter is turns;
			otherwise if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1"):
				say "     While taking your break before heading back into the city, you see your felinoid companion nudging Elijah in the hip with his head and rub the side of his feline body against the angel's legs. Elijah smiles at the big cat snuggling up against him, leaning down to give him a good scritch behind the ears. It remains to be seen if the constant close contact with the felinoid will have an influence on him. Only time will tell.";
				now Char-D of Elijah is "2";
				now NPCintCounter is turns;
			otherwise if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1" or Char-E of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah crouched in front of your helper dog. He waves you closer, saying 'Look at what he can do - give me your paw, dog.' ...and just as ordered, the dog raises his paw to have it shaken by Elijah. 'That's a good dog,' Elijah says and rewards him with a treat.";
				now Char-E of Elijah is "3";
				now NPCintCounter is turns;
			otherwise if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1" or Char-G of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah and Denise sitting together on a bunk. They're chatting with each other while grooming each other's wings. Looks like quite a lot of work, stroking over each feather and making sure it's clean and lying correctly between the others. Especially the hard to reach ones at the base. No wonder they're so happy to help each other out.";
				now Char-G of Elijah is "3";
				now NPCintCounter is turns;
			otherwise if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1" or Char-H of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah lying on his bunk reading a book. Then suddenly, his brow scrunches up a bit and he slowly raises a wing from where it was hanging over the side of the bunk. Your cute little crab pet is dangling off the wingtip, holding on with one of its claws. 'That's not there for you to pull on, little creature.' Elijah says, looking at it. 'You're lonely, aren't you? Here, let's give you something to play with.' With that, he pulls a small toy crab out of thin air and sets it down on the ground, soon followed by the real one. It takes hold of the toy and scampers off.";
				now Char-H of Elijah is "3";
				now NPCintCounter is turns;
			otherwise if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1" or Char-H of Elijah is "2"):
				say "     While tending to some odds and ends, you see Elijah approach Honey, taking a seat beside her.  'I'm sorry if I upset you before.  Could you tell me what I did to make you so sad?'  She sniffles a little and tells him how her hive was destroyed and all her hive-sisters are dead now.  He takes her hand in his again, stroking it tenderly.  'I'm sorry to have inadvertantly reminded you of your terrible loss.  Would you like to talk to me about them?  If they were as kind-hearted as you, then this world is diminished for their loss.  But perhaps you can take solace that the honey they left behind was able to help another, as it helps you live to see a brighter future.  Let us pray for these hard working souls who continue to help us both even after they are gone,' he says.  They pray for some time, Honey wanting to say a proper fairwell to each of her sisters.  When they're finally done, the bee girl seems drained, but in brighter spirits.";
				if level of bee girl < level of player:
					increase level of bee girl by 1;		[Free level]
					say "     The bee girl has gained level [level of bee girl]! Congratulations!";
					if remainder after dividing level of bee girl by 2 is 0:
						increase weapon damage of bee girl by 1;
					if remainder after dividing level of bee girl by 5 is 0:
						increase dexterity of bee girl by 1;
				now Char-J of Elijah is "3";
				now NPCintCounter is turns;
		otherwise if player is in Grey Abbey Library:
			if Fang is in Grey Abbey Library and (Char-I of Elijah is "0" or Char-I of Elijah is "1" or Char-I of Elijah is "2") and ( lastfangfucked - turns >= 8 ) and ( lastElijahfucked - turns >= 8 ):
				say "     Looking around, you notice Fang stretched out on the floor with Elijah beside him, stroking the wolf's fur with one hand while the other is wrapped around the wolf's stiff cock.  'I hope you don't mind.  Our guardian here seemed like he needed some attention, so I thought I'd show him how much we appreciate his continued vigilence,' the angelic figure says with a smile as he continues stroking the wolf's erection.  Fang pants softly, clearly enjoying the soft touch of the angel's fingers along his rod, soon getting the wolf to cum with a howl of release.";
				now lastfangfucked is turns;
				now Char-I of Elijah is "3";
				now NPCintCounter is turns;
	otherwise if hp of Elijah is 99 and NPCintCounter - turns > 2: [evil, very direct sex-fiend]
		if player is in bunker:
			if (Candy is in bunker) and (Char-A of Elijah is "0" or Char-A of Elijah is "1" or Char-A of Elijah is "2" or Char-A of Elijah is "3") and lastElijahfucked - turns >= 12:
				say "     While taking a break in the bunker, you see Elijah step up to Candy from behind and grab his ass. A furry bun in each hand, he squeezes them a bit, saying 'Bend over, I wanna fuck.' Candy replies 'Rather direct, aren't you now, hun. But I like men who know what they want.' He then takes up position against the nearest wall, bracing himself with his arms and pushing his ass back invitingly.";
				say "     Elijah grins at you as he steps out of his leather pants, then moves behind Candy, rubbing his long and hard cock against the fur of Candy's ass. He plays with Candy for a moment, running his manhood up and down his crack, pushing against his pucker, then going back to rubbing against his fur. When he has Candy mewling in need, he suddenly thrusts deep inside the coon, making him gasp as he adjusts to the size of the invader. Then he really goes to town on the boytoy, shafting him hard and deep between moments where he stops all of a sudden until Candy begs him needily to go on and fuck him.";
				say "     Accompanied by gasps, moans and whimpers, Elijah slams in and out of Candy for the next twenty minutes or so until he finally pushes the coon beyond the point of no return. Pink jets of cum shoot from Candy's coon cock all over the wall, filling the room with a sweet, candy-like smell. As Candy's body shakes in the throes of his orgasm, Elijah comes too, jamming his cock as deep as possible into his partner's ass and flooding it with his seed.";
				say "     After resting a moment longer inside Candy, Elijah pulls out his cock and walks past you to his bunk, making sure you see all of his naked glory.";
				now Char-A of Elijah is "4";    
				now NPCintCounter is turns;
				now lastElijahfucked is turns;
				now lastCandyfucked is turns;
			otherwise if (Sarah is in bunker) and (Char-B of Elijah is "0" or Char-B of Elijah is "1" or Char-B of Elijah is "2" or Char-B of Elijah is "3") and lastElijahfucked - turns >= 12:
				if sarahslut > 3:
					say "     While taking a break in the bunker, you see Elijah teasing Sarah with a piece of food. He's dangling it in front of her, just at the edge of the reach of her leash, pulling it away each time she tries to grab it. After several failed attempts to get it, Sarah is reduced to whining beggingly at the fallen angel."; 
					say "     'You want this nice little snack, little bitch? Then get working and earn it.' Elijah says, unzipping the bulging front of his pants, revealing his hard manhood as he slides them down his legs. With a last look at the tasty morsel of food Elijah is holding, Sarah starts sucking on his cock, bobbing up and down on his long shaft. Noticing you watching them, Elijah grins devilishly, then grabs on to Sarah's head and pumps his cock deep into her throat. He turns around a bit so you have a better view, brazenly showing off his face-fucking you husky bitch. Before too much longer, he moans loudly, holding Sarah's head tightly and shoots his load directly into her throat. Having gotten what he wanted, Elijah pulls out his saliva-coated cock from Sarah's mouth and throws the food on the ground nearby, smiling as she rushes after it. Without bothering to pick up his clothes, he then walks over to his bunk and drapes himself over it, lounging nakedly for you to watch.";
					now Char-B of Elijah is "4";
					now NPCintCounter is turns;
					now lastElijahfucked is turns;
			otherwise if (Sven is in bunker) and (Char-C of Elijah is "0" or Char-C of Elijah is "1" or Char-C of Elijah is "2") and (hp of Sven >= 8 and hp of Sven < 50):		[skips if player is not there to see it]
				say "     While taking your break before heading back into the city, you spot Elijah walking up to Sven sitting on his bunk. With a 'Let's see how good a sex pet you are. Get sucking!' Elijah zips open the front of his tight leather pants and holds out his impressive manhood for Sven. Being an obedient little snowmeow, Sven glances over at you momentarily, receiving a nod of permission.  He leans forward and runs his tongue over it with only a moment's hesitation, then takes it into his muzzle and bobs up and down on the shaft. As Elijah spots you watching them, he grins at you while grabbing Sven's head and thrusting deep into his throat, holding him there for a moment, then releasing him to gasp for breath.";
				say "     After some more time facefucking Sven, Elijah grunts 'Time for some boypussy!'. He pulls out of Sven's muzzle, then strips off his pants completely and turns the snowmeow around so he's on all fours now with his inviting buns presented towards Elijah. The dark angel runs his hands through the warm fur on Sven's shapely buns, then pulls them apart and pushes his cock against the pink pucker between them. With a satisfied grunt and a gasp from Sven, Elijah thrusts deep into your pet, bottoming out and grinding his hips against Sven's ass. Then he takes a tight hold of the feline's hips and starts fucking him in earnest with rapid thrusts in and out.";
				say "     Being taken by a dominant male is just the thing for your snowmeow pet, and you watch Sven grunt and moan as he's fucked, his paws gripping the sheets of the bunk tightly. He gasps as the feelings of Elijah's long shaft sliding against his inner walls make him cum, spraying the bunk with his seed. Sven's cock doesn't have time to go soft, as Elijah just keeps going and starts thrusting in even harder and deeper, so he stays hard and ready from the sensations in his ass. It doesn't take long for Elijah to drive Sven into a lustful overload again, and you see him shudder as he blasts another big load onto the sheets. This time, his spasming anal muscles take Elijah over the edge with him, thrusting as far inside as he can go and spurting jet after jet of his seed into the kitty.";
				say "     His lust satisfied, Elijah pulls out of Sven and leaves him to collapse on the sticky bunk in exhaustion. Then he walks past you to the bathrooms, naked and still dripping some cum from his cock, smirking at you ogling his body.";
				now Char-C of Elijah is "3";
				now lastElijahfucked is turns;
				now NPCintCounter is turns;
			otherwise if (felinoid companion is tamed) and (Char-D of Elijah is "0" or Char-D of Elijah is "1") and lastElijahfucked - turns >= 12:
				say "     While taking your break before heading back into the city, you see your felinoid companion walk up to Elijah's bunk where the angel is just lounging around naked, with nothing more than a sheet covering his hips. The big cat licks over his muscular chest and starts rubbing its furry head against the fallen angel's side. Elijah runs a hand through the felinoid's fur, saying 'Your efforts are in vain, big furball - no matter how much you rub against me, I'll never grow a cunt so you can breed me.'";
				say "     Then he throws aside his sheet, revealing the rest of his naked body and a sizeable erection. 'But it does make me quite horny, so let's see how tight that furry ass of yours is. Turn around!' he continues. The felinoid hesitates a moment at the forceful command, bringing his head over to Elijah's cock and sniffing it. Then he mews submissively and turns his big body around as Elijah's strong hands grip him. Elijah stands up and steps behind the big cat, groping his furred ass. Smiling demonically as he notices you watching, the fallen angel then grabs hold of the feline's tail, pulling it aside as he aligns his hard cock with the pucker below. Then, with one sharp thrust he slams it all in, burying his manhood completely and touching the furry behind in front of him with his hips. The cat roars at the sudden intrusion but calms down quickly as Elijah holds it in an iron grip and starts fucking in and out. Soon his own spined penis hardens and can be seen hanging under his quadrupedal body as the pain of the initial penetration fades and the good feelings begin to outweigh it.";
				say "     Accompanied by moans, some growls and a roar or two, Elijah slams in and out of the felinoid for the next twenty minutes or so until suddenly the cat's penis starts spraying cum all over the floor under it. The spasms of its anal muscles accompanying each shot drive its fucker over the edge too, and you hear Elijah moan loudly as he grips two handfuls of fur and fills the feline's ass with his seed.";
				say "     Still balls-deep inside the felinoid, Elijah sinks forward exhaustedly, resting for a moment on its back. Then he gives a short laugh, pulling out and plopping back onto his bunk. Reaching out and pulling the felinoid's head towards him, he says 'Now you know what rubbing against me will get you. Do it again soon.'";
				now Char-D of Elijah is "4";
				now NPCintCounter is turns;
				now lastElijahfucked is turns;
			otherwise if (helper dog is tamed) and (Char-E of Elijah is "0" or Char-E of Elijah is "1" or Char-E of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah get your helper dog casually fetch a ball for him a few times.  The dog seems more interested in keeping an eye on him than the ball, but does go retrieve it each time.  After a few throws, Elijah pulls something and chucks the black oblong object across the room, where it bounces off the wall, shouting 'Go fetch, doggie.'  The helper dog seems into it this time, chasing after it, but then stops and detours to grab a towel from one of the cots.  Confused by your dog's actions, you watch as the shepherd carries it over to where the black rod is rolling to a stop.  The dog drops the cloth over it before picking it up in his mouth with care.  Padding over to the nearby trash chute, Hobo depresses the foot lever with one paw and drops the towel-wrapped thing into the garbage while Elijah yells from across the room.";
				say "     'Stupid beast!' Elijah snarls.  'It's a lot of work to talk a succubus out of a dildo - and you won't even fetch it for me just this once.  Gah!  Don't throw it out, you mutt!  You'd be a much more fun pet as a hellhound!'";
				now Char-E of Elijah is "4";
				now NPCintCounter is turns;
			otherwise if (little fox is tamed) and (Char-F of Elijah is "0" or Char-F of Elijah is "1" or Char-F of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah lift the blanket of his bunk and scowl at what he finds below. He grabs the little fox you rescued by the scuff of his neck and dumps him on the concrete floor, growling 'Stay off my bunk, you little furball.'";
				now Char-F of Elijah is "4";
				now NPCintCounter is turns;
			otherwise if (gryphoness is tamed) and (Char-G of Elijah is "0" or Char-G of Elijah is "1" or Char-G of Elijah is "2") and lastElijahfucked - turns >= 12:
				say "     While taking your break before heading back into the city, you see Elijah propositioning Denise, stepping into her comfort zone and lewdly touching her body. 'You're such a nice little gryphon breeder, so why don't we put some eggs into you,' the fallen angel says, reaching down to finger her pussy as Denise shakes her head and tries to step back.";
				say "     Elijah is making her moan and whimper with his skilled fingers, but she manages to somewhat regain her composure, saying 'I... I - *moan* - I'm taken, you - ooh - can't have me.' Winding herself out of his grasp, she rushes away and throws her arms around you in a tight hug.";
				now Char-G of Elijah is "4";
				now NPCintCounter is turns;
			otherwise if (cute crab is tamed) and (Char-H of Elijah is "0" or Char-H of Elijah is "1" or Char-H of Elijah is "2"):
				say "     While taking your break before heading back into the city, you see Elijah lift the blanket of his bunk and scowl at what he finds below. He grabs your cute crab pet and dumps it on the concrete floor, growling 'Can't you keep your stupid critters in a pen somewhere?'";
				now Char-H of Elijah is "4";
				now NPCintCounter is turns;
			otherwise if (bee girl is tamed) and (Char-J of Elijah is "0" or Char-J of Elijah is "1" or Char-J of Elijah is "2"):
				say "     While tending to some odds and ends, you see Elijah strut over to Honey and grab her.  His hands run over the bee girl's body, fondling her pussy and tender abdomen.  'Mmm... I want to get at your honeypot, cutie,' he says with a lecherous grin.  The bee girl squirms in his grip and smooshes the honeycomb she was snacking on into his face.  She squirms out of his grip as he sputters angrily.";
				say "     'You're terrible.  I'm sorry I ever felt sad that you got hurt,' she screams, tears in her eyes as she yells at him.  She takes flight as he makes a grab for her, buzzing over to hide behind him, sobbing loudly.";
				say "     Elijah, meanwhile, is livid, growling about having to get this sticky gunk off his face and that he'll make her pay";
				if Candy is bunkered:
					say ".  Candy giggles and puts up his hand, waving it in the air.  'Oh! Oh! Me-me-me! I'm a pro at licking up sticky sweet stuff,' the gay coon jokes.  'I'd be glad to help you out with that.'  As he sashays over, he gives Honey a wink to show he plans on distract the bad boy for her.  From the bathroom where they end up, you can hear the loud cries of lustful pleasure as it sounds like Elijah's taking his frustration and excess libido out on the pink raccoon by being particularly rough with him.";
					now lastCandyfucked is turns - 2;
					now lastElijahfucked is turns - 2;
				otherwise:
					say ".  'Get over here, you buzzing bitch.  I'm gonna kick that sweet all of yours all across town,' he growls, storming forward.  You keep between them and tell him to calm down and get cleaned up.  He glares at you for a few moments, eyes flashing red with anger, but you stand your ground";
					if "water bottle" is listed in invent of bunker:
						say ".  He turns and storms off, grabbing one of the spare bottles of water to use to clean himself up.";
						repeat with Q running from 1 to number of entries in invent of the bunker:
							if entry q of invent of the bunker is "water bottle":
								remove entry q from invent of the bunker;
								break;
					otherwise if "water bottle" is listed in invent of player:
						say ".  He turns and storms off, but not before rummaging through your pack and grabbing one of the spare bottles of water to use to clean himself up.";
						delete water bottle;
				now Char-J of Elijah is "4";
				now NPCintCounter is turns;
		if player is in Grey Abbey Library:
			if Fang is in Grey Abbey Library and (Char-I of Elijah is "0" or Char-I of Elijah is "1" or Char-I of Elijah is "2") and ( lastfangfucked - turns >= 8 ) and ( lastElijahfucked - turns >= 8 ):
				say "     There is some commotion outside the door and you notice the Fang's already slipped outside.  Elijah, who had been wandering the stacks looking among the books on Renaissance art for 'nudey pics' as he put it, heads over to see what it is as well.  Looking outside, you see that Fang's captured a [if girl is not banned]husky girl that's wandered too close to your safe haven.  He's pinned the husky beneath him and mounts the interloper, much to the dark angel's delight.  'Good boy,' he says with excitement.  'Fuck that bitch.'  He doesn't limit himself to just cheering, but unzips his pants and gets in front of her, forcing her to suck him off even as Fang pounds her wet pussy.  After they've both drained their balls, they drive the nosey creature away[otherwise]latex fox that's wandered too close to your safe haven.  The wolf pins the fox beneath him and mounts the interloper, much to the fallen angel's delight.  'Good boy,' he says with excitement.  'Fuck that slut.'  He doesn't limit himself to just cheering, but unzips his pants and gets in front of him, forcing the fox to suck him off even as Fang pounds his tight ass.  After they've both drained their balls, they drive the nosey creature away[end if].";
				now lastfangfucked is turns;
				now lastElijahfucked is turns;
				now Char-I of Elijah is "4";
				now NPCintCounter is turns;
	if NPCintCounter is turns:	[was updated this turn]
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

To npcEintAlter (N - number) with (L - text):
   replace character number N in npcEint with L.


Section 5 - Fucking Elijah

Instead of fucking the Elijah:
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if (hp of Elijah is 0): [in the chapel, losing him to the demons]	[***]
		say "     The poor angel is hurt and chained up, with an unknown number of demons surely not too far away. Are you sure you want to do this right now?";
		if player consents:
			say "     The need for instant satisfaction of your urges wins out over the alarm bells your rational mind rings. You move over to the chained angel and pull the shreds of his tunic off his body, revealing his well-shaped and muscular physique to your lustful gaze. He's quite well equipped, the manhood dangling between his legs respectably long without even being hard. You can't wait to see how big it'll get, so you step up and start rubbing your [bodytype of player] body up against the angel, fondling his cock and balls.";
			say "     As enthralled as you have become, you don't even notice anything amiss until suddenly a long red tail snakes around your neck, choking you. An incubus and succubus step up besides you, grabbing your arms and pull you away from the chained angel. The incubus tightens his tail around your neck a bit more and says, 'Tztz - an uninvited guest wanting to grab some angel ass. That's OUR new plaything! But if you're here already, why don't you watch him lose his virginity.'";
			say "     You're pulled to the side of the chapel, making room for a whole group of incubi and succubi and a large demon brute who parade around the altar. They take the angel down, peel off his ripped tunic and try to shake him awake. The members of the mob lewdly fondle his body and cock, but don't have much luck getting either consciousness or arousal out of him. Switching to another tactic, a succubus grabs the dented silver chalice of the chapel from the ground and holds it up for her male brethren, becoming the center of a group of feverishly masturbating demons. Soon, the now cum-splattered succubus steps up to the angel, triumphantly raising the cup and pouring its contents into his mouth and over his body.";
			if girl is banned:
				say "     It works as intended - the angel's cock fills out and hardens almost instantly, inducing a satisfied moans and chuckles from the demon mob. The succubus throws the chalice aside and an incubus climbs onto the altar, waving over to the demon brute to bring the angel. As the incubus moves onto all fours, offering up his ass to receive some angel cock, the large demon brute impales their semi-conscious captive on his massive erection, then carries him over to the desecrated altar. With the help of many grabby hands, the angel's cock gets aligned with the incubus's asshole. Then the demon brute thrusts forward, moving the angel's hips too and sinking his virgin manhood into the damning embrace of his dark hole. Lustful moans and roars get louder and louder as they start fucking hard and deep with their angel cock-sleeve between them. The demon mob closes in around the altar area, jostling for better positions.";
			otherwise:
				say "     It works as intended - the angel's cock fills out and hardens almost instantly, inducing a satisfied moans and chuckles from the demon mob. The succubus throws the chalice aside and moves over to sit on the altar, waving over to the demon brute to bring the angel. As she leans back and spreads her legs eagerly to receive some angel cock, the large demon brute impales their semi-conscious captive on his massive erection, then carries him over to her. With the help of many grabby hands, the angel's cock gets aligned with the succubus's cunt. Then the demon brute thrusts forward, moving the angel's hips too and sinking his virgin manhood into the damning embrace of her folds. Lustful moans and roars get louder and louder as they start fucking hard and deep with their angel cock-sleeve between them. The demon mob closes in around the altar area, jostling for better positions.";
			say "     The two demons holding you look almost spellbound at the action around the altar, then suddenly realize they're still holding you and not taking part themselves. You're quickly and unceremoniously dumped outside the chapel, its doors slammed shut behind you as the demons rush to join the orgy.";
			say "     [line break]";
			say "     You don't think you'll see that angel ever again after this, as the demons are very likely gonna take him home to hell with them, to use and abuse for all eternity.";
			now hp of Elijah is 100;
			remove Elijah from play;      
			move player to Entrance to the Red Light District;
		otherwise:
			say "     You manage to get your feral impulses under control. Now that you're a bit more rational again, you can't think of a worse time or place to try to get it on with an angel.";
	otherwise if (hp of Elijah is 1) or (hp of Elijah is 2): [unconscious on the bunk, transform into Evil Elijah]
		if bodyname of player is not listed in the infections of hellspawn and bodyname of player is not "Hellhound":
			[if the player isn't a demon, he's not corrupt enough]
			say "     Looking down over the angel on his bunk, you decide you'd rather let him rest for now. He's strikingly handsome and wakes lust in you from just looking at him, but only the most wicked creatures would take advantage of this helpless and injured person who isn't even conscious most of the time.";
		otherwise:
			say "     Handsome? Check. Virgin? Most definitively. Conscious? Who the hell cares..."; 
			say "     The remains of your human morality throw up a last despairing wail of protest. Do you want to silence those voices and just continue?";
			if player consents:
				say "     You pull the blanket off the angel's bunk, revealing his naked and very inviting body to your lewd gaze.";
				if (cocks of player > 0) and (cunts of player > 0): [herms may choose]
					say "     Which part of your versatile sex do you want to use to deflower your little angel? (Y for cock, N for pussy)";
					if the player consents:
						say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. Then you climb up on the cot yourself, spreading his legs and holding them up as you move your hips forward. Soon, the head of your [cock of player] cock is rubbing against the silky smooth cheeks of his ass, making you groan in anticipation.";
						say "     Aiming your hard rod at the angel's pucker with one hand, you push forward, slowly increasing your pressure until the cockhead pops into virgin territory. Sliding into him gives you a truly heavenly feeling, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, he starts moaning silently in his sleep, gasping when you drive in the last few inches and your balls touch his buns.";
						say "     You start pumping in and out of your defenseless partner, delighted how each movement makes him gasp and moan, and run a hand over a tightly muscled chest down to his slowly hardening cock. Giving the angel's balls a playful squeeze, you then grab his cock, pumping up and down on its shaft in rhythm with your own thrusts.";
						say "     He must never have felt something like this before, as all too soon, a shiver runs through the angel's body and long streaks of white cum blast from his perfect cock so splat down on his chest. The spasms of his insides with each shot grip your shaft tight as a vice, driving you over the edge in short order too and you deposit spurt after spurt of demonic cum deep inside your little angel.";
						say "     You sink down exhaustedly, your cock still inside the angel, and rest your head on his sticky chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demon seed takes root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
						say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
						now hp of Elijah is 99;
					otherwise:
						say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. You proceed to stroke him, your hands gliding over his smooth skin and tracing the outlines of well-defines muscles. As you reach the angel's crotch, you give his balls a playful squeeze, then grab his cock and start pumping you hand up and down its shaft. It quickly fills out and hardens, growing enough that you can put a second hand on it.";
						say "     When his manhood is good and ready, standing proudly erect like a flagpole, you climb up on the bunk yourself. At first you rub the head of his perfect shaft slowly over the lips of your cunt, but then your need to get him inside the dripping and ready cave quickly overwhelms your restraint. Guiding his cock with one hand, you lower yourself down onto it, panting and moaning as it slides into your body. As you sink in deeper and deeper, the angel starts groaning silently in his sleep, gasping when you take him all the way and your hips touch his balls.";
						say "     You start moving up and down on the shaft of your defenseless partner, delighted how each movement makes him gasp and moan, and run your hands over his tightly muscled chest. The feelings his cock wakes in you are just heavenly, rubbing against all the right spots. You could go on like this forever, your mind in a pleasant buzz of lust and satisfaction.";
						say "     Sadly, he must never have felt something like your pussy before, as all too soon, a shiver runs through the angel's body and long streaks of fertile seed blast upwards into your womb. As you feel his cock pulse and the cum fill you up, your body replies in kind, secreting a large amount of demonically infused female juices.[impregchance]";
						if baby is 0 and gestation of child is not 0:
							now facename of child is "Seraphim";
							now bodyname of child is "Seraphim";
							now skinname of child is "Seraphim";
						say "     You sink down exhaustedly, his cock still deep inside your body slowly pulsing with its last spurts, and rest your head on his sweaty chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demonic juices seep into his cock from all sides and take root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
						say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
						now hp of Elijah is 99;
				otherwise if (cocks of player > 0):  [male]
					say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. Then you climb up on the cot yourself, spreading his legs and holding them up as you move your hips forward. Soon, the head of your [cock of player] cock is rubbing against the silky smooth cheeks of his ass, making you groan in anticipation.";
					say "     Aiming your hard rod at the angel's pucker with one hand, you push forward, slowly increasing your pressure until the cockhead pops into virgin territory. Sliding into him gives you a truly heavenly feeling, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, he starts moaning silently in his sleep, gasping when you drive in the last few inches and your balls touch his buns.";
					say "     You start pumping in and out of your defenseless partner, delighted how each movement makes him gasp and moan, and run a hand over a tightly muscled chest down to his slowly hardening cock. Giving the angel's balls a playful squeeze, you then grab his cock, pumping up and down on its shaft in rhythm with your own thrusts.";
					say "     He must never have felt something like this before, as all too soon, a shiver runs through the angel's body and long streaks of white cum blast from his perfect cock so splat down on his chest. The spasms of his insides with each shot grip your shaft tight as a vice, driving you over the edge in short order too and you deposit spurt after spurt of demonic cum deep inside your little angel.";
					say "     You sink down exhaustedly, your cock still inside the angel, and rest your head on his sticky chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demon seed takes root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
					say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
					now hp of Elijah is 99;
				otherwise if (cunts of player > 0):  [female]
					say "     After eagerly slipping off your clothing, you position the angel on his back with his wings hanging down to both sides of the bunk. You proceed to stroke him, your hands gliding over his smooth skin and tracing the outlines of well-defines muscles. As you reach the angel's crotch, you give his balls a playful squeeze, then grab his cock and start pumping you hand up and down its shaft. It quickly fills out and hardens, growing enough that you can put a second hand on it.";
					say "     When his manhood is good and ready, standing proudly erect like a flagpole, you climb up on the bunk yourself. At first you rub the head of his perfect shaft slowly over the lips of your cunt, but then your need to get him inside the dripping and ready cave quickly overwhelms your restraint. Guiding his cock with one hand, you lower yourself down onto it, panting and moaning as it slides into your body. As you sink in deeper and deeper, the angel starts groaning silently in his sleep, gasping when you take him all the way and your hips touch his balls.";
					say "     You start moving up and down on the shaft of your defenseless partner, delighted how each movement makes him gasp and moan, and run your hands over his tightly muscled chest. The feelings his cock wakes in you are just heavenly, rubbing against all the right spots. You could go on like this forever, your mind in a pleasant buzz of lust and satisfaction.";
					say "     Sadly, he must never have felt something like your pussy before, as all too soon, a shiver runs through the angel's body and long streaks of fertile seed blast upwards into your womb. As you feel his cock pulse and the cum fill you up, your body replies in kind, secreting a large amount of demonically infused female juices.[impregchance]";
					if baby is 0 and gestation of child is not 0:
						now facename of child is "Seraphim";
						now bodyname of child is "Seraphim";
						now skinname of child is "Seraphim";
					say "     You sink down exhaustedly, his cock still deep inside your body slowly pulsing with its last spurts, and rest your head on his sweaty chest. Then, only a short while later, his body starts shivering, heating up noticeably under your touch. You sit up, and looking down on him you see the rapid changes happen as your demonic juices seep into his cock from all sides and take root. Gone is the golden-blond hair, its bright color instantly replaced by glossy blackness. His wings react in much the same way, turning black right before your eyes...";
					say "     And his eyes, which suddenly open and focus on you now glow in a shade of red that reminds you of fresh blood. 'Hell yeah, just what I needed.' this changed version of the angel growls. 'I'm Elijah, by the way - any you can bone me anytime from now on.'";
					now hp of Elijah is 99;
				otherwise:   [neuter]
					say "     While you might be morally ready to do this, your distinct lack of demonic genitalia prevents you from acting out your impulses. Grow a cock or a pussy and try it again.";
				decrease humanity of player by 25;
				now lastElijahfucked is turns;
			otherwise if lastElijahfucked is not 400:
				say "     Your moral compass cheers as you step back from the precipice of damnation, grounding your mind a bit more on the human level.";
				now lastElijahfucked is 400;	[using to mark resisting this impulse]
				if humanity of player < 95, increase humanity of player by 5;
			otherwise:
				say "     You once again resist the dark impulse and decide you should focus more on helping him.";
	otherwise if (hp of Elijah is 3): [de-virgin-ify him nice and slowly]
		if bodyname of player is listed in the infections of hellspawn or bodyname of player is "Hellhound":
			say "     As you approach Elijah and try to touch him, he flinches back from you, saying 'I feel that evil has corrupted you. You saved me, so let me now return the favor.' He catches your arm in an iron grip, visibly straining himself until a golden glow starts forming around his hand and flows into you. You feel strange, but better - a sense of oppression lifting from your soul as your body suddenly shifts.";
			say "[de-demonify]";
		otherwise:
			say "     Do you want to explain the birds and the bees to Elijah and show him what to do with his new equipment?";        
			if player consents:
				say "     You pull Elijah aside in a quiet moment and give him a much-needed explanation of what the appendage between his legs is actually for. His eyes get wider and wider the more you tell him. After you've gone over the basics, he hesitantly says, 'I-I had no idea. My kind wasn't meant for... that. But I'm no longer just an angel, am I? Will - will you - do you want to - ...show me how to be human?";
				say "     You smile at Elijah and stroke his cheek, then pull him in for a kiss, in which he eagerly participates after a moment's hesitation. As you explore his mouth with your tongue, you slide a hand down the front of his tunic, stroking is the growing bulge at his crotch through the white fabric. Elijah closes his eyes and moans softly, reveling in the new sensations running through his body. You fondle him a few minutes, then stop and bring your hands to the fastenings of his tunic and undo them.";
				say "     The white fabric glides off your angel almost like water, revealing his youthful, perfectly proportioned body. You run your hands over his smooth skin, stroking and tickling him, making him giggle. Then you slowly lick over his chest, moving on to his nipples and playfully suck on them. Elijah moans, pulling you up to his head again, this time being the one to initiate a deep and long-lasting kiss. He's learning fast.";
				say "     Time to go on the offensive again - you reach down and grab hold of his impressively long manhood, then start to slowly stroke up and down on it. Elijah moans and pants as you jerk his cock, almost completely oblivious to everything around him as a powerful new feeling boils up inside him. Suddenly you feel his shaft pulse in your hand as he comes, burst after burst of his seed shooting out of it in high arcs.";
				say "     [line break]";
				say "     That ended a bit sudden, but hey - it's his first time. And from the looks of it you've gotten a very enthusiastic Elijah out of it. When he's got his body under control again, he gives you a deep kiss, saying 'I'm really looking forward to more 'human lessons' with you.'"; 
				now hp of Elijah is 4;
				now lastElijahfucked is turns;
	otherwise if (hp of Elijah is 4): [good repeats]
		if bodyname of player is listed in the infections of hellspawn or bodyname of player is "Hellhound":
			say "     Elijah smiles at you as you approach him, eager to get another lesson in how to 'be human'. Then suddenly, his expression shifts when you reach out for him and he shies away from your touch. Elijah says, 'What happened to you? You feel... wrong. Evil almost. I'm sorry my friend, but I can't be close to you like that.' and hurries out of the room.";
		otherwise:
			if (lastElijahfucked - turns < 6):
				say "     Maybe you should let Elijah rest a bit more first. You don't want to wear him out too much, he's still recovering from his ordeal at the demon's hands (and claws).";
			otherwise:
				say "[ElijahSexMenu]";
				now lastElijahfucked is turns;
	otherwise if (hp of Elijah is 99): [evil repeats]
		if (lastElijahfucked - turns < 6):
			say "     Elijah disinterestedly waves you off and keeps lounging around on his bunk as you proposition him. 'I'm not your pet - go grab yourself a husky or some other critter from the streets to fuck.'";   
		otherwise:
			say "[ElijahSexMenu]";
			now lastElijahfucked is turns;

to say ElijahSexMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Suck Elijah's cock";
	now sortorder entry is 1;
	now description entry is "Taste some heavenly seed.";
	now toggle entry is ElijahSex rule;
	choose a blank row in table of fucking options;
	if (cunts of player > 0):
		now title entry is "Let Elijah fuck you";
	otherwise:
		now title entry is "Let Elijah ass-fuck you";
	now sortorder entry is 4;
	now description entry is "Ride Elijah's angel cock.";
	now toggle entry is ElijahSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow you";
		now sortorder entry is 2;
		now description entry is "Put your angel's mouth to good use.";
		now toggle entry is ElijahSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Elijah's ass";
		now sortorder entry is 3;
		now description entry is "Fill the angel's ass with your cock.";
		now toggle entry is ElijahSex rule;
	if (cocks of player > 0) and (Char-C of Elijah is "3") and hp of Sven >= 8 and hp of Sven < 50:
		choose a blank row in table of fucking options;
		now title entry is "Threesome with Sven";
		now sortorder entry is 5;
		now description entry is "Share Sven's mouth and ass with Elijah.";
		now toggle entry is ElijahSex rule;
	if (cunts of player > 0) and (Char-C of Elijah is "3") and hp of Sven >= 8 and hp of Sven < 50:
		choose a blank row in table of fucking options;
		now title entry is "Have sex with Elijah and Sven";
		now sortorder entry is 6;
		now description entry is "Have Elijah and Sven fuck your pussy.";
		now toggle entry is ElijahSex rule;
	if (cocks of player > 0) and ((Char-D of Elijah is "2") or (Char-D of Elijah is "4")) and Felinoid companion is tamed:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Elijah and the Felinoid";
		now sortorder entry is 7;
		now description entry is "Take two hot creature's asses.";
		now toggle entry is ElijahSex rule;
	if (cunts of player > 0) and ((Char-D of Elijah is "2") or (Char-D of Elijah is "4")) and Felinoid companion is tamed:
		choose a blank row in table of fucking options;
		now title entry is "Have Elijah and the Felinoid fuck you";
		now sortorder entry is 8;
		now description entry is "Take two males in your pussy.";
		now toggle entry is ElijahSex rule;
	if (cocks of player > 0) and ((Char-A of Elijah is "3") or (Char-A of Elijah is "4")) and (Candy is in bunker):
		choose a blank row in table of fucking options;
		now title entry is "Fuck Elijah as he takes Candy's ass";
		now sortorder entry is 9;
		now description entry is "Have some fun with your coon and angel friends.";
		now toggle entry is ElijahSex rule;
	if (cunts of player > 0) and ((Char-A of Elijah is "3") or (Char-A of Elijah is "4")) and (Candy is in bunker):
		choose a blank row in table of fucking options;
		now title entry is "Take Elijah's cock as Candy fucks him";
		now sortorder entry is 10;
		now description entry is "Elijah fucks your pussy while Candy fucks his ass.";
		now toggle entry is ElijahSex rule;
	if (( Char-I of Elijah is "3") or (Char-I of Elijah is "4")) and Fang is booked:
		if ( hp of Fang is 3 or hp of Fang is 4 ) and "Submissive" is listed in feats of player:		[Alpha Fang + Submissive feat]
			choose a blank row in table of fucking options;
			if cunts of player >= 2:
				now title entry is "Get fucked by both Elijah and Fang at once";
				now sortorder entry is 11;
				now description entry is "Having more than one cunt, both Elijah and Fang can get one.";
				now toggle entry is ElijahSex rule;
			otherwise:
				now title entry is "Double-penetration by Elijah and Fang";
				now sortorder entry is 12;
				now description entry is "Elijah and Fang stuff your [if cunts of player > 0]cunt[otherwise]ass[end if] at the same time.";
				now toggle entry is ElijahSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the ElijahSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Suck Elijah's cock"):
			say "[ElijahSex1]";
		otherwise if (nam is "Have him blow you"):
			say "[ElijahSex2]";
		otherwise if (nam is "Let Elijah fuck you") or (nam is "Let Elijah ass-fuck you"):
			say "[ElijahSex3]";
		otherwise if (nam is "Take Elijah's ass"):
			say "[ElijahSex4]";
		otherwise if (nam is "Threesome with Sven"):
			say "[ElijahSex5]";
		otherwise if (nam is "Have sex with Elijah and Sven"):
			say "[ElijahSex6]";
		otherwise if (nam is "Fuck Elijah and the Felinoid"):
			say "[ElijahSex7]";
		otherwise if (nam is "Have Elijah and the Felinoid fuck you"):
			say "[ElijahSex8]";
		otherwise if (nam is "Fuck Elijah as he takes Candy's ass"):
			say "[ElijahSex9]";
		otherwise if (nam is "Take Elijah's cock as Candy fucks him"):
			say "[ElijahSex10]";
		otherwise if (nam is "Get fucked by both Elijah and Fang at once"):
			say "[ElijahSex11]";
		otherwise if (nam is "Double-penetration by Elijah and Fang"):
			say "[ElijahSex12]";
		wait for any key;

to say ElijahSex1:    [suck angel cock]
	if (hp of Elijah < 99): [good guy]
		say "     You decide to give your handsome angel a treat this time, putting your arms around his neck and giving him a quick kiss on the lips. Then you run your hands down over his hard, muscled chest, crouching down till your head is level with his crotch. Smiling up at him you undo the zipper of his jeans then pull them down off his legs, revealing Elijah in all his naked glory.";
		say "     Starting with a tentative lick over his balls, you run your tongue along the side of Elijah's long shaft, circling the head of his cock as you get to it. You stroke his dick with your hand a few times, then take its tip between your lips. Elijah moans as you slowly slide his manhood deeper into your mouth, running your tongue over its sensitive skin. Soon he hits the back of your mouth, but you take a deep breath and continue going. When your nose bumps into the skin under his navel, you have Elijah halfway down your throat and moaning about the feelings you're giving him.";
		say "     Pulling off his cock to get some air, you stroke his saliva-coated manhood some more, then start sucking him in earnest, pumping your lips up and down on his hard shaft. You keep him going for a while, bringing him to the brink of an orgasm several times, stopping each time to let him cool down a bit. Then finally you go all out, sucking on his cock hard and pumping it in and out of your throat. After you building up his arousal all this time, Elijah doesn't last much longer. A mind-blowing orgasm shakes his body, his cock pulsing as spurt after spurt of his seed shoot directly into your stomach.";
		say "     Satisfied with pleasing your angel friend, you stand up and give him another deep kiss, playfully exploring his mouth with your tongue."; 
	otherwise:  [evil Elijah]
		say "     Elijah recognizes your lustful gaze playing over his crotch and steps close to you, then pushes you to your knees. Smiling down at you, he undoes the zipper of his leather pants, pushing them down off his legs and revealing Elijah in all his naked glory. His cock is already half hard and just waiting for you to service him.";
		say "     Starting with a tentative lick over his balls, you run your tongue along the side of Elijah's long shaft, circling the head of his cock as you get to it. You stroke his dick with your hand a few times, then take its tip between your lips. Elijah moans as you slowly slide his manhood deeper into your mouth, running your tongue over its sensitive skin. Soon he hits the back of your mouth and pushes on your head to encourage you to keep going. Taking a deep breath, you continue to slide more of his shaft past your lips. When your nose bumps into the skin under his navel, you have Elijah halfway down your throat and moaning about the sensations you're giving him.";
		say "     Pulling off his cock to get some air, you stroke his saliva-coated manhood some more, then start sucking him in earnest, pumping your lips up and down on his hard shaft. You keep him going for a while, bringing him to the brink of an orgasm several times, stopping each time to let him cool down a bit. Then finally you go all out, sucking on his cock hard and pumping it in and out of your throat. After you building up his arousal all this time, Elijah doesn't last much longer. A mind-blowing orgasm shakes his body, his cock pulsing as spurt after spurt of his seed shoot directly into your stomach.";
		say "     'Good job, cocksucker. You're better at this than most incubi.' Elijah says as he pulls out a bit, blasting the last shots of cum onto your tongue and giving you a taste of his seed.";  

to say ElijahSex2:    [cock sucked by Elijah]
	if (hp of Elijah < 99): [good guy]
		say "     You take off your clothing, then softly push Elijah to his knees in front of you. With your cock already half hard in anticipation it doesn't take him long to take its head into his mouth and start sucking, running his tongue over your shaft as he takes it in. Your sexy angel is a natural at cocksucking, making you pant and moan with his talented lips[if cock length of player > 7] and even managing to deep-throat your cock once or twice[end if].";
		say "     Although you'd wish Elijah would go on forever, all too soon your body tingles with an approaching orgasm. You slide out a bit until just the tip is inside Elijah's mouth, then blast your cum onto his tongue. Pulling the angel back to his feet, you then give him a deep kiss, sharing a taste of your seed as your tongue playfully fights with his.";
	otherwise:  [evil Elijah]
		say "     You take off your clothing, then push Elijah to his knees in front of you. With your cock already half hard in anticipation he gets right to work and starts sucking, running his tongue over your shaft as he takes it in. He's a natural at cocksucking, making you pant and moan with his talented lips[if cock length of player > 7] and effortlessly managing to deep-throat your cock once or twice[end if].";
		say "     Although you'd wish Elijah would go on forever, all too soon your body tingles with an approaching orgasm. You slide out a bit until just the tip is inside Elijah's mouth, then blast your cum onto his tongue. He just keeps on sucking, milking you for all you're able to give and swallowing it down greedily. With a satisfied grin, he pulls off, remarking how tasty your cum is.";

to say ElijahSex3:    [fucked by Elijah - ass or pussy]
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if (hp of Elijah < 99): [good guy]
		say "     Preparing to give your angel something he won't forget anytime soon, you slip out of your clothing then walks slowly towards him, making sure to show off all of your naked [bodytype of player] body. You give Elijah a soft kiss on the lips, looking deep into his eyes as your hands move to undo the zipper of his pants. Then, taking hold of his hardening manhood you pull him towards the next bunk.";
		say "     Arriving at the bed you give him another longing kiss on the lips, then push softly against his chest, making him lie down on it. Putting a line of feather-light kisses down his chest, you work your way to his proudly standing erection, just barely touching it with your lips and making Elijah quiver in need. Then, you pull off his boots and slide down the jeans over his long legs until he's fully naked, lying there ready for you to take.";
		say "     Grasping his cock in one hand you start licking it, slowly pumping your hand up and down along its shaft, making it wet and slick with your saliva. With Elijah's moans getting louder with each run of your tongue over his dick and a first drop of precum forming on its head, you see it's time to get going.";
		if cunts of player > 0:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it first against your pussy lips and then lowering yourself on it, sinking the embrace of your folds down over his shaft. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping your pussy up and down, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is fun, but you want Elijah to spread his wings a little (metaphorically). So after a while you lean down to him, kissing him deeply - then pull him up with you and lean backwards, further and further until you're on your back at the other end of the bed with him on top. Giving his tight ass a little squeeze, you whisper 'Fuck me.' to him and can almost feel him growing a bit more inside of you at being given the reins. Not wanting to disappoint, he starts thrusting deep and hard into you, using all kinds of tricks to make you gasp and moan in pleasure. It makes you wonder if he's found a copy of the Kama Sutra somewhere in the library or if he's just a natural.";
			say "     Elijah indulges your body's needs for a long time, keeping you in a pleasant lustful buzz, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your pussy as deep as he can and fills your womb with spurt after spurt of his fertile seed.[fimpregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Seraphim";
				now bodyname of child is "Seraphim";
				now skinname of child is "Seraphim";
			say "     [line break]";
			say "     Both rather out of breath you just lie there on the bunk for a while, then drift off to sleep, comforted by each other's presence.";
		otherwise:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it between the buns of your ass and then lower yourself on it, your sphincter giving way to his cockhead after a bit of pressure. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping up and down on him, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is fun, but you want Elijah to spread his wings a little (metaphorically). So after a while you lean down to him, kissing him deeply - then pull him up with you and lean backwards, further and further until you're on your back at the other end of the bed with him on top. Giving his tight ass a little squeeze, you whisper 'Fuck me.' to him and can almost feel him growing a bit more inside of you at being given the reins. Not wanting to disappoint, he starts thrusting deep and hard into you, using all kinds of tricks to make you gasp and moan in pleasure. It makes you wonder if he's found a copy of the Kama Sutra somewhere in the library or if he's just a natural.";
			say "     Elijah indulges your body's needs for a long time, pausing when you're about to come, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your ass as deep as he can and starts shooting spurt after spurt of his fertile seed. As close as you're to the edge yourself, the pulsing of his hard shaft inside you is enough to make you come too, shooting cum all over yourself, one shot even hitting your own chin.[mimpregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Seraphim";
				now bodyname of child is "Seraphim";
				now skinname of child is "Seraphim";
			say "     [line break]";
			say "     Both rather out of breath you just lie there on the bunk for a while, then drift off to sleep, comforted by each other's presence.";
	otherwise:  [evil Elijah]
		say "     Preparing to give your angel something he won't forget anytime soon, you strip out of your clothing right in front of Elijah, giving him quite a nice show. He can't control himself, stepping close to fondle your [bodytype of player] body during your strip-show. When you're fully naked, you open the zipper of his by then bulging pants, grabbing hold of his hard cock and leading him by it towards the next bunk.";
		say "     Arriving at the bed you push softly against his chest, making him lie down on it. Putting a line of feather-light kisses down his chest, you work your way to his proudly standing erection, just barely touching it with your lips and making Elijah quiver in need. Then, you pull off his boots and slide down the jeans over his long legs until he's fully naked, lying there ready for you to take.";
		say "     Grasping his cock in one hand you start licking it, slowly pumping your hand up and down along its shaft, making it wet and slick with your saliva. With Elijah's moans getting louder with each run of your tongue over his dick and a first drop of precum forming on its head, you see it's time to get going.";
		if cunts of player > 0:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it first against your pussy lips and then lowering yourself on it, sinking the embrace of your folds down over his shaft. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping your pussy up and down, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is lots of fun, but Elijah seems to prefer a more dominant role. So after a while with you on top, he pulls you down for a hot kiss - then grabs you tightly, turning the two of you around so your back is on the mattress now. You can almost feel him growing a bit more inside of you when he takes over, thrusting forcefully into your body. You're overwhelmed, reduced to gasping and moaning in pleasure as he starts using all kinds of tricks, stroking your body in just the right spots while his cock finds pleasure zones you didn't even know you had. Must be something he learned up from all those incubi and succubi he picks up out in the city.";
			say "     Elijah indulges his lusts with your body for a long time, keeping you in a pleasant lustful buzz, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your pussy as deep as he can and fills your womb with spurt after spurt of his fertile seed.[fimpregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Seraphim";
				now bodyname of child is "Seraphim";
				now skinname of child is "Seraphim";
			say "     [line break]";
			say "     After resting with you on the bunk for a moment, Elijah pulls out with a plop. He says, 'Nice pussy, can't wait for the next time.', then saunters off to the bathroom to clean himself up.";
		otherwise:
			say "     You climb on the bed too, kneeling over your handsome angel's body with your legs to both sides of his hips. You take hold of his manhood, rubbing it between the buns of your ass and then lower yourself on it, your sphincter giving way to his cockhead after a bit of pressure. It just feels heavenly as he slides up inside you, rubbing against all the right spots. You gasp in lust as your hips touch, all of Elijah now deep inside your body. After a short moment's rest, you start pumping up and down on him, gyrating your hips a bit to cause all kinds of pleasant sensations for both of you.";
			say "     Riding him is lots of fun, but Elijah seems to prefer a more dominant role. So after a while with you on top, he pulls you down for a hot kiss - then grabs you tightly, turning the two of you around so your back is on the mattress now. You can almost feel him growing a bit more inside of you when he takes over, thrusting forcefully into your body. You're overwhelmed, reduced to gasping and moaning in pleasure as he starts using all kinds of tricks, stroking your body in just the right spots while his cock finds pleasure zones you didn't even know you had. Must be something he learned up from all those incubi and succubi he picks up out in the city.";
			say "     Elijah indulges his lusts with your body for a long time, keeping you in a pleasant lustful buzz, but at some point his self-control is at an end. With a final satisfied moan, he drives his cock into your ass as deep as he can and starts shooting spurt after spurt of his fertile seed. As close as you're to the edge yourself, the pulsing of his hard shaft inside you is enough to make you come too, shooting cum all over yourself, one shot even hitting your own chin.[mimpregchance]";
			if baby is 0 and gestation of child is not 0:
				now facename of child is "Seraphim";
				now bodyname of child is "Seraphim";
				now skinname of child is "Seraphim";
			say "     [line break]";
			say "     After resting with you on the bunk for a moment, Elijah pulls out with a plop. He says, 'Nice tight ass, can't wait for the next time.', then saunters off to the bathroom to clean himself up.";

to say ElijahSex4:    [assfuck Elijah]
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if (hp of Elijah < 99): [good guy]
		say "     You take Elijah to his bunk bed and strip him naked, then instruct him to get on it on all fours. With such a handsome man smiling at you, just waiting for you to take him your cock springs to full hardness almost instantly. You rapidly strip your clothes off, flinging them away aimlessly and climb on the bunk behind Elijah.";
		say "     He wiggles his perfectly rounded ass at you invitingly, making you grab him eagerly and stroke the smooth skin of his buns with both hands. You move forward a bit, sliding cour cock up and down the crack between his cheeks, then aim its head at his tight pucker. Pushing forward, you pop into him and slide into Elijah's ass, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, Elijah starts moaning with lust, gasping when you drive in the last few inches and your balls touch his buns.";
		say "     Resting there for a moment, you lean forward and press a kiss on the middle of his back, and another further up between his wings. Then you start pumping in and out of your ready partner, delighted how each movement makes him gasp and moan. You reach around his body with one hand, running it over his muscled chest down to his fully erect cock. Giving the angel's balls a slight squeeze, you then grab his cock and pump up and down on its shaft in rhythm with your own thrusts.";
		say "     Pumping in and out of Elijah's ass like a horny bunny, the both of you fill the bunker's halls with lustful moans and shouts. After an exhausting but immensely satisfying time fucking each other, you hold on to the angel's wings as you do your last few deep thrusts into his ass and start blasting your cum into his insides. Your body shakes as jet after jet of your seed pulse through your cock, painting Elijah's insides and claiming him as yours.";
		say "     You sink down exhaustedly, your cock still inside Elijah, and rest your head on his sweaty back. Then, not to leave your amazing partner hanging, you slide your hand under his body and stroke his cock. As wound up as he is, your touch makes him cum almost immediately, moaning your name as he shoots his load onto the mattress.";
		say "     With both of you worn out and happy, you lie down on the less sticky sheets of the next bunk in line, just holding each other and soon drift off to sleep.'";
	otherwise:  [evil Elijah]
		say "     You take Elijah to his bunk bed and strip him naked, then instruct him to get on it on all fours. He eagerly complies, taking the position and wiggling his ass at you lasciviously. With him pulling his cheeks apart and urging you to ride his ass, your cock springs to full hardness almost instantly. You rapidly strip your clothes off, flinging them away aimlessly and climb on the bunk behind Elijah.";
		say "     He wiggles his perfectly rounded ass at you, making you give him a playful slap on one cheek and stroke the smooth skin of his buns with both hands. You move forward a bit, sliding cour cock up and down the crack between his cheeks, then aim its head at his tight pucker. Pushing forward, you pop into him and slide into Elijah's ass, the walls of his warm passage tightly gripping your cock. As you sink in deeper and deeper, Elijah starts moaning with lust, gasping when you drive in the last few inches and your balls touch his buns.";
		say "     Resting there for a moment, you lean forward and press a kiss on the middle of his back, and another further up between his wings. Then you start pumping in and out of your ready partner, delighted how each movement makes him gasp and moan. You reach around his body with one hand, running it over his muscled chest down to his fully erect cock. Giving the angel's balls a tight squeeze, you then grab his cock and pump up and down on its shaft in rhythm with your own thrusts.";
		say "     Pumping in and out of Elijah's ass like a horny bunny, the both of you fill the bunker's halls with lustful moans and shouts. After an exhausting but immensely satisfying time fucking each other, you hold on to the angel's wings as you do your last few deep thrusts into his ass and start blasting your cum into his insides. Your body shakes as jet after jet of your seed pulse through your cock, painting Elijah's insides and claiming him as yours.";
		say "     You sink down exhaustedly, your cock still inside Elijah, and rest your head on his sweaty back. Then, not to leave your horny partner hanging, you slide your hand under his body and stroke his cock. As wound up as he is, your touch makes him cum almost immediately, grunting in satisfaction as he shoots his load onto the mattress.";
		say "     After catching his breath, Elijah says 'That was quite a fuck. Let's do it again soon.', then walks over to the bathroom to clean himself up.";

to say ElijahSex5:    [assfuck Elijah + Sven]
	if (hp of Elijah < 99): [good guy]
		say "     You decide to have some fun with both Elijah and Sven, so you call them over to your bunk and tell your snowmeow pet to get on it. Sven already sees what's coming, licking his muzzle and flirting his tail as he readily complies. You guide Elijah to one side of the bunk, sliding your hand into his tight jeans to fondle his cock a bit, then unzip them as his growing bulge starts to strain against the material. With a hard and ready angelic cock presented at just the right height, Sven only has to lean forward a bit to start licking and sucking on it...";
		say "     After watching Sven blowing Elijah's cock for a moment, you step over to the other side of the bunk where Sven's tight asshole is just waiting for some attention. Pulling your own hard cock out, you stroke it and rub it against Sven's soft furry buns. Spreading the precum drooling from its tip along its length to make it a bit more slippery, you push against Sven's tight pucker and slowly sink yourself into his body as it allows you access. You hold still for a moment as you bottom out, running your hands through the warm fur of Sven's buns, then grab hold of his hips and start thrusting in and out of his body.";
		say "     Seeing your willing snowmeow pet suck on your friend's cock while you're fucking him gives the whole experience a whole new level of excellence in your mind. You grin over at Elijah as he moans deeply when Sven sucks on his cock, then return your full attention back to Sven, pulling almost all the way out and thrusting back in in quick fluid motions. Since you don't want this to be over too fast, a while later you stop yourself from hammering into your furry pet and pull out of Sven's tight behind, then wave Elijah to come over to your side of the bunk. Grabbing his rock-hard cock in one hand, you give him a quick kiss, then align it with Sven's asshole and give Elijah's ass a soft push until he's sinking his cock into the snowmeow. Moving to Sven's head yourself, you present him with your hard cock, which he expertly starts to lick and suck.";
		say "     As you spit-roast Sven with one cock in his ass and one in his mouth, you soon hear Sven groan around your shaft in his muzzle and feel his body shudder as he sprays his cum onto the bunk. Your own orgasm doesn't feel too far off either, so before your restraint is overwhelmed, you decide on a certain place to spend your seed and pull out of Sven's mouth. Then you move over to the other side again, hugging Elijah from behind and rubbing your cock against his ass. He eagerly bends forward, readying himself for your entrance. You thrust deep inside his tight ass, gasping at the feelings of need and lust coming over you from the tightness and warmth around your cock. And Elijah seems to be quite aroused by being taken from behind while fucking, as it doesn't take much longer until you hear him moan as he fills Sven with his seed. His spasming anal muscles around your cock take you over the edge with him, making you shoot spurt after spurt of your seed into his ass.";
		say "     With your bunk being rather sticky from Sven cumming all over it while being fucked, you pull some blankets from several others nearby and throw them on the floor to make a comfy pile, then lie down on them with your two partners and cuddle a bit.";
	otherwise:  [evil Elijah]
		say "     You decide to have some fun with both Elijah and Sven, so you call them over to your bunk and motion for your snowmeow pet to get on it. Sven already sees what's coming, licking his muzzle and flirting his tail as he readily complies. Elijah's quick on the uptake too - he almost instantly slides his tight leather pants down and presents his hard cock to Sven. With a hard and ready angelic cock presented at just the right height, Sven only has to lean forward a bit to start licking and sucking on it...";
		say "     After watching Sven blowing Elijah's cock for a moment, you step over to the other side of the bunk where Sven's tight asshole is just waiting for some attention. Pulling your own hard cock out, you stroke it a bit and rub it against Sven's soft furry buns. Spreading the precum drooling from its tip along its length to make it a bit more slippery, you push against Sven's tight pucker and slowly sink yourself into his body as it allows you access. You hold still for a moment as you bottom out, running your hands through the warm fur of Sven's buns, then grab hold of his hips and start thrusting in and out of his body.";
		say "     Seeing your willing snowmeow pet suck on your friend's cock while you're fucking him gives the whole experience a whole new level of excellence in your mind. You grin over at Elijah as he moans deeply when Sven sucks on his cock, then return your full attention back to Sven, pulling almost all the way out and thrusting back in in quick fluid motions. Since you don't want this to be over too fast, you soon stop yourself from hammering into your furry pet and pull out of Sven's tight behind, then wave Elijah to come over to your side of the bunk. Grabbing his rock-hard cock in one hand, you give him a quick kiss, then align it with Sven's asshole and give Elijah's ass a soft push until he's sinking his cock into the snowmeow. Moving to Sven's head yourself, you present him with your hard cock, which he expertly starts to lick and suck.";
		say "     As you spit-roast Sven with one cock in his ass and one in his mouth, you soon hear Sven groan around your shaft in his muzzle and feel his body shudder as he sprays his cum onto the bunk. Your own orgasm doesn't feel too far off either, so before your restraint is overwhelmed, you decide on a certain place to spend your seed and pull out of Sven's mouth. Then you move over to the other side again, pushing against Elijah's back to make him bend over and rubbing your cock against his ass. He eagerly bends forward, readying himself for your entrance. You thrust deep inside his tight ass, gasping at the feelings of need and lust coming over you from the tightness and warmth around your cock. And Elijah seems to be quite aroused by being taken from behind while fucking, as it doesn't take much longer until you hear him moan as he fills Sven with his seed. His spasming anal muscles around your cock take you over the edge with him, making you shoot spurt after spurt of your seed into his ass.";
		say "     With his needs satisfied, Elijah pulls out and gives Sven's ass a last quick squeeze, then walks off towards the bathroom. You're left with a rather sticky bunk from Sven cumming all over it while being fucked so you pull some blankets from several others nearby and throw them on the floor to make a comfy pile. Then you lie down on them and cuddle a bit with Sven.";

to say ElijahSex6:    [Take Elijah and Sven in your pussy]
	[puts Snow Leopard as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Snow Leopard":
			now monster is y;
			break;
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if (hp of Elijah < 99): [good guy]
		say "     Feeling a bit adventurous, you strip completely naked and lie on your bunk, then call over Sven and Elijah. As they come to stand before you, eyes roaming over your bare [bodytype of player] body, their arousal quickly mounts up, with Sven's cock filling out in plain view while Elijah shows a growing bulge in his jeans. You smile at your eager boys, then order Sven to strip Elijah and give him a blowjob. As your faithful sexpet opens up the button and zipper and gets to work on Elijah's revealed manhood, you move a hand down to your pussy, stroking its lips and pushing two fingers inside.";
		say "     You watch for a while as Sven licks and sucks Elijah's cock, causing your handsome angel to moan in lust. Then you decide it's about time to put his angelic spear to some use yourself and tell them to come over to you. Sven pulls off Elijah's boots and helps him step out of his pants, then follows him to the side of your bunk. You open your legs, fingers spreading open the wet lips of your cunt and moan 'Fuck me, Elijah.'";
		say "     He readily complies, aligning his long shaft with your pussy, then sinks himself deep into your folds and starts to thrust in and out. Sven seems to be content just watching your coupling, but you decide to give your pet a treat and reach out for his dick. You stroke your snowmeow, then pull him closer and take his feline shaft in your mouth, sucking on it and playing with it with your tongue.";
		say "     Your mind goes into a kind of lustful haze as your angelic friend fucks you with swift and deep strokes and you're making your soft-furred pet gasp and moan with your mouth and tongue. You can't really say how long the amazing fucking session lasts, but you orgasm several times in its course, your pussy getting drippingly wet around Elijah's thrusting cock[if cocks of player is 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[otherwise if cocks of player > 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[end if]. Then at some point, Elijah's willpower is finally worn out and he can't hold back any longer, grinding his hips against yours to get as deep inside you as possible and burying his hands in the bunk's blanket. You feel his shaft pulse against the inner walls of your pussy as spurt after spurt of fertile seed gets deposited right in your womb.[fimpregchance]";
		if baby is 0 and gestation of child is not 0:
			now facename of child is "Seraphim";
			now bodyname of child is "Seraphim";
			now skinname of child is "Seraphim";
		say "     After the last blast of cum, Elijah sinks down on top of you, taking a deep breath and then giving you a long kiss. You let him rest against you for a moment, then push him softly to the side to lie on your bunk. Time to give your faithful pet his release too - Sven's still standing next to the bunk, a hopeful expression on his face and his feline cock ready to go. Do you want to let him finish in your pussy, or rather suck him off? (Y for pussy, N for sucking)";
		if player consents:
			say "     You tell Sven to fuck you, spreading your legs for him. Your snowmeow pet eagerly sinks his feline cock into your pussy's depths, finding it very well lubricated with Elijah's massive load and your own juices. You pull him down on you as he thrusts rapidly in and out with his hips, giving him a kiss on the muzzle. It's amazing how nice his soft fur feels against the insides of your legs and your chest. You wrap your arms and legs around him, pulling him tightly against you to make him rub against your skin as he fucks you. All too soon, you feel him stiffen against you, gasping in satisfaction as his cock twitches and fills you with his seed, mingling inside your womb with Elijah's earlier deposition.[fimpregchance]";
			say "     As exhaustion claims Sven and you, you shift a bit on the bunk to make room for the three of you, softly pushing the snowmeow off your body to rest between yourself and Elijah. Like that, you three fall asleep, resting together in a slightly sweaty and sticky, but very satisfied group on the bunk.";
		otherwise:
			say "     You shift your body a bit so your head is dangling over the side of the bunk, looking at the world upside-down from your position on your back. Smiling at Sven, you wave him closer, then guide his cock into your waiting mouth. He pumps in and out, first slowly, then faster and faster as his urges tell him to. You relax as good as you can, allowing him to face-fuck you deeply, his feline shaft halfway down your throat often and his furry balls rubbing against your nose. With you sucking him before and the show of your coupling with Elijah, it doesn't take too long until he orgasms, spurting his come directly into your stomach.";
			say "     After the last spurt of cum from his cock, Sven pulls out of your moth and you see him waver a bit with exhaustion. You shift a bit on the bunk to make room, then softly pull him down to lie between you and Elijah. Like that, you three fall asleep, resting together in a slightly sweaty and sticky, but very satisfied group on the bunk.";
	otherwise:  [evil Elijah]
		say "     Feeling a bit adventurous, you strip completely naked and lie on your bunk, then call over Sven and Elijah. As they come to stand before you, eyes roaming over your bare [bodytype of player] body, their arousal quickly mounts up, with Sven's cock filling out in plain view while Elijah shows a growing bulge in his leather pants. You smile at your eager boys, then order Sven to strip Elijah and give him a blowjob. As your faithful sexpet opens up the button and zipper and gets to work on Elijah's revealed manhood, you move a hand down to your pussy, stroking its lips and pushing two fingers inside.";
		say "     You watch for a while as Sven licks and sucks Elijah's cock, causing your handsome angel to moan in lust. Then Elijah decides to go for some pussy, pulling out of Sven's muzzle and telling the snowmeow to pull off his boots and help him out of his pants. Now fully naked, he steps over to your bunk, stroking his long shaft. You open your legs, fingers spreading open the wet lips of your cunt and moan 'Fuck me, Elijah.'";
		say "     He readily complies, aligning his long shaft with your pussy, then sinks himself deep into your folds and starts to thrust in and out. Sven seems to be content just watching your coupling, but you decide to give your pet a treat and reach out for his dick. You stroke your snowmeow, then pull him closer and take his feline shaft in your mouth, sucking on it and playing with it with your tongue.";
		say "     Your mind goes into a kind of lustful haze as the fallen angel fucks you with swift and deep strokes and you're making your soft-furred pet gasp and moan with your mouth and tongue. You can't really say how long the amazing fucking session lasts, but you orgasm several times in its course, your pussy getting drippingly wet around Elijah's thrusting cock[if cocks of player is 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[otherwise if cocks of player > 1] and your own maleness spurting long arches of cum into the air and all over your chest and bunk[end if]. Then at some point, Elijah's willpower is finally worn out and he can't hold back any longer, grinding his hips against yours to get as deep inside you as possible and burying his hands in the bunk's blanket. You feel his shaft pulse against the inner walls of your pussy as spurt after spurt of fertile seed gets deposited right in your womb.[fimpregchance]";
		if baby is 0 and gestation of child is not 0:
			now facename of child is "Seraphim";
			now bodyname of child is "Seraphim";
			now skinname of child is "Seraphim";
		say "     After the last blast of cum, Elijah sinks down on top of you, taking a deep breath and giving your pussy a few more short thrusts to make his cum slosh around a bit and revel in having filled you with his fertile seed. Then he pulls out, grinning down at you in satisfaction, ogling your naked body and giving Sven a quick slap on the ass before he walks off to his bunk.";
		say "     Time to give your faithful pet his release too - Sven's still standing next to the bunk, a hopeful expression on his face and his feline cock ready to go. Do you want to let him finish in your pussy, or rather suck him off? (Y for pussy, N for sucking)";
		if player consents:
			say "     You tell Sven to fuck you, spreading your legs for him. Your snowmeow pet eagerly sinks his feline cock into your pussy's depths, finding it very well lubricated with Elijah's massive load and your own juices. You pull him down on you as he thrusts rapidly in and out with his hips, giving him a kiss on the muzzle. It's amazing how nice his soft fur feels against the insides of your legs and your chest. You wrap your arms and legs around him, pulling him tightly against you to make him rub against your skin as he fucks you. All too soon, you feel him stiffen against you, gasping in satisfaction as his cock twitches and fills you with his seed, mingling inside your womb with Elijah's earlier deposition.[fimpregchance]";
			say "     As exhaustion claims Sven and you, you shift a bit on the bunk to make room for him, softly pushing the snowmeow off your body to lie beside you. Like that, you fall asleep, resting together in a slightly sweaty and sticky, but very satisfied couple on the bunk.";
		otherwise:
			say "     You shift your body a bit so your head is dangling over the side of the bunk, looking at the world upside-down from your position on your back. Smiling at Sven, you wave him closer, then guide his cock into your waiting mouth. He pumps in and out, first slowly, then faster and faster as his urges tell him to. You relax as good as you can, allowing him to face-fuck you deeply, his feline shaft halfway down your throat often and his furry balls rubbing against your nose. With you sucking him before and the show of your coupling with Elijah, it doesn't take too long until he orgasms, spurting his come directly into your stomach.";
			say "     After the last spurt of cum from his cock, Sven pulls out of your moth and you see him waver a bit with exhaustion. You shift a bit on the bunk to make room, then softly pull him down to lie besides you. Like that, you fall asleep, resting together in a slightly sweaty and sticky, but very satisfied couple on the bunk.";

to say ElijahSex7:    [assfuck Elijah+Felinoid]
	if (hp of Elijah < 99): [good guy]
		say "     You see Elijah sitting on the edge of his bunk, bent over to pet the belly fur of your felinoid pet sprawled out on the ground before him. The large cat is loudly purring and is clearly enjoying itself a whole lot - he even shows a half-hard erection of his feline, spined maleness. That gives you an idea...";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0, say "[line break]";
		say "     Going over to sit beside Elijah, you run a hand over his arm then pull his head to your lips. After a heavenly kiss with some playful tongue-wrestling, you say 'I want to be inside you - and let's involve your little friend here too. Look, you got him all worked up and ready for some fun!' You lean down and stroke the felinoid's warm fur, then let your hands wander a bit and brush over his erection.";
		say "     Standing up, you quickly strip off your clothes, then pull Elijah to his feet and over to the clear area between two rows of bunks. Running your hands along the sides of his chest and feeling his muscles, you continue down until you reach his jeans. You fondle his crotch for a moment, stroking his growing bulge and are soon joined by your felinoid companion, who interestedly sniffs at Elijah. Undoing the button and zipper, you push the jeans down his legs, pulling off his boots and having him step out of the pants. With your handsome angel now fully naked, you look up at his lean body then grab hold of his hard cock. You lick the tip and give it a few strokes, then tell him to lie on the felinoid's back.";
		say "     Elijah climbs on top of your felinoid companion and you see the muscles in the large feline's legs flexing as he almost effortlessly takes the angel's weight. With Elijah lying on his stomach on the feline's furry back, his arms wrapped around its chest to hold on, his tight ass is right above the felinoid's. Your cock throbs at the inviting sight of your two friends waiting for you to take them and you stroke its hard length, then place it at Elijah's pucker and push forward.";
		say "     He moans deeply as you slide your shaft inside his body and holds tightly onto the felinoid as you sink deeper and deeper. When you bottom out and feel your balls against his skin, you lean forward to kiss his back between his wings, then start thrusting in and out. Soon you have your angel friend grunting and moaning as he's fucked hard and deep, moving his hips in rhythm with you. He goes back and forth to take your cock even deeper and also to rub his own cock against the felinoid's fur. Meanwhile Elijah's hands have found the felinoid's spined cock below his body and you hear - and feel - the large feline's rumbling purr as its maleness is stroked.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0, say "[line break]";
		say "     Remembering that you have another hole to fuck, you almost reluctantly pull out of Elijah's tight behind, then put your cockhead to the felinoid's pucker. Pushing forward, it resists you a moment, then opens up and allows your cock to slide into the tight warm cave beyond. The felinoid's body stiffens and you hear a roar as you invade his insides, but then the purring starts up again. Looks like he likes being fucked after all. Emboldened, you take out all the stops and slam your hips forward until your crotch rubs the soft fur of his ass. Amazing what sensations await in this changed world where taboos about fucking all kinds of creatures are a thing of the past.";
		say "     As you fuck your companion, you soon feel the urge to shoot your load rise inside you. Which one of your sexual partner's do you want to finish in today? (Y for Elijah, N for Felinoid)";
		if player consents:
			say "     Pulling out of the felinoid's warm chute while you still can, you angle your cock upwards and bury it inside Elijah in one stroke, making him gasp at the sudden intrusion - more in surprise than in pain. You have him moaning again in lust pretty quickly, rapidly pumping in and out of his body as your orgasm continues to build. Then you finally reach the point of no return and pulse after pulse of your seed blasts into Elijah's insides, filling him  up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and giving you an embrace and a deep kiss. Looking at the large felinoid besides you, its back fur sticky with the load or two Elijah shot onto it as you were fucking him, you nod Elijah to it's still fully hard erection. Your angel friend nods and kneels down besides the felinoid, taking its long cock in a hand and stroking it. He runs a finger over and around the short spines and jerks the felinoid off until it shoots an impressive load all over the concrete floor. Afterwards, he exhaustedly staggers over to his bunk, lying down on it to get some rest. He's quickly joined by the felinoid, who sprawls out on the floor just besides his bunk.";
		otherwise:
			say "     You just keep going, the feelings of the non-human asshole of your felinoid companion around your manhood building up your lust further and further. Then you finally reach the point of no return and pulse after pulse of your seed blasts into the felinoid's insides, filling him  up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and giving you an embrace and a deep kiss. Looking at the large felinoid besides you, its back fur sticky with the load or two Elijah shot onto it as you were fucking him, you nod Elijah to it's still fully hard erection. Your angel friend nods and kneels down besides the felinoid, taking its long cock in a hand and stroking it. He runs a finger over and around the short spines and jerks the felinoid off until it shoots an impressive load all over the concrete floor. Afterwards, he exhaustedly staggers over to his bunk, lying down on it to get some rest. He's quickly joined by the felinoid, who sprawls out on the floor just besides his bunk.";
	otherwise:  [evil Elijah]
		say "     You see come upon Elijah and your felinoid companion, with the fallen angel balls deep inside the large feline's ass, pumping his cock in and out. You watch them go at it a moment, then quickly strip off your clothes and step forward to join in.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0, say "[line break]";
		say "     Embracing Elijah from behind, you let your hands roam over his muscled chest and rub your cock against the crack of his ass. Then you pull his head to the side to give him a quick tongue-kiss and tell him to lie down on the furry back of the beast he's fucking.";
		say "     Elijah climbs on top of your felinoid companion and you see the muscles in the large feline's legs flexing as he almost effortlessly takes the angel's weight. With Elijah lying on his stomach on the feline's furry back, his arms wrapped around its chest to hold on, his tight ass is right above the felinoid's. Your cock throbs at the inviting sight of your two friends waiting for you to take them and you stroke its hard length, then place it at Elijah's pucker and push forward.";
		say "     He moans deeply as you slide your shaft inside his body and holds tightly onto the felinoid as you sink deeper and deeper. When you bottom out and feel your balls against his skin, you start rapid thrusts in and out. Soon you have your dark angel grunting and moaning as he's fucked hard and deep, moving his hips in rhythm with you. He goes back and forth to take your cock even deeper and also to rub his own cock against the felinoid's fur. Meanwhile Elijah's hands have found the felinoid's spined cock below his body and you hear - and feel - the large feline's rumbling purr as its maleness is stroked.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if waiterhater is 0, say "[line break]";
		say "     Remembering that you have another hole to fuck, you almost reluctantly pull out of Elijah's tight behind, then put your cockhead to the felinoid's pucker. Pushing forward, you slide into its warm embrace - easy to enter, having been opened up by Elijah's cock, but still nice and tight around your shaft. There's a warm, squishy feeling to the felinoid's insides too - looks like Elijah already dropped a load in him - which makes your cock become even harder in anticipation of adding your own seed to his.";
		say "     As you fuck your companion, you soon feel the urge to cum rise inside you. Which one of your sexual partner's do you want to finish in today? (Y for Elijah, N for Felinoid)";
		if player consents:
			say "     Pulling out of the felinoid's warm chute while you still can, you angle your cock upwards and bury it inside Elijah in one stroke, making him gasp - quickly followed by a 'Yeah, harder!' and a hand reaching back to slap one of your ass-cheeks and pull you tight against him. You quicken your tempo, rapidly pumping in and out of Elijah's body as your orgasm continues to build. Then you finally reach the point of no return and pulse after pulse of your seed blasts into Elijah's insides, filling him up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and rubbing his cock against the sticky patch where he shot a load while you were fucking him. Then the dark angel steps around to the felinoid's front and presents his cock to be licked clean. Grinning at you while his manhood is licked by your felinoid companion, he then saunters off to his bunk and lies down to rest.";
		otherwise:
			say "     You just keep going, the feelings of the non-human asshole of your felinoid companion around your manhood building up your lust further and further. Then you finally reach the point of no return and pulse after pulse of your seed blasts into the felinoid's insides, filling him up with your cum. You pant loudly, your whole body twitching with each shot, then collapse onto Elijah's back.";
			say "     After resting there for a moment, you take a deep breath and pull out with a small plop, standing up on a bit shaky legs. Elijah follows suit, climbing off the felinoid and rubbing his cock against the sticky patch where he shot a load while you were fucking him. Then the dark angel steps around to the felinoid's front and presents his cock to be licked clean. Grinning at you while his manhood is licked by your felinoid companion, he then saunters off to his bunk and lies down to rest.";

to say ElijahSex8:    [Take Elijah and the Felinoid in your pussy - at the same time]
	[puts Felinoid as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Felinoid":
			now monster is y;
			break;
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if (hp of Elijah < 99): [good guy]
		say "     When your felinoid companion comes over to you and rubs his shoulder against your hips, you decide to have a bit of fun today. You call over Elijah, who looks from the felinoid to you, then starts smiling as he sees the lustful glint in your eyes. He lets himself be led to a nearby bunk, where you quickly strip off his boots and clothes, followed by your own. You have him sit on the end of the bunk, then bend over and take his rapidly hardening cock into your mouth. Running your tongue over its warm skin as you bob your head up and down. From behind you, you hear an approving growl, followed by the felinoid's large, rough tongue licking over your exposed pussy.";
		say "     You blow Elijah's cock until it's good and wet - and your handsome angel is moaning in lust - then softly push against his chest for him to lie back and climb on the bunk with him. Kneeling over him, your legs to both sides of his hips, you then lower yourself on his erect, proudly standing maleness. Both of you moan and groan in lust as the tip of his cock pierces your folds and the sides of his shaft rub your insides. When your hips finally touch, you lean down and give Elijah a deep kiss, then look behind you and give the felinoid a meaningful glance as you wiggle your ass at him.";
		say "     The large feline doesn't hesitate a second, pouncing at an opportunity of fucking your pussy. He rears up, putting his paws and strong legs to either side of Elijah's and your chest on the bunk. You feel the soft fur of his belly rubbing against your back and his tongue licking your neck. Then there's the sensation of his hot, barbed cock brushing against the crack of your ass, sliding up and down in search of your pussy. [if cunt width of player < 4]As he finds it and presses in besides Elijah, you don't think it'll fit at first, but then a slight shift goes through your body and your opening stretches to accommodate him - looks like his precum was enough to change that part of you.[otherwise]He finds it and presses in besides Elijah, stretching your opening tight around the two cocks.[end if] A deep vibration goes through you and Elijah as the felinoid purrs in satisfaction, sinking his feline member into your body. He's soon joined by Elijah's moaning at the feeling of a cock rubbing against his own - and of course your own, as two virile males fill your pussy with both their shafts.";
		if cunt width of player < 4:
			increase cunt width of player by 4;
		if cunt length of player < 12:
			increase cunt width of player by 6;
		say "     Roaring in pleasure as he bottoms out inside you, the felinoid then starts to fuck you with deep, forceful thrusts, rocking your whole body back and forth. You have to grab his forelegs to hold on to so he doesn't push you too far up. With two cocks sliding in and out of your pussy and against each other, Elijah moaning below you and the felinoid purring and growling above, your mind gets lost in a lustful haze. You can't say how long this relentless animalistic mating takes, but who cares about such things when two mind-blowing orgasms rock your body in the meantime. Your pussy leaks a copious amount of female juices, lubricating the unending in-out movement of the felinoid's cock and dripping down onto Elijah's balls and crotch. [if cocks of player is 1]And your own cock spasms and shoots long strands of cum all over Elijah's muscular chest.[otherwise if cocks of player > 1]And your own cocks spasm and shoot long strands of cum all over Elijah's muscular chest.[end if]";
		say "     Soon it's Elijah's turn to cum, driven over the edge by your tightness and the felinoid's hard shaft rubbing against his own. He gasps, pulling you down for a deep kiss as his balls pulse with spurt after spurt of fertile seed that erupts into your womb.[fimpregchance]";
		if baby is 0 and gestation of child is not 0:
			now facename of child is "Seraphim";
			now bodyname of child is "Seraphim";
			now skinname of child is "Seraphim";
		say "     The felinoid redoubles his fucking speed as he feels Elijah's angelic cum around his feline cock, trying to get his own sperm into the race for your eggs as fast as possible. After several more deep thrusts, he gives a satisfied roar and you feel forceful blasts of fertile felinoid seed fill your womb, mingling with Elijah's cum.[fimpregchance]";
		say "     Waiting until the last spurt of cum has leaked from his feline cock, the felinoid stays on top of you a moment longer. Then you feel the soft touch of his fur lift from your back, followed by the bunk shaking a bit as the large feline sprawls out against it on the floor. Elijah meanwhile holds you against his chest, softly stroking your body in post-coital bliss. 'That was amazing.' he sighs, and gives you a soft kiss on the lips. Content to lie in the arms of your angel lover, the bunk vibrating slightly with the purrs of the felinoid sprawled against it on the floor, you rest there peacefully for a while.";
	otherwise:  [evil Elijah]
		say "     When your felinoid companion comes over to you and rubs his shoulder against your hips, you decide to have a bit of fun today. You call over Elijah, who looks from the felinoid to you, then grins and strips off his boots and leather pants, revealing a rapidly hardening erection. He lets himself be led to a nearby bunk, where you have him sit on the end of it, then step back and do a little striptease with your clothes for him to watch. Bending over, you take his rapidly hardening cock into your mouth and bob your head up and down on it. From behind you, you hear an approving growl, followed by the felinoid's large, rough tongue licking over your exposed pussy.";
		say "     You blow Elijah's cock until it's good and wet - and your handsome angel is moaning in lust - then softly push against his chest for him to lie back and climb on the bunk with him. Kneeling over him, your legs to both sides of his hips, you then lower yourself on his erect, proudly standing maleness. Both of you moan and groan in lust as the tip of his cock pierces your folds and the sides of his shaft rub your insides. When your hips finally touch, you lean down and give Elijah a deep kiss, then look behind you and give the felinoid a meaningful glance as you wiggle your ass at him.";
		say "     The large feline doesn't hesitate a second, pouncing at an opportunity of fucking your pussy. He rears up, putting his paws and strong legs to either side of Elijah's and your chest on the bunk. You feel the soft fur of his belly rubbing against your back and his tongue licking your neck. Then there's the sensation of his hot, barbed cock brushing against the crack of your ass, sliding up and down in search of your pussy. [if cunt width of player < 4]As he finds it and presses in besides Elijah, you don't think it'll fit at first, but then a slight shift goes through your body and your opening stretches to accommodate him - looks like his precum was enough to change that part of you.[otherwise]He finds it and presses in besides Elijah, stretching your opening tight around the two cocks.[end if] A deep vibration goes through you and Elijah as the felinoid purrs in satisfaction, sinking his feline member into your body. He's soon joined by Elijah's moaning at the feeling of a cock rubbing against his own - and of course your own, as two virile males fill your pussy with both their shafts.";
		if cunt width of player < 4:
			increase cunt width of player by 4;
		if cunt length of player < 12:
			increase cunt width of player by 6;
		say "     Roaring in pleasure as he bottoms out inside you, the felinoid then starts to fuck you with deep, forceful thrusts, rocking your whole body back and forth. You have to grab his forelegs to hold on to so he doesn't push you too far up. With two cocks sliding in and out of your pussy and against each other, Elijah moaning below you and the felinoid purring and growling above, your mind gets lost in a lustful haze. You can't say how long this relentless animalistic mating takes, but who cares about such things when two mind-blowing orgasms rock your body in the meantime. Your pussy leaks a copious amount of female juices, lubricating the unending in-out movement of the felinoid's cock and dripping down onto Elijah's balls and crotch. [if cocks of player is 1]And your own cock spasms and shoots long strands of cum all over Elijah's muscular chest.[otherwise if cocks of player > 1]And your own cocks spasm and shoot long strands of cum all over Elijah's muscular chest.[end if]";
		say "     Soon it's Elijah's turn to cum, driven over the edge by your tightness and the felinoid's hard shaft rubbing against his own. He gasps, grabbing your hips tightly and grinding his crotch up against you as his balls pulse with spurt after spurt of fertile seed that erupts into your womb.[fimpregchance]";
		if baby is 0 and gestation of child is not 0:
			now facename of child is "Seraphim";
			now bodyname of child is "Seraphim";
			now skinname of child is "Seraphim";
		say "     The felinoid redoubles his fucking speed as he feels Elijah's angelic cum around his feline cock, trying to get his own sperm into the race for your eggs as fast as possible. After several more deep thrusts, he gives a satisfied roar and you feel forceful blasts of fertile felinoid seed fill your womb, mingling with Elijah's cum.[fimpregchance]";
		say "     Waiting until the last spurt of cum has leaked from his feline cock, the felinoid stays on top of you a moment longer. Then you feel the soft touch of his fur lift from your back, followed by the bunk shaking a bit as the large feline sprawls out against it on the floor. Elijah meanwhile gives your ass a slight squeeze, then holds you tightly as he rolls over, leaving you to lie on your back on the bunk. He pulls out of your body, smiling at the cum still dripping from his shaft, then stands up. Looking down on the felinoid, he says 'Not bad fucking, you big furball. But don't think I won't be back to fuck your ass only because we were in a pussy together.' He leans down and shoves three fingers in the feline's asshole a few times, then laughs to himself and walks off to his own bunk. You're left lying there alone, your womb filled with cum. Then you feel a vibration going through you, coming from the felinoid's purring as he lies against the bunk on the floor. With how exhausted you are and the soothing purr suffusing your body, you soon fall asleep, giving you some much needed rest.";

to say ElijahSex9:    [Fuck Elijah as he's balls deep inside Candy]
	if (hp of Elijah < 99): [good guy]
		say "     You spot Candy on all fours on his bunk, busy trying out the new toy Elijah gave him. With his bottom in the air, one hand pumping a red-and-white striped dildo in and out of his ass, the girly coon surely is a sight to behold. He's moaning loudly and has got his eyes closed as he imagines one of his dream males fucking him - which gives you an idea...";
		say "     Walking out into the library, where Elijah is sitting at a table and reading a book, you say 'I've got to show you something.' to him, then grab him by the arm and lead him into the bunker. The angel's eyes widen as he sees Candy pleasing himself. He opens his mouth to say something, but you lift a finger to your lips and direct him to stay silent. You whisper 'Don't you think he looks just delicious? You should go join him - a real cock is better than any toy.' while grabbing Elijah's crotch and feeling the growing bulge there. You see Elijah's Adam's apple bob as he swallows, his eyes riveted to Candy. Helping him out, you undo the laces of his boots and pull them off, then free his divine erection from his jeans and push them down and off his legs.";
		say "     Only a very slight push in form of a quick squeeze of his buns is needed to get Elijah moving, walking over to Candy's bunk in his eye-catching nakedness. When he gets there, Elijah brushes his hand softly over Candy's furred buns, making the coon look over his shoulder in alarm - then giggle, as he sees the angel's erection pointing his way. The pink coon rolls over on his back, smiling up at Elijah as he spreads his legs and pulls out the dildo. With such an obvious invitation, Elijah doesn't hesitate, climbing up on the bunk and lining up his cock with Candy's waiting hole. With a lustful moan, he sinks himself inside the girly coon, spreading his wings wide as he feels the tight embrace of Candy's trained asshole.";
		say "     As you watch Elijah's first few thrusts into Candy, slow at first, then faster and faster, your own almost painfully hard cock throbs in anticipation. You quickly strip out of your clothing, then move over to Candy's bunk. Elijah's perfectly shaped ass rising up and down with your two male friend's coupling have an almost hypnotic quality for you. In a kind of lustful daze, you climb on the bunk behind Elijah, eyes never leaving his alluring manhole as you aim your cock at it. Then, you put the pre-cum dribbling cockhead to his pucker and enter him with half your length in one quick thrust. He gasps at the sudden invasion, then starts to moan even more than before as your cock rubs his inner walls.";
		say "     Grabbing Candy's softly furred legs raised up besides Elijah's hips to hold on to, you take out all the stops and thrust forcefully forward, burying your cock to the hilt and driving Elijah's own maleness deeper into Candy's ass. You fuck Elijah - and through him Candy - hard and deep, filling the bunk room with loud moans and groans. It's an amazing feeling to have not one but two handsome males on a bunk for your pleasure - you wish it could last forever, but what ever does?";
		say "     The first to go is Candy, loudly moaning in his girlish voice as he sprays pink jets of cum all over his chestfur, filling the air with the smell of cotton candy. Not far behind, Elijah stiffens below you as his cock starts pulsing, filling Candy's ass with a torrent of his creamy cum. As he orgasms, his anal muscles spasm and contract around your cock, taking you over the edge right with him. With a satisfied groan, you plunge yourself in as deep as possible, then start unloading jet after jet of your seed inside his ass. As the last spurt leaves your body and gets deposited in Elijah, the overpowering urge to rut him vanishes, leaving you exhausted and out of breath. You hug Elijah from behind, running your hands over his chest and kiss his neck. Then you softly pull him to the side until you're lying next to Candy on his bunk. It's a bit of a tight fit, but you don't really care - wrapped around your handsome angel, your softening cock still inside him for now, there's no place where you'd rather be.";
	otherwise:  [evil Elijah]
		say "     You spot Candy on all fours on his bunk, busy fucking himself with a rubber dildo. With his bottom in the air, one hand pumping the sex toy in and out of his ass, the girly coon surely is a sight to behold. He's moaning loudly and has got his eyes closed as he imagines one of his dream males fucking him - which gives you an idea...";
		say "     Walking out into the library, where Elijah is busy sorting a pile of porno mags he acquired somewhere, you say 'I've got to show you something.' to him, then grab him by the arm and lead him into the bunker. A lustful sparkle begins to fill the fallen angel's eyes as he sees Candy pleasing himself. With a wide grin on his face, he pulls off his boots and pushes the leather pants down his legs, making sure you have a good view of his naked body. He wiggles his firm buttocks at you as he steps out of his pants, then saunters over to Candy's bunk.";
		say "     When he gets there, Elijah grabs Candy's furred buns with both hands and gives them a quick squeeze, making the coon look over his shoulder in alarm - then giggle, as he sees the angel's erection pointing his way. The pink coon rolls over on his back, smiling up at Elijah as he spreads his legs and pulls out the dildo. Elijah doesn't hesitate for a second, climbing up on the bunk and lining up his cock with Candy's waiting hole. With a satisfied grunt, he sinks himself inside the girly coon, spreading his wings wide as he feels the tight embrace of Candy's trained asshole.";
		say "     As you watch Elijah's first few thrusts into Candy, slow at first, then faster and faster, your own almost painfully hard cock throbs in anticipation. You quickly strip out of your clothing, then move over to Candy's bunk. Elijah's perfectly shaped ass rising up and down with your two male friend's coupling have an almost hypnotic quality for you. In a kind of lustful daze, you climb on the bunk behind Elijah, eyes never leaving his alluring manhole as you aim your cock at it. Then, you put the pre-cum dribbling cockhead to his pucker and enter him with half your length in one quick thrust. He gasps at the sudden invasion, then starts to moan even more than before as your cock rubs his inner walls.";
		say "     Grabbing Candy's softly furred legs raised up besides Elijah's hips to hold on to, you take out all the stops and thrust forcefully forward, burying your cock to the hilt and driving Elijah's own maleness deeper into Candy's ass. You fuck Elijah - and through him Candy - hard and deep, filling the bunk room with loud moans and groans. It's an amazing feeling to have not one but two handsome males on a bunk for your pleasure - you wish it could last forever, but what ever does?";
		say "     The first to go is Candy, loudly moaning in his girlish voice as he sprays pink jets of cum all over his chestfur, filling the air with the smell of cotton candy. Not far behind, Elijah stiffens below you as his cock starts pulsing, filling Candy's ass with a torrent of his creamy cum. As he orgasms, his anal muscles spasm and contract around your cock, taking you over the edge right with him. With a satisfied groan, you plunge yourself in as deep as possible, then start unloading jet after jet of your seed inside his ass. As the last spurt leaves your body and gets deposited in Elijah, the overpowering urge to rut him vanishes, leaving you exhausted and out of breath. The fallen angel pulls his cock out of Candy, then softly pushes you off his back to lie on the bunk and walks off. Too exhausted to go to your own bunk, you just snuggle up to Candy and fall asleep, your face buried in the warm fur of his side.";

to say ElijahSex10:    [Let Fuck Elijah you as he's being shafted by Candy]
	if (hp of Elijah < 99): [good guy]
		say "     Deciding you're in the mood for some entertainment, you sit back comfortably on your bunk and call over Candy and Elijah. As they come over to stand side by side before you, you smile mischievously at them and say 'I'd like a little show from you two. Why don't you start with kissing each other...'";
		say "     Candy is the first to make a move, giggling girlishly as he rises on tiptoe to kiss the much taller Elijah on the lips. Elijah replies in kind, bowing down a bit and pulling Candy close for a long kiss that leads to a breathtaking make-out session. You watch with rising arousal as they kiss, run their hands over each other's body and do a playful tongue-wrestle.";
		say "     Then Candy takes it to the next level, pushing a petite coon hand down under the front of Elijah's jeans, fondling him. With skillful movements, he has Elijah's button and zipper open and the jeans halfway down his legs in a moment. Candy then kneels down in front of him, stroking Elijah's long cock and licking his balls. He advances to giving Elijah a truly amazing blowjob, making your angelic friend gasp and moan at the sensations.";
		say "     With your pussy already getting wet with the show before you, it's time to join in - you strip off your clothing, then say 'Elijah, come here and fuck me...' and with a nod to Candy '...and why don't you shaft his ass at the same time.'";
		say "     A very eager Elijah steps up to your bunk, climbing up to kneel on it and taking hold of your legs as you spread them for him. Then you feel his hard shaft rubbing against your crotch until it finds the opening of your folds. You moan deeply as Elijah pierces your body, sinking himself inside your tight passage. Reaching up, you pull him down onto you, going for a lustful kiss as he bottoms out and his balls touch your skin. With Elijah's upper body leaned down in your embrace, Candy takes the opportunity to go for his ass as it is raised in the air. The girly coon smiles at you over Elijah's shoulder, aiming his manhood and then pushes in against Elijah's pucker. As he penetrates your angel friend, you feel Elijah's cock switch a bit in your pussy, getting even harder at the sensations from his ass.";
		say "     Candy then starts pushing in and out of Elijah, moaning as your friend's asshole grips his cock tightly. With each of his thrusts he drives deep into Elijah, rocking him forward and making Elijah's cock rub against your insides. Elijah joins him with his own hip movements, sometimes thrusting back to meet Candy for an especially deep penetration of his ass, at other times moving forward to combine their thrusts and slam into you together.";
		say "     Over the next thirty minutes or so you're fucked hard and fast, your mind flooded with pleasure at Elijah's manhood inside you, his hands caressing your body and several more kisses you share between each other. You have two orgasms in that time, pussy juices flowing freely around Elijah's thrusting cock[if cocks of player is 1] and your own erection shooting long strands of cum all over yourself[otherwise if cocks of player > 1] and your own erections shooting long strands of cum all over yourself[end if]. Then it's Elijah's turn - he leans down to hold you tight against himself and kiss you as his shaft pulses with each blast of fertile seed filling your womb. From behind him, you hear Candy gasping loudly as he creams your angel's insides, the contracting and twitching ass muscles of Elijah having driven him over the edge.[fimpregchance]";
		say "     Satisfied at your very pleasurable threesome, you whisper to Elijah to stay with you, then roll over a bit on the bunk. Your angel friend stretches out besides you, holding you to him with one strong arm over your chest. With a nice feeling of security, you fall asleep in his arms.";
	otherwise:  [evil Elijah]
		say "     Deciding you're in the mood for some entertainment, you sit back comfortably on your bunk and call over Candy and Elijah. As they come over to stand side by side before you, you smile mischievously at them and say 'I'd like a little show from you two. Why don't you start with kissing each other...'";
		say "     Candy is the first to make a move, giggling girlishly as he rises on tiptoe to kiss the much taller Elijah on the lips. After only the shortest brush of their lips, Elijah puts his hands on Candy's shoulders, pushing him downward and saying 'You can kiss my cock. Be really good, and you'll get a reward later.' You watch with rising arousal as Candy kneels down in front of Elijah, helping him to step out of his tight leather pants. He strokes Elijah's long cock and licks his balls, then advances to giving Elijah a truly amazing blowjob, making the fallen angel gasp and moan at the sensations.";
		say "     Then at one point, Elijah pushes Candy off his cock, stroking along its length. 'Time for some pussy!' he says, then walks over to you and quickly strips and rips your clothing from you. With barely contained lust Elijah steps up to your bunk, climbing up to kneel on it and taking hold of your legs as you spread them for him. Then you feel his hard shaft rubbing against your crotch until it finds the opening of your folds. You moan deeply as Elijah pierces your body, sinking himself inside your tight passage. He moans deeply as he bottoms out and his balls touch your skin. Then he turns around, with his upper body telling Candy 'Nice job, cocksucker. I'll let you fuck my ass as a reward.' Candy excitedly takes the offered opportunity, aiming his manhood and pushing in against Elijah's pucker. As he penetrates your angel friend, you feel Elijah's cock switch a bit in your pussy, getting even harder at the sensations from his ass.";
		say "     Then, Candy starts pushing in and out of Elijah, moaning as the dark angel's asshole grips his cock tightly. With each of his thrusts he drives deep into Elijah, rocking him forward and making Elijah's cock rub against your insides. Elijah joins him with his own hip movements, sometimes thrusting back to meet Candy for an especially deep penetration of his ass, at other times moving forward to combine their thrusts and slam into you together.";
		say "     Over the next thirty minutes or so you're fucked hard and fast, your mind flooded with pleasure at Elijah's manhood inside you and his hands fondling your body. You have two orgasms in that time, pussy juices flowing freely around Elijah's thrusting cock[if cocks of player is 1] and your own erection shooting long strands of cum all over yourself[otherwise if cocks of player > 1] and your own erections shooting long strands of cum all over yourself[end if]. Then it's Elijah's turn - he leans down to hold you tight against himself as his shaft pulses with each blast of fertile seed filling your womb. From behind him, you hear Candy gasping loudly as he creams your angel's insides, the contracting and twitching ass muscles of Elijah having driven him over the edge.[fimpregchance]";
		say "     His own lusts satisfied, Elijah pulls out of you a bit unceremoniously. He pushes a finger inside your pussy, grinning broadly as it comes out wet with his own cum and a small runnel of seed starts to seep out. Then he walks off, back to his own bunk.";

to say ElijahSex11:    [Get fucked by both Elijah and Fang at once]
	[puts Feral Wolf as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if (hp of Elijah < 99): [Good Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking.  Heading over to Elijah, you whisper your plan to him and he agrees, clearly seeing how much your body is craving it.  You and he head into the library, approaching your alpha wolf.  Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, laying back and welcoming you into his arms.  Taking his cock in hand, you guide yourself down onto it with a lustful moan, which is echoed as Fang climbs atop you, sinking his hard rod into [if cunts of player > 2]another[otherwise]your other[end if] wet pussy.  You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		say "     As the two horny males pound into you, your hot juices flow, your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once.  The fact that one is a hot guy and the other is a wild beast makes it all the better.  Elijah's hands run over your body, working to pleasure you even further.  You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder.  You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your hot pussies clamping down around the pair of cocks stuffed inside you.  The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[otherwise], first Fang and then Elijah[end if].  The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss.  Once you finally come down, you are left panting and soaked in feminine juices and leaking semen from your well-stuffed holes.[impregchance][impregchance]";
	otherwise:			[Evil Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking.  Heading over to Elijah, you whisper your plan to him and he laughs and gives your ass a swat.  'You're such a horny slut.  Let's go for it, honey,' he chuckles, pleased to indulge your lustful body's cravings.  You and he head into the library, approaching your alpha wolf.  Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, pulling you down into his arms as he lays back.  Grabbing your hips, he thrusts onto it, making you release a lustful moan.  This is echoed as Fang climbs atop you, sinking his hard rod into [if cunts of player > 2]another[otherwise]your other[end if] wet pussy.  You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		say "     As the two horny males pound into you, your hot juices flow, your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once.  The fact that one is a hot guy and the other is a wild beast makes it all the better.  As you're being stuffed, Elijah talks dirty to you about how sexy you look and what a slut you are for being Fang's fucktoy.  In the throws of your submissive urges, his words turn you on all the more, echoing how you feel and loving it.  You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder.  You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your hot pussies clamping down around the pair of cocks stuffed inside you.  The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[otherwise], first Fang and then Elijah[end if].  The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss.  Once you finally come down, you are left panting and soaked in feminine juices and leaking semen from your well-stuffed holes.[impregchance][impregchance]";
		decrease humanity of player by 3;		[Additional humanity decrease from evil Elijah]
		if FangWS is 1 and a random chance of 3 in 5 succeeds:
			say "     After Fang and Elijah have pulled out, the wolf raises his hind leg with his dangling cock pointed at you.  You moan softly as your alpha's hot urine starts to spray down onto you.  His piss sprays across your [bodytype of player] body and across your face.  You open your mouth to catch some, enjoying being covered in your alpha's scent.  Hearing Elijah chuckle, you look up see him start to piss over you as well.  'You are such a dirty slut sometimes', he laughs as he sprays you down.  Once they've drained their bladders over you, Elijah gives Fang's ears a scritch, telling the wolf that he's got a fine bitch there.  Awash in the strong scent of the two males who just fucked you, you are pleased by he words, loving your place as a submissive slut.";
			increase libido of player by 16;	[This will be 8 once halved below]
			decrease humanity of player by 5;
	if baby is 0 and gestation of child is not 0 and a random chance of 1 in 2 succeeds:	[50-50 Elijah or Fang's offspring]
		now facename of child is "Seraphim";
		now bodyname of child is "Seraphim";
		now skinname of child is "Seraphim";
	infect "Feral Wolf";
	now libido of player is ( libido of player / 2 );
	decrease humanity of player by 3;


to say ElijahSex12:	[Double-penetration by Elijah and Fang]
	[puts Feral Wolf as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Feral Wolf":
			now monster is y;
			break;
	let baby be 0;
	if child is born or gestation of child is not 0, now baby is 1;
	if (hp of Elijah < 99): [Good Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking.  Heading over to Elijah, you whisper your plan to him and he agrees, clearly seeing how much your body is craving it.  You and he head into the library, approaching your alpha wolf.  Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, laying back and welcoming you into his arms.  Taking his cock in hand, you guide yourself down onto it with a lustful moan.  You ride up and down on it while sharing some slobbery kisses with Fang, the wolf's long tongue sliding along yours.  Once your [if cunts of player > 0]wet cunny[otherwise]back door[end if] has had a chance to relax a little, you lean forward and pause in the fucking to let Fang mount you.  You groan softly as you feel his pointed glans slide between your cheeks[if cunts of player > 0].  Wanting to make sure it finds the intended hole[otherwise].  Eager to get him inside you[end if], you reach back and get it lined up.  You cry out as Fang thrusts into you, pushing his lupine cock into your [if cunts of player > 0]vagina[otherwise]anus[end if] atop Elijah's, stretching your [if cunts of player > 0]cunt[otherwise]asshole[end if] wide to take them both.  Once in, Fang wastes no time and starts pounding into you right away.  You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		say "     As the two horny males pound into you, [if cunts of player > 0]your hot juices flow[otherwise]you do your best to ignore the initial discomfort and focus on the pleasure[end if], your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once in the same hole.  The fact that one is a hot guy and the other is a wild beast makes it all the better.  Elijah's hands run over your body, working to arouse you even further.  You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder.  You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your [if cunts of player > 0]hot pussy[otherwise]tight ass[end if] clamping down around the pair of cocks stuffed inside you, squeezing their cocks firmly against one another.  The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[otherwise], first Fang and then Elijah[end if].  The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss as their combined load fills your [if cunts of player > 0]womb[otherwise]bowels[end if].  Once you finally come down, you are left panting[if cunts of player > 0], soaked in feminine juices[end if] and leaking semen from your well-stuffed hole.[impregchance][impregchance]";
	otherwise:			[Evil Elijah]
		say "     Feeling your submissive urges overtaking you, you decide to get a thorough fucking.  Heading over to Elijah, you whisper your plan to him and he laughs and gives your ass a swat.  'You're such a horny slut.  Let's go for it, honey,' he chuckles, pleased to indulge your lustful body's cravings.  You and he head into the library, approaching your alpha wolf.  Fang, as if smelling your need, accompanies you both into one of the side rooms.";
		say "     Once you're undressed, Elijah gets into position on the floor, pulling you down into his arms as he lays back.  Grabbing your hips, he thrusts onto it, making you release a lustful moan.  You bounce up and down in his lap as he pounds into you while you share some slobbery kisses with Fang, the wolf's long tongue sliding along yours.  Once he's satisfied your [if cunts of player > 0]wet cunny[otherwise]back door[end if] has had a chance to relax a little, he pulls you forward and pauses in the fucking to let Fang mount you.  You groan softly as you feel his pointed glans slide between your cheeks[if cunts of player > 0].  Wanting to make sure it finds the intended hole[otherwise].  Eager to get him inside you[end if], you reach back and get it lined up.  You cry out as Fang thrusts into you, pushing his lupine cock into your [if cunts of player > 0]vagina[otherwise]anus[end if] atop Elijah's, stretching your [if cunts of player > 0]cunt[otherwise]asshole[end if] wide to take them both.  Once in, Fang wastes no time and starts pounding into you right away.  You pant and groan in pleasure as the two start fucking you, Fang going a little slower so Elijah can keep pace with him, both thrusting hard into you again and again in synchronous fucking.";
		say "     As the two horny males pound into you, [if cunts of player > 0]your hot juices flow[otherwise]you do your best to ignore the initial discomfort and focus on the pleasure[end if], your submissive urges loving the fact that you're letting yourself be used by the two sexy lovers at once in the same hole.  The fact that one is a hot guy and the other is a wild beast makes it all the better.  As you're being stuffed, Elijah talks dirty to you about how sexy you look and what a slut you are for being Fang's fucktoy.  In the throws of your submissive urges, his words turn you on all the more, echoing how you feel and loving it.  You delight in the sounds of Elijah's grunts as he tries to keep pace with the feral wolf while Fang pants in your ear and nips at your shoulder.  You tilt your head back, sharing a slobbery kiss with your lupine alpha before turning and kissing Elijah.";
		say "     Feeling so deliciously full as Fang's knot swells and ties with you, you groan loudly in orgasm, your [if cunts of player > 0]hot pussy[otherwise]tight ass[end if] clamping down around the pair of cocks stuffed inside you, squeezing their cocks firmly against one another.  The horny males cum shortly afterwards[if a random chance of 1 in 2 succeeds], first Elijah and then Fang[otherwise], first Fang and then Elijah[end if].  The rush of having both their loads pumping into you makes you cum again, pushing you into multi-orgasmic bliss as their combined load fills your [if cunts of player > 0]womb[otherwise]bowels[end if].  Once you finally come down, you are left panting[if cunts of player > 0], soaked in feminine juices[end if] and leaking semen from your well-stuffed hole.[impregchance][impregchance]";
		decrease humanity of player by 3;		[Additional humanity decrease from evil Elijah]
		if FangWS is 1 and a random chance of 3 in 5 succeeds:
			say "     After Fang and Elijah have pulled out, the wolf raises his hind leg with his dangling cock pointed at you.  You moan softly as your alpha's hot urine starts to spray down onto you.  His piss sprays across your [bodytype of player] body and across your face.  You open your mouth to catch some, enjoying being covered in your alpha's scent.  Hearing Elijah chuckle, you look up see him start to piss over you as well.  'You are such a dirty slut sometimes', he laughs as he sprays you down.  Once they've drained their bladders over you, Elijah gives Fang's ears a scritch, telling the wolf that he's got a fine bitch there.  Awash in the strong scent of the two males who just fucked you, you are pleased by he words, loving your place as a submissive slut.";
			increase libido of player by 16;	[This will be 8 once halved below]
			decrease humanity of player by 5;
	if baby is 0 and gestation of child is not 0 and a random chance of 1 in 2 succeeds:	[50-50 Elijah or Fang's offspring]
		now facename of child is "Seraphim";
		now bodyname of child is "Seraphim";
		now skinname of child is "Seraphim";
	infect "Feral Wolf";
	now libido of player is ( libido of player / 2 );
	decrease humanity of player by 3;


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
		say "     Elijah sags onto his bunk with a sad, exhausted sigh, looking pale and tired.  'I tried, my friend, but I do not have the strength to break the pact you entered into with that fel beast.  I wish I could help you further, but it is beyond my abilities now.  Your reprieve from the effects of the curse will be brief.  You shall have to seek proper absolution from your dark choice elsewhere.";


Section 6 - Losing to the Demons at the Church

to say losetochurchdemons:
	say "     As you fall to your knees under the last attack, the mob howls in laughter at your failed attempt of saving their prisoner. An incubus and succubus step up besides you, grabbing your arms and pull you away from the angel leaning semi-consciously against the cross. The incubus snakes his long tail around your neck, saying 'Pathetic little do-good-er trying to make off with out prize! Now you'll have to watch him lose his virginity and be powerless to stop us!'";
	say "     You're pulled to the side of the chapel, making room for a whole group of incubi and succubi and a large demon brute who parade around the altar. They peel off the angel's ripped tunic and try to shake him awake. The members of the mob lewdly fondle his body and cock, but don't have much luck getting either consciousness or arousal out of him. Switching to another tactic, a succubus grabs the dented silver chalice of the chapel from the ground and holds it up for her male brethren, becoming the center of a group of feverishly masturbating demons. Soon, the now cum-splattered succubus steps up to the angel, triumphantly raising the cup and pouring its contents into his mouth and over his body.";
	say "     It works as intended - the angel's cock fills out and hardens almost instantly, inducing a satisfied moans and chuckles from the demon mob. The succubus throws the chalice aside and moves over to sit on the altar, waving over to the demon brute to bring the angel. As she leans back and spreads her legs eagerly to receive some angel cock, the large demon brute impales their semi-conscious captive on his massive erection, then carries him over to her. With the help of many grabby hands, the angel's cock gets aligned with the succubus's cunt. Then the demon brute thrusts forward, moving the angel's hips too and sinking his virgin manhood into the damning embrace of her folds. Lustful moans and roars get louder and louder as they start fucking hard and deep with their angel cock-sleeve between them. The demon mob closes in around the altar area, jostling for better positions.";
	say "     The two demons holding you look almost spellbound at the action around the altar, then suddenly realize they're still holding you and not taking part themselves. You're quickly and unceremoniously dumped outside the chapel, its doors slammed shut behind you as the demons rush to join the orgy.";
	say "     [line break]";
	say "     You don't think you'll see that angel ever again after this, as the demons are very likely gonna take him home to hell with them, to use and abuse for all eternity.";
	now hp of Elijah is 100;
	remove Elijah from play;


Section 7 - Endings

when play ends:
	if (Elijah is in the bunker) and (hp of Elijah is 99): [evil Elijah]
		if (humanity of player < 10): 
			say "     When you succumb to your infection, Elijah keeps you with him in the bunker for a while, fucking you and making you suck his cock whenever he fancies. After a while, he gets bored with you and releases you out into the city. You see him a few times after that as he grabs one or two new playtoys for himself, and he even fucks you again as he runs into you out on the streets. He doesn't recognize you though, or he just doesn't care for anything but a mouth or hole to satisfy his lust in.";
		otherwise:
			say "     When the soldiers come through the city to rescue you and the others, Elijah decides not to leave. He says he's got a good thing going there, with all of the shifted people out on the streets to fuck as he pleases or grab and keep as more long-term pets and fucktoys in the bunker. [if sarahslut is 4]Just like you did, he remarks with a nod over to Sarah.[end if]";
	otherwise if (Elijah is in the bunker) and (hp of Elijah is 1 or hp of Elijah is 2): [still injured]    
		if (humanity of player < 10): 
			say "     When you succumb to your infection, you forget about the injured angel you left behind unconscious on a cot in the bunker. Luckily, divine emissaries are pretty tough, so he's still alive when a team of soldiers checks out the library bunker for sane survivors. You see him again one more time several weeks later, now garbed in military clothing and part of a team trying to pacify the ferals in the city. It is a close thing, but you manage to escape from them in the ruined streets.";
		otherwise:
			say "     When the soldiers come through the city to rescue you and the others, the injured angel you have in the bunker is airlifted out on a helicopter. You don't see him again after that, but in the following weeks hear rumors about a powerful winged protector that joined the teams of soldiers trying to contain the feral outbreak in the city.";
	otherwise if (Elijah is in the bunker) and (hp of Elijah is 3): [virgin angel]    
		if (humanity of player < 10): 
			say "     When you succumb to your infection, Elijah sets out and tries to heal you, grasping your head in both hands and praying for your sanity. He fails - you're just too far gone, with almost nothing of your former self remaining inside. With tears in his eyes, he lets you go. Devastated about his inability to save you, he becomes somewhat fanatic about containing the outbreak, patrolling the borders of the city day and night, stopping anyone with even the slightest hint of change from leaving.";
		otherwise:
			say "     When the soldiers come through the city to rescue you and the others, you're all taken to a containment facility for medical evaluation and quarantine. Elijah calmly exclaims that he's not actually infected, but in his natural form and asks to speak to the nearest priest. The military chaplain who gets called in is pretty surprised about Elijah's status report, during which he absolves the angel after an earnest confession of having lost his flaming sword in the line of duty. Asked about a replacement, he has to admit that the army doesn't really have a supply of divine weaponry and quickly changes the topic to other ways Elijah might be helping them. Soon the angel is released from the holding facility and brought elsewhere, but not before thanking you again for saving him.";
			say "     You don't see that much of Elijah after that, but are told he joined the special unit responsible for containing the outbreak. That job keeps him too busy to visit, although he does send you letters and greeting cards for your birthday and Christmas every year, without fail.";
	otherwise if (Elijah is in the bunker) and (hp of Elijah is 4): [human-like]          
		if (humanity of player < 10):  
			say "     When you succumb to your infection, Elijah is heartbroken about losing the friend and lover who helped him explore his newfound humanity. He sets out and tries to heal you, grasping your head in both hands and praying for your sanity - but fails. You're just too far gone, with almost nothing of your former self remaining inside. With tears in his eyes, he lets you go to live out your time in the city. Devastated about his inability to save you, he becomes somewhat fanatic about containing the outbreak, patrolling the borders of the city day and night, stopping anyone with even the slightest hint of change from leaving.";
		otherwise:
			if bodyname of player is listed in the infections of hellspawn or bodyname of player is "Hellhound": [can't stand demons]
				say "     When the soldiers come through the city to rescue you and the others, you're all taken to a containment facility for medical evaluation and quarantine. Elijah calmly exclaims that he's not actually infected, but in his natural form and asks to speak to the nearest priest. The military chaplain who gets called in is pretty surprised about Elijah's status report, during which he absolves the angel after an earnest confession of having lost his flaming sword in the line of duty. Then Elijah pulls you to the side, explaining that he's thankful for you saving him and showing him the pleasant side of being almost human - but that he just can't bear the touch of your corrupted form. With a tear in his eye, he gives you a little goodbye wave and leaves with the chaplain. You don't see any more of Elijah after that, but are told he joined the special unit responsible for containing the outbreak.";
			otherwise:  [living together]
				say "     When the soldiers come through the city to rescue you and the others, you're all taken to a containment facility for medical evaluation and quarantine. Elijah calmly exclaims that he's not actually infected, but in his natural form and asks to speak to the nearest priest. The military chaplain who gets called in is pretty surprised about Elijah's status report, during which he absolves the angel after an earnest confession of having lost his flaming sword in the line of duty. Then Elijah requests a leave of absence, stating that in his weakened form he can't fight too well, vowing instead to do good in other ways.";
				say "     When you get released some time after that, Elijah goes with you and you live together as friends and lovers. He takes up a lot of charity work, helping out wherever he can.";
				if (gryphoness is tamed):   [Denise pet]
					say "     Elijah becomes great friends with Denise, happily sharing your house - and bed - with her. They're often soaring through the sky near your home together, doing aerial acrobatics that bring fans and spectators from the surrounding areas. With as much time as they're spending together, it doesn't surprise you much to see Denise lay an[if knowpreg of gryphoness > 0]other[end if] egg pretty soon, from which a beautiful little white gryphlet hatches. The proud couple gives her the name Lailah. Not much time later, Elijah can be seen shepherding [if knowpreg of gryphoness is 2]your own two gryphlets from Denise and [otherwise if knowpreg of gryphoness is 1]your own gryphlet from Denise and [end if]his pretty daughter on flying lessons to show [if knowpreg of gryphoness > 0]them[otherwise]her[end if] some tricks.";
				if (sarahslut is 4):        [Sarah pet]
					say "     While saddened that Sarah lost her humanity so completely, Elijah accepts that most of the blame lies with the husky who originally infected her. Content that you're at least a master who cares for her and fulfills the needs of her husky form, he settles into a comfortable routine with her, often taking her for long walks and always ready to give her some attention and pet her.";
				if (hp of Sven > 7):        [Sven pet]
					say "     Living in the same household, Sven decides to make a sport of getting Elijah aroused whenever he wants. He often hangs around near the angel, stretching his snowmeow body and waving his tail invitingly - especially at inappropriate moments. There are quite a few dinner parties or situations with guests in the house or when Elijah has to excuse himself to take care of a growing problem in his pants - mostly by filling a very eager Sven's ass with his angelic cock. You often use the opportunities to join them for a hot threesome when you see first Sven, then Elijah sneak off into the adjoining rooms.";
				if (felinoid companion is tamed): [felinoid pet]
					say "     Elijah proves to be immune to the changing influence of your felinoid companion, staying completely unaffected even though he is in the same house every day. He likes the big cat, never hesitating to give the him a good scritch under the chin or behind the ears. Usually when Elijah sits on the sofa in the evenings the felinoid joins him - often ending up sprawled out on the sofa on his back, purring like an idling motor as Elijah strokes his belly fur.";

Elijah ends here.