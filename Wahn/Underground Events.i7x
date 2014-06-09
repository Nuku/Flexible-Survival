Version 2 of Underground Events by Wahn begins here.
[ Version 2 - Captive Breeding with a male version ]

Captive Breeding is a situation.
The sarea of Captive Breeding is "Sealed".

when play begins:
	add Captive Breeding to badspots of girl;
	add Captive Breeding to badspots of guy;

CaptiveBreederEncounter is a number that varies. 

Instead of resolving a Captive Breeding:
	if a random chance of 1 in 2 succeeds:   [impregnated woman]
		say "     Walking through the dark passages of the expansive underground warren that is in the basement of the Trevor Labs, you hear something from up ahead - moaning. [if CaptiveBreederEncounter is 0]Who might that be, down here in the lair of the tentacle beasts? [otherwise]Could that be... another breeding subject of the tentacle monsters? Just how many people did they drag down here? [end if]Warily, you move closer to the source of the noise. Looking into the doorway of a storage room filled with rows of shelves, you find a woman, lying on the ground. Spread-eagled, her forearms and lower legs are stuck to the ground by some kind of substance, looking like solidified slimy goo. She's naked, and her belly bulges massively upwards in obvious pregnancy.";
		say "     Moving closer, you try talking to her, but the only answers you're getting are more gasps and moans. Judging from some clear goop smeared around her mouth, you'd guess something's been... feeding her, to keep her alive in captivity. Most likely whatever that is is laden with drugs and aphrodisiacs too, with as unfocused her eyes are right now. Your examination is interrupted by a sudden splashing noise and a gasp from the human woman. Looking down, you see a puddle of slime spread between her legs and the skin of her belly ripple with movement under it.";
		say "     [line break]";
		now CaptiveBreederEncounter is 1;		
		say "     Uh oh - seems like what's in her wants out - now! What do you do? Stay with the woman [link](1)[as]1[end link], observe what's happening - but from a distance [link](2)[as]2[end link] or get the hell out of there [link](3)[as]3[end link]?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to help with the birth, [link]2[end link] to observe or [link]3[end link] to leave.";
		if calcnumber is 1:								[stay with the woman]
			say "     Suddenly thrust into this unusual situation, you decide to do your best in helping the woman give birth to... whatever it is. Taking hold of her hand, which thankfully isn't covered by her goo bindings, you try to calm her a bit with soft-spoken words and wipe the sweat of labor off her brow. From your ringside seat, you watch a tentacle with a whole row of suckers worm its way out of the woman's vagina, followed by another and another, all of them taking hold on the floor and the woman's legs as the creature struggles to pull itself out of her womb. Helped along by the woman's contractions, soon the little tentacle monster slips out of her with a wet, sloshing noise. Then it scuttles off, vanishing under a shelf faster than you could catch it.";
			say "     [line break]";
			say "     You're left alone with the human woman, down in the sub-levels of the Trevor Labs. What to do now... your thoughts wander to getting her out of here, but not knowing when (or even if) her current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least her captor seems to keep her alive - there's still hope she can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in her in the meantime you can only wonder about.";
			if cocks of player > 0 and libido of player > 40:		
				say "[cuckold choice]";
			say "     You stroke the captive woman's hair, telling her to hold out, then leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";
		otherwise if calcnumber is 2:			[observe]
			say "     You make your way back to the hallway you came from and peek around the corner to watch what's happening in the room. The captive woman pants and gasps as contractions run through her lower body, then you see a tentacle with a whole row of suckers emerge from her pussy, taking hold of her leg to pull the rest of the creature free. Another and another follows, and soon the woman's monstrous offspring emerges with a wet, sloshing noise. It quickly scuttles off, vanishing under a shelf faster than you'd have thought.";
			say "     [line break]";
			say "     You're left looking at the human woman, lying on the floor moaning. What to do now... your thoughts wander to getting her out of here, but not knowing when (or even if) her current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least her captor seems to keep her alive - there's still hope she can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in her in the meantime you can only wonder about.";
			if cocks of player > 0 and libido of player > 40:		
				say "[cuckold choice]";		
			say "     [line break]";
			say "     You leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";		
		otherwise:												[leave]
			say "     This is getting way to creepy for you. You flee back up to the surface, followed by the echoing moans and sounds of the captive woman's unnatural birth."; 
	otherwise: 	[mpregged man]
		say "     Walking through the dark passages of the expansive underground warren that is in the basement of the Trevor Labs, you hear something from up ahead - moaning. [if CaptiveBreederEncounter is 0]Who might that be, down here in the lair of the tentacle beasts? [otherwise]Could that be... another breeding subject of the tentacle monsters? Just how many people did they drag down here? [end if]Warily, you move closer to the source of the noise. Looking into the doorway of a storage room filled with stacks of large crates, you find a man, slouched on his back on one of the crates against the back wall. His hands and forearms are stuck to the wall above his head in some kind of substance, looking like solidified slimy goo, and his legs are similarly glued to the side crate under him in a lewd stretched position that leaves his crotch and ass freely accessible. He's naked, his cock fully erect, twitching and oozing precum, and his belly bulges massively upwards in what looks to be pregnancy.";
		say "     Moving closer, you try talking to the man, but the only answers you're getting are more gasps and moans. Judging from some clear goop smeared around his mouth, you'd guess something's been... feeding him, to keep him alive in captivity. Most likely whatever that is is laden with drugs and aphrodisiacs too, with as unfocused his eyes are right now. Your examination is interrupted by a sudden splashing noise and a gasp from the human man. Looking down, you see a puddle of slime on the ground and more of it running down the side of the crate as well as dripping out of the man's asshole. The skin of his belly ripples with movement under it.";
		say "     [line break]";
		now CaptiveBreederEncounter is 1;
		say "     Uh oh - seems like what's in him wants out - now! What do you do? Stay with the man [link](1)[as]1[end link], observe what's happening - but from a distance [link](2)[as]2[end link] or get the hell out of there [link](3)[as]3[end link]?";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to help with the birth, [link]2[end link] to observe or [link]3[end link] to leave.";
		if calcnumber is 1:								[stay with the man]
			say "     Suddenly thrust into this unusual situation, you decide to do your best in helping the man give birth to... whatever it is. Putting a hand on his chest and the other on his squirming belly, you try to get through to him that he's not all alone and to calm him a bit with soft-spoken words. Wiping the sweat of labor off his brow, you watch a tentacle with a whole row of suckers worm its way out of the man's asshole, followed by another and another, all of them taking hold of the first thing they reach - be it the crate or the man's legs - as the creature struggles to pull itself out of his body. Helped along by the gasping man's contractions, soon the little tentacle monster slips out of him with a wet, sloshing noise and lands with a splat on the ground below. Then it scuttles off, vanishing in the shadows faster than you could catch it.";
			say "     [line break]";
			say "     You're left alone with the human man, down in the sub-levels of the Trevor Labs. What to do now... your thoughts wander to getting him out of here, but not knowing when (or even if) his current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least his captor seems to keep him alive - there's still hope he can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in him in the meantime you can only wonder about.";
			if libido of player > 40:		
				say "[cuckold choice male]";
			say "     You stroke the captive man's cheek, telling him to hold out, then leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";
		otherwise if calcnumber is 2:			[observe]
			say "     You make your way back to the hallway you came from and peek around the corner to watch what's happening in the room. The captive man pants and gasps as contractions run through his lower body, then you see a tentacle with a whole row of suckers emerge from his asshole, taking hold of the crate below to pull the rest of the creature free. Another and another follows, and soon the man's monstrous offspring emerges with a wet, sloshing noise and lands with a splat on the ground below. It quickly scuttles off, vanishing in the shadows faster than you'd have thought.";
			say "     [line break]";
			say "     You're left looking at the human man, slouched on the crate moaning. What to do now... your thoughts wander to getting him out of here, but not knowing when (or even if) his current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least his captor seems to keep him alive - there's still hope he can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in him in the meantime you can only wonder about.";
			if libido of player > 40:		
				say "[cuckold choice male]";		
			say "     [line break]";
			say "     You leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";		
		otherwise:												[leave]
			say "     This is getting way to creepy for you. You flee back up to the surface, followed by the echoing moans and sounds of the captive woman's unnatural birth."; 
	
