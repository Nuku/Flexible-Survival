Version 1 of Orc Lair by Wahn begins here.
[Version 1 - orc infections split off into new file]

Section 1 - Events

[ Note: the three orcs are called Mul, Koghh and Yatur ]
[ SlaveRaidEncounters                                  ]
[  0: none yet                                         ]
[  1: first encounter done - fox freed                 ]
[  2: first encounter done - fox enslaved              ]

[ OrcSlaverStatus                                      ]
[  0: not met                                          ]
[  1: player freshly caught                            ]
[  2: player escaped without sex                       ]
[  3: player escaped after sex                         ]
[ 50: player fought em off                             ]

[ Koghhstatus                                          ]
[  0: player hasn't seen him enjoying anal sex before  ]
[  1: player has fingered him                          ]
[  2: player has fucked him                            ]

SlaveRaidEncounters is a number that varies.
OrcSlaverStatus is a number that varies. OrcSlaverStatus is usually 0.
OrcSlaverCaptureTime is a number that varies. 
Koghhstatus is a number that varies.

Orcish Slave Raid is a situation.
The sarea of Orcish Slave Raid is "Warehouse".
when play begins:
	add Orcish Slave Raid to badspots of guy;       [male orcs]

Instead of resolving a Orcish Slave Raid:
	if SlaveRaidEncounters is 0:   [first time]
		say "     Walking along a street between some warehouses, you suddenly hear claws scratching on asphalt and shouting voices from an alley ahead. Just a few seconds later, a panicky looking anthro fox guy comes dashing into view, head turned to look over his shoulder - which means he isn't looking where he's going and collides with you at full speed, spilling the two of you onto the ground. Directly behind him, a trio of very muscular men come out of the alley - tall and green as they are, dressed only in loincloths, there's no doubt that they're orcs. [if OrcSlaverStatus is 3]And orcs you know at that - Mul, Yatur and Koghh, the orc slavers that you had a run-in with before. [otherwise]From the relatively similar looks, they might be brothers. [end if]One of them grabs the fallen would-be escapee by the neck and lifts him off the ground, then smiles around his sharp tusks and nods towards you. [if OrcSlaverStatus is 0]'Look, our little runner got us an extra treat' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [else if OrcSlaverStatus is 2]'Look, it's the little bitch that escaped from the lair. What nice coincidence that our runner led us here' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [else if OrcSlaverStatus is 3]'Look, it's our runaway breeder. Come on little bitch, we'll bring you back home and give you what you really need.' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [else if OrcSlaverStatus is 50]'This time, you're going down. We'll make a breeder out of you yet.' he grunts, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [end if]You barely have time to get up and take a combat stance before the other two orcs are upon you...";
		say "     [line break]";
		now inasituation is true;
		now OrcSpecialFightNumber is 4; [fighting Yatur]
		challenge "Orc Warrior";
		if fightoutcome is 22:
			say "[SubmitToOrcSlavers]";
		else if fightoutcome >= 20 and fightoutcome <= 29:      [lost]
			say "[LoseToOrcSlavers]";
		else if fightoutcome >= 30:     [fled]
			say "[RunFromOrcSlavers]";
		else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
			say "     After a last hit on the orc, his muscled form collapses at your feet. But there's not even a moment to catch your breath as the second brute snarls and attacks you right away.";
			say "     [line break]";
			now inasituation is true;
			now OrcSpecialFightNumber is 6; [fighting Mul]
			challenge "Orc Warrior";
			if fightoutcome is 22:
				say "[SubmitToOrcSlavers]";
			else if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
				say "[LoseToOrcSlavers]";
			else if fightoutcome >= 30:     [fled]
				say "[RunFromOrcSlavers]";
			else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
				if bodyname of player is "Orc Warrior" and player is pure and cocks of player > 0:
					say "     Two down, one to go. Though as you step up to the third orc, he raises his hands consolingly. 'Wait a minute! Seems like we underestimated you and you're a real orc after all...' He pulls the bundled-up fox to his side, then says 'Look, how about you stop beating up my brothers and have some fun with this little bitch instead? Freshly caught - you'd be the first one to break him in.'";
					say "     [line break]";
					say "     [bold type]Do you accept and fuck the helpless captive right then and there, then allow them to take him away afterwards?[roman type][line break]";
					if player consents:
						say "     Baring your tusks in a wide grin, you nod to the orc and step up to him, inspecting the anthro fox as he's unwrapped for you. He's a handsome guy with silky red fur and a lithe, shapely body - the sight of which makes your manhood fill out and get hard. Meanwhile, the two downed orcs get up, growling at you but nevertheless accepting the deal their brother made. They move a few steps up and down the street to lean against the walls there, making sure that there's no possibility of their quarry escaping again.";
						say "     With the last ropes falling off the red fox, you can see the muscles in his legs tense. He casually looks over his shoulder and down the street, searching for a way to escape, though with the other orcs standing ready to cut him off, there's no chance that he could make it. His shoulders slump a bit as he admits that to himself, then he looks at you, gulping as he sees the hard length of your orcish cock. You step up to him and run a hand over his soft-furred body, then grip his shoulder in a light, but secure hold and push him to his knees.";
						WaitLineBreak;
						say "     Presented with your thick, green shaft, the fox at first gives it a hesitant lick, then starts to lap at it and your balls. Soon, a first bead of pre-cum forms at its tip, and as the slave licks that up, his eyes go wide at its pleasant taste. He immediately starts to concentrate on the tip of your cock, playing his tongue over it to get more. It doesn't take long till the intoxicating and addictive effects make him forget all about wanting to get away, instead starting to go down on you with actual eagerness, your manhood in his long muzzle as he gives you a blowjob.";
						say "     Even though your little fox is clearly new to giving pleasure to men with his mouth, his enthusiasm makes up for quite a bit of that, and the urge to cum soon starts to rise inside you. You're tempted to just let him get you off like this and feed him a big load of orc cum that will seal his fate as a breeder... but no, you've got the right to take his virginity, so that is what you will do. Pulling your eager little fox off your shaft, you bodily pick him up, holding him tight against your chest with both hands on his firm buttcheeks. The cum-drunk slave wraps his legs around your hips as you do so, yipping in excitement as your hard cock rubs against his ass.";
						WaitLineBreak;
						say "     Bringing a hand up to the fox's mouth so he can suck on its fingers, you then use your wet index finger to gently poke and prod at his hole, carefully working it in to stretch his pucker. You finger him for quite a while to get him ready, gently at first, then faster and faster. Given how new he is to such sensations, it doesn't surprise you that the fox trembles in lust each time you rub his prostrate, going so far as to even suddenly cum from that, his pointed canine cock spraying cum all over your chest.";
						say "     Well, that's certainly an unmistakable sign that he's ready for some anal fun. Eager to finally take the fox, you scoop up his cum from your chest and smear it on your cock to use as lube, then line your manhood up with his hole. Your foxy slave pants loudly as you rub the tip of your cock over his rear entrance, then gives a little gasp and wince as you push in, stretching his opening wide around your cock. It's good that you took your time preparing him, as even now it's a slow process to sink your manhood deeper into his tightly gripping passage...";
						WaitLineBreak;
						say "     Some time later, the last inch of your meaty cock finally sinks in all the way inside the fox and you can feel his furry butt against your balls. You give him what time he needs to get used to the invading member, just holding him tightly and reveling in the vice-like tightness of his asshole. Then, after a minute or two, your little fox moans 'Fuck me' and starts to rock against your chest, sliding himself up and down your shaft. The sensations of a submissive male fucking himself on your manhood finally causes your orcish nature to take over, effortlessly making you forget all restraint that you still had.";
						say "     With a deep, lusty grunt, you pull him up and off your cock, then pound its whole length back inside him with one mighty thrust. And you just keep going like that, fucking the fox hard and deep, creating slapping noises as his ass hits your hips. This is how real men fuck - or rather real orcs - and you can just feel how right it is to pull out all the stops. The sensations of your thrusts make your breeder fucktoy moan and howl in lust, conscious thought pushed aside completely by your shaft deep inside him. Having already enjoyed a very nice blowjob from the fox, it doesn't take all that much longer till you reach the limits of your endurance and orgasm, burying your shaft deep in the slave's ass as you pump blast after blast of cum into him. Being filled with your orcish seed, the potent load being absorbed by his body and changing it, you just know that you just knocked up this male fox.";
						WaitLineBreak;
						say "     Your inner orc tells you that you should just keep the well-bred fox for yourself, as a start of a whole harem of men to fuck, though you realize that that's not an option as you contemplate it for a second. By now, the three other orcs are rested again, and you're also a bit tired from just having come, so a fight is far less certain. So with a sigh, you surrender the handsome fox back to the three slavers, then watch his limp, exhausted form being carried off over the leader's shoulder. His shapely ass and cum-dripping hole is the last you see of the fox before the orcs turn a corner and move out of sight.";
						move Val to Slave Cell 1;
						now ValPregCounter is 48;
						now thirst of Val is 2;
						now SlaveRaidEncounters is 2;
					else:
						say "     [bold type]Do you want to beat the third orc up too instead ([link]Y[as]y[end link]), or maybe demand ownership of the slave and let him go after the other orcs are gone ([link]N[as]n[end link])?[roman type][line break]";
						if player consents:
							say "     Two down, one to go. The third orc stops tying up his captive and comes at you with balled fists.";
							say "     [line break]";
							now inasituation is true;
							now OrcSpecialFightNumber is 5; [fighting Koghh]
							challenge "Orc Warrior";
							if fightoutcome is 22:
								say "[SubmitToOrcSlavers]";
							else if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
								say "[LoseToOrcSlavers]";
							else if fightoutcome >= 30:     [fled]
								say "[RunFromOrcSlavers]";
							else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
								say "     Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Looking around, you see the guy who got you into this whole mess just wiggling out of the last coil of rope the orc put around him, then stare at you and the beaten orcs. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
								say "     [line break]";
								say "     [bold type]Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them ([link]Y[as]y[end link]), or do you just leave ([link]N[as]n[end link])?[roman type][line break]";
								if player consents:
									say "     [line break]";
									say "     [BeatenOrcSexMenu]";
								else:
									say "     [line break]";
									say "     You walk away after checking them over for loot.";
							now SlaveRaidEncounters is 1;
						else:
							say "     Baring your tusks, you growl at him, demanding ownership of the slave - after all they wouldn't have caught him without him running into you. The orc slaver doesn't like to hear that at all and you can see his fist clenching, so you poke your foot against the bruised side of one of the fallen orcs, making him wince. That reminder of you already having won out against his two siblings makes the orc finally relent with a snarl, and he shoves the tied slave in your direction, to stumble and sprawl at your feet. Quickly leaning down to grab him, you throw the fox over your shoulder and walk away, leaving the three orcs behind.";
							say "     After moving a comfortable number of city blocks away, you step into a side alley that's nicely out of view from any roaming creatures and set the bundled-up fox down. He looks wide-eyed at you, trembling at what might come next, only relaxing a tiny bit when you say that you want to free him. Undoing several knots, you loosen the ropes around him. The fox stands still as you continue to unwrap him - then suddenly he wiggles out of the last coils and jumps out of your reach. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
							say "     [line break]";
							say "     Oh well, that was a bit anticlimactic. But then, good deeds are their own reward and at least he thanked you. With a shrug, you get back to worrying about your own survival in the city.";
							now SlaveRaidEncounters is 1;
				else:
					say "     Two down, one to go. The third orc stops tying up his captive and comes at you with balled fists.";
					say "     [line break]";
					now inasituation is true;
					now OrcSpecialFightNumber is 5; [fighting Koghh]
					challenge "Orc Warrior";
					if fightoutcome is 22:
						say "[SubmitToOrcSlavers]";
					else if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
						say "[LoseToOrcSlavers]";
					else if fightoutcome >= 30:     [fled]
						say "[RunFromOrcSlavers]";
					else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
						now battleground is "void";[blocks a random fight after this]
						say "     Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Looking around, you see the guy who got you into this whole mess just wiggling out of the last coil of rope the orc put around him, then stare at you and the beaten orcs. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
						say "     [line break]";
						say "     [bold type]Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them ([link]Y[as]y[end link]), or do you just leave ([link]N[as]n[end link])?[roman type][line break]";
						if player consents:
							say "     [line break]";
							say "     [BeatenOrcSexMenu]";
						else:
							say "     [line break]";
							say "     You walk away after checking them over for loot.";
						now SlaveRaidEncounters is 1;
	else:   [repeat encounters without the fox]
		say "     Walking along a street between some warehouses, you suddenly hear deep voices talking to each other somewhere nearby. You overhear 'Where are all those little weaklings? I wanna fuck!', followed by another voice answering 'Don't shout, brother. You'll drive em off. I'm sure we'll find someone soon.' And with that, a trio of very muscular men step out of an alley just ahead of you - tall and green as they are, dressed only in loincloths, there's no doubt that they're orcs. [if OrcSlaverStatus is 3]And orcs you know at that - Mul, Yatur and Koghh, the orc slavers that you had a run-in with before. [otherwise]From the relatively similar looks, they might be brothers. [end if]One of them gives you an appraising look, then smiles around his sharp tusks. [if OrcSlaverStatus is 0]'See, told ya!' he chuckles, prompting his siblings to rush at you. [else if OrcSlaverStatus is 2]'Look, it's the little bitch that escaped from the lair. What nice coincidence' he chuckles, prompting his siblings to rush at you. [else if OrcSlaverStatus is 3]'Look, it's our runaway breeder. Come on little bitch, we'll bring you back home and give you what you really need.' he chuckles, prompting his siblings to rush at you. [else if OrcSlaverStatus is 50]'Oh, that bastard again. This time, you're going down. We'll make a breeder out of you yet.' he grunts, prompting his siblings to rush at you. [end if]They're quick for such big and muscular brutes, barely giving you time to taking on a combat stance before they're upon you...";
		say "     [line break]";
		now inasituation is true;
		now OrcSpecialFightNumber is 6; [fighting Yatur]
		challenge "Orc Warrior";
		if fightoutcome is 22:
			say "[SubmitToOrcSlavers]";
		else if fightoutcome >= 20 and fightoutcome <= 29:      [lost]
			say "[LoseToOrcSlavers]";
		else if fightoutcome >= 30:     [fled]
			say "[RunFromOrcSlavers]";
		else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
			say "     After a last hit on the orc, his muscled form collapses at your feet. But there's not even a moment to catch your breath as the second brute snarls and attacks you right away.";
			say "     [line break]";
			now inasituation is true;
			now OrcSpecialFightNumber is 6; [fighting Mul]
			challenge "Orc Warrior";
			if fightoutcome is 22:
				say "[SubmitToOrcSlavers]";
			else if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
				say "[LoseToOrcSlavers]";
			else if fightoutcome >= 30:     [fled]
				say "[RunFromOrcSlavers]";
			else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
				say "     Two down, one to go. The third orc stops rushes in to help his brothers and comes at you with balled fists.";
				say "     [line break]";
				now inasituation is true;
				now OrcSpecialFightNumber is 5; [fighting Koghh]
				challenge "Orc Warrior";
				if fightoutcome is 22:
					say "[SubmitToOrcSlavers]";
				else if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
					say "[LoseToOrcSlavers]";
				else if fightoutcome >= 30:     [fled]
					say "[RunFromOrcSlavers]";
				else if fightoutcome >= 10 and fightoutcome <= 19:     [won]
					now battleground is "void";[blocks a random fight after this]
					say "     [bold type]Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them ([link]Y[as]y[end link]), or do you just leave ([link]N[as]n[end link])?[roman type][line break]";
					if player consents:
						say "     [line break]";
						say "     [BeatenOrcSexMenu]";
					else:
						say "     [line break]";
						say "     You walk away after checking them over for loot.";
	now inasituation is false;

to say RunFromOrcSlavers:
	say "     Sometimes escape is the best - or only - option. Running as fast as you can, you flee and manage to make em lose sight of you after a short while. As you stand around a corner and pant heavily to catch your breath, you can hear them talk in their gruff voices. 'Bah - forget it, we lost [if cocks of player is 0 and cunts of player > 0]her[otherwise]him[end if].' 'Fine, let's get back to the other one then - though he'll be pretty sore and stretched out by the time we're done taking turns!' Their voices get quieter as they move away from you, making the last thing you hear 'Who cares? That's what breeders are for! He'll get used to it...'";
	move Val to Slave Cell 1;
	now ValPregCounter is 48;
	now thirst of Val is 1;

to say SubmitToOrcSlavers:
	if SlaveRaidEncounters is 0:   [first time]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:
				say "     [bold type]WRITER'S NOTE: Since you've selected [']Dominant['] as a feat, you won't be automatically dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.[roman type][line break]";
				say "     ([link]Y[as]y[end link]) - Fuck no! I wanna get in there anyways! I'll take the risk of ending as a fucktoy!";
				say "     ([link]N[as]n[end link]) - Okay, thanks for looking out for me. I wanna get out of here, now please!";
				if player consents:
					say "[SubmitToOrcRaid]";
				else:
					say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
					move Val to Slave Cell 1;
					now ValPregCounter is 48;
					now thirst of Val is 1;
					now SlaveRaidEncounters is 2;
			else: 
				say "[SubmitToOrcRaid]";
		else:
			say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' His buddy steps up and gives your ass a rough squeeze. 'Maybe you're right, Yatur - let's leave this wretched thing and just enjoy the other one.' With that, they unceremoniously push you to the ground and leave, carrying their captive with them.";
			say "     [line break]";
			say "     [bold type]WRITER'S NOTE: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex. It's all man on man action in there! Should you want to play through this content nevertheless, adjust your anal settings and hunt for the event again.[roman type]";
			move Val to Slave Cell 1;
			now ValPregCounter is 48;
			now thirst of Val is 1;
			now SlaveRaidEncounters is 2;
	else:   [repeats]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:  
				say "     [bold type]WRITER'S NOTE: Since you've selected [']Dominant['] as a feat, you won't be automatically dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.[roman type][line break]";
				say "     ([link]Y[as]y[end link]) - Fuck no! I wanna get in there anyways! I'll take the risk of ending as a fucktoy!";
				say "     ([link]N[as]n[end link]) - Okay, thanks for looking out for me. I wanna get out of here, now please!";
				if player consents:
					say "[SubmitToOrcRaidRepeat]";
				else:
					say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and hunt down another one,' and they unceremoniously turn around and leave.";
			else: 
				say "[SubmitToOrcRaidRepeat]";
		else:
			say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' His buddy steps up and gives your ass a rough squeeze. 'Maybe you're right, Yatur - let's leave this wretched thing and hunt down a better slave.' With that, they unceremoniously push you to the ground and leave.";
			say "     [line break]";
			say "     Note: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex. It's all man on man action in there! Should you want to play through this content nevertheless, adjust your anal settings and hunt for the event again.[roman type]";
			
to say SubmitToOrcRaid:
	say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' [else if OrcSlaverStatus is 3]'Hm, did we already fuck all the will out of this one? Maybe it was too meek in the first place after all.' [otherwise]'Hm, this one looks a bit meek and weak. Doesn't even struggle to get away.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Bah, you worry too much, Yatur - orc seed is strong! [if cocks of player is 0 and cunts of player > 0]She'll[otherwise]He'll[end if] make a good enough breeder.' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
	say "     At one point of the trip, you're put down for a while as the orcs stop to have some fun with their other slave, taking turns in fucking the poor guy. You do your best to wiggle out of the ropes while they're distracted, but don't have any success before the slavers fill the fox with their seed and continue on. Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back for you.'";
	say "     [line break]";
	say "     With that, the orcs walk out of your cell, throwing the door closed as they walk off. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape. ";
	say "     [line break]";
	if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
		now OrcSlaverStatus is 1;
	now battleground is "void";[blocks a random fight after this]
	move player to Slave Cell 2;
	now OrcSlaverCaptureTime is turns;
	move Val to Slave Cell 1;
	now ValPregCounter is 48;
	now thirst of Val is 1;
	now SlaveRaidEncounters is 2;

to say SubmitToOrcRaidRepeat:
	say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' [else if OrcSlaverStatus is 3]'Hm, did we already fuck all the will out of this one? Maybe it was too meek in the first place after all.' [otherwise]'Hm, this one looks a bit meek and weak. Doesn't even struggle to get away.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Bah, you worry too much, Yatur - orc seed is strong! [if cocks of player is 0 and cunts of player > 0]She'll[otherwise]He'll[end if] make a good enough breeder.' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, who gives you lusty looks that promise a hard fucking coming in your future, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
	say "     Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back for you.'";
	say "     [line break]";
	say "     With that, the orcs walk out of your cell, throwing the door closed as they walk off. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape. ";
	say "     [line break]";
	if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
		now OrcSlaverStatus is 1;
	now battleground is "void";[blocks a random fight after this]
	move player to Slave Cell 2;
	now OrcSlaverCaptureTime is turns;

to say LoseToOrcSlavers:
	if SlaveRaidEncounters is 0:   [first time]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:
				say "     [bold type]WRITER'S NOTE: Since you've selected [']Dominant['] as a feat, you won't be automatically dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.[roman type][line break]";
				say "     ([link]Y[as]y[end link]) - Fuck no! I wanna get in there anyways! I'll take the risk of ending as a fucktoy!";
				say "     ([link]N[as]n[end link]) - Okay, thanks for looking out for me. I wanna get out of here, now please!";
				if player consents:
					say "[LoseToOrcRaid]";
				else:
					say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
					move Val to Slave Cell 1;
					now ValPregCounter is 48;
					now thirst of Val is 1;
					now SlaveRaidEncounters is 2;
			else: 
				say "[LoseToOrcRaid]";
		else:
			say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
			say "     [line break]";
			say "     [bold type]WRITER'S NOTE: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex. It's all man on man action in there! Should you want to play through this content nevertheless, adjust your anal settings and hunt for the event again.[roman type]";
			move Val to Slave Cell 1;
			now ValPregCounter is 48;
			now thirst of Val is 1;
			now SlaveRaidEncounters is 2;
	else:  [repeats]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:
				say "     [bold type]WRITER'S NOTE: Since you've selected [']Dominant['] as a feat, you won't be automatically dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.[roman type][line break]";
				say "     ([link]Y[as]y[end link]) - Fuck no! I wanna get in there anyways! I'll take the risk of ending as a fucktoy!";
				say "     ([link]N[as]n[end link]) - Okay, thanks for looking out for me. I wanna get out of here, now please!";
				if player consents:
					say "[LoseToOrcRaidRepeat]";
				else:
					say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and hunt down another one,' and they unceremoniously turn around and leave.";
			else: 
				say "[LoseToOrcRaidRepeat]";
		else:
			say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and hunt down another one,' and they unceremoniously turn around and leave.";
			say "     [line break]";
			say "     [bold type]WRITER'S NOTE: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex. It's all man on man action in there! Should you want to play through this content nevertheless, adjust your anal settings and hunt for the event again.[roman type]";

to say LoseToOrcRaid:
	say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. [if OrcSlaverStatus is 3]Even after being broken in, you're still struggling -you'll bear strong sons.' [otherwise]Try to keep some of it when you become a breeder.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Nice - I bet there'll be fights who gets to fuck that after we've had our fun with you!' With that said, they tie you up and carry you off, lugged over an orc's shoulder.";
	say "     In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you. At one point of the trip, you're put down for a while as the orcs stop to have some fun with their other slave, taking turns in fucking the poor guy. Surprisingly, he starts to beg for more at some point during his ordeal. Seems like he's quickly gotten a taste for being shafted by thick green cocks. Meanwhile, you do your best to wiggle out of the ropes while they're distracted, but don't have any success before the slavers fill the fox with their seed and continue on.";
	WaitLineBreak;
	say "     Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back.'";
	say "     [line break]";
	say "     With that, the orcs walk out of your cell, throwing the door closed as they move down the hallway. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape.";
	say "     [line break]";
	if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
		now OrcSlaverStatus is 1;
	now battleground is "void";[blocks a random fight after this]
	move player to Slave Cell 2;
	now OrcSlaverCaptureTime is turns;
	move Val to Slave Cell 1;
	now ValPregCounter is 48;
	now thirst of Val is 1;
	now SlaveRaidEncounters is 2;

to say LoseToOrcRaidRepeat:
	say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. [if OrcSlaverStatus is 3]Even after being broken in, you're still struggling -you'll bear strong sons.' [otherwise]Try to keep some of it when you become a breeder.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Nice - I bet there'll be fights who gets to fuck that after we've had our fun with you!' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, who gives you lusty looks that promise a hard fucking coming in your future, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
	say "     Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back.'";
	say "     [line break]";
	say "     With that, the orcs walk out of your cell, throwing the door closed as they move down the hallway. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape.";
	say "     [line break]";
	if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
		now OrcSlaverStatus is 1;
	now battleground is "void";[blocks a random fight after this]
	move player to Slave Cell 2;
	now OrcSlaverCaptureTime is turns;

Section 2 - Orc Lair

Orc Lair Side Entrance is a room. It is a fasttravel. It is private.
The description of Orc Lair Side Entrance is "     You're standing outside a side door leading into the Capitol District police station. Maybe it'd be a good idea not to stay here too long, with this being the main orc lair in the city. Sooner or later, one of them is bound to come out or return here...".

West of Orc Lair Side Entrance is Dark Hallway 2.
The description of Dark Hallway 2 is "     You're in a long windowless hallway continuing to the west and ending at the side door of the building in the east. An unmarked door leads to the north. It's pretty dark in here with no windows or electricity for the lights on the ceiling.".

North of Dark Hallway 2 is Observation Room.
The description of Observation Room is "     This is a relatively small room with recording equipment and a one-way-mirror window in the west wall, allowing a view into the interrogation room to the west. Not much to see currently, though - it's pretty dark in there. Though from what you can make out of its contents... and the splash of what's clearly dried cum on the glass, you'd bet that room has seen quite a bit of use recently. Interestingly, the sound system is hooked up to a car battery standing on the single table in here - so you bet one could also hear everything going on next door clearly. Maybe it'd be worth your while to [bold type]wait[roman type] here and observe what might happen.".

before going North from Dark Hallway 2:
	say "     The door of the observation room is a bit warped or something, requiring you to wiggle and lift the doorknob a bit as you open it. That fact, together with the relatively small size of the room might actually make it a rare safe spot in the orc lair. If you do want to get some rest somewhere in here, this would be the place to do it...";

West of Dark Hallway 2 is Dark Hallway 1.
The description of Dark Hallway 1 is "     You're in a long windowless hallway continuing to the east and ending at the entrance of a large room in the west. From the sounds of many orcs talking, drinking and fucking that echo from in there, you're pretty sure you shouldn't go that way right now. Thankfully, with no electricity to run the lights, it's pretty dark in the hallway, so you're relatively safe in its shadowy length. A locked door bearing a plaque with 'Interrogation' on it leads to the north, while another with the sign 'Cells' lies to the south.".

after going west from Dark Hallway 2 while a random chance of 1 in 2 succeeds:
	say "     [OrcLairMainChamberWatching]";

after going north from Breeder Lockup A while a random chance of 1 in 2 succeeds:
	say "     [OrcLairMainChamberWatching]";


West of Dark Hallway 1 is Main Hall.
The description of Main Hall is "     This is the main hall of the orc lair, where the big brutes come to chug beer, hang out, fuck and fight. All the desks in what previously was the main working area of this police station have been pushed together to form a long table in the center of the room, which is laden with food and drink - whole kegs of beer and all kinds of other stuff. Mattresses and sofas brought in from somewhere else are strewn about the room - with some of them currently in use by the twenty-odd orcs present.".

instead of going West from Dark Hallway 1:
	if bodyname of player is "Orc Warrior" and player is pure:
		if BoghrimMet is 0: 
			say "[BoghrimSlaveDeal]";
		else:
			move player to Main Hall;
			say "     Confidently stomping forward like any other orc would, you walk into the room. A few of the green brutes look up for a moment, then get back to whatever they were doing. Looks like it worked, you're in and no one suspects that you're not a regular orc.";
	else:
		say "     Just strolling into a large room full of drunken and horny orcs isn't a good idea if you're not an orc warrior yourself. You don't think you could make it through the gangbang that would follow if you with stumbled in there and everyone converged on the fresh piece of ass to try out - at least not sane and without succumbing to an infection halfway through. On second thought though - maybe it wouldn't be as dangerous as the picture imagination paints in shades of green dicks and white cum. They would surely recognize you as a force to be reckoned with and act accordingly, right?[line break]";
		say "     ([link]Y[as]y[end link]) - Go on in and introduce yourself to the orc tribe.";
		say "     ([link]N[as]n[end link]) - Suppress the urge to wander into the middle of the orc lair.";
		if player consents: [orc lair bad end]
			say "     [line break]";
			say "     Making up your mind, you decide to risk it anyway and enter the room. The large door opens without a sound and the noise of the drinking hall fills your ears. You look around the massive hall and drink it in. By a quick estimate there are about twenty orc warriors alone in here, with numerous breeder orcs and slave captives as hangers-on. All of them are engaged in various acts of revelry and debauchery. Some roar with laughter while a few challenge each other in tests of strength, fighting or arm wrestling. Then there are those who drink or listen to stories of the latest raid, and others still are simply fucking on scattered mattresses or even right on the tables. The sights make you swallow hard and you begin to wonder if it was the best idea to enter this place.";
			say "     [bold type]Do you want to turn tail and sneak out before someone notices you?[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Let's get out of here!";
			say "     ([link]N[as]n[end link]) - No, you'll just impress the green-skinned brutes with a determined stance instead. Loudly call for someone to give you a drink!";
			if player consents: [make a getaway]
				say "     [line break]";
				let bonus be (( Dexterity of player minus 10 ) divided by 2);
				let dice be a random number from 1 to 20;
				say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]:[line break]";
				if dice + bonus >= 15:
					say "     [line break]";
					say "     You carefully manage to exit the room unseen and shut the door behind you. A thin layer of nervous sweat covers your brow as you breathe a sigh of relief at having escaped a potentially fatal situation.";
				else:
					say "     [line break]";
					say "     As you begin to back slowly out of the room you feel a strong hand grab you by your shoulder. You turn to see Mul staring down at you, his iron grip leaving you with little chance to escape. His large tusked mouth breaks into a grin as he calls out to the room, 'Looks likes we've got an escaped breeder, perhaps we should teach [if player is female]her[otherwise]him[end if] a lesson!' With that, he gives you a harsh shove, sending you stumbling into the midst of the orc mob. The noise in the room lessens quickly as most of the gathered orcs turn their attention to you - except for those pounding away at their pleasure slaves right now, that is.";
					WaitLineBreak;
					say "     'This slut clearly needs to be given the breeder treatment!' he calls to the hall. All around you the Orcs erupt into laughter and cheers, and the almost-silence that befell the room before is replaced once more by the sounds of revelry. Yatur and the large warriors nearest to you strip naked while Mul rips your clothes off with a few harsh tugs. All around you the naked brutes are closing in, stroking their soft green cocks to a state of stiff arousal. Being pushed to your knees, your mouth is levered open by two of Mul's thick fingers. Looks like you're about to taste the rich seed that awaits you in every grapefruit sized pair of swinging testicles around.";
					say "     Yatur is the first to grab you by the head and place his stiff green cock head at your mouth. It is dripping with a thick, clear orc pre, which he slathers over your lips and face. Your hands move up to grab his cock, trying to push it away from your mouth - but the orc is relentless and pushes himself in between your lips. His pre tastes salty as it drips onto your tongue and you give a half-choked groan as Yatur pushes your head further down his thick cock. Forced to relax your throat since there isn't really a way out of this, you do your best to last through the orc's treatment. After a few moments, you actually start to enjoy it - seems like the pre-cum that is throbbing out of Yatur's cum slit is already starting to affect you. Soon, you're even sucking on him eagerly - hungry to taste more of the delicious treat. Around you more orcs have closed in, stroking their precum dripping, rock-hard dicks.";
					say "[OrcLairBadEnd]";
			else: [orc lair bad end]
				say "     [line break]";
				say "     Swallowing any doubts you might have had, you look around the room and call for a drink in a loud and confident voice. The noise in the room lessens quickly as most of the gathered orcs turn their attention to you - except for those pounding away at their pleasure slaves right now, that is. You hear the door being slammed shut behind you, then a hand pushes you forward. Stumbling towards the centre of the hall, you begin to hear some murmured comments between the watching brutes, followed by raucous laughter. Mul brings you a flagon filled to the brim with a frothing white head. 'Drink,' he commands. You take a small sip and a shiver of arousal runs down your spine - this is quite potent stuff. Mul frowns and says, 'Not like that, wimp! Really drink deep!'";
				say "     Then he tips the flagon up and makes the contents slosh into your open mouth and all over your face and chest. You are forced to swallow several mouthfuls of the thick brew of orc cum and heady alcohol, sending your body into arousal overdrive as it absorbs the brutish warrior's favorite drink. Your mind races and your [if player is male]cock hardens[else if player is female]pussy begins to drip[otherwise]body trembles[end if] with arousal under the influence of the intense aphrodisiac. Mul laughs at the way you immediately start to pant in lust before shoving a fresh flagon into your hands. 'You still look thirsty,' he quips. 'Have another.' Already half drunk, you follow his lead readily - lifting the mug to your lips on your own and drinking deeply. With your temples throbbing hard, you feel unsteady, as if on the deck of a ship rolling in the waves. Your cum-drunk state of arousal is obvious to everyone in the large hall as you grab for Mul's crotch.";
				WaitLineBreak;
				say "     'This cum-hungry slut is ready to be given the breeder treatment!' he calls to the hall. All around you the Orcs erupt into laughter and cheers, and the almost-silence that befell the room before is replaced once more by the sounds of revelry. Yatur and the large warriors nearest to you strip naked, and you hurriedly disrobe in anticipation of what is to come. All around you the naked brutes are closing in, stroking their soft green cocks to a state of stiff arousal. Dropping to your knees, your mouth hangs open and you drool in hunger for that delicious treat that awaits you in every grapefruit sized pair of swinging testicles around.";
				say "     Yatur is the first to grab you by the head and place his stiff green cock head at your mouth. It is dripping with a thick, clear orc pre, which he slathers over your lips and face. Your hands move up to grab his cock as you open your mouth to accept his delicious green flesh into your maw. His pre tastes salty as it drips onto your tongue and you groan a satisfied groan while Yatur pushes your head further down his thick cock. Making a conscious effort to take him all, you relax your throat so that you are better able to deep-throat his magnificent member. Around you more orcs have closed in, stroking their precum dripping, rock-hard dicks.";
				say "[OrcLairBadEnd]";
		else: [make a getaway]
			say "     [line break]";
			say "     The boisterous sounds of orcs drinking, shouting and fucking that are loud even outside the room remind you that this is far from a safe place. Better to keep your distance...";
		
