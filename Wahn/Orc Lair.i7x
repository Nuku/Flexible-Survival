Version 1 of Orc Lair by Wahn begins here.
[Version 1   - orc infections split off into new file]

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
BoghrimMet is a number that varies.

Orcish Slave Raid is a situation.
The sarea of Orcish Slave Raid is "Warehouse".
when play begins:
	add Orcish Slave Raid to badspots of guy;       [male orcs]

Instead of resolving a Orcish Slave Raid:
	if SlaveRaidEncounters is 0:   [first time]
		say "     Walking along a street between some warehouses, you suddenly hear claws scratching on asphalt and shouting voices from an alley just a few steps ahead. Just a few seconds later, a panicky looking anthro fox guy comes dashing into view, head turned to look over his shoulder - which means he isn't looking where he's going and collides with you at full speed, spilling the two of you onto the ground. Directly behind him, a trio of very muscular men come out of the alley - tall and green as they are, dressed only in loincloths, there's no doubt that they're orcs. [if OrcSlaverStatus is 3]And orcs you know at that - Mul, Yatur and Koghh, the orc slavers that you had a run-in with before. [otherwise]From the relatively similar looks, they might be brothers. [end if]One of them grabs the fallen would-be escapee by the neck and lifts him off the ground, then smiles around his sharp tusks and nods towards you. [if OrcSlaverStatus is 0]'Look, our little runner got us an extra treat' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [otherwise if OrcSlaverStatus is 2]'Look, it's the little bitch that escaped from the lair. What nice coincidence that our runner led us here' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [otherwise if OrcSlaverStatus is 3]'Look, it's our runaway breeder. Come on little bitch, we'll bring you back home and give you what you really need.' he chuckles, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [otherwise if OrcSlaverStatus is 50]'This time, you're going down. We'll make a breeder out of you yet.' he grunts, prompting his two friends to move towards you while he pulls a loop of rope from over his shoulder and fastens it around his captive. [end if]You barely have time to get up and take a combat stance before the other two orcs are upon you...";
		say "     [line break]";
		challenge "Orc Warrior";
		if fightoutcome is 22:
			say "[SubmitToOrcSlavers]";
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:      [lost]
			say "[LoseToOrcSlavers]";
		otherwise if fightoutcome >= 30:     [fled]
			say "[RunFromOrcSlavers]";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
			say "     After a last hit on the orc, his muscled form collapses at your feet. But there's not even a moment to catch your breath as the second brute snarls and attacks you right away.";
			say "     [line break]";
			challenge "Orc Warrior";
			if fightoutcome is 22:
				say "[SubmitToOrcSlavers]";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
				say "[LoseToOrcSlavers]";
			otherwise if fightoutcome >= 30:     [fled]
				say "[RunFromOrcSlavers]";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
				if bodyname of player is "Orc Warrior" and player is pure and cocks of player > 0:
					say "     Two down, one to go. Though as you step up to the third orc, he raises his hands consolingly. 'Wait a minute! Seems like we underestimated you and you're a real orc after all...' He pulls the bundled-up fox to his side, then says 'Look, how about you stop beating up my brothers and have some fun with this little bitch instead? Freshly caught - you'd be the first one to break him in.'";
					say "     [line break]";
					say "     Do you accept and fuck the helpless captive right then and there, then allow them to take him away afterwards?";
					if player consents:
						say "     Baring your tusks in a wide grin, you nod to the orc and step up to him, inspecting the anthro fox as he's unwrapped for you. He's a handsome guy with silky red fur and a lithe, shapely body - the sight of which makes your manhood fill out and get hard. Meanwhile, the two downed orcs get up, growling at you but nevertheless accepting the deal their brother made. They move a few steps up and down the street to lean against the walls there, making sure that there's no possibility of their quarry escaping again.";
						say "     With the last ropes falling off the red fox, you can see the muscles in his legs tense. He casually looks over his shoulder and down the street, searching for a way to escape, though with the other orcs standing ready to cut him off, there's no chance that he could make it. His shoulders slump a bit as he admits that to himself, then he looks at you, gulping as he sees the hard length of your orcish cock. You step up to him and run a hand over his soft-furred body, then grip his shoulder in a light, but secure hold and push him to his knees.";
						say "     [WaitLineBreak]";
						say "     Presented with your thick, green shaft, the fox at first gives it a hesitant lick, then starts to lap at it and your balls. Soon, a first bead of pre-cum forms at its tip, and as the slave licks that up, his eyes go wide at its pleasant taste. He immediately starts to concentrate on the tip of your cock, playing his tongue over it to get more. It doesn't take long till the intoxicating and addictive effects make him forget all about wanting to get away, instead starting to go down on you with actual eagerness, your manhood in his long muzzle as he gives you a blowjob.";
						say "     Even though your little fox is clearly new to giving pleasure to men with his mouth, his enthusiasm makes up for quite a bit of that, and the urge to cum soon starts to rise inside you. You're tempted to just let him get you off like this and feed him a big load of orc cum that will seal his fate as a breeder... but no, you've got the right to take his virginity, so that is what you will do. Pulling your eager little fox off your shaft, you bodily pick him up, holding him tight against your chest with both hands on his firm buttcheeks. The cum-drunk slave wraps his legs around your hips as you do so, yipping in excitement as your hard cock rubs against his ass.";
						say "     [WaitLineBreak]";
						say "     Bringing a hand up to the fox's mouth so he can suck on its fingers, you then use your wet index finger to gently poke and prod at his hole, carefully working it in to stretch his pucker. You finger him for quite a while to get him ready, gently at first, then faster and faster. Given how new he is to such sensations, it doesn't surprise you that the fox trembles in lust each time you rub his prostrate, going so far as to even suddenly cum from that, his pointed canine cock spraying cum all over your chest.";
						say "     Well, that's certainly an unmistakable sign that he's ready for some anal fun. Eager to finally take the fox, you scoop up his cum from your chest and smear it on your cock to use as lube, then line your manhood up with his hole. Your foxy slave pants loudly as you rub the tip of your cock over his rear entrance, then gives a little gasp and wince as you push in, stretching his opening wide around your cock. It's good that you took your time preparing him, as even now it's a slow process to sink your manhood deeper into his tightly gripping passage...";
						say "     [WaitLineBreak]";
						say "     Some time later, the last inch of your meaty cock finally sinks in all the way inside the fox and you can feel his furry butt against your balls. You give him what time he needs to get used to the invading member, just holding him tightly and reveling in the vice-like tightness of his asshole. Then, after a minute or two, your little fox moans 'Fuck me' and starts to rock against your chest, sliding himself up and down your shaft. The sensations of a submissive male fucking himself on your manhood finally causes your orcish nature to take over, effortlessly making you forget all restraint that you still had.";
						say "     With a deep, lusty grunt, you pull him up and off your cock, then pound its whole length back inside him with one mighty thrust. And you just keep going like that, fucking the fox hard and deep, creating slapping noises as his ass hits your hips. This is how real men fuck - or rather real orcs - and you can just feel how right it is to pull out all the stops. The sensations of your thrusts make your breeder fucktoy moan and howl in lust, conscious thought pushed aside completely by your shaft deep inside him. Having already enjoyed a very nice blowjob from the fox, it doesn't take all that much longer till you reach the limits of your endurance and orgasm, burying your shaft deep in the slave's ass as you pump blast after blast of cum into him. Being filled with your orcish seed, the potent load being absorbed by his body and changing it, you just know that you just knocked up this male fox.";
						say "     [WaitLineBreak]";
						say "     Your inner orc tells you that you should just keep the well-bred fox for yourself, as a start of a whole harem of men to fuck, though you realize that that's not an option as you contemplate it for a second. By now, the three other orcs are rested again, and you're also a bit tired from just having come, so a fight is far less certain. So with a sigh, you surrender the handsome fox back to the three slavers, then watch his limp, exhausted form being carried off over the leader's shoulder. His shapely ass and cum-dripping hole is the last you see of the fox before the orcs turn a corner and move out of sight.";
						move Val to Slave Cell 1;
						now ValPregCounter is 48;
						now thirst of Val is 2;
						now SlaveRaidEncounters is 2;
					otherwise:
						say "     Do you want to beat the third orc up too instead (Y), or maybe demand ownership of the slave and let him go after the other orcs are gone (N)?";
						if player consents:
							say "     Two down, one to go. The third orc stops tying up his captive and comes at you with balled fists.";
							say "     [line break]";
							challenge "Orc Warrior";
							if fightoutcome is 22:
								say "[SubmitToOrcSlavers]";
							otherwise if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
								say "[LoseToOrcSlavers]";
							otherwise if fightoutcome >= 30:     [fled]
								say "[RunFromOrcSlavers]";
							otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
								say "     Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Looking around, you see the guy who got you into this whole mess just wiggling out of the last coil of rope the orc put around him, then stare at you and the beaten orcs. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
								say "     [line break]";
								say "     Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them (Y), or do you just leave (N)?";
								if player consents:
									say "     [line break]";
									say "     [BeatenOrcSexMenu]";
								otherwise:
									say "     [line break]";
									say "     You walk away after checking them over for loot.";
							now SlaveRaidEncounters is 1;
						otherwise:
							say "     Baring your tusks, you growl at him, demanding ownership of the slave - after all they wouldn't have caught him without him running into you. The orc slaver doesn't like to hear that at all and you can see his fist clenching, so you poke your foot against the bruised side of one of the fallen orcs, making him wince. That reminder of you already having won out against his two siblings makes the orc finally relent with a snarl, and he shoves the tied slave in your direction, to stumble and sprawl at your feet. Quickly leaning down to grab him, you throw the fox over your shoulder and walk away, leaving the three orcs behind.";
							say "     After moving a comfortable number of city blocks away, you step into a side alley that's nicely out of view from any roaming creatures and set the bundled-up fox down. He looks wide-eyed at you, trembling at what might come next, only relaxing a tiny bit when you say that you want to free him. Undoing several knots, you loosen the ropes around him. The fox stands still as you continue to unwrap him - then suddenly he wiggles out of the last coils and jumps out of your reach. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
							say "     [line break]";
							say "     Oh well, that was a bit anticlimactic. But then, good deeds are their own reward and at least he thanked you. With a shrug, you get back to worrying about your own survival in the city.";
							now SlaveRaidEncounters is 1;
				otherwise:
					say "     Two down, one to go. The third orc stops tying up his captive and comes at you with balled fists.";
					say "     [line break]";
					challenge "Orc Warrior";
					if fightoutcome is 22:
						say "[SubmitToOrcSlavers]";
					otherwise if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
						say "[LoseToOrcSlavers]";
					otherwise if fightoutcome >= 30:     [fled]
						say "[RunFromOrcSlavers]";
					otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
						say "     Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Looking around, you see the guy who got you into this whole mess just wiggling out of the last coil of rope the orc put around him, then stare at you and the beaten orcs. 'Err - thanks' he says and immediately after runs off as fast as his feet will carry him, not trusting you - or pretty much anyone in this lawless city - enough to stand around and chat.";
						say "     [line break]";
						say "     Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them (Y), or do you just leave (N)?";
						if player consents:
							say "     [line break]";
							say "     [BeatenOrcSexMenu]";
						otherwise:
							say "     [line break]";
							say "     You walk away after checking them over for loot.";
						now SlaveRaidEncounters is 1;
	otherwise:   [repeat encounters without the fox]
		say "     Walking along a street between some warehouses, you suddenly hear deep voices talking to each other somewhere nearby. You overhear 'Where are all those little weaklings? I wanna fuck!', followed by another voice answering 'Don't shout, brother. You'll drive em off. I'm sure we'll find someone soon.' And with that, a trio of very muscular men step out of an alley just ahead of you - tall and green as they are, dressed only in loincloths, there's no doubt that they're orcs. [if OrcSlaverStatus is 3]And orcs you know at that - Mul, Yatur and Koghh, the orc slavers that you had a run-in with before. [otherwise]From the relatively similar looks, they might be brothers. [end if]One of them gives you an appraising look, then smiles around his sharp tusks. [if OrcSlaverStatus is 0]'See, told ya!' he chuckles, prompting his siblings to rush at you. [otherwise if OrcSlaverStatus is 2]'Look, it's the little bitch that escaped from the lair. What nice coincidence' he chuckles, prompting his siblings to rush at you. [otherwise if OrcSlaverStatus is 3]'Look, it's our runaway breeder. Come on little bitch, we'll bring you back home and give you what you really need.' he chuckles, prompting his siblings to rush at you. [otherwise if OrcSlaverStatus is 50]'Oh, that bastard again. This time, you're going down. We'll make a breeder out of you yet.' he grunts, prompting his siblings to rush at you. [end if]They're quick for so big and muscular brutes, barely giving you time to taking on a combat stance before they're upon you...";
		say "     [line break]";
		challenge "Orc Warrior";
		if fightoutcome is 22:
			say "[SubmitToOrcSlavers]";
		otherwise if fightoutcome >= 20 and fightoutcome <= 29:      [lost]
			say "[LoseToOrcSlavers]";
		otherwise if fightoutcome >= 30:     [fled]
			say "[RunFromOrcSlavers]";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
			say "     After a last hit on the orc, his muscled form collapses at your feet. But there's not even a moment to catch your breath as the second brute snarls and attacks you right away.";
			say "     [line break]";
			challenge "Orc Warrior";
			if fightoutcome is 22:
				say "[SubmitToOrcSlavers]";
			otherwise if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
				say "[LoseToOrcSlavers]";
			otherwise if fightoutcome >= 30:     [fled]
				say "[RunFromOrcSlavers]";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
				say "     Two down, one to go. The third orc stops rushes in to help his brothers and comes at you with balled fists.";
				say "     [line break]";
				challenge "Orc Warrior";
				if fightoutcome is 22:
					say "[SubmitToOrcSlavers]";
				otherwise if fightoutcome >= 20 and fightoutcome <= 29:     [lost]
					say "[LoseToOrcSlavers]";
				otherwise if fightoutcome >= 30:     [fled]
					say "[RunFromOrcSlavers]";
				otherwise if fightoutcome >= 10 and fightoutcome <= 19:     [won]
					say "     Phew, the last orc collapses on top of the other two with the meaty thump of flesh on flesh. Now that you're all alone with the vanquished orcs, would you like to... have some fun with one of them (Y), or do you just leave (N)?";
					if player consents:
						say "     [line break]";
						say "     [BeatenOrcSexMenu]";
					otherwise:
						say "     [line break]";
						say "     You walk away after checking them over for loot.";

to say RunFromOrcSlavers:
	say "     Sometimes escape is the best - or only - option. Running as fast as you can, you flee and manage to make em lose sight of you after a short while. As you stand around a corner and pant heavily to catch your breath, you can hear them talk in their gruff voices. 'Bah - forget it, we lost [if cocks of player is 0 and cunts of player > 0]her[otherwise]him[end if].' 'Fine, let's get back to the other one then - though he'll be pretty sore and stretched out by the time we're done taking turns!' Their voices get quieter as they they move away from you, making the last thing you hear 'Who cares? That's what breeders are for! He'll get used to it...'";
	move Val to Slave Cell 1;
	now ValPregCounter is 48;
	now thirst of Val is 1;

to say SubmitToOrcSlavers:
	if SlaveRaidEncounters is 0:   [first time]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:
				say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
				say "     [line break]";
				say "     Note: Since you've selected [']Dominant['], you won't be dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.";
				move Val to Slave Cell 1;
				now ValPregCounter is 48;
				now thirst of Val is 1;
				now SlaveRaidEncounters is 2;
			otherwise:
				say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' [otherwise if OrcSlaverStatus is 3]'Hm, did we already fuck all the will out of this one? Maybe it was too meek in the first place after all.' [otherwise]'Hm, this one looks a bit meek and weak. Doesn't even struggle to get away.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Bah, you worry too much, Yatur - orc seed is strong! [if cocks of player is 0 and cunts of player > 0]She'll[otherwise]He'll[end if] make a good enough breeder.' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
				say "     At one point of the trip, you're put down for a while as the orcs stop to have some fun with their other slave, taking turns in fucking the poor guy. You do your best to wiggle out of the ropes while they're distracted, but don't have any success before the slavers fill the fox with their seed and continue on. Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back for you.'";
				say "     [line break]";
				say "     With that, the orcs walk out of your cell, throwing the door closed as they walk off. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape. ";
				say "     [line break]";
				if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
					now OrcSlaverStatus is 1;
				now battleground is "void";	[blocks a random fight after this]
				move player to Slave Cell 2;
				now OrcSlaverCaptureTime is turns;
				move Val to Slave Cell 1;
				now ValPregCounter is 48;
				now thirst of Val is 1;
				now SlaveRaidEncounters is 2;
		otherwise:
			say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' His buddy steps up and gives your ass a rough squeeze. 'Maybe you're right, Yatur - let's leave this wretched thing and just enjoy the other one.' With that, they unceremoniously push you to the ground and leave, carrying their captive with them.";
			say "     [line break]";
			say "     Note: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex.";
			move Val to Slave Cell 1;
			now ValPregCounter is 48;
			now thirst of Val is 1;
			now SlaveRaidEncounters is 2;
	otherwise:   [repeats]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:
				say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and hunt down another one,' and they unceremoniously turn around and leave.";
				say "     [line break]";
				say "     Note: Since you've selected [']Dominant['], you won't be dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.";
			otherwise:
				say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' [otherwise if OrcSlaverStatus is 3]'Hm, did we already fuck all the will out of this one? Maybe it was too meek in the first place after all.' [otherwise]'Hm, this one looks a bit meek and weak. Doesn't even struggle to get away.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Bah, you worry too much, Yatur - orc seed is strong! [if cocks of player is 0 and cunts of player > 0]She'll[otherwise]He'll[end if] make a good enough breeder.' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, who gives you lusty looks that promise a hard fucking coming in your future, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
				say "     Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back for you.'";
				say "     [line break]";
				say "     With that, the orcs walk out of your cell, throwing the door closed as they walk off. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape. ";
				say "     [line break]";
				if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
					now OrcSlaverStatus is 1;
				now battleground is "void";	[blocks a random fight after this]
				move player to Slave Cell 2;
				now OrcSlaverCaptureTime is turns;
		otherwise:
			say "     As you surrender, one of the orcs looks down on you disparagingly and pokes at you with a large finger. [if OrcSlaverStatus is 2]'Hm, can't do anything but submit and run away when no one is looking. Seems a bit too weak and meek...' His buddy steps up and gives your ass a rough squeeze. 'Maybe you're right, Yatur - let's leave this wretched thing and hunt down a better slave.' With that, they unceremoniously push you to the ground and leave.";
			say "     [line break]";
			say "     Note: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex.";

to say LoseToOrcSlavers:
	if SlaveRaidEncounters is 0:   [first time]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:
				say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
				say "     [line break]";
				say "     Note: Since you've selected [']Dominant['], you won't be dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.";
				move Val to Slave Cell 1;
				now ValPregCounter is 48;
				now thirst of Val is 1;
				now SlaveRaidEncounters is 2;
			otherwise:
				say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. [if OrcSlaverStatus is 3]Even after being broken in, you're still struggling - you'll bear strong sons.' [otherwise]Try to keep some of it when you become a breeder.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Nice - I bet there'll be fights who gets to fuck that after we've had our fun with you!' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, carrying their other captive, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
				say "     At one point of the trip, you're put down for a while as the orcs stop to have some fun with their other slave, taking turns in fucking the poor guy. You do your best to wiggle out of the ropes while they're distracted, but don't have any success before the slavers fill the fox with their seed and continue on. Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back.'";
				say "     [line break]";
				say "     With that, the orcs walk out of your cell, throwing the door closed as they move down the hallway. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape.";
				say "     [line break]";
				if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
					now OrcSlaverStatus is 1;
				now battleground is "void";	[blocks a random fight after this]
				move player to Slave Cell 2;
				now OrcSlaverCaptureTime is turns;
				move Val to Slave Cell 1;
				now ValPregCounter is 48;
				now thirst of Val is 1;
				now SlaveRaidEncounters is 2;
		otherwise:
			say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and just enjoy the other one' and they unceremoniously turn around and leave, carrying their captive with them.";
			say "     [line break]";
			say "     Note: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex.";
			move Val to Slave Cell 1;
			now ValPregCounter is 48;
			now thirst of Val is 1;
			now SlaveRaidEncounters is 2;
	otherwise:  [repeats]
		if anallevel > 1:
			if "Dominant" is listed in feats of player:
				say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and hunt down another one,' and they unceremoniously turn around and leave.";
				say "     [line break]";
				say "     Note: Since you've selected [']Dominant['], you won't be dragged off to the orc lair, as it's hard to avoid being used as a fucktoy there. This is to avoid the need for a 'player kicks and screams, struggling against everything' variant in all scenes.";
			otherwise:
				say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. [if OrcSlaverStatus is 3]Even after being broken in, you're still struggling - you'll bear strong sons.' [otherwise]Try to keep some of it when you become a breeder.' [end if]His buddy steps up and gives your ass a rough squeeze. 'Nice - I bet there'll be fights who gets to fuck that after we've had our fun with you!' With that said, they tie you up and carry you off, lugged over an orc's shoulder. In your position, you see mostly the ground and the orc behind, who gives you lusty looks that promise a hard fucking coming in your future, but you think that you recognize the capitol district as their goal from what you manage to catch glimpses of around you.";
				say "     Some time later, you're carried into a building, down a dark corridor and are put into a cell. The leather bench you're laid upon doesn't look like it was part of it originally and sports more than a few cum-stains. One of the orcs starts rubbing his quickly hardening cock under his loincloth, then reaches out to undo the knot holding your bindings. But just as he does so, one of the other orc's stomachs gives a loud growl, followed by that orc saying 'I'm hungry. Come on, Mul - let's go eat some chow' The orc standing above you gives a nod, then pulls his loincloth aside, demonstratively showing you his half-hard and already pretty thick pole. 'Guess you'll get to feel my shaft later then, little piggy. But don't worry, I'll be back.'";
				say "     [line break]";
				say "     With that, the orcs walk out of your cell, throwing the door closed as they move down the hallway. A short while later, you manage to wiggle out of your already somewhat loosened bindings, leaving you free to act and possibly escape.";
				say "     [line break]";
				if OrcSlaverStatus is 0 or OrcSlaverStatus is 50:
					now OrcSlaverStatus is 1;
				now battleground is "void";	[blocks a random fight after this]
				move player to Slave Cell 2;
				now OrcSlaverCaptureTime is turns;
		otherwise:
			say "     As you collapse in exhaustion, one of the orcs looks down on you and grins, lust in his eyes. 'You got spunk, [if cocks of player is 0 and cunts of player > 0]girl[otherwise]boy[end if] - I like it. Try to keep some of it when you become a breeder.' His buddy steps up and gives your ass a rough squeeze, then says 'Hold your horses, Yatur - this one has that crazy gleam in [if cocks of player is 0 and cunts of player > 0]her[otherwise]his[end if] eyes... might be a biter. Remember the maniac squirrel bitch?' At that comment, the first orc crosses his legs with a pained expression, then gives an annoyed grunt and pushes you away from him. He says 'Let's leave this wretched thing and hunt down another one,' and they unceremoniously turn around and leave.";
			say "     [line break]";
			say "     Note: Since you've selected [']less anal['], you won't be dragged off to the orc lair, as the main way of orc reproduction is anal sex.";

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
		otherwise:
			move player to Main Hall;
			say "     Confidently stomping forward like any other orc would, you walk into the room. A few of the green brutes look up for a moment, then get back to whatever they were doing. Looks like it worked, you're in and no one suspects that you're not a regular orc.";
	otherwise:
		say "     Just strolling into a large room full of drunken and horny orcs isn't a good idea if you're not an orc warrior yourself. You don't think you could make it through the gangbang that would follow if you with stumbled in there and everyone converged on the fresh piece of ass to try out - at least not sane and without succumbing to an infection halfway through.";

instead of going West from Dark Hallway 2 while bodyname of player is "Orc Warrior" and player is pure and BoghrimMet is 0:
	say "[BoghrimSlaveDeal]";

instead of going North from Breeder Lockup A while bodyname of player is "Orc Warrior" and player is pure and BoghrimMet is 0:
	say "[BoghrimSlaveDeal]";
	
instead of going East from Dark Hallway 1 while a random chance of 1 in 3 succeeds and lastfuck of Mul - turns > 7:
	now inasituation is true;
	now OrcSpecialFightNumber is 1;   [meeting Mul]
	challenge "Orc Warrior";

instead of going East from Dark Hallway 2 while a random chance of 1 in 3 succeeds and lastfuck of Mul - turns > 7:
	now inasituation is true;
	now OrcSpecialFightNumber is 1;   [meeting Mul]
	challenge "Orc Warrior";

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
	otherwise if player is in Sports Arena Lockerroom:
		say "     A quick check of the row of lockers reveals that they've already have had a careful going-over. Seems like Eric took everything of value before you came along." instead;
	otherwise if PLRLooted is 1:
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
	otherwise if diceroll > 10:
		say "     Proving your strength, you lift the locker slowly, slowly - then change your grip to grab under it and start pushing against the front side to get it back up. Sweat is running down your brow soon and you start to feel the strain making your muscles tremble... until you just can't hold out any more. Only a quick jump aside lets you escape the fate of being crushed under the falling piece of furniture, which lands on its face yet again with a loud bang.";
	otherwise:
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
			say "     Hearing some especially loud laughing and grunting from the large room in the west, your curiosity is aroused. Silently walking along the wall in this shadowy corridor, you peek around the corner and have a look. Having pushed all the desks, sofas and mattresses in what previously was the main working area of this police station to the side, they've set up... an inflatable wading pool? About twenty to thirty naked orcs stand all around it, jerking off, and have already filled it with quite a bit of greenish-white orc cum. Then another orc comes out of a side room with a large metal barrel under his arm. You can't stop yourself from watching as he wrenches open its lid an then pours a slippery white humanoid into form the pool.";
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
The description of Slave Cell 1 is "     This large cell holds a bed in the back, as well as a backless leather bench that's clearly meant to have sex on. It's seen quite a bit of use, judging from the cum-stains all over it and on the floor around. Shreds of fabric and quite a few ripped pieces of clothing lie strewn about on the floor. The only exit from this cell is a door in the east. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise if CellDoorStatus is 1 or CellDoorStatus is 3]Good that the lock is busted, otherwise you'd be stuck in here.[otherwise]You're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]".

