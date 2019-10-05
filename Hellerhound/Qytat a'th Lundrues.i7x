Version 2 of Qytat a'th Lundrues by Hellerhound begins here.
"Adds the floating city of Qytat a'th Lundrues to FS"
[Version 2.1 - Qytat Plaza made fasttravel upon arrival Stripes]

findablestairs is a number that varies.

Section 1 - Guard Gryphon Event

Table of GameEventIDs (continued)
Object	Name
Guard Gryphon	"Guard Gryphon"

Guard Gryphon is a situation.

when play begins:
	add Guard Gryphon to badspots of HermList;
	add Guard Gryphon to BadSpots of FurryList;

Instead of resolving a Guard Gryphon:
	say "     You come across a hermaphrodite gryphon, this one with a red banner with an 8-pointed silver star in the center. She is watching the sky from a rooftop, as if watching for others of her kind in the air. The guard seems to notice your nearing presence as you approach her position.";
	WaitLineBreak;
	If resolution of Guard Gryphon is 0:
		if BodyName of Player is "Blue Gryphon Herm" and Player is pure:
			say "     But soon the guard realizes that you're not just another intruder, your appearance being the same of her kind. Carefully walking towards her, you sense lack of trust and caution from the gryphoness, but she ends up lowering her guard as you come closer. 'You don't seem lost to the infection like most of my kind.' she says, but before you can explain who you are, she makes the conclusion by herself. 'You might be an outsider, but honestly... we don't really care anymore. Our kind has been lost to sex craziness after the nanites were spread among the city, so we're in dire need of sane allies.' The guard signals you to come closer, no longer in a defensive stance. 'We fear the entire species may succumb, one day... so we do our best to protect ourselves. You'll have to forgive me for my initial hostility. I'm Azure, by the way. Nice to meet you.'";
			say "     After exchanging some words between the rather kind gryphoness guard, she lets you know about her real duty, to point the new gryphons who've strayed away from the others in the city towards the location of a great staircase, ancient and powerful. Azure says it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you ask her more about the ghostly staircase that remains hidden from the outsiders, to which she reveals the fact it moves from time to time, but which comes to rest at the same spots. She gladly offers herself to escort you there, personally. There's no reason to reject such an offer, so you follow her to the mystical place, eventually ending in the flying city safely.";
			now findablestairs is 1;
			change the up exit of Red Apartment to Staircase Entry; [This opens then closes the entries...]
			change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
			change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
			change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
			move player to Qytat Plaza;
			now Qytat Plaza is known;
			now Guard Gryphon is resolved;
		else:
			say "     Seeing you coming closer, she adopts a defensive stance, looking ready to charge at you.";
			if carried of Gryphon Milk > 0:
				say "     She doesn't seem sex-crazed like the other gryphons you found. Perhaps you can negotiate a peaceful deal with a token of your deeds. Their kind attacked you plenty of times, already, and you actually managed to fetch some of their milk. [bold type]Will you attempt a diplomatic approach by showing her a bottle of Gryphon Milk?[roman type][line break]";
				Linebreak;
				say "     ([link]Y[as]y[end link]) - Show the Gryphon Milk.";
				say "     ([link]N[as]n[end link]) - Fight the Guard.";
				if player consents:
					LineBreak;
					say "     You try to tell the guard that you mean no harm, and fetch the bottle of Gryphon Milk from your inventory, explaining that you too have been a target of the ones they lost to the infection. She seems to lower her guard, giving you a few words. 'That's not enough. If you want to get by me, you'll have to be one like us. Either you accept those terms or you can leave right this moment.' Sounds like she's not open to negotiation, but at least you managed to avoid a fight until now. [bold type]Will you accept her terms, refuse and leave, or charge at her?[roman type][line break]";
					LineBreak;
					say "     [link](1)[as]1[end link] - Accept the terms and transform into a hermaphrodite Blue Gryphon.";
					say "     [link](2)[as]2[end link] - Refuse, but turn back peacefully.";
					say "     [link](3)[as]3[end link] - Just fight your way in.";
					now calcnumber is 0;
					while calcnumber < 1 or calcnumber > 3:
						say "Choice? (1-3)>[run paragraph on]";
						get a number;
						if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
							break;
						else:
							say "Invalid choice. Type [link]1[end link] accept the transformation, [link]2[end link] to leave for now or [link]3[end link] to attack the guard.";
					if calcnumber is 1:
						LineBreak;
						GryphonGuardMilkSolution;
					else if calcnumber is 2:
						LineBreak;
						say "     You're not ready to take such a drastic measure, neither you're willing to fight to find out whatever she's hiding. Respectfuly, you decline her offer, but urge her not to worry about you anymore, as you'll be leaving without any further issue. She keeps watching you from a distance as you retreat. There's always the possibility of acquiring this full tranformation yourself out in the wilds and return, or search for the Gryphon Guard and force your way by attacking her.";
						now Resolution of Guard Gryphon is 1; [left to come back later]
					else if calcnumber is 3:
						LineBreak;
						say "     You're not ready to take such a drastic measure, and leave that very clear to her. 'Well, then. If you're not leaving, you give me no choice.' These are her last words before she flies in your direction, ready to fight and drive you away.";
						GryphonGuardFight;
				else:
					LineBreak;
					say "     There's no use in trying to talk to her when you can just beat the guard out of the way. With your decision made, you take the initiative and charge at her. The gryphoness stands ready to fight and drive you away.";
					GryphonGuardFight;
			else:
				Linebreak;
				say "     It seems you have no other choice but to attempt to engage her in a conversation, though she doesn't seem inclined to do so. Understanding your intrusion as an offensive act, she flies to fight you and drive you away.";
				GryphonGuardFight;
	else if Resolution of Guard Gryphon is 1:
		if BodyName of Player is "Blue Gryphon Herm" and Player is pure:
			say "     'I see you came back! And got a whole entire transformation all by yourself, huh?' she comments, eyeing you from head to talon. 'You see, the only reason I asked you this is because we'd like to keep the place I'm about to tell you about untouched by anything that isn't our kind. We tolerate outside gryphons because our kind has been lost to sex craziness after the nanites were spread among the city, so we're in dire need of sane allies.' The guard signals you to come closer, no longer in a defensive stance. 'We fear the entire species may succumb, one day... so we do our best to protect ourselves. You'll have to forgive me for my initial hostility. I'm Azure, by the way. Nice to meet you.'";
			say "     After exchanging some words between the rather kind gryphoness guard, she lets you know about her real duty, to point the new gryphons who've strayed away from the others in the city towards the location of a great staircase, ancient and powerful. Azure says it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you ask her more about the ghostly staircase that remains hidden from the outsiders, to which she reveals the fact it moves from time to time, but which comes to rest at the same spots. She gladly offers herself to escort you there, personally. There's no reason to reject such an offer, so you follow her to the mystical place, eventually ending in the flying city safely.";
			now findablestairs is 1;
			change the up exit of Red Apartment to Staircase Entry; [This opens then closes the entries...]
			change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
			change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
			change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
			move player to Qytat Plaza;
			now Qytat Plaza is known;
			now Guard Gryphon is resolved;
		else:
			say "     'I see you came back! Does it mean you reconsidered my proposal?' She asks, however from a distance, cautiously assuming a defensive stance as you approach her. [bold type]It seems she'd still turn you into one of her kind, but fighting is always an option.[roman type][line break]";
			Linebreak;
			say "     ([link]Y[as]y[end link]) - Accept the transformation.";
			say "     ([link]N[as]n[end link]) - Fight the Guard.";
			if player consents:
				Linebreak;
				GryphonGuardMilkSolution;
			else:
				Linebreak;
				GryphonGuardFight;
	else if Resolution of Guard Gryphon is 2:
		say "     Without any words or hesitation, the gryphoness guard flies in your direction, ready to fight and drive you away.";
		GryphonGuardFight;

