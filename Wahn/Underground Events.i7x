Version 2 of Underground Events by Wahn begins here.
[ Version 2 - Captive Breeding with a male version ]

Table of GameEventIDs (continued)
Object	Name
Captive Breeding	"Captive Breeding"

Captive Breeding is a situation.
The sarea of Captive Breeding is "Sealed".

when play begins:
	add Captive Breeding to badspots of girl;
	add Captive Breeding to badspots of guy;

CaptiveBreederEncounter is a number that varies.

Instead of resolving a Captive Breeding:
	if a random chance of 1 in 2 succeeds: [impregnated woman]
		say "     Walking through the dark passages of the expansive underground warren that is the basement of the Trevor Labs, you hear something from up ahead - moaning. [if CaptiveBreederEncounter is 0]Who might that be, down here in the lair of the tentacle beasts? [else]Could that be... another breeding subject of the tentacle monsters? Just how many people did they drag down here? [end if]Warily, you move closer to the source of the noise. Looking into the doorway of a storage room filled with rows of shelves, you find a woman, lying on the ground. Spread-eagled, her forearms and lower legs are stuck to the ground by some kind of substance, looking like solidified slimy goo. She's naked, and her belly bulges massively upwards in obvious pregnancy.";
		say "     Moving closer, you try talking to her, but the only answers you're getting are more gasps and moans. Judging from some clear goop smeared around her mouth, you'd guess something's been... feeding her, to keep her alive in captivity. Most likely whatever that is is laden with drugs and aphrodisiacs too, with as unfocused her eyes are right now. Your examination is interrupted by a sudden splashing noise and a gasp from the human woman. Looking down, you see a puddle of slime spread between her legs and the skin of her belly ripple with movement under it.";
		LineBreak;
		now CaptiveBreederEncounter is 1;
		say "     Uh oh - seems like what's in her wants out - now! What do you do? Stay with the woman [link](1)[as]1[end link], observe what's happening - but from a distance [link](2)[as]2[end link] or get the hell out of there [link](3)[as]3[end link]?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to help with the birth, [link]2[end link] to observe or [link]3[end link] to leave.";
		if calcnumber is 1:[stay with the woman]
			say "     Suddenly thrust into this unusual situation, you decide to do your best in helping the woman give birth to... whatever it is. Taking hold of her hand, which thankfully isn't covered by her goo bindings, you try to calm her a bit with soft-spoken words and wipe the sweat of labor off her brow. From your ringside seat, you watch a tentacle with a whole row of suckers worm its way out of the woman's vagina, followed by another and another, all of them taking hold on the floor and the woman's legs as the creature struggles to pull itself out of her womb. Helped along by the woman's contractions, soon the little tentacle monster slips out of her with a wet, sloshing noise. Then it scuttles off, vanishing under a shelf faster than you could catch it.";
			LineBreak;
			say "     You're left alone with the human woman, down in the sub-levels of the Trevor Labs. What to do now... your thoughts wander to getting her out of here, but not knowing when (or even if) her current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least her captor seems to keep her alive - there's still hope she can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in her in the meantime you can only wonder about.";
			if player is male and libido of player > 40:
				say "[cuckold choice]";
			say "     You stroke the captive woman's hair, telling her to hold out, then leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";
			if Resolution of Captive Breeding is 0:
				now Resolution of Captive Breeding is 8; [held the hand of a woman in the tentacle monster's breeding pen giving birth]
		else if calcnumber is 2:[observe]
			say "     You make your way back to the hallway you came from and peek around the corner to watch what's happening in the room. The captive woman pants and gasps as contractions run through her lower body, then you see a tentacle with a whole row of suckers emerge from her pussy, taking hold of her leg to pull the rest of the creature free. Another and another follows, and soon the woman's monstrous offspring emerges with a wet, sloshing noise. It quickly scuttles off, vanishing under a shelf faster than you'd have thought.";
			LineBreak;
			say "     You're left looking at the human woman, lying on the floor moaning. What to do now... your thoughts wander to getting her out of here, but not knowing when (or even if) her current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least her captor seems to keep her alive - there's still hope she can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in her in the meantime you can only wonder about.";
			if player is male and libido of player > 40:
				say "[cuckold choice]";
			LineBreak;
			say "     You leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";
			if Resolution of Captive Breeding is 0:
				now Resolution of Captive Breeding is 7; [watched a woman in the tentacle monster's breeding pen giving birth]
		else:[leave]
			say "     This is getting way too creepy for you. You flee back up to the surface, followed by the echoing moans and sounds of the captive woman's unnatural birth.";
	else: [mpregged man]
		say "     Walking through the dark passages of the expansive underground warren that is in the basement of the Trevor Labs, you hear something from up ahead - moaning. [if CaptiveBreederEncounter is 0]Who might that be, down here in the lair of the tentacle beasts? [else]Could that be... another breeding subject of the tentacle monsters? Just how many people did they drag down here? [end if]Warily, you move closer to the source of the noise. Looking into the doorway of a storage room filled with stacks of large crates, you find a man, slouched on his back on one of the crates against the back wall. His hands and forearms are stuck to the wall above his head in some kind of substance, looking like solidified slimy goo, and his legs are similarly glued to the side crate under him in a lewd stretched position that leaves his crotch and ass freely accessible. He's naked, his cock fully erect, twitching and oozing precum, and his belly bulges massively upwards in what looks to be pregnancy.";
		say "     Moving closer, you try talking to the man, but the only answers you're getting are more gasps and moans. Judging from some clear goop smeared around his mouth, you'd guess something's been... feeding him, to keep him alive in captivity. Most likely whatever that is is laden with drugs and aphrodisiacs too, with as unfocused his eyes are right now. Your examination is interrupted by a sudden splashing noise and a gasp from the human man. Looking down, you see a puddle of slime on the ground and more of it running down the side of the crate as well as dripping out of the man's asshole. The skin of his belly ripples with movement under it.";
		LineBreak;
		now CaptiveBreederEncounter is 1;
		say "     Uh oh - seems like what's in him wants out - now! What do you do? Stay with the man [link](1)[as]1[end link], observe what's happening - but from a distance [link](2)[as]2[end link] or get the hell out of there [link](3)[as]3[end link]?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to help with the birth, [link]2[end link] to observe or [link]3[end link] to leave.";
		if calcnumber is 1:[stay with the man]
			say "     Suddenly thrust into this unusual situation, you decide to do your best in helping the man give birth to... whatever it is. Putting a hand on his chest and the other on his squirming belly, you try to get through to him that he's not all alone and to calm him a bit with soft-spoken words. Wiping the sweat of labor off his brow, you watch a tentacle with a whole row of suckers worm its way out of the man's asshole, followed by another and another, all of them taking hold of the first thing they reach - be it the crate or the man's legs - as the creature struggles to pull itself out of his body. Helped along by the gasping man's contractions, soon the little tentacle monster slips out of him with a wet, sloshing noise and lands with a splat on the ground below. Then it scuttles off, vanishing in the shadows faster than you could catch it.";
			LineBreak;
			say "     You're left alone with the human man, down in the sub-levels of the Trevor Labs. What to do now... your thoughts wander to getting him out of here, but not knowing when (or even if) his current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least his captor seems to keep him alive - there's still hope he can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in him in the meantime you can only wonder about.";
			if libido of player > 40:
				say "[cuckold choice male]";
			say "     You stroke the captive man's cheek, telling him to hold out, then leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";
			if Resolution of Captive Breeding is 0:
				now Resolution of Captive Breeding is 6; [held the hand of a man in the tentacle monster's breeding pen giving birth]
		else if calcnumber is 2:[observe]
			say "     You make your way back to the hallway you came from and peek around the corner to watch what's happening in the room. The captive man pants and gasps as contractions run through his lower body, then you see a tentacle with a whole row of suckers emerge from his asshole, taking hold of the crate below to pull the rest of the creature free. Another and another follows, and soon the man's monstrous offspring emerges with a wet, sloshing noise and lands with a splat on the ground below. It quickly scuttles off, vanishing in the shadows faster than you'd have thought.";
			LineBreak;
			say "     You're left looking at the human man, slouched on the crate moaning. What to do now... your thoughts wander to getting him out of here, but not knowing when (or even if) his current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least his captor seems to keep him alive - there's still hope he can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in him in the meantime you can only wonder about.";
			if libido of player > 40:
				say "[cuckold choice male]";
			LineBreak;
			say "     You leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";
			if Resolution of Captive Breeding is 0:
				now Resolution of Captive Breeding is 5; [watched a man in the tentacle monster's breeding pen give birth]
		else:[leave]
			say "     This is getting way too creepy for you. You flee back up to the surface, followed by the echoing moans and sounds of the captive man's unnatural birth.";

to say cuckold choice:
	say "     A deviant thought worms its way into your head, coupled with a twitch of your cock. There is one way you could... preempt the tentacle monster impregnating her with more of its offspring.";
	say "     [bold type]Do you follow the urge?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Fuck her and knock her up.";
	say "     ([link]N[as]n[end link]) - Step away and shake those thoughts off.";
	if player consents:
		LineBreak;
		say "     'It's for her own good,' echoes as a somewhat lame excuse for your actions through your horny mind as you slip off your clothes and stroke your cock to full hardness. Then you kneel between the woman's legs and bring your erection to her opening, still wet with slimy goo. She moans in arousal as she feels your cockhead against her pussy lips, then gasps as you plunge right in. Still pretty tight for just having had that creature in her - but then, it was squishy enough not to stretch her on the way out. You pump in and out of her vagina, amazed how good this feels and how full your balls feel as they get ready to blast your load into the human below you. The creature's slime lubing your shaft as it thrusts deep might have something to do with that...";
		say "     But no matter, your thoughts are fully absorbed with cuckolding the tentacle monster here and now. Speeding up your movements more and more, you finally slam in all the way and cum, burst after burst of your seed shooting into the woman's receptive womb. There, that should mix up the tentacle breeding program a bit... breathing deeply, you pull out and get your clothes back on.";
		now Resolution of Captive Breeding is 1; [fucked a woman in the tentacle monster's breeding pen]
	else:
		LineBreak;
		say "     Getting your impulses under control, you shake those immoral thoughts off. This place is really getting to you, that you could even imagine doing such a thing.";

to say cuckold choice male:
	setmonster "Human";
	choose row monster from the Table of Random Critters;
	if player is male:
		say "     Looking at the man's naked body, now that it isn't deformed by a monster's spawn inside him, you realize he's quite handsome and well-built - seems like tentacle monsters have good standards for their breeding slaves at least. A deviant thought worms his way into your head, coupled with a twitch of your cock. There is one way you could... preempt the tentacle monster impregnating his changed body with more of its offspring...";
		say "     [bold type]Do you follow the urge?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fuck him and knock him up.";
		say "     ([link]N[as]n[end link]) - Step away and shake those thoughts off.";
		if player consents:
			LineBreak;
			say "     'It's for his own good,' echoes as a somewhat lame excuse for your actions through your horny mind as you slip off your clothes and stroke your cock to full hardness. Then step up to stand in front of the crate, idly thinking that it's just the right height, and bring your erection to his opening, still wet with slimy goo. He moans in arousal as he feels your cockhead against his pucker, then gasps as you plunge right in. Still pretty tight for just having had that creature in him - but then, it was squishy enough not to stretch him out too much on the way out. You pump in and out of the man's tight hole, amazed how good this is and how full your balls feel as they get ready to blast your load into the human below you. The creature's slime lubing your shaft as it thrusts deep might have something to do with that...";
			say "     But no matter, your thoughts are fully absorbed with cuckolding the tentacle monster here and now. Speeding up your movements more and more, you finally slam in all the way and cum, burst after burst of your seed shooting into the transformed man's receptive insides, no doubt finding its way to a womb somewhere in him. There, that should mix up the tentacle monster breeding program a bit... breathing deeply, you pull out and get your clothes back on.";
			now Resolution of Captive Breeding is 2; [fucked a man in the tentacle monster's breeding pen]
		else:
			LineBreak;
			say "     Getting your impulses under control, you shake those immoral thoughts off. This place is really getting to you, that you could even imagine doing such a thing.";
	else:
		say "     Looking at the man's naked body, now that it isn't deformed by a monster's spawn inside him, you realize he's quite handsome and well-built - seems like tentacle monsters have good standards for their breeding slaves at least. And his well-sized cock is fully hard too. A deviant little thought rears its head inside you, telling you that you could at least give the poor guy some... relief at least, since you can't - or is it won't - free him.";
		LineBreak;
		say "     [bold type]Do you follow the urge?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Climb on the crate with the man and ride his cock.";
		say "     ([link]N[as]n[end link]) - Step away and shake those thoughts off.";
		if player consents:
			LineBreak;
			if player is female:
				say "     Eager to make use of - er, give the man relief - you strip off your gear and clothes, then climb on top of the crate with him and straddle his hips. With his shaft hard and ready to go, all slick in precum, it's just a question of holding it up and sinking yourself down on his shaft. He fills you quite nicely, rubbing sensitive spots inside you as you rock back and forth, grinding your hips down against his. Fucking yourself on his hard pole, you fall into a kind of aroused trance, with sex the only thing that matters anymore. Seems like some of the aphrodisiacs that the creature fed to him wound up in his precum too...";
				say "     With the oversexed state he was already in, it doesn't take all that long before your captive partner orgasms, trembling and moaning loudly as his cock blasts burst after burst of cum into you. Though even as he finishes cumming a short while later, his cock doesn't even begin to go down allowing you to keep riding him without pause, soon reaching your own climax, then continuing after catching your breath. In the course of quite a while of sweaty sexual grinding, he fills you with his cum several times over and you orgasm again and again, until finally your partner's head sinks back to rest against the wall and he falls into exhausted sleep. With shaky legs, you climb off him, leaving a messy trail of cum dripping from your pussy as you go to collect your clothes.";
				say "     [fimpregchance][fimpregchance][fimpregchance]";
			else:
				say "     Eager to make use of - er, give the man relief - you strip off your gear and clothes, then climb on top of the crate with him and straddle his hips. With his shaft hard and ready to go, all slick in precum, it's just a question of rubbing it against your pucker until it lubes its way in and you sink down his shaft. He fills you quite nicely, rubbing sensitive spots inside you as you rock back and forth, grinding your hips down against his. Fucking yourself on his hard pole, you fall into a kind of aroused trance, with sex the only thing that matters anymore. Seems like some of the aphrodisiacs that the creature fed to him wound up in his precum too...";
				say "     With the oversexed state he was already in, it doesn't take all that long before your captive partner orgasms, trembling and moaning loudly as his cock blasts burst after burst of cum into you. Though even as he finishes cumming a short while later, his cock doesn't even begin to go down allowing you to keep riding him without pause, soon reaching your own climax, then continuing after catching your breath. In the course of quite a while of sweaty sexual grinding, he fills you with his cum several times over and you orgasm again and again, until finally your partner's head sinks back to rest against the wall and he falls into exhausted sleep. With shaky legs, you climb off him, leaving a messy trail of cum dripping from your ass as you go to collect your clothes.";
				say "     [mimpregchance][mimpregchance][mimpregchance]";
			now Resolution of Captive Breeding is 3; [mounted a man in the tentacle monster's breeding pen]
		else:
			LineBreak;
			say "     [bold type]Do you at least jerk him off?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Give the guy a wank.";
			say "     ([link]N[as]n[end link]) - Step away.";
			if player consents:
				LineBreak;
				say "     Putting a hand on the captive human's cock, you jerk his long hard shaft, making him give pleased moans and grunts. Fondling his balls with your other hand, you can feel how full they are, no doubt put into overdrive of cum-production from his oversexed state - he really must be aching for relief. It doesn't take long before your efforts drive him to a quite messy and noisy orgasm, with the guy's erection just blasting away with spurt after massive spurt of cum splashing against his ripped chest. But even after he stops cumming with that impressively large load, he's not done by far.";
				say "     The cock in your hand shows no sign of going soft and his balls seem as full as ever, so you continue on jerking him off to another climax, and another. Finally, when he's splattered in cum all over, his shaft goes soft and with a satisfied sigh the man's head sinks back against the wall in exhausted sleep.";
				now Resolution of Captive Breeding is 4; [jerked a man in the tentacle monster's breeding pen]
			else:
				LineBreak;
				say "     With a shrug, you step away and leave the guy where he is.";

Table of GameEventIDs (continued)
Object	Name
Trashed Refuge	"Trashed Refuge"

Trashed Refuge is a situation.
The sarea of Trashed Refuge is "Sealed".

when play begins:
	add Trashed Refuge to badspots of girl;
	add Trashed Refuge to badspots of guy;

[Resolution of Trashed Refuge]
[0 - not seen, not searched]
[1 - seen, not searched]
[2 - seen, searched once]
[3 - seen, searched twice]
[4 - seen, searched three times]

Instead of resolving a Trashed Refuge:
	if Resolution of Trashed Refuge is 0:
		say "     You come upon a room in the uppermost level of the underground complex that looks like it was used by people seeking refuge from the things going on out in the city. Sadly, that doesn't seem to have worked out for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		LineBreak;
		say "     [bold type]Do you want to want to search through the room? (With - whatever it was - splattering its bodily fluids far and wide, there's a high risk of getting exposed to some of it.)[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Search the room.";
		say "     ([link]N[as]n[end link]) - Keep your distance.";
		if player consents:
			LineBreak;
			say "     Digging through the possessions of the refugees that were holed up here, you find several identity cards - looks like they were employees of the Trevor Labs... from the looks of it though, mostly administrative personnel. Most likely they didn't even know what was being cooked up down here.";
			if a random chance of 1 in 2 succeeds:
				say "     Your search also reveals a bottle of water, with its seal still intact. Score!";
				increase carried of water bottle by 1;
			else:
				say "     Your search also reveals an energy bar. Hmm - honey and nut flavored - in an unbroken package. Score!";
				increase carried of food by 1;
			if a random chance of 6 in 8 succeeds:
				infect "Tentacle Horror";
			now Resolution of Trashed Refuge is 1; [1st visit done]
		else: [do not go in]
			LineBreak;
			say "     Better not to risk touching any of those cum-stains accidentally. You leave the room and make your way back to the surface.";
	else if Resolution of Trashed Refuge is 1: [2nd visit after ransacking it once]
		say "     Roaming through the underground complex you come again to the room some hapless refugees took shelter in before. It's easy to see that didn't work out too well for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		LineBreak;
		say "     [bold type]Do you want to want to search through the room? (With - whatever it was - splattering its bodily fluids far and wide, there's a high risk of getting exposed to some of it.)[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Search the room.";
		say "     ([link]N[as]n[end link]) - Keep your distance.";
		LineBreak;
		if player consents:
			LineBreak;
			say "     Digging through the possessions of the refugees that were holed up here, you find several identity cards - looks like they were employees of the Trevor Labs... from the looks of it though, mostly administrative personnel. Most likely they didn't even know what was being cooked up down here.";
			if a random chance of 1 in 2 succeeds:
				say "     Your search also reveals a bottle of water, with its seal still intact. Score!";
				increase carried of water bottle by 1;
			else:
				say "     Your search also reveals an energy bar. Hmm - honey and nut flavored, in an unbroken package. Score!";
				increase carried of food by 1;
			if a random chance of 6 in 8 succeeds:
				infect "Tentacle Horror";
			now Resolution of Trashed Refuge is 2; [2nd visit]
		else:
			LineBreak;
			say "     Better not to risk touching any of those cum-stains accidentally. You leave the room and make your way back to the surface.";
	else if Resolution of Trashed Refuge is 2:
		say "     Roaming through the underground complex you come again to the room some hapless refugees took shelter in before. It's easy to see that didn't work out too well for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		LineBreak;
		say "     [bold type]Do you want to want to give the stuff in the room another going-over? You just might have missed something. (With - whatever it was - splattering its bodily fluids far and wide, there's a high risk of getting exposed to some of it.)[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Search the room.";
		say "     ([link]N[as]n[end link]) - Keep your distance.";
		if player consents:
			LineBreak;
			if a random chance of 1 in 2 succeeds:
				say "     Your search brings to light a can of soda, hidden under the stained folds of a sleeping bag. Score!";
				increase carried of soda by 1;
			else:
				say "     A rustling sound as you poke a pile of ragged clothes makes you look closer, digging out a bag of chips from its depths. Score!";
				increase carried of chips by 1;
			if a random chance of 6 in 8 succeeds:
				infect "Tentacle Horror";
			now Resolution of Trashed Refuge is 3; [3rd visit]
		else:
			LineBreak;
			say "     Better not to risk touching any of those cum-stains accidentally. Most likely there isn't anything more in here anyways. You leave the room and make your way back to the surface.";
	else if Resolution of Trashed Refuge is 3:
		say "     Roaming through the underground complex you come again to the room some hapless refugees took shelter in before. It's easy to see that didn't work out too well for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		LineBreak;
		say "     As your thoughts wander to maybe searching in here a third time, you suddenly hear a noise behind you. Whirling around, you find yourself face to face with a many-tentacled creature. Looks like you're not the only one returning to this room to pick up some more goodies. With outstretched tentacles, the creature attacks.";
		challenge "Tentacle Horror";
		say "     Time to get out of here before more of those things appear. You leave the room and make your way back to the surface.";
		now Resolution of Trashed Refuge is 3; [3rd visit]
		now Trashed Refuge is resolved;

Table of GameEventIDs (continued)
Object	Name
Hidden Sublevel	"Hidden Sublevel"

Hidden Sublevel is a situation.
The sarea of Hidden Sublevel is "Sealed".

Instead of resolving a Hidden Sublevel:
	say "     You come upon a mid-sized room with an elevator, dark and spooky like the rest of the complex under the Trevor Labs. The opposite wall from that elevator looks interesting - seems like a whole section of it was designed to slide away sideways and is currently in that position. Behind where the wall cover would be, there's a thick reinforced door, large enough to require powerful motors to open and close it. Whether this hidden entrance was constructed to keep something out - or in - it's wide open now, and without power to the building, it's stuck for good that way...";
	now Hidden Sublevel is resolved;

Table of GameEventIDs (continued)
Object	Name
Failed Experiments	"Failed Experiments"

Failed Experiments is a situation.
The Prereq1 of Failed Experiments is Hidden Sublevel.
The sarea of Failed Experiments is "Sealed".

Instead of resolving a Failed Experiments:
	say "     In the depths of the hidden section in this underground complex, you find a room with row after row of glass tanks. Small and large, they're filled with formaldehyde in which... things are preserved. From just clumps of tentacles, to animals sprouting too many limbs or even heads, to... deformed creatures which have a dismaying resemblance to humans. Seems like even before the nanite infection, unnatural things were being done in these labs. With a shiver running down your spine, you turn away from the failed experiments and make your way back to the surface, unsuccessfully trying to forget what you saw.";
	now Failed Experiments is resolved;

Table of GameEventIDs (continued)
Object	Name
Mindshield Storage	"Mindshield Storage"

Mindshield Storage is a situation.
The Prereq1 of Mindshield Storage is Hidden Sublevel.
The sarea of Mindshield Storage is "Sealed".

MSStorageVisited is a number that varies. MSStorageVisited usually is 0.

Instead of resolving a Mindshield Storage:
	if MSStorageVisited is 0:
		say "     In the depths of the hidden section in this underground complex, you find a storage room with rows of shelves. They hold quite a few boxes, all of them with printed labels saying 'Mindshield 2.361'. Opening one up, you see there's a helmet in there, smooth and shiny on the outside, but with a mesh of hexagonal discs covering the inside.";
		LineBreak;
		say "     [bold type]What now?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Take a helmet with you.";
		say "     ([link]N[as]n[end link]) - Leave the helmets behind.";
		if player consents:
			LineBreak;
			say "     Adding the shiny helmet to your pack, you make your way back to the surface.";
			increase carried of mindshield helmet by 1;
		else:
			LineBreak;
			say "     You can't just carry everything you find with you, so you put the helmet back in its box. After all, you could always come back here if you ever need one.";
		increase MSStorageVisited by 1;
	else if MSStorageVisited is 1:
		say "     In the depths of the hidden section in this underground complex, you find your way back to the mindshield storage room. As before, rows of shelves hold many boxes of extra helmets. Opening one up, you have a look at the helmet in there, smooth and shiny on the outside, but with a mesh of hexagonal discs covering the inside. Do you want to take one of them with you?";
		if player consents:
			say "     Adding the shiny helmet to your pack, you make your way back to the surface.";
			increase carried of mindshield helmet by 1;
		else:
			say "     You can't just carry everything you find with you, so you put the helmet back in its box. After all, you could always come back here if you ever need one.";
		increase MSStorageVisited by 1;
	else if MSStorageVisited is 2:
		say "     In the depths of the hidden section in this underground complex, you find your way back to the mindshield storage room. But this time - it's a chaotic mess. All around you, there are fallen shelves and cracked, splintered helmets, out of their packages. Seems like something else found this room, which didn't like the protective mindshields lying around. Digging through the chaos, you find a helmet that seems undamaged. This'll be the last one you get, though, with all the others destroyed.";
		increase carried of mindshield helmet by 1;
		now Mindshield Storage is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"mindshield helmet"	"A shiny silver helmet. It's too light to have its primary use being deflecting blows - but maybe the mesh on the inside could ward of other, less physical, attacks."	1	mindshield helmet

mindshield helmet is a grab object.
mindshield helmet is equipment.
It is not temporary.
The plural of mindshield helmet is false.
The taur-compatible of mindshield helmet is true.
The size of mindshield helmet is 3.
The AC of mindshield helmet is 10.
The effectiveness of mindshield helmet is 60.
The placement of mindshield helmet is "head".
The descmod of mindshield helmet is "A shiny silver helmet sits on your head, providing some protection. Maybe more than just physical too.".
The slot of mindshield helmet is "head".
the scent of mindshield helmet is "The helmet smells like plastic.".

Table of GameEventIDs (continued)
Object	Name
Holding Cell Four	"Holding Cell Four"

Holding Cell Four is a situation.
The Prereq1 of Holding Cell Four is Hidden Sublevel.
The sarea of Holding Cell Four is "Sealed".
CellFourVisits is a number that varies.

Instead of resolving a Holding Cell Four:[repeatable event]
	if CellFourVisits is 5:
		say "     In the depths of the hidden section in this underground complex, you come upon a door bearing the sign 'Holding Cell Four - Warning, danger of mental influence - Wear mindshield helmet before entering.' A red light (which must be on emergency power) glows on the wall next to the word 'unlocked'.";
		if carried of mindshield helmet is 0:
			say "     That warning doesn't sound too good - and you do not have such a protective helmet. Before you can think any more about what to do, a groaning noise and a thump come from inside...";
			LineBreak;
			say "     [bold type]What do you want to do?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Rush into the cell and see what is going on.";
			say "     ([link]N[as]n[end link]) - Retreat back to the surface.";
			if player consents:
				LineBreak;
				say "     Fate favors the brave... so you boldly pounce on the door and pull it open, stepping into the room beyond with eager curiosity.";
				LineBreak;
				say "     [AlphaBirth]";
				increase CellFourVisits by 1;
				now Resolution of Holding Cell Four is 5;
			else:
				LineBreak;
				say "     Better safe than sorry... who knows what might be lurking in that cell and what made that noise. Leaving it behind you, you rush through the dark and creepy corridors, making your way back to the surface.";
		else:
			say "     Following the warning, you ensure that you have your protective helmet on - patting its shape covering on your head. Then suddenly, a groaning noise and a thump come from inside...";
			LineBreak;
			say "     [bold type]What do you want to do?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Rush into the cell and see what is going on.";
			say "     ([link]N[as]n[end link]) - Retreat back to the surface.";
			if player consents:
				LineBreak;
				say "     Fate favors the brave... so you boldly pounce on the door and pull it open, stepping into the room beyond with eager curiosity.";
				LineBreak;
				say "     [AlphaBirth]";
				increase CellFourVisits by 1;
				now Resolution of Holding Cell Four is 5;
			else:
				LineBreak;
				say "     Better safe than sorry... who knows what might be lurking in that cell and what made that noise. Leaving it behind you, you rush through the dark and creepy corridors, making your way back to the surface.";
	else if CellFourVisits is 3: [the thought eater checks out who's been visiting his slave]
		say "     As you make your way towards holding cell four again, seeing the red warning light at its door down the hallway in front of you, you suddenly hear a hissing voice say 'Do you enjoy visiting my favorite pet? I can make you just like him...'";
		LineBreak;
		setmonster "Thought Eater";
		choose row monster from the Table of Random Critters;
		now area entry is "Sealed";
		challenge "Thought Eater";
		increase CellFourVisits by 1;
		now Resolution of Holding Cell Four is 3;
	else:
		say "     In the depths of the hidden section in this underground complex, you come upon a door bearing the sign 'Holding Cell Four - Warning, danger of mental influence - Wear mindshield helmet before entering.' A red light (which must be on emergency power) glows on the wall next to the word 'unlocked'.";
		if carried of mindshield helmet is 0:
			LineBreak;
			say "     [bold type]That warning doesn't sound too good - and you do not have such a protective helmet. Do you really want to go in there?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Step into the cell and see what is going on.";
			say "     ([link]N[as]n[end link]) - Retreat back to the surface.";
			if player consents:
				LineBreak;
				say "     Fate favors the brave... so you boldly stride ahead and pull open the cell door and step inside.";
				LineBreak;
				say "     [Inside Cell Four]";
				increase CellFourVisits by 1;
			else:
				LineBreak;
				say "     Better safe than sorry... who knows what might be lurking in that cell. Leaving it behind you, you rush through the dark and creepy corridors, making your way back to the surface.";
		else:
			say "     Following the warning, you make sure that you have your protective helmet on your head before pulling open the cell door and stepping inside.";
			LineBreak;
			say "     [Inside Cell Four]";
			increase CellFourVisits by 1;

to say Inside Cell Four:
	say "     What you find behind the door is a moderately sized room holding a table, chairs, a bookshelf and a cot in the far corner. Torn-up paper is scattered about, intermixed with shreds of clothing and the broken shards of what appears to have been a shining silver helmet. While you are still busy taking in the scene around you, the blanket on the cot gets pulled aside, revealing the naked body of a person who stands up and takes a few steps towards you. It's a man with a slender build, mid-length blond hair and a rather handsome face.";
	LineBreak;
	say "     'Have you seen the master? Will he come soon? I've been waiting for his return, as ordered,' you hear the lightly bearded man say, a somewhat dazed look in his eyes. Letting your looks wander lower, you see that he's not... just a man anymore. Under a half-hard erection, there's an additional pussy between his legs - and a fully functional one, judging from the noticeable bulge of the hermaphrodite man's stomach. He's been impregnated with... something. Coming to stand before you, oblivious to his own nakedness, the man stares blankly, waiting for your answer.";
	say "     Err - what now?";
	wait for any key;
	say "     [CellFourSex]";

to say CellFourSex:
	setmonster "Herm Human";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask what's going on here";
	now sortorder entry is 1;
	now description entry is "Get some info.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Search the room";
	now sortorder entry is 2;
	now description entry is "Have a look at all the stuff on the ground.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get the man out of there";
	now sortorder entry is 3;
	now description entry is "Take the herm up to the surface.";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Get his cock in your pussy";
		now sortorder entry is 4;
		now description entry is "Order him to fuck you.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get his cock in your ass";
	now sortorder entry is 5;
	now description entry is "Order him to fuck you anally.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 6;
		now description entry is "Fuck the herm guy's pussy.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 7;
		now description entry is "Fuck the herm guy's ass.";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Ask what's going on here":
					say "[CellFour1]";
				else if nam is "Search the room":
					say "[CellFour2]";
				else if nam is "Get the man out of there":
					say "[CellFour3]";
				else if nam is "Get his cock in your pussy":
					say "[CellFour4]";
				else if nam is "Get his cock in your ass":
					say "[CellFour5]";
				else if nam is "Fuck his pussy":
					say "[CellFour6]";
				else if nam is "Fuck his ass":
					say "[CellFour7]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Deciding that you'd better get out of there fast, you quietly slip through the door again. The mind-controlled herm inside cell four looks after you with puzzlement, then sits back down on the bed to wait.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

To say CellFour1:
	say "     'We made the master - he was our best success. His mind was strong, so strong. We thought we could control him, but then things started happening in the city and... he showed me the error of our ways. You can't believe the ecstasy of feeling him inside my mind, and also my body.' With that, the herm man's hands rise to his stomach, caressing the bulge of his pregnant belly, then slide lower to touch his cock and pussy. As he starts stroking himself, moaning in arousal, he continues with 'I carry his glorious seed now, waiting to give birth to my master's children.'";
	if carried of mindshield helmet is 0:
		say "     ...and that's the last coherent sentence you get out of the guy. Getting into masturbating in earnest, all the while moaning about his master, the man goes back to the cot, laying down on it as he jerks his cock and fondles his pussy. You're drawn into watching him for a while, with his hands moving over his hermaphrodite body and soft tingles of arousal flooding through you at the same time. Only when he finally cums long streaks of cum all over himself and starts rubbing it into his skin do you manage to snap out of it.";
		LineBreak;
		say "     It was almost - as if a little voice was telling you to stay and just give yourself to the feelings and forget everything else. Maybe there's some of the creature that did this in its victims mind, trying to lull you in too? With a shudder, you decide to get out of there and run away and up through the dark corridors...";
	else:
		say "     ...and that's the last coherent sentence you get out of the guy. Getting into masturbating in earnest, all the while moaning about his master, the man goes back to the cot, laying down on it as he jerks his cock and fondles his pussy. You're drawn into watching him for a while, with his hands moving over his hermaphrodite body, then shake your starting arousal off. Staying here until whatever made that guy into this obedient slave doesn't sound like a good idea, so you leave and make your way back to the surface.";

To say CellFour2:
	say "     Ignoring the man for the moment, you turn your attention to the trash and shreds lying on the ground. There's lots of pieces that seem to have been the herm man's clothing - jeans and a ragged lab-coat, and also many, many paper bits with writing on them. Looks like there was the Trevor Labs logo in the upper left corner of all the pages and many of them seem to be just a lot of numbers and jumbled collections of letters - maybe it's genetic code or something. With a bit of patience, you can piece together some interesting bits from among the rest: '...ubject X31, hum...' '...us hybrid, telepathic abilities present.' '...ile the subject is a complete success in regards to...' '...controlling it remains a pr...' 'Implantation of a control device might be the only option, if those prove themselves in the tests with the new infiltratio...'";
	LineBreak;
	if carried of mindshield helmet is 0:
		say "     Your concentration for further puzzling is broken when the herm man on the cot suddenly gasps in lust, fingering his pussy while shouting 'Master! I can feel your presence and wait to pleasure you. And there is a visitor too...' Eeep. You don't know what range the abilities of the creature have that made this man its slave, but it's clearly time to go. Rushing to the door, you leave the cell and run, only stopping when you reach the surface and feel a bit safer than in the dark depths of the underground.";
	else:
		say "     Your concentration for further puzzling is broken when the herm man on the cot suddenly gasps in lust, fingering his pussy while shouting 'Master! I can feel your presence and wait to pleasure you. And there is a visitor too...' Eeep. Even though you got a protective helmet against the creature's influence, confronting it right in its lair might not be the best idea. It'd surely use its slave against you in a fight too. You don't know what range the abilities of the creature have that made this man its slave, but it's clearly time to go. Rushing to the door, you leave the cell and run, only stopping when you reach the surface and feel a bit safer than in the dark depths of the underground.";

To say CellFour3:
	say "     You step forward and take the man by his arm, trying to guide him to the door and to safety while saying 'Let's get you out of here away from the monstrous creatures infesting these halls.' For a moment, conflicting thoughts seem to be clashing against each other behind the herm man's eyes, then one side wins out against the other and he pulls away from the entrance again and winds his arm out of your grip. 'How can you say such things about the master! He is beautiful - his hairless body and tentacles are perfection. Something to worshipped and loved. I - I have to wait here for him. Please him. Bear his children.' One hand protectively on his bulging stomach, the man walks back towards the cot in the far corner of the room.";
	say "     Doesn't look like you can get him out of here willingly. And dragging a kicking and screaming person with you who attracts all kinds of critters isn't an option either. Oh well, with as wound up as the guy is right now, there's nothing else to be done - he won't listen to anything you say at the moment. For now, you have to leave him where he is and hope he calms down by the time you come here again. Leaving the cell behind, you make your way back up to the surface through the dark underground corridors.";

To say CellFour4:
	say "     Clearing your throat, you tell him that you're a friend of his master, and that he said you could have some fun together. Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, you remark how well trained he is and that he can show on you how he would please his master. The brainwashed man moans as you stroke him, a drop of precum forming at the tip of his cock. 'Of... *Gasp* course, anything for *moan* the master and his friends. What do you want me to do?' comes his answer to your request.";
	LineBreak;
	say "     Pulling off your clothes and dropping them on the floor as you walk towards the bed in the corner of the room, you lie down on it and spread your legs and pussy lips. Accompanied by pushing two fingers into your cunt, then licking your female juices off them, you tell him to fuck you. From the excited look on his face and the quickness with which he moves over to you, you don't think he gets to have sex in anything but the submissive role with his master. Images of the man's ass speared on his master's cock, then later getting fucked and impregnated after he became a herm dance in front of your mental eye for a moment.";
	say "     Then you get distracted by the feeling of two hands on your legs, holding them apart as a bearded face rubs against your skin. Your herm partner runs his tongue along the inside of one leg, then the other, before moving on to your pussy and licking your sensitive nether lips. Your eager partner licks and fingers you a while, then he moves up to kneel between your legs. His erect shaft rests hotly against your pubic mound for a moment, then he takes it into his hand and guides it between your folds, sliding into you. Your passage stretches around his manhood as it is halfway in, then three quarters and finally his balls touch your ass as he bottoms out inside you. You can feel the bulge of his pregnant belly against your own as he whispers 'Is this okay?', to which you answer that you're horny and he should get to it already.";
	WaitLineBreak;
	say "     Emboldened by your urgent request, the man forgets his training as a submissive fuckpet for a while, pulling back and thrusting back in deep. He's got some nice technique moving his hips a bit between separate thrusts to hit different spots inside you, expertly increasing your arousal more and more. Before the nanite infection and becoming a breeding slave, he must have quite popular with those that caught his eye. With him driving you to the edge of orgasm, then slowing down again to let you cool off a bit before resuming his thrusting, he certainly takes very good care of you. Being in a state of lust-filled bliss for you don't know how long, this is certainly one encounter to remember, crowned by him stimulating you to a breathtaking climax[if player is male]. With your partner's shaft deep inside your pussy as he hammers against you, it's as if he fucks the cum right out of you, your erection spurting another blast of cum all over your chest every time he thrusts in[else if player is female]. With your partner's shaft deep inside your ass as he hammers against you, your pussy starts throbbing and dripping femcum, creating a large wet spot on the sheets between your legs[end if].";
	LineBreak;
	say "     His duty to you fulfilled, the herm guy relaxes any restraint he held on himself, and after just a few more thrusts, he orgasms. You can feel his shaft throb and pulse as he comes, his fertile seed spurting deep into your womb.[fimpregchance]";
	say "     Pulling out after his last spurts go into you, the man lets himself sink down on the bed, breathing hard. A look of... clarity(?) comes to his face for a moment as he moans 'Thank you.', then it is gone again and he continues with 'Did I please the master's friend? I hope I was good enough and not out of practice. The master doesn't call on me to do... that.' You nod, telling him he did well, then stand up and go to get your clothes. As you dress, the pregnant herm lies on the bed stroking his belly softly, then falls asleep. You leave the cell and make your way back up to the surface through the dark corridors of the underground.";

To say CellFour5:
	say "     Clearing your throat, you tell him that you're a friend of his master, and that he said you could have some fun together. Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, you remark how well trained he is and that he can show on you how he would please his master. The brainwashed man moans as you stroke him, a drop of precum forming at the tip of his cock. 'Of... *gasp* course, anything for *moan* the master and his friends. What do you want me to do?' comes his answer to your request.";
	LineBreak;
	say "     Pulling off your clothes and dropping them on the floor as you walk towards the bed in the corner of the room, you get on it on all fours and look back at the herm guy over your shoulder. Accompanied by a little shake of your ass, you tell him 'Fuck me - hard.' From the excited look on his face and the quickness with which he moves over to you, you don't think he gets to have sex in anything but the submissive role with his master. Images of the man's ass speared on his master's cock, then later getting fucked and impregnated after he became a herm dance in front of your mental eye for a moment.";
	say "     Then you get distracted by the feeling of two hands pulling your cheeks apart, followed by a tongue licking your crack and poking against your pucker. Your eager partner licks and fingers you a while, then you feel him move around behind you and something else touches your rear entrance. After rubbing his hard shaft up and down between your cheeks a moment, the man pushes in against your pucker, slowly but steadily spreading it with his cockhead. Soon your passage is stretched around his manhood as it is halfway in, then three quarters and finally his balls touch your ass as he bottoms out inside you. You can feel the bulge of his pregnant belly against your back as he whispers 'Is this okay?', to which you answer that you're horny and he should get to it already.";
	WaitLineBreak;
	say "     Emboldened by your urgent request, the man forgets his training as a submissive fuckpet for a while, pulling back and thrusting back in deep. He's got some nice technique moving his hips a bit between separate thrusts to hit different spots inside you, expertly increasing your arousal more and more. Before the nanite infection and becoming a breeding slave, he must have quite popular with those that caught his eye. With him driving you to the edge of orgasm, then slowing down again to let you cool off a bit before resuming his thrusting, he certainly takes very good care of you. Being in a state of lust-filled bliss for you don't know how long, this is certainly one encounter to remember, crowned by him stimulating you to a breathtaking climax. [if player is male]With your partner's shaft deep inside your ass as he hammers against you, it's as if he fucks the cum right out of you, your erection spurting another blast of cum onto the sheets every time he thrusts in[else if player is female]With your partner's shaft deep inside your ass as he hammers against you, your pussy starts throbbing and dripping femcum, creating a large wet spot on the sheets between your legs[else]With your partner's shaft deep inside your ass as he hammers against you, a shudder of satisfaction runs through your body, reaching every fiber of you[end if].";
	LineBreak;
	say "     His duty to you fulfilled, the herm guy relaxes any restraint he held on himself, and after just a few more thrusts, he orgasms. You can feel his shaft throb and pulse as he comes, his seed spurting deep into your rear passage.[mimpregchance]";
	say "     Pulling out after his last spurts go into you, the man lets himself sink down on the bed, breathing hard. A look of... clarity(?) comes to his face for a moment as he moans 'Thank you.', then it is gone again and he continues with 'Did I please the master's friend? I hope I was good enough and not out of practice. The master doesn't call on me to do... that.' You nod, telling him he did well, then stand up and go to get your clothes. As you dress, the pregnant herm lies on the bed stroking his belly softly, then falls asleep. You leave the cell and make your way back up to the surface through the dark corridors of the underground.";

To say CellFour6:
	say "     Clearing your throat, you tell him that you're a friend of his master, and that he said you could have some fun together. Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, you remark how well trained he is and that he can show on you how he would please his master. The brainwashed man moans as you stroke him, his pussy getting wet under your fingers. 'Of... *gasp* course, anything for *moan* the master and his friends. Where do you want me?' comes his answer to your request.";
	LineBreak;
	say "     [bold type]What do you want to do with the hermaphrodite man?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take him on the bed.";
	say "     ([link]N[as]n[end link]) - Fuck him against a wall from behind.";
	if player consents:
		LineBreak;
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you slowly walk him backwards to the bed in the far corner, then give him a slight push to fall back on it. With his naked form lying before you, legs spread invitingly, you hastily strip off your clothes and free your raging hardon. Getting on the bed, you rub your cock against his for a moment and stroke them together, then aim at the ready opening below. With a quick thrust of your hips, you bury your shaft all the way in the herm's vagina, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something inside your partner's belly, and after a few more thrusts something bumps back. As horny and concentrated on fucking as you are, you don't give it much attention - until suddenly you feel something (small tentacles?!) wrap around your shaft and strokes it. The thought of how amazing this feels goes through your head and you speed up your thrusts even more, your orgasm quickly approaching as you get jerked off while fucking. Then finally, as the man under you gasps as he reaches his own climax, with his pussy trembling around your manhood and his legs wrapping around you to hold you close, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's, hands digging into the sheets and mattress as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's womb while he squirts his load over himself.";
		WaitLineBreak;
		say "     After your orgasm winds down, you feel the being inside milk the last spurts out of your softening erection. As you pull out and go to grab your clothes and gear, the herm guy just lies on his back, breathing hard, and wipes the sweat off his brow. Then his hands move down to his bulging belly, rubbing the cum on his chest into the skin and caressing it. 'The master's child tells me he likes your taste. He'll remember it and asks that you come visit him again soon.' After that, the man falls asleep, satisfied and exhausted.";
		say "     You're left standing before the bed, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake your head and get dressed. This might get rather strange before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";
	else:
		LineBreak;
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you slowly walk him over to the nearest wall, then tell him to bend over and stand against it. With his naked form before you, ass presented as he stands with his hands against the wall and his legs spread to invitingly show the pussy between them, you hastily strip off your clothes and free your raging hardon. Stepping up behind him, you rub your cock up and down between his cheeks and playfully push against his pucker a moment before moving on to the ready opening further down. With a quick thrust of your hips, you bury your shaft all the way in the herm's vagina, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something inside your partner's belly, and after a few more thrusts something bumps back. As horny and concentrated on fucking as you are, you don't give it much attention - until suddenly you feel something (small tentacles?!) wrap around your shaft and stroke it. The thought of how amazing this feels goes through your head and you speed up your thrusts even more, your orgasm quickly approaching as you get jerked off while fucking. Then finally, as the man you're fucking gasps when he reaches his own climax, with his pussy trembling around your manhood, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's ass, gripping his hips tightly as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's womb while he squirts his load onto the wall and the floor.";
		WaitLineBreak;
		say "     After your orgasm winds down, you feel the being inside milk the last spurts out of your softening erection. As you pull out and go to grab your clothes and gear, the herm keeps leaning against the wall for a moment, breathing hard, then wipes the sweat off his brow and goes to lie on the bed. With his hands moving down to his bulging belly, caressing it, he says 'The master's child tells me he likes your taste. He'll remember it and asks that you come visit him again soon.' After that, the man falls asleep, satisfied and exhausted.";
		say "     You're left standing alone, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake your head and get dressed. This might get rather strange before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";

To say CellFour7:
	say "     Clearing your throat, you tell him that you're a friend of his master, and that he said you could have some fun together. Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, you remark how well trained he is and that he can show on you how he would please his master. The brainwashed man moans as you stroke him, his pussy getting wet under your fingers. 'Of... *gasp* course, anything for *moan* the master and his friends. Where do you want me?' comes his answer to your request.";
	LineBreak;
	say "     [bold type]What do you want to do with the hermaphrodite man?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Take him on the bed.";
	say "     ([link]N[as]n[end link]) - Fuck him against a wall from behind.";
	if player consents:
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you turn him around after getting them good and wet and start fingering his ass. Smiling at the moans you get out of him as you push first one, then two digits into him, you slowly walk him towards the bed in the far corner, then give him a slight push to fall forward on it. Prepared for what's coming, the man gets on all fours, arching his back to present his firm butt. Getting hard from this inviting spectacle, you hastily strip off your clothes and stroke your manhood in anticipation. Getting on the bed, you rub your cock up and down between the man's cheeks for a moment, then aim at the tight opening between them. With a quick thrust of your hips, you bury your shaft all the way in the herm guy's rear passage, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something, and after a few more thrusts something bumps back from inside his womb through the herm's inner walls. As horny and concentrated on fucking as you are, you don't give it much attention - it's just a bit of interesting extra stimulation. The thought of how amazing this feels goes through your head and you speed up your thrusts even more, your orgasm quickly approaching. Then finally, as the man under you gasps as he reaches his own climax, with his anal muscles twitching around your manhood and one hand reaching back to hold you against him, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's, hands gripping his hips tightly as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's rear passage while he squirts his load all over the sheets.";
		WaitLineBreak;
		say "     As your orgasm winds down, you feel the being inside your partner still push and rub your softening erection through his inner walls. As you pull out and go to grab your clothes and gear, the herm guy moves to lie on his back, breathing hard, and wipes the sweat off his brow. Then his hands move down to his bulging belly, caressing it. 'The master's child tells me he likes playing with you. He'll remember it and asks that you come visit him again soon. Maybe more directly too...' With that, he strokes his pussy demonstratively for a moment, then falls asleep, satisfied and exhausted.";
		say "     You're left standing before the bed, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake your head and get dressed. This might get rather strange before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";
	else:
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you turn him around after getting them good and wet and start fingering his ass. Smiling at the moans you get out of him as you push first one, then two digits into him, you slowly walk him over to the nearest wall, then tell him to bend over and stand against it. With his naked form before you, ass presented as he stands with his hands against the wall, you hastily strip off your clothes and free your raging hardon. Stepping up behind him, you rub your cock up and down between his cheeks and playfully push against his pucker a moment before telling him to relax and get ready. With a quick thrust of your hips, you bury your shaft all the way in the herm guy's rear passage, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something, and after a few more thrusts something bumps back from inside his womb through the herm's inner walls. As horny and concentrated on fucking as you are, you don't give it much attention - it's just a bit of interesting extra stimulation. The thought of how amazing this feels goes through your head and you speed up your thrusts even more, your orgasm quickly approaching. Then finally, as the man under you gasps as he reaches his own climax, with his anal muscles twitching around your manhood and one hand reaching back to hold you against him, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's, hands gripping his hips tightly as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's rear passage while he squirts his load all over the wall and floor.";
		WaitLineBreak;
		say "     As your orgasm winds down, you feel the being inside your partner still push and rub your softening erection through his inner walls. As you pull out and go to grab your clothes and gear, the herm guy leans against the wall for a moment, breathing hard, then wipes the sweat off his brow and goes to lie on the bed. His hands move down to his bulging belly, caressing it. 'The master's child tells me he likes playing with you. He'll remember it and asks that you come visit him again soon. Maybe more directly too...' With that, he strokes his pussy demonstratively for a moment, then falls asleep, satisfied and exhausted.";
		say "     You're left standing before the bed, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake your head and get dressed. This might get rather strange before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";

to say AlphaBirth:
	say "     What lies behind the door is well-known to you by now - a moderately sized room holding a table, chairs, a bookshelf and a cot in the far corner. Torn-up paper is scattered about, intermixed with shreds of clothing and the broken shards of what appears to have been a shining silver helmet. In the midst of all the chaos, the cell's occupant is sitting on the floor, leaning back against the side of the bed he seems to have fallen out of when trying to stand up. The slender, naked man is holding his pregnancy-swollen stomach and looks a bit disheveled right now, with his blond hair wet with sweat and plastered to his neck. The small puddle of amniotic fluid spreading on the floor from his crotch might have something to do with that - as well as the fact that his handsome face is showing a strained expression as he goes through a rapid breathing rhythm.";
	LineBreak;
	say "     'Have you - *pant* - seen the master? Will he come soon? Nnnggh!' the man asks you in a breathless voice, then a shiver goes through his whole body and you see something move in the bulge of his stomach. Looks like his child is getting ready to come out. 'I've been waiting for the master's - *pant* - return, but I think - ah, aahh - that the little one is out of patience.' Letting your eyes wander lower, you see his manhood stand straight and erect, pressing against the underside of his belly. It is as if he can't help but be aroused by the fate his own creation picked for him. Beneath, the dual-gendered man's pussy gapes a little, still leaking more fluids heralding the birth of his master's offspring. The lightly bearded man looks over to you with a hopeful expression, then holds out his hand and asks, 'Will you - *pant* - help me?'";
	LineBreak;
	say "     [bold type]What is your reply?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Step up and help him through it.";
	say "     ([link]N[as]n[end link]) - Keep your distance.";
	if player consents:
		LineBreak;
		say "     Closing up to him quickly, you grab the man's hand and pull, helping him stand up and at least get into a halfway comfortable position on the bed. He holds on to your hand in quite a tight grip, squeezing reflexively with each contraction. They are coming faster and faster now, as well as being more intense. Sitting down on the edge of the bed, you endure the way he almost crushes your fingers when the contractions are especially strong, meanwhile wiping the sweat off his brow then putting your other hand on his shoulder. It won't be long now. The skin of the ill-fated researcher's belly stretches and bulges a little as whatever is inside him starts to shift, getting itself into position to be born.";
		WaitLineBreak;
		say "     And it is just in time too, as the man lets out an almost shouted groan, then clenches his teeth together as he strains to push and push again. Down between his legs, the opening of his vagina stretches a little more, then three flexible appendages worm their way out of his body, feeling around and searching for something to hold on to. The tentacles do slither around between the folds of the bunched-up blankets until finally one attaches itself to the herm's left leg with a row of little suckers, finding a hold at last. Two more of them seem a bit lost even then, and as you watch, something about the situation does make you want to help a bit more actively - so you nudge them in the right direction with your fingers, carefully avoiding the suckers. Soon, all of the fleshy appendages have found a spot to hold on to or wrap around (the pregnant herm's thighs and one knee too), allowing the emerging creature to pull in concert with its parent's contractions.";
		say "     A moment later, the next big push reveals the creature's head, looking... almost disturbingly cute, with relatively human features, large all-black eyes and what looks more like little tentacles than hair. As you meet its gaze, you're surprised about the intelligence and intensity of it and you somehow just know that this little tentacled newborn isn't an it - but a he. The small creature blinks at you in what you're sure is satisfaction, then he turns his attention back to his current predicament - half in, half out of a stretched pussy. After that, things proceed very fast, as he repositions his tentacles for a much improved grip, then pulls out of the moaning herm in a wet slurp of slick flesh and wiggling tentacles. As soon as the small creature is fully born, the former researcher pulls him into his arms, guiding the small-ish head to his chest and nipples.";
		WaitLineBreak;
		say "     In the typical rapid growth the nanites seem to be imposing almost universally these days, the young creature develops in leaps and bounds before your very eyes. Baby, toddler and kid stages are skipped in literally seconds, with growth only slowing down as he is almost as large as his herm 'mother' and nears physical maturity - giving a striking image of a young man indeed. His body did differentiate quickly from consisting mostly of tentacles to being just about half-human - the crossover point being his hips, with many tentacles below forming his 'legs'. The hybrid being nevertheless has a sexy bubble butt and good-sized dick, and above that a well-shaped if not overly muscular chest. The only thing about his handsome face not completely human is the iris-less black eyes, while lots of small tentacles form 'hair' on top of his head. A short while later, after finally finished with alternating between his parent's left and right nipple, the tentacled young man soon pushes himself up into a sitting position on the bed, then clears his throat and speaks for the first time.";
		say "     'Thank you, parent. I will cherish the memories of being in you - with you - but that time is over. Sleep. Now.' Using several tentacles to catch the naked herm as he instantly falls unconscious, the tentacled youth lowers him gently to the bed, then turns his attention to you. 'Greetings. I know your mind-taste. You have visited before,' he says, then draws his mouth into a first experimental smile. 'You may call me Alpha, as I am the firstborn of my progenitor. I know you have met him too...' Alpha says and [if carried of mindshield helmet is 0]you see a flash of the Thought Eater in your mind, his hairless head glistening wetly and four mouth-tentacles twitching with disconcerting sudden moves[else]mimes having a quartet of mouth-tentacles by bending some of his own upwards. It is clear he refers to the Thought Eater[end if]. A cold shiver runs down your spine at the memory, and Alpha nods in agreement. 'Exactly. He is the reason I had to put my other parent here to sleep for now,' the young man explains and pats the peacefully dozing herm's chest.";
		WaitLineBreak;
		say "     Indicating the blond researcher that gave birth to him just moments ago, Alpha explains, 'If you are as far gone as him, there is nothing my progenitor will not know as soon as he steps into range to taste his mind glow. And I can't let him know what we talk about - you see, the... early emergence was timed just so he wouldn't be here.' Focusing on you with an intense gaze, Alpha continues, 'He wanted to overwhelm my mind before it stabilized, make this body nothing but an extension of himself. But I have other plans.' With that said, the young man rises from the bed, effortlessly using his many tentacles as legs to come stand before you, face to face. 'It is time to leave here, hide until I am strong enough to fend him off, at a minimum. And I need a place to hole up.' [if carried of mindshield helmet is 0]Suddenly his voice continues to speak in your mind instead, 'I could just make you, but I wanna experiment a bit, see if I can find a helping hand without.'[else]A tentacle arches up to tap your helmet gently. 'I could just snatch that thing off and make you, but I wanna experiment a bit, see if I can find a helping hand without.'[end if]";
		say "     So what do you say? Invite this tentacled mind-reader into the library?";
		if player consents:
			say "     <Sorry, this is still WIP>";
		else:
			say "     <Sorry, this is still WIP>";
	else: [keep your distance]
		LineBreak;
		say "     Something tells you that you could at least make it a little more comfortable for him, but you can't bring yourself to move closer to the pregnant herm and be part of the unnatural act going on right before your eyes. As you don't react to several long seconds of being given pleading looks, the panting man lets his hand drop again, snatching a handful of the blanket hanging from the bed and digging his fingers into that instead. The contractions are coming faster and faster now, as well as being more intense. It won't be long now...";
		say "     Do you stay and watch?";
		if player consents: [watch]
			say "     ";
		else: [run off]
			say "     Pulling your gaze away from the spectacle, you try not to listen to the panting and labored breathing, then slip out of the cell. As soon as you are out in the hallway again, you start running and only stop when you reach the surface, leaving the weirdness of the underground lab complex far behind you.";

Underground Events ends here.
