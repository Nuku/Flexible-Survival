Version 2 of Gryphons Plot by Shay begins here.
[ Original Event idea by Hellerhound ]
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
		say "     As you make your way through the city a loud screeching noise catches your attention. Your eyes quickly survey the immediate area, the noise sounding awfully close to one a gryphon would make. As another screech joins the first, you realize that not just one gryphon is involved. As the gryphon's calls transform from warning to aggressive you find yourself wondering what is going on, and if you should take a risk in order to find out. The area being filled with many buildings, it is likely the sound may be bouncing off of them, which could lead to you being mislead. Despite this, you conclude finding the source would be difficult, but not impossible";
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
				say "     [link](1)[as]1[end link] - Yes, to help the men fight off their feral attackers";
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
					if fightoutcome >= 10 and fightoutcome <= 19: [won] [player won]
						say "[PlayerWinsVsGryphonPlot1]";
						now GryphPlotTracking is 10; [player helped the soldiers]
					else if fightoutcome > 19 and fightoutcome < 30: [lost]
						say "[PlayerLosesVsGryphonPlot1]";
						now GryphPlotTracking is 90; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
					else if fightoutcome is 90: [fled]
						say "[PlayerFleesVsGryphonPlot1]";
						now GryphPlotTracking is 20; [player tried to help, failed - soldiers transformed, these specific gryphons pissed at the player]
				else if calcnumber is 2: [helping the gryphons]
					LineBreak;
					say "[PlayerHelpsGryphonPlot1]";
					now GryphPlotTracking is 50; [player helped the gryphons]
				else if calcnumber is 3: [watching]
					LineBreak;
					say "[PlayerWatchesGryphonPlot1]";
				else: [leaving]
					LineBreak;
					say "     Taking one last look at the scene you decide, the situation clearly isn't your problem. Quietly stepping back, you wander away slowly to avoid to attracting any unwanted attention to yourself. Soon, you are well out of sight of the event as the screeching and other noises die down. Although you didn't wish to be involved, a part of you can't help but wonder how things worked out. Despite the fact that you are curious, you decide that alone isn't enough to go back and possibly run into any trouble that may still linger there. Forcibly pushing the recent event out of mind, you continue on your merry way.";
					now GryphPlotTracking is 100; [player had no interest]
					now Gryphon's Plot is Resolved; [event will not come up again]
			else: [not perceptive enough / unlucky]
				say "     Setting out in search of where the gryphons are, you wander through the deserted streets. Some time later, as you continue trekking through the cities' rubble for the source of the noise, all sounds eventually cease. Hm, seems like you won't find that group of gryphons today. Maybe if you were a bit more perceptive, you might have found a quicker way to get to them...";
				now GryphPlotTracking is 1; [player failed to find them]
		else: [refused to investigate]
			LineBreak;
			say "     With a shrug, you try to ignore the noises and concentrate on your immediate surroundings instead. Surviving in the city is difficult enough without actively going out to find trouble...";
			now GryphPlotTracking is 100; [player had no interest]
			now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 10: [player helped the soldiers, gryphons are pissed]
		say "     As you wander through the streets of the creature-infested city, you stumble upon a group of non-infected human soldiers. Inching forward to take a closer look, something inside your head clicks. You knew they looked familiar, it is the soldiers you saved from the gryphons awhile back! One of the men spots you and waves you over, patting a place on the ground beside him.";
		say "     Do you join them?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, it will be nice to talk to someone sane for once.";
		say "     ([link]N[as]n[end link]) - No, you aren't interested.";
		if player consents:
			LineBreak;
			say "     Walking over and taking the offered spot, the group of soldiers temporarily stop their task and meet you with warm, hearty greetings. After having thoroughly welcomed you, the soldiers return to their task: They seem to be observing a nearby gryphon nest. You look at the men questioningly, one solider who looks to be the leader moves to explain. 'It's the gryphons from the attack you saved us from. We tracked them, and now it's time for us to get revenge. Are you willing to help us once more?'";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, you'd be happy to lend a hand.";
			say "     ([link]N[as]n[end link]) - No, you don't wish to get involved in others affairs.";
			if player consents:
				LineBreak;
				say "     As you nod in agreement, you watch the soldiers['] faces instantly light up. One who seems to be the leader gives you a friendly pat on the back and speaks, 'I knew we could count on you again. All you have to do is take these binoculars here, and tell us if anyone tries to sneak up on us from behind. Think you can handle it?' You nod, it sounds easy enough. You stand look-out for a long while as the men scout out the nearby gryphon nest, then storm in and give the gryphon pack a good thrashing. After you see the soldiers emerge victorious through your binoculars, they leave the nest behind and make their way over to you again. 'Well, we showed them not to challenge the US army, eh?' one of the soldiers says, giving you a thumbs up. Each of the men digs out an MRE from his pack and hands it to you, as a little thanks for the help. 'We felt much better knowing you had our back,' the leader adds before the small group says their goodbyes and leaves";
				LineBreak;
				say "[bold type]You gain 3 units of food![roman type][line break]";
				increase carried of food by 3;
				now GryphPlotTracking is 11; [helped the soldiers beat up the gryphons]
			else:
				LineBreak;
				say "     Turning the soldiers down, you watch as the looks on their faces instantly turn from happy to disappointed. Rising from your place on the ground, you say your goodbyes to the men. They see you off with solemn waves as you continue along your merry way.";
				now GryphPlotTracking is 18; [refused to help the soldiers beat up the gryphons]
		else:
			LineBreak;
			say "     Deciding you want nothing to do with whatever the men are up to, you turn your back on the soldier's offer. Surprised by your reaction, but not deterred, they grudgingly but determinedly return to their task as you continue along your merry way.";
			now GryphPlotTracking is 19; [refused to sit with them]
		now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 30: [player watched the gryphons, soldiers are transformed]
		say "     SOMETHING.";
		now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 40: [player watched the gryphons, soldiers are transformed, and the player joined in for the submission]
		say "     SOMETHING.";
		now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 50: [player helped the gryphons, soldiers are transformed]
		say "     Wandering through the ruins of the city, you see an unusual sight: There is a group of gryphons, still wearing the tattered remains of army uniforms upon their bodies as they sit huddled around a fire. Inching closer to the unlikely scene, you accidentally step on an empty aluminum can, causing the gryphon soldiers to jerk up in alarm as they are alerted to your presence. Spotting you, one of the gryphons exclaim, 'Hey, I know you, you are the one who helped those other gryphons make me like this! Lets see how strong you are without your friends along. Come on guys lets get em!' Seeing no other option then to fight, you ready your weapon.";
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
		if fightoutcome >= 10 and fightoutcome <= 19: [player won]
			say "     The third gryphon, wary of the defeat of the first two, draws back from you. 'Looks like you can hold up in a fight by yourself. I may not like what you did to me, but as a solider I can respect the fact that you stood your ground. Good luck surviving in this fucked-up city.' The gryphon then drops two MREs at your feet, before spreading his wings and disappearing into the distance. His two companions use the moment in which you pounce on the food to make their own escapes.";
			LineBreak;
			say "[bold type]You gain 2 units of food![roman type][line break]";
			increase carried of food by 2;
			now GryphPlotTracking is 51; [player fought off vengeful soldier gryphons]
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "      VENGEFUL BEATING / FUCK BY SOLDIER GRYPHONS";
			now GryphPlotTracking is 59; [player got a beating from vengeful soldier gryphons]
		else if fightoutcome is 90: [fled]
			say "      PLAYER RAN FROM SOLDIER GRYPHONS";
			now GryphPlotTracking is 58; [player got a beating from vengeful soldier gryphons]
		now Gryphon's Plot is Resolved; [event will not come up again]
	else if GryphPlotTracking is 90 or GryphPlotTracking is 20: [player tried to help, failed, gryphons are pissed]
		say "     Wandering through the ruins of the city, you see an unusual sight: There is a group of gryphons, still wearing the tattered remains of army uniforms upon their bodies as they sit huddled around a fire. Inching closer to the unlikely scene, you accidentally step on an empty aluminum can, causing the gryphon soldiers to jerk up in alarm as they are alerted to your presence. Spotting you, one of the gryphons exclaims, 'Hey, I know you, you tried to help us fight the gryphons off that one day. Don't worry about the fact you didn't succeed, we still appreciate that you tried. Besides, all of us are starting to like our new forms anyway. I always wanted to fly when I was a kid. Granted, I was thinking it would be as an air plane pilot but you know, growing wings of my own I guess is the next best thing.' The solider then reaches into his pack, pulling out three MREs and hands them to you with a wink. 'For the road kid, good luck out there.' With that said, he returns to his seat near their makeshift fire, as you continue on your way, three MREs richer than before...";
		LineBreak;
		say "[bold type]You gain 3 units of food![roman type][line break]";
		increase carried of food by 3;
		now GryphPlotTracking is 91; [player got a thanks from the soldier gryphons for trying to help]
		now Gryphon's Plot is Resolved; [event will not come up again]