to say OrcLairBadEnd:
	WaitLineBreak;
	say "     The powerful males either side of you tear your desperately grasping hands from Yatur's cock and force you to start stroking their own fleshy pillars. Neither is as thick as Yatur's cock so you are able to get a good grip. Having spent so much time in this sex-mad city has made you dexterous enough to handle this task easily, while Yatur grabs your head in two hands and proceeds to fuck deeply into your throat. The rest of the muscled warriors nearby are stroking their iron-hard dongs in anticipation of their own turn.";
	say "     Your arms work diligently to stroke the two orcs beside you, eager to get them to spill their delicious seed. Yatur is speeding up as he fucks your face, moaning in pleasure. 'I hope you're still thirsty,' he grins. His hips move faster and more erratically, while his grip on the back of your head grows tighter. Grunting and shaking in his pleasure, Yatur pulls you to the base of his cock, his long and thick fuck-pole pushing deep into your throat as he cums hard. Hollowing your cheeks, you try your best to suck as hard as you can with your face mashed into his musky bush. The voluminous load pumping down his cum vein stretches your throat as it is emptied forcefully into your stomach, giving you another heady rush far more potent than what you felt before.";
	WaitLineBreak;
	say "     The two panting orc warriors you've been stroking off grunt in pleasure at the sight of this breeder being used so roughly and they too begin to cum, squirting ropes of their potent semen all over your hands, arms and body. Yatur pulls his cock out of your throat with a wet slurp and you breath in fresh air again. You aren't given much reprieve however, as another set of stiff cocks take the place of the others. Now lubed with thick loads of orc cum, your hands and throat make it easy for the next group to get right to fucking. Your face is pounded and your throat filled several times while your body is continuously covered in a number of layers of hot orc cum before they lift you onto a small nearby table.";
	say "     Your [if player is male]throbbing cock, [else if player is female]slick pussy, [otherwise]nipples, [end if] largely ignored up to this point, [if player is male]is stiff with arousal and dripping pre[else if player is female] is clenching wantonly and gushing fluid in its own desire for attention[otherwise] have swollen and hardened[end if]. Having been placed on your back, your legs and head are hanging off either side of the narrow bench. Another breeder slut clambers on top of you and [if player is male]slides your cock into his slick asshole[else if player is female]slides his cock into your glistening cunt[otherwise]rubs his pre-dripping cock head over your pulsing nipples[end if]. The build-up to this point is just too much, and you cum on the spot as you feel his [if player is male]anus clenching tight around the base of your throbbing prick[else if player is female]cock bottom out in your clenching cock-holster[otherwise]moist cock-head stimulate and moisten your sensitive erogenous zones[end if]. [if player is male]Your cum rushes to fill his bowels, but having constantly been pumped full of the orcs intensely arousing cum, means your cock doesn't go soft, and he continues to ride your sensitive prick.[end if]";
	WaitLineBreak;
	say "     You moan loudly as your twitching [if player is male]cock is ridden hard, [else if player is female]pussy is ridden hard, [otherwise]nipples are constantly stimulated, [end if]but any further noise soon is stifled as another thick cock pushes into your throat and begin to face fuck you. You feel your legs being lifted up as another brute takes his place at your asshole. He rubs his hot pre over your winking asshole, lubing you up for your first anal penetration. As he pushes into you, you groan around the cock in your mouth. As with most of the warriors here, his prick is incredibly thick, and it stretches your asshole wide around it. The beast at your asshole doesn't even pause to let you get used to the girth but plows right on in, pushing himself to the hilt before pulling back and then ploughing in again. His cock is long and his strokes go deep into your ass, rubbing [if player is male]your sensitive prostate [else if player is female]the breeder's cock through the thin wall separating your pussy and asshole [otherwise]your sensitive anal walls [end if]with each penetration. He fucks your asshole hard and fast, ramming himself as deep as he can go.";
	say "     Your [if player is male]cock [else if player is female]cock-filled squelching cunt [otherwise]whole body [end if]twitches with each thrust in your ass. Being filled so completely makes for a deeply pleasurable sensation that fills your whole body with tremors of ecstasy. With your body stimulated in every way possible and your mind in a haze of lust thanks to the constant cum battering you keep receiving, you begin to approach orgasm once more as the breeder slut on top of you rides you even harder. [if player is male]He strokes his prick faster as he approaches his own peak[else if player is female]His long strokes inside you come faster as he approaches his own peak [otherwise]He rubs his prick over your nipples harder and faster as he edges towards his own peak[end if].";
	WaitLineBreak;
	say "     [if player is male]The moaning breeder cums, squirting ropes of cum over your chest and neck, his asshole clenching tightly around your prick. It is all too much for you, and you explode once more inside his already cum-filled asshole, filling him with more of your jizz [else if player is female]The moaning breeder cums, squirting ropes of cum deep inside your quivering, cum-hungry hole. It is all too much for you, and you explode in ecstasy once more, your pelvis quaking as the floodgates open to spray your fluids all over the breeder's cock[otherwise]The moaning breeder cums, squirting ropes of cum over your tits, chest and neck. It is all too much for you. Your ultra-sensitive throbbing nipples explode in ecstasy once more, and your body quakes from the intensity of the orgasm[end if]. The intensity of your own pleasure causes your asshole to clench tightly around the cock buried deep in your colon. The powerfully muscular orc riding your ass howls in pleasure, having his cock squeezed tightly as he too cums hard inside you. Your eyes roll back, and a guttural growl of senseless lust fills your throat, stimulating the cock in your mouth to cum as well.";
	say "     You are pumped full with cum from both ends, the warm semen flowing deep into your colon and throat. With all the cum you've swallowed, you begin to feel like you've eaten a very large meal, but there are still many courses to go. The breeder slut clambers unsteadily off you, and the spent warriors either end pull their cum-slickened cocks from your holes. All around you the rest of the tribe is cheering and hooting their approval. A few more green-skinned cocks reach their peak as well, splattering cum over your prone form as you lie there panting.";
	WaitLineBreak;
	say "     'It's our turn now.' You hear from somewhere in the group. Through the crowd of orcs surrounding you, come Mul and Boghrim, the latter of which is a very large orc. Boghrim is chief here, and clearly older than the rest of the group. He likely to be more seasoned when it comes to breaking in a new breeder. You gulp at the size of their stiff breeding poles. Boghrim's member is one of the largest orc cocks you've ever seen. It looks to be about two feet in length and 5 inches thick. The younger orc's cock is only slightly smaller at about one and half feet long. The chief takes his place at your asshole while Mul moves to your mouth.";
	say "     You open as wide as you can as the bulky youth pushes in first. His thick cock makes your jaw ache as it spreads to take him in. He pushes all the way in, until your nose and eyes are pressed against his moist, musky ball sack. His balls are large and heavy on your face, and you can feel a slight throbbing coming from them as Mul nestles deep in your wet gullet with a sigh. The powerful orc leader at your asshole now begins to push forward with his massive member, his thick cock spreading your sphincter wide open as he applies an insistent pressure on you cum-leaking hole.";
	WaitLineBreak;
	say "     It is difficult to relax your sphincter when your face is buried in a musky testicle sack, and your breathing is restricted by a huge cock practically nestled in your stomach. The chief is unrelenting however, and your eyes pop wide open as his cock-head pushes its way inside your resistant hole, followed by a good 6 inches of his girthy cock. You try and cry out, but your muffled protest is barely audible among the noise of the great hall. Boghrim pulls back slightly and then thrusts another 6 inches inside you. Your legs twitch as you feel the first foot of hard orc cock spear your asshole. Pulling back again almost to the tip, he grunts and thrusts the whole two feet of thick cock into your splayed asshole! Your organs are roughly pushed aside to make room for the huge intruder in your intestines.";
	say "     If you could scream you would, but you suspect that is why the younger brute plugged you first. Instead you moan submissively around the cock in your gullet, and your legs jerk and kick impotently. Having been speared on both orc pricks, it feels almost like one long rod of cock is pushed through you, like a pig on a spit. Struggle as you might, you are just too weak to push back the intruders. Your anus and throat spasm around the cocks as they both begin to pull back once more.";
	WaitLineBreak;
	say "     Though you can't see much, you know the orcs must be loving this sight. As the thick green prick moves out of your throat, you take deep breaths of air through your nose, preparing for the onslaught to come. Both warriors slam back inside you at the same time and you're sure you can feel their cocks mashing against one another through their respective sleeves. They begin to pound you from both sides, moving out of sync with one another so they can enjoy their own pace.";
	say "     The leaders powerful cock seems to have no trouble sliding in and out of your wanton hole, having moved any resistance out of his path and using the previous occupants cum as lube. You can feel every inch of his veiny shaft as it is shoved roughly inside your stretched asshole. Every vein feels like steel and, every thrust like a hydraulic piston pumping at full power. Mul has no problem just pounding your gullet deep without a care for whether or not you can breathe. You are grateful for those lungfuls of air you took before he started, and you inhale whenever he pulls out far enough, however briefly.";
	WaitLineBreak;
	say "     The intense stimulation from each thrust into your colon [if player is male]and past your prostate, causes your cock to constantly spurt little gushes of cum. The warm seed flows down your prick and along your crack to provide more lube to the monster busy staking its claim on your colon[else if player is female]causes your pussy to constantly squirt little rivers of femcum. The warm liquid flows down your gash and along your crack to provide more lube to the monster busy staking its claim on your colon. [otherwise]makes your body shudder constantly[end if]. The huge orc chieftain roars as he begins to peak and thrusts faster and harder, pushing you into the young warriors thrusts, and cutting off your air source. Mul too begins to throb and growl with pleasure as he reaches his zenith.";
	say "     Spots are forming around the edges of your vision, but you focus on the intense sensation provided to you by the massive pricks inside you. You want to be awake when they cum inside you. Summoning all your will power, you focus on slowing your heartbeat and holding on just a little longer. Both of the potent males roar out in pleasure at the same time, slamming themselves in deep as they erupt inside you. Your vision is fogging over but you focus on the intense sensation of the cocks cumming into your stomach and colon. Not for the first, or last time, you cum hard[if player is male], ropes of cum spurt high into the air before splattering back down on your gradually swelling form[else if player is female], a powerful spray of femcum squirts against the chieftains pelvis with such force that it splashes back to drench your gradually swelling form[end if]. ";
	WaitLineBreak;
	say "     The cum being pumped into you is forceful as it fills you, and you can feel each powerful gush of semen as Boghrim's cock throbs, depositing more into your waiting stomach. With nowhere else to go, the semen from both beasts begins to pool in your belly which swells up as you are pumped full. What was a light throbbing in your ears is now the pounding of hammers on gongs. Just as your vision blackens, both orcs begin to pull out. Before you can pass out, air rushes to fill your lungs. Coughing up huge globs of residual semen from your throat, you feel as if you might begin to regain a sense of normality. Even your asshole seems to be splayed open and leaking a river of orc cum as you are unable to control the muscles needed to close your leaking sphincter.";
	say "     The panting orc leader leers over your limp form and chuckles. 'Thanks for the warm up. We'll see you for round two once every one else has had their turn.' Your eyes betray a sense of both panic and excitement as more thick green cocks slide into your holes and begin fucking you again. Boghrim laughs, walking away to recover. Many hours pass and you eventually lose track of time as you are taken over and over by every orc in the hall. Slowly you come to realise what you have gotten yourself into. There are enough orcs here to fuck you again and again while the rest leave to sleep, recuperate, hunt, and go about their daily lives.";
	WaitLineBreak;
	say "     Days pass and you have barely slept. Your anus gapes wide open as it is worked almost constantly by massive cocks, almost never giving it the needed time to pull closed again - which you were surprised to find it actually can. Turns out that orc breeders are actually very flexible in that regard... they have to, after all, to give birth to orclings. Green skin covers your body now, which is pretty lean and fit, except the fact that your belly is bloated big from all the semen filling it. Then at one point, you suddenly feel a twitch go through your insides, almost like... a kick. So maybe it isn't just cum that keeps you bulged out like a pregnant woman, but also an orcling - or two - growing inside you. A once comfortable bed in the main hall has become your home, though now it is always soaked and slippery with orc cum. The rich, creamy fluid is all you need in terms of nourishment, slaking your thirst and the hunger to be filled again and again. Eventually your mind gives out and you forget everything you were, your mission was forgotten after the first two days of constant fucking. The only thing you know, and feel you've ever known is this place, where you are filled over and over, day after day, night after night. More time passes and your mind eventually accepts that this is all you ever will know.";
	now tailname of player is "Communal Orc Fucktoy";
	now facename of player is "Communal Orc Fucktoy";
	now skinname of player is "Communal Orc Fucktoy";
	now bodyname of player is "Communal Orc Fucktoy";
	now cockname of player is "Communal Orc Fucktoy";
	now humanity of player is 1;
	end the story saying "Surrounded by horny orcs, being a breeder slave is your life now...";

instead of going West from Dark Hallway 2 while bodyname of player is "Orc Warrior" and player is pure and BoghrimMet is 0:
	say "[BoghrimSlaveDeal]";

instead of going North from Breeder Lockup A while bodyname of player is "Orc Warrior" and player is pure and BoghrimMet is 0:
	say "[BoghrimSlaveDeal]";

West of Main Hall is Bright Hallway 1.
The description of Bright Hallway 1 is "     You're in a long hallway with a big, wire-reinforced window at its end in the west. That and the row of still-working fluorescent lights on the ceiling illuminate it brightly. Two closed (and locked) doors flank the hallway to the north and south, while it extends further to the west and ends in the east at the main hall of the police station turned orc lair.".

West of Bright Hallway 1 is Bright Hallway 2.
The description of Bright Hallway 2 is "     You're in a long hallway that ends at a big, wire-reinforced window in the west wall. That and the row of still-working fluorescent lights on the ceiling illuminate it brightly. Two doors flank this section of the hallway to the north and south, with the northern one closed and locked, while the southern one hangs a bit crookedly and has a splintered ruin where its lock and handle once were.".

South of Bright Hallway 2 is Police Station Lockerroom.
The description of Police Station Lockerroom is "[PLRDesc]".
PLRLooted is a number that varies.

to say PLRDesc:
	say "     This is the locker-room in which policemen used to get ready to go out and protect the citizens not too long ago. It is instantly evident that a fight happened in here from the state the room is in - shreds of uniforms are scattered throughout, often stuck to the ground in large puddles of dried orc cum. Looks like the orc warriors stormed this place and fucked everyone they caught into submission. Locker doors are hanging open and all the contents have long been taken out - mostly to be smashed and destroyed from the looks of it.";
	if PLRLooted is 0:
		say "     Hm, there is one section of lockers that must have fallen over during the fight and is still lying flat on its face. Might be something of value left inside... maybe it's worth your time to try to [bold type]loot the lockers[roman type].";


LockerLooting is an action applying to nothing.

understand "loot locker" as LockerLooting.
understand "loot lockers" as LockerLooting.
understand "loot the locker" as LockerLooting.
understand "loot the lockers" as LockerLooting.

Carry out LockerLooting:
	LootLocker;

check LockerLooting:
	if player is not in Police Station Lockerroom and player is not in Sports Arena Lockerroom:
		say "     Which lockers?" instead;
	else if player is in Sports Arena Lockerroom:
		say "     A quick check of the row of lockers reveals that they've already have had a careful going-over. Seems like Eric took everything of value before you came along." instead;
	else if PLRLooted is 1:
		say "     But you've already done that. Everything else but what you found has already been looted or destroyed." instead;

Table of Game Objects (continued)
name	desc	weight	object
"police vest"	"A black bulletproof vest, lightweight and with the word 'Police' printed in yellow on the front. It should provide good protection while worn."	1	police vest

police vest is equipment.
It is not temporary.
The AC of police vest is 50.
The effectiveness of police vest is 55.
The placement of police vest is "body".
The descmod of police vest is "A black police vest bearing the word 'Police' protects your chest.".
The slot of police vest is "body". 


To LootLocker:
	say "     The only way to get into the locker without tools that you don't have is through the door at the front, so you don't have much choice but to try to lift the heavy piece of furniture. After a moment of mentally preparing yourself for the hard task, you step up to where they're lying on the floor and grab the sides.";
	let bonus be (( the Strength of the player minus 10 ) divided by 2);
	if 2 is listed in bookcollection, increase bonus by 2;
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus] (Strength Check)[line break]";
	increase diceroll by bonus;
	if diceroll is greater than 18:
		say "     Proving your strength, you lift the locker slowly, slowly - then change your grip to grab under it and start pushing against the front side to get it back up. Sweat is running down your brow soon and you start to feel the strain making your muscles tremble, then you finally reach the tipping point and the locker's momentum pulls it to slam against the wall with a loud crash that pops the door open. A [bold type]police vest[roman type] tumbles out of the locker and lands at your feet, making all the effort worth it. You quickly pick it up.";
		increase carried of police vest by 1;
		now PLRLooted is 1;
	else if diceroll > 10:
		say "     Proving your strength, you lift the locker slowly, slowly - then change your grip to grab under it and start pushing against the front side to get it back up. Sweat is running down your brow soon and you start to feel the strain making your muscles tremble... until you just can't hold out any more. Only a quick jump aside lets you escape the fate of being crushed under the falling piece of furniture, which lands on its face yet again with a loud bang.";
	else:
		say "     You try to grab the locker and lift it, but don't have much success. Maybe you should try getting stronger before you try that again...";


to say OrcLairMainChamberWatching:
	try looking;
	let randomnumber be a random number from 1 to 5;
	if randomnumber is:
		-- 1:
			say "     Hearing some especially loud moans and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. All the desks in what previously was the main working area of this police station have been pushed together to form a long table in the center of the room, which is laden with food and drink - whole kegs of beer and all kinds of other stuff. Mattresses and sofas brought in from somewhere else are strewn about the room - and currently in use, as the twenty to thirty orc warriors present gangbang a group of human soldiers. Seems like they're freshly caught, as they are only just starting to transform, despite being fucked in the ass and mouth, as well as having orcs jerking off to cover them with cum.";
			say "     There's just no way you could do anything to help those men, so after watching a moment longer, you move back, deeper into the shadows in the hallway. Getting caught up in between all the orcs in the main chamber of this police station turned orc lair is really something you should avoid.";
		-- 2:
			say "     Hearing some especially loud bellows and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. All the desks in what previously was the main working area of this police station have been pushed together to form a long table in the center of the room, which is laden with food and drink - whole kegs of beer and all kinds of other stuff. Mattresses and sofas brought in from somewhere else are strewn about the room - though no one uses them at the moment, as the twenty to thirty orc warriors present stand around and cheer at a pair of the green-skinned brutes arm-wrestling. You recognize one of the contestants as Mul, one of the orc slavers who brought you here, straining to push against the arm of another orc with a broken tusk.";
			say "     All the bellowing and excitement about the close competition between those two orcs totally holds your attention captive and you almost forget for a moment that you have to stay hidden. Only when Mul manages to get the upper hand and brings his opponent's arm crashing down on the desk with a loud thunk do you manage to shake your strange fascination with their exploits off and duck back into the dark shadows of the hallway. Good that all the orcs in there were totally focused on the arm wrestling too - getting caught up in the main chamber of this police station turned orc lair is really something you should avoid.";
		-- 3:
			say "     Hearing some especially loud bellows and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. All the desks in what previously was the main working area of this police station have been pushed together to form a long table in the center of the room, which is laden with food and drink - whole kegs of beer and all kinds of other stuff. Mattresses and sofas brought in from somewhere else are strewn about the room - many of them serve as resting places for drunk and dozing orcs, as there seems to be a drinking competition between the twenty to thirty orc warriors present. Accompanied by chants of 'Chug! Chug! Chug!', the orcish brutes down pitcher after pitcher of beer, uncaring how much they spill. Where are they getting all this stuff? They must have raided a brewery or something...";
			say "     After watching a moment longer, you move back, deeper into the shadows in the hallway. Getting caught up in between all the orcs in the main chamber of this police station turned orc lair is really something you should avoid.";
		-- 4:
			say "     Hearing some especially loud bellows and grunts from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. Having pushed all the desks, sofas and mattresses in what previously was the main working area of this police station to the side, there's something akin to a wrestling match going on - between an orc and a minotaur. They must have caught the big bull to have an adequate opponent for the muscle-packed brute battling him in the midst of a circle of about twenty to thirty orcs. From the cheering and shouts raised over that, there's quite a bit of betting going on.";
			say "     All the bellowing and excitement about the close competition between those two totally holds your attention captive and you almost forget for a moment that you have to stay hidden. Only when the orc finally manages to get the upper hand and brings is opponent crashing to the floor with a loud thunk do you manage to shake your strange fascination with their exploits off and duck back into the dark shadows of the hallway. A cross between a bovine bellow and a whimper a moment later tells you that the orc decided to savour the pleasures of his victory right away...";
		-- 5:
			say "     Hearing some especially loud laughing and grunting from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. Having pushed all the desks, sofas and mattresses in what previously was the main working area of this police station to the side, they've set up... an inflatable wading pool? About twenty to thirty naked orcs stand all around it, jerking off, and have already filled it with quite a bit of greenish-white orc cum. Then another orc comes out of a side room with a large metal barrel under his arm. You can't stop yourself from watching as he wrenches open its lid an then pours a slippery white humanoid form into the pool.";
			say "     As it splashes down, you realize that the creature consists of nothing but cum and has a feminine figure - though not for long, as the cum girl immediately starts to meld with the orc seed all around herself. She quivers and shifts, her face showing an expression of surprise as she looks down and sees green veins working their way through her body. When the rapid change of the cum creature finishes, it no longer looks female, but has the form of a burly and muscular, if a bit slimy-looking, orc. The newly transformed cum-orc gives a loud bellow and wades forward with sloshing movements to sink its mouth on the nearest orc's cock, hungry for more.";
			say "     Finally shaking off the strange fascination that made you watch the things going on in there, you duck back into the dark shadows of the hallway. Getting caught up in between all the orcs in the main chamber of this police station turned orc lair is really something you should avoid - especially as they just might throw you in with their new pet at the moment.";

