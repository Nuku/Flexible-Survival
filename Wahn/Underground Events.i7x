Version 1 of Underground Events by Wahn begins here.

Captive Breeding is a situation.
The sarea of Captive Breeding is "Sealed";

when play begins:
	add Captive Breeding to badspots of girl;     

Instead of resolving a Captive Breeding:
	say "     Walking through the dark passages of the expansive underground warren that is in the basement of the Trevor Labs, you hear something from up ahead - moaning. Who might that be, down here in the lair of the tentacle beasts? Warily, you move closer to the source of the noise. Looking into the doorway of a storage room filled with rows of shelves, you find a woman, lying on the ground. Spread-eagled, her forearms and lower legs are stuck to the ground by some kind of substance, looking like solidified slimy goo. She's naked, and her belly bulges massively upwards in obvious pregnancy.";
	say "     Moving closer, you try talking to her, but the only answers you're getting are more gasps and moans. Judging from some clear goop smeared around her mouth, you'd guess something's been... feeding her, to keep her alive in captivity. Most likely whatever that is is laden with drugs and aphrodisiacs too, with as unfocused her eyes are right now. Your examination is interrupted by a sudden splashing noise and a gasp from the human woman. Looking down, you see a puddle of slime spread between her legs and the skin of her belly ripple with movement under it.";
	say "     [line break]";
	say "     Uh oh - seems like what's in her wants out - now! What do you do? Stay with the woman [link](1)[as]1[end link], observe what's happening - from a distance [link](2)[as]2[end link] or get the hell out of there [link](3)[as]3[end link]?";
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
			say "     [cuckold choice]";
		say "     You stroke the captive woman's hair, telling her to hold out, then leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";
	otherwise if calcnumber is 2:			[observe]
		say "     You make your way back to the hallway you came from and peek around the corner to watch what's happening in the room. The captive woman pants and gasps as contractions run through her lower body, then you see a tentacle with a whole row of suckers emerge from her pussy, taking hold of her leg to pull the rest of the creature free. Another and another follows, and soon the woman's monstrous offspring emerges with a wet, sloshing noise. It quickly scuttles off, vanishing under a shelf faster than you'd have thought.";
		say "     [line break]";
		say "     You're left looking at the human woman, lying on the floor moaning. What to do now... your thoughts wander to getting her out of here, but not knowing when (or even if) her current lust-addled state would end, you abandon that quickly. In this infested place, being burdened by a semiconscious person would surely end up getting you in deep, deep trouble. Well, at least her captor seems to keep her alive - there's still hope she can be rescued and taken care of eventually, maybe if the military moves in. Though how many monsters will be bred in her in the meantime you can only wonder about.";
		if cocks of player > 0 and libido of player > 40:		
			say "     [cuckold choice]";		
		say "     [line break]";
		say "     You leave and make your way through the creepy dark tunnels, back towards the surface. As you move along, unidentified noises around and behind you make you speed up, then run, until you reach the entrance of the cellar and throw the door closed behind you, breathing heavily.";		
	otherwise:												[leave]
		say "     This is getting way to creepy for you. You flee back up to the surface, followed by the echoing moans and sounds of the captive woman's unnatural birth.";  	
	now Captive Breeding is resolved;
	
to say cuckold choice:
	say "     A deviant thought worms his way into your head, coupled with a twitch of your cock. There is one way you could... preempt the tentacle monster impregnating her with more of its offspring. But no, you couldn't just knock her up - or could you? ";
	say "     [line break]";
	if player consents:
		say "     'It's for her own good.' echoes as a somewhat lame excuse for your actions through your horny mind as you slip off your clothes and stroke your cock to full hardness. Then you kneel between the woman's legs and bring your erection to her opening, still wet with slimy goo. She moans in arousal as she feels your cockhead against her pussy lips, then gasps as you plunge right in. Still pretty tight for just having had that creature in her - but then, it was squishy enough not to stretch her on the way out. You pump in and out of her vagina, amazed how good this feels and how full your balls feel as they get ready to blast your load into the human below you. The creature's slime lubing your shaft as it thrusts deep might have something to do with that...";
		say "     But no matter, your thoughts are fully absorbed with cuckolding the tentacle monster here and now. Speeding up your movements more and more, you finally slam in all the way and cum, burst after burst of your seed shooting into the woman's receptive womb. There, that should mix up the tentacle breeding program a bit... breathing deeply, you pull out and get your clothes back on.";
	otherwise:
		say "     Getting your impulses under control, you shake those immoral thoughts off. This place is really getting to you, that you could even imagine doing such a thing.";
	