Cell Door 2 is a door.
Cell Door 2 is east of Breeder Lockup A.
Cell Door 2 is lockable and locked.
The description of Cell Door 2 is "     A metal cell door, consisting of a sturdy frame and several cell bars, plus three crossbars. Its lock has a mechanism that locks itself when the door swings shut, as well as a spring at the top preventing it from standing open without someone holding on to it. [if CellDoorStatus is 2 or CellDoorStatus is 3]Though looking closer, you realize the lock has been busted and won't engage at all now - which makes this a pretty easy to escape cell[end if]".
Cell Key unlocks Cell Door 2.

Slave Cell 2 is a room. 
Slave Cell 2 is east of Cell Door 2.
Slave Cell 2 is sleepsafe.
The description of Slave Cell 2 is "     This large cell holds a bed in the back, as well as a backless leather bench that's clearly meant to have sex on. It's seen quite a bit of use, judging from the cum-stains all over it and on the floor around. Shreds of fabric and quite a few ripped pieces of clothing lie strewn about on the floor. The only exit from this cell is a door in the west. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise if CellDoorStatus is 2 or CellDoorStatus is 3]Good that the lock is busted, otherwise you'd be stuck in here.[otherwise]You're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]".

after going west from Breeder Lockup A:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 2:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a disconcerting click as it locks. [if Cell Key is owned]Good that you have a key, otherwise you might get stuck in here. [otherwise]Now you're stuck in here - unless you find a way to [bold type]escape the cell[roman type].[end if]";
		now the Cell Door 1 is closed;
		now the Cell Door 1 is locked;
	otherwise:
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
	otherwise:
		say "     As you enter the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't engage.";
		now the Cell Door 2 is closed;

after going east from Slave Cell 1:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 2:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a click as it locks.";
		now the Cell Door 1 is closed;
		now the Cell Door 1 is locked;
	otherwise:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't snap locked.";
		now the Cell Door 1 is closed;

after going west from Slave Cell 2:
	try looking;
	if CellDoorStatus is 0 or CellDoorStatus is 1:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. The lock gives a click as it locks.";
		now the Cell Door 2 is closed;
		now the Cell Door 2 is locked;
	otherwise:
		say "     As you leave the cell, the door automatically falls shut again when you let go of it, pushed by a spring at the top. Thankfully, the lock is broken, so it doesn't snap locked.";
		now the Cell Door 2 is closed;

Cell Key is a grab object.
It is not temporary.

instead of using Cell Key:
	if player is not in Slave Cell 1 and player is not in Slave Cell 2 and player is not in Breeder Lockup A:
		say "     A bit hard to use a key without being anywhere near the lock.";
	otherwise if player is in Breeder Lockup A:
		if CellDoorStatus is 0:  [standing between two intact doors]
			say "     You unlock both cells, leaving them open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 3:  [standing between two broken doors]
			say "     Both door locks are broken, you don't really need the key anymore.";
		otherwise if CellDoorStatus is 1:  [standing between a broken and unbroken door]
			say "     You unlock the one intact doorlock.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
	otherwise if player is in Slave Cell 1:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     The lock clicks, and the door opens a little.";
			now the Cell Door 1 is unlocked;
		otherwise if CellDoorStatus is 1 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";
	otherwise if player is in Slave Cell 2:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     The lock clicks, and the door opens a little.";
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 2 or CellDoorStatus is 3:
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
	if player is not in Slave Cell 1 and player is not in Slave Cell 2 and player is not in Breeder Lockup A, 	say "     Which cell do you want to unlock?" instead;
	if carried of Cell Key is 0, say "     You do not have a key that fits." instead;
	if Cell Door 2 is unlocked and player is in Slave Cell 2, say "     It's already unlocked." instead;
	if Cell Door 1 is unlocked and player is in Slave Cell 1, say "     It's already unlocked." instead;
	
carry out CellUnlocking:
	if player is in Breeder Lockup A:
		if CellDoorStatus is 0:  [standing between two intact doors]
			say "     You unlock both cells, leaving them open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 3:  [standing between two broken doors]
			say "     Both door locks are broken, you don't really need the key anymore.";
		otherwise if CellDoorStatus is 1:  [standing between a broken and unbroken door]
			say "     You unlock the one intact doorlock.";
			now the Cell Door 1 is unlocked;
			now the Cell Door 2 is unlocked;
	otherwise if player is in Slave Cell 1:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     You unlock the cell, leaving the door open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 1 is unlocked;
		otherwise if CellDoorStatus is 1 or CellDoorStatus is 3:
			say "     The lock's busted, you can't unlock it anymore.";
	otherwise if player is in Slave Cell 2:
		if CellDoorStatus is 0 or CellDoorStatus is 2:
			say "     You unlock the cell, leaving the door open a crack so the lock doesn't just snap shut again.";
			now the Cell Door 2 is unlocked;
		otherwise if CellDoorStatus is 2 or CellDoorStatus is 3:
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
		otherwise if (nam is "Nothing"):
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
	otherwise:
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
	otherwise:
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
		otherwise if player is in Slave Cell 2:
			now Cell Door 2 is unlocked;
			if CellDoorStatus is 0 or CellDoorStatus is 1:
				increase CellDoorStatus by 2;
		move player to Breeder Lockup A;
		now OrcSlaverStatus is 2;
	otherwise:
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
	otherwise if player is in Slave Cell 2:
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
		challenge "Orc Warrior";
	otherwise if bodyname of player is "Orc Warrior" and player is pure and (player is in Dark Hallway 1 or player is in Dark Hallway 2) and a random chance of 1 in 4 succeeds:
		say "[BoghrimSlaveDeal]";
	otherwise if (player is in Dark Hallway 1 or player is in Dark Hallway 2) and a random chance of 1 in 4 succeeds:
		now inasituation is true;
		now OrcSpecialFightNumber is 1;   [meeting Mul]
		challenge "Orc Warrior";
	if Mul is in Slave Cell 2 or Mul is in Slave Cell 1:
		if (player is in Slave Cell 2 and Mul is in Slave Cell 2) or (player is in Slave Cell 1 and Mul is in Slave Cell 1):
			say "     Mul's brothers return some time later, opening up the cell and waking him to accompany them on another raid. Rubbing sand from his eyes, the big orc grabs his loincloth, binds it around himself and leaves with them.";
		move Mul to Main Hall;
	if player is in observation room and a random chance of 1 in 4 succeeds:
		let randomnumber be a random number from 1 to 3;
		if randomnumber is:
			-- 1:
				say "     [OrcBrotherlyLove1]";
			-- 2:
				say "     [ZebraBreederTransformation]";
			-- 3:
				say "     [ObservationRoomFuck]";
	
to say OrcGangbang1:
	if OrcSlaverStatus is 1:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Though just so you know who owns you, I'm Mul and these are my brothers Yatur and Koghh. We'll break you in good, little piggy.' ";
	otherwise:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Me and my brothers will fuck you good.' ";
	say "With that, they step up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're naked in between them. Their large orc hands grope you all over, roughly squeezing your ass and feeling you up. Seems like they like what they see, as all three of them quickly show bulges under their loincloths that soon harden to thick and erect orc cocks, pushing aside the ragged fabric as they do so.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'This is an eager little slut, brothers. Wait till you feel that mouth around your cocks!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're told to lie down on your stomach, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Eager to get more of the tasty orc precum and cum in your moth, you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your stomach, with your head hanging over the end. You quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Well, at least getting more of their tasty precum and cum should help a bit with the rough fucking you expect to get now, so you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out and make room for his brother Koghh - though him sinking another thick orc prick into your slick, cum filled hole brings you back to reality in a second, gasping at the sudden penetration. The third orc slaver, Mul, takes the opportunity to push his erection into your open mouth, taking hold of your head with both of his large hands to fuck your face.";
	say "     [WaitLineBreak]";
	say "     The two orcs enthusiastically spit-roast you, with Mul working you up to deep-throat his big orc prick and Koghh relishing in the feelings of having his brother's cum squish around his thrusting shaft as he fucks you. The effects of all the orc cum you already have in you, as well as Mul's tendency not to give you quite enough time to breathe and combined with the sensations of getting shafted hard and deep leaves your mind in a bit of a haze, and you kinda lose track of time after that. An unknown while of many lust-filled moments later, Mul reaches his own climax and rams his cock all the way down your throat, pulsing as it blasts this thick orc cum directly into your stomach. This new infusion of oh so tasty and stimulating orc cum pushes you over the edge right with him, making you [if cocks of player > 0]cream the bench under you with even more cum.[otherwise if cunts of player > 0]squirting even more femcum over the bench under your crotch.[otherwise]tremble and shake an orgasm wracks your body.[end if]";
	say "     Having your hole tremble and twitch around his orcish member while you come soon gives Koghh the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, adding his own spunk to his brother's cum already squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and pool on the leather bench.[mimpregchance]";
	say "     [WaitLineBreak]";
	say "     Pulling out of you in satisfaction, the orcs grin at each other and down at your cum-dripping form. 'I like this one. Let's keep [if cunts of player > 0]her [otherwise]him [end if]just for us to breed' Yatur tells his brothers, immediately getting affirmative grunts from the other two. Chuckling and telling each other what they'll do do you next time, they then exit the cell, leaving you just lying on the bench, naked and exhausted.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
		say "     [line break]";
		say "     You feel something change deep inside you, as all the cum the three orcs filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The ['][bold type]MPreg[roman type]['] feat has been added to your list.";
		add "MPreg" to feats of player;
	decrease humanity of player by 10;
	
to say OrcGangbang2:
	if OrcSlaverStatus is 1:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Though just so you know who owns you, I'm Mul and these are my brothers Yatur and Koghh. We'll break you in good, little piggy.' ";
	otherwise:
		say "     Giving you a hungry look, the biggest of the three orcs says 'Time to have some fun. Me and my brothers will fuck you good.' ";
	say "With that, they step up to you, clearly pleased to have you waiting for them in your fully naked state. Their large orc hands grope you all over, roughly squeezing your ass and feeling you up. Seems like they like what they see, as all three of them quickly show bulges under their loincloths that soon harden to thick and erect orc cocks, pushing aside the ragged fabric as they do so.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'This is an eager little slut, brothers. Wait till you feel that mouth around your cocks!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, he then tells you lie down on your stomach and you quickly do so, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Eager to get more of the tasty orc precum and cum in your moth, you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready. Your orc master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     While the orc brothers jerk themselves to full hardness, Yatur puts a hand on your shoulder and pushes down, making you kneel. Then he softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then make yourself swallow your pride and start lapping away at his nuts in earnest. Meanwhile, his brothers continue jerking off, often rubbing their hot members against your naked body.";
		say "     [WaitLineBreak]";
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Really hoping that this'll be worth it in the end, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'Gonna let the others try your mouth out now - and take your ass. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, he then tells you to lie down on your stomach and you quickly do so, with your head hanging over the end. In that position, you quickly find the green cocks of Mul and Koghh presented to you, the two of them kneeling next to each other right before you. Well, at least getting more of their tasty precum and cum should help a bit with the rough fucking you expect to get now, so you reach forward to grab both their erections, jerking on them and alternating in licking and suckling on the cockheads.";
		say "     [WaitLineBreak]";
		say "     While you're busy with the other two orcs, Yatur moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready. The orc slaver whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out and make room for his brother Koghh - though him sinking another thick orc prick into your slick, cum filled hole brings you back to reality in a second, gasping at the sudden penetration. The third orc slaver, Mul, takes the opportunity to push his erection into your open mouth, taking hold of your head with both of his large hands to fuck your face.";
	say "     [WaitLineBreak]";
	say "     The two orcs enthusiastically spit-roast you, with Mul working you up to deep-throat his big orc prick and Koghh relishing in the feelings of having his brother's cum squish around his thrusting shaft as he fucks you. The effects of all the orc cum you already have in you, as well as Mul's tendency not to give you quite enough time to breathe and combined with the sensations of getting shafted hard and deep leaves your mind in a bit of a haze, and you kinda lose track of time after that. An unknown while of many lust-filled moments later, Mul reaches his own climax and rams his cock all the way down your throat, pulsing as it blasts this thick orc cum directly into your stomach. This new infusion of oh so tasty and stimulating orc cum pushes you over the edge right with him, making you [if cocks of player > 0]cream the bench under you with even more cum.[otherwise if cunts of player > 0]squirting even more femcum over the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body.[end if]";
	say "     Having your hole tremble and twitch around his orcish member while you come soon gives Koghh the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, adding his own spunk to his brother's cum already squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and pool on the leather bench.[mimpregchance]";
	say "     [WaitLineBreak]";
	say "     Pulling out of you in satisfaction, the orcs grin at each other and down at your cum-dripping form. 'I like this one. Let's keep [if cunts of player > 0]her [otherwise]him [end if]just for us to breed' Yatur tells his brothers, immediately getting affirmative grunts from the other two. Chuckling and telling each other what they'll do do you next time, they then turn to leave - something you can't let happen if you want to get out of here. Standing up on trembling legs, you call out 'Wait!' much to the surprise of the three big brutes who turn and look at you. As you step up to Mul and reach under his loincloth to caress his weighty balls, the orcs laugh and Koghh says 'Seems our horny little slut doesn't want to let you go without feeling your shaft inside, brother.' 'Yeah, a typical breeder' Yatur adds, then says 'Have fun - [if cunts of player > 0]she[otherwise]he[end if] really has quite a nice ass.' With that, Koghh and Yatur step out of the cell, leaving just you and Mul.";
	say "     'Come here, my eager little piggy' Mul grunts and pulls off his loincloth, letting it fall down to the ground. You casually notice the sound of a key clinking against the ground as it drops, not letting that realization show on your face, then step up to the muscled orc. Mul eagerly picks you up and holds you tight against his chest, then rubs the tip of his hard shaft against your ass. Good for you that you're still literally dripping with slippery orc cum down there, as he just pushes you down on top of it, impaling your ass on his thick prick. He uses you like an oversized fleshlight for a while pumping you up and down on his erection, though after a while it starts to show that he already came not too long ago and is somewhat worn out from that. Stepping over to the fuckbench, he lies down on it lengthwise on his back, with you on top of him.";
	say "     [WaitLineBreak]";
	say "     Taking the initiative, not wanting to let him catch his breath and rest too much, you start rocking back and forth, sliding the ring of your pucker up and down his green shaft, causing Mul to moan and pant in pleasure. Arousing him enough to forget his exhaustion, you animate the orc to grip your hips and buck up against you, driving his thick shaft deep into you with the unrestrained intensity of a real orcish warrior. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Mul fucks you for quite a while, then eventually starts grunting louder and louder as he gets close - and erupts with a massive load deep in your ass.[mimpregchance]";
	say "     The fresh batch of orc cum pumping into you gives you another mind-twisting high that has you just moaning and shivering on top of the brutish orc, orgasming right along with him and [if cocks of player > 0]spraying your own cum all over his chest. [otherwise if cunts of player > 0]leaking femcum to soak into his pubic hair. [otherwise]trembling as pleasant feelings flood your whole body. [end if]Panting, you sink down on his chest, resting your head against its broad muscled form. You even doze off for a little while, just as he does - but other than the orc, who sinks deeper and deeper into sleep, you pinch yourself awake again. Lying on Mul's chest, you wait a while until his satisfied snores are deep and regular, then slowly and carefully slip out from under the muscled arm holding you to his chest. Sweaty and cum-dripping as you are, you silently un-knot the cell key from its string on his loincloth, then go grab your gear and clothes and slip out of the cell.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if bodyname of player is "Orc Breeder" and player is pure and "MPreg" is not listed in feats of player:
		say "     [line break]";
		say "     You feel something change deep inside you, as all the cum the three orcs filled you with completes your transformation to a real orc breeder. You'll now be able to be impregnated through anal sex. The ['][bold type]MPreg[roman type]['] feat has been added to your list.";
		add "MPreg" to feats of player;
	decrease humanity of player by 10;
	
to say KoghhFuck1:
	say "     'My brothers Mul and Yatur are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' In one quick move, he pulls off his loincloth and throws it aside, revealing an already half hard thick and veiny cock. 'Let's see if you're ready to take the mighty shaft of Koghh!' he growls, jerking himself and then slapping his erect manhood into the palm of his other hand with a meaty thud. After a moment more of posturing and trying to intimidate you with the size of his cock, Koghh steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked. His large orc hands grope you all over, roughly squeezing your ass and feeling you up.";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Seems like he likes what he sees, as his cock twitches a bit and a glistening drop of precum appears at its tip. Holding his shaft out to you, the muscular orc chuckles as you immediately kneel down and eagerly slide your lips over the tip of his erect cock. Fulfilling the demands of your horny and strong master has you getting quite aroused, only helped along by the delicious and stimulating taste of his precum. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Get on the fuckbench, slut!' he growls in a domineering tone that has you shivering with lust inside.";
		say "     [WaitLineBreak]";
		say "     Quickly getting up and almost stumbling as you rush over to it, you're told to lie down on your back, with your head right at the end. The tall orc then moves to stand directly over you, his muscular legs left and right of your chest as his balls dangle in your face. Without having to be asked, you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master. Putting your hands on his thighs and stroking their firm, yet soft length, you settle into a good rhythm of licking and stroking, doing your very best for him.";
		say "     Looking up past his balls and erect cock, you see Koghh moan and put a hand to his muscled chest, rubbing one of his nipples with a thick finger. While doing so, he gives the room outside the cell a wary glance, then stops and listens, seemingly relieved that no other orc is near. You can feel his leg muscles tense and later relax as he makes a decision. Turning his attention to you, the orc slaver then says in a silent growl 'I'll break your legs if you tell anyone about this' and grips you under the arms, pulling you a bit up on the bench so your head dangles over the edge. With a last look towards the closed door of the room outside, he then steps forward and bends his knees a little, bringing his butt right against your face and pulling its firm cheeks apart.";
		say "     [WaitLineBreak]";
		say "     Seems like your orcish master likes getting his ass eaten out, something that clearly isn't the norm about warrior orcs, and which you're of course willing to do as his obedient slave. Pressing your nose against the somewhat hairy skin between his legs, you take a deep sniff of his clean, masculine smell and start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
		say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' Happy and willing to serve, as always, you immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and even the ground outside.";
		say "     [WaitLineBreak]";
		say "     After waiting a moment to catch his breath, Koghh quickly pulls away from you and walks to the other end of the bench. He takes hold of your legs, raising and spreading them, then grasps his still pretty hard cock and rubs it against your ass, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Dropping your legs after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc quickly snatches up his loincloth and ties it around his hips, then leaves the cell and throws its door shut behind himself.";
	otherwise:   [normal players]
		say "     Holding his shaft out to you, Koghh grunts in impatience as you don't react at once, then puts a hand on your shoulder and pushes down, making you kneel. The grunted command of 'Get to work, slave' and him gripping your hair finally results in you reluctantly opening your mouth and sliding your lips over the tip of his erect cock. Suckling on the orc's cock gives you a surprisingly delicious and stimulating taste of his precum, and despite yourself you can't help but get aroused. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Get on the fuckbench, slut!' he growls in a domineering tone.";
		say "     [WaitLineBreak]";
		say "     Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your back, with your head right at the end of the bench. The tall orc then moves to stand directly over you, his muscular legs left and right of your chest as his balls dangle in your face. Hesitantly giving his hairy globes a lick or two, you wince as he gives your hair a jerk and growls 'Faster'.. As annoying Koghh wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest.";
		say "     Looking up past his balls and erect cock, you see Koghh moan and put a hand to his muscled chest, rubbing one of his nipples with a thick finger. While doing so, he gives the room outside the cell a wary glance, then stops and listens, seemingly relieved that no other orc is near. You can feel his leg muscles tense and later relax as he makes a decision. Turning his attention to you, the orc slaver then says in a silent growl 'I'll break your legs if you tell anyone about this' and grips you under the arms, pulling you a bit up on the bench so your head dangles over the edge. With a last look towards the closed door of the room outside, he then steps forward and bends his knees a little, bringing his butt right against your face and pulling its firm cheeks apart.";
		say "     [WaitLineBreak]";
		say "     Seems like your orcish 'owner' likes getting his ass eaten out, something that clearly isn't the norm about warrior orcs. As tense as he is right now, you don't even want to know how he'd react if you refused, so there isn't much choice but to comply. Sniffling with your nose so close to the hairy skin of his butt, you're relieved that at least he smells clean, only of the usual masculine orc scent and nothing else. With a sigh, you start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
		say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and even the ground outside.";
		say "     [WaitLineBreak]";
		say "     After waiting a moment to catch his breath, Koghh quickly pulls away from you and walks to the other end of the bench. He takes hold of your legs, raising and spreading them, then grasps his still pretty hard cock and rubs it against your ass, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Dropping your legs after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc quickly snatches up his loincloth and ties it around his hips, then leaves the cell and throws its door shut behind himself.";
	say "     [line break]";
	infect "Orc Breeder";
	infect "Orc Breeder";
	if Koghhstatus is 0:
		now Koghhstatus is 1;
	