South of Dark Hallway 1 is Breeder Lockup A.
The description of Breeder Lockup A is "     You're in a room holding two large cells to the east and west - most likely originally the 'drunk tank' and another group holding cell. Now the orcs use them to lock up their newly caught slaves. A door to the north allows you to leave this place again. A bent nail to hold a key is driven into the south wall, well out of reach of anyone inside the cells.".

Cell Door 1 is a door.
Cell Door 1 is west of Breeder Lockup A.
Cell Door 1 is lockable and locked.
The description of Cell Door 1 is "     A metal cell door, consisting of a sturdy frame and several cell bars, plus three crossbars. Its lock has a mechanism that locks itself when the door swings shut, as well as a spring at the top preventing it from standing open without someone holding on to it. [if CellDoorStatus is 1 or CellDoorStatus is 3]Though looking closer, you realize the lock has been busted and won't engage at all now - which makes this a pretty easy to escape cell[end if]".
Cell Key unlocks Cell Door 2.

Slave Cell 1 is a room. 
Slave Cell 1 is west of Cell Door 1.
Slave Cell 1 is sleepsafe.
The description of Slave Cell 1 is "     This large cell holds a bed in the back, as well as a backless leather bench that's clearly meant to have sex on. It's seen quite a bit of use, judging from the cum-stains all over it and on the floor around. Shreds of fabric and quite a few ripped pieces of clothing lie strewn about on the floor. The only exit from this cell is a door in the east. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [else if CellDoorStatus is 1 or CellDoorStatus is 3]Good that the lock is busted, otherwise you'd be stuck in here.[otherwise]You're stuck in here - unless you find a way to [link]escape[as]escape the cell[end link].[end if]".

Cell Door 2 is a door.
Cell Door 2 is east of Breeder Lockup A.
Cell Door 2 is lockable and locked.
The description of Cell Door 2 is "     A metal cell door, consisting of a sturdy frame and several cell bars, plus three crossbars. Its lock has a mechanism that locks itself when the door swings shut, as well as a spring at the top preventing it from standing open without someone holding on to it. [if CellDoorStatus is 2 or CellDoorStatus is 3]Though looking closer, you realize the lock has been busted and won't engage at all now - which makes this a pretty easy to escape cell[end if]".
Cell Key unlocks Cell Door 2.

Slave Cell 2 is a room. 
Slave Cell 2 is east of Cell Door 2.
Slave Cell 2 is sleepsafe.
The description of Slave Cell 2 is "     This large cell holds a bed in the back, as well as a backless leather bench that's clearly meant to have sex on. It's seen quite a bit of use, judging from the cum-stains all over it and on the floor around. Shreds of fabric and quite a few ripped pieces of clothing lie strewn about on the floor. The only exit from this cell is a door in the west. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [else if CellDoorStatus is 2 or CellDoorStatus is 3]Good that the lock is busted, otherwise you'd be stuck in here.[otherwise]You're stuck in here - unless you find a way to [link]escape[as]escape the cell[end link].[end if]".

after going west from Breeder Lockup A:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 2:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a disconcerting click as it locks. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise]Now you're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]";
		now the Cell Door 1 is closed;
		now the Cell Door 1 is locked;
	else:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't engage.";
		now the Cell Door 1 is closed;
	if hp of Val is 0 and Val is in Slave Cell 1:
		say "     [line break]";
		say "     There is something... familiar about the orc breeder in this cell. At first you can't quite say what exactly, but as you look into his eyes and see them widening as he examines you in turn, you realize that this once was the fox who ran into you while fleeing from the orcs. He must have a pretty low resistance to the nanites to be transformed so completely in such short time. As the two of you get over the moment of mutual recognition, he says 'Hello again... or... just hello. You met Vincent before - I - I'm Val now.'";
		now hp of Val is 1;
	if ValPregnancy > 1 and hp of Val < 2:
		now hp of Val is 2;   [the player has seen that he's pregnant]
	if ValPregnancy is 4:
		say "     Seeing Val, you immediately notice that he isn't pregnant anymore. The orc follows your gaze to his stomach and explains 'I've given birth while you were out. You should have seen my beautiful little boy, growing up so quickly to a handsome young orc. Master Mul named him 'Chotuzz' and traded him to another orc. I'm sure he'll make a fine breeder for his new master...' Val smiles as he says this, but you notice a hint of sadness in his eyes. Maybe you could have changed something at his son's fate if you had been here for the birth...";
		now ValPregnancy is 0;
		now hp of Chris is 100;  [lost]

after going east from Breeder Lockup A:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 1:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a disconcerting click as it locks. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise]Now you're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]";
		now the Cell Door 2 is closed;
		now the Cell Door 2 is locked;
	else:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't engage.";
		now the Cell Door 2 is closed;

after going east from Slave Cell 1:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 2:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a click as it locks.";
		now the Cell Door 1 is closed;
		now the Cell Door 1 is locked;
	else:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't snap locked.";
		now the Cell Door 1 is closed;

after going west from Slave Cell 2:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 1:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a click as it locks.";
		now the Cell Door 2 is closed;
		now the Cell Door 2 is locked;
	else:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't snap locked.";
		now the Cell Door 2 is closed;

Cell Key is a grab object.
It is not temporary.

instead of using Cell Key:
	if player is not in Slave Cell 1 and player is not in Slave Cell 2 and player is not in Breeder Lockup A:
		say "     A bit hard to use a key without being anywhere near the lock.";
	else if player is in Breeder Lockup A:
		if CellDoorStatus is 0:  [standing between two intact doors]
			say "     You unlock both cells, leaving them open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
		else if CellDoorStatus is 3:  [standing between two broken doors]
			say "     Both door locks are broken, you don't really need the key anymore.";
		else if CellDoorStatus is 1:  [standing between a broken and unbroken door]
			say "     You unlock the one intact doorlock.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
	else if player is in Slave Cell 1:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     The lock clicks, and the door opens a little.";
			now the Cell Door 1 is unlocked;
		else if CellDoorStatus is 1 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";
	else if player is in Slave Cell 2:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     The lock clicks, and the door opens a little.";
			now the Cell Door 2 is unlocked;
		else if CellDoorStatus is 2 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";

instead of unlocking Cell Door 1 with Cell Key:
	try CellUnlocking;

instead of unlocking Cell Door 2 with Cell Key:
	try CellUnlocking;

understand "unlock Cell Door 2" as CellUnlocking.
understand "unlock Cell Door 1" as CellUnlocking.
understand "unlock Cell Door" as CellUnlocking.
understand "unlock Cell Door with key" as CellUnlocking.
understand "unlock Cell Door 2 with key" as CellUnlocking.
understand "unlock Cell Door 1 with key" as CellUnlocking.
understand "unlock Cell Door 2 with cell key" as CellUnlocking.
understand "unlock Cell Door 1 with cell key" as CellUnlocking.

CellUnlocking is an action applying to nothing.

check CellUnlocking:
	if player is not in Slave Cell 1 and player is not in Slave Cell 2 and player is not in Breeder Lockup A,   say "     Which cell do you want to unlock?" instead;
	if carried of Cell Key is 0, say "     You do not have a key that fits." instead;
	if Cell Door 2 is unlocked and player is in Slave Cell 2, say "     It's already unlocked." instead;
	if Cell Door 1 is unlocked and player is in Slave Cell 1, say "     It's already unlocked." instead;

carry out CellUnlocking:
	if player is in Breeder Lockup A:
		if CellDoorStatus is 0:  [standing between two intact doors]
			say "     You unlock both cells, leaving them open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
		else if CellDoorStatus is 3:  [standing between two broken doors]
			say "     Both door locks are broken, you don't really need the key anymore.";
		else if CellDoorStatus is 1:  [standing between a broken and unbroken door]
			say "     You unlock the one intact doorlock.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
	else if player is in Slave Cell 1:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     You unlock the cell, leaving the door open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
		else if CellDoorStatus is 1 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";
	else if player is in Slave Cell 2:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     You unlock the cell, leaving the door open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 2 is unlocked;
		else if CellDoorStatus is 2 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";


Table of Game Objects(continued)
name	desc	weight	object
"Cell Key"	"A relatively unremarkable key that opens the cell doors of the Orc Lair. There's still a few dried cum stains on it."	0	Cell Key

the scent of Cell Key is "Smells like metal and a bit of cum.";

the invent of Breeder Lockup A is {"Cell Key"}.

before opening Cell Door 1:
	if Cell Key is owned and Cell Door 1 is locked:
		now Cell Door 1 is unlocked;
		say "You use your key to unlock the door.";

before opening Cell Door 2:
	if Cell Key is owned and Cell Door 2 is locked:
		now Cell Door 2 is unlocked;
		say "You use your key to unlock the door.";

CellDoorStatus is a number that varies;

[CellDoorStatus                                   ]
[ 0: both intact                                  ]
[ 1: Lock in Door 1 busted                        ]
[ 2: Lock in Door 2 busted                        ]
[ 3: Both Locks busted                            ]

CellEscape is an action applying to nothing.

understand "escape this cell" as CellEscape.
understand "escape the cell" as CellEscape.
understand "escape cell" as CellEscape.
understand "escape this slave cell" as CellEscape.
understand "escape the slave cell" as CellEscape.
understand "escape slave cell" as CellEscape.
understand "break out" as CellEscape.

check CellEscape:
	if player is not in Slave Cell 1 and player is not in Slave Cell 2, say "You're not in a cell at the moment." instead;
	if player is in Slave Cell 1 and (CellDoorStatus is 1 or CellDoorStatus is 3), say "     The lock is busted, you can just walk out - no need for escape plans anymore." instead;
	if player is in Slave Cell 2 and (CellDoorStatus is 2 or CellDoorStatus is 3), say "     The lock is busted, you can just walk out - no need for escape plans anymore." instead;
	if player is in Slave Cell 1 and (CellDoorStatus is 2 or CellDoorStatus is 0) and Cell Key is owned, say "     You've got a key, just use it and walk out." instead;
	if player is in Slave Cell 2 and (CellDoorStatus is 1 or CellDoorStatus is 0) and Cell Key is owned, say "     You've got a key, just use it and walk out." instead;

Carry out CellEscape:
	say "     So, how do you want to get out of here?";
	wait for any key;
	say "     [EscapeMenu]";

to say EscapeMenu:
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Search the cell for anything of use";
	now sortorder entry is 1;
	now description entry is "Maybe one of the orcs lost a key or something...";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Pick the lock";
	now sortorder entry is 2;
	now description entry is "That hairpin there on the floor should suffice - if you've got the dexterity to use it right.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Break the lock";
	now sortorder entry is 3;
	now description entry is "Just smash it.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Sabotage the lock";
	now sortorder entry is 4;
	now description entry is "Make the orcs themselves break the lock. You'll get fucked, but can escape afterwards.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Wait to get fucked, then sneak out afterwards";
	now sortorder entry is 5;
	now description entry is "Tire them out and escape while they sleep.";
	now toggle entry is EscapeOption rule;
	choose a blank row in table of fucking options;
	now title entry is "Nothing";
	now sortorder entry is 10;
	now description entry is "Exit this menu.";
	now toggle entry is EscapeOption rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the EscapeOption rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Search the cell for anything of use"):
			say "[EscapeOption1]";
		if (nam is "Pick the lock"):
			say "[EscapeOption2]";
		if (nam is "Break the lock"):
			say "[EscapeOption3]";
		if (nam is "Sabotage the lock"):
			say "[EscapeOption4]";
		if (nam is "Wait to get fucked, then sneak out afterwards"):
			say "[EscapeOption5]";
		else if (nam is "Nothing"):
			say "     ";
		wait for any key;

to say EscapeOption1:
	say "     You dig around among the shredded belongings of various people brought here as slaves, and...";
	let bonus be (( perception of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 19 and score [dice plus bonus]: (Perception Check)[line break]";
	if dice + bonus >= 19:
		say "     ...after some time searching and almost giving up hope multiple times, you do find a key. Judging from the dried cum on it, some orc must have dropped it while busy with entertaining himself. After cleaning it as good as you can with a piece of ripped fabric, you grab the key and let yourself out of the cell. When you close the door behind you, its lock automatically snaps closed again.";
		increase carried of Cell Key by 1;
		move player to Breeder Lockup A;
		now OrcSlaverStatus is 2;
	else:
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then opens the door and step inside.";
				say "     [line break]";
				say "[OrcGangbang1]";
			-- 2:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck1]";
			-- 3:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck2]";
			-- 4:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[YaturFuck1]";
			-- 5:
				say "     ...find nothing much of use. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[MulFuck1]";

to say EscapeOption2:
	say "     You snatch up the hairpin you spotted before and try to pick the lock.";
	let bonus be (( dexterity of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 19 and score [dice plus bonus]: (Dexterity Check)[line break]";
	if dice + bonus >= 19:
		say "     ...after some tricky fiddling around, you manage to unlock the cell door with a click and slip outside. When you close the door behind you, its lock automatically snaps closed again.";
		move player to Breeder Lockup A;
		now OrcSlaverStatus is 2;
	else:
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then opens the door and step inside.";
				say "     [line break]";
				say "[OrcGangbang1]";
			-- 2:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck1]";
			-- 3:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck2]";
			-- 4:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[YaturFuck1]";
			-- 5:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[MulFuck1]";