to say cuckold choice:
	say "     A deviant thought worms his way into your head, coupled with a twitch of your cock. There is one way you could... preempt the tentacle monster impregnating her with more of its offspring. But no, you couldn't just knock her up - or could you? ";
	say "     [line break]";
	if player consents:
		say "     'It's for her own good.' echoes as a somewhat lame excuse for your actions through your horny mind as you slip off your clothes and stroke your cock to full hardness. Then you kneel between the woman's legs and bring your erection to her opening, still wet with slimy goo. She moans in arousal as she feels your cockhead against her pussy lips, then gasps as you plunge right in. Still pretty tight for just having had that creature in her - but then, it was squishy enough not to stretch her on the way out. You pump in and out of her vagina, amazed how good this feels and how full your balls feel as they get ready to blast your load into the human below you. The creature's slime lubing your shaft as it thrusts deep might have something to do with that...";
		say "     But no matter, your thoughts are fully absorbed with cuckolding the tentacle monster here and now. Speeding up your movements more and more, you finally slam in all the way and cum, burst after burst of your seed shooting into the woman's receptive womb. There, that should mix up the tentacle breeding program a bit... breathing deeply, you pull out and get your clothes back on.";
	otherwise:
		say "     Getting your impulses under control, you shake those immoral thoughts off. This place is really getting to you, that you could even imagine doing such a thing.";
	