to say PlayerWinsVsGryphonPlot1: [player beat up the 3 gryphons]
	say "     Victorious, you stop to catch your breath, the last gryphon unconscious on the ground before you. The soldiers run up to you, looks of gratitude upon their faces. Although wary of your own exposure to nanites, they express their their thanks with 2 MREs, and some sound advice. Although it isn't much, you can tell its heartfelt. The soldiers get rid of the barricade, making short work of it now that they are no longer being bombarded, then hop into their jeep drive off, smiling and giving you a wave as they pass by. Staying at the site a while longer, you take advantage of the downed gryphons, harvesting a bottle of milk and adding it to your backpack. In saving the soldiers, you also find yourself feeling more sane. Overall, things went well, all things considered.";
	LineBreak;
	say "[bold type]You gain 2 units of food![roman type][line break]";
	increase carried of food by 2;
	LineBreak;
	say "[bold type]You gain a bottle of gryphon milk![roman type][line break]";
	increase carried of gryphon milk by 1;
	SanBoost 15;

to say PlayerLosesVsGryphonPlot1: [player lost to the 3 gryphons]
	setmonster "Hermaphrodite Gryphon";
	say "     Breathing heavily you fall to the ground, to exhausted to continue the fight. As you do so, the gryphons no longer see you as a threat and renew the aerial assault on the soldiers. While your own intervention was enough to allow the soldiers to somewhat regain their bearings, but you watch helplessly as the gryphons show it to not be enough. As they corner the desperate men, their shafts harden in anticipation. You struggle to get back on your feet as you watch the gryphons fuck the soldiers, the formerly uninfected men becoming increasingly less human. Smiling in satisfaction as their goal is accomplished they turn to you, smirking. 'Your turn,' one gryphon screeches out just as you finally get back onto your feet. You attempt to escape their grasp, but between the three of them, it isn't long before they have you held down, taking turns at shoving their cocks inside of your [if cunts of player > 0]pussy[else]ass[end if]. The by now fully transformed soldiers join in, and you soon lose consciousness in the midst of a gang-bang by horny gryphons. You wake a couple hours later, cum covering every surface of your body. ";
	if carried of food > 1:
		say "Picking up your pack, you notice you are two cans of food short, but that's not the only thing on your mind. Having lost the brave soldiers to their fate, despite everything you could do, makes you feel a bit less sure of yourself, thinking that maybe the situation in the city is hopeless after all.";
		LineBreak;
		say "[bold type]You lost 2 units of food![roman type][line break]";
		decrease carried of food by 2;
	else if carried of water bottle > 1:
		say "Picking up your pack, you notice you are two bottles of water short, but that's not the only thing on your mind. Having lost the brave soldiers to their fate, despite everything you could do, makes you feel a bit less sure of yourself, thinking that maybe the situation in the city is hopeless after all.";
		LineBreak;
		say "[bold type]You lost 2 bottles of water![roman type][line break]";
		decrease carried of water bottle by 2;
	else:
		say "Having lost the brave soldiers to their fate, despite everything you could do, makes you feel a bit less sure of yourself, thinking that maybe the situation in the city is hopeless after all.";
	SanLoss 15;
	fimpregchance; [4 chances - it was a really long gangbang after all]
	fimpregchance;
	mimpregchance;
	mimpregchance;