to say KoghhFuck2:
	if Koghhstatus is 0:
		say "[KoghhFuck1]";
	otherwise:
		say "     'My brothers Mul and Yatur are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' Koghh says with a lusty grin, rubbing the large bulge of his already half-hard cock through the loincloth barely concealing it. 'You... know what I like slave,' he tells you in a low voice, then continues, 'And that it's best for you if you keep quiet about it. So get on the fuckbench and -'";
		say "     [line break]";
		say "     Suddenly, the door to the slave lockup is slammed open, making you and Koghh whip around to see an obviously drunk orc warrior brace himself with a hand on the door-frame. '*Belch* What are you doing in my - huh, wait. Where's my bed and loot? Someone stole it! I'm gonna break some heads and get it back!' With that, the boozy orc lets the door fall closed gain, staggering off to pick a fight with someone. Koghh's face draws into a snarl at getting interrupted - and almost found out. 'We can't do this here right now. Follow me, slave - I've got a key for a more private room.'";
		say "     [line break]";
		say "     Opening the cell door, Koghh quickly ushers you out, then into the dark corridor just outside the slave lockup. He pulls out a key bound to his loincloth with a string, then unlocks the door just opposite and pushes you into the pitch-black room beyond. Following you in, he pulls the door closed behind himself and hits a switch, turning on a portable and battery-powered spotlight standing against a wall, bathing the room in light. Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
		say "     [WaitLineBreak]";
		say "     After locking the door and trying the handle to make sure it really is securely locked, the Koghh pulls off his loincloth and throws it aside, revealing his thick and veiny cock. 'Time to please your master!' he growls, jerking himself and then slapping his erect manhood into the palm of his other hand with a meaty thud. After a moment more of posturing and trying to intimidate you with the size of his cock, Koghh steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked. His large orc hands grope you all over, roughly squeezing your ass and feeling you up.";
		if "Submissive" is listed in feats of player:   [sub players]
			say "     Seems like he likes what he sees, as his cock twitches a bit and a glistening drop of precum appears at its tip. Holding his shaft out to you, the muscular orc chuckles as you immediately kneel down and eagerly slide your lips over the tip of his erect cock. Fulfilling the demands of your horny and strong master has you getting quite aroused, only helped along by the delicious and stimulating taste of his precum. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Move over there, now!' he growls in a domineering tone that has you shivering with lust inside.";
			say "     [WaitLineBreak]";
			say "     Quickly getting up and almost stumbling as you rush over to the bench, you're joined a moment later by your orc master, who lies down with his stomach on it. He positions himself with spread legs so his hips are just past the end of the bench, allowing his cock do dangle freely below and presenting his muscled and shapely ass to you. Looking over his shoulder, Koghh commands 'Get licking, slut!' and you of course immediately obey, kneeling behind the muscled brute. Pressing your nose against the somewhat hairy skin between his legs, you take a deep sniff of his clean, masculine smell and start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
			if bodyname of player is "Orc Warrior" and cockname of player is "Orc Warrior" and cocks of player > 0:
				say "     [line break]";
				say "     In the horny and aroused state you're in right now, your own orc nature rears its head and pushes the idea of burying your manhood in Koghh's ass to the forefront of your mind. You've got him in a perfect position to do it - but do you really want to suppress your normal submissive urges and take the chance to fuck your master?";
				if player consents:
					say "     [line break]";
					say "     Pushing two fingers in Koghh's hole, you keep fondling him while quietly standing up and taking hold of your shaft with the other hand. Then, with your hard cock lined up and ready, you quickly pull your probing digits away and thrust in, penetrating his hole with a smooth glide. Hitting his sensitive prostate good, you make the orc howl in lust and pleasure. He feels pretty amazing inside, being well-lubed with all the cum already in there and squishing around your member, as well as having an experienced bottom's reflex to stretch readily for your entry and then tightening the inner muscles to grip your shaft. As Koghh gets over the surprise of suddenly being penetrated by you, there is a moment in which he tightens his arm muscles as if to throw you off and he gives the start of a snarl over his shoulder. Already being balls-deep inside him, you quickly decide to just keep going and hope for the best, fucking him with rapid thrusts. It even works - Koghh starts to moan loudly when his annoyance is overshadowed by lust and he relaxes again, taking everything you can dish out and panting to fuck him harder.";
					say "     With that, the floodgates of your own orcish instincts break completely and you start giving your master a hard and deep fuck, really pounding into him. You don't know for how long the wild coupling between you lasts, and you don't really care in the lust-filled haze you find yourself in. At some point in the unrestrained copulation between the two of you, the brutish bottom's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum that splats down audibly all over the floor under him, drops splashing over your feet and legs. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc 'owner' in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the orc's hips, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
					say "     [WaitLineBreak]";
					say "     Exhausted but happy, you pull out of your orc's well-bred hole, then stand up on somewhat weak knees - only to find yourself sprawled out on the ground a moment later as Koghh stands up and punches you out. Standing over you as you regain consciousness, the orc growls 'Just a little reminder that you're still a slave. My slave. Fucking me means nothing - I only allowed it because you were halfway decent.' With that, the orc snatches up a piece of your clothing and wipes the cum off his hole, then throws the now sticky garment to you. He allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Warrior";
					infect "Orc Warrior";
					if Koghhstatus < 2:
						now Koghhstatus is 2;
				otherwise:
					say "     Your hesitation as you ponder the idea is interrupted by Koghh, who gives a grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
					say "     [WaitLineBreak]";
					say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Breeder";
					infect "Orc Breeder";
			otherwise:
				say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' Happy and willing to serve, as always, you immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
				say "     [WaitLineBreak]";
				say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
				say "     [line break]";
				infect "Orc Breeder";
				infect "Orc Breeder";
		otherwise:   [normal players]
			say "     Seems like he likes what he sees, as his cock twitches a bit and a glistening drop of precum appears at its tip. Holding his shaft out to you, Koghh grunts in impatience as you don't react at once, then puts a hand on your shoulder and pushes down, making you kneel. The grunted command of 'Get to work, slave' and him gripping your hair finally results in you reluctantly opening your mouth and sliding your lips over the tip of his erect cock. Suckling on the orc's cock gives you a surprisingly delicious and stimulating taste of his precum, and despite yourself you can't help but get aroused. Koghh lets you suck on his cock for a while, then suddenly pulls out and nods towards the sturdy leather-covered bench in the middle of the cell. 'Move over there, now!' he growls in a domineering tone.";
			say "     [WaitLineBreak]";
			say "     Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're joined a moment later by your orc master, who lies down with his stomach on it. He positions himself with spread legs so his hips are just past the end of the bench, allowing his cock do dangle freely below and presenting his muscled and shapely ass to you. Looking over his shoulder, Koghh commands 'Get licking, slut!' and you obey after he growls 'Now! I'll get angry if you make me stand up again,' kneeling behind the muscled brute. Sniffling with your nose so close to the hairy skin of his butt, you're relieved that at least he smells clean, only of the usual masculine orc scent and nothing else. With a sigh, you start lapping away at his hole. His pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - at which point you realize why that's the case, as you can clearly taste orc cum in his hole. While you explore his insides with your probing tongue, you idly wonder who the strong orc warrior might be having sex with and allow to fuck him.";
			if bodyname of player is "Orc Warrior" and cockname of player is "Orc Warrior" and cocks of player > 0:
				say "     [line break]";
				say "     Given how horny and aroused you've gotten by now, the idea of burying your own manhood in him comes to your mind. You've got him in a perfect position to do it - do you take the chance to try fucking your 'owner'?";
				if player consents:
					say "     [line break]";
					say "     Pushing two fingers in Koghh's hole, you keep fondling him while quietly standing up and taking hold of your shaft with the other hand. Then, with your hard cock lined up and ready, you quickly pull your probing digits away and thrust in, penetrating his hole with a smooth glide. Hitting his sensitive prostate good, you make the orc howl in lust and pleasure. He feels pretty amazing inside, being well-lubed with all the cum already in there and squishing around your member, as well as having an experienced bottom's reflex to stretch readily for your entry and then tightening the inner muscles to grip your shaft. As Koghh gets over the surprise of suddenly being penetrated by you, there is a moment in which he tightens his arm muscles as if to throw you off and he gives the start of a snarl over his shoulder. Already being balls-deep inside him, you quickly decide to just keep going and hope for the best, fucking him with rapid thrusts. It even works - Koghh starts to moan loudly when his annoyance is overshadowed by lust and he relaxes again, taking everything you can dish out and panting to fuck him harder.";
					say "     With that, the floodgates of your own orcish instincts break completely and you start giving your 'owner' a hard and deep fuck, really pounding into him. You don't know for how long the wild coupling between you lasts, and you don't really care, in the lust-filled haze you find yourself in. At some point in the unrestrained copulation between the two of you, the brutish bottom's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum that splats down audibly all over the floor under him, drops splashing over your feet and legs. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc 'owner' in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the orc's hips, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
					say "     [WaitLineBreak]";
					say "     Exhausted but happy, you pull out of your orc's well-bred hole, then stand up on somewhat weak knees - only to find yourself sprawled out on the ground a moment later as Koghh stands up and punches you out. Standing over you as you regain consciousness, the orc growls 'Just a little reminder that you're still a slave. My slave. Fucking me means nothing - I only allowed it because you were halfway decent.' With that, the orc snatches up a piece of your clothing and wipes the cum off his hole, then throws the now sticky garment to you. He allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Warrior";
					infect "Orc Warrior";
					if Koghhstatus < 2:
						now Koghhstatus is 2;
				otherwise:
					say "     Your hesitation as you ponder the idea is interrupted by Koghh, who gives a grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
					say "     [WaitLineBreak]";
					say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
					say "     [line break]";
					infect "Orc Breeder";
					infect "Orc Breeder";
			otherwise:
				say "     Your thoughts are interrupted as Koghh suppresses his low moans and gives a silent grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal. And when you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Koghh's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock so splash all over the cell floor and against your legs.";
				say "     [WaitLineBreak]";
				say "     After waiting a while for his orgasm to subside and to catch his breath, Koghh stands up and pulls you to your feet, then bends you over the fuckbench he occupied a moment earlier. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up against you and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
				say "     [line break]";
				infect "Orc Breeder";
				infect "Orc Breeder";

to say YaturFuck1:
	say "     'My brothers Mul and Koghh are busy [one of]drinking[or]fucking some soldiers that are being passed around in the main hall[or]wrestling a minotaur[or]in a brawl[at random], so I guess I've got you all to myself right now.' He chuckles and grips the bulge in his loincloth, continuing with 'You won't forget the name Yatur after I'm done with you.' With that, he steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked before him. His large orc hands grope you all over, roughly squeezing your ass and feeling you up. ";
	if skinname of player is not "Orc Breeder" and skinname of player is not "Orc Warrior" and skinname of player is not "Hulking Cheerleader":
		say "'Oh yes, you'll do nicely. I can't wait till you have beautiful green skin on you...'";
	otherwise if player is impreg_now:
		say "'Oh yes, you'll do nicely. I can't wait till you give birth and I can fill you up with my seed again. You're gonna be a proper little breeder and bear me lots of children...'";
	otherwise:
		say "'Oh yes, you'll do nicely. I can't wait to fill you with my seed and knock you up like a proper little breeder...'";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Yatur shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master as well as him slightly lessening the painful grip of your hair.";
		say "     [WaitLineBreak]";
		say "     After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc soon just lets go of your head, moaning 'Aah, nice - an eager little slut!' He lets you continue for quite a bit, then grunts and pulls you off suddenly.";
		say "     Chuckling, he shakes his head and says 'You won't get out of being bred by swallowing my seed, if that's what you were planning. Tempting, but no - I'm gonna take your ass now. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, Yatur tells you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orcish master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     Pulling the ragged fabric of his loincloth aside, Yatur shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest.";
		say "     [WaitLineBreak]";
		say "After a few minutes of being forced to lick the orc warrior's balls, he pulls your head back and presents you with his thick and hard shaft. 'Better be good and use lots of spit - that's the only lube you gonna get!' he grumbles, making it clear what will come after this. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. Interestingly, the trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock.";
		say "     Chuckling, he shakes his head and says 'You won't get out of being bred by swallowing my seed, if that's what you were planning. Tempting, but no - I'm gonna take your ass now. Get on the fuckbench, slut!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, you're still reluctant to get into the position he commands you to take, so the muscled orc just manhandles you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orc 'owner' whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out - though the sensations of him pushing a thick finger into your stretched, cum-filled hole brings you back to reality in a second, gasping at the sudden penetration. After pushing his probing finger in and out a few times and using it to rub your insides, Yatur walks around the bench and holds out his hand with the command 'Taste it'.";
	say "     [WaitLineBreak]";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Sucking some of the cum he just fucked into your ass from your master's fingers - of course you jump at this, moaning as you pull his hand closer eagerly. Then your lips are around his digit, eagerly sucking on it to get all of the nectar-like orc cum off. Yatur chuckles and says 'That's a good breeder. I'm gonna love knocking you up again and again.' After giving you some more moments to really clean up all of the tasty cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";
	otherwise:
		say "     Sucking some of the cum he just fucked into your ass from your 'owner's' fingers - the thought makes you grimace and flinch away. Though not far - as Yatur's other hand quickly gets a painful grip in your hair and holds you still. 'Struggling won't help you, slave' the orc barks and pulls your head back, sticking his cum-covered finger into your mouth as you yelp in pain. 'Now clean it, suck it all off and swallow' he commands, and you're forced to comply. Even worse, his seed actually tastes quite good, making you a bit light-headed as you swallow it. Yatur chuckles and says 'Don't worry little breeder, you're gonna calm down and get more docile with every child you bear for me.' After giving you some more moments to really clean up all of the cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";

to say MulFuck1:
	say "     'My brothers Yatur and Koghh are busy [one of]training with each other[or]giving Orbul a good stuffing[or]outside, having gone for a hunt together[or]fucking some soldiers that are being passed around in the main hall[or]in a brawl[at random], so I guess I've got you all to myself right now.' He chuckles and grips the bulge in his loincloth, continuing with 'Time to please your master Mul, little piggy.' With that, he steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked before him. His large orc hands grope you all over, roughly squeezing your ass and feeling you up. ";
	if skinname of player is not "Orc Breeder" and skinname of player is not "Orc Warrior" and skinname of player is not "Hulking Cheerleader":
		say "'Oh yes, you'll do nicely. I can't wait till you have beautiful green skin on you...'";
	otherwise if player is impreg_now:
		say "'Oh yes, you'll do nicely. You look good with that swollen belly of yours. Just like a proper breeder is supposed to...'";
	otherwise:
		say "'Oh yes, you'll do nicely. I'll teach you all you need to know to please your master!'";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master. He even lets go of your hair and actually smiles down at you, then says 'Good, that's a proper little slave. Ready to please. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. Eager to please the mighty orc, you enthusiastically worship his weighty globes, stimulating him so much that he has to suddenly push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Only a single big drop of greenish-white orc cum runs out of the tip of his thick shaft, then down its underside, to be quickly licked up by yourself. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says 'Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I still wanna fuck your ass.'";
		say "     He waits a moment more to allow himself to relax, then presents you with his hard shaft. 'Blow me - and use lots of spit. You're gonna need it when I stick it in you!' he grumbles, a lusty grin on his face. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. The trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc moans 'Can't get enough of my cock, can you? Sluts make the best slaves, really!' He lets you continue for quite a bit, then grunts and pulls you off suddenly, ordering 'Get on the fuckbench!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, Mul tells you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orcish master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest - which earns you a satisfied grunt from your orc 'owner'. He even loosens his grip on your hair a bit, then gives you a patronizing smile and says 'That's better. You'll learn in time, little slave. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. As it seems best to keep him in a good mood, you do your best in taking care of his weighty globes. Then an idea springs up in your mind - if you get him to shoot his load now, that might just save you getting fucked by the massive schlong just inches from your face. Deciding to try it, you really get into pleasuring Mul and eventually stimulate him so much that he has to push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Damn, that didn't work out - but it was worth a try. Your thoughts are interrupted when you spot a single big drop of greenish-white orc cum runs out of the tip of Mul's thick shaft, then down its underside. Something about it just binds your attention completely, and with each breath you take in, the pleasant and heady smell of orc cum gets to you more. Seconds later, you give in to the desire that wakes inside you and find yourself leaning forward, eagerly licking up the drop of cum from his shaft. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says 'Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I still wanna fuck your ass.'";
		say "     He waits a moment more to allow himself to relax, then presents you with his hard shaft. 'Blow me - and use lots of spit. You're gonna need it when I stick it in you!' he grumbles, a lusty grin on his face. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. The trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock, ordering 'Get on the fuckbench!' Being roughly pulled up by your arm, you're given a push towards the sturdy leather-covered bench in the middle of the cell. Stumbling over to it, Mul tells you to lie down on your stomach, legs spread and dangling over the sides of the narrow and sturdy bench. A moment later, the powerful orc warrior moves to stand over your body and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orc 'owner' whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Mul reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum against the leather of the bench. [otherwise if cunts of player > 0]squirting femcum all over the leather of the bench under your crotch. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you barely feel your orc fucker pull out - though the sensations of him pushing a thick finger into your stretched, cum-filled hole brings you back to reality in a second, gasping at the sudden penetration. After pushing his probing finger in and out a few times and using it to rub your insides, Mul walks around the bench and holds out his hand with the command 'Taste it'.";
	say "     [WaitLineBreak]";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Sucking some of the cum he just fucked into your ass from your master's fingers - of course you jump at this, moaning as you pull his hand closer eagerly. Then your lips are around his digit, eagerly sucking on it to get all of the nectar-like orc cum off. Mul chuckles and says 'You like that, don't you? Be a good little slave and you'll get lots of it from my brothers and me - and others, if we loan you out.' After giving you some more moments to really clean up all of the tasty cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";
	otherwise:
		say "     Sucking some of the cum he just fucked into your ass from your 'owner's' fingers - the thought makes you grimace and flinch away. Though not far - as Mul's other hand quickly gets a painful grip in your hair and holds you still. 'Struggling won't help you, slave' the orc barks and pulls your head back, sticking his cum-covered finger into your mouth as you yelp in pain. 'Now clean it, suck it all off and swallow' he commands, and you're forced to comply. Even worse, his seed actually tastes quite good, making you a bit light-headed as you swallow it. Mul chuckles and says 'You can't tell me that you don't like it, slave - I can see it on your face. Just give in and accept it.' After giving you some more moments to really clean up all of the cum he has on his hand, the orc smugly strolls over to the cell door and leaves, throwing it shut behind himself.";

to say MulFuck2:   [Mul Fucks the player in the hallway]
	say "     Mul chuckles and grips the bulge in his loincloth, continuing with 'Time to please your master Mul, little piggy.' With that, he steps up to you, pulling off your gear and clothing without much restraint or care, just tossing everything aside until you're completely naked before him, right there in the hallway. His large orc hands grope you all over, roughly squeezing your ass and feeling you up. ";
	if skinname of player is not "Orc Breeder" and skinname of player is not "Orc Warrior" and skinname of player is not "Hulking Cheerleader":
		say "'Oh yes, you'll do nicely. I can't wait till you have beautiful green skin on you...'";
	otherwise if player is impreg_now:
		say "'Oh yes, you'll do nicely. You look good with that swollen belly of yours. Just like a proper breeder is supposed to...'";
	otherwise:
		say "'Oh yes, you'll do nicely. I'll teach you all you need to know to please your master!'";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master. He even lets go of your hair and actually smiles down at you, then says 'Good, that's a proper little slave. Ready to please. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. Eager to please the mighty orc, you enthusiastically worship his weighty globes, stimulating him so much that he has to suddenly push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Only a single big drop of greenish-white orc cum runs out of the tip of his thick shaft, then down its underside, to be quickly licked up by yourself. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says 'Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I still wanna fuck your ass.'";
		say "     He waits a moment more to allow himself to relax, then presents you with his hard shaft. 'Blow me - and use lots of spit. You're gonna need it when I stick it in you!' he grumbles, a lusty grin on his face. Eagerly, you slide your lips over the tip of his erect dick and suckle on it for a moment, then hold his manhood up so you can lick up and down the long shaft, teasingly following the veins on it with your tongue. The trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you even more of a rush at taking care of this big brute. As you go on switching up between licking him and sucking his prick, the orc moans 'Can't get enough of my cock, can you? Sluts make the best slaves, really!' He lets you continue for quite a bit, then grunts and pulls you off suddenly, ordering 'Against the wall!' Being roughly pulled up by your arm, you're given a push towards the nearest wall in the hallway. Stumbling over to it, you catch yourself with both hands, coming to stand against it with your ass stuck out for Mul. A moment later, the powerful orc warrior moves to stand right behind you and reaches down to spread your cheeks. You tremble in anticipation of him just using you for his enjoyment and do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orcish master whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	otherwise:   [normal players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest - which earns you a satisfied grunt from your orc 'owner'. He even loosens his grip on your hair a bit, then gives you a patronizing smile and says 'That's better. You'll learn in time, little slave. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. As it seems best to keep him in a good mood, you do your best in taking care of his weighty globes. Then an idea springs up in your mind - if you get him to shoot his load now, that might just save you getting fucked by the massive schlong just inches from your face. Deciding to try it, you really get into pleasuring Mul and eventually stimulate him so much that he has to push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Damn, that didn't work out - but it was worth a try. Your thoughts are interrupted when you spot a single big drop of greenish-white orc cum runs out of the tip of Mul's thick shaft, then down its underside. Something about it just binds your attention completely, and with each breath you take in, the pleasant and heady smell of orc cum gets to you more. Seconds later, you give in to the desire that wakes inside you and find yourself leaning forward, eagerly licking up the drop of cum from his shaft. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says 'Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I still wanna fuck your ass.'";
		say "     He waits a moment more to allow himself to relax, then presents you with his hard shaft. 'Blow me - and use lots of spit. You're gonna need it when I stick it in you!' he grumbles, a lusty grin on his face. Not having much choice otherwise if you don't want him to rip up your ass something terrible later, you start going down on him, switching up between sucking on the tip of his manhood and licking its shaft. The trickle of precum that soon starts oozing out of his cockhead is amazingly tasty, giving you kind of a rush that makes being forced to do this not seem so bad. The orc lets you continue for a bit, then grunts and pulls you off his cock, ordering 'Against the wall!' Being roughly pulled up by your arm, you're given a push towards the nearest wall in the hallway. Stumbling over to it, you catch yourself with both hands, coming to stand against it with your ass woefully exposed. A moment later, the powerful orc warrior moves to stand right behind you and reaches down to spread your cheeks. Trembling at the thought of taking his thick meat, you do your best to relax your sphincter to be ready.";
		say "     [WaitLineBreak]";
		say "     Your orc 'owner' whacks his erection against your ass with a meaty thud, then slides the hot rod up and down your crack before finally lining up its tip with your hole. Gripping your hips with two large hands, he presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
	say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
	say "     [WaitLineBreak]";
	say "     After giving you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, he pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought pushed aside completely by the feelings of having that thick shaft deep inside you. Having already enjoyed some ball-play and a blowjob from you, it doesn't take all that long until Mul reaches the limit of his endurance and orgasms, burying his shaft deep in your ass as he pumps blast after blast of cum into you.[mimpregchance]";
	say "     After his precum already made you feel good, being filled by a massive load of real orc cum almost blows your mind. Its special properties really push your arousal right over the edge, making you [if cocks of player > 0]spray your own cum all over the wall and floor of the hallway. [otherwise if cunts of player > 0]squirting femcum all over the wall and floor of the hallway. [otherwise]tremble and shake an orgasm wracks your body. [end if]You're so out of it for a while that you couldn't have kept standing - were it not for the massive prick still impaling your ass. Then a muscular arm snakes around you, holding you against Mul's chest as he pulls out. His erection is replaced by a thick finger that pushes into your stretched, cum-filled hole and brings you back to reality in a second, gasping at the repeated penetration. After pushing his probing finger in and out a few times and using it to rub your insides, Mul brings his hand in front of your face and commands 'Taste it'.";
	say "     [WaitLineBreak]";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Sucking some of the cum he just fucked into your ass from your master's fingers - of course you jump at this, moaning as you stretch your neck to reach his finger. Then your lips are around his digit, eagerly sucking on it to get all of the nectar-like orc cum off. Mul chuckles and says 'You like that, don't you? Be a good little slave and you'll get lots of it from my brothers and me - and others, if we loan you out.' After giving you some more moments to really clean up all of the tasty cum he has on his hand, then collect your belongings, the orc throws you over his shoulder and carries you back to your cell. There, he puts you down to lie on the cot inside before leaving and throwing the door shut behind himself.";
	otherwise:
		say "     Sucking some of the cum he just fucked into your ass from your 'owner's' fingers - the thought makes you grimace and flinch away. Though not far - as Mul tightens his arm around your chest enough to take your breath away. 'Struggling won't help you, slave' the orc barks and after holding you like that for a few more seconds, loosens his grip again to stick his cum-covered finger into your mouth as you gasp for air. 'Now clean it, suck it all off and swallow' he commands, and you're forced to comply. Even worse, his seed actually tastes quite good, making you a bit light-headed as you swallow it. Mul chuckles and says 'You can't tell me that you don't like it, slave - I can see it on your face. Just give in and accept it.' After giving you some more moments to really clean up all of the tasty cum he has on his hand, then collect your belongings, the orc throws you over his shoulder and carries you back to your cell. There, he puts you down to lie on the cot inside before leaving and throwing the door shut behind himself.";

