Stables Hotel by Sarokcat begins here.

"Adds a new area to Flexible Survival with a variety of NPCs."

Section 1 - A Stabled Situation
[For locating the Stables Hotel]

A Stabled Situation is a situation.
Stablesearchstatus is a number that varies.
when play begins:
	add A Stabled Situation to badspots of furry;

Instead of Resolving a A Stabled Situation:
	if Stablesearchstatus is 0:
		say "     Wandering through the streets of the city, you hear a strange noise echoing through the streets, like the sound of numerous hooves hitting the sidewalk repeatedly. As the sound seems to be getting closer, you decide to take cover inside of a nearby abandoned car, peeking out through the windows carefully to see just what is making such a racket. You appear to have gotten under cover just in the nick of time, as a small group of horse-like men come trotting down the street, their equine faces scanning the street carefully as they continue along, most likely looking for a new playmate or two.";
		say "     The horsemen pass your hiding spot without noticing you fortunately, and continue on their way down the streets. Getting out of the car carefully, you find yourself curious as to just where such a group of horses came from, and after considering for a minute, you follow them to find out, only to sigh as you realize that as alert as that group was, trying to follow them would likely only result in you getting caught by them.";
		now Stablesearchstatus is 1;
	else if Stablesearchstatus is 1:
		say "     As you wander throughout the city, you once again hear the clopping of a number of hooves on the pavement, and recalling the last group of horsemen that you saw, you immediately begin looking for a safe hiding spot. You barely make it into cover before a smaller group of horsemen appear down the street. This bunch, however, appears much less vigilant and more relaxed as they focus on something in the middle of the group. Looking out carefully as they pass by, you find yourself staring in surprise at a relatively large group of captives in the center of the crowd, bound together with leather harnesses as they are being led down the street.";
		say "     Many of the captives are already starting to display several equine features as they stumble along. A closer look at the captives as they stagger off has you realizing that they are wearing the remains of what were obviously military uniforms, obviously a patrol of some sort that the horsemen managed to capture. Not wanting to fight with a group that could manage to capture a military patrol, you let the beasts pass, however, you also realize that this is a perfect opportunity to follow the beasts to see where they are going while their attention is focused on their captives. You follow the horsemen and their captives at a discrete distance as they make their way through the dangerous streets of the city, sometimes having to duck down dark alleyways to not be noticed.";
		say "     Finally, after what seems like forever, the long nerve-wracking trip comes to an end near the Red Light District, as the horsemen lead their captives through the side entrance of what appears to be an old hotel complex. The building looks like it was built some time around the turn of the twentieth century, and has certainly seen better days. The large building seems more like an insane asylum than a luxury hotel now, with its large multi-story main building and the two slightly shorter wings, which appear to have been added at some later date. Flanking the entrance are two more of the horsemen, obviously there to keep out the riffraff, though with only two of them, perhaps you could try to bribe your way inside.";
		say "     [bold type]Do you try to gain entrance to the building?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Try to convince the guards to let you in.";
		say "     ([link]N[as]n[end link]) - Don't risk dealing with the horses.";
		if player consents:
			LineBreak;
			say "     Investigating the area, you realize that the only way in appears to be the one the horses are guarding, and that from the numbers you saw heading into the building, fighting the guards will only get you overwhelmed by more of the horsemen, even if not at first, then on any subsequent visits that you might make. Looking at the large building speculatively, you realize that if you want to get in, you will have to find some way to bribe the guards into looking the other way each time you visit. You begin searching through your pack as you approach the doors to see if you have anything that the guards might be willing to take in trade.";
			if chips is owned and soda is owned:
				say "     Searching through your pack, while the two horsemen eye you curiously, you pull out several items to see how they react, only to be disappointed each time as they continue to watch you with suspicion. Finally, your pack is almost empty by the time you pull out some chips and soda, and you notice the horsemen lick their lips and shift on their hoof-like feet as they seem to realize just how hungry guard duty has made them. Grinning, you offer the snack food to the guards, only to pull it back when one of them reaches for it, gesturing at the closed door between the two guards as you give them a questioning look. The horsemen sigh as they glance at each other for a minute, before nodding at you, and one of them waves you on inside as you hand them the junk food to share. As you enter, you hope that they will pass the word to the next group of guards as well, since you would rather not have to go through that every time you come here.";
				delete chips;
				delete soda;
				Move player to The Stables Hotel;
				now battleground is "void";
				Now The Stables Hotel is known;
				now A Stabled Situation is resolved;
			else:
				LineBreak;
				say "     Sighing as you search through your pack, the two guards look on with increasing amusement as you pull out things to try to tempt them with. After several futile minutes of this, you realize that you probably don't have anything the guards would like right now, and that if you want to get into this strange looking place, you will need to come back later. Maybe with some chips and soda or something. Everyone likes snack food, right?";
				now Stablesearchstatus is 2;
		else:
			say "     Deciding that it might be best just to leave while you can, you make note of the imposing building's location and head back to the Library for now.";
			now Stablesearchstatus is 2;
	else if Stablesearchstatus is 2:
		say "     Wandering through the city, you find your mind increasingly drawn to those strange horsemen that you encountered earlier, and on impulse, decide to take another look at the strange building where they were taking their captives. Returning to the large fortress-like hotel building, you wonder just how bad things were in this district that the owner would take such obvious security measures when they were building a 'pleasure hotel' in this area, though the easy access to all of the pleasures and perils of the Red Light District nearby probably is more than enough of an answer.";
		say "     You note that the building and grounds still seem to be guarded by a couple of those powerful horsemen as you look things over again to see if you missed anything the last time you were here. Sighing as you investigate the area, you realize that the only way in appears to be the one the horses are guarding, and that from the numbers you saw heading into here earlier are any indication, fighting the guards will only get you overwhelmed by more of the horsemen, even if not at first, then on subsequent visits. Looking at the large building speculatively, you realize that if you want to get in, you will have to find some way to bribe the guards into looking the other way each time you visit.";
		say "     [bold type]Do you try bribing the guards?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Try to convince the guards to let you in.";
		say "     ([link]N[as]n[end link]) - Don't risk dealing with the horses.";
		if player consents:
			if chips is owned and soda is owned:
				LineBreak;
				say "     You begin searching through your pack as you approach the doors, the two horsemen eyeing you curiously, as you pull out several items to see how they react, only to be disappointed each time as they continue to watch you with suspicion. Finally, your pack is almost empty by the time you pull out some chips and soda, and you notice the horsemen lick their lips and shift on their hoof-like feet as they seem to realize just how hungry guard duty has made them. Grinning, you offer the snack food to the guards, only to pull it back when one of them reaches for it, gesturing at the closed door between the two guards as you give them a questioning look. The horsemen sigh as they glance at each other for a minute, before nodding at you, and one of them waves you on inside as you hand them the junk food to share. As you enter, you hope that they will pass the word to the next group of guards as well, since you would rather not have to go through that every time you come here.";
				delete chips;
				delete soda;
				Move player to The Stables Hotel;
				now battleground is "void";
				Now The Stables Hotel is known;
				now A Stabled Situation is resolved;
			else:
				LineBreak;
				say "     You begin searching through your pack as you approach the doors, the two horsemen eyeing you curiously and with increasing amusement as you pull out things to try to tempt them with. After several futile minutes of this, you realize that you probably don't have anything the guards would like right now, and that if you want to get into this strange looking place, you will need to come back later. Maybe with some chips and soda or something. Everyone likes snack food, right?";
		else:
			say "     Deciding that maybe it would be best to just ignore this place and whatever secrets lie inside for now, you shoulder your pack and continue on your way.";


