Version 5 of Demon Brute For FS by Leo X begins here. [Expansion & Rewriting by Wahn]
[Version 5 - gender-switched sex]
[Todo: Endings]

"Adds a Monster name to Flexible Survivals Wandering Monsters table, With Impreg chance"

DBCaptureQuestVar is a number that varies. DBCaptureQuestVar is usually 0.
DemonBruteStatus is a number that varies. DemonBruteStatus is usually 0.

[ DBCaptureQuestVar - Capture a demon brute             ]
[  0: never fought against one                          ]
[  1: won once                                          ]
[  2: won twice or more                                 ]
[  3: talked to Nermine                                 ]
[  4: during the ritual fight                           ]
[  5: ritual done, demon controlled                     ]
[ 99: ritual failed                                     ]

[ DemonBruteStatus - Gender switching                   ]
[ (preliminary - to be added later)                     ]
[  0: just a normal demon brute                         ]
[  1: herm demon brute                                  ]
[  2: female demon brute                                ]

Section 1 - Fighting and Capturing the Brute

to say demonbrutedesc:
	now messypigaltorgasm is false;
	follow the monster combat mode rule;		[select the combat mode for first-strike]
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 10;					[reset likelihood of alt attack]
	if DBCaptureQuestVar is 5:
		say "The large demon stretches its body, ropes of muscles rippling under dark purple skin and the spade-tipped tail whipping through the air. Then it turns its head towards you, red eyes glowing with hatred. With a roar, it rushes forward with outstretched claws.";
	otherwise:
		say "You see a massive beast ahead, with dark purple skin, a frightening face with slits for nostrils, yellow eyes with red irises, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. His entire body is gigantic and muscle-bound, and between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his tailbone, which is constantly flicking back and forth. He wears nothing but a grin.";

to say demon brute wins:
	if cunts of player > 0:
		if DBCaptureQuestVar is 4:
			say "     The demon brute picks you up with one of his massive hands around your neck and shakes you. 'You again! Are you so eager to get fucked that you call me back from the pit? Then I shall have you right now!'";
		otherwise:
			say "     'Just what I've been looking for, a bitch to impregnate.' the demon brute growls in a deep gravelly voice.";
		say "[line break]";
		say "     Picking you up bodily, he tears away any clothes you were wearing. The monster then smirks at your naked form, then throws your trembling body down onto the ground. He lifts your lower body into the air, leaving your shoulders and head to rest on the ground. Pushing apart your legs, he begins to rub his hard, long cock up and down your [cunt size desc of player] petals. The brutish demon moves into a position directly above you, his large balls sagging down far enough to rub against your [cunt size desc of player] lips. He plants a foot on each of your arms, and spreads your legs painfully far apart, putting a lot of his weight on them. You are effectively immobilized.";
		say "[WaitLineBreak]";
		say "     He then guides his cock to press against your warm slit, putting all his weight behind it. It slides in with some resistance, and you yelp in pain as it pushes all the way to your cervix in one thrust. The monster grunts, and begins to brutally ravage your [cunt size desc of player] sex. The bumps which cover his cock are a source of both pain and pleasure as he thrusts into you again and again. With each powerful push, he comes closer to bashing through your cervix with his blunt tool, and he is constantly ramming your body into the hard ground. It takes the brute 30 minutes to reach a climax, but the brutal fucking feels as if it has gone on forever. The monster grunts again, and then sighs with relief as he empties his massive, swollen balls into your womb, filling it to the brim with his seed, and then past it. Your stomach begins to swell with the sheer volume of seed being pumped into it, and massive quantities pour out of your abused cunt, spilling all over the rest of your body.";
		if DBCaptureQuestVar is 4:
			say "     The brute stands up, holding you against his broad chest with one massive hand and your pussy still speared on his thick member. As you feel the demon's cum start running out of you, the creature licks you with his long forked tongue. 'I'll just keep fucking you till you're only a whimpering little bitch - and then throw you to the others so they can fill your sloppy holes too! But let's get to more comfortable surroundings first...' With that, your surroundings shimmer and disappear and you find yourself somewhere else. From the fires, screams and horrible scenes you can see all around you, it must be the demon's home in hell - and now yours too. Forever.";
		otherwise:
			say "     The brute stands up, letting you fall into the massive pool of warm cum he has created. His seed simply pours from within your abused [cunt size desc of player] petals as he disappears into thin air.[impregchance]";
	otherwise:
		if DBCaptureQuestVar is 4:
			say "     The demon brute picks you up with one of his massive hands around your neck and shakes you. 'You again! Are you so eager to get fucked that you call me back from the pit? Then I shall have you right now!'";
		otherwise:
			say "     'I'd prefer to fuck a bitch, but I'm still gonna enjoy every second of this. I am going to ruin your body, and you're gonna enjoy it.' the demon brute growls in a deep gravelly voice.";
		say "[line break]";
		say "     He tears away your clothes, forcing you down on all limbs, your rear up in the air. Slapping your ass with a massive hand, the brutish demon gives his cock a few jerks with the other, bringing it to full stiffness. Without further ado, he comes up behind you and begins to prod his massive member against your asshole. He puts all his weight behind it, and it eventually begins to disappear slowly inside your body. You scream out in pain, but he simply pushes harder, forcing as much of his cock inside as he can. Your eyes begin to tear as he begins to fuck your ass slowly, still having to overcome a lot of painful resistance.";
		say "     Over time, it becomes easier and easier to thrust, and after almost an hour of anal abuse, he is finally able to thrust freely, helped by several fluids, including his pre and your blood. As he thrusts faster and faster, the bumps on his cock constantly tear at your insides, and you impulsively let out a yelp of discomfort with every thrust. It is not too much longer before he reaches his climax, and, without pausing, grunts, and begins to pump your bowels full of his warm seed. It easily fills your intestines and your stomach. In fact, there is so much cum it continues up your throat, spilling out in massive quantities from your panting mouth.";
		if DBCaptureQuestVar is 4:
			say "     The brute stands up, holding you against his broad chest with one massive hand and your asshole still speared on his thick member. As you feel the demon's cum start running out of you, the creature licks you with his long forked tongue. 'I'll just keep fucking you till you're only a whimpering little bitch - and then throw you to the others so they can fill your sloppy holes too! But let's get to more comfortable surroundings first...' With that, your surroundings shimmer and disappear and you find yourself somewhere else. From the fires, screams and horrible scenes you can see all around you, it must be the demon's home in hell - and now yours too. Forever.";
		otherwise:
			say "     As he finally removes his cock with a lout *pop*, your stomach is distended from the sheer amount of cum he has injected into you, and he leaves you to drown in the massive pool of cum he has left behind. As he disappears into thin air, you find yourself choking and spitting up large balls of his seed, while a constant stream leaks from your abused asshole. And the scary part is that you did enjoy it.[mimpregchance]";		