to say cuckold choice male:
	setmonster "human";
	choose row monster from the table of random critters;	
	if cocks of player > 0:
		say "     Looking at the man's naked body, now that it isn't deformed by a monster's spawn inside him, you realize he's quite handsome and well-built - seems like tentacle monsters have good standards for their breeding slaves at least. A deviant thought worms his way into your head, coupled with a twitch of your cock. There is one way you could... preempt the tentacle monster impregnating his changed body with more of its offspring...";
		say "     [line break]";
		say "     But no, you couldn't just knock this guy up - or could you? ";
		if player consents:
			say "     [line break]";
			say "     'It's for his own good.' echoes as a somewhat lame excuse for your actions through your horny mind as you slip off your clothes and stroke your cock to full hardness. Then step up to stand in front of the crate, idly thinking that it's just the right height, and bring your erection to his opening, still wet with slimy goo. He moans in arousal as he feels your cockhead against his pucker, then gasps as you plunge right in. Still pretty tight for just having had that creature in him - but then, it was squishy enough not to stretch him out too much on the way out. You pump in and out of the man's tight hole, amazed how good this is and how full your balls feel as they get ready to blast your load into the human below you. The creature's slime lubing your shaft as it thrusts deep might have something to do with that...";
			say "     But no matter, your thoughts are fully absorbed with cuckolding the tentacle monster here and now. Speeding up your movements more and more, you finally slam in all the way and cum, burst after burst of your seed shooting into the transformed man's receptive insides, no doubt finding its way to a womb somewhere in him. There, that should mix up the tentacle monster breeding program a bit... breathing deeply, you pull out and get your clothes back on.";
		otherwise:
			say "     [line break]";
			say "     Getting your impulses under control, you shake those immoral thoughts off. This place is really getting to you, that you could even imagine doing such a thing.";
	otherwise:
		say "     Looking at the man's naked body, now that it isn't deformed by a monster's spawn inside him, you realize he's quite handsome and well-built - seems like tentacle monsters have good standards for their breeding slaves at least. And his well-sized cock is fully hard too. A deviant little thought rears its head inside you, telling you that you could at least give the poor guy some... relief at least, since you can't/won't free him.";
		say "     [line break]";
		say "     Will you climb on the crate with the man and ride his cock? ";
		if player consents:
			say "     [line break]";
			if cunts of player > 0:
				say "     Eager to make use of - err, give the man relief - you strip off your gear and clothes, then climb on top of the crate with him and straddle his hips. With his shaft hard and ready to go, all slick in precum, it's just a question of holding it up and sinking yourself down on his shaft. He fills you quite nicely, rubbing sensitive spots inside you as you rock back and forth, grinding your hips down against his. Fucking yourself on his hard pole, you fall into a kind of aroused trance, with sex the only thing that matters anymore. Seems like some of the aphrodisiacs that the creature fed to him wound up in his precum too...";
				say "     With the oversexed statue he already is in, it doesn't take all that long before your captive partner orgasms, trembling and moaning loudly as his cock blasts burst after burst of cum into you. Though even as he finishes cumming a short while later, his cock doesn't even begin to go down allowing you to keep riding him without pause, soon reaching your own climax, then continuing after catching your breath. In the course of quite a while of sweaty sexual grinding, he fills you with his cum several times over and you orgasm again and again, until finally your partner's head sinks back to rest against the wall and he falls into exhausted sleep. With shakey legs, you climb off him, leaving a messy trail of cum dripping from your [if cunts of player > 0]pussy [otherwise]ass [end if]as you go to collect your clothes.";
				say "     [impregchance][impregchance][impregchance]";
		otherwise:
			say "     [line break]";
			say "     Do you at least jerk him off? ";
			if player consents:
				say "     [line break]";
				say "     Putting a hand on the captive human's cock, you jerk its long hard shaft, making him give pleased moans and grunts. Fondling his balls with the other one, you can feel how full they are, no doubt put into overdrive of cum-production from his oversexed state - he really must be aching for relief. It doesn't take long before your efforts drive him to a quite messy and noisy orgasm, with the guy's erection just blasting away with spurt after massive spurt of cum splashing against his ripped chest. But even after he stops cumming with that impressively large load, he's not done by far.";
				say "     The cock in your hand shows no sign of going soft and his balls seem as full as ever, so you continue on jerking him off to another climax, and another. Finally, when he's splattered in cum all over, his shaft goes soft and with a satisfied sigh the man's head sinks back against the wall in exhausted sleep.";
			
Trashed Refuge is a situation.
The sarea of Trashed Refuge is "Sealed".

when play begins:
	add Trashed Refuge to badspots of girl;     
	add Trashed Refuge to badspots of guy;     

AbandonedRoomStatus is a number that varies. AbandonedRoomStatus usually is 0.
[0 - not seen, not searched]
[1 - seen, not searched]
[2 - seen, searched once]
[3 - seen, searched twice]
[4 - seen, searched three times]

Instead of resolving a Trashed Refuge:
	if AbandonedRoomStatus is 0:
		say "     You come upon a room in the uppermost level of the underground complex that looks like it was used by people seeking refuge from the things going on out in the city. Sadly, that doesn't seem to have worked out for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		say "     Do you want to want to search through the room? With - whatever it was - splattering its bodily fluids far and wide, there's a high risk of getting exposed to some of it.";
		if player consents:
			say "     Digging through the possessions of the refugees that were holed up here, you find several identity cards - looks like they were employees of the Trevor Labs... from the looks of it though, mostly administrative personnel. Most likely they didn't even know what was being cooked up down here.";		
			if a random chance of 1 in 2 succeeds:
				say "     Your search also reveals a bottle of water, with its seal still intact. Score!";
				increase carried of water bottle by 1;
			otherwise:
				say "     Your search also reveals an energy bar. Hmm - honey and nut flavored, in an unbroken package. Score!";
				increase carried of food by 1;
			if a random chance of 6 in 8 succeeds:
				infect "Tentacle Horror";
			increase AbandonedRoomStatus by 1;				
		otherwise:
			say "     Better not to risk touching any of those cum-stains accidentally. You leave the room and make your way back to the surface.";
	otherwise if AbandonedRoomStatus is 1:
		say "     Roaming through the underground complex you come again to the room some hapless refugees took shelter in before. It bears witness that that didn't work out too well for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		say "     Do you want to want to search through the room? With - whatever it was - splattering its bodily fluids far and wide, there's a high risk of getting exposed to some of it.";
		say "     [line break]";
		if player consents:
			say "     Digging through the possessions of the refugees that were holed up here, you find several identity cards - looks like they were employees of the Trevor Labs... from the looks of it though, mostly administrative personnel. Most likely they didn't even know what was being cooked up down here.";		
			if a random chance of 1 in 2 succeeds:
				say "     Your search also reveals a bottle of water, with its seal still intact. Score!";
				increase carried of water bottle by 1;
			otherwise:
				say "     Your search also reveals an energy bar. Hmm - honey and nut flavored, in an unbroken package. Score!";
				increase carried of food by 1;
			if a random chance of 6 in 8 succeeds:
				infect "Tentacle Horror";
			increase AbandonedRoomStatus by 1;				
		otherwise:
			say "     Better not to risk touching any of those cum-stains accidentally. You leave the room and make your way back to the surface.";
	otherwise if AbandonedRoomStatus is 2:
		say "     Roaming through the underground complex you come again to the room some hapless refugees took shelter in before. It bears witness that that didn't work out too well for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		say "     Do you want to want to give the stuff in the room another going-over? You just might have missed something. With - whatever it was - splattering its bodily fluids far and wide, there's a high risk of getting exposed to some of it though.";
		say "     [line break]";
		if player consents:
			if a random chance of 1 in 2 succeeds:
				say "     Your search brings to light a can of soda, hidden under the stained folds of a sleeping bag. Score!";
				increase carried of soda by 1;
			otherwise:
				say "     A rustling sound as you poke a pile of ragged clothes makes you look closer, digging out a bag of chips from its depths. Score!";
				increase carried of chips by 1;
			if a random chance of 6 in 8 succeeds:
				infect "Tentacle Horror";
			increase AbandonedRoomStatus by 1;				
		otherwise:
			say "     Better not to risk touching any of those cum-stains accidentally. Most likely there isn't anything more in here anyways. You leave the room and make your way back to the surface.";
	otherwise if AbandonedRoomStatus is 3:
		say "     Roaming through the underground complex you come again to the room some hapless refugees took shelter in before. It bears witness that that didn't work out too well for them. Haphazardly strewn about are a number of sleeping bags, ripped articles of clothing and all kinds of other items. Splotches of partly dried white goop all over the chaotic mess hint that one of the creatures down here came by for a visit...";
		say "     [line break]";		
		say "     As your thoughts wander to maybe searching in here a third time, you suddenly hear a noise behind you. Whirling around, you find yourself face to face with a many-tentacled creature. Looks like you're not the only one returning to this room to pick up some more goodies. With outstretched tentacles, the creature attacks.";
		challenge "Tentacle Horror";
		say "     Time to get out of here before more of those things appear. You leave the room and make your way back to the surface.";			
		now Trashed Refuge is resolved;								