Section 2 - The Stables Hotel

Stables Hotel is a room. It is fasttravel. It is private.
Hotel Stable is a room.
Hotel Stalls is a room.

The description of Stables Hotel is "     The lobby of this large sprawling building seems to be in surprisingly good repair. The room is lit by fashionable oil lamps lining the walls, filling the room with a warm light and illuminating the reception area. The reception desk is currently empty, although someone has set up an obviously handwritten sign that welcomes new visitors to 'The Stables' and asks that they ring the bell for service. Unfortunately, there doesn't appear to be a bell here to ring right now. A smaller sign is set on the other edge of the desk, advising all customers to please have payment ready when they enter the area.".


Northeast of Stables Hotel is Hotel Stalls.
West of Stables Hotel is Employee Access.

The invent of The Stables Hotel is { "lucky horseshoe" , "lucky horseshoe" }.

Stable Entry is a door. "The lobby trails off to the north where a series of elevators and large double doors can be seen.". It is dangerous.

North of Stable Entry is Hotel Stable.
North of The Stables Hotel is Stable Entry.

The marea of Stable Entry is "Stable".

instead of sniffing Stables Hotel:
	say "The air here is thick with the scents of many equines. Arousal and sex is strong in the air as well.";

instead of sniffing Hotel Stalls:
	say "This lobby area smells strongly of equine sex coming from the nearby rooms.";

