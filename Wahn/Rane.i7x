Version 1 of Rane by Wahn begins here.
[Version 1 - Initial Setup]
[Version 1.1 - Character relocation - Luneth]

"Adds a Rane Oni NPC, first through events, then to the library"

[ HP of Rane                                                 ]
[  0: not met yet                                            ]
[  1: lost/fled in the Rooftop Rumble event                  ]
[  2: won in the Rooftop Rumble event                        ]
[  3: lost/fled the Rumor part of the Rooftop Rumble event   ]
[  4: won the Rumor part of the Rooftop Rumble event         ]
[  5: player saw Rane move towards the Park                  ]
[  6: Rane's at the shrine in the park                       ]
[  7: Rane and player had sex, Rane brought to the Library   ]
[ 50: Rane and player had sex, Rane still outside            ]
[ 99: contact broken off                                     ]

Section 1 - Events

Rooftop Rumble is a situation. The level of Rooftop Rumble is 7.
The sarea of Rooftop Rumble is "Warehouse".

Instead of resolving a Rooftop Rumble:
	if HP of Rane is 0:
		say "     While walking along the currently deserted sidewalk, you suddenly hear a cacophony of various noises, which you quickly identify as the sounds of a fight. And not a small one either - it certainly sounds like a rough battle involving several people. Immediately coming to a halt, you begin listening intently, trying to determine where the noises are originating from. The sudden arrival of a leopardman impacting the ground with crunch of breaking bones the just steps ahead of you solves that question quickly, as he must have fallen - or been thrown off - the three story roof of the building. He's in a grisly state but alive, groaning in pain as the nanites inside him start rearranging his body back into its intended shape.";
		say "     Apprehensive of getting crushed under the next thing that might be falling down from above, you quickly duck into the nearest door and slam it shut behind you. Thankfully, even though the building looks inhabited there is no one in right now, though the sounds of fighting coming from above tell you that there's clearly more going on up there... albeit the frequency of sounds is becoming less and less. Against all good judgment, you feel the curious urge to find the source of this situation and begin to, as silently as possible, search for a way up. Finding a stairwell you slowly make your way up floor by floor, listening intently for where the sounds are coming from. Time seems to come to a standstill as you reach the top of the stairwell and are facing the rooftop door access. Seeing that the door is slightly ajar, hold your breath and take a quick peek.";
		WaitLineBreak;
		say "     A number of furred bodies are strewn about the rooftop, some splayed around each other and others lying on top of one another. From your hiding spot it is difficult to ascertain further detail than that, and you would have to step out into the open to figure out more. Though it's debatable if that would be such a good idea - considering the violent display before you and the sneaking feeling of being watched that you can't quite shake off. [bold type]Will you examine the scene anyways ([link]Y[as]y[end link]), or would you rather high-tail it out of there ([link]N[as]n[end link])?[roman type][line break]";
		if player consents:
			LineBreak;
			say "     You slowly open the rooftop door and make your way through, being careful not to step on any of the bodies or bloodstains. A more thorough examination of the bodies shows many different kinds of species in various states of trauma, though most do still seem to still be alive. Several of the bodies seem to be wearing some kind of unique clothing or uniforms as well, one or two of them look to be dressed in soldier fatigues as well, and there are a number of weapons strewn about or still in the hands of the victims.";
			say "     The unsettling feeling of being watched intensifies inside you, making your eyes dart around looking for any signs of movement. In an instant, a lumbering movement catches the corner of your eye and whirling around, you see one of the people that you thought were unconscious is very much awake! The leopardman regards you with a look of pure hatred, his somewhat cross-eyed gaze and jerky movements making it obvious to you that this one is not quite all there and is running on nothing but adrenaline. Spitting the slurred words '...this time I'm gonna get you!', he charges forward!";
			LineBreak;
			challenge "Leopardman";
			if fightoutcome >= 20 and fightoutcome <= 29:[lost]
				say "     The onslaught of the anthro feline's attacks becomes too much and you are knocked out cold by his last attack. You don't know how much later you regain consciousness, but as you do, you see your assailant sprawled on the roof right beside you. Seems the leopardman himself must have succumbed to his injuries before he could do anything more to you. Deciding that enough is enough, you pick yourself off the ground and quickly make your way to the roof access door and down the stairs, only slowing down again once you're several blocks distant to the building.";
				now HP of Rane is 1;
				now Rooftop Rumble is resolved;
			else if fightoutcome >= 30:[fled]
				say "     Feinting to one side, you dash to the roof access door the instant your assailant is distracted. You're quick enough to slam the door in his face as he tries to follow, then jump down the stairs three or four steps at a time as you go along. By the time you're on the ground floor and sprint out of the door to the street, you're not sure if he's still following you, but you keep on going anyways, not paying any mind to the other groaning leopardman still laying on the sidewalk. After rounding a few blocks you stop and take several deep breaths, relieved that you seem to have gotten away clean.";
				now HP of Rane is 1;
				now Rooftop Rumble is resolved;
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say "     You fight off the bloodthirsty leopardman and slam him to the ground, this time definitively too bruised and battered to get up anytime soon. He sputters a few breaths and then you hear him mumble, '...god-damned blue devil...', before he goes out like a light. Looking down upon the fallen opponent, you are left with the open questions of what on earth he meant, let alone what actually transpired here on this roof. In that instant however, you come to be aware of two things. First, the sense of being watched has not abated at all, in fact it is as strong as ever before. Second, you feel a definite presence on the roof, and it is not any of the bodies around you. Whirling around with grim determination to face down who- or whatever else might have shown up, you are greeted with a sight that suddenly makes the words of the fallen assailant ring true.";
				say "     Standing on the edge of the rooftop one building over is a towering figure that looks over 7 feet tall, with deep sky blue skin. The figure appears to be a male, with a muscular but not overly bulky body that is extremely well defined - from his broad shoulders and strong arms, over a chiseled chest down to remarkably toned legs. He is adorned with a white loincloth that flutters slightly in the breeze, held in place by a metal belt around his hips, and also is wearing some kind of ribbon around his left bicep. Some kind of bandage-wraps are tied around palms and wrists, stained red with blood in some places. Looking up at his face, you find that he has sharp and attractive human features plus a pair of long slender horns emerging from his forehead and arching slightly backwards. A mass of shoulder-length spiky white hair frames the picture, some of which seems done up in braids. A 'Blue Devil' indeed.";
				WaitLineBreak;
				say "     The being standing before you and calmly eying you up and down is likely responsible for the carnage that befell all on this rooftop, yet somehow you don't feel threatened by him at all. Meeting the blue devil's gaze head on, you see him cock his head to the side with what almost looks like an amused expression, then bare a side-grin and even ever so subtly licks his lip. In the next instant, he makes a step forward - right off the roof. Exhaling the breath you finally realize you had been holding onto all this time, you rush over to the edge and... see only an empty street below - well, except the still recuperating leopardman pancaked on the sidewalk, who won't be getting up anytime soon.";
				say "     Finding yourself alone on the roof, not counting the unconscious bodies, you finally decide that enough is enough and make your way back to the roof access door exit, only stopping briefly to grab a bottle of water that lies on the way. Exiting the building a few minutes later, you ignore the unconscious leopardman still on the ground and look back up towards the roof, the memory of the carnage and the creature who likely caused it still strong and fresh in your mind. The look he gave you before he vanished is something you won't forget anytime soon.";
				WaitLineBreak;
				say "     A part of you can only help but wonder if there is a way to find out more about what you witnessed. Maybe returning to this location at another time could yield some information. The inhabitants of the area no doubt fled when things started to get hairy, but they're likely be back at some point.";
				now HP of Rane is 2;
				increase carried of water bottle by 1;
		else:
			LineBreak;
			say "     Yes, caution seems to be a good idea here. Who knows what did all that to those guys. You quickly make your way down the stairs and straight out of the door, not paying any mind to the groaning leopardman still laying on the sidewalk. After rounding a few blocks you stop and take several deep breaths, relieved that the no one seems to have seen or followed you. You mentally mark that area as one to avoid in the future.";
			now HP of Rane is 99;
	else if HP of Rane is 2:
		say "     Returning to the location where you encountered the rooftop battle and the mysterious 'blue devil', you find that the area at this time is much more populated, with a definite crowd of people hanging around the building where the incident took place. You decide upon moving up to the throng of partially and fully transformed people, trying to pick up what tidbits of conversation they are gossiping about. In particular, you pay close attention to a trio of individuals, an older man sporting jaguar fur holding a bottle of beer, a young man who's still almost completely human and a lizard-like woman, who are discussing the aftermath of what happened before.";
		say "     There is some speculation about it being gang violence, until the younger man suddenly speaks up. 'I heard one of them say it was the Blue Devil...' The older man quickly interjects, 'Hah! that dumb rumor again? Look, there's a lot of crazy shit in this city, and granted some really tough critters out there, but a devil? No, it's simply just another gang war that went bad for all sides and they're making up excuses for such a disaster. Hell, that makes far more sense than believing there's a way even one creature could take out that entire mob in that manner.' The woman who'd been noticeably quiet since the devil was brought up suddenly speaks up 'He's real! Maybe like you said he didn't cause all that, but he's still real! My friends saw him once after something similar like this happened, and thank goodness they had the sense to run away. I've heard stories about the things he does... and I don't mean the fighting...' The older man regards her with a 'here we go again' kind of look and takes a pull of his beer, the younger one simply stares on.";
		WaitLineBreak;
		say "     '...I mean how he uses people like nothing,' the woman continues, 'He's a freak who preys on others for his own selfish deviancy!' The older man had apparently been holding onto a guffaw and blurts it out with a remark, 'Dear, you've just described probably 90% of this damned city - you realize that right?' Undeterred, the woman keeps on with 'Oh but he's worse! Most of those out there are mindless crazy things. He's not. He knows exactly what he's doing and it's disgusting! Hide your women, hell, hide your men from what I've heard!' The two men shift uncomfortably at that, looking up as if they were expecting the demon to jump them right then and there, so do several of the nearby citizens who were drawn to the conversation.";
		say "     The woman looks at you earnestly. 'Trust me. You ever see him, you run.' With that she strolls off on her way, several of the citizens giving her smug looks and some mumbling remarks about her sanity. The older man coughs and shakes his head. 'Uhh...yeeaaah... as I said, just gang fighting gone bad and nothing more.' He takes another drink and walks away into the crowd mumbling 'fucking crazy bitch' under his breath. The younger man apparently also took his leave as you did not even notice his departure.";
		WaitLineBreak;
		say "     As the crowd disperses, you take another look up at the rooftops and reminisce over your encounter while trying to parse the new information you've learned. He was no figment of imagination that's for certain, sure it was brief, but you saw the blue devil all the same. You begin to walk along the sidewalk trying to make sense of it all, thinking about how while it was clearly no ordinary gang fight, you cannot discount what the man said about how it was not possible one creature could have taken out so many others. Moving with such focus you barely take notice of a sound to your right.";
		say "     'Psst. Hey.' Looking over you see the younger man of the trio standing in an alley, he looks at you with an eager expression. 'You seemed pretty interested in us talking. Do you want to know more about the blue devil? I've got some things I could tell you...' He waves you over. Nodding your head, you approach him and he slowly makes his way further down the alley. 'Don't want anyone to see us,' he mentions somewhat nervously. As you reach a good distance further inwards, the young man suddenly whirls around and says 'Time for you to get talking.' In a complete change of his tone of voice and posture as well, he drops the act and gives you a threatening glare.";
		WaitLineBreak;
		say "     The man walks forward with menace, 'You're not from around here and suddenly turn up asking questions about the devil. That means you're working for one of them. So which is it then? The military? The cult?' He continues marching forward while you walk backwards in utter confusion from his abrupt change and words. You curse as your back hits the side of a dumpster and suddenly you find yourself cornered. The man stops in front of you, 'I'll ask one more time. What do you know? And who do you work for?' Feeling some renewed vigor, you sternly look him in the eye and state you have no idea what he's talking about. The man laughs and continues, 'Hah! You expect me to believe you're just some random moron?' He pulls out a long baton. 'Oh well, there's one way to find out!'";
		LineBreak;
		challenge "Human Gangmember";
		if fightoutcome >= 20 and fightoutcome <= 29:[lost]
			say "     Unable to withstand the assailants blows, you collapse against the dumpster, the man continuing to whack you with the baton a few more times for good measure. Still conscious, you become aware of him sifting through your belongings. After a short while he seems done and let's out a humorous sigh. 'Huh. Go figure, I guess you really were just a random moron. Oh well. Let this be a lesson to you about curiosity and dead cats and all that.' He wickedly grins and moves on his way. After some time you manage to gather yourself up and leave the alley and continue on your way, having learnt quite a painful lesson indeed.";
			now HP of Rane is 3;
		else if fightoutcome >= 30:[fled]
			say "     Taking your legs under your arms, you dash out of the alley and manage shake your human attacker after a while. Well, one thing is certain - it seems like you're not the only one interested in the big blue guy you saw...";
			now HP of Rane is 3;
		else if fightoutcome >= 10 and fightoutcome <= 19: [won]
			say "     Deflecting the blows from your human assailant's baton, you manage to grapple his arm and fling him head first into the side of the dumpster, sending the weapon flying far away. He slumps to the ground against the wall and you decide to see if he's still in a chatty mood. Sadly, the blow on the head seems to have knocked his marbles around a bit, so all you get is a slurred '...they said... anyone who asks about devil... make them talk...' before the falls unconscious. Even more curious than before, you regard the comatose body of the assailant and decide to search him. There's not much on him at first glance, though you do acquire a bottle of water and some chips. In one of his pockets however is something really interesting - a bunch of blurry photos.";
			LineBreak;
			say "     You flip through each one:[line break]";
			say "     The first image features a bunch of what appear to be soldiers dressed in full body armor. The second image shows a hooded figure of some kind. The third image shows a heavy spiked club - a really old one from the looks of it, fit to be in a museum. The fourth image is of a human man, a very young adult or even teenager. Someone has drawn a target over his face. The final image is hardest to make out given how blurry it is. It looks like it was taken in great haste in a scuffle of some kind. Studying the image closer, you make out the shape of what appears to be an arm thrusting out towards whoever was holding the camera. Following that outline, you can make out the origin of the arm and your eyes widen upon realizing you are looking at a face, with two horns, and the knowledge that you've seen that face before. Looks pretty much the same even with all the blur, could swear he's even got that same side-grin.";
			WaitLineBreak;
			say "     A noise startles you and you look up towards the rooftops finding nothing. As an ever increasing uneasy sensation washes over you, you decide to pocket the photographs and leave the would-be assailant out cold. Departing the alley, you continue along your way walking on the sidewalk, a bit frustrated in finding only more and more questions. Yet there something enticing about the whole mystery too, and you cannot help but think that, with all the rumors of the blue devil around here, he must be around often. Maybe if you keep exploring the area you might find out more.";
			now HP of Rane is 4;
	else if HP of Rane is 3 or HP of Rane is 4:
		say "     Driven by a continued curiosity, you return to the general area where you encountered the rooftop battle and the 'blue devil'. After some time searching through nearby properties and structures, without any result, you start thinking about turning back to other matters, but then suddenly you catch the sound of a shout, followed by several more. Instinctively you look up, wary of falling bodies - thankfully there are none - and listening more closely you realize that the sounds seem to be coming more from the ground level this time.";
		say "     Following the noise you wind up in an alleyway, with whatever is happening just around the next corner. But as you slowly and stealthily move forward to peek around it, everything falls silent again. Arriving at the corner, you have a look and see an undeveloped area between buildings - bearing a similar scene like on the rooftop. Wounded people lying on the ground all over the place, thankfully unconscious while the nanites slowly rectify the wounds all over their mangled forms. The scents and images of all the carnage give you a slightly nauseous feeling and again you feel a strong sensation of being watched.";
		LineBreak;
		say "     [bold type]Maybe getting involved in this is a mistake... it clearly is quite dangerous. Do you want to stay and look around anyways ([link]Y[as]y[end link]), or get some distance between yourself and this grisly scene, avoiding the area in the future ([link]N[as]n[end link])?[roman type][line break]";
		if player consents:
			LineBreak;
			say "     Deciding to take a leap of faith, you resolve yourself to stay and examine the scene. A more detailed look shows similar patterns to the rooftop battle - widely spaced slashes from claws or sharp fingernails on all the downed fighters, combined with nasty bruises and torn flesh. Whoever that blue guy is, he certainly fights well... there's just a few drops of blue blood scattered here and there. Deep in thought about the events that must have occurred here just a short while ago, you casually nudge over a severed forearm to its owner and see it start to grow back on when the ends meet. Then suddenly, you become aware of the sound of footsteps on gravelly asphalt - a number of people seem to be coming down one of the nearby alleys.";
			WaitLineBreak;
			say "     A group of individuals, eight relatively uninfected humans in total, storm into the open area just a second later, quickly surrounding you. They seem not too bothered by the carnage all around and look to be focused squarely on you. All appear to be wearing similar outfits, making you wonder if they are part of the same gang. One of them addresses the others, barking 'What the fuck is this?' with a look of angry disappointment. 'Sure as hell ain't the blue devil standing there.' The others nod in agreement. 'But there sure as no chance in hell this punk did all of this.' He gestures to the remnants strewn about.";
			say "     Another of the goons interjects, 'Poor son of a bitch must have made a really bad turn in Albuquerque.' He and the others begin to guffaw at that. The first one who spoke though, seemingly a leader type, interrupts, 'The fuck you assholes laughing at!? We put this sorry ass bunch out there to corner the devil and not only did they get themselves sliced to ribbons, they didn't even slow him down for us to finish either!' He kicks one of the downed fighters, hard enough to add a broken rib or two to his things to recover from. ";
			if HP of Rane is 4:
				say "Stepping forward, one of the other thugs points at you and states, 'This is the same sonuvabitch who ambushed me and stole the recon!' You quickly recognize the voice as the pipsqueak who had cornered you from before who you left out cold. You glare at him, wishing that he'd have learned his lesson to not mess with you after last time.";
				WaitLineBreak;
				say "     The leader looks at you with renewed interest. 'Oh really?' he flashes an evil grin, 'Well that definitely changes things. Knocks one of us out, steals the recon and then shows up here of all places and times? Hmm, doesn't strike me as one of those freaky cultists... and definitely not a soldier that's for sure.' He seems almost lost in thought for a bit, until he quickly rouses, 'Haha, like it matters, after what you've done you're dead anyway. Get to it boys!'";
			else:
				say "He looks at you, 'As for this asshole... well fuck it. I need to take my frustrations out on someone, hopefully this one will last on his feet for a few minutes.' He and the others begin advancing forwards.";
			LineBreak;
			challenge "Human Gangmember";
			if fightoutcome >= 20 and fightoutcome <= 29:[lost]
				say "     Unable to hold off the thugs, you collapse on the ground in pain and are quickly set upon by the whole group. 'Hmph, what a pathetic show,' the leader jeers as he walks forward, brandishing a wicked knife. 'I'm tempted to just carve this one up into little pieces - but no, that'd be a waste. Might get us a good deal from that nut-job at the Hospital who's always looking for some new subjects. And he doesn't care if we have some fun beforehand either, as long as the bastard stays alive - hold [if cunts of player > 0 and cocks of player is 0]her[else]him[end if] down good!'";
				say "     With all your effort you lash out kicking, squirming and even trying to bite your holders, but to no avail. As the blade draws down, you close your eyes to spare yourself the final sight of being cut open. You feel a pool of blood splash on your skin...";
				WaitLineBreak;
				say "     ...wait, that didn't hurt. You suddenly become aware of many different sounds, in addition to the restraining weights being lifted off of your body. Opening your eyes you try and stand up, but disorientation keeps you down and out of it. Man, that last blow to the head at the end of the fight really left an expression - your eyes cross and you have trouble focusing on anything. In the blurry haze before your eyes, you vaguely make out several of the goons moving about chaotically, while at the same time you clearly see a streak of blue bouncing about from one to another.";
				say "     The sounds of screaming, crashes and breaking bones fill the air until it grows silent once more. With all the strength you can manage, you try again to get to your feet, and just as you feel about to crash backwards yet again, something grips your arm tightly and in an instant you are hauled to your feet. Shaking your head and trying to get your bearings, your eyes finally regain focus, and realization dawns that you are looking at something very big and very blue.";
				WaitLineBreak;
				say "     [MeetRane]";
			else if fightoutcome >= 30:[fled]
				say "     Taking your legs under your arms, you manage to slip out of the circle of gang-members and make a run for it, dashing back into the alley you came from. Making use of all the tricks you know, you manage shake your human attackers after a while, but are left gasping for air and with burning leg-muscles. You resolve not to return to that area in the future, as the whole 'blue devil' and gang situation seems a bit too hot to handle.";
				now Rooftop Rumble is resolved;
				now HP of Rane is 99;
			else if fightoutcome >= 10 and fightoutcome <= 19: [won]
				say "     One attacker falls before you, only to be instantly replaced by another.";
				challenge "Human Gangmember";
				if fightoutcome >= 20 and fightoutcome <= 29:[lost]
					say "     Unable to hold off the thugs, you collapse on the ground in pain and are quickly set upon by the whole group. 'Hmph, what a pathetic show,' the leader jeers as he walks forward, brandishing a wicked knife. 'I'm tempted to just carve this one up into little pieces - but no, that'd be a waste. Might get us a good deal from that nut-job at the Hospital who's always looking for some new subjects. And he doesn't care if we have some fun beforehand either, as long as the bastard stays alive - hold [if cunts of player > 0 and cocks of player is 0]her[else]him[end if] down good!'";
					say "     With all your effort you lash out kicking, squirming and even trying to bite your holders, but to no avail. As the blade draws down, you close your eyes to spare yourself the final sight of being cut open. You feel a pool of blood splash on your skin...";
					WaitLineBreak;
					say "     ...wait, that didn't hurt. You suddenly become aware of many different sounds, in addition to the restraining weights being lifted off of your body. Opening your eyes you try and stand up, but disorientation keeps you down and out of it. Man, that last blow to the head at the end of the fight really left an expression - your eyes cross and you have trouble focusing on anything. In the blurry haze before your eyes, you vaguely make out several of the goons moving about chaotically, while at the same time you clearly see a streak of blue bouncing about from one to another.";
					say "     The sounds of screaming, crashes and breaking bones fill the air until it grows silent once more. With all the strength you can manage, you try again to get to your feet, and just as you feel about to crash backwards yet again, something grips your arm tightly and in an instant you are hauled to your feet. Shaking your head and trying to get your bearings, your eyes finally regain focus, and realization dawns that you are looking at something very big and very blue.";
					WaitLineBreak;
					say "[MeetRane]";
					now HP of Rane is 5;
					now Rooftop Rumble is resolved;
					now The blue Oni is unresolved;
				else if fightoutcome >= 30:[fled]
					say "     Taking your legs under your arms, you manage to slip out of the circle of gang-members and make a run for it, dashing back into the alley you came from. Making use of all the tricks you know, you manage shake your human attackers after a while, but are left gasping for air and with burning leg-muscles. You resolve not to return to that area in the future, as the whole 'blue devil' and gang situation seems a bit too hot to handle.";
					now Rooftop Rumble is resolved;
					now HP of Rane is 99;
				else if fightoutcome >= 10 and fightoutcome <= 19: [won]
					say "     You manage to fell another the goons on your own. The rest quickly grab them and move them out of the way. The leader is grinning very wide now. 'Nice! This one may not be the devil but at least they can fight! Let me show my appreciation here... was going to use this knife, but let's try something new.' The leader walks over to one of the building walls and grabs a thick water pipe. With a grunt of exertion he rips it clean off the wall and brandishes it in both hands. 'Now we're gonna have fun!' He takes a swing in the air, and you gulp as you realize his range with the pipe and that one blow would be enough to do major damage. Before you can react, you feel something landing directly next to you. Fearing one of the other goons got the drop on you, you whirl around ready to strike...";
					say "     Only the color of blue fills your vision. Standing directly next to you is the 'devil' himself, exactly as you remembered him, though up close and in your face, standing in a defensive posture facing the thugs. 'This looks fun. Thought I'd join you for a bit,' he tells you with a sidelong grin, then he calls out louder 'It'll be so much better for the rep of these wussies if it takes two to kick the snot out of them for once.'";
					WaitLineBreak;
					say "     The thugs back up in response, angry but also clearly afraid of the blue devil's power. The leader tightens his grip on the pipe and bellows, 'Fuck the kid gloves! Come on you cowards! Everyone attack at the same time!' He charges in with the pipe. In a blur, the blue devil swiftly avoids the swing and grabs hold of the pipe. Tugging on it, he catches the leader off balance and as the man stumbles forward, he releases his grip. Your compatriot takes the pipe in hand and whirls around, slamming it down on the leaders back. You inwardly grimace at the very loud *crunch* as the leaders back is broken and he falls unceremoniously to the floor.";
					say "     You watch in awe as the devil tosses aside the pipe and leaps at the incoming thugs, kick-boxing the first aside with a clawed foot and slicing up another on the back-draw. Time seems to lose its meaning as you continue gazing at the display unfolding in front of you. The big blue creature, no small thing by any means, moves around with the precision of an acrobat and swiftly bounces from one opponent to the next usually only landing a single hit to knock them out. By the time the dust has settled, all the goons are but motionless forms on the ground. Still in a state of shock, you barely take notice as a large hand grips your shoulder, and you realize that the 'blue devil' is right before you.";
					WaitLineBreak;
					say "[MeetRane]";
					now HP of Rane is 5;
					now Rooftop Rumble is resolved;
					now The blue Oni is unresolved;
		else:
			LineBreak;
			say "     Quickly deciding that the danger far outweighs any other consideration, you run back the way you came as fast as possible and continue running even after exiting the alleyway maze. After a few blocks you stop and catch your breath, no longer feeling the sensation of being watched. Resolving to put this nonsense all behind you, you press on, promising yourself not to return.";
			now Rooftop Rumble is resolved;
			now HP of Rane is 99;

to say MeetRane:
	say "     Gazing upon the form of the big man this close made you realize that your previous glimpse of him didn't do any justice. Sure all the details are the same, but now the creature's size and figure are even more apparent, with musculature so chiseled they might as well have been cut from stone, a feat even more impressive considering that his figure isn't super bulky and proportioned quite well. Staring up at his face, you can see a bit more detail in his expression now, a face that - while clearly demonic - also has a handsome look to it. He may have horns and sharp teeth, but the calm expression and friendly smile make up for it. His eyes look to be a deep magenta with black irises and bright red slitted pupils, and the glowing look he's giving you is almost one of mirth.";
	say "     'You did good,' he says before adding, 'I'm a bit surprised they jumped you instead of trolling around for me. Hah - maybe I hit em a bit too hard in the head last time and knocked a few screws loose. And still it didn't help em any - they sure know whom to pick for their daily beatings.' The demonic-looking man gives a casual shrug as he looks over the unconscious gang-members, then turns back to you, his eyes still shining as he gives you a once-over. Placing one hand on his chest while the other clasps your shoulder, he gruffly states, 'Call me Rane,' followed by a slight nod and the question, 'And you?' Taking note of his firm grip of his large hand, you offer up your name, but before you can state anything more, you find yourself drawn against him, as Rane has quickly slipped his arm around your waist.";
	WaitLineBreak;
	say "     Grabbing a handful of your rear, he continues, 'You're strong. I like strong people, that's why I've been watching you.' His hand starts to appreciatively squeeze your butt a few times. 'I'm strong myself. I love kicking ass... love fucking ass too.' In a show of emphasis he flexes the muscles in his free arm and legs while tightening his grip around your ass, his gaze is wandering up and down your body. Before you can react to his brazen touches, he suddenly removes his hand and takes up a more neutral stance. He's a pretty direct and physical guy, clearly liking to play grab-ass, but it seems that (unlike most creatures out on the streets) Rane knows the boundary between being a somewhat pushy charmer and flat out forcing sex on people.";
	say "     Meeting your gaze with his own and giving an inquisitive, yet amused expression, the blue man smiles and asks in an enticingly rough voice, 'What's a nice piece of tail like you doing in this area, mixing it up with the gutter rats?' You offer a brief summary of your time in the city, glossing over the more 'interesting' adventures, not wanting to encourage this clearly horny devil eying you like a piece of meat. You get to the part where you first met up with Rane, pointing out how he almost dropped a leopardman on your head. The devil says with a snicker, 'Wasn't aiming for you,' then cranes his neck a bit to look at your ass and continues in a joking tone, 'Believe me, I don't miss if I set my mind to hit... on someone.' He shrugs and says, 'It was a lucky throw. Might not have run into you otherwise. Still... I guess I'll have to be more careful when I throw people off buildings in the future.' You're not sure if he is actually joking with that last part. Given just the little bit of Rane's track-record that you know, things like that could be a common occurrence for him.";
	WaitLineBreak;
	say "     You're about to ask Rane more about those guys who are after him, but he interrupts you, 'It's good to find someone who knows how to fight! I like seeing that.' He licks his lips, showing a row of sharp teeth in the progress, then says 'It really gets me hard.' Your eyes are reflexively drawn to his crotch and notice a very prominent bulge on display there, showing this demon is not all talk. Before anything else can happen, Rane suddenly raises a finger to his lips, making a 'shhh' sound and turns his head a bit, listening intently with pointy ears. You don't hear anything, but he says, 'What fucking timing. Several large groups of more shitheads are on the way. As much as I love a good fight, I'm 'distracted' with something better.' You jump a bit as you again feel Rane give your ass another quick squeeze. 'Let's continue this somewhere more 'private'...' With an inviting wave of his hand, Rane takes off, bounding over the asphalt with large steps.";
	LineBreak;
	say "     [bold type]Do you follow the blue oni?[roman type][line break]";
	if player consents:
		LineBreak;
		say "     Despite the creeping thought that you're going with someone you only just met in this lawless city, you decide to follow Rane. That turns out to be a much more difficult task than expected given the devil's unbelievable speed and the fact that he doesn't look back to check on you. Even going as fast as you can, you're steadily losing ground, but at least you manage to keep him in sight until he enters the City Park. Following into the overgrown park you quickly realize that you lost track of him and before you know it are stumbling aimlessly through the vegetation, almost positive now that you're lost. It takes some time for you to find your way back out again, but you do manage it by climbing trees from time to time to aim your path towards one of the burned-out husks of distant high-rises. Well, at least now you know that Rane lives somewhere in the [bold type]park[roman type], so you can explore it sometime and hunt for the [bold type]blue oni[roman type].";
		move player to Park Entrance;
	else:
		LineBreak;
		say "     You watch as Rane takes off in one direction, not looking back to see if you're following as he bounds over the asphalt. Thinking about everything you saw and heard, despite having been 'saved' by him, you still don't feel quite comfortable in just going with someone you just met and don't actually know. Before long he's disappeared and you make the decision to get going yourself - not in the direction he went though.";
		say "     Part of you feels bad for seemingly walking out like that. A thought crosses your mind as you realize that the direction Rane was heading in coincides with where the City Park would be, you wonder if maybe exploring the [bold type]park[roman type] and hunting for the [bold type]blue oni[roman type] would be an option if you had a change of heart in the future?";

The blue Oni is a situation. The level of The blue Oni is 5. The blue Oni is resolved.
The sarea of The blue Oni is "Park".

Instead of resolving a The blue Oni:
	say "     As you move through the overgrown park's wilderness, you have an eye out for Rane, the blue oni whom you met in the warehouse district... without much success. Lots of trees and large bushes everywhere make it easy for someone to conceal himself in the woods, and you don't think there's much chance of finding the blue devil if he doesn't want to be spotted. A bit disappointed from the fruitless search, you wander back towards the entrance of the park - only to suddenly hear a voice from somewhere to the side: 'Hey there, sexy. Been waiting for you slow ass...'";
	say "     You find the blue devil leaning up against one of the pillars forming the Torii arch leading to the Japanese shrine in the park. From the amused gleam in his eyes, he must have spotted you when you were out looking for him, then circled around to oh so casually wait for you here. He certainly is very sure of himself. You can't help but admire his imposing presence, fit and muscular and with an enticing air of masculinity. Giving you a meaningful wink, Rane steps away from the pillar and walks into the small bamboo forest concealing the shrine.";
	WaitLineBreak;
	say "     Following the oni, you walk along the narrow path to the shrine itself, where you find Rane standing in front of the small, but well-kept stone structure. He watches your approach in the large round mirror forming its center, where the perfectly polished bronze disc is resting in an elaborately carved stone stand. Rane's gaze rests on your reflection for a long moment, closely examining it with an intense expression, ";
	if hellHoundLevel > 0: [Hellhound Pact]
		say "then his eyes go wide as the image changes. The mirror now shows you on your hands and knees, with the hellhound you made your deal with mounting you, hips thrusting mercilessly as he knots and breeds you. The beast gives a silent howl in the reflection, then turns its head to look straight at you out of the mirror, eyes burning in an unholy fire. Then suddenly, from one blink to the next, the mirror returns to just showing the normal reflection of what's in front of it.";
		say "     Rane looks at you with a shocked expression, then says 'You made a deal with that beast? I would never have expected something so vile from you. Stay away from me.' After a quick murmur in Japanese and a bowing towards the mirror, the blue oni then dashes off, vanishing between the bamboo poles before you can do or say anything.";
		now HP of Rane is 99;
		now battleground is "void";
		move player to shrine;
		remove Rane from play;
	else if jackalmantf is 4: [Jackalman Transformation]
		say "then his eyes go wide as the image changes. The mirror now shows someone standing behind you - it's the jackal-headed man you met in the museum, with one hand-paw resting on your shoulder. The image turns his head to look out of the mirror at you, then vanishes after giving you a nod with an amused expression on his face.";
		say "     After silently murmuring a few Japanese words and giving bow to the mirror, Rane turns around and faces you once more. He looks at you with a somewhat more respectful tone in his eyes, then says 'Anubis is watching out for you? That's a powerful patron you have there. You'll have to tell me sometime how you managed to attract his attention and favor.' Looks like he's now ready to talk... and do other things with you.";
		move Rane to shrine;
		now HP of Rane is 6;
		now battleground is "void";
		move player to shrine;
	else if Nightmaremastery is 1: [Player is Stablemaster]
		say "then his eyes go wide as the image changes. The mirror now shows you sitting on a large horse made of fire and shadows. It's clearly male, with an erect horsecock dangling between its legs, dripping cum from the tip. The stallion turns his head to look out of the mirror at you with flaming eyes, then nods its head at you as if promising that together you will mount and rule over everything.";
		say "     After silently murmuring a few Japanese words and giving bow to the mirror, Rane turns around and faces you once more. He looks at you with a somewhat more respectful tone in his eyes, then says 'So, the Nightmare spirit infuses you. Fine by me - but don't think you'll be able to make me your bitch. This oni is made from tougher stuff.' Now knowing who and what you are, he nevertheless stays where he is, looking ready to talk... or do other things with you.";
	else:
		say "then the usual open smile creeps back over his face and he nods to your reflection. After silently murmuring a few Japanese words and giving bow to the mirror, Rane turns around and faces you once more. Looks like he's now ready to talk... and do other things with you.";
		move Rane to shrine;
		now HP of Rane is 6;
		now battleground is "void";
		move player to shrine;
	now The blue Oni is resolved;

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Human Gangmember";[The creature's name as displayed and used in naming descriptions]
	now attack entry is "[one of]The young man gives you a kick.[or]He smacks his baton into your side.[or]You get hit in the face by the human's elbow.[or]He tries to knee you in the groin - even though you manage to turn in the last moment, it still smarts as his knee hits your leg.[at random]";
	now defeated entry is " ";
	now victory entry is " ";
	now desc entry is "A young, tough-looking human (well, mostly human) with a baton attacks you.";
	now face entry is "<noninfective enemy>";
	now body entry is "<noninfective enemy>";
	now skin entry is "<noninfective enemy>";
	now tail entry is "<noninfective enemy>";
	now cock entry is "<noninfective enemy>";
	now face change entry is "<noninfective enemy>";
	now body change entry is "<noninfective enemy>";
	now skin change entry is "<noninfective enemy>";
	now cock change entry is "<noninfective enemy>";
	now str entry is 14;
	now dex entry is 16;
	now sta entry is 12;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Male";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 50;
	now lev entry is 7;                [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 6;               [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 8;        [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 4;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50;
	now loot entry is "";                             [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;                   [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;                             [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "lithe";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;           [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";


Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Blue Oni";[The creature's name as displayed and used in naming descriptions]
	now attack entry is "<should not fight>";
	now defeated entry is "<should not fight>";
	now victory entry is "<should not fight>";
	now desc entry is "<should not fight>";
	now face entry is "<noninfective enemy>";
	now body entry is "<noninfective enemy>";
	now skin entry is "<noninfective enemy>";
	now tail entry is "<noninfective enemy>";
	now cock entry is "<noninfective enemy>";
	now face change entry is "<noninfective enemy>";
	now body change entry is "<noninfective enemy>";
	now skin change entry is "<noninfective enemy>";
	now cock change entry is "<noninfective enemy>";
	now str entry is 22;
	now dex entry is 17;
	now sta entry is 16;
	now per entry is 12;
	now int entry is 9;
	now cha entry is 6;
	now sex entry is "Male";           [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 95;
	now lev entry is 12;               [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 13;              [ Monster's average damage when attacking. ]
	now area entry is "nowhere";       [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;              [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 12;       [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 5;         [ Cock width, more commonly used for ball size. ]
	now breasts entry is 0;            [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;        [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;       [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;        [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;         [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 70;
	now loot entry is "";                             [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;                   [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;                             [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]meaty[or]powerful[at random]";
	now type entry is "[one of]oni[or]demonic[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;           [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";


Section 2 - NPC

Rane is a man.
The description of Rane is "[RaneDesc]".
The conversation of Rane is { "Oh, hello." }.
lastfuck of Rane is usually 555.

to say RaneDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Rane] <- DEBUG[line break]";
	say "     Standing before you - and even posing a bit, as he notices your gaze on him - Rane the blue oni towers just over seven feet tall. He is clearly male, with taut muscles over his big, but still lithe and flexible body. Beginning at broad shoulders and strong arms, his body looks fit for a masterfully crafted statue, with well-defined pecs and an impressive eight-pack of abs. Below the abs, you see his only real piece of clothing - a white loincloth, held in place by a metal belt around his hips. Completing the inspection of his body, your gaze then wanders over his long and toned legs and ends up at the oni's feet with their claw-like nails.";
	say "     Looking back up at Rane's handsome face, now bearing a teasing and seductive grin, you study the two long and slender horns emerging from his forehead. Still showing off a bit, the blue oni gives a television-worthy hair-toss that makes his partially braided, shoulder-length white hair cascade down and expose his pointy ears with their iron ring piercings. Rane adds in his enticingly brutish voice, 'Wanna get a touch?'";

instead of sniffing Rane:
	say "     Rane has a nice smell, strong and masculine, with a bit of a spicy undertone.";


instead of conversing the Rane:
	LineBreak;
	say "What do you want to talk with Rane about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Him";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Rane's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Shrine/Mirror";
	now sortorder entry is 2;
	now description entry is "Ask him why he brought you to the shrine in the park";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sex";
	now sortorder entry is 3;
	now description entry is "Talk about sex with Rane";
	sort the table of fucking options in sortorder order;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Fighting";
	now sortorder entry is 4;
	now description entry is "Talk about fighting with Rane";
	sort the table of fucking options in sortorder order;
	[]
	if Dexterity of Eric is 6:
		choose a blank row in table of fucking options;
		now title entry is "Eric";
		now sortorder entry is 5;
		now description entry is "Tell the oni Eric left because of him";
		sort the table of fucking options in sortorder order;
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
			say "[bold type][title entry]: [description entry]?[roman type][line break]";
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Him"):
					say "[RaneTalk1]";
				else if (nam is "Shrine/Mirror"):
					say "[RaneTalk2]";
				else if (nam is "Sex"):
					say "[RaneTalk3]";
				else if (nam is "Fighting"):
					say "[RaneTalk4]";
				else if (nam is "Eric"):
					say "[RaneTalk5]";
				wait for any key;
		else if calcnumber is 100:
			say "[bold type]Break off the conversation?[roman type][line break]";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the blue oni, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say RaneTalk1: [talk about him]
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:
			say "     Rane makes a rumbling sound as you ask him about himself, saying, 'Ain't much to tell. I'm a demon and I'm blue from head to toe, even my balls.' Roughly laughing at his own joke, Rane continues, 'The fastest cure for that is to suck on them like lemons... mine are just as firm.' He gives you a wicked, yet playful smile to go with that. Then he steps up to you, close enough so you can feel the warmth of his skin, and runs a hand enticingly down your side. 'But really - the only thing you need to know is when I'm ready to give you a hard fuck. Which means almost always, for a sexy thing like you.' Giving your ass a playful squeeze, he saunters off, though not without giving you a meaningful wink over his shoulder.";
		-- 2:
			say "     Rane shrugs as you ask him about himself, saying, 'Not much to say. I'm an Oni - that's Japanese for 'ogre', 'troll' or 'demon' - take your pick. I got a super strong body and a big dick. Couldn't have asked for anything more.' He chuckles at that and gives his hips a subtle grind while winking in your direction, though as if reminded of something, he continues, 'Yes, Oni have long big clubs... - the iron kind that they take with them everywhere and use for battle.' He laughs at his joke, 'Got rid of mine. Long story.' With that, he abruptly drops the topic.";
		-- 3:
			say "     Rane shrugs as you ask him about himself, saying 'Not to brag, but I'm the scourge of the Opulence street gang... you heard of them? Pretty ruthless, must have pissed off one of their bosses.' Rane looks lost in thought for a second, but then continues, '...and a few others too. It's fun to beat up those who deserve it - and those guys are a really bad lot. Pretty stupid too - one would think that they'd start running when they see me, but they just send more men, thinking they have a chance.'";
		-- 4:
			say "     Rane gives you a strange look as you ask him about himself. He walks up close to you and begins to circle around, saying, 'Oh, curious are we?' His body language is undeniably erotic as he circles you slowly, one of his hands stroking enticingly across his own chest and the other moving across his own crotch, sliding along the fabric of his loincloth. 'Well, I can tell you lots of stuff, though the words are more of an afterthought...' At that, Rane stops to stand behind you and pushes up against your backside. Even through your clothing you feel the heat off his skin, and especially feel his semi-hard shaft poking in between your ass cheeks. His hot breath makes you shiver as he continues, 'Once I start fucking a nice tight ass, it'll be hard for me to keep quiet. I think you get the point.' He disengages from behind you and walks off with a very pleased grin, leaving you with serious thoughts of following him.";

to say RaneTalk2: [talk about the shrine/mirror]
	say "     Rane explains, 'I normally do not do this for every hot piece of ass I see, but I found you more enticing than others - in which case I wanted to be a bit careful and test you.' Then he traces a round shape in the air with his hands and continues, 'That mirror is called a shintai, inhabited by a powerful kami - a demigod of sorts. The spirit can allow you to see the real truth of things in it, which is what I asked of him.' With a friendly grin, the muscled oni sets a hand on your shoulder, then says, 'I'm glad you passed so we can enjoy each others company - and [if HP of Rane < 7] maybe[end if] enjoy each other.' Finishing the sentence, he slides his hand over and down your chest teasingly, trailing off just before reaching your crotch.";

to say RaneTalk3: [talk about sex]
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     Rane chuckles, 'Ah - my favorite subject,' as you bring up the topic, stepping up close to you and teasingly brushing his hands over your body. 'People keep saying one shouldn't just have fuck anyone who catches your eye - well, fuck them.' His voice lowers to a joyful whisper for a moment as he adds, 'And believe me - I have. More than one. Prudes usually are the loudest when they cum.' Rane's eyes take on a faraway expression for a second as he revels in a memory, then he focuses back on talking to - and touching - you. 'Why should anyone deny themselves a pleasure that's a basic part of their existence? Nah - I have a code. If I see something I like, I'll stick my dick into it.'";
			say "     With that said, he pulls you against his chest, then sets both his hands on your butt and gives it an appreciative squeeze before letting go again. 'Just so we're clear - I'm not one of those wild beasts that goes around raping people. I only play with those who want me to... got me a code after all, and the chase is half the fun. Trust me, not many can resist this body, and then it's only a matter of time before they're sitting on my cock.' As Rane says that, he moves his hips a bit, making the big bulge in his loincloth brush against you. Then suddenly, he steps back from you and says, 'You're welcome any time,' pointing at his crotch with a salacious wink.";
		-- 2:
			say "     Rane chuckles, 'Ah - my favorite subject,' as you bring up the topic, stepping up close to you and teasingly brushing his hands over your body. 'There's so much fun to be had filling up the right guy or gal with cum - as long as they don't get all clingy afterwards. Hah!' He gives a hearty laugh at his own joke. You get the feeling he does this a lot. Continuing on, he says 'I mean... why stick with just one partner and get bored with each other before long?' With a charming grin and a light nudge of his elbow, he adds 'I need variety to keep things fresh, you understand? I'm just not the kissy and huggy type. When I wanna fuck, I want to fuck - as many as I can.'";
			say "     With that said, he pulls you against his chest, then sets both his hands on your butt and gives it an appreciative squeeze before letting go again. 'Don't get me wrong - I'm not one of those wild beasts that just forces himself on others, then mounts the next person on the street immediately afterwards. But... finding yourself in the arms of someone who just won't let go after you had sex - 'cuddling' - yuck, unless they're doing it to my dick, I don't go there. If I'm in a bed, I want to fuck or sleep - that's part of my code. But enough of that for now. How about we do the real thing instead?' As Rane says that, he moves his hips a bit, making the big bulge in his loincloth brush against you. Then suddenly, he steps back from you and says, 'I'll be waiting for you,' with a salacious wink.";
		-- 3:
			say "     Rane chuckles, 'Now we're talking,' as you bring up the topic, stepping up close to you and teasingly brushing his hands over your body. 'An Oni like me has pretty intense needs, you know. My desires really build up if I go without wrapping my dick in something tight for too long.' His eyes wander down over you, shamelessly checking you out, and Rane openly rubs the bulge in his loincloth. 'I don't want to get fucking blue balls - uh well, blue-er balls - so I gotta empty them out as often as I can, and the best place for that is someone's ass, though of course the pussy and mouth do just fine.'";
			say "     With that said, he pulls you against his chest, then sets both his hands on your butt and gives it an appreciative squeeze before letting go again. 'Don't get the wrong idea - I'm not one of those wild beasts that just forces himself on others, then moves onto the next immediately afterwards. But... if there's someone who wants it, why shouldn't I have fun with them? Speaking of which... how about we do the real thing instead?' As Rane says that, he moves his hips a bit, making the big bulge in his loincloth brush against you. Then suddenly, he steps back from you and says, 'You know you want it bad,' with a salacious wink.";

to say RaneTalk4: [talk about fighting]
	say "     Rane grins widely and says 'I love to fight, almost as much as I love to fuck - it feels amazing to get this body going, using my strength and speed.' Cracking his knuckles and wiggling fingers with sharp nails in the air before you, he continues, 'Haven't found anyone yet who has been able to push me to my limits, though some guys do their best to try, attacking me in groups. They're pussies alone, but there's at least some fun in it when they team up. Everyone heals really quickly these days, otherwise I'd run out of enemies. It would get pretty dull without them, though perhaps not too much...' He flashes a toothy grin at you and licks his lips for emphasis.";

to say RaneTalk5: [talk about Eric]
	say "     You set out to talk with the blue oni, your mind set on confronting him about what you've learned from Eric, and the young man fleeing to get away from him. As you get closer, the realization strikes you that the big demon does look uncharacteristically pensive and unhappy, standing at the railing of the upper library level and looking down at the ground floor as if searching for something. Stepping up right next to him, you hear the large oni take a few quick breaths through his nose, as if sniffing for something. Then he turns to you and says, 'Hey, have you seen our little college buddy? I'm wondering why his scent has faded so much. Ah, that grade A pussy just has the most enticing... What? Don't tell me you didn't smell it. He's practically been begging to get pounded! Man, you people really should learn to use your noses.' Rane taps his with a finger, then shrugs. 'So, did his heat finally run out? Not that that'll stop me from pounding that sweet guy - in the pussy, or boipussy, now that I know what a sexy thing he is.'";
	say "     Shaking your head, you inform the oni that Eric left - packed his bag and set out into the city. Eyebrows drawing together in puzzlement, the blue oni gapes at you. 'What?! It's dangerous out there, for a small guy like him! I mean, he sure can run, but there are times when that's not enough and you got to smack a few heads together.' Making a fist and hitting his open palm demonstratively, the blue oni asks, 'Now why the hell would he do that?' It's clear from his voice that Rane is truly baffled by this, still not being aware that his actions drove Eric out.";
	LineBreak;
	say "     [bold type]Will you lay the facts out for the oni, as bluntly as he seems to require ([link]Y[as]y[end link])? Or do you want to leave him blissfully unaware about it all ([link]N[as]n[end link])?[roman type][line break]";
	if player consents:
		LineBreak;
		say "     Not holding back at all, you flat-out tell Rane it's his fault. Eyebrows drawing together, the blue demon looks at you with arms crossed and replies, 'You're kidding me?! That's not a thing to joke about. Eric could be getting raped in some alley and you're making silly...' Further words fail to come as he sees the unchangingly serious expression in your face. Rane's eyes widen as he realizes you were entirely serious. 'What?! No! Eric's my buddy. The sweet cuntboy I've...' You interrupt at that point, continuing with the words that he's been making use of Eric whenever he wanted - pushing the young man to have sex, overwhelming his will to refuse before he could even get a word out. All of which frightened Eric deeply - as he still is dealing with all the changes going through him. Bodily and mentally, he's still adjusting to the reality of his new self. And Rane just used him as his slut - not exactly gently either.";
		say "     '...Fuck. Fuck, fuck, FUCK!' the oni swears after gaping at you for several seconds, then grips the railing in front of him hard enough to leave gouges with his claws. He... he was into it so much! You don't know how strongly his need to be bred hang in the air! And I did - Damn! NO!' Rane utters the final word in a bestial howl, taking a few deep breaths afterwards to try and compose himself, his words now full of remorse. 'I really have no excuse to have acted like I did. Getting carried away that much, letting my true demon beast out fully. And you're sure he...' Rane's eyes search yours out almost pleadingly, but you can offer him no redemption, only nodding and recounting how scared and vulnerable Eric is. His self-doubts about the change, and the very real possibility that nanites are still slowly tinkering with his mind, pushing whatever agenda their scrambled programming demands.";
		LineBreak;
		say "     Looking down at his large clawed hands, Rane grumbles, 'Guess I really should have been a red one. You know, red onis are supposed to be the wicked, stupid oafs. Using people, eating people, driving them away. Bah! So much for thinking I was being the blue charmer who can make anyone fall for him. Time to open my eyes and fix this!' Pushing away from the railing, Rane starts to walk towards the stairs leading down. You follow his brisk steps and ask what he wants to do - as the chance of finding Eric in a city this big and chaotic is minuscule. Looking to the side, he replies in a curt tone, 'I told you his scent has faded - and that's just it. It's not gone completely yet, I can follow him. So keep up, if you wanna help!' With that said, Rane wrenches open the front doors of the library and rushes out, sniffing the air and then taking off at a sprint.";
		LineBreak;
		say "     [bold type]Will you follow Rane?[roman type][line break]";
		if player consents:
			say "     You're barely able to keep up as Rane prowls the streets with furious intensity, scattering more than a few groups of creatures crossing his path as they see his expression. No one wants to get on the bad side of a large oni, not when he's quite obviously angry - at himself, but still. Driving away anyone and anything that might impede your progress, even kicking aside several the burned-out wrecks of cars standing in the way, Rane leads you through the urban wasteland with record speed, until he eventually jerks to a stop at the entrance of an alley. You're able to catch up with him, still breathing hard, and see what the big oni is looking at a moment later. It's Eric, almost at the other end of the alley, the strap of his heavy sports bag over one shoulder and loosely clutching a baseball bat in one hand. He still hasn't noticed you, most of his attention being on the way ahead and what danger might be lurking in the trash container just a few steps in front of him.";
			LineBreak;
			say "     Several seconds tick by as Rane takes a deep breath, then another one before he eventually starts forward in a jog, calling out for Eric. Jerking himself around and seeing who it is, fear overshadows Eric's face and he shouts back, 'S-Stay away from me! I don't w-want to be your fucktoy!' Then he glimpses you past the blue oni, and his expression flashes over into anger, 'You! You promised I'd be safe with you. After Rane took advantage of me, I thought it was not your fault for having a demon as a friend. For letting this beast stay with you too, but now you're HELPING him get me!' Tears of betrayal run down the young man's face as he screams, 'I never wanna see either of you again!' After a swing of the baseball bat in your direction, he turns and runs, stumbling a little in his haste to get away.";
			say "     'Eric, wait! We got to talk,' comes Rane's shout and the oni bursts forward in a rapid tempo, which only results in Eric panicking even more, looking over his shoulder as he dashes out of the alley. Right into a little pack of three hellhounds waiting for him with slavering jaws, howling in malicious glee as they pounce on their newest prey. The college athlete manages to dodge the first hellhound baying for his blood, but not without being slowed down, and a second one gets a hold of his shoe and wrenches the young man off his feet. Going down with a yelp, Eric barely has time to roll over on his back and bring the baseball bat up, jamming it between the hellhounds jaws sideways as it tries to tear at his throat.";
			WaitLineBreak;
			say "     With one demonic dog pawing at his chest and trying to bite the length of wood holding him back in half, Eric's first attacker homes in to go for the teen's crotch, ready to rip his pants apart and maul him badly. Then Rane is there, joining the fight with a jumping leg kick that throws the canine beast to the side with the snap of several bones breaking where the oni's foot connects, its ribcage partially caved in. The third of the trio of demonic hounds looks at the four-way brawl between his two pack-mates, Rane and Eric, then lets his head whip around to (presumably) easier prey - yourself. With a howl, the beast attacks... or tries to, as the blue oni catches its tail with a lightning-quick move, wrenching the hound backwards.";
			say "     The fight that follows is surprisingly quick and remarkably brutal, as Rane takes all of them on at once. You try to join in a time or two, but with the oni acting as a merciless whirlwind of destruction and maiming, there isn't really a chance to do so. He's clearly used to fighting alone, and you'd just get in the way - of him punching and kicking the hounds to keep them off Eric. As you watch intently, you cannot help but notice that Eric is also watching Rane closely, unable to not be amazed at the oni moving with such power, his flowing agility despite a large form and thick muscles. With the oni's exceptional combat skills, his fight against the hounds works out fairly well, even if it is three on one - until two of the beasts perform a joint attack, allowing the third to jump Eric again, pulling him down to the ground to hit his head on the concrete sidewalk with a resounding thunk. Seeing Eric lie in a boneless heap on the ground, Rane goes completely wild, and what previously was a no holds barred fight now becomes a pandemonium of violence.";
			WaitLineBreak;
			project the figure of RaneDefendingEric_icon;
			WaitLineBreak;
			say "     Bones are broken, one hellhound's neck snapped and the carcass thrown against a wall, the second quite literally gutted as Rane's clawed hand opens its belly in a long rip. Number three tries to flee, bowling you over as it dashes into the alley - only to have Rane go after it in a running jump, allowing him to catch the edge of a metal fire escape, swing off it and land on top of the creature, ramming its bleeding muzzle into the ground under one foot. The sound that follows reminds you of a melon being thrown out of a window - and even without looking closely at the gory mess, you're fairly sure that this demon won't be getting up again, ever.";
			say "     Huffing and growling, the blue oni turns from his last opponent, his now faintly glowing eyes searching for something else to kill. This is as demonic as you've ever seen him, and for a second you wonder if he'll go for you next - but then the large man blinks and the murderous intent leaves his face, to be replaced by boundless worry. Rushing forward, Rane scoops up Eric's limp form, cradling him to his chest and parting his hair as gently as possible to check for injuries. [if perception of player > 10]You hear him murmur, 'I'm sorry. I'm sorry. I won't make you do anything ever again,' to the young man in his arms[else]You hear him murmur something to the young man in his arms, too low to make out quite what it was[end if]. A moment later, the oni gives a sigh in relief and calls to you, 'He's pretty groggy, but he opened his eyes and focused on me for a second before passing out again. No serious harm done, I think. Just needs some rest.'";
			WaitLineBreak;
			project the figure of RaneSavingEric_icon;
			WaitLineBreak;
			say "     With Eric being carried by the blue oni, you leave the battlefield with its three dead hellhounds and make your way back to the library. After descending into the bunker, Rane gently lowers Eric onto his bed, then says, 'Get better, little buddy.' And with that, he vanishes upstairs, leaving the student to recuperate in peace and not get a fright when he wakes up with the oni's blue form standing over him. A short while later, Eric's eyes open and he looks at you from his position on the bed. 'So... I guess that was really stupid of me, huh? Thinking I can make it out there alone. Rushing onto the streets and then having to be rescued... by him.'";
			say "     The college athlete shudders slightly, then gingerly feels over the lump on his head before taking a deep breath. 'He apologized to me, you know.' Eric adds quietly, then swallows and continues, 'Said he wasn't gonna do...things to me - with me - anymore. With going outside out of the question, I guess I'll just have to... wait and see, if that's true.' With that, the young man pulls up his blanket and turns away from you, showing that he's not willing to talk right now and wanting to get some rest.";
			now Dexterity of Eric is 7; [Eric's brought in, some talking comes next]
			now EricFleeingCountdown is turns; [re-using the variable to give him time to cool off]
			move Eric to bunker;
		else:
			say "     A small moment of hesitation is enough to lose sight of the blue demon. He returns about an hour later, a grim expression on his face, saying that he doesn't want to talk about it as you ask him what happened. Sounds like things didn't go well, and you won't be seeing Eric again.";
			now Dexterity of Eric is 99; [Eric's lost]
	else:
		LineBreak;
		say "     Giving a shrug, you stay silent and watch Rane grimace, then finally say, 'Well, it's his decision I guess. Let's hope he makes it alright. I'd hate to learn such a sweet guy falling victim to some of the critters out there.' With a sigh, the blue oni lets go of the railing and wanders over to the spot he usually hangs out at.";
		now Dexterity of Eric is 99; [Eric's lost]

Instead of fucking Rane:
	setmonster "Blue Oni";
	choose row monster from the table of random critters;
	if HP of Rane < 7:
		say "     [RaneFirstFuck]";
	else if (lastfuck of Rane - turns < 5):
		say "     Rane chuckles and says 'Quite frisky, aren't you? Give me a moment to catch my breath...'";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Rane's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job";
		[]
		if player is male:
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job";
		[]
		if player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Rane eat out your pussy";
			now sortorder entry is 3;
			now description entry is "Let the Oni orally please you";
		[]
		if player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Rane fuck your pussy";
			now sortorder entry is 4;
			now description entry is "Let the Oni breed you";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Rane fuck your ass";
		now sortorder entry is 5;
		now description entry is "Let the Oni fill your ass with his seed";
		[]
		if player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Rane's ass";
			now sortorder entry is 6;
			now description entry is "Fill the Oni's ass with your cock";
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
				say "[bold type][title entry]: [description entry]?[roman type][line break]";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Suck Rane's cock":
						say "[RaneSex1]";
					else if (nam is "Have him suck your cock"):
						say "[RaneSex2]";
					else if (nam is "Let Rane eat out your pussy"):
						say "[RaneSex3]";
					else if (nam is "Let Rane fuck your pussy"):
						say "[RaneSex4]";
					else if (nam is "Let Rane fuck your ass"):
						say "[RaneSex5]";
					else if (nam is "Take Rane's ass"):
						say "[RaneSex6]";
					wait for any key;
					now lastfuck of Rane is turns;
			else if calcnumber is 100:
				say "[bold type]Break off?[roman type][line break]";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the blue oni, shaking your head slightly as he gives a questioning look.";
					wait for any key;
				else:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say RaneFirstFuck:
	say "     You breathe in deeply then step up to Rane, pressing the lock of his belt, then watch it and the fabric around his hips fall to the ground. The blue oni gives a pleased sigh at your initiative, confidently standing bare-ass naked before you and allowing you to take in all of him. Under a thick bush of spiky white pubic hair, Rane's respectably big manhood dangles down between those chiseled legs of his - or at least at first it does. Reveling in your attention, the blue man's shaft rises and expands, getting harder and longer by the moment. Starting out big, it really becomes quite a sight to behold - thick and long to match the scale of the rest of him. For a moment you think it might not stop growing, but then it finally reaches its full extension, now standing erect pointing at you in a slight upward angle.";
	say "     Well, it's big and blue, like its owner. Same color as the rest of Rane's skin for the most part, except for the enlarged mushroom head which has a dark pink tinge to it. Like the rest of his body, it's the details which stand out, and you definitely take notice of enlarged bulging veins running along its length, which by your estimate is somewhere in the vicinity of a foot long, though that's maybe a bit modest. Underneath, you catch glimpse of what looks to be a very firm scrotum holding two about softball sized testicles. While you had your eyes firmly riveted to his crotch, Rane's hands in the meantime were busy wandering over your body and feeling you up - until he acts right now, quickly pulling down and discarding your lower clothing.";
	WaitLineBreak;
	say "     'Time to fuck,' Rane grunts, taking hold of you with a firm and somewhat rough grip. In a swift move, you're turned around and find yourself slumped over a stone railing. Looking up, you notice the shrine's round bronze mirror right in front of you, allowing you to see the blue oni standing not far away. He grins at your reflection, turning sideways to allow you to see him stroke his massively long and hard shaft past your own mirror image, then he takes position right behind you. You can feel the warmth of his manhood resting against your lower back, then slide deeper to nestle between your buttcheeks as Rane moves a bit. While playfully slapping his cock against your cheeks, he gathers a bit of spit and puts it on a hand, rubbing it over his shaft a moment later. The oni gropes your cheeks with both hands, then pulls them apart and sets the bulbous head of his manhood against your pucker.";
	say "     Looking up at Rane's face as he tightly grips your hips, you for the first time see and feel his full inhuman nature and are reminded that oni are demons in Japanese mythology. There is something bestial about the wide, fang-showing grin on Rane's face, only strengthened by the way his eyes are glowing right now and the fact that there's a deep and lusty growl coming from him chest. Maybe giving yourself into the hands of this powerful and sexual beast wasn't such a great idea after all, a tiny tiny voice speaks up through the haze of sexual need in your mind. Too late, as in that very instant, the blue oni thrusts into you in a fluid move...";
	WaitLineBreak;
	say "     ...you can't help but scream at the pain of Rane's sudden entry, intermixed with the contrary signals of pleasure as sensitive spots in your insides are rubbed by his massive cock. Caught up in that swirl of confusion, your thought process lags behind a bit, only slowly registering what's going on. Firstly, you become aware of the very full feeling that his monstrously big, throbbing presence leaves deep inside you. The second thought that occurs is the confounding reality of Rane having somehow managed to insert that entire thing in one go, for you can feel his hips and the hair of his pubes right against your rear. Granted, it hurt like hell for a second, but still, all of it - just like that?";
	say "     Your thought process crumbles immediately afterwards as Rane rears back and thrusts in again, this time pretty hard, enough to create a very audible slap of your two bodies meeting. He waits a second, then does so again, and again, each new thrust slightly faster and harder than the before. As Rane pounds into you, he growls and sometimes even shouts things like 'Yeah, take it! I'm gonna fuck you till you can't stand straight!', 'You like that, little bitch, don't you?' and 'Can't get enough of your little fuckhole.' The onslaught is nearly too much to bear, the combined sensations drowning everything else out: His long, thick and warm pillar of cock, moving swiftly in and out. Feeling the contours of those bulging veins you saw rub against your tautly stretched inner walls. The tight grip of his hands on your hips, claws-tips definitely piercing the skin. The pistoning slam of his own hips against your rear...";
	WaitLineBreak;
	say "     The sounds of sex fill the air around the shrine and spread out into the bamboo forest, a potent combination of the vocal outbursts of you and your 'friend' and the hard slapping sounds of your furious coupling, the railing you're clinging tightly onto shaking with each powerful thrust. Having been looking down for a while you remember the mirror and glance up. Last time you looked, you mainly saw and focused on Rane's demonic appearance and demeanor, but while you can't deny that he is an oni and does like to have pretty rough and hard sex - that's all there is to it. Having felt him change the angle of his thrusts to give you more pleasure, and go slow just a second when you really needed it, you now see the man inside the devil - lusty and wild, but also caring - making sure that he doesn't actually hurt you, no matter how rough things get.";
	say "     You focus on your blue friend, whose body heaves with power, muscles in his legs and abs flexing tightly for each powerful thrust, and arms firmly tightened in a strong grip. His face is a clear mixture of exertion and bliss, eyes glowing brightly, mouth gasping and tongue licking his own lips in between the clenching of his teeth. That expression would be enough in and of itself to display Rane's euphoria at fucking you, if you had somehow managed to have ignored his constant verbal expressions of enjoyment since the outset.";
	WaitLineBreak;
	say "     You don't know how long you've been having sex already, but you can definitely feel that there's not much left, for either you or the blue oni. He seems to have reached a limit to how fast he intends to thrust, which is plenty fast enough. His breathing is becoming ragged and his grunts are becoming louder, in addition to his voice becoming just a bit hoarse. Your own climax is not too far away either, the thick column of meat impaling you having stimulated your body very thoroughly, building a slow flame that is set to erupt. And feeling the firm testicles of your demonic lover smack directly against your lower privates each time your bodies connect is quite a nice sensation too.";
	say "     Finally the limit is reached. Rane's voice builds up and echoes out into a screaming roar, his body slamming against you one final hard time as his head snaps back in bliss. Feeling the massive oni cock pulse in your tightly stretched hole, you immediately become aware of the massive flood of hot cum he blasts into you. Rane's body spasms several times against you, each time delivering another torrent of warmth inside. That sensation in and of itself is enough to drive you over the edge yourself, so you grip on to the railing tightly and pant in lust, your own fluids splashing down on the ground in front of you. Phew, what a wild ride, you think to yourself as you stand there, dripping cum and still impaled on Rane's shaft.[mimpregchance]";
	WaitLineBreak;
	say "     Panting and exhausted, you watch in the mirror as Rane's head slumps forward, still breathing heavily with tongue slightly hanging out, exposing his sharp canines that contribute so much to his frightening appearance. Then he slowly moves backwards and his member slides further and further out of you until it finally pops free with a little slurp. A whole torrent of creamy white cum leaks out as he does so, dripping down to pools on the ground beneath you. You watch as Rane moves with as little coordination as you've ever seen from him, nearly stumbling to lean against one of the shrine pillars, still in his breathless euphoria. Perhaps not feeling quite as winded as he, though still quite worn out, you slowly move towards your discarded clothing and begin dressing, keeping an eye on your blue friend as he continues to catch his breath. You can't help but notice that even when soft, his penis is still quite a sight, wondering how he manages to keep it in that loincloth of his.";
	say "     Finally Rane's breath stabilizes and he looks up at you. His eyes are full of a serene vibrancy and clarity that you do not recall seeing before, even when he had been fighting. There is a big smile on his face and he looks about as pleased as one can possibly get. Reaching down to his own discarded clothing and quickly wrapping the loincloth back around his hips, he fastens the belt around it, letting the buckle click firmly into place.";
	WaitLineBreak;
	say "     Giving you an appreciative look as you pull on the last parts of your clothes and gear, Rane says 'Damn. You're an awesome fuck, best I've had in a while. Tightest ass I've had in a while too.' He gives your rear a nice smack of appreciation. 'I also admire your tenacity in being able to survive out here on the streets without falling prey to anyone yet. I really wouldn't mind having some more fun with you, so how about it? We could shack up together somewhere for a while? Or this could be a one-time deal, though I'd hope we'll run into each other sometime...' His hand wanders down to his crotch, rubbing it through his loincloth as he no doubt imagines fucking you again.";
	LineBreak;
	say "     [bold type]What do you tell him? Invite him to the library with you ([link]Y[as]y[end link]), or say your goodbyes ([link]N[as]n[end link])?[roman type][line break]";
	if player consents:
		LineBreak;
		say "     As you make your way towards the library in the company of Rane, you silently wonder what you've just gotten yourself into. Granted, he's a great fighter, and certainly not a bad lay, if a bit - a strong bit - rough around the edges. He's obviously strong enough to do whatever he wants, but then again, he left the choice of undoing his belt to you. You wonder if he'll behave, given his demonic nature, though he's certainly proven to be very unexpected in most aspects - capable of great violence, but also relatively nice if just talked to. He certainly didn't harm you, maybe startled you a bit a few times, not counting the bruises and scratches from the rough sex and the soreness you're starting to feel. Only time will tell what comes next...";
		move Rane to Sitting Area;
		now Rane's Good Deed is not resolved;
		now battleground is "void";
		move player to Sitting Area;
		now HP of Rane is 7;
	else:
		LineBreak;
		say "     Declining to bring the Japanese demon home - and likely get fucked again and again by him - you see Rane's expression fall for just a second, then he shrugs the disappointment off and puts the flirty grin back on his face. 'Well then, hope I'll see you again sometime. Who knows when we might run into each other.' Putting his arm around you to get a last grope of your ass, the blue oni gives your cheek a playful lick with his long tongue, then dashes off, vanishing behind the high bamboo poles in a moment.";
		remove Rane from play;
		now HP of Rane is 50;

to say RaneSex1: [player sucks him]
	say "     Rane smiles broadly as he sees the lusty gleam in your eye and says 'Can't get enough of my cum, can you?' The tall oni waits for you to approach with his hands on his hips, humming in satisfaction as you rub his crotch, then let your hands wander to the release of his belt. With a quick push, the flexible metal band falls away, immediately followed by the now no longer secured white fabric of his loincloth. Now confidently standing bare-ass naked before you, the blue man allows you to take in all of him and even sinuously moves his hips a bit to show off. Under a thick bush of spiky white pubic hair, Rane's respectably big manhood dangles down between those chiseled legs of his - or at least at first it does. Reveling in your attention, the blue man's shaft rises and expands, getting harder and longer by the moment. Starting out big, it really becomes quite a sight to behold - thick and long to match the scale of the rest of him. For a moment you think it might not stop growing, but then it finally reaches its full extension, now standing erect pointing at you in a slight upward angle.";
	say "     Well, it's big and blue, like its owner. Same color as the rest of Rane's skin for the most part, except for the enlarged mushroom head which has a dark pink tinge to it. Like the rest of his body, it's the details which stand out, and you definitely take notice of enlarged bulging veins running along its length, which by your estimate is somewhere in the vicinity of a foot long, though that's maybe a bit modest. Underneath, you catch glimpse of what looks to be a very firm scrotum holding two about softball sized testicles. With your eyes firmly riveted to his crotch, you don't notice the large oni putting his hands on your shoulders until he pushes down to get you to kneel, that is.";
	WaitLineBreak;
	say "     Now eye-to-eye with his impressive manhood, you reach out and take the hard and throbbing cock into your hand, then bring your mouth forward and start licking and kissing at it, enjoying the satisfied grunts lithe blue demon. 'Yeah, lick the underside. Really wrap your tongue around it. Good little cocksucker...' You play your tongue across his blue shaft and up to his dark purple glans several times, lapping up the copious amounts of precum Rane is leaking. [one of]After nuzzling down to his balls and licking his firm sac[or]While rolling his hefty, softball-sized balls around in your hand[or]After a few teasing nibbles along his throbbing member[at random], you feel the oni's large hand on your head suddenly, pulling you back so he can point his massive cock right at your mouth.";
	say "     A second later, he slowly but firmly pulls you towards it, allowing you just enough time to open your mouth wide and slide its stretched lips over his glans. The sexy oni releases a long groan of pleasure as he feels you going down on him, softening his grip, then letting go as you take the hint and start bobbing up and down a bit. You work your lips further down over his cock each time, taking his thick meat down your throat while your tongue plays along it. It is slow going at first given its size, but you manage to get it all in somehow. After taking a moment to enjoy the fullness in your mouth and throat, you really get to work on sucking that pulsing rod.";
	WaitLineBreak;
	say "     You give Rane a really nice blowjob, making him grunt and moan as his arousal soars with each moment - until that fully awakens his inner beast. A deep, rumbling growl comes from within his chest and he roars 'I'm gonna fuck your face, slut!' With that, he puts his hand back on your head, gripping it firmly as he thrusts his manhood forward and keeps going until he's deep in your throat and your nose is nestled in his pubic hair. What follows is a hard and pretty rough face-fucking that leaves you a bit light-headed from lack of oxygen, but still thirsting for more.";
	say "     The strong, muscled oni uses you for his pleasure longer, then he plunges his cock fully down your throat again and groans deeply as he blasts thick bursts of cum from his throbbing manhood. You suck it down as best you can, his heavy flow easily filling your mouth and flowing down into your belly. Even gulping it down as quickly as possible, some overflows from your lips, staining his blue flesh with streaks of white. His cum has a strong taste, but is delicious nonetheless, its musky flavor speaking of its rich, virile nature. And certainly there's plenty of it as well, allowing you to enjoy a tasty meal of oni semen that fills your belly with sloshing, hot cum. Once his long climax comes to an end, Rane releases your head and allows you to slide off his softening shaft to take panting breaths. Then his arm on your shoulder pulls you back to your feet, allowing your blue friend to meet your messy lips with his and share a creamy kiss. 'You're a great cocksucker,' Rane compliments, then leans down to grab his loincloth and belt again to get dressed.";

to say RaneSex2: [he sucks the player]
	say "     Rane smiles broadly as he sees the lusty gleam in your eye and says 'I know that look...' The tall oni waits for you to approach with his hands on his hips, humming to himself - until you say that you want him to suck your dick. 'Oh, do you? If that's so, why don't you... make me?' With that, Rane presses the release of his belt's fastening and lets the segmented metal band and his loincloth fall to the ground. The now bare-ass naked oni then strides over to one of the reading areas, pushing the table and sofas off its large and soft carpet. Taking a pretty suggestive wrestling-stance that puts his nude body into full view, he calls out 'Come on - earn your blowjob.'";
	say "     It's clear that Rane is toying with you, with the enticing poses he takes and the playful tone audible in his voice, so you decide to go for it, just dropping your gear and stepping on the carpet. Licking his lips, then wiggling his long tongue at you, Rane teases 'Willing to go all the way to get some action, I see. But can you really hope to win? Just look at what you'll be up against...' He brushes a hand over his own bulging pecs, then his ripped abs and further down until he's got his big cock in hand to wave it at you. After another few moments of this, the blue oni drops the act and gets into a real wrestling pose. Seems like the fight is on - for real, now.";
	WaitLineBreak;
	say "     Stepping up to meet Rane head on, you try to gauge the right time to strike, see an opening and... find yourself whirling in the air to land on your back in a thankfully cushioned fall on the carpet. The oni is FAST - really fast. He leans over you, looking down with a smirk, and says 'You'll have to do better than that if you want something from me...' Then he steps back and waits for you to get back up, again posing to show off his muscles and impressive manhood. As he seems happy to stay in a purely defensive posture, you're free to try again - and again, as he just evades your moves easily.";
	say "     You decide to try a different approach, feinting in one direction, then hitting Rane unexpectedly from the other. And it almost works... he moves as if to deflect your deception - then suddenly a slapping noise and movement from the corner of your eye draws your attention - it's Rane's cock, swinging pendulously between his legs as the oni shakes his hips, smacking against his toned legs left and right. That moment of distraction is enough to find yourself suddenly whirled around and held with your back against Rane's muscled chest, with him whispering in your ear 'Don't you see that you can't win a regular fight against me?' You feel the warmth of his half-hard cock against your buttcheeks and leg as he rubs up against you, then lets you loose again.";
	WaitLineBreak;
	say "     Hm, so you can't win a 'regular' fight against him. Why not make it an irregular one... you do what Rane himself did - you strip, giving the oni a really nice show as piece by piece, your clothing gets removed and thrown aside. Your blue-skinned opponent pays close attention as you do so, vocally encouraging you to drop the next and the next piece and even making suggestions like 'Why don't you just stop fighting and let me fuck you - right here, right now? I'll make you scream my name as you come.'";
	say "     Not letting yourself get deterred that easily, you finally step forward again when you're as naked as Rane is. He may be an amazing fighter, but... he's also an incorrigible horn-dog who gives you salacious looks and gets distracted, so you do actually have a chance now. A bit of back-and-forth follows, one of you getting a grip on the other till he winds out of it, but finally, you're able to hook a foot behind Rane's leg and pull it out from under him, bringing the blue oni down on his back. Immediately following up, you straddle his chest, pinning him and bringing your by now fully hard cock just inches from your opponent's face.";
	WaitLineBreak;
	say "     'I yield! You've shown me that I just can't stand against your power,' Rane says with a chuckle, then continues, 'Now I can't do anything but lie helpless under you and wait for the victor to ravish me.' Something tells you that he let you win, but then... who cares. On to the spoils. Holding out your hard [cock of player] cock, you grip one of the oni's long horns and pull his head up by it, allowing him to lick your shaft, then take the cockhead in his mouth. The oni is very eager and willing to please you orally, bobbing his head on your shaft and teasing it with his tongue. Hearing fapping noises, you look over your shoulder and see that he's jerking himself off at the same time.";
	say "     It doesn't take long till you find out how... useful Rane's horns are - as handholds for face-fucking him. When your arousal builds more and more, really pound into him, your balls slapping against his chin and your manhood thrusting deep in his throat every time. Rane doesn't mind at all and even likes it quite a bit, judging from the satisfied mumbles around your cock in his mouth and the flashes of lust in his eyes. Before much longer, the wild face-fuck culminates in you reaching a mind-blowing orgasm and blowing your load directly into Rane's stomach. While he continues to suckle on your pulsing member, the movements of Rane's arm seem to increase, until you suddenly feel him bucking under you and the first spurts of the oni's cum hit you in the back. He's a real shooter, your blue friend, as blast after blast of cum hits and leaves you pretty well-creamed.";
	WaitLineBreak;
	say "     As you pull your softening dick out of Rane's mouth a short while later, the oni gives a satisfied smile and licks his lips. 'We should wrestle more often...' he pants, lazily rubbing in the part of his cum that didn't land on you but rather on his chest.";

to say RaneSex3: [player pussy licked]
	say "     Rane smiles broadly as he sees the lusty gleam in your eye and says 'I know that look...' The tall oni waits for you to approach with his hands on his hips, humming to himself - until you say that you want him to eat you out. 'Oh, do you? If that's so, why don't you... make me?' With that, Rane presses the release of his belt's fastening and lets the segmented metal band and his loincloth fall to the ground. The now bare-ass naked oni then strides over to one of the reading areas, pushing the table and sofas off its large and soft carpet. Taking a pretty suggestive wrestling-stance that puts his nude body into full view, he calls out 'Come on - earn your tongueing.'";
	say "     It's clear that Rane is toying with you, with the enticing poses he takes and the playful tone audible in his voice, so you decide to go for it, just dropping your gear and stepping on the carpet. Licking his lips, then wiggling his long tongue at you, Rane teases 'Willing to go all the way to get some action, I see. But can you really hope to win? Just look at what you'll be up against...' He brushes a hand over his own bulging pecs, then his ripped abs and further down until he's got his big cock in hand to wave it at you. After another few moments of this, the blue oni drops the act and gets into a real wrestling pose. Seems like the fight is on - for real, now.";
	WaitLineBreak;
	say "     Stepping up to meet Rane head on, you try to gauge the right time to strike, see an opening and... find yourself whirling in the air to land on your back in a thankfully cushioned fall on the carpet. The oni is FAST - really fast. He leans over you, looking down with a smirk, and says 'You'll have to do better than that if you want something from me...' Then he steps back and waits for you to get back up, again posing to show off his muscles and impressive manhood. As he seems happy to stay in a purely defensive posture, you're free to try again - and again, as he just evades your moves easily.";
	say "     You decide to try a different approach, feinting in one direction, then hitting Rane unexpectedly from the other. And it almost works... he moves as if to deflect your deception - then suddenly a slapping noise and movement from the corner of your eye draws your attention - it's Rane's cock, swinging pendulously between his legs as the oni shakes his hips, smacking against his toned legs left and right. That moment of distraction is enough to find yourself suddenly whirled around and held with your back against Rane's muscled chest, with him whispering in your ear 'Don't you see that you can't win a regular fight against me?' You feel the warmth of his half-hard cock against your buttcheeks and leg as he rubs up against you, then lets you loose again.";
	WaitLineBreak;
	say "     Hm, so you can't win a 'regular' fight against him. Why not make it an irregular one... you do what Rane himself did - you strip, giving the oni a really nice show as piece by piece, your clothing gets removed and thrown aside. Your blue-skinned opponent pays close attention as you do so, vocally encouraging you to drop the next and the next piece and even making suggestions like 'Why don't you just stop fighting and let me fuck you - right here, right now? I'll make you scream my name as you come.'";
	say "     Not letting yourself get deterred that easily, you finally step forward again when you're as naked as Rane is. He may be an amazing fighter, but... he's also an incorrigible horn-dog who gives you salacious looks and gets distracted, so you do actually have a chance now. A bit of back-and-forth follows, one of you getting a grip on the other till he winds out of it, but finally, you're able to hook a foot behind Rane's leg and pull it out from under him, bringing the blue oni down on his back. Immediately following up, you straddle his chest, pinning him and bringing your by now wet and dripping pussy just inches from your opponent's face.";
	WaitLineBreak;
	say "     'I yield! You've shown me that I just can't stand against your power,' Rane says with a chuckle, then continues, 'Now I can't do anything but lie helpless under you and wait for the victor to ravish me.' Something tells you that he let you win, but then... who cares. On to the spoils. Spreading your swollen nether lips open, you lean a bit further forward, allowing Rane to lick your pussy. The oni is very eager and willing to please you orally, giving you long slow licks and teasing your clit with the tip of his tongue. Hearing fapping noises, you look over your shoulder and see that he's jerking himself off at the same time.";
	say "     It doesn't take long till you find out how... useful Rane's horns are - as handholds to hold on to while you writhe in pleasure from his oral attention. As your arousal builds more and more, you grip him tightly and throw your head back, almost shouting in lust. Rane seems to have quite a bit of fun getting you off, judging from the eagerness with which he licks up your juices and explores your passage with his tongue, giving satisfied mumbles each time he gets you to gasp loudly. Before much longer, the wild face-fuck culminates in you reaching a mind-blowing orgasm, trembling in your kneeling position over the blue oni's face and gushing femcum all over him. While Rane continues to lap at your sex, the movements of his arm seem to increase, until you suddenly feel him bucking under you and the first spurts of the oni's cum hit you in the back. He's a real shooter, your blue friend, as blast after blast of cum hits and leaves you pretty well-creamed.";
	WaitLineBreak;
	say "     As you stand up on weak knees short while later, the oni gives a satisfied smile and licks his lips. 'We should wrestle more often...' he pants, lazily rubbing in the part of his cum that didn't land on you but rather on his chest.";

to say RaneSex4: [player pussy fucked]
	say "     You breathe in deeply then step up to Rane, pressing the lock of his belt, then watch it and the fabric around his hips fall to the ground. The blue oni gives a pleased sigh at your initiative, confidently standing bare-ass naked before you and allowing you to take in all of him. Under a thick bush of spiky white pubic hair, Rane's respectably big manhood dangles down between those chiseled legs of his - or at least at first it does. Reveling in your attention, the blue man's shaft rises and expands, getting harder and longer by the moment. Starting out big, it really becomes quite a sight to behold - thick and long to match the scale of the rest of him. For a moment you think it might not stop growing, but then it finally reaches its full extension, now standing erect pointing at you in a slight upward angle.";
	say "     Well, it's big and blue, like its owner. Same color as the rest of Rane's skin for the most part, except for the enlarged mushroom head which has a dark pink tinge to it. Like the rest of his body, it's the details which stand out, and you definitely take notice of enlarged bulging veins running along its length, which by your estimate is somewhere in the vicinity of a foot long, though that's maybe a bit modest. Underneath, you catch glimpse of what looks to be a very firm scrotum holding two about softball sized testicles. While you had your eyes firmly riveted to his crotch, Rane's hands in the meantime were busy wandering over your body and feeling you up - until he acts right now, quickly pulling down and discarding your lower clothing.";
	WaitLineBreak;
	say "     'Time to fuck,' Rane grunts, taking hold of you with a firm and somewhat rough grip. In a swift move, he pushes you over to one of the reading areas of the library and bends you over a sofa. Just a moment later, you start feeling the warmth of his erect manhood resting against your lower back, then sliding deeper to nestle between your buttcheeks. While playfully slapping his cock against your cheeks, he gathers a bit of spit and puts it on a hand, rubbing it over his shaft. The oni gropes your cheeks with both hands, then pulls them apart and sets the bulbous head of his manhood against your pucker, teasingly pressing against it before repositioning himself lower, right at your by now open and wet pussy lips. A second later, the blue oni thrusts into you in a fluid move...";
	say "     ...you can't help but gasp at Rane's sudden entry, feeling so good - so full from one moment to the next. His monstrously big, throbbing presence fills a void deep inside you that you didn't know you had, making it hard to imagine not feeling the pleasures of having your passage stretched around him. He really went all in, bottoming out inside you instantly, for you can feel his hips and the hair of his pubes right against your rear. And deep inside you, the very tip of his manhood nudges against your cervix, giving you a strange but pleasurable tingle.";
	WaitLineBreak;
	say "     Your thought process crumbles immediately afterwards as Rane rears back and thrusts in again, this time pretty hard, enough to create a very audible slap of your two bodies meeting. He waits a second, then does so again, and again, each new thrust slightly faster and harder than the before. As Rane pounds into you, he growls and sometimes even shouts things like 'Yeah, take it! I'm gonna fuck you till you can't stand straight!', 'You like that, little bitch, don't you?' and 'Can't get enough of your little fuckhole.' The onslaught is nearly too much to bear, the combined sensations drowning everything else out: His long, thick and warm pillar of cock, moving swiftly in and out. Feeling the contours of those bulging veins you saw rub against your tautly stretched inner walls. The tight grip of his hands on your hips, claws-tips definitely piercing the skin. The pistoning slam of his own hips against your rear...";
	say "     The sounds of sex fill the air in the library - pants, groans, moans, slapping noises and even a whimper or to - created by the oni's preference of pretty rough and hard sex. Still, even though he may be playing hard - that's as far as it goes. Having felt him change the angle of his thrusts to give you more pleasure, and go slow just a second when you really needed it, you know that this 'blue devil' - lusty and wild as he may be - is also caring. He makes quite sure that he doesn't actually hurt you, no matter how rough things get otherwise.";
	WaitLineBreak;
	say "     You don't know how long you've been having sex already, but you can definitely feel that there's not much left, for either you or the blue oni. He seems to have reached a limit to how fast he intends to thrust, which is plenty fast enough. His breathing is becoming ragged and his grunts are becoming louder, in addition to his voice becoming just a bit hoarse. Your own climax is not too far away either, the thick column of meat impaling you having stimulated your body very thoroughly, building a slow flame that is set to erupt. And feeling the firm testicles of your demonic lover smack directly against your lower privates each time your bodies connect is quite a nice sensation too.";
	say "     Finally the limit is reached. Rane's voice builds up and echoes out into a screaming roar, his body slamming against you one final hard time as his head snaps back in bliss. Feeling the massive oni cock pulse in your tightly stretched pussy, you immediately become aware of the massive flood of hot cum he blasts into you. Rane's body spasms several times against you, each time delivering another torrent of warmth inside to fill your womb. That sensation in and of itself is enough to drive you over the edge yourself, so you grip on to the railing tightly and pant in lust, your own fluids splashing down on the ground in front of you and soaking into the side of the sofa. Phew, what a wild ride, you think to yourself as you lean against the sofa, dripping cum and still impaled on Rane's shaft.[fimpregchance]";

to say RaneSex5: [player ass fucked]
	say "     You breathe in deeply then step up to Rane, pressing the lock of his belt, then watch it and the fabric around his hips fall to the ground. The blue oni gives a pleased sigh at your initiative, confidently standing bare-ass naked before you and allowing you to take in all of him. Under a thick bush of spiky white pubic hair, Rane's respectably big manhood dangles down between those chiseled legs of his - or at least at first it does. Reveling in your attention, the blue man's shaft rises and expands, getting harder and longer by the moment. Starting out big, it really becomes quite a sight to behold - thick and long to match the scale of the rest of him. For a moment you think it might not stop growing, but then it finally reaches its full extension, now standing erect pointing at you in a slight upward angle.";
	say "     Well, it's big and blue, like its owner. Same color as the rest of Rane's skin for the most part, except for the enlarged mushroom head which has a dark pink tinge to it. Like the rest of his body, it's the details which stand out, and you definitely take notice of enlarged bulging veins running along its length, which by your estimate is somewhere in the vicinity of a foot long, though that's maybe a bit modest. Underneath, you catch glimpse of what looks to be a very firm scrotum holding two about softball sized testicles. While you had your eyes firmly riveted to his crotch, Rane's hands in the meantime were busy wandering over your body and feeling you up - until he acts right now, quickly pulling down and discarding your lower clothing.";
	WaitLineBreak;
	say "     'Time to fuck,' Rane grunts, taking hold of you with a firm and somewhat rough grip. In a swift move, he pushes you over to one of the reading areas of the library and bends you over a sofa. Just a moment later, you start feeling the warmth of his erect manhood resting against your lower back, then sliding deeper to nestle between your buttcheeks. While playfully slapping his cock against your buttcheeks, he gathers a bit of spit and puts it on a hand, rubbing it over his shaft. The oni gropes your cheeks with both hands, then pulls them apart and sets the bulbous head of his manhood against your pucker. Knowing what to expect, you relax as good as you can, gripping the sofa tightly as the blue oni thrusts into you in a fluid move...";
	say "     ...you can't help but groan at the pain of Rane's sudden entry, intermixed with the contrary signals of pleasure as sensitive spots in your insides are rubbed by his massive cock. Caught up in that swirl of confusion, your thought process lags behind a bit, only slowly registering what's going on. Firstly, you become aware of the very full feeling that his monstrously big, throbbing presence leaves deep inside you. The second thought that occurs is the confounding reality of Rane having somehow managed to insert that entire thing in one go, for you can feel his hips and the hair of his pubes right against your rear. Granted, it hurt like hell for a second, but still, all of it - just like that?";
	WaitLineBreak;
	say "     Your thought process crumbles immediately afterwards as Rane rears back and thrusts in again, this time pretty hard, enough to create a very audible slap of your two bodies meeting. He waits a second, then does so again, and again, each new thrust slightly faster and harder than the before. As Rane pounds into you, he growls and sometimes even shouts things like 'Yeah, take it! I'm gonna fuck you till you can't stand straight!', 'You like that, little bitch, don't you?' and 'Can't get enough of your little fuckhole.' The onslaught is nearly too much to bear, the combined sensations drowning everything else out: His long, thick and warm pillar of cock, moving swiftly in and out. Feeling the contours of those bulging veins you saw rub against your tautly stretched inner walls. The tight grip of his hands on your hips, claws-tips definitely piercing the skin. The pistoning slam of his own hips against your rear...";
	say "     The sounds of sex fill the air in the library - pants, groans, moans, slapping noises and even a whimper or to - created by the oni's preference of pretty rough and hard sex. Still, even though he may be playing hard - that's as far as it goes. Having felt him change the angle of his thrusts to give you more pleasure, and go slow just a second when you really needed it, you know that this 'blue devil' - lusty and wild as he may be - is also caring. He makes quite sure that he doesn't actually hurt you, no matter how rough things get otherwise.";
	WaitLineBreak;
	say "     You don't know how long you've been having sex already, but you can definitely feel that there's not much left, for either you or the blue oni. He seems to have reached a limit to how fast he intends to thrust, which is plenty fast enough. His breathing is becoming ragged and his grunts are becoming louder, in addition to his voice becoming just a bit hoarse. Your own climax is not too far away either, the thick column of meat impaling you having stimulated your body very thoroughly, building a slow flame that is set to erupt. And feeling the firm testicles of your demonic lover smack directly against your lower privates each time your bodies connect is quite a nice sensation too.";
	say "     Finally the limit is reached. Rane's voice builds up and echoes out into a screaming roar, his body slamming against you one final hard time as his head snaps back in bliss. Feeling the massive oni cock pulse in your tightly stretched hole, you immediately become aware of the massive flood of hot cum he blasts into you. Rane's body spasms several times against you, each time delivering another torrent of warmth inside. That sensation in and of itself is enough to drive you over the edge yourself, so you grip on to the railing tightly and pant in lust, your own fluids splashing down on the ground in front of you and soaking into the side of the sofa. Phew, what a wild ride, you think to yourself as you lean against the sofa, dripping cum and still impaled on Rane's shaft.[mimpregchance]";

to say RaneSex6: [take Rane's ass]
	say "     Rane smiles broadly as he sees the lusty gleam in your eye and says 'I know that look...' The tall oni waits for you to approach with his hands on his hips, humming to himself - until you say that you want to fuck him. 'Oh, do you? If that's so, why don't you... make me?' With that, Rane presses the release of his belt's fastening and lets the segmented metal band and his loincloth fall to the ground. The now bare-ass naked oni then strides over to one of the reading areas, pushing the table and sofas off its large and soft carpet. Taking a pretty suggestive wrestling-stance that puts his nude body into full view, he calls out 'Come on - earn your right to stick it in.'";
	say "     It's clear that Rane is toying with you, with the enticing poses he takes and the playful tone audible in his voice, so you decide to go for it, just dropping your gear and stepping on the carpet. Licking his lips, then wiggling his long tongue at you, Rane teases 'Willing to go all the way to get some action, I see. But can you really hope to win? Just look at what you'll be up against...' He brushes a hand over his own bulging pecs, then his ripped abs and further down until he's got his big cock in hand to wave it at you. After another few moments of this, the blue oni drops the act and gets into a real wrestling pose. Seems like the fight is on - for real, now.";
	WaitLineBreak;
	say "     Stepping up to meet Rane head on, you try to gauge the right time to strike, see an opening and... find yourself whirling in the air to land on your back in a thankfully cushioned fall on the carpet. The oni is FAST - really fast. He leans over you, looking down with a smirk, and says 'You'll have to do better than that if you want something from me...' Then he steps back and waits for you to get back up, again posing to show off his muscles and impressive manhood. As he seems happy to stay in a purely defensive posture, you're free to try again - and again, as he just evades your moves easily.";
	say "     You decide to try a different approach, feinting in one direction, then hitting Rane unexpectedly from the other. And it almost works... he moves as if to deflect your deception - then suddenly a slapping noise and movement from the corner of your eye draws your attention - it's Rane's cock, swinging pendulously between his legs as the oni shakes his hips, smacking against his toned legs left and right. That moment of distraction is enough to find yourself suddenly whirled around on your back on the carpet. Kneeling over you with his back to your face, Rane looks over his shoulder and chuckles 'Well, you were interested in my ass - so here it is. How about you show me some nice service...' With that, he leans back a bit, putting his firmly toned butt right in front of you. Reaching back to pull apart his cheeks, he bares his hole to you and adds 'Come on, I'm waiting.'";
	WaitLineBreak;
	say "     Well, you wanted to get in his ass - and now you can, with your tongue at least. Raising your head a little bit allows you to lap at the blue oni's crack and you search out his wrinkled pucker with the tip of your tongue to poke and tease it. 'Yeah, just like that. Eat my ass!' Rane groans above you, moaning loudly as you as you push against his hole and find that it readily allows entrance to you. Relishing in your oral attention, Rane lets you continue for a while, then he stands up and looks down at you. Stroking his thick manmeat, he says in a teasing voice 'Don't you see that you can't win a regular fight against me?' After that, he steps aside with light steps, allowing you to get up yourself.";
	say "     Hm, so you can't win a 'regular' fight against him. Why not make it an irregular one... you do what Rane himself did - you strip, giving the oni a really nice show as piece by piece, your clothing gets removed and thrown aside. Your blue-skinned opponent pays close attention as you do so, vocally encouraging you to drop the next and the next article of clothing and even making suggestions like 'Why don't you just stop fighting and let me fuck you - right here, right now? I'll make you scream my name as you come.'";
	WaitLineBreak;
	say "     Not letting yourself get deterred that easily, you finally step forward again when you're as naked as Rane is. He may be an amazing fighter, but... he's also an incorrigible horn-dog who gives you salacious looks and gets distracted, so you do actually have a chance now. A bit of back-and-forth follows, one of you getting a grip on the other till he winds out of it, but finally, you're able to hook a foot behind Rane's leg and pull it out from under him, bringing the blue oni down on his back. Immediately following up, you get down on the carpet with him, taking hold of his legs and lifting them, pushing up towards his chest. In the process of doing so, your by now fully hard cock rubs against Rane's butt, poking at his pucker as it is in just the right position now.";
	say "     'I yield! You've shown me that I just can't stand against your power,' Rane says with a chuckle, then continues, 'Now I can't do anything but lie helpless under you and wait for the victor to ravish me.' Something tells you that he let you win, but then... who cares. On to the spoils. Letting Rane take and hold up his own legs, you put a hand on your hard [cock of player] cock, then push its head against the oni's rear entrance. As before with your tongue, his opening easily allows you entrance and you sink right in, plunging deep into Rane's body and making him pant in lust. 'Yeah, deeper! Fuck me hard!' he shouts, and you're of course more than willing to comply...";
	WaitLineBreak;
	say "     It's an empowering experience to see this blue man lying on his back before you, panting and moaning as you take his ass. That toned, powerful body, his strong arms holding both legs up and his horned head resting on the soft carpet, rearing up and gasping each time you do an especially deep thrust. Thinking back to your first sexual encounter, the time he bent you over and fucked you at the shrine like a wild beast, you find yourself amazed how versatile the oni is, giving himself so fully to the pleasures of getting fucked by you. Though his usual domineering behavior still shines through even now - as he gasps out 'Jerk my cock as you fuck me!' in a throaty, deep voice.";
	say "     Putting a hand on Rane's thick shaft and cupping his large balls with the other, you stroke and fondle the oni while still grinding your hips against his butt. His large cock lies warm and heavy in your hand, twitching a bit in reaction to you pounding the blue oni's butt. Putting both hands on it to handle the big organ, you jerk him off, driving his arousal higher and higher. It's only a question of time before the big oni suddenly shouts 'I'm gonnna cummmmmMMM!' You can feel his manhood pulse in your hand as burst after burst of cum blasts from its tip to splatter all over Rane's chest. At the same time his hole rhythmically constricts and flexes around your thrusting cock - which pushes you over the edge right along with the oni only moments later. You've just enough time to bottom out inside him, then your own load gushes forth, filling Rane's tight hole to the brim.";
	WaitLineBreak;
	say "     Some time later, as you pull your softening dick out of Rane's ass, the oni gives a satisfied smile and licks his lips. 'We should wrestle more often...' he pants, lazily rubbing in the creamy cum all over his muscled chest.";

Rane ends here.