Trashed Refuge is a situation.
The sarea of Trashed Refuge is "Sealed";

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
The sarea of Hidden Sublevel is "Sealed";

Instead of resolving a Hidden Sublevel:
	say "     You come upon a mid-sized room with an elevator, dark and spooky like the rest of the complex under the Trevor Labs. The opposite wall from that elevator looks interesting - seems like a whole section of it was designed to slide away sideways and is currently in that position. Behind where the wall cover would be, there's a thick reinforced door, large enough to require powerful motors to open and close it. Whether this hidden entrance was constructed to keep something out - or in - it's wide open now, and without power to the building, it's stuck for good that way...";
	now Hidden Sublevel is resolved;
	now Failed Experiments is unresolved;
	now Mindshield Storage is unresolved;
	[now Holding Cell Four is unresolved;]
	
Failed Experiments is a situation. Failed Experiments is resolved.
The sarea of Failed Experiments is "Sealed";

Instead of resolving a Failed Experiments:
	say "     In the depths of the hidden section in this underground complex, you find a room with row after row of glass tanks. Small and large, they're filled with formaldehyde in which... things are preserved. From just clumps of tentacles, over animals sprouting too many limbs or even heads, to... deformed creatures which have a dismaying resemblance to humans. Seems like even before the nanite infection, unnatural things were being done in these labs. With a shiver running down your spine, you turn away from the failed experiments and make your way back to the surface, unsuccessfully trying to forget what you saw.";
	now Failed Experiments is resolved;
	
Mindshield Storage is a situation. Mindshield Storage is resolved.
The sarea of Mindshield Storage is "Sealed";

MSStorageVisited is a number that varies. MSStorageVisited usually is 0.

Instead of resolving a Mindshield Storage:
	if MSStorageVisited is 0:
		say "     In the depths of the hidden section in this underground complex, you find a storage room room with rows of shelves. They hold quite a few boxes, all of them with printed labels saying 'Mindshield 2.361'. Opening one up, you see there's a helmet in there, smooth and shiny on the outside, but with a mesh of hexagonal discs covering the inside. Do you want to take one of them with you?";
		if player consents:
			say "     Adding the shiny helmet to your pack, you make your way back to the surface.";
			increase carried of Mindshield Helmet by 1;			
		otherwise:
			say "     You can't just carry everything you find with you, so you put the helmet back in its box. After all, you could always go back here if you ever need one.";
		increase MSStorageVisited by 1;
	otherwise if MSStorageVisited is 1:				
		say "     In the depths of the hidden section in this underground complex, you find your way back to the mindshield storage room room. As before, rows of shelves hold many boxes of extra helmets. Opening one up, you have a look at the helmet in there, smooth and shiny on the outside, but with a mesh of hexagonal discs covering the inside. Do you want to take one of them with you?";
		if player consents:
			say "     Adding the shiny helmet to your pack, you make your way back to the surface.";
			increase carried of Mindshield Helmet by 1;			
		otherwise:
			say "     You can't just carry everything you find with you, so you put the helmet back in its box. After all, you could always go back here if you ever need one.";		
		increase MSStorageVisited by 1;			
	otherwise if MSStorageVisited is 2:	
		say "     In the depths of the hidden section in this underground complex, you find your way back to the mindshield storage room room. But this time - it's a chaotic mess. All around you, there are fallen shelves and cracked, splintered helmets, out of their packages. Seems like something else found this room, which didn't like the protective mindshields lying around. Digging through the chaos, you find a helmet that seems undamaged. This'll be the last one you get, though, with all the others destroyed.";
		increase carried of Mindshield Helmet by 1;
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
		
[		
Holding Cell Four is a situation. Holding Cell Four is resolved.
The sarea of Holding Cell Four is "Sealed";

Instead of resolving a Holding Cell Four:
	say "     In the depths of the hidden section in this underground complex, you come upon a door bearing the sign 'Holding Cell Four - Warning, danger of mental influence - Wear mindshield helmet before entering.'.";
	say "     <cell where the thought eater creature was held, now with a dominated scientist in a labcoat inside. maybe a preggers female, or possibly a male.>";
]
		
Underground Events ends here.