to say EscapeOption3:
	say "     You take a few steps back and rush at the door, trying to batter it down by brute strength...";
	let bonus be (( strength of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 21 and score [dice plus bonus]: (Strength Check)[line break]";
	if dice + bonus >= 21:
		say "     ...and after some throwing yourself against it several times, you manage to break the lock. After that it's no problem at all to just walk outside.";
		if player is in Slave Cell 1:
			now Cell Door 1 is unlocked;
			if CellDoorStatus is 0 or CellDoorStatus is 2:
				increase CellDoorStatus by 1;
		else if player is in Slave Cell 2:
			now Cell Door 2 is unlocked;
			if CellDoorStatus is 0 or CellDoorStatus is 1:
				increase CellDoorStatus by 2;
		move player to Breeder Lockup A;
		now OrcSlaverStatus is 2;
	else:
		let randomnumber be a random number from 1 to 4;
		if randomnumber is:
			-- 1:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime, coming back with their minds now fully on other matters. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then opens the door and step inside.";
				say "     [line break]";
				say "[OrcGangbang1]";
			-- 2:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck1]";
			-- 3:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[KoghhFuck2]";
			-- 4:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[YaturFuck1]";
			-- 5:
				say "     ...without much success. And worse, your captors seem to have finished their meal in the meantime and are coming back - or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then opens the door and step inside.";
				say "     [line break]";
				say "[MulFuck1]";

to say EscapeOption4:
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:
			say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, finished with their meal and now fully focused on other matters - you being at the top of the list. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then find that the key doesn't work.";
			say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' one of the orcs growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still three horny orcs to satisfy...";
			say "     [line break]";
			say "[OrcGangbang1]";
			say "     [line break]";
			say "     After the three of them are out and away, having throwing the cell door closed behind them, you stand up from the leather bench, wet and sticky with cum as you are. They must have forgotten that the lock isn't working anymore - or maybe they're just trusting the intoxicating effects of the orc cum to keep you docile. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
		-- 2:
			say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then reaches to open the door and finds out the key doesn't work.";
			say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' he growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still a horny orc to satisfy...";
			say "     [line break]";
			say "[KoghhFuck1]";
			say "     [line break]";
			say "     After he's out and away, having throwing the cell door closed behind them, you stand up from the leather bench. Koghh must totally have forgotten that the lock isn't working anymore - or maybe he's just trusting you to be a docile little slave. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
		-- 3:
			say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then reaches to open the door and finds out the key doesn't work.";
			say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' he growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still a horny orc to satisfy...";
			say "     [line break]";
			say "[YaturFuck1]";
			say "     [line break]";
			say "     After he's out and away, having throwing the cell door closed behind them, you stand up from the leather bench. Yatur must totally have forgotten that the lock isn't working anymore - or maybe he's just trusting you to be a docile little slave. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
		-- 4:
			say "     Digging around in the remains of what the people dragged in here had with them, you manage to find several hairpins and bits of wire that you then stuff into the keyhole. With all that stuff in there, you're pretty sure the key won't fit anymore. Not long afterwards, your captors return, or at least one of them is. He comes to stand in front of the steel bars and eyes you with a lusty grin, then reaches to open the door and finds out the key doesn't work.";
			say "     'Bah - stupid lock. Wrong time to be stuck - I wanna fuck!' he growls, grabs the door and wrenches it open, completely breaking the lock in the process. That worked just like you planned - though before you can use the now easily opened door to get out of here, there's still a horny orc to satisfy...";
			say "     [line break]";
			say "[MulFuck1]";
			say "     [line break]";
			say "     After he's out and away, having throwing the cell door closed behind them, you stand up from the leather bench. Mul must totally have forgotten that the lock isn't working anymore - or maybe he's just trusting you to be a docile little slave. No matter what, you jump at the opportunity this gives you, snatching up your clothes and gear, then stepping out of the cell.";
	if player is in Slave Cell 1:
		now Cell Door 1 is unlocked;
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			increase CellDoorStatus by 1;
	else if player is in Slave Cell 2:
		now Cell Door 2 is unlocked;
		if CellDoorStatus is 0 or CellDoorStatus is 1:
			increase CellDoorStatus by 2;
	now OrcSlaverStatus is 3;
	move player to Breeder Lockup A;

to say EscapeOption5:
	say "     Bowing to the inevitable, you take off your gear and clothing, neatly stacking it all in the far corner of the cell where it has the best chance not to get dirty in what you know will happen soon. You await the orcs naked, sitting on the leather fuck-bench, determined to wear em out so you can escape afterwards. Soon, your captors return, finished with their meal and now fully focused on other matters - you being at the top of the list. They joke and chat about fucking some soldiers they met the day before as they walk up to your cell, then unlock the door and step inside.";
	say "     [line break]";
	say "[OrcGangbang2]";
	now OrcSlaverStatus is 3;
	increase carried of Cell Key by 1;
	move player to Breeder Lockup A;
	move Mul to Slave Cell 2;

An everyturn rule:
	if (OrcSlaverStatus > 0 and OrcSlaverStatus < 50 and player is in Slave Cell 1 or player is in Slave Cell 2) and (Mul is not in Slave Cell 1 and Mul is not in Slave Cell 2) and (OrcSlaverCaptureTime - turns > 1) and a random chance of 1 in 3 succeeds:  
		let randomnumber be a random number from 1 to 5;
		if randomnumber is:
			-- 1:
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually, looking to enjoy their slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[OrcGangbang1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
			-- 2:
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually - or at least one of them does, looking to enjoy his slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[KoghhFuck1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
			-- 3:
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually - or at least one of them does, looking to enjoy his slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[KoghhFuck2]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
			-- 4:
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually - or at least one of them does, looking to enjoy his slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[YaturFuck1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
			-- 5:
				say "     Sitting down on the bed, you wait - though not all that long, as your 'owners' come back eventually - or at least one of them does, looking to enjoy his slave[if OrcSlaverStatus > 1] again[end if].";
				say "     [line break]";
				say "[MulFuck1]";
				if OrcSlaverStatus is 1:
					now OrcSlaverStatus is 3;
	if bodyname of player is not "Orc Warrior" and player is in Breeder Lockup A or player is in Dark Hallway 1 or player is in Dark Hallway 2 or player is in Orc Lair Side Entrance and a random chance of 1 in 3 succeeds:
		challenge "Orc Warrior"; [random orc]
	else if bodyname of player is "Orc Warrior" and player is pure and (player is in Dark Hallway 1 or player is in Dark Hallway 2) and a random chance of 1 in 4 succeeds:
		say "[BoghrimSlaveDeal]";
	else if (player is in Dark Hallway 1 or player is in Dark Hallway 2) and a random chance of 1 in 4 succeeds:
		now inasituation is true;
		now OrcSpecialFightNumber is 1;   [meeting Mul]
		challenge "Orc Warrior"; [fighting Mul]
	if Mul is in Slave Cell 2 or Mul is in Slave Cell 1:
		if (player is in Slave Cell 2 and Mul is in Slave Cell 2) or (player is in Slave Cell 1 and Mul is in Slave Cell 1):
			say "     Mul's brothers return some time later, opening up the cell and waking him to accompany them on another raid. Rubbing sand from his eyes, the big orc grabs his loincloth, binds it around himself and leaves with them.";
		move Mul to Main Hall; 
	if player is in observation room and a random chance of 2 in 4 succeeds:
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1:
				say "     [OrcBrotherlyLove1]";
			-- 2: 
				say "     [ZebraBreederTransformation]";
			-- 3: 
				if MulAnalAcceptance > 4:
					say "     [ObservationRoomFuckMulAnal]";
				else:
					say "     [ObservationRoomFuck]";

to say OrcGangbang1:
	if OrcSlaverStatus is 1:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Though just so you know who owns you, I'm Mul and these are my brothers Yatur and Koghh. We'll break you in good, little piggy.' ";
	else: 
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Me and my brothers will fuck you good.' ";
	say "With that, they step up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're naked in between them. Their large orc hands grope you all over, roughly squeezing your ass and feeling you up. Seems like they like what they see, as all three of them quickly show bulges under their loincloths that soon harden to thick and erect orc cocks, pushing aside the ragged fabric as they do so.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		WaitLineBreak;
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'This is an eager little slut, brothers. Wait till you feel that mouth around your cocks!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're told to lie down on your stomach, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Eager to get more of the tasty orc precum and cum in your mouth, you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		WaitLineBreak;
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	else:   [normal players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		WaitLineBreak;
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice else if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your stomach, with your head hanging over the end. You quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Well, at least getting more of their tasty precum and cum should help a bit with the rough fucking you expect to get now, so you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		WaitLineBreak;
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	WaitLineBreak;
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [else if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out and make room for his brother Koghh - though him sinking another thick orc prick into your slick, cum filled hole brings you back to reality in a second, gasping at the sudden penetration. The third orc slaver, Mul, takes the opportunity to push his erection into your open mouth, taking hold of your head with both of his large hands to fuck your face.";
	WaitLineBreak;
	say "     The two orcs enthusiastically spit-roast you, with Mul working you up to deep-throat his big orc prick and Koghh relishing in the feelings of having his brother's cum squish around his thrusting shaft as he fucks you. The effects of all the orc cum you already have in you, as well as Mul's tendency not to give you quite enough time to breathe and combined with the sensations of getting shafted hard and deep leaves your mind in a bit of a haze, and you kinda lose track of time after that. An unknown while of many lust-filled moments later, Mul reaches his own climax and rams his cock all the way down your throat, pulsing as it blasts this thick orc cum directly into your stomach. This new infusion of oh so tasty and stimulating orc cum pushes you over the edge right with him, making you [if cocks of player > 0]cream the bench under you with even more cum.[else if cunts of player > 0]squirting even more femcum over the bench under your crotch.[otherwise]tremble and shake an orgasm wracks your body.[end if]";
	say "     Having your hole tremble and twitch around his orcish member while you come soon gives Koghh the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, adding his own spunk to his brother's cum already squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and pool on the leather bench.[mimpregchance]";
	WaitLineBreak;
	say "     Pulling out of you in satisfaction, the orcs grin at each other and down at your cum-dripping form. 'I like this one. Let's keep [if cunts of player > 0]her [otherwise]him [end if]just for us to breed' Yatur tells his brothers, immediately getting affirmative grunts from the other two. Chuckling and telling each other what they'll do do you next time, they then exit the cell, leaving you just lying on the bench, naked and exhausted.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
		say "     [line break]";
		say "     You feel something change deep inside you, as all the cum the three orcs filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The ['][bold type]MPreg[roman type]['] feat has been added to your list.";
		add "MPreg" to feats of player;
	decrease humanity of player by 10;
	if MulAnalAcceptance < 10 and MulAnalAcceptance > 1:
		decrease MulAnalAcceptance by 1;

to say OrcGangbang2:
	if OrcSlaverStatus is 1:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Though just so you know who owns you, I'm Mul and these are my brothers Yatur and Koghh. We'll break you in good, little piggy.' ";
	else: 
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Me and my brothers will fuck you good.' ";
	say "With that, they step up to you, clearly pleased to have you waiting for them in your fully naked state. Their large orc hands grope you all over, roughly squeezing your ass and feeling you up. Seems like they like what they see, as all three of them quickly show bulges under their loincloths that soon harden to thick and erect orc cocks, pushing aside the ragged fabric as they do so.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		WaitLineBreak;
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'This is an eager little slut, brothers. Wait till you feel that mouth around your cocks!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, he then tells you lie down on your stomach and you quickly do so, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Eager to get more of the tasty orc precum and cum in your mouth, you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		WaitLineBreak;
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	else:   [normal players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then make yourself swallow your pride and start lapping away at his nuts in earnest. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		WaitLineBreak;
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Really hoping that this'll be worth it in the end, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, he then tells you to lie down on your stomach and you quickly do so, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Well, at least getting more of their tasty precum and cum should help a bit with the rough fucking you expect to get now, so you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		WaitLineBreak;
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready. The orc slaver whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	WaitLineBreak;
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [else if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out and make room for his brother Koghh - though him sinking another thick orc prick into your slick, cum filled hole brings you back to reality in a second, gasping at the sudden penetration. The third orc slaver, Mul, takes the opportunity to push his erection into your open mouth, taking hold of your head with both of his large hands to fuck your face.";
	WaitLineBreak;
	say "     The two orcs enthusiastically spit-roast you, with Mul working you up to deep-throat his big orc prick and Koghh relishing in the feelings of having his brother's cum squish around his thrusting shaft as he fucks you. The effects of all the orc cum you already have in you, as well as Mul's tendency not to give you quite enough time to breathe and combined with the sensations of getting shafted hard and deep leaves your mind in a bit of a haze, and you kinda lose track of time after that. An unknown while of many lust-filled moments later, Mul reaches his own climax and rams his cock all the way down your throat, pulsing as it blasts this thick orc cum directly into your stomach. This new infusion of oh so tasty and stimulating orc cum pushes you over the edge right with him, making you [if cocks of player > 0]cream the bench under you with even more cum.[else if cunts of player > 0]squirting even more femcum over the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body.[end if]";
	say "     Having your hole tremble and twitch around his orcish member while you come soon gives Koghh the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, adding his own spunk to his brother's cum already squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and pool on the leather bench.[mimpregchance]";
	WaitLineBreak;
	say "     Pulling out of you in satisfaction, the orcs grin at each other and down at your cum-dripping form. 'I like this one. Let's keep [if cunts of player > 0]her [otherwise]him [end if]just for us to breed' Yatur tells his brothers, immediately getting affirmative grunts from the other two. Chuckling and telling each other what they'll do do you next time, they then turn to leave - something you can't let happen if you want to get out of here. Standing up on trembling legs, you call out 'Wait!' much to the surprise of the three big brutes who turn and look at you. As you step up to Mul and reach under his loincloth to caress his weighty balls, the orcs laugh and Koghh says 'Seems our horny little slut doesn't want to let you go without feeling your shaft inside, brother.' 'Yeah, a typical breeder' Yatur adds, then says 'Have fun - [if cunts of player > 0]she[otherwise]he[end if] really has quite a nice ass.' With that, Koghh and Yatur step out of the cell, leaving just you and Mul.";
	say "     'Come here, my eager little piggy' Mul grunts and pulls off his loincloth, letting it fall down to the ground. You casually notice the sound of a key clinking against the ground as it drops, not letting that realization show on your face, then step up to the muscled orc. Mul eagerly picks you up and holds you tight against his chest, then rubs the tip of his hard shaft against your ass. Good for you that you're still literally dripping with slippery orc cum down there, as he just pushes you down on top of it, impaling your ass on his thick prick. He uses you like an oversized fleshlight for a while pumping you up and down on his erection, though after a while it starts to show that he already came not too long ago and is somewhat worn out from that. Stepping over to the fuckbench, he lies down on it lengthwise on his back, with you on top of him."; 
	WaitLineBreak;
	say "     Taking the initiative, not wanting to let him catch his breath and rest too much, you start rocking back and forth, sliding the ring of your pucker up and down his green shaft, causing Mul to moan and pant in pleasure. Arousing him enough to forget his exhaustion, you animate the orc to grip your hips and buck up against you, driving his thick shaft deep into you with the unrestrained intensity of a real orcish warrior. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Mul fucks you for quite a while, then eventually starts grunting louder and louder as he gets close - and erupts with a massive load deep in your ass.[mimpregchance]";
	say "     The fresh batch of orc cum pumping into you gives you another mind-twisting high that has you just moaning and shivering on top of the brutish orc, orgasming right along with him and [if cocks of player > 0]spraying your own cum all over his chest. [else if cunts of player > 0]leaking femcum to soak into his pubic hair. [otherwise]trembling as pleasant feelings flood your whole body. [end if]Panting, you sink down on his chest, resting your head against its broad muscled form. You even doze off for a little while, just as he does - but other than the orc, who sinks deeper and deeper into sleep, you pinch yourself awake again. Lying on Mul's chest, you wait a while until his satisfied snores are deep and regular, then slowly and carefully slip out from under the muscled arm holding you to his chest. Sweaty and cum-dripping as you are, you silently un-knot the cell key from its string on his loincloth, then go grab your gear and clothes and slip out of the cell.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
		say "     [line break]";
		say "     You feel something change deep inside you, as all the cum the three orcs filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The ['][bold type]MPreg[roman type]['] feat has been added to your list.";
		add "MPreg" to feats of player;
	decrease humanity of player by 10;
	if MulAnalAcceptance < 10 and MulAnalAcceptance > 1:
		decrease MulAnalAcceptance by 1;
		
to say KoghhFuck1:
	say "     'My brothers Mul and Yatur are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' In one quick move, he pulls off his loincloth and throws it aside, revealing an already half hard thick and veiny cock. 'Let's see if you're ready to take the mighty shaft of Koghh!' he growls, jerking himself and then slapping his erect manhood into the palm of his other hand with a meaty thud. After a moment more of posturing and trying to intimidate you with the size of his cock, Koghh steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked. His large orc hands grope you all over, roughly squeezing your ass and feeling you up.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Seems like he likes what he sees, as his cock twitches a bit and a glistening drop of precum appears at its tip. Holding his shaft out to you, the muscular orc chuckles as you immediately kneel down and eagerly slide your lips over the tip of his erect cock. Fulfilling the demands of your horny and strong master has you getting quite aroused, only helped along by the delicious and stimulating taste of his precum. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Get on the fuckbench, slut!' he growls in a domineering tone that has you shivering with lust inside.";
		WaitLineBreak;
		say "     Quickly getting up and almost stumbling as you rush over to it, you're told to lie down on your back, with your head right at the end. The tall orc then moves to stand directly over you, his muscular legs left and right of your chest as his balls dangle in your face. Without having to be asked, you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master. Putting your hands on his thighs and stroking their firm, yet soft length, you settle into a good rhythm of licking and stroking, doing your very best for him.";
		say "     Looking up past his balls and erect cock, you see Koghh moan and put a hand to his muscled chest, rubbing one of his nipples with a thick finger. While doing so, he gives the room outside the cell a wary glance, then stops and listens, seemingly relieved that no other orc is near. You can feel his leg muscles tense and later relax as he makes a decision. Turning his attention to you, the orc slaver then says in a silent growl 'I'll break your legs if you tell anyone about this' and grips you under the arms, pulling you a bit up on the bench so your head dangles over the edge. With a last look towards the closed door of the room outside, he then steps forward and bends his knees a little, bringing his butt right against your face and pulling its firm cheeks apart.";
		WaitLineBreak;
		say "     Seems like your orcish master likes getting his ass eaten out, something that clearly isn't the norm about warrior orcs, and which you're of course willing to do as his obedient slave. Pressing your nose against the somewhat hairy skin between his legs, you take a deep sniff of his clean, masculine smell and start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
		say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' Happy and willing to serve, as always, you immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and even the ground outside.";
		WaitLineBreak;
		say "     After waiting a moment to catch his breath, Koghh quickly pulls away from you and walks to the other end of the bench. He takes hold of your legs, raising and spreading them, then grasps his still pretty hard cock and rubs it against your ass, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Dropping your legs after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc quickly snatches up his loincloth and ties it around his hips, then leaves the cell and throws its door shut behind himself.";
	else:   [normal players]
		say "     Holding his shaft out to you, Koghh grunts in impatience as you don't react at once, then puts a hand on your shoulder and pushes down, making you kneel. The grunted command of 'Get to work, slave' and him gripping your hair finally results in you reluctantly opening your mouth and sliding your lips over the tip of his erect cock. Suckling on the orc's cock gives you a surprisingly delicious and stimulating taste of his precum, and despite yourself you can't help but get aroused. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Get on the fuckbench, slut!' he growls in a domineering tone.";
		WaitLineBreak;
		say "     Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your back, with your head right at the end of the bench. The tall orc then moves to stand directly over you, his muscular legs left and right of your chest as his balls dangle in your face. Hesitantly giving his hairy globes a lick or two, you wince as he gives your hair a jerk and growls 'Faster'.. As annoying Koghh wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest.";
		say "     Looking up past his balls and erect cock, you see Koghh moan and put a hand to his muscled chest, rubbing one of his nipples with a thick finger. While doing so, he gives the room outside the cell a wary glance, then stops and listens, seemingly relieved that no other orc is near. You can feel his leg muscles tense and later relax as he makes a decision. Turning his attention to you, the orc slaver then says in a silent growl 'I'll break your legs if you tell anyone about this' and grips you under the arms, pulling you a bit up on the bench so your head dangles over the edge. With a last look towards the closed door of the room outside, he then steps forward and bends his knees a little, bringing his butt right against your face and pulling its firm cheeks apart.";
		WaitLineBreak;
		say "     Seems like your orcish 'owner' likes getting his ass eaten out, something that clearly isn't the norm about warrior orcs. As tense as he is right now, you don't even want to know how he'd react if you refused, so there isn't much choice but to comply. Sniffling with your nose so close to the hairy skin of his butt, you're relieved that at least he smells clean, only of the usual masculine orc scent and nothing else. With a sigh, you start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
		say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and even the ground outside.";
		WaitLineBreak;
		say "     After waiting a moment to catch his breath, Koghh quickly pulls away from you and walks to the other end of the bench. He takes hold of your legs, raising and spreading them, then grasps his still pretty hard cock and rubs it against your ass, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Dropping your legs after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc quickly snatches up his loincloth and ties it around his hips, then leaves the cell and throws its door shut behind himself.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if Koghhstatus is 0:
		now Koghhstatus is 1;

to say KoghhFuck2:
	if Koghhstatus is 0:
		say "[KoghhFuck1]";
	else:
		say "     'My brothers Mul and Yatur are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' Koghh says with a lusty grin, rubbing the large bulge of his already half-hard cock through the loincloth barely concealing it. 'You... know what I like slave,' he tells you in a low voice, then continues, 'And that it's best for you if you keep quiet about it. So get on the fuckbench and -'";
		say "     [line break]";
		say "     Suddenly, the door to the slave lockup is slammed open, making you and Koghh whip around to see an obviously drunk orc warrior brace himself with a hand on the door-frame. '*Belch* What are you doing in my - huh, wait. Where's my bed and loot? Someone stole it! I'm gonna break some heads and get it back!' With that, the boozy orc lets the door fall closed gain, staggering off to pick a fight with someone. Koghh's face draws into a snarl at getting interrupted - and almost found out. 'We can't do this here right now. Follow me, slave - I've got a key for a more private room.'";
		say "     [line break]";
		say "     Opening the cell door, Koghh quickly ushers you out, then into the dark corridor just outside the slave lockup. He pulls out a key bound to his loincloth with a string, then unlocks the door just opposite and pushes you into the pitch-black room beyond. Following you in, he pulls the door closed behind himself and hits a switch, turning on a portable and battery-powered spotlight standing against a wall, bathing the room in light. Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
		WaitLineBreak;
		say "     After locking the door and trying the handle to make sure it really is securely locked, the Koghh pulls off his loincloth and throws it aside, revealing his thick and veiny cock. 'Time to please your master!' he growls, jerking himself and then slapping his erect manhood into the palm of his other hand with a meaty thud. After a moment more of posturing and trying to intimidate you with the size of his cock, Koghh steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked. His large orc hands grope you all over, roughly squeezing your ass and feeling you up.";
		if "Submissive" is listed in feats of player:   [sub players]
			say "     Seems like he likes what he sees, as his cock twitches a bit and a glistening drop of precum appears at its tip. Holding his shaft out to you, the muscular orc chuckles as you immediately kneel down and eagerly slide your lips over the tip of his erect cock. Fulfilling the demands of your horny and strong master has you getting quite aroused, only helped along by the delicious and stimulating taste of his precum. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Move over there, now!' he growls in a domineering tone that has you shivering with lust inside.";
			WaitLineBreak;
			say "     Quickly getting up and almost stumbling as you rush over to the bench, you're joined a moment later by your orc master, who lies down with his stomach on it. He positions himself with spread legs so his hips are just past the end of the bench, allowing his cock do dangle freely below and presenting his muscled and shapely ass to you. Looking over his shoulder, Koghh commands 'Get licking, slut!' and you of course immediately obey, kneeling behind the muscled brute. Pressing your nose against the somewhat hairy skin between his legs, you take a deep sniff of his clean, masculine smell and start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
			if bodyname of player is "Orc Warrior" and cockname of player is "Orc Warrior" and cocks of player > 0:
				say "     [line break]";
				say "     [bold type]In the horny and aroused state you're in right now, your own orc nature rears its head and pushes the idea of burying your manhood in Koghh's ass to the forefront of your mind. You've got him in a perfect position to do it - but do you really want to suppress your normal submissive urges and take the chance to fuck your master?[roman type][line break]";
				if player consents:
					say "     [line break]";
					say "     Pushing two fingers in Koghh's hole, you keep fondling him while quietly standing up and taking hold of your shaft with the other hand. Then, with your hard cock lined up and ready, you quickly pull your probing digits away and thrust in, penetrating his hole with a smooth glide. Hitting his sensitive prostate good, you make the orc howl in lust and pleasure. He feels pretty amazing inside, being well-lubed with all the cum already in there and squishing around your member, as well as having an experienced bottom's reflex to stretch readily for your entry and then tightening the inner muscles to grip your shaft. As Koghh gets over the surprise of suddenly being penetrated by you, there is a moment in which he tightens his arm muscles as if to throw you off and he gives the start of a snarl over his shoulder. Already being balls-deep inside him, you quickly decide to just keep going and hope for the best, fucking him with rapid thrusts. It even works - Koghh starts to moan loudly when his annoyance is overshadowed by lust and he relaxes again, taking everything you can dish out and panting to fuck him harder.";
					say "     With that, the floodgates of your own orcish instincts break completely and you start giving your master a hard and deep fuck, really pounding into him. You don't know for how long the wild coupling between you lasts, and you don't really care in the lust-filled haze you find yourself in. At some point in the unrestrained copulation between the two of you, the brutish bottom's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum that splats down audibly all over the floor under him, drops splashing over your feet and legs. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc 'owner' in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the orc's hips, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
					WaitLineBreak;
					say "     Exhausted but happy, you pull out of your orc's well-bred hole, then stand up on somewhat weak knees - only to find yourself sprawled out on the ground a moment later as Koghh stands up and punches you out. Standing over you as you regain consciousness, the orc growls 'Just a little reminder that you're still a slave. My slave. Fucking me means nothing - I only allowed it because you were halfway decent.' With that, the orc snatches up a piece of your clothing and wipes the cum off his hole, then throws the now sticky garment to you. He allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Warrior";
					infect "Orc Warrior";
					if Koghhstatus < 2:
						now Koghhstatus is 2;
				else: 
					say "     Your hesitation as you ponder the idea is interrupted by Koghh, who gives a grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
					WaitLineBreak;
					say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Breeder";
					infect "Orc Breeder";
			else:
				say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' Happy and willing to serve, as always, you immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
				WaitLineBreak;
				say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
				say "     [line break]";
				infect "Orc Breeder";
				infect "Orc Breeder";
		else:   [normal players]
			say "     Seems like he likes what he sees, as his cock twitches a bit and a glistening drop of precum appears at its tip. Holding his shaft out to you, Koghh grunts in impatience as you don't react at once, then puts a hand on your shoulder and pushes down, making you kneel. The grunted command of 'Get to work, slave' and him gripping your hair finally results in you reluctantly opening your mouth and sliding your lips over the tip of his erect cock. Suckling on the orc's cock gives you a surprisingly delicious and stimulating taste of his precum, and despite yourself you can't help but get aroused. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Move over there, now!' he growls in a domineering tone.";
			WaitLineBreak;
			say "     Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're joined a moment later by your orc master, who lies down with his stomach on it. He positions himself with spread legs so his hips are just past the end of the bench, allowing his cock do dangle freely below and presenting his muscled and shapely ass to you. Looking over his shoulder, Koghh commands 'Get licking, slut!' and you obey after he growls 'Now! I'll get angry if you make me stand up again,' kneeling behind the muscled brute. Sniffling with your nose so close to the hairy skin of his butt, you're relieved that at least he smells clean, only of the usual masculine orc scent and nothing else. With a sigh, you start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
			if bodyname of player is "Orc Warrior" and cockname of player is "Orc Warrior" and cocks of player > 0:
				say "     [line break]";
				say "     [bold type]Given how horny and aroused you've gotten by now, the idea of burying your own manhood in him comes to your mind. You've got him in a perfect position to do it - do you take the chance to try fucking your 'owner'?[roman type][line break]";
				if player consents:
					say "     [line break]";
					say "     Pushing two fingers in Koghh's hole, you keep fondling him while quietly standing up and taking hold of your shaft with the other hand. Then, with your hard cock lined up and ready, you quickly pull your probing digits away and thrust in, penetrating his hole with a smooth glide. Hitting his sensitive prostate good, you make the orc howl in lust and pleasure. He feels pretty amazing inside, being well-lubed with all the cum already in there and squishing around your member, as well as having an experienced bottom's reflex to stretch readily for your entry and then tightening the inner muscles to grip your shaft. As Koghh gets over the surprise of suddenly being penetrated by you, there is a moment in which he tightens his arm muscles as if to throw you off and he gives the start of a snarl over his shoulder. Already being balls-deep inside him, you quickly decide to just keep going and hope for the best, fucking him with rapid thrusts. It even works - Koghh starts to moan loudly when his annoyance is overshadowed by lust and he relaxes again, taking everything you can dish out and panting to fuck him harder.";
					say "     With that, the floodgates of your own orcish instincts break completely and you start giving your 'owner' a hard and deep fuck, really pounding into him. You don't know for how long the wild coupling between you lasts, and you don't really care, in the lust-filled haze you find yourself in. At some point in the unrestrained copulation between the two of you, the brutish bottom's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum that splats down audibly all over the floor under him, drops splashing over your feet and legs. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc 'owner' in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the orc's hips, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
					WaitLineBreak;
					say "     Exhausted but happy, you pull out of your orc's well-bred hole, then stand up on somewhat weak knees - only to find yourself sprawled out on the ground a moment later as Koghh stands up and punches you out. Standing over you as you regain consciousness, the orc growls 'Just a little reminder that you're still a slave. My slave. Fucking me means nothing - I only allowed it because you were halfway decent.' With that, the orc snatches up a piece of your clothing and wipes the cum off his hole, then throws the now sticky garment to you. He allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Warrior";
					infect "Orc Warrior";
					if Koghhstatus < 2:
						now Koghhstatus is 2;
				else: 
					say "     Your hesitation as you ponder the idea is interrupted by Koghh, who gives a grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
					WaitLineBreak;
					say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Breeder";
					infect "Orc Breeder";
			else:
				say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
				WaitLineBreak;
				say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
				say "     [line break]";
				infect "Orc Breeder";
				infect "Orc Breeder";

to say YaturFuck1:
	say "     'My brothers Mul and Koghh are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' He chuckles and grips the bulge in his loincloth, continuing with 'You won't forget the name Yatur after I'm done with you.' With that, he steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked before him. His large orc hands grope you all over, roughly squeezing your ass and feeling you up. ";
	if skinname of player is not "Orc Breeder" and skinname of player is not "Orc Warrior" and skinname of player is not "Hulking Cheerleader":
		say "'Oh yes, you'll do nicely. I can't wait till you have beautiful green skin on you...'";
	else if player is impreg_now:
		say "'Oh yes, you'll do nicely. I can't wait till you give birth and I can fill you up with my seed again. You're gonna be a proper little breeder and bear me lots of children...'";
	else:
		say "'Oh yes, you'll do nicely. I can't wait to fill you with my seed and knock you up like a proper little breeder...'";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Yatur shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair.";
		WaitLineBreak;
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'Aah, nice - an eager little slut!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'You won't get out of being bred by swallowing my seed, if that's what you were planning. Tempting, but no - I'm gonna take your ass now. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, Yatur tells you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready.";
		WaitLineBreak;
		say "     Your orcish master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	else:   [normal players]
		say "     Pulling the ragged fabric of his loincloth aside, Yatur shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest.";
		WaitLineBreak;
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice else if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'You won't get out of being bred by swallowing my seed, if that's what you were planning. Tempting, but no - I'm gonna take your ass now. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready.";
		WaitLineBreak;
		say "     Your orc 'owner' whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	WaitLineBreak;
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [else if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out - though the sensations of him pushing a thick finger into your stretched, cum-filled hole brings you back to reality in a second, gasping at the sudden penetration. After pushing his probing finger in and out a few times and using it to rub your insides, Yatur walks around the bench and holds out his hand with the command 'Taste it'.";
	WaitLineBreak;
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Sucking some of the cum he just fucked into your ass from your master's fingers - of course you jump at this, moaning as you pull his hand closer eagerly. Then your lips are around his digit, eagerly sucking on it to get all of the nectar-like orc cum off. Yatur chuckles and says 'That's a good breeder. I'm gonna love knocking you up again and again.' After giving you some more moments to really clean up all of the tasty cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";
	else:
		say "     Sucking some of the cum he just fucked into your ass from your 'owner's' fingers - the thought makes you grimace and flinch away. Though not far - as Yatur's other hand quickly gets a painful grip in your hair and holds you still. 'Struggling won't help you, slave' the orc barks and pulls your head back, sticking his cum-covered finger into your mouth as you yelp in pain. 'Now clean it, suck it all off and swallow' he commands, and you're forced to comply. Even worse, his seed actually tastes quite good, making you a bit light-headed as you swallow it. Yatur chuckles and says 'Don't worry little breeder, you're gonna calm down and get more docile with every child you bear for me.' After giving you some more moments to really clean up all of the cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";
	
to say OrcBrotherlyLove1:  [Koghh + Yatur]
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and three people enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc masters Yatur and Koghh, followed by a smaller orc - a breeder, judging from the different stature and almost pretty features. Yatur turns his head to the door and bellows 'We'll fill this little breeder till he bursts', and his brother intones in the same volume 'Yeah, can't wait to fuck the needy slut!' Interestingly, Koghh also speaks more towards the open door than actually to Yatur. A moment later he throws the door shut with a slam, then locks it.";
	else:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and three people enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owners' Yatur and Koghh, followed by a smaller orc - a breeder, judging from the different stature and almost pretty features. Yatur turns his head to the door and bellows 'We'll fill this little breeder till he bursts', and his brother intones in the same volume 'Yeah, can't wait to fuck the needy slut!' Interestingly, Koghh also speaks more towards the open door than actually to Yatur. A moment later he throws the door shut with a slam, then locks it.";
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     [bold type]Do you want to watch what happens next in the interrogation room?[roman type][line break]";
	if player consents: 
		say "     [line break]";
		say "     While the smaller orc saunters to one of the couches and sits down on it, Yatur picks up an orc-cock-sized dildo and a sting of anal beads and drops em on the couch beside him. After that, he goes to pick up a bottle of lube, throwing it for the green-skinned man to catch, and then... Yatur is pushed back against the wall by his brother Koghh, who runs a hand over his muscled chest and then kisses him. What follows is an eager and enthusiastic bit of making out and groping each other, rather rough and wild, but still letting the underlying deep-seated affection between those two show through. Meanwhile, their slave on the sofa starts playing with himself, soon lubing up the dildo his master gave him and pushing it into his own ass. And judging from the lust-filled expression on his face and the easy way he takes the pretty big sex toy, he obviously has been trained very well. He'd have to be, if the two brothers trust him enough to be their cover for some alone-time in here."; 
		say "     Coming up for air after another kiss, Yatur puts his hands on Koghh's sides, gently stroking them as he looks into the other orc's eyes deeply. You can hear him moan 'I love you, little brother', which makes Koghh put a caressing hand on his chest and give him a happy smile. This peaceful and caring moment lasts for another few seconds, then Yatur grunts 'Let's fuck!' and puts both his arms around Koghh, gripping his firm buttcheeks tightly as he pulls him close and lifts the large orc. Carrying his bother, Yatur makes a few steps over towards the sturdy bench in the center of the room, then lowers Koghh to sit on it. After quickly untying his lover's loincloth and pulling it aside, the powerful orc warrior puts a hand on Koghh's balls and fondles them for a moment before softly pushing against his chest to make him lie back.";
		WaitLineBreak;
		say "     Stretched out on the padded leather of the bench, his firm butt just at the end of it, Koghh lifts and spreads his legs. Hooking both hands under the hollows of his knees, he comfortably holds them up, baring his butthole to Yatur. Aroused at the invitation, the orc quickly kneels down and starts licking, first running his tongue along the crack between Koghh's firm buttcheeks, then starting to push it against his pucker. Moans fill the chamber as Yatur eats his brother out, causing the other orc to writhe in pleasure and drip precum from his hard cock. After several minutes of this, Koghh reaches down to pull his lover's head up, then gives the urgent grunt 'Fuck me. Now! I need you inside me.'";
		say "     Yatur is only too happy to comply, literally tearing his own loincloth off as he quickly takes a kneeling position between Koghh's legs. He lines up his thick orc cock with his brother's hole and thrusts deep, making both of them grunt loudly in lust. Holding on to Koghh's legs, Yatur then starts to really pound into him, creating a slapping noise each time his hips hit the other orc's ass. It's incredibly wild, rough and intense sex without any restraints - just like Koghh likes it, apparently - as he gasps and grunts for Yatur to take him even harder. At one point, when the older orc brother leans over his sibling to lick and play with his nipples, he even gives him a light bite on the right pec, leaving some shallow tooth and tusk impressions in Koghh's skin.";
		WaitLineBreak;
		say "     Their coupling eventually culminates when Koghh's moans get louder and louder and build up to a lust-filled scream. Wrapping both his legs around Yatur's hips and pulling him close as he orgasms, Koghh starts blasting many thick spurts of orc cum high into the air to splatter all down all over his chest and face. His brother is only moments behind, as the trembling and flexing muscles in Koghh's ass push him over the edge in short notice, and he pumps quite a massive load deep into the other orc's insides. Still breathing heavily as their orgasms wind down, the two orc warriors give each other a long and loving kiss and just hold each other for a while.";
		say "     Eventually, Yatur raises his head and calls to their decoy slave 'Come her and clean us up, Orbul.' The naked orc breeder on the couch immediately replies 'Yes master'. After quickly popping the last (and biggest) ball of the string of anal beads he's currently playing with into his hole, he then hurries to get to the orc brothers, hungrily lapping up all the cum from Koghh's chest, then sucking clean Yatur's cock. Orbul laps up the crack between the lying orc warrior's buns next, but as he starts to eat Koghh's freshly bred hole, the orc slaver grunts 'No, leave it. I want to keep some of his essence inside me.' Obedient as ever, Orbul pulls back from tonguing his master's hole and gets back to just giving him a tongue-bath, licking up any last traces of cum.";
		WaitLineBreak;
		say "     After Orbul finishes cleaning both his masters, the two brothers sit on one of the couches together. While they kiss and caress each other, the slave gets to work jerking himself off and blows his load not too long afterwards. He catches it all in a cupped hand, then reaches between his legs and smears the sticky goop on his crack and butt, providing ample evidence for the 'official' version of what happened in here. Some short while later, Koghh and Yatur give each other a last kiss, then get back into character, loudly praising Orbul's well-trained hole as they unlock the door and lead him from the room.";
	else: 
		say "     [line break]";
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";

to say ZebraBreederTransformation:
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc masters Yatur and Mul, and that Mul is carrying a someone over his shoulder too - a male, thoroughly tied-up zebra. Mul grunts to his brother, 'This one will be fun to break in', then plops down his burden on a couch in the room and undoes the main knot of the captive's bindings. Meanwhile Yatur throws the door shut with a slam and locks it, then the two orcs hungrily watch the zebra wiggle out of the ropes around his body and stand up.";
	else:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owners' Yatur and Mul, and that Mul is carrying a someone over his shoulder too - a male thoroughly tied-up zebra. Mul grunts to his brother, 'This one will be fun to break in', then plops down his burden on a couch in the room and undoes the main knot of his bindings. Meanwhile Yatur throws the door shut with a slam and locks it, then the two orcs hungrily watch the zebra wiggle out of the ropes around his body and hurriedly stand up.";
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     [bold type]Do you want to watch what happens next in the interrogation room?[roman type][line break]";
	if player consents: 
		say "     [line break]";
		say "     You weren't the only one looking around - the zebra guy obviously did the same, getting wide-eyed at seeing the furniture and items in there, plus the numerous cum-stains all around. Frantically looking for a way to escape and finding the only door blocked by his orc captors, he takes on a defensive position with his back to a wall and shouts 'Let me go, you brutish bastards! I'll fight!' Unconcerned with their equine captive's balled fists and shouts, the two orcs just stand at the door relaxedly and Yatur remarks to his brother 'Oh yeah, that one has some spunk. He'll make a great broodmare. Can't wait to knock him up.' As he hears that, the zebra's face shows bafflement, then the nonplussed expression changes to angry annoyance 'Wait - WHAT? Broodmare? Did you two dimblulbs drag me all the way here because you're too stupid to recognize the difference between a male and a female zebra? I - I can give you mares - one for each of you. Just let me back to my herd and they're yours!'";
		say "     The two orcs just chuckle and start walking towards the striped man's position with lust in their eyes. Getting more and more desperate, the zebra shouts 'Okay - two for each. Or three even!' He swings a punch at Yatur as the orc reaches out for him, but the green-skinned brute just catches his fist in one of his large hands with casual ease. Next, the orc draws the zebra into a bear-hug, pinning his arms against his sides with his muscular arms and lifting him off the ground. Looking directly into the zebra's eyes from just a short distance away, the muscled warrior says in an amused tone 'We don't need your weak-ass sluts. I'm gonna knock YOU up and you'll bear many strong orcs for me. You'll see, my little pony.' Giving the impotently struggling zebra guy's butt a lusty grope, Yatur carries him over to the bench in the middle of the room and sets him down on it, then holds him down with his back to the leather padding. Mul quickly fastens some restraints on the equine's arms and legs. All the while, the zebra still pleads, begs and curses to let him go, without getting much attention from the orcs.";
		WaitLineBreak;
		say "     Quickly throwing aside their loincloths, the two orc brothers jerk their massive green manhoods and play a bit with their captive, softly slapping the meaty lengths of cock against his body and rubbing them over his short fur. Mul even reaches down to cup the equine slave's balls, gently squeezing them with his large fingers. At first, the zebra pulls on his restraints and tries to avoid their touch, though over time, he can't help but get aroused - as becomes obvious by his own long piece of horseflesh pushing out of his sheath to lie on his stomach. At some point, the pleading and whining from their captive stops completely, replaced by soft moans as his body is touched and stroked.";
		say "     After another minute or two, Mul gives a satisfied grunt and steps to the head-end of the bench, holding out his mighty pole directly over the zebra's face. 'Come on, lick me horsie.' he snaps at their captive in a commanding tone - and is obeyed. Accepting his role, the equine uses his long tongue to give a tentative lick at the orc's hairy balls, followed by another and another. Mul gives a pleased chuckle as the now submissive slave gets to work on him. 'Very nice, pet. Now why don't you...' he says, then starts to coach him on how to worship his full orbs and mighty manhood properly. Meanwhile, Yatur has moved to stand between the zebra's legs and is just smearing some of the copious amount of precum dripping from his cock on the zebra's asshole. He proceeds to massage around the equine slave's back door with his fingers to get him nicely relaxed, then pushes his index-finger in against the zebra's pucker.";
		WaitLineBreak;
		say "     The eagerness with which the formerly dominant and resisting zebra stallion licks and sucks Mul's cock and balls while his own ass is being fingered demonstrates the insidious power of the nanite infection once more, as it doesn't just rewrite bodies, but also affects people's minds. Gone is the proud stud with his herd of mares, replaced before your watching eyes with a submissive pony-boy leaking cum on his own chest as his masters use him for their pleasure. It's clear that he's now fully theirs, which prompts the orcs to undo his leather bindings. Freed from the restraints, the zebra puts his hands to good use in stroking Mul's cock and fondling him. At the same time, he raises his legs, spreading them invitingly for Yatur.";
		say "     'Say goodbye to your virginity, my little pony,' Yatur chuckles and lines his thick shaft up with the zebra's pucker. Gripping the striped equine's hips with two large hands, he then presses forward, giving a satisfied grunt as he pushes through his back door, stretching it tight around his invading member. The thick and meaty shaft probing his ass makes the zebra gasp loudly, though as the orc's manhood sinks deeper into his body, pleasant feelings prevail and make him pant in lust. Though even though he's getting many good sensations from being touched in sensitive spots deep inside him, it's still a quite lot to take. A fact that the orc knows too, causing him to move deeper only slowly and with surprising patience, sometimes even stopping for a moment so his fucktoy can get used to it. Some time later, Yatur finally bottoms out inside the zebra, hard shaft buried all the way and his two large cum-factories resting against the slave's skin.";
		WaitLineBreak;
		say "     After giving the zebra a moment to get used to the stretching feeling of having a whole foot of hard cock inside his ass, Yatur pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his balls whack against the equine's ass. No wonder he went so slow before, or that'd have ripped the stallion in two! And the orc warrior just keeps on going like that, now taking out all the stops and really pounding into his slave like the big brute he is. The sensations of his thrusts make the zebra moan and howl in lust, loud even though muffled by Mul's cock in his mouth. Strongly aroused by being the first to break in this stallion's very tight hole, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in the zebra's ass as he pumps blast after blast of cum into him.";
		say "     Getting filled by Yatur's massive load of orc cum makes the striped slave go wild, shuddering as its special properties push his arousal right over the edge. Bucking his hips, the zebra orgasms, his cock proudly erect and pulsing with blast after blast of cum spraying all over his chest. Totally lost in the sensations going through him, he just lies on the bench and twitches with each pulse, no longer able to consciously suck Mul. Being eager to get his rocks off himself, the orc therefore pulls out of his mouth and quickly jerks himself, gushing his own cum all over his equine pet just moments later.";
		WaitLineBreak;
		say "     Standing over their newly broken-in zebra slave, the two orc brothers give each other a grin and high-five. They watch with satisfaction as all the cum on (and in) their fucktoy has a transformative effect, first in a wave of green spreading over his fur to replace all the white parts of his striped pattern, then in four tusks pushing into view along his long muzzle. The two long and two shorter fangs show clearly that his zebra no longer is a herbivore, and as he gasps a moment later, you can see quite a few more sharp teeth in his long muzzle too. With that, the external changes come to a halt, though something just tells you that his internal conversion was far more complete and this stallion's belly will soon swell with Yatur's child.";
		say "     Inspecting and groping the zebra boymare's new form, Mul runs a finger through the cum puddles on his chest, then asks 'There, do you want to go back to your herd now, horsie?' The zebra quickly answers 'No, master. I want to be your slave, your pet. Please keep me - I want you - I need you!' While giving an accepting nod, Mul starts feeding the zebra cum wiped off his chest. As his brother does so, Yatur remarks 'Let's call him Prancer - I like how his ass looks when he moves on those hoofs, and as he seems to be staying that shape, it fits.' Accepting his new name without hesitation, Prancer is allowed to lick their cocks clean and milk out the last drops of cum. Then they lead him from the room, now docilely following after them.";
	else: 
		say "     [line break]";
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";
	
Section 3 - NPCs

[ hp of Orc Mob                                                    ]
[  0: player never partied with them                               ]
[  1: player partied with them before - ready for the slave hunt   ]
[  2: Boghrim called for the slave hunt                            ]
[  3: player didn't go out with the first hunt                     ]
[  4: player went out with the first hunt                          ]

[ libido of Orc Mob - breeder hunt competition counter             ]
[  0: no rounds in the competition won                             ]
[  1: won one round                                                ]
[  2: etc.                         ]

Orc Mob is a man.
The description of Orc Mob is "[OrcMobDesc]".
The conversation of Orc Mob is { "Yap!" }.
Orc Mob is in Main Hall.

to say OrcMobDesc:
	if debugactive is 1:
		say "     DEBUG: HP OF ORC MOB: [hp of orc mob] [line break]";
	say "     About twenty orc warriors hang around in here and are busy drinking, boasting about themselves, even fucking an orc breeder or two right in the middle of the room. Their brutish impulses really come to the forefront in a group, and you can see games of strength like arm-wrestling and fights where they barely hold back going on. The big room is filled with a constant background noise of deep-voiced cajoling and conversation, in combination with grunts and moans.";

instead of sniffing Orc Mob:
	say "     The attractive male scent of orcs hangs in the air, with slight undertones of cum, sweat and booze - that just serve to make them appear even more manly somehow.";

instead of conversing the Orc Mob:
	if cocks of player < 1:
		say "     With the gang of horny brutes being who and what they are, there is a definite risk of drawing the wrong kind of attention to yourself if you can't keep up with their testosterone-fuelled antics. It really might be best if you at least had a dick before you joined the crowd. A loincloth isn't all that hard to pull to the side, and you've seen several of the guys grab another orc's balls to check who has the biggest nuts. Things might get dicey if you're 'unmasked' as having no dick right here in the hall...";
	else:
		say "     The orcs do look like a pretty rowdy bunch, drinking together, fucking slaves right in front of one another and boasting about their feats. [bold type]Do you really want to join the crowd and get pulled into such behaviour?[roman type][line break]";
		if player consents: 
			if hp of Orc Mob is 0: [first time]
				say "     Joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand, listening to boastful stories how this one [one of]fucked a minotaur[or]fucked a latex fox till it was ballooned up to a cream-filled sphere[or]made an incubus drink his cum[or]punched out a shaft beast with one hit[or]got sucked off by a weird anime fan-girl[or]humped an orca[at random] or that one [one of]brought down a behemoth[or]had a poodle lap his dick[or]pounded a wyvern into submission[or]used a rubber tigress as a fleshlight[at random]. To fit in, you make up a story about turning [one of]an alpha husky[or]a German Shepherd[or]a hyena[or]a centaur[at random] into your private bitch and get cheers as you finish the imaginary conquest. All in all, you have a pretty good time with the other orcs, then eventually leave them to get back to other matters. But even as you do, the story you invented is still at the forefront of your mind, with your inner orc pushing hard against your will to accept him and put those thoughts into reality.";
				now hp of Orc Mob is 1;
				decrease humanity of player by 10;
				decrease thirst of player by 20;
				infect "Orc Warrior";
				if thirst of player < 0:
					now thirst of player is 0;
			else if hp of Orc Mob is 1: [second time]
				say "     Again joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand, listening to boastful stories how this one [one of]fucked a minotaur[or]fucked a latex fox till it was inflated into a cream-filled sphere[or]made an incubus drink his cum[or]knocked out a shaft beast with one hit[or]got sucked off by a weird anime fan-girl[or]humped an orca[at random] or that one [one of]brought down a behemoth[or]had a poodle lap at his dick[or]pounded a wyvern into submission[or]used a rubber tigress as a fleshlight[at random]. To fit in, you make up a similar story - but before you're more than a few words in, shouting breaks out on the other side of the drinking hall. Looks like there's a sort of 'tug of war' for a breeder slave, with one orc holding the smaller green-skinned man to his chest and another especially big orc warrior wanting to pull the breeder back over to him.";
				if graphics is true:
					WaitLineBreak;
					project the figure of Urik_naked_icon;
				say "     'Fuck you! It's my turn now Urik,' the first orc bellows, man-handling the breeder by lifting him up with one arm and unsuccessfully trying to jam him down on his own cock. Meanwhile orc number two - Urik, it seems - slaps the restraining hand of his opponent aside and gets a hold of the slave's arm, pulling on him too. 'I wasn't done fucking him, you ass! You can't just pull a bitch off someone's dick just because you want to, Rakgh!' the big brute snarls and tries to kick his rival, which orc warrior number one easily side-steps. Their scuffle continues for a few moments longer with both brutes getting angrier and angrier as they shake the helpless and whimpering orc breeder back and forth like a rag-doll. The gathered crowd cheers on the fight, everyone being quite happy to see some action - and tempers flare higher and higher until things really get out of hand finally. As the confrontation continues, Urik gives a nasty tug on the breeder, causing a snapping sound followed by a scream as the smaller orc's arm breaks.";
				WaitLineBreak;
				say "     A wince goes through the crowd as they all look at the wailing slave. Barely three second later, a deep voice cuts through the racket, 'That's enough you two! Pull yourselves together.' Urik is too enraged to really care about anything but his opponent, so he snarls 'Fuck off' over his shoulder, not even bothering to check who spoke... which earns him a full-force knockout punch by Boghrim the orc chief, the biggest of them all and not in the mood to be disrespected. As the orc warrior collapses in a spray of teeth-fragments and greenish blood, Rakgh is quick to surrender himself to his boss, letting go of the breeder like he was on fire. Boghrim snarls at that too, catching the abused orc before he can fall down. With a growl, he snatches a flagon of orc brew from the nearest spectator and pushes it at the slave while saying, 'Shut up and stop whining! Here, drink this. It'll help the healing and man you up!'";
				say "     With the orc breeder obediently chugging away, Boghrim turns his attention to the crowd and the two brutes who started the fight. 'Listen up you fuckers! I swear some of you are dumb as bricks. What are breeder sluts for, huh?' After a few seconds of silence, various orcs shout words in reply - 'Fucking!', 'Fun!', 'Making orclings!', 'Cleaning!', 'Bed-warmers!, ... The orc boss waits a while till the guys start to repeat themselves, then gives a grunted snort. 'That's right! There's hope for you yet. The one thing they're NOT is PUNCHING BAGS. Look at our former law officers - Lawrie, on your feet!' Boghrim points at his hang-out couch on the platform at the end of the room, from where a naked and quite pretty orc breeder raises to stand up obediently. 'These bitches fall over themselves to please you, and while they may heal like we all do, there's no fucking reason to hurt any of them. You're not beasts, for fuck's sake!'";
				WaitLineBreak;
				say "     A kind of sullen silence comes over the room, then the gathered tribe silently agree to their boss. Boghrim lets the lesson sink in for a second, then nods and raises his voice again, 'Okay, to avoid any such stupid messes in the future - I say we need a bunch of communal breeders. Get in enough sluts to keep everyone's balls drained. In fact, why don't we make it a bit of a competition. You guys head out and bring back fresh meat, and the best hunter gets a prize!' This draws cheers from the gathered orcs, getting the more competitive among them riled up. A few immediately start boasting that they'll be the one to win, while the brute to your immediate left eventually calls out, 'So, what are you actually gonna give the winner?'";
				say "     Boghrim chuckles, seemingly having only waited for the question. 'What you get,' he calls loudly, 'is an extra special breeder. A super-sized one.' And with that, he grabs the still prone Urik by the hair, pulling him up for everyone to see. The warrior's face and teeth have already mostly healed, though he still looks a bit roughed up. 'N-no please,' Urik weakly groans, only to be silenced by Boghrim shaking him. 'Quiet, you made your bed, now lie in it,' the orc boss snarls, then addresses the breeder Urik hurt - who seems to have grown half a foot in the last few minutes, and is fully healthy again. Boghrim asks, 'Hey, what's your name boy?' and the slightly confused newly-minted young orc warrior replies, 'Toven, master.' The orc boss drops his captive, letting him collapse on the floor and grips Toven's shoulder in a friendly manner. 'No more of that master business, you're an orc warrior now. So then, you get the honor of initiating this bitch to his new role in life!'";
				WaitLineBreak;
				say "     Now being taller and a bit more buff than an orc breeder, Toven still seems a bit befuddled by his sudden change of circumstance and visibly swallows as he looks down at the orc that no doubt fucked him many, many times. 'I- em...' he stammers, only to moan as Boghrim just reaches for his freely swinging cock and strokes it. 'Go on, line this beauty up with his fuckhole. Everything else will come naturally - for both of you.'";
				say "     [bold type]Do you watch Urik losing his anal virginity and Toven's first fuck as an orc warrior (though he seems more like a half-and-half orc right now)?[roman type][line break]";
				if player consents: [fuck scene]
					say "     [line break]";
					say "     In between elbowing a few orcs that try to shove past you and take your prime spot in the first row of watching the action, you put a hand on your own crotch and rub the growing bulge there. Toven really has quite a sexy body - a neat combination of a breeder's attractiveness and now the greater height and muscle of a warrior. And fitting to his transformation and re-birth, he is in his birthday suit - giving you a perfect opportunity to ogle the guy... his thick swinging shaft, heavy balls and all. The young orc's prick starts to dribble pre-cum as Toven feasts his eyes on Urik's form, with the dominant orc now forced into a submissive position on all fours. Still not used to taking the initiative, he hesitates a moment longer, then Boghrim gives Toven a shove, sending him to stumble against the tensely waiting orc and fall half on top of him.";
					say "     Urik grunts in annoyance at having his former breeder slut sprawled on his back, the younger orc's erection rubbing hotly against his lower back. He snarls over his shoulder and starts to twist his upper body, wanting to shake the green-skinned newbie off - only to find Boghrim's hand clamping down on his shoulder hard, holding him in place. Meanwhile, Toven pushes himself up from Urik's back on muscled arms, hands planted on the kneeling orc's back, and as he does so his erection slides a bit deeper, into the crack between two firm butt-cheeks. The young orc pants in lust as the length of his cock slides between those two buns and he can't help but start humping his hips forward again right away, rubbing against the butt of his former master.";
					WaitLineBreak;
					say "     It doesn't stay at dry-humping long, as the orc teen's leaking cock transforms Urik's crack into a slippery slide and he speeds up more and more to enjoy the new sensations of riding someone's ass. Then it happens - one especially enthusiastic thrust of Toven's hips sees his cockhead catching on the other orc's virgin hole. Slick at it is, the quite respectable manhood of the teen slides right in, driven balls-deep before either of them really knows what's happening. Urik lets out a breathless groan at the hard and deep penetration of his tight chute - as does Toven from the amazing sensations of being inside another man, and Urik's inner muscles clamping down hard on his dick... just a second too late to keep him out and now just heightening the youngster's lust.";
					say "     'Fuck you bastards! That hur-*umph*' Urik starts to snarl, only to be muted by Boghrim shoving his own massive prick into his mouth. The large orc gives a lusty grunt, holding Urik's head between his hands and starting to fuck his throat, just keeping at it when the kneeling warrior snorts and chokes around the dick between his lips. 'Sounded like you need a little help accepting your new status, breeder! You'll sing a whole other song once you got a load or two of orc cum inside you,' Boghrim grunts in a commanding voice, thrusting forward again and again with his weighty balls slapping Urik's chin. And indeed, the kneeling orc warrior calms down just mere moments later, letting go of Boghrim's muscled leg as he stops trying to shove him off. You catch a glimpse of how wide his pupils dilated as the orc's eyes roll up to look at his fucker - a clear sign of being drunk on orc-cum. Seems like Toven has been leaking even more into his ass, and Boghrim will have already sent throbs of his own pre straight into Urik's stomach.";
					WaitLineBreak;
					say "     With the tension starting to ease from the kneeling warrior's muscles, Toven is actually able to move inside Urik's extra-tight hole again, first sliding his cock most of the way out of its embrace then sinking back inside. The expressions of his beautiful face are priceless as the young male feels the sensations of fucking someone for the first time, his eyes wide as he gives several more slow thrusts, trying out different angles and rhythms of movement. This slow experimentation doesn't last much longer though, as Toven is simply overwhelmed by the pleasure he feels and the ever-increasing push of his nanite-infused urges, becoming ever more urgent with his growing arousal. And so the green-skinned teen starts to speed up rapidly, abandoning any thoughts of technique for just hammering into Urik's tight hole.";
					say "     Meanwhile, Boghrim keeps fucking Urik's mouth, though by now he doesn't have to hold the other orc's head anymore or force his cock in. The former orc warrior is rapidly growing more accustomed to his new role as a breeder and actually is sucking on his dick, slurping on it hard and by now eager for the virile load waiting in the balls that slap his face. Boghrim chuckles at the rapid transformation of the big brute, looking over to where his ass is just being broken in by Toven. 'Oh yeah, you'll make a fine breeder Urik!' the orc boss grunts loudly, then looks around at the cheering crowd. Cheering and grunting, that is, as many of them have their cocks out and are stroking them - as are you, jerking off to the hot show. 'Whoever wins the competition gets this slut. You'll be able to enjoy his ass all the time, just like his... sweet... tight... throat!' Having panted the last few words in breathless bellows, Boghrim suddenly stiffens and clamps his hands down on Urik's head. From your position, you can see the big orc's balls throb and pulse, sending forth spurt after spurt of potent seed to be pumped right into Urik's stomach.";
					WaitLineBreak;
					say "     Grunting with each new splash of his cum being emptied into Urik, Boghrim stays like that for several long moments - enough for the still-sucking orc to actually go a bit emerald-green in the face, from lack of air. Then Boghrim suddenly pulls his whole shaft out with a single move, freeing Urik's airways. The former orc warrior collapses on the ground as he isn't held up anymore, his upper body slumped forward as he gasps for air, drooling cum on the floorboards. Far from done with his orgasm, Boghrim aims his still spurting cock at his subordinate, painting his face, hair and upper back with white streaks. Moving your eyes to check on the teen orc still fucking Urik's hole, you catch a glimpse of him licking his lips hungrily as he pointedly stares at the splashes of tasty orc cum on the muscled back in front of him. An eye-blink later, Toven is leaning over Urik and wrapping his arms around the bigger orc holding him tight as he thrusts especially hard - and what he also is doing is lapping up Boghrim's seed like the cum-hungry breeder he was until just a short while ago.";
					say "     The potent taste of Boghrim's cum is enough to send the already quite close young orc over the edge with a lusty roar and he bucks into Urik hard, driving himself in all the way. The first heavy throb of his load into his former master is accompanied by a needy whimper from Urik, prompting Toven to stretch his neck a little bit more and give Urik a light bite on the shoulder, his tusks digging in to mark the other orc as his first fuck. A stomach-full of cum and now being flooded from the other end too is more than enough to push Urik to his own orgasm - the big brute moans like a bitch in heat as his cock starts to twitch, blasting a big load of cum all over the floor under his body without anyone even touching it. A cheer goes through the gathered crowd, rapidly overtaken by grunts and the growing noise of urgent fapping. You yourself are among the first few who jerk themselves to completion, groaning out loudly as your thick prick blasts cum into the air - hitting Toven's chest as you aim a bit high in your excitement. While all eyes are on the kneeling orc being baptized in cum as a newly-made breeder, the young orc warrior still balls-deep inside him meets your eyes and smiles. Then he raises a hand and wipes off your sperm from a muscled pec, bringing his fingers to his mouth to lick it off.";
					if graphics is true:
						WaitLineBreak;
						project the figure of Toven_naked_icon;
					WaitLineBreak;
					say "     The little 'moment' between Toven and yourself is cut short as the orcs behind you push forward, everyone wanting to join in too. Exhausted as you are from just having come, you let them pass and don't try to keep your spot - but you do catch a wink from the young orc warrior before you lose sight of him. Casually wiping your cockhead clean on the dangling end of a loincloth belonging to one orc at the back of the crowd (who is far too busy shoving his neighbour to even notice), you set your clothing and gear in order and walk out of the drinking hall.";
					say "     [bold type]Might be worth coming back here sometime soon and joining in for the 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
					move player to Dark Hallway 1;
				else: [walk out]
					say "     [line break]";
					say "     As Boghrim gives the newly-made orc warrior a little shove, sending him stumbling against the kneeling orc, you quietly push your way out of the crowd. The orcs gladly let you pass, each one wanting to get closer to the action and see the show, and before long you're near the entrance of the room. As you walk out into the dark hallway beyond, a breathless groan comes from the center of the watching crowd, immediately followed by cheers and grunts from the watching orcs. Then slapping noises of skin on skin start, first slowly then with rapidly increasing tempo. Sounds like Urik's getting quite a ride...";
					say "     [bold type]Might be worth coming back here sometime soon and joining in for the 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
					move player to Dark Hallway 1;
				now hp of Orc Mob is 2;
			else if hp of Orc Mob is 2: [first chance at the contest]
				say "     Again joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand. It seems that most of the conversation centers on Boghrim's breeder capturing contest. As everyone excitedly talks about who has the best chances, you kinda feel the urge to also go out rise inside you. [bold type]Do you want to follow the throng of orc hunters just preparing to leave and see what happens out there?[roman type][line break]";
				if player consents:
					say "     Going with the flow of a whole bunch of orcs, you walk out of the lair and out into the streets. As the drinking, boasting and cheering crowd moves out into the city, big and small creatures flee in panic or hide, hoping that the orc invasion will pass them by. Your group moves for a few blocks, then one of the brighter and more cunning orcs calls for a halt, saying that you should split up. Several of the hopeful contenders for the hunt grunt in agreement and peel off in ones and twos, while many of the others just stay together, chugging on steins filled from the barrels of orc brew someone brought along. Since you're not here to simply get drunk and hang, you do pick a direction to go in yourself and strike out down a street filled with abandoned cars.";
					say "     It is pretty easy going through the abandoned streets - with so many creatures having fled from the rowdy bunch of orcs you still hear in the distance behind you. The city seems lifeless like this, with barely anything moving, but on closer inspection, you spot many signs of people having been there just moments before. Hastily dropped items, pieces of food or still merrily burning barrel fires. Surely it'll only be a question of time till you - ah! You hear something. Quietly walking up to a nearby street-corner and peering around, you make out a pair of human soldiers. 'Come on, lighten up a bit Brian. This area is empty,' the first one of them calls out, casually scanning the street with a move of his brown-haired head. 'That's the point Ike. Its quiet. Too quiet,' the young man's partner says, clutching at his rifle and making a much more thorough inspection of his surroundings. Thankfully he starts at the other street-side, so you manage to duck out of sight before he spots you.";
					WaitLineBreak;
					say "     [bold type]So, you're a big, green-skinned brute of an orc and its hunting-season for new breeders to fuck. How do you want to play this?[roman type][line break]";
					say "     [link]Y[as]y[end link] - Announce your presence and warn the men off.";
					say "     [link]N[as]n[end link] - Wait for the right moment to rush them and bring some new breeders 'home' to the orc lair.[roman type][line break]";
					if player consents:
						say "     You think for a moment on how to do this. It'd just be embarrassing to be shot accidentally while trying to do the right thing. Deciding on just calling out from around the corner, you clear your throat and get ready to do so when suddenly a shocked gasp can be heard from the street ahead, followed by a short burst of shots impacting something metallic. ";
					else:
						say "     You think for a moment on how to do this. It'd just be embarrassing to be shot by two rookie soldiers. Deciding on an ambush as they pass your position, you lie in wait and tense your muscles to be ready at the right second. Then suddenly a shocked gasp can be heard from the street ahead, followed by a short burst of shots impacting something metallic. ";
					say "Curious, you peek around the corner again - the two soldiers are down, or rather one of them is, slumped on the ground and unconscious, while the other is being held up by his throat in a large green hand. Looks like another orc warrior moved in on them before you could. The muscled brute looks at a grazing wound on his other arm that oozes green blood, then chuckles as the wound almost instantly heals over. He gives the human a tusk-baring smile and growls, 'You got spunk, little man. I like that in a breeder!' And with that, he grips the uniform pants of Brian and yanks them down, uncaring that he rips them to shreds.";
					say "     [line break]";
					say "     [bold type]Well, that changes things. What will you do now?[roman type][line break]";
					say "     [link]Y[as]y[end link] - Challenge the orc. Out on the streets, everything goes.";
					say "     [link]N[as]n[end link] - Well, he did the work - so there isn't much you can do. Just leave.";
					if player consents:
						say "     The orc warrior snarls as he sees you coming, assuming correctly that you want to take his captives from him. After head-butting his already half-naked soldier Brian, the green-skinned brute puts the unconscious man down just in time to be ready for your attack.";
						now OrcSpecialFightNumber is 3; [disabling regular scenes to deal with this stuff here]
						now inasituation is true;
						challenge "Orc Warrior"; [random orc]
						if fightoutcome >= 20 and fightoutcome <= 29:[lost]
							say "     Feeling faint and with stars dancing in front of your eyes, you can only uncoordinatedly flail about as the orc grabs you by the throat and sets his other hand to your abs, lifting you off your feet. The last thing you see of this fight a confused rush of impressions as he throws you to the side, to crash into the front end of an abandoned car. The impact gives the already somewhat scratched vehicle a huge dent and a shattered front window, knocking you out in the process.";
							say "     [line break]";
							say "     You awake quite a while later, bruised and hurting all over, still lying in an orc-shaped dent on the wrecked car. Looks like the other orc carried off his captures and just left you. A bunch of scattered uniform bits tells you that the men were most likely fucked hard and are already well on their way to become happy orc breeders. Getting up, you make your way back to the orc lair, groaning with every step before your healing kicks in. By the time you step back into the drinking hall, the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. You spot the orc you fought among them, punching a buddy on the shoulder and telling him to have fun. Then the brute hefts a breeder standing next to him up on his shoulder and calls out, 'You can have the other one, but this bitch I'll keep.' Chuckling, he starts to move to the stairs leading upwards, smirking broadly as he recognizes you. The pair of dog-tags swinging from the neck of his panting green-skinned captive tells you that the former human soldier Brian has an ecstasy-filled future as this orc's fucktoy ahead of him.";
						else if fightoutcome >= 30:[fled]
							say "     Running off as quickly as you can, you leave the orc and his two human captives behind. Somehow you're not in the mood to keep roaming around afterwards, so you are content with finding a splinter-group of the drinking orcs and just hang out with them, getting pretty wasted in the process. By the time they and you stumble back into the drinking hall quite a while later, most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. You spot the orc you fought among them, punching a buddy on the shoulder and telling him to have fun. Then the brute hefts a breeder standing next to him up on his shoulder and calls out, 'You can have the other one, but this bitch I'll keep.' Chuckling, he starts to move to the stairs leading upwards, smirking broadly as he recognizes you. The pair of dog-tags swinging from the neck of his panting green-skinned captive tells you that the former human soldier Brian has an ecstasy-filled future as this orc's fucktoy ahead of him.";
						else if fightoutcome >= 10 and fightoutcome <= 19:        [won]
							say "     With a last punch, you send the orc brute stumbling back from you, then to fall over the hood of an abandoned car. He's sure to be out for some time after the loud thunk his head just made on the metal. Which leaves you the victor, standing tall over two unconscious humans and an orc.";
							say "     [line break]";
							say "     [bold type]What shall you do next?[roman type][line break]";
							say "     [link]Y[as]y[end link] - Help the soldiers up and make sure they get out of here safely.";
							say "     [link]N[as]n[end link] - Fighting sure got your blood pumping, including to a certain organ just throbbing away between your legs. The idea of breeding the guys seems more attractive by the second...";
							say "     [line break]";
							if player consents: [rescue the men]
								say "     [line break]";
								say "     Leaning down you gently pat Ike's cheeks, then quickly tell him that you're a friend before he opens his eyes. Groaning in pain as he flinches away, the man obviously is still rather shocked at seeing a friendly orc towering over him, but you manage to calm him eventually, then help him up. 'Oh shit,' he exclaims as he sees his friend Brian lying on the ground nearby, mostly naked from the waist down. 'He didn't... rape him, did he?' Ike asks haltingly, then rushes towards his buddy's side and throws a hostile stare towards the knocked-out orc. Thankfully you can tell him that you came to their rescue in time, putting both of them on the safe side in that regard, just bruised up a bit.";
								say "     Brian is slow to wake up, having gotten quite a bump on the head, but when he eventually does he blushes deep-red because of his nakedness. After outfitting him in a loincloth taken from your orcish opponent, you lead the two of them away from the hunting party, staying with them some time until you're fairly sure they'll make it back to their base on their own. By the time you make your way back to the drinking hall afterwards, the hunting party is long back and a number of new breeders are being tried out by the horny brutes. You spot the orc you fought among them, hammering away at a moaning captive. Looks like Boghrim's plan is working out nicely - even orcs who don't have a breeder of their own now get to enjoy the communal bitches.";
							else: [fuck the men]
								say "     [line break]";
								say "     Giving in to your body's desires, you quickly drop your gear and get rid of any clothes that might be in the way, then stroke your shaft in anticipation of getting some tight asses to fuck. Now whom to fuck first... looking back and forth from one soldier to the other, your lust soars at the trained bodies of the men, one of them already half-naked. You see that Ike (a black man) has a quite nice look, with a regulation buzz-cut and a manly square jaw, while Brian has a bit of a 'dashing young stud' look and is of caucasian descent, with his hair grown out a bit longer. Of course, it's not fun unless the other guy participates a little, so the decision is taken out of your hands as Ike is the first to wake up, weakly groaning and starting to move as he lays on the ground.";
								say "     Sometimes it is hard to remember how fragile humans are, or were - before the nanites spread throughout the city. Even those that don't transform you still re-build damaged bodies, so it is clear that the men somehow avoided being infected until now. Well, that ends now - with a tusk-baring smile, you crouch over Ike and slide your hand up and down your thick green shaft, milking pre-cum out of it until a thick, glistening drop of it appears at your cockhead. Chuckling, you position yourself in just the right spot to see the trickle of pre drip down into Ike's open mouth, causing the man's eyes to instantly whip open in shock as he tastes the ambrosia-sweet treat that is orcish cum. His gaze wanders in confusion, looking up at your grinning face for a second before inevitably being drawn to the green pole held out just over his head. Ike's mouth opens as if to say something, only to find your dick being pushed between his lips.";
								WaitLineBreak;
								say "     Cross-eyed, the soldier stares at your manhood, literally seeing it pulse with the new throb of pre-cum that seals his fate for good. As soon as he tastes the new dose of cum, a lusty snort comes from Ike and he can't help but wrap his lips around your shaft, suckling eagerly for more. Some guys sure have a low resistance to extra-strong aphrodisiacs. Running a hand through the man's hair, you take a hold of his head as you push your dick deeper, soon arriving at his throat and causing the soldier to gag a little - after which you pull back and just face-fuck him with the length you can get into him. He'll have more than enough time to master deep-throating later! Congratulating yourself on the wise idea to move in on the capture of these two studs, you moan and grunt in lust as you thrust into the warm cave of Ike's mouth, giving the young man treats of pre that he eagerly sucks from your dick.";
								say "     He may be a novice to sucking on a dick, but your soldier boy is making up for quite a bit of that through sheer enthusiasm at taking everything you can give him. The guy even brings up his hands to cup your balls, massaging the heavy balls swinging under your cock, wanting to taste more of their tasty treats. You would have been perfectly happy to just drop a load down his throat, filling the man's stomach with your seed, but before you're anywhere near ready, the other soldier wakes up again too. Sitting up with a wince, he covers his bare crotch up as good as he can with his hands, then looks over to see you crouched over his partner. 'G-get away from him you monster! I'll stop you!' the soldier calls out, grasping for the carry-strap of his rifle - which isn't there, having been tossed aside by the other orc. As he starts looking around for it, or any other usable weapon, you give a sigh and stand up, pulling out of Ike's sucking mouth with a wet pop.";
								WaitLineBreak;
								say "     It is painfully easy to just go for Brian and snatch him up, as the man continues to cover his dick with a hand as he tries to find his weapon, or get away - or who knows what. No matter really, as you lift him off his feet with a tight grip on his uniform jacket, then capture his wrists in your other hand, holding them over his head. There is a glimmer of hope in the man's eyes as he looks past you, then does his best to kick your crotch as he shouts, 'Get him, Ike!' And indeed, the other soldier is quickly coming up from behind you - but he leans forward to take your dick in his mouth as he comes close, not even thinking about fighting the source of his new favorite meal. 'WHAT!? NO! Fuck, fuck, FUUUCK,' Brian curses with a slack-jawed expression as his friend goes down on you. You just take him by his word, using the moment in which the man is too shocked to resist to bend him over the nearest car.";
								say "     Brian's pale-white ass is already so delightfully bare, making him an inviting target for a hard pounding. With a chuckle, you pull Ike off your dick once more, then line its glistening rod up with the young man's rear and push in against his pucker. 'Nnnnaarghhh!' Brian groans as you sink into him, losing his virginity to your green pole - but like his friend, the soldier turns out to have a relatively low tolerance, as his wince turns into a moan before he's taken even half your shaft. The fact that you're really turned on by the two of them might have something to do with that... especially with Ike having crawled between your legs and lapping at your balls. Thus, pre-cum is flowing into Brian with quite regular throbs, lubing the man and making him ever more compliant as his body absorbs the potent fluid.";
								WaitLineBreak;
								say "     Having so easily subdued two handsome guys, you are reminded of Boghrim's speech before the orc tribe and the crowd's replies. Somewhere deep inside you, the thought that the gathered brutes were right gains quite a bit more momentum. After all, how could you deny that non-orcs - soon to be orc breeder slaves - are there to serve you and yours. Sliding your hard prick in and out of a trained soldier's tight ass and hearing Brian whimper and moan for more, you chuckle at the thought that anyone could resist your power and give a hard thrust that has your crotch smacking his buttocks... and Ike scrambling to keep worshiping your swinging balls. Fucking the bent-over soldier hard, you break his ass in good right from the start, preparing him for his cum-stuffed future as a bottom slut. And that not only though stretching, but also by transformation as you can see a tinge of green spread over his skin, as well as the man's muscles gaining just a bit more definition - all over his body and around your cock too.";
								say "     You keep humping into the ecstatic man with quick strokes, watching in arousal as he becomes ever more like a typical orcish breeder. The rapid changes of his body are bewildering to Brian and in between loud gasps and shouts of pleasure, he groans, 'W-what's happening *nnnghhhh* to me. I *gasp* can't believe how great you feel in my ass! *ugghhh* I - I'm going green?' Staring unbelievingly at his hands as they brace against the car hood, the man then twists his chest around to look at you over his shoulder, revealing the fact that a cute pair of little tusks have formed out of the canines of his lower jaw. You give him a lusty smile and tell Brian that he's a breeder now - and that he'll learn what that really means very, very soon. With that said, you rip the remaining clothes off his back, then push the man back down on the car, licking up from between his shoulder-blades to his neck and give him a hickey as mark of ownership.";
								WaitLineBreak;
								say "     Holding on to your newly-created orc breeder tightly, you really take out all the stops and hammer his asshole harder than ever. With the high of having won a fight, as well as the satisfaction of taking not one but two virgin soldiers as your slaves today, it doesn't take much longer before your roaring arousal reaches breathtaking heights - and your cock erupts like a volcano, filling the eagerly moaning Brian with throb after heavy throb of orcish seed. The man screams in pleasure as real orc cum finally fills him, not just pre, and you can feel him shiver and tremble under you and around your manhood as he joins you in orgasm.";
								say "     Between his moans and your own, you manage to make out another voice when your conscious thoughts return after the climax starts to ebb off a little - you almost forgot Ike! Leaning your chest a bit to the side, you look past Brian's well-bred ass and your hips tightly pressed against it and spot the other soldier, kneeling on the ground. The by now also green-skinned shaft of his buddy is held tightly between Ike's lips as the man suckles on him with eager attention, swallowing every last drop of cum that Brian does provide. Pleased by the soldier's slutty behaviour, you decide to give him a treat and pull out of the gripping asshole around your shaft. The wet slurp draws Ike's attention and his eyes go round as he focuses on your cum-dripping pole dangling just in front of his face - it barely takes a second for him to wrap his lips around you and start suckling.";
								WaitLineBreak;
								say "     You let Ike continue to devour your cock for a few moments, enjoying the tongue-action as he experiments with ways to please you - and milk out some more tasty cum, then eventually pull him away from it when its all clean and getting a bit sensitive too. Being well on the way to becoming an orcish breeder himself by now, the cum-drunk guy immediately pounces on another source of his favourite treat. New moans rise and echo between the buildings as he shoves his face between Brian's cheeks and starts to eat the man out. Stepping back, you observe their antics with a smile. Two newly-made breeder bitches, just like you need for the contest. Though maybe... you could keep them to yourself? There definitively is something to be said about a private pair of sluts to serve and... any and all thoughts you were having in that regard are dashed as the main bunch of roaming orcs wanders around the corner and several of them spot you.";
								say "     'Oh yeah, told ya I heard a slut moan for more!' one of the orcs at the very front tell his neighbour, then casually walks up to you and gives you a friendly slap on the shoulder. 'Prime meat you found us there, good job!' And with that said, he steps past you, pulling out his rapidly hardening prick as he does so. You're severely tempted to protest as he peels the uniform trousers off Ike and starts to line up his shaft with the man's virgin hole - but before you can do, a throng of half-drunk orcs are all around you, congratulating and sloshing you with a stein of orc brew thrust at your chest. While you're still accepting fist-bumps and are pushed into taking a long pull of the brew to celebrate, the breathless grunt of Ike losing his cherry reaches to your ear.";
								WaitLineBreak;
								say "     Oh well, you knew they were for the orc lair as public breeders, but you somehow still would have liked to be the one to do the honors with both. A double-capture definitively puts you in good standing for the competition, and the presence of the drunken crowd also helps as your competitor comes to a short while later. He snarls a little at first, seeing that you took the credit for the soldier's capture, but after chugging down an offered drink - or three - he's happy enough to join the throng of orcs waiting their turn to fuck. The drinking, boasting and general carousing goes on quite a while as Ike and Brian are bred to over-flowing, with orc after orc dumping their loads into the completely cum-drunk guys. Slowly, the other hunters come back to the group in that time as well, sometimes carrying new slaves over their shoulders - which helps take the pressure off your two breeders a little. Still, they're far from able to satisfy everyone without waiting turns - so there'll have to be more hunts, that's for sure.";
								say "     By the time your orc compatriots are sated, all of you eventually make your way back to the lair. As the orcs that remained there greet you, Boghrim steps forward to inspect the new captures. He grins broadly at their well-used state and the fact that they're all so high on orc cum that they had to be carried in. 'A very nice haul guys. Now shut up for a moment,' the orc boss shouts over the noise of the crowd, and after a few moments the orcish horde turns to him, more or less attentive. 'We still gotta choose the winner of this round. So, what's your verdict of these bitches?' The room gets loud again instantly as people chuckle and call in their favorites, among which Ike and Brian are prominently named. Seems like you decided this round for yourself and Boghrim grabs your wrist to pull your muscled arm up in a victory pose.";
								say "     [bold type]That was fun - you feel like you should come back here sometime soon and join in for another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
								now thirst of Orc Mob is 1; [marker for having the soldiers captured]
								increase libido of Orc Mob by 1; [another point for the player]
					else:
						say "     Somehow you're not in the mood to keep roaming around after leaving the orc to his pleasures with the two men, so you are content with finding a splinter-group of the drinking orcs and just hang out with them, getting pretty wasted in the process. By the time they and you stumble back into the drinking hall quite a while later, most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. You spot the orc who pre-empted you with the soldiers among them, punching a buddy on the shoulder and telling him to have fun. Then the brute hefts a breeder standing next to him up on his shoulder and calls out, 'You can have the other one, but this bitch I'll keep.' Chuckling, he starts to move to the stairs leading upwards, smirking broadly as he gets a few envious stares. The pair of dog-tags swinging from the neck of his panting green-skinned captive tells you that the former human soldier Brian has an ecstasy-filled future as this orc's fucktoy ahead of him.";
						say "     [bold type]This round is a bust, for you. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
						now thirst of Orc Mob is 1; [marker for having the soldiers captured]
					now inasituation is false;
					now hp of Orc Mob is 4; [went out with the group]
				else: [don't join in]
					say "     You may have taken orc form to get in here, but that doesn't mean you should participate in their activities. Quietly pushing your way to the back of the crowd, you watch the green-skinned horde leave their lair in an unruly throng. Whoever is out on the streets right now is in for quite a big-dicked surprise...";
					say "     Quite a while later, the hunting party comes back, carrying a number of new breeders who are eagerly tried out by the horny brutes. You spot one orc who came in with two orc breeders carried over his shoulders, former soldiers from the looks of the dog-tags still dangling around their now green-skinned necks. The brute punching a buddy on the shoulder and hands over one of his prizes, telling him to have fun. Then the big orc gives the other man's butt a playful slap and calls out, 'You can have the other one, but this bitch I'll keep.' Chuckling, he starts to move to the stairs leading upwards, smirking broadly as he gets a few envious stares. As the orc passes you slowly in the push and shove of the crowd, you catch a glimpse of the dog-tags of his captive - seems like his name is Brian. The cum-drunk man mumbles, 'See ya, Ike,' and waves to his buddy just now being spit-roasted by horny orcs.";
					say "     [bold type]This round is a bust, for you. You didn't participate after all. Still, you could always come back here another time and try another 'hunt'. Just talk to the orc crowd when you're ready.[roman type]";
					now thirst of Orc Mob is 1; [marker for having the soldiers captured]
					now hp of Orc Mob is 3; [didn't go out]
			else if hp of Orc Mob is 3 or hp of Orc Mob is 4: [second chance at the contest]
				say "     Again joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand. It seems that most of the conversation centers on Boghrim's breeder capturing contest and how much fun the first round of it was. As everyone excitedly talks about who has the best chances, you kinda feel the urge to also go out rise inside you. [bold type]Do you want to join the throng of orc hunters just preparing to leave and see what happens out there?[roman type][line break]";
				if player consents:
					say "     Going with the flow of a whole bunch of orcs, you walk out of the lair and out into the streets. As the drinking, boasting and cheering crowd moves out into the city, big and small creatures flee in panic or hide, hoping that the orc invasion will pass them by. Having [if hp of Orc Mob is 3]heard[otherwise]seen[end if] how hard this made it for the hunters to actually capture anything last time, you're not surprised to see those who are the actual front-runners in the competition peel off pretty soon, more or less quietly so that they don't have to take along any hangers-on. As the 'real action' will go on out in the city, with the single hunters, you do the same - letting the drinking mob pass you by before stepping into a side street. Wandering down the empty streets filled with abandoned cars, trash and rubble, you barely see anything move for several blocks - man, those green-skinned brutes sure made a racket.";
					say "     Travel through the city eventually brings you to the outskirts of the university campus, which does seem rather more lively compared to the surrounding area. Almost as soon as you step onto the brick path leading along between the buildings, a burly male opens the door of a nearby building and moves out towards you - walking on his feet and knuckles, as he's a gorilla in a football uniform. It is impressive how fast he can move on all fours, long arms supporting that broad-shouldered frame as he rushes towards you. 'Hey dude, nice to meet'cha. Now I can see right away that you're here for the try-outs! Good muscle-tone on ya, green-skin - but can you hack it on the field?' The football player doesn't really give you a chance to get a word in edgewise, instead drumming his hands against his muscled chest, then charging right at you!";
					wait for any key;
					now inasituation is true;
					challenge "Football Gorilla";
					if fightoutcome >= 20 and fightoutcome <= 29:  [lost]
						say "     Slamming his padded shoulder into your chest, the gorilla finally bowls you over backwards, to fall down in a sprawl on the green grass dominating the college campus. As your head is still spinning and you lie there groaning, you see the college athlete lean over you and give a shrug of his wide shoulders. 'Well, that wasn't bad... but you really got to step up your game if you wanna make it. The team's top notch you know, and on the field the gloves come off, you know. Gotta be ready for the other team to whip out tentacles or have extra legs and whatnot.' He leans down to pat your bruised chest consolingly, then walks away with the words, 'Put in some more time in the gym and you might get a spot on the team. Just come back when you think you're ready.'";
						say "     Well - that was embarrassing. An orc getting his ass kicked. You're kinda relieved that you set out alone and none of your brutish compatriots saw it - you'd never hear the end of it otherwise. Overall, this cut down hard on your mood for further hunting, so you lounge around a bit till you're fully healed, then make your way back to the drinking hall. Most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. Surprisingly, there even is a gorilla among the crowd - seems like another orc had the same idea as you did, and was successful where you failed. There is a little crowd of orcs standing around the simian male, chuckling about what a slut he is - and congratulating the orc balls-deep inside the great ape's ass for finding an exotic 'non-changer' who retains his shape even as he is fucked and fucked and fucked...";
						say "     [bold type]This round is a bust, for you. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
					else if fightoutcome >= 30:  [fled]
						say "     Running off as quickly as you can, you leave the gorilla behind - it isn't that hard, as he mostly stares after you unbelievingly. Disappointed that the test-fight ended this quickly, he gives a shrug, then trots off.";
						say "     Well - that was embarrassing. An orc running like a little girl from someone. You're kinda relieved that you set out alone and none of your brutish compatriots saw it - you'd never hear the end of it otherwise. Overall, this cut down hard on your mood for further hunting, so you lounge around a bit, then eventually make your way back to the drinking hall. Most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. Surprisingly, there even is a gorilla among the crowd - seems like another orc had the same idea as you did, and was successful where you failed. There is a little crowd of orcs standing around the simian male, chuckling about what a slut he is - and congratulating the orc balls-deep inside the great ape's ass for finding an exotic 'non-changer' who retains his shape even as he is fucked and fucked and fucked...";
						say "     [bold type]This round is a bust, for you. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
					else if fightoutcome >= 10 and fightoutcome <= 19:  [won]
						say "     Bringing down the muscled gorilla in a tackle, you send him crashing to the ground, where he lands with a heavy thud. The burly simian grunts and rolls over onto his back, breathing heavily - but also grinning up at you. Undoing the chin-strap, he pulls off his helmet, then runs a hand through sweat-soaked hair. 'Not bad, not bad at all,' he grunts in acknowledgment, then says, 'Now I can't promise you any specific position, but you're sure to make a spot on the team if you can repeat this performance. What'dcha say, eh big guy?'";
						say "     [line break]";
						say "     [bold type]Phew, finally he has shut up for a second and isn't trying to knock you to the ground. Now that you got the football gorilla's full attention, you tell him:[roman type][line break]";
						say "     [link]Y[as]y[end link] - That you're mostly here to warn people about the orcs on their hunting trips. Anyone else with tusks and green skin would enslave their captives.";
						say "     [link]N[as]n[end link] - That you're here because of a hunting competition among the orcs - and his ass belongs to you now![roman type][line break]";
						say "     [line break]";
						if player consents: [warn him]
							say "     [line break]";
							say "     'Oh, you're not here for the try-outs?' The pout your gorilla opponent shows at that realization is quite impressive - with his broad face and quite flexible lips. Seems like he barely registered most of what you said and is mainly disappointed at not getting another top player for his team. As he starts to get up, you repeat your warning about orcs and getting enslaved, getting a shrug in reply. 'Okay okay, I'll let the guys and our fans know. But if you change your mind, you know... about playing for the team ...you can visit us in the [bold type]lockerroom[roman type] any time. [if GorillasVisited is 0] It's over at the [bold type]football field[roman type] - you can't miss it. Just look for the big sign of our sponsor - [bold type]Astroslide[roman type][end if]' That said, he gives you a hopeful pat on the arm, then trots off after saying, 'See you later,'";
							say "     Well - that should hopefully cut down on the future success of orcish raiders on the college campus a bit. Having done your duty as a concerned citizen of this crazy city, you lounge around a bit on the relatively peaceful lawn behind the badminton courts, then eventually make your way back to the drinking hall. Most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. Surprisingly, there even is a gorilla among the crowd - seems like another orc had the same idea as you did. As he was no doubt already being broken in by his new master while you gave your warning, it came too late to help this specific ape. Oh well, can't save them all - and at least he seems quite happy from what you can see. There is a little crowd of orcs standing around the simian male, chuckling about what a slut he is - and congratulating the orc balls-deep inside the great ape's ass for finding an exotic 'non-changer' who retains his shape even as he is fucked and fucked and fucked...";
							say "     [bold type]This round is a bust, for you - at least in the eyes of the orcs, as they assume your goals were the same as theirs. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
						else: [take him]
							say "     [line break]";
							say "     'Huh?!' the gorilla grunts in confusion, barely able to imagine that anyone could want something else other than compete for possession of an egg-shaped ball. He starts out to say, 'Now come on dude, you really got a great chance on the team and - aaaahhh!' Words fail him as pull his legs up and hook them over your shoulders, raising his ass to be on just the right height for your crotch. Easily pulling aside the loincloth of your orcish outfit, you rub the green-skinned hard shaft thus revealed up and down between his furry cheeks, then set the pre-cum oozing tip against your captive gorilla's pucker. The easy way in which his opening stretches to envelop your cockhead tells you that this primate isn't a novice at getting fucked - in fact, his insides are slicker than you anticipated, a clear sign that he's had sex with another dude today. But his partner surely wasn't an orc - so you're about to introduce the college athlete to a whole new level of fun.";
							say "     Seeing no reason to hold back, you plunge right in, thrusting deep into the lying gorilla. Man, he really feels great to be in, gripping your shaft tightly even as he takes its whole length without any trouble. There is definitively something positive to be said about this gorilla's training regimen, as he obviously works out all his muscles - even those inside his ass. Pounding his furry butt, you make the burly simian moan and grunt - and looking down, you see that his own dick is fully erect and leaking pre on those defined abs it rests against. This might not have been what he wanted at first, but the gorilla is more than ready to go with the program, moaning loudly as you bump his prostate again and again.";
							WaitLineBreak;
							say "     In a slightly slurred voice, the gorilla soon says, 'Wow! Your dick feels soo good! Oh. Myyy. Gooooddd!' Obviously, the pre you've been oozing into his depths is showing its effects. With a grin on your face, you let the gorilla know that that's nothing compared to what will be next, then speed up your thrusts even more, really giving the burly guy everything you got. Fucking a muscled male gorilla right in the open, on a lawn on the college campus is quite a bit of fun - especially as there are passersby who can't help but ogle you rutting your partner. One of them even stops completely and walks a bit closer to watch, a young woman in tight clothes who soon pushes a hand down the front of her shorts to rub herself.";
							say "     Leaning over your captive, you give him a demanding kiss, making your tusks scrape against his equally impressive canines in a pleasing way. As you come up again and let him catch a breath, the next thing you do is draw his attention to the audience - by now having grown to include an incubus who has one hand under the woman's shirt and his dick out being stroked by the other one. You tease your moaning gorilla by saying he should speak up, tell everyone how he fells and what he wants - and he does so without question, grunting out his lusty noises with increased intensity. 'Yeaaahhh! Fuck me! FUCK that feels great. Pound my furry ass!' can be heard echo between the campus buildings and you hammer into him with great pleasure at having such an eager partner.";
							WaitLineBreak;
							say "     Mating the great ape is so much fun that almost too soon, you feel the need to cum rise inside you - with your balls tightening and getting ready to fill the sexy hunk with your seed. With a deep thrust, then another and another, the point of no return is reached and you grind your hips against his ass with intense force, grunting loudly as splash after thick splash of cum paint his insides white. Feeling the warm load fill his insides, the gorilla shudders under you as the full force of a massive amount of aphrodisiacs and other chemicals in your cum are absorbed by his body. In but an eye-blink, the gorilla joins you in orgasm, spraying his hairy chest with streamers of cum.";
							say "     You lay on top of the guy for a while, breathing hard as both of your orgasms take their course. Pulse after pulse of fresh seed throbs out of your erect cocks, leaving the hunky simian a cummy mess - inside and out. Eventually, as you push yourself up with both hands on the grass, you realize something... your gorilla play-thing isn't transforming. He's still his furry, broad-shouldered self, seemingly immune to the fact that he's chock full of orc cum - so much so that it squishes out around your prick as you move your hips in reflexive humps. But even though he may not be becoming an orc breeder in body, the look of boundless lust and need for more is easy to recognize in his eyes as your gorilla meets your gaze. 'Nnnghh! That's something else. You got magic cum, you know that dude?!' he slurs happily, hands groping and touching you.";
							WaitLineBreak;
							say "     Looking up from your furry play-mate, you check out the spectators and see that they've started some sexy-time of their own, with the incubus having pushed the young woman to her knees as he gets his cock worshiped. The sight of his perfectly shaped pale-skinned butt humping back and forth as he moves on to face-fuck her binds your attention for a moment, then you suddenly feel a long furry arm reach up to hook behind your neck. Being pulled down to the gorilla, you are drawn into a kiss, followed by a needy, 'Fuck me again. I need more!' Uh oh - seems like you successfully re-directed his focus on something new. If he's as fanatic about getting fucked as he was about football...";
							say "     Spent for the moment, your cock has gone rather soft after cumming inside the gorilla - and as he tries to fuck himself on the shaft still inside his body, little happens but you slipping out and him giving a sigh. 'Hey wait - didn't you say you got friends?' he then suddenly says, picking up on what you told him earlier. And so, you and the gorilla make your way towards the orc lair - with him being impressively very gung-ho about his future as a butt-slut. About halfway there, you're ready to fuck again and get badgered into filling his hungry hole with another full load, resulting in you coming in with a happy, cum-stuffed gorilla a while later.";
							WaitLineBreak;
							say "     As the orcs that remained there greet you, Boghrim steps forward to inspect the new captures. He grins broadly at their well-used state and the fact that they're all so high on orc cum that they had to be carried in - except your gorilla that is, who sways a little but still is on his feet. 'A very nice haul guys. Now shut up for a moment,' the orc boss shouts over the noise of the crowd, and after a few moments the orcish horde turns to him, more or less attentive. 'Sorry to say for everyone else, but I think we got a winner. A non-changer is an exotic find, clearly trumping everything else. So, while your bitches are much appreciated, I'm gonna give this one the first place!' Seems like you decided this round for yourself and Boghrim grabs your wrist to pull your muscled arm up in a victory pose.";
							say "     [bold type]That was fun - you feel like you should come back here sometime soon and join in for another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
							increase libido of Orc Mob by 1; [another point for the player]
						now inasituation is false;
				else: [don't join in]
					say "    You may have taken orc form to get in here, but that doesn't mean you should participate in their activities. Quietly pushing your way to the back of the crowd, you watch the green-skinned horde leave their lair in an unruly throng. Whoever is out on the streets right now is in for quite a big-dicked surprise...";
					say "     Quite a while later, the hunting party comes back, carrying a number of new breeders who are eagerly tried out by the horny brutes. Surprisingly, there even is a gorilla among the crowd - a strange sight in between all the green-skinned warriors and breeders. A crowd of orcs soon forms around the simian male, chuckling about what a slut he is - and congratulating the orc balls-deep inside the great ape's ass for finding an exotic 'non-changer' who retains his shape even as he is fucked and fucked and fucked...";
					say "     [bold type]This round is a bust, for you. You didn't participate after all. Still, you could always come back here another time and try another 'hunt'. Just talk to the orc crowd when you're ready.[roman type]";
				now hp of Orc Mob is 5; [2nd hunt over]
			else if hp of Orc Mob is 5: [3rd hunt starting]
				say "     Again joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand. It seems that most of the conversation centers on Boghrim's breeder capturing contest and how much fun the last round of it was. Their mention of the orc boss leads you to look over at his raised fuck-pad platform, with its leather sofas and a small private harem lounging on them. The orc breeders are paired up in twos and threes, caressing and touching each other while Boghrim himself is busy pounding into Jason, the one unchanged human he owns. You can barely look away from the rhythmic pumping of the mighty orc's hips against his willing slut, until their coupling culminates in an explosive orgasm, Boghrim's balls throbbing as he pumps Jason full of cum and the human's cock spewing forth a creamy load over the leather couch at the same time. With a satisfied grunt, Boghrim eventually pulls out of Jason, standing up and leaving the blissed-out human lying in a puddle of his own cum.";
				say "     Not even bothering to throw on his loincloth, the orc boss steps up to the edge of the low platform, grinning as he notices your gaze being drawn to his still mostly hard and respectably thick cock. He gives it a demonstrative jerk, proud to show off his virility as this pumps out a bit more cum, then looks over the unruly mob and puts his hands to his hips. 'Now listen up you horny bastards! You've brought in good quality breeders, but I think this time, we want to make things a bit more... interesting. A challenge, hah! So for the next hunt, I want you to bring in something nice and big! Spread the word that not even the strong are safe from us orcs,' the orc boss calls out, answered by a chorus of shouts and grunts in agreement. When the cheering dies down a little, Boghrim continues, 'As you know, transformations are random as fuck, and since anyone can walk in here and say their twink of a breeder 'was a behemoth a minute ago', we'll count only breeders brought in by groups of two or more orcs. As our little police piggies always said - you gotta have witnesses. So pick a buddy or two and get going then!'";
				say "     [line break]";
				say "     As everyone starts to look around for other orcs to go out with, you kinda feel the urge to also go out rise inside you. [bold type]Do you want to join the throng of orc hunters pairing up and see what happens out there?[roman type][line break]";
				if player consents:
					say "     [line break]";
					say "     It only takes a few moments to find a broad-shouldered orc still without a hunting partner. He eyes you up and down at the same time as you take in his muscled body and ruggedly good looks, complete with the somewhat unusual (for an orc) golden-blond hair color. Your eyes are drawn down to the silver and gold shimmer of his police-badge belt-buckle. Wiping off his mouth with the back of one hand after chugging down a mug of orc brew, he grunts to greet you and then says, 'Name's Raku. Already know a great place to go. So don't slow me down and our 'team' will win big.' Not an orc of many big words it seems - which could be a good thing, as being to open with information could attract competition. Before much longer, you two set out from the orc lair, quickly turning a few corners to get out of sight from the other groups.";
					say "     Raku gives you a grin around his sharp tusks as you eventually ask where he plans to go, and the orc explains, 'If Big B wants big, we go big. There's centaurs over on the plains. All mythological and shit. Four legs, two arms - and a big round booty on those fuckers. Sure to impress the others!' The orc speaks with such total conviction that you instantly realize there is no hope of advancing some other plan of your own, so you shrug and follow along. Soon you're getting closer to the area now known as the 'dry plains'. There isn't a defined border or anything here, much rather a sort of shifting 'battlefield' as opposing forces slowly push against one another, trying to expand to new areas. On one hand, you see the expanse of green and yellow nanite-infused grass forming the plains, rustling and moving in waves that have nothing at all to do with wind. It actively seeks out structures to grow towards and erode. The other side is formed by nanites that seem to want to construct a medieval village, thatch-covered small houses and huts working to slowly grow out of the available materials - concrete and asphalt.";
					WaitLineBreak;
					say "     Your companion doesn't even give the shifting boundary a single glance, just moving on into the grassland in a speedy tempo. The route Raku takes leads you two past a surprisingly still intact building after a while. It is a barn and made of wood, which might perhaps have something to do with that - or it could have been built since the plague started, or just been grown by nanites. No matter what the real reason may be, the orc just strolls into it like he owns the place, grinning at your luck as he emerges with two handfuls of coiled-up rope a moment later. 'Ever used a lasso?' he asks and pushes one of them at your chest with a thud, then continues before you can get a word out, 'Learn quick, if you haven't!' The orc isn't joking around either, as he jogs off right away, scanning your surroundings for the prey you're here to bring down.";
					say "      In a surprisingly short time, Raku manages to find a centaur for you - or centaurs actually, as it is a small herd of them, with three beautiful mares, a foal and a magnificent stallion. The male centaur is truly a sight to behold - he has a powerful equine body, brown-furred with a bit of fluff lower on his four strong legs, hanging over the hooves, as well as a muscled human upper body with sun-bronzed skin and a handsome visage complete with a nice little goatee. 'You go left, I go right, capiche?' your orc companion murmurs silently out of the corner of his mouth, then takes his lasso in hand as you silently nod. You move out a little to the left at the same time as he stalks forward on the right. Then things suddenly start happen very quickly as one of the centaurs spots you and she calls out in alarm, leading to the mares and foal running off, followed by the stallion forming a protective rear guard. 'Get the centaur!' Raku shouts and charges after him, as do you yourself, and the two of you actually manage to close on the centaur as his legs don't pump full out because his attention split between the herd and you followers.";
					say "     [line break]";
					say "     [bold type]Looks like you actually have good chances of getting the stallion. Raku's already got his lasso ready and he's about to throw - which leaves you to decide what you want to do with your own. From what you can see, there are two options:[roman type][line break]";
					say "     [link]Y[as]y[end link] - Aim for the centaur's human half. You'll have him overwhelmed and ready to be bred in no time!";
					say "     [link]N[as]n[end link] - 'Accidentally' miss badly, possibly tangling up Raku as you do so. This will allow the centaur the opportunity to escape.";
					if player consents:
						say "     [line break]";
						say "     Your throw flies true and the loop of rope arcs towards the stallion. He tries to fend it off with an arm thrown up protectively, but all this does is catch his forearm in the lasso as you pull it tight. A second later, Raku's rope falls to encircle the stallion's head, shoulder and other arm, pressing it tight against the centaur's heaving chest as your compatriot pulls the rope in too. 'Let me go you fuckers,' your snagged centaur shouts as he rears up on his hind legs, trying to wrench the ropes out of your hands, but strong as he may be, he's clearly no match for two orc warriors. Still, the mythical equine doesn't give up easily, especially after Raku jeers, 'Your ass is ours now, horsie!' and all three of you are beaded in sweat by the time your captive is worn out, giving great gasping breaths as he staggers a little, then can't help but crash down to lie half on his side as his legs become too weak.";
						say "     'Stay away! I'll kick any of you who comes close. In... in a moment when I get back up,' the centaur shouts, desperation in his voice. His efforts to resist further prove futile as Raku steps up to deftly grab the stallion's hind legs, holding on despite a weak try to kick him, then wraps his rope several times around them. Now with his legs tied together, and with the rope doing it looped around the centaur's neck and right arm too, there the last chance for him to get away has come and gone. You got him good now!";
						say "     [line break]";
						say "     With Raku still kneeling next to your captive's legs, the centaur's well-muscled equine rump is open to you, including the invitingly-looking hole under his flicking tail. Dropping your equipment and hastily getting rid of your loincloth, you kneel behind to the centaur and grab the base of his tail, lifting it out of the way to allow for an uninterrupted view of his back door. It looks nice and inviting, a wrinkled ring of black skin that twitches as he realizes what you're about to do. 'Hey, leave me alo-nnnghhh!' the centaur says over his shoulder, then gives a breathless grunt as you push two spit-wettened fingers up his rear. Given the scale of his body, two fingers is something he can take more than easily, so much so that you add a third in short notice as you feel around in the snug passage. Then you find his magic button and give it a rub, making the centaur twitch with his bound legs and give a loud whinny.";
						say "     Extracting your fingers and lining up your thick green shaft with the stallion, you hear a grunt from the side and see Raku get up, slightly annoyed that he isn't the one about to take your captive's anal virginity. Too bad for him really, because you relish the feeling of the centaur's hole expanding around your cockhead immensely, together with the surprised gasp of a man taking his first cock and finding out that part of the feeling is actually quite pleasant. With both hands on the warm equine rump in front of you, kneading its muscle, your dick sinks deeper and deeper inside the centaur. Soon, you're balls-deep inside him and rest for a second, enjoying the feel of having his muscles twitch around the unfamiliar intruder. From the heavy breathing you hear from him, the centaur is starting to get into the spirit of things too - but then, who wouldn't if he had an orcish prick pressing against his prostate and leaking pre into his ass.";
						WaitLineBreak;
						say "     Giving the stallion a playful slap on the rump, you pull most of the way out of him, then ram your manhood in all the way again. The centaur gasps at the sudden start of fucking, but almost instantly his exclamation is replaced by a surprised gurgle and slurp - looking up, you see Raku standing in front, both hands on the centaur's head as he pushes him down on his cock and begins fucking the stallion's  face. From both ends, the two of you start breaking the centaur in for his new future, you taking his ass in heavy thrusts that let your balls slap his buttocks while Raku introduces him to deep-throat fucking, only from time to time allowing short moments to get in an urgent gasp of air.";
						say "     It doesn't take very long before your captive is pushed to increasingly eager participation as the power of your orcish pre-cum takes effect. You know that you've been leaking small throbs into his innards since you pushed all the way into him, and Raku will have given the horsie quite a bit to swallow too, dosing him with the strong aphrodisiacs contained inside. Looking to the side, you see what might almost be called another leg - but is in fact the centaur's massive horsecock, now slid out of its sheath as he has gotten incredibly horny. Grinning, you lean over the equine body of your captive, bracing against it as you increase the intensity of your thrusts. At the same time reaching out for the centaur's cock, you draw a gurgled moan from him as you start stroking the flared shaft.";
						WaitLineBreak;
						say "     Spit-roasting a hunky centaur is quite a bit of fun, almost too much so, as you can't help but feel your orgasm rapidly approaching soon after. Cf course, with everyone involved already a bit exhausted from hunting and overpowering the guy, your stamina isn't quite what it might usually be. And so, after just a few more thrusts, you grunt in satisfaction and bottom out inside the centaur, your manhood throbbing with pulse after pulse of potent orc seed into him. Waves of pleasure come crashing over your new breeder as he gets filled for the first time and suckles hard on Raku's shaft, milking a second orc's load out of his erection. The double-injection of orc cum pushes your captive past the point of no return with startling suddenness and he groans out around Raku's dick as his own horsecock bursts forth with a geyser of cum, splattering the ground with thick jets of creamy semen.";
						say "     beside getting him off and making the centaur nice and plyable, the orc cum in his system also kicks a transformative effect into high gear. In barely an eye-blink, the male's upper body turns green in color and gains a little more muscle tone, then his hair becomes a shiny black and lengthens to fall halfway down his back. From your position, you only see his ears lengthen a little and form the slightly pointy tips of an orc breeder. You're pretty sure that the hunk also just got his first set of tusks too. Thankfully, this is where the changes stop, meaning that you've still got a centaur to present - or maybe rather an orc-taur now, or a breeder-taur. No matter what, he's certainly enough to make an entrance!";
						WaitLineBreak;
						say "     After a bit of a break to catch your breath, you and your hunting partner start back towards the orc lair - accompanied by a now very docile and happy orc-taur. He's still quite high on the double dose of cum that you have to constantly watch out that he doesn't wander off in the wrong direction, and it takes quite a bit of self-control not to stop (more than once or twice) for a quickie as he is prone to present his buttocks with the tail pulled aside, eager for another go. Eventually the three of you make it back to the orc lair, arriving together with a few other groups, some with new slaves, some without.";
						say "     As the orcs that remained there greet you, Boghrim steps forward to inspect the new captures. He grins broadly at their well-used state and the fact that they're all so high on orc cum that many had to be carried in - including your orc-taur, whom you had to park on a quickly freed-up couch. That last load on the way back might have been a bit much for him. 'A very nice haul guys. Now shut up for a moment,' the orc boss shouts over the noise of the crowd, and after a few moments the orcish horde turns to him, more or less attentive. 'Sorry to say for everyone else, but I think we got a winner. These two hunters made us the very first orc-taur! I really wanna see if we can breed him with foals, so they'll get the first place!' Seems like you - and Raku - decided this round for yourself and Boghrim grabs a wrist on both of you and pulls your muscled arms up in a victory pose.";
						say "     [bold type]That was fun - you feel like you should come back here sometime soon and join in for another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
						increase libido of Orc Mob by 1; [another victory for the player]
					else: [trip up Raku]
						say "     [line break]";
						say "     Aiming past the centaur, you let your lasso fly - right at Raku. By incredible luck, you do hit his legs in just the right way that he gets entangled by the rope, stumbling and crashing to the ground in the high grass. Hmm... there was a definite 'thunk' when he went down, and the orc doesn't immediately get up either. Moving closer, you realize that he hit his head on a low, forgotten wall-stub, the remnant of whatever buildings were here before the grass. Raku's knocked out for good right now! As you wonder what you shall do with your hunting partner, and how annoyed he will be because of your 'unfortunate miss', the gallop of hooves makes you look up. Seems like the centaur stallion hasn't missed the sudden reversal of circumstances - and now he's coming closer with a grim expression on his face. 'I'll show you who rules these plains!' the strong male shouts, ready for a fight.";
						say "     [line break]";
						say "     [bold type]How do you react?[roman type][line break]";
						say "     [link]Y[as]y[end link] - Try to explain that you're on his side. He should be thanking you!";
						say "     [link]N[as]n[end link] - Get ready for a fight. He doesn't look like he wants to talk at all.";
						if player consents:
							say "     [line break]";
							say "     Raising your hands in a calming gesture, you do some quick talking and manage to make the centaur slow down, looking at Raku and yourself in annoyance. He huffs disapprovingly, then gives a reluctant nod. 'Fine, so maybe YOU are okay - but HE frightened my herd and wanted to enslave me! This calls for strict punishment. Give him to me! He'll make a fine mare with some little effort.'";
							say "     [line break]";
							say "     [bold type]How do you react?[roman type][line break]";
							say "     [link]Y[as]y[end link] - Allow your 'partner' to be impaled on a huge centaur cock.";
							say "     [link]N[as]n[end link] - This goes a bit far. No deal!";
							if player consents:
								say "     [line break]";
								say "     Well, its nothing more than Raku wanted to do in turn, so you crouch down next to the semiconscious orc and grab on tightly to lift him up. With a little bit of effort, you put the green-skinned brute on that low, short piece of wall lengthwise, getting him into about the right height. Then the centaur is beside you, looking down at the arrangement with a smile spreading over his lips, and the heavy equine shaft under his body hardening rapidly. 'Stand back,' he says, hooves scratching at the ground impatiently, then as soon as you're out of the way, he rears up and drives his cock into Raku's tight asshole. The orc groans loudly as his anal cherry is taken by a horse-cock, its flat glans spreading his passage wide as the centaur plowing into him.";
								say "     Raku tries to get away, but with him wedged between the stallion's underside and the wall stub, he's in no position to do so really - especially not while already impaled on a throbbing cock. And so, the mighty orc can do nothing but moan helplessly as he is used as a mare. The centaur thrusts in and out of him, grunting in a near bestial manner as that gigantic rod pounds into Raku over and over. He doesn't hold back at all, not wasting a second at letting the orc get used to being penetrated and instead his hammers in and out. Soon, with a sound almost like a neigh, the centaur drives deep inside Raku and cums powerfully, filling him with copious amounts of centaur spunk. His huge balls throb and expel cup after cup of virile, equine seed into the orc, who is left bloated and panting. Even then, the stallion doesn't pull out, instead simply leaning forward to look at his soon to be mare. He chuckles at Raku, then says, 'Gonna start round two as soon as I catch my breath!'";
								say "     [line break]";
								say "     Sounds like Raku's in for quite a bit more thumping, and soon. You almost wish you could stay and watch it all, but the small matter of surviving in this city pulls you back down to earth. About time you get back to the orc lair and maybe do something productive. With an apology for the inconvenience, you say goodbye and walk off just as the centaur starts pounding Raku again. You eventually make your way back to the drinking hall after a while. Most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. Some of them are big, some small, with little sign of what kind of creature they may have been before. Only when the boasting and storytelling starts about a cheerleader hulk, shaft beast and even a drake being fucked and transformed is it revealed what everyone went for...";
								say "     [bold type]This round is a bust, for you - at least in the eyes of the orcs, as they assume your goals were the same as theirs. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
							else:
								say "     [line break]";
								say "[OrcHuntCentaurFight]";
						else:
							say "     [line break]";
							say "[OrcHuntCentaurFight]";
				else: [don't join in]
					say "     [line break]";
					say "    You may have taken orc form to get in here, but that doesn't mean you should participate in their activities. Quietly pushing your way to the back of the crowd, you watch the green-skinned horde leave their lair in an unruly throng. Whoever is out on the streets right now is in for quite a big-dicked surprise...";
					say "     Quite a while later, the hunting party comes back, carrying a number of new breeders - some big, some small. The main attraction is a grinning trio of orcs that lead a docile centaur into the lair, whose upper body is green-skinned and has the handsome features and long black hair of an orc breeder. It is clear who has won this round, as almost all orcs bunch up to check out this new treat and a horny gangbang immediately starts around the... orc-taur? breeder-taur? No matter what name, he'll be fucked to overflowing before the night is over...";
					say "     [bold type]This round is a bust, for you. You didn't participate after all. Still, you could always come back here another time and try another 'hunt'. Just talk to the orc crowd when you're ready.[roman type]";
				now hp of Orc Mob is 6; [3rd hunt over]
			else if hp of Orc Mob is 6:
				say "     Again joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand. It seems that most of the conversation centers on Boghrim's breeder capturing contest and how much fun the last round of it was. Their mention of the orc boss leads you to look over at his raised fuck-pad platform, with its leather sofas and a small private harem lounging on them. The orc breeders are paired up in twos and threes, caressing and touching each other while Boghrim himself is busy pounding into Jason, the one unchanged human he owns. You can barely look away from the rhythmic pumping of the mighty orc's hips against his willing slut, until their coupling culminates in an explosive orgasm, Boghrim's balls throbbing as he pumps Jason full of cum and the human's cock spewing forth a creamy load over the leather couch at the same time. With a satisfied grunt, Boghrim eventually pulls out of Jason, standing up and leaving the blissed-out human lying in a puddle of his own cum.";
				say "     Not even bothering to throw on his loincloth, the orc boss steps up to the edge of the low platform, grinning as he notices your gaze being drawn to his still mostly hard and respectably thick cock. He gives it a demonstrative jerk, proud to show off his virility as this pumps out a bit more cum, then looks over the unruly mob and puts his hands to his hips. 'Now listen up you horny bastards! You've brought in good quality breeders the last few rounds, but this time I want you to bring in something wild - something feral! Let's show even the beasts out there what it feels to be pounded by an orc! For the next hunt, we'll only count critters that walk on all fours,' the orc boss calls out, answered by a chorus of shouts and grunts in agreement. When the cheering dies down a little, Boghrim continues, 'So what are you waiting for? Go out there and get your dicks wet, hah!'";
				say "     [line break]";
				say "     As the orcs start chatting among themselves about what they'll hunt while moving quickly towards the entrance, you kinda feel the urge to also go out rise inside you. [bold type]Do you want to join the throng of orc hunters and see what happens out there?[roman type][line break]";
				if player consents:
					say "     [line break]";
					say "     Moving out from the orc lair, the crowd of eager hunters starts to split up pretty quickly, everyone wanting to go at it alone and capture a nice beast to win the current round with. You watch the guys go this way and that, then eventually decide that the young orc warrior that peeled off a short while ago towards the urban forest had the right idea. There'll definitely be some ferals in that wilderness. Moving through the chaotic streets of the city, filled with abandoned cars, rubble and debris, everything feels strangely empty and quiet around all around - or maybe not, as any sane creature living nearby has by now learned to flee when the orc hunting party comes out to play. Then suddenly, a screech and flutter of wings breaks the silence, drawing your attention to a nearby apartment high rise. About seven stories up, you see an orc sneer as he thumps the railing of a balcony in frustration - looking after a feral gryphon gliding away through the air. Unluckily for him, his intended target has wings and was less than amenable to be enslaved, as becomes obvious from the quickly healing claw-marks on the brutish warrior's broad chest.";
					say "     You can't help but smirk a little at the luckless orc's frustration. Most likely he won't be any serious competition after that failed grab. The rest of the hunters are combing the city all around, either capturing something or otherwise driving a wave of fleeing creatures ahead of them. By the time he's back on street level, there won't be any feral left in the vicinity for him to find. That thought makes you speed up your tempo a bit, as you too are behind someone else, just following the path the other orc took. You'll have to be quick so you can grab something before he gets his catch and/or drives away everything else. Soon, you reach the outskirts of the forest and climb over the crumpled heaps of rubble forming its perimeter here - parts of buildings and chunks of asphalt that seem to have been thrown around by full-sized trees suddenly bursting out of the ground. Beyond, the urban forest is deep and dark, with lots of thick underbrush and tall trees, the perfect place to find ferals - or get lost in.";
					WaitLineBreak;
					say "     As you make your way through the dark woods, your idle thoughts go back to the incident with the feral gryphon. This would be a far better place to catch one of those beasts - with no real room for him to spread his wings and take off. And wouldn't it be a nice coincidence if just that specific one you saw fled here and was trying to hide behind that tree over to your left, or that one over there on the right? Thinking about him, you can picture the muscled flanks of the quadrupedal beast, the pattern of those large wings, and... suddenly the howl of a wolf, no two, three, then five (!) brings you back to focusing on your surroundings. Growls and shouts, the crash of snapping branches and general fighting wake your curiosity and have you sprinting forward along the thin dirt trail you're on, soon coming into sight of a small clearing, filled with fighting creatures.";
					say "     The young orc warrior you followed before is there, and it seems he found a feral too: a wolf... and his four pack-mates. Orcs may be strong, but they're not almighty - and with five wolves growling and snapping at him from all sides, the green-skinned brute is in a bit of trouble. He's already got slashes and shallow bites on his arms and legs - already healing, of course, but still wearing him down bit by bit. As you watch, one of the wolves suddenly jumps forward and catches the orc's loincloth between his jaws, wrenching on it and throwing the ripped fabric aside with the orc teen now completely nude. Two others follow up and nip at the slave hunter's heels, making him stumble and barely keep his footing.";
					say "     [bold type]Seems like he's in trouble and will lose soon - and maybe more than just the fight, judging from the erect canine shafts dangling under the bodies of the wolves. Do you want to help him?[roman type][line break]";
					if player consents:
						say "     [line break]";
						say "     Stepping out from behind the tree, you take several steps towards the fight, then shout at them to leave the other orc alone. Everyone's attention is drawn over to you for a second, then the largest of the wolves gives a commanding growl to his companions, followed by the barked words 'finish him'. And with that, the alpha wolf dashes towards you, leaving his subordinates to wrestle down the orc while he takes care of the new prey - you.";
						now inasituation is true;
						challenge "Alpha Wolf";
					else:
						say "     [line break]";
						say "     Nah, it's not like he didn't bring it on himself, stomping through the forest to capture a new sex slave. Its not your responsibility to save his ass. Unfortunately, as you are about to turn and walk away, a fallen branch snaps loudly under your left foot, drawing the attention of the combatants. Everyone's attention is drawn over to you for a second, then the largest of the wolves gives a commanding growl to his companions, followed by the barked words 'finish him'. And with that, the alpha wolf dashes towards you, leaving his subordinates to wrestle down the orc while he takes care of the new prey - you.";
						now inasituation is true;
						challenge "Alpha Wolf";
					if fightoutcome >= 20 and fightoutcome <= 29: [lost]
						say "     After the alpha wolf has finished and left, you look around and see the rest of the wolfpack, now consisting of one additional wolf with a thoroughly cum-drenched back end. Seems like the beasts fucked the orc into submission - and transformation. The new omega fuckhole of the pack whines as one of the others wedges his muzzle under his tail and gives a lick, then jumps on his back to thrust into him. The fun is cut short though as a howl from the alpha calls for his pack to follow along, coming from some way ahead in the woods. Almost as one, the feral beasts trot off in that direction - with the transformed orc making the end of the group after giving you a last look over his shoulder. It does take some time to find your way out of the forest after that, but eventually you manage to reach more familiar surroundings and make your way back to the orc lair. The rest of the hunting party comes back in dribs and drabs over the next little while, carrying a number of new slaves - some big, some small. While there are a few that obviously changed into humanoid orc breeders, other orcs do have the required feral beasts along - sporting matted fur and feathers around their rear ends, muzzles and beaks. One captive draws special interest... it is a true monster of a wolf, large and muscle-packed with very noticeable fangs. From what the proud orc warrior that captured the beast tells, the wolf wasn't actually this big when he fought him - and a whole pack of his wolf buddies - but transformed after a generous injection of orc cum.";
						say "     As the slaves are lined up in front of Boghrim's platform to be checked out by everyone, the wolf eventually comes to and jumps to his feet, muscles rippling under the black fur all over his strong body. With barely an eye-blink to orient himself, he goes for another captive right next to himself - only to be brought short by his orc captor's big hand grabbing his neck-fur. 'Hah, look at this horny fucker!' the orc grunts out in an amused tone as he sees that the feral beast has got a raging erection. Bending the wolf's muzzle up so he can look him in the eye, the orc gives a loud growl, intimidating the beast into a whine of submission, then he relents and says, 'Fine, fine - I like your spirit wolfie, so go for it. Be a proper orcish pet and fuck that slave! But you better remember the feeling of my shaft up that chute of yours!' Letting go, the orc watches with a grin as his captive beast jumps a breeder and forces its thick erection into the green-skinned man's ass. The sizable knot at the base of the canine cock violating the orc breeder draws chuckles and joked comments from the watching crowd, and before long, the green-skinned brutes start calling the beast a worg. They're cheering him on and say that he has the proper character to be a true companion for an orc - strong, horny and yet obedient, with even a tail to use as a convenient grip for hard fucking. Almost unanimously, the orc who brought the worg in is declared the victor of this round soon after that.";
						say "     [bold type]This round is a bust, for you. Still, you could always come back here another time and try another 'hunt'. Just talk to the orc crowd when you're ready.[roman type]";
					else if fightoutcome >= 30: [fled]
						say "     Running as fast as you can, you leave behind the orc and flee into the woods. The last thing you see of the green-skinned and muscular teen is him on his knees, with the wolves closing in. Their alpha follows you for quite a distance, growling and snapping, but eventually you manage to lose him. It does take some time to find your way out of the forest after that, but eventually you manage to reach more familiar surroundings and make your way back to the orc lair. The rest of the hunting party comes back in dribs and drabs over the next little while, carrying a number of new slaves - some big, some small. While there are a few that obviously changed into humanoid orc breeders, other orcs do have the required feral beasts along - sporting matted fur and feathers around their rear ends, muzzles and beaks. One captive draws special interest... it is a true monster of a wolf, large and muscle-packed with very noticeable fangs. From what the proud orc warrior that captured the beast tells, the wolf wasn't actually this big when he fought him - and a whole pack of his wolf buddies - but transformed after a generous injection of orc cum.";
						say "     As the slaves are lined up in front of Boghrim's platform to be checked out by everyone, the wolf eventually comes to and jumps to his feet, muscles rippling under the black fur all over his strong body. With barely an eye-blink to orient himself, he goes for another captive right next to himself - only to be brought short by his orc captor's big hand grabbing his neck-fur. 'Hah, look at this horny fucker!' the orc grunts out in an amused tone as he sees that the feral beast has got a raging erection. Bending the wolf's muzzle up so he can look him in the eye, the orc gives a loud growl, intimidating the beast into a whine of submission, then he relents and says, 'Fine, fine - I like your spirit wolfie, so go for it. Be a proper orcish pet and fuck that slave! But you better remember the feeling of my shaft up that chute of yours!' Letting go, the orc watches with a grin as his captive beast jumps a breeder and forces its thick erection into the green-skinned man's ass. The sizable knot at the base of the canine cock violating the orc breeder draws chuckles and joked comments from the watching crowd, and before long, the green-skinned brutes start calling the beast a wor. They're cheering him on and say that he has the proper character to be a true companion for an orc - strong, horny and yet obedient, with even a tail to use as a convenient grip for hard fucking. Almost unanimously, the orc who brought the worg in is declared the victor of this round soon after that.";
						say "     [bold type]This round is a bust, for you. Still, you could always come back here another time and try another 'hunt'. Just talk to the orc crowd when you're ready.[roman type]";
					else if fightoutcome >= 10 and fightoutcome <= 19: [won]
						say "     The large, black-furred wolf sinks to the ground, his tail tucked between his legs. His ears droop back and he starts to slink away from you - but this time you manage to pounce atop him before he can get away and pin him down. He whines and growls, but seems to submit, at least for the moment. Having gained the upper hand over the alpha wolf, you have the time to look up and check out your the other four wolves - only to find that there are five, by now. The one additional wolf surrounded by the others has a thoroughly cum-drenched back end, as well as a wet muzzle which he licks cum off as you watch. Seems like the beasts fucked the orc into submission - and transformation. The new omega fuckhole of the pack whines as one of the others wedges his muzzle under his tail and gives a lick, then jumps on his back to thrust into him.";
						say "     You shout at the wolves from where you're pinning their leader, making their heads turn towards you in what seems like shock and even the humping wolf freezes in his movements. They are clearly unsure what to do now, seeing that you've defeated the strongest member of their pack... and from the way they're panting a lot, you can tell that the fight against the former orc in their midst took quite a bit out of them too. Hesitantly, the wolves pad towards you a tiny bit, looking at one another - but clearly, they've mostly been followers until now, and you've got a large hand wrapped around the muzzle of their alpha, silencing any command he might give. In the end, the lack of leadership makes it easy to frighten the wolves off with an aggressive bellow, showing your tusks in defiance, and with some whines, they flee into the woods - not without their new recruit though, nipping at his heels to drive him into the right direction. Who knows, maybe the transformed orc will become a new alpha once he's fully accepted his new form. Or not, its hard to tell.";
						say "     [line break]";
						say "     This now leaves you alone in the wood, with a powerful feral beast in your grasp and at your mercy. In short, he's exactly what you need to impress everyone back at the orc lair. [bold type]Do you want to introduce the canine into his new role as an orcish fuckhole ([link]Y[as]y[end link]), or maybe just knock him out, leaving the beast to roam free while you go back empty handed ([link]N[as]n[end link])?[roman type][line break]";
						if player consents:
							say "     [line break]";
							say "     You set out with the others to find a slave, so now that you got this proud wolf subdued, of course you're gonna fuck him! Keeping him pinned down, you yank up his tail, exposing the tight tail-star waiting for you there - twitching in apprehension, which only makes this all the more delicious. He whimpers a little, then starts making some boastful threats as you let go of his muzzle to grab the furry rear of your captive. Ignoring his impotent complaints, you instead grab his tail with your other hand and press your throbbing member against his back door. The fearful whine as you penetrate him with your cockhead seems like the sweetest music to your ears. He tries to scrape himself forward, but you keep a tight grip on the alpha wolf, moaning in his ear as you sink your [cock size desc of player] [cock of player] cock into his tight ass. The wolf's hole [if cock length of player >= 24]has trouble stretching to accommodate your massive meat, but you keep at it, forcing it[otherwise]slowly relaxes to accommodate your thrusting pole, forced[end if] to accept you so you can bugger him thoroughly.";
							say "     Reaching beneath him, you find that his cock has become quite hard and is leaking precum steadily. Chuckling at this, you tease the beaten wolf about how much he clearly likes being the bitch. He growls and tries to respond that he's not a female, and not your bitch, but you just laughingly tell him that orcs usually prefer males and thrust harder into him, pressing against his prostate and making him moan. His penis throbs in your hand, releasing a large spurt of precum as his ears dip down in shame. Your cock throbs in response as well as you revel in making this dominant male submit to you. You fuck him hard until he howls in defeat, cumming a large puddle of wolf cum onto the ground from being pounded in the ass. This sends you over the edge and you cram your shaft deep inside him, cumming hard and filling him [if cock width of player >= 20]to the point of overflowing [end if]with your hot load.";
							WaitLineBreak;
							say "     Lying on top of the wolf, your manhood still buried balls-deep inside him, you feel something happening with your captive. He groans and trembles, fur bristling as a transformation sets in - which actually feels pretty nice around your cock, almost as if his body molds itself to fit the shaft while absorbing your seed. For a moment, fear rises in you that you'll end up with just another orc breeder - which all of itself isn't so bad, other than costing you any chance at winning the 'feral round' of the slave hunt. Instead, he just seems to become 'more wolf' ...as in bigger, stronger and wilder, with his canines elongating to show as fangs even in a closed muzzle.";
							say "     The thick and shaggy fur of the growing wolf heaves with deep breaths and he turns his also enlarged head towards you. His eyes focus on you with an intense expression, full of lust and... something else. Then the large beast opens his teeth-filled maw (no longer really suited to form words with) and surprises you with an affectionate lick. With all the cum you've pumped into him, he must be quite drunk from its effects, but something tells you that this goes deeper than that. This transformation has made him into something more than a wolf - a true companion for his new orcish master - a... worg!";
							WaitLineBreak;
							say "     Satisfied with having found a fitting name for the beast, you reach around the worg once more, taking hold of his (also increased in size) canine cock, playing your fingers over its erect, firm length. The creature chuffs in satisfaction and squeezes your manhood with powerful anal muscles, returning the favor of a good stroke in kind. Lust flares up strongly between the two of you and before long, you're jerking him off while humping into the tightly gripping cream-filled chute under his tail.";
							say "     Already having come not long ago, this round of fucking last a little longer, filling the clearing with lewd noises as you complete the joining of man and beast once more, ending in an eruption of canine seed from your worg that splatters the ground with long streaks, and your own prick throbs with blast after heavy blast of cum to fill your beastly partner to over-flowing. More than a little squirts out around your shaft, creating a sticky mess of his butt-fur. Panting in satisfaction, the beast licks you once more, then promptly dozes off, overwhelmed by the effects of even more orc cum.";
							WaitLineBreak;
							say "     Hefting the feral creature up on your shoulders, you start looking for a way out of the woods. It does take some time to reach more familiar surroundings, but after that it isn't too hard to make your way back to the orc lair. The rest of the hunting party comes back in dribs and drabs over the next little while, carrying a number of new slaves - some big, some small. While there are a few that obviously changed into humanoid orc breeders, other orcs do have the required feral beasts along - sporting matted fur and feathers around their rear ends, muzzles and beaks. Your own capture draws special interest... such a true monster of a wolf, large and muscle-packed with very noticeable fangs. Telling the story of his capture and transformation, you stress that he actually isn't a wolf anymore, but rather a worg.";
							say "     As the slaves are lined up in front of Boghrim's platform to be checked out by everyone, the worg eventually comes to and jumps to his feet, muscles rippling under the black fur all over his strong body. With barely an eye-blink to orient himself, he goes for another captive right next to himself - only to be brought short by your strong hand quickly grabbing his neck-fur. 'Hah, look at this horny fucker!' Boghrim calls out in acknowledgment, waving towards the raging erection your feral beast shows. Bending the wolf's muzzle up so you can look him in the eye, you give a low growl of your own to remind him of his place, earning a whine of submission from the worg. Satisfied with that, you release him to jump the breeder and force his thick erection into the green-skinned man's ass.";
							WaitLineBreak;
							say "     Surpassing the racket of moans and growls, Boghrim calls out, 'Impressive. Now THAT is a proper orcish pet. Fuck that slave!' The sizable knot at the base of the canine cock violating the orc breeder draws chuckles and joked comments from the watching crowd, and before long, the green-skinned brutes start congratulating you on bringing the worg - cheering on the beast as it roughly takes the breeder's ass. Your capture is a companion truly for an orc - strong, horny and yet obedient, with even a tail to use as a convenient grip for hard fucking. Almost unanimously, you're declared the victor of this round soon after that.";
							say "     [bold type]A clear victory for you - and what a fun one too. You feel like you should come back here sometime soon and join in for another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
							increase libido of Orc Mob by 1; [another victory for the player]
						else:
							say "     [line break]";
							say "     Jostling the wolf a little, you wrap your arm around his neck in a sleeper hold, gently but surely pressing on the artery delivering blood to his head. After no more than a few seconds, the feral beast falls into unconsciousness, becoming slack in your arms. It does take some time to find your way out of the forest after that, but eventually you manage to reach more familiar surroundings and make your way back to the orc lair. The rest of the hunting party comes back in dribs and drabs over the next little while, carrying a number of new slaves - some big, some small. While there are a few that obviously changed into humanoid orc breeders, other orcs do have the required feral beasts along - sporting matted fur and feathers around their rear ends, muzzles and beaks. One captive draws special interest... it is a true monster of a wolf, large and muscle-packed with very noticeable fangs. From what the proud orc warrior that captured the beast tells, the wolf wasn't actually this big when he fought him - and a whole pack of his wolf buddies - but transformed after a generous injection of orc cum.";
							say "     As the slaves are lined up in front of Boghrim's platform to be checked out by everyone, the wolf eventually comes to and jumps to his feet, muscles rippling under the black fur all over his strong body. With barely an eye-blink to orient himself, he goes for another captive right next to himself - only to be brought short by his orc captor's big hand grabbing his neck-fur. 'Hah, look at this horny fucker!' the orc grunts out in an amused tone as he sees that the feral beast has got a raging erection. Bending the wolf's muzzle up so he can look him in the eye, the orc gives a loud growl, intimidating the beast into a whine of submission, then he relents and says, 'Fine, fine - I like your spirit wolfie, so go for it. Be a proper orcish pet and fuck that slave! But you better remember the feeling of my shaft up that chute of yours!' Letting go, the orc watches with a grin as his captive beast jumps a breeder and forces its thick erection into the green-skinned man's ass. The sizable knot at the base of the canine cock violating the orc breeder draws chuckles and joked comments from the watching crowd, and before long, the green-skinned brutes start calling the beast a worg. They're cheering him on and say that he has the proper character to be a true companion for an orc - strong, horny and yet obedient, with even a tail to use as a convenient grip for hard fucking. Almost unanimously, the orc who brought the worg in is declared the victor of this round soon after that.";
							say "     [bold type]This round is a bust, for you. Still, you could always come back here another time and try another 'hunt'. Just talk to the orc crowd when you're ready.[roman type]";
					now inasituation is false;
				else:
					say "     [line break]";
					say "    You may have taken orc form to get in here, but that doesn't mean you should participate in their activities. Quietly pushing your way to the back of the crowd, you watch the green-skinned horde leave their lair in an unruly throng. Whoever is out on the streets right now is in for quite a big-dicked surprise...";
					say "     Quite a while later, the hunting party comes back, carrying a number of new slaves - some big, some small. While there are a few that obviously changed into humanoid orc breeders, other orcs do have the required feral beasts along - sporting matted fur and feathers around their rear ends, muzzles and beaks. One captive draws special interest... it is a true monster of a wolf, large and muscle-packed with very noticeable fangs. From what the proud orc warrior that captured the beast tells, the wolf wasn't actually this big when he fought him - and a whole pack of his wolf buddies - but transformed after a generous injection of orc cum. As the slaves are lined up in front of Boghrim's platform to be checked out by everyone, the wolf eventually comes to and jumps to his feet, muscles rippling under the black fur all over his strong body. With barely an eye-blink to orient himself, he goes for another captive right next to himself - only to be brought short by his orc captor's big hand grabbing his neck-fur.";
					say "     'Hah, look at this horny fucker!' the orc grunts out in an amused tone as he sees that the feral beast has got a raging erection. Bending the wolf's muzzle up so he can look him in the eye, the orc gives a loud growl, intimidating the beast into a whine of submission, then he relents and says, 'Fine, fine - I like your spirit wolfie, so go for it. Be a proper orcish pet and fuck that slave! But you better remember the feeling of my shaft up that chute of yours!' Letting go, the orc watches with a grin as his captive beast jumps a breeder and forces its thick erection into the green-skinned man's ass. The sizable knot at the base of the canine cock violating the orc breeder draws chuckles and joked comments from the watching crowd, and before long, the green-skinned brutes start calling the beast a worg. They're cheering him on and say that he has the proper character to be a true companion for an orc - strong, horny and yet obedient, with even a tail to use as a convenient grip for hard fucking. Almost unanimously, the orc who brought the worg in is declared the victor of this round soon after that.";
					say "     [bold type]This round is a bust, for you. You didn't participate after all. Still, you could always come back here another time and try another 'hunt'. Just talk to the orc crowd when you're ready.[roman type]";
				now hp of Orc Mob is 7; [4th hunt over]
			else if hp of Orc Mob is 7: [orc hunt final accounting]
				say "     Again joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand. It seems that most of the conversation centers on Boghrim's breeder capturing contest and how much fun the last round of it was. Their mention of the orc boss leads you to look over at his raised fuck-pad platform, with its leather sofas and a small private harem lounging on them. The orc breeders are paired up in twos and threes, caressing and touching each other while Boghrim himself is forcefully shoving the head of an orc warrior down his erect shaft. Looks like Urik is still a resistant to his new role in life and also shows no signs of transforming into the shape of a regular breeder - that is, a muscled male the size of a regular human. No, he's still the powerful brute was when the competition began, retaining the attraction of being a super-sized breeder that his new owner will have the pleasure of breaking in good.";
				say "     You can barely look away from the rhythmic pumping of the mighty orc's shaft in and out of the weakly struggling slut's mouth, accompanied by Boghrim's balls slapping Urik's face again and again. Before much longer, the face-fuck culminates in an explosive orgasm, with the orc chief's potent seed being pumped right down the big breeder's throat. After a few hard throbs of his balls, Boghrim pulls Urik's head back by his hair, first painting the orc's tongue white with his creamy load, then decorating his face with sticky white streaks. Looking down, you see that the enslaved warrior's own cock is hard as rock - either from him learning to like his submissive role, the aphrodisiac effects of Boghrim's cum, or both. With a satisfied grunt, Boghrim looks down over the kneeling orc and laughs at how the now cum-drunk slut stretches out his tongue to lick a drop of orc cum off his shaft. Then he hooks a strong hand under Urik's arm and pulls him to his feet.";
				WaitLineBreak;
				say "     As the tribe's orc chief leads his cocksucker to the front of the raised platform, you can hear him say to Urik, 'Gonna miss having your lips around my cock all the time, you little whore. It was fun to see you bluster until the first taste of cum, after which you slurped it up like the needy breeder you are!' Urik doesn't reply, too busy licking the cum off his fingers that he wiped off his face. 'Oi! Shut up for a second!' Boghrim bellows at the rowdy crowd of orcs. All eyes go to him a second later, standing tall as the paragon image of an orc, broadly built with huge muscles, naked and sporting a thick, still half-hard prick between his legs - all the while holding on to a cum-drunk slave. As the gathered orcs bare their tusks in approving smiles at their mighty leader, grunting to show that he has their attention and nipping at mugs of orc brew, he shouts, 'You've all done great jobs at gathering new slaves for the tribe, so now it is time to reward the best hunter!'";
				say "     The room explodes in cheers at the announcement and several of the strongest orcs step forward a little, posing with their impressive muscles and looking casually at their rivals for the honor of being the winner. 'As promised, this bitch here is the prize,' Boghrim calls out while pulling Urik closer and jamming to fingers into his mouth to be lewdly sucked upon. 'He's proven quite a cum-slut. As for the rear end - it still only has felt Toven's shaft, so you'll have all the fun of breaking him in for good.' Many an orc cock in the hall starts hardening at that shout, and the orc chief pulls the enslaved warrior around to show off his muscular rump, giving it a slap that leaves an emerald hand-print on Urik's green skin for several seconds.";
				WaitLineBreak;
				say "     The orc leader grins at the lusty stares everyone gives Urik, then calls out, 'But there is more - I went out to get a proper uniform to decorate your new fucktoy with.' Raising his hand to his mouth and giving a sharp whistle, the mighty orc's breeder slaves jump up from their spots immediately and start decking Urik out with a brand new leather harness to go around his broad chest, all glistening buckles and studded straps. Then Jason brings forward what looks to be a pair of underwear - shiny and black, which he holds up for Urik to step into, then pulls up the orc's muscular legs. The human can't help himself and fondles the large orc's shaft admiringly as he tucks it into the pouch of a very interesting piece of clothing - quite tight-fitting trunks with a mesh pouch at the front, decorative slits on the sides... and a completely open backside. There isn't much there on the back but the straps at the top and bottom, meaning that these undies allow unrestricted access to Urik's ass.";
				if graphics is true:
					WaitLineBreak;
					project the Figure of Urik_ass_icon;
					WaitLineBreak;
				say "     'You like that, don't you?' the orc leader barks into the room and gets a full-throated cheer from all of the gathered orcs. This man (or orc now) really knows how to play a crowd, that is sure. Tension rises in the room for a moment as Boghrim lets his gaze wander over the gathered warriors, with several of the big brutes deflating a little as he passes them without calling out that they've won. Then finally, he focuses on someone and gives a wide tusk-baring grin. ";
				if libido of Orc Mob > 2: [player won - brought in 3-4 slaves]
					say "It's you! 'Congratulations!' the orc chief calls out and waves you forward. With a wide grin on your face, you walk past the orcs who had prematurely pushed forward earlier, showing them your tusks in satisfaction. As you come close to the platform, Boghrim gives Urik a shove, making the orc literally stumble into your arms. Standing in the drinking hall of the orc lair with the super-sized breeder slave in your arms and the whole tribe cheering at your victory, you can't help but feel very proud of yourself. Despite the way you got introduced to the orcs living in this city, now you're an orc warrior yourself and do feel pretty good as a member of this tribe. The hunt was good fun and you remember the slaves you brought in fondly and with some arousal - making you look forward in anticipation to making use of your newly acquired orc slave too.";
					say "     [bold type]The big slave hunt is over and you won! Urik, the warrior-turned-breeder, is your rightful prize and property. Additionally, there's now free fun to be had with the communal breeders here in the lair. They're always at your disposal if you want some fun...[roman type]";
					move Urik to Main Hall;
				else:
					say "'Ch'grok, you did it! Congratulations!' A quite big and strong orc in the crowd roars in satisfaction, pounding both fists against his bulging pecs in a display of power, then strides forward proudly. As Ch'grok reaches the platform, Boghrim gives Urik a shove, making him fall right into his new owner's arms. 'He's mine,' the large brute call out loudly, one hand sliding down to grope Urik, the other pulling back his head by the hair. This exposes the warrior slave's neck to be licked and lightly nibbled on by Ch'grok, followed by a little bite with two sharp tusks on top of Urik's shoulder, leaving behind visible marks even after the punctures heal a few seconds later.";
					say "     The display of this orc taking possession of his new breeder arouses the watching crowd more than just a little bit and they crowd in around the couple, congratulating the proud winner and slapping his back in camaraderie. Ch'grok basks in the adoration of his tribes-mates for a moment, then grunts loudly, 'Let's try this bitch out then, eh boys?!' And with that, he bends Urik over so he can brace himself against the wooden platform, then whips out his own orcish manhood. Thick and meaty, it looks pretty monstrous as he slaps the erection between his slave's buttocks, then snatches up the lube bottle a nearby orc has tied to his loincloth with a leather string. A quick squeeze and stroke later, the green and slick erection is lined up with Urik's pucker, followed by a forceful thrust into the cum-drunk orc.";
					WaitLineBreak;
					say "     As more and more orcs close in to watch, fondle Urik and jerk off to the show, you're kinda left outside the circle of Ch'grok's best buddies and other friends. This means you can only listen to the hard fucking going on, with groans, grunts and moans filling the lair. Meanwhile, Boghrim has gone back to his favorite leather sofa and is now bouncing the human slut Jason up and down on his shaft, while several other orcs make use of the communal breeders gathered by the competition. In short, an everyday situation in the lair of these muscle-packed brutes.";
					say "     [bold type]The big slave hunt is over now. You didn't win, but that doesn't mean you can't enjoy the communal breeders here in the lair. They're always at your disposal if you want some fun...[roman type]";
				now hp of Orc Mob is 8;
			else if hp of Orc mob is 8:
				say "     Joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand, listening to boastful stories how this one [one of]fucked a minotaur[or]fucked a latex fox till it was ballooned up to a cream-filled sphere[or]made an incubus drink his cum[or]punched out a shaft beast with one hit[or]got sucked off by a weird anime fan-girl[or]humped an orca[at random] or that one [one of]brought down a behemoth[or]had a poodle lap his dick[or]pounded a wyvern into submission[or]used a rubber tigress as a fleshlight[at random]. To fit in, you make up a story about turning [one of]an alpha husky[or]a German Shepherd[or]a hyena[or]a centaur[at random] into your private bitch and get cheers as you finish the imaginary conquest. All in all, you have a pretty good time with the other orcs, then eventually leave them to get back to other matters. But even as you do, the story you invented is still at the forefront of your mind, with your inner orc pushing hard against your will to accept him and put those thoughts into reality.";
				decrease humanity of player by 10;
				decrease thirst of player by 20;
				infect "Orc Warrior";
				if thirst of player < 0:
					now thirst of player is 0;
		else: [refuse to participate]
			say "     Remembering the ease with which one can let their humanity slip and give in to the nanites that mess with people's heads, as well as their bodies, you hesitate to plunge right into orc 'culture'. The risk to actually become one of the brutes, not just look like one, is very real so maybe that was a wise choice.";
 
to say OrcHuntCentaurFight:
	now inasituation is true;
	challenge "Centaur Stallion";
	if fightoutcome >= 20 and fightoutcome <= 29:  [lost]
		say "     Rearing up on his back legs, the centaur kicks for you with his front hooves - and clips your head with one, sending you into the darkness of unconsciousness. You don't know how much time passed before you wake up, but you're face-first in the grass and dirt when you do and both the centaur as well as Raku are gone. There are traces, quite a few actually - trampled grass and patches mated down with what seems to be cum. Looks like your hunting partner got pumped full with everything the stallion's balls could give - and then some, judging from the puddle. Something tells you that you wouldn't really recognize your 'buddy' anymore if you met him again out here.";
		say "   Well - that was embarrassing. Doing the 'right' (?) thing and getting your ass kicked for it. Shows once more that even with the best of intentions, things in this crazy place don't always end well. With a shrug, you start making your way back to the orc lair. Most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. Some of them are big, some small, with little sign of what kind of creature they may have been before. Only when the boasting and storytelling starts about a cheerleader hulk, shaft beast and even a drake being fucked and transformed is it revealed what everyone went for...";
		say "     [bold type]This round is a bust, for you - at least in the eyes of the orcs, as they assume your goals were the same as theirs. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
	else if fightoutcome >= 30:  [fled]
		say "     You run away at your top speed, putting some distance between the aggressive centaur and yourself. Sadly, you had to leave Raku behind and there is little doubt that he's getting shafted by the centaur right now...";
		say "   Well - that was embarrassing. Doing the 'right' (?) thing and getting your ass kicked for it. Shows once more that even with the best of intentions, things in this crazy place don't always end well. With a shrug, you start making your way back to the orc lair. Most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. Some of them are big, some small, with little sign of what kind of creature they may have been before. Only when the boasting and storytelling starts about a cheerleader hulk, shaft beast and even a drake being fucked and transformed is it revealed what everyone went for...";
		say "     [bold type]This round is a bust, for you - at least in the eyes of the orcs, as they assume your goals were the same as theirs. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
	else if fightoutcome >= 10 and fightoutcome <= 19:  [won]
		say "     Beating off the centaur attack, you drive him to flee before you, though not without shouting some insults about coming to his plains and making trouble. Phew, that could have gone better. Shows once more that even with the best of intentions, things in this crazy place don't always end well. With a shrug, you lean down to pull your compatriot to his feet, then lay his arm around your shoulders and start to guide him towards the lair. Thankfully, orcs heal fast enough that he can more or less walk after a short while (dragging him became quite an ordeal) - but still is groggy enough not to complain too much about you ruining the trip.";
		say "     Eventually, you arrive at the lair and drop him off with some buddies, grumbling into his orc brew about your abysmal lasso skills. Most of the hunting party is long back, and a number of new breeders are being tried out by the horny brutes. Some of them are big, some small, with little sign of what kind of creature they may have been before. Only when the boasting and storytelling starts about a cheerleader hulk, shaft beast and even a drake being fucked and transformed is it revealed what everyone went for...";
		say "     [bold type]This round is a bust, for you - at least in the eyes of the orcs, as they assume your goals were the same as theirs. Still, you could always come back here another time and try another 'hunt'. Best talk to the orc crowd when you're ready.[roman type]";
						
instead of fucking the Orc Mob:
	if player is submissive:
		say "     No matter how much your submissive instincts push you towards just walk into the midst of all those orcs and call for them to fuck you, your self-control holds against it. The gangbang would likely be amazing and breathtaking - but it's not worth losing yourself to it. You'd be almost guaranteed to succumb to a fate of being an orc breeder slave...";
	else:
		say "     Walking up to drunken, horny orcs and asking if you can fuck them doesn't sound like a good strategy. Orcs warriors are built to fuck, not get taken by others, so you'd likely only earn some punches to the face...";

Orc Lair ends here.

