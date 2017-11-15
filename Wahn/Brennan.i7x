Version 1 of Brennan by Wahn begins here.
[Version 1 - Put into its own file]

[ BrennanRelationship                                             ]
[   0: never met                                                  ]
[   1: approached + talked to                                     ]
[   2: second friendly encounter over                             ]
[   3: third friendly encounter over                              ]
[   4: player helped him fight (and kill) an alpha wolf           ]
[   5: Brennan made an offer to accompany him, player postponed   ]
[   6: player got home after the convoy trip                      ]
[   7: player got thanks, and cherries                            ]
[   8: player met Brennan and the wolves                          ]
[   9: wolf play event completed                                  ]
[  10: buried bar event completed                                 ]
[  11: helped wounded Brennan back to his place                   ]
[  90: player tried to mug him                                    ]
[  91: player retreated in second unfriendly encounter            ]
[  92: player got latex wolf'd in second unfriendly encounter     ]
[  97: abandoned wounded Brennan                                  ]
[  98: abandoned Brennan to the wolves                            ]
[  99: skipped the event                                          ]
[ 100: player avoids him                                          ]

[ GooColossusProgress                                             ]
[   0: not started                                                ]
[   1: it is free to rampage through the city!                    ]
[  99: player and Brennan failed to beat the goo girls            ]
[ 100: Brennan failed to beat the goo girls, had to retreat       ]


GooColossusProgress is a number that varies.
BrennanRelationship is a number that varies. BrennanRelationship is usually 0.

Section 1 - Events

Lone Survivor is a situation.
The sarea of Lone Survivor is "Outside".

Instead of resolving a Lone Survivor:
	if BrennanRelationship is 0:
		say "     The streets seem fairly empty right now - a good time to be out and about, scavenging or hunting for whatever. Skirting around a burned-out car here and there, piles of trash or even rubble from buildings destroyed in fights (or overenthusiastic lovemaking), you make good progress on your way. Soon, you arrive at a fairly big intersection of roads, dominated by a multi-car pileup. Glancing at the four directions meeting here, broad and open spaces with no real cover or concealment, you're not surprised to find numerous piles of torn and cum-stained clothing scattered about. This must be a prime hunting spot for ferals, running down people or swooping in from above to catch those exposed in the open, which means that the numerous personal vehicle wrecks - and a mangled greyhound bus on the opposite side of where you stand - have in all likelihood not been looted yet!";
		say "     This could be a rare opportunity. [bold type]Do you risk it?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Dash over to the first car!";
		say "     ([link]N[as]n[end link]) - Better not. This might be some sort of trap.";
		if player consents:
			LineBreak;
			say "     Glancing around one last time and deciding that there really is no creature waiting in ambush, you start out at a sprint and dash to the mess of wreckage in the center of the intersection. Ignoring reddish-brown stains on the inside of the cars as best as you can (while being thankful that you haven't found any actual bodies yet), you glance through cracked windows, stick your head into one car or two that seem most promising and... Strike! There's a grocery shopping bag on the passenger seat of a minivan. Pulling open its door with an alarmingly loud creak, you snatch up the bag. For a second, you're disappointed as you see a wilted and somewhat smelly packet of salad and several apples (shrunken and brown) on the top, but after dumping the rotten food, you grin broadly as two energy bars and several small bottles of name-brand sparkling water come to light below it!";
			LineBreak;
			say "[bold type]You gain 2 food![roman type][line break]";
			increase carried of food by 2;
			say "[bold type]You gain 4 water bottles![roman type][line break]";
			increase carried of water bottle by 4;
			LineBreak;
			say "     Packing away your loot, you get going at checking the next car, and the next, but sadly they're less well stocked than your awesome find. Maybe the bus will be a better opportunity? Walking around a tangled mess of metal in which you can't even see where one car begins and the other ends, you approach the bus - and are shocked to see someone come out of it! Seems like you're not the only one who wanted to check out this scavenging spot. From what you can see, the guy stepping off the stairs of the bus is surprisingly fully human. He is fairly tall and broad-shouldered, dressed in sturdy boots, cargo pants with many pockets, and a sleeveless shirt that clings tightly to a muscular upper body, a bulging backpack slung over one shoulder. He notices you in turn and a wary expression spreads over his fairly attractive bearded face.";
			say "     Silence stretches out between the two of you, two survivors of the chaos in the city eyeing each other, and you can't help but notice his hand tightening on the grip of the baseball bat he carries, as well as the well-filled appearance of his backpack...";
			LineBreak;
			say "     [bold type]What now?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Try to start a conversation. You're both sane, that has to count for something even during the nanite apocalypse!";
			say "     [link](2)[as]2[end link] - You (probably) picked the car-pileup to loot first! Take back what he's stolen from you!";
			say "     [link](3)[as]3[end link] - Neither of you need a fight right now. Just back away and avoid any possible clashes.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to talk, [link]2[end link] to mug him or [link]3[end link] to avoid the guy.";
			if calcnumber is 1:
				LineBreak;
				say "     Raising your hands to show that you're not out for any trouble, you slowly walk towards the guy and give him a friendly greeting. He reacts fairly well to your introduction, replying with the words, 'Hey there, I'm Brennan. Good to meet at least one person who doesn't instantly try to fuck me!' The wariness lifts from his gaze and he gives you a friendly smile, though still doesn't relinquish his secure grasp on that baseball bat. Man, he must have been through some things to be that cautious - not unfounded of course, from your own experiences. 'Stay back a bit please,' Brennan goes on to say as you come closer, and gives you an apologetic shrug. 'Sorry, but I've seen how quickly this - whatever it is - spreads. I've worked too long to... be the man I am to let anything take that from me.'";
				say "     After pausing for a second or two, he continues, 'So. Here we are, survivors in the midst of all those horny beasts. Let's talk.' The two of you chat a little about the things you have seen, what to look out for and so on. One thing sticks out to you as particularly interesting - Brennan warns you about picking up any gun you might find. 'I think it's the metal, you know. Possibly in combination with all those trace materials from firing, and maybe even skin cells of the owner on the grip. From what I've seen, firearms serve as seedbeds for the infection. There was this one guy - a cop - who pulled a pistol, only to have it crumble to silvery dust - which enveloped him and almost instantly transformed him.' Now that you think of it... there is a definite lack of all the weapons you'd expect from an American city here.";
				WaitLineBreak;
				say "     'So - go with plastic, if you can find it. That's a safer bet,' Brennan tells you, then slowly pulls out a taser from a large pocket in his cargo pants, careful to not threaten you with it. Showing off the device, with its black plastic grip and bright yellow top, he gives you a companionable nod. 'Okay then, I think we should go - this lull in activity can't last forever. Wouldn't want to be picked off out here by a passing wyvern. Best of luck out there, and I hope we'll see each other again. Can't believe how good it felt to just talk to someone.' With a wave, the bearded man starts walking towards the nearest street corner, then dashes to it and vanishes in an alley. As you watch him go, you have to admit that he was right - this little chat really was good for your own sanity as well.";
				LineBreak;
				say "[bold type]Your sanity has increased by 15![roman type][line break]";
				increase humanity of player by 15;
				now BrennanRelationship is 1; [talked to Brennan]
			else if calcnumber is 2: [mug]
				LineBreak;
				say "     Raising your hands to show that you're not out for any trouble, you slowly walk towards the guy and give him a friendly greeting - to distract him, of course. He actually reacts fairly well to your introduction, replying with the words, 'Hey there, I'm Brennan. Good to meet at least one person who isn't - HEY!' Having closed the gap between the two of you, a sudden harsh shove sends the guy sprawling. You pounce on him right away to overwhelm the guy before he can get his bearings again.";
				challenge "Human Survivor";
				if fightoutcome < 20: [player won]
					say "     After your last hit, Brennan falls backwards on the ground with a groan, the baseball bat rolling out of his weakened grip. Stepping up and standing over him, you are about to lay out what you'll do with him now - when he pulls a bright yellow gun-shaped item out of his pocket and aims it right at your chest. Firing with a small bang far too quiet to be a firearm, the taser shoots two pointed electrodes to lodge in your chest, pumping large amounts of electricity into your body and making you collapse in a thrashing heap.";
					PlayerWounded 50;
					LineBreak;
					say "     While you're still writhing on the ground, unable to control your muscles, Brennan gets back up and retrieves his bat. 'Thanks for nothing asshole, that was my last charge!' he growls at you and gives you a kick, then runs off. You groan as you get up some time later, rubbing your bruised body and extracting the taser needles from your chest. Better get out of here too, and hope you don't meet that guy again - you certainly made a bad impression on him!";
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     With yet another blow from his baseball bat, Brennan sends you stumbling backwards, then falling on your ass and sprawling on the ground. 'Can't believe I trusted an asshole like you for one second!' he growls at you and gives you a kick, then runs off. You groan as you get up some time later, rubbing your bruised body. Better get out of here too, and hope you don't meet that guy again - you certainly made a bad impression on him!";
				else if fightoutcome is 30: [fled]
					say "     Running away as fast as you can, you do not look back at the shout of, 'You better run, asshole!' Not relaxing for a second before you're at least a full block or two distant, you stop at a street corner and gasp for breath. Let's hope you don't meet that guy again - you certainly made a bad impression on him!";
				now BrennanRelationship is 90; [made an enemy of him]
			else: [avoid]
				LineBreak;
				say "     Raising your hands to show that you're not out for any trouble, you back away slowly. The lone survivor acts much the same way, edging forward and sideways to keep his distance from you and never relinquishing the hold on his bat or his gaze at you. Eventually, the two reach the edge of the pileup, and he calls out, 'Good luck out there!' With that, the guy whirls around and sprints into a nearby alley, vanishing from sight. Shrugging to yourself, you feel the comfortable weight of your own pack, filled with what loot you got out of the situation. It's best this way, most likely. Who knows if you could have trusted him, or if you would have won a fight to take his stuff for yourself. You don't think you'll see him again...";
				now BrennanRelationship is 100; [avoid in the future, end of content]
				now Lone Survivor is resolved;
		else:
			LineBreak;
			say "     No, this seems too good to be true. There must be some hidden danger there. You wait and watch the wrecked cars for a while... ten minutes, then twenty... before you eventually see someone sprint from behind that greyhound bus in the middle of the street to the row of buildings on the other side from you. Looks like a human, not that you can make out too much detail from this distance and with the speed he is moving. There is a well-bulging backpack on his back - seems like you missed your opportunity to scavenge and let him run off with the spoils. You can't help but wonder who he may be, but somehow doubt you'll ever see him again - not in the chaos that the city has become. Who knows what might have happened if you had chosen to go out there too, and maybe met the guy...";
			now BrennanRelationship is 99; [skipped out on the event, end of content]
			now Lone Survivor is resolved;
	else if BrennanRelationship is 1: [chatted to him before]
		say "     Moving through the streets of the inner city, you walk past piles of trash and ripped clothing that are scattered over the sidewalk. Glass crunches under your feet as you pass some stores - a bar, little grocery store, and the third one you can't even tell anymore what it was - all of them vandalized and thoroughly looted. Hmpf, nothing left for you here - these places must have been targeted within a few days of society breaking down when shit really hit the fan at the start of the nanite spread. With a resigned shrug, you glance over to the other side of the street, past a car that has been crushed into the asphalt (wyvern landing on it maybe?). There is a corner gas station, clearly looted and with a grinning hyena head spray-painted on one cracked window, then an empty lot filled with yellow grass, and a bicycle store. With the state the streets are in, you don't think a bike would be all that useful either. You're about to leave when many-voiced yipping sounds reach your ears - followed by some thuds and pained squeals. There's something going on in that bike shop!";
		say "     [bold type]Do you want to go in and check it out?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure! Curiosity never hurt anyone!";
		say "     ([link]N[as]n[end link]) - Just get out of there!";
		if player consents:
			LineBreak;
			say "     Not one to shy away from anything, you walk up to the bike shop, glancing at the sliding glass door frozen in the open position as power failed throughout most of the city. Inside, what must have been orderly rows of bicycles lie scattered, their wheels gnawed down to just scraps of rubber still clinging to the metal frames. A latex fox lair, you're fairly sure from the sight of that. As if to specifically confirm your hunch, one of the vulpine creatures dashes into sight, its flexible paws scrambling on the smooth floor as it takes the corner from an adjoining room at full speed and bounces off a bike frame still hanging on the wall. Before the bike even has a chance to fall and crash to the ground, the screeching latex fox is already running again - head on towards you. It doesn't look so much aggressive towards any intruder, but more like in a full panic, fleeing as fast as it can.";
			let bonus be (( dexterity of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Dexterity Check):[line break]";
			if diceroll + bonus >= 10:
				say "     Seeing the creature sprinting towards you at top speed, you are quick enough to react and simply step out of its way. With squeaks of its latex paws on the ground, the beast dashes past you, never stopping for even the hint of a second to pay you any mind. Man, that fox just wanted to get out of there!";
			else:
				say "     Seeing the creature sprinting towards you at top speed, you're sadly not quick enough to get out of its way, leading to the fox running you down and giving a frightened squeal as it and you fall to the ground, earning you some scrapes. But even then, the beast simply proceeds to run, not even stopping to acknowledge your presence in any way. Man, that fox just wanted to get out of there!";
				PlayerWounded 5;
				LineBreak;
			say "     Curious what might have put one of usually quite horny and (stupidly) audacious beasts in such a state, you walk deeper into the bike shop and see the 'Workshop' sign over the doorway the fox ran out of. Turning the corner, you see a number of other latex foxes - unconscious on the ground and looking somewhat deflated. Cautiously walking into the workshop, stepping over one of the foxes, you soon lay eyes upon the person who gave them such a thrashing. It is a man you know: Brennan. The broad-shouldered guy is standing at a workbench in the back of the room, his baseball bat laid on it while he is filling his backpack. A number of energy drink bottles still wait to be packed away, as well as a slender metal container or two that you can't quite place at the moment. Clearing your throat makes the man whirl around, snatching up his weapon in a smooth move - only to have a smile spread over his bearded face as he recognizes you.";
			say "     'Hey there, fancy meeting you in this place.' You greet him in turn, then innocently ask what he is doing here, fighting through a dozen latex foxes. He chuckles and raises one of the metal cans, shaking it to create a sloshing sound. 'Actually, I came for this stuff. Industrial lubricant. The stuff makes creatures like our little friends around here go wild... I got some ideas about using that. As for the rest - a happy coincidence. They had a partial crate of these energy drinks under the workbench.' Stuffing the rest of the lube in his backpack, followed by most of the energy drink bottles, the tough survivor goes on to say, 'I'd love to chat with you, but... I think they're starting to come to. So here, have one on me and see ya again another time.' He throws you a bottle and gives a companionable wink, then strides out of the workshop, making sure to retain some distance from yourself and any of the slowly stirring latex creatures.";
			LineBreak;
			say "[bold type]You gain 1 soda bottle![roman type][line break]";
			increase carried of soda by 1;
		else:
			LineBreak;
			say "     Leaving whoever is having their disagreement in there to deal with it on their own, you quietly walk away and gain some distance. Better safe than sorry...";
		now BrennanRelationship is 2; [went through friendly event #2 by meeting or skipping]
	else if BrennanRelationship is 90: [clash with him]
		say "     Wandering through an area outside the city center, you move through a more residential street. The buildings are clearly looted, with one of them even just a smoking ruin, but one never knows if there might be something to find, so you keep at it. Soon, you reach another house with smashed-in windows and cum splattered on its doorstep - but as you are about to turn away, you notice something past the building. Is that... a vegetable garden back there? Walking onto the property and following a path of granite tiles past the house itself, you soon lay eyes upon the backyard garden - and what seems to be a whole row of carrots, still fresh in the ground! But that isn't the only thing you see - there is someone already in the garden, just stuffing the last apple he picked from a small tree into his backpack. You know the guy - broad shouldered, bearded and looking at you with a frown on his face. It's Brennan, the human survivor you tried to mug on the crossroads!";
		say "     'You again!' he snarls, clearly not pleased that you've found this spot. 'Listen, I'll give you one chance to fuck off. I found this place first, over a week ago - alright!?' [bold type]Do you follow his demand?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fine. Let him have the stuff.";
		say "     ([link]N[as]n[end link]) - Hell no - you want that food!";
		if player consents:
			LineBreak;
			say "     Waving your hands and calling out to him that you accept, you slowly walk backwards and vanish around the corner of the house. With a shrug, you leave the place. In hindsight, picking a fight with him the last time wasn't such a great idea.";
			now BrennanRelationship is 91; [didn't fight the second time]
		else:
			LineBreak;
			say "     As you keep coming, the bearded survivor pulls out something from a pocket and throws it at you - though he misses quite closely, with the... water balloon(?) ...smacking high against the wall of the garage behind you, splashing the wall with a colorless, quite runny liquid. Mockingly calling out that he should improve is aim, you're surprised to hear him chuckle, then say, 'Wasn't aiming at you.' Then the scent of the fluid trickling down the wall hits you. Is that... industrial lubricant? Quite potent, with it splashed so widely over the wall and its molecules being carried through the air by wind blowing past. 'What is that supposed to do?' you murmur to yourself - only to have the question instantly answered as a latex wolf sticks his head through a nearby hedge, sniffing. You glance back to Brennan - or rather where Brennan was before - then back to the wolf rapidly dashing towards your position. Well, fuck...";
			challenge "Latex Wolf";
			if fightoutcome < 20: [player won]
				say "     Beating off the latex wolf, you quickly rush over to the garden and harvest those carrots before leaving the place.";
				LineBreak;
				say "[bold type]You gain 3 food![roman type][line break]";
				increase carried of food by 3;
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     After being used by the latex wolf, you lie there for quite a while, then eventually get back to your feet. With a shrug and intending to at least get something out of the ordeal, you stumble over to the garden and harvest the carrots.";
				LineBreak;
				say "[bold type]You gain 3 food![roman type][line break]";
				increase carried of food by 3;
			else if fightoutcome is 30: [fled]
				say "     You flee from the wolf, leaving behind any chance at getting those carrots. Surely, by the time you make your way back there, Brennan will already have harvested them.";
			now BrennanRelationship is 92; [got latex wolf'd the second time]
	else if BrennanRelationship is 2: [chatted to him before, went through or skipped event #2]
		say "     Making your way through the inner-city streets on the search for... anything usable at all, it seems you're not having much luck today. All the cars and shops you pass have been thoroughly looted before, so you've even started to just poke through the pockets of abandoned clothing. You're just crouched over another pile and try not to touch any of the cum dried on it, when you suddenly hear a voice from behind you say, 'Hey there, nice to run into you again.' Almost jumping out of your boots and whirling around in a combat-ready stance, you are relieved to see that the person who spoke is someone you know. It's Brennan, the survivor whom you met at that bus wreck in the intersection. For a muscular guy wearing army boots, he's really got a quiet tread - you never knew for a second that he walked up behind you until he spoke up!";
		say "     Standing there with his baseball bat casually braced on one shoulder, the bearded man raises a consoling hand and says somewhat sheepishly, 'Er, sorry about that. Guess with all the skulking around and hiding from large beasts, I kinda forgot that one shouldn't sneak up on friendlies. No hard feelings, alright?' Forcing yourself to calm down and suppress the fight-or-flight response to the sudden interruption, you greet the man and tell him that everything is fine. Better him than some horny beast ready to jump you. He smiles, relieved that you don't hold it against him, and starts to reach out to shake your hand, then stops himself and lets his hand sink once more. Ah, of course. He didn't stay human so long by being careless about touching.";
		WaitLineBreak;
		say "     'Slim pickings in this area, eh? Yeah, most of the bigger roads are like that. People gravitated here, as did the infected to pick them off. All the sex and shifting made them hungry in the aftermath, so they trashed the obvious places on their search for food,' Brennan casually tells you, pointing to the looted buildings all around. The two of you exchange some more words about good places to check (apparently some people stash extra water and energy bars with their spare tires), before the broad-shouldered survivor rubs the back of his neck and gives you a somewhat calculating look. Nodding to himself a second later, he clears his throat and goes on to say, 'Listen, I... kinda got a place I wanted to check out. Just was on my way there when I ran into you. Could be a two-man job, if you're interested. A Hoplite.com distribution warehouse - there's bound to be something in there.'";
		say "     [bold type]Do you accept Brennan's offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure! If he's nice enough to share his target, the least you can do is help him with it.";
		say "     ([link]N[as]n[end link]) - Decline politely. He clearly only shared the info with some reluctance, so you'd better not butt in on his expected stash.";
		if player consents:
			LineBreak;
			say "     Falling into step beside Brennan, you make your way down the street and turn into the next open alleyway afterwards, taking a route that leads into some more commercial and industrial districts. The two of you keep to the back roads to avoid any larger creatures or obvious nests of activity and make good progress, until a sudden shout for help echoes through the otherwise empty and silent street. 'No please! I - I just want to get back to the college!' a young woman's voice screams, answered by a rough, masculine chuckle. The source is immediately apparent, as not too far ahead of you, a young woman sprints from a side alley, then away from where Brennan and you are standing, closely followed by a male anthro husky. He closes the gap before long, bringing the girl to a standstill by wrenching her back by the arm. Now you can see that she is part giraffe and is wearing a partially ripped 'Tenvale College' shirt and fairly tight jeans.";
			say "     'You're gonna be a fine bitch for my pack, girl!' the alpha husky barks at her and wraps his other paw around his already hardening shaft. As the guy also adds, 'Gonna pound you till you're nice and submissive!' Brennan is already halfway towards them, closing up at a sprint! With a shout of, 'No you won't, fucker!' your fellow survivor swings his bat low, hitting the husky in the back of his digitigrade legs. You think you can hear bone break as the canine collapses onto the street, yet with the regenerative power of the nanites, he's far from out of the fight yet. With a growl, the husky is back on his feet a second later and snarling at Brennan, who has taken position between him and the college student.";
			WaitLineBreak;
			say "     Your own paralysis at the sudden explosion of hostility is broken when you see two more huskies trot out of the same alley at a moderate speed. These are females, apparently just following their master to take part in his subjugation of a new slut. When they see yourself and Brennan, the bitches snarl and run your way, no doubt expecting the alpha husky to deal with your companion all on his own.";
			let HuskyFightCounter be 0;
			now fightoutcome is 0; [reset]
			while fightoutcome < 20 and HuskyFightCounter < 2: [runs for 2 times or until the player loses or flees]
				now inasituation is true;
				challenge "Female Husky";
				increase HuskyFightCounter by 1;
			now inasituation is false; [reset]
			if fightoutcome < 20: [player won]
				say "     Knocking out the two quite pushy bitches, you look down the road to see Brennan standing over his own opponent, stopping the husky's newest try at getting up from the ground with a jab from his baseball bat. 'Let's get out of here,' the human survivor shouts to you as well as the half-giraffe college student, and the three of you sprint down the road, putting distance between yourselves and the husky pack. ";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     The bitches drag you down to the ground, ready to enjoy their victory over you - but before they actually can, Brennan looms over the three of you. He stops their efforts cold with a blow to the back of the head of the first bitch and kicking the second one aside. This gives you the chance to get back to your feet and before either of the three huskies can get back into the fight, Brennan, the college student and yourself have long fled down the road. ";
			else if fightoutcome is 30: [fled]
				say "     Having abandoned the fight, you come to a stop a block or two away, trying to catch your breath. Hm, maybe you shouldn't just have skipped out on Brennan and that girl, surely the huskies ganged up on them - or so you think for a second, until both the survivor as well as the half-giraffe come sprinting past your position. 'Come on,' Brennan shouts, and you join them in their flight. ";
			say "All of you continue on until you reach a suitable and far away place to stop and catch your breaths. While you pant and check that your flight didn't attract any other creatures to follow you, Brennan starts a conversation with the college student you rescued. Apparently, her name is Olivia and she is a biology student who was out for a project at the zoo when the nanite outbreak happened.";
			say "     The young woman explains, 'I - I couldn't believe things at first, when they started happening. All the animals went absolutely wild and the zookeeper I was with had to administer some sedatives so the giraffes didn't break their legs in as much panic as they were in! And then... we saw things happening outside the giraffe house through the windows. People shifting and fucking on the pathways of the zoo! After that, we all - some zoo guests, myself and the animal keeper - stayed inside and barricaded the door, but...' She pauses for a second, catching her breath and waves at her own changed physiology and the spotted fur all over her body. 'This started after a few days, with Mr. Qinn, the zookeeper. He was the first to change. Before long everyone in the building was starting to grow fur. I got out after Qinn stopped wearing clothes and he started giving everyone those wild looks...'";
			WaitLineBreak;
			say "     The rest of Olivia's story is all too common these days, sadly. Thrown into the chaos of the wild streets, she tried to make her way back to the college, hoping that at least her friends were still alright. Of course, the city streets are far from safe, and even though she got out of a few hairy situations on her own, her luck ran out with that husky pack. Thankfully Brennan and yourself came along to save her. The human survivor even can tell her that the college area is still fairly safe and protected and offers to take her the rest of the way. Since your scavenging trip got postponed anyways, you accompany the two of them as well, until the college entrance comes into sight.";
			say "     'Thank you so much!' Olivia says with a beaming smile and tries to embrace Brennan, but he draws back before she can touch him. 'Sorry. I do prefer to stay human, you know,' he tells her in an apologetic tone, leaving her to say she's the one who should have thought of that. 'Now then - I wish I could bring you in the rest of the way, but I can't risk such a highly populated area. Even if it is a more or less 'safe' one like the campus.' Giving both of you her heart-felt thanks again, Olivia then walks towards the college, eager to see that her friends are okay and to catch up with them. Brennan watches her go and gives you a sidelong glance, smiling as he shrugs. 'Guess today didn't work out quite as either of us intended. Sorry for our little scavenging trip falling flat, but at least we did some good for her, hm? So - rain check till next time?' You nod at him and the two of you split up again. Then you make your way back to the place you came from.";
			now College Campus Entrance is known;
		else:
			LineBreak;
			say "     You give some excuses about having to... be somewhere soon, without going into any details. He raises his eyebrows at the fact that you're refusing a share of what could be valuable loot, but at the same time you notice him relax a bit. Freed from any obligation towards a fellow survivor, Brennan bids you goodbye and wishes you the best at your 'meeting' before he walks off down the street.";
		now BrennanRelationship is 3; [went through friendly event #3 by going with him or skipping]
	else if BrennanRelationship is 3 or BrennanRelationship is 91 or BrennanRelationship is 92: [multiple friendly encounters before this, or one unfriendly]
		say "     Exploring the city for places that might yet yield some food, water or usable gear, you actually come upon a place that looks very promising. At first glance, the building has already been looted - not surprising as there was a cafe on the ground floor, but after checking over the wrecked interior of that, you realize that the house has a second floor, and you're not actually seeing any way of getting there. Going back out and glancing at the exterior, you see a row of unbroken windows up there. Intrigued, you check around the corner of the building and find a narrow side door, locked. Looks like someone tried to break in here recently, judging from traces of a crowbar being applied and some splintered wood, but the door isn't actually fully broken yet. This makes you wonder what may have happened. Maybe someone tried to get in and then was jumped by some sort of creature?";
		say "     You explore a little bit more, finding a ripped pair of jeans behind a dumpster a few steps further, literally soaked in sexual fluids. Well, that burglar won't be back, that's for sure. You put him or her out of your mind and resolve to make use of their work at least, throwing yourself against the damaged door and bursting it open. You find a short hallway on the other side, probably no longer than three feet. At the end, a stairway rises pretty sharply. Weird that this isn't connected at all to the ground floor... but definitely fine by you, in this case, as there is still hope to find something useful inside. Climbing the stairs, you reach a little landing flanked by two doors, 1a and 1b. Apparently there are two apartments up here.";
		WaitLineBreak;
		say "     You try 1a first, and surprisingly, the entrance door swings right open when you turn the knob. The reason for that is immediately apparent - it is vacant, nothing but empty floorspace inside! You wander through the rooms in disappointment, then step back out onto the landing again. Maybe the other apartment will be worth it at least? A quick check shows that it is locked, so you do your best to break in...";
		let bonus be (( dexterity of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Dexterity Check):[line break]";
		if diceroll + bonus >= 15:
			say "     Doing your best with a bent piece of wire or two, you fiddle around with the lock for a few minutes before eventually popping it open with a satisfying click. Phew, so far so good! Beyond the door is indeed a used apartment - lived in, if empty of people right now. You set out to search it thoroughly.";
			say "[Apartment2bLooting]";
		else:
			say "     Nope, no chance to pick that lock. You shrug and resolve to just kick in the door instead.";
			let bonus be (( strength of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Strength Check):[line break]";
			if diceroll + bonus >= 15:
				say "     With a resounding crack, the door-frame around the lock gives out, sending a shower of splinters into the room beyond as you break in. The apartment is indeed in use - lived in, if empty of people right now. You set out to search it thoroughly.";
				say "[Apartment2bLooting]";
			else:
				say "     Throwing yourself against the door, you try and try to break in, but it resists your feeble efforts without any trouble.";
		WaitLineBreak;
		say "     Suddenly the sound of a wolf howling startles you, then another and another right after. And close too! You rush to the nearest window and glance out, seeing a pair of feral wolves dash across the empty, trash-filled street. They're hunting something or someone! Pressing your head against the windowpane to glance along the alleyway, you spot a person running from them - it is [if BrennanRelationship is 3]your friend[end if] Brennan[if BrennanRelationship > 10], the human survivor you clashed with earlier[end if]. He clearly is in trouble as he seems to have lost his trusty baseball bat. Then a third wolf steps out from around the corner at the end of the alley - this one anthro in body shape, muscular and with a shaggy coat of black fur. He awaits the human survivor with bared teeth, eager to take him in a pincer movement with his chasing pack-mates.";
		say "     [bold type]This doesn't look good for Brennan. Do you come to his assistance?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Of course! Survivors have to stand together, no matter what!";
		say "     ([link]N[as]n[end link]) - Take on three wolves, with him already disarmed? Not a calculation in your favor. No, you'll make a quiet getaway.";
		if player consents: [attack]
			LineBreak;
			say "     Rushing down the stairs, you burst out of the broken entrance door just a few paces behind the chasing wolves. As you set out to follow them, Brennan notices you and gives a [if BrennanRelationship is 3]surprised, yet [end if]hopeful shout. The ferals just keep going, totally focused on their prey before them, and soon the first one of them pounces at the human survivor, jumping for his arm with bared fangs to pull him down. A small bang resounds in the alley (far too quiet to be from a firearm), and you see the yellow taser in Brennan's hand a heartbeat later. It unloads a lot of electricity through the wires attached to the pointed electrodes now lodged in the feral wolf's skin, making it collapse in a thrashing heap. As you get fairly close to the second wolf, he finally realizes that someone is behind him and turns, baring his teeth to take on his new enemy. The beast jumps you while Brennan gets into a clash with the alpha of the pack.";
			now inasituation is true;
			challenge "Feral Wolf";
			now inasituation is false;
			if fightoutcome < 20: [player won]
				say "     As the feral wolf collapses at your feet with a pathetic whine, you whirl around and see Brennan on the ground on his back, the alpha wolf pinning him down and trying to rip out his throat with his teeth. Seems like this fight has been far more trouble than he had anticipated, and the anthro is not even intending to just capture your friend anymore. Blood-lust is burning bright in his eyes! You quickly close up to the pair of fighters and land a blow on the large wolf's back. He snarls at you in turn and is distracted enough for Brennan to be able to reach out and snatch up the bloody combat knife he must have dropped earlier. Time seems to flow in slow-motion as the alpha wolf reacts to the movement and opens his maw to bite at Brennan again - and the human drives the knife home directly under his armpit, its whole length sinking into the canine's chest and piercing his heart.";
				say "     With nothing more than a choking gurgle, the alpha wolf collapses on top of Brennan, then stops moving altogether. Heaving the corpse off himself, your friend gets back to his feet and shouts, 'Fuck! Fucking hell you stupid bastard!' Then he stumbles to the side, barely catching himself against the brick wall of a building flanking the alley. Turning around to slump against the solid backing, he stares glassy-eyed at the corpse, as if trying to imagine any way things might have gone differently, with less... permanent consequences. You stand by your companion as he is lost in reflection, watching out as the ferals get back up - but the beasts are bruised and hurting, so they do little more than glance and sniff at their leader before fleeing with panicked whines.";
				WaitLineBreak;
				say "     You wait for Brennan's reaction to die down, then ask if he is alright as he pushes himself off the wall to stand straight again, spitting on the ground to clear his mouth. 'No I am not,' the man growls out and glances over to his former opponent. 'It may be hard to remember sometimes, but that was a [italic type]person[roman type]! Fuck, I've never killed anyone! Maybe he... could have been saved, somehow!' he snarls, angry at himself and looking at the hand that held the knife. There is a splash of blood on it, painfully red against the man's tanned skin. Cursing, Brennan wrenches an army canteen from the side of his backpack and starts to pour it out over his hands, washing away the blood and any other transfer that he might have gotten from the wolf. He follows up with a bit of liquid poured from a vodka bottle, first disinfecting his hands, then taking a swig himself.";
				if BrennanRelationship is 3: [friendly contact before]
					say "     Silence stretches for a long moment, then Brennan shakes his head and looks at the dead wolf with a stony gaze. 'Couldn't you have just... given me any other choice, you bastard?' he mutters under his breath, then turns to you and gives a weak smile. 'Thank you for your help. Don't think I could have gotten out of this one on my own. I really appreciate it. Listen, I'm... gonna go, find my bat. But it's been good to see you. Until next time, hopefully under better circumstances,' Brennan says, then walks off the way he originally came from. He pays the cooling-out anthro no further glance, leaving the knife that ended his life buried in the wolf's fur. Looking after Brennan until he vanishes from sight, you then also make your exit from the fateful alley.";
					now BrennanRelationship is 4; [Brennan 1, Alpha Wolf 0]
				else: [unfriendly contact before]
					say "     Silence stretches for a long moment, then Brennan shakes his head and looks at the dead wolf with a stony gaze. 'Couldn't you have just... given me any other choice, you bastard?' he mutters under his breath, then turns to you and gives a weak smile. 'Thank you for your help. I know we've had our differences in the past before, but - you came through for me, and that goes a long way. So... bygones be bygones, hm?' Brennan says next, looking expectantly your way.";
					say "     [bold type]What is your reply?[roman type][line break]";
					LineBreak;
					say "     ([link]Y[as]y[end link]) - One never can have enough friends in dire situations.";
					say "     ([link]N[as]n[end link]) - Just because you didn't want to see him mauled by wolves doesn't make you friends.";
					if player consents:
						LineBreak;
						say "     Accepting his offer, you nod back to him, which puts a friendly expression on Brennan's face. 'Glad we had this talk. Listen, I'm... gonna go, find my bat. Until next time, hopefully under better circumstances,' Brennan says, then walks off the way he originally came from. He pays the cooling-out anthro no further glance, leaving the knife that ended his life buried in the wolf's fur. Looking after Brennan until he vanishes from sight, you then also make your exit from the fateful alley.";
						now BrennanRelationship is 4; [Brennan 1, Alpha Wolf 0]
					else:
						LineBreak;
						say "     'Mmmh!' he grunts as you reject his offer, shrugging. 'If that's the way it is...' he adds while rummaging around in his pack, then sets down two bottles of clean water on the ground for you. 'Best wishes,' are the last words you hear from him before he walks off the way he originally came from. Brennan pays the cooling-out anthro no further glance, leaving the knife that ended his life buried in the wolf's fur. Looking after the man until he vanishes from sight, you collect your reward and then also make your exit from the fateful alley.";
						LineBreak;
						say "[bold type]You gain 2 water bottles![roman type][line break]";
						increase carried of water bottle by 2;
						now BrennanRelationship is 100; [player <-> Brennan avoid each other]
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     The wolf drags you down to the ground, then stands over you with his teeth just over your throat and a canine shaft erect and dripping onto your prone form. But before he can consummate his victory, a howl from his alpha calls the wolf away. Groaning and turning your head, you see that Brennan is still up and fighting, a bloodied combat knife in his hand. Your enemy peels off to assist his pack leader. Beaten and demoralized, you crawl away, trying to tune out the sounds of fighting behind your back as you make a getaway. You doubt you'll see Brennan again - at least not in any shape you would recognize...";
				now BrennanRelationship is 98; [abandoned him to the wolves]
			else if fightoutcome is 30: [fled]
				say "     Fleeing the fight, you are chased for a short while by the feral wolf, but then a howl from his alpha calls the beast back. Peeling off from chasing you, it swings back into the alley to bite at Brennan's unprotected backside and take him down. As you rush away in full flight, the sounds of fighting slowly die down behind you. You doubt you'll see Brennan again - at least not in any shape you would recognize...";
				now BrennanRelationship is 98; [abandoned him to the wolves]
		else: [leave]
			LineBreak;
			say "     Suppressing any empathy you might have for the fellow survivor in the dangerous streets of the city[if BrennanRelationship > 10] (if any, given your previous clashes)[end if], you turn away from the scene outside the window and shoulder your pack securely, then walk downstairs. Glancing out of the broken door carefully, you don't see any of the beasts nearby, so you quickly rush outside and start running away from the fight you can still hear behind you. You doubt you'll see Brennan again - at least not in any shape you would recognize...";
			now BrennanRelationship is 98; [abandoned him to the wolves]
		now Lone Survivor is resolved;

to say Apartment2bLooting:
	say "     Quelling any feelings of transgression at going through someone's belongings, you do your best not to make too much of a mess as you explore the apartment for anything usable. About half an hour later, you are happy to add a glass of orange jam, several boxes of dry crackers and a soda bottle that rolled under the owner's sofa to your pack. Not a bad haul!";
	LineBreak;
	say "[bold type]You gain 4 food![roman type][line break]";
	increase carried of food by 1;
	say "[bold type]You gain 1 soda bottle![roman type][line break]";
	increase carried of soda by 1;

Army Convoy is a situation.
The sarea of Army Convoy is "Nowhere".

instead of going to Grey Abbey Library while (Army Convoy is not resolved and BrennanRelationship is 4 or BrennanRelationship is 5 and a random chance of 1 in 3 succeeds):
	move player to Grey Abbey Library;
	say "     Moving to the main floor of the library once more, you are distracted from whatever you were intent on doing by something you spot from the corner of your eye. It appears you got a visitor: Through the wood and glass doors at the entrance of the building, you see someone outside, leaning against a side-wall of the front steps. Glancing over there, you are pleased to see it is someone you know - Brennan, the human survivor you've had several encounters with by now. He raises a hand and waves as he sees that you noticed him, apparently wanting to talk. You quickly walk over and step outside.";
	ArmyConvoyEvent;

instead of navigating Grey Abbey Library while (Army Convoy is not resolved and BrennanRelationship is 4 or BrennanRelationship is 5 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "     Making your way back to the entrance of the Grey Abbey Library once more, you set a first foot on the stairs leading up to the front doors and are surprised to find someone there, waiting for you. Leaning against the side-wall of the stairs is Brennan, the human survivor you've had several encounters with by now. He raises a hand to wave and calls out a greeting as he recognizes you in turn.";

Instead of resolving a Army Convoy:
	ArmyConvoyEvent;

to ArmyConvoyEvent:
	say "     'Hey there, nice to see you again. Glad I guessed right about this being the place where you've holed up. Good pick by the way for a hideout - none of those feral beasts out there have any interest in a good book.' Given that you've joined up to fight together before, you have little hesitation in telling Brennen that there is more to the library than meets the eye, specifically the bunker beneath it that served you so well. 'Wow, that's a neat little secret to be hidden in here. Thanks for trusting me with it,' Brennan tells you, his bearded face beaming a smile. The tall and broad-shouldered man then turns his gaze out towards the city once more and waves a hand to indicate the wild streets.";
	say "     'Anyways, I came to ask if you'd like to join me for what should be a really nice haul. You saved my bacon in that alley last time, and splitting the opportunity I found with you would be my pleasure,' the human survivor explains, chuckling as an eager expression crosses your face. 'One of the places I usually spend the night at is a relatively out of the way high-rise apartment, and as I was having a look over the city from there, I saw a military convoy coming in along the highway. A Humvee and two army trucks. But before they could get far into the city, a wyvern swooped in and... our boys tried their best, but you can imagine how things turned out. There must still be loads of supplies left in those trucks - and no one dares approach before the eggs hatch. But somehow this clutch seems to be taking far longer than usual. I saw the still unbroken shells on the highway earlier. So... almost anyone is avoiding the convoy for now, and we've got a chance to get to it!!'";
	say "     [bold type]Do you want to go with Brennan to check out the convoy?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Sure! You could use some uninfected food, water, and who knows what else!";
	say "     [link](2)[as]2[end link] - Erh - now is a bit of a bad time. See if you can postpone.";
	say "     [link](3)[as]3[end link] - No thanks. Sounds too dangerous for your taste.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to A, [link]2[end link] to B or [link]3[end link] to C.";
	if calcnumber is 1:
		LineBreak;
		say "[ArmyConvoyTrip]";
	else if calcnumber is 2:
		LineBreak;
		say "     You tell Brennan that this is not really the right time for you to embark for what might be a dangerous trip. He nods thoughtfully, then says, 'Okay. We can postpone a little - but remember that once the eggs hatch, other scavengers will pick over the convoy, and there might nothing left by the time they're through with it. So please, get your preparations in order ASAP.' After that, he sets down his backpack and digs around in it a little, finally pulling a piece of red fabric on a string out. 'I'm gonna go back out into the city. If you're ready to go, just hang this thing up, and when I see it, I'll come pick you up here.' He follows this up with a list of places that he'll check regularly, then gives you a friendly (if somewhat impatient) wave and walks off into the wild streets once more.";
		LineBreak;
		say "[bold type]You gain a signal flag![roman type][line break]";
		increase carried of signal flag by 1;
		now BrennanRelationship is 5; [player postponed the convoy trip]
	else:
		LineBreak;
		say "     As you refuse his offer and explain that such a trip isn't for you, Brennan looks rather disappointed. Seems he wanted not only a wing-man for the scavenging trip but also some companionship. He glances at you for a moment longer, then shrugs and pushes himself off from the wall. 'If that's how it is... well, I wish you the best here. Maybe we'll see each other again sometime.' After those words, he walks off into the city.";
		say "     You can't help but feel that you've missed an opportunity here. Both in what you may have found, as well as the chance to get to know Brennan better...";
		now BrennanRelationship is 97; [friendly relationship, but rejected the convoy]
	now Army Convoy is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"signal flag"	"A little piece of red fabric, hanging from a looped string. Looks fairly unassuming, but Brennan told you that you can contact him by hanging it up at a number of prominent places. He'll come search you out at the library then."	0	signal flag

signal flag is a grab object.
the usedesc of signal flag is "[SignalFlagUse]".
it is part of the player.
It is temporary.

instead of sniffing signal flag:
	say "     Doesn't smell like anything really. Just a piece of fabric.";

to say SignalFlagUse:
	if player is not in Grey Abbey Library:
		say "     Brennan told you to hang this up to signal him if you want to meet at the Grey Abbey Library. Would be best to just start out at the library itself, hang it up and wait for him...";
		increase carried of signal flag by 1; [compensating for the one used up]
	else:
		if BrennanRelationship is 5: [player postponed the convoy trip]
			say "     Brennan said to signal him when you're ready for your trip to the army convoy...";
			say "     [bold type]Are you ready?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes!";
			say "     ([link]N[as]n[end link]) - No, not yet!";
			if player consents:
				LineBreak;
				say "     Setting out from the library, you move two blocks or so before hanging up the flag at a first floor window of an empty building. After returning home, it only takes about forty minutes before Brennan actually shows up, eager to get going...";
				say "[ArmyConvoyTrip]";
			else:
				LineBreak;
				say "     You shrug and pack away the little flag again.";
				increase carried of signal flag by 1; [compensating for the one used up]
		else:
			say "     <There is no reason why you should have this right now. Please report on the FS Discord how this happened>";

to say ArmyConvoyTrip:
	say "     'Okay then, let's do this!' Brennan says, full of vigor, and the two of you set out into the city. Intent on reaching your destination without being sidetracked, you keep to the back roads, avoiding any possible distractions or hostile encounters. Eventually, your path leads through the outer fringes of the populated area of the city, through some lightly wooded unclaimed land and then up to the highway. 'There,' your companion says and points at something a little distance ahead, and you can see what remains of the army convoy. The lead Humvee is literally peeled open, with its roof missing and the hood dented in by a giant claw that grabbed hold of it. Looks like the wyvern didn't want to wait for everyone to get out and simply pulled apart their car to get to the soldiers. Meanwhile, the truck at the back end has been knocked over and lies on its side, which just leaves the middle one - standing upright but boxed in at the front and back by the other vehicles.";
	say "     The highway itself it covered in large patches of what seems to be solidified wyvern goop, in the middle of which stand multiple man-sized eggs out of the same material. There is a cluster of four just beside the Humvee, five more behind the knocked-over truck, and three singletons on the other side of the highway, the last of which is right at the edge of the woods. 'Can't you just imagine them driving into the city?' Brennan says to you in almost a whisper. 'Everything is fine in one second, then the wyvern lands on the lead vehicle and starts tearing it apart. Before people even know what is going on, it is spreading its slobber over the first captives, giant claws molding the guys into those eggs. Then people out of the back truck start shooting at it, it reacts and pounces on them...'";
	WaitLineBreak;
	say "     'And as the beast takes bullet after bullet without much more than twitching a little, morale breaks and these three,' he gestures to the singleton eggs, 'They start to flee, but are also brought down. Twelve good men and women, taken out by one wyvern. I can halfway understand why they implemented a total blockade of the city. Imagine this stuff getting out and spreading everywhere.' Looking fairly grim at the scene before you, Brennan shakes himself and then adds, 'But we should keep going. Looks like everyone is still incubating in their eggs, and hopefully it'll stay that way while we salvage what we can from the convoy.' Together, you close the gap to the wrecked Humvee, moving past the wyvern eggs in wary silence.";
	say "     Brennan and yourself split up between the two trucks, with him going to inspect the knocked-over one and the crates and boxes that scattered over the roadway when it did. You pull yourself up to the open back end of the middle truck. As your head clears the edge of the truck-bed, you find total chaos before you inside. Looks like part of the load shifted and fell over on the crashing halt by the wyvern roadblock, and a few of the crates seem to have been ransacked, too. Looks like you are not the first to visit this place after all. Ankle-deep in bullets that have poured from broken crates, you poke around a little and are relieved to find a whole bunch of supplies still left for you to pick up. Water bottles, as well as military rations - enough to fill your backpack with!";
	LineBreak;
	say "[bold type]You gain 8 food![roman type][line break]";
	increase carried of food by 8;
	say "[bold type]You gain 5 water bottles![roman type][line break]";
	increase carried of water bottle by 5;
	WaitLineBreak;
	say "     Stuffing the last of it into your pack, you shoulder the heavy load and climb out of the truck after a final longing glance at the boxes farther in the back. Sadly, they're mostly wedged together or blocked by other fallen crates, and you can only realistically carry so much. When you come to stand on the highway again, you see Brennan bent over a mid-sized plastic crate, intently reading a red instruction leaflet. 'I think I know why our friends here haven't hatched yet. Look at this!' he says, picking up a bright red plastic tube he laid out on the crate lid and holding it so you can read the words 'Immunity Booster' printed on its side. A slender syringe rattles around inside it. 'Seems like this is protection against the transformations! For a time, at least. The info said something about daily injections...'";
	say "     'I guess even if they were on this stuff, it's too late to save the soldiers after all this time in the eggs, but-' Brennan says, sliding the tube of Immunity Booster into his jacket pocket and patting it protectively, then stands up and looks at you with an intent gaze. 'I've been fighting against getting infected for so long now, and this is [italic type]exactly[roman type] what I need. Could we agree that you can keep anything else from the load here, and I just take this box? All of it-' He says this with conviction and what seems to be a deep need in his voice, glancing at you hopefully. Clearly, this means a lot to your companion, so you give in and agree to the deal. A whole bunch of clean food and water against (likely experimental) military drugs seems a good split anyways.";
	WaitLineBreak;
	say "     With the decision made, Brennan picks up the crate to carry it in his strong arms and the two of you set out to leave, starting out towards the inner city once more. As the two of you pass the first cluster of eggs, you notice him pause for a second, looking the bulging shape up and down. 'Godspeed soldier, whatever you may become,' Brennan murmurs under his breath, then continues walking. He and you are making your way along the highway, walking in the shadow of the trees, when not long after, you notice something from the corner of your eyes. Someone - or rather two someones - just lifted off out of a tree on the other side of the highway, and they are aiming straight for you! It's a pair of hawkmen!";
	say "     You stand back as the avians swoop down and land with heavy beats of their quite large wings. As the two of them set down on their bird-like feet with dangerous and curved claws, you get a closer look of their raptor-like forms. The strange bird-men have large, hawk-like wings stretching out from their backs, the rest of their bodies covered in rather soft and beautiful-looking feathers in shades of brown. Obviously male and half-erect from the thrill of pouncing on you, the hawkmen turn their avian heads to the side appraisingly. A lecherous grin forms on the corners of their beaks, and one of them says, 'Nice of you to collect those goodies for us. We love when fuck-toys bring presents!' And with that, they attack, one on one for Brennan and you.";
	challenge "Hawkman";
	if fightoutcome < 20: [player won]
		say "     Knocking down the hawkman that attacked you personally, you glance over at your companion and see him snatch a little can of pepper-spray from a jacket pocket. A second later, Brennan sends a thick squirt of that into his own opponent's face - and even into his open beak as the hawkman screeches. The avian recoils in a fit of retching and coughing as the chemical weapon has its intended effect. Between that and the beating you yourself handed out, the spirit of these two is clearly broken. With angry screeches of, 'Fuck this, you assholes!' they take off, beating their wings strongly to gain height.";
		say "     The rest of the trip afterwards is thankfully unremarkable, and the two of you eventually arrive back at the library. 'Thanks again for your help,' Brennan tells you with a smile on his bearded face, then adds, 'I'm gonna stash this somewhere safe. See ya buddy.'";
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     You fall to the ground after the last claw-slash by your hawkman attacker, and the avian predator lands almost on top of you. The sharp claws of his feet scrape over the asphalt right next to your head. He bends one foot-claw to slice a bloody line over your cheek - then suddenly recoils in a fit of retching and coughing as a steam of liquid is shot right into his face. Glancing to the side, you see Brennan with a can of pepper-spray in hand, using it to spray your attacker. He looks rather bruised - you guess that was because he had both hands full with the other creature at the start of the fight - but still prevailed against his own attacker, whom you can see flopping weakly on the ground beyond. With the introduction of chemical warfare and the beating his companion already got, 'your' hawkman screeches out, 'Fuck this, you assholes!' And with that said, he pushes off into the air, beating his wings strongly to gain height. The second attacker joins him in the air a moment later, also admitting defeat by fleeing from Brennan and yourself.";
		say "     The rest of the trip afterwards is thankfully unremarkable, and the two of you eventually arrive back at the library. 'Thanks again for your help,' Brennan tells you with a smile on his bearded face, then adds, 'I'm gonna stash this somewhere safe. See ya buddy.'";
	else if fightoutcome is 30: [fled]
		say "     Running away, you draw the attention of [italic type]both[roman type] hawkmen, their predatory nature pushing them to capture fast-moving prey. As such, they swoop past you and slash with their claws again and again, harassing you for a long time before you finally manage to lose them by going through an alley or three and ducking in and out of houses. Brennan is of course nowhere in sight, but you hope that he made his own getaway unscathed - you drew his enemy away too, after all.";
	now BrennanRelationship is 6; [player got home after the convoy trip]
	now Thanks & Cherries is not resolved;

Thanks & Cherries is a situation.
Thanks & Cherries is resolved.
The sarea of Thanks & Cherries is "Nowhere".

instead of going to Grey Abbey Library while (Thanks & Cherries is not resolved and BrennanRelationship is 6 and a random chance of 1 in 2 succeeds):
	move player to Grey Abbey Library;
	say "     Moving to the main floor of the library, you see Brennan coming up the stairs to the front door and wander over there to greet him. ";
	ThanksAndCherriesEvent;

instead of navigating Grey Abbey Library while (Thanks & Cherries is not resolved and BrennanRelationship is 4 or BrennanRelationship is 5 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	say "     Making your way back to the entrance of the Grey Abbey Library once more, you set a first foot on the stairs leading up to the front doors and see Brennan already there, waiting for you. ";
	ThanksAndCherriesEvent;

Instead of resolving a Thanks & Cherries:
	ThanksAndCherriesEvent;

to ThanksAndCherriesEvent:
	say "The muscular man smiles broadly as you come closer, then holds out his hand for you to shake. As you do so, still wondering a bit about the change from his previous 'no touching' rule, the human survivor says, 'The immunity boosters really work! I just had to come by and say thank you again for going to the convoy with me. I feel like a new man, not having to live in constant fear of infection. Thank you from the bottom of my heart!' And with that, he actually throws his arms around you, giving you a bear-hug and patting your back enthusiastically."; [This is a continuation of the previous segment, so no indent is needed.]
	say "     'But there is more! I brought you something,' Brennan continues, then sets his backpack down and pulls an... apple(?) out of it. On closer inspection, you realize that it is too smooth and shiny for that. No, it's actually a giant cherry! Pulling a small knife from the sheath on his belt, your friend cuts the huge fruit in half and offers you one of the pieces, then bites into his half with gusto. Swallowing a bite and wiping a bit of juice off his lips, he explains, 'I actually encountered these a while back, but never dared try them. Never seen anything shift after eating them, but... I guess I was a bit overly cautious. But now - I have to say these are damn tasty!'";
	LineBreak;
	say "     You share a sweet meal with Brennan and accept two more of the large cherries as a reward, then chat a bit with him before the cheerful man bids you farewell and departs.";
	PlayerEat 15;
	say "[bold type]Your sanity has increased by 10![roman type][line break]";
	increase humanity of player by 10;
	say "[bold type]You gain 2 food![roman type][line break]";
	increase carried of food by 2;
	now BrennanRelationship is 7; [player got thanks, and cherries]
	now Thanks & Cherries is resolved;
	now Wolf Whisperer is not resolved;

Wolf Whisperer is a situation.
Wolf Whisperer is resolved.
The sarea of Wolf Whisperer is "Outside".

instead of resolving Wolf Whisperer:
	if BrennanRelationship is 7:
		say "     Exploring the inner city, you come upon a tunnel through a hill that dominates part of the area. Around the entrance to that, a whole mess of dozens of collided cars blocks most of the way forward. Cautiously following a rough path that previous passersby have cleared through the wrecks, everything seems quiet - until suddenly, a feral wolf steps out of the shadows a short distance ahead. The beast stands still as he studies you intently, seemingly unsure of what to do. You're still trying to decide the same yourself when a sharp whistle makes the canine look to something behind him, then turn around and trot out of sight. Fairly strange behaviour for one of these usually so wild beasts.";
		say "     Walking after the wolf out of curiosity, you glance around the corner of the car he vanished behind and find an explanation for what is going on, although it is one that only opens up more questions. Not too far away, your friend Brennan is standing in front of yet another twisted metal wreck, flanked by two feral wolves and holding a crowbar. The large grey and brown beasts look up at him intently as he points at the trunk of the car. 'Here, have a sniff and tell me if there's any food in there. Same thing with the other cars around. Come on guys, I know you can understand a fair bit of what I'm saying. Work with me here.' To your surprise, the wolves react to his request with cheerful barks, then start trotting from car to car, tails wagging.";
		WaitLineBreak;
		say "     Following the progress of his two wolves, Brennan spots you after a moment or two and smiles, waving you closer. 'Hey again, nice to see you here. You must be baffled by seeing Romulus and Remus,' the survivor greets you and points to identify the two separate wolves. 'A while after we got back from the convoy, I noticed I was being followed. When I confronted who was tracking me, it turned out to be the two ferals from the... incident in that alley. Color me surprised when they didn't try to attack at that point, but instead ducked their heads before me, whining. And then they rolled over on their backs and totally submitted. I'd have chased them off, but... I still feel bad about how things worked out, and it seems these two actually seem to [italic type]need[roman type] someone to lead them. Better me than another asshole like their last alpha, I thought.'";
		say "     A bark draws both of your attention to the side, and Brennan quickly walks over to where the wolf Remus is sniffing at one car with special interest. With the help of the crowbar and a strong wrench of his muscular arms, the human man breaks open the trunk and grins as he sees two shopping bags inside. Stroking his wolf's head and saying, 'Good boy Remus, that was very good,' he then starts to stuff those supplies that haven't gone bad into his backpack. 'It's been strange, being with these two. Sometimes, they seem quite clever and clearly understand what I am telling them, but other times, they rely on nothing but instinct. Or maybe they simply pick and choose what exactly they [italic type]want[roman type] to understand and what not...'";
		WaitLineBreak;
		say "     Further explanations are interrupted by the second wolf - Romulus, as Brennan calls him - making his way back to the muscular man and rubbing his side against Brennan's arm. Your friend smiles at the shameless dig for some affection and deals out petting and affectionate head-scratching to both of his companions. 'After so long alone, I relish having both of them. I always liked dogs, and these two are quite sweet - now that they've accepted me as their leader.' Congratulating Brennan on how things worked out, you give the wolves a stroke yourself after he tells them that they should treat you like family. Then you bid your farewell to the three of them, leaving them to scavenge the pileup while you wander on through the tunnel and into the section of the city beyond.";
		now BrennanRelationship is 8; [met him and the wolves]
		now Bunny Frat Invite is not resolved;
		now Entrance Checks is not resolved;
		now Trip to the Water Tower is not resolved;
		now Fountain Discussion is not resolved;
		now Slaver Caravan is not resolved;
		now Slave Hunter is not resolved;
	else if BrennanRelationship is 8:
		say "     Exploring the city, you come to a street filled with a row of little stores. Sadly, they all seem to have been looted before and yield nothing interesting when you check over the remains, or are selling some less than useful products. There just isn't much use for decorative throw-pillows or scented candles during the nanite apocalypse. Then, just as you are standing in front of yet another shattered shop window and are trying to decide if climbing through will be worth it, you see some movement from the corner of your eyes. Looking to the side, you are surprised to learn that it is a tennis ball, hitting the street after what must have been a powerful throw, which makes it bounce off, hit a wall on the other side of the street and bounce a few times, finally coming to a stop in the gutter. A wild scramble of claws on asphalt heralds the arrival of two feral wolves a second later, rushing full tilt at the ball.";
		say "     You recognize the grey and brown beasts after a second or two - they are Romulus and Remus, the canines Brennan adopted. The ball is holds their complete attention and they pounce on it, playfully wrangling over it while wildly beating their tails. Eventually, one wolf triumphs and proudly starts to carry the tennis ball off the way they came from, leaving his pack-mate standing alone on the street, looking after him with his head tilted. This makes the wolf notice you in turn, and he gives a bark in greeting, then trots closer. By the time the feral has sat down on his hindquarters in front of you, Brennan has also appeared, following his companions out of the street the ball had originally come from. After accepting the tennis ball being brought to him, he starts looking around for his second wolf, quickly spotting you and the canine next to you.";
		WaitLineBreak;
		say "     'Hey there, nice to see you again,' the human survivor says with a friendly smile. He looks a bit sweaty, with a light sheen on his exposed arms and face; apparently your friend jogged with (or after) his canines. Patting the head of the wolf sitting next to you, he then watches both of the ferals take off at high speed when he throws the ball. 'Phew, you wouldn't believe how active those two are. Good think I am used to running through these danger-infested streets. But hey... even if they can be hard to ride herd on, I wouldn't give Romulus and Remus up for the world.'";
		say "     You chat a little while with Brennan, during which the ball gets thrown several more times before he eventually says his goodbye and sets out to continue his walk with the wolves. As you watch the three of them go, you can't help but smile a little at the way Brennan opened up. Those immunity boosters really helped him, as did the tight bond he since formed with his furry companions.";
		now BrennanRelationship is 9; [wolf play event completed]
	else if BrennanRelationship is 9:
		say "    Moving through a neighborhood in the inner city that has been devastated by what must have been an epic battle between some very big combatants, you see barely a single building anywhere that has not been damaged in some way. Gaping holes mar many a wall and several of the especially damaged sections seem to have collapsed into mounds of rubble. One mid-sized house literally looks squashed - as if something sat on it, or possibly was fucked upon it. Walking around the half-collapsed structure, you see a large tell-tale splash of dried cum against one of its walls, complete with a veritable puddle at the base of it. And right in the middle of all this destruction, you encounter two wolves whom you know halfway well by now - they are Romulus and Remus, Brennan's adopted ferals.";
		say "     One wolf is sitting upright on his hindquarters, canine head scanning the surroundings and barking in greeting as he spots you. Meanwhile, his pack-mate lies stretched out on his side, lazing about till it is his turn to guard it seems. And they are indeed guarding something - you see Brennan's upper body appear from what seems to be a hole in the ground some short distance behind the wolves, lifting a chunk of masonry and throwing it to the side. Curious about what is going on, you walk closer and see that the man is standing some steps down on a wide set of stairs, leading to what must have been a basement. Or they would be, if the whole stairway wasn't filled with rubble from part of the building above collapsing into it.";
		WaitLineBreak;
		say "     'Hey there,' the bearded man greets you with a smile, then lifts another clump of bricks out of the way and walks up the stairs to shake your hand. 'It's kinda funny - I must have walked right past this place ten times or so, but guess what happened when I came through with these two today...' Two proud barks interrupt Brennan, with Romulus and Remus stepping up to give their sweaty pack leader interested sniffs and licks. 'Patience guys, I was getting to it. Or I guess I can just do a show and tell.' Stretching his back from all the bending and lifting before, the muscular man steps towards the close wall and grabs something dangling against it, held up by nothing more but a thick cable. As he lifts and turns the dented metal object, you can see it is a sign, with the words 'Luke's Bar' recognizable in its broken lighting element.";
		say "     Dropping the sign, Brennan moves back to his wolves and gives them both please pats on their heads. 'They sniffed it out, and I'm fairly certain something good must still be down there. I think all this,' he indicates the devastation around you, 'Happened fairly early in the outbreak. Anyways, been digging out the entrance for a while now, but with half the first floor having rained down here, it's been slow going. But I'll keep at it - just need a little bit of a break right now.' With that, the man pulls a water bottle from his backpack and takes a swig.";
		say "     [bold type]Looks like he'll be busy for hours yet...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Offer to help.";
		say "     ([link]N[as]n[end link]) - Get back to exploring.";
		if player consents:
			LineBreak;
			say "     Your offer is eagerly accepted and Brennan gladly makes room for you to have a go at the excavation while he rests for a short while. Soon, the two of you are working together, handing off chunks of brick and mortar from one to the other as you work your way deeper. After another hour or so, the upper third of the entrance door is in sight - but sadly, it opens outwards, so you still can't open it. That takes another sweat-inducing half hour of clearing the rest of the debris, before Brennan finally can stand in front of it and twist the doorknob. As the door swings open, a potent fruity scent washes over you. 'Phew, no wonder they smelled that up on the street. This place reeks of whatever that is!' the human survivor says, then draws a flashlight and clicks it on.";
			say "     Stepping into the dark and abandoned basement room, you see a fairly nice bar setup, the tables and chairs covered in rock-dust and some fallen pieces of concrete. A thick crack goes right across the ceiling, waking worry over the structural integrity of the place. This definitively isn't a spot to stay in long. Walking around the counter, glass crunches beneath your boots and Brennan lowers the flashlight to illuminate a mess of shattered bottles - fruit liquor, which explains the smell. Sadly, it looks like the destruction above made just about all of the stock tumble down into a great mess. Yet Brennan isn't too easily frustrated and just keeps going with the search, pushing the shards out of the way to walk past. On the other side of the whole mess, he quickly finds the entrance of a storage room.";
			WaitLineBreak;
			say "     'This looks promising,' your friend says as he glances into the room, finding shelves with peanuts, pretzel sticks and various other food items designed to make people more thirsty, as well as some soda and water bottles. Since you helped excavate the place, he is only to happy to share the stash with you.";
			LineBreak;
			say "[bold type]You gain 3 food![roman type][line break]";
			increase carried of food by 3;
			say "[bold type]You gain 2 water bottles![roman type][line break]";
			increase carried of water bottle by 2;
			say "[bold type]You gain 3 soda bottles![roman type][line break]";
			increase carried of soda by 3;
			LineBreak;
			say "     Emerging from the depths of the damaged basement room with your backpacks bulging, Brennan and yourself climb the stairs and join the two wolves waiting at the surface and keeping watch. The human survivor crouches down between the two of them and hugs the large canines with both strong arms, cheerfully telling them, 'Someone has earned themselves special snacks and quite a few belly rubs. We found a nice load of stuff down there, all thanks two you two.' Romulus and Remus tails beat rapidly at the praise and petting, both of them being very happy to have pleased their leader. Brennan shakes your hand and says thanks once more, then the three of them move out from the ruined neighborhood, as do you yourself.";
		else:
			LineBreak;
			say "     You wish Brennan well and say that you hope he finds something nice down there, then bow out and get going again, soon leaving him and the wolves behind you.";
		now BrennanRelationship is 10; [buried bar event completed]
	else if BrennanRelationship is 10:
		say "     Exploring the city and wandering through the currently empty streets, you hear a whine coming from somewhere nearby, soon followed by a feral wolf trotting towards you at a breakneck pace, his muzzle lowered to take in your scent. It is Romulus, one of Brennan's companions, and he looks terrible; with patches of fur missing over multiple freshly closed wounds and his whole muzzle is smeared with something orange... Is it some sort of blood? The wolf barks at you in what you think is a desperate tone, then whirls around as if to get moving immediately - looking over his shoulder to make sure you are following.";
		say "     [bold type]Do you follow the feral beast?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Of course! Something must have happened to Brennan.";
		say "     ([link]N[as]n[end link]) - You're not gonna go after a feral just because he barks at you.";
		if player consents:
			LineBreak;
			say "     Telling the wolf to lead on, you follow the beast as he sets off at a run. After about ten minutes of dashing through the dangerous cityscape, you finally reach the place Romulus is going for: a post-office. The street in front of it is covered in several large puddles of orange blood, and red too, with a trail leading into the building. You rush after the feral and stumble into the ransacked building, finding your friend Brennan there - sitting in a chair. He's been put through the wringer, with multiple cuts and abrasions visible on his body, as well as one pants-leg cut completely away so he can apply a pressure bandage to his mid-thigh. From the red half-circle visible through the bandage, something with a quite large maw bit him. His bat and a taser are laid out in reachable distance on the table next to him.";
			say "     The wolf by Brennan's side is hurt badly too, missing a third of his front leg and licking forlornly at the remaining stump. It actually looks like the paw is on its way of re-growing, but that takes it out on the rest of him, as Remus looks rather starved and lean now that the nanites are shifting mass around to complete him again. 'Thank god, he found you!' Brennan groans out as he sees you come in. 'We got attacked by a draken! Man, that was one nasty lizard. Managed to drive it off in the end, but it was a close thing. And... well, you see what state we're in. I - we - need your help. No way we'd make it home safely, not in this state. Romulus and Remus have been on the mend like they usually do, but they've eaten everything I had with me and are still looking half-starved. And myself... Well, this bite hurts like a bitch and I don't heal as fast as the infected.'";
			WaitLineBreak;
			say "     After all the adventures you went through together, you tell Brennan that you will of course help him out. A smile crosses his bearded face as he lets out a relieved sigh, then packs his gear and eventually stands up slowly - wincing as he has to put weight on his wounded leg. Brennan starts using his baseball bat as a makeshift walking stick, allowing him to walk - not particularly fast, but at least he's mobile. The four of you set out onto the street, with yourself being the lead for the group of limping invalids. At first things go well, as apparently the fight between your companions and the draken frightened off the usual inhabitants of a block or so around the site of the action. Sadly, this doesn't last... a harpy spots your group from above, and decides to swoop down upon you, ready to attack!";
			challenge "Harpy";
			if fightoutcome < 20: [player won]
				say "     After one more hit, the harpy collapses on the ground, totally worn out from all the fighting. 'Good job, thank you for helping us. I just wish I could actually help you fight!' Brennan says in an apologetic tone and limps closer. 'Come on, we should get going before something else shows up.'";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     As you collapse on the ground, hurting from her relentless assaults, you hear the pop of Brennan's taser and see two darts sticking out of the harpy's chest an eye-blink later, connected to the weapon by a pair of cables. There is a clicking sound from the device as it pumps a whole lot of electricity into the shrieking female, making her collapse and pass out. 'Sorry that I couldn't help you earlier - I didn't want to chance hitting you by accident instead,' Brennan says in an apologetic tone and limps closer. 'Come on, we should get going before something else shows up.'";
			else if fightoutcome is 30: [fled]
				say "     You start to run and draw the harpy after you, predatory instincts making her chase fleeing prey first. But before you can get further than just a few feet, there is a pop from Brennan's taser and the bird-woman shrieks and collapses as quite a bit of electricity is pimped into her. 'Sorry that I couldn't help you earlier - I didn't want to chance hitting you by accident instead,' Brennan says in an apologetic tone and limps closer. 'Come on, we should get going before something else shows up.'";
			say "     After the harpy, other creatures up and down the street that saw what went on do go out of your way, allowing your little group to leave the more busy inner city blocks behind you. Brennan points you the right way for a somewhat out of the way neighborhood, in which you eventually reach a six story apartment building, painted in a light green tone. You see a petrified hyena standing at the entrance, a sight of which seems to fill Brennan with relief rather than concern. 'No worries, I got an arrangement with the gorgon living on the ground floor. Come on, let's go in,' he says, then takes over the lead as he limps into the building's lobby and calls the elevator. Apparently this place even still has power!";
			WaitLineBreak;
			say "     When the cabin arrives, everyone steps in the elevator and Brennan pulls out a key, inserting it into a keyhole to make the elevator go upwards. Soon, you're up to the fifth floor, then inside Brennan's apartment shortly after. 'Phew, thanks. You really came through for us this time!' the human survivor says in a very thankful tone, limping closer and patting your shoulder in camaraderie. 'Could you help me feed the wolves now please?' The bearded man points out where in his kitchen  you can find a can-opener and some cans, allowing you to feed the two wolves with what is apparently ravioli. Not that they stay in their bowls for and length of time, as the two ferals immediately devour everything that gets in front of their muzzles. It looks like they have been very hungry - and giving them food has an immediately visible effect. Remus['] partial limb rapidly grows out into a full paw, allowing the wolf to stand on all fours again.";
			say "     While the wolves are still refilling their stomachs, Brennan limps into the bedroom, where you help him take off his backpack, setting it down on the ground. The man grabs a healing booster from his desk and injects himself, then grasps your shoulder and gives it a squeeze. 'Thanks again, I more than appreciate what you did. In fact... I would like to offer this to you.' With that said, he pulls out a bunch of keys from his pocket and removes one of them, handing it over to you. 'Here, it fits the elevator and front door. Hope to see you over here sometime again. But for now... I definitely need some rest. This stuff works best when you sleep, you know.' Limping over to the bed, he climbs onto it and pulls the sheet over himself, then dozes off in exhaustion. You simply nod at your friend and wish him well, then leave. One elevator ride later, you're back in the lobby and leave the building.";
			now BrennanRelationship is 11; [player got the key to Brennan's place now]
			move Brennan to Brennan's Bedroom;
		else:
			LineBreak;
			say "     Ignoring the wounded wolf as he circles back around to bark at you some more and giving pleading whines. After several moments of this, he growls in obvious frustration and you chase him off with some thrown rocks, going back to what you were doing.";
			say "     [bold type]Thinking back about what happened as you continue to scavenge (without much luck), you can't help but wonder what you'd have found if you went with the wolf. Maybe you missed something important, if Brennan was actually in trouble.[roman type]";
			now Bunny Frat Invite is resolved;
			now Entrance Checks is resolved;
			now Trip to the Water Tower is resolved;
			now Fountain Discussion is resolved;
			now Slaver Caravan is resolved;
			now Slave Hunter is resolved;
			now Wolf Whisperer is resolved; [for good]
			now BrennanRelationship is 97; [abandoned wounded Brennan - he didn't make it]

Entrance Checks is a situation.
Entrance Checks is resolved. [blocked till BrennanRelationship reaches 8]
The sarea of Entrance Checks is "Nowhere".

instead of going north from Smith Haven Mall Lot South while (Entrance Checks is not resolved and BrennanRelationship > 7 and BrennanRelationship < 90 and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: Brennan runs into Logan at the mall - BrennanRelationship: [BrennanRelationship] [line break]";
	say "     As you walk up to the entrance door of the mall, you see a familiar trio ahead of you - it's Brennan and his two wolves, Romulus and Remus! They are being held up from going inside by a wolverine guard with the name-tag 'Logan' on his chest. [if LoganCommand > 0]He is the black sheep of wolverine security, relegated to guarding the outside of the mall. [end if]'What do you want?' the mustelid asks gruffly, eyeing the human survivor with a frown on his face. Brennan replies, 'Trade. I heard there are shops still open inside this mall. Got quite a bit to barter.' He pats the side of his bulging backpack lightly. Leaning forward to sniff at the man, Logan tells him, 'You got a weird scent for a human, but fine. Next! And no bitching if you grow a tail after moving through the crowd in there!'";
	say "     The mall guard then holds his baton in front of Romulus's muzzle, stopping him from following his alpha. 'Not so fast, pooch. What do you want to do inside?' Brennan clears his throat and explains, 'He - both of them - do not talk. They're with me.' Giving the wolves a callous look and glaring a little at Brennan, Logan barks out, 'Your problem if they misbehave then. Ferals are all the same. Usually I get to deal with them sooner or later.' There is a definitive tone of anticipation in his voice for the possibility of violence - as well as... other things that the anthro might do when the time comes. Finally, the little group is let through to enter the mall, and as you try to follow to meet up with your friend, Logan steps in your way as well. It takes you a short while to get rid of him - which sadly is enough to lose sight of Brennan in the well-populated mall interior.";
	wait for any key;
	move player to Mall Foodcourt;
	now Entrance Checks is resolved;

Bunny Frat Invite is a situation.
Bunny Frat Invite is resolved. [blocked till BrennanRelationship reaches 8]
The level of Bunny Frat Invite is 0.
The sarea of Bunny Frat Invite is "Campus".

instead of going to College Walkway East while (Bunny Frat Invite is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	move player to College Walkway East;
	BunnyFratInviteEvent;

Instead of resolving Bunny Frat Invite:
	BunnyFratInviteEvent;

to BunnyFratInviteEvent:
	say "     Making your way over the college campus, you see a small group of people ahead, one of whom is someone you know - Brennan, the human survivor you had several encounters with now. He is talking to a pair of bunny jocks, all three of them in high spirits and laughing when one of the students makes a lewd joke. As you walk closer, you overhear the other bunny say, 'Hey B, you're a cool dude! Why don't you enroll too? We can make room for you in the dorm!' Raising his eyebrows at the offer, the muscular man smiles but shakes his head. 'Thanks, but I don't think I'd be the right match. I'll gladly come back to hang with you guys - this area is one of the few places where one can halfway relax their guard, but... living with all of you dudes and sharing a bathroom? Just imagining the lines each morning...' The bunny jocks wave him off and explain, 'It's not that bad - you just share with someone. Shower together and all that, soap each other up.'";
	say "     Eager to demonstrate, he throws an arm around his fellow bunny and pulls him close, then slips a hand under his Tenvale College shirt and rubs his abs and firm pecs in circling movements, grinning broadly all the while. Yet any further try at convincing Brennan to join up are curtailed as the human man spots you and immediately calls out to you. 'Sorry guys, gotta catch up with my friend over there. Haven't seen [ObjectPro of player] in [italic type]ages[roman type]!' Brennan gives as a quick excuse, then hurries over to you and grabs you by the upper arm, turning you around and walking you down the next pathway. 'Man am I glad to see you. Those guys are nice, but at times just a bit [italic type]too[roman type] insistent getting friendly with everyone...' You join Brennan in some friendly conversation until the bunnies get tired of waiting around and move on. He thanks you for the timely rescue and then gets going himself soon after.";
	now Bunny Frat Invite is resolved;
	now LastCampusWalkin is turns;

Fountain Discussion is a situation.
Fountain Discussion is resolved.
The sarea of Fountain Discussion is "Campus". [Fountain]

instead of going to College Fountain while (Fountain Discussion is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	move player to College Fountain;
	FountainDiscussionEvent;

Instead of resolving Fountain Discussion:
	FountainDiscussionEvent;

to FountainDiscussionEvent:
	say "     Your path over the campus brings you close to the fountain in the middle of the central green. Just as you arrive, you see the tail end of a human figure, flanked by two wolves, go into the college admin building to the north. It must have been Brennan, as that combination of beings is not something you have seen anywhere else, and 'regular' humans are becoming exceedingly rare these days, too. This of course means that your friend draws quite a bit of attention wherever he goes. Overhearing a trio of Spartans standing a little bit aside from the usual fountain crowd, you are therefore not too surprised by the topic of their conversation.";
	say "     '...imagine him joining us as a new brother. Now that is a real man!' the first of them says in a voice full of admiration, and is answered by another of the young men. 'You think we should approach him when he comes back out? He might decline - then where would we be? A pity about Pericles['] edict of not testing someone's skill without provocation or... consent.' The first spartan replies, 'I'm not saying I'd publicly challenge that commandment, but... if one should run into that man somewhere else on campus, away from prying eyes... who will be able to tell he didn't petition to join us afterwards?'";
	WaitLineBreak;
	say "     The third of the group speaks up after listening to his friends until now, 'You know... if I met and bested that hunk - and his two beasts, not to forget about them - I would just take him as my personal slave. Imagine having such a man to warm your bed and serve.' Given that the Spartans in Tenvale college are not at all bothered by nudity and that you rarely see any wear pants or even underwear, the erections this line of talk makes grow are more than obvious. And you are far from the only one to notice. An incubus strolls over to the group almost straight away, offering them a good time in a very smooth and charming voice.";
	say "     'You think you can take three spartan warriors at the same time?! I'd like to see you try!' comes the inevitable reply from the leader of their little group, and the demon gleefully leads them off to wherever his room or fuck-nest may be.";
	now Fountain Discussion is resolved;
	now LastCampusWalkin is turns;

Infernal Offer is a situation.
Infernal Offer is resolved.
The sarea of Infernal Offer is "Campus". [Fountain]

instead of going to College Fountain while (Infernal Offer is not resolved and LastCampusWalkin - turns > 0 and a random chance of 1 in 3 succeeds):
	move player to College Fountain;
	InfernalOfferEvent;

Instead of resolving Infernal Offer:
	InfernalOfferEvent;

to InfernalOfferEvent:
	say "     You run into Brennan at the college fountain and spend a little time chatting. Clearly, the bearded man enjoys the somewhat more relaxed atmosphere of the campus a lot and can often be found here. Getting those immunity booster shots really helped him get out of his shell by taking away the worry about casual infection. Eventually, you're all caught up on all the current news and the two of you decide to go your separate ways. Just as you start to walk away, you are passed by a shirtless incubus, who 'accidentally' stumbles and lands right in Brennan's arms. Bare pecs pressed right against your human friend's front, the demon smiles charmingly at Brennan and says, 'Thanks for catching me, handsome. How about I pay you back with the best blowjob you'll ever have?' With that said, he quickly takes the human survivor's hands and slides them down to rest on his hellishly perfect buttocks.";
	say "     'Yeah, I wish,' the human survivor says under his breath, then puts his hands on the incubus's shoulders and pushes him out of his comfort zone. 'Sorry, I don't just fuck around with any charming stranger that comes my way,' Brennan adds in a more normal voice, rejecting the sex-demon politely but firmly. With that said, he steps to the side and walks right past the baffled incubus. You see the demon whirl around and stare after his intended prey, his fist clenching in anger. A two-spartan patrol that strolls by in that very moment makes him re-think a physical confrontation and suppress the irritation though, and the incubus stalks off in a tiff. You can hear him mutter, 'You'll be mine in the end, asshole,' before he vanishes down the path.";
	now Infernal Offer is resolved;
	now LastCampusWalkin is turns;

Slaver Caravan is a situation.
Slaver Caravan is resolved.
The sarea of Slaver Caravan is "Outside".

Instead of resolving Slaver Caravan:
	say "     Exploring the city, you come upon an overpass over a broad flood drain channel, one of many concrete ditches running through the city to allow excessive rainfalls to flow to the sea without damage to buildings or people. Interestingly, there is someone already on the bridge - your friend Brennan, who appears to be hiding behind the concrete railing flanking the roadway. The bearded man keeps peeking over the edge in short glances, careful not to show himself. You follow his lead, moving forward in a crouch to close the distance to the man. 'Watch out! We'll be in trouble if they spot us,' he says at a quiet hiss, indicating what is beyond the railing. Glancing over the top edge, you see a group of beings below, on a trek up the dry channel. As you look at the five centaurs and see that they are herding eight persons of mixed species, their necks connected by a metal chain, Brennan confirms your immediate guess with the comment, 'Slavers. I've seen them a few times already, making expeditions into the city.'";
	say "     Quietly talking to your friend while observing the group moving farther and farther away, you learn from him that those who do not have the temperament, physique or aggression to overpower others still do their best to make this whole situation worse - by paying slavers to do their dirty work. It is clear that he is more than opposed to the sheer concept of forced servitude. Eventually, the rear guard of the centaurs turns around to check for anyone following, so the two of you have to quickly duck completely out of sight. Head bent low to keep it behind the concrete barrier, Brennan grumbles, 'I wish there was something I could do to stop them, but they usually ride out in groups, and centaurs are not easy to take down.' You keep yourself concealed until the slaver party is barely visible in the distance, entering the start of the dry plains. Then you say your goodbyes to Brennan and get moving once more.";
	now Slaver Caravan is resolved;

Slave Hunter is a situation.
Slave Hunter is resolved.
The sarea of Slave Hunter is "Outside".

Instead of resolving Slave Hunter:
	say "     The clatter of hooves on asphalt makes you pause and listen for where the noise is coming from. It seems to be quite close, and before you can do much more than take a little bit of cover in a somewhat deeper entrance door-frame, a gasping and wheezing anthro Dalmatian sprints past your position. He is in full flight, panic obvious in his every movement. The canine is about forty feet down the road when his pursuer appears - a centaur moving at full gallop. The human half of the hybrid is swinging a lasso as he dashes after the runaway, soon launching it and bringing the Dalmatian to the ground in a bone-rattling tumble. 'Told ya running is pointless, doggie. Got a buyer who pays premium for anything with spots. No way I was gonna let you just skip out on me.' With great sureness and speed, he trusses the captive dog up and throws him to hang over his equine back.";
	say "     Only once the centaur turns around again do you get your first good look of him. His upper body is lean and muscular, fitting to a lower equine half that seems to be built for speed. The slaver has some saddlebags strapped to his equine back, while the human chest bears a crossed set of leather straps that he must have gotten in a fetish store. The taut material serves to accentuate his abs and muscled pecs, and a handsome bearded face completes the image of a charming rogue. You do not get any more opportunity to study him further, as the slaver gallops off a moment later, complete with his new acquisition.";
	now Slave Hunter is resolved;

Trip to the Water Tower is a situation.
Trip to the Water Tower is resolved. [blocked till BrennanRelationship reaches 8]
The level of Trip to the Water Tower is 0.
The sarea of Trip to the Water Tower is "Outside".

Instead of resolving Trip to the Water Tower:
	say "     Roaming the streets of the inner city, you run into your survivor friend Brennan once more, this time without the two wolves he adopted. As you ask him about them, the man says, 'Yeah, they're good guys, but... a bit too excitable for scouting most of the time. I've found it difficult to keep them from wandering off and sniffing around, which doesn't really lend itself for stealthy approaches.' With a shrug and a smile, he adds, 'I left them at the apartment, dozing on a mattress together. Anyways - the reason I'm out here is that I wanted to check that out.' He points at a structure a few blocks in the distance, rising high above the surrounding buildings. It is a water tower, and not a small one. 'You might have noticed that the west side of the inner city still has power, so I've been wondering why the water isn't also working. Maybe the pumps at that tower have failed or been turned off by someone?'";
	say "     [bold type]Do you want to accompany Brennan on his trip to the water tower?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Sure! It'll be good for everyone to get the water running.";
	say "     ([link]N[as]n[end link]) - No, you have other plans at the moment.";
	if player consents:
		LineBreak;
		say "     The two of you set out towards the tower and the adjoining pumping station, quietly avoiding a small gang of leopardmen that occupy a street corner on the way. Soon, you arrive in front of the water tower and its support building, which together take up about a quarter of the city block. A wire-mesh fence surrounds the property, with an opening on one side, allowing access to a few parking spaces next to the two story pumping house and its smaller annex. Everything seems quiet as you step onto the water station grounds, with three abandoned cars waiting silently in the parking lot. Checking the steel double doors to the brick and mortar pumping house, you find it locked. Yet just as Brennan is inspecting the metal doors and reaches up to pull the crowbar from where it is strapped to his backpack, there is a thumping noise from somewhere nearby.";
		say "     Both of you freeze in place and listen, and the sound repeats a few more times without any rhythm. 'Might be just the wind,' Brennan decides after a few more seconds, then adds, 'but we should check it out anyways.' Circling the one-story annex to the building, you soon find that it has its own door around the corner, which weakly beats against its frame, pushed by wind blowing past. Brennan and you go in, finding on the inside a room with several desks on one side and what seems to be a little laboratory at the other end. A metal connecting door to the pump house in the back of the room is also locked as Brennan tries its door handle. 'There must be keys for it somewhere. Come on, let's search this room. It'll save us the trouble of breaking open either of those doors. They seem fairly unyielding from the looks of things,' Brennan tells you, then starts to poke around in the lab, leaving you to check the desks out.";
		WaitLineBreak;
		say "     On first glance, the working area seems fairly disused, with two desks simply empty and bare (budget cuts, maybe?) and only the three others having some office supplies and personal knickknacks on them. Walking past the bare desks, you spot something interesting standing on the next 'in use' desk - a sample bottle, filled with water, as well as a nebulous glob of green goo. A yellow post-it is attached to the sample, bearing the words 'What kind of gunk is this??' Then you turn the corner and find some clothing strewn about on the floor behind the desk. A lab-coat, t-shirt, jeans as well as a pair of sneakers... all of them stiff and crusty with dried-in green goo. Those must be the remnants of whoever worked here at the time of the nanite breakout! Trying to put the fate of this person out of your mind, you instead focus on the conspicuous bulge in one of the lab-coat's pockets. That could be just the right size for a bunch of keys.";
		say "     After a quick trip over to where Brennan is just opening cupboards full of beakers and test tubes, you return with a pair of disposable latex gloves and slip them on, then grope around in the goo-encrusted lab-coat pocket. A satisfied grin spreads on your face as you pull the somewhat slimy keys out, then go to the door and unlock it after searching a few moments for the right key. Dropping the keys on a lab bench and getting rid of the stained glove with it, you call Brennan over from where he is adding two unopened boxes full of further gloves to his pack. Then you open the door into the pumping house. It is immediately obvious that the building holding the machinery is far older than the annex, built in a rock-solid style with lots of red bricks, exposed pipes and the powerful pumps that serve to fill the tower.";
		WaitLineBreak;
		say "     With its countless nooks, crannies and dark corners, the pump house puts Brennan on guard. Pulling his bat out, the muscular man says, 'Better watch out, I got a bad feeling about this place.' And indeed, the silence of the larger building seems quite ominous to you too. None of the machines are running, and you see a little red lamp burn in a clunky housing on the other end of the room, above which hangs a sign that reads 'Emergency Shutoff'. A lever right next to it looks to be covered in green slime. As you and Brennan set foot into the place, slowly walking towards it, squelching and dripping noises start all around you. Squeezing themselves out of little holes and crannies, half a dozen goo girls do not hesitate one second before they attack!";
		let GroupFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and GroupFightCounter < 3: [runs for 2 times or until the player loses or flees]
			now inasituation is true;
			challenge "Goo Girl";
			increase GroupFightCounter by 1;
		now inasituation is false; [reset]
		if fightoutcome < 20: [player won]
			say "     Fighting off the last goo girl, you see her lose cohesion and slump to the ground, fleeing in an undulating movement that is more akin to an amoeba than a humanoid creature. Looking around at the lull of fighting, you see Brennan peering into the darkness behind one of the large pumps, an area totally inaccessible to anyone not able to squirm through a three inch gap between the pipes. 'They're reforming, and I see more of them too,' the bearded man calls out to you in an urgent tone, only chancing a short glimpse towards you before he focuses on your gathering opponents.";
			say "     [bold type]Quick! What do you do now?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Rush to the lever and pull it!";
			say "     ([link]N[as]n[end link]) - Call to Brennan to retreat, it's too much!";
			if player consents:
				LineBreak;
				say "     Not wanting to stay in here any second longer than necessary, you dash over to the lever and grab it with your one hand still covered in the second latex glove, wrenching it into the other direction. As the contact closes with a thunk and a little spark, you hear the squeal of moving machinery and a rumble - but strangely enough, the pumps remain silent. Puzzled, you turn your head and look around, for the first time seeing the ancient display board on the wall that was just out of sight from the other side of the room. All of the gauges show that the tower is full to the brink! No wonder the pumps aren't running. But... what did you just turn on then? A yellow light switching over to green reveals - it's the runoff pipe that feeds the tower's contents into the city water system!";
				say "     'They're coming, we have to get out of here!' Brennan calls out and swings his bat at the head of a goo girl that squeezes through between two pipes, making it splatter apart in a shower of goop. She recoils, then starts to form a new head, slowly molding new features on a bare part of her body and pushing them outwards as a fresh face. 'Come on!' your friend shouts urgently and you rush past him, barely making it through the door before a goo girl interposes herself. A quick grab for a laboratory stool later, you swing it to push the creature out of the way for Brennan to join you in escape, then hurriedly throw the door shut. While he strains against the multitude of goo creatures pushing from the inside, you quickly grab the key again and lock the door. Smashing the first dozen or so pseudopods that start to be pushed under the door flat with your boots, you convince the goo girls to give up and retreat.";
				WaitLineBreak;
				say "     'Phew, that was close,' Brennan says and wipes the sweat off his brow. 'Let's hope they don't just switch the lever back. But wait - I didn't actually hear any pumps starting, now that I think of it.' You start to explain that the tower was full all along and you just connected it to the city network again, but you're interrupted by an alarmingly loud groan of stressed metal from outside of the building. You start running, as does Brennan, sprinting through the annex and outside, where the source of the racket draws you behind the building, to the tower itself. The long drop pipe right under its center is visibly shaking in its supports and bulges in a way it was never meant to. Then a sound not unlike a bullet being shot rings out as the first stressed rivet breaks and sends it steel head flying - to bury itself an inch deep in the brick wall about four feet to your left!";
				say "     Cursing, you whirl around once more and flee together with your friend, wanting to take shelter behind the building. Unseen by either of you in your wild flight, green slime starts to gush from the new hole in the pipe as more rivets break in a chain reaction. Hearing the start of a metallic scream that almost pierces your eardrums, you tackle Brennan and throw the two of you into the shadow of the building corner, just as the water tower pipe is ripped apart by pressure from the inside. Twisted shards of metal spray everywhere, intermixed with large globs of green slime, and a true deluge of goo gushes out of the tower's tank, colliding with the ground in an earth-shaking rumble. The water tower must have been almost completely filled with this stuff!";
				WaitLineBreak;
				say "     Getting back to your feet and glancing around the corner, you see with dismay that the goo doesn't just spread and seep into the ground, but is actively flowing together, with all the big and small splattered parts forming runnels to join the central mass. It forms itself into an increasingly humanoid figure. Before long, the goo takes on the recognizable shape of a naked man, complete with a massive swinging cock - and about 40 feet tall! Brennan starts to step forward to check out what you are looking at, but you hurriedly push him back, then press yourself flat against the wall as well. Having gathered the last bits of its mass into one unit, the goo colossus meanwhile look around at its new surroundings, then starts walking with thunderous, slightly squelching, steps.";
				say "     Thankfully, it does not notice the two of you, just walking past the building and taking a stroll onto the street. Searching, the huge creature looks left and right, soon spotting the gang of leopardmen you bypassed earlier. With what seems like a gurgled chuckle, the colossus sets out in their direction, snatching the first feline up in one hand before they even really know what is going on. He plunges the struggling anthro into the cavity of his emerald green body, letting go of him to grasp for the next (now fleeing) leopard. As the goo colossus walks off, hunting his prey, the first captive inside of him begins a slow transformation of turning transparent and green himself.";
				WaitLineBreak;
				say "     Absolutely speechless until the giant has actually moved out of sight, Brennan turns to you with wide eyes and then says, 'Oh fuck! Fuck. Fuck. FUCK! Damn it! How - why - was that thing in the water tower?' Fairly shell-shocked yourself, you shrug, then check out why your arm is suddenly wet. It's blood, trickling from a long (but shallow) groove that a piece of shrapnel dug into your arm. Brennan immediately reacts by pulling his medkit, helping you clean the wound and keeping a sterile cover pressed on it until it heals over. '[italic type]That[roman type] certainly didn't go as planned!' he swears under his breath. 'Really hope this doesn't come back to bite us in the ass.' The two of you make your way back the way you came from, making a concerted effort to avoid the trail of destruction that the goo colossus has left in its wake.";
				LineBreak;
				say "     The goo colossus will surely make the plans of the military to pacify the city [italic type]much[roman type] more difficult!";
				say "     [bold type]Your rescue has been delayed by two full weeks![roman type]";
				extend game by (14 times 8); [14 days time extension]
				now GooColossusProgress is 1; [player and Brennan freed the beast!]
			else:
				LineBreak;
				say "     As you call out for him to flee, Brennan is just swinging his bat at the head of a goo girl that squeezes through between two pipes, making it splatter apart in a shower of goop. She recoils, then starts to form a new head, slowly molding new features on a bare part of her body and pushing them outwards as a fresh face. 'You're right!' your friend shouts urgently and you rush past him, barely making it through the door before a goo girl interposes herself. A quick grab for a laboratory stool later, you swing it to push the creature out of the way for Brennan to join you in escape, then hurriedly throw the door shut. While he strains against the multitude of goo creatures pushing from the inside, you quickly grab the key again and lock the door. Smashing the first dozen or so pseudopods that start to be pushed under the door flat with your boots, you convince the goo girls to give up and retreat.";
				say "     'Phew, that was close,' Brennan says after catching is breath. 'Guess we'll have to shelve the idea of running water for the foreseeable future. Well, at least we gave it our best shot.' Gripping your shoulder in camaraderie, he shrugs and leaves the annex to the pumping house together with you.";
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     As you are about to collapse from the onslaught, Brennan suddenly appears by your side and drags you out of harm's way. His trusty bat swats aside one goo girl that blocks the exit before you're out of the pump house again. ";
			say "[WaterTowerFailure]";
		else if fightoutcome is 30: [fled]
			say "     You rush out of the room, closely followed by your companion Brennan. ";
			say "[WaterTowerFailure]";
	else:
		LineBreak;
		say "     Brennan shrugs as you tell him that you can't join him right now as you have other things to do. 'Good luck on your endeavour then,' the bearded man adds with a smile and pats the side of your arm. 'And if you find that the water everywhere suddenly is running again, you know whom to thank. See ya!' With that, he sets off on his own.";
		now GooColossusProgress is 100; [Brennan couldn't accidentally release him on his own]
	now Trip to the Water Tower is resolved;

to say WaterTowerFailure: [continuation of the previous say, no new indent needed]
	say "Thankfully, the goo creatures do not chase you outside the building, allowing both of you to get away safely. 'Phew, that was close,' Brennan says after catching his breath. 'Who knows how many more of them are in there. Guess we'll have to shelve the idea of running water for the foreseeable future. Well, at least we gave it our best shot.' Gripping your shoulder in camaraderie, he shrugs and leaves the annex to the pumping house together with you.";
	now GooColossusProgress is 99; [player and Brennan couldn't beat the goo girls]

Section 2 - Enemy

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Human Survivor";
	now attack entry is "[one of]Brennan swings his baseball bat at you and hits![or]The human survivor kicks your knee.[or]For a second, you think you got him, but Brennan elbows you in the stomach and sends you stumbling back.[or]Brennan's balled fist hits your face![at random]";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "     Brennan is a muscular and relatively tall man, armed with a baseball bat and a survivor's determination. He sure won't be easy to beat down!";
	now face entry is "charmingly human";
	now body entry is "charmingly human";
	now skin entry is "smooth";
	now tail entry is "";
	now cock entry is "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 19;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 75;                [ How many HP has the monster got? ]
	now lev entry is 10;                [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 9;               [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now cocks entry is 0;              [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 8;
	now cock width entry is 6;         [ Size of balls ]
	now breasts entry is 2;            [ Number of nipples. ]
	now breast size entry is 4;        [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;              [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 6;
	now cunt width entry is 4;
	now libido entry is 25;            [ Amount player Libido will go up if defeated ]
	now loot entry is "";              [ Loot monster drops, ]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "human";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Section 3 - Location

[connecting to the Green Apartment / Green Lobby in Core Mechanics/Basic Locations]

Survivor Refuge is a room. Survivor Refuge is above Green Lobby.
The description of Survivor Refuge is "[SurvivorRefugeDesc]".

to say SurvivorRefugeDesc:
	say "     The apartment that Brennan has claimed as his base of operations has a fairly nice loft setup, with one big room containing the living space, kitchen and dining area. Only the bedroom and bathroom are separated off, with the former lying towards the west, the latter to the south. The apartment has floors made out of walnut wood, shining in a rich reddish-brown, as well as simple but elegant furniture in similar earthen tones. Looks like the original owner had a fair bit of money and good taste - as did Brennan, when he picked this to move into. You also can't help but think that it fits his friendly character quite well. Even at the height of the nanite apocalypse, he apparently keeps his living space neat and orderly, which included bringing in a row of of sorting boxes now well-filled with useful salvage. Additionally, a weight-lifting bench has been set up, including numerous weights - clearly not part of the original setup.";

Brennan's Microwave is an object. It is in Survivor Refuge. It is fixed in place. Understand "microwave" as Brennan's Microwave.
The description of Brennan's Microwave is "A mid-sized white microwave stands on one of the work surfaces of the kitchen, clashing a bit with the decor. But who cares about that as long as you can [bold type]microwave[roman type] stuff with it.".

Brennan's Bedroom is a room. Brennan's Bedroom is west of Survivor Refuge.
The description of Brennan's Bedroom is "[BrennansRoomDesc]".

to say BrennansRoomDesc:
	say "     Brennan's bedroom is fairly large and kept in the same style as the main part as the loft - walnut floor and elegant furniture also made from wood in rich tones of red and brown. One of those is an expansive double bed, fairly low to the ground but with a really big mattress. That definitively allows a lot of room for... all sots of things. The bed is standing on an even bigger carpet, white and very fluffy. You see more signs of Brennan's practical nature in here, beginning at the spare baseball bat leaning against the wall just beside the bed, a telescope for scouting and observation set up near the window and the writing desk in one corner, which has a cleanly organized collection of medkits, immunity boosters and all sorts of other emergency items.";

Brennan's Bathroom is a room. Brennan's Bathroom is south of Survivor Refuge.
The description of Brennan's Bathroom is "[BrennansBathroomDesc]".

to say BrennansBathroomDesc:
	say "     The bathroom of the apartment is a fairly nice affair, decked out in grey marble and everything. Too bad the water isn't actually running. You see a number of large water canisters stacked up in one corner, with elbow-long protective gloves on lying on top and the words 'DIRTY WATER' scrawled on each one. Seems like Brennan has to fill the reservoir of the toilet by hand. A large mound of wet-wipes and other bathroom supplies has been piled up in the dry shower cabin. At least it's a way to keep clean...";

instead of going up from Green Lobby:
	if BrennanRelationship < 11 or BrennanRelationship > 90:
		say "     Sadly, you do not have any way of getting upstairs. The stairway door is made of metal and the whole stairway barricaded so you can't even open it, while the elevator just works if you have a key - which you do not.";
	else: [player got a key]
		move player to Survivor Refuge;
		say "     Pulling out the spare key you got from Brennan, you step into the elevator and stick it in the right keyhole, turning it until a cheerful 'Ding' sound is played and the doors close. Then the elevator sets into motion, soon delivering you on the 5th floor. A few steps later, you arrive at apartment 5A and let yourself in.";

instead of going down from Survivor Refuge:
	move player to Green Lobby;
	say "     Letting yourself out of the apartment, you walk a few steps and step into the elevator, then press the button for the ground floor. With a cheerful 'Ding', the doors close. Then the elevator sets into motion, soon delivering you on the ground floor.";

Section 4 - NPC

Brennan is a man.
The description of Brennan is "[BrennanDesc]".
The conversation of Brennan is { "<This is nothing but a placeholder!>" }.
The scent of Brennan is "     Brennan smells nicely masculine, with a little hint of sweat on his muscular chest, as well as... something else, rather hard to place your finger on.".

to say BrennanDesc:
	if debugactive is 1:
		say "DEBUG -> BrennanRelationship: [BrennanRelationship], HP: [HP of Brennan] <- DEBUG[line break]";
	say "     Brennan is a Caucasian twenty-something man, usually dressed in a pair of army boots, cargo pants and a sleeveless shirt clinging tightly to his muscular chest. He has got a friendly face, lightly bearded and with short brown hair. Being one of the rare un-transformed humans in the city, he kept himself from catching the nanite infection through caution and resourcefulness. But of course, now that he has immunity booster shots that he regularly takes, that's less of an issue...";
	say "     As he notices your attention, Brennan smiles back at you and lets his gaze wander over your form as well. Then he gives you a charming wink and turns back to what he was doing before.";

an everyturn rule:
	if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
		move Brennan to Brennan's Bedroom;
		if player is in Brennan's Bedroom:
			say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A short moment later, the three of them come into the Bedroom and Brennan greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, the man sets down his gear next to the bed, quickly strips off and gets into bed, slipping under the covers dressed only in some baggy boxer shorts. His two wolves quickly follow, cuddling up to their master and getting some pats from him before all three of them doze off.";
		else if player is in Survivor Refuge:
			say "     The front door is unlocked with the key and Brennan opens it, letting in his two wolves Romulus and Remus. The feral canines beat their tails, happy to arrive back home and make a beeline for you, sniffing a little before they move on. A short moment later, when Brennan is done closing the door and re-locking it securely, he greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, he vanishes into his bedroom, together with the two wolves.";
		else if player is in Brennan's Bathroom:
			say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A little while later, you hear another door - that will have been the one to the bedroom. Sounds like the three of them came back and went straight to bed.";
	[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Brennan sleeps]
	[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Brennan sleeps in]
	else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
		if player is in Brennan's Bedroom:
			say "     Waking up after a restful night, Brennan sits up between the two wolves cuddled up against him and stretches his arms, which gives you a good view of his broad-shouldered chest and trained body. He yawns and says good morning to you, then gently shakes Romulus and Remus awake and goes into the main room of the apartment to feed them before returning, still in nothing but his baggy boxer shorts. 'Did I miss anything exciting going on out there?' he asks with a nod to the city outside the large windows and his telescope specifically. As you shake your head, he smiles and goes to grab his usual outfit, getting dressed before he sits down at his desk.";
		else if player is in Survivor Refuge:
			say "     Suddenly, the door to the bedroom opens and Brennan steps out of it, dressed in nothing more than some baggy boxer shorts and followed by some very eager wolves. He wishes you a good morning, then quickly stops by the kitchen to feed his feral canines, ducking back into the bedroom while they're still wolfing down their food.";
		else if player is in Brennan's Bathroom:
			say "     You hear the front door open and close, then happy barks by Romulus and Remus. Sounds like Brennan woke up and just went to feed them.";
	else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
		move Brennan to Survivor Refuge;
		if player is in Brennan's Bedroom:
			say "     Sitting up from working at his desk, where he was updating some lists and his journal, Brennan stretches himself and goes into the main room of the loft apartment.";
		else if player is in Survivor Refuge:
			say "     Brennan comes out of the bedroom and nods to you, then sits down on the lifting bench and starts to pump a weight up and down. He keeps at it tirelessly for quite a while too - no wonder he has such a physique.";
		else if player is in Brennan's Bathroom:
			say "     You hear a door open and close somewhere nearby - the bedroom maybe? Then some fairly low, rhythmic grunting starts up in the main room of the loft apartment.";
	else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
		if player is in Survivor Refuge:
			say "     Finishing with a fairly well-rounded exercise routine, Brennan moves over to the comfortable sofa in the front half of the room and sits down on it. As he leans forward to grab a book, Romulus and Remus are already on the way to join him on the sofa, soon flanking the muscular man on both sides and pressing up against him. They sniff him happily and lap at any exposed skin, licking his salty sweat off. After a minute or two of this, with Brennan stroking his companions['] fur, the three of them quiet down and sit quietly to read - the wolves either understanding what is written in the book too, or simply enjoying the companionship with their master.";
	else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
		now Brennan is nowhere; [stashed in another dimension]
		if player is in Brennan's Bedroom or player is in Brennan's Bathroom:
			say "     You hear Brennan say, 'Come on guys, time for some scavenging!' The happy barks of his two wolves follow, and soon after, you hear the front door open and close.";
		else if player is in Survivor Refuge:
			say "     Going to collect his gear - backpack, baseball bat and taser - Brennan then waves the wolves up from where they have been lounging around and says, 'Come on guys, time for some scavenging!' Both Romulus as well as Remus give happy barks, tails wagging eagerly to go out with their master. Brennan bids you farewell, saying that you can stay and keep an eye on the place while he's out, then leads his companion to the door and leaves.";
	[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, Brennan is out scavenging]

instead of conversing the Brennan:
	say "     What do you want to talk to Brennan about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Apartment";
	now sortorder entry is 1;
	now description entry is "Ask where Brennan got the place from";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His Background";
	now sortorder entry is 2;
	now description entry is "Try to learn a bit more about Brennan himself";
	[
	choose a blank row in table of fucking options;
	now title entry is "Having Sex";
	now sortorder entry is 3;
	now description entry is "Offer the man a good time";
	]
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
				if (nam is "The Apartment"):
					say "[BrennanTalk1]";
				if (nam is "His Background"):
					say "[BrennanTalk2]";
				if (nam is "Having Sex"):
					say "[BrennanTalk3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the bearded man, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BrennanTalk1: 
	say "     Clearing his throat, Brennan rubs the back of his neck, then replies, 'Ehm, actually... this place belongs to a client of mine. I was here once or twice, as his personal trainer. And when I saw him get pulled from his sports car by a gryphon, then fucked right then and there till he had breasts and a beak, I snatched his keys and ran. Not something to be proud of, but it just was too late to save him. If I had tried - I bet those two would have double-teamed me.' He grimaces a little, clearly uncomfortable by the man's fate, then shrugs. 'Since this place was empty, I made my way here and... made the best of it.'";

to say BrennanTalk2: 
	say "     'Oh, I'm nothing special,' Brennan says with a little shrug. 'Just a boy born in the southwest, raised in the land of tumbleweed and deserts. I had... plans to join the army at one point, but after that fell through, I came to the coast. To start fresh, be myself. Actually made halfway good money as a personal trainer lately.' He grunts to himself and grimaces, 'Then a literal water buffalo kicked in my door - and even worse, it was my neighbour, transformed and in full rut. Guess all the training for the army recruiter paid off after all since that day...'";

to say BrennanTalk3: 
	say "     'I'm flattered,' he says and looks at you, ";

instead of fucking the Brennan:
	if (lastfuck of Brennan - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'Let a guy have a chance to catch his breath, alright?' Brennan replies with a chuckle.";
	else: 
		say "     Something tells you that just stepping forward and demanding sex isn't exactly the right way to go here. Maybe talking to him about it first would be a good idea.";
[	
	else: [ready for sex]
		say "     <WIP, sorry about that>";

		say "     As you walk up to Brennan, <positive reaction at being approached for sex>";
		wait for any key;
		say "[BrennanSexMenu]";
]

to say BrennanSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Brennan suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Go down on Brennan";
	now sortorder entry is 2;
	now description entry is "Give the handsome guy some oral pleasure";
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
				if (nam is "Get a blowjob"):
					say "[BrennanSex1]";
				if (nam is "Go down on Brennan"):
					say "[BrennanSex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the bearded man, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BrennanSex1: [oral on the player]
	say "     A";

to say BrennanSex2: [oral on Brennan]
	say "     A";

Brennan ends here.