to GryphonGuardMilkSolution:
	say "     Looking at the options you have, you decide to accept her terms by letting her fully turn you into a Blue Gryphon. Noting your interest, she asks you to follow her over a hidden stash of transformative items. 'Have a few of these and it should do the job. If not, I have more.' she says, as you chug down everything she hands you. It doesn't take long until you start feeling the effects.";
	WaitLineBreak;
	now TailName of Player is "Blue Gryphon Herm";
	now Tail of Player is "You have a thin, leonine tail swaying over your ass. Its [Skin of Player] length has a tuft of blue fur at the end.";
	now FaceName of Player is "Blue Gryphon Herm";
	now Face of Player is "powerful beak that protrudes in a clean curve. Above, feline ears twitch and turn above your altered features";
	now SkinName of Player is "Blue Gryphon Herm";
	now Skin of Player is "[one of]soft, blue, and furry[or]softly furred[at random]";
	now BodyName of Player is "Blue Gryphon Herm";
	now Body of Player is "dramatically altered, with powerful digitigrade legs of leonine musculature, great claws on your [Skin of Player] feetpaws. Behind you, two large feathery wings flutter on occasion";
	now CockName of Player is "Blue Gryphon Herm";
	now Cock of player is "[one of]sheathed and black[or]knotted[or]dense, black[or]inhumanly bulging[at random]";
	say "     'There you go. Now you're officially one of my kind.' she says, in a rather happy tone, eyeing you from head to talon. 'You see, the only reason I asked you this is because we'd like to keep the place I'm about to tell you about untouched by anything that isn't our kind. We tolerate outside gryphons because our kind has been lost to sex craziness after the nanites were spread among the city, so we're in dire need of sane allies.' The guard signals you to come closer, no longer in a defensive stance. 'We fear the entire species may succumb, one day... so we do our best to protect ourselves. You'll have to forgive me for my initial hostility. I'm Azure, by the way. Nice to meet you.'";
	say "     After exchanging some words between the rather kind gryphoness guard, she lets you know about her real duty, to point the new gryphons who've strayed away from the others in the city towards the location of a great staircase, ancient and powerful. Azure says it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you ask her more about the ghostly staircase that remains hidden from the outsiders, to which she reveals the fact it moves from time to time, but which comes to rest at the same spots. She gladly offers herself to escort you there, personally. There's no reason to reject such an offer, so you follow her to the mystical place, eventually ending in the flying city safely.";
	now findablestairs is 1;
	change the up exit of Red Apartment to Staircase Entry; [This opens then closes the entries...]
	change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
	change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
	change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
	move player to Qytat Plaza;
	now Qytat Plaza is known;
	now Guard Gryphon is resolved;