The description of Hotel Stalls is "     This room appears to be the small lobby to one of the guest wings, and while it looks like the main part of the building is still mostly boarded up, this part appears to have been repaired recently, and halls to the north and south appear to have been refurbished for use. Strangely enough, someone seems to have hung a sign in this area, labeling this particular area 'The Stalls'.".

North of Hotel Stalls is Mares Quarters.
South of Hotel Stalls is Holding Pens.


Mares Quarters is a room.

The description of Mares Quarters is "     This rather large hall leads to a large open room, with several smaller rooms opening up onto it. Someone has set out quite a bit of food on the side of the room, and a few mares are browsing the selection absently when you come in. A small desk has been set up near the entry, and a rather amused-looking white mare wanders over to the desk and looks you up and down as you approach.".
Fancy is in Mares Quarters.
Daisy is in Mares Quarters.
Feeding Table is in Mares Quarters.

Feeding Table is a man.
The description of Feeding Table is "     A large table has been set up to the side of the room, and it appears to have several different varieties of food set out on it. Perhaps not surprisingly, most of the food is of the type most attractive to horses, with several different types of oatcakes and cereals set out, as well as some chips and grain trail mixes. There is also a small bowl of what appears to be labeled as 'Mare's Milk'. Looking around, you note that some of the mares are eyeing you with curiosity as you look at the table, and a few even grin as they gesture for you to 'Sample the Food'. Maybe it wouldn't hurt to 'Try the Horsefood' set out on the table?".

instead of sniffing Mares Quarters:
	say "The mares['] quarters smells strongly of mares and equine sex. While the scent of the females living here is the strongest, there is the scent of many males as well, clearly left by their aroused [']visitors['].";

instead of sniffing Feeding Table:
	say "The food on the table smells pretty good and might help with your growing hunger.";

Lastmarefed is a number that varies. Lastmarefed is usually 250.
marefed is a number that varies. marefed is usually 0.

Marefeeding is an action applying to nothing.

Understand "Try the Horsefood" as Marefeeding.
Understand "Try Horsefood" as Marefeeding.
Understand "Sample the Food" as Marefeeding.
Understand "Sample food" as Marefeeding.
Understand "Sample Horsefood" as Marefeeding.

Check Marefeeding:
	If Feeding Table is not visible, say "huh?" instead;

Carry out Marefeeding:
	if Lastmarefed - turns < 8:
		say "     You wander over to the table filled with food for the mares again, only to see several of the mares shooting you rather dirty looks as you look over the food. Sighing slightly, you decide that being greedy about the food isn't worth annoying the so far polite horsewomen, and decide to try to snag some of the food again at a later time.";
	else:
		say "     Wandering over to the table filled with food on the side of the room, you notice that several of the mares seem quite amused as you browse the selection, a few even coming over to help. The mares select several different bits of food for you to try, all the while giggling to themselves as you enjoy the strangely flavorful food selections. By the time the mares let you go after you have sampled at least a bite or two of most of the dishes set out on the table, you are definitely starting to feel a bit strange yourself, and definitely horny from all of the attention the mares have been giving you.";
		PlayerEat 10;
		infect "Mareslut";
		increase libido of player by 20;
		if libido of player > 100, now libido of player is 100;
		decrease humanity of player by 5;


Holding Pens is a room.

The description of Holding Pens is "     This area seems to be a rather large hallway, with several open doors leading into small cell-like rooms that are all mostly unoccupied, though the smell of equine musk lingers strongly in the air. Strangely enough, all of the rooms seem to have been modified with small bars to make them hard to escape from. [if XP of Onyx < 3]Interestingly enough, one of the cells at the end of the hallway appears to be occupied[else]Onyx's holding pen remains open, as if awaiting a new occupant[end if]. Next to it, someone has hung a handmade sign reading ['][if XP of Onyx >= 60 and XP of Onyx <= 79]Obsidian[else]Onyx[end if]['].".
Onyx is in Holding Pens.

instead of sniffing Holding Pens:
	say "The holding pen smells like a mix of human and equine scents, though the equine scents are much stronger and overpowering than the weaker human ones.";


Employee Access is a room.

The description of Employee Access is "     This long narrow hallway curves north and has several doors along the sides, eventually ending in a pair of large closed double doors labeled 'Master's Stable'. Unfortunately, most of the doors are sealed tight, and you will need to find the keys or some other way to open them before you can go any further in this direction.".

instead of sniffing Employee Access:
	say "This area smells particularly strong of the dominant, equine scents beyond.";



Stables Hotel ends here.