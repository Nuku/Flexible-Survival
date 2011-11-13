Stable Related Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival set in the stables area."

Section 1- A Stabled Situation

A Stabled Situation is a situation.

Stablesearchstatus is a number that varies.

Instead of Resolving a A Stabled Situation:
	if Stablesearchstatus is 0:
		say "Wandering through the streets of the city, you hear a strange noise echoing through the streets, like the sound of numerous hooves hitting the sidewalk repeatedly. As the sound seems to be getting closer, you decide to take cover inside a nearby abandoned car, peeking out through the windows carefully to see just what is making such a racket. You appear to have gotten under cover just in the nick of time, as a small group of horselike men come trotting down the street, their equine faces scanning  the street carefully as they continue along, most likely looking for a new playmate or two. The horsemen pass your hiding spot without noticing you fortunately, and continue on their way down the streets. Getting out of the car carefully, you find yourself curious as to just where such a group of horses came from, and consider briefly for a minute following them to find out, only to sigh as you realize that as alert as that group was, trying to follow them would likely only result in you getting caught by them.";
		now Stablesearchstatus is 1;
		stop the action;
	if Stablesearchstatus is 1:
		say "As you wander throughout the city, you once again hear the clopping of a number of hooves on the pavement, and recalling the last group of horsemen you saw, you immediately begin looking for a safe hiding spot.  You barely make it into cover before a smaller group of horsemen appear down the street, this group however appears much less vigilant, and more relaxed as they focus on something in the middle of the group. Looking out carefully as the group passes you, you find yourself staring at the group in surprise, as you realize why most of the equine mens attention is focused towards the center of the group.  In the middle of the group of beasts, is a relatively large group of captives bound together with leather harnesses being led down the street, many of the captives are already starting to display several equine features as they stumble along.  A closer look at the captives as they stagger off has you realizing that they are wearing the remains of what were obviously military uniforms, obviously a patrol of some sort that the horsemen managed to capture. Not wanting to fight with a group that could manage to capture a military patrol, you let the beasts pass, however you also realize this is a perfect opprtunity to follow the beasts to see where they are going, while their attention is focused on their captives.[line break]";
		say "You follow the horsemen and their captives at a discrete distance as they make their way through the dangerous streets of the city, sometimes having to duck down dark alleyways not to be noticed. Finally after what seems like forever the long nervewracking trip comes to an end near the red light district, as the horsemen lead their captives through  the side entrance of what appears to be an old hotel complex. The building looks like it was built sometime around the turn of the twentieth century, and has certainly seen better days. The large building seems more like an an insane asylum than a luxury hotel now with it’s large multi story main building and the two slightly shorter wings which appear to have been added at some later date. Flanking the entrance are two more of the horsemen obviously there to keep out the riffraff, though with only two of them, perhaps you could try to bribe your way inside?  Do you try to gain entrance to the building?";
		If player consents :
			say "Investigating the area, you realize that the only way in appears to be the one the horses are gaurding, and that from the numbers you saw heading into the building, fighting the gaurds will only get you overwhelmed by more of the horsemen, even if not at first, then on any subsequent visits you might make.. Looking at the large building speculatively, you realize that if you want to get in, you will have to find some way to bribe the gaurds into looking the other way each time you visit. And begin searching through your pack as you approach the doors to see if you have anything the guards might be willing to take in trade."; 
			if "chips" is listed in invent of player and "soda" is listed in invent of player:
				say "Searching through your pack, while the two horsemen eye you curiously, you pull out several items to see how they react, only to be disappointed each time as they continue to watch you with suspicion. Finally your pack is almost empty by the time you pull out some chips and soda, and notice the horsemen lick their lips and shift on their hooflike feet as they seem to realize just how hungry guard duty has made them. Grinning you offer the snack food to the guards, only to pull it  back when one of them reaches for it, gesturing at the closed door between the two guards you give them a questioning look. The horsemen sigh as they glance at each other for a minute, before nodding at you, and one of them waves you on inside as you hand them the junk food to share. As you enter you hope they will pass the word to the next group of guards as well, since you would rather not have to go through that every time you come here.";
 				delete chips;
				delete soda;
				Move player to The Stables;
				Now The Stables is known;
				now A Stabled Situation is resolved;				
			otherwise:
				say "Sighing as you search through your pack, the two guards looking on with increasing amusement as you pull out things to try to tempt them with. After several futile minutes of this, you realize that you probably don[apostrophe]t have anything the guards would like right now, and that if you want to get into this strange looking place you will need to come back later. Maybe with some chips and soda or something, everyone likes snack food right?";
			now Stablesearchstatus is 2;
			stop the action;				
		otherwise:
			say "Deciding that it might be best just to leave while you can, you make note of the imposing buildings location, and head back to the library for now."; 
			now Stablesearchstatus is 2;
			stop the action;
	if Stablesearchstatus is 2:
		say "Wandering through the city, you find your mind increasingly drawn to those strange horsemen you encountered earlier, and on impulse decide to take another look at the strange building they were taking their captives too. Returning to the large fortress like hotel building, you wonder just how bad things were in this district that the owner would take such obvious security measures when they were building a 'Pleasure hotel' in this area, though the easy access to all the pleasures and peirls of the red light district nearby probably is more then enough of an answer. You note that the building and grounds still seem to be gaurded by a couple of those powerful horsemen as you look things over again to see if you missed anything the last time you were here. Sighing as you investigate the area, you realize that the only way in appears to be the one the horses are gaurding, and that from the numbers you saw heading into here earlier are any indication, fighting the gaurds will only get you overwhelmed by more of the horsemen, even if not at first, then on subsequent visits. Looking at the large building speculatively, you realize that if you want to get in, you will have to find some way to bribe the gaurds into looking the other way each time you visit.  Do you try bribing the gaurds?";
		if player consents:
			if "chips" is listed in invent of player and "soda" is listed in invent of player:
				say "You begin searching through your pack as you approach the doors, the two horsemen eyeing you curiously, as you pull out several items to see how they react, only to be disappointed each time as they continue to watch you with suspicion. Finally your pack is almost empty by the time you pull out some chips and soda, and notice the horsemen lick their lips and shift on their hooflike feet as they seem to realize just how hungry guard duty has made them. Grinning you offer the snack food to the guards, only to pull it  back when one of them reaches for it, gesturing at the closed door between the two guards you give them a questioning look. The horsemen sigh as they glance at each other for a minute, before nodding at you, and one of them waves you on inside as you hand them the junk food to share. As you enter you hope they will pass the word to the next group of guards as well, since you would rather not have to go through that every time you come here.";
 				delete chips;
				delete soda;
				Move player to The Stables;
				Now The Stables is known;
				now A Stabled Situation is resolved;				
			otherwise:
				say "You begin searching through your pack as you approach the doors, the two horsemen eyeing you curiously,  the two guards looking on with increasing amusement as you pull out things to try to tempt them with. After several futile minutes of this, you realize that you probably don[apostrophe]t have anything the guards would like right now, and that if you want to get into this strange looking place you will need to come back later. Maybe with some chips and soda or something, everyone likes snack food right?";
			stop the action;	
		otherwise:
			say "Deciding that maybe it would be best to just ignore this place and whatever secrets lie inside for now, you shoulder your pack and continue on your way.";
			stop the action;
		



Stable Related Events ends here.


