Version 2 of Gryphons Plot by Shay begins here.
[ Original Event idea by Hellerhound ]
[ Version 1 - Ideas for expansion by Wahn]
[ Version 2 - Complete rewrite by Shay ]

[ GryphPlotTracking                                                                                      ]
[   0: never ran into the event                                                                          ]
[   1: had the event before, failed to find the fight                                                    ]
[  10: player helped the soldiers                                                                        ]
[  11: helped the soldiers beat up the gryphons                                                          ]
[  18: refused to help the soldiers beat up the gryphons                                                 ]
[  19: refused to sit with the thankful soldiers                                                         ]
[  20: player tried to help, fled - soldiers transformed, these specific gryphons pissed at the player   ]
[  30: player watched the gryphons do their thing                                                        ]
[  40: player watched the gryphons do their thing and joined in for the submission                       ]
[  50: player helped the gryphons                                                                        ]
[  51: player fought off vengeful soldier gryphons                                                       ]
[  58: player ran from vengeful soldier gryphons                                                         ]
[  59: player got a beating from vengeful soldier gryphons                                               ]
[  90: player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player ]
[  91: player got a thanks from the soldier gryphons for trying to help                                  ]
[ 100: player had no interest, event resolved                                                            ]

GryphPlotTracking is a number that varies.

Gryphon's Plot is a situation. The level of Gryphon's Plot is 2.
the sarea of Gryphon's Plot is "Outside".

when play begins:
	add Gryphon's Plot to badspots of hermaphrodite;
	add Gryphon's Plot to badspots of furry;

