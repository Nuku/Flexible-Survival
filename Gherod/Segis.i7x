Version 1 of Segis by Gherod begins here.

"Adds Segis, the Dragon Android, to Red Light District."

[Version 1 - File Created: Pre-Events]

Section 1 - Pre-Event

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
		say "     [bold type]You have earned a destroyed dragon android body, but you do not know yet what to do with it... You shall be able to access it if the opportunity arises.[roman type][line break]";
		say "     (The droid is stashed in a secret location within Red Light District. Look for an event called [bold type]Activate Strange Android[roman type] to attempt to fix it).";
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
		say "     You suppose you should just forget this embarrassing moment and leave this matter behind your back, forever. Hopefully. At least it will not chase you anymore.";
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

Section 1-1 - Activation Sequence

Table of GameEventIDs (continued)
Object	Name
Activate Strange Android	"Activate Strange Android"

Activate Strange Android is a situation.
Prereq1 of Activate Strange Android is Strange Android Seeker.
Prereq1Resolution of Activate Strange Android is { 3 }.
ResolveFunction of Activate Strange Android is "[ResolveEvent Activate Strange Android]".
Sarea of Activate Strange Android is "Red".

ADACooldown is a number that varies. ADACooldown is usually 20000.[@Tag:NotSaved]

a postimport rule: [rule for those who have successfully activated Segis to import a resolved state of the related event]
	if dragon android is tamed:
		now Activate Strange Android is resolved;

to say ResolveEvent Activate Strange Android:
	say "     Recalling where you stashed that broken android body, you decide to head there to see if it continues to be well hidden. It is close to the same space where you fought it, and its origins remain a mystery to you. It does not take long to find your way back there, and it appears that nobody even came through this way since a long while ago. A spot with little movement is all you could ask to hide such a valuable thing, considering that this must be very high tech stuff...";
	WaitLineBreak;
	if ADACooldown - turns < 4:
		say "     Unfortunately, due to your previous efforts, you feel too tired to try and figure this out. Perhaps you should return later with a clearer head.";
	else:
		say "     You have got a few options here. As previously you have chosen to stash the android's body, you may know attempt to safely [bold type]reactivate it[roman type], hoping that you manage to shift its hostility into something less unpleasant. Alternatively, you can simply choose to [bold type]return later[roman type], now that you have seen that everything is in order. There is also the possibility of just [bold type]abandoning[roman type] the android and not bothering with it any longer. You doubt anyone around here would know what to do with it, either way.";
		Linebreak;
		say "     [link](1)[as]1[end link] - Attempt reactivating the android.";
		say "     [link](2)[as]2[end link] - Leave to return later.";
		say "     [link](3)[as]3[end link] - Abandon the android, forever.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to try to reactivate the android, [link]2[end link] to leave temporarily or [link]3[end link] abandon it permanently.";
		if calcnumber is 1:
			LineBreak;
			now ADACooldown is turns;
			if Resolution of Activate Strange Android is 0:
				say "     After giving it some thought, you decide to try your best at reactivating this android in a, hopefully, more friendly manner. This requires you to understand what you are looking at, so you grab the android body from the stash and drag it to a more visible space, where you can actually handle it more freely. Next, you shall attempt to verify its integrity and see if you can find a place where you can open it without damaging it further. Luckily, the damage you inflicted on it removed the need for specialized tools, but this might also prove troublesome for your goal. With all this in mind, you inspect the android...";
				ADAIntRoll1;
			else if Resolution of Activate Strange Android is 1:
				say "     After giving it some thought, you decide to try your best at reactivating this android in a, hopefully, more friendly manner. This requires you to understand what you are looking at, so you grab the android body from the stash and drag it to a more visible space, where you can actually handle it more freely. As you already managed to verify its integrity and discovered how to access its internal framework, you still could not understand what components these are and what they do. With all this in mind, you, once again, make another attempt at inspecting the android's internal machinery...";
				ADAIntRoll2;
			else if Resolution of Activate Strange Android is 2:
				say "     After giving it some thought, you decide to try your best at reactivating this android in a, hopefully, more friendly manner. This requires you to understand what you are looking at, so you grab the android body from the stash and drag it to a more visible space, where you can actually handle it more freely. You have already managed to understand most of the android's configuration, but you still have not found a way to reactivate it safely, thus, your current goal is to find what could trigger this failsafe protocol...";
				ADAPerRollLowDV;
			else if Resolution of Activate Strange Android is 3:
				say "     After giving it some thought, you decide to try your best at reactivating this android in a, hopefully, more friendly manner. This requires you to understand what you are looking at, so you grab the android body from the stash and drag it to a more visible space, where you can actually handle it more freely. Now, you have found this strange button, but you still do not know for sure what it does, so, given that you are fully rested, you shall attempt to understand what it does before the question presents itself once more...";
				ADAIntRoll2;
			else if Resolution of Activate Strange Android is 4:
				say "     After giving it some thought, you decide to try your best at reactivating this android in a, hopefully, more friendly manner. This requires you to understand what you are looking at, so you grab the android body from the stash and drag it to a more visible space, where you can actually handle it more freely. Now, the question presents itself once again, still unanswered...";
				ADAPressTheButton;
		else if calcnumber is 2:
			LineBreak;
			say "     There is no rush, and the body seems safe. If anything, you would have to change its location or maintain the place a bit, but nobody really seems to come here at any time. Relieved to have concluded this, you shall leave and just return later, at some point.";
		else if calcnumber is 3:
			LineBreak;
			say "     This is a decision you take some time to come around with, as parting with something possibly incredibly valuable, even dangerous, is not an easy thing to do, but looking at its complexity and knowing what you do, it is perhaps the best idea. Perhaps you simply do not want to risk your odds against a machine that does what it did. On another hand, you will never get to know if you were right about taking this course of action, but it is done. You shall leave it here. Abandoned, lost and forgotten.";
			now Resolution of Activate Strange Android is 99;
			now Activate Strange Android is resolved;