to say MulAnal:
	if MulAnalAcceptance is 0:
		say "     Kneeling down besides the downed orc, you take hold of his meaty shaft and stroke it a few times, then let your hand wander to his balls. You weigh the hairy globes in your hand and give them an appreciative fondle before you move even lower, sliding your hand between his legs and brushing over his asshole with an exploring finger. As you gently rub the skin around his opening, the Mul starts panting softly from the pleasurable touch, and you can see his manhood grow moment by moment. When you soon do push a finger in against his pucker and probe his hole, the defeated orc warrior doesn't quite realize what you're doing at first - other than that it makes him feel quite interesting.";
		say "     Though that doesn't last long - shaking off the somewhat dazed state and the lustful haze you've put him in, the orc raises his upper body and grunts, 'Wait - no. Stop that! I'm not a breeder! You're supposed to take MY cock', then tries to get up and brush you off. It's an easy task to stop him from doing so, given that you've just kicked his ass and have a quite powerful orcish physique yourself. With one of your big hands on his chest to hold him down, you lean over the orc and growl at him with bared tusks. That show of strength - plus putting your other hand on his balls and giving them a tight warning squeeze - makes Mul surrender to your pleasure. 'Okay, you win you bastard,' he growls, then lets his head fall back to lie on the ground. Your captive's face scrunches up sullenly as you spread his legs with your hands, though he doesn't resist as you do so.";
		say "     [WaitLineBreak]";
		say "     After getting two fingers nice and wet with spit, you push them against his hole, penetrating his now tense muscle with a bit of effort. Your vanquished orc doesn't seem to want to bottom for you, though as you probe his depths and rub his inner walls, Mul can't hide that he does get aroused by your touch - after all, his thick cock filling out more and more till it stands proudly erect is a pretty obvious sign. 'This means nothing,' he growls loudly, looking at you with a snarl as your eyes meet past his hard manhood. To distract him a bit from his futile resistance, you do put your other hand on his towering pole, jerking up and down on it. Given this new focus to his attention, the green brute loses some of his inhibitions, moaning openly at your touch and leaking precum from the tip of his shaft. Even his pucker relaxes a bit, now that he's no longer consciously clenching it, and you can now push much easier into him and reach his prostate with a teasing touch.";
		say "     You keep going like this for a few minutes, finger-fucking your orcish captive's ass while jerking him off, then quietly pull our your probing digits and line up your manhood with his hole. All the preparation does pay off nicely, as you can penetrate him in a smooth glide in and hit his prostrate with your first thrust, making the previously oh so reluctant orc howl in lust and pleasure. And given the awesome feeling of his tight (most likely virgin) hole stretching around your shaft, you're no less vocal, grunting loudly as you bottom out deep inside him. Panting, you close your eyes and savour the sensations of being balls-deep in this powerful male, fully concentrating on the feeling of his tight hole, his firm cheeks against your balls and the muscles of his legs under your hands.";
		say "     [WaitLineBreak]";
		say "     Then suddenly, you hear the words 'Get it over with already' in a low growl. Opening your eyes, you do look down on the supine orc, taking in the somewhat sullen expression on his face - caught between pleasure at each little move your cock makes and gruff rejection. He gives a groan and you feel his anal muscles flex around your shaft, then he says with a quaver in his voice, 'Do what you wanna do and fuck off. I'm not into this shit!' The obvious lie - given that his cock is hard as ever - brings a smile to your face and the thought of maybe letting him squirm a bit more, denying that obvious fact, goes through your mind. But your own arousal gets the better of you and your hips start moving almost of their own. Gripping the orc warrior's legs tightly you pull back and back, till only the very tip of your shaft is still inside him, then thrust back in all the way, filling the air with a lustful shout of two voices as you do. With that, the floodgates break completely and you start giving your orc a hard and deep fuck, really pounding into him.";
		say "     You don't know for how long the wild coupling between you lasts, and you don't really care, in the lust-filled haze you find yourself in while fucking the orcish slaver. At some point in the unrestrained copulation between the two of you, Mul's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum in high arcs, to splat down audibly all over his chest, neck and face. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc partner in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the orc's legs, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
		say "     [WaitLineBreak]";
		say "     Exhausted but happy, you pull out of Mul's well-bred hole, then stand up on somewhat weak knees. After collecting your clothes and gear, you give the orc an affectionate pat on his sticky chest, then walk away, leaving the panting brute to pick himself and come to terms with being fucked on his own.";
		now MulAnalAcceptance is 1;
	otherwise if MulAnalAcceptance is 1:
		say "     Kneeling down besides the downed orc, you take hold of his meaty shaft and stroke it a few times, then let your hand wander to his balls. You weigh the hairy globes in your hand and give them an appreciative fondle before you move even lower, sliding your hand between his legs and brushing over his asshole with an exploring finger. As you gently rub the skin around his opening, the Mul starts panting softly from the pleasurable touch, and you can see his manhood grow moment by moment. When you soon do push a finger in against his pucker and probe his hole, the defeated orc warrior doesn't quite realize what you're doing at first - other than that it makes him feel quite interesting.";
		say "     Though that doesn't last long - shaking off the somewhat dazed state and the lustful haze you've put him in, the orc raises his upper body and grunts, 'Wait - no. Stop that! I'm not a breeder! You're supposed to take MY cock', then tries to get up and brush you off. It's an easy task to stop him from doing so, given that you've just kicked his ass and have a quite powerful orcish physique yourself. With one of your big hands on his chest to hold him down, you lean over the orc and growl at him with bared tusks. That show of strength - plus putting your other hand on his balls and giving them a tight warning squeeze - makes Mul surrender to your pleasure. 'Okay, you win you bastard,' he growls, then lets his head fall back to lie on the ground. Your captive's face scrunches up sullenly as you spread his legs with your hands, though he doesn't resist as you do so.";
		say "     [WaitLineBreak]";
		say "     After getting two fingers nice and wet with spit, you push them against his hole, penetrating his ring muscle with a bit of effort, though much easier than when you broke him in last time. Seems like he remembers that he can't keep your probings digit out, meaning that he only clenches his muscle moderately strong to make things harder and isn't going all-out to deny your entrance. As you feel around in his depths and rub his inner walls, Mul can't hide that he does get aroused by your touch - after all, his thick cock filling out more and more till it stands proudly erect is a pretty obvious sign. 'This means nothing,' he growls loudly, looking at you with a snarl as your eyes meet past his hard manhood. 'Getting hard from that is just a physical reaction. It doesn't mean I'm your breeder bitch now!' To distract him a bit from his sullen mumbling, you do put your other hand on his towering pole, jerking up and down on it. Given this new focus to his attention, the green brute loses some of his inhibitions, moaning openly at your touch and leaking precum from the tip of his shaft. Even his pucker gets on with the program, twitching and flexing almost welcoming around your fingers, especially when you reach his prostate with a teasing touch and stroke over it.";
		say "     You keep going like this for a few minutes, finger-fucking your orcish captive's ass while jerking him off, then quietly pull our your probing digits and line up your manhood with his hole. All the preparation does pay off nicely, as you can penetrate him in a smooth glide in and hit his prostrate with your first thrust, making the once oh so reluctant orc howl in lust and pleasure. And given the awesome feeling of his tight hole stretching around your shaft, you're no less vocal, grunting loudly as you bottom out deep inside him. Panting, you close your eyes and savour the sensations of being balls-deep in this powerful male, fully concentrating on the feeling of his tight hole, his firm cheeks against your balls and the muscles of his legs under your hands.";
		say "     [WaitLineBreak]";
		say "     Then suddenly, you hear the words 'Fuck me' in almost a whisper. Opening your eyes, you do look down on the supine orc, taking in the resigned expression on his face. He gives a groan and you feel his anal muscles flex around your shaft, then he says a bit louder 'If I'm getting fucked anyways, at least make it good so I can enjoy it.' For a moment, the thought of maybe letting him beg a bit more goes through your mind, though your own arousal gets the better of you and your hips start moving almost of their own. Gripping the orc warrior's legs tightly you pull back and back, till only the very tip of your shaft is still inside him, then thrust back in all the way, filling the air with a lustful shout of two voices as you do. With that, the floodgates break completely and you start giving your orc a hard and deep fuck, really pounding into him.";
		say "     You don't know for how long the wild coupling between you lasts, and you don't really care, in the lust-filled haze you find yourself in while fucking your orcish partner. At some point in the unrestrained copulation between the two of you, your bottom-boy orc's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum in high arcs, to splat down audibly all over his chest, neck and face. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc partner in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to Mul's legs, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
		say "     [WaitLineBreak]";
		say "     Exhausted but happy, you pull out of your toy orc's well-bred hole, then stand up on somewhat weak knees. After collecting your clothes and gear, you give the orc an affectionate pat on his sticky chest, then walk away, leaving the panting brute to pick himself and come to terms with being fucked on his own.";
		now MulAnalAcceptance is 2;
	otherwise if MulAnalAcceptance > 1:
		say "     Kneeling down besides the downed orc, you take hold of his meaty shaft and stroke it a few times, then let your hand wander to his balls. You weigh the hairy globes in your hand and give them an appreciative fondle before you move even lower, sliding your hand between his legs and brushing over his asshole with an exploring finger. As you gently rub the skin around his opening, the Mul starts panting softly from the pleasurable touch, and you can see his manhood grow moment by moment. When you soon do push a finger in against his pucker and probe his hole, the defeated orc warrior doesn't quite realize what you're doing at first - other than that it makes him feel quite interesting.";
		say "     Though that doesn't last long - shaking off the somewhat dazed state and the lustful haze you've put him in, the orc raises his upper body and grunts, 'Wait - no. Stop that! I'm not a breeder! You're supposed to take MY cock', then tries to get up and brush you off. It's an easy task to stop him from doing so, given that you've just kicked his ass and have a quite powerful orcish physique yourself. With one of your big hands on his chest to hold him down, you lean over the orc and growl at him with bared tusks. That show of strength - plus putting your other hand on his balls and giving them a tight warning squeeze - makes Mul surrender to your pleasure. 'Okay, you win you bastard,' he growls, then lets his head fall back to lie on the ground. Your captive's face scrunches up sullenly as you spread his legs with your hands, though he doesn't resist as you do so.";
		say "     [WaitLineBreak]";
		say "     After getting two fingers nice and wet with spit, you push them against his hole, penetrating his ring muscle with relative ease. Seems like he's finally accepted that getting fingered - and fucked - does feel good, even though he never would allow anyone to do so on his own. As you probe his depths and rub his inner walls, Mul can't hide that he does get aroused by your touch - after all, his thick cock filling out more and more till it stands proudly erect is a pretty obvious sign. 'This means nothing,' he growls loudly, looking at you with a snarl as your eyes meet past his hard manhood. 'Just because anal does feel kind of good doesn't mean I'm your breeder bitch now!' To distract him a bit from his sullen mumbling, you do put your other hand on his towering pole, jerking up and down on it. Given this new focus to his attention, the green brute loses some of his inhibitions, moaning openly at your touch and leaking precum from the tip of his shaft. Even his pucker gets on with the program, twitching and flexing almost welcoming around your fingers, especially when you reach his prostate with a teasing touch and stroke over it.";
		say "     You keep going like this for a few minutes, finger-fucking your orcish captive's ass while jerking him off, then quietly pull our your probing digits and line up your manhood with his hole. All the preparation does pay off nicely, as you can penetrate him in a smooth glide in and hit his prostrate with your first thrust, making the once oh so reluctant orc howl in lust and pleasure. And given the awesome feeling of his tight, well-trained hole stretching around your shaft, you're no less vocal, grunting loudly as you bottom out deep inside him. Panting, you close your eyes and savour the sensations of being balls-deep in this powerful male, fully concentrating on the feeling of his tight hole, his firm cheeks against your balls and the muscles of his legs under your hands.";
		say "     [WaitLineBreak]";
		say "     Then suddenly, you hear the words 'Fuck me' in almost a whisper. Opening your eyes, you do look down on the supine orc, taking in the needful expression on his face. He gives a groan and you feel his anal muscles flex around your shaft, then he says a bit louder 'You - it ...it feels so good. I want it, need it - now!' For a moment, the thought of maybe letting him beg a bit more goes through your mind, though your own arousal gets the better of you and your hips start moving almost of their own. Gripping the orc warrior's legs tightly you pull back and back, till only the very tip of your shaft is still inside him, then thrust back in all the way, filling the air with a lustful shout of two voices as you do. With that, the floodgates break completely and you start giving your orc a hard and deep fuck, really pounding into him.";
		say "     You don't know for how long the wild coupling between you lasts, and you don't really care, in the lust-filled haze you find yourself in while fucking your orcish partner. At some point in the unrestrained copulation between the two of you, your bottom-boy orc's moans start getting deeper and louder, then turn into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. He shoots a truly impressive amount of creamy orc cum in high arcs, to splat down audibly all over his chest, neck and face. While the green brute does so, his anal muscles twitch around your own cock with each burst of his seed, making your arousal mount quickly and soon reach its maximum. After just a few more thrusts, you join your orc partner in orgasm. With a deep grunt, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to Mul's legs, you fill his insides with your seed, then rest with your manhood still inside him and you catch your breath.";
		say "     [WaitLineBreak]";
		say "     Exhausted but happy, you pull out of your toy orc's well-bred hole, then stand up on somewhat weak knees. After collecting your clothes and gear, you give the orc an affectionate pat on his sticky chest, then walk away, leaving the panting brute to pick himself and come to terms with being fucked on his own.";