instead of resolving a Gryphon's Plot:
	if GryphPlotTracking is 0 or GryphPlotTracking is 1: [first time or repeat after failing to find them]
		say "     As you make your way through the city, a loud screeching noise catches your attention. Your eyes quickly survey the immediate area, the noise sounding awfully close to one a gryphon would make. As another screech joins the first, you realize that not just one gryphon is involved. As the gryphon's calls transform from warning to aggressive, you find yourself wondering what is going on, and if you should take a risk in order to find out. The area being filled with many buildings, it is likely the sound may be bouncing off of them, which could lead to you being misled. Despite this, you conclude that finding the source would be difficult, but not impossible.";
		say "     Of course, the question is, do you want to?[line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure! You want to know what's going on!";
		say "     ([link]N[as]n[end link]) - Nah, better not. Who knows what you'll find.";
		if player consents:
			LineBreak;
			let bonus be (( perception of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Perception Check):[line break]";
			if diceroll + bonus >= 13:
				say "     Wandering through the debris of buildings, scattered trash-piles and past wrecked cars, you manage to find the right direction and from then on progress fairly quickly, soon finding the scene that all the noise was coming from. Just a short distance before you, three gryphons attack a group of soldiers in a military jeep. From the looks of it, the unlucky men were ambushed, their vehicle boxed in by an abandoned car that has been rolled behind it. The soldiers now stuck, and unable to drive away have now been forced to protect themselves from the near-constant aerial bombardment, the gryphons assaulting the men with trash and any else they can find. The soldiers, still unchanged grow increasingly desperate judging from the extreme amount of swearing you hear coming from the car. If you wish to interfere, no better time than now.";
				LineBreak;
				say "     [bold type]Do you wish to intervene?[roman type][line break]";
				say "     [link](1)[as]1[end link] - Yes, to help the men fight off their feral attackers.";
				say "     [link](2)[as]2[end link] - Yes, but you help the gryphons instead. They are after all the winning side.";
				say "     [link](3)[as]3[end link] - Just... watch. Do not interfere.";
				say "     [link](4)[as]4[end link] - Fuck this. You're out of here!";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 4:
					say "Choice? (1-4)>[run paragraph on]";
					get a number;
					if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
						break;
					else:
						say "Invalid choice. Type [link]1[end link] to help the soldiers, [link]2[end link] to help the gryphons, [link]3[end link] to simply watch or [link]4[end link] to just walk away.";
				if calcnumber is 1: [helping the soldiers]
					LineBreak;
					say "     You spring into action as you feel your mind reach a decision, none of these soldiers will be losing their humanity today! Running straight into the havoc wrought fray, you issue the gryphons a verbal challenge. Screeching in anger and alarm, the feral beasts drop their impromptu ammo turning their attention from the soldiers and onto you. Readying your weapon you watch as they take flight, all three gryphons flying towards you at full speed as they converge upon your location.";
					let GroupFightCounter be 0;
					now fightoutcome is 0; [reset]
					while fightoutcome < 20 and GroupFightCounter < 3: [runs for 3 times or until the player loses or flees]
						if GroupFightCounter is 0:
							say "     The first Gryphon reaches you with claws extended, its eyes defiant. Not backing down, you get ready to attack as you catch a glimpse of the desperate soldiers behind you using the distraction to try and regain their bearings. May the strongest win.";
						else if GroupFightCounter is 1:
							say "     As the first flees, the second takes his place, eager to inflict some damage as payback for what has been done to his kin. Having won the first fight, you feeling confident.";
						else if GroupFightCounter is 2:
							say "     The second falls, and on queue the last gryphon takes his place, a wary, fearful look in his eyes as if he'd flee at any moment. Readying for this final foe, you catch a glimpse of the soldiers from the side of your eye, to find they stand awe struck in front of their still stuck jeep. You smile. Time to finish this!";
						now inasituation is true;
						challenge "Hermaphrodite Gryphon";
						now inasituation is false; [reset]
						increase GroupFightCounter by 1;
					if fightoutcome < 20: [player won]
						say "[PlayerWinsVsGryphonPlot1]";
						now GryphPlotTracking is 10; [player helped the soldiers]
						now Resolution of Gryphon's Plot is 10; [player helped the soldiers]
					else if fightoutcome > 19 and fightoutcome < 30: [lost]
						say "[PlayerLosesVsGryphonPlot1]";
						now GryphPlotTracking is 90; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
						now Resolution of Gryphon's Plot is 90; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
					else if fightoutcome is 90: [fled]
						say "[PlayerFleesVsGryphonPlot1]";
						now GryphPlotTracking is 20; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
						now Resolution of Gryphon's Plot is 20; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
				else if calcnumber is 2: [helping the gryphons]
					LineBreak;
					say "[PlayerHelpsGryphonPlot1]";
					now GryphPlotTracking is 50; [player helped the gryphons]
					now Resolution of Gryphon's Plot is 50; [player helped the gryphons]
				else if calcnumber is 3: [watching]
					LineBreak;
					say "[PlayerWatchesGryphonPlot1]";
				else: [leaving]
					LineBreak;
					say "     Taking one last look at the scene you decide, the situation clearly isn't your problem. Quietly stepping back, you wander away slowly to avoid to attracting any unwanted attention to yourself. Soon, you are well out of sight of the event as the screeching and other noises die down. Although you didn't wish to be involved, a part of you can't help but wonder how things worked out. Despite the fact that you are curious, you decide that alone isn't enough to go back and possibly run into any trouble that may still linger there. Forcibly pushing the recent event out of mind, you continue on your merry way.";
					now GryphPlotTracking is 100; [player had no interest]
					now Resolution of Gryphon's Plot is 100; [player had no interest]
					now Gryphon's Plot is Resolved; [event will not come up again]
			else: [not perceptive enough / unlucky]
				say "     Setting out in search of where the gryphons are, you wander through the deserted streets. Some time later, as you continue trekking through the cities['] rubble for the source of the noise, all sounds eventually cease. Hm, seems like you won't find that group of gryphons today. Maybe if you were a bit more perceptive, you might have found a quicker way to get to them...";
				now GryphPlotTracking is 1; [player failed to find them]
				now Resolution of Gryphon's Plot is 1; [player failed to find them]
		else: [refused to investigate]
			LineBreak;
			say "     With a shrug, you try to ignore the noises and concentrate on your immediate surroundings instead. Surviving in the city is difficult enough without actively going out to find trouble...";
			now GryphPlotTracking is 100; [player had no interest]
			now Resolution of Gryphon's Plot is 100; [player had no interest]
			now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 10: [player helped the soldiers, gryphons are pissed]
		say "     As you wander through the streets of the creature-infested city, you stumble upon a group of non-infected human soldiers. Inching forward to take a closer look, something inside your head clicks. You knew they looked familiar, it is the soldiers you saved from the gryphons awhile back! One of the men spots you and waves you over, patting a place on the ground beside him.";
		say "     Do you join them?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, it will be nice to talk to someone sane for once.";
		say "     ([link]N[as]n[end link]) - No, you aren't interested.";
		if player consents:
			LineBreak;
			say "     Walking over and taking the offered spot, the group of soldiers temporarily stop their task and meet you with warm, hearty greetings. After having thoroughly welcomed you, the soldiers return to their task. They seem to be observing a nearby gryphon nest. You look at the men questioningly, and one soldier who looks to be the leader moves to explain. 'It's the gryphons from the attack you saved us from. We tracked them, and now, it's time for us to get revenge. Are you willing to help us once more?'";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, you'd be happy to lend a hand.";
			say "     ([link]N[as]n[end link]) - No, you don't wish to get involved in others affairs.";
			if player consents:
				LineBreak;
				say "     As you nod in agreement, you watch the soldiers['] faces instantly light up. The leader gives you a friendly pat on the back and speaks, 'I knew that we could count on you again. All you have to do is take these binoculars here and tell us if anyone tries to sneak up on us from behind. Think that you can handle it?' You nod, it sounds easy enough. You stand on lookout for a long while as the men scout out the nearby gryphon nest, then storm in and give the gryphon pack a good thrashing. After you see the soldiers emerge victorious through your binoculars, they leave the nest behind and make their way over to you again. 'Well, we showed them not to challenge the US army, eh?' one of the soldiers says, giving you a thumbs up. Each of the men digs out an MRE from his pack and hands it to you, as a little thanks for the help. 'We felt much better knowing that you had our back,' the leader adds before the small group says their goodbyes and leaves.";
				LineBreak;
				say "[bold type]You gain 3 units of food![roman type][line break]";
				increase carried of food by 3;
				now GryphPlotTracking is 11; [helped the soldiers beat up the gryphons]
				now Resolution of Gryphon's Plot is 11; [helped the soldiers beat up the gryphons]
			else:
				LineBreak;
				say "     Turning the soldiers down, you watch as the looks on their faces instantly turn from happy to disappointed. Rising from your place on the ground, you say your goodbyes to the men. They see you off with solemn waves as you continue along your merry way.";
				now GryphPlotTracking is 18; [refused to help the soldiers beat up the gryphons]
				now Resolution of Gryphon's Plot is 18; [refused to help the soldiers beat up the gryphons]
		else:
			LineBreak;
			say "     Deciding that you want nothing to do with whatever the men are up to, you turn your back on the soldier's offer. Surprised by your reaction, but not deterred, they grudgingly, but determinedly, return to their task as you continue along your merry way.";
			now GryphPlotTracking is 19; [refused to sit with them]
			now Resolution of Gryphon's Plot is 19; [refused to sit with them]
			now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 30: [player watched the gryphons, soldiers are transformed]
		say "     Walking through the ruins of the city, you come across a sight that you don't see all that often. Three gryphons huddled around a slowly dying fire ahead of you are wearing torn and stained army uniforms, telling you that the men haven't been transformed all that long, or at least have not succumbed to the infection yet, likely retaining much of their original personality. Then things click in your mind, and you remember the soldiers in that jeep being attacked by gryphons. This must be them!";
		if bodyname of player is "Hermaphrodite Gryphon" and player is pure:
			say "     Being a gryphon yourself, you can't help but feel like the guys might react badly to your presence. Still, do you want to approach them?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, who knows? You may be wrong with your assumption";
			say "     ([link]N[as]n[end link]) - No, it's not worth the risk.";
			if player consents:
				LineBreak;
				say "     Walking forward with your shoulders high and wings lightly spread upon your back, you confidently approach them. Taking note of your gryphon features, the men tense up, ready for a fight. You take another step closer, and one shouts, 'Go away! We don't want your kind here!' before throwing a nearby, empty aluminum can in your direction as one of his friends next to him chuckles. 'At ease, Kevin. His kind is now also our kind. Nothing else they can take away from us.' The man, Kevin, looks down at his feet grumbling, 'I guess that you are right' before returning to his position around the small fire. With Kevin calmed down, his friend turns to you. 'I would get going. They are at bay for now, but we have all been wronged by gryphons. Maybe that shouldn't be held against all gryphons, as it was only a few, but they took what little we had left. Which I'll be the first to admit, wasn't much to begin with...' That said, he turns back to the group, and their slowly dying flame in silence. The conversation clearly over, you start to distance yourself from the scene, continuing along your way.";
				now Resolution of Gryphon's Plot is 31; [gryphon player talked to the soldier gryphons]
			else:
				LineBreak;
				say "     Deciding that it is not worth the trouble, you leave the gathering of men and continue along your way throughout the city. After all, you have enough trouble as it is, why go actively look for it?";
				now Resolution of Gryphon's Plot is 32; [gryphon player avoided to the soldier gryphons]
		else:
			say "     Do you want to approach them and have a chat?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, it would be nice to talk to someone sane for once";
			say "     ([link]N[as]n[end link]) - No, it's not worth the risk";
			if player consents:
				LineBreak;
				if player is bodily human:
					LineBreak;
					say "     Approaching the group, you are met with looks of surprise as one soldier rises to speak, hands outstretched. 'Are you sure that you want to come near us? You look pretty uninfected to me. We would hate to accidentally do the same thing to you that the other gryphons did to us...' With that, another one of the gryphons stands up, looking saddened as he offers an explanation 'We were human once just like you, and then we ran into a group of gryphons, and we fought them. Needless to say, we lost, and our purely human forms were soon taken away. We don't want that for you...' the other gryphons nod their agreement, as they reach into their packs, each pulling out an MRE before tossing them at your feet.";
					LineBreak;
					say "     The one that looks to be in charge addresses you, 'Good luck out there, and try to keep your humanity intact. When we were human, we were reminded of who we were each and every time we had a chance to look at our faces. Now, we can't anymore, and we fear that we may forget, so take these MREs, and please be careful. Experiencing this ourselves, we would never wish this fate to befall another.' With that said, they all return to their places around the fire, turning their backs on you as they sit in silence. Feeling that the conversation is over, you pick up the MREs and carefully place them inside of your pack, before continuing along your way.";
					LineBreak;
					say "[bold type]You gain 3 units of food![roman type][line break]";
					increase carried of food by 3;
					now Resolution of Gryphon's Plot is 33; [human player talked to soldier gryphons]
				else:
					LineBreak;
					say "     Approaching the group, you are met with looks that convey a mixture of alarm and surprise, following by one gryphon soldier stepping up to speak, his voice raspy and obviously pained. 'Please, just leave us alone, we have nothing else to give. We have already recently lost our humanity.' And with that, he returns to his seat around the fire, all the gryphons staring at you with caution. Not feeling as if the gryphons want your company in the midst of their pity party, you start to distance yourself from the scene and continue along your way...";
					now Resolution of Gryphon's Plot is 34; [infected player talked to soldier gryphons]
			else:
				LineBreak;
				say "     Deciding that it is not worth the trouble, you leave the gathering of men and continue along your way throughout the city.";
				now Resolution of Gryphon's Plot is 34; [player avoided soldier gryphons]
				now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 40: [player watched the gryphons, soldiers are transformed, and the player joined in for the submission]
		say "     Walking through the ruins of the city, you come across a sight that you don't see all that often. Three gryphons huddled around a slowly dying fire ahead of you are wearing torn and stained army uniforms, telling you that the men haven't been transformed all that long, or at least have not succumbed to the infection yet, likely retaining much of their original personality. Then things click in your mind, and you remember the soldiers in that jeep being attacked by gryphons. This must be them!";
		say "     Do you want to approach them and have a chat?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, it would be nice to talk to someone sane for once.";
		say "     ([link]N[as]n[end link]) - No, it's not worth the risk.";
		if player consents:
			LineBreak;
			say "     Walking up to the soldiers, they gasp as they recognize you. 'You are that submissive pervert who was there when we got fucked!' one exclaims. Another one stands up and smirks at you before turning to his friends and saying, 'Maybe we should take turns fucking [ObjectPro of player]. It is obvious that [SubjectPro of player] liked the gryphon cock being stuffed inside of [ObjectPro of player] from the last time we saw [ObjectPro of player].' With that said, they come towards you with obvious lustful intent.";
			LineBreak;
			say "     [bold type]Do you wish to submit yourself to them?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, it could be fun.";
			say "     ([link]N[as]n[end link]) - No way in hell!";
			if player consents:
				LineBreak;
				say "     Putting your hands in front of you in a peaceful gesture, you drop to your knees and convey to the soldiers that they can do anything they please with you. Smirking, the gryphons strip off the tattered remnants of their clothing before the one who looks like the leader steps forth, stroking his cock to full erect before shoving it into your waiting mouth. Meanwhile, the other two approach you from behind, and you feel one cock make its way [if player is male]into your ass, burying himself balls-deep inside, [else if player is female]into your soaking wet pussy, burying himself balls-deep inside, [else]against the underside of your sexless crotch, rubbing his cock where it feels good, [end if]while, the other makes use of one of your free hands. Locked into a mess of sex and sweat, it isn't long before you lose consciousness, the gryphons making thorough use of all of your holes. You wake three hours later, drenched in buckets load of cum, the gryphons and their fire nowhere to be found. Cleaning yourself off as best you can, you gather your pack and continue upon your way. What a wild time...";
				now Resolution of Gryphon's Plot is 41; [player submitted to the vengeful soldier gryphons]
			else:
				LineBreak;
				say "     Backing away from the gryphons, you draw your weapon. Looks like the only way out of this is to fight...";
				LineBreak;
				let GroupFightCounter be 0;
				now fightoutcome is 0; [reset]
				while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
					if GroupFightCounter is 0:
						say "     The first gryphon, seemingly not yet used to his new form, pulls out an army survival knife. With it in his clawed hand, he runs towards you with a challenging screech.";
					else if GroupFightCounter is 1:
						say "     As the first gryphon soldier falls, the second rushes forth, claws extended. He certainly seems like he has better adapted to his new gryphon shape than his fallen comrade.";
					now inasituation is true;
					challenge "Hermaphrodite Gryphon";
					now inasituation is false; [reset]
					increase GroupFightCounter by 1;
				if fightoutcome < 20: [player won]
					say "     The third gryphon, wary of the defeat of the first two, draws back from you. Whimpering with a sexual need and looking ashamed, he addresses you, 'I'm sorry, I don't what came over me. I guess the infection has taken home more rapidly than I can control or I had realized.' The gryphon then drops two MREs at your feet, turning to you with a look of regret. 'Please, take these as an apology. I'm sorry that I don't have more to offer...' He then spreads his wings and disappears into the distance. His two companions use the moment in which you pounce on the food to make their own escapes.";
					LineBreak;
					say "[bold type]You gain 2 units of food![roman type][line break]";
					increase carried of food by 2;
					now Resolution of Gryphon's Plot is 42; [player fought off the vengeful soldier gryphons]
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     Not strong enough to single-handedly defeat the group of gryphons, you fall to your knees, the loser of the battle. With pleased smirks, the soldiers converge upon you, bending you over to have the best access to your holes. Taking turns, the gryphons [if player is male]shove themselves balls-deep into your ass[else if player is female]shove themselves balls-deep into your soaking wet pussy[else]rub themselves against the underside of your sexless crotch where it feels good[end if]. Soon, undeniably locked in a mix of sex and sweat, it isn't long before you lose all sense of consciousness.";
					if carried of food > 2:
						say "     You wake three hours later, your body covered in large amounts of cum as you collect your pack, which you notice is three cans of food lighter...";
						LineBreak;
						say "[bold type]You lost 3 units of food![roman type][line break]";
						decrease carried of food by 3;
					else if carried of water bottle > 2:
						say "     You wake three hours later, your body covered in large amounts of cum as you collect your pack, which you notice is three bottles of water lighter...";
						LineBreak;
						say "[bold type]You lost 3 bottles of water![roman type][line break]";
						decrease carried of water bottle by 3;
					else:
						say "     You wake three hours later, your body covered in a bucket load of cum as you collect your pack, which you notice thankfully has the same heft as before. You guess that despite the gryphons having you in a vulnerable position, they had decided to leave your belongings alone. Shrugging your shoulders at the fact, you clean as much cum as you can off of your body, before slowly but surely continuing along your way...";
					now Resolution of Gryphon's Plot is 43; [player lost to the vengeful soldier gryphons]
				else if fightoutcome is 90: [fled]
					say "     Not having much faith in your ability to fight the men off, you flee. The soldiers donning unattended hard-ons shout curses in your direction in the wake of your successful escape...";
					now Gryphon's Plot is Resolved; [event will not come up again]
					now Resolution of Gryphon's Plot is 44; [player fled from to the vengeful soldier gryphons]
		else:
			say "     With a shrug you turn you turn your back on the group of gryphons and walk off down the street.";
			now Resolution of Gryphon's Plot is 45; [player didn't speak to soldier gryphons]
	else if GryphPlotTracking is 50: [player helped the gryphons, soldiers are transformed]
		say "     Wandering through the ruins of the city, you see an unusual sight: There is a group of gryphons, still wearing the tattered remains of army uniforms upon their bodies as they sit huddled around a fire. Inching closer to the unlikely scene, you accidentally step on an empty aluminum can, causing the gryphon soldiers to jerk up in alarm as they are alerted to your presence. Spotting you, one of the gryphons exclaim, 'Hey, I know you. You are the one who helped those other gryphons make me like this! Let's see how strong you are without your friends along. Come on, guys, let's get [']em!' Seeing no other option than to fight, you ready your weapon.";
		let GroupFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
			if GroupFightCounter is 0:
				say "     The first gryphon, seemingly not yet used to his new form, pulls out an army survival knife. With it in his clawed hand, he runs towards you with a challenging screech.";
			else if GroupFightCounter is 1:
				say "     As the first gryphon soldier falls, the second rushes forth, claws extended. He certainly seems like he has better adapted to his new gryphon shape than his fallen comrade.";
			now inasituation is true;
			challenge "Hermaphrodite Gryphon";
			now inasituation is false; [reset]
			increase GroupFightCounter by 1;
		if fightoutcome < 20: [player won]
			say "     The third gryphon, wary of the defeat of the first two, draws back from you. 'Looks like that you can hold up in a fight by yourself. I may not like what you did to me, but as a soldier, I can respect the fact that you stood your ground. Good luck surviving in this fucked-up city.' The gryphon then drops two MREs at your feet, before spreading his wings and disappearing into the distance. His two companions use the moment in which you pounce on the food to make their own escapes.";
			LineBreak;
			say "[bold type]You gain 2 units of food![roman type][line break]";
			increase carried of food by 2;
			now GryphPlotTracking is 51; [player fought off vengeful soldier gryphons]
			now Resolution of Gryphon's Plot is 51; [player fought off vengeful soldier gryphons]
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     Not strong enough to single-handedly defeat the vengeful group of gryphons, you fall to your knees, the loser of the battle. With pleased smirks, the soldiers converge upon you, two of them taking turns beating you as the third helps himself to any items he wants from your pack. Between the two of them, it isn't long before you have thoroughly learned your lesson, falling into a state of unconsciousness.";
			PlayerWounded 10;
			if carried of food > 2:
				say "     You wake three hours later, your body stiff as you collect your pack, which you notice is three cans of food lighter...";
				LineBreak;
				say "[bold type]You lost 3 units of food![roman type][line break]";
				decrease carried of food by 3;
			else if carried of water bottle > 2:
				say "     You wake three hours later, your body stiff as you collect your pack, which you notice is three bottles of water lighter...";
				LineBreak;
				say "[bold type]You lost 3 bottles of water![roman type][line break]";
				decrease carried of water bottle by 3;
			else:
				say "     You wake three hours later, your body stiff as you collect your pack, which you notice has the same heft as before. You guess that despite the gryphons taking apart its contents, they couldn't find anything that they wanted. Shrugging your shoulders at the fact and ignoring the protests of your thoroughly bruised body, you slowly, but surely, continue along your way, making a note in your head to try and avoid the soldiers should you encounter them in the near future...";
				now GryphPlotTracking is 59; [player got a beating from vengeful soldier gryphons]
				now Resolution of Gryphon's Plot is 59; [player got a beating from vengeful soldier gryphons]
		else if fightoutcome is 90: [fled]
			say "     Not having much faith in your ability to fight the men off, you flee, the soldiers cursing at you as you disappear into the distance...";
			now GryphPlotTracking is 58; [player ran from the vengeful soldier gryphons]
			now Resolution of Gryphon's Plot is 58; [player ran from the vengeful soldier gryphons]
			now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 90 or GryphPlotTracking is 20: [player tried to help, failed, gryphons are pissed]
		say "     Wandering through the ruins of the city, you see an unusual sight: There is a group of gryphons, still wearing the tattered remains of army uniforms upon their bodies as they sit huddled around a fire. Inching closer to the unlikely scene, you accidentally step on an empty aluminum can, causing the gryphon soldiers to jerk up in alarm as they are alerted to your presence. Spotting you, one of the gryphons exclaims, 'Hey, I know you. You tried to help us fight the gryphons off that one day. Don't worry about the fact that you didn't succeed. We still appreciate that you tried. Besides, all of us are starting to like our new forms anyway. I always wanted to fly when I was a kid. Granted, I was thinking it would be as an airplane pilot, but you know, growing wings of my own I guess is the next best thing.' The soldier then reaches into his pack, pulling out three MREs and hands them to you with a wink. 'For the road, kid. Good luck out there.' With that said, he returns to his seat near their makeshift fire, as you continue on your way, three MREs richer than before...";
		LineBreak;
		say "[bold type]You gain 3 units of food![roman type][line break]";
		increase carried of food by 3;
		now GryphPlotTracking is 91; [player got a thanks from the soldier gryphons for trying to help]
		now Resolution of Gryphon's Plot is 91; [player got a thanks from the soldier gryphons for trying to help]
		now Gryphon's Plot is Resolved; [event will not come up again]