to say demon brute loses:
	if DBCaptureQuestVar is 0:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. It proceeds to vanish into a fine purple mist, and is blown away by the wind.";
		increase DBCaptureQuestVar by 1;
	otherwise if DBCaptureQuestVar is 1:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. Not wanting to let this one get away too, you grab its muscle-bound arm with both hands - only to have the bruised demon proceed to turn into a fine purple mist right under your fingers. A deep chuckle can be heard as a sudden wind blows away the purple cloud.";
		increase DBCaptureQuestVar by 1;
	otherwise if DBCaptureQuestVar is 2:
		say "     As the demon crashes to the ground with a rather loud thud, you're prepared for what happens next. You might not be able to catch one of these fuckers, but you can - and do - give him a good hard kick between the legs. This time, your demonic opponent vanishes with a whimper, the purple smoke he turns into a bit paler than before.";
		if a random chance of 1 in 3 succeeds and inasituation is false:
			say "[line break]";
			say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Might be useful for something, so you pick it up."; 
			increase carried of demon tooth by 1;
	otherwise if DBCaptureQuestVar is 4:
		say "     With a rather loud thud, the demon brute collapses to the ground, defeated. It proceeds to turn into a fine purple mist - but instead of dispersing in the air as before, it swirls around as one tight mass. The cloud of mist wavers as if it's fighting against some pull, then is drawn towards the pentagram in an elongated stream. Whirling around in an ever-tightening spiral, the purple mist finally is absorbed by the now blackened demon tooth in the brazier. As the last bit of it vanishes, the fire and surrounding candles are blown out by a sudden wind, silence falling over the room only disturbed by quiet ticking sounds of the slowly cooling brazier.";
		now DBCaptureQuestVar is 5;		
	otherwise if DBCaptureQuestVar > 2:
		say "     As the demon crashes to the ground with a rather loud thud, you're prepared for what happens next. You might not be able to catch this one, but you can - and do - give him a good hard kick between the legs. This time, your demonic opponent vanishes with a whimper, the purple smoke he turns into a bit paler than before.";
		if a random chance of 1 in 3 succeeds and inasituation is false:
			if DBCaptureQuestVar is 3:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. You already gave one to Nermine and she said that you won't need another, so you leave it where it is..."; 
			otherwise if DBCaptureQuestVar is 5:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Nermine said she doesn't have the supplies to capture another of these brutes, so you leave it where it is..."; 
			otherwise if DBCaptureQuestVar is 99:
				say "After the creature is gone, you notice something on the ground. Looks like... a tooth. Pretty long fang, rather. You must have knocked one of the demon's teeth out during your fight. Nermine said she only had the supplies for one try to capture one of these brutes, so you leave it where it is..."; 
		
Table of Game Objects(continued)
name	desc	weight	object
"demon tooth"	"A pretty long, curved fang with a sharp tip. You knocked it out of a demon brute's mouth. Maybe you could find someone who has knowledge of the supernatural and show it to them - there might be something interesting to be done with it."	1	demon tooth

demon tooth is a grab object. demon tooth is not temporary.
the usedesc of demon tooth  is "And just what do you want to do with it? Maybe find someone who understands the supernatural and give it to them...";
				
instead of trading the demon tooth when the current action involves the Nermine:
	if DBCaptureQuestVar is 2:
		say "     Nermine takes a look at the fang, then says 'What you are showing here is a tooth of a demon soldier. How did you acquire it?'";
		say "     You tell her about your previous clashes with multiple demon brutes and how they always evaded you in the end. Nodding, the jackalwoman says 'You wanting revenge then? A spell to capture this old enemy?' *she holds up the fang, looking at it, then you, with a calculating look* 'Nermine can help you do this - but I have to warn you that you'll have to have ritual somewhere else. I do not want hellish attention here if you make mistakes.' Agreeing to the storekeeper's conditions, you wait while she vanishes in a back room for a while, then comes back out with a small box holding candles, herbs, a small brazier and a scroll.";
		say "     'This here is almost all you need - but it's still necessary to gather some essence of your enemy. You needing it to paint the symbol...' From her description, you'd say about three bottles of demon seed should suffice. Finally Nermine gives you the tooth back and stores her box behind the counter. 'You keep it for now. Give it to me when you've got the essence and want to do ritual.'";
		now DBCaptureQuestVar is 3;
	otherwise if DBCaptureQuestVar is 3:
		if carried of demon seed > 2:
			say "     Taking the tooth from you again, Nermine asks 'You having the demon's essence?'";
			say "     Aware of the multiple bottles of demonic cum in your pack, you answer...";
			if player consents:
				say "     The jackalwoman nods, then gets out the small box with stuff again and hands it to you. 'You got everything you need now. Follow the instructions closely. This the last supply of these ingredients Nermine has right now - you got only one try.' With that, Nermine starts to shoo you out of her store. 'You go now, far - Nermine not want her bones eaten if you fail. When done, come back and bring the tooth.'";
				say "[WaitLineBreak]";
				say "     Carrying your box of summoning supplies out of the mall, you make your way along the streets for several blocks until you find a suitable abandoned building. Unrolling the scroll Nermine gave you, you find it's a step-by step instruction manual for demon summoning. After (1) setting up a pentagram painted in demon seed and double-checking that it's closed everywhere, you (2) set up black candles on the points and light them. After that, it's time to (3) put the brazier in the middle and burn the herbs in it. With their spicy odours filling the room, you read further down the list. Hmmm.... (4) is smearing your own blood on the tooth and throwing it into the brazier.";
				decrease carried of demon seed by 3;
				say "     Something about using your blood in a demon summoning ritual just makes you nervous. Do you want to do this anyways?";
				if player consents:
					say "     Having come this far, you poke your thumb with the tooth and spread some blood over it, then lug it into the burning brazier and step back. The fire in the brazier and the candles flare up brightly and a demon brute materializes in the pentagram with an annoyed growl.";
					decrease carried of demon tooth by 1;
					now DBCaptureQuestVar is 4;
					now inasituation is true;
					challenge "Demon Brute";
					now inasituation is false;
					if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
						now bodyname of player is "Captured";
						now facename of player is "Captured";
						now skinname of player is "Captured";
						now tailname of player is "Captured";
						now cockname of player is "Captured";
						now humanity of player is 0;
						end the game saying "An enraged demon brute dragged you off to hell.";						
					otherwise if fightoutcome >= 30:			[fled]			
						say "     Seems like this was a bit too much for you to take on. Running out of the building, closely followed by the enraged demon, you flee for your life and only barely make an escape. Well, there goes your one and only try for this ritual. But then, maybe that's for the best...";
					otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]
						say "[WaitLineBreak]";
						say "     Looks like it worked. You carefully fish out the tooth from amongst the ashes and put it in your pocket, then make your way back to Nermine's shop. The jackalwoman seems just a bit surprised when you hand her the demon tooth. 'Congratulations. Nermine is glad you were not eaten. Rare to see business with demons work out.' She looks closely at the tooth, then continues 'One can feel it struggling to get out, your captive. Might even break free over time - let's put a stop to that.' Opening a box in one of the many shelves, the jackalwoman grabs a rough chunk of clear crystal, then touches it with the sharp end of the tooth and murmurs something. A swirl of dark purple flows from the contact point, filling the center of the crystal with a wavering cloud. Setting the changed crystal back into its box, Nermine says 'There, that's demon power your captive no longer has - and payment for Nermine. He is controllable now.'";
						say "     With skilled fingers, Nermine clamps the tooth into a small metal socket with a loop on the back and pulls a leather string through that. She hands you your new demontooth amulet and leans close to whisper some magical words you can use to summon the captured demon from within.";	
						now DBCaptureQuestVar is 5; 	[captured and controlled]
						now demon brute is tamed;
						say "[line break]";
						say "     (That demon brute is now controlled! You can make him your active companion by typing [bold type][link]pet demon brute[end link][roman type].  You can see all the pets and followers you have with the [bold type][link]pet[end link][roman type] command.  Pets will lower the xp you gain from battle, but can gain levels themselves to be more useful in a scrap.  Want to leave a companion home for a while and go out alone? Use [bold type][link]pet dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])";						
				otherwise:
					say "     Getting cold feet at almost he last second, you blow out the candles and douse the brazier. Well, there goes your one and only try for this ritual. With the herbs already up in smoke, you won't have any for a second try. But then, maybe that's for the best...";
					now DBCaptureQuestVar is 99;		[failed]
			otherwise:
				say "     As you shake your head, the jackalwoman says 'Nermine cannot help you unless you bring enough demon essence to paint the needed symbols. Go out and gather...' She describes the amount you need, which you'd say translates to three bottles of demon seed.";
		otherwise:
			say "     Taking the tooth from you again, Nermine asks 'You having the demon's essence?'";
			say "     As you shake your head, the jackalwoman says 'Nermine cannot help you unless you bring enough demon essence to paint the needed symbols. Go out and gather...' She describes the amount you need, which you'd say translates to three bottles of demon seed.";
	otherwise if DBCaptureQuestVar is 5:
		say "     The jackalwoman looks at the tooth, then says 'You want to catch another one? Nermine told you, she only had enough for one try at the ritual. There is nothing more to do without new rare supplies that are not in this city.'";			
	otherwise if DBCaptureQuestVar is 99:
		say "     The jackalwoman looks at the tooth, then says 'Nermine told you, she only had enough for one try at the ritual. There is nothing more to do without new rare supplies that are not in this city.'";			
		