to GryphonGuardFight:
	challenge "Blue Gryphon Herm";
	if fightoutcome < 20: [won]
		say "     Having successfully defeated the gryphoness guard, the hostilities between seemed to drop down for brief moments. You've got the chance to engage in dialogue now. The question is, [bold type]how will you address the situation?[roman type][line break]";
		Linebreak;
		say "     ([link]Y[as]y[end link]) - Try to convince the guard you mean no harm.";
		say "     ([link]N[as]n[end link]) - Demand to know what the hostilities are for.";
		if player consents: [friendly]
			Linebreak;
			say "     Curious about her odd behavior, you question the gryphoness about it. At first, she is tight-beaked about it, but you turn your voice to a calm and collected tone, telling her that you don't mean any harm and you're just worried about the gryphons in general, adding that her hostile behavior greatly concerned you. Reluctantly, she starts to talk. 'I'm only here watching for new gryphons who've strayed away from the others of my kind. My duty is to point them towards the location that'd take them to our city.' You soon learn that place is a great staircase, ancient and powerful, and she reveals that it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you press further into the subject, asking if there is anything you can do to help. 'Well... you don't seem like a bad person, so... I'll tell you. It's a ghostly staircase that moves from time to time, but it comes to rest at the same spots. My job is to tell them where to go.' She starts to describe two apartment buildings, one red and one green, as well as a bright alley which are the meeting points in this part of the city.";
			say "     'If you really want to help us, then... help us save the new gryphons that haven't succumbed yet, and tell them about us. We're in dire need of sane allies...' she says, in a clearly preoccupied manner. 'I'll give you directions in how to get there. But I swear, if you do anything that brings any harm to my kind... I'll make sure you pay for it.' Following this warning threat, she does end up giving you all the details you needed to know to enter their flying city. 'My name is Azure, by the way. Nice to meet you.' she adds before flying away, heading to another building to keep watch, with her emblem only slightly mussed as it flaps in the wind behind it. You get the feeling she'll hold you onto that deal.";
			now Qytat Plaza is known;
		else: [aggressive]
			Linebreak;
			say "     Curious about her odd behavior, you question the gryphoness about it. At first, she is tight-beaked about it, but when you quite literally grab her by the balls, she starts to talk. 'I'm only here watching for new gryphons who've strayed away from the others of my kind. My duty is to point them towards the location that'd take them to our city.' You soon learn that place is a great staircase, ancient and powerful, and she reveals that it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you force her to develop the subject. 'T-This ghostly staircase moves from time to time, but it comes to rest at the same spots! That's my job, to tell them where to go!' She starts to describe two apartment buildings, one red and one green, as well as a bright alley which are the meeting points in this part of the city. Before you can gain more specific information on all this, she takes advantage of your interest in her tale to pull free of you. The gryphoness scrambles to the edge of the building and leaps off, taking flight to escape you and leaving her standard behind. You watch her leave, wondering if there is any truth to her tale or if the infection is actually catching up to her.";
		now findablestairs is 1;
		change the up exit of Red Apartment to Staircase Entry; [This opens then closes the entries...]
		change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
		change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
		change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
		now Guard Gryphon is resolved;
	else if fightoutcome > 19 and fightoutcome < 30: [lost]
		say "     The gryphoness kicks you away without any further words and flies off, heading to another building to keep watch, with her emblem only slightly mussed as it flaps in the wind behind it. She'll mark you as an enemy from now on.";
		now resolution of Gryphon Guard is 2; [locked out of any skip]
	else if fightoutcome is 30: [fled]
		say "     With all the hostility presented by the gryphon, you decided to run away from conflict, successfully evaded the guard. If you ever encounter the herm again, you doubt a diplomatic solution will be possible.";
		now resolution of Gryphon Guard is 2; [locked out of any skip]