to say PlayerWinsVsGryphonPlot1: [player beat up the 3 gryphons]
	say "     Victorious, you stop to catch your breath, the last gryphon unconscious on the ground before you. The soldiers run up to you, looks of gratitude upon their faces. Although wary of your own exposure to nanites, they express their thanks with 2 MREs, and some sound advice. Although it isn't much, you can tell its heartfelt. The soldiers get rid of the barricade, making short work of it now that they are no longer being bombarded, then hop into their jeep drive off, smiling and giving you a wave as they pass by. Staying at the site a while longer, you take advantage of the downed gryphons, harvesting a bottle of milk and adding it to your backpack. In saving the soldiers, you also find yourself feeling more sane. Overall, things went well, all things considered.";
	LineBreak;
	say "[bold type]You gain 2 units of food![roman type][line break]";
	increase carried of food by 2;
	LineBreak;
	say "[bold type]You gain a bottle of gryphon milk![roman type][line break]";
	increase carried of gryphon milk by 1;
	SanBoost 15;

to say PlayerLosesVsGryphonPlot1: [player lost to the 3 gryphons]
	setmonster "Hermaphrodite Gryphon";
	say "     Breathing heavily, you fall to the ground, too exhausted to continue the fight. As you do so, the gryphons no longer see you as a threat and renew the aerial assault on the soldiers. While your own intervention was enough to allow the soldiers to somewhat regain their bearings, you watch helplessly as the gryphons show it to not be enough. As they corner the desperate men, their shafts harden in anticipation. You struggle to get back on your feet as you watch the gryphons fuck the soldiers, the formerly uninfected men becoming increasingly less human. Smiling in satisfaction as their goal is accomplished, they turn to you, smirking. 'Your turn,' one gryphon screeches out just as you finally get back onto your feet. You attempt to escape their grasp, but between the three of them, it isn't long before they have you held down, taking turns at shoving their cocks inside of your [if player is female]pussy[else]ass[end if]. The by now fully transformed soldiers join in, and you soon lose consciousness in the midst of a gang-bang by horny gryphons. You wake a couple hours later, cum covering every surface of your body.";
	if carried of food > 1:
		say "     Picking up your pack, you notice that you are two cans of food short, but that's not the only thing on your mind. Having lost the brave soldiers to their fate, despite everything you could do, makes you feel a bit less sure of yourself, thinking that maybe the situation in the city is hopeless after all.";
		LineBreak;
		say "[bold type]You lost 2 units of food![roman type][line break]";
		decrease carried of food by 2;
	else if carried of water bottle > 1:
		say "     Picking up your pack, you notice that you are two bottles of water short, but that's not the only thing on your mind. Having lost the brave soldiers to their fate, despite everything you could do, makes you feel a bit less sure of yourself, thinking that maybe the situation in the city is hopeless after all.";
		LineBreak;
		say "[bold type]You lost 2 bottles of water![roman type][line break]";
		decrease carried of water bottle by 2;
	else:
		say "     Having lost the brave soldiers to their fate, despite everything you could do, makes you feel a bit less sure of yourself, thinking that maybe the situation in the city is hopeless after all.";
	SanLoss 15;
	fimpregchance; [4 chances - it was a really long gangbang after all]
	fimpregchance;
	mimpregchance;
	mimpregchance;