Section 2 - Amulet, Pet & Sex

demon brute is a pet.  demon brute is a part of the player;
understand "Brutus" as demon brute.
The description of demon brute is "[DemonBrutePetDesc]";
The weapon damage of demon brute is 8;
The level of demon brute is 4;
The Dexterity of demon brute is 8;
The summondesc of demon brute is "     Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. You tell him 'I want you to help me when I get into fights, understand?' In a growling voice, the demon answers 'Yes... master.'";
The assault of demon brute is "[one of]The demon brute charges into combat, swinging wildly at your enemy in uncontrolled bloodlust![or]A loud roar of your demon brute frightens and distracts your enemy a moment - long enough for you to score a quick hit![or]Snarling, your demon brute slashes your enemy with his claws![at random]";

to say DemonBrutePetDesc:
	if DemonBruteStatus is 0:
		say "     The muscled humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
	otherwise if DemonBruteStatus is 1:			
		say "     The muscled humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum, and you know for a fact that there's a pussy right under those balls between his legs. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
	otherwise if DemonBruteStatus is 2:			
		say "     The muscled humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red slitted pupils, and sharp, intimidating teeth. Three matched pairs of horns crown his head, curved and getting smaller front to back. Between his legs, you see a female's pussy, looking quite inviting. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";		

instead of sniffing demon brute:
	say "Smells like fire, ash and brimstone.";

instead of conversing demon brute:
	say "[demon brute summoning]";	
	say "[demon brute talk]";

instead of fucking the demon brute:
	say "[demon brute summoning]";	
	say "[DemonBruteSexMenu]";	
	
to say demon brute summoning:
	if companion of player is demon brute:		[already summoned]	
		say "Holding your demontooth amulet tightly in your fist, you call over your controlled demon. As he hulking beast comes to stand before you, he says with a growling voice 'Yes... master?'";		
	otherwise:
		say "Holding your demontooth amulet tightly in your fist, you murmur the magic words Nermine told you. Swirling purple mist flows out of the demon fang's sharp tip, then solidifies in the musclebound figure of your captive demon brute. The humanoid beast has dark purple skin, a frightening face with slits for nostrils, yellow eyes with red irises, and sharp, intimidating teeth. Between his legs hangs a thick cock, flaccid for the time being. Behind that, his massive pair of balls dangle, swollen with cum. He also has a long, spade-tipped tail protruding from his body somewhere behind, which is constantly flicking back and forth. He wears nothing but a grim expression. With a growling voice, you hear the demon say 'Yes... master?'";	
	wait for any key;
		
to say demon brute talk:			
	say "     So what do you want to do now? You could mock him a bit [link](1)[as]1[end link], have sex with the demon [link](2)[as]2[end link], or just banish him back into the amulet [link](3)[as]3[end link]?";		
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to mock him, [link]2[end link] to have sex [link]3[end link] to banish him again.";
	if calcnumber is 1:               [mock]
		say "     You step up to the creature and run your hand over his bulging muscles, squeezing them, then pull up his arm and look at the long claws at the end of his fingers. 'So strong, such sharp claws - and nevertheless so helpless you are, little demon.' You pat the cheek of his snarling face and dangle your amulet in front of him. 'Not so powerful now, hm? Controlled by this little trinket. You're mine now.'";
		if companion of player is not demon brute:
			say "      To show him your power again, you murmur the magic words Nermine told you, banishing him back inside the amulet.";
	otherwise if calcnumber is 2:     [sex]
		wait for any key;
		say "[DemonBruteSexMenu]";
[	otherwise if calcnumber is 3:			[make him work - there could be some situations where a strong pet is useful]
		say "     You say 'I got a task for you, my pet...'";
		say "[DemonBruteWorkMenu]";																	]
	otherwise:                        [banish]	
		say "     You say 'I changed my mind. Back to your cage, little demon.' and dangle the amulet in front of his face and murmur the magic words Nermine told you. With a snarl, the demon brute turns into purple mist and is absorbed by the amulet.";
		if companion of player is demon brute:
			now companion of player is nullpet;
			