to say PlayerFleesVsGryphonPlot1: [player fled the 3 gryphons]
	say "     Feeling as if their is nothing that can be done, you turn your back on the soldiers in need. After all, with their military experience you are sure they can fight for themselves. It is not until you can hear the sounds of an orgy in the distance that you find just how wrong you were. If only you had helped them, maybe they would've been able to hold onto their humanity.";
	SanLoss 15;

to say PlayerHelpsGryphonPlot1: [player helped the gryphons]
	if the bodyname of the player is not "Hermaphrodite Gryphon":
		say "     Stepping up and making it clear with just who you stand, you watch as the soldiers become increasingly desperate, the odds now stacked even higher against them. Although the gryphons are wary that you aren't one of their own, the gladly accept your help. Soon, with the combined efforts of you and your unlikely allies, the uninfected men are being converged upon. They climb into the stuck car in a last ditch attempt to save themselves from the fate that will befall them. Rushing forward in aggressive maneuvers, the gryphons make quick work of the soldiers final effort to protect themselves. Ripping the metal doors off the jeep as they reach in and pull the soldiers out, they roughly strip them of their clothes with an obvious lustful intent, their cocks dripping pre-cum as they bend the still struggling men over and thrust in balls deep. Ignoring you, they fuck the men ravenously as they begin to turn, their once fully human forms gaining a feral look, as their feet turn into sharp talons, and their tanned skin turns into the gryphon's blue. The soldiers are fully transformed by the time the gryphons turn back to you, looking your way with contemplating looks on their face. Then they gesture to the newly turned soldiers, all with cum leaking from their every hole. Seems like you're being offered their sloppy seconds. With that, the gryphons fly away, satisfied looks upon their blue furred faces.";
		LineBreak;
		say "     [bold type]What do you want to do now?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Fuck a soldier-gryphon's pussy.";
		say "     [link](1)[as]2[end link] - Fuck a soldier-gryphon's ass.";
		say "     [link](2)[as]3[end link] - Ride a soldier-gryphon's dick.";
		say "     [link](3)[as]4[end link] - Just leave.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to fuck pussy, [link]2[end link] to fuck ass, [link]3[end link] to ride a cock, or [link]4[end link] to leave.";
		if calcnumber is 1: 
			LineBreak;
			say "     FUCK PUSSY";
		else if calcnumber is 2:
			LineBreak;
			say "     FUCK ASS";
		else if calcnumber is 3:
			LineBreak;
			say "     RIDE COCK";
		else: 
			LineBreak;
			say "     LEAVE";
	else:
		say "     Spreading your blue, furred wings you fly into the battle between man and gryphon. Making it clear that you stand with the other gryphons. You watch as the men become a whole another level of desperate. Descending from your sky high place, you grab a nearby object with a quick, decisive swoop. The other gryphons grin at you, gladly accepting the help. Between the four of you, it isn't long before the men lose the battle. The desperate soldiers climb inside of their jeep as a last ditch attempt to save themselves. Rushing forth, you help your kin make quick work of the car doors. Pulling the men out of the jeep, you watch as the infection starts to take hold, their formerly pure, human skin turning to a blue gryphon hue. In thanks for your help, the gryphons pass one of the transforming men to you, as they strip the other two soldiers, fucking them in the ass and speeding along their transformation. Following suit, you [if cocks of player > 0]bury your cock balls deep into the ass of [else if cunts of player > 0]slide your pussy down on the shaft of [else]slide your ass down on the shaft of [end if]your own hunky soldier. Watching as he succumbs to the infection in a state of sexual ecstasy. After spending hours in a sexual orgy with the gryphons, you decide its time to head out. The gryphons wave goodbye as you spread your wings and depart, you hear the orgy still going on in the distance as you head back to the safety of your bunker.";