to say PlayerFleesVsGryphonPlot1: [player fled the 3 gryphons]
	say "     Feeling as if there is nothing that can be done, you turn your back on the soldiers in need. After all, with their military experience you are sure they can fight for themselves. It is not until you can hear the sounds of an orgy in the distance that you find just how wrong you were. If only you had helped them, maybe they would've been able to hold onto their humanity.";
	SanLoss 15;


to say PlayerHelpsGryphonPlot1: [player helped the gryphons]
	if bodyname of player is not "Hermaphrodite Gryphon":
		say "     Stepping up and making it clear with just who you stand with, you watch as the soldiers become increasingly desperate, the odds now stacked even higher against them. Although the gryphons are wary that you aren't one of their own, they gladly accept your help. Soon, with the combined efforts of you and your unlikely allies, the uninfected men are converged upon. They climb into the stuck car in a last ditch attempt to save themselves from the fate that will befall them. Rushing forward in aggressive maneuvers, you and the gryphons make quick work of the soldiers['] final effort to protect themselves. Ripping the metal doors off of the jeep as they reach in and pull the soldiers out, they roughly strip them of their clothes with an obvious lustful intent, their cocks dripping pre-cum as they bend the still struggling soldiers over and thrust in balls-deep. Ignoring you, they fuck the men ravenously as they begin to change, their once fully human forms gaining a feral look, as their feet shift into sharp talons, and their tanned skin turns into the gryphon's blue. The soldiers are fully transformed by the time the gryphons turn back to you, looking your way with contemplating looks on their face. Then they gesture to the newly transformed soldiers, all with cum leaking from their every hole. Seems like that you're being offered their sloppy seconds. With that, the gryphons fly away, satisfied looks upon their blue, furred faces. Now the only thing that is left to do, is to decide whether or not you want to take them up on the offer...";
		LineBreak;
		say "     [bold type]What do you want to do?[roman type][line break]";
		LineBreak;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if player is male: [Option only visible for males and herms]
			choose a blank row in table of fucking options;
			now title entry is "Fuck a soldier-gryphon's pussy";
			now sortorder entry is 1;
			now description entry is "Fuck the pussy of a newly transformed herm to your heart's content";
		[]
		if player is male: [Option only visible for males and herms]
			choose a blank row in table of fucking options;
			now title entry is "Pound a soldier-gryphon's ass";
			now sortorder entry is 2;
			now description entry is "Fuck a soldier's tight and most likely virgin pucker";
		[]
		if player is female: [Option only visible for females and herms]
			choose a blank row in table of fucking options;
			now title entry is "Ride a soldier-gryphon's cock";
			now sortorder entry is 3;
			now description entry is "Take charge and get a taste of a hard, gryphon shaft";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Just Leave[as]0[end link][line break]";
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
					if (nam is "Fuck a soldier-gryphon's pussy"):
						say "[GryphonPussy]";
					if (nam is "Pound a soldier-gryphon's ass"):
						say "[GryphonAss]";
					if (nam is "Ride a soldier-gryphon's cock"):
						say "[GryphonRide]";
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     Deciding that despite being a part of what led to the soldiers being transformed into their new gryphon state, you don't wish to take advantage of the already thoroughly broken men. Distancing yourself from the scene, you leave the gryphons to clean themselves up and potentially explore their new shapes as you continue along on your merry way.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
				clear the screen and hyperlink list;
	else: [player is a gryphon himself]
		say "     Stepping up and making it clear with just who you stand with, you watch as the soldiers become increasingly desperate, the odds now stacked even higher against them. In this situation, your gryphon appearance comes in handy, the assailants gladly accepting your help. Soon, with the combined efforts of you and your new allies, the uninfected men are converged upon. They climb into the stuck car in a last ditch attempt to save themselves from the fate that will befall them. Rushing forward in aggressive maneuvers, you and the other gryphons make quick work of the soldiers['] final effort to protect themselves. Ripping the metal doors off of the jeep as they reach in and pull the soldiers out, they roughly strip them of their clothes with an obvious lustful intent, their cocks dripping pre-cum as they bend the still struggling soldiers over and thrust in balls-deep. Ignoring you, they fuck the men ravenously as they begin to change, their once fully human forms gaining a feral look, as their feet shift into sharp talons, and their tanned skin turns into the gryphon's blue. The soldiers are fully transformed by the time the gryphons turn back to you, a contemplative look on their faces. Then they gesture to the newly transformed soldiers, most specifically the cum leaking from their every hole. Seems like that you're being offered their sloppy seconds. With that, the gryphons fly away, satisfied looks upon their blue, furred faces. Now the only thing that is left to do, is to decide whether or not you want to take them up on the offer...";
		LineBreak;
		say "     [bold type]What do you want to do?[roman type][line break]";
		LineBreak;
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if player is male: [Option only visible for males and herms]
			choose a blank row in table of fucking options;
			now title entry is "Fuck a soldier-gryphon's pussy";
			now sortorder entry is 1;
			now description entry is "Fuck the pussy of a newly transformed herm to your heart's content";
		[]
		if player is male: [Option only visible for males and herms]
			choose a blank row in table of fucking options;
			now title entry is "Pound a soldier-gryphon's ass";
			now sortorder entry is 2;
			now description entry is "Fuck a soldier's tight and most likely virgin pucker";
		[]
		if player is female: [Option only visible for females and herms]
			choose a blank row in table of fucking options;
			now title entry is "Ride a soldier-gryphon's cock";
			now sortorder entry is 3;
			now description entry is "Take charge and get a taste of a hard, gryphon shaft";
		[]
		sort the table of fucking options in sortorder order;
		repeat with y running from 1 to number of filled rows in table of fucking options:
			choose row y from the table of fucking options;
			say "[link][y] - [title entry][as][y][end link][line break]";
		say "[link]0 - Just Leave[as]0[end link][line break]";
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
					if (nam is "Fuck a soldier-gryphon's pussy"):
						say "[GryphonPussy]";
					if (nam is "Pound a soldier-gryphon's ass"):
						say "[GryphonAss]";
					if (nam is "Ride a soldier-gryphon's cock"):
						say "[GryphonRide]";
			else if calcnumber is 0:
				say "Are you sure you wish to leave?";
				LineBreak;
				say "     ([link]Y[as]y[end link]) - Yes.";
				say "     ([link]N[as]n[end link]) - No.";
				if player consents:
					now sextablerun is 1;
					say "     Deciding that despite being a part of what led to the soldiers being transformed into their new gryphon state, you don't wish to take advantage of the already thoroughly broken men you distance yourself from the scene, leaving the gryphons to clean themselves up and potentially explore their new shapes as you continue along on your merry way.";
					wait for any key;