to say DemonBruteSexMenu:
	setmonster "Demon Brute";
	blank out the whole of table of fucking options;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your captured demon's mouth to good use.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Suck the demon brute's cock";
		now sortorder entry is 2;
		now description entry is "Suck him off.";
		now toggle entry is DemonBruteSex rule;		
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put your captured demon's mouth to good use.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus > 0):		
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 4;
		now description entry is "Finger-fuck your captured demon's pussy to make him cum.";
		now toggle entry is DemonBruteSex rule;		
	if (DemonBruteStatus > 0 and cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 5;
		now description entry is "Fill the your captured demon's pussy with your cock.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus < 2 and cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Ride your captured demon's thick cock.";
		now toggle entry is DemonBruteSex rule;
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take the demon brute's ass";
		now sortorder entry is 7;
		now description entry is "Fill your captured demon's ass with your cock.";
		now toggle entry is DemonBruteSex rule;
	if (DemonBruteStatus < 2):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your ass";
		now sortorder entry is 8;
		now description entry is "Ride the thick cock of your captured demon.";
		now toggle entry is DemonBruteSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the DemonBruteSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have him blow your cock"):
			say "[DemonBruteSex1]";
		if (nam is "Suck the demon brute's cock"):
			say "[DemonBruteSex2]";	
		otherwise if (nam is "Have him lick your pussy"):
			say "[DemonBruteSex3]";
		otherwise if (nam is "Finger his pussy"):
			say "[DemonBruteSex4]";
		otherwise if (nam is "Fuck his pussy"):
			say "[DemonBruteSex5]";
		otherwise if (nam is "Let him fuck your pussy"):
			say "[DemonBruteSex6]";		
		otherwise if (nam is "Take the demon brute's ass"):
			say "[DemonBruteSex7]";
		otherwise if (nam is "Let him fuck your ass"):
			say "[DemonBruteSex8]";
		wait for any key;

to say DemonBruteSex1:    [cock sucked by demon brute]
	if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
		say "     You smile at the demon and say 'I command you to please me - suck my cock - and no teeth!' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and push on his shoulders so he kneels down. Stroking your hard shaft, you hold it out for him and say 'Get to work.'";
		say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting his two massive hands on your hips. Bringing his long forked tongue to your crotch, he licks over your balls, then up the shaft of your cock before taking it into his mouth. Being willing - but not able - to harm you in any way, he takes great care to hold your member in his lips and keep it away from the sharp teeth filling his mouth. While he sucks you, his forked tongue plays over your shaft, stroking and teasing the most sensitive spots. Amazingly good at oral sex, this demon - if one can make him do it.";
		say "[WaitLineBreak]";
		say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, teasing your captive demon. A smile on your lips, you say 'Good job so far - for pleasing me, I'll allow you a bit more - you can touch my asshole with your cock too ...but only on the outside.' With a hungry growl, the demon swipes you off your feet, then lowers you to lie on your back with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your back door. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow breaking your commands. Finally he relents, venting his frustration by digging his claws into the ground left and right of your chest with a crunch, then starts rubbing up against your ass. The hot member of this infernal creature sliding over your skin, touching your pucker and - almost - pushing in, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum shooting from your cock to splat down on your chest.";
		say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to bring both hands to the infernal erection between your legs and jerking himself off. Quickly getting ready to cum, he pushes it in between your ass-cheeks, right against your pucker - and blows a hot burst of demonic seed right into you. The force of his spurts alone is enough to push open your iris and you can feel shot after shot jet deep into your body. A warm feeling begins to spread through your insides as the demon fills you with his seed. With the sheer amount he's shooting, quite a bit immediately leaks out of your chock-full ass and forms a puddle between your legs. [mimpregchance]";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise if DemonBruteStatus is 2:		[female]
		say "     You smile at the demon and say 'I command you to please me - suck my cock - and no teeth!' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and push on his shoulders so he kneels down. Stroking your hard shaft, you hold it out for him and say 'Get to work.'";
		say "     With an annoyed grumble at not being able to fuck you, the demon obeys, leaning forward and putting his two massive hands on your hips. Bringing his long forked tongue to your crotch, he licks over your balls, then up the shaft of your cock before taking it into his mouth. Being willing - but not able - to harm you in any way, he takes great care to hold your member in his lips and keep it away from the sharp teeth filling his mouth. While he sucks you, his forked tongue plays over your shaft, stroking and teasing the most sensitive spots. Amazingly good at oral sex, this demon - if one can make him do it.";
		say "[WaitLineBreak]";
		say "     Moaning deeply in your mounting arousal, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your arousal moves to a crescendo, a lustful groan accompanying long strings of cum you shoot down the demon's throat, directly into his stomach. As you stand there, holding the creature's head to your crotch and still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to move a massive hand to his own pussy, rubbing it and masturbating. Quickly getting himself ready, he throws his head back and roars in orgasm, quite a bit of femcum squirting out of his pussy to land on the ground and your lower legs.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex2:    [suck demon cock]
	if DemonBruteStatus is 0:							[male]
		say "     You smile at the demon and say 'I'm in the mood for some cock right now. Stand there while I suck you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and kneel down.";
		say "     Laying a hand on the creature's meaty shaft, you feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your pet's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
		say "[WaitLineBreak]";
		say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, it's time to... take it slow. A grin on your face, you pull back, only running a stroking finger slowly along the infernal beast's erection to keep him all boned up without allowing him to come. Keeping this up for a full ten minutes or so, you finally hear a growl from above - 'Get me off already... you little bitch!' Looking up, you can't suppress a chuckle at the demon's expression - a mixture of urgent need, pleading and pure loathing. 'Don't be crude, pet - you're mine to command. I can do anything I want...' With that, you flick one of his balls with a finger as punishment, making him twinge in discomfort, then softly stroke and caress the other. 'You decide how it shall be - I could leave you standing here for hours... or you could be nice.' The demon's face twitches as he fights to control himself, slowly smoothing out the scowl he was wearing. Hesitantly, he growls 'P- Please... Master. Get mE OFF. PLEASE!'";
		say "     Good enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. 'Quite a mess you made' you tell the demon, looking down at the sticky white fluid running down your whole front. 'Clean that up - with your tongue.'";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city, and tell the creature to resume guarding you.";	
		otherwise:		                            [back into the amulet]
			say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city, and intone the magic words to banish him again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";		
	otherwise if DemonBruteStatus is 1:		[herm]
		say "     You smile at the demon and say 'I'm in the mood for some cock right now. Stand there while I suck you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then step up to him and kneel down.";
		say "     Laying a hand on the creature's meaty shaft, you feel lots of small bumps under its skin, promising an incredible experience for anyone who can take this thick cock. It's pretty hot under your fingers too, but that's to be expected by a former denizen of hell. Stroking the demon's erection with both hands, you put your lips to the tip of it, licking up the gleaming drop of precum forming at his slit. Mmmh - tastes a bit nutty with an interesting spicy note. Holding up your pet's cock, you slowly run your tongue up its underside, making him moan and pant in rising lust. You take the head of his cock into your mouth, barely able to fit your lips around it, suckling on it and teasing it with your tongue. Sliding one hand down the demon's hot shaft, you weigh his massive balls in it, one after another. They're heavy and full, ready to send forth a deluge of cum.";
		say "[WaitLineBreak]";
		say "     With your captive demon's grunts becoming more urgent as you suck his cock and fondle his balls, it's time to... take it slow. A grin on your face, you pull back, only running a stroking finger slowly along the infernal beast's erection to keep him all boned up without allowing him to come. Keeping this up for a full ten minutes or so, you finally hear a growl from above - 'Get me off already... you little bitch!' Looking up, you can't suppress a chuckle at the demon's expression - a mixture of urgent need, pleading and pure loathing. 'Don't be crude, pet - you're mine to command. I can do anything I want...' With that, you flick one of his balls with a finger as punishment, making him twinge in discomfort, then softly stroke and caress the other. 'Or would you rather want some attention somewhere else?' With that, you slide your hand lower, finding the pussy you gave your demon slave and stroking over its sensitive lips before sinking two fingers inside. The creature doesn't quite manage to suppress a moan at the stimulation of its unwanted female parts. 'You decide how it shall be - I could leave you standing here for hours... or you could be nice.' The demon's face twitches as he fights to control himself, slowly smoothing out the scowl he was wearing. Hesitantly, he growls 'P- Please... Master. Get mE OFF. PLEASE!'";
		say "     Good enough. Setting both your hands on the thick demonic shaft, you stroke up and down its length and put your lips around its head again. Having been close to orgasm for some time now, it doesn't take long at all until your infernal servant reaches his climax with a loud roar and the first of many large bursts of cum shoots into your mouth and covers your tonsils. You do your best to swallow the flood of cum produced by the demon, but finally have to relent and pull back, further spurts splashing against your neck and chest. His pussy isn't far behind on the sheer amount of femcum it produces, squirting over you and dripping on the ground to produce a puddle. 'Quite a mess you made' you tell the demon, looking down at the sticky white fluid running down your whole front. 'Clean that up - with your tongue.'";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";	
		otherwise:		                            [back into the amulet]
			say "     After luxuriating a while in having the demon's forked tongue lick you all over, you put your thoughts back on other things - like surviving in this destroyed city - and intone the magic words to banish him again. Your obedient cum-fountain turns into a cloud of purple mist and vanishes into the amulet.";		
	otherwise if DemonBruteStatus is 2:		[female]
		say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex3:    [pussy licked by demon brute]
	if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
		say "     You smile at the demon and say 'I command you to please me - lick my pussy till I come.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then get down on on your back, spreading your legs invitingly. 'Get to work.'";
		say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
		say "[WaitLineBreak]";
		say "     Lying there on the ground, moaning deeply in your mounting arousal, you have an idea for even more fun, teasing your captive demon. A smile on your lips, you say 'Good job so far - for pleasing me, I'll allow you a bit more - you can touch my pussy with your cock too ...but only on the outside.' With a hungry growl, the demon is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your nether lips. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow breaking your commands. Finally he relents, venting his frustration by digging his claws into the ground left and right of your head with a crunch, then starts rubbing up against your crotch. The hot member of this infernal creature sliding over your skin, touching your pussy lips and - almost - parting them, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful scream marking your orgasm.";
		say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to bring both hands to the infernal erection between your legs and jerking himself off. Quickly getting himself ready, he pushes it in between your pussy lips - as far as he can - and blows a hot burst of demonic seed right into you. You can feel it shoot deep into your body, hitting your cervix, followed by another shot, and another until your vagina is filled up. Your captive demon keeps shooting several more spurts of cum into you, some of it seeping into your womb but most splashing out of your cunt again to form a puddle between your legs. [fimpregchance]";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off and creaming you. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise if DemonBruteStatus is 2:		[female]
		say "     You smile at the demon and say 'I command you to please me - lick my pussy till I come.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you slip your clothes off slowly to tease the demon a bit, then get down on on your back, spreading your legs invitingly. 'Get to work.'";
		say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
		say "[WaitLineBreak]";
		say "     Moaning deeply in your mounting arousal, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your arousal moves to a crescendo, a lustful scream marking your orgasm. As you lie on your back, still in the grip of the amazing feelings coursing through your body, the demon uses that moment of inattention to move a massive hand to his own pussy, rubbing it and masturbating. Quickly getting himself ready, the demon brute throws his head back and roars in orgasm, quite a bit of femcum squirting out of his pussy to land on the ground and your legs.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     As hot and riled up as you still are, you can't bring yourself to bother disciplining the demon for getting himself off without an order. Oh well - letting your head sink back to rest on the ground, you intone the magic words to banish him again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex4:    [finger his pussy]
	if DemonBruteStatus is 0:							[male]
		say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
	otherwise if DemonBruteStatus is 1:		[herm]
		say "     You smile at the demon and say 'I'm in a good mood right now, so I'll get you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'Ah, but it won't be through that thing. Let's train you to appreciate your female side a bit more...' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. And spread your legs a bit.'";
		say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Doesn't it feel good to have a pussy? Come on, don't lie' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Yes, master. It makes me feel... good.' A grin on your face, you intensify your efforts, fucking the demon with two, then three fingers moving in and out of him. To mix things up a bit, you bring your head down to his crotch too, nibbling on his clit and teasing it with your tongue.";
		say "     [WaitLineBreak]";		
		say "     Pleasing the demon with your mouth and fingers, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from him. Now his clawed right hand, which only the amulet's magic kept from taking your head off before, just rests on your head softly, pulling you a bit tighter and directing your efforts. Not soon afterwards, the demon brute actually has an orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "    Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise if DemonBruteStatus is 2:		[female]
		say "     You smile at the demon and say 'I'm in a good mood right now, so I'll get you off.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'Ah, but it won't be through that thing. Let's train you to appreciate your female side a bit more...' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. And spread your legs a bit.'";
		say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Doesn't it feel good to have a pussy? Come on, don't lie' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Yes, master. It makes me feel... good.' A grin on your face, you intensify your efforts, fucking the demon with two, then three fingers moving in and out of him. To mix things up a bit, you bring your head down to his crotch too, nibbling on his clit and teasing it with your tongue.";
		say "     [WaitLineBreak]";		
		say "     Pleasing the demon with your mouth and fingers, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from him. Now his clawed right hand, which only the amulet's magic kept from taking your head off before, just rests on your head softly, pulling you a bit tighter and directing your efforts. Not soon afterwards, the demon brute actually has an orgasm, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     Wiping your hand off against his leg, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like having a pussy after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum without touching his cock, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";		
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex5:    [fuck his pussy]
	if DemonBruteStatus is 0:							[male]
		say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a pussy! Please report how you got to this message.";
	otherwise if DemonBruteStatus is 1:		[herm]
		say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'I will be fucking YOU - not the other way around, if you thought that.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. I want to see your face when I slide into you.'";
		say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Say you want me in you!' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Please fuck me, master.' A grin on your face, you rub your cock against his, then guide it further down, stroking over his large balls to arrive at the herm demon's nether lips. Sliding the tip of your shaft up and down between them for a moment, you finally press in, sinking your shaft into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice hole. You're an amazing fucktoy.'";
		say "     [WaitLineBreak]";		
		say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, spreading his inner passages around your shaft. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
		say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you, spraying long ropes of cum all over himself from his cock and with femcum gushing out of his vagina. That lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a moment, secure in your dominance over the mighty creature.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, with both his thick shaft and the pussy. He splattered his upper body and face with seed and created a large puddle of femcum on the ground. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";	
	otherwise if DemonBruteStatus is 2:		[female]
		say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you say 'Of course, I will be the one fucking YOU.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'On your back, pet. I want to see your face when I slide into you.'";
		say "     With an annoyed grumble at his intended role, the demon obeys, lying down. The spade-tipped sticking out from under him unruly whips around, beating against the ground from time to time. Getting on your knees between his legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Sticking two fingers in between his pussy lips, you move them in and out and even manage to coax a moan from your captive demon. Then you pull your hand out and show it to him, his female juices dripping from your fingers. 'Looks like someone can't wait to get fucked. Say you want me in you!' Expressions of (futile) defiance and lust flash across the demon's face for a second, then his deep voice says 'Please fuck me, master.' A grin on your face, you rub the tip of your erection up and down over his nether lips, then press in between them, sinking your shaft into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice hole. You're an amazing fucktoy.'";
		say "     [WaitLineBreak]";		
		say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, spreading his inner passages around your shaft. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
		say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. It lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a moment, secure in your dominance over the mighty creature.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     Pulling out of him, a trickle of your white cum escapes his pussy, running down between his legs. You stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex6:    [player pussy fucked]
	if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
		say "     You smile at the demon and say 'I'll allow you a treat, my demon pet - you may fuck me.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. You slip your clothes of slowly to tease the demon a bit, then lie down on your back spread your legs invitingly. 'Eat me out first.'";
		say "     With an annoyed grumble at not being able to just fuck you, the demon obeys, leaning forward and putting two massive hands on your legs. Bringing his long forked tongue to your crotch, he licks over your sensitive pussy lips, then slips his forked tongue in between them. The wet appendage wiggles around, probing and teasing your insides passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
		say "[WaitLineBreak]";
		say "     With the musclebound creature eating you out, wiggling his tongue inside your vagina, you could almost just let him keep going like this... but no, it's time for the main event now. With a gasped 'Fuck me now!' you allow your pet to do what he wanted right from the start. With a hungry growl, the demon is on top of you in a second, his body covering yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your nether lips. You can see beads of sweat form on the demon's purple skin and the muscles below tighten and flex - but no matter how much he tries, the magic controlling him doesn't allow hurting you by just slamming inside with force as he wanted. Finally he relents, venting his frustration by digging his claws into the ground left and right of your head with a crunch, then start to slowly press forward. The hot member of your infernal servant spreads your pussy lips around it, then sinks deeper into your body, creating pleasant feelings as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take and you're thankful that he can't go faster. Finally he bottoms out inside you, his shaft buried all the way and his two large cum-factories resting against your skin. 'Wait!' you order the creature, panting deeply as you try to get used to having him inside you.";
		say "     A few minutes later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. This allows the creature to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if cocks of player > 0]and with a loud moan, your [cock of player] shaft sprays cum all over your chest.[otherwise if cunts of player > 0]and with a loud moan, you orgasm, femcum running down from your stretched cunt.[otherwise]and with a loud moan, your body shakes in orgasm.[end if] His duty at getting you off fulfilled, the constraints on the demon's libido fall away and he starts fucking you even harder to get himself off. Soon, he reaches his climax too - and with a deep, satisfied grunt, he begins to pump your bowels full of his infernal seed. With the head of his shaft pushing open your cervix, he easily fills your womb and vagina, with the remaining cum squirting out around the brute's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your stretched hole to create a white-ish pool under you. [fimpregchance]"; 
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Satisfied, you sink to the floor and tell your captive demon to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     Satisfied, you sink to the floor and moan the magic words to banish the demon again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise if DemonBruteStatus is 2:		[female]
		say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex7:    [fuck his ass]
	if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
		say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. Then you say 'I will be fucking YOU - not the other way around, if you thought that.' You slip your clothes of slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'Get on all fours now - and relax that ass of yours.'";
		say "     With an annoyed grumble at his intended role, the demon obeys, falling to his knees, then leaning forward to rest on all fours. His spade-tipped tail whips through the air unruly over a tightly muscled ass. Getting into position behind him, you grab him by the tail, pulling it up and stroking along its length a few times while aiming your erection at the demon's pucker. Then you're against his opening, pushing inward until it slowly spreads around your invading member and allows you to sink deeper into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice tight hole. Almost thought I'd cum before I even was fully in.'";
		say "     [WaitLineBreak]";		
		say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's ass again, your hips meeting his butt with a slap. 'How does it feel to be the bitch for once? My private little fuckhole.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, rubbing his prostrate in the process. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks back to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
		say "     Interestingly, the demon brute is the first one to cum from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be massive spurts of demon seed splat on the ground below. Also feeling his anal muscles twitch around your cock with each burst of the demon's cum, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really creamed the floor, creating a large puddle of sticky cum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really creamed the floor, creating a large puddle of sticky cum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";		
	otherwise if DemonBruteStatus is 2:		[female]
		say "     You smile at the demon and say 'Time for some good hard fucking.' Grinning, you watch the creature's hand move down to its crotch, as if to grab its cock. A snarl crosses the demon's face as he remembers that you took it from him - at that moment, only the binding spell of the amulet holds him back from throwing you to the ground. Secure in your power over him, you say 'Of course, I will be the one fucking YOU.' You slip your clothes off slowly to tease the demon a bit, even turning around and wiggling your ass invitingly, then order 'Get on all fours now - and relax that ass of yours.'";
		say "     With an annoyed grumble at his intended role, the demon obeys, falling to his knees, then leaning forward to rest on all fours. His spade-tipped tail whips through the air unruly over a tightly muscled ass. Getting into position behind him, you grab him by the tail, pulling it up and stroking along its length a few times while aiming your erection at the demon's pucker. Then you're against his opening, pushing inward until it slowly spreads around your invading member and allows you to sink deeper into his infernal depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and tell him 'Man, you've got such a nice tight hole. Almost thought I'd cum before I even was fully in.'";
		say "     [WaitLineBreak]";		
		say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's ass again, your hips meeting his butt with a slap. 'Like that, little bitch? You're my private little fuckhole - with your pussy and your ass.' Your demon slave digs the claws of his hands into the ground below and growls - although the growl gets interrupted by an involuntary moan as you slam into him again, rubbing his prostrate in the process. Fucking the demon with hard and deep strokes, you fill your captive with mixed feelings - lust and pleasure pushing aside his loathing at being dominated for now, so before long only moaning and panting can be heard from both of you. Soon he even rocks back to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
		say "     Interestingly, the demon brute is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be spurts of fluid hit the ground below. Also feeling his anal muscles twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your pet in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside your infernal servant as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling about grinding up your bones to himself. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and tell the creature to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     Pulling out of him, his dark purple pucker immediately closing tight to seal your cum inside, you stand up and have a look at your captive demon. Phew - he really cums out a lot, even as a female, creating a large puddle of femcum. 'Did someone like being fucked after all?' you tease him, and the demon's face turns into an interesting shade of purple before he shakes his head and starts mumbling to himself about grinding up your bones. Sorting away the delightful fact that you made your little demon cum from being fucked, you put your thoughts back on other things - like surviving in this destroyed city - and speak the magic words to banish the demon again. Your well-fucked pet turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

to say DemonBruteSex8:    [player ass fucked]
	if DemonBruteStatus is 0 or DemonBruteStatus is 1:							[male+herm]
		say "     You smile at the demon and say 'I'll allow you a treat, my demon pet - you may fuck my ass.' Grinning, you watch the creature's thick member fill out and come to full hardness, its muscles trembling - aching to just throw you down and rape you, but being held back by the binding spell of the amulet. You slip your clothes of slowly to tease the demon a bit, then get down on all fours and wave your ass invitingly at him. 'Eat me out first.'";
		say "     With an annoyed grumble at still not fucking you, the demon obeys, leaning forward and putting two massive hands on your cheeks, spreading them. Bringing his long forked tongue to your crack, he licks over your back door, then starts to push it against your pucker. The wet appendage slides inside you, probing and wiggling in your passage and causing you to moan in lust. Amazingly good at oral sex, this demon - if one can make him do it.";
		say "     [WaitLineBreak]";
		say "     With the musclebound creature eating you out, playing with your hole, you could almost just let him keep going like this... but no, it's time for the main event now. With a gasped 'Fuck me now!' you allow your pet to do what he wanted right from the start. Slapping your ass - just light enough not to leave marks (as hard as the binding spell allows), the brutish demon moves up behind you. You can feel the thick width of his erection hotly against your back for a moment, then he aims it lower and prods his massive member against your asshole. With the weight of this large creature behind it, the demon's shaft pushes into your body, spreading your pucker wide around its girth and slowly sinking further inside. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take and you're thankful that he can't go faster, as he's prohibited from really hurting you. Finally he bottoms out inside you, his shaft buried all the way and his two large cum-factories resting against your skin. 'Wait!' you order the creature, panting deeply as you try to get used to having him inside you.";
		say "     A few minutes later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, creating a very pleasurable feeling. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. This allows the creature to speed up his thrusts, going faster and faster, the slapping noises of his balls against your ass now coming in rapid succession. Soon, this drives your arousal over the edge [if cocks of player > 0]and with a loud moan, your [cock of player] shaft sprays cum all over the ground under you.[otherwise if cunts of player > 0]and with a loud moan, you orgasm and start dripping femcum on the ground under you.[otherwise]and with a loud moan, your body shakes in orgasm.[end if] Your anal passage twitching and contracting around the demon's shaft makes him reach his climax too - with a deep, satisfied grunt, he begins to pump your bowels full of his infernal seed. Easily filling your asshole and intestines, the remaining cum starts squirting out around the brute's thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your hole to create a white-ish pool under you. [mimpregchance]"; 
		say "     [line break]";
		if companion of player is demon brute:		[is the active pet]	
			say "     Satisfied, you sink to the floor and tell your captive demon to resume guarding you.";		
		otherwise:		                            [back into the amulet]
			say "     Satisfied, you sink to the floor and moan the magic words to banish the demon again. Your well-hung fucker turns into a cloud of purple mist and vanishes into the amulet.";
	otherwise if DemonBruteStatus is 2:		[female]
		say "ERROR-Demon Brute-[DemonBruteStatus]D: He shouldn't have a cock right now! Please report how you got to this message.";
	otherwise:
		say "ERROR-Demon Brute-[DemonBruteStatus]C: He isn't in one of the states he should be in! Please report how you got to this message.";

Section 3 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Demon Brute";
	add {"Demon Brute"} to infections of hellspawn;
	now attack entry is "The brute [one of]throws a powerful punch[or]swings a great fist[or]begins to kick wildly with powerful legs[at random].";
	now defeated entry is "[demon brute loses]"; [ Text or say command used when Monster is defeated.]
	now victory entry is  "[demon brute wins]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.] 
	now desc entry is "[demonbrutedesc]";[ Description of the creature when you encounter it.]
	now face entry is "very inhuman, with a pair of slits for nostrils, sharp teeth, and yellow eyes with red slitted pupils. The top of your head is crowned by three matching pairs of horns, curved and getting smaller front to back";[ Face description, format as the text "Your face is (your text)"] 
	now body entry is "now large and muscle-bound, any body-builder would be proud to have it";[ Body Description, format as the text "Your Body is (your text)"] 
	now skin entry is "a deep shade of purple as the color of your";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a long demon tail that sways back and forth behind you, equipped with a spaded tip and everything!";
	now cock entry is "[one of]demonic[or]demon[or]infernal[or]bump-ridden[at random]";
	now face change entry is "you begin to feel your skull reshaping under your skin. Your nose disappears, leaving a pair of slits. A strange feeling in your mouth heralds your teeth changing, sharpening and becoming longer to give you a monstrous smile. Finally three pairs of horns grow out of the top of your head, with the front pair the largest, the others getting smaller towards the back. Even your eyes have changed, the white parts now yellow and around red, slitted pupils."; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "your arms and legs begin to grow longer and more muscular. Your chest widens as well.";
	now skin change entry is "you begin to feel a strange burning sensation. You look down, and realize that your skin has turned a deep shade of purple!";
	now ass change entry is "you feel it becoming tighter, leaner, and more fit.  This is followed by a strange feeling at the base of your spine, and then there is a very strange, and painful, burning sensation, as if your flesh is boiling and liquefying.  The pain lasts for some time, but, when it finally subsides, you can feel your new, long demon tail sway back and forth behind you, equipped with a spaded tip and everything"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it begins to grow thicker, large bumps sprouting up all across its surface. At first, you think it is some sort of strange disease, but, then you realize that this entire thing is some sort of disease";
	now str entry is 20;
	now dex entry is 8;
	now sta entry is 14;					
	now per entry is 5;
	now int entry is 3;
	now cha entry is 0;
	now sex entry is "Male"; 	
	now hp entry is 50;			
	now lev entry is 4;			 
	now wdam entry is 9;			
	now area entry is "Mall";
	now cocks entry is 1;			
	now cock length entry is 18;		
	now cock width entry is 8;    
	now breasts entry is 0;     
	now breast size entry is 0;   
	now male breast size entry is 0;  
	now cunts entry is 0;     
	now cunt length entry is 0;   
	now cunt width entry is 0;    
	now libido entry is 45;     
	now loot entry is "demon seed";       [ Loot monster drops, ]
	now lootchance entry is 50;           [ Chance of loot dropping 0-100 ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 4;                 [ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]muscular[or]powerful[at random]";
	now type entry is "demonic";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is true;              [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;         [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;    [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "demonbrute";  [ Row used to designate any special combat features, "default" for standard combat. ]
			
Table of Game Objects(continued)
name	desc	weight	object
"demon seed"	"The white, gooey seed of one of your past demonic lovers. It smells very sweet, and is still warm."	1	demon seed

demon seed is a grab object.

demon seed is infectious. The strain of demon seed is "Demon Brute".

the usedesc of demon seed is "The warm, sticky liquid tastes sweet as you drink it.";

instead of sniffing demon seed:
	say "The demonic semen smells cloyingly sweet.";

Section 4 - Alt Combat

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"demonbrute"	retaliation rule	brfoinc rule	--	bruteforce rule	10	--	--	--	--	--

this is the brfoinc rule:   [increasing likelihood of bruteforce attack]
	choose row monstercom from the table of critter combat;
	increase alt1chance entry by a random number between 1 and 5;
	if alt1chance entry > 40, now alt1chance entry is 40;

this is the bruteforce rule:
	choose row monstercom from the table of critter combat;
	now alt1chance entry is 0;
	choose row monster from the table of random critters;
	let rangenum be ( 80 - ( peppereyes * 4 ) );
	let dam be ( ( wdam entry times a random number from rangenum to 120 ) / 50 );	[double damage]
	if hardmode is true and a random chance of 1 in ( 10 + peppereyes ) succeeds:
		now dam is (dam * 150) divided by 100;
		say "The enemy finds a particular vulnerability in your defense - Critical Hit![line break]";
	say "[one of]The demonic creature[or]The [name entry][or]Your enemy[or]The demon[purely at random] growls and charges you, pinning you against a wall briefly.  It leans its strong, heavy body against yours and punches you several times in the [one of]gut[or]side[or]solar plexus[or]sternum[or]breadbasket[purely at random].  It then tosses you aside roughly with another growl, sending you tumbling.  You suffer [special-style-2][dam][roman type] damage!";
	now damagein is dam;
	say "[noshieldabsorbancy]";   [unable to use shield while pinned]
	if absorb is greater than dam:
		now absorb is dam;
	if absorb is greater than 0:
		say "You prevent [special-style-1][absorb][roman type] damage!";
	decrease hp of the player by dam;
	increase hp of player by absorb;
	follow the player injury rule;
	say "You are [descr].";

instead of sniffing the demon brute:
	say "     Your captive demon brute smells of ash, sulfur and brimstone.";

Section 5 - Endings

when play ends:
	if bodyname of player is "demon brute":
		if humanity of player is less than 10:
			say "You find yourself overcome with lust, your balls simply aching, ready to burst. You need to find some relief, and soon! You go on a proper rampage, pushing over small trees and walls, and smashing in windows, and generally wreaking havoc. You eventually spot what you want, a woman in her prime. She is a [one of]human-feline mix, with large cat-ears, a tail, and beautiful black fur[or]husky-human mix, with soft white and grey fur and a puffy white-grey tail[at random]. You seize her, and, without much resistance on her part, are able to gain control. You tear her clothes away, revealing her naked, furry body. She seems too overcome with lust to worry about the size of your cock. But, then again, you aren't the only one with a large tool, and you aren't the first to rut with this girl. She wraps her arms and legs around your large body, her wet sex exposed and moistening, ready for your massive meat. You thrust into her without hesitating, and before long the both of you are moaning and grunting two lust-filled monsters mating like the animals they have become. During the ordeal, the girl climaxes several times, each time becoming more intense than the last. You can feel that you are approaching your climax as well, and your grunts become more frequent. Then, as she is hit by her most powerful orgasm yet, her tight sex squeezes your big meat, enough to push you ever the edge. You begin to come, shooting your seed up inside your new bitch. She pants and moans as your cum fills her womb, causing it to swell to a great size. Massive quantities of cum spill out onto the ground beneath your feet, and a constant stream of it is leaking out around your cock. You realize that this ordeal was too much for the girl, and that she has passed out. Since you really enjoyed your time with this girl, you decide to hold onto her as you disappear back to your den, that safe-room you started your journey in. You set up the cot, and then lay her down on it, her pussy still leaking fluid. Months of wild mating later, and she is heavily pregnant with your brood, which gives you the utmost satisfaction.";
		otherwise:
			say "You are eventually found by a rather strange man, leading a group of explorers through the city. He walks up to you, and holds out his hand. He introduces himself as a adult film producer with a special request. He says that you would make the perfect monster to fill the part of the evil demon-lord in a live-action version of a hentai anime series he has decided to produce. He offers you asylum, a mountain estate away from the peering eyes of society, and a large sum of money. How could you possibly turn that kind of an offer down? The series becomes [one of]a great success, with millions flowing in from frenzied fans. You become a hero to many hentai fans, and you can use all the fangirls you want..[or]a controversial work which ends up getting banned in several countries. The money soon dries up, and you are forced to move out, eventually joining a circus.[at random]";
[	if demon brute is tamed:
		if DemonBruteStatus is 0:            
			say "A";
		otherwise if DemonBruteStatus is 1:  
			say "B";
		otherwise if DemonBruteStatus is 2:
			say "C";  ]

Demon Brute For FS ends here.