Hidden Sublevel is a situation.
The sarea of Hidden Sublevel is "Sealed".

Instead of resolving a Hidden Sublevel:
	say "     You come upon a mid-sized room with an elevator, dark and spooky like the rest of the complex under the Trevor Labs. The opposite wall from that elevator looks interesting - seems like a whole section of it was designed to slide away sideways and is currently in that position. Behind where the wall cover would be, there's a thick reinforced door, large enough to require powerful motors to open and close it. Whether this hidden entrance was constructed to keep something out - or in - it's wide open now, and without power to the building, it's stuck for good that way...";
	now Hidden Sublevel is resolved;
	now Failed Experiments is unresolved;
	now Mindshield Storage is unresolved;
	now Holding Cell Four is unresolved;
	
Failed Experiments is a situation. Failed Experiments is resolved.
The sarea of Failed Experiments is "Sealed".

Instead of resolving a Failed Experiments:
	say "     In the depths of the hidden section in this underground complex, you find a room with row after row of glass tanks. Small and large, they're filled with formaldehyde in which... things are preserved. From just clumps of tentacles, over animals sprouting too many limbs or even heads, to... deformed creatures which have a dismaying resemblance to humans. Seems like even before the nanite infection, unnatural things were being done in these labs. With a shiver running down your spine, you turn away from the failed experiments and make your way back to the surface, unsuccessfully trying to forget what you saw.";
	now Failed Experiments is resolved;
	
Mindshield Storage is a situation. Mindshield Storage is resolved.
The sarea of Mindshield Storage is "Sealed".

MSStorageVisited is a number that varies. MSStorageVisited usually is 0.

Instead of resolving a Mindshield Storage:
	if MSStorageVisited is 0:
		say "     In the depths of the hidden section in this underground complex, you find a storage room room with rows of shelves. They hold quite a few boxes, all of them with printed labels saying 'Mindshield 2.361'. Opening one up, you see there's a helmet in there, smooth and shiny on the outside, but with a mesh of hexagonal discs covering the inside. Do you want to take one of them with you?";
		if player consents:
			say "     Adding the shiny helmet to your pack, you make your way back to the surface.";
			increase carried of mindshield helmet by 1;			
		otherwise:
			say "     You can't just carry everything you find with you, so you put the helmet back in its box. After all, you could always go back here if you ever need one.";
		increase MSStorageVisited by 1;
	otherwise if MSStorageVisited is 1:				
		say "     In the depths of the hidden section in this underground complex, you find your way back to the mindshield storage room room. As before, rows of shelves hold many boxes of extra helmets. Opening one up, you have a look at the helmet in there, smooth and shiny on the outside, but with a mesh of hexagonal discs covering the inside. Do you want to take one of them with you?";
		if player consents:
			say "     Adding the shiny helmet to your pack, you make your way back to the surface.";
			increase carried of mindshield helmet by 1;			
		otherwise:
			say "     You can't just carry everything you find with you, so you put the helmet back in its box. After all, you could always go back here if you ever need one.";		
		increase MSStorageVisited by 1;			
	otherwise if MSStorageVisited is 2:	
		say "     In the depths of the hidden section in this underground complex, you find your way back to the mindshield storage room room. But this time - it's a chaotic mess. All around you, there are fallen shelves and cracked, splintered helmets, out of their packages. Seems like something else found this room, which didn't like the protective mindshields lying around. Digging through the chaos, you find a helmet that seems undamaged. This'll be the last one you get, though, with all the others destroyed.";
		increase carried of mindshield helmet by 1;
		now Mindshield Storage is resolved;
		
Table of Game Objects (continued)
name	desc	weight	object
"mindshield helmet"	"A shiny silver helmet. It's too light to have its primary use being deflecting blows - but maybe the mesh on the inside could ward of other, less physical, attacks."	1	mindshield helmet
		
mindshield helmet is equipment.
It is not temporary.
The AC of mindshield helmet is 10.
The effectiveness of mindshield helmet is 40.
The placement of mindshield helmet is "face".
The descmod of mindshield helmet is "A shiny silver helmet rests atop them.".
The slot of mindshield helmet is "head". 		
		

Holding Cell Four is a situation. Holding Cell Four is resolved.
The sarea of Holding Cell Four is "Sealed".
CellFourVisits is a number that varies.