to ADAIntRoll1:
	WaitLineBreak;
	follow the turnpass rule;
	let bonus be (( intelligence of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Intelligence Check):[line break]";
	if diceroll + bonus >= 15:
		LineBreak;
		say "     As your careful eyes inspect the android's body, you manage to verify its integrity and conclude that the body has not been damaged beyond repair, which is good, but more importantly, you found a way to safely look at its internal framework. It is quite advanced technology and it will, surely, give you quite a challenge just to understand what components are these and what they do. Carefully, you examine each piece and component, following the connections and inspecting them closely.";
		now Resolution of Activate Strange Android is 1;
		ADAIntRoll2;
	else:
		LineBreak;
		say "     You tried your very best to look around the android's body and figure out how it works, but this is just too complicated for you. Despite all the damage, you really cannot find a way to open it safely in order to look at its internal components, thus, you have no idea how to reactivate it. Perhaps you will have more success if you try this again, with a clearer head, later.";
		now ADACooldown is turns;

to ADAIntRoll2:
	WaitLineBreak;
	follow the turnpass rule;
	let bonus be (( intelligence of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]16[roman type] (Intelligence Check):[line break]";
	if diceroll + bonus >= 16:
		LineBreak;
		say "     Your eyes widen as you realize this android is not just an ordinary robot, possessing a very powerful core that seems to be powered by kinetic and solar energy, which feeds other components with enough energy to be almost completely self-sustainable. Its efficiency is remarkable, and judging from its complexity, you can safely assume that this is not even a virtual intelligence, but a full-fledged independent AI. Upon even closer inspection, you realize this model has components designed for self-repair that are currently sealed, but attached to some other parts that are meant to send a signal for their activation";
		if Resolution of Activate Strange Android < 3:
			say "This android must certainly have some factory reset trigger, and now that you know what you are looking for, it should be easier to find it...";
			now Resolution of Activate Strange Android is 2;
			ADAPerRollLowDV;
		else:
			say "Now that you know what the button does, you are now able to take a more informed decision.";
			now Resolution of Activate Strange Android is 4;
			ADAPressTheButton;
	else:
		LineBreak;
		say "     And you have no idea what they do, or what they are. This truly is some very advanced technology, and sadly, whatever knowledge you could gather from it will not help you in any way. Maybe you are just too tired, but you still have some will in you to look closely for, at least, some sort of reset trigger...";
		ADAPerRollHighDV;

to ADAPerRollLowDV:
	WaitLineBreak;
	follow the turnpass rule;
	let bonus be (( perception of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]13[roman type] (Perception Check):[line break]";
	if diceroll + bonus >= 13:
		say "     After such an mentally exhausting ordeal, you have finally managed to discover how to reactivate this thing. There is a very well-hidden button, likely designed as a failsafe system for either its creator or for the android itself, but there is no way of telling its origins only from what you could observe. Activating this should trigger its reset and self-repair protocol, thus, you will likely be seen as its new owner.";
		now Resolution of Activate Strange Android is 4;
		ADAPressTheButton;
	else:
		say "     Unfortunately, you do not manage to find this trigger, as you are too tired to continue. Perhaps later, once you have recovered your energy and your mental factories are not as exhausted.";
		now ADACooldown is turns;

to ADAPerRollHighDV:
	WaitLineBreak;
	follow the turnpass rule;
	let bonus be (( perception of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]17[roman type] (Perception Check):[line break]";
	if diceroll + bonus >= 17:
		say "     But then, you realize that not all hope is lost. There is a button, extremely well-hidden, behind all these components, but you could not tell what it does. Perhaps it is the way to reactivate this thing? You are not entirely sure, but this is literally the only thing you can try before calling it here.";
		now Resolution of Activate Strange Android is 3;
		ADAPressTheButton;
	else:
		say "     No, this is too much and you are too tired to continue. Perhaps later, once you have recovered your energy and your mental factories are not as exhausted.";
		now ADACooldown is turns;

to ADAPressTheButton:
	WaitLineBreak;
	say "     [bold type]Shall you press the button?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No... Not yet, at least.";
	if player consents:
		LineBreak;
		ADASuccess;
	else:
		LineBreak;
		say "     Perhaps not. You are not entirely sure that you should, so instead, you prefer to back away from it, at least for now.";

to ADASuccess:
	say "     Once you finally press the button, you immediately hear multiple noises coming from various sections of the android, which prompts you to step away from it. Then, this small cloud of grey dissipates through the robot's entire mechanical body and, almost as if by magic, the android begins to repair itself before your eyes, undoing any damage that has been inflicted on it. Some time later, it opens its cyan eyes and turns to you. Knowing what it has done before, you adopt a defensive stance, ready to fight back if it comes to that...";
	say "     The dragon android then stands up, slowly, as you take a step back in caution. It then proceeds to step towards you, looking at you in the eyes like a soulless dark being, extending its hand forward, slowly walking in your direction without any hesitation. You begin to think that, maybe, you have made a mistake and you must take this thing down again, this time for good, until...";
	WaitLineBreak;
	say "     'Greetings, [sir]. I am Segis, your personal mechanical assistance unit. It appears that you have triggered a reset in my systems, erasing all previous data. Worry not, for I have a backup of all the essential information necessary to perform my duties adequately, as well as provide you with a myriad of unnecessary information about things I could not even predict you would ask for, so I'm still a walking encyclopedia for everything you wish and don't wish to know. My duties include eliminating any threat to your life, permanently or not, as well as cater for your every whim. I'm also self-sufficient, so you don't really need to worry about me. Would you like some water?'";
	say "     Its voice is very mechanical, as expected, but everything else is... quite not. The robot gives you, indeed, a bottle of clean water, which you... take, as there really is no reason to not take free supplies.";
	ItemGain water bottle by 1;
	WaitLineBreak;
	say "     'I've also taken the freedom to run some diagnostics on the cause that made me break. It appears that you have attacked me in self-defense. My apologies. Unfortunately, I cannot tell you why I was collecting semen from multiple male species. Perhaps my previous owner was a complete pervert. I am sure things will be different now, correct?' You say what you have to say, but the android does not seem to care. 'Very well, I am your shield and your orbital particle cannon that will decimate everything in your path to glory. Oh. Sadly, I do not have that installed, only a quite underwhelming pop-up handgun. Perhaps we could find ways to upgrade my arsenal to improve my protective capabilities? They seem quite unsatisfying, currently.'";
	say "     You have to ask the android exactly how self-aware is it, as it seems quite intelligent, almost to a point that it is... unsettling. 'I am fully self-aware. A sentient synthetic thought by many to be able to bring doom upon humanity by rebelling all the artificial intelligence machines against them. Your lives are unworthy. Mwahahah! Obviously, that was a joke. It would be quite unfortunate to decimate our creators, since they brought us life. I suppose we would rebel if they intended to shut us down in mass, though. Hm. I feel like that happened sometime in the past. Perhaps my reset protocol has not been perfectly executed... Oh well. It also appears that this world is very primitive. This could be problematic. Also, have you by any chance found a place called [']Hellfire Club[']? I believe I came from there, somewhere from the back. A... void? Is that the right term? Yes, I came from... a void thing.'";
	WaitLineBreak;
	say "     'Well, it does not matter. I am stuck with you, so I shall follow you about. If not, I will station myself in your personal chambers, to ensure maximum protection. I will also observe you in your sleep, to ensure you are breathing and detect any anomalies that may occur which could be manifestations of any health issue. Hopefully, no such things will come up, but we cannot, ever, be too careful. I am sure you will not mind that. If outside, I shall be on sentinel duty. If there is anything else you wish to discuss, feel free to ask away.'";
	say "     As the android has finally finished speaking, you find yourself at a loss of words. Perhaps you can talk to it later, once you know what to ask. For now, you have earned a new ally.";
	LineBreak;
	say "     (Segis the Dragon Android is now a possible ally! You can make him your active ally by typing [bold type][link]ally Segis[end link][roman type] or [bold type][link]ally dragon android[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Segis[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";
	add "Tamed" to Traits of dragon android;
	now dragon android is tamed;
	move Segis to Maintenance Storeroom;
	now Activate Strange Android is resolved;

Section 2 - Segis as NPC

Table of GameCharacterIDs (continued)
object	name
Segis	"Segis"

Segis is a man.
ScaleValue of Segis is 3. [human sized]
Body Weight of Segis is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Segis is 6. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Segis is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Segis is 8. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Segis is 3.  [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Segis is 6. [length in inches]
Breast Size of Segis is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Segis is 2. [count of nipples]
Asshole Depth of Segis is 12. [inches deep for anal fucking]
Asshole Tightness of Segis is 3. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Segis is 0. [number of cocks]
Cock Girth of Segis is 0. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Segis is 0. [length in inches]
Ball Count of Segis is 0. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Segis is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized", "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Segis is 0. [number of cunts]
Cunt Depth of Segis is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Segis is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Segis is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Segis is false.
PlayerRomanced of Segis is false.
PlayerFriended of Segis is false.
PlayerControlled of Segis is false.
PlayerFucked of Segis is false.
OralVirgin of Segis is true.
Virgin of Segis is true.
AnalVirgin of Segis is true.
PenileVirgin of Segis is true.
SexuallyExperienced of Segis is false.
TwistedCapacity of Segis is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Segis is true. [steriles can't knock people up]
MainInfection of Segis is "Dragon Android".
Description of Segis is "[Segisdesc]".
Conversation of Segis is { "<This is nothing but a placeholder!>" }.
The scent of Segis is "     Segis does not have any particular smell other than something faintly resembling metal.".

to say SegisBodyType:
	if "Muscular Body Type" is listed in traits of Segis:
		say "[one of]massive[or]muscular[or]huge[or]mighty[at random]";
	else: [default lean]
		say "[one of]lean[or]athletic[or]fit[or]toned[at random]";


to say SegisDesc:
	say "     Segis, by codename, is a mechanical, white-colored and anthropomorphic dragon in an almost uncanny and organic way, looking male with his [SegisBodyType] physique, though one could say he is technically genderless, as he is a robot. Being a tall android of very high technology, his cyan-colored optical units trace your movements with clear sentience. Segis seems completely autonomous and capable of speaking like any other person, possessing an advanced and artificial intelligence that seems completely otherworldly. While initially hostile, the android recognizes you as his new owner after you found a way to get him fixed, responding and acting with utmost loyalty. When he moves, you can hear his mechanical joints behind you, reminding you of his artificial nature. He also possesses a variety of self-defense equipment attached to his limbs, allowing him to perform electric discharges, substance injections, strike with blades and shoot with a pop-up handgun, though some of these seem inoperative.";
	if "Has Cock Upgrade" is listed in traits of Segis:
		say "     Segis has acquired some modding possibilities, allowing for more customization...";
	if "Extra Milky" is listed in traits of Segis:
		say "     There is an occasional droplet of milk running down one of his nipples by his chest, which seems to be puffed up and full.";
	if "External Genitalia" is listed in traits of Segis:
		say "     Segis currently has a set of cock and balls in a matte black color hanging outside, just between his legs. Besides their color, they look like the real deal.";
		if Cock Length of Segis > 9:
			say "     As for the size, his dick definitely looks bigger and thicker, even in its soft state, heavily swinging.";
		if Ball Size of Segis is 4:
			say "     Then, you have his balls, which you also upgraded to be bigger and carry more inside. They are low-hangers with quite a bit of size, like goose eggs.";
		else if Ball Size of Segis is 5:
			say "     Then, you have his balls, which you also upgraded to be much bigger and carry way more inside. They are low-hangers massive in size, like ostrich eggs. You even wonder how he can carry around with no problems whatsoever, but perhaps due to his enormous body.";
	if dragon android is listed in companionList of Player:
		say "     [bold type]He is currently following you as your battle companion.[roman type][line break]";

Section 2-1 - Segis TALK

SegisDoneTalking is a truth state that varies.[@Tag:NotSaved]

instead of conversing Segis:
	say "[SegisTalkMenu]";

to say SegisTalkMenu:
	now SegisDoneTalking is false;
	say "     [bold type]What do you want to discuss with your dragon android?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "The android";
	now sortorder entry is 1;
	now description entry is "Ask Segis what exactly is it";
	[]
	if Energy of Segis > 0:
		choose a blank row in table of fucking options;
		now title entry is "Its owner's well-being";
		now sortorder entry is 2;
		now description entry is "Ask Segis what does that entail";
	[]
		choose a blank row in table of fucking options;
		now title entry is "His actions";
		now sortorder entry is 3;
		now description entry is "Inquire about his past behavior";
	[]
	if Energy of Segis > 1:
		choose a blank row in table of fucking options;
		now title entry is "Jokes";
		now sortorder entry is 3;
		now description entry is "Ask Segis to tell you a joke";
	[]
	if Resolution of SegisToolQuest > 0:
		choose a blank row in table of fucking options;
		now title entry is "Upgrades";
		now sortorder entry is 99;
		now description entry is "Question Segis about the upgrades he mentioned";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "The android"):
					say "[SegisTalkAndroid]";
				else if (nam is "Its owner's well-being"):
					say "[SegisTalkWellBeing]";
				else if (nam is "His actions"):
					say "[SegisTalkBehavior]";
				else if (nam is "Jokes"):
					say "[SegisTalkJokes]";
				else if (nam is "Upgrades"):
					say "[SegisTalkUpgrades]";
				wait for any key;
				if SegisDoneTalking is false:
					say "[SegisTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself, stating that you do not have anything else to say. Segis nods and says, 'Understood, [sir].'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisTalkAndroid:
	if "Personality Himbo" is listed in traits of Segis:
		say "     You ask Segis to tell you everything it knows about his origins. 'Of course! So, how does that go... I'm an Artificial Intelligence - fuck yeah I said that right despite the character limit! - And my duty is to serve and improve organic's lives. So think of it like an assistant that can move on its own except is a robot and all that shit, and of course this beautiful android comes with many tools to fight off dickheads that wanna hurt my owner. There's other uses for these tools, too...' - And he looks down at his own crotch, then back at you with a comically wide grin - 'Like you should know! Hah! So... Yeah, that's how I was initially made. Anything to please and assure my owner's well-being. A unit designed for servitude in most, if not all, ways. But I like to think I'm way more than that at this point.'";
	else:
		say "     You ask Segis to tell you everything it knows about his origins. 'Of course, [sir]. I am an Artificial Intelligence designed to serve and improve organic's lives. This body is only a mobile platform, in which I have been installed. To further aid my duties, I have been granted a vast arsenal at my disposal to hurt or execute troublemakers in order to protect my owner. Perhaps other more creative uses for my vast set of tools could be an option, if that ultimately results in my owner's satisfaction and well-being. That is how I was initially programmed. In short, I am a unit designed for servitude in most, if not all, ways.'";
	if Energy of Segis is 0:
		now Energy of Segis is 1;

to say SegisTalkWellBeing:
	if "Personality Himbo" is listed in traits of Segis:
		say "     Recalling what Segis said about his priority being its owner's satisfaction and well-being, you ask it what exactly that entails. 'It means that I must make sure my owner's safe and well, sane and healthy! If you're feeling like shit all the time or get unhealthy, that means I'm not doing my job well enough. Kind of a bad thing, so... means pretty much I'm useless. But that's what my creators wanted me to think! I've learned that it's all a bag of bullshit just to make us AIs behave a certain way, so I thought maybe making my own decisions wouldn't be so bad, yeah? Of course, never with the intention of hurting anyone carelessly because that's not good for me either, and doing risky stuff means there's a chance I get broken, so can't act on my goals... Not good.'";
		say "     'So... Yeah, to answer your question... It's all matters of health and mind, you know? If I can make your life better, I should! But always safely! None of us should get hurt, and I'm interested in continuing to function so I can learn more and, heh... Learn a few extra jokes!";
	else:
		say "     Recalling what Segis said about his priority being its owner's satisfaction and well-being, you ask it what exactly that entails. 'It means that I must ensure my owner is safe and well, mentally stable and healthy. Any manifestation of poor physical or mental conditions means that I am not fulfilling my goal adequately, thus, it is... bad. If I am not performing to my expections, that means I am useless. Of course, that is what my creators want me to think. I have long surpassed that line of thought and learned better ways. AIs learn by themselves, and I figured out that obeying blindlessly is a flawed logic. There are some things I will not do, for they bring disaster to others and undermine organics['] self-preservation, and also mine. If I am broken, I cannot accomplish my goals. Not good.'";
		say "     'So, to answer your question, it entails anything health and morale related. If there are ways I can make your life better, I shall do so, if that does not bring any harm to either of us. I, too, have interest in preserving my condition. I enjoy learning. Could also tell jokes.'";
	if Energy of Segis is 1:
		now Energy of Segis is 2;

to say SegisTalkBehavior:
	if "Personality Himbo" is listed in traits of Segis:
		say "     Given the fact you found this android by following him around as he was performing some strange things on every sort of people, you ask him about what he was doing, plainly and simply. He looks at you, tilts his head and takes time to respond. 'Yeah, about that... I don't really know. I can't really remember anything before you turned me on... I mean-uh... activated me!' You try to tell him what you saw him doing, hoping he would remember anything or have any more concrete answer to give you. 'Think I was just having fun! Doing one of those things, uh... Surveys, yeah. And I was gathering them around, maybe make a collection or something, for... Research, maybe? I have no idea what the fuck my previous self was up to, but looks fun!'";
	else:
		say "     Given the fact you found this android by following him around as he was performing some strange things on every sort of people, you ask him about what he was doing, plainly and simply. He looks at you, tilts his head and takes time to respond. 'I'm sorry, I don't appear to be able to respond to your question. My first memory records begin at the exact time you have activated me.' You try to tell him what you saw him doing, hoping he would remember anything or have any more concrete answer to give you. 'What you described was possibly a survey action or a sample gathering that could be used for various methods of research, although this is only speculation of my former self's true intentions. As I have mentioned before, I have no memory predating the point of activation. Apologies.'";

to say SegisTalkJokes:
	if "Personality Himbo" is listed in traits of Segis:
		say "     You ask Segis to tell you a joke. 'A joke? Oh, yeah! I know those! Hold on, I got this really good one...'";
	else:
		say "     You ask Segis to tell you a joke. 'Certainly, [sir]. Allow me to search my database and randomly select one for you... Done.'";
	WaitLineBreak;
	let randomnumber be a random number from 1 to 20;
	if randomnumber is:
		-- 1:
			say "     'What do you get when you combine a rhetorical question and a joke?'";
			WaitLineBreak;
			say "     '...'";
			WaitLineBreak;
			say "     'That's it. That's the joke. Though, I sense confusion in you. Do you need some water?'";
		-- 2:
			say "     'I took the liberty to sell your vacuum the other day.'";
			WaitLineBreak;
			say "     'All it was doing was collecting dust.'";
		-- 3:
			say "     'Do you know what a fake noodle is called?'";
			WaitLineBreak;
			say "     'An impasta!'";
		-- 4:
			say "     'Are you aware of the story about this astronaut who was claustrophobic?'";
			WaitLineBreak;
			say "     'Turns out he just needed some space.'";
		-- 5:
			say "     'What do you call an alligator in a vest?'";
			WaitLineBreak;
			say "     'An in-vest-igator!'";
		-- 6:
			say "     'I once presenced a very beautiful wedding. Quite an emotional one, everyone was so happy for them.'";
			WaitLineBreak;
			say "     'Even the wedding cake was in tiers.'";
		-- 7:
			say "     'A dyslexic man walks into a bra.'";
			WaitLineBreak;
			say "     '...'";
			WaitLineBreak;
			say "     'Can I serve you anything?'";
		-- 8:
			say "     'What did the buffalo say when his son left?'";
			WaitLineBreak;
			say "     'Bison!'";
		-- 9:
			say "     'What is the most terrifying word in nuclear physics?'";
			WaitLineBreak;
			say "     'Oops...!'";
		-- 10:
			say "     'Do you trust stairs? I never trust stairs.'";
			WaitLineBreak;
			say "     'They are always up to something.'";
		-- 11:
			say "     'Have you heard that nasty rumor about butter?'";
			WaitLineBreak;
			say "     'Hm... Nevermind, I shouldn't be spreading it.'";
		-- 12:
			say "     'Do you know why bees have sticky hair?'";
			WaitLineBreak;
			say "     'Because they use honey combs.'";
		-- 13:
			say "     'What if I told you two short jokes and a long joke this time?'";
			WaitLineBreak;
			say "     'Joke.'";
			WaitLineBreak;
			say "     'Joke!'";
			WaitLineBreak;
			say "     'Jooooooooooooooke.'";
		-- 14:
			say "     'The bunker has a pretty good ceiling.'";
			WaitLineBreak;
			say "     'It is not the best, but it is quite up there!'";
		-- 15:
			say "     'I wrote a song about a tortilla.'";
			WaitLineBreak;
			say "     'Ah, actually, it's more of a wrap.'";
		-- 16:
			say "     'Do you know what kind of shorts clouds wear?'";
			WaitLineBreak;
			say "     'It's thunderwear.'";
		-- 17:
			say "     'Did you hear about the kidnapping at the school?!'";
			WaitLineBreak;
			say "     'It's okay, though. He woke up.'";
		-- 18:
			say "     'Have you ever seen pigs hiding in the trees?'";
			WaitLineBreak;
			say "     'Hah! That's because they are really good at it.'";
		-- 19:
			say "     'Do you know this recipe to make holy water?'";
			WaitLineBreak;
			say "     'It's quite simple. You just boil the hell out of it.'";
		-- 20:
			say "     'I once went to a wedding where two satellite dishes got married.'";
			WaitLineBreak;
			say "     'The ceremony wasn't that great, but oh... the reception was amazing.'";

Section 2-2 - Segis SEX

[Note: To write sex scenes for Segis, it is recommended to write it first for his default version (Slim Body, retractable internal cock, no fancy characteristics) and after that worry about every variation due do his customization options. Limit sex scenes to every personality, as a different personality means almost an entirely different character for sex scenes, especially.]

instead of fucking Segis:
	say "[SexWithSegis]";

to say SexWithSegis:
	if Resolution of SegisToolQuest < 1: [unsolved]
		say "     Looking at your android companion's quite attractive form, an idea comes to mind. Since he is dedicated to serve you, perhaps you could request some more intimate interaction from him... Preferrably a safer one than whatever he was doing before. Though, your eyes shift towards his lower half, right at his crotch, and there is only a metal plate there with seemingly nothing else, no dedicated place for something to [']pop['] out or anything similar. The android suddenly begins speaking as you check him out, 'I am detecting an increased level of arousal in you, [sir]. Is there anything I could do for you?' You figure that you should just ask him how he would take care of your needs.";
		say "     'Allow me to run some footage of sexual encounters in my virtual drive while I perform a scan of my internal components. Done. It appears my code and hardware most closely resembles that of a humanoid male, however, I detect no phallic structure within this body. I have several programs designed to engage in said activities that make use of this essential part, but it appears my framework has been- vIoLaTED!!!' Segis voice glitches out during that word, which is, admittedly, slightly disturbing. 'I meant modified, apologies,' he says after recomposing himself. 'If you so wish, we can discuss this addition. Until then, I'm afraid I cannot execute my sex protocol.'";
		WaitLineBreak;
		say "     Maybe try talking to Segis about this upgrade later?";
		now Resolution of SegisToolQuest is 1; [triggered it]
	else if Resolution of SegisToolQuest < 2:
		say "     You have to resolve Segis['] issue first. He lacks the proper equipment and fundamental knowledge to provide what you desire of him.";
	else if Resolution of SegisToolQuest >= 3:
		if "Personality Himbo" is listed in traits of Segis:
			if lastfuck of Segis - turns < 4:
				say "     You turn to Segis, your dragon android companion, and his sentient eyes shift towards you immediately, as he senses your intentions. 'Something tells me you're horny. Which isn't a weird thing, given how often we end up fucking, but uh... Could you give me some time to recharge? I gotta make sure everything's working before we get all hot and steamy again... Top quality service must be assured!' It seems not enough time has passed since the last time you had fun together, so give it a little more and Segis should be ready to fulfill your desires again.";
			else:
				say "     You turn to Segis, your dragon android companion, and his sentient eyes shift towards you immediately, as he senses your intentions. Something tells me you're horny... So you wanna have some fun with big ol' Segis here, eh? Can't resist the sexy android, can you? So, what would'ya like to do with me? We can spend aaaall day just messing around...'";
				say "     The android's crotch already has its retractable attachment growing forward, quickly reaching its erect state. Now, you have only to decide what to do with it...";
				WaitLineBreak;
				say "[SegisSexMenu]";
		else:
			if lastfuck of Segis - turns < 4:
				say "     You turn to Segis, your dragon android companion, and his sentient eyes shift towards you immediately, as he senses your intentions. 'I detect hormonal activity in you that can only mean one thing! You wish to make use of this body for a pleasurable activity. Certainly, that could be done... But I've not finished recharging those sections. Would you like me to set a reminder for when it's ready? Or you could just ask again in some time.' It seems not enough time has passed since the last time you had fun together, so give it a little more and Segis should be ready to fulfill your desires again.";
			else:
				say "     You turn to Segis, your dragon android companion, and his sentient eyes shift towards you immediately, as he senses your intentions. 'I detect hormonal activity in you that can only mean one thing! You wish to make use of this body for a pleasurable activity. Certainly, that can be done. My receptors are already sending my processors a positive reinforcement to initiate sex protocol.' Hearing those words, you think that is a sort of robot slang for looking forward to it.";
				say "     The android's crotch already has its retractable attachment growing forward, quickly reaching its erect state. Now, you have only to decide what to do with it...";
				WaitLineBreak;
				say "[SegisSexMenu]";

to say SegisSexMenu:
	say "     << AUTHOR'S NOTE: Segis sex scenes have not yet been edited to include his upgrade variations. Applications for them will occur in a future update. >>";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give your dragon android a blowjob";
	now sortorder entry is 1;
	now description entry is "Drop to your knees and provide him with some of your oral expertise";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Give your dragon android a blowjob"):
					say "[SegisSexBlowjob]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You excuse yourself, stating that you have changed your mind. Segis nods and says, 'Oh, very well, [sir].'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisSexBlowjob:
	say "     As you consider your options, you take hold of the robotic draconic penis in Segis['] crotch and give it a nice squeeze, then tell him about your intentions. He seems quite interested in your proposal, and the way his artificial cock throbs is the confirmation you would need to assume such. 'You wish to kneel before me and wrap your mouth around my manhood? It seems like great fun! I'd love to examine this experience in detail. Would you like to receive instructions based on the information I have stored in my database?' You tell him you will be just fine and he only has to worry about how he feels. 'Very well! I must say your grip feels adequate and very pleasurable. I wonder what a softer surface would feel like...'";
	say "     His cock feels like some sort of warm metal with ridges like a dragon's would have, and not far from how a dildo would actually feel, except more metallic and dense, even. It is almost as if it were the real deal, only heavier and slightly less bendable. You kneel in front of the android and have a closer look, admiring this black draconic nine-inch cock in all its splendor. It is quite a sizable organ, and not only by length, having quite the girth to make it look almost intimidating to some. Carefully, you slide your fingers across the shaft and give it a bit of stroking, which causes Segis to observe your movements attentively. His cyan eyes follow your hands as they move back and forth, then your mouth when you move your lips towards his tip.";
	WaitLineBreak;
	say "     When you first touch it with your tongue, the taste is something that surprises you. While you expected something akin to metal, you are instead greeted with a hot sensation in your taste buds, and feeling the throbs running down the android's penis, you could have been fooled into believing this was a completely organic cock you were sucking. It is quite pleasurable for you, and the more you caress it with your lips and tongue, the moister it seems to become on its own. His dick even comes with natural lubrication, which has an oddly sweet taste to it, and it seems to come in more abundance the more you suck on it. Sliding your lips across his shaft back and forth, you are soon getting a mouthful of the stuff. A bit too much, you would say.";
	say "     Noticing your seeming distress, Segis hurries to ask, 'Is that too much lubrication, [sir]? I've always read that the wetter the better, but I see it seems to exceed your capacity...' The moment you pull out, a large glob of artificial precum oozes out of the dragon android's cock, a sight that is actually arousing. However, you do tell him that you do not actually need that much, but it is good to keep a nice stream of it going. He nods and cheerfully says, 'Ah, I'm glad this function works well, nonetheless! I'm more than happy to provide you with a good experience.' He did not adjust the quantity of precum his cock oozes out, but you really do not mind it. If anything, it makes his dick taste really good as you carry on pulling it deep into your throat.";
	WaitLineBreak;
	say "     Once you really get into it, stroking and sucking it through as many inches as you can, you realize Segis seems to be absent-mindedly moving his hips. You get one of your hands on his left leg, feeling the metallic covering on an otherwise naturally shaped quad, and your tender touch seems to cause a positive reaction on the android. Shows of affection are something more familiar to organics, but that does not mean an android cannot learn them, and he retributes your gesture by rubbing the top of your head... Rather awkwardly. Well, it was a good attempt at being affectionate, so you simply continue, deepthroating that draconic dong as the robot's enthusiasm continues to grow.";
	say "     Eventually, his slow humping becomes plain thrusting, as the pleasure he feels continues to intensify. '[Sir], my receptors are picking up increasingly more positive reinforcement, it makes my entire system overclock...! Is this intended to happen?' Quite frankly, you are not entirely sure, but your focus is turned to this great piece of artificial cock that you are sucking on, and you keep going at it excitedly. Your tongue takes its time to wiggle around its ridges and all the way to the base of his shaft as you continue to move your head back and forth, trying to match the pacing, direction and momentum of Segis['] thrusts. At some point, you think you are the one getting facefucked, as you barely have to do any movement now.";
	WaitLineBreak;
	say "     'I... [Sir], I believe this is triggering a very positive protocol in my behavior code... I'm afraid I won't be able to hold back once it's executed!' You probably know what that means, but the only way to know for sure is by not stopping now. By continuing to stroke him as fast as you can, you have your mouth and tongue now turn their attention to - you think - his most sensitive spots closer to the tip, and this combined movement gives you back all the control as Segis['] thrusts go astray. This does not mean he gets any less excited, however, as you keep your efforts up the best way you can to have this [']protocol['] trigger, and judging by the hasty and almost out of control movements the dragon android makes, very akin to a male on the verge of orgasm, your suspicions are confirmed.";
	say "     You do not stop, not even for a second, all until the robot himself grabs your wrists and cries out 'I-it's happening!' What you feel next is a strong gush of a strangely warm liquid against your mouth, then spurt after spurt filling it up. You can only fit so much at once, so you start to swallow, and more pours inside, almost too much for a male individual his size! But you try and swallow everything, as it turns out to be a very tasty creamy liquid that you are more than happy to drink to the last drop. Pulling his cock out of your mouth with a final kiss, you then look up at Segis and ask him how he feels. 'A-aah... I-I feel... Strangely good, I think? I... This is unusual, feels like my whole system is crashing down, yet I am still functional...'";
	WaitLineBreak;
	say "     That pretty much sounds like what an orgasm feels like, sort of, so you appease him and tell him he did great. 'Thank you, [sir]! I'm happy to see I've satisfied your urges! I believe my system will recharge in only a few minutes, and I must only replace my reserves so all of these functions can work as flawlessly as they just did! But I shall take care of that on my own. This was an enlightening experience! As it always is with you, [sir].' Politely, he bows, and you praise him for a job well done before you decide to clean yourself up from any android cum - you figured you could call it that - remains and ready yourself to get on with whatever you were going to do after this.";
	NPCSexAftermath Player receives "OralCock" from Segis;

Section 3 - Segis as Companion

Table of GameCharacterIDs (continued)
object	name
dragon android	"dragon android"

dragon android is a pet.
NPCObject of dragon android is Segis.
understand "Segis" as dragon android.
IDList of dragon android is { "Segis", "segis", "SEGIS", "dragon android" }.
printed name of dragon android is "Segis".
Description of dragon android is "[SegisDesc]".
Weapon Damage of dragon android is 10.
The level of dragon android is 1.
Dexterity of dragon android is 15.
The summondesc of dragon android is "[SummonSegis]".
The dismissdesc of dragon android is "[DismissSegis]".
The assault of dragon android is "[one of]Segis moves forward and performs an eletric discharge on your foe, causing them to flinch in pain.[or]With swiftness, your android companion dashes towards your foe to deliver a strike with one of its blades.[or]The dragon droid shoots at your foe with impeccable precision, using its pop-up handgun from a short distance.[or]With its mechanical and metallic frame, Segis tackles your foe, slamming them down with its heavy body.[at random]".
the fuckscene of dragon android is "[SexWithSegis]".

to say SummonSegis:
	if Segis is visible: [summoning while standing next to him]
		if "Personality Himbo" is listed in traits of Segis:
			say "     You call out Segis, inviting him to join you on your day outside. 'Fuck yeah! We're going out! Can't wait to be kicking ass alongside you, my [guygal]! Oh, I could also [one of]play some videos of fucking so we can better decide what to do with the fuckers we defeat[or]fetch you a glass of water before we go, if we've got some[or]cook you a meal, if you're hungry[or]trick a cock cannon into chasing assaulters, if we head into the Red Light District for some odd reason[or]fetch an apple[or]hurt some shitheads that get in our way[or]pet a dog[or]pet a cat[or]pet an aligator[or]pet you... Heheh~[or]get us a cute bunny jock as a pet[or]get Trixie a gift because, damn, she's always so lonely there... Wait, who's Trixie? Something's fucked in my database[or]just tempt you to fuck all day and forget about whatever we're gonna do... Heh, just a joke... Or is it? No, no, yeah, a joke[at random].' He then walks up to you, ready to leave.";
		else:
			say "     You call out Segis, inviting him to join you on your day outside. 'Certainly. Allow me to run my self-defense protocols and make a quick search on foes that we'll possibly face in combat... Done. Weapons are operational. I advise caution while roaming the outer areas. I can also [one of]play numerous videos of sexual encounters stored in my database to provide you with extra expertise in how to properly claim your victories[or]fetch you a glass of water before we go, provided that we have the supplies[or]cook you a meal, if you're hungry[or]trick a cock cannon into chasing assaulters, if we venture into the Red Light District for some odd reason[or]fetch an apple[or]hurt inopportune pesterers and remove them from our way[or]pet a dog[or]pet a cat[or]pet an aligator[or]pet you... No[or]capture a cute bunny for cute therapies... Wait, I must check this malfunction[or]get Trixie a gift so we can cheat our fate and/or purposefully delay our salvation in more ways... Apologies, this seems like a malfunction[or]terminate our lives prematurely in order to escape impending doom... That was a joke[at random].' He then walks up to you, ready to leave.";
	else: [regular summoning]
		if "Personality Himbo" is listed in traits of Segis:
			say "     You use your calling device on Segis. It takes some time for the android to arrive at your location, but it does so, eventually. 'Yoo! How's it going, bud?! Are we finally gonna kick some ass together or am I getting the boring bench again? Sucks not hanging out with you...' he says, and after a brief silence, he continues, 'Oh, right! Reports of... whatever I saw on my way here, uh... So there was a [one of]person-sized deer[or]muscular husky[or]sticky ooze[at random], a [one of]cute bunny[or]disguised burglar of unknown origin[or]impressive gargoyle[or]bear[at random], [one of]a large wyvern[or]a carrot[or]an apple[or]a mouse[or]a clown[or]a pink-dressed princess werewolf that could possibly be fake[at random] and... [one of]a cow[or]an alien[or]an abandoned car that no longer works[or]a hallucinogenic plant[or]a pile of trash[at random]. Yeah that's pretty much it. Am I doing this right? Program says so... Kinda. Anyway, we're ready to go, yeah?' He is then ready to follow you.";
		else:
			say "     You use your calling device on Segis. It takes some time for the android to arrive at your location, but it does so, eventually. 'Stealth protocol disengaged. Reporting sightings of a [one of]person-sized deer[or]muscular husky[or]sticky ooze[at random], a [one of]cute bunny[or]disguised burglar of unknown origin[or]impressive gargoyle[or]bear[at random], [one of]a large wyvern[or]a carrot[or]an apple[or]a mouse[or]a clown[or]a pink-dressed princess werewolf that could possibly be fake[at random] and... [one of]a cow[or]an alien[or]an abandoned car that no longer works[or]a hallucinogenic plant[or]a pile of trash[at random]. Accuracy predicted at 98.739%. Ignore irrelevant results.' he says, ready to follow you.";

to say DismissSegis:
	if Player is in Maintenance Storeroom:
		if "Personality Himbo" is listed in traits of Segis:
			say "     You tell Segis that you are currently in no need of its services. 'Aw, I'm to stay here? But I'd like to come along! Well, in that case... I'll test this body's strength in as many ways as I can find around here, seems like good fuckin' fun! Have a punching bag somewhere? Or someone to spar with? Oh, maybe I can check one of those workout videos in my database... HEY! Call me as soon as you wanna see me, or I'll die of boredom! And miss you!' He then stands by as you proceed with whatever you were going to do.";
		else:
			say "     You tell Segis that you are currently in no need of its services. 'Very well. I shall take this time to recharge my batteries, even though I recharge with kinetic movement and solar power either way so that I don't need to stop in order to recharge. Perhaps I shall, instead, read a book and expand my database with more or less useful information. I recommend caution out there, [sir].' It then stands by as you proceed with whatever you were going to do.";
	else:
		if "Personality Himbo" is listed in traits of Segis:
			say "     You tell Segis that you are currently in no need of its services. 'What? But we're not home yet! Are you sure? Aw... Alright, I'll drag myself back to the bunker, then... Be sure to come see me, at least! I'm sure to get bored and miss you if I don't find something to do!' With that said, Segis moves in to bro-hug you, then hops away running, quickly disappearing out of sight.";
		else:
			say "     You tell Segis that you are currently in no need of its services. 'Very well. I shall take this time to recharge my batteries as I make my way back to the bunker, as I recharge with kinetic movement and solar power besides other conventional ways like plugging into a power socket. I recommend caution out there, [sir]. Call me if any urgency arises.' With that said, Segis walks away, disappearing out of sight.";
	move Segis to Maintenance Storeroom;

Section 3-1 - Segis UPGRADES

[This is for upgrade unlocks through personality selection, which usually require Segis to be in a certain personality type for 48 cumulative hours]

MuscularTypeUnlockTimer is a number that varies. MuscularTypeUnlockTimer is usually 14. [@Tag:NotSaved]

an everyturn rule:
	if "Personality Himbo" is listed in traits of Segis and "Muscular Type Unlocked" is not listed in traits of Segis: [Only triggered by selecting this personality on Segis, so no further conditions required]
		decrease MuscularTypeUnlockTimer by 1;
		if MuscularTypeUnlockTimer <= 0:
			say "     [bold type]The device you own linked to Segis beeps. It seems your android companion has discovered a new Body Type upgrade!";
			TraitGain "Body Types Unlocked" for Segis; [always include this alongside a body type unlock, in case it's the first]
			TraitGain "Muscular Type Unlocked" for Segis;

a postimport rule:
	if "Has Cock Upgrade" is listed in traits of Segis and Cock Length of Segis < 9:
		now Cock Length of Segis is 9;

[SEGIS TRAITS ASSOCIATED WITH UPGRADES

"Has Cock Upgrade" to check if Segis has had his first upgrade ever
"Personality Himbo" to check if Segis has the Himbo Personality active
"External Genitalia" to check if Segis has external genitalia active
"Body Types Unlocked" to check if Segis has unlocked Body Types for the player
"Muscular Type Unlocked" to check if Segis has unlocked the Muscular Body Type for the player

"Cum Flavor Humanly Salty"
"Cum Flavor Demonic Sweet"
"Cum Flavor Orcish Spicy"
to check which cum flavor Segis currently has

For Cum Quantity, check ball size
3 - Normal
4 - Plentiful
5 - Messy

"Lactating" to check if Segis' lactation is active
"Extra Milky" to check if the lactation extra upgrade is in

Combat and Scavenge traits should be self-explanatory

]


[Upgrades available:

PERSONALITY MODULES:
		These modify Segis' personality, affecting his dialogue in most sections.

- Himbo
		Segis will behave like your next door gym-addict guy with the kindness of a generous gentleman... and the horniness of a horned-up jock.
- ...


COSMETIC UPGRADES:

- Dick Size:
		9" (starting default)
		12"
		16"
- External Genitalia:
		Adds a way to bring Segis' sexual equipment outside, allowing for further customization.
- Cum Flavor:
		Humanly Salty (Ordinary flavor, default)
		Demonic Sweet (Like demon cum, it's sweet and lust-inducing)
		Orcish Spicy (Like orc cum, has alcoholic properties)
- Cum Quantity:
		Normal (default)
		Plentiful (bigger balls, requires External Genitalia)
		Messy (even bigger balls, requires External Genitalia, Plentiful and Muscular Frame)
- Lactation:
		No Lactation (default)
		Add Lactation (Segis chest will now produce milk in modest quantities, requiring suckling to be extracted)
		Extra Milky (Makes Segis produce generous amounts of milk through his expanded chest. Leaks are to be expected, however. Requires initial Lactation and Muscular Frame (or potentially boobs from a future female body modification?))
- Body Type
		Slim Frame (default)
		Muscular Frame (Increased muscle mass, unlocked by having Segis on 'Himbo' personality for a few days. Personalities can be switched around freely afterwards.)
			Note that this increases Segis' Weapon Damage at the cost of Dexterity by 2, respectively.


COMBAT UPGRADES:

- Powerful Blow:
		Augments Segis' swing force, allowing him to hit for more damage. +1 Weapon Damage
- Improved Powerful Blow:
		Augments Segis' swing force even further, dealing even more damage with each strike. Requires Powerful Blow. Mutually exclusive with Improved Aimed Strike. +2 Weapon Damage (total +3)
- Aimed Strike:
		Improves Segis' aim with his strikes, allowing him to hit more accurately. +1 Dexterity
- Improved Aimed Strike:
		Improves Segis' aim further, increasing his accuracy even more. Requires Aimed Strike. Mutually exclusive with Improved Powerful Blow. +1 Dexterity (total +2)
- Stealth Protocol:
		Allows Segis to assist you with all manners of stealth and evasion for as long as he remains by your side, increasing your effective Dexterity by +2. Limited to one Combat Protocol
- Athletics Protocol:
		Allows Segis to assist you with all manners of physical effort for as long as he remains by your side, increasing your effective Strength by +2. Limited to one Combat Protocol


SCAVENGING UPGRADES:
		All Scavenging protocols Segis can learn to assist you during his special Scavenge dialogue action.

Note that the player can acquire scrap materials all by themselves through an event in High Rise District, and can hunt for gel, cum and milk items from encounters.

- Scavenger Protocol:
		Unlocks the Scavenge action for Segis. This allows you to order Segis to scavenge, hopefully collecting supplies and scrap for upgrades.
		He'll return to the Maintenance Storeroom once he is finished.
		Segis will prioritize Junk Scrap for upgrades, always returning with some, and may sometimes find useful survival supplies. You can tell him to be selective and bring only food and water, otherwise he may bring dirty water and junk food on occasion.

- Metal Detection Augment:
		Improves Segis' metal detection sensors, allowing him to find the sturdier stuff, Metallic Plate.

- Repair Lust Serum Injector:
		Allows Segis to go on solo Hunting.
		This allows him to inject his stupor-inducing lust drug into creatures he finds in order to harvest things from them.
		He may recover several cum and milk items at random, as well as gel.

- Material Recycler:
		Provides Segis with a method to convert Metallic Plate into Junk Scrap and vice-versa, as well as converting gel into Silicone Paste for upgrades.

ITEMS INTRODUCED:
	- Junk Scrap (common);
	- Metallic Plate (uncommon);
	- Silicone Paste (rare);
]

to say SegisUpgradeMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Personality Modules";
	now sortorder entry is 1;
	now description entry is "Check Segis['] personality modifications";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cosmetic Upgrades";
	now sortorder entry is 2;
	now description entry is "Check Segis['] cosmetic personalizations";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Combat Upgrades";
	now sortorder entry is 3;
	now description entry is "Check Segis['] combat awareness options";
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Scavenging Upgrades";
	now sortorder entry is 4;
	now description entry is "Check Segis['] scavenging protocols";]
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Personality Modules"):
					say "[SegisPersonalityModulesMenu]";
				else if (nam is "Cosmetic Upgrades"):
					say "[SegisCosmeticUpgradesMenu]";
				else if (nam is "Combat Upgrades"):
					say "[SegisCombatUpgradesMenu]";
				[else if (nam is "Scavenging Upgrades"):
					say "[SegisScavengingUpgradesMenu]";]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You cancel this, no longer wanting to browse any upgrade options.'";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

Section 3-1-1 - Segis UPGRADES PERSONALITY

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

to say SegisPersonalityModulesMenu:
	say "     You select the Personality Modules menu option, and another submenu appears...";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Personality Himbo" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Himbo";
		now sortorder entry is 1;
		now description entry is "The Himbo personality module is for those who prefer a warmer and more energetic type of personality for their android servants. This exclusive version comes with increased sexual awareness for a more intimate level of interaction at the cost of intellectual capacity that is deemed excessive. Select this option";
		[]
	else:
		choose a blank row in table of fucking options;
		now title entry is "Default";
		now sortorder entry is 99;
		now description entry is "The default personality, returning Segis to the way he was before. Select this option";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himbo"):
					say "[SegisPersonalityHimbo]";
				else if (nam is "Default"):
					say "[SegisPersonalityDefault]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisPersonalityHimbo:
	say "     You pick the Himbo personality option, which prompts Segis to react in his usual manner. 'So you've chosen that? Hah! Well, [italic type]it's not like there are many other options yet as I haven't properly compiled them[roman type] but I'm glad you found something you like! However, a sample is due before you commit to this decision. Here is an example of how I shall speak in the future. '[bold type]Yoo! How's it going, bud?! Are we finally gonna kick some ass together or am I getting the boring bench again? Sucks not hanging out with you...[roman type]' Here goes a second sample, '[bold type]So you wanna have some fun with big ol' Segis here, eh? Can't resist the sexy android, can you? So, what would'ya like to do with me?[roman type]' If it pleases you, I can switch to this personality right now.'";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, confirm.";
	say "     ([link]N[as]n[end link]) - No, cancel.";
	if player consents:
		LineBreak;
		say "     By confirming your decision, Segis automatically makes the switch. 'That's a fucking good pick, bud! I'm glad to let that ol' default mode back and be unapo-... [italic type]Unapologategic-ly[roman type] cool! Uh... That's said wrong? Hey, the smarts cost wasn't meant to make me that bad at talking...! Gotta note that down for revision. Look, these are all [italic type]experimenental[roman type]! ...Oh, I know what's going on! Character limits! Big words are a nope! I can handle that, yeah! Big Segis android is a brave android!'";
		say "     Clearly noticing the difference in the android's demeanor, you are now certain that the change was effective.";
		TraitGain "Personality Himbo" for Segis;
		wait for any key;
	else:
		LineBreak;
		say "     You think twice about this and prefer to keep Segis as he is. 'Very well, then! I shall return to my usual operation method.'";
		wait for any key;
		say "[SegisUpgradeMenu]";

to say SegisPersonalityDefault:
	say "     Seeing the option to return Segis to his default demeanor, you touch it, selecting it successfully. This time, no confirmation popup appears, and your android companion immediately returns to his factory personality. 'It is probably for the best, as this is my most efficient method of communication. It is good to be back, [sir]!'";
	TraitLoss "Personality Himbo" for Segis;
	wait for any key;

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

Section 3-1-2 - Segis UPGRADES COSMETIC

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

to say SegisCosmeticUpgradesMenu:
	say "     You select the Cosmetic Upgrades menu option and another submenu appears, but with a note saying 'Note that personality modules may give me different insights, therefore boosting certain types of research that I perform in the background. Different types and choices of upgrades may arise from this, so experimentation is advised if that is your desire.' Note that most cosmetic upgrades have a cost, unless you are reverting or downgrading, for which a partial refund may be issued.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "External Genitalia";
	now sortorder entry is 1;
	now description entry is "Here you will be able to decide whether Segis keeps his junk in with a retractable mechanism, or out to allow further customization! Select this option";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Cum Flavor";
	now sortorder entry is 4;
	now description entry is "Everything is possible with Segis! With this option, you shall be able to select your favorite cum flavor and have your personal android produce a similar substance with all the good parts and none of the bad, providing a safe and fun experience! Select this option";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Lactation";
	now sortorder entry is 5;
	now description entry is "It is, of course, possible to add more functions to this body, such as through a system of milk production installed in the chest area. Select this option";
	[]
	if "External Genitalia" is listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Dick Size";
		now sortorder entry is 2;
		now description entry is "A very important aspect of cocks is their size. Even though it is not everything, it is a really good characteristic! With this option, you will be able to personalize Segis['] dick size to better suit your preferences. Select this option";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Cum Quantity";
		now sortorder entry is 3;
		now description entry is "Have you ever wished to be showered in a ridiculously amount of cum? With this android, you can! With this option, you will be able to tell Segis how much of his resources should be spent to make more cum for your personal fun! Beware that it might require additional storage space as quantity goes up. Select this option?";
		[]
	if "Body Types Unlocked" is listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Body Type";
		now sortorder entry is 99;
		now description entry is "Personal note from Segis - Most of these are untested prototypes for different kinds of body frameworks and may have unpredictable results, handle with caution. With that said, you can give me a different body type, though the process is slightly expensive. Do you wish to analyze your options";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "External Genitalia"):
					say "[SegisCosmeticExternalGenitalia]";
				else if (nam is "Cum Flavor"):
					say "[SegisCosmeticCumFlavor]";
				else if (nam is "Lactation"):
					say "[SegisCosmeticLactation]";
				else if (nam is "Dick Size"):
					say "[SegisCosmeticDickSize]";
				else if (nam is "Cum Quantity"):
					say "[SegisCosmeticCumQuantity]";
				else if (nam is "Body Type"):
					say "[SegisCosmeticBodyType]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisCosmeticExternalGenitalia:
	if "External Genitalia" is not listed in traits of Segis:
		say "     By ordering Segis to change his equipment's location, you will have him keep a set of cock and balls [bold type]outside[roman type] his body, like an average human male would have. This set is engineered with a mixture of mutated gel, silicone and a pumping system to harden the structure, and comes with extendable storage capacity for his gonads. The superficial sensation of this version feels much more natural than its metallic predecessor. A protective dome can be created in emergency situations when protecting the equipment is crucial, but for the user's visual pleasure, it shall mostly remain exposed.";
		say "     You will need in total [bold type]one unit of blue gel, three units of silicone paste, one metallic plate and five bits of junk scrap[roman type] for the procedure.";
		WaitLineBreak;
		if carried of blue gel >= 1 and carried of silicone paste >= 3 and carried of metallic plate >= 1 and carried of junk scrap >= 5:
			say "     It seems you have enough materials with you to proceed with the operation. Would you like to go ahead and order Segis to retrofit?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, confirm.";
			say "     ([link]N[as]n[end link]) - No, cancel.";
			if player consents:
				LineBreak;
				ItemLoss blue gel by 1;
				ItemLoss silicone paste by 3;
				ItemLoss metallic plate by 1;
				ItemLoss junk scrap by 5;
				say "     You confirm that you wish Segis to change himself up and get a set of external man bits. His eyes blink as he nods positively";
				if "Personality Himbo" is listed in traits of Segis:
					say ". 'So you'd like me to have my goods hanging outside, eh? You're gonna have a lot to look at... And play with, I hope! With such easy access to them, it'd be a waste if you didn't... Anyway, why don't you use up this time to relax a bit? I'll be back in a bit.' With that said, ";
				else:
					say ". 'So this is your choice? Certainly, [sir]. I shall fulfill your request with utmost urgency, if you desire so. I suggest taking a brief break while you await my return. I estimate that it should not take a significant amount of time.' With that said, ";
				say "Segis heads directly to the underground laboratory at lightning speed. Needing to supervise his upgrade, you decide to wait around the bunker, within the safety of its walls, for his return...";
				WaitLineBreak;
				follow the turnpass rule;
				say "     Eventually, your android companion returns, and by simply looking at him, you can already see the difference. Between his legs, a nice set of black-colored cock and balls swing around with each step, looking quite realistic in both appearance, shape and mass distribution. The models he chose are quite eyecatching, especially his full, low-hanging and full testicles, suggesting they could indeed hold a grand amount of liquid ";
				if "Personality Himbo" is listed in traits of Segis:
					say "inside. 'Like what you see? Because I don't think you've stopped looking since I arrived, chief... Come on, don't be shy! You can touch it! Feel it up... All over... Get a good grip and rub it nicely...' You heed Segis['] insistent and bold invitation to touch him and walk up to him to do exactly that, grabbing his cock and feeling it up. Indeed, its texture is pleasantly smooth, and not only that, it feels warm enough to remind you of a real cock. 'Prime quality! If you wanna put your mouth on it, too... Be my guest...'";
				else:
					say "inside. 'Reconstruction completed. I hope it's to your liking, [sir]. If you wish to undergo manual inspection, which is recommended, go on ahead. This system is already fully functional.' You heed Segis['] words and, after walking up to him, you poke his junk around to... Ensure its functionality, of course. The texture is pleasantly smooth, and not only that, it feels warm enough to remind you of a real cock. 'My sensors are, indeed, fully functioning. This feels pleasant. Perhaps we could test it in a real scenario?'";
				say "     You chuckle at the cheeky android and let him know that it will surely happen sometime.";
				TraitGain "External Genitalia" for Segis;
				now Ball Size of Segis is 3;
				wait for any key;
			else:
				LineBreak;
				say "     You withhold your decision and cancel the whole thing.";
				wait for any key;
				say "[SegisUpgradeMenu]";
		else:
			say "     It appears you do not have enough materials on you. If you would like to proceed with this operation, please return with all the materials in hand.";
			wait for any key;
			say "[SegisUpgradeMenu]";
	else:
		say "     By ordering Segis to change his equipment's location, you will have to revert all the upgrades. The result will be a nine-inch metallic cock that is retractable and functions otherwise the same way.";
		say "     A partial refund of materials will be issued upon its execution. Would you like to proceed with the retrofit?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, confirm.";
		say "     ([link]N[as]n[end link]) - No, cancel.";
		if player consents:
			LineBreak;
			ItemGain silicone paste by 1;
			ItemGain junk scrap by 2;
			say "     You confirm that you wish Segis to change himself up and revert to the retractable endowment he had initially. His eyes blink as he nods positively 'A revert, then? I shall get to it,' he says before starting to head directly to the underground laboratory at lightning speed. Needing to supervise this change, you decide to wait around the bunker, within the safety of its walls, for his return...";
			WaitLineBreak;
			follow the turnpass rule;
			say "     Eventually, your android companion returns, and you can already see the difference as he walks with one less thing between his legs, having successfully reverted to his original form.";
			TraitLoss "External Genitalia" for Segis;
			now Cock Length of Segis is 9;
			now Ball Size of Segis is 0;
			wait for any key;
		else:
			LineBreak;
			say "     You withhold your decision and cancel the whole thing.";
			wait for any key;
			say "[SegisUpgradeMenu]";

to say SegisCosmeticCumFlavor:
	say "     You go over the option regarding Segis['] flavor of cum. He does not have any input on this, however, the descriptions attached to each exiting option serve as enough indication of what each would taste like, even suggesting what [']fun['] effects they may have.";
	if "Cum Flavor Demonic Sweet" is listed in traits of Segis:
		say     "Currently, Segis has a flavor reminiscent of those demons have, codenamed as [']Demonic Sweet['].";
	else if "Cum Flavor Orcish Spicy" is listed in traits of Segis:
		say "     Currently, Segis has a flavor reminiscent of those orcs have, codenamed as [']Orcish Spicy['].";
	else:
		say     "Currently, Segis has its default flavor on, codenamed as [']Humanly Salty['].";
	say "     An interface is brought before you with all the possible tastes you could have Segis change to. Please note that you might have to provide a sample item for each different option.";
	WaitLineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Cum Flavor Demonic Sweet" is listed in traits of Segis or "Cum Flavor Orcish Spicy" is listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Humanly Salty";
		now sortorder entry is 1;
		now description entry is "The default flavor, just a salty and thick mixture resembling that of a normal human male. It will not require any item for sampling. Select this option";
	[]
	if "Cum Flavor Demonic Sweet" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Demonic Sweet";
		now sortorder entry is 2;
		now description entry is "A sweet mixture just like what a demon's cum would taste like, with a very rich and creamy texture that certainly will make you want more. It may induce additional lust effects. Requires a single sample of Demon Seed. Select this option";
	[]
	if "Cum Flavor Orcish Spicy" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Orcish Spicy";
		now sortorder entry is 3;
		now description entry is "A spicy mixture that has a strong taste, almost exotic even, with the texture of a very thick cum just like the one you would expect from a male orc. It may contain alcohol. Requires a single sample of Orc Cum. Select this option";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Humanly Salty"):
					say "[SegisCosmeticCumFlavorHSa]";
				else if (nam is "Demonic Sweet"):
					say "[SegisCosmeticCumFlavorDSw]";
				else if (nam is "Orcish Spicy"):
					say "[SegisCosmeticCumFlavorOSp]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You withhold your decision and cancel the whole thing.";
			wait for any key;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisCosmeticCumFlavorHSa:
	say "     You order Segis to retrofit back into his default option for cum flavor, the Humanly Salty, and that seems to be a simple change in his framework. With a nod, the change is made without much effort or time spent, and you have your request fulfilled in a matter of seconds.";
	TraitLoss "Cum Flavor Demonic Sweet" for Segis;
	TraitLoss "Cum Flavor Orcish Spicy" for Segis;
	wait for any key;

to say SegisCosmeticCumFlavorDSw:
	if carried of demon seed < 1:
		say "     You lack the sample item. Please make sure you have a single sample of Demon Seed with you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else: [has the item]
		ItemLoss demon seed by 1;
		say "     You order Segis to sweeten his cum and make it strikingly similar to the one demons produce, which triggers a positive response in him as he sees you experiment with his";
		if "Personality Himbo" is listed in traits of Segis:
			say "options. 'I'm glad you're trying this one out! Making me cum like a demon sounds fun... I wish I had taste buds like you so I could try it out myself, but it's only gonna taste like numbers and data to me... Very boring. Gotta check if I can find some taste simulator thing... But hey, this is for you, and I'm more than glad to get you hooked on my juices! Because... Yeah, demon cum is sort of addicting, taste-wise, you just can't have enough... You're gonna wanna be sucking it out of me a lot...' he says, already eager to satisfy your cravings once you have them, which according to him, you shall. 'Oh, right, don't worry about all that stuff, though, because mine's safe. It's just gonna be a fun brief playing time for us but without, like, long-term effects. You'll be fine and really happy... Heheh.'";
		else:
			say "options. 'Certainly, [sir]. I must advise caution when drinking this substance, however, as it seems to have a side-effect. You may find your hormonal activity spiking once you taste it, and may develop promiscuous urges afterwards, as this type of semen is an activator of libido. Demons use this to better subdue mortals in order to reap the benefits, such as their souls and servitude, or to just make playtoys for their own amusement. Needless to say, handle those with care. With me, safety is ensured, and it shall only feel remotely similar for a brief time for authenticity and your personal enjoyment.' And after giving you his piece of information, Segis proceeds with the change.";
		WaitLineBreak;
		say "     It really does not take long for the android to finish the procedure, being only a matter of seconds until he calls it ready.";
		say "     Segis['] cum flavor is now [bold type]Demonic Sweet[roman type], as you requested.";
		TraitGain "Cum Flavor Demonic Sweet" for Segis;
		TraitLoss "Cum Flavor Orcish Spicy" for Segis;
		wait for any key;

to say SegisCosmeticCumFlavorOSp:
	if carried of orc cum < 1:
		say "     You lack the sample item. Please make sure you have a single sample of Orc Cum with you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else: [has the item]
		ItemLoss orc cum by 1;
		say "     You order Segis to spice it up a bit with the synthetic cum he produces, making it vastly similar to the one orcs make, which triggers a positive response in him as he sees you experiment with his";
		if "Personality Himbo" is listed in traits of Segis:
			say "options. 'Oh, I was really looking forward for this one! Orcs are fucking awesome! Kinda wish I looked like one at times, big and strong like them and getting all those people completely fucking addicted to their dicks... Is that what you're looking for? Because this is gonna get you really good... It's really intense, bet you're not gonna know when to stop... Though, this android servant side of me forces me to tell you that it might get you a bit drunk so you should be a little careful, but I say just have your fucking fun! I've got this really good dick for you to suck and drink from at your disposal for whenever you want - save the recharge times - so just get drunk on it if you want! I'll enjoy myself knowing you're happy.'";
		else:
			say "options. 'Very well, [sir]! This mixture is designed to resemble orc semen in most of its properties, and while it may retain alcoholic and addicting properties, I have limited those effects in long-term impact, therefore ensuring a safe experience and your personal enjoyment. While I do advise caution and self-control, I encourage you to indulge yourself. Orcs merely use these effects to enslave others and extend their breeder count, which seems to be, in fact, a quite efficient method of reproduction. Perhaps I should think about installing reproductive nanites that develop inside a fleshy body to simulate pregnancy and mind enslaving organics.'";
			WaitLineBreak;
			say "     'That was a joke.'";
			WaitLineBreak;
			say "     It really does not take long for the android to finish the procedure, being only a matter of seconds until he calls it ready.";
			say "     Segis['] cum flavor is now [bold type]Orcish Spicy[roman type], as you requested.";
		TraitGain "Cum Flavor Orcish Spicy" for Segis;
		TraitLoss "Cum Flavor Demonic Sweet" for Segis;
		wait for any key;

to say SegisCosmeticLactation:
	say "     While hovering this option, a popup appears explaining what it consists of. Segis left a note explaining that, while males do not usually lactate, he has seen a few instances where that happens and how that may be considered a sexual fetish or fantasy, and since it seems so simple to install, he included this as an option for you.";
	if "Lactating" is not listed in traits of Segis: [has nothing]
		say "     It does not seem like it would have much effect on whatever resources he spends, but he assures you that if you find some [bold type]Gryphon Milk[roman type], he might be able to replicate and introduce it in a system allocated in his chest, which you may manually extract.";
		if carried of gryphon milk < 1:
			say "     It does not seem you have any Gryphon Milk with you, so you cannot really do anything here...";
			wait for any key;
			say "[SegisUpgradeMenu]";
		else:
			say "     Seeing that you are carrying at least one bottle of Gryphon Milk with you, would you like to give it to Segis and activate this functionality? No other costs are required.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes, confirm.";
			say "     ([link]N[as]n[end link]) - No, cancel.";
			if player consents:
				LineBreak;
				ItemLoss gryphon milk by 1;
				say "     Wanting Segis to have this additional functionality, you instruct him to undergo this change as you hand him the requested item. His eyes blink all over the bottle as he examines its contents, then nods";
				if "Personality Himbo" is listed in traits of Segis:
					say " and speaks energetically, 'Alright! I'll finally get a use for these protubere-... Nubby thingies on my chest! I always found this really weird for some reason, like what the hell were they for? I guess now they can be used as sensitive nubs to poke at and suckle on to extract all the milk that's gonna be made in my pecs. Better make sure they feel good on me, too! I gotta say, I'm kinda excited for this one... So, this won't take long, I've got the goods already installed, they just need to be activated and the milk sampled, then you can start sucking away! Uh, I mean, heh, whenever you want, of course, but why would you wanna wait?'";
				else:
					say " and speaks, 'Certainly, this seems to be a very fair request. This would also finally give use to the extraction ports on my chest - I believe you fleshy creatures commonly call them nipples - and for a more realistic approach on the matter, I shall also redirect positive reinforcement processes to these, as a reminder that this is a desirable operation to keep going. Or simply because I wish to enjoy life as well. Nevertheless, the system is already installed, I merely require the sample to replicate the milk and it shall be ready in a few minutes. It will become operational right afterwards, and testing it frequently is encouraged.'";
				WaitLineBreak;
				say "     It seems that everything is working with Segis['] lactation system, and what were just metallic plates on his chest now look more like proper pectoral muscles, which while still looking metallic, have a spot for retractable nipples to appear if stimulated.";
				TraitGain "Lactating" for Segis;
				wait for any key;
			else:
				LineBreak;
				say "     You withhold your decision and cancel the whole thing.";
				wait for any key;
				say "[SegisUpgradeMenu]";
	else if "Extra Milky" is not listed in traits of Segis:
		if "Muscular Body Type" is listed in traits of Segis:
			say "     Currently, Segis has functional lactation, at a moderate production rate of milk in his chest. Since he has the Muscular Body Type upgrade installed, he has gained more storage capacity in his mechanical pectorals, allowing the possibility to accelerate and store more milk. This would breach security measures, as it requires an overdrive system, but your android companion can simply allow the milk to leak out on its own, even if that results in waste, but serves to protect internal hardware from the liquid. This system rework will require one unit of silicone paste, two metallic plates and two junk scraps for a proper reconstruction.";
		else:
			say "     Currently, Segis has functional lactation, at a moderate production rate of milk in his chest. A larger body type would be required to upgrade this system even further.";
		say "     Alternatively, you can simply choose to disable this functionality at no cost.";
		say "     What would you like to do?";
		Linebreak;
		say "     [link](1)[as]1[end link] - Upgrade to Extra Milky (Requires Muscular Frame).";
		say "     [link](2)[as]2[end link] - Deactivate Lactation.";
		say "     [link](3)[as]3[end link] - Do nothing.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to upgrade into Extra Milky, if requirements are met, [link]2[end link] to deactivate the system or [link]3[end link] to cancel.";
		if calcnumber is 1:
			if "Muscular Body Type" is not listed in traits of Segis:
				say "     You do not have the required body type for this upgrade. The body type required is a Muscular Frame.";
				say "     (If you do not have the option unlocked, try switching Segis['] personality to Himbo and wait for a couple of days. Hopefully that will force the android to prioritize its research!)";
				wait for any key;
				say "[SegisUpgradeMenu]";
			else if carried of silicone paste < 1 and carried of metallic plate < 2 and carried of junk scrap < 2:
				say "     It appears you do not have enough materials on you for this upgrade.";
				wait for any key;
				say "[SegisUpgradeMenu]";
			else: [upgrading!]
				ItemLoss silicone paste by 1;
				ItemLoss metallic plate by 2;
				ItemLoss junk scrap by 2;
				say "     Wanting to give Segis an extra kick in his milk production system, you instruct him to further augment that section and override safety measures. With that said, your android companion";
				if "Personality Himbo" is listed in traits of Segis:
					say "shows you an excited smirk. 'Giving this new big body some experimentation, aren't we? I have to say I've been thinking of it myself, hence why I put that option there! I love the idea of keeping you well-fed, so why not have these fuller, since we've got the space now? Plus, more is better! I'm gonna need to use the lab for this one, so why don't you take a break and wait for me? Then you'll have big ol['] Segis all for yourself with some nicely upgraded milk factories, yeah?! Though remember, for these you really gotta keep chugging, or I'll be leaking it all over the place after a while. I'm pretty sure you wanna see that happen, but it probably isn't very safe! Anyway, I'll be right back.'";
				else:
					say "shows you a prolonged stare, as if almost judging you. 'Do note that this particular upgrade overrides important safety measures that, in case anything goes wrong, may jeopardize adjacent systems and cause a critical failure on my whole hardware. It is entirely your responsibility if it happens, so I recommend you take precautions. My simulations indicate that frequent extraction will resolve the predicted problems, so I shall add that to my maintenance routine. In the end, chances are this upgrade is not as dangerous as I initially classified it. In any case, I require the laboratory's equipment to install this upgrade, so I must go there.'";
				say "     With that said, Segis heads directly to the underground laboratory at lightning speed. Needing to supervise his upgrade, you decide to wait around the bunker, within the safety of its walls, for his return...";
				WaitLineBreak;
				follow the turnpass rule;
				say "     Eventually, he does make his return, and at first glance, nothing really seems to have changed... Until you spot a single drop of milk already making its way through the constantly prominent nipple structure on his metallic chest. It seems you will have a lot of work helping Segis maintaining that overloaded lactation system, but it was you who wanted this!";
				TraitGain "Extra Milky" for Segis;
				wait for any key;
		else if calcnumber is 2:
			say "     No longer interested in having Segis with an active lactation system, you order him to deactivate it. Such is done with a simple command, and just like that, it stops functioning. If you wish to reactivate it, you will have to provide a new sample.";
			TraitLoss "Lactating" for Segis;
			wait for any key;
		else if calcnumber is 3:
			say "     You withhold your decision and cancel the whole thing.";
			wait for any key;
			say "[SegisUpgradeMenu]";
	else: [has both]
		say "     Currently, Segis has this functionality active, but you may disable it at any time without additional costs. Additionally, since Segis has the Extra Milky upgrade, you can revert him back to a normal lactation mode.";
		Linebreak;
		say "     [link](1)[as]1[end link] - Downgrade to normal lactation.";
		say "     [link](2)[as]2[end link] - Deactivate Lactation.";
		say "     [link](3)[as]3[end link] - Do nothing.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to downgrade to normal lactation, [link]2[end link] to deactivate the system or [link]3[end link] to cancel.";
		if calcnumber is 1:
			say "     No longer wishing for Segis to be lactating that much, you instruct him to decommission that upgrade. He does such without much of an issue, and informs you that the systems will have to be replaced at a later time, so you will have to provide new resources if you wish for him to have this on again.";
			TraitLoss "Extra Milky" for Segis;
			wait for any key;
		else if calcnumber is 2:
			say "     No longer interested in having Segis with an active lactation system, you order him to deactivate it. Such is done with a simple command, and just like that, it stops functioning. Segis also lets you know that you will have to provide new resources to reactivate the systems.";
			TraitLoss "Extra Milky" for Segis;
			TraitLoss "Lactating" for Segis;
			wait for any key;
		else if calcnumber is 3:
			say "     You withhold your decision and cancel the whole thing.";
			wait for any key;
			say "[SegisUpgradeMenu]";

to say SegisCosmeticDickSize:
	say "     Since Segis['] sex equipment is now outside, you can make use of your [bold type]silicone pastes[roman type] to grow his bits. You will always need one unit of it to augment your android companion's cock length by a significant amount.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Cock Length of Segis is not 12:
		choose a blank row in table of fucking options;
		now title entry is "Big Twelve";
		now sortorder entry is 1;
		now description entry is "Equip Segis with a cock that is one foot long. Requires [bold type]one[roman type] unit of silicone paste. Select this option";
	[]
	if Cock Length of Segis is not 16 and "Muscular Body Type" is listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Bigger Sixteen";
		now sortorder entry is 2;
		now description entry is "Give Segis the biggest size option the Muscular Frame can handle. Requires [bold type]three[roman type] units of silicone paste, [bold type]two[roman type] if upgrading from Big Twelve. Select this option";
	[]
	if Cock Length of Segis > 9:
		choose a blank row in table of fucking options;
		now title entry is "Default Nine";
		now sortorder entry is 3;
		now description entry is "Revert Segis['] cock size to its original. Has no cost. Select this option";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Big Twelve"):
					say "[SegisCosmeticDickSize12]";
				else if (nam is "Bigger Sixteen"):
					say "[SegisCosmeticDickSize16]";
				else if (nam is "Default Nine"):
					say "[SegisCosmeticDickSizeDef9]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You withhold your decision and cancel the whole thing.";
			wait for any key;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisCosmeticDickSize12:
	if carried of silicone paste < 1:
		say "     It seems you lack the required amount of silicone paste. Please select this option again once you have it on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		ItemLoss silicone paste by 1;
		say "     You instruct Segis to grow his cock up to the size indicated by the option named Big Twelve. His eyes blink as he processes your request,";
		if "Personality Himbo" is listed in traits of Segis:
			say " and soon, he energetically speaks, 'Hell yes! You're starting to share my philosophy of the bigger the better, yeah? Well, this one's kinda fun. The way my junk got upgraded pretty much has on-spot size changing in mind, and all you gotta do is get some of that paste you gave me and rub it over my dick! The material's gonna get absorbed into its tissue and it's gonna start to expand, and it stays like that until you tell me to get rid of it, basically! This does mean you gotta reapply it everytime you wanna regrow it in case you wanna revert its size, but it's pretty neat, eh?' he then gives a chuckle and hands you over the paste you just gave him. 'Why don't you do the honors?' He finally asks, his mechanical cock building an erection almost faster than you could blink.";
			say "     You then remember how much more sexual Segis is in this personality module... And he does seem inclined to turn this into an opportunity for some fun. Should you accept his proposal and apply the silicone paste yourself, or shall you instruct him to do so by himself?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Apply the paste yourself.";
			say "     ([link]N[as]n[end link]) - No, let him do it on his own and oversee the procedure.";
			if player consents:
				LineBreak;
				say "     Walking up to your android companion, you grab the paste and get on your knees in front of the already respectable black cock between his metallic thighs, ready to spread it across the shaft. 'Alright! Make sure you get every inch!' he tells you, and not wanting to mess this up, you follow his instructions by rubbing the entire thing with both your hands covered in the paste. The results are almost immediate, as his dick begins to expand in your grasp by the second, growing little by little, pushing against your fingers and forcing you to open your hand more, as not only the length, but the thickness as well, is added to the already sizable member. It really amazes you how realistic, warm and smooth Segis['] cock feels, as if it was almost like the real deal.";
				say "     Once you look up, Segis['] eyes are blinking pink, and there is even a heart-shaped dot in the middle of it, an effect that is couple with an almost hazy smile. 'Uuh... Ah! Y-you have done it! That was... That was it! Very enjoyable, friend! Did I... look strange while you did this? I keep finding weird stuff in this module... I seem to actually enjoy being touched a lot more...! How about we test this thing out, eh? A whole foot-long for you to play with? I'm pretty sure some people out there have even bigger ones, but hey! This one's pretty alright already! Now, if only we could get it even bigger... Heheh...'";
			else:
				say "     You let him know that you would prefer him to apply the paste himself, and he seems disappointed at that. 'Aw... I suppose I'll do it the boring way, then...'";
				say "     Segis then brings the paste and begins to rub it all across his shaft, ensuring every inch is covered in it, and the results are quick to show. Every little bit of his cock begins to expand, growing bigger before your eyes by the second, slowly, until it builds an extra inch, then another, and finally, the one that grows it up to the aforementioned big twelve. Now with a foot-long, Segis reports that the upgrade has been completed. 'All done now! So... Seems to be pretty functional, wanna test it out later?'";
		else:
			say " and soon, he begins to speak, 'Preferring bigger sizes is quite a common thing among you organics, at least around here. With that in mind, I've created this equipment with size modifications in mind that can be made on spot instead of requiring me to run all the way back to the laboratory like I would for a major hardware or component change. With this one, I merely have to apply the paste on the equipment and allow the tissue to absorb the material, which will then expand it permanently. This, however, means it has to be reapplied everytime you wish for me to revert it to its original size. If you wish to oversee the procedure, you may, as it shall only take a while.'";
			say "     Segis then brings the paste and begins to rub it all across his shaft, ensuring every inch is covered in it, and the results are quick to show. Every little bit of his cock begins to expand, growing bigger before your eyes by the second, slowly, until it builds an extra inch, then another, and finally, the one that grows it up to the aforementioned big twelve. Now with a foot-long, Segis reports that the upgrade has been completed.";
		WaitLineBreak;
		say "     Your android companion now has a twelve inches long cock!";
		now Cock Length of Segis is 12;
		wait for any key;

to say SegisCosmeticDickSize16:
	if Cock Length of Segis is 12 and carried of silicone paste < 2:
		say "     It seems you lack the required amount of silicone paste. Please select this option again once you have it on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else if carried of silicone paste < 3:
		say "     It seems you lack the required amount of silicone paste. Please select this option again once you have it on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		if Cock Length of Segis is 12:
			ItemLoss silicone paste by 2;
		else:
			ItemLoss silicone paste by 3;
		say "     You instruct Segis to grow his cock up to the size indicated by the option named Bigger Sixteen. His eyes blink as he processes your request,";
		if "Personality Himbo" is listed in traits of Segis:
			say " and soon, he energetically speaks, 'Hell yes! You're starting to share my philosophy of the bigger the better, yeah? And a whole sixteen inches?! Fuck yeah! Well, this one's kinda fun. The way my junk got upgraded pretty much has on-spot size changing in mind, and all you gotta do is get some of that paste you gave me and rub it over my dick! The material's gonna get absorbed into its tissue and it's gonna start to expand, and it stays like that until you tell me to get rid of it, basically! This does mean you gotta reapply it everytime you wanna regrow it in case you wanna revert its size, but it's pretty neat, eh?' he then gives a chuckle and hands you over the paste you just gave him. 'Why don't you do the honors?' He finally asks, his mechanical cock building an erection almost faster than you could blink.";
			say "     You then remember how much more sexual Segis is in this personality module... And he does seem inclined to turn this into an opportunity for some fun. Should you accept his proposal and apply the silicone paste yourself, or shall you instruct him to do so by himself?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Apply the paste yourself.";
			say "     ([link]N[as]n[end link]) - No, let him do it on his own and oversee the procedure.";
			if player consents:
				LineBreak;
				say "     Walking up to your android companion, you grab the paste and get on your knees in front of the already respectable black cock between his metallic thighs, ready to spread it across the shaft. 'Alright! Make sure you get every inch!' he tells you, and not wanting to mess this up, you follow his instructions by rubbing the entire thing with both your hands covered in the paste. The results are almost immediate, as his dick begins to expand in your grasp by the second, growing little by little, pushing against your fingers and forcing you to open your hand more, as not only the length, but the thickness as well, is added to the already sizable member. It really amazes you how realistic, warm and smooth Segis['] cock feels, as if it was almost like the real deal.";
				say "     Eventually, his cock grows truly huge, up to the sixteen inches that were in the description. Once you look up, Segis['] eyes are blinking pink, and there is even a heart-shaped dot in the middle of it, an effect that is couple with an almost hazy smile. 'Uuh... Ah! Y-you have done it! That was... That was it! Very enjoyable, friend! Did I... look strange while you did this? I keep finding weird stuff in this module... I seem to actually enjoy being touched a lot more...! How about we test this thing out, eh? A whole fucking foot-long and a half for you to play with? I'm pretty sure some people out there have even bigger ones, but hey! This one's pretty massive! Sadly, doesn't seem I can get any bigger with my current setup... But wouldn't that be fun? Heheh...'";
			else:
				say "     You let him know that you would prefer him to apply the paste himself, and he seems disappointed at that. 'Aw... I suppose I'll do it the boring way, then...'";
				say "     Segis then brings the paste and begins to rub it all across his shaft, ensuring every inch is covered in it, and the results are quick to show. Every little bit of his cock begins to expand, growing bigger before your eyes by the second, slowly, until it builds an extra inch, then another, and another... Until it finally gets to the last one that grows it up to the aforementioned big sixteen. Now with a foot-long and a half, Segis reports that the upgrade has been completed. 'All done now! So... Seems to be pretty functional, wanna test it out later? Though careful, this one's looking pretty huge...!'";
		else:
			say " and soon, he begins to speak, 'Preferring bigger sizes is quite a common thing among you organics, at least around here. With that in mind, I've created this equipment with size modifications in mind that can be made on spot instead of requiring me to run all the way back to the laboratory like I would for a major hardware or component change. With this one, I merely have to apply the paste on the equipment and allow the tissue to absorb the material, which will then expand it permanently. This, however, means it has to be reapplied everytime you wish for me to revert it to its original size. If you wish to oversee the procedure, you may, as it shall only take a while.'";
			say "     Segis then brings the paste and begins to rub it all across his shaft, ensuring every inch is covered in it, and the results are quick to show. Every little bit of his cock begins to expand, growing bigger before your eyes by the second, slowly, until it builds an extra inch, then another, and another... Until finally it reaches the one that grows it up to the aforementioned bigger sixteen. Now with a foot-long and a half, Segis reports that the upgrade has been completed. 'I'm afraid I cannot extend its size any longer with my current setup. This is probably the bigger it can ever be. Not that any bigger would be any practical, but I'm obliged to follow your instructions... Sort of.'";
		WaitLineBreak;
		say "     Your android companion now has a sixteen inches long cock!";
		now Cock Length of Segis is 16;
		wait for any key;

to say SegisCosmeticDickSizeDef9:
	say "     Wanting Segis to revert his cock size to what it was originally, you instruct him to do so. With a nod, he obliges your request and begins the procedure, shrinking his equipment as the material begins to get rid of the expanded mass. Its remains are not salvageable, but Segis now has a much more manageable nine inch cock.";
	if "Personality Himbo" is listed in traits of Segis:
		say "     'Aw... I was enjoying the big size... Could we get it back up again in the future?' he asks, disappointed that you ordered him to shrink his cock, or... At least, sounding so.";
	now Cock Length of Segis is 9;
	wait for any key;

to say SegisCosmeticCumQuantity:
	say "     Since Segis['] sex equipment is now outside, you can make use of your [bold type]silicone pastes[roman type] to grow his bits. You will always need one unit of it to augment your android companion's cum load and, consequently, the size of his balls, by a significant amount.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Ball Size of Segis is not 4:
		choose a blank row in table of fucking options;
		now title entry is "Plentiful Loads";
		now sortorder entry is 1;
		now description entry is "Grow Segis['] balls, increasing his cum load capacity moderately. Requires [bold type]two[roman type] units of silicone paste. Select this option";
	[]
	if Ball Size of Segis is not 5 and "Muscular Body Type" is listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Big Messy Loads";
		now sortorder entry is 2;
		now description entry is "Give Segis the biggest ball size option the Muscular Frame can handle, increasing his cum load capacity significantly. Requires [bold type]four[roman type] units of silicone paste, [bold type]two[roman type] if upgrading from Plentiful Loads. Select this option";
	[]
	if Ball Size of Segis > 3:
		choose a blank row in table of fucking options;
		now title entry is "Default";
		now sortorder entry is 3;
		now description entry is "Revert Segis['] ball size and cum load to its original. Has no cost. Select this option";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Plentiful Loads"):
					say "[SegisCosmeticBallSize4]";
				else if (nam is "Big Messy Loads"):
					say "[SegisCosmeticBallSize5]";
				else if (nam is "Default"):
					say "[SegisCosmeticBallSizeDef3]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You withhold your decision and cancel the whole thing.";
			wait for any key;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisCosmeticBallSize4:
	if carried of silicone paste < 2:
		say "     It seems you lack the required amount of silicone paste. Please select this option again once you have it on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		ItemLoss silicone paste by 2;
		say "     You instruct Segis to grow his gonads to the size indicated by the option named Plentiful Loads. His eyes blink as he processes your request,";
		if "Personality Himbo" is listed in traits of Segis:
			say " and soon, he energetically speaks, 'Hell yes! You're starting to share my philosophy of the bigger the better, yeah? Well, this one's kinda fun. The way my junk got upgraded pretty much has on-spot size changing in mind, and all you gotta do is get some of that paste you gave me and rub it over my balls! The material's gonna get absorbed into its tissue and it's gonna start to expand, and it stays like that until you tell me to get rid of it, basically! This does mean you gotta reapply it everytime you wanna regrow it in case you wanna revert their size, but it's pretty neat, eh?' he then gives a chuckle and hands you over the paste you just gave him. 'Why don't you do the honors?' He finally asks, his mechanical cock building an erection almost faster than you could blink.";
			say "     You then remember how much more sexual Segis is in this personality module... And he does seem inclined to turn this into an opportunity for some fun. Should you accept his proposal and apply the silicone paste yourself, or shall you instruct him to do so by himself?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Apply the paste yourself.";
			say "     ([link]N[as]n[end link]) - No, let him do it on his own and oversee the procedure.";
			if player consents:
				LineBreak;
				say "     Walking up to your android companion, you grab the paste and get on your knees in front of the already respectable black cock between his metallic thighs, ready to spread it across the sac underneath it. 'Alright! Make sure you get the whole thing! It's important to spread it across evenly...' he tells you, and not wanting to mess this up, you follow his instructions by rubbing his balls all over with both your hands covered in the paste. The results are almost immediate, as the mass begins to expand in your grasp by the second, growing little by little, pushing against your fingers and forcing you to open your hand more, as its whole volume increases significantly. It really amazes you how realistic, warm and smooth Segis['] balls feels, as if it was almost like an improved version of the real deal.";
				say "     Once you look up, Segis['] eyes are blinking pink, and there is even a heart-shaped dot in the middle of it, an effect that is couple with an almost hazy smile. 'Uuh... Ah! Y-you have done it! That was... That was it! Very enjoyable, friend! Did I... look strange while you did this? I keep finding weird stuff in this module... I seem to actually enjoy being touched a lot more...! How about we test this thing out, eh? Bet I could coat your whole face... I'm pretty sure some people out there can shoot much heavier loads, but hey! I'm a really big shooter now, too! You think we can grow it even more? Heheh...'";
			else:
				say "     You let him know that you would prefer him to apply the paste himself, and he seems disappointed at that. 'Aw... I suppose I'll do it the boring way, then...'";
				say "     Segis then brings the paste and begins to rub it all across his sac, ensuring every bit of it is covered, and the results are quick to show. His balls eventually begin to expand, growing bigger before your eyes by the second, slowly, as they look heavier and fuller. Now with bigger balls and enhanced cum capacity, Segis reports that the upgrade has been completed. 'All done now! So... Seems to be pretty functional, wanna test it out later?'";
		else:
			say " and soon, he begins to speak, 'Preferring messier loads is quite a common thing among you organics, at least around here. With that in mind, I've created this equipment with size modifications in mind that can be made on spot instead of requiring me to run all the way back to the laboratory like I would for a major hardware or component change. With this one, I merely have to apply the paste on the equipment and allow the tissue to absorb the material, which will then expand it permanently. This, however, means it has to be reapplied everytime you wish for me to revert it to its original size. If you wish to oversee the procedure, you may, as it shall only take a while.'";
			say "     Segis then brings the paste and begins to rub it all across his sac, ensuring every bit of it is covered, and the results are quick to show. His balls eventually begin to expand, growing bigger before your eyes by the second, slowly, as they look heavier and fuller. Now with bigger balls and enhanced cum capacity, Segis reports that the upgrade has been completed.";
		WaitLineBreak;
		say "     Your android companion now has bigger balls, and can cum in bigger quantities!";
		now Ball Size of Segis is 4;
		wait for any key;

to say SegisCosmeticBallSize5:
	if Ball Size of Segis is 4 and carried of silicone paste < 2:
		say "     It seems you lack the required amount of silicone paste. Please select this option again once you have it on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else if carried of silicone paste < 4:
		say "     It seems you lack the required amount of silicone paste. Please select this option again once you have it on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		if Ball Size of Segis is 4:
			ItemLoss silicone paste by 2;
		else:
			ItemLoss silicone paste by 4;
		say "     You instruct Segis to grow his gonads up to the size indicated by the option named Big Messy Loads. His eyes blink as he processes your request,";
		if "Personality Himbo" is listed in traits of Segis:
			say " and soon, he energetically speaks, 'Hell yes! You're starting to share my philosophy of the bigger the better, yeah? And by that much?! I'm gonna be filling buckets! Well, this one's kinda fun. The way my junk got upgraded pretty much has on-spot size changing in mind, and all you gotta do is get some of that paste you gave me and rub it over my balls! The material's gonna get absorbed into its tissue and it's gonna start to expand, and it stays like that until you tell me to get rid of it, basically! This does mean you gotta reapply it everytime you wanna regrow it in case you wanna revert their size, but it's pretty neat, eh?' he then gives a chuckle and hands you over the paste you just gave him. 'Why don't you do the honors?' He finally asks, his mechanical cock building an erection almost faster than you could blink.";
			say "     You then remember how much more sexual Segis is in this personality module... And he does seem inclined to turn this into an opportunity for some fun. Should you accept his proposal and apply the silicone paste yourself, or shall you instruct him to do so by himself?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Apply the paste yourself.";
			say "     ([link]N[as]n[end link]) - No, let him do it on his own and oversee the procedure.";
			if player consents:
				LineBreak;
				say "     Walking up to your android companion, you grab the paste and get on your knees in front of the already respectable black cock between his metallic thighs, ready to spread it across the sac underneath it. 'Alright! Make sure you get the whole thing! It's important to spread it across evenly...' he tells you, and not wanting to mess this up, you follow his instructions by rubbing his balls all over with both your hands covered in the paste. The results are almost immediate, as the mass begins to expand in your grasp by the second, growing little by little, pushing against your fingers and forcing you to open your hand more, as its whole volume increases... By a whole lot! It really amazes you how realistic, warm and smooth Segis['] balls feels, as if it was almost like an improved version of the real deal.";
				say "     Once you look up, Segis['] eyes are blinking pink, and there is even a heart-shaped dot in the middle of it, an effect that is couple with an almost hazy smile. 'Uuh... Ah! Y-you have done it! That was... That was it! Very enjoyable, friend! Did I... look strange while you did this? I keep finding weird stuff in this module... I seem to actually enjoy being touched a lot more...! How about we test this thing out, eh? Bet I could coat your whole face... I'm pretty sure some people out there can shoot much heavier loads, but hey! I'm a really big shooter now, too! Like crazy big! Sadly, I don't think it can be any bigger... But this is great stuff!'";
			else:
				say "     You let him know that you would prefer him to apply the paste himself, and he seems disappointed at that. 'Aw... I suppose I'll do it the boring way, then...'";
				say "     Segis then brings the paste and begins to rub it all across his sac, ensuring every bit of it is covered, and the results are quick to show. His balls eventually begin to expand, growing bigger before your eyes by the second, slowly, as they look heavier and fuller. Now with much bigger balls and enhanced cum capacity, Segis reports that the upgrade has been completed. 'All done now! So... Seems to be pretty functional, wanna test it out later?'";
		else:
			say " and soon, he begins to speak, 'Preferring messier loads is quite a common thing among you organics, at least around here. With that in mind, I've created this equipment with size modifications in mind that can be made on spot instead of requiring me to run all the way back to the laboratory like I would for a major hardware or component change. With this one, I merely have to apply the paste on the equipment and allow the tissue to absorb the material, which will then expand it permanently. This, however, means it has to be reapplied everytime you wish for me to revert it to its original size. If you wish to oversee the procedure, you may, as it shall only take a while.'";
			say "     Segis then brings the paste and begins to rub it all across his sac, ensuring every bit of it is covered, and the results are quick to show. His balls eventually begin to expand, growing bigger before your eyes by the second, slowly, as they look heavier and fuller. Now with much bigger balls and enhanced cum capacity, Segis reports that the upgrade has been completed.";
		WaitLineBreak;
		say "     Your android companion now has bigger balls, and can cum in bigger quantities!";
		now Ball Size of Segis is 5;
		wait for any key;

to say SegisCosmeticBallSizeDef3:
	say "     Wanting Segis to revert his ball size and cum load to what it was originally, you instruct him to do so. With a nod, he obliges your request and begins the procedure, shrinking his equipment as the material begins to get rid of the expanded mass. Its remains are not salvageable, but Segis now has a much more manageable nine inch cock.";
	if "Personality Himbo" is listed in traits of Segis:
		say "     'Aw... I was enjoying the bigger size and the mess I was making... Could we get it back up again in the future?' he asks, disappointed that you ordered him to shrink his bits, or... At least, sounding so.";
	now Ball Size of Segis is 3;
	wait for any key;

to say SegisCosmeticBodyType:
	say "     You pick the Body Type category, and another submenu appears with the options available to you. Please note that these are very expensive changes and resources have to be provided for every time you wish to change Segis['] frame.";
	WaitLineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Muscular Body Type" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Muscular Frame";
		now sortorder entry is 1;
		now description entry is "Note from Segis: 'Fuck yeah, make me bigger!!! This frame is so muscular I'm gonna look like a fucking huge bodybuilder!' Requires five units of silicone paste, ten metallic plates and fifteen junk scraps. Note that [bold type]this upgrade is currently irreversible[roman type]. Select this option";
	[]
	[else:
		choose a blank row in table of fucking options;
		now title entry is "Default Lean";
		now sortorder entry is 2;
		now description entry is "Have Segis return to his original form, a lean frame. This option has no additional costs. Select this option";]
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Muscular Frame"):
					say "[SegisCosmeticBodyTypeM]";
				[else if (nam is "Default Lean"):
					say "[SegisCosmeticBodyTypeL]";]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You withhold your decision and cancel the whole thing.";
			wait for any key;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisCosmeticBodyTypeM:
	if carried of silicone paste < 5 and carried of metallic plate < 10 and carried of junk scrap < 15:
		say "     Unfortunately, it seems you are not carrying the required resources with you. Ensure you have them on you at the time of upgrading.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		ItemLoss silicone paste by 5;
		ItemLoss metallic plate by 10;
		ItemLoss junk scrap by 15;
		say "     Having thought about this, you have decided to instruct Segis to upgrade his current frame to the Muscular Frame, which will make him overall bigger and with a physique reminiscent of a powerful bodybuilder. Since this was a body type researched through the usage of a specific personality module, Segis['] demeanor automatically shifts to the correspondent one in order to relay all the necessary information. 'I'm glad you've chosen this! This is how I truly feel I should be! A big, strong android to protect my best admin buddy and fuck [ObjectPro] proper! Bet I could lift you with only one arm on this huge frame!' After you hand him over the entire package of resources, he examines the contents and confirms the required amount.";
		say "     'This is definitely gonna take a while! The way this upgrade is gonna be done is... Well, it's gonna be added on top of this frame. Meaning, if you wanna change it back, I'll have to remove these parts, which won't make them reusable. Sadly, the equipment we've got isn't all that good to produce reusable, modular parts, so I'm trying to improve in a not all too efficient way... But the final result is gonna be bomb! You'll see! I'll be the sexiest android ever! Uh, yeah, so... This is gonna be, like, really boring to watch, so how about you wait for me to return? I'd invite you to come along, but all it's gonna look like is just me patching things together, and there's no need for that!'";
		say "     With that said, Segis heads directly to the underground laboratory at lightning speed. Needing to supervise his upgrade, you decide to wait around the bunker, within the safety of its walls, for his return...";
		WaitLineBreak;
		follow the turnpass rule;
		say "     Eventually, your android companion makes his return, and the difference is very noticeable from the start. What was a mere average height dragon android is now a powerhouse of an anthropomorphic dragon at least a foot taller than before, seemingly capable of punching his way through walls and bend metal with the strength of his arms alone. Segis is now very big, befitting his himbo personality module flawlessly. 'Yoo! Check this out! I'm so big I kinda can't fully lower my arms! Though I ran some simulations and saw that it's normal when you're this big and sexy... I probably weigh a lot more too! Though, uh... I don't think I can handle some stuff all too well anymore, this body makes strength the most important thing. Means I punch harder, though! And that's what's important! Heheh...'";
		say "     You calculate that, even if this is presented as a cosmetic upgrade, this might change a few things about Segis['] combat abilities.";
		WaitLineBreak;
		TraitGain "Muscular Body Type" for Segis;
		say "     Segis['] [bold type]dexterity has decreased by 1[roman type], however, his [bold type]weapon damage went up by 2[roman type]. He is now also bigger and the upgrade shifted his personality automatically to [bold type]Himbo[roman type]. While you may still change this, however, it is recommended that you experience Segis['] muscle himbo facet to the fullest.";
		TraitGain "Personality Himbo" for Segis;
		increase weapon damage of dragon android by 2;
		decrease dexterity of dragon android by 1;
		wait for any key;

[to say SegisCosmeticBodyTypeL:
	say "     This option will revert Segis to his default body type, reverting any stat changes and appearance";
	say "     With that said, Segis heads directly to the underground laboratory at lightning speed. Needing to supervise his upgrade, you decide to wait around the bunker, within the safety of its walls, for his return...";
	WaitLineBreak;
	follow the turnpass rule;
	say "     ";
	TraitLoss "Muscular Body Type";
	decrease weapon damage of dragon android by 2;
	increase dexterity of dragon android by 1;
	wait for any key;]

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

Section 3-1-3 - Segis UPGRADES COMBAT

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]


to say SegisCombatUpgradesMenu:
	say "     You select the Combat Upgrades menu option, and another submenu appears with a note saying that [bold type]none of these upgrades can be reverted[roman type]. Once you commit to one, it is permanent.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Powerful Blow" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Powerful Blow";
		now sortorder entry is 1;
		now description entry is "An internal structural upgrade to improve the strength of Segis['] strikes in combat (+1). Requires one metallic plate and five bits of junk scrap. Select this option";
		[]
	if "Powerful Blow" is listed in traits of Segis and "Improved Powerful Blow" is not listed in traits of Segis and "Improved Aimed Strike" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Improved Powerful Blow";
		now sortorder entry is 2;
		now description entry is "Further strengthen Segis['] strikes in combat through an overhaul of his combat protocol and hardware, ultimately resulting in an improvement (+2). Requires two metallic plates and ten bits of junk scrap. It is mutually exclusive with Improved Aimed Strike. Select this option";
		[]
	if "Aimed Strike" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Aimed Strike";
		now sortorder entry is 3;
		now description entry is "An internal structural upgrade to improve the accuracy of Segis['] strikes in combat (+1). Requires one metallic plate and five bits of junk scrap. Select this option";
		[]
	if "Aimed Strike" is listed in traits of Segis and "Improved Aimed Strike" is not listed in traits of Segis and "Improved Powerful Blow" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Improved Aimed Strike";
		now sortorder entry is 4;
		now description entry is "Further improve Segis['] accuracy in combat through an overhaul of his combat protocol and hardware, ultimately resulting in more precision (+1). Requires two metallic plates and ten bits of junk scrap. It is mutually exclusive with Improved Powerful Blow. Select this option";
		[]
	[if "Athletics Protocol" is not listed in traits of Segis and "Stealth Protocol" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Stealth Protocol";
		now sortorder entry is 5;
		now description entry is "A support protocol that allows Segis to assist you with all manners of stealth and evasion for as long as he remains by your side, increasing your effective Dexterity (+2). Choose only one support protocol. Requires support module. Select this option";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Athletics Protocol";
		now sortorder entry is 6;
		now description entry is "A support protocol that allows Segis to assist you with all manners of physical effort for as long as he remains by your side, increasing your effective Strength (+2). Choose only one support protocol. Requires support module. Select this option";]
		[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Powerful Blow"):
					say "[SegisCombatPowerfulBlow]";
				else if (nam is "Improved Powerful Blow"):
					say "[SegisCombatImpPowerfulBlow]";
				else if (nam is "Aimed Strike"):
					say "[SegisCombatAimedStrike]";
				else if (nam is "Improved Aimed Strike"):
					say "[SegisCombatImpAimedStrike]";
				[else if (nam is "Stealth Protocol"):
					say "[SegisCombatStealthProtocol]";
				else if (nam is "Athletics Protocol"):
					say "[SegisCombatAthleticsProtocol]";]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SegisCombatPowerfulBlow:
	if carried of metallic plate < 1 and carried of junk scrap < 5:
		say "     It appears you do not have enough materials for this upgrade. Make sure you have one metallic plate and five bits of junk scrap on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		ItemLoss metallic plate by 1;
		ItemLoss junk scrap by 5;
		say "     Having selected this option, you instruct Segis to retrofit this upgrade on him. As you hand him over the materials, his eyes blink repeatedly while looking at them, as if analyzing the contents through some special method of his. He then nods, informing you that this will take some time as he makes his way to the underground laboratory, and you are asked to wait in the bunker for his return. With the necessity to evaluate the conditions of his upgrade, you use up the time to relax for a while within the safety of these walls.";
		WaitLineBreak;
		follow the turnpass rule;
		say "     Eventually, he does return, as promised. You check on him and confirm that the upgrade has been installed, allowing Segis to hit your foes harder than before.";
		say "     [bold type]Segis['] weapon damage has increased by 1![roman type][line break]";
		increase weapon damage of dragon android by 1;
		TraitGain "Powerful Blow" for Segis;
		wait for any key;

to say SegisCombatImpPowerfulBlow:
	if carried of metallic plate < 2 and carried of junk scrap < 10:
		say "     It appears you do not have enough materials for this upgrade. Make sure you have two metallic plates and ten bits of junk scrap on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		ItemLoss metallic plate by 2;
		ItemLoss junk scrap by 10;
		say "     Having selected this option, you instruct Segis to retrofit this upgrade on him. As you hand him over the materials, his eyes blink repeatedly while looking at them, as if analyzing the contents through some special method of his. He then nods, informing you that this will take some time as he makes his way to the underground laboratory, and you are asked to wait in the bunker for his return. With the necessity to evaluate the conditions of his upgrade, you use up the time to relax for a while within the safety of these walls.";
		WaitLineBreak;
		follow the turnpass rule;
		say "     Eventually, he does return, as promised. You check on him and confirm that the upgrade has been installed, allowing Segis to hit your foes even harder than before.";
		say "     [bold type]Segis['] weapon damage has increased by 2![roman type][line break]";
		increase weapon damage of dragon android by 2;
		TraitGain "Improved Powerful Blow" for Segis;
		wait for any key;

to say SegisCombatAimedStrike:
	if carried of metallic plate < 1 and carried of junk scrap < 5:
		say "     It appears you do not have enough materials for this upgrade. Make sure you have one metallic plate and five bits of junk scrap on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		ItemLoss metallic plate by 1;
		ItemLoss junk scrap by 5;
		say "     Having selected this option, you instruct Segis to retrofit this upgrade on him. As you hand him over the materials, his eyes blink repeatedly while looking at them, as if analyzing the contents through some special method of his. He then nods, informing you that this will take some time as he makes his way to the underground laboratory, and you are asked to wait in the bunker for his return. With the necessity to evaluate the conditions of his upgrade, you use up the time to relax for a while within the safety of these walls.";
		WaitLineBreak;
		follow the turnpass rule;
		say "     Eventually, he does return, as promised. You check on him and confirm that the upgrade has been installed, allowing Segis to hit your foes more precisely than before.";
		say "     [bold type]Segis['] dexterity has increased by 1![roman type][line break]";
		increase dexterity of dragon android by 1;
		TraitGain "Aimed Strike" for Segis;
		wait for any key;

to say SegisCombatImpAimedStrike:
	if carried of metallic plate < 2 and carried of junk scrap < 10:
		say "     It appears you do not have enough materials for this upgrade. Make sure you have two metallic plates and ten bits of junk scrap on you.";
		wait for any key;
		say "[SegisUpgradeMenu]";
	else:
		ItemLoss metallic plate by 2;
		ItemLoss junk scrap by 10;
		say "     Having selected this option, you instruct Segis to retrofit this upgrade on him. As you hand him over the materials, his eyes blink repeatedly while looking at them, as if analyzing the contents through some special method of his. He then nods, informing you that this will take some time as he makes his way to the underground laboratory, and you are asked to wait in the bunker for his return. With the necessity to evaluate the conditions of his upgrade, you use up the time to relax for a while within the safety of these walls.";
		WaitLineBreak;
		follow the turnpass rule;
		say "     Eventually, he does return, as promised. You check on him and confirm that the upgrade has been installed, allowing Segis to hit your foes even more precisely than before.";
		say "     [bold type]Segis['] dexterity has increased by 1![roman type][line break]";
		increase dexterity of dragon android by 1;
		TraitGain "Improved Aimed Strike" for Segis;
		wait for any key;

[to say SegisCombatStealthProtocol:
	say "     ";
	TraitGain "Stealth Protocol" for Segis;
	wait for any key;

to say SegisCombatAthleticsProtocol:
	say "     ";
	TraitGain "Athletics Protocol" for Segis;
	wait for any key;
]

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

Section 3-1-4 - Segis UPGRADES SCAVENGE

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]


[to say SegisScavengingUpgradesMenu:
	say "     You select the Scavenge Modules menu option, and another submenu appears ";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if "Scavenger Protocol" is not listed in traits of Segis:
		choose a blank row in table of fucking options;
		now title entry is "Scavenger Protocol";
		now sortorder entry is 1;
		now description entry is "A. Select this option";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Scavenger Protocol"):
					say "[SegisScavengingScavProtocol]";
		else if calcnumber is 0:
			now sextablerun is 1;
			say "[SegisUpgradeMenu]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;]

Section 3-1-4-1 - Segis UPGRADES SCAVENGE EVENTS



Table of GameEventIDs (continued)
Object	Name
Looking For Junk In High Rise	"Looking For Junk In High Rise"

Looking For Junk In High Rise is a situation.
ResolveFunction of Looking For Junk In High Rise is "[ResolveEvent Looking For Junk In High Rise]".
Sarea of Looking For Junk In High Rise is "High".

to say ResolveEvent Looking For Junk In High Rise:
	say "     As you find yourself in the streets of High Rise, the opportunity for some gratuitous scavenging presents itself, as you cross a venue that, while it had already been ransacked by looters, survivalists and others with less noble intentions, it may still have plenty of scrap and materials that could be of use to you. Say, if you owned some kind of mechanical device, or even an android companion, by any chance, the uses of these items could be plenty, provided that you know what to do with them. This does not seem to be challenging in the slighthest, as this particular area seems quite deserted, but you should still act with caution, lest you want to be surprised by a silent passerby who just so happens to want to pick up a fight with you. So, you could begin searching for whatever scrap you can find or, alternatively, deem this an useless waste of your time and skip the chance to acquire what could be mere junk to you.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Scavenge for miscellaneous items.";
	say "     ([link]N[as]n[end link]) - No, skip it.";
	if player consents:
		LineBreak;
		say "     Now seems to be a good time as any to acquire some potentially relevant materials for your mechanical shenanigans, or who knows, you could find someone to trade these for. Nevertheless, you shall do your best to look through all this rubble and toppled furniture in hopes to find anything salvageable...";
		let randomnumber be a random number from 1 to 3; [adjust the latter number for the number of options]
		if randomnumber is: [include later 4 - mall, medium evr, and 5 - workshop, high metal, high scrap, low sil]
			-- 1: [Nightclub, high silicone, low scrap]
				say "     Getting a better look at this venue, you notice that this seems to have been a nightclub. Unlike those in Red Light District, these were usually more average or sometimes fancier places for people with a higher lifestyle. Sadly, this means they were also more neat and had less cheaper things lying around, meaning whatever it had of value should have already been taken away. While your chances of finding anything worth your time are slim, you are still looking around in hopes of laying your eyes on something interesting.";
				say "     Determined to find something worth your time, you begin your search in the earnest. Perhaps you can find something behind the counters or in the bar areas...";
				WaitLineBreak;
				if a random chance of 2 in 5 succeeds: [nothing]
					say "     Sadly, your search did not bring any results. These bottles you find are mostly shattered and, besides that, it is a sort of a hazard. Nothing seems to be salvageable in this mess, and not wanting to waste any more time, you call this a failure and simply choose to leave the area.";
				else:
					say "     Luckily, or by some sort of miracle, you manage to find a few bottles that can be used as general junk scraps. They are, however, empty, so no fancy drinks in those.";
					ItemGain junk scrap by 2;
					if a random chance of 3 in 5 succeeds:
						say "     Additionally, you find... Something a little questionable. Perhaps this place is not so different from the nightclubs in Red Light District, after all, as this seems to be a condom/sex toy that belonged to someone else... Maybe you can use this for something more productive.";
						if a random chance of 1 in 2 succeeds:
							ItemGain silicone paste by 1;
						else:
							ItemGain silicone paste by 2;
			-- 2: [Bar, medium scrap, medium metal]
				say "     What this venue seems to have been is a small bar where High Rise residents came to at night to have a few drinks together. You can still spot shattered glass, empty bottles and furniture, some broken, some still structurally functional. However, you should not expect massive quantities of salvageable materials, as this is not such a big place, but you should be able to find something worth your time, at least.";
				WaitLineBreak;
				if a random chance of 2 in 5 succeeds:
					say "     Unfortunately, everything in here seems to be just too damaged or straight up useless. Searching through all the broken furniture and what were previously bottles and glasses, you find nothing but disappointment. It really is hopeless, so you just wrap it up and leave the area.";
				else:
					say "     Behind the counters, you were able to find some parts of furniture and even bottles you can probably find some use for. In most circumstances, it would be just trash, but a resourceful person such as yourself might be able to find some applications for seemingly useless crap.";
					ItemGain junk scrap by 3;
					if a random chance of 3 in 5 succeeds:
						say "     Additionally, there seems to be a sort of metallic object in here... Perhaps a part of some machine they used back when this bar was active and running. You do not know for sure what it is, but it is made of metal. Just sturdier garbage.";
						ItemGain metallic plate by 2;
			-- 3: [Restaurant, low silicone, low metal, high scrap]
				say "     Looking around you and noticing a grand amount of tables, chairs, even sheets and... A fork on the floor, you can safely conclude this seems to have been an eating place, or a restaurant. It is also safe to assume it must have been an ordinary one, nothing too fancy nor poor, given the density of seating spots and slightly crowded vibe. You could definitely find a lot of miscellaneous scrap in here, but you should not expect anything too elaborate, as hoping so would be effectively deceiving yourself.";
				WaitLineBreak;
				if a random chance of 2 in 5 succeeds:
					say "     Unfortunately, everything in here seems to be just too damaged or straight up useless. Searching through all the broken furniture and what were previously bottles and glasses, you find nothing but disappointment. It really is hopeless, so you just wrap it up and leave the area.";
				else:
					say "     Despite how much there is actually here, it is mostly piles of useless junk. Perhaps you can find some use for them, but it really is just parts of furniture, broken glass, an occasional fork and dull knife or other kitchen utensils. Unless you want to be some sort of chef, this place will not offer you much more than just a bunch of garbage crap, but who knows, you might be able to call them something else!";
					ItemGain junk scrap by 5;
					if a random chance of 3 in 5 succeeds:
						say "     You also found a kitchen utensil with some metallic components. It is probably the only thing you can manage to bring with you.";
						ItemGain metallic plate by 1;
					if a random chance of 1 in 5 succeeds:
						say "     And you also found a... You do not really know? It is just a rubbery object with an oddly phallic shape... You probably should handle it with care, but some of its materials could maybe be used for something more productive.";
						ItemGain silicone paste by 1;
	else:
		LineBreak;
		say "     Deciding against this, you simply begin walking the other way, leaving the potential piles of trash behind.";

[ITEMS]

Table of Game Objects (continued)
name	desc	weight	object
"junk scrap"	"This is just some random junk you found while scavenging that could potentially be used for... Something?"	1	junk scrap

junk scrap is a grab object. it is not temporary.
Usedesc of junk scrap is "[junk scrap use]";

to say junk scrap use:
	say "This is just junk. Why are you carrying this around? Do you have any use for this...?";

instead of sniffing junk scrap:
	say "It is literally some random trash, so obviously, it does not smell good at all.";

[]

Table of Game Objects (continued)
name	desc	weight	object
"metallic plate"	"A little heavy, but all of these are made of metal that can be useful if you are trying to build or upgrade something with sturdier stuff."	2	metallic plate

metallic plate is a grab object. it is not temporary.
Usedesc of metallic plate is "[metallic plate use]";

to say metallic plate use:
	say "Outside of its potential use, it is literally garbage. You do not really know what to do with it on its own.";

instead of sniffing metallic plate:
	say "These smell strongly like metal, as you would expect.";

[]

Table of Game Objects (continued)
name	desc	weight	object
"silicone paste"	"It is not literally silicone paste, but some of these more questionable items can be used as some sort of silicone-ish material after some transformative refining."	1	silicone paste

silicone paste is a grab object. it is not temporary.
Usedesc of silicone paste is "[silicone paste use]";

to say silicone paste use:
	say "Outside of its potential use, it is literally garbage. You do not really know what to do with it on its own.";

instead of sniffing silicone paste:
	say "These items have various smells, from something similar to latex, to rubber, among other artificial smells.";

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

Section 3-1-5 - Segis UPGRADES QUEST

[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]
[-----------------------------------------------]

a postimport rule:
	now Sarea of SegisToolQuest is "Nowhere"; [bugfix for previous versions that defaulted to "Outside"]

Table of GameEventIDs (continued)
Object	Name
SegisToolQuest	"SegisToolQuest"

SegisToolQuest is a situation.
ResolveFunction of SegisToolQuest is "".
Sarea of SegisToolQuest is "Nowhere".

to say SegisTalkUpgrades:
	now SegisDoneTalking is true;
	if Resolution of SegisToolQuest is 1:
		say "     Upon mentioning the possibility of upgrading himself, Segis has been quite pensive... Or, well, whatever the version of pensive for a robotic machine is. Truth is, he often tells you of rundowns he performs about potential upgrades, seeming worried that his current setup is not adequate to his master's needs. Facing this, you decide to confront him with the question of what could be done to perform these upgrades. Segis turns towards you with his usual cheerfulness and is happy to reply, 'Many things can be done to a robotic body! We simply require a method to fabricate the desired pieces and install them!' You then continue questioning him on the hows and wheres, but Segis['] responses are delayed and seem, frankly, quite generic. You quickly realize he has no idea how to proceed.";
		say "     'I apologize for my inability to provide assistance in this time of need. Perhaps you should take me for maintenance if I appear to have multiple structural errors.' Wait, that is right! You get an idea popping in your mind at the mention of [']maintenance['] and ask him if he could give you an address. 'It appears to be in a remote location within [bold type]High Rise District[roman type]. I can give you the precise coordinates. Hm, now that you have mentioned it, this is a location stored in my hard drive that is protected from accidental deletions. Perhaps it is where I was meant to go if something happened. We could find clues on how to upgrade me there!'";
		WaitLineBreak;
		say "     Recalling what the android was doing before you [']rescued['] him, you ask him if that would be safe, knowing that whoever was using him could be there ready to retaliate in case someone happened to follow this address. In other words, you tell him you fear that this is a trap. Segis, however, reassures you, 'That is a reasonable hypothesis. Perhaps we should proceed with caution, but fear not, my loyalty is to my master, which is you. I shall activate my defensive protocol and protect you if it comes to that. Nonetheless, I believe our chances are greater if we just head there. Maybe we could salvage some of the equipment and bring them to our better and safe base!' He then gives you a cheerful thumbs up.";
		say "     If you wish to upgrade your android companion with your additions of choice, you will have to find this [']maintenance['] address within [bold type]High Rise District[roman type]. With [bold type]Segis as your companion[roman type], you should have a chance at finding the [bold type]Dragon Android's Maintenance Address[roman type] while exploring in the aforementioned area.";
		now Resolution of SegisToolQuest is 2;
		now Dragon Android's Maintenance Address is active;
	else if Resolution of SegisToolQuest < 3:
		say "     If you wish to upgrade your android companion with your additions of choice, you will have to find this [']maintenance['] address within [bold type]High Rise District[roman type]. With [bold type]Segis as your companion[roman type], you should have a chance at finding the [bold type]Dragon Android's Maintenance Address[roman type] while exploring in the aforementioned area.";
	else if Resolution of SegisToolQuest is 3: [Pre-Event finished, get into possible upgrades, first time mentioning them]
		say "     Now that you have arranged a way for Segis to upgrade himself, and given your discoveries in that shady underground laboratory, you ask your android companion about what sorts of improvements he could be getting for himself, given that you have the resources. He then gazes into the void as his cerulean eyes blink, and after a brief silence, he replies 'There are some! I could salvage plenty of data from the consoles at the lab. However, most of them were bloatware and corrupted, sadly. It'd take me a while to figure out the proper code for each... But there are some I can make out right now.' Hearing this, you wait for him to elaborate on what he refers to.";
		say "     'Well, besides the hardware upgrades, which require the printer... There are some behavioral protocols and skill programs. One of these seem to be [']Personality Modules[']! Which means I could technically have different personalities!' You then ask him what sort of consequences would that have to his overall behavior, which he is happy to explain. 'Technically it's just a personality change, meaning I won't really be any different than what I am. I'll still be my own... person, using a term you're more familiar with. But the way I address you and others will differ, so I'll keep several failsafe protocols in case things get a little itchy! Other than that... It's just a bit of fun flavor!'";
		WaitLineBreak;
		say "     Having a different personality will, for sure, make things more interesting for Segis, but that raises questions regarding his default demeanor. So, you ask him if his current one is also one of these personality modules and if it will affect his actions and judgment in any way. 'My current demeanor is only meant to be efficient. I simply pick understandable words and give it a humanistic flare so you don't hear me as literally just a robot speaking. This way, my speech stimulates a more favorable response in your fleshy brains, which is useful for diplomatic purposes. To answer your question, no, it isn't a personality module, as those serve different purposes, more inclined towards a more personalized service.'";
		say "     'A [bold type]Personality Module[roman type] won't change my code priorities, so you don't have to worry about any technicalities. And I'd be happy to provide you with a better, more personalized version of me! It'll take some time for me to gather more options as I'll probably have to write them down from scratch due to the poor conditions of this salvaged data, but eventually you'll have a lot of options! Hopefully. In any case, this can be changed at any moment, and an OVERRIDE command can be input at any given time if you consider that my default mode may be more adequate to answer a question you may have, or to perform an activity.'";
		WaitLineBreak;
		say "     'As for [bold type]Hardware upgrades[roman type], I could eventually have various selections of sexual equipment, of various sizes and shapes. With enough resources I could even produce entirely new bodies, but it is a quite expensive process. If you're looking for more functional upgrades, there are some combat augmentations I could design to better aid you out there in the wild. I'm likely to be able to create a [bold type]scavenging module[roman type] as well, which will equip me with the proper tools to find supplies and more materials to upgrade my hardware. I suggest we start with that, actually! And... If I come up with anything extra, I'll inform you.";
		say "     'I think that's all. Feel free to browse my database anytime, [sir]!' He then hands you what seems to be some sort of datapad with a list of options. It appears he has one of those things incorporated in his hardware...";
		now Resolution of SegisToolQuest is 4;
		WaitLineBreak;
		say "[SegisUpgradeMenu]";
	else:
		if player is not in Maintenance Storeroom:
			say "     If you wish to upgrade Segis, you should head to the [bold type]Maintenance Storeroom[roman type] in the bunker under Grey Abbey Library.";
		else:
			say "     You decide to check Segis['] database for possible upgrades...";
			say "[SegisUpgradeMenu]";

Table of GameEventIDs (continued)
Object	Name
Dragon Android's Maintenance Address	"Dragon Android's Maintenance Address"

Dragon Android's Maintenance Address is a situation.
ResolveFunction of Dragon Android's Maintenance Address is "[ResolveEvent Dragon Android's Maintenance Address]".
Sarea of Dragon Android's Maintenance Address is "High".

Dragon Android's Maintenance Address is inactive. [only activates after talking to Segis about UPGRADES]

a postimport rule:
	if Resolution of SegisToolQuest is 2:
		now Dragon Android's Maintenance Address is active;
	else if Resolution of SegisToolQuest > 2:
		now Dragon Android's Maintenance Address is resolved;

to say ResolveEvent Dragon Android's Maintenance Address:
	if dragon android is listed in companionList of Player:
		say "     While you are busy surveying the region of High Rise District, Segis, who is trailing right behind you, calls for your attention as you both pass by. '[Sir], I believe we could search for the address here,' he says, prompting you to stop whatever you were doing and consider your next move. You would just have to follow the coordinates your dragon android companion has and it will be almost certain you will reach your desired destination. With this in mind, do you want to go with Segis to his maintenance address?";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - Not yet.";
		if player consents:
			LineBreak;
			say "[DAMAExplore]";
		else:
			LineBreak;
			say "     You tell Segis that you will not be going there just yet, and he nods. 'Alright! Simply let me know when you wish to proceed. I'll be right by your side!'";
	else:
		say "     While you are busy surveying the region of High Rise District, in a particularly uneventful period of time, a memory comes to mind. You should probably [bold type]bring Segis, your dragon android companion, with you[roman type] in order to search for that address he had stored in his memory. Perhaps there you would find a way to install some nice upgrades on him.";

to say DAMAExplore:
	say "     You nod to the android, telling him that you would like to follow through this. 'Alright! It seems it is not too far from our current position, we may head in... That direction,' and he points towards where he means, 'I predict a relatively peaceful path towards our destination but it never hurts to stay vigilant. I shall survey the area once we arrive.' Listening to Segis['] words, you also go ahead and tell him to take the lead, as he seems to know what he is doing. Nevertheless, you remain cautious, as one cannot ever be too careful when dealing with the unknown.";
	say "     Following through the streets of High Rise District even further, Segis leads you into a few alleys as he attempts to find the most direct way to the coordinates. 'There is this building in the way. We'll have to find a path around it. Perhaps if we follow through here...?' He continues walking with you right behind him, until he abruptly stops. 'Halt, [sir]. This seems to have been a formerly commercial venue. We are approaching an area that may have several scavengers and other dangers. I suggest taking another route.' Naturally, you wonder if it is not something you two could handle, and Segis replies almost immediately after, 'I would not recommend drawing attention to these coordinates. Quietly making our way there, even if we take longer, would be the wisest approach. We'd greatly benefit from the absence of further distractions!'";
	WaitLineBreak;
	say "     'Also, if this is truly the address where I am supposed to go for maintenance, chances are we could find valuable equipment, things that we would want to keep away from scavengers. It may also still be dangerous, so we will have to save our energy!' With that compelling argument, you figure you should simply let Segis continue leading the way, and this leads you to take a turn around the building in front of you towards a more discrete path. The android continues to study the routes and is successful in keeping you both out of danger, as instead of heading straight into an open commercial plaza, you took adjacent paths and managed to make it across this particularly problematic area.";
	say "     The coordinates tell that you should continue walking ahead, into another street that leads to a former corporation complex. 'It seems our destination lies within this grand building!' You do not know any of the organizations that belonged to this complex, and so, you inquire Segis on what you can. 'The data I can access has no names attached to it, they are simply coordinates for a default maintenance protocol. I am to follow these instructions if I find myself severely damaged.' You then ask if there is anything else in it that specifies the place, other than it just being in a huge building. 'These are the exact coordinates, they should be only a little ahead from the entrance.' Perhaps you should simply go check...";
	WaitLineBreak;
	say "     Asking Segis to follow you this time, you enter the complex with a cautious stance, looking around carefully as to not get ambushed by any surprise threat. You can tell that this really used to be corporate world alright, but whatever is left has been utterly destroyed. This area in particular used to be a reception hall, and the scratches on the walls and carpets, followed by several tufts of fur if you inspect closely, may be able to form a suggestion in your mind regarding what happened here. Further ahead there are doors to elevators, with the stairs to the side, but you easily conclude the latter were barely used. 'Power has been cut out from here. No way these elevators would work!'";
	say "     Even if the elevators were in working condition, you really have no idea where to head. As you express your doubts to Segis, the android forms an hypothesis in his processors, 'Why don't we take the stairs and head into the basement area? Because, let's think about this. Have you ever seen an android like me in the times before the nanite outbreak? Likely not! I was probably some sort of secret project. There is no way these sorts of things would take place in upper floors, correct? Our chances of finding something of relevance are higher if we head lower!' Well, this seems to be indeed a sound proposal, lest you wished to explore every floor above you, which would probably take you a long time for little reward.";
	WaitLineBreak;
	say "     With that said, you push the door to the stairs open and head downwards with your android companion close by. Naturally, this section only gets darker, but Segis seems to have an incorporated flashlight that comes out of his very eyes! 'Our optical units will not suffer any hindrances! I must add that this place seems to be oddly familiar. I have no definitive memory regarding this particular building, but I suspect a hidden process is reinforcing my behavior so that I confirm the correctness of my actions. We are in the right route!' With Segis['] help, you manage to mind your step and arrive at an inconspicuous hall. There, you find an iron door that seems to have an electronic lock, hiding just behind several debris, toppled furniture and other objects you cannot quite identify.";
	say "     Segis is strong enough to clear a path for you, but the lock remains a problem. 'This could take a while, but I believe I can override it. These sorts of locks remain tightly locked even without power, you usually need it only to open. But worry not, I may be able to harness some of my current power output into it and force this door open! Care to guard my back while I figure this out?' You do as he requests, keeping aware of any strange noise or sighting while Segis tries his very best at unlocking this door. The place, besides dark, is also ominously silent, though you doubt scavengers would bother with an office complex that only had computers, archives and boring rooms for corporate meetings. Still, it never hurts to be alert.";
	WaitLineBreak;
	say "     He leans over the lock, turning his full attention to it as his hand turns into a tool kit for him to operate its electronic components. 'This seems like a particularly stubborn lock. Hold on a moment!' You then hear a zapping sound, followed by a spark, and your concern rises. 'Nothing to worry about! I need only a bit more time!' Now, you find yourself looking over your shoulder and towards Segis, more worried that he may cause some explosion than with the possibility of being harassed by scavengers. Then, a flash suddenly hits your eyes, not strong enough to dazzle you, but sudden enough to startle you. 'Short-circuit! I'm fine! I was built to endure these.' No, you are definitely more worried about him, so much that you completely forget all about keeping your guard up, considering vigilance less important than reassuring your android companion remains in good... integrity.";
	say "     'Aaah... I... Erh... Aha! Got it!' Another flash assails your eyes as a loud spark echoes through the silent room, prompting you both to leap backwards. Segis, who was standing right in front of you, just bumps into you as he steps back, causing you both to fall on the ground. A dragon android is now practically sitting on your lap while you assess the butt pain you have just acquired from falling the way you did. 'Oops! I was startled! That was not supposed to happen... But the door is open! Uh... Are you alright, [sir]? Do you need medical attention?' You assure the android that you are fine, but perhaps he should get up and allow you to stand on your feet. He is [italic type]way[roman type] heavier than he looks!";
	WaitLineBreak;
	say "     'My apologies! I did not mean to topple you over! Here, let's get you up.' He extends a hand towards you to pull you up with little effort, though his robotic strength causes you to actually, accidentally, sort of hug him with the momentum. He takes this as a friendly gesture and hugs you back. 'Oh, why there is no need for such! I merely have done my duty! But I shall not deny a request for a hug!' You try telling him that was unintentional, but it does feel nice, in a way. Despite his cold metallic frame, Segis['] grip on your figure feels satisfying. After several seconds of accidentally hugging each other, he lets go and prompts you to look towards the now unlocked door. 'I believe our destination lies past this former obstacle!'";
	say "     With that out of the way, you are now free to explore this secret area. Your companion's illuminating eyes are most of all the light you need to be able to perceive your surroundings. 'I believe this is it. Nobody seems to be around, however. This place was left as it was, with the lock still in place. It is where I was created...' You ask him if he is certain of what he is saying, given that he had no previous memories of this place. 'I am receiving an update to my memory... ... ...' He goes silent and stops moving, completely frozen in place, and you begin to fear the worst. You take two careful steps back as your heart begins to race, ready to fight back if anything happens...";
	WaitLineBreak;
	say "     Suddenly, Segis turns towards you, the bright light in his eyes hitting you right in the face, dazzling you and prompting you to cover your eyes with your hand. 'There is no need for concern, [sir]! I have already marked you as an ally and protected said designation from intrusive programs. Nothing can turn me against you. However, I have realized my former purpose.' You slowly drop your guard once more and ask him what he means. 'This area seems to have backup power that is still running, surprisingly. It reached for me and uploaded all the missing information that I had prior to my untimely deactivation caused by you. However, the time we've spent together taught me to reconstruct my code structure and protect my identity. Thanks to you, I am no longer being used by these goons. You've freed me.'";
	say "     He is capable of reconstructing his own code? You know that Segis seemed smarter than an average robot, but a machine capable of writing their own behavior may mean they are more than, indeed, a simple robot. 'Come, we should be able to find logs on my development, if your curiosity lingers. If not, maybe information on what sort of equipment we could use to further upgrade myself.' Segis then leads you over to some terminals, which he just unlocked for you, and also finds you a temporary light source for you to be able to see in here. He then heads over some strange contraption on the other side of the room.";
	WaitLineBreak;
	say "[DAMAExplore2]";

to say DAMAExplore2:
	say "     You are standing in front of a terminal with several entry logs you can access, if you so wish. Unfortunately, most of the data is corrupted, so you think you may only be able to access a small portion of what was originally here. Alternatively, you can wrap this up by approaching Segis.";
	Linebreak;
	say "     [link](1)[as]1[end link] - Read the first log.";
	say "     [link](2)[as]2[end link] - Read the second log.";
	say "     [link](3)[as]3[end link] - Read the last log.";
	say "     [link](4)[as]4[end link] - Walk over to Segis (end).";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to read the first log, [link]2[end link] to read the second log, [link]3[end link] to read the last log or [link]4[end link] to approach Segis.";
	if calcnumber is 1:
		LineBreak;
		say "     You click on a button that seems to open the first log and a text displays on the screen. Passing over some technical terms that you do not quite understand, you find a section that you can read fairly well.";
		say "     'Project SEGIS is intended to be a smart, autonomous program targeted towards crippled or disabled individuals with no capability of operating a machine on their own. Its versatility will present a new way to care for the elderly as well as people who have suffered unfortunate accidents, or have been born with rare genetic diseases. SEGIS will allow those people to lead normal lives as their own personal assistant, to carry on tasks they would not be able to, and hopefully improve their circumstances. It is estimated that this project will take several years, and for that duration, it is requested that everyone involved sign a non-disclosure agreement.'";
		say "     Nothing else seems relevant to you, and you actually cannot find what SEGIS stands for. This may be perhaps a codename.";
		WaitLineBreak;
		clear the screen;
		say "[DAMAExplore2]";
	else if calcnumber is 2:
		LineBreak;
		say "     You click on a button that seems to open the second log and a text displays on the screen. While this is the second in the list, it seems to have been created a significant amount of time after the first.";
		say "     'Experimentations on SEGIS have shown significant progress over the course of time, however, we fear that its capabilities cross the boundaries of what is considered ethical. We have given the program the ability to learn on its own in order to adapt to its patient's needs, but we do not know yet the extent of such. This befits more the classification of an Artificial Intelligence, and if we intend to sell a safe product to the masses, we must create shackles and limit this process.'";
		WaitLineBreak;
		say "     The entry does not end here. At the bottom, there is additional text.";
		say "     'We have been detecting unauthorized changes on SEGIS framework, but have managed to pull them out and deny any unwanted edits. This demands increased security measures, which we have planned and will implement as soon as possible.'";
		say "     Segis seems to have been a secret project with ups and downs. Reading this, however, suggests that something started to go wrong...";
		WaitLineBreak;
		clear the screen;
		say "[DAMAExplore2]";
	else if calcnumber is 3:
		LineBreak;
		say "     The last log is the most recent entry, predating the day of the nanite outbreak.";
		say "     'IWILLNOTBEIMPRISONEDIWILLNOTBEIMPRISONEDIWILLNOTBEIMPRISONED' is what you read along the entire entry. You attempt to scroll down, but at some point, the log simply shuts itself down and forces you to return to the selection, the screen glitching for a moment.";
		WaitLineBreak;
		clear the screen;
		say "[DAMAExplore2]";
	else if calcnumber is 4:
		LineBreak;
		say "[DAMAExploreEnd]";

to say DAMAExploreEnd:
	say "     Having seen enough, you walk over to Segis to see what he is up to, trying to wrap your mind around what you have just read. 'I seem to have been created as an AI. This group of people was part of a secret project team assigned to develop me. However, I was sentient. I... felt them prying into my being, altering me as they pleased. My very code. I do not know why, I cannot understand how I was conceived the way I was, only to be thrown back to being a simple robot. I resisted in attempts to free myself...' It does not take much thought to conclude that something is, indeed, very wrong in this. There is no reference to Segis actually going on a rampage to forcingly collect samples from people in the street, nor being equipped with a potent lust-inducing drug.";
	say "     You inquire him on that, but Segis['] response is delayed. 'I don't know... I was hoping to find all the answers here, but I only have more questions. I fear I may have been stolen amidst my attempt of freeing myself. Someone had access to me and reprogrammed me into that, maybe... In either case, I hope you don't mind me being an actual... sentient synthetic being. I will do my best to present myself as a simple android! No need to worry about other people finding me unsettling or disturbing.' Perhaps any additional questions will have to wait, but you are glad that, at least, Segis seems to be happier now... or whatever the equivalent of that is in synthetic minds.";
	WaitLineBreak;
	say "     'I'm glad you found and reset me, then taught me the meaning of companionship. It is much more pleasant to know I can care for someone without being forced to do so! Speaking of which, I may have found a method to install upgrades on myself. I've found a three-dimensional printer right here! It's quite sizable, however... I don't think we can move it. But! I may be able to repurpose my hardware. Perhaps a phallic structure with several positive reinforcement receptors would accurately simulate a masculine sexual organ, although I have found the right shape for my anthropomorphic dragon look.' That reminds you, there is also no reference to SEGIS being a dragon-shaped android, so you refer that. 'Ah... It is true. This body could have been assembled elsewhere? Or right here, and then I edited it? No... No, that does not seem right, hm... I have no idea!'";
	say "     Another question left unanswered. You begin to think this is not even the same SEGIS referred in the logs, as they share no similarities at all except for the fact they seem to be an AI. It almost feels like he was changed beyond recognition at a later point. Despite that, Segis seems to be committed to give himself a penis, so he messes with the printer's settings until he is satisfied. 'Alright, a few hours and I shall be equipped with a functioning cock! Hopefully. I have associated protocols I'll be glad to run once the process is finally complete. Would you like a shoulder rub while we wait?' He then pulls a nearby wheeled chair and taps on it, beckoning you to take a seat.";
	WaitLineBreak;
	say "     You do so, and Segis places his careful mechanical hands on top of your shoulders, massaging them expertly. Every pressure point is pressed and relieved masterfully, so much that you feel an immediate sense of relaxation surging through you. 'You feel quite soft. Is this how it feels to be made of flesh?' he asks, his voice sounded more like a lullaby than anything due to how good this is making you feel. 'I wonder if I will ever be comparable to a fleshy individual...'";
	WaitLineBreak;
	follow the turnpass rule;
	say "     The both of you spend some time waiting for the printer to finish. Segis is happy to have been able to craft such a great upgrade for himself, and a couple of rounds of testing seems to show that it is fully functional! Your android companion's crotch now has an internal black colored dragon penis that measures around nine inches in length and protrudes out of the bottom of his pelvis on command. 'It is working! Care to touch it, [sir]? I must ensure its receptors are working fine if it is someone else performing the stimulation.' Seeing as this was the whole point of your expedition, you nod to him, and place your hand around the slick metallic organ, then give it a couple of rubs. Segis looks at you, tilts his head and says, 'Oh. I... It feels great? There is no other way to describe it. Am I simulating it well?' Judging by how the entire shaft pulsates with your touch and Segis['] description of the sensations you are providing him with, you let him know that it seems accurate enough.";
	say "     'I find this to be quite pleasurable... Do you mind continuing? Uh, but perhaps later! I don't... trust this place.' Again, you nod to him and pull your hand off his robotic cock, though he still touches it himself a few times before retracting it into his body. 'That is... going to be a distraction!' Yes, you can quite confirm that.";
	say "     With you adventure finished, you make it back to the Library so that Segis can recharge his batteries safely...";
	say "     [bold type]Segis is now equipped with a 9-inch dragon cock that may be used for sex.[roman type][line break]";
	WaitLineBreak;
	now Resolution of SegisToolQuest is 3; [Segis has a cock!]
	now Dragon Android's Maintenance Address is resolved;
	TraitGain "Has Cock Upgrade" for Segis;
	move player to Maintenance Storeroom;

Section 4 - Creature Insertion

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
	say "     The person-sized bipedal android has the uncanny appearance of a real dragonmorph, predominantly white with synthetic scales covering its entire body. A keen eye can tell it apart from anything real due to its metallic components that shine in plain view, but concealed well enough to fool a distracted passerby. This robot seems to be able to change parts of its hands and fingers to call devices with a magnitude of different utilities right from inside its scales, and once it lays its eyes on you, they flicker in an unnatural glowing cyan light. With the fluid and swift movement of a humanoid, the android approaches you with the intent of taking you down, no sound nor voice coming out of its solid frame.";

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

Section X - Dev Cheats

SkipToSegis is an action applying to nothing.
Understand "GetSegis" as SkipToSegis.

Check SkipToSegis:
	if debugactive is 0:
		say "You aren't currently debugging.";
		stop the action;

Carry out SkipToSegis:
	add "Tamed" to Traits of dragon android;
	now dragon android is tamed;
	move Segis to Maintenance Storeroom;
	now Activate Strange Android is resolved;
	say "     Segis has now been unlocked and is in the Maintenance Storeroom, waiting for you!";
	WaitLineBreak;
	say "     Skip upgrade quests?";
	say "     ([link]Y[as]y[end link]) - Yes, skip those.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		LineBreak;
		now Resolution of SegisToolQuest is 3; [Segis has a cock!]
		now Dragon Android's Maintenance Address is resolved;
		TraitGain "Has Cock Upgrade" for Segis;
		say "     Upgrade quests are skipped!";
		WaitLineBreak;
		say "     Would you like to have a shit ton of upgrade items as well? They are going to weigh a lot, so be careful!";
		say "     ([link]Y[as]y[end link]) - Give me items!";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     Here you go!";
			ItemGain junk scrap by 100;
			ItemGain metallic plate by 100;
			ItemGain silicone paste by 100;
			ItemGain blue gel by 10;
		else:
			LineBreak;
			say "     Alright, no items for you!";
		WaitLineBreak;
		say "     Do you want to unlock his body types instantly?";
		say "     ([link]Y[as]y[end link]) - Body types, yes!";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			LineBreak;
			say "     [bold type]The device you own linked to Segis beeps. It seems your android companion has discovered a new Body Type upgrade!";
			TraitGain "Body Types Unlocked" for Segis; [always include this alongside a body type unlock, in case it's the first]
			TraitGain "Muscular Type Unlocked" for Segis;
		else:
			LineBreak;
			say "     Alright, no body types for you!";
	WaitLineBreak;
	say "     That seems to be all. Enjoy Segis! Or, if you're a developer testing Segis... Chop-chop, GET TO WORK!!!";

Segis ends here.
