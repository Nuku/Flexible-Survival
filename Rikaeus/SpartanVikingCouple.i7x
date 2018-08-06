Version 1 of SpartanVikingCouple by Rikaeus begins here.
[Version 1 - War Events, Setup of Couple Sex Menu]

[ hp of Sylvia - relationship variable with the player          ]
[   0: not met                                                  ]
[   1: told them her room number                                ]
[   2: watched her give a BJ + told them her room number        ]
[   3: met her in her room                                      ]
[   4: helped her recover from an unnatural heat                ]
[   5: Met at beach                                             ]
[   6: Interactions with pets and companions open               ]
[   7: Discussed her virginity                                  ]
[   8:                                                          ]
[   9:                                                          ]
[   10:                                                         ]
[ 100: refused her event, no further contact                    ]

[ StewartRelationship                                           ]
[   0: Have not encountered Stewart                             ]
[   1: Have met Stewart in the clouds or library                ]
[   2: Have met Stewart and successfully studied with him       ]

[ SatyrFratRichardRelationship                                  ]
[  0: not met                                                   ]
[  1: friendly encounter (know his name)                        ]
[  2: sexual encounter (know his name)                          ]
[  3: fucked in public (know his name)                          ]
[  4: satyr transformed                                         ]
[ 98: neutral encounter (do not know his name)                  ]
[ 99: unfriendly encounter (do not know his name)               ]

[ PericlesRelationship                                          ]
[   0: Hasnt met                                                ]
[   1: Has met via Bjorn Event                                  ]
[   2: Has seen his second event                                ]
[   3: Has seen his third event                                 ]
[   4: Has seen his fourth event                                ]
[   5: Has seen his fifth event, now available in room          ]
[   6: Managed to convince Bjorn to apologize, share rooms      ]
[   7: Failed to Defend the Campus Completely, Dissapointing Him]
[   8: Player Helped Defend the Campus in the War Completely    ]
[   9: Has bested Pericles in Combat, Redeeming Self (WIP)      ]

