Version 1 of Brennan by Wahn begins here.
[Version 1 - Put into its own file]

[ BrennanRelationship                                         ]
[   0: never met                                              ]
[   1: approached + talked to                                 ]
[   2: second friendly encounter over                         ]
[   3: third friendly encounter over                          ]
[   4: player helped him fight (and kill) an alpha wolf       ]
[  10: player tried to mug him                                ]
[  11: player retreated in second unfriendly encounter        ]
[  12: player got latex wolf'd in second unfriendly encounter ]
[  98: abandoned Brennan to the wolves                        ]
[  99: skipped the event                                      ]
[ 100: player avoids him                                      ]

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
			say "     Glancing around one last time and deciding that there really is no creature waiting in ambush, you start out at a sprint and dash to the mess of wreckage in the center of the intersection. Ignoring reddish-brown stains on the inside of the cars as best as you can (while being thankful that you haven't found any actual bodies yet), you glance through cracked windows, stick your head into one car or two that seem most promising and... Strike! There's a grocery shopping bag on the passenger seat of a minivan. Pulling open its door with an alarmingly loud creak, you snatch up the bag. For a second, you're disappointed as you see a wilted and somewhat smelly packet of salad and several apples (shrunken and brown) on the top, but after dumping the rotten food, you grin broadly as two energy bars and several small bottles of name brand sparkling water come to light below it!";
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
			say "     [link](2)[as]2[end link] - You (probably) picked the pileup to loot first! Take back what he's stolen from you!";
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
					LineBreak;
					say "[bold type]You lose 50 HP![roman type][line break]";
					decrease HP of player by 50;
					if HP of player < 0:
						now HP of player is 1;
					LineBreak;
					say "     While you're still writhing on the ground, unable to control your muscles, Brennan gets back up and retrieves his bat. 'Thanks for nothing asshole, that was my last charge!' he growls at you and gives you a kick, then runs off. You groan as you get up some time later, rubbing your bruised body and extracting the taser needles from your chest. Better get out of here too, and hope you don't meet that guy again - you certainly made a bad impression on him!";
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     With yet another blow from his baseball bat, Brennan sends you stumbling backwards, then falling on your ass and sprawling on the ground. 'Can't believe I trusted an asshole like you for one second!' he growls at you and gives you a kick, then runs off. You groan as you get up some time later, rubbing your bruised body and extracting the taser needles from your chest. Better get out of here too, and hope you don't meet that guy again - you certainly made a bad impression on him!";
				else if fightoutcome is 30: [fled]
					say "     Running away as fast as you can, you do not look back at the shout of, 'You better run, asshole!' Not relaxing for a second before you're at least a full block or two distant, you stop at a street corner and gasp for breath. Let's hope you don't meet that guy again - you certainly made a bad impression on him!";
				now BrennanRelationship is 10; [made an enemy of him]
			else: [avoid]
				LineBreak;
				say "     Raising your hands to show that you're not out for any trouble, you back away slowly. The lone survivor acts much the same way, edging forward and sideways to keep his distance from you and never relinquishing the hold on his bat or his gaze at you. Eventually, the two reach the edge of the pileup, and he calls out, 'Good luck out there!' With that, the guy whirls around and sprints into a nearby alley, vanishing from sight. Shrugging to yourself, you feel the comfortable weight of your own pack, filled with what loot you got out of the situation. It's best this way, most likely. Who knows if you could have trusted him, or if you would have won a fight to take his stuff for yourself. You don't think you'll see him again...";
				now BrennanRelationship is 100; [avoid in the future, end of content]
		else:
			LineBreak;
			say "     No, this seems too good to be true. There must be some hidden danger there. You wait and watch the wrecked cars for a while... ten minutes, then twenty... before you eventually see someone sprint from behind that greyhound bus in the middle of the street to the row of buildings on the other side from you. Looks like a human, not that you can make out too much detail from this distance and with the speed he is moving. There is a well-bulging backpack on his back - seems like you missed your opportunity to scavenge and let him run off with the spoils. You can't help but wonder who he may be, but somehow doubt you'll ever see him again - not in the chaos that the city has become. Who knows what might have happened if you had chosen to go out there too, and maybe met the guy...";
			now BrennanRelationship is 99; [skipped out on the event, end of content]
	else if BrennanRelationship is 1: [chatted to him before]
		say "     Moving through the streets of the inner city, you walk past piles of trash and ripped clothing that are scattered over the sidewalk. Glass crunches under your feet as you pass some stores - a bar, little grocery store, and the third one you can't even tell anymore what it was - all of them vandalized and thoroughly looted. Hmpf, nothing left for you here - these places must have been targeted within a few days of society breaking down when shit really hit the fan at the start of the nanite spread. With a resigned shrug, you glance over to the other side of the street, past a car that has been crushed into the asphalt (wyvern landing on it maybe?). There is a corner gas station, clearly looted and with a grinning hyena head spray-painted on one cracked window, then an empty lot filled with yellow grass and a bicycle store. With the state the streets are in, you don't think a bike would be all that useful either. You're about to leave when many-voiced yipping sounds reach your ears - followed by some thuds and pained squeals. There's something going on in that bike shop!";
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
				LineBreak;
				say "[bold type]You lose 5 HP![roman type][line break]";
				decrease HP of player by 5;
				if HP of player < 0:
					now HP of player is 1;
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
	else if BrennanRelationship is 10: [clash with him]
		say "     Wandering through an area outside the city center, you move through a more residential street. The buildings are clearly looted, with one of them even just a smoking ruin, but one never knows if there might be something to find, so you keep at it. Soon, you reach another house with smashed-in windows and cum splattered on its doorstep - but as you are about to turn away, you notice something past the building. Is that... a vegetable garden back there? Walking onto the property and following a path of granite tiles past the house itself, you soon lay eyes upon the backyard garden - and what seems to be a whole row of carrots, still fresh in the ground! But that isn't the only thing you see - there is someone already in the garden, just stuffing the last apple he picked from a small tree into his backpack. You know the guy - broad shouldered, bearded and looking at you with a frown on his face. It's Brennan, the human survivor you tried to mug on the crossroads!";
		say "     'You again!' he snarls, clearly not pleased that you've found this spot. 'Listen, I'll give you one chance to fuck off. I found this place first, over a week ago - alright!?' [bold type]Do you follow his demand?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fine. Let him have the stuff.";
		say "     ([link]N[as]n[end link]) - Hell no - you want that food!";
		if player consents:
			LineBreak;
			say "     Waving your hands and calling out to him that you accept, you slowly walk backwards and vanish around the corner of the house. With a shrug, you leave the place. In hindsight, picking a fight with him the last time wasn't such a great idea.";
			now BrennanRelationship is 11; [didn't fight the second time]
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
			now BrennanRelationship is 12; [got latex wolf'd the second time]
	else if BrennanRelationship is 2: [chatted to him before, went through or skipped event #2]
		say "     Making your way through the inner-city streets on the search for... anything usable at all, it seems you're not having much luck today. All the cars and shops you pass have been thoroughly looted before, so you've even started to just poke through the pockets of abandoned clothing. You're just crouched over another pile and try not to touch any of the cum dried on it, when you suddenly hear a voice from behind you say, 'Hey there, nice to run into you again.' Almost jumping out of your boots and whirling around in a combat-ready stance, you are relieved to see that the person who spoke is someone you know. It's Brennan, the survivor whom you met at that bus wreck in the intersection. For a muscular guy wearing army boots, he's really got a quiet tread - you never knew for a second that he walked up behind you until he spoke up!";
		say "     Standing there with his baseball bat casually braced on one shoulder, the bearded man raises a consoling hand and says somewhat sheepishly, 'Er, sorry about that. Guess with all the skulking around and hiding from large beasts, I kinda forgot that one shouldn't sneak up on friendlies. No hard feelings, alright?' Forcing yourself to calm down and suppress the fight-or-flight response to the sudden interruption, you greet the man and tell him that everything is fine. Better him than some horny beast ready to jump you. He smiles, relieved that you don't hold it against him, and starts to reach out to shake your hand, then stops himself and lets his hand sink once more. Ah, of course. He didn't stay human so long by being careless about touching.";
		WaitLineBreak;
		say "     'Slim pickings in this area, eh? Yeah, most of the bigger roads are like that. People gravitated here, as did the infected to pick them off. All the sex and shifting made them hungry in the aftermath, so they thrashed the obvious places on their search for food,' Brennan casually tells you, pointing to the looted buildings all around. The two of you exchange some more words about good places to check (apparently some people stash extra water and energy bars with their spare tires), before the broad-shouldered survivor rubs the back of his neck and gives you a somewhat calculating look. Nodding to himself a second later, he clears his throat and goes on to say, 'Listen, I... kinda got a place I wanted to check out. Just was on my way there when I ran into you. Could be a two-man job, if you're interested. A Hoplite.com distribution warehouse - there's bound to be something in there.'";
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
			say "All of you continue on until you reach a suitable and far away place to stop and catch your breaths. While you pant and check that your flight didn't attract any other creatures to follow you, Brennan starts a conversation with the college student you rescued. Apparently her name is Olivia and she is a biology student who was out for a project at the zoo when the nanite outbreak happened.";
			say "     The young woman explains, 'I - I couldn't believe things at first, when they started happening. All the animals went absolutely wild and the zookeeper I was with had to administer some sedatives so the giraffes didn't break their legs in as much panic as they were in! And then... we saw things happening outside the giraffe house through the windows. People shifting and fucking on the pathways of the zoo! After that, we all - some zoo guests, myself and the animal keeper - stayed inside and barricaded the door, but...' She pauses for a second, catching her breath and waves at her own changed physiology and the spotted fur all over her body. 'This started after a few days, with Mr. Qinn, the zookeeper. He was the first to change. Before long everyone in the building was starting to grow fur. I got out after Qinn stopped wearing clothes and he started giving everyone those wild looks...'";
			WaitLineBreak;
			say "     The rest of Olivia's story is all too common these days, sadly. Thrown into the chaos of the wild streets, she tried to make her way back to the college, hoping that at least her friends were still alright. Of course, the city streets are far from safe, and even though she got out of a few hairy situations on her own, her luck ran out with that husky pack. Thankfully Brennan and yourself came along to save her. The human survivor even can tell her that the college area is still fairly safe and protected and offers to take her the rest of the way. Since your scavenging trip got postponed anyways, you accompany the two of them as well, until the college entrance comes into sight.";
			say "     'Thank you so much!' Olivia says with a beaming smile and tries to embrace Brennan, but he draws back before she can touch him. 'Sorry. I do prefer to stay human, you know,' he tells her in an apologetic tone, leaving her to say she's the one who should have thought of that. 'Now then - I wish I could bring you in the rest of the way, but I can't risk such a highly populated area. Even if it is a more or less 'safe' one like the campus.' Giving both of you her heartfelt thanks again, Olivia then walks towards the college, eager to see that her friends are okay and to catch up with them. Brennan watches her go and gives you a sidelong glance, smiling as he shrugs. 'Guess today didn't work out quite as either of us intended. Sorry for our little scavenging trip falling flat, but at least we did some good for her, hm? So - rain check till next time?' You nod at him and the two of you split up again. Then you make your way back to the place you came from.";
			now College Campus Entrance is known;
		else:
			LineBreak;
			say "     You give some excuses about having to... be somewhere soon, without going into any details. He raises his eyebrows at the fact that you're refusing a share of what could be valuable loot, but at the same time you notice him relax a bit. Freed from any obligation towards a fellow survivor, Brennan bids you goodbye and wishes you the best at your 'meeting' before he walks off down the street.";
		now BrennanRelationship is 3; [went through friendly event #3 by going with him or skipping]
	else if BrennanRelationship is 3 or BrennanRelationship is 11 or BrennanRelationship is 12: [multiple friendly encounters before this, or one unfriendly]
		say "     Exploring the city for places that might yet yield some food, water or usable gear, you actually come upon a place that looks very promising. At first glance, the building has already been looted - not surprising as there was a cafe on the ground floor, but after checking over the wrecked interior of that, you realize that the house has a second floor and you've not actually seen any way of getting there. Going back out and glancing at the exterior, you see a row of unbroken windows up there. Very interesting indeed, so you check around the corner of the building and find a narrow side door, locked. Looks like someone tried to break in here recently, judging from traces of a crowbar being applied and some splintered wood, but the door isn't actually fully broken yet. This makes you wonder what may have happened. Maybe someone tried to get in and then was jumped by some sort of creature?!";
		say "     You explore a little bit more, finding a ripped pair of jeans behind a dumpster a few steps further, literally soaked in sexual fluids. Well, that burglar won't be back, that's for sure. You put him or her out of your mind and resolve to make use of their work at least, throwing yourself against the damaged door and bursting it open. You find on the other side a short hallway, probably not longer than three feet. At the end, a stairway rises pretty sharply. Weird that this isn't connected at all to the ground floor... but definitively fine by you, in this case, as it increases the chances for loot. Climbing the stairs, you reach a little landing flanked by two doors, 1a and 1b. Apparently there are two apartments up here.";
		WaitLineBreak;
		say "     You try 1a first - and surprisingly, the entrance door swings right open when you try the knob. The reason for that is immediately apparent - it is vacant, nothing but empty floorspace inside! You wander through the rooms in disappointment, then step back out onto the landing again. Maybe the other apartment will be worth it at least? A quick check shows that it is locked, so you do your best to break in...";
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
		say "     Suddenly the sound of a wolf howling startles you, then another and another right after. And close too! You rush to the nearest window and glance out, seeing a pair of feral wolves dash across empty, trash-filled street. They're hunting something or someone! Pressing your head against the windowpane to glance along the alleyway, you spot a person running from them - it is [if BrennanRelationship is 3]your friend[end if] Brennan[if BrennanRelationship > 10], the human survivor you clashed with earlier[end if]. He clearly is in trouble as he seems to have lost his trusty baseball bat. Then a third wolf steps out from around the corner at the end of the alley - this one anthro in body shape, muscular and with a shaggy black fur. He awaits the human survivor with bared teeth, eager to take him in a pincer movement with his chasing pack-mates.";
		say "     [bold type]This doesn't look good for Brennan. Do you come to his assistance?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Of course! Survivors have to stand together, no matter what!";
		say "     ([link]N[as]n[end link]) - Take on three wolves, with him already disarmed? Not a calculation in your favor. No, you'll make a quiet getaway.";
		if player consents: [attack]
			LineBreak;
			say "     Rushing down the stairs, you burst out of the broken entrance door his a little distance behind the chasing wolves. As you set out to follow them, Brennan notices you and gives a [if BrennanRelationship is 3]surprised, yet [end if]hopeful shout. The ferals just keep going, totally focused on their prey before them, and soon the first one of them pounces at the human survivor, jumping for his arm with bared fangs to pull him down. A small bang resounds in the alley (far too quiet to be from a firearm), and you see the yellow taser in Brennan's hand a heartbeat later. It unloads a lot of electricity through the wires attached to the pointed electrodes now lodged in the feral wolf's skin, making it collapse in a thrashing heap. As you get fairly close to the second wolf, he finally realizes that someone is behind him and turns, baring his teeth to take on his new enemy. The beast jumps you while Brennan gets into a clash with the alpha of the pack.";
			now inasituation is true;
			challenge "Feral Wolf";
			now inasituation is false;
			if fightoutcome < 20: [player won]
				say "     As the feral wolf collapses at your feet with a pathetic whine, you whirl around and see Brennan on the ground on his back, the alpha wolf pinning him down and trying to rip out his throat with his teeth. Seems like this fight has been far more trouble than he had anticipated, and the anthro is not even intending to just capture your friend anymore. Blood-lust is burning bright in his eyes! You quickly close up to the pair of fighters and land a blow on the large wolf's back. He snarls at you in turn and is distracted enough for Brennan to be able to reach out and snatch up the bloody combat knife he must have dropped earlier. Time seems to flow in slow-motion as the alpha wolf reacts to the movement and opens his maw to bite at Brennan again - and the human drives the knife home directly under his armpit, its whole length sinking into the canine's chest and piercing his heart.";
				say "     With nothing more than a choking gurgle, the alpha wolf collapses on top of Brennan, then stops moving altogether. Heaving the corpse off himself, your friend gets back to his feet and shouts, 'Fuck! Fucking hell you stupid bastard!' Then he stumbles to the side, barely catching himself against the brick wall of a building flanking the alley and starts to retch, throwing up violently. You stand by your companion as he empties his stomach, watching out as the ferals get back up - but the beasts are bruised and hurting, so they do little more than glance and sniff at their leader before fleeing with panicked whines.";
				WaitLineBreak;
				say "     You wait for Brennan's reaction to die down, then ask if he is alright as he spits on the ground to clear his mouth and wipes off traces of vomit from his lips. 'No I am not,' the man growls out and glances over to his former opponent. 'It may be hard to remember sometimes, but that was a [italic type]person[roman type]! Fuck, I've never killed anyone! Maybe he... could have been saved, somehow!' he snarls, angry at himself and looking at the hand that held the knife. There is a splash of blood on it, painfully red against the man's tanned skin. Cursing, Brennan wrenches an army canteen from the side of his backpack and starts to pour it out over his hands, washing away the blood and any other transfer that he might have gotten from the wolf. He follows up with a bit of liquid poured from a vodka bottle, first disinfecting his hands, then taking a swig himself.";
				if BrennanRelationship is 3: [friendly contact before]
					say "     Silence stretches for a long moment, then Brennan shakes his head and looks at the dead wolf with a stony gaze. 'Couldn't you have just... given me any other choice, you bastard?' he mutters under his breath, then turns to you and gives a weak smile. 'Thank you for your help. Don't think I could have gotten out of this one on my own. I really appreciate it. Listen, I'm... gonna go, find my bat. But it's been good to see you. Till next time, hopefully under better circumstances,' Brennan says, then walks off the way he originally came from. He pays the cooling-out anthro no further glance, leaving the knife that ended his life buried in the wolf's fur. Looking after Brennan until he vanishes from sight, you then also make your exit from the fateful alley.";
					now BrennanRelationship is 4; [Brennan 1, Alpha Wolf 0]
				else: [unfriendly contact before]
					say "     Silence stretches for a long moment, then Brennan shakes his head and looks at the dead wolf with a stony gaze. 'Couldn't you have just... given me any other choice, you bastard?' he mutters under his breath, then turns to you and gives a weak smile. 'Thank you for your help. I know we've had our differences in the past before, but - you came through for me, and that goes a long way. So... bygones be bygones, hm?' Brennan says next, looking expectantly your way.";
					say "     [bold type]What is your reply?[roman type][line break]";	
					LineBreak;
					say "     ([link]Y[as]y[end link]) - One never can have enough friends in dire situations.";
					say "     ([link]N[as]n[end link]) - Just because you didn't want to see him mauled by wolves doesn't make you friends.";
					if player consents:
						LineBreak;
						say "     Accepting his offer, you nod back to him, which puts a friendly expression on Brennan's face. 'Glad we had this talk. Listen, I'm... gonna go, find my bat. Till next time, hopefully under better circumstances,' Brennan says, then walks off the way he originally came from. He pays the cooling-out anthro no further glance, leaving the knife that ended his life buried in the wolf's fur. Looking after Brennan until he vanishes from sight, you then also make your exit from the fateful alley.";
						now BrennanRelationship is 4; [Brennan 1, Alpha Wolf 0]
					else:
						LineBreak;
						say "     'Mmmh!' he grunts as you reject his offer, shrugging. 'If that's the way it is...' he adds while rummaging around in his pack, then sets down two bottles of clean water on the ground for you. 'Best wishes,' are the last words you hear from him, then he walks off the way he originally came from. Brennan pays the cooling-out anthro no further glance, leaving the knife that ended his life buried in the wolf's fur. Looking after the man until he vanishes from sight, you collect your reward and then also make your exit from the fateful alley.";
						LineBreak;
						say "[bold type]You gain 2 water bottles![roman type][line break]";
						increase carried of water bottle by 2;
						now BrennanRelationship is 100; [player <-> Brennan avoid each other]
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     The wolf drags you down to the ground, then stands over you with his teeth just over your throat and a canine shaft erect and dripping onto your prone form. But before he can consummate his victory, a howl from his alpha calls the wolf away. Groaning and turning your head, you see that Brennan is still up and fighting, a bloodied combat knife in his hand. Your enemy peels off to assist his pack leader. Beaten and demoralized, you crawl away, trying to tune out the sounds of fighting behind your back as you make a getaway. You doubt you'll see Brennan again - at least not in any shape you would recognize...";
				now BrennanRelationship is 98; [abandoned him to the wolves]
			else if fightoutcome is 30: [fled]
				say "      Fleeing the fight, you are chased for a short while by the feral wolf, but then a howl from his alpha calls the beast back. Peeling off from chasing you, it swings back into the alley to bite at Brennan's unprotected backside and take him down. As you rush away in full flight, the sounds of fighting slowly die down behind you. You doubt you'll see Brennan again - at least not in any shape you would recognize...";
				now BrennanRelationship is 98; [abandoned him to the wolves]
		else: [leave]
			LineBreak;
			say "     Suppressing any empathy you might have for the fellow survivor in the dangerous streets of the city[if BrennanRelationship > 10] (if any, given your previous clashes)[end if], you turn away from the scene outside the window and shoulder your pack securely, then walk downstairs. Glancing out of the broken door carefully, you don't see any of the beasts nearby, so you quickly rush outside and start running away from the fight you can still hear behind you. You doubt you'll see Brennan again - at least not in any shape you would recognize...";
			now BrennanRelationship is 98; [abandoned him to the wolves]
		
to say Apartment2bLooting:
	say "     Quelling any feelings of transgression at going through someone's belongings, you do your best not to make too much of a mess as you explore the apartment for anything usable. About half an hour later, you are happy to add a glass of orange jam, several boxes of dry crackers and a soda bottle that rolled under the owner's sofa to your pack. Not a bad haul!";
	LineBreak;
	say "[bold type]You gain 4 food![roman type][line break]";
	increase carried of food by 1;
	say "[bold type]You gain 1 soda bottle![roman type][line break]";
	increase carried of soda by 1;

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

Section 3 - NPC

Brennan is a man.
The description of Brennan is "[BrennanDesc]".
The conversation of Brennan is { "<This is nothing but a placeholder!>" }.
The scent of Brennan is "     Brennan smells nicely masculine, with a little hint of sweat on his muscular chest, as well as... something else, rather hard to place your finger on.".

to say BrennanDesc:
	if debugactive is 1:
		say "DEBUG -> BrennanRelationship: [BrennanRelationship], HP: [HP of Brennan] <- DEBUG[line break]";
	say "     <This is the basic description of Brennan. Body, Clothing, etc. can be laid out here>";

instead of conversing the Brennan:
	say "     ...";

instead of fucking the Brennan:
	if (lastfuck of Brennan - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Brennan doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Brennan, <positive reaction at being approached for sex>";
		wait for any key;
		say "[BrennanSexMenu]";

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
