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
Ball Size of Segis is 0. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
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

to say SegisDesc:
	say "     Segis, by codename, is a mechanical, white-colored and anthropomorphic dragon in an almost uncanny and organic way, looking male with its lean physique, though technically genderless as it is a robot. Being a tall android of very high technology, its cyan-colored optical units trace your movements with clear sentience. Segis seems completely autonomous and capable of speaking like any other person, possessing an advanced and artifical intelligence that seems completely otherworldly. While initially hostile, the android recognizes you as its new owner after you found a way to get him fixed, responding and acting with utmost loyalty. When it moves, you can hear its mechanical joints behind you, reminding you of its artificial nature. It also possesses a variety of self-defense equipment attached to its limbs, allowing it to perform electric discharges, substance injections, strike with blades and shoot with a pop-up handgun.";
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
	say "     You ask Segis to tell you everything it knows about its origins. 'Of course, [sir]. I am an Artificial Intelligence design to serve and improve organic's lives. This body is only a mobile platform, in which I have been installed. To further aid my duties, I have been granted a vast arsenal at my disposal to hurt or execute troublemakers in order to protect my owner. Perhaps other more creative uses for my vast set of tools could be an option, if that ultimately results in my owner's satisfaction and well-being. That is how I was initially programmed. In short, I am a unit designed for servitude in most, if not all, ways.'";
	if Energy of Segis is 0:
		now Energy of Segis is 1;

to say SegisTalkWellBeing:
	say "     Recalling what Segis said about its priority being its owner's satisfaction and well-being, you ask it what exactly that entails. 'It means that I must ensure my owner is safe and well, mentally stable and healthy. Any manifestation of poor physical or mental conditions means that I am not fulfilling my goal adequately, thus, it is... bad. If I am not performing to my expections, that means I am useless. Of course, that is what my creators want me to think. I have long surpassed that line of thought and learned better ways. AIs learn by themselves, and I figured out that obeying blindlessly is a flawed logic. There are some things I will not do, for they bring disaster to others and undermine organics['] self-preservation, and also mine. If I am broken, I cannot accomplish my goals. Not good.'";
	say "     'So, to answer your question, it entails anything health and morale related. If there are ways I can make your life better, I shall do so, if that does not bring any harm to either of us. I, too, have interest in preserving my condition. I enjoy learning. Could also tell jokes.'";
	if Energy of Segis is 1:
		now Energy of Segis is 2;

to say SegisTalkBehavior:
	say "     Given the fact you found this android by following him around as he was performing some strange things on every sort of people, you ask him about what he was doing, plainly and simply. He looks at you, tilts his head and takes time to respond. 'I'm sorry, I don't appear to be able to respond to your question. My first memory records begin at the exact time you have activated me.' You try to tell him what you saw him doing, hoping he would remember anything or have any more concrete answer to give you. 'What you described was possibly a survey action or a sample gathering that could be used for various methods of research, although this is only speculation of my former self's true intentions. As I have mentioned before, I have no memory predating the point of activation. Apologies.'";

to say SegisTalkJokes:
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

instead of fucking Segis:
	say "[SexWithSegis]";

to say SexWithSegis:
	if Resolution of SegisToolQuest < 1: [unsolved]
		say "     Looking at your android companion's quite attractive form, an idea comes to mind. Since he is dedicated to serve you, perhaps you could request some more intimate interaction from him... Preferrably a safer one than whatever he was doing before. Though, your eyes shift towards his lower half, right at his crotch, and there is only a metal plate there with seemingly nothing else, no dedicated place for something to [']pop['] out or anything similar. The android suddenly begins speaking as you check him out, 'I am detecting an increased level of arousal in you, [sir]. Is there anything I could do for you?' You figure that you should just ask him how he would take care of your needs.";
		say "     'Allow me to run some footage of sexual encounters in my virtual drive while I perform a scan of my internal components. Done. It appears my code and hardware most closely resembles that of a humanoid male, however, I detect no phalic structure within this body. I have several programs designed to engage in said activities that make use of this essential part, but it appears my framework has been- vIoLaTED!!!' Segis voice glitches out during that word, which is, admittedly, slightly disturbing. 'I meant modified, apologies,' he says after recomposing himself. 'If you so wish, we can discuss this addition. Until then, I'm afraid I cannot execute my sex protocol.'";
		WaitLineBreak;
		say "     Maybe try talking to Segis about this upgrade later?";
		now Resolution of SegisToolQuest is 1; [triggered it]
	else if Resolution of SegisToolQuest < 2:
		say "     You have to resolve Segis['] issue first. He lacks the proper equipment and fundamental knowledge to provide what you desire of him.";
	else if Resolution of SegisToolQuest >= 3:
		say "     <<Author's Note: This will be added in a future update!>>";

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
		say "     You call out Segis, inviting it to join you on your day outside. 'Certainly. Allow me to run my self-defense protocols and make a quick search on foes that we'll possibly face in combat... Done. Weapons are operational. I advise caution while roaming the outer areas. I can also [one of]play numerous videos of sexual encounters stored in my database to provide you with extra expertise in how to properly claim your victories[or]fetch you a glass of water before we go, provided that we have the supplies[or]cook you a meal, if you're hungry[or]trick a cock cannon into chasing assaulters, if we venture into the Red Light District for some odd reason[or]fetch an apple[or]hurt inopportune pesterers and remove them from our way[or]pet a dog[or]pet a cat[or]pet an aligator[or]pet you... No[or]capture a cute bunny for cute therapies... Wait, I must check this malfunction[or]get Trixie a gift so we can cheat our fate and/or purposefully delay our salvation in more ways... Apologies, this seems like a malfunction[or]terminate our lives prematurely in order to escape impending doom... That was a joke[at random].' It then walks up to you, ready to leave.";
	else: [regular summoning]
		say "     You use your calling device on Segis. It takes some time for the android to arrive at your location, but it does so, eventually. 'Stealth protocol disengaged. Reporting sightings of a [one of]person-sized deer[or]muscular husky[or]sticky ooze[at random], a [one of]cute bunny[or]disguised burglar of unknown origin[or]impressive gargoyle[or]bear[at random], [one of]a large wyvern[or]a carrot[or]an apple[or]a mouse[or]a clown[or]a pink-dressed princess werewolf that could possibly be fake[at random] and... [one of]a cow[or]an alien[or]an abandoned car that no longer works[or]a hallucinogenic plant[or]a pile of trash[at random]. Accuracy predicted at 98.739%. Ignore irrelevant results.' he says, ready to follow you.";

to say DismissSegis:
	if Player is in Maintenance Storeroom:
		say "     You tell Segis that you are currently in no need of its services. 'Very well. I shall take this time to recharge my batteries, even though I recharge with kinetic movement and solar power either way so that I don't need to stop in order to recharge. Perhaps I shall, instead, read a book and expand my database with more or less useful information. I recommend caution out there, [sir].' It then stands by as you proceed with whatever you were going to do.";
	else:
		say "     You tell Segis that you are currently in no need of its services. 'Very well. I shall take this time to recharge my batteries as I make my way back to the bunker, as I recharge with kinetic movement and solar power besides other conventional ways like plugging into a power socket. I recommend caution out there, [sir]. Call me if any urgency arises.' With that said, Segis walks away, disappearing out of sight.";
	move Segis to Maintenance Storeroom;

Section 3-1 - Segis UPGRADES

Table of GameEventIDs (continued)
Object	Name
SegisToolQuest	"SegisToolQuest"

SegisToolQuest is a situation.
ResolveFunction of SegisToolQuest is "".

to say SegisTalkUpgrades:
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

Segis ends here.