[ BjornRelationship                                             ]
[   0: Hasn't met                                               ]
[   1: Has rescued from the Spartans                            ]
[   2: Has sufficiently proven their strength to top him        ]
[   3: Manage to convince him to apologize to Pericles          ]
[   4: Failed to Defend the Campus Completely,Dissapointing him ]
[   5: Player Helped Defend the Campus in the War Completely    ]
[   6: Seen player best Pericles in Combat, redeeming self (WIP)]
[  99: Decided against rescuing him                             ]

[ WarLossCounter                                                ]
[   0: Hasn't lost any Stat Checks/Sacrificed self for Pericles ]
[   1: Has lost one Stat Check/Sacrificed self for Pericles     ]
[   2: Has lost two Stat Checks/Sacrificed self for Pericles    ]
[   3: Has lost three Stat Checks                               ]

[ VikingSpartanWar                                              ]
[   0: War Has Not Started                                      ]
[   1: Declaration of War Given                                 ]
[   2: Battle of the Gym has taken place                        ]
[   3: Battle of Fountain Plaza has taken place                 ]
[   4: Battle at the Belltower has been won                     ]
[   5: The Final Battle, The Battle of Tenvale Campus is won    ]
[   6: The Spartan-Viking Peace Treaty is signed, Bjorn Stays   ]

VikingWar is a number that varies.
VikingSpartanWar is a number that varies.
WarLossCounter is a number that varies.

War Declaration is a situation.
The sarea of War Declaration is "Nowhere".

when play begins:
	add War Declaration to badspots of guy;

instead of going to Pericles' Room while (War Declaration is not resolved and VikingWar - turns > 1 and PericlesRelationship is 6 and BjornRelationship is 3):
	move player to Pericles' Room;
	FirstVikingWarEvent;

instead of resolving War Declaration:
	move player to Pericles' Room;
	FirstVikingWarEvent;

to FirstVikingWarEvent:
	say "     Figuring that you may as well go see how the Viking and the Spartan-Helot are getting along, hoping that they haven't murdered each other. Er, at the very least you hope that Pericles hasn't maimed Bjorn. So, you make your path towards your Roman friend's room in the male dorms. As you head there though, you notice that the guardians of the college, the Spartans seem to be in a bit of tense mood, some of them whispering and passing along photos to observe to each other. You however shrug to yourself, deciding that it's not your problem at the moment, continuing onto Dorm Street where you head on into the male residential hall.";
	say "     Going on up the stairs, a few seconds later you're looking at the door to Pericles['] room. Knocking like usual, you hear the sounds of metal clanging and clothes ruffling before the padding of shoes over towards the door, which promptly opens soon after. To your surprise it's Bjorn who answered it, giving you a smile when he sees that it's you at the doorway. 'Hey there! Come on in,' the Viking says with a slight pant to his breath. Raising a brow at that you glance up and down at his appearance and notice that it's ruffled and he's sweating but there's also some cuts at his clothing. So you don't know if they were doing anything... sexual or just sparring, or both. It is Bjorn after all.";
	WaitLineBreak;
	say "     When you see Pericles you notice that he's in a similar state of appearance. Rolling your eyes slightly you give them both a smile. At least your Spartan-Helot friend appears to have gotten over his irritations concerning Bjorn. While it could be considered rather quick to some people, you do know that the Viking was very eager to ease relations with the Roman warrior. So his determination probably helped with softening the other's demeanor. Before you or them could say anything, a Spartan came rushing in through the door. 'General! We have a problem!' he shouts, standing at attention, not looking straight at Pericles.";
	say "     Looking a bit shocked but quickly easing his expression, your Roman friend assumes an authoritative aura. 'At ease soldier, what's the issue?' he asks, clearly wanting to get to the base of the issue. The soldier relaxes his stance and nods, pulling out photos from a pouch on a belt that you just noticed he was wearing. Once he has handed them over to his leader he starts speaking, explaining them. 'Earlier, shortly after the training session that... the Viking took part in, we started spotting people at the outskirts of the campus. They appeared to be similar in appearance to him when he first showed up here, both men and women,' he says, pointing to each photo.";
	WaitLineBreak;
	say "     As the soldier is saying this, Pericles is furrowing his brows, clearly wondering where this is going but Bjorn has a slightly worried look on his face. It was with the next sentence though that all color vanished from the viking's face. 'It was, however, a few minutes ago that we barely managed to protect students lounging at the fountain area as a barrage of flaming arrows were sent careening from far outside the entrance. It was shortly afterwards that a lone projectile pierced one of the trees that we retreated to. Attached to it was this missive,' he says, handing over a folded piece of paper. Taking it, Pericles unfolds it and reads the message out loud. 'For the insult of kidnapping one of our own and holding them hostage without ransom or honor we, the Vikings of the Southern Bay declare war on your puny community. May Odin have no mercy on thee,' he says, scoffing at the end.";
	say "     By now Bjorn has slumped on couch in the corner that you just notice, figuring that Pericles must have recently acquired it. 'These wretches dare threaten our charges?' the Spartan-Helot seethes, the anger clear in his voice. However, to your surprise the rage vanishes as soon as it arrived, a calm look coming to your friend's face. 'No, I need to stay focused and quickly plan for battle. Comrade, I'm expecting you to assist us, as if the campus falls, then the chaos of the city may accelerate far more than anyone can control,' the Roman warrior says to you. You sigh and nod, understanding very well what he means, if a place as large as the college were to succumb to baser instincts rapidly, it may as well be the equivalent of a nanite bomb.";
	WaitLineBreak;
	say "     As soon as you nod though, Bjorn stands up, a determined look on his face. 'I'll fight too!' he yells, causing you to perk a brow at him. Pericles however shakes his head at this. 'No, they're looking for you so there is no reason for you to be out in the middle of everything,' he says firmly. That just causes the Viking to sputter and glare. 'Why not! I deserve a right to fight and protect this place!' the young male shouts, giving an indignant air to him. 'Because! If they get you then there's nothing stopping them from being reckless in their attacks. I'm not taking no for an answer,' the Spartan-Helot says, returning the stubborn response with a stern look.";
	say "     He redirects his attention to you, quickly instructing you. 'I believe that they'll attack the gym first as it is one of the most outer buildings and the least protected. They shouldn't arrive for probably an hour but I'll plan as we go otherwise. As for you, have your fellow soldiers come in here for orders,' Pericles says, aiming the last bit towards the Spartan in the room. You both nod at the instructions. You turn around and head off, preparing yourself for the war to come.";
	now VikingSpartanWar is 1;
	now VikingWar is turns;
	now War Declaration is resolved;
	now Assault On The Gym is not resolved;

Assault On The Gym is a situation.
Assault On The Gym is resolved.
The sarea of Assault On The Gym is "Campus".

when play begins:
	add Assault On The Gym to badspots of guy;
	add Assault On The Gym to badspots of girl;

instead of going to Athletic Street while (Assault On The Gym is not resolved and VikingWar - turns > 0 and VikingSpartanWar is 1):
	move player to Athletic Street;
	SecondVikingWarEvent;

instead of resolving Assault On The Gym:
	move player to Athletic Street;
	SecondVikingWarEvent;

to SecondVikingWarEvent:
	if SatyrFratRichardRelationship is 4:
		say "     Fearing an attack from the Vikings on the gym you make your way there, being concerned for the people in there, probably exercising and working out. So, once you get to the large building housing most of the equipment you make your way on in, taking into account the area you have to work with. As far as you can see there are plenty of students here which makes it a tad bit hard to defend alone. Thankfully though you can see a few Spartans placed at certain points in the gymnasium. Beyond that however, you can see dumbbells also littered about, giving you an idea.";
		say "     Walking around a bit you get a layout of the place, not wanting to be completely caught unawares of any hidden entrances they could come in from. However, before you can fully get a grip on the place you hear shouts and screams from the outside of the gym. Turning around, you see male and female vikings pushing back some students with the blunt of their blades at the entrance of the gym. Seeing the Spartans charge forward to assist you think about the idea you had but wonder if you can implement it.";
		WaitLineBreak;
		say "     Prior to you having to even think about helping, you hear a voice shout 'Let me help you there friend,' before a figure passes you by and starts picking up the barbells and chucking them at the enemies. Seeing as this gives you a second to look over the person who ran by you, instantly you recognize them. It's none other than Richard, your human-turned-satyr friend! With the impressive strength granted to the half-goat people there's no surprise that he can easily repeatedly throw metal weight one after another. Practically at this point the fight is heavily geared in your favor as the Vikings are dropping like flies. However, soon enough though he runs out of ammo but that doesn't appear to deter him as he dashes forward and practically bullrushes a still standing enemy. To your shock he picks him up by the shirt and swings him over his back before spinning and throwing them into another conscious Viking.";
		say "     Richard looks to be about to do something else but one of the few left shouts a retreat and all the ones not on the ground run. The Spartans grab the others while your friend walks up to you with a smile. 'So, what did you think? Did I do good?' he asks, holding his arms behind his head, looking proud of himself. You tell him he did, that you're rather grateful for the help as it did save a lot of the other students. That appears to make his grin widen even more as he replies with a request for you to visit him sometime perhaps, either at his room or the frat. When he leaves a Spartan walks up to you and says that Pericles feels that the next place to be attacked within the next hour is the fountain once more, as they have broken through the entrance. You nod and head on your way, leaving them to their work.";
		now VikingSpartanWar is 2;
		now Assault On The Gym is resolved;
		now Raid On The Fountain is not resolved;
		now VikingWar is turns;
	else:
		say "     Fearing an attack from the Vikings on the gym you make your way there, being concerned for the people in there, probably exercising and working out. So, once you get to the large building housing most of the equipment you make your way on in, taking into account the area you have to work with. As far as you can see there are plenty of students here which makes it a tad bit hard to defend alone. Thankfully though you can see a few Spartans placed at certain points in the gymnasium. Beyond that however, you can see dumbbells also littered about, giving you an idea.";
		say "     Walking around a bit you get a layout of the place, not wanting to be completely caught unawares of any hidden entrances they could come in from. However, before you can fully get a grip on the place you hear shouts and screams from the outside of the gym. Turning around, you see male and female vikings pushing back some students with the blunt of their blades at the entrance of the gym. Seeing the Spartans charge forward to assist you think about the idea you had but wonder if you can implement it.";
		let bonus be (( strength of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Strength Check):[line break]";
		if diceroll + bonus >= 15:
			say "     With a push of energy to your feet you propel yourself towards one of the dumbbells on the floor. Picking it up, you throw it at one of the enemies, the power behind the launch making the Viking it hit go flying back and into another one. Moving to the next one nearest, you chuck it at another of the Norse warriors still standing. Thankfully your aim is good and it lands, sending them to the ground, surprisingly unconscious from the force. You proceed to keep at tossing the dumbbells but as you do this you notice that you're starting to run out of ammo. Getting a determined look on your face, you dash forward towards the remaining Vikings. Throwing your fist forward, you land an uppercut into one of the warrior's chins. This sends him flying and into another one. Getting a sense of danger to your back you spin around and swing your leg into a kick.";
			say "     Seconds later you end up catching the tip of your foot into the side of the Viking behind you, causing her to double over in pain. Taking advantage of his temporary weakness you yank her by the arm and throw her into a group of enemies, practically bowling them over. Looking over all of them you see that they're eyeing you with slight fear and that thought is further cemented when one of them steps forward and shouts a retreat. The remaining standing Vikings turn and run, leaving the others to their fates. This prompts one of the Spartans to walk towards you and nod at your impressive feats of strength before speaking. 'General Pericles wants you to make your way to the fountain as he thinks that they'll strike there within the hour,' he says to you. You nod and turn around, smiling at the many students who thank you as you leave.";
			now VikingSpartanWar is 2;
			now VikingWar is turns;
			now Assault On The Gym is resolved;
			now Raid On The Fountain is not resolved;
		else:
			say "     Running forward you decide to implement your plan and start to try throwing the dumbbells at the Vikings fighting at the other end of the gym. You manage to get the first couple of them off the ground but as you go on you slowly start to notice your energy diminishing. Sure, you're knocking quite a few of the Vikings to the ground, but you are quite rapidly getting more and more sluggish, losing speed and steam to the whole thing and boy are the irritated Norse warriors taking notice of this. In fact a few of them are hurriedly heading this way towards you. As they near closer to you, a series of thoughts run through your head as you wonder what you're going to do. When the first one reaches you she swings her sword downward, you sluggishly managing to dodge out of the way. However, the horizontal slash that she follows up with as well as the shove back is impossibly for you to avoid.";
			say "     You end up getting a graze across your stomach as well as to fall to the floor. Looking up at the Vikings in a panic as they approach you menacingly, you sigh in relief when a Spartan warrior dashes forward and begins combat with the few enemies by you. He appears to be quite skilled in combat but the amount of people on him does make it hard, making him take a few cuts as he fights them all. When he bests the Vikings, he slumps the ground, panting and you can see that he's slowly changing, the nanites fixing him as it's happening. However, before you can watch it all happen, his fellow soldiers take him away and another Spartan comes up to you. The warrior tells you that Pericles believes that the enemies will attack the fountain again next within the hour and you should head there next when you can. Nodding you get up and head on out, hoping the next conflicts aren't anything like this.";
			now VikingSpartanWar is 2;
			increase WarLossCounter by 1;
			if WarLossCounter > 3:
				now WarLossCounter is 3;
			now VikingWar is turns;
			now Assault On The Gym is resolved;
			now Raid On The Fountain is not resolved;

Raid On The Fountain is a situation.
Raid On The Fountain is resolved.
The sarea of Raid On The Fountain is "Campus".

when play begins:
	add Raid On The Fountain to badspots of guy;
	add Raid On The Fountain to badspots of girl;

instead of going to College Fountain while (Raid On The Fountain is not resolved and VikingWar - turns > 0 and VikingSpartanWar is 2):
	move player to College Fountain;
	ThirdVikingWarEvent;

instead of resolving Raid On The Fountain:
	move player to College Fountain;
	ThirdVikingWarEvent;

to ThirdVikingWarEvent:
	if hp of Sylvia is 4:
		say "     Deciding that you might want to head to the fountain before the Vikings attack, you make your way there, getting to it in no time. Once at the location you hum and think that you might have some time before the Vikings attack but you're not entirely sure as to what you could do though. Looking around you see a few trees and the burned patches of grass from the arrows that had to have been launched from outside. Taking a closer peak you see that the dirt is overturned, as if you could possibly hide something there. That, combined with the trees gives you an idea, one that causes you to move forward and walk around the area.";
		say "     To your surprise however when you walk over to one of the large oaks near the fountain you see that it has already been trapped. Moving to a patch of dirt you see the exact same thing, the entire place appears to be booby-trapped but you don't know by who exactly. Sadly though you don't have time to figure that out as soon enough Vikings are marching forward towards the area. Preparing yourself for combat you put your hands forward in a fighting stance, hoping that it doesn't go too terribly. However, you're quite shocked when you hear a yelp and see some of the Norse warriors step into one of the net traps, getting pulled up into it.";
		WaitLineBreak;
		say "     You hear a familiar voice giggling and laughing behind you and see Sylvia sitting on the fountain watching the chaos, trapping supplies in a pile. 'Oh boy, they're not that bright are they?' she asks you, giving you a wink. Chuckling and turning your eyes back to the clusterfuck in front, the canine speaks up as you watch the carnage. 'Figured I'd do my part and help out with this war the campus appears to be having. So what do you think?' she asks, waving her paw to all the traps being triggered. You admire her work and say that it definitely helps the entire situation. 'I do hope so, it took me quite a bit of effort to get knowledge of the war out of the Spartans,' she says with a grumbling sigh.";
		say "     You give a laugh at that, knowing that the Spartans were probably a tad bit confused at Syvlia inquiring about what's going on. Soon enough though the Vikings seem to give up and retreat, leaving behind their trapped comrades. As this happens, your canine friend pushes herself off of the fountain and gives you a wave. 'Alright! My job's done here. Now you don't be a stranger friend, come visit me whenever you can,' she says with a smile as she heads off to the dorms, whistling all the way. As she leaves, Spartans approach the trapped enemies, one of the Roman warriors approaching you with a nod. 'General Pericles has another instruction for you. He thinks they're going to strike at the Bell Tower next in an hour or so and wishes for you to get there when you can,' the buff male says to you. You nod and tell him you'll be there when it happens and head off.";
		now VikingSpartanWar is 3;
		now VikingWar is turns;
		now Raid On The Fountain is resolved;
		now Siege Of The Belltower is not resolved;
	else:
		say "     Deciding that you might want to head to the fountain before the Vikings attack, you make your way there, getting to it in no time. Once at the location you hum and think that you might have some time before the Vikings attack but you're not entirely sure as to what you could do though. Looking around you see a few trees and the burned patches of grass from the arrows that had to have been launched from outside. Taking a closer peak you see that the dirt is overturned, as if you could possibly hide something there. That, combined with the trees gives you an idea, one that causes you to move forward and walk around the area.";
		let bonus be (( intelligence of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Intelligence Check):[line break]";
		if diceroll + bonus >= 15:
			say "     After figuring out that your plan is plausible you talk to the various students around the fountain and ask them to come with you to the equipment storage room on Athletic Street. The few you inquire to follow give you an odd look but shrug and agree. You lead them there and request that half of them gather as much rope and volleyball nets as they can while you head off to Creative Street to see if you cant find anything for the ground. When you do get there with the rest of the people and ask around thankfully it turns out there is something you could work with. The beginning sculpting class had been making tiny balls that would be able to act like marbles. Having the students with you grab a bag each you all head back to the fountain.";
			say "     When you guys get there you see that the ones who were left at the equipment storage room appear to have known what you wanted as they have started to make tree net traps. Nodding at all of them you gesture to the ones with the marble-like objects to move to the overturned dirt. Once there you place some of them on the ground and hide them but not-so much that if someone to step on them that they wouldn't slip. It takes all of you a good twenty to thirty minutes but you manage to set everything up in a good enough time.";
			WaitLineBreak;
			say "     You guys have just enough time to get in a defensible position on the fountain when the Vikings arrive. Prepped with basketballs that some of the students had grabbed a hold of just in case as you guys watch on in hope that the traps succeed. To all of your joy many of the Norse warriors yelp as they get caught in them, some of them being pulled up in a net, others slipping and falling on their asses. Some of the students take this opportunity to chuck their weapons at the prone enemies, dealing massive damage to them. All this chaos ends up throwing the Vikings into a panic, not having expected a trapped battlefield. As the enemies['] numbers dwindle more and more, their morale fell as well. One of the Norse warriors who had yet to run forward sounded a retreat. The others still standing followed the call and turned tail, leaving their fallen allies to your tender mercies.";
			say "     A minute or two after they leave, the Spartans show up, one of them approaching you while the rest round up the Vikings. The Roman male looks over you guys and nods, telling you all that you did great and that they'll take it from here. He then turns to you and gives you a missive from Pericles. Opening it and reading it to yourself you see that the next conflict should be at the belltower, seeing that it's on the other end of the campus. He also lets you know that he's almost done planning the final battle and that after the next it should be time to end it all. Closing the note you nod and head off, wondering what'll come up next.";
			now Raid On The Fountain is resolved;
			now Siege Of The Belltower is not resolved;
			now VikingWar is turns;
		else:
			say "     After figuring out that your plan is plausible you talk to the various students around the fountain and ask them to come with you to the equipment storage room on Athletic Street. You barely manage to convince some of the students with your plan, who shrug and follow you. You lead them there and request that half of them gather as much rope and volleyball nets as they can while you head off to Creative Street to see if you cant find anything for the ground. When you do get there with the rest of the people and ask around thankfully it turns out there is something you could work with. The beginning sculpting class had been making tiny balls that would be able to act like marbles. However, there doesn't seem to be a lot there so you can only grab enough to kit out half of you present.";
			say "     When you guys get there you see that the ones who were left at the equipment storage room appear to have known what you wanted as they have started to make tree net traps, though they don't appear to be greatly made at all. Nodding at all of them you gesture to the ones with the marble-like objects to move to the overturned dirt. Once there you place some of them on the ground and hide them but not-so much that if someone to step on them that they wouldn't slip. It takes all of you a good twenty to thirty minutes but you manage to set everything up in a good enough time, at least you hope you did.";
			WaitLineBreak;
			say "     However, before you guys can get into a defendable position, you hear the sounds of people approaching. Turning you see Vikings heading your way, catching you all unaware. As you watch them walk forward, you see some of the Norse warriors getting caught in the traps. To your shock though, the ones still standing start to sidestep the snares and marbles left. It appears you didn't hide them well enough, which begins panic the students near the fountain. One of the fighters manages to get through and grabs a hold of one of the people near you. They yelp in terror and stumble backwards in fear, trying to get away from them.";
			say "     Thankfully though, he was saved by the flat side of a sword that ended up smacking against the side of the Viking's face, sending her careening to the ground. Looking to where the weapon came from you realize that the Spartans arrived, just in time to save you all. They quite easily best the slightly disoriented Norse warriors, forcing them to retreat and capturing the rest. While most of them are rounding up the enemies, one of them approaches you with a missive from Pericles. It tells you that the next attacked location should be the belltower, with it being on the outer bit of the campus. On top of that he lets you know that the war should be nearing the end, as he is closing in on the final details of his plans. Nodding at the letter you head on your way.";
			now VikingSpartanWar is 3;
			increase WarLossCounter by 1;
			if WarLossCounter > 3:
				now WarLossCounter is 3;
			now Raid On The Fountain is resolved;
			now Siege Of The Belltower is not resolved;
			now VikingWar is turns;

Siege Of The Belltower is a situation.
Siege Of The Belltower is resolved.
The sarea of Siege Of The Belltower is "Campus".

when play begins:
	add Siege Of The Belltower to badspots of guy;
	add Siege Of The Belltower to badspots of girl;

instead of going to College Belltower while (Siege Of The Belltower is not resolved and VikingWar - turns > 0 and VikingSpartanWar is 3):
	move player to College Belltower;
	FourthVikingWarEvent;

instead of resolving Siege Of The Belltower:
	move player to College Belltower;
	FourthVikingWarEvent;

to FourthVikingWarEvent:
	if StewartRelationship is 2:
		say "     Noticing that it's been a while since the battle at the fountain you decide you should make your way to the belltower before the Vikings get there. When you do arrive at your desired location you notice that there's not many people present, so it brings up the thought as to why the Vikings would want to attack such a place. You muse to yourself for a few seconds before thinking that maybe it's because it is the tallest building on the campus which would allow them quite the overlook on any targets that come this way. Drawing your inner tidings away from that, you wonder how you're going to defend this place, as it is quite open.";
		say "     You first think about doing what had happened before in at the fountain, but quickly toss that idea into the trash. There was nothing to hide any traps you could set up and you're pretty sure that any ammunition for said inconveniences was already used earlier. Looking around once more you bring your eyes to the belltower itself where an idea comes to your mind rather quickly. You did have a similar thought to this earlier... and it wouldn't be that hard to accomplish if you wanted to. You're also pretty sure that students do leave things up there so you won't be out of ammo.";
		WaitLineBreak;
		say "     Making your decision you head to the door that leads up to the top of the belltower, figuring it's better than nothing. As you do this, you hear a large amount of feet moving behind you, causing you to speed up. However, before you can reach the door you hear yelps and screams, inspiring you to turn around and see what happened. To your utter shock you see the winged students swooping down and picking up the various Vikings heading towards the building. They appear to be flying them in the direction of where the Spartans have set up camp, near the male dorms. It's rather hilarious to be honest how easy it is for them to pick off the Norse warriors.";
		say "     One of the students is very recognizable to you, it being Stewart after all who flaps his wings as he lands right in front of you with a smile. 'Hey there! Saw you out here and figured you needed help so I called in some buddies of mine,' he says rubbing the back of his head with his de-transformed hand. You return his facial expression and thank him, saying that you weren't entirely sure if your plan was going to succeed so you are glad that you didn't have to try it. He nods and gives you a serious look that is rather odd on his face for you. 'So... Pericles told me to tell you that the final battle is next as he just finished his plan. Within the next hour they'll be gathering at the entrance and he hopes to see you there,' Stewart says to you before giving you another warm smile prior to leaving. You wave him goodbye and head off as well, mentally prepping yourself for the final conflict.";
		now VikingSpartanWar is 4;
		now VikingWar is turns;
		now Siege of The Belltower is resolved;
		now Battle For Tenvale Campus is not resolved;
	else:
		say "     Noticing that it's been a while since the battle at the fountain you decide you should make your way to the belltower before the Vikings get there. When you do arrive at your desired location you notice that there's not many people present, so it brings up the thought as to why the Vikings would want to attack such a place. You muse to yourself for a few seconds before thinking that maybe it's because it is the tallest building on the campus which would allow them quite the overlook on any targets that come this way. Drawing your inner tidings away from that, you wonder how you're going to defend this place, as it is quite open.";
		say "     You first think about doing what had happened before in at the fountain, but quickly toss that idea into the trash. There was nothing to hide any traps you could set up and you're pretty sure that any ammunition for said inconveniences was already used earlier. Looking around once more you bring your eyes to the belltower itself where an idea comes to your mind rather quickly. You did have a similar thought to this earlier... and it wouldn't be that hard to accomplish if you wanted to. You're also pretty sure that students do leave things up there so you won't be out of ammo.";
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 15:
			say "     You end up making your decision on what you're going to do and rush towards the door that leads up to the top of the tower. It's a good thing you're running as you soon hear a large amount of footsteps as you go through the entrance and start heading onto the stairs. A minute later you're up at the top of the tower and you sigh in relief when you see a large amount of textbooks and basketballs obviously left here by the many students who hang out up here. Looking out over the balcony of the belltower you see a large group of Vikings heading straight for the building, which prompts you into acting immediately, sending your plan into action.";
			say "     Grabbing the first thing you see, which is a large text book you aim and chuck it, landing a direct hit onto one of the Norse warriors. As it nails the woman in the head they barrel backwards before slumping to the ground unconscious. This shocks the others around her as they scatter, clearly expecting more projectiles and oh boy are you going to give them more. Turning around you pick up some more books and a few basketballs and begin to aim some more and toss them. With near-perfect accuracy you land several hits against the Vikings sending all of the ones smacked to the concrete unconscious.";
			WaitLineBreak;
			say "     You do this quite a few times, before it appears that the Norse warriors finally give up, turning and running tail, leaving you victorious in your practical sniping spot. Giving yourself a mental pat on the back you head on down and when you get there, you're met with multiple Spartans. Some of them are dragging away the unconscious Vikings while one steps forward, more than likely to talk to you, which he does so. 'General Pericles wished for me to let you know that the final battle is at hand and is going to be taking place at the entrance in the next hour. He hopes that you'll be there,' the warrior says giving you a nod as he turns to go help his fellow comrades. You yourself head on your own way, thinking about how the final battle will go.";
			now VikingWar is turns;
			now Siege of The Belltower is resolved;
			now Battle For Tenvale Campus is not resolved;
		else:
			say "     Making a decision on what to do, you quickly head towards the door of the belltower, opening it and heading on in. However, as you do this you hear the sound of a lot of people heading your way. You try your best to make it up the tower in time, before they can catch you. When you reach the top you spot a large amount of textbooks and basketballs probably leftover from the many students that like to hang out up here. Hurriedly grabbing one you look at one Viking and chuck it at them. However, to your horror and shock she dodges and smirks at you as they get closer and nearer to the entrance.";
			say "     You repeatedly attempt to toss books and basketballs at them but your lack of aim and dexterity appears to hinder you, as you only hit a few of them, grazing them at best. Panicking you try the next idea which is letting a bunch of the basketballs roll down the stairs as they come up, which only really knocks down a few of them. However, relief comes to you when Spartans arrive and start attacking them. It's a tough battle for them since the Vikings do have a defensible position and they do lose some people but in the end they win. One of them trudges up the stairs and with weary breath informs you that the final battle is going to occur in about an hour, as Pericles has finished the final preparations for his plan. You nod and let him go before you too head on your way.";
			now VikingSpartanWar is 4;
			increase WarLossCounter by 1;
			if WarLossCounter > 3:
				now WarLossCounter is 3;
			now VikingWar is turns;
			now Siege of The Belltower is resolved;
			now Battle For Tenvale Campus is not resolved;

Battle For Tenvale Campus is a situation.
Battle For Tenvale Campus is resolved.
The sarea of Battle For Tenvale Campus is "Campus".

when play begins:
	add Battle For Tenvale Campus to badspots of guy;
	add Battle For Tenvale Campus to badspots of girl;

instead of going to College Campus Entrance while (Battle For Tenvale Campus is not resolved and VikingWar - turns > 0 and VikingSpartanWar is 4):
	move player to College Campus Entrance;
	FifthVikingWarEvent;

instead of resolving Battle For Tenvale Campus:
	move player to College Campus Entrance;
	FifthVikingWarEvent;

to FifthVikingWarEvent:
	say "     Figuring that it's finally time, you make your way towards the entrance of the campus. Once there you're rather awed by the amount of fighters that Pericles managed to get together. From every member of the various sports teams to even the more rowdy frats the Spartan-Helot leader has acquired quite a few people to defend the campus. Walking up to your friend you give him a smile which he returns, albeit in a more serious form. 'It's nice to see you, I was definitely hoping to see you here,' he says, nodding in your direction. You hum and ask him where Bjorn is as you doubt he'd miss this battle for anything. 'I told him to stay in my room and left two Spartans guarding the doors,' he informs you gesturing in the direction of the dorms.";
	say "     Soon enough though you guys hear a warcry near the outskirts of the campus which causes everyone to turn and get on guard. Quickly after, a large force of Vikings come pouring through the entrance which is met in response by your side charging forward. Following after everyone you launch forward with a punch at one of the enemies, managing to catch them in the cheek but you have to rapidly duck to avoid a haymaker. Thankfully though, one of your allies gets rid of the enemy who swung at you from behind by practically slam dunking them on the head. This art of warfare continues for a while with you traveling across the battlefield, landing blows against many Vikings. However, out of the corner of your eyes you recognize someone who shouldn't be here.";
	WaitLineBreak;
	say "     At the opposite end of the warzone is Bjorn, fighting against his own people rather fiercely and from what you can see, Pericles has noticed this and isn't happy. Though quite quickly your expression turns to horror as you see the friendly Viking knocked to the ground and one of the enemies raise their weapon to hit him while he's down. Normally the nanites would heal almost any wound but the one the Norse warrior was aiming for looked to be instantly fatal. Looking at the Spartan-Helot you notice him dashing towards Bjorn, causing you to quickly re-evaluate your position. You realize that if you go now you could do what Pericles is planning and practically negate the hit on your seafaring friend. But, you don't know if you want to.";
	LineBreak;
	say "     [bold type]Do you take the blow for Bjorn?[roman type][line break]";
	say "     [link](y)[as]y[end link] - Yes, save Pericles from his attempt at saving Bjorn.";
	say "     [link](n)[as]n[end link] - No, you'd rather not harm his honor.";
	if player consents:
		say "     Sighing and dashing forward you hurriedly shove Bjorn out of the way. As soon as you do this, you feel a blade come down on your side, searing pain following. Grunting and falling to the ground you hear the Viking who hit you also fall to the ground. 'Are you okay?!' Bjorn's voice shouts as he helps you up from the ground. Letting out a groan as the nanites begin to slowly stitch your skin back together, which you'll forever be thankful for as healing the slow way would be a pain in the ass. As you look over to where Pericles is, you see that he has an angry look on his face and he readies his sword before dashing forward at the remaining enemies.";
		say "     What you end up witnessing could be compared to nothing less than a massacre, just with unconscious bodies. The Spartan-Helot charges from enemy to enemy and incapacitates them, moving with the grace of a dancer, making you think that if he wasn't wearing the armor it'd be hard to think of him as a Spartan, though he does take hits, causing pieces of his armor to come off. It doesn't take long before most if not all of the Vikings are on the ground. Once this is done, Pericles stands tall and glares at all of them before speaking. 'You all will surrender and sign a peace treaty with us, is that clear?' he asks coldly, his tone booking no argument. The one seemingly leading all the Norse warriors reluctantly nods at the practical order.";
		WaitLineBreak;
		say "     Pericles walks up to the leader of the Vikings and speaks with him for a bit before walking over to you, who is still being assisted by Bjorn. He gives you a smile before turning on your seafaring friend with narrowed eyes. 'I thought I told you to remain in my room?' Pericles asks with a stern tone, causing the other male to squirm. 'You did... but I didn't want you to fight alone!' he shouts, a stubborn look on his face. This just causes the Spartan-Helot to sigh and turn to you, nodding when he sees that your wounds have fully healed by now. 'So, I think I'll have the treaty signing in the library. When you're ready come and see it, I have some things to discuss with you,' he says before grabbing the Viking by the arm and heading off. You raise your brow but shrug then leave as well.";
		decrease WarLossCounter by 1;
		if WarLossCounter < 0:
			now WarLossCounter is 0;
		now VikingSpartanWar is 5;
		now VikingWar is turns;
		now Battle For Tenvale Campus is resolved;
		now Peace Between Communities is not resolved;
	else:
		say "     Deciding against it, as Pericles might complain, you just sit where you are, keeping a mental awareness just in case someone attacks. When your friend pushes Bjorn out of the way he takes a slash to the back that seems to cut through his armor, falling to the ground in pain, but not severely crippled, as the nanites do heal injuries. Bjorn however looks extremely pissed when you turn your stare on him and he launches himself at the other Viking. 'Do. Not. Attack. My. Friends!' he roars, embellishing each word with a punch, the last one sending the enemy flying practically. One of the other Norse warriors sneers at him, speaking up. 'Why should we listen to you traitor?' she asks, clearly not a fan of him. Calmly he picks up Pericles['] sword and holds it firmly in his hands.";
		say "     You take this as a cue to move forward and help support the Spartan-Helot up, making sure his wound is healing correctly. As you do this, you watch as Bjorn dashes forward and clashes weapons with his former fellow Vikings. At first it appears that he's at a disadvantage but you then notice him take a stance that's very familiar to you, one that you've seen the Spartans and Pericles take before. Right as he slides into this form he quickly has advantage over his enemies, disarming and incapacitating them with sheer utter force. When he manages to disarm and knock down the largest of the Vikings, he glares at them all. 'Surrender, now!' he growls, his attitude reminiscent of Pericles when he's in Spartan mode.";
		WaitLineBreak;
		say "     Very hesitantly the Norse warrior he just knocked down raises his arms and nods, vocalizing their surrender, allowing Bjorn to return to your side with Pericles. 'What'll you have them do?' he asks the Spartan-Helot with a softer expression as if deferring to him. 'I think I'll have them sign a peace treaty in the library,' he says with a grunt before turning to you. 'I'd appreciate it if you could be there, as I do have some things to talk to you about,' the Roman male says nodding in your direction. You return the gesture and say you'll try your best to get there on time and as soon as you finish saying this the two appear to be in a conversation only between them. So instead you shrug and head on your way, deciding you'd catch up at the library.";
		now VikingSpartanWar is 5;
		now VikingWar is turns;
		now Battle For Tenvale Campus is resolved;
		now Peace Between Communities is not resolved;


Peace Between Communities is a situation.
Peace Between Communities is resolved.
The sarea of Peace Between Communities is "Campus".

when play begins:
	add Peace Between Communities to badspots of guy;
	add Peace Between Communities to badspots of girl;

instead of going to Tenvale College Library while (Peace Between Communities is not resolved and VikingWar - turns > 0 and VikingSpartanWar is 5):
	move player to Tenvale College Library;
	SixthVikingWarEvent;

instead of resolving Peace Between Communities:
	move player to Tenvale College Library;
	SixthVikingWarEvent;

to SixthVikingWarEvent:
	if WarLossCounter < 2:
		say "     As you walk along the pathways of the campus you notice that there appear to be quite a few people gathering near the library. Then it hits you, the peace treaty was supposed to be signed quite soon after the ending of the war. With a facepalm to your forehead you head on into the library, pushing your way through the crowd. When you get in you see Pericles sitting at a table, with Bjorn standing behind him, and a large Viking sitting at the other end. In the middle of the table is a piece of paper and a pen, which you assume to be the treaty. However, looking closer at your two friends you notice that their attire is quite different.";
		say "     Pericles appears to have dropped his armor for now and is wearing what looks like a toga and a wreath-like laurel crown on his head. Bjorn on the other hand has dropped the armor that he was made to wear completely and is wearing a black tank top and tight leather pants, looking very much like a college student right now, though you're not entirely sure why. Quickly redirecting your attention over to the table when they start moving you see the Spartan-Helot push the paper and pen forward. 'Signing this treating declares that you will not attack us and that Bjorn will be your representative by going to classes here and staying with me, do you understand?' Pericles asks. The Viking grunts and pulls the paper towards him and quickly signs before standing up and leaving, not saying anything. When he's gone, Pericles notices you and waves you over.";
		WaitLineBreak;
		say "     Heading on over, the Spartan-Helot gives you a smile, as does your seafaring friend. 'You were brilliant during the entire thing!' Bjorn says cheerfully, Pericles nodding along to it. 'Mhm, without your help we would have lost a whole lot more to infection and changes. So, I really appreciate it my friend,' the Roman warrior says, giving you a hug. When you two come out of it he gives you an interesting look. 'So, if you want to have any fun with me and Bjorn here just come see us at my room, we'll be glad to give you a show, isn't that right my Viking?' Pericles says, turning to him. The other buff male simply blushes and nods, causing you to chuckle at the both of them and let them know that if you're ever interested you'll let them know. They both smile at that before wishing you a goodbye before leaving you alone in the library, free to do whatever.";
		now PericlesRelationship is 8;
		now BjornRelationship is 5;
		now VikingSpartanWar is 6;
		now Peace Between Communities is resolved;
	else:
		say "     As you walk along the pathways of the campus you notice that there appear to be quite a few people gathering near the library. Then it hits you, the peace treaty was supposed to be signed quite soon after the ending of the war. With a facepalm to your forehead you head on into the library, pushing your way through the crowd. When you get in you see Pericles sitting at a table, with Bjorn standing behind him, and a large Viking sitting at the other end. In the middle of the table is a piece of paper and a pen, which you assume to be the treaty. However, looking closer at your two friends you notice that their attire is quite different.";
		say "     Pericles appears to have dropped his armor for now and is wearing what looks like a toga and a wreath-like laurel crown on his head. Bjorn on the other hand has dropped the armor that he was made to wear completely and is wearing a black tank top and tight leather pants, looking very much like a college student right now, though you're not entirely sure why. Quickly redirecting your attention over to the table when they start moving you see the Spartan-Helot push the paper and pen forward. 'Signing this treating declares that you will not attack us and that Bjorn will be your representative by going to classes here and staying with me, do you understand?' Pericles asks. The Viking grunts and pulls the paper towards him and quickly signs before standing up and leaving, not saying anything. When he's gone, Pericles notices you and waves you over.";
		WaitLineBreak;
		say "     When you reach the Spartan-Helot you notice he has a frown on his face. 'We lost a lot more people than I expected to infection than I thought we would,' he murmurs. You wince, knowing that your mess-ups might have to do with that. 'I know you tried your best but the Spartan in me kind of wished you did better,' Pericles says to you, running a hand through his hair. When your eyes slide to Bjorn you see that he's sort of conflicted, wanting to support your side but also your Roman friend's side as well. 'To put it bluntly, I think you need to prove yourself to me again in order for my more dominant side to want anything to do with you sexually,' he says to you. With a sigh you nod and say you'll try your best, watching them head off on their own, leaving you alone in the library.";
		now PericlesRelationship is 7;
		now BjornRelationship is 4;
		now VikingSpartanWar is 6;
		now Peace Between Communities is resolved;

to say PericlesBjornSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0 and cunts of player < 1:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the Viking's Mouth";
		now sortorder entry is 1;
		now description entry is "Have Bjorn suck you while Pericles takes his ass";
	[]
	Sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
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
				if (nam is "Fuck the Viking's Mouth"):
					say "[BjornPericlesSex1]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You apologize and say you aren't actually up for sexing either Spartan-Helot Leader or Viking up right now.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BjornPericlesSex1:
	say "     With your mind set you move to your Viking friend and with a smile push him down onto his knees. This puts a smirk on Pericles['] face as he chuckles. 'So, that's what you're going for?' he asks, stepping up to Bjorn as well but repositioning him so that he's on all fours. He then takes that opportunity to grope at the Norse male's ass. You on the other hand pull his face towards your clothed crotch which he promptly nuzzles. Inwardly you muse that he's grown rather submissive compared to when you first met him. Though if you're honest, it probably has to do with the Spartan-Helot being the much more dominant personality. Deciding to assist him, remove the clothing covering your lower half, revealing your crotch from behind its prison.";
	say "     Moving it along rather quickly, Bjorn takes the tip of [if cocks of player > 1]one of your cocks[else]your cock[end if] into his mouth and begins to suck on it, causing you to let out a moan. Pericles on the other hand moves his hands to the waistband of the Norse warrior's leather pants and slowly pulls them down, revealing his well-toned ass. Once that's done, the buff Roman male pulls on a pin that seems placed at his shoulder and the toga appears to fall apart, revealing a tunic underneath. Easily pulling off the cloth, your friend is now naked with his hard cock positioned at the Viking's hole. Lathering it up with a little bit of saliva, he then starts pushing in, causing Bjorn to grunt out loud while his mouth's on your cock.";
	WaitLineBreak;
	say "     Getting into a nice pace, Pericles begins to eagerly fuck your seafaring friend which gives you a pleasurable idea. Grabbing ahold of the Viking's hair you pull him down further onto your dick, fully sheathing it in his mouth. Shortly after you proceed to facefuck him, timing your thrusts into his oral cavity with the Spartan-Helot's own into the male's hole, the two of you now roughly spitroasting him. Surprisingly Bjorn manages to deepthroat you rather well, though you're sure that your Greek friend has helped him learn. Speaking of Pericles, he appears to be thoroughly enjoying himself as he roughly abuses pushes in and out of his partner, balls slapping against ass cheeks as he goes.";
	say "     'Fuck, you're always such a good lay Bjorn,' he groans, threading his hands into the male's hair, forcing you to release your grip, and pushing him back onto your cock. Seeing such an action sends a shiver through your body, letting you know that you aren't going to last much longer. So, deciding to give it your all you move your hands to the Viking's face and return to ravishing his mouth with your shaft, sloshing sounds coming from it as your dick goes in and out. Pericles appears to take this as a hint as he returns to eagerly fucking Bjorn's hole, his large manhood penetrating him repeatedly. It's not long after that you feel your balls clench as you reach your orgasm and cum[if cocks of player > 1], the load from your free cock spraying all over his back[end if].";
	WaitLineBreak;
	say "     The Viking greedily swallows your seed as the male at the other end lets out a shout as he thrusts into Bjorn one last time before dumping his cum deep into him. After riding your climax out you pull out, as does Pericles, giving the Norse male a chance to stand up. Raising a brow at his partner's state, the Spartan-Helot puts on the tunic and gestures to the large sheet that was his toga. 'Do you mind helping me with this?' he asks, Bjorn nodding and smiling at him. Shrugging at their actions, you decide to leave them be and put your own clothes back on.";

SpartanVikingCouple ends here.