Section 2 - Entry Points

Table of GameRoomIDs (continued)
Object	Name
Red Apartment	"Red Apartment"

Red Apartment is a room. "     This tall, red building has a fire escape on this side. This four story apartment building looks much like many others in the city. [redflight]". It is fasttravel.
The earea of Red Apartment is "Outside".

to say redflight:
	if staircaselocation is 1:
		say "There appears to be a ghostly staircase on top of the building, almost unnoticeable unless you were searching for it. Maybe you could go up?";
		now Red Apartment is known;
	else:
		say "There is nothing else interesting about it at the moment.";

[Green Apartment Building moved to Basic Locations in Core Mechanics]

Table of GameRoomIDs (continued)
Object	Name
Bright Alley	"Bright Alley"

Bright Alley is a room. "     An alley with a silvery blue glow coming from the deeper reaches. You can faintly see that the back of the alley opens to a small hill. [brightflight]". It is fasttravel.
The earea of Bright Alley is "Outside".
Bright Alley Exit is a door. Bright Alley Exit is dangerous. The marea of Bright Alley Exit is "Outside". Bright Alley Exit is undescribed. Bright Alley Exit is west of Bright Alley. Outside Exploration is west of Bright Alley Exit.

to say brightflight:
	if staircaselocation is 3:
		say "There appears to be a ghostly staircase at the top of the hill past the alley. You would not have spotted it if you didn't know to look. Maybe you could go check it out?";
		now Bright Alley is known;
	else:
		say "There is nothing else interesting about it at the moment.";

Section 3 - The Moving Entrance

staircaselocation is a number that varies. staircaselocation is usually 0.
shadowy is a number that varies.

