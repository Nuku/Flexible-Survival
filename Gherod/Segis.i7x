Version 1 of Segis by Gherod begins here.

"Adds Segis, the Dragon Android, to Red Light District."

[Version 1 - File Created: Pre-Events]

Table of GameEventIDs (continued)
Object	Name
Strange Android Seeker	"Strange Android Seeker"

Strange Android Seeker is a situation.
ResolveFunction of Strange Android Seeker is "[ResolveEvent Strange Android Seeker]".
Sarea of Strange Android Seeker is "Red".

[RESOLUTION STAGES]
[0 - Nothing happened yet]
[1 - Player found drugged twisted pimp]
[2 - Player found drugged blue gel]
[3 - Player encountered android and fought successfully, stashed it safely]
[98 - Player encountered android but lost the fight]
[99 - Android gone forever / Android destroyed]

[Player finds a drugged twisted pimp at first, pants down and dick out. While he's knocked out, his dick is constantly throbbing and oozing, after a while he cums spontaneously. It is a strange sight, but player carries on]
[Next, they find a hallucinating blue gel, with a strange colored tone. Concludes he was were drugged as well, and he mumbles about a robot of some kind. The drug still has him hard, oozing and cumming in periodic intervals]
[Finally, the player finds this odd speaking dragon with a mechanical tone, looking pretty much like a dragonmorph except for the eyes and some other details that give him away. He's currently collecting a sample from a Hellfire Demon, who sleeps soundly and also drugged.]
[ Player can choose to interfere, which results in a fight against the android.]
[ If lost, the android will also attempt to collect a sample from players with a cock. Females will be ignored.]
[ if won, the android will break. You can choose to get rid of it by destroying or stashing it in a safe place.]

[ - Things the player can do with the broken android body comes in a future update - ]

to say ResolveEvent Strange Android Seeker:
	if Resolution of Strange Android Seeker is 0:
		say "     Amidst your walk around the District, you make a detour to an alley you have not been to, before, in hopes of finding something different. With the state of this city, there is barely anything left worth checking, but you would try anything you can if there is a chance your time and effort is rewarded. Unfortunately, this is another disappointment: what used to be a small grocery store is now nothing but its empty walls and rubble. If there is any food left here, it is most likely spoiled or expired. Nevertheless, you try to find something. Even a water bottle would be a good haul, at this point. So, you crouch down near a toppled shelf and see if you can find anything you could bring with you.";
		say "     But then, you begin to hear a moan. It startles you, at first, but nowadays it is such a common noise that you do not think too much about it. It seems to come from far, anyway, so you should be good... Until it then becomes a call for [']help['], which is slightly more worrying. It is the voice of a man, and it seems to be fading away, as if they were getting weaker. As it seems you cannot even scavenge without a disturbing sound interrupting you, perhaps it would be better to seek out the source of such voice, lest there is an imminent threat that could catch you by surprise and you would never see it coming. Of course, a normal person would worry about a cry like that, too, but you know better than to believe you can help anyone without putting yourself in danger along the way.";
		WaitLineBreak;
		say "     Slowly, you bypass the grocery store and try to think where the sound could have come from. As it stopped, this task became more difficult, though not impossible, as you think you did not hear it too far from your relative position. Perhaps in one of these other alleys, as Red Light is full of them. You check one, then another, and another... And before you start thinking about letting it slide, turn tail and leave, you do find a dark shape of someone lying on the floor, with their back against the wall. You approach them carefully, and they do not seem to be making any coherent sound, only moaning low. The voice seems familiar, like the same man you just heard a while ago, but you could be wrong. Nevertheless, this looks suspicious, to say the least.";
		say "     Upon closer inspection, you notice the man has a quite extravagant coat and smells of a perfume that makes your groin tingle. Shaking it off, you try to make sense of what you see. This man is knocked out, fast asleep, drooling from the corner of his mouth, with his cock out and throbbing hard without it even being touched. You wait a minute as your eyes take some time to process this, and suddenly, the man just cums spontaneously before you, though an already weakened orgasm, with a still considerable amount of cum, yet not as hard as one would expect. It just sort of oozes out of his cock, which keeps standing rock solid and without signs of giving up so quickly. There are no visible hints of struggle or anything strange other than his clearly drug-induced state, which might explain things.";
		WaitLineBreak;
		say "     There is nothing you can do to help the poor man, who looks more like one of those twisted pimps you see roaming the streets, so perhaps, you should really not help him. But it does leave you wondering who could have done this, if there is someone to blame for it...";
		now Resolution of Strange Android Seeker is 1;
	else if Resolution of Strange Android Seeker is 1:
		say "     Whether by coincidence or a subconscious thought of some sort, you find yourself walking past that same grocery store from the other day, near where you found the drugged man fast asleep with a persistent erection. This reminded you of such happening, and you begin to consider if you should pursue this matter any further or just forget about it... Is there really someone assaulting people in Red Light District, drugging and leaving them in a state of catatonic lust? What if they sneaked upon you and you suffered the same fate?";
		LineBreak;
		say "     [bold type]What are you going to do?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Investigate.";
		say "     ([link]N[as]n[end link]) - Drop it, for now.";
		if player consents:
			LineBreak;
			say "     You think you might have a chance in discovering something if you tried to look for more clues and begin to consider what areas you should head to. Perhaps there is something to be found in another one of these alleys, or you could linger for long enough to hear or watch a similar event take place. Whoever has been doing this will eventually do it again, probably. With that in mind, you tread gingerly along the streets, hoping to make your time and persistence worth it. Nothing seems to be happening in the near vicinity, so you move to another area, setting your path towards a different direction and, again, trying to be discrete. This particular spot does not seem to have a lot of movement, which could be a good place, but that also means anyone could hear you coming if you are too noisy.";
			say "     And so, you wait around for a while, always on the move, keeping your eyes and ears in maximum alert. Currently, you are passing through another alley with a few small entries into the back sections of the buildings, like small street backyards where there are trashcans and graffiti painted walls. As you continue to walk, you notice a few blue bubbly drops on the floor, which melt into a sticky mess if you squish them under your foot. You hear only a breeze blowing a little harder on your face as you look around, an eerie silence following afterwards and nothing else, but you do happen to spot a few more jiggly blue beads. A closer look reveals a kind of a trail leading to one of the backyards, to a door.";
			WaitLineBreak;
			say "     It does not take a lot to conclude that the door has been forced open. While the door itself does not seem to have been damaged, the lock has been rendered useless, possibly picked and destroyed in the process. You can easily push it open, albeit it creaks a little and does not slide smoothly enough, which explains why the wind did not do it by itself during all this time. The place is dark, without a single window, and you struggle to see, but you hear someone mumbling deeper ahead. You sort of have to be feeling the walls around you and walk really carefully to not accidentally bump into anything you should not, but the sound grows louder as you proceed. The voice is masculine, but all you hear is gibberish, sounding more like he is not even moving his lips.";
			say "     As you take a turn, your eyes glance over a dim glow, which helps you see. It seems like you have been stepping on old newspapers and trash scattered all over the place, but more importantly, there is plenty of gel-like substances along the path. The nature of who you see next explains this, as it is, in fact, a blue gel person, knocked out and talking to himself words that you cannot understand. He is not exactly blue, though. Right now, he has a slight tone of green and is mysteriously glowing. As you take in his entire shape, you notice the same things as before: a throbbing hard cock, constantly oozing liquid, and if you wait... he cums spontaneously, with weak drops only slowly managing to climb out of his shaft.";
			WaitLineBreak;
			say "     No doubt this is another victim of the same assaulter, with the exact same things having happened, except this one clearly struggled. You try to talk to the blue gel, hoping he would say something that could help you identify the suspect, but he only mumbles more gibberish. You think that you may have heard the words [']stop['] and [']like['], among faint sounds similar to [']cold['] and [']too hard[']. The poor gel guy is so spent that he can barely mutter anything else before he shuts down completely, sleeping in absolute silence and without motion. That certainly did not help much, at all! You have only learned that this is a relentless pursuer who does not give up so easily and is quite resourceful. Doors will not stop them, and they seem to be quite brawny. A [bold type]direct conflict might not be the best idea[roman type] against them...";
			say "     There is nothing else you can do, here, other than observing a sleeping blue gel man cumming a few more times during his sleep. Surely, you have more interesting things to do, and this place is not exactly safe to linger. Carefully, you make your way out of here and back to the alley, then swiftly move towards one of the streets and begin to head to more familiar areas within the Red Light District.";
			now Resolution of Strange Android Seeker is 2;
		else:
			LineBreak;
			say "     You do not think you should hold any more thoughts about this, as there are other things you must turn your focus to. Regardless of what is happening here, you need to consider your priorities.";
	else if Resolution of Strange Android Seeker is 2:
		say "     With the matter of the unknown assaulter in Red Light District still pending, you occasionally find yourself looking back and glancing over your shoulder. This is starting to affect you, keeping you more on guard and deviating your attention from things you could be doing better. This is not just a roaming creature you can either fight your way out or lose your dignity to, but someone who knows what they are doing and with only one goal in mind that you have yet to determine. While you have only seen males victims, you cannot yet conclude that [if player is not male and player is female]you would be safe[else]females would be safe[end if] from this perverted assaulter, who seems to know a great deal about how to get in places, fight and incapacitate someone. Definitely, it is no ordinary creature.";
		say "     You could resume this investigation, but say... What if you actually find and fail to stop them? What could happen to you if you were to be another victim of this assaulter? And will you have wasted your only chance at capturing them, to stop this madness once and for all? But more importantly... Can you do it, if it comes to that? From the information you have gathered so far, this is a strong and intelligent individual.";
		LineBreak;
		say "     [bold type]Do you wish to proceed any further with your investigation? You better make sure that you are prepared for an eventual conflict, and you might need to use your aptitudes. [roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Resume your investigation.";
		say "     ([link]N[as]n[end link]) - Drop it, for now.";
		if player consents:
			LineBreak;
			say "     Having decided to continue, you take a deep breath and return to the area that you think this suspect roams more, hoping to find them in a position in which you can finally see something conclusive. It might not be an easy task, so you double check your equipment and utilities in case you have to use them. Noticing that everything seems to be in place, you are now ready to actively search for this assaulter or any more victims they may have made. This area extends towards the Crimson Street, from behind it, amidst residential blocks of humble characteristics, severely vandalized by now. You struggle to navigate this place somewhat due to how similar everything looks, but marking a few checkpoints does the trick.";
			say "     Places without a lot of movement is what this pursuer seems to prefer, which signifies the area where you should be. Nevertheless, there may be a chance you will not find anything, so before you get your hopes up, you should consider failure to find anything else as a possible outcome and procure other paths that could be relevant. You do, eventually, make some backup plans and plan your route accordingly, leading yourself through several more alleys that should follow similar patterns as before. Tracing the assaulter's profile in your head, you know better where to look and think like them. It even makes you feel like a proper detective! But you are pretty sure this is just survival instincts doing the work.";
			WaitLineBreak;
			say "     Your luck seems to be changing, however. Not too far from here, you hear a voice. Unsurprisingly, it is male, but a rather deep, inhuman one. Bringing out memory on what sort of creatures and people like to roam this district, you conclude that this could be a demon. Well, demons are severely stronger, which means this one might pose a problem to the assaulter, and it may even be considered biting more than they can chew, but if they actually manage to overpower one... It could mean bad news. You immediately follow the source of this voice, past a single street and turning to your right into another alley, a broad one but equally quiet, if it were not for the swearing words you are hearing.";
			say "     Something must have really pissed off this demon, but his enraged tone dulls out and fades, progressively turning into just helpless moans. This is bad, so you hurry up and walk a little faster, which is not easy as you are still trying to keep silent. Carefully, you make sure you are placing your feet in empty ground, without accidentally kicking any empty cans, bottles or easily shattered objects, lest you wanted to announce your presence loud and clearly. Eventually, you manage to acquire sight of what is happening, and you almost cannot believe it...";
			WaitLineBreak;
			say "     In front of you lies down a huge, horned and red guy, so, a hellfire demon, completely naked and with a raging boner. Holding it is a single person that you from behind perceive as a white-colored anthropomorphic dragon, crouched down in front of the devil and stroking his cock in a very methodic way. It does not look like they are indulging a perversion or enjoying what they are doing, but rather feels like it is a chore for them, forcing a handjob on a demon the same way someone holds a broom to mop up the floor. But what seems really strange is the unnatural gleaming this dragon person has about their scales, as if they were not actually a living being, but more of a... thing.";
			say "     You stick by a spot you think is safe and observe what is happening. The handjob continues eventlessly, with monotonous motions until the demon cums a great deal. With this, the dragonmorph had a sort of flask ready to collect the devil's semen, and it seems they knew how much they would be carrying, as they have selected an especially large one. Once the demon lets out his final drops, the assaulter puts the flask back in the bag they carry with them and proceed to stand up, leaving the hellspawn there in the same lustful stupor as the others were, mumbling nonsensical words as he is barely able to speak. Once this dragon individual turns around, your eyes land directly on theirs, a pair of unnaturaly glowing cyan orbs that flicker as they perceive you. Uh oh...";
			WaitLineBreak;
			say "     The positive side of this is, you have found out who the suspect is, but there is also a problem... They did not like to be discovered. You leg it immediately, running at maximum speed through the streets to attempt to outrun this assaulter, but they stay on your tail well enough that they do not lose you. You were right, they are indeed a relentless pursuer, and you must find a way to evade them quickly! Taking turns around several alleys, you try to lose sight of them. You think you have managed to do it as you see them slowly walking by the same alley you have entered, and you are temporarily holding an advantage...";
			LineBreak;
			say "     You think you were quite fortunate that you could slip through this spot without them noticing, but they will not give up so easily. There is only one way out of this, and that is by incapacitating them, first. There are several options you could attempt...";
			Linebreak;
			say "     [link](1)[as]1[end link] - Hit them as hard as you can on a weak spot. You will need to know where to strike (Intelligence Roll), then be swift and precise (Dexterity Roll).";
			say "     [link](2)[as]2[end link] - Lead them into a nearby fluid puddle. You will need to be able to outrun them without falling on it yourself (Dexterity Roll) while tricking them into thinking they can easily continue to pursue you through it (Charisma Roll).";
			say "     [link](3)[as]3[end link] - Convince them that you will allow them to willingly use you (Charisma Roll) and then punch them really hard (Strength Roll).";
			say "     [link](4)[as]4[end link] - Approach this in a different manner. Use your surroundings (Perception Roll) and profit from it.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to select the first method, [link]2[end link] to choose the second, [link]3[end link] to choose the third or [link]4[end link] to choose the fourth.";
			if calcnumber is 1:
				LineBreak;
				say "     You have decided on a plan of action. Now, you shall try your best to make it count...";
				WaitLineBreak;
				let bonus be (( intelligence of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]9[roman type] (Intelligence Check):[line break]";
				if diceroll + bonus >= 9:
					say "     Examining the dragon individual, you manage to notice a joint you can kick in order to weaken them severely. Quickly, you get in position to deliver your attack. Your target did not manage to react in time...!";
					WaitLineBreak;
					let bonus be (( dexterity of player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]11[roman type] (Dexterity Check):[line break]";
					if diceroll + bonus >= 11:
						say "     With just a well-delivered kick, you manage to cause the dragon to collapse against the wall and debilitate them. This thing really cannot be natural, as they move in such an erratic way while trying to stand up, again, with sluggish yet so mechanical movements. The noises they make are not resembling any living creature, either. You are probably fighting a robot of some sort. Speaking of which, you are still not done with them, as they advance to attack you once more. But this time, you actually stand a chance to overpower them.";
						say "[StrangeAndroidSeekerFight]";
					else:
						say "     ...And you fail miserably. You were so bad that your enemy even blinked twice, only stoically observing you. In fact, they seem to have no expression at all as they incapacitate you, leaving you vulnerable...";
						say "[StrangeAndroidSeekerFail]";
				else:
					say "     Despite having tried your best, you could not identify any specific weak spot on the dragon individual. But if you kick them swiftly enough, maybe you still have a chance... Quickly, you get in position to deliver your attack. Your target did not manage to react in time...!";
					WaitLineBreak;
					let bonus be (( dexterity of player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Dexterity Check):[line break]";
					if diceroll + bonus >= 14:
						say "     With just a well-delivered kick, you manage to cause the dragon to collapse against the wall and debilitate them. This thing really cannot be natural, as they move in such an erratic way while trying to stand up, again, with sluggish yet so mechanical movements. The noises they make are not resembling any living creature, either. You are probably fighting a robot of some sort. Speaking of which, you are still not done with them, as they advance to attack you once more. But this time, you can actually stand a chance to overpower them.";
						say "[StrangeAndroidSeekerFight]";
					else:
						say "     ...And you fail miserably. You were so bad that your enemy even blinked twice, only stoically observing you. In fact, they seem to have no expression at all as they incapacitate you, leaving you vulnerable...";
						say "[StrangeAndroidSeekerFail]";
			else if calcnumber is 2:
				LineBreak;
				say "     You have decided on a plan of action. Now, you shall try your best to make it count...";
				WaitLineBreak;
				let bonus be (( dexterity of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Dexterity Check):[line break]";
				if diceroll + bonus >= 10:
					say "     Using the best of your agility, you have managed to get out of your hiding spot, run around the puddle of fluids and draw their attention to you...";
					WaitLineBreak;
					let bonus be (( charisma of player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Charisma Check):[line break]";
					if diceroll + bonus >= 10:
						say "     Your enemy, oblivious of your trickery, decides to pursue you, and just as you expected, they slip onto the puddle. You see sparks jumping out of them as they quickly try to recover, albeit quite damaged. This thing really cannot be natural, as they move in such an erratic way while trying to stand up, again, with sluggish yet so mechanical movements. The noises they make are not resembling any living creature, either. You are probably fighting a robot of some sort. Speaking of which, you are still not done with them, as they advance to attack you once more. But this time, you actually stand a chance to overpower them.";
						say "[StrangeAndroidSeekerFight]";
					else:
						say "     ...But you were also really obvious about it, making your intentions well known. Your enemy knows this, and manages to get to you without much trouble, deflecting all of your strikes and incapacitating you with lightning speed...";
						say "[StrangeAndroidSeekerFail]";
				else:
					say "     Using the best of your agility, you have managed to get out of your hiding spot... And slip. Fortunately, not in the puddle, but your eagerness to be fast betrayed you, and you collapsed right in front of your enemy. Their eyes flicker emotionless in your direction...";
					say "[StrangeAndroidSeekerFail]";
			else if calcnumber is 3:
				LineBreak;
				say "     You have decided on a plan of action. Now, you shall try your best to make it count...";
				WaitLineBreak;
				let bonus be (( charisma of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Charisma Check):[line break]";
				if diceroll + bonus >= 10:
					say "     Raising your hands, you manage to persuade your enemy that you pose no threat, and they seem to believe you. While this does not save you, still, the dragon individual seems less hostile, but walks towards you with their guard down. This is the opportunity you need...";
					WaitLineBreak;
					let bonus be (( strength of player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]11[roman type] (Strength Check):[line break]";
					if diceroll + bonus >= 11:
						say "     And within the right timing, you hit them so damn hard they get knocked back and hit the wall, damaging... their plate? This thing really cannot be natural, as they also move in such an erratic way while trying to stand up, again, with sluggish yet so mechanical movements. The noises they make are not resembling any living creature, either. You are probably fighting a robot of some sort. Speaking of which, you are still not done with them, as they advance to attack you once more. But this time, you actually stand a chance to overpower them.";
						say "[StrangeAndroidSeekerFight]";
					else:
						say "     ...And you fail miserably. You were so bad that your enemy even blinked twice, only stoically observing you. In fact, they seem to have no expression at all as they incapacitate you, leaving you vulnerable...";
						say "[StrangeAndroidSeekerFail]";
				else:
					say "     Raising your hands, you attempt to persuade your enemy that you pose no threat, but this seemed more like you were taunting them. Well, that failed, and now they know where you are, but if you manage to hit them hard enough, you could still probably salvage this...";
					WaitLineBreak;
					let bonus be (( strength of player minus 10 ) divided by 2);
					let diceroll be a random number from 1 to 20;
					say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]14[roman type] (Strength Check):[line break]";
					if diceroll + bonus >= 14:
						say "     And within the right timing, you hit them so damn hard they get knocked back and hit the wall, damaging... their plate? This thing really cannot be natural, as they also move in such an erratic way while trying to stand up, again, with sluggish yet so mechanical movements. The noises they make are not resembling any living creature, either. You are probably fighting a robot of some sort. Speaking of which, you are still not done with them, as they advance to attack you once more. But this time, you actually stand a chance to overpower them.";
						say "[StrangeAndroidSeekerFight]";
					else:
						say "     ...And you fail miserably. You were so bad that your enemy even blinked twice, only stoically observing you. In fact, they seem to have no expression at all as they incapacitate you, leaving you vulnerable...";
						say "[StrangeAndroidSeekerFail]";
			else if calcnumber is 4:
				LineBreak;
				say "     You have decided on a plan of action. Now, you shall try your best to make it count...";
				WaitLineBreak;
				let bonus be (( perception of player minus 10 ) divided by 2);
				let diceroll be a random number from 1 to 20;
				say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]12[roman type] (Perception Check):[line break]";
				if diceroll + bonus >= 12:
					say "     Examining the area, you notice a puddle of fluids, and you could even have tried to draw your enemy's attention to it, but you have a better idea. You find an empty can and decide to throw it towards the puddle, but not quite in there, just enough so that the dragon individual turns their focus towards that general direction. It worked, as they proceed to examine the source of the noise. Great, now you can just bring down this rotten ladder on top of them and bring them down with the power of your massive wrinkled brain. Naturally, it brings the dragon person down onto the puddle and finishes them in one go, as they do not seem to move. Sparks come out of them, as well as... metallic components. Indeed, this thing was not natural, you just brought down some sort of robot.";
					say "[StrangeAndroidSeekerSuccess]";
		else:
			LineBreak;
			say "     You do not think you are fully prepared to deal with this, and there are other things you must turn your focus to, first. Regardless of the urgency of what is happening here, you need to consider your priorities.";

to say StrangeAndroidSeekerFight:
	challenge "Dragon Android";
	if fightoutcome < 20: [won]
		say "     Finally, you manage to hit it enough times to cause the dragon robot to malfunction and collapse, unable to move anymore. Its sounds diminish after a while, falling into pure silence as its lights fade away.";
		say "[StrangeAndroidSeekerSuccess]";
		now Resolution of Strange Android Seeker is 3;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     Unfortunately, even in its debilitated condition, the robot manages to overpower you. Once it is sure that you will no longer pose a problem, it seems to have activated a [']maintenance protocol['], its previously damaged sections having been thoroughly repaired. Now, you really will not stand a chance against it...";
		say "[StrangeAndroidSeekerFail]";
	else if fightoutcome is 30: [fled]
		say "     This is it, you do not care what happens to any more people nor this robot thing, and decide to leg it. Fortunately, the damage you have done to the assaulter was enough to slow it down drastically, and finally, you manage to lose its sight. You do not think you will see it again, or at least so soon.";
		now Resolution of Strange Android Seeker is 99;
		now Strange Android Seeker is resolved;

to say StrangeAndroidSeekerSuccess:
	WaitLineBreak;
	say "     Well, mission accomplished. You have defeated the assaulter and you now need to decide its fate. This is clearly no ordinary robot, either, with quite a lot of sophisticated high-tech equipment that would make a microwave very jealous, if there were sentient ones. Upon closer inspection, you also notice a small symbol with the name [']Segis['] printed on top. Who is this person? Or corporation? Those are questions you could ask yourself, but for now, there is no way to answer them. As for the body, you suppose you could just destroy it, but why waste such an interesting... machine? Perhaps you should actually stash it somewhere until you know what to do with it.";
	LineBreak;
	say "     [bold type]What will you do with the dragon android body?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Stash it safely.";
	say "     ([link]N[as]n[end link]) - Destroy it.";
	if player consents:
		LineBreak;
		say "     It might, indeed, prove useful, sometime. With this in mind, you carefully grab the android, which turns out to be quite heavy, and find some safe place to stash it in. You take note of this area and leave, now that you know where to get it back if the need shows itself. While you were transporting it, you seemed to have found nothing of use but several bottles of what seems to be... cum, of many different kinds. What would such a creature want with so much semen from so many different species? Perhaps you would not like to know. You collect all the samples, for now.";
		ItemGain hellfire seed by 1;
		ItemGain demon seed by 1;
		ItemGain orc cum by 1;
		ItemGain blue gel by 1;
		ItemGain alpha wolf cum by 1;
		ItemGain centaur cum by 1;
		ItemGain distilled cum by 4;
		say "     [bold type]You have earned a destroyed dragon android body, but you do not know yet what to do with it... You shall be able to access it if the opportunity arises. [roman type][line break]";
		now Resolution of Strange Android Seeker is 3;
	else:
		LineBreak;
		say "     Things like this might be too dangerous to let exist, so you dismantle it with the best of your abilities and make sure they can never function again. This takes you some time, but you are certain nobody will ever be able to put this specific dragon robot together ever again.";
		say "     Unfortunately, it had nothing of use in its personal inventory, unless you wanted several bottles of what seems to be... cum, of many different kinds. What would such a creature want with so much semen from so many different species? Perhaps you would not like to know. You collect all the samples, for now.";
		ItemGain hellfire seed by 1;
		ItemGain demon seed by 1;
		ItemGain orc cum by 1;
		ItemGain blue gel by 1;
		ItemGain alpha wolf cum by 1;
		ItemGain centaur cum by 1;
		ItemGain distilled cum by 4;
		say "     This investigation is over, and you are now ready to leave this behind your back, forever. Hopefully.";
		now Resolution of Strange Android Seeker is 99;
	now Strange Android Seeker is resolved;

to say StrangeAndroidSeekerFail:
	WaitLineBreak;
	say "     You remain at its mercy, and the android surely likes this. With a quite uncharismatic approach, the machine extends its hand towards your crotch and begins to feel up you...";
	if player is not male:
		say "     It does not seem to like what it sees, as it retracts and backs away as soon as it realizes you are not properly equipped. It then turns tails and leaves, no longer interested in you. So... that was it, the assaulter is, in fact, not into dickless people, or... whatever.";
		say "     You suppose you should just forget this embarrassing moment and leave this matter behind your back, forever. Hopefully. At least it will not chase you, anymore.";
		now Resolution of Strange Android Seeker is 99; [just leaves]
	else: [is male]
		say "     To prevent you struggling any further, it calls a needle from its wrist, grabs you by the forearm and swiftly presses it below your shoulder, on the side. It is a quite painless experience, and then it becomes much, much better, as your senses begin to trick you into overwhelming pleasure. Your own brain seems to feed you images of all your hottest fantasies combined, and it feels like they are happening for real, filling you with ecstasy. Your [cock of player] raises to attention at its fullest, almost too fast for comfort, and it desperately needs attention. Though, you are too weak to move, your arms do not respond, and you fall hostage to your own stupor, only moaning and mumbling words you are not even sure they exist.";
		say "     Then, you feel that sweet relief of a hand around your dick, stroking it in a steady motion as all that bliss is intensified, further reinforced, reapplied and cycled through your body in ways you cannot describe, the only thing you can say about it being... you need more. That piece of meat is so hard you feel like you keep getting erect on top of its already rock solid state, and your cum factories swelling in antecipation, wanting to make you splooge right here and right now, but it takes time... Time that feels too long. You thrust into this hand that keeps on jerking you off, or at least you do, in your mind, since your body remains unresponsive. All you feel is that touch around your shaft, and you wish it was tighter, or that it rubbed you harder... You wanted to feel something rubbing at the tip of your cock, or something tightly wrapped around it as you penetrated some warm hole...";
		WaitLineBreak;
		say "     Suddenly, you explode. Not you, but your load comes out, and you feel ecstatic, so much that you feel your entire body throbbing. This veil of lust keeps you buried deep into this catatonic state and you cannot escape from it, and you stop caring. All you feel is your own orgasm coming again... and again... A state bliss you do not want to end, in constant pleasure. Your mind begins to break, to shatter, and you become nothing more than a brainwashed cum shooter, taught only how to shoot your load. Over and over again. Non-stop... Forever.";
		WaitLineBreak;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		follow the turnpass rule;
		clear the screen;
		say "     You wake up, unsure of where you are, with the biggest headache and covered in something sticky and dry... Your balls hurt a lot, and you are feeling like a cold fish in the worst mood ever. Not even your muscles escape this lingering pain, you just feel absolutely horrible. Now, you try to think about what happened and your memory fails for all except those people you found drooling in lust, much like what you think happened to you. At least you could find the suspect, which... you... do not remember, at all. What were they like? This is worrying, but you really cannot remember who assaulted you. On top of that, you feel like you have the biggest hangover possible, and can barely stand up on your feet.";
		say "     Well, all you can do is wait it out and try to slap yourself awake. Even that sounds difficult... Hopefully, this will pass soon enough.";
		CreatureSexAftermath "Player" receives "Other" from "Dragon Android";
		decrease libido of player by 100;
		now Resolution of Strange Android Seeker is 98;
	now Strange Android Seeker is resolved;

Section 2 - Creature Insertion

to say Dragon Android wins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say ""; [nothing should go in here]

to say Dragon Android loses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		say ""; [nothing should go in here]

to say Dragon Android desc:
	say "     The person-sized bipedal android has the uncanny appearance of a real dragonmorph, predominantly white with blue fur and synthetic scales covering its entire body. A keen eye can tell it apart from anything real due to its metallic components that shine in plain view, but concealed well enough to fool a distracted passerby. This robot seems to be able to change parts of its hands and fingers to call devices with a magnitude of different utilities right from inside its scales, and once it lays its eyes on you, they flicker in an unnatural glowing cyan light. With the fluid and swift movement of a humanoid, the android approaches you with the intent of taking you down, no sound nor voice coming out of its solid frame.";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Dragon Android"; [name of the overall species of the infection, used for children, ...]
	add "Dragon Android" to infections of MachineList;
	add "Dragon Android" to infections of MaleList;
	add "Dragon Android" to infections of BipedalList;
	add "Dragon Android" to infections of TailList;
	now Name entry is "Dragon Android"; [Name of your new Monster]
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]The android rushes to elbow you on the face[or]The android attempts to incapacitate you with a martial technique, but only manages to hurt you slightly[or]With a metalic sound, the android punches you in the gut[or]The robotic dragon touches you with its robotic hand, then zaps you, sending tingling pain throughout your whole body in an attempt to wear you out[at random]";
	now defeated entry is "[Dragon Android loses]";
	now victory entry is "[Dragon Android wins]";
	now desc entry is "[Dragon Android desc]";
	now face entry is "";
	now body entry is "";
	now skin entry is "";
	now tail entry is "";
	now cock entry is "";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now cock change entry is "";
	now str entry is 15;
	now dex entry is 15;
	now sta entry is 15;
	now per entry is 15;
	now int entry is 15;
	now cha entry is 15;
	now sex entry is "Male"; 	[ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 100; [ How many HP has the monster got? She's not too hard- she doesn't want to win so much as not lose]
	now lev entry is 10; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [Amount of Damage monster Does when attacking. Claws and massive strength]
	now area entry is ""; [ Current options are 'Outside' and 'Mall'. Case sensitive. If you go down to the woods today, you're in for a big surprise]
	now Cock Count entry is 0; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 0; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 0; [ Size of balls apparently ;) sneaky Nuku (big balls are underrated.)]
	now Nipple Count entry is 0; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is true;
	now libido entry is 0; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "mechanical";
	now type entry is "draconic"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Segis ends here.