to say GryphonPussy:
	say "     Lining your cock up with the hermaphrodite gryphon's soaking wet cunt, you hear the newly transformed man let out a wanton moan. Taking the soldier's sound of need as a good of an invitation as any, you proceed to bury yourself balls-deep inside of the newly formed cunt of your temporary fuck toy, to his obvious and verbal enjoyment. Painfully erect inside of the gryphon's softly clenching vaginal walls, your cock lets out copious amounts of precum, lubricating the soldier's snatch for the pounding that is to come. The man, succumbing to the lustful needs of his new form, begins rocking his hips into you in time with your thrusts as you start to earnestly fuck him.";
	LineBreak;
	say "     Despite trying to look upon the scene with feigned disgust, you notice the other gryphon soldiers looking at your fully erect cock with an aroused interest. Smirking, you wave one over, directing him towards your increasingly full balls. Falling to his knees, the soldier expertly uses his tongue to fulfill his task. The last gryphon, not to be left out, proceeds to bury himself deep into the ass of his pussy pleasing kin. Being attended to from all angles, you feel your pleasure start to rise as it shows itself in the form of a pleasant knot, which sits within your stomach. Speeding up your fucking of the soldier whose ass constricts around your cock, you feel yourself nearing a crushing orgasm. The one attending to your heavy cum filled sacks seems to notice your ever rising pleasure and attacks your balls with renewed vigor. Between the two gryphons pleasing you, it isn't long before you find yourself passing over a pleasurable edge, depositing a studly amount of cum inside of your temporary gryphon fuck toy which leaves no nook and cranny of his previously virgin pussy untouched. Bathing in the feeling of your post-orgasmic haze, you vaguely notice as your gryphon fuck buddies reach orgasm themselves. Thoroughly exhausted from the enjoyable fuck, you feel yourself slowly drift into unconsciousness. Waking two hours later, you find the soldiers out cold around you. Making sure everything is in order, you begin to distance yourself from the scene, the recent fuck fest leaving you in a much better mood than before.";
	LineBreak;
	say "[bold type]Your morale increases by 10![roman type][line break]";
	increase morale of player by 10;