to say PlayerWatchesGryphonPlot1: [player observes the gryphons]
	say "     Deciding not to intervene, you step back and find a place hidden from sight to watch and see how the scene plays out. The gryphons stay steady in their object fueled assault as the soldiers try to no avail to defend themselves. Quickly overcome, you watch as the soldiers climb inside of trapped jeep in a last ditch effort to save themselves. The gryphons quickly land on and around the jeep, eager to reap their reward. Making quick work of the car doors, they pull the soldiers out and back into the open. The soldiers get pinned against the jeep and slowly go from human to gryphon as the infection takes hold. Half transformed, you watch as the formerly fully human men bend over and offer themselves to the gryphons, growing aroused in their increasingly transformed state. The victors of the fight wear grins on their faces as they accept the offer, burying themselves balls deep inside the asses of the former soldiers. Lost in pleasure, you doubt the previously uninfected men even notice when they lose the last shred of their humanity, their formerly human feet turning into sharp talons. The winners let out a sound of satisfaction as their goal is completed, letting their guard down as they fuck their new kin with a wild abandon. With all parties relaxed and the fighting over, this may be the best time to come out of your hiding place and possibly join in on some fun. The question is, do you wish to join the soldiers in their submission?";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, after all you want to have a fun time...";
	say "     ([link]N[as]n[end link]) - No, better not who knows how they will respond to your sudden appearance...";	
	if player consents:
		LineBreak;
		setmonster "Hermaphrodite Gryphon";
		say "     Slowly making your way towards the gryphons and their new pets, you start to strip off your gear. The gryphons spot your approach and become slightly alarmed, but they smirk as you make your submissive intent clear. Now standing tall in your fully naked form in front of the gryphons you offer no resistance as one makes a move to bend you over, shoving themselves deep inside of your ass over and over until you lose yourself in a gangbang of all those gryphons taking turns with you. ";
		if carried of food > 1:
			say "Waking up a few hours later, you notice your pack is two cans of food short, but you shrug the loss off in good spirits. After all, you had a lot of fun in your time with the gryphons...";
			LineBreak;
			say "[bold type]You lost 2 units of food![roman type][line break]";
			decrease carried of food by 2;
		else if carried of water bottle > 1:
			say "Waking up a few hours later, you notice your pack is two bottles of water short, but you shrug the loss off in good spirits. After all, you had a lot of fun in your time with the gryphons...";
			LineBreak;
			say "[bold type]You lost 2 bottles of water![roman type][line break]";
			decrease carried of water bottle by 2;
		else:
			say "Waking up a few hours later, you are sticky all over with dried cum, but you shrug it off in good spirits. After all, you had a lot of fun in your time with the gryphons...";
		LineBreak;
		say "[bold type]Your morale increases by 10![roman type][line break]";
		increase morale of player by 10;
		fimpregchance; [4 chances - it was a really long gangbang after all]
		fimpregchance;
		mimpregchance;
		mimpregchance;
		now GryphPlotTracking is 40; [player watched the gryphons do their thing and joined in for the submission]
	else:
		LineBreak;
		say "     Deciding not to risk it, you silently get up from your hiding place and start to make your way to a safe distance from the scene. You can still hear the sounds of the gryphons orgy, as you continue along your way through the ruins of the infested city...";
		now GryphPlotTracking is 30; [player watched the gryphons do their thing]

Gryphons Plot ends here.