an everyturn rule:
	if findablestairs is 1:
		if shadowy < 4:
			say "The nearby shadows shift slightly.";
			increase shadowy by 1;
		now staircaselocation is a random number between 1 and 3;
		if staircaselocation is 1:
			change the up exit of Red Apartment to Staircase Entry;
			change the down exit of Staircase Entry to Red Apartment;
		else if staircaselocation is 2:
			change the up exit of Overgrown Rooftop to Staircase Entry;
			change the down exit of Staircase Entry to Overgrown Rooftop;
		else if staircaselocation is 3:
			change the east exit of Bright Alley to Staircase Entry;
			change the down exit of Staircase Entry to Bright Alley;

before going up from Red Apartment:
	if staircaselocation is 1:
		say "     You head up the ghostly stairs, finding them more solid than they initially appeared.";
	else if findablestairs is 1:
		say "     You scout up on the roof, but the access point the gryphon told you about isn't there." instead;
	else:
		say "     You check the rooftop quickly, but find nothing of interest at the moment and return to ground level." instead;

before going up from Overgrown Rooftop:
	if staircaselocation is 2:
		say "     You head up the ghostly stairs, finding them more solid than they initially appeared.";
	else if findablestairs is 1:
		say "     You scout for the access point the gryphon told you about, but apparently it isn't there (right now?)." instead;
	else:
		say "     Hm, you can't go up - you're on the roof already." instead;

before going east from Bright Alley:
	if staircaselocation is 3:
		say "     You head up the ghostly stairs, finding them more solid than they initially appeared.";
	else if findablestairs is 1:
		say "     You check the far end of the alley and the hilltop, but the access point the gryphon told you about isn't there right now." instead;
	else:
		say "     You check down the east end of the alley and the small hill, but find nothing of interest at the moment and return to the street." instead;


Section 4 - Qytat a'th Lundrues - The City of the Flying

Table of GameRoomIDs (continued)
Object	Name
Staircase Entry	"Staircase Entry"

Staircase Entry is a room. "     Now that you stand upon the staircase, you can see it much more clearly and it becomes solid to your eyes. The staircase stands before you, the legendary path to Qytat a'th Lundrues, the city of the flying. It is a blue silver of some higher element, and the stairs are floating, sliding a little with the slight breeze, but maintaining their orderly position. The stairs glow, and the warmth radiating from them makes you comforted and happy. You can feel a faint, unseen wall around them which grows a translucent blue as the steps spiral up into the sky. You have a feeling that this strange material is completely invisible from the outside.".

Table of GameRoomIDs (continued)
Object	Name
Stairs	"Stairs"

Stairs is a room. "     The glowing steps extend above and behind you, spiraling upwards. The faint blue material forming the concealing walls provides something to rest your hand against as you traverse the long staircase to the heavens. Looking through it, everything has a faint, bluish glow that makes everything below seem misty and unfocused, as if it is not quite real.".

Stairs is above Staircase Entry.

Table of GameRoomIDs (continued)
Object	Name
Qytat Plaza	"Qytat Plaza"

Qytat Plaza is a room. "     The ground here is the same blue as the stairs, and warm underfoot. There is a great spiral pattern on the blocks and it seems to change when you aren't looking. There are no buildings here, instead ropes hang down from tents and huts, glowing like the rest, and seemingly unsupported. These ropes are all out of reach and you can't see any signs of others up there. The only person you can see here is a male gryphon in a white uniform lounging nearby.".
Qytat Plaza is fasttravel. It is private. It is sleepsafe.


the scent of Staircase Entry is "There is a strange, otherworldly scent here.".
the scent of Stairs is "There is a strange, otherworldly scent here.".
the scent of Qytat Plaza is "This area is strong with the scent of those herm gryphons. It seems you have indeed found their home.".
the scent of Spiral Pattern is "There is a strange, otherworldly scent here.".


Qytat Plaza is above Stairs.

Spiral Pattern is a thing. "     The pattern is shifting, and it looks like a great circle, so large you cannot see the other side, with images of helixes and small spheres with arms, odd spherical bubbles with rotating balls around them, the only obvious things that change place, and what looks like a circuit diagram below all of that. It feels soft and warm, yet it doesn't give when you step. You feel creeped out.".

Spiral Pattern is in Qytat Plaza.

understand "platform" and "spiral" and "ground" as the Spiral Pattern.


Qytat a'th Lundrues ends here.