to say GryphonAss:
	say "     Lining your cock up with the hermaphrodite gryphon's soaking wet cunt, you hear the newly transformed man let out a wanton moan. Taking the soldier's sound of need as a good of an invitation as any, you proceed to bury yourself balls-deep inside of the newly formed cunt of your temporary fuck toy, to his obvious and verbal enjoyment. Painfully erect inside of the gryphon's softly clenching vaginal walls, your cock lets out copious amounts of precum, lubricating the soldier's snatch for the pounding that is to come. The man, succumbing to the lustful needs of his new form, begins rocking his hips into you in time with your thrusts as you start to earnestly fuck him.";
	LineBreak;
	say "     Despite trying to look upon the scene with feigned disgust, you notice the other gryphon soldiers looking at your fully erect cock with an aroused interest. Smirking, you wave one over, directing him towards your increasingly full balls. Falling to his knees, the soldier expertly uses his tongue to fulfill his task. The last gryphon, not to be left out, proceeds to bury himself deep into the ass of his pussy pleasing kin.";
	LineBreak;
	say "     Being attended to from all angles, you feel your pleasure start to rise as it shows itself in the form of a pleasant knot, which sits within your stomach. Speeding up your fucking of the soldier whose ass constricts around your cock, you feel yourself nearing a crushing orgasm. The one attending to your heavy cum filled sacks seems to notice your ever rising pleasure and attacks your balls with renewed vigor. Between the two gryphons pleasing you, it isn't long before you find yourself passing over a pleasurable edge, depositing a studly amount of cum inside of your temporary gryphon fuck toy which leaves no nook and cranny of his previously virgin pussy untouched. Bathing in the feeling of your post-orgasmic haze, you vaguely notice as your gryphon fuck buddies reach orgasm themselves. Thoroughly exhausted from the enjoyable fuck, you feel yourself slowly drift into unconsciousness. Waking two hours later, you find the soldiers out cold around you. Making sure everything is in order, you begin to distance yourself from the scene, the recent fuck fest leaving you in a much better mood than before.";
	LineBreak;
	say "[bold type]Your morale increases by 10![roman type][line break]";
	increase morale of player by 10;