Instead of resolving a Holding Cell Four:		[repeatable event]
	if CellFourVisits is 3:  [the thought eater checks out who's been visiting his slave]
		say "     As you make your way towards holding cell four again, seeing the red warning light at its door down the hallway in front of you, you suddenly hear a hissing voice say 'Do you enjoy visiting my favorite pet? I can make you just like him...'";
		say "     [line break]";
		setmonster "Thought Eater";
		choose row monster from the table of random critters;
		now area entry is "Sealed";			
		challenge "Thought Eater";
		increase CellFourVisits by 1;		
	otherwise:
		say "     In the depths of the hidden section in this underground complex, you come upon a door bearing the sign 'Holding Cell Four - Warning, danger of mental influence - Wear mindshield helmet before entering.' A red light (which must be on emergency power) glows on the wall next to the word 'unlocked'.";
		if carried of mindshield helmet is 0:
			say "     That warning doesn't sound too good - and you do not have such a protective helmet. Do you really want to go in there?";
			if player consents:
				say "     Fate favors the brave... so you boldly stride ahead and pull open the cell door and step inside.";
				say "     [line break]";
				say "     [Inside Cell Four]";
				increase CellFourVisits by 1;
			otherwise:
				say "     Better safe than sorry... who knows what might be lurking in that cell. Leaving it behind you, you rush through the dark and creepy corridors, making your way back to the surface.";
		otherwise:
			say "     Following the warning, you make sure that you have your protective helmet on your head before pulling open the cell door and stepping inside.";
			say "     [line break]";
			say "     [Inside Cell Four]";
			increase CellFourVisits by 1;

to say Inside Cell Four:
	say "     What you find behind the door is a moderately sized room holding a table, chairs, a bookshelf and a cot in the far corner. Torn-up paper is scattered about, intermixed with shreds of clothing and the broken shards of what appears to have been a shining silver helmet. While you are still busy taking in the scene around you, the blanket on the cot gets pulled aside, revealing the naked body of a person who stands up and takes a few steps towards you. It's a man with a slender build, mid-length blond hair and a rather handsome face.";
	say "     [line break]";
	say "     'Have you seen the master? Will he come soon? I've been waiting for his return, as ordered.' you hear the lightly bearded man say, a somewhat dazed look in his eyes. Letting your looks wander lower, you see that he's not... just a man anymore. Under a half-hard erection, there's an additional pussy between his legs - and a fully functional one, judging from the noticeable bulge of the hermaphrodite man's stomach. He's been impregnated with... something. Coming to stand before you, oblivious to his own nakedness, the man stares blankly, waiting for your answer.";
	say "     Err - what now?";
	wait for any key;
	say "     [CellFourSex]";
	
to say CellFourSex:
	setmonster "herm human";	
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Ask what's going on here";
	now sortorder entry is 1;
	now description entry is "Get some info's.";
	now toggle entry is Cell4 rule;
	choose a blank row in table of fucking options;
	now title entry is "Search the room";
	now sortorder entry is 2;
	now description entry is "Have a look at all the stuff on the ground.";
	now toggle entry is Cell4 rule;
	choose a blank row in table of fucking options;
	now title entry is "Get the man out of there";
	now sortorder entry is 3;
	now description entry is "Take the herm up to the surface.";
	now toggle entry is Cell4 rule;
	if cunts of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Get his cock in your pussy";
		now sortorder entry is 4;
		now description entry is "Order him to fuck you.";
		now toggle entry is Cell4 rule;
	choose a blank row in table of fucking options;
	now title entry is "Get his cock in your ass";
	now sortorder entry is 5;
	now description entry is "Order him to fuck you anally.";
	now toggle entry is Cell4 rule;		
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 6;
		now description entry is "Fuck the herm guy's pussy.";
		now toggle entry is Cell4 rule;
	if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 7;
		now description entry is "Fuck the herm guy's ass.";
		now toggle entry is Cell4 rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the Cell4 rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if nam is "Ask what's going on here":
			say "[CellFour1]";
		otherwise if nam is "Search the room":
			say "[CellFour2]";
		otherwise if nam is "Get the man out of there":
			say "[CellFour3]";
		otherwise if nam is "Get his cock in your pussy":
			say "[CellFour4]";
		otherwise if nam is "Get his cock in your ass":
			say "[CellFour5]";
		otherwise if nam is "Fuck his pussy":
			say "[CellFour6]";		
		otherwise if nam is "Fuck his ass":
			say "[CellFour7]";					
		wait for any key;	
		
To say CellFour1:
	say "     'We made the master - he was our best success. His mind was strong, so strong. We thought we could control him, but then things started happening in the city and... he showed me the error of our ways. You can't believe the ecstasy of feeling him inside my mind, and also my body.' With that, the herm man's hands rise to his stomach, caressing the bulge of his pregnant belly, then slide lower to touch his cock and pussy. As he starts stroking himself, moaning in arousal, he continues with 'I carry his glorious seed now, waiting to give birth to my master's children.'";
	if carried of mindshield helmet is 0:	
		say "     ...and that's the last coherent sentence you get out of the guy. Getting into masturbating in earnest, all the while moaning about his master, the man goes back to the cot, laying down on it as he jerks his cock and fondles his pussy. You're drawn into watching him for a while, with his hands moving over his hermaphrodite body and soft tingles of arousal flooding through you at the same time. Only when he finally cums long streaks of cum all over himself and starts rubbing it into his skin do you manage to snap out of it.";
		say "     [line break]";
		say "     It was almost - as if a little voice was telling you to stay and just give yourself to the feelings and forget everything else. Maybe there's some of the creature that did this in its victims mind, trying to lull you in too? With a shudder, you decide to get out of there and run away and up through the dark corridors...";
	otherwise: 
		say "     ...and that's the last coherent sentence you get out of the guy. Getting into masturbating in earnest, all the while moaning about his master, the man goes back to the cot, laying down on it as he jerks his cock and fondles his pussy. You're drawn into watching him for a while, with his hands moving over his hermaphrodite body, then shake your starting arousal off. Staying here until whatever made that guy into this obedient slave doesn't sound like a good idea, so you leave and make your way back to the surface.";

To say CellFour2:
	say "     Ignoring the man for the moment, you turn your attention to the trash and shreds lying on the ground. There's lots of pieces that seem to have been the herm man's clothing - jeans and a ragged lab-coat, and also many many paper bits with writing on them. Looks like there was the Trevor Labs logo in the upper left corner of all the pages and many of them seem to be just a lot of numbers and jumbled collections of letters - maybe it's genetic code or something. With a bit of patience, you can piece together some interesting bits from among the rest: '...ubject X31, hum...' '...us hybrid, telepathic abilities present.' '...ile the subject is a complete success in regards to...' '...controlling it remains a pr...' 'Implantation of a control device might be the only option, if those prove themselves in the tests with the new infiltratio...'";
	say "     [line break]";
	if carried of mindshield helmet is 0:	
		say "     Your concentration for further puzzling is broken when the herm man on the cot suddenly gasps in lust, fingering his pussy while shouting 'Master! I can feel your presence and wait to pleasure you. And there is a visitor too...' Eeep. You don't know what range the abilities of the creature have that made this man its slave, but it's clearly time to go. Rushing to the door, you leave the cell and run, only stopping when you reach the surface and feel a bit safer than in the dark depths of the underground.";
	otherwise: 
		say "     Your concentration for further puzzling is broken when the herm man on the cot suddenly gasps in lust, fingering his pussy while shouting 'Master! I can feel your presence and wait to pleasure you. And there is a visitor too...' Eeep. Even though you got a protective helmet against the creature's influence, confronting it right in its lair might not be the best idea. It'd surely use its slave against you in a fight too. You don't know what range the abilities of the creature have that made this man its slave, but it's clearly time to go. Rushing to the door, you leave the cell and run, only stopping when you reach the surface and feel a bit safer than in the dark depths of the underground.";		

To say CellFour3:
	say "     You step forward and take the man by his arm, trying to guide him to the door and to safety while saying 'Let's get you out of here away from the monstrous creatures infesting these halls.' For a moment, conflicting thoughts seem to be clashing against each other behind the herm man's eyes, then one side wins out against the other and he pulls away from the entrance again and winds his arm out of your grip. 'How can you say such things about the master! He is beautiful - his hairless body and tentacles are perfection. Something to worshipped and loved. I - I have to wait here for him. Please him. Bear his children.' One hand protectively on his bulging stomach, the man walks back towards the cot in the far corner of the room.";
	say "     Doesn't look like you can get him out of here willingly. And dragging a kicking and screaming person with you who attracts all kinds of critters isn't an option either. Oh well, with as found up as the guy is right now, there's nothing else to be done - he won't listen to anything you say at the moment. For now, you have to leave him where he is and hope he calms down until you come here next time. Leaving the cell behind, you make your way back up to the surface through the dark underground corridors."; 
		
To say CellFour4:		
	say "     'I'm a... friend of your master. He said I could have some fun with you.' Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, you remark 'And you're well trained for this, aren't you? Come on, show me how you would please your master.' The brainwashed man moans as you stroke him, a drop of precum forming at the tip of his cock. 'Of... *Gasp* course, anything for *moan* the master and his friends. What do you want me to do?' comes his answer to your request.";
	say "     [line break]";	
	say "     Pulling off your clothes and dropping them on the floor as you walk towards the bed in the corner of the room, you lie down on it and spread your legs and pussy lips. Accompanied by a pushing two fingers into your cunt, then licking your female juices off them, you tell him 'Fuck me - hard.' From the excited look on his face and the quickness with which he moves over to you, you don't think he got to have sex in anything but the submissive role with his master. Images of the man's ass speared on his master's cock, then later getting fucked and impregnated after he became a herm dance in front of your mental eye for a moment.";
	say "     Then you get distracted by the feeling of two hands on your legs, holding them apart as a bearded face rubs against your skin. Your herm partner runs his tongue along the inside of one leg, then the other, before moving on to your pussy and licking your sensitive nether lips. Your eager partner licks and fingers you a while, then he moves up to kneel between your legs. His erect shaft rests hotly against your pubic mound for a moment, then he takes it into his hand and guides it between your folds, sliding into you. Your passage stretches around his manhood as it is halfway in, then three quarters and finally his balls touch your ass as he bottoms out inside you. You can feel the bulge of his pregnant belly against your own as he whispers 'Is this okay?', to which you answer 'Yes. Now fuck me already!'";
	say "     [WaitLineBreak]";
	say "     Emboldened by your urgent request, the man forgets his training as a submissive fuckpet for a while, pulling back and thrusting back in deep. He's got some nice technique moving his hips a bit between separate thrusts to hit different spots inside you, expertly increasing your arousal more and more. Before the nanite infection and becoming a breeding slave, he must have quite popular with women and men that caught his eye. With him driving you to the edge of orgasm, then slowing down again to let you cool off a bit before resuming his thrusting, he certainly takes very good care of you. Being in a state of lust-filled bliss for you don't know how long, this is certainly one encounter to remember, crowned by him stimulating you to a breathtaking climax. [if cocks of player > 0]With your partner's shaft deep inside your pussy as he hammers against you, it's as if he fucks the cum right out of you, your erection spurting another blast of cum all over your chest every time he thrusts in.[otherwise if cunts of player > 0]With your partner's shaft deep inside your ass as he hammers against you, your pussy starts throbbing and dripping femcum, creating a large wet spot on the sheets between your legs.[end if]";
	say "     [line break]";
	say "     His duty to you fulfilled, the herm guy relaxes any restraint he held on himself, and after just a few more thrusts, he orgasms. You can feel his shaft throb and pulse as he comes, his fertile seed spurting deep into your womb.[fimpregchance]";
	say "     Pulling out after his last spurts go into you, the man lets himself sink down on the bed, breathing hard. A look of... clarity(?) comes to his face for a moment as he moans 'Thank you.', then it is gone again and he continues with 'Did I please the master's friend? I hope I was good enough and not out of practice. The master doesn't call onto me to do... that.' You nod, telling him he did well, then stand up and go to get your clothes. As you dress, the pregnant herm lies on the bed stroking his belly softly, then falls asleep. You leave the cell and make your way back up to the surface through the dark corridors of the underground.";
	
To say CellFour5:	
	say "     'I'm a... friend of your master. He said I could have some fun with you.' Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, you remark 'And you're well trained for this, aren't you? Come on, show me how you would please your master.' The brainwashed man moans as you stroke him, a drop of precum forming at the tip of his cock. 'Of... *Gasp* course, anything for *moan* the master and his friends. What do you want me to do?' comes his answer to your request.";
	say "     [line break]";
	say "     Pulling off your clothes and dropping them on the floor as you walk towards the bed in the corner of the room, you get on it on all fours and look back at the herm guy over your shoulder. Accompanied by a little shake of your ass, you tell him 'Fuck me - hard.' From the excited look on his face and the quickness with which he moves over to you, you don't think he got to have sex in anything but the submissive role with his master. Images of the man's ass speared on his master's cock, then later getting fucked and impregnated after he became a herm dance in front of your mental eye for a moment.";
	say "     Then you get distracted by the feeling of two hands pulling your cheeks apart, followed by a tongue licking your crack and poking against your pucker. Your eager partner licks and fingers you a while, then you feel him move around behind you and something else touches your rear entrance. After rubbing his hard shaft up and down between your cheeks a moment, the man pushes in against your pucker, slowly but steadily spreading it with his cockhead. Soon your passage is stretched around his manhood as it is halfway in, then three quarters and finally his balls touch your ass as he bottoms out inside you. You can feel the bulge of his pregnant belly against your back as he whispers 'Is this okay?', to which you answer 'Yes. Now fuck me already!'";
	say "     [WaitLineBreak]";
	say "     Emboldened by your urgent request, the man forgets his training as a submissive fuckpet for a while, pulling back and thrusting back in deep. He's got some nice technique moving his hips a bit between separate thrusts to hit different spots inside you, expertly increasing your arousal more and more. Before the nanite infection and becoming a breeding slave, he must have quite popular with women and men that caught his eye. With him driving you to the edge of orgasm, then slowing down again to let you cool off a bit before resuming his thrusting, he certainly takes very good care of you. Being in a state of lust-filled bliss for you don't know how long, this is certainly one encounter to remember, crowned by him stimulating you to a breathtaking climax. [if cocks of player > 0]With your partner's shaft deep inside your ass as he hammers against you, it's as if he fucks the cum right out of you, your erection spurting another blast of cum onto the sheets every time he thrusts in.[otherwise if cunts of player > 0]With your partner's shaft deep inside your ass as he hammers against you, your pussy starts throbbing and dripping femcum, creating a large wet spot on the sheets between your legs.[otherwise]With your partner's shaft deep inside your ass as he hammers against you, a shudder of satisfaction runs through your body, reaching every fiber of you.[end if]";
	say "     [line break]";
	say "     His duty to you fulfilled, the herm guy relaxes any restraint he held on himself, and after just a few more thrusts, he orgasms. You can feel his shaft throb and pulse as he comes, his seed spurting deep into your rear passage.[mimpregchance]";
	say "     Pulling out after his last spurts go into you, the man lets himself sink down on the bed, breathing hard. A look of... clarity(?) comes to his face for a moment as he moans 'Thank you.', then it is gone again and he continues with 'Did I please the master's friend? I hope I was good enough and not out of practice. The master doesn't call onto me to do... that.' You nod, telling him he did well, then stand up and go to get your clothes. As you dress, the pregnant herm lies on the bed stroking his belly softly, then falls asleep. You leave the cell and make your way back up to the surface through the dark corridors of the underground.";

To say CellFour6:
	say "     'I'm a... friend of your master. He said I could have some fun with you.' Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, then moving lower to stroke his pussy lips, you remark 'And you're well trained for this, aren't you? Come on, show me how you would please your master.' The brainwashed man moans as you stroke him, his pussy getting wet under your fingers. 'Of... *Gasp* course, anything for *moan* the master and his friends. Where do you want me?' comes his answer to your request.";
	say "     [line break]";
	say "     Do you want to take him on the bed (Y), or rather against a wall from behind (N)?";
	if player consents:
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you slowly walk him backwards to the bed in the far corner, then give him a slight push to fall back on it. With his naked form lying before you, legs spread invitingly, you hastily strip off your clothes and free your raging hardon. Getting on the bed, you rub your cock against his for a moment and stroke them together, then aim at the ready opening below. With a quick thrust of your hips, you bury your shaft all the way in the herm's vagina, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something inside your partner's belly, and after a few more thrusts something bumps back. As horny and concentrated on fucking as you are, you don't give it much attention - until suddenly you feel something (small tentacles?!) wrap around your shaft and strokes it. The thought 'Wow, this feels amazing.' goes through your head and you speed up your thrusts even more, your orgasm quickly approaching as you get jerked off while fucking. Then finally, as the man under you gasps as he reaches his own climax, with his pussy trembling around your manhood and his legs wrapping around you to hold you close, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's, hands digging into the sheets and mattress as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's womb while he squirts his load over himself.";
		say "     [WaitLineBreak]";
		say "     After your orgasm winds down, you feel the being inside milk the last spurts out of your softening erection. As you pull out and go to grab your clothes and gear, the herm guy just lies on his back, breathing hard, and wipes the sweat off his brow. Then his hands move down to his bulging belly, rubbing the cum on his chest into the skin and caressing it. 'The master's child tells me he likes your taste. He'll remember it and asks that you come visit him again soon.' After that, the man falls asleep, satisfied and exhausted.";
		say "     You're left standing before the bed, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake out of it and get dressed. This might get rather strange and interesting before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";
	otherwise:
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you slowly walk him over to the nearest wall, then tell him to bend over and stand against it. With his naked form before you, ass presented as he stands with his hands against the wall and his legs spread to invitingly show the pussy between them, you hastily strip off your clothes and free your raging hardon. Stepping up behind him, you rub your cock up and down between his cheeks and playfully push against his pucker a moment before moving on to the ready opening further down. With a quick thrust of your hips, you bury your shaft all the way in the herm's vagina, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something inside your partner's belly, and after a few more thrusts something bumps back. As horny and concentrated on fucking as you are, you don't give it much attention - until suddenly you feel something (small tentacles?!) wrap around your shaft and strokes it. The thought 'Wow, this feels amazing.' goes through your head and you speed up your thrusts even more, your orgasm quickly approaching as you get jerked off while fucking. Then finally, as the man you're fucking gasps when he reaches his own climax, with his pussy trembling around your manhood, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's ass, gripping his hips tightly as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's womb while he squirts his load onto the wall and the floor.";
		say "     [WaitLineBreak]";
		say "     After your orgasm winds down, you feel the being inside milk the last spurts out of your softening erection. As you pull out and go to grab your clothes and gear, the herm keeps leaning against the wall for a moment, breathing hard, then wipes the sweat off his brow and goes to lie on the bed. With his hands moving down to his bulging belly, caressing it, he says 'The master's child tells me he likes your taste. He'll remember it and asks that you come visit him again soon.' After that, the man falls asleep, satisfied and exhausted.";
		say "     You're left standing alone, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake out of it and get dressed. This might get rather strange and interesting before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";	
	
To say CellFour7:
	say "     'I'm a... friend of your master. He said I could have some fun with you.' Stepping forward, you stroke a hand over the herm's bare chest, down over his pregnant belly and to his crotch. Jerking his erect cock a few times, then moving lower to stroke his pussy lips, you remark 'And you're well trained for this, aren't you? Come on, show me how you would please your master.' The brainwashed man moans as you stroke him, his pussy getting wet under your fingers. 'Of... *Gasp* course, anything for *moan* the master and his friends. Where do you want me?' comes his answer to your request.";
	say "     [line break]";
	say "     Do you want to take him on the bed (Y), or rather against a wall from behind (N)?";
	if player consents:
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you turn him around after getting them good and wet and start fingering his ass. Smiling at the moans you get out of him as you push first one, then two digits into him, you slowly walk him towards the bed in the far corner, then give him a slight push to fall forward on it. Prepared for what's coming for him, the man gets on all fours, arching his back to present his firm butt. Getting hard from this inviting spectacle, you hastily strip off your clothes and stroke your manhood in anticipation. Getting on the bed, you rub your cock up and down between the man's cheeks for a moment, then aim at the tight opening between them. With a quick thrust of your hips, you bury your shaft all the way in the herm guy's rear passage, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something, and after a few more thrusts something bumps back from inside his womb through the herm's inner walls. As horny and concentrated on fucking as you are, you don't give it much attention - it's just a bit of interesting extra stimulation. The thought 'Wow, this feels amazing.' goes through your head and you speed up your thrusts even more, your orgasm quickly approaching. Then finally, as the man under you gasps as he reaches his own climax, with his anal muscles twitching around your manhood and one hand reaching back to hold you against him, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's, hands gripping his hips tightly as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's rear passage while he squirts his load all over the sheets.";
		say "     [WaitLineBreak]";
		say "     As your orgasm winds down, you feel the being inside your partner still push and rub your softening erection through his inner walls. As you pull out and go to grab your clothes and gear, the herm guy moves to lie on his back, breathing hard, and wipes the sweat off his brow. Then his hands move down to his bulging belly, caressing it. 'The master's child tells me he likes playing with you. He'll remember it and asks that you come visit him again soon. Maybe more directly too...' With that, he strokes his pussy demonstratively for a moment, then falls asleep, satisfied and exhausted.";
		say "     You're left standing before the bed, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake out of it and get dressed. This might get rather strange and interesting before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";
	otherwise:
		say "     Two fingers stroking the herm guy's dripping folds and dipping into his swollen pussy, you turn him around after getting them good and wet and start fingering his ass. Smiling at the moans you get out of him as you push first one, then two digits into him, you slowly walk him over to the nearest wall, then tell him to bend over and stand against it. With his naked form before you, ass presented as he stands with his hands against the wall, you hastily strip off your clothes and free your raging hardon. Stepping up behind him, you rub your cock up and down between his cheeks and playfully push against his pucker a moment before telling him to relax and get ready. With a quick thrust of your hips, you bury your shaft all the way in the herm guy's rear passage, then start fucking in and out, filling the room with lustful grunts and moans.";
		say "     Going hard and deep, the tip of your cock bumps into something, and after a few more thrusts something bumps back from inside his womb through the herm's inner walls. As horny and concentrated on fucking as you are, you don't give it much attention - it's just a bit of interesting extra stimulation. The thought 'Wow, this feels amazing.' goes through your head and you speed up your thrusts even more, your orgasm quickly approaching. Then finally, as the man under you gasps as he reaches his own climax, with his anal muscles twitching around your manhood and one hand reaching back to hold you against him, you can't hold back anymore. With a loud lust-filled scream, you grind your hips forward against the pregnant herm's, hands gripping his hips tightly as your balls send forth their stored up load. Burst after burst of cum shoot deep into the man's rear passage while he squirts his load all over the wall and floor.";
		say "     [WaitLineBreak]";
		say "     As your orgasm winds down, you feel the being inside your partner still push and rub your softening erection through his inner walls. As you pull out and go to grab your clothes and gear, the herm guy leans against the wall for a moment, breathing hard, then wipes the sweat off his brow and goes to lie on the bed. His hands move down to his bulging belly, caressing it. 'The master's child tells me he likes playing with you. He'll remember it and asks that you come visit him again soon. Maybe more directly too...' With that, he strokes his pussy demonstratively for a moment, then falls asleep, satisfied and exhausted.";
		say "     You're left standing before the bed, still naked and with your clothes in hand. Your eyes wander over your sexual partner for a while - or partners, as you look at his bulging belly again - then you shake out of it and get dressed. This might get rather strange and interesting before it's over. With that thought in mind, you leave the cell and make your way back up to the surface through the dark corridors of the underground.";
	

Underground Events ends here.