to say MulAnalRide:		[Mul rides the player's cock]
	say "     Mul chuckles and grips the bulge in his loincloth, continuing with 'You've only gotten me more excited with your struggles, little piggy.' Giving a furtive look up and down the hallway to look if anyone is watching, he then grabs you and drags you into the interrogation room, locking its door after you're both inside and he has switched on the lights. With a lusty grunt, he then starts to pull off your gear and clothing, without much restraint or care, just tossing everything aside until you're completely naked before him. His large orc hands grope you all over, roughly squeezing your ass and feeling you up. ";
	if skinname of player is not "Orc Breeder" and skinname of player is not "Orc Warrior" and skinname of player is not "Hulking Cheerleader":
		say "'Oh yes, you'll do nicely. I can't wait till you have beautiful green skin on you...'";
	otherwise:
		say "'Oh yes, you'll do nicely. I'll teach you all you need to know to please your master!'";
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you obediently lap away at his hairy globes, your pulse racing as the rough treatment plays right into your submissive nature. Doing your best to please him, you take as much as you can of one, then the other ball into your mouth your tongue, playing over them and seeking out sensitive spots - which earns you a satisfied grunt from your orc master. He even lets go of your hair and actually smiles down at you, then says 'Good, that's a proper little slave. Ready to please. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. Eager to please the mighty orc, you enthusiastically worship his weighty globes, stimulating him so much that he has to suddenly push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Only a single big drop of greenish-white orc cum runs out of the tip of his thick shaft, then down its underside, to be quickly licked up by yourself. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says 'Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I have a certain itch I wanna use you to sate.'";
		say "     He hesitates for a moment longer, looking at the door as if to make sure it's still closed, then turns around, presenting his firmly muscled butt to you. 'Get licking slave-boy,' your orc master commands in a low voice, holding his buttcheeks apart with two strong hands. Eagerly leaning forward and pressing your nose against the somewhat hairy skin of his crack, you then take a deep sniff of his clean, masculine smell and start lapping away at his hole. Mul's pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - which does make you wonder if he's been training himself with some toy since you turned him on to anal sex. Amid low moans, the green-skinned brute gives a silent grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal.";
		say "     [WaitLineBreak]";
		if a random chance of 1 in 2 succeeds:  [comes from having eaten his ass]
			say "     When you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Mul's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock to splat down on the ground and even hit the wall next to the door.";
			say "     After waiting a while for his orgasm to subside and to catch his breath, Mul turns around and pulls you to your feet, then bends you over the fuckbench in the middle of the room. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
		otherwise:   [rides the player's cock]
			say "     Suddenly, Mul draws away from you and turns around lust flaring in his eyes. With the lusty grunt of, 'I wanna fuck!', his two strong hands grip you under your arms and you are lifted up, then almost thrown to lie lengthwise on a sofa, with the orc climbing on top of you a moment later. He comes to kneel above you, straddling your hips, and catches your wrists to hold them down above your head with one hand, while the other one gropes your crotch. Taking hold of your erection, the orc holds it up and lowers his hips to meet it. Soon, you can feel the tip of your [cock of player] shaft push against his pucker, then sink inside, enveloped by a warm and tight passage. 'Yeah!' Mul grunts loudly as his cheeks touch your crotch and all of your erection is inside him, then he starts to rock back and forth, fucking himself on your pole.";
			say "     Given how wound-up he already is from all the oral attention he got from you, it doesn't take all too long until riding your cock brings Mul's arousal to the boiling point. After a quick build-up of the volume and urgency in his grunts and moans, the green brute bends his body back to take all of you inside him and gives a roar that heralds a veritable explosion of cum from his massive dick. Spurt after spurt of thick, creamy orc cum pulse from the slit of his manhood to splash down on your chest, face and the sofa. Eager to join your master in orgasm, your pump your hips up against him and enjoy the twitching of his anal muscles around your thrusting shaft, while at the same time wiping up all the cum you can get with your hand so suck it hungrily from your fingers. In no time at all, you reach the point of no return and joyfully pass it, writhing on the sofa as your whole body shakes from a mind-blowing climax and your seed gets blasted into the orc's gut.";
			say "     [WaitLineBreak]";
			say "     After waiting a while for his orgasm to subside and to catch his breath, Mul lifts himself from the impalement on your softening erection and stands up. Grabbing your leg with one big hand, he lifts it, then brings his still pretty hard cock forward and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'A good slave has to know to keep his master's secrets too. Not a word about this - I fucked you, if anyone asks.' With that said, the orc snatches up a piece of your clothing and uses it to dab away the bit of your cum that leaked out of him, then allows you to quickly gather up your belongings and leads you back into the cell that is your home.";
	otherwise:   [non-sub players]
		say "     Pulling the ragged fabric of his loincloth aside, Mul shows you his thick and meaty cock, then puts a hand on your shoulder and pushes down, making you kneel. He softly whacks his thick green shaft against your forehead and grabs your hair tightly, pulling your head against his balls. Following the barked order of 'Lick them!', you reluctantly give his hairy globes a lick or two, then wince as he gives your hair a jerk and growls 'Faster'. As angering him wouldn't be a good idea, you swallow your pride and start lapping away at his nuts in earnest - which earns you a satisfied grunt from your orc 'owner'. He even loosens his grip on your hair a bit, then gives you a patronizing smile and says 'That's better. You'll learn in time, little slave. Now why don't you hold them with your hands and...'";
		say "     [WaitLineBreak]";
		say "     Mul spends a while instructing you in all his favorite ways of getting his balls played with, from letting you lick their underside, to gently massaging and even lightly squeezing them. As it seems best to keep him in a good mood, you do your best in taking care of his weighty globes. Then an idea springs up in your mind - if you get him to shoot his load now, that might just save you getting fucked by the massive schlong just inches from your face. Deciding to try it, you really get into pleasuring Mul and eventually stimulate him so much that he has to push you away to avoid coming. Looking up at the orc warrior, you see his whole body go tense and hear him give a breathless gasp, then pant as he stops just short of blowing his load. Damn, that didn't work out - but it was worth a try. Your thoughts are interrupted when you spot a single big drop of greenish-white orc cum runs out of the tip of Mul's thick shaft, then down its underside. Something about it just binds your attention completely, and with each breath you take in, the pleasant and heady smell of orc cum gets to you more. Seconds later, you give in to the desire that wakes inside you and find yourself leaning forward, eagerly licking up the drop of cum from his shaft. The taste of Mul's cum spreads over your tongue, delicious like ambrosia and leaves you pretty randy and you hungry for more. Chuckling at your behaviour, Mul says Phew, almost made me blow my load with your talented tongue. Nicely done, pet, but that'd be too fast... I have a certain itch I wanna use you to sate.'";
		say "     He hesitates for a moment longer, looking at the door as if to make sure it's still closed, then turns around, presenting his firmly muscled butt to you. 'Get licking slave-boy,' your orc 'owner' commands in a low voice, holding his buttcheeks apart with two strong hands. Not having much choice otherwise if you don't want him to enrage him, you start lapping away at his hole, slowly running your tongue up his crack and teasing his pucker. Thankfully, there is nothing but a clean, masculine smell to him, at least making this experience a relatively tolerable one. Mul's pucker is pretty relaxed and accommodating, easily allowing you to push your tongue into his body - which does make you wonder if he's been training himself with some toy since you turned him on to anal sex. Amid low moans, the green-skinned brute gives a silent grunt of 'Yeah, just like that - and use your fingers too.' You immediately get to work probing and stroking his insides with two, then three fingers, much to the orc's arousal.";
		say "     [WaitLineBreak]";
		if a random chance of 1 in 2 succeeds:  [comes from having eaten his ass]
			say "     When you reach your other arm through between his legs and start massaging his full, green balls at the same time, it's only a question of time till you push him to the point of no return. Only a short while later, Mul's moans and grunts quickly get pretty loud, culminating in almost a roar as thick spurts of cum blast from his cock to splat down on the ground and even hit the wall next to the door.";
			say "     After waiting a while for his orgasm to subside and to catch his breath, Mul turns around and pulls you to your feet, then bends you over the fuckbench in the middle of the room. He gropes your butt, then holds your cheeks apart with his fingers as he brings his still pretty hard cock up and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'Not a word about this - I fucked you, if anyone asks.' With that said, the orc allows you to quickly gather up your belongings, then leads you back into your cell and throws its door shut.";
		otherwise:   [rides the player's cock]
			say "     Suddenly, Mul draws away from you and turns around lust flaring in his eyes. With the lusty grunt of, 'I wanna fuck!', his two strong hands grip you under your arms and you are lifted up, then almost thrown to lie lengthwise on a sofa, with the orc climbing on top of you a moment later. He comes to kneel above you, straddling your hips, and catches your wrists to hold them down above your head with one hand, while the other one gropes your crotch. Taking hold of your erection, the orc holds it up and lowers his hips to meet it. Soon, you can feel the tip of your [cock of player] shaft push against his pucker, then sink inside, enveloped by a warm and tight passage. 'Yeah!' Mul grunts loudly as his cheeks touch your crotch and all of your erection is inside him, then he starts to rock back and forth, fucking himself on your pole.";
			say "     Given how wound-up he already is from all the oral attention he got from you, it doesn't take all too long until riding your cock brings Mul's arousal to the boiling point. After a quick build-up of the volume and urgency in his grunts and moans, the green brute bends his body back to take all of you inside him and gives a roar that heralds a veritable explosion of cum from his massive dick. Spurt after spurt of thick, creamy orc cum pulse from the slit of his manhood to splash down on your chest, face and the sofa. Eager to get off yourself, your pump your hips up against him and enjoy the twitching of his anal muscles around your thrusting shaft. In no time at all, you reach the point of no return and joyfully pass it, writhing on the sofa as your whole body shakes from a mind-blowing climax and your seed gets blasted into the orc's gut.";
			say "     [WaitLineBreak]";
			say "     After waiting a while for his orgasm to subside and to catch his breath, Mul lifts himself from the impalement on your softening erection and stands up. Grabbing your leg with one big hand, he lifts it, then brings his still pretty hard cock forward and rubs it against you, leaving your hole wet with the cum still clinging to its tip and everything more that he can milk out of his manhood. Giving your ass a light slap after that bit of deception is done, he pins you down with a stare and growls 'A good slave has to know to keep his master's secrets too. Not a word about this - I fucked you, if anyone asks.' With that said, the orc snatches up a piece of your clothing and uses it to dab away the bit of your cum that leaked out of him, then allows you to quickly gather up your belongings and leads you back into the cell that is your home.";
		
to say OrcBrotherlyLove1:  [Koghh + Yatur]
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and three persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc masters Yatur and Koghh, followed by a smaller orc - a breeder, judging from the different stature and almost pretty features. Yatur turns his head to the door and bellows 'We'll fill this little breeder till he bursts', and his brother intones in the same volume 'Yeah, can't wait to fuck the needy slut!' Interestingly, Koghh also speaks more towards the open door than actually to Yatur. A moment later he throws the door shut with a slam, then locks it.";
	otherwise:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and three persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owners' Yatur and Koghh, followed by a smaller orc - a breeder, judging from the different stature and almost pretty features. Yatur turns his head to the door and bellows 'We'll fill this little breeder till he bursts', and his brother intones in the same volume 'Yeah, can't wait to fuck the needy slut!' Interestingly, Koghh also speaks more towards the open door than actually to Yatur. A moment later he throws the door shut with a slam, then locks it.";
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     Do you want to watch what happens next in the interrogation room?";
	if player consents:
		say "     [line break]";
		say "     While the smaller orc saunters to one of the couches and sits down on it, Yatur picks up an orc-cock-sized dildo and a sting of anal beads and drops em on the couch besides him. After that, he goes to pick up a bottle of lube, throwing it for the green-skinned man to catch, and then... Yatur is pushed back against the wall by his brother Koghh, who runs a hand over his muscled chest and then kisses him. What follows is an eager and enthusiastic bit of making out and groping each other, rather rough and wild, but still letting the underlying deep-seated affection between those two show through. Meanwhile, their slave on the sofa starts playing with himself, soon lubing up the dildo his master gave him and pushing it into his own ass. And judging from the lust-filled expression on his face and the easy way he takes the pretty big sex toy, he obviously has been trained very well. He'd have to be, if the two brothers trust him enough to be their cover for some alone-time in here.";
		say "     Coming up for air after another kiss, Yatur puts his hands on Koghh's sides, gently stroking them as he looks into the other orc's eyes deeply. You can hear him moan 'I love you, little brother', which makes Koghh caress put a caressing hand on his chest and give him a happy smile. This peaceful and caring moment lasts for another few seconds, then Yatur grunts 'Let's fuck!' and puts both his arms around Koghh, gripping his firm buttcheeks tightly as he pulls him close and lifts the large orc. Carrying his bother, Yatur makes a few steps over towards the sturdy bench in the center of the room, then lowers Koghh to sit on it. After quickly untying his lover's loincloth and pulling it aside, the powerful orc warrior puts a hand on Koghh's balls and fondles them for a moment before softly pushing against his chest to make him lie back.";
		say "     [WaitLineBreak]";
		say "     Stretched out on the padded leather of the bench, his firm butt just at the end of it, Koghh lifts and spreads his legs. Hooking both hands under the hollows of his knees, he comfortably holds them up, baring his butthole to Yatur. Aroused at the invitation, the orc quickly kneels down and starts licking, first running his tongue along the crack between Koghh's firm buttcheeks, then starting to push it against his pucker. Moans fill the chamber as Yatur eats his brother out, causing the other orc to writhe in pleasure and drip precum from his hard cock. After several minutes of this, Koghh reaches down to pull his lover's head up, then gives the urgent grunt 'Fuck me. Now! I need you inside me.'";
		say "     Yatur is only too happy to comply, literally tearing his own loincloth off as he quickly takes a kneeling position between Koghh's legs. He lines up his thick orc cock with his brother's hole and thrusts deep, making both of them grunt loudly in lust. Holding on to Koghh's legs, Yatur then starts to really pound into him, creating a slapping noise each time his hips hit the other orc's ass. It's incredibly wild, rough and intense sex without any restraints - just like Koghh likes it, apparently - as he gasps and grunts for Yatur to take him even harder. At one point, when the older orc brother leans over his sibling to lick and play with his nipples, he even gives him a light bite on the right pec, leaving some shallow tooth and tusk impressions in Koghh's skin.";
		say "     [WaitLineBreak]";
		say "     Their coupling eventually culminates when Koghh's moans get louder and louder and build up to a lust-filled scream. Wrapping both his legs around Yatur's hips and pulling him close as he orgasms, Koghh starts blasting many thick spurts of orc cum high into the air to splatter all down all over his chest and face. His brother is only moments behind, as the trembling and flexing muscles in Koghh's ass push him over the edge in short notice, and he pumps quite a massive load deep into the other orc's insides. Still breathing heavily as their orgasms wind down, the two orc warriors give each other a long and loving kiss and just hold each other for a while.";
		say "     Eventually, Yatur raises his head and calls to their decoy slave 'Come her and clean us up, Orbul.' The naked orc breeder on the couch immediately replies 'Yes master'. After quickly popping the last (and biggest) ball of the string of anal beads he's currently playing with into his hole, he then hurries to get to the orc brothers, hungrily lapping up all the cum from Koghh's chest, then sucking clean Yatur's cock. Orbul laps up the crack between the lying orc warrior's buns next, but as he starts to eat Koghh's freshly bred hole, the orc slaver grunts 'No, leave it. I want to keep some of his essence inside me.' Obedient as ever, Orbul pulls back from tonguing his master's hole and gets back to just giving him a tongue-bath, licking up any last traces of cum.";
		say "     [WaitLineBreak]";
		say "     After Orbul finishes cleaning both his masters, the two brothers sit on on of the couches together. While they kiss and caress each other, the slave gets to work jerking himself off and blows his load not too long afterwards. He catches it all in a cupped hand, then reaches between his legs and smears the sticky goop on his crack and butt, providing ample evidence for the 'official' version of what happened in here. Some short while later, Koghh and Yatur give each other a last kiss, then get back into character, loudly praising Orbul's well-trained hole as they unlock the door and lead him from the room.";
	otherwise:
		say "     [line break]";
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";

to say ZebraBreederTransformation:
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc masters Yatur and Mul, and that Mul is carrying a someone over his shoulder too - a male, thoroughly tied-up zebra. Mul grunts to his brother, 'This one will be fun to break in', then plops down his burden on a couch in the room and undoes the main knot of the captive's bindings. Meanwhile Yatur throws the door shut with a slam and locks it, then the two orcs hungrily watch the zebra wiggle out of the ropes around his body and stand up.";
	otherwise:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owners' Yatur and Mul, and that Mul is carrying a someone over his shoulder too - a male thoroughly tied-up zebra. Mul grunts to his brother, 'This one will be fun to break in', then plops down his burden on a couch in the room and undoes the main knot of his bindings. Meanwhile Yatur throws the door shut with a slam and locks it, then the two orcs hungrily watch the zebra wiggle out of the ropes around his body and hurriedly stand up.";
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     Do you want to watch what happens next in the interrogation room?";
	if player consents:
		say "     [line break]";
		say "     You weren't the only one looking around - the zebra guy obviously did the same, getting wide-eyed at seeing the furniture and items in there, plus the numerous cum-stains all around. Frantically looking for a way to escape and finding the only door blocked by his orc captors, he takes on a defensive position with his back to a wall and shouts 'Let me go, you brutish bastards! I'll fight!' Unconcerned with their equine captive's balled fists and shouts, the two orcs just stand at the door relaxedly and Yatur remarks to his brother 'Oh yeah, that one has some spunk. He'll make a great broodmare. Can't wait to knock him up.' As he hears that, the zebra's face shows bafflement, then the nonplussed expression changes to angry annoyance 'Wait - WHAT? Broodmare? Did you two dimblulbs drag me all the way here because you're too stupid to recognize the difference between a male and a female zebra? I - I can give you mares - one for each of you. Just let me back to my herd and they're yours!'";
		say "     The two orcs just chuckle and start walking towards the striped man's position with lust in their eyes. Getting more and more desperate, the zebra shouts 'Okay - two for each. Or three even!' He swings a punch at Yatur as the orc reaches out for him, but the green-skinned brute just catches his fist in one of his large hands with casual ease. Next, the orc draws the zebra into a bear-hug, pinning his arms against his sides with his muscular arms and lifting him off the ground. Looking directly into the zebra's eyes from just a short distance away, the muscled warrior says in an amused tone 'We don't need your weak-ass sluts. I'm gonna knock YOU up and you'll bear many strong orcs for me. You'll see, my little pony.' Giving the impotently struggling zebra guy's butt a lusty grope, Yatur carries him over to the bench in the middle of the room and sets him down on it, then holds him down with his back to the leather padding. Mul quickly fastens some restraints on the equine's arms and legs. All the while, the zebra still pleads, begs and curses to let him go, without getting much attention from the orcs.";
		say "     [WaitLineBreak]";
		say "     Quickly throwing aside their loincloths, the two orc brothers jerk their massive green manhoods and play a bit with their captive, softly slapping the meaty lengths of cock against his body and rubbing them over his short fur. Mul even reaches down to cup the equine slave's balls, gently squeezing them with his large fingers. At first, the zebra pulls on his restraints and tries to avoid their touch, though over time, he can't help but get aroused - as becomes obvious by his own long piece of horseflesh pushing out of his sheath to lie on his stomach. At some point, the pleading and whining from their captive stops completely, replaced by soft moans as his body is touched and stroked.";
		say "     After another minute or two, Mul gives a satisfied grunt and steps to the head-end of the bench, holding out his mighty pole directly over the zebra's face. 'Come on, lick me horsie.' he snaps at their captive in a commanding tone - and is obeyed. Accepting his role, the equine uses his long tongue to give a tentative lick at the orc's hairy balls, followed by another and another. Mul gives a pleased chuckle as the now submissive slave gets to work on him. 'Very nice, pet. Now why don't you...' he says, then starts to coach him on how to worship his full orbs and mighty manhood properly. Meanwhile, Yatur has moved to stand between the zebra's legs and is just smearing some of the copious amount of precum dripping from his cock on the zebra's asshole. He proceeds to massage around the equine slave's back door with his fingers to get him nicely relaxed, then pushes his index-finger in against the zebra's pucker.";
		say "     [WaitLineBreak]";
		say "     The eagerness with which the formerly dominant and resisting zebra stallion licks and sucks Mul's cock and balls while his own ass is being fingered demonstrates the insidious power of the nanite infection once more, as it doesn't just rewrite bodies, but also affects people's minds. Gone is the proud stud with his herd of mares, replaced before your watching eyes with a submissive pony-boy leaking cum on his own chest as his masters use him for their pleasure. It's clear that he's now fully theirs, which prompts the orcs to undo his leather bindings. Freed from the restraints, the zebra puts his hands to good use in stroking Mul's cock and fondling him. At the same time, he raises his legs, spreading them invitingly for Yatur.";
		say "     'Say goodbye to your virginity, my little pony,' Yatur chuckles and lines his thick shaft up with the zebra's pucker. Gripping the striped equine's hips with two large hands, he then presses forward, giving a satisfied grunt as he pushes through his back door, stretching it tight around his invading member. The thick and meaty shaft probing his ass makes the zebra gasp loudly, though as the orc's manhood sinks deeper into his body, pleasant feelings prevail and make him pant in lust. Though even though he's getting many good sensations from being touched in sensitive spots deep inside him, it's still a quite lot to take. A fact that the orc knows too, causing him to move deeper only slowly and with surprising patience, sometimes even stopping for a moment so his fucktoy can get used to it. Some time later, Yatur finally bottoms out inside the zebra, hard shaft buried all the way and his two large cum-factories resting against the slave's skin.";
		say "     [WaitLineBreak]";
		say "     After giving the zebra a moment to get used to the stretching feeling of having a whole foot of hard cock inside his ass, Yatur pulls back and thrusts back in  with a loud grunt - hard and deep, creating a slapping noise as his balls whack against the equine's ass. No wonder he went so slow before, or that'd have ripped the stallion in two! And the orc warrior just keeps on going like that, now taking out all the stops and really pounding into his slave like the big brute he is. The sensations of his thrusts make the zebra moan and howl in lust, loud even though muffled by Mul's cock in his mouth. Strongly aroused by being the first to break in this stallion's very tight hole, it doesn't take all that long until Yatur reaches the limit of his endurance and orgasms, burying his shaft deep in the zebra's ass as he pumps blast after blast of cum into him.";
		say "     Getting filled by Yatur's massive load of orc cum makes the striped slave go wild, shuddering as its special properties push his arousal right over the edge. Bucking his hips, the zebra orgasms, his cock proudly erect and pulsing with blast after blast of cum spraying all over his chest. Totally lost in the sensations going through him, he just lies on the bench and twitches with each pulse, no longer able to consciously suck Mul. Being eager to get his rocks off himself, the orc therefore pulls out of his mouth and quickly jerks himself, gushing his own cum all over his equine pet just moments later.";
		say "     [WaitLineBreak]";
		say "     Standing over their newly broken-in zebra slave, the two orc brothers give each other a grin and high-five. They watch with satisfaction as all the cum on (and in) their fucktoy has a transformative effect, first in a wave of green spreading over his fur to replace all the white parts of his striped pattern, then in four tusks pushing into view along his long muzzle. The two long and two shorter fangs show clearly that his zebra no longer is a herbivore, and as he gasps a moment later, you can see quite a few more sharp teeth in his long muzzle too. With that, the external changes come to a halt, though something just tells you that his internal conversion was far more complete and this stallion's belly will soon swell with Yatur's child.";
		say "     Inspecting and groping the zebra boymare's new form, Mul runs a finger through the cum puddles on his chest, then asks 'There, do you want to go back to your herd now, horsie?' The zebra quickly answers 'No, master. I want to be your slave, your pet. Please keep me - I want you - I need you!' While giving an accepting nod, Mul starts feeding the zebra cum wiped off his chest. As his brother does so, Yatur remarks 'Let's call him Prancer - I like how his ass looks when he moves on those hoofs, and as he seems to be staying that shape, it fits.' Accepting his new name without hesitation, Prancer is allowed to lick their cocks clean and milk out the last drops of cum. Then they lead him from the room, now docilely following after them.";
	otherwise:
		say "     [line break]";
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";

to say ObservationRoomFuck:
	if "Submissive" is listed in feats of player:   [sub players]
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc master Mul and a smaller, less brutish orc - a breeder slave. The mighty orc warrior throws the door shut and walks over to a couch, undoing his loincloth and then letting himself fall into it. He sits there with spread legs and grins as the other orc kneels before him and starts to worship his manhood, gently handling his thick cock and the weighty globes of his balls. Mul leans his head back, grunting and moaning loudly as his obedient slave goes down on him.";
	otherwise:
		say "     Looks like just sitting around in here and waiting really does pay off - as the door to the interrogation room suddenly opens and two persons enter. The first of them reaches out and flips a switch on what you now recognize as a portable and battery-powered spotlight standing against a wall, bathing the room in light, which allows you to recognize your orc 'owner' Mul and a smaller, less brutish orc - a breeder slave. The mighty orc warrior throws the door shut and walks over to a couch, undoing his loincloth and then letting himself fall into it. He sits there with spread legs and grins as the other orc kneels before him and starts to worship his manhood, gently handling his thick cock and the weighty globes of his balls. Mul leans his head back, grunting and moaning loudly as his obedient slave goes down on him.";
	say "     Letting your eyes wander through the room, you find it comfortably equipped with two leather couches along the walls, as well as another of the sturdy fuck-benches you already know from the cells - though this one sports some leather restraints at strategic places. Strewn about the room are quite a few sex toys in various shapes and sizes, and a corner holds a whole pile of lube bottles. The orcs certainly stocked their lair well - they must have ransacked more than one porn store to get all this.";
	say "     [line break]";
	say "     Do you want to watch what happens next in the interrogation room?";
	if player consents:
		say "     [line break]";
		say "     You watch the two men in the other room have oral sex and listen to their moans, until suddenly - a large hand pushes against your back, pinning you against the window, face pressed against the cool glass. As you struggle and try to turn around, your arms are quickly caught and twisted behind your back. From the corner of your eye, you see that it's a pretty big and muscled orc who holds your wrists tightly. He must have entered the observation room while you were busy watching Mul and his breeder. 'I knew I heard something from in here,' a deep voice says into your ear, then continues, 'Do you enjoy watching Orbul please his master? Maybe want to be in his place?' With that the orc grabs your head and makes you look at the two orcs in the other room again, where Orbul by now has the tip of Mul's cock in his mouth and is eagerly sucking on it. Your captor grunts 'They do give a nice show, definitively...'";
		if "Submissive" is listed in feats of player:   [sub players]
			say "     A moment later, you start feeling something big press against your butt - the orc's cock, getting hard as he watches the action in the interrogation room. Lowering his hand from your head to squeeze your butt, the orc says 'Let's have some fun too then - you do want me to fuck you, don't you?' As this plays perfectly into your desires to be dominated and used by such a strong, virile male, you loudly moan yes and rub your ass against his erection. 'Such an eager little slut,' the orc chuckles, then lets go of your arms to allow you to push your pants down. Leaning forward, your shoulder against the one-way mirror, you reach back and spread your cheeks, waiting for the orc warrior to take you. ";
			say "     [WaitLineBreak]";
			say "     You feel the big head of his meaty shaft push against your back door for a moment as your captor smears some of his copious pre-cum on you. Then he uses a finger to rub around your hole before pushing it in slowly, probing your insides with his thick digit. Panting against the window in lust as you're being fingered, you give yourself over to him fully, relaxing your muscles as he soon adds another finger to stretch your passage. Your orc master's touch really gets you going, and by the time he grunts 'Ready to take my cock now?', your [if cocks of player > 0]own erection is hard as rock[otherwise if cunts of player > 0]swollen pussy lips are wet and dripping[otherwise]knees are pretty weak from arousal and anticipation[end if] and you immediately yelp for him to fuck you. Chuckling at such eagerness, the mighty orc warrior lines up his tip with your hole. Then he grips your hips with two large hands and presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
			say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
			say "     [WaitLineBreak]";
			say "     As your master gives you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, you focus again on what's going on in the other room. Looks like Mul is already well into fucking Orbul's well-used hole, with the breeder on his lap and sliding up and down on Mul's thick pole. Any further observations are pushed right out of your mind as your own orc fucker pulls back and thrusts inside again - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought obliterated completely by the feelings of having that thick shaft deep inside you.";
			say "     Everything after that is just a haze of arousal and need, and you can't even remember how long it took for his wild fucking to drive you over the edge, [if cocks of player > 0]spraying your own cum all over the wall under the observation window[otherwise if cunts of player > 0]squirting femcum all over the wall under the observation window[otherwise]trembling and panting against the observation window as you orgasm[end if]. Having your hole tremble and twitch around his orcish member while you come gives your captor the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and drip onto the ground.[mimpregchance]";
			say "     [WaitLineBreak]";
			say "     When you come down from the rush of orgasm, though still buzzed with the pleasant feeling of orc cum in your ass, you see that Mul and Orbul finished too at some point. Leaned back on the couch, the orc warrior how just holds his freshly filled breeder, an arm around his chest as he softly strokes his back. Orbul is resting his head against Mul's broad chest peacefully and his ass is still impaled on his master's cock. Your captor's deep voice says from behind you 'Now that's a real breeder in there. I've tried trading some other guys for him, though the brothers just won't deal.' With a sigh, the orc pulls out of you, then pushes a finger in your slippery hole and makes you gasp by rubbing [if cocks of player > 0]against your prostate[otherwise]your inner walls[end if] 'You know what - I'm just gonna leave you to sneak around in here. Catching you was fun, and I want to do it again sometime... so come back soon, little peeper.' With that, the orc gives you a playfully light swat on the butt, then walks out of the room.";
		otherwise:
			say "     A moment later, you start feeling something big press against your butt - the orc's cock, getting hard as he watches the action in the interrogation room. Lowering his hand from your head to squeeze your butt, the orc says 'Let's have some fun too then - you do want me to fuck you, don't you?' As you refuse and try to pull yourself out of his iron grip on your wrists, the orc twists your arms a bit further, making you whimper in pain. 'Liar. Why else would you be hanging around here to play Peeping Tom. No matter - I'll give you what you need.' The orc grips you by the neck with his other hand for a moment, squeezing a bit to show his power, then growls 'And you'll obey like a good little breeder should if you don't want me to kick your ass. Now put your hands on the glass and bend over.' As the orc lets go a moment later, you rub your bruised wrists, then take position against the one-way mirror. Not much choice otherwise, as you're right in his grasp and this room isn't big enough to fight him properly.";
			say "     [WaitLineBreak]";
			say "     You feel the big head of his meaty shaft push against your back door for a moment as your captor smears some of his copious pre-cum on you. Then he uses a finger to rub around your hole before pushing it in slowly, probing your insides with his thick digit. You wince a bit at the unwanted intrusion, though you can't help but start feeling a pleasant tingle too a moment later. That might have something to do with getting his precum in you. Before long, you're panting against the window in lust as you're being fingered, doing your best to relax your muscles when he adds another finger to stretch your passage. Your orc captor's touch really gets you going, and by the time he grunts 'Ready to take my cock now?', your [if cocks of player > 0]own erection is hard as rock [otherwise if cunts of player > 0]swollen pussy lips are wet and dripping [otherwise]knees are pretty weak from arousal [end if]and you hesitantly ask for him to fuck you. Chuckling at how quickly your reluctance faded, the mighty orc warrior lines up his tip with your hole. Then he grips your hips with two large hands and presses forward, giving a satisfied grunt as he pushes through your back door, stretching it tight around his invading member.";
			say "     It's big - pretty big and thick and meaty, making you gasp from the initial penetration. But as the orc's shaft sinks deeper into your body, pleasant feelings prevail as its sides rub against your inner walls, touching sensitive spots deep inside you. Even though you relaxed as much as you could, it's still quite a lot to take - which the orc seems to know very well, moving deeper only slowly and with surprising patience, sometimes even stopping for a moment so you can get used to it. As he does so, you feel something warm and wet leak into you from the tip of his cock, accompanied by a soothing feeling of well-being. That must be more of his precum - feels a bit strange, but good, and it certainly helps taking his thick meat. Some time later, he finally bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin.";
			say "     [WaitLineBreak]";
			say "     As your captor gives you a moment to get used to the stretching feeling of having a whole foot of hard cock inside your ass, you focus again on what's going on in the other room. Looks like Mul is already well into fucking Orbul's well-used hole, with the breeder on his lap and sliding up and down on Mul's thick pole. Any further observations are pushed right out of your mind as your own orc fucker pulls back and thrusts inside again - hard and deep, creating a slapping noise as his hips hit your ass. No wonder he went so slow before, or that'd have ripped you in two! And he just keeps on going like that, now taking out all the stops and really pounding into you like the big brute he is. The sensations of his thrusts make you moan and howl in lust, conscious thought obliterated completely by the feelings of having that thick shaft deep inside you.";
			say "     Everything after that is just a haze of arousal and need, and you can't even remember how long it took for his wild fucking to drive you over the edge, [if cocks of player > 0]spraying your own cum all over the wall under the observation window[otherwise if cunts of player > 0]squirting femcum all over the wall under the observation window[otherwise]trembling and panting against the observation window as you orgasm[end if]. Having your hole tremble and twitch around his orcish member while you come gives your captor the last little push he needed to reach his own climax, and with a loud and very satisfied grunt, the orc starts blasting a massive load of cum into your innermost depths. He keeps fucking you as he comes, clearly revelling in the feeling of his seed squishing around his thrusting shaft inside your body. With the amount of cum he pumps into you, quite a bit squirts out around his cock as he does so, to run down the inside of your legs and drip onto the ground.[mimpregchance]";
			say "     [WaitLineBreak]";
			say "     When you come down from the rush of orgasm, though still buzzed with the pleasant feeling of orc cum in your ass, you see that Mul and Orbul finished too at some point. Leaned back on the couch, the orc warrior how just holds his freshly filled breeder, an arm around his chest as he softly strokes his back. Orbul is resting his head against Mul's broad chest peacefully and his ass is still impaled on his master's cock. Your captor's deep voice says from behind you 'Now that's a real breeder in there. I've tried trading some other guys for him, though the brothers just won't deal.' With a sigh, the orc pulls out of you, then pushes a finger in your slippery hole and makes you gasp by rubbing [if cocks of player > 0]against your prostate[otherwise]your inner walls[end if] 'You know what - I'm just gonna leave you to sneak around in here. Catching you was fun, and I want to do it again sometime... so come back soon, little peeper.' With that, the orc gives you a playfully light swat on the butt, then walks out of the room.";
	otherwise:
		say "     [line break]";
		say "     Flipping the little switch for the microphones, you cut off the sound from the other room and turn your mind to other things, ignoring the one-way mirror completely.";

to say BoghrimSlaveDeal:
	if BoghrimMet is 0:
		say "     A really big and powerful orc walks into your line of sight, effortlessly carrying a naked human over his shoulder. The man is very well built and muscular, but compared to the larger orc, he looks almost like a twink-boy, explaining how he ended up in this position. Noticing your eyes on his prize, the orc turns to you and grunts 'A new guy, hm? I'm Boghrim, and this is...' His brows draw together as he draws a blank, then gives his captive a light slap on the ass and asks 'What's your name anyways?', getting a somewhat groggy and slurred 'Jason' as an answer. 'There you have it. My newest slave boy, Jason. A bit feisty at first - but that changed right quick when he got a proper filling of orc cum. You wouldn't believe how tight he was when I fucked him the first time after catching him.' Clearly in a good mood and willing to show off, Boghrim pulls apart Jason's cheeks and rubs a thick finger over the man's cum-dripping hole, then pushes it inside, provoking a lust-filled moan from the human. 'You know, being a new brother and all... I'll offer you a deal. You could be the second orc ever to pound this little slut. Ride that butt before it gets too stretched. Give me some chow and he's yours for a while. Deal?'";
		say "     [line break]";
		if carried of food is 0:
			say "     As you don't actually have any food on you, there is little choice but declining the offered trade. 'Your loss,' Boghrim grunts, then hefts his load and starts walking. He calls over his shoulder 'I'll be in the main hall if you change your mind...'";
		otherwise if cocks of player is 0:
			say "     As you don't currently have a cock, you have little choice but declining the offered trade. Who knows how Boghrim would react if he learned you're not a 'real' orc. Giving a shrug at your refusal, the green man grunts, 'Your loss,' then hefts his load and starts walking. He calls over his shoulder 'I'll be in the main hall if you change your mind...'";
		otherwise:
			say "     Do you agree to the orc's terms and pay for sex with Jason with some food?";
			if player consents:
				decrease carried of food by 1;
				say "     [line break]";
				say "     Digging a package of food out of your pack, you hold it out to Boghrim, who sets Jason down to stand on shaky feet while his orc master takes your offer and starts to munch on it. The human slave sways a bit and looks groggy, a smear of cum on the chin of his handsome face. It's clear that he has been fed at least one load of potent orc cum in addition to what's still dripping out of his hole, making him an easy to handle slave with the intoxicating and addictive effects of orc sperm.";
				say "     Having paid good food for his service, you don't waste any time and quickly strip. Then you step up to the athletic man, pulling his head to yours to share a hungry kiss and taste a trace of the nectar-like cum on his lips. Eager to sink your bone into this docile slave-boy, you bodily pick him up, holding Jason against your broad orc chest to lower him on top of your proudly standing erection. Given the amount of cum in him, it's pretty easy to just slide in, pushing past the somewhat puffy-looking pucker with your cockhead, then stretching it as you go deeper. And Boghrim is right - the human man's hole really is delightfully tight and gripping.";
				say "     [WaitLineBreak]";
				say "     The young man gasps in lust as you enter him fully, rubbing sensitive spots deep inside his ass with your hard shaft. He begins to moan and pant as you start to fuck him, lifting him with both hands on those firm, round globes of his ass, then pulling him down as you thrust your hips. Whatever the guy's orientation was before all this, it's clear that he's getting off quite a bit from being taken by you now - the hard cock standing erect between the two of you and smacking against your abs doesn't lie. Raising a hand to grab the back of his head, you pull his lips to yours again and give him a deep kiss, your tongue wrestling with his while your cock is balls deep up the man's ass.";
				say "     Coming back up for air, you look into Jason's eyes and ask if he likes feeling of a powerful orc inside him. Just as he opens his mouth to reply, you grind your hips against him once more, making him throw his head back as he almost shouts an aroused moan. Grinning broadly as you watch him get control of himself again, you can see it in his eyes - the moment where the man decides to accept his fate as an orc sex pet. Not that being all but drunk on orc cum doesn't help his decision along, but there's an underlying, decisive note in his voice as he pants 'Yeah... *unngh* Harder! Fuck my ass... master!'";
				say "     [WaitLineBreak]";
				say "     Hearing those words, you feel your arousal flare up even higher - as your inner orc beats his chest and gives a satisfied roar at taming a slave... and an almost perfect one too. Jason being a magnificent stud, strong and muscular, with as tight an ass as you have around your cock right now - all that wakes the need to posses him inside you, as well as the strong urge to pump your load into him and knock him up. While you push your lips against the now eagerly participating man's and hungrily make out with him, your hips move faster and faster, pounding his ass in a wild and untamed mating.";
				say "     Not much later, you feel your balls tighten and thrust all the way into Jason for the final time, then grunt deeply as the first big spurt of cum blasts deep into his ass. Holding the muscular man tight against your chest, you grope his ass and fill him up with more and more of your seed, mixing it with Boghrim's earlier deposit. Satisfying his current orcish master and getting another injection of hot cum that spreads a warm and fuzzy feeling inside him is enough to drive Jason right over the edge with you. His arms tighten around your chest and he leans his head against your pecs, moaning loudly, then you feel his spurts of cum splash against your abs, painting your green skin with white stripes.";
				say "     [WaitLineBreak]";
				say "     Catching your breath after the last few spurts of cum ebb, you look down at the human in your arms, worn-out as he is, but still with the eager 'ready to please' expression on his face. Oh, how tempted you are to posses him, take him as yours from Boghrim now... but there's just no way you could, not now, exhausted as you are and given the sheer size of the other orc. To distract yourself from those thoughts, you wipe Jason's cum from your chest and feed it to him, with the sexy pet suckling on your fingers in his desire to get it all.";
				say "     As your hard cock eventually softens enough to slip out of Jason's butt on its own, accompanied by a short gush of orc cum, you give the man a last kiss and set him down. Immediately taking his property, Boghrim throws Jason back over his shoulder, then says 'Fine little slut, isn't he?' He chuckles at the clear tone of envy in your voice as you can't help but agree, then walks off while using one thick finger to play with the young man's hole.";
			otherwise:
				say "     [line break]";
				say "     Declining the offered trade, you watch Boghrim give a shrug, then hear him grunting 'Your loss.' Next, he hefts his load and starts walking on, calling over his shoulder as he does so, 'I'll be in the main hall if you change your mind...'";
		now BoghrimMet is 1;
	otherwise:
		say "     You meet Boghrim again - the monstrously powerful orc that stands out even among these muscled brutes. And walking just beside him is Jason, the young man he had freshly captured the last time. Surprisingly he's still exactly that - a muscular and ruggedly handsome human, untouched by any sign of green skin or other transformation. Like before, he's naked and draws your eye with that perfectly shaped body - oh wait, not totally naked... there's a black, spiked collar around his neck now. Seeing you ogle his slave, Boghrim says 'Pretty little thing, hm? He's even more valuable than I thought... you're looking at a genuine transformation-immune human. Believe me, with all the cum he's had blasted into him, anyone else would be a full-breeder now and popping out babies left and right.' Drawing his slave closer, Boghrim fondles his ass and body, making Jason pant in lust as he feels his pucker being teased by a large finger.";
		say "     'The guys have been asking me to sell him - but no way I'm gonna do that! It's far too much fun to pound that tight ass,' Boghrim says, then addresses Jason, 'Isn't it, pet?' The slave answers immediately, 'Yeah! Er.. yes master! It feels so good!' And from the tone of his voice, you can see that he really means it, thoroughly happy in his role as Boghrim's pussyboy. Grunting in satisfaction, the orc turns back to you. 'With everyone hungry for a piece of that ass, I've been making a boatload just renting him out. Say, wanna have a go at him too? Just one packet of food and he's yours - for a time.";
		if carried of food is 0:
			say "     As you don't actually have any food on you, there is little choice but declining the offered trade. 'Your loss,' Boghrim grunts, then starts walking away, accompanied by his slave. He calls over his shoulder 'I'll be in the main hall if you change your mind...'";
		otherwise if cocks of player is 0:
			say "     As you don't currently have a cock, you have little choice but declining the offered trade. Who knows how Boghrim would react if he learned you're not a 'real' orc. Giving a shrug at your refusal, the green man grunts, 'Your loss,' Boghrim grunts, then starts walking away, accompanied by his slave. He calls over his shoulder 'I'll be in the main hall if you change your mind...'";
		otherwise:
			say "     Do you agree to the orc's terms and pay for sex with Jason with some food?";
			if player consents:
				decrease carried of food by 1;
				say "     [line break]";
				say "     Digging a package of food out of your pack, you hold it out to Boghrim, who accepts it with a grin and says 'Pleasure doing business with you. Jason, take care of him!' Ready and willing to serve, the muscular slave walks up to you and shows off his body for your pleasure. In no time at all, the awesome little show makes you hard as rock, and Jason starts undoing your pants to free your orcish cock. Pushing them down, he bends over to bring his head to your crotch, then wraps his lips around the tip of your shaft, suckling on it softly. The slave gives you a skillfull blowjob, getting you all hot and bothered in just a short while, then suddenly he pulls off and looks up at you with an eager expression. Using a hand to wipe off the copious pre-cum that is leaking from your slit, he brings it to his own ass, then proceeds to lube his own ass with it. Standing up, he meets your eyes with an eager expression and moans 'Fuck me, please.'";
				say "     Eager to sink your bone into this docile slave-boy, you bodily pick him up, holding Jason against your broad orc chest to lower him on top of your proudly standing erection. Lubed and well-used to this by getting pounded by many an orc, it's pretty easy to just slide in, pushing past the somewhat puffy-looking pucker with your cockhead, then stretching it as you go deeper. Despite all this, the human man's hole still is delightfully tight and gripping. He's learned well how to please his masters...";
				say "     [WaitLineBreak]";
				say "     The young man gasps in lust as you enter him fully, rubbing sensitive spots deep inside his ass with your hard shaft. He begins to moan and pant as you start to fuck him, lifting him with both hands on those firm, round globes of his ass, then pulling him down as you thrust your hips. Whatever the guy's orientation was before all this, it's clear that he's getting off quite a bit from being taken by you now - the hard cock standing erect between the two of you and smacking against your abs doesn't lie. Raising a hand to grab the back of his head, you pull his lips to yours and give him a deep kiss, your tongue wrestling with his while your cock is balls deep up the man's ass.";
				say "     Coming back up for air, you look into Jason's eyes and ask if he likes getting fucked like this the feeling of a powerful orc inside him. Just as he opens his mouth to reply, you grind your hips against him once more, making him throw his head back as he almost shouts an aroused moan. Grinning broadly as you watch him get control of himself again, you can see it in his eyes - the arousal and lust at being a willing slave, owned by another to serve for his pleasure. This man has really grown into the role and is a content and obedient slave, happy as he is now. The needy note in his voice speaks volumes as he pants 'Yeah... *unngh* Harder! Fuck my ass master!'";
				say "     [WaitLineBreak]";
				say "     Hearing those words, you feel your arousal flare up even higher - as your inner orc beats his chest and gives a satisfied roar at fucking such a fine slave. Jason being a magnificent stud, strong and muscular, with as tight an ass as you have around your cock right now - all that wakes the need to posses him inside you, as well as the strong urge to pump your load into him and knock him up. While you push your lips against the eagerly participating man's and hungrily make out with him, your hips move faster and faster, pounding his ass in a wild and untamed mating.";
				say "     Not much later, you feel your balls tighten and thrust all the way into Jason for the final time, then grunt deeply as the first big spurt of cum blasts deep into his ass. Holding the muscular man tight against your chest, you grope his ass and fill him up with more and more of your seed, mixing it with Boghrim's earlier deposit. Satisfying his current orcish master and getting another injection of hot cum that spreads a warm and fuzzy feeling inside him is enough to drive Jason right over the edge with you. His arms tighten around your chest and he leans his head against your pecs, moaning loudly, then you feel his spurts of cum splash against your abs, painting your green skin with white stripes.";
				say "     [WaitLineBreak]";
				say "     Catching your breath after the last few spurts of cum ebb, you look down at the human in your arms, worn-out as he is, but still with the eager 'ready to please' expression on his face. Oh, how tempted you are to posses him, take him as yours from Boghrim now... but there's just no way you could, not now, exhausted as you are and given the sheer size of the other orc. To distract yourself from those thoughts, you wipe Jason's cum from your chest and feed it to him, with the sexy pet suckling on your fingers in his desire to get it all.";
				say "     As your hard cock eventually softens enough to slip out of Jason's butt on its own, accompanied by a short gush of orc cum, you give the man a last kiss and set him down. Immediately taking his property, Boghrim throws Jason back over his shoulder, then says 'Fine little slut, isn't he?' He chuckles at the clear tone of envy in your voice as you can't help but agree, then walks off while using one thick finger to play with the young man's hole.";
			otherwise:
				say "     [line break]";
				say "     Declining the offered trade, you watch Boghrim give a shrug, then hear him grunting 'Your loss,' Boghrim grunts, then starts walking away, accompanied by his slave. He calls over his shoulder 'I'll be in the main hall if you change your mind...'";
			
Section 3 - NPCs

Boghrim is a man.  Boghrim is in Main Hall.
The description of Boghrim is "[BoghrimDesc]".
The conversation of Boghrim is { "Mew!" }.

to say BoghrimDesc:
	say "     Boghrim is flat out the biggest, toughest-looking orc warrior you've seen yet. With his towering stature and rippling muscles under his green skin, you certainly wouldn't want to fight him - as in, ever. Even the strongest of the other orcs in the drinking hall have more than a little respect for him, explaining why the large and comfortable black leather couch he occupies stands on a low, but expansive platform built in one corner of the big room. It's clear that this orc is the established boss here. Besides him on the sofa, you can see a naked orc breeder, always ready to hand his master a drink from the well-laden table to the side, and kneeling on the floor between Boghrim's legs is Jason, the young man you saw the orc bring in before. The human now wears a spike-studded black leather collar and is worshiping his owner's cock and balls, slowly licking and stroking them.";

instead of sniffing Boghrim:
	say "     He's got an attractive male scent, with slight undertones of cum and sweat that make him appear even more manly somehow.";
	
instead of conversing the Boghrim:
	say "[line break]";
	say "What do you want to talk with Boghrim about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Him";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Boghrim's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jason";
	now sortorder entry is 2;
	now description entry is "Ask if you can have some fun with Jason";
	[
	choose a blank row in table of fucking options;
	now title entry is "Sex";
	now sortorder entry is 3;
	now description entry is "Talk about sex with Boghrim";
	sort the table of fucking options in sortorder order;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fighting";
	now sortorder entry is 4;
	now description entry is "Talk about fighting with Boghrim";
	sort the table of fucking options in sortorder order;
	]
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
				if (nam is "Him"):
					say "[BoghrimTalk1]";
				if (nam is "Jason"):
					say "[BoghrimTalk2]";
				if (nam is "Sex"):
					say "[BoghrimTalk3]";
				if (nam is "Fighting"):
					say "[BoghrimTalk4]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the blue oni, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
			
to say BoghrimTalk1:   [talk about him]
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     'So you want to hear some stories, new guy? Well, why not... plant your ass on the couch.' Boghrim says, nodding to the free spot next to him. After you sit down, he waves one of his big hands to indicate the room before you, with its drinking, fighting and fucking orcs. 'Before the change, this was a police station. You know, arrogant pigs just coming along and snatching people from their homes, then locking them up just because they try to make a bit of money on the streets. Ha - now the strong rule... and no one is stronger than us orcs!'";
		-- 2:
			say "     'So you want to hear some stories, new guy? Well, why not... plant your ass on the couch.' Boghrim says, nodding to the free spot next to him. After you sit down, he waves one of his big hands to indicate the hallway to the east and the cell block it leads to. 'I was the first, you know - after they threw me behind bars because of 'assault'. Hmph - that guy asked to have his teeth knocked out. And legs broken. Anyways, there I was in the cell and suddenly, I felt a burning in every bone, every muscle. I collapsed, screaming from all the pain, which drew Sergeant Lawrence to come running and unlock it to check on me...'";
			say "     Boghrim's eyes take on a dreamy look for a moment, clearly revelling in the memory of what came next. Suddenly, he grabs the orc breeder sitting next to him and draws him to lie over his lap. He gives the smaller orc a slap on the butt, then runs a finger up and down his crack before pushing it up his asshole. 'Ah, I think I'll let someone else explain what went down. Tell him, Lawrie,' Boghrim chuckles, addressing the moaning breeder he's fingering. 'Uuuhng... yes! AaaahhhH!' the man gasps as his owner brushes against his prostate, then he begins to haltingly talk. 'The prisoner... my master... he became green and bigger and bigger. I was afraid and tried to run, but he grabbed the door as I wanted to close it and... I couldn't move it an inch against his strength. His other hand got me by the neck and I was pulled into the cell, then... he fucked me, fucked me so good. Gave me his seed and made me his.'";
			say "     [WaitLineBreak]";
			say "     The powerful orc takes over again at that point, idly playing with the former Sergeant Lawrence's ass while talking to you. Accompanied by the big and small gasps and moans from the transformed policeman, Boghrim is all too happy to tell you how he unlocked the other cell, letting out two other men 'unjustly behind bars' and they gang-banged their captive. 'We were so incredibly horny at that moment that we didn't even think about trying to escape. By the time I got the whole rush of lust from the change out of my system, Lawrie was dripping cum from all holes and already going green - just like my buddies. With many patrols having been sent out to deal with all the crazy shit starting up that day, it was easy after that to overpower the rest still here. What man can stand against three orc warriors, after all. And even better, the police piggies came back in dribs and drabs later, often frightened and hurt, making it a cakewalk to just overwhelm em one by one. Every one of us orcs ended up with a nice flock of breeders that day...'";
		-- 3:
			say "     'So you want to hear some stories, new guy? Well, why not... plant your ass on the couch.' Boghrim says, nodding to the free spot next to him. After you sit down, he slaps his chest lightly with a big hand, then explains, 'I was a businessman before all this, you know. I had money, people needed money, so I lent em some. But of course, there's always some bums who don't plan on ever paying you back, so I had to make an example or two. A black eye works wonders, and if you break some legs, the other lenders almost fall over each other to pay you.' Grinning as he lets his gaze wander sees two orcs head-butting each other, multiple times in a row, Boghrim continues 'Too bad money is worthless these days, because with that crew of enforcers, I could just rake it in. But then, who needs money if you can just take what you want.' Finishing that sentence, the powerful orc looks down to his human slave Jason, still kneeling between his legs and lapping away at the orc's balls.";

to say BoghrimTalk2:    [talk about the Jason]
	say "     Boghrim chuckles as you ask about Jason and directs the human to stand up and spin around. 'So you want to bang my little slave-boy? That'll cost you a packet of food, but trust me - it's well worth it...'";
	if carried of food is 0:
		say "     As you don't actually have any food on you, there is little choice but declining the offered trade. 'Your loss,' Boghrim grunts, giving a shrug. ' You know where to find him, if you change your mind...'";
	otherwise if cocks of player is 0:
		say "     As you don't currently have a cock, you have little choice but declining the offered trade. Who knows how Boghrim would react if he learned you're not a 'real' orc. Giving a shrug at your refusal, the green man grunts, 'Your loss,' accompanied by a shrug. 'You know where to find us, if you change your mind...'";
	otherwise:
		say "     Do you agree to the orc's terms and pay for sex with Jason with some food?";
		if player consents:
			decrease carried of food by 1;
			say "     [line break]";
			say "     Digging a package of food out of your pack, you hold it out to Boghrim, who accepts it with a grin and says 'Pleasure doing business with you.' Handing the food to his orc breeder attendant, Boghrim nods to the free end of the sofa. 'Plant your ass and have fun,' he continues, then pulls his human slave's head up from where he was licking the orc's balls and tells him 'Jason, take care of him!' Ready and willing to serve, the muscular slave stands up and walks to where you flop down on the couch, then gives you a nice lap-dance, showing off a very nice body and wiggling his shapely booty at you. In no time at all, the awesome little show makes you hard as rock, and Jason starts undoing your pants to free your orcish cock. Pushing them down, he bends over to bring his head to your crotch, then wraps his lips around the tip of your shaft, suckling on it softly.";
			say "     The slave gives you a skillfull blowjob, getting you all hot and bothered in just a short while, then suddenly he pulls off and looks up at you with an eager expression. Using a hand to wipe off the copious pre-cum that is leaking from your slit, he brings it to his own ass and proceeds to lube his hole with it. Standing up, he meets your eyes with an eager expression and moans 'Fuck me, please.' Eager to sink your bone into this docile slave-boy, you wave him closer, then direct him to climb on your lap. Quickly moving to straddle your hips, the sexy man's cock pokes you in the abs a moment later as he leans down to meet your lips. You have some fun wrestling the eager sex-pet's tongue with yours, then embrace and lift him a bit, holding Jason against your broad orc chest to lower him on top of your proudly standing erection. Lubed and well-used to this by getting pounded by many an orc, it's pretty easy to just slide in, pushing past the somewhat puffy-looking pucker with your cockhead, then stretching it as you go deeper. Despite all this, the human man's hole still is delightfully tight and gripping. He's learned well how to please his masters...";
			say "     [WaitLineBreak]";
			say "     The young man gasps in lust as you enter him fully, rubbing sensitive spots deep inside his ass with your hard shaft. He begins to moan and pant as you start to fuck him, lifting him with both hands on those firm, round globes of his ass, then pulling him down as you thrust your hips. Whatever the guy's orientation was before all this, it's clear that he's getting off quite a bit from being taken by you now - the hard cock standing erect between the two of you and smacking against your abs doesn't lie. Raising a hand to grab the back of his head, you pull his lips to yours and give him a deep kiss, your tongue wrestling with his while your cock is balls deep up the man's ass.";
			say "     Coming back up for air, you look into Jason's eyes and ask if he likes getting fucked like this the feeling of a powerful orc inside him. Just as he opens his mouth to reply, you grind your hips against him once more, making him throw his head back as he almost shouts an aroused moan. Grinning broadly as you watch him get control of himself again, you can see it in his eyes - the arousal and lust at being a willing slave, owned by another to serve for his pleasure. This man has really grown into the role and is a content and obedient slave, happy as he is now. The needy note in his voice speaks volumes as he pants 'Yeah... *unngh* Harder! Fuck my ass master!'";
			say "     [WaitLineBreak]";
			say "     Hearing those words, you feel your arousal flare up even higher - as your inner orc beats his chest and gives a satisfied roar at fucking such a fine slave. Jason being a magnificent stud, strong and muscular, with as tight an ass as you have around your cock right now - all that wakes the need to posses him inside you, as well as the strong urge to pump your load into him and knock him up. While you push your lips against the eagerly participating man's and hungrily make out with him, your hips move faster and faster, pounding his ass in a wild and untamed mating.";
			say "     Not much later, you feel your balls tighten and thrust all the way into Jason for the final time, then grunt deeply as the first big spurt of cum blasts deep into his ass. Holding the muscular man tight against your chest, you grope his ass and fill him up with more and more of your seed, mixing it with Boghrim's earlier deposit. Satisfying his current orcish master and getting another injection of hot cum that spreads a warm and fuzzy feeling inside him is enough to drive Jason right over the edge with you. His arms tighten around your chest and he leans his head against your pecs, moaning loudly, then you feel his spurts of cum splash against your abs, painting your green skin with white stripes.";
			say "     [WaitLineBreak]";
			say "     Catching your breath after the last few spurts of cum ebb, you look down at the human in your arms, worn-out as he is, but still with the eager 'ready to please' expression on his face. Oh, how tempted you are to posses him, take him as yours from Boghrim now... but there's just no way you could, not now, exhausted as you are and given the sheer size of the other orc. To distract yourself from those thoughts, you wipe Jason's cum from your chest and feed it to him, with the sexy pet suckling on your fingers in his desire to get it all.";
			say "     As your hard cock eventually softens enough to slip out of Jason's butt on its own, accompanied by a short gush of orc cum, you give the man a last kiss and let him get up. Calling his slave over to him, Boghrim gives Jason's balls a rewarding fondle as he says 'That's a good boy.' Then he reaches out to grab the young man by the shoulder, pressing down on it to make him kneel, and pulls his head against his crotch. As Jason starts to lap away at his owner's balls, Boghrim says to you 'Fine little slut, isn't he?' He chuckles at the clear tone of envy in your voice as you can't help but agree, then leans back and enjoys the human playing with his full, hairy orbs.";
		otherwise:
			say "     [line break]";
			say "     Giving a shrug at your refusal, the green man grunts, 'Your loss,' accompanied by a shrug. 'You know where to find us, if you change your mind...'";

to say BoghrimTalk3:     [talk about y]
	say "     ";

to say BoghrimTalk4:     [talk about x]
	say "     ";
	
instead of fucking Boghrim:
	say "[line break]";
	if cocks of player is 0 or cockname of player is not "Orc Warrior" or player is not pure:
		say "     You're currently not quite 'man enough' to have sex with Boghrim. Brazenly approaching the mighty orc right in the middle of the drinking hall and under the eyes of the gathered orcs... seems something that only a true orc warrior would do - which you're not... right now.";
	otherwise:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Get fucked";
		now sortorder entry is 1;
		now description entry is "Ask the orc leader to fuck you";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 2;
		now description entry is "Ask if you can fuck Boghrim";
		[]
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
					if (nam is "Get fucked"):
						say "[BoghrimSex1]";
					if (nam is "Fuck him"):
						say "[BoghrimSex2]";
					wait for any key;
			otherwise if calcnumber is 100:
				say "Break off the conversation?";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the orc boss, shaking your head slightly as he gives a questioning look.";
					wait for any key;
				otherwise:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			otherwise:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		clear the screen and hyperlink list;

to say BoghrimFirstFuck:
	say "     The mighty orc grunts in satisfaction, then gives Jason another quick slap on the bare butt and says, 'Get up, you little slut - we're making this a private party now.' That said, he stands up himself and, without even bothering to put on his loincloth, leads his naked slave and yourself through the drinking hall, his thick prick proudly dangling between his legs. Soon, you're walking up a set of stairs up to the second floor and into the station chief's conference room. Like the rest of the station, things have been rearranged in there quite a bit, as there is no sign of any table or even chairs... instead, the room holds a mightily big, round fuck-pad of a bed, combined with piles of loot and a top of the line stereo system. Moving over to switch it on, Boghrim gives you a bragging grin as the beat of punk music vibrates in your bones for a second, then is turned down to the level of background music.";
	say "     While his master was setting the right atmosphere for some hot and heavy sex, Jason already sunk to his knees in front of you and undid your pants. Now he's looking up at you, an eager 'use me' expression on his face - which is something you just can't resist, holding up your hard prick and guiding the submissive human to take it in his mouth. And oh does he do a good job with that. Jason just slides those sexy lips up and up your shaft, going on to deep-throat you till his nose is buried right in your pubes - damn, Boghrim trains his bitches well! As Jason starts to bob up and down on your manhood, the broad-shouldered shape of the orc boss steps up beside you and his large hand slides down your back to tightly squeeze your right buttock.";
	say "     [WaitLineBreak]";
	say "     You can feel Boghrim's hot breath against your cheek as he leans in and licks your face, then speaks in a lusty murmur, 'Yeah, you like that pretty little pink-skinned slut's lips, don't you? But there's something you'll like even more...' That said, the orc takes hold of his long and impressively thick erection, slapping it against your thigh with a meaty slap. 'You wanted this and now you're gonna have it! Get on the bed, both of you!' As Jason pulls of your manhood with a little slurp and happily jumps on the bed, your eyes are drawn to the shapely butt on him and his well-sized penis (for a human, that is).";
	say "     [line break]";
	say "     What kind of fun do you want to have with Boghrim's favorite slave as the orc himself fucks you? Sink your shaft balls-deep into the muscular guy (Y) or share a blowjob with him in the typical 69 position (N)?";
	if player consents:
		say "     [line break]";
		say "     Climbing on the bed behind Jason, you snake an arm around his chest and pull him against your chest, then stretch around to give him a deep and hungry kiss that goes on and on. After exploring the willing slave's mouth with your tongue a bit and letting your hands wander over his smooth-skinned muscular form, you give Jason a sudden shove that has him fall forwards onto the soft sheets. Pouncing the human before he can react in any way, you hold him down as he is with a hand on his broad back, face pressed into the soft sheets, while your other hand guides your prick to rub between his cheeks. Being such a well-trained butt-slut, the young man can't help raise his bubble butt for you to mount, loudly moaning, 'Yes please! Take me deep! I need it!'";
		say "     More than willing to oblige the subby human, you immediately set your cockhead at his opening and thrust deep, sinking more than half your erection into him in one go. Jason just gives an aroused gasp at being mounted like this - unsurprising, as he's used to being taken roughly by horny orcs... as evidenced by the copious amounts of cum you feel around your member, squishing around in his asshole and lubing your way. You bottom out in the young man and hold still for a second to revel in the feeling of his stretched chute around your shaft, then start fucking him with sharp little thrusts that make your hips hit his ass with satisfying slaps.";
		say "     [WaitLineBreak]";
		say "     You can feel the mattress shift as Boghrim gets on the bed too, moving up behind and looming at the edge of your vision as a broad-shouldered green shape. 'Yeah, fuck that slut! Fuck him like only an orc can!' you can hear from him, followed by, 'I'm gonna enjoy taking a real man for once.' With that, he gets up close to you, wrapping his strong arms around your chest from behind, making his massive shaft poke you in the back hotly. Large fingers tease your nipples for a second, then Boghrim's hand slides between the two of you, grasping his member and pressing it against your quivering pucker. He inches his hips forward slowly, until your opening finally yields to his thick shaft, stretching wide as the orc's cockhead sinks into your body.";
		say "     Boghrim's manhood feels amazing inside your hole, filling it very nicely with its impressive girth. Combining the sensations of him bumping all the right spots with that thick piece of man-meat with feeling the mighty orc's strong arms holding you... gets your own erection get even harder inside Jason. Then the orc boss pulls back a bit before thrusting deep into you, giving a deep and lusty grunt as his hips meet your cheeks with a resounding slap that is immediately followed by an aroused gasp from both you and Jason. What follows is a wild threesome of rough orc sex, with Boghrim fucking you hard and deep, really pounding into you from behind - which at the same time pushes your own erection again and again into the ecstatically whimpering human slave's upturned ass.";
		say "     [WaitLineBreak]";
		say "     You don't know how long your coupling takes, three sweaty bodies moving in unison to the beat of a fast-paced selection of punk-rock songs, but one thing is sure - you wanna do it again, and soon! After a breathtaking time of pounding the willing butt-slut under you while taking it from the biggest and baddest orc there is, you eventually reach the point of no return and roar out loud as an orgasm crashes over you like a wave. Hammering into Jason all the way and pushing him deep into the soft expanse of the round bed, you fulfill your body's imperative to breed the little slut and blast away with a massive load of rich, thick orc cum, pulsing through your shaft and deep into his insides.";
		say "     Reaching your climax pushes your two partners over the edge a moment later too - Jason, from the sensations of feeling all of your potent seed being pumped into him and a slave's delight at having pleased his masters, and Boghrim, from the tightness of your hole as it twitches and flexes with each spurt of your cum. The mighty orc gives a lust-fuelled bellow, arms tightening around your body as he possessively clutches you to his chest, then as the first blast of his seed splashes into you, he sinks his canines into the curve of your neck in a shallow bite. Between the high of your own orgasm and Boghrim's cum having its effect on you, the pain of being chomped on barely registers in your mind - and he didn't really try to hurt you either, just a shallow bite in the throes of passion - though at least his long tusks will surely leave a mark.";
		say "     [WaitLineBreak]";
		say "     As spurt after spurt of the big orc's cum fills you and Boghrim slowly winds down, he starts to loosen his grip on you and after a few more half-grunted pants, he says, 'Fuck yeah! You can definitively come back anytime and I'll fuck you good! Bitches like Jason are great, but this -', he grips your firm asscheeks with both hands and gives em a tight squeeze, '- is a real man's butt, worthy of my hard shaft!' Looking down and noticing the bite-marks he left on your shoulder, the orc licks over them with a slow swipe of his broad tongue, then adds, 'Bear these marks with pride - you're the first guy I fucked that I didn't take as a slave afterwards.'";
		say "     Waiting some time longer till the last little spurt of his load is deposited deep inside your hole, the orc pulls out with a wet slurp and moves kneel beside you on the bed. Giving you a little poke in the side with his elbow and a wide grin, he add with a chuckle, 'Watch this.' Then Boghrim bellows, 'Clean us up, slave!', which results in Jason almost jumping off the bed... or well, at least instantly coming to stand on his feet from the sudden fright. The panting young man then kneels down immediately and goes down on his master, slurping the remnants of his load up from the orc's shaft and lapping at his pubes. After Boghrim has been cleaned of cum, Jason moves on to you, licking up your own load before getting in position to eat his master's cum out of your hole.";
		say "     [WaitLineBreak]";
		say "     Eventually, as Jason finishes with you two and joins Boghrim in a post-coital nap cuddled up against his master's side, you get back up from the bed and gather up your belongings. While doing so, you notice that the sting of the teethmarks on your shoulder has already faded completely, and by craning your neck a bit, you see that the nanites have already healed them over - though not without leaving two spots of distinctive scarring. Something to remember your first time with Boghrim by, it seems. Putting on your clothes and gear, you then make your way back down into the drinking hall.";
	otherwise:
		say "     [line break]";
		say "     Climbing on the bed to join Jason, you snake an arm around his back and pull him against your chest, then give him a deep and hungry kiss that goes on and on. After exploring the willing slave's mouth with your tongue a bit and letting your hands wander over his smooth-skinned muscular form, you give the young man a sudden shove that has him fall backwards onto the soft sheets. Pouncing the human before he can react in any way, you hold him down as he is with a hand on his broad chest, pressing him into the soft sheets, then move into position to kneel over him on all fours - with your crotch above his face and his in front of yours. Being such a well-trained butt-slut, the young man immediately takes hold of your shaft and starts to lap at it, loudly moaning, 'Mmmmh! Tasty!' before he takes your cockhead into his mouth and can only mumble around it anymore.";
		say "     More than willing to return the favor to the subby human, you lean forward yourself and bring your lips to his well-sized cock (for a human, that is) and go down on it. Something in Jason's murmurs around your shaft tells you how pleased he is at for once being the one getting a blowjob, not only giving them all the time, so you really put in some extra effort to reward the slave for his amazing tonguework on your own hardon.";
		say "     [WaitLineBreak]";
		say "     You can feel the mattress shift as Boghrim gets on the bed too, moving up behind and looming at the edge of your vision as a broad-shouldered green shape. 'Those lips feel great on your cock, don't they? I love the little bitch - even though he's a new slave, he's definitively my favorite,' you can hear from him, followed by, 'I'm gonna enjoy taking a real man for once.' With that, he gets up close to you, wrapping his strong arms around your chest from behind, making his massive shaft poke you in the back hotly. Large fingers tease your nipples for a second, then Boghrim's hand slides between the two of you, grasping his member and pressing it against your quivering pucker. He inches his hips forward slowly, until your opening finally yields to his thick shaft, stretching wide as the orc's cockhead sinks into your body.";
		say "     Boghrim's manhood feels amazing inside your hole, filling it very nicely with its impressive girth. Combining the sensations of him bumping all the right spots with that thick piece of man-meat with feeling the mighty orc's strong arms holding you... gets your own erection get even harder inside Jason's mouth. Then the orc boss pulls back a bit before thrusting deep into you, giving a deep and lusty grunt as his hips meet your cheeks with a resounding slap that is immediately followed by an aroused gasp from both you and Jason. What follows is a wild threesome of rough orc sex, with Boghrim fucking you hard and deep, really pounding into you from behind - which at the same time pushes your own erection again and again into the ecstatically whimpering human slave's mouth and throat.";
		say "     [WaitLineBreak]";
		say "     You don't know how long your coupling takes, three sweaty bodies moving in unison to the beat of a fast-paced selection of punk-rock songs, but one thing is sure - you wanna do it again, and soon! After a breathtaking time of deep-throat face-fucking the willing butt-slut under you while taking it from the biggest and baddest orc there is, you eventually reach the point of no return and roar out loud as an orgasm crashes over you like a wave. Hammering into Jason all the way and pushing him deep into the soft expanse of the round bed, you blast away with a massive load of rich, thick orc cum, pulsing through your shaft and directly into the little slut's stomach.";
		say "     Reaching your climax pushes your two partners over the edge a moment later too - Jason, spurting his seed in your moth to be hungrily devoured, coming from the sensations of feeling all of your potent seed being pumped into him and a slave's delight at having pleased his masters, and Boghrim, from the tightness of your hole as it twitches and flexes with each spurt of your cum. The mighty orc gives a lust-fuelled bellow, arms tightening around your body as he possessively clutches you to his chest, then as the first blast of his seed splashes into you, he sinks his canines into the curve of your neck in a shallow bite. Between the high of your own orgasm and Boghrim's cum having its effect on you, the pain of being chomped on barely registers in your mind - and he didn't really try to hurt you either, just a shallow bite in the throes of passion - though at least his long tusks will surely leave a mark.";
		say "     [WaitLineBreak]";
		say "     As spurt after spurt of the big orc's cum fills you and Boghrim slowly winds down, he starts to loosen his grip on you and after a few more half-grunted pants, he says, 'Fuck yeah! You can definitively come back anytime and I'll fuck you good! Bitches like Jason are great, but this -', he grips your firm asscheeks with both hands and gives em a tight squeeze, '- is a real man's butt, worthy of my hard shaft!' Looking down and noticing the bite-marks he left on your shoulder, the orc licks over them with a slow swipe of his broad tongue, then adds, 'Bear these marks with pride - you're the first guy I fucked that I didn't take as a slave afterwards.'";
		say "     Waiting some time longer till the last little spurt of his load is deposited deep inside your hole, the orc pulls out with a wet slurp and moves kneel beside you on the bed. Giving you a little poke in the side with his elbow and a wide grin, he add with a chuckle, 'Watch this.' Then Boghrim bellows, 'Clean us up, slave!', which results in Jason almost jumping off the bed... or well, at least instantly coming to stand on his feet from the sudden fright. The panting young man then kneels down immediately and goes down on his master, slurping the remnants of his load up from the orc's shaft and lapping at his pubes. After Boghrim has been cleaned of cum, Jason moves on to you, licking up your own load before getting in position to eat his master's cum out of your hole.";
		say "     [WaitLineBreak]";
		say "     Eventually, as Jason finishes with you two and joins Boghrim in a post-coital nap cuddled up against his master's side, you get back up from the bed and gather up your belongings. While doing so, you notice that the sting of the teethmarks on your shoulder has already faded completely, and by craning your neck a bit, you see that the nanites have already healed them over - though not without leaving two spots of distinctive scarring. Something to remember your first time with Boghrim by, it seems. Putting on your clothes and gear, you then make your way back down into the drinking hall.";
	if "Boghrim's Mark" is not listed in feats of player:
		add "Boghrim's Mark" to feats of player;
	now hp of Boghrim is 1;
	
to say BoghrimSex1:  [get fucked]
	if hp of Boghrim is 0: [never fucked]
		say "     Just openly walking up to Boghrim and offering sex might have drastic consequences. Who knows how he'd react to that. Do you really want to do it?";
		if player consents:
			say "     As you quietly ask the mighty orc to fuck you, he eyes you with surprise on his face and... interest in his eyes. 'Never thought I'd see a strong orc warrior ask to be my bottom boy. What are you then? A weak little breeder who chugged orc brew to gain the confidence to ask the boss-man for a fuck, or a real man with some deviant tastes?' Reaching over to casually grope the orc breeder leaning against his side and make him suckle on two fingers pushed into his mouth, Boghrim continues, 'I have enough sluts really, but... if you prove you're an actual warrior, I'll take you up as a fuck-buddy. You'd be someone to enjoy as a treat... pounding a real man's ass for a change. Go on then - prove yourself! Punch out Glarbuk.' Following the orc's pointing finger, your gaze falls on a big brute of an orc - who just at that moment head-butts another orc into unconsciousness to take his beer. Not someone you'd look forward to fighting, but something tells you it is far too late to back out of this...";
			say "     Swallowing reflexively as your gaze wanders over the bulging muscles of the monstrously built orc, you steel your resolve and step down from Boghrim's platform, walking towards your designated target. On the way, you pick up an empty beer stein, nice and heavy - perfect to assist in a sucker punch. As you step up to the hulking orc and tap him on the shoulder, you smash the mug over his head as soon as he turns around - which only dents the mug and leaves the orc pretty unimpressed. Uh Oh. This won't be over as quickly as you hoped... ";
			now inasituation is true;
			now OrcSpecialFightNumber is 2;
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Orc Warrior":
					now monster is y;
					break;
			choose row monster from the table of random critters;
			now hp entry is 250;
			now monsterhp is 250;
			now lev entry is 16;
			now wdam entry is 25;
			challenge "Orc Warrior";
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Orc Warrior":
					now monster is y;
					break;
			choose row monster from the table of random critters;
			now hp entry is 125;
			now monsterhp is 125;
			now lev entry is 14;
			now wdam entry is 15;
		otherwise:
			say "     You decide to better play it safe and put those plans on ice - for now...";
	otherwise if hp of Boghrim is 1: [fuck buddy]
		say "     You step up on the orc boss's platform and find Boghrim with his favourite slave Jason stretched out over his lap, ass up and getting fingered by Boghrim's thick fingers. After you give the muscled green male a suggestive wink and nod towards the stairs leading up to his private rooms, Boghrim slaps Jason's ass playfully, which makes makes the young man pant in arousal. Then the orc pulls him aside, making his hard prick whip up, now that there isn't a submissive human lying on it anymore. While Jason automatically starts to worship his Master's shaft, stroking and licking it, Boghrim gives a telling look from the thick pole of man-meat to you and back, then loudly says, 'Time to... share this little slut between us again. Let's do it!'";
		say "     The mighty orc grunts in satisfaction, then gives Jason another quick slap on the bare butt and says, 'Get up, boytoy - we're making this a private party now.' That said, he stands up himself and, without even bothering to put on his loincloth, leads his naked slave and yourself through the drinking hall, his thick prick proudly dangling between his legs. Soon, you're walking up a set of stairs up to the second floor and into the station chief's conference room. Like the rest of the station, things have been rearranged in there quite a bit, as there is no sign of any table or even chairs... instead, the room holds a mightily big, round fuck-pad of a bed, combined with piles of loot and a top of the line stereo system. Moving over to switch it on, Boghrim gives you a bragging grin as the beat of punk music vibrates in your bones for a second, then is turned down to the level of background music.";
		say "     [WaitLineBreak]";
		say "     While his master was setting the right atmosphere for some hot and heavy sex, Jason already sunk to his knees in front of you and undid your pants. Now he's looking up at you, an eager 'use me' expression on his face - which is something you just can't resist, holding up your hard prick and guiding the submissive human to take it in his mouth. And oh does he do a good job with that. Jason just slides those sexy lips up and up your shaft, going on to deep-throat you till his nose is buried right in your pubes - damn, Boghrim trains his bitches well! As Jason starts to bob up and down on your manhood, the broad-shouldered shape of the orc boss steps up beside you and his large hand slides down your back to tightly squeeze your right buttock.";
		say "     You can feel Boghrim's hot breath against your cheek as he leans in and licks your face, then speaks in a lusty murmur, 'Yeah, you like that pretty little pink-skinned slut's lips, don't you? But there's something you'll like even more...' That said, the orc takes hold of his long and impressively thick erection, slapping it against your thigh with a meaty slap. 'You wanted this and now you're gonna have it! Get on the bed, both of you!' As Jason pulls of your manhood with a little slurp and happily jumps on the bed, your eyes are drawn to the shapely butt on him and his well-sized penis (for a human, that is).";
		say "     [WaitLineBreak]";
		say "     What kind of fun do you want to have with Boghrim's favorite slave as the orc himself fucks you? Sink your shaft balls-deep into the muscular guy (Y) or share a blowjob with him in the typical 69 position (N)? ";
		if player consents:
			say "     [line break]";
			say "     Climbing on the bed behind Jason, you snake an arm around his chest and pull him against your chest, then stretch around to give him a deep and hungry kiss that goes on and on. After exploring the willing slave's mouth with your tongue a bit and letting your hands wander over his smooth-skinned muscular form, you give Jason a sudden shove that has him fall forwards onto the soft sheets. Pouncing the human before he can react in any way, you hold him down as he is with a hand on his broad back, face pressed into the soft sheets, while your other hand guides your prick to rub between his cheeks. Being such a well-trained butt-slut, the young man can't help raise his bubble butt for you to mount, loudly moaning, 'Yes please! Take me deep! I need it!'";
			say "     More than willing to oblige the subby human, you immediately set your cockhead at his opening and thrust deep, sinking more than half your erection into him in one go. Jason just gives an aroused gasp at being mounted like this - unsurprising, as he's used to being taken roughly by horny orcs... as evidenced by the copious amounts of cum you feel around your member, squishing around in his asshole and lubing your way. You bottom out in the young man and hold still for a second to revel in the feeling of his stretched chute around your shaft, then start fucking him with sharp little thrusts that make your hips hit his ass with satisfying slaps.";
			say "     [WaitLineBreak]";
			say "     You can feel the mattress shift as Boghrim gets on the bed too, moving up behind and looming at the edge of your vision as a broad-shouldered green shape. 'Yeah, fuck that slut! Fuck him like only an orc can!' you can hear from him, followed by, 'I'm gonna enjoy taking a real man for once.' With that, he gets up close to you, wrapping his strong arms around your chest from behind, making his massive shaft poke you in the back hotly. Large fingers tease your nipples for a second, then Boghrim's hand slides between the two of you, grasping his member and pressing it against your quivering pucker. He inches his hips forward slowly, until your opening finally yields to his thick shaft, stretching wide as the orc's cockhead sinks into your body.";
			say "     Boghrim's manhood feels amazing inside your hole, filling it very nicely with its impressive girth. Combining the sensations of him bumping all the right spots with that thick piece of man-meat with feeling the mighty orc's strong arms holding you... gets your own erection get even harder inside Jason. Then the orc boss pulls back a bit before thrusting deep into you, giving a deep and lusty grunt as his hips meet your cheeks with a resounding slap that is immediately followed by an aroused gasp from both you and Jason. What follows is a wild threesome of rough orc sex, with Boghrim fucking you hard and deep, really pounding into you from behind - which at the same time pushes your own erection again and again into the ecstatically whimpering human slave's upturned ass.";
			say "     [WaitLineBreak]";
			say "     You don't know how long your coupling takes, three sweaty bodies moving in unison to the beat of a fast-paced selection of punk-rock songs, but one thing is sure - you wanna do it again, and soon! After a breathtaking time of pounding the willing butt-slut under you while taking it from the biggest and baddest orc there is, you eventually reach the point of no return and roar out loud as an orgasm crashes over you like a wave. Hammering into Jason all the way and pushing him deep into the soft expanse of the round bed, you fulfill your body's imperative to breed the little slut and blast away with a massive load of rich, thick orc cum, pulsing through your shaft and deep into his insides.";
			say "     Reaching your climax pushes your two partners over the edge a moment later too - Jason, creaming the sheets under him from the sensations of feeling all of your potent seed being pumped into him and a slave's delight at having pleased his masters, and Boghrim, from the tightness of your hole as it twitches and flexes with each spurt of your cum. The mighty orc gives a lust-fuelled bellow, arms tightening around your body as he possessively clutches you to his chest, then the first blast of his seed splashes into you, followed by another and another.";
			say "     [WaitLineBreak]";
			say "     As more and more orcish cum fills you with each moment, Boghrim slowly winds down and he starts to loosen his grip on you. After a few more half-grunted pants, he says, 'Fuck yeah! You can definitively come back anytime and I'll fuck you good! Bitches like Jason are great, but this -', he grips your firm asscheeks with both hands and gives em a tight squeeze, '- is a real man's butt, worthy of my hard shaft!' Looking down at your shoulder and noticing the scars he left after your first coupling, the orc licks over them with a slow swipe of his broad tongue, then adds, 'Bear these marks with pride - you're the first guy I fucked that I didn't take as a slave afterwards.'";
			say "     Waiting some time longer till the last little spurt of his load is deposited deep inside your hole, the orc pulls out with a wet slurp and moves kneel beside you on the bed. Giving you a little poke in the side with his elbow and a wide grin, he add with a chuckle, 'Watch this.' Then Boghrim bellows, 'Clean us up, slave!', which results in Jason almost jumping off the bed... or well, at least instantly coming to stand on his feet from the sudden fright. The panting young man then kneels down immediately and goes down on his master, slurping the remnants of his load up from the orc's shaft and lapping at his pubes. After Boghrim has been cleaned of cum, Jason moves on to you, licking up your own load before getting in position to eat his master's cum out of your hole.";
			say "     [WaitLineBreak]";
			say "     Eventually, as Jason finishes with you two and joins Boghrim in a post-coital nap cuddled up against his master's side, you get back up from the bed and gather up your belongings. While doing so, you notice that the sting of the teethmarks on your shoulder has already faded completely, and by craning your neck a bit, you see that the nanites have already healed them over - though not without leaving two spots of distinctive scarring. Something to remember your first time with Boghrim by, it seems. Putting on your clothes and gear, you then make your way back down into the drinking hall.";
		otherwise:
			say "     [line break]";
			say "     Climbing on the bed to join Jason, you snake an arm around his back and pull him against your chest, then give him a deep and hungry kiss that goes on and on. After exploring the willing slave's mouth with your tongue a bit and letting your hands wander over his smooth-skinned muscular form, you give the young man a sudden shove that has him fall backwards onto the soft sheets. Pouncing the human before he can react in any way, you hold him down as he is with a hand on his broad chest, pressing him into the soft sheets, then move into position to kneel over him on all fours - with your crotch above his face and his in front of yours. Being such a well-trained butt-slut, the young man immediately takes hold of your shaft and starts to lap at it, loudly moaning, 'Mmmmh! Tasty!' before he takes your cockhead into his mouth and can only mumble around it anymore.";
			say "     More than willing to return the favor to the subby human, you lean forward yourself and bring your lips to his well-sized cock (for a human, that is) and go down on it. Something in Jason's murmurs around your shaft tells you how pleased he is at for once being the one getting a blowjob, not only giving them all the time, so you really put in some extra effort to reward the slave for his amazing tonguework on your own hardon.";
			say "     [WaitLineBreak]";
			say "     You can feel the mattress shift as Boghrim gets on the bed too, moving up behind and looming at the edge of your vision as a broad-shouldered green shape. 'Those lips feel great on your cock, don't they? I love the little bitch - even though he's a new slave, he's definitively my favorite,' you can hear from him, followed by, 'I'm gonna enjoy taking a real man for once.' With that, he gets up close to you, wrapping his strong arms around your chest from behind, making his massive shaft poke you in the back hotly. Large fingers tease your nipples for a second, then Boghrim's hand slides between the two of you, grasping his member and pressing it against your quivering pucker. He inches his hips forward slowly, until your opening finally yields to his thick shaft, stretching wide as the orc's cockhead sinks into your body.";
			say "     Boghrim's manhood feels amazing inside your hole, filling it very nicely with its impressive girth. Combining the sensations of him bumping all the right spots with that thick piece of man-meat with feeling the mighty orc's strong arms holding you... gets your own erection get even harder inside Jason's mouth. Then the orc boss pulls back a bit before thrusting deep into you, giving a deep and lusty grunt as his hips meet your cheeks with a resounding slap that is immediately followed by an aroused gasp from both you and Jason. What follows is a wild threesome of rough orc sex, with Boghrim fucking you hard and deep, really pounding into you from behind - which at the same time pushes your own erection again and again into the ecstatically whimpering human slave's mouth and throat.";
			say "     [WaitLineBreak]";
			say "     You don't know how long your coupling takes, three sweaty bodies moving in unison to the beat of a fast-paced selection of punk-rock songs, but one thing is sure - you wanna do it again, and soon! After a breathtaking time of deep-throat face-fucking the willing butt-slut under you while taking it from the biggest and baddest orc there is, you eventually reach the point of no return and roar out loud as an orgasm crashes over you like a wave. Hammering into Jason all the way and pushing him deep into the soft expanse of the round bed, you blast away with a massive load of rich, thick orc cum, pulsing through your shaft and directly into the little slut's stomach.";
			say "     Reaching your climax pushes your two partners over the edge a moment later too - Jason, spurting his seed in your moth to be hungrily devoured, coming from the sensations of feeling all of your potent seed being pumped into him and a slave's delight at having pleased his masters, and Boghrim, from the tightness of your hole as it twitches and flexes with each spurt of your cum. The mighty orc gives a lust-fuelled bellow, arms tightening around your body as he possessively clutches you to his chest, then the first blast of his seed splashes into you, followed by another and another.";
			say "     [WaitLineBreak]";
			say "     As more and more orcish cum fills you with each moment, Boghrim slowly winds down and he starts to loosen his grip on you. After a few more half-grunted pants, he says, 'Fuck yeah! You can definitively come back anytime and I'll fuck you good! Bitches like Jason are great, but this -', he grips your firm asscheeks with both hands and gives em a tight squeeze, '- is a real man's butt, worthy of my hard shaft!' Looking down at your shoulder and noticing the scars he left after your first coupling, the orc licks over them with a slow swipe of his broad tongue, then adds, 'Bear these marks with pride - you're the first guy I fucked that I didn't take as a slave afterwards.'";
			say "     Waiting some time longer till the last little spurt of his load is deposited deep inside your hole, the orc pulls out with a wet slurp and moves kneel beside you on the bed. Giving you a little poke in the side with his elbow and a wide grin, he add with a chuckle, 'Watch this.' Then Boghrim bellows, 'Clean us up, slave!', which results in Jason almost jumping off the bed... or well, at least instantly coming to stand on his feet from the sudden fright. The panting young man then kneels down immediately and goes down on his master, slurping the remnants of his load up from the orc's shaft and lapping at his pubes. After Boghrim has been cleaned of cum, Jason moves on to you, licking up your own load before getting in position to eat his master's cum out of your hole.";
			say "     [WaitLineBreak]";
			say "     Eventually, as Jason finishes with you two and joins Boghrim in a post-coital nap cuddled up against his master's side, you get back up from the bed and gather up your belongings. While doing so, you notice that the sting of the teethmarks on your shoulder has already faded completely, and by craning your neck a bit, you see that the nanites have already healed them over - though not without leaving two spots of distinctive scarring. Something to remember your first time with Boghrim by, it seems. Putting on your clothes and gear, you then make your way back down into the drinking hall.";

to say BoghrimSex2:  [fuck him]
	if hp of Boghrim < 2:
		say "     Right now, the best you can expect if you ask to fuck him is a punch to the face that knocks you out. Maybe you should get to know the mighty orc a bit better before trying that...";
	otherwise:
		say "     A";

Orc Mob is a man.
The description of Orc Mob is "About twenty orc warriors hang around in here and are busy drinking, boasting about themselves, even fucking an orc breeder or two right in the middle of the room. Their brutish impulses really come to the forefront in a group, and you can see games of strength like arm-wrestling and fights where they barely hold back going on. The big room is filled with a constant background noise of deep-voiced cajoling and conversation, in combination with grunts and moans.".
The conversation of Orc Mob is { "Yap!" }.
Orc Mob is in Main Hall.

instead of sniffing Orc Mob:
	say "     The attractive male scent of orcs hangs in the air, with slight undertones of cum, sweat and booze - that just serve to make them appear even more manly somehow.";

instead of conversing the Orc Mob:
 	say "     Joining the orc warriors in their reveling, you soon find yourself in their midst with an orc brew in your hand, listening to boastful stories how this one fucked a minotaur or that one brought down a behemoth. To fit in, you make up a story about turning [one of]an alpha husky[or]a German Shepherd[or]a hyena[or]a centaur[at random] into your private bitch and get cheers as you finish the imaginary conquest. All in all, you have a pretty good time with the other orcs, then eventually leave them to get back to other matters. But even as you do, the story you invented is still at the forefront of your mind, with your inner orc pushing hard against your will to accept him and put those thoughts into reality.";
 	decrease humanity of player by 10;
 	decrease thirst of player by 20;
 	infect "Orc Warrior";
 	if thirst of player < 0:
 		now thirst of player is 0
 		
instead of fucking the Orc Mob:
	if player is submissive:
		say "     No matter how much your submissive instincts push you towards just walk into the midst of all those orcs and call for them to fuck you, your self-control holds against it. The gangbang would likely be amazing and breathtaking - but it's not worth losing yourself to it. You'd be almost guaranteed to succumb to a fate of being an orc breeder slave...";
	otherwise:
		say "     Walking up to drunken, horny orcs and asking if you can fuck them doesn't sound like a good strategy. Orcs warriors are built to fuck, not get taken by others, so you'd likely only earn some punches to the face...";

Jason is a man.  Jason is in Main Hall.
The description of Jason is "[JasonDesc]".
The conversation of Jason is { "Having his nose pressed against Boghrim's crotch as he licks and fondles his master makes it just a bit difficult to talk to Jason. Combined with the fact that he's also a bit buzzed from swallowing the big orc's precum, you don't think there's much use talking to him right now..." }.

to say JasonDesc:
	say "     Jason is an athletic human male, somewhere in his twenties. He has short brown hair and dashingly handsome looks. By now, the young man has fully accepted his new role in life, proudly wearing a spiked leather collar on his otherwise naked body. He's currently kneeling at his owner Boghrim's feet, worshiping his master by slowly lapping away at the big orc's balls. The fact that Jason still is a human, completely unchanged by his constant contact with the orcs all around, shows that he must be immune to the nanites - a rarity that would surely make him attractive to the researchers outside of the city and aid the search for a counter-agent...";
	
instead of fucking Jason:
	say "     The human slave is currently occupied worshiping his master's balls and Boghrim would surely object if you just grabbed Jason from where he's kneeling. Maybe you should talk to the orc and see if you can... rent him.";

instead of sniffing Jason:
	say "     Jason has got an attractive male scent, with a definite undertone of orc cum - no wonder, with how often he gets fucked.";

Mul is a man. Mul is in Main Hall.
The description of Mul is "[MulDesc]".
The conversation of Mul is { "Mew!" }.
MulAnalAcceptance is a number that varies.

to say MulDesc:
	if Mul is in Slave Cell 2:
		say "     Mul is the prime example of an orcish warrior - tall and very muscular, with somewhat oversized hand and feet as compared to a human. Currently, his brutish features look calm and peaceful - as the big brute is right in the middle of a post-coital nap after fucking you to exhaustion.";
	otherwise:
		say "     Mul is the prime example of an orcish warrior - tall and very muscular, with somewhat oversized hand and feet as compared to a human. Currently, he's sitting at a table in the drinking hall, quaffing back large glasses of orc brew while watching [one of]a nearby fight[or]another orc break in a new slave-boy[or]two orcs arm-wrestle[or]a drinking competition[at random]. His back is turned to you, so he hasn't noticed your presence - and that's good, since he sees you as his property and sex slave.";

instead of sniffing Mul:
	say "     He's got an attractive male scent, with slight undertones of cum and sweat that make him appear even more manly somehow.";

instead of conversing the Mul:
	if Mul is in Slave Cell 2:
		say "     It'd be better for you if you didn't wake him now...";
	otherwise:
		say "     Just strolling up to the orc and engaging him in conversation doesn't seem quite a good idea right now. After all, he thinks of you as property, so he might just make a scene - and you just can't fight a room full of orcs all at once. And even if not - a civil conversation with him seems... unlikely.";
	
instead of fucking Mul:
	if Mul is in Slave Cell 2:
		say "     He's pretty worn out, let him sleep for now.";
	otherwise:
		if cocks of player is 0 or cockname of player is not "Orc Warrior" or player is not pure:
			say "     You're currently not quite 'man enough' to fuck Mul. Brazenly approaching the mighty orc right in the middle of the drinking hall and surrounded by his buddies... seems something that only a true orc warrior would do - which you're not... right now.";
		otherwise if MulAnalAcceptance is 0:
			say "     Oh yeah, looking at the broad and green back of Mul, plus the deliciously firm ass barely hidden by his loincloth, you feel a longing for the big lug of an orc in your loins, making your cock start to fill out. But... how would you arrange it? The orc sees you as a slave, so just approaching him would simply lead to a brawl. Maybe you should try again once you've got something to hold over his head. With the views of orcs in general saying that only breeders get fucked... maybe you could get one over on Mul sometime when he's alone and break him in a bit first...";
		otherwise if MulAnalAcceptance is 1:
			say "     Oh yeah, looking at the broad and green back of Mul, plus the deliciously firm ass barely hidden by his loincloth, you feel a longing for the big lug of an orc in your loins, making your cock start to fill out. But... how would you arrange it? The orc sees you as a slave, so just approaching him would simply lead to a brawl. Well, you've fucked him once, but that might not have sufficed. Better break him in a bit more first...";
		otherwise if MulAnalAcceptance is 2:
			say "     Oh yeah, looking at the broad and green back of Mul, plus the deliciously firm ass barely hidden by his loincloth, you feel a longing for the big lug of an orc in your loins, making your cock start to fill out. Having pounded this powerful orc's ass multiple times already, you do have an idea how to get him to put out too...";
			say "     [line break]";
			say "     Baring your own green orcish shaft, you jerk yourself to full hardness. It's strangely exciting to do this right here in the drinking hall, surrounded by other orcs. True, there's... one... two... three... five... six orcs naked right now, fucking their slaves or doing a cumshot competition, but still... you're an intruder here, the only one not fully succumbed to the orc infection. So with your heart beating a bit faster, you milk pre-cum out of your cock and catch it in your cupped hand, then smear the rich and sticky goop all over your index and middle finger. Now prepared for your plan, you walk up behind Mul, coming to stand right next to where the big man is sitting, then lean over him and all too casually lower a hand to his hips.";
			say "     Mul turns to look who's encroaching so closely, his eyes widening as he realizes it's you - which is just the right moment to strike. Quickly slipping your hand under the band of his loincloth, you push your slimy fingers against his pucker - which readily opens and allows your digits in... no wonder, after how well you've broken his ass in before. The orc slaver's halfway open mouth brings forth only a quickly stifled needy moan instead of what he wanted to say when he spotted you, and his butthole twitches around your fingers as if to welcome you back. A moment later, visibly fighting to suppress an obvious show of his arousal at getting fingered, the orc gives a low growl, 'Stop that, you bastard.'";
			say "     [WaitLineBreak]";
			say "     Oh, but why would you - you've got him by the balls now and can make the orc do what you want. Mul would be finished if all the others knew that he takes it up the ass - and likes it. One shout from you, combined with the fact that he's got a raging boner while someone fingers him would be enough. Which is exactly what you tell him. The orc gives another low growl, followed by a breathless pant - a result of your precum being absorbed by his inner walls and showing its effect. Hastily looking around to see if anyone noticed or sees your hand under his loincloth, Mul gives a relieved sigh as the orc sitting besides him thunks down on the table with his head, far too drunk to notice anything. Finally, as you demonstratively wiggle your fingers a little bit, he says, 'Fine, you win. But don't think I won't pay you back if we meet in a... less exposed place. Now - let's go to the back rooms before someone notices after all.'";
			say "     Mul leads you out of the drinking hall, down the western hallway and into a room that must once have been the police-men's locker-room. Throwing the door shut after both of you are in, the powerful orc pushes a whole section of heavy lockers in front of it, making sure you're not going to get disturbed. He rips his loincloth off his hips and throws it to the ground, revealing his thick and meaty shaft, then reaches to his own butt and dips a finger in the asshole, moaning loudly at the touch. 'You dosed me with cum, didn't you? I feel... horny... and I need -' Mul takes a deep breath, grunting loudly as he jams another finger into his hole, then continues with an expression somewhere between fury and pleading, 'I need someone to fuck me! Pound my ass, you dirty bastard! Give me your cock!'";
			say "     [WaitLineBreak]";
			say "     Just what you wanted to hear. With a wide smile on your lips, you quickly take off gear and clothing, then put a hand on your shaft	and demonstratively jerk it while watching Mul finger himself. The orc's breathing goes faster and faster, soon sounding more like lusty grunts as his arousal mounts at the sight of your hard cock.";
			say "     [line break]";
			say "     [MulLockerroomSexMenu]";
			now MulAnalAcceptance is 3;
		otherwise if MulAnalAcceptance is 3:
			say "     Silently walking up behind the strong orc, you whisper in his ear that you want to fuck him again - while at the same time casually sliding a hand under his loincloth and squeezing one of his firm and muscular buttcheeks. A snarl starts to form in Mul's throat, only to be quickly quenched as he looks at all the other orcs around you and decides that making a scene might not be the best idea[if lastfuck of Mul - turns < 8], given that you can still feel the wetness of cum in his crack - a remainder from your last fun-time[otherwise] right now[end if]. Still, he gives a deep growl, then says just loud enough for only you to hear, 'I'll get you for this, bastard. Eventually you'll be mine and there'll be - *gasp*' You can't help yourself, interrupting his little rant with a finger that you slip into his hole.";
			say "     As well-trained as you have the orc by now, his pucker readily yields to your probing digit, allowing you to rub Mul's inner walls, which totally breaks his concentration. Fighting down all further moans and gasps after the first one, the orc gives in to you a moment later and says, 'Fine, let's go.' Mul leads the way, passing others whom he grunts to, gives slap on the back, and one orc brute whom he decks hard enough to knock him out - then you're finally out of the drinking hall in a corridor leading west. After about 25 feet, you reach the door to the now unused locker-room of the policemen who once were stationed here - your out of the way fuck-nest for fun with Mul.";
			say "     [WaitLineBreak]";
			say "     Throwing the door shut after both of you are in, the powerful orc starts to push a whole section of heavy lockers in front of it, wanting to make sure you're not going to get disturbed. While Mul is still in the progress of doing so, you start fingering him again, teasing his pucker and groping his weighty balls with the other hand. The orc can't help but give a loud moan as you push two fingers into him and rub very sensitive spots of the inner walls. His arousal at having something in his ass again is so strong that he even forgets to finish barricading the door, leaving the option for someone to come along and find the two of you - not that Mul cares about anything but the lust you've woken inside him right now.";
			say "     Soon, Mul rips his loincloth off his hips and throws it to the ground, revealing a thick and meaty shaft, then reaches to his own butt and holds both cheeks apart to give you easier access. 'I feel... horny... and I need -' Mul takes a deep breath, grunting loudly as you jam another finger into his hole, then continues with an expression somewhere between fury and pleading, 'I need someone to fuck me! Pound my ass, you dirty bastard! Give me your cock!'";
			say "     [WaitLineBreak]";
			say "     Just what you wanted to hear. With a wide smile on your lips, you quickly take off gear and clothing, then put a hand on your shaft	and demonstratively jerk it while watching Mul finger himself. The orc's breathing goes faster and faster, soon sounding more like lusty grunts as his arousal mounts at the sight of your hard cock.";
			say "     [line break]";
			say "[MulLockerroomSexMenu]";

to say MulLockerroomSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take him from behind";
		now sortorder entry is 1;
		now description entry is "Push Mul against the wall and really pound into him";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let him ride you";
		now sortorder entry is 2;
		now description entry is "Lie down on a bench and let Mul fuck himself on your pole";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck him missionary style";
		now sortorder entry is 3;
		now description entry is "Let Mul lie on a bench and take him, face to face";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Take him from behind":
					say "[MulLockerroomSex1]";
				if nam is "Let him ride you":
					say "[MulLockerroomSex2]";
				if nam is "Fuck him missionary style":
					say "[MulLockerroomSex3]";
				now lastfuck of Mul is turns;
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the young woman, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;
								
to say MulLockerroomSex1: [Pounding against the wall]
	say "     In the mood for a hard, no nonsense fuck, you grasp Mul by the shoulder and push him forward to stumble against one of the walls. As his large hands thud against the wall to catch himself, you're behind the orc an eye-blink later with your erection leading the way, thrusting deep into the strong male's tight hole and making him roar at the sudden anal invasion. Thanks to already breaking him in very well, Mul's pucker readily expands to allow more and more of your shaft in, while at the same time still being nice and snug around your member. The big male's hole feels fantastic to be in, and the fact that you're dominating the very orc that wanted to take you as a slave makes fucking him all the sweeter.";
	say "     Being used to getting fucked by now - and getting off on it quite a bit, Mul's anal muscles flex and twitch as you pound into him hard. Part of it is just him reacting to you hitting the prostate, but there are also some moments in which the orc's hole almost seems to jerk you off inside him. Apparently, your muscled green playmate has accepted this role so much now that he is experimenting with new techniques to make wild anal sex feel even better for you both. You can't help but give a very satisfied laugh at the situation - you, balls deep inside a mighty orc warrior and pounding into him hard so that he has to brace himself with both arms against the wall... and that right in the orc lair, with all the other green brutes just a short hallway away.";
	say "     [WaitLineBreak]";
	say "     Grunts and slapping noises of your hips against Mul's ass fill the locker-room, coming in a rapid pace as you fuck him deeply without restraint. He's an orc after all - strong and tough, your bottom-boy can take whatever you can dish out. And you're quite certain that he even likes the rough treatment... having reached around him to take hold of Mul's own thick shaft, you can feel it twitch and pulse each time you give him an especially deep thrust. In a wild and exhilarating ride, you soon drive the big man closer and closer to the edge, his grunts and moans coming quicker and becoming slightly higher pitched.";
	say "     Forgetting his stubborn pride completely in the heat of sex, the orc even starts to shout, 'Yeah, take me! Faster! Pound my ass! Ngh - Nnngh! More! NnnnngggghhhHH!' With that last drawn-out roar, Mul starts to cum, his shaft rhythmically pulsing in your hand as stream after stream of cum blasts through it and covers the locker-room wall. With each spurt of the orc's seed, all the muscles in Mul's body twitch and tense - including those inside his ass, around your shaft. This results in you joining your brutish partner in orgasm just moments later, gripping him tightly around the hips as your balls start to unload everything they got. Your seed gets pumped into Mul in weighty bursts, filling him up with creamy orc cum.";
	say "     [WaitLineBreak]";
	say "     After blasting the last few spurts of your orgasm into Mul, you pull out of him with a slurp and leave the large orc to sink to his knees on shaky legs. Standing back, you take in your handiwork - one mighty orc warrior slouched against the locker-room wall, with cum dripping out of his hole and still panting like a needy bitch. You can't help but laugh as he leans forward, resting his shoulder against the plaster to have free hands that immediately start to finger his stretched hole. As he is doing so, Mul suddenly takes a deep sniff and focuses on something - his own cum, slowly oozing down the wall right in front of him. Being the slut for orc cum you've turned him into, there is no hesitation at all as he eagerly licks the sperm up.";
	say "     The very self-satisfied smile on your lips stays with you the whole time as you get dressed, then leave the freshly-bred orc to lap up all the cum he can get. Walking back into the main hall of the orc lair, you can't help but think about the reaction all these other brutes would have if they could see Mul now, on his knees and dripping your seed. You'll have to come back and fuck him again soon - this is just too delicious to pass up.";

to say MulLockerroomSex2: [Let him ride your cock]
	say "     Mmmh, yes - making the muscled orc brute mount your shaft himself sure is a delicious thought. He won't be able to tell himself that it's just you raping him if he's the one who sinks his own ass on your pole. What a nice lesson to teach your orcish bottom slut! A domineering smile spreads over your lips as you look at Mul and stroke your own shaft, then turn your back and walk a few steps away from him, heedless of the opening this gives the strong fighter. Why would you be worried, after all - you already got him pleading for your cock, panting in lust-addled heat. All that comes from Mul is a nonplussed grunt leading over into a needy groan - oh yeah, he's well and ready!";
	say "     Sitting down on one of the long wooden benches lined up between the rows of lockers, you swing one foot over it to straddle the thing, then stroke your cock demonstratively and hold it up for the orc to feast his eyes on. Taunting that if he wants it, he can come and fuck himself on your shaft, you lean back and watch the big green male gape at your offer. Expressions flicker over Mul's face - anger and shock, bottomless need and indecision, to name a few... then he suddenly gives a deep grunt, huffing loudly as he walks up to you. The orc scowls at your lying form as he comes to stand right next to the bench, then he moves into position, swinging a leg over it - and you - to stand over your crotch with his back turned in your direction... as if not looking into your eyes as he takes your dick would change anything about what he's about to do.";
	say "     [WaitLineBreak]";
	say "     You can't quite make out what he murmurs to himself next, but you don't really care, as he starts to lower himself further and further, soon bumping his butt-crack against your hard shaft. A large hand reaches down, taking hold of your manhood and holding it straight up, then you can feel Mul's pucker against your cockhead. With a grunt and a downward push, the orc's muscled ring readily stretches around your shaft, allowing you inside his narrow passage. Yeah - still just awesomely tight and gripping as the time you took Mul's cherry. He's come far in the meantime - from you having to almost knock him out before you could stick your dick in, to now willingly sinking down on your rock-hard pole!";
	say "     The big orc gives lusty grunts and lowers himself further, both hands on his firm buttcheeks - holding them apart as he takes in more and more of your shaft. Then finally, you can feel the downy fuzz of hair on his butt against your crotch, your erection now fully inside Mul. He holds still like that for a moment, taking in the feeling of having your manhood inside his body once more and squeezing his muscles around it. But soon, just sitting passively on your cock isn't enough for the mighty orc warrior - he straightens his legs again, pulling off your pole in one quick move that shows you his winking pucker... before he impales himself on your shaft again with a satisfied roar. As you well know, Mul likes it rough - he is an orc after all!";
	say "     [WaitLineBreak]";
	say "     Grunts and slapping noises of your hips against Mul's ass fill the locker-room, coming in a rapid pace as he rides your erection hard - and you join in to mix things up a bit, thrusting your hips up when he least expects it. It's a wild fuck between you two, both strong orcs with lots of stamina who go at it without restraint... until you grip him tightly by the hips suddenly, bringing his movements to a stop. You've got to strain yourself to hold on as the needy orc tries to continue, then stops trying after a short moment. Still panting deeply, he barks over his shoulder, 'What?!' ...while at the same time squeezing his anal muscles tightly around your cock. You're almost tempted to just continue as before, but no - you want more from him.";
	say "     Moving your hands to his green buttcheeks and squeezing their firm curves, you tell Mul to turn around - face the man whose cock he's riding like a proper little breeder. The orc answers with an angry growl at your taunting tone, but that is immediately replaced by a needy gasp when you give a tug of your hips, sliding most of your shaft out of his tight chute. Mul's body tries to automatically follow, get the piece of man-meat that is giving him all this pleasure back inside his hole - but you stand fast, not letting him do it. There is a second of hesitation yet, followed by a snarled, 'You bastard! Fine, I'll do it!'";
	say "     [WaitLineBreak]";
	say "     Letting go of your unyielding grip on Mul, you watch in satisfaction as he sinks himself down on your pole again with a relieved moan. Then, he starts to turn around, still impaled on your erection, first bracing himself with those thick, muscled arms and then swinging a leg over you till he's straddling your hips the right way around. You grin at the mix of sullen anger and bottomless lust on his face, sticking out your tongue and giving a deep thrust as he looks down at you. As Mul starts fucking himself on your pole again, you take hold of the orc's weighty manhood and give it a few strokes, while your other hand cups his balls and fondling them.";
	say "     Getting back to the sensations of your cock hitting his prostrate and with your hands on his erection, the big man soon veers closer and closer to the point of no return, his grunts and moans coming quicker and louder. Forgetting his stubborn pride completely in the heat of sex, the orc even starts to shout, 'Yeah, your cock feels great! Faster! Pound my ass! Ngh - Nnngh! More! NnnnngggghhhHH!' With that last drawn-out roar, Mul starts to cum, his shaft rhythmically pulsing in your hand as stream after stream of cum blasts through it and splatters all over your chest and face.";
	say "     [WaitLineBreak]";
	say "     With each spurt of the orc's seed, all the muscles in Mul's body twitch and tense - including those inside his ass, around your shaft. This results in you joining your brutish partner in orgasm just moments later, bucking up against him as your balls start to unload everything they got. Your seed gets pumped into Mul in weighty bursts, filling him up with creamy orc cum. As your shaft continues to pulse with spurts of cum, Mul writhes on top of it, clearly overwhelmed by the massive injection of the potent stimulant. He even sinks forward, lying half on top of you and bracing himself on the bench below as he twitches in arousal.";
	say "     You let the orc catch his breath, stroking and feeling his body at your leisure, now that you've got him pretty buzzed with cum and as docile as he'll ever get. Even pulling his head down to yours and giving him a lusty kiss that makes your tusks rub together in a very interesting sensation, you bask in the situation for a moment or two, then put your arms around Mul and give him a light slap on the butt. Wrenched out of his aroused haze, the orc focuses on your very close face, whose lips tell him a moment later to clean you. For now, there's no resistance left in Mul and he readily starts to lick his own creamy cum off your face, then chest. Being the slut for orc cum you've turned him into, he pulls off your shaft when done with lapping at your pecs, then proceeds to take your cock into his mouth to get everything stuck to it.";
	say "     [WaitLineBreak]";
	say "     A very self-satisfied smile spreads on your lips the whole time as you're cleaned and then get dressed, eventually leave the freshly-bred orc to stick his fingers up his own back door and suck what cum leaks out off the thick digits. Walking back into the main hall of the orc lair, you can't help but think about the reaction all these other brutes would have if they could see Mul now, on his knees and dripping your seed. You'll have to come back and fuck him again soon - this is just too delicious to pass up.";

to say MulLockerroomSex3: [Missionary Fuck]
	say "     In the mood for something more intimate than a quick pounding, you order the horny orc to lie down, pointing at the shredded pile of police-men's uniforms a bit further in the back of the room. Following Mul as he does so, you take a moment to savour the sight of such a magnificent male spread out on the ground before you, waiting to be taken, then kneel between his spread legs and stroke the inside of his thighs. Oh yeah, you'll enjoy your time with this big brute, giving him what his body has learned to crave. As wound up as you have him by now, he starts to raise his legs all on his own, baring the enticing rosette of his pucker, which even 'winks' at you as Mul relaxes his muscles, then tenses them again.";
	say "     You find yourself kneeling down and nudging his back door with your hard cock almost without thought, but stop yourself from just plunging in. Instead, you tease him a bit with the tip, grinning widely at the needy little gasps when you almost - but not quite - enter him with your shaft. Running your hands over the green-skinned man's ripped abs, firm pecs and bulging biceps, you lean over him and take a good whiff of his masculine scent then lick over one of his nipples. The aroused moan from Mul that follows tells you everything you wanted to know - pleased by having another weak spot you can use to make your orcish bitch tremble and howl, you vigorously attack his nipples, sucking on one and flicking it with your tongue while you rub and pinch the other one between your fingers.";
	say "     [WaitLineBreak]";
	say "     In short order, you have Mul trembling with lust, his hands clenching around big bunches of clothing shreds while his head is leaned back and he almost shouts out his moans. Seeing the ruggedly handsome face of your green-skinned playmate, you get a naughty idea of what you could do with the usually so gruff orc... so you stretch yourself a bit, grip his shoulders with your own strong hands - and plant a hungry kiss right on his spread lips, invading his mouth with your tongue. Mul's eyes open in a flash and he gives you a shocked expression, bucking up reflexively to throw you off - but the moment of resistance is short-lived. The pleasure he gets from your lips and tongue pushes aside the inherent worry of acting in a way that's 'not manly' - which leaves you with an eager, but inexperienced partner in making out.";
	say "     Sharing a very satisfying snog with the orc, you decide it's finally time to take him. Sliding down your hand between the two of you, grasping Mul's shaft on the way and giving it a little stroke, you soon take hold of your own shaft and guide it to your partner's waiting hole. As well-trained as you have him by now, the orcish slaver's pucker readily spreads around your manhood as it pushes into him, forming a delightfully tight ring that stretches around your cock. He feels amazing around you, nice and gripping even after having been fucked a few times - though that's not natural tightness anymore but rather conscious choice, as he flexes his inner muscles to give pleasant sensations to both of you.";
	say "     [WaitLineBreak]";
	say "     Pulling almost all of your shaft out again, you then slam back in with one mighty thrust, making Mul roar in lust and wrap his strong legs around your hips. It's obvious that while he may get off getting fucked, this orc brute is no sissy - he likes his sex rough, giving or taking it... and you're only too happy to oblige, pounding into his hole without holding back. Most of the time that you buck into him, your lips remain locked with the sexy male, muffling the moans and groans between the two of you - although that doesn't mean it's quiet in the out of the way locker-room, with the loud slapping of your crotch against his butt filling the air...";
	say "     Your wild coupling continues for some time, with you rutting the orc as you make out with him, building your arousal up more and more - until you finally reach the point of no return. Sinking your shaft into Mul all the way one last time, you tightly grip his shoulders with your hands as your balls pulse with the first massive spurt that splashes into him, followed by another, and another. Getting bred by another orc is the last straw for your green-skinned bottom boy too, given the pleasant sensations your pulsing shaft creates - as well as the intoxicating effects of his all the cum filling his hole and being absorbed into his body. Mul's own towering erection swings and twitches as long blasts of cum spray from the cock-slit of his member, liberally splattering the orc's chest.";
	say "     [WaitLineBreak]";
	say "     While still keeping your cock inside Mul's hole, you straighten your upper body and look down at the orc - well-bred and still with a man's shaft up bis butthole, which combined with a cum-splattered chest creates the image of a fine butt-slut. Chuckling at how far you can push the strong orc warrior by just using the right buttons, you scoop up a bit of his cum with your hand, then hold it out for him to lick clean. After Mul sucks the last creamy drop from your fingers, you get more and more, continuing to feed the eager orc his own load. Eventually, it's all gone and the muscled man is buzzed indeed, still suckling on your fingers to maybe get some more. By this time, your softening shaft has slipped out of his hole, so you stand up and grab your clothes and gear.";
	say "     After getting dressed, you walk to the door, taking another quick look at your little fuck-nest. Leaving the freshly-bred orc to stick his fingers up his own back door and suck what cum leaks out off the thick digits, you leave the room. Walking back into the main hall of the orc lair, you can't help but think about the reaction all these other brutes would have if they could see Mul now, lying on the floor and slurping your seed from his fingers. You'll have to come back and fuck him again soon - this is just too delicious to pass up.";

Orc Lair ends here.