to say GryphonRide:
	say "     Nearing the newly transformed soldiers with a lustful intent, you eye the cock of the gryphon nearest you. Already having decided to ride the soldier, you position the entrance to your wet snatch above his undeniable hardness, before slowly sliding his cock balls-deep into your thoroughly lubricated pussy. Your temporary fuck toy moans with wanton need as your pussy touches the place his balls and shaft meet. In his pleasure, he produces copious amounts of precum which fill your snatch with a pleasant, gooey warmth.";
	LineBreak;
	say "     Encouraged by your partner's obvious enjoyment in the coupling, you confidently slide your pussy up and down his thick member, making sure to angle his cock in a way that brings you the maximum amount of pleasure. Losing yourself in the sensation, a pit of pleasure begins to grow inside of your stomach, only helped by the fact that the gryphon beneath you has begun using his hips in time with your movements, sweat going down his face as he too loses himself to all of the pleasures his new flesh can bring. Letting go of all restraint, you ride the soldier with wild abandon, the pleasure lodged inside of you growing till it reaches its peak. Lost in a state of ecstasy, your snatch insistently massages the cock inside of it, coaxing it to deposit its load into your deepest depths. The gryphon, having already been close to orgasm himself, doesn't hold out for much longer. Grabbing your hips and holding you firm in a position balls-deep on his shaft, he lets out an animalistic moan, burying every last drop of his seed into your fertile cervix. The soldier, having been thoroughly pent up, cums enough to make your stomach extend with a visible pudge before falling into a state of sexually sated unconsciousness. Although exhausted yourself, you clean up as best you can before heading out, in a visibly better mood than before.";
	LineBreak;
	say "[bold type]Your morale increases by 10![roman type][line break]";
	increase morale of player by 10;

to say PlayerWatchesGryphonPlot1: [player observes the gryphons]
	say "     Deciding not to intervene, you step back and find a place hidden from sight to watch and see how the scene plays out. The gryphons stay steady in their object-fueled assault as the soldiers try, to no avail, to defend themselves. Quickly overcome, you watch as the soldiers climb inside of the trapped jeep in a last ditch effort to save themselves. The gryphons quickly land on and around the jeep, eager to reap their reward. Making quick work of the car doors, they pull the soldiers out and back into the open. The soldiers get pinned against the jeep and slowly go from human to gryphon as the infection takes hold. Half-transformed, you watch as the formerly fully human men bend over and offer themselves to the gryphons, growing aroused in their increasingly transformed state. The victors of the fight wear grins on their faces as they accept the offer, burying themselves balls-deep inside of the asses of the former soldiers. Lost in pleasure, you doubt the previously uninfected men even notice when they lose the last shred of their humanity, their formerly human feet turning into sharp talons. The winners let out a sound of satisfaction as their goal is completed, letting their guard down as they fuck their new kin with wild abandon. With all parties relaxed and the fighting over, this may be the best time to come out of your hiding place and possibly join in on some fun. The question is, do you wish to join the soldiers in their submission?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, after all you want to have a fun time...";
	say "     ([link]N[as]n[end link]) - No, better not. Who knows how they will respond to your sudden appearance...";
	if player consents:
		LineBreak;
		say "     Slowly making your way towards the gryphons and their new pets, you start to strip off your gear. The gryphons spot your approach and become slightly alarmed, but they smirk as you make your submissive intent clear. Now standing tall in your fully naked form in front of the gryphons, you offer no resistance as one makes a move to bend you over, shoving themselves deep inside of your ass over and over until you lose yourself in a gangbang of all those gryphons taking turns with you.";
		if carried of food > 1:
			say "     Waking up a few hours later, you notice that your pack is two cans of food short, but you shrug the loss off in good spirits. After all, you had a lot of fun in your time with the gryphons...";
			LineBreak;
			say "[bold type]You lost 2 units of food![roman type][line break]";
			decrease carried of food by 2;
		else if carried of water bottle > 1:
			say "     Waking up a few hours later, you notice that your pack is two bottles of water short, but you shrug the loss off in good spirits. After all, you had a lot of fun in your time with the gryphons...";
			LineBreak;
			say "[bold type]You lost 2 bottles of water![roman type][line break]";
			decrease carried of water bottle by 2;
		else:
			say "     Waking up a few hours later, you are sticky all over with dried cum, but you shrug it off in good spirits. After all, you had a lot of fun in your time with the gryphons...";
		LineBreak;
		say "[bold type]Your morale increases by 10![roman type][line break]";
		increase morale of player by 10;
		fimpregchance; [4 chances - it was a really long gangbang after all]
		fimpregchance;
		mimpregchance;
		mimpregchance;
		now GryphPlotTracking is 40; [player watched the gryphons do their thing and joined in for the submission]
		now Resolution of Gryphon's Plot is 40; [player watched the gryphons do their thing and joined in for the submission]
	else:
		say "     Deciding not to risk it, you silently get up from your hiding place and start to make your way to a safe distance from the scene. You can still hear the sounds of the gryphons['] orgy, as you continue along your way through the ruins of the infested city...";
		now GryphPlotTracking is 30; [player watched the gryphons do their thing]
		now Resolution of Gryphon's Plot is 30; [player watched the gryphons do their thing]

Gryphons Plot ends here.
