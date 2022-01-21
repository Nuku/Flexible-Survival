Version 3 of Qytat a'th Lundrues by SgtPepper234 begins here.
"Adds the floating city of Qytat a'th Lundrues to FS"
[ Version 1 - Originally made by Hellerhound                         ]
[ Version 2.1 - Qytat Plaza made fasttravel upon arrival Stripes     ]
[ Version 3 - Rework by SgtPepper234                                 ]

[

       R-C-S
        \|/
       T-P-A
         |
         E
E = Qytat Plaza (entrance)
P = Plaza Fountain
C = Church
A = Amphitheater
T = Tavern
R = Road
S = Soup Kitchen
Ti = Timothy
]

findablestairs is a number that varies.

Section 1 - Guard Gryphon Event

Table of GameEventIDs (continued)
Object	Name
Guard Gryphon	"Guard Gryphon"

Guard Gryphon is a situation.
ResolveFunction of Guard Gryphon is "[ResolveEvent Guard Gryphon]".

when play begins:
	add Guard Gryphon to badspots of HermList;
	add Guard Gryphon to BadSpots of FurryList;

to say ResolveEvent Guard Gryphon:
	project Figure of BlueGryphon_soft_icon;
	say "     You come across a hermaphrodite gryphon, this one with a red banner with an 8-pointed silver star in the center. She is watching the sky from a rooftop, as if watching for others of her kind in the air. The guard seems to notice your nearing presence as you approach her position.";
	WaitLineBreak;
	If resolution of Guard Gryphon is 0:
		if BodyName of Player is "Blue Gryphon Herm" and Player is pure:
			say "     But soon the guard realizes that you're not just another intruder, your appearance being the same of her kind. Carefully walking towards her, you sense lack of trust and caution from the gryphoness, but she ends up lowering her guard as you come closer. 'You don't seem lost to the infection like most of my kind.' she says, but before you can explain who you are, she makes the conclusion by herself. 'You might be an outsider, but honestly... we don't really care anymore. Our kind has been lost to sex craziness after the nanites were spread among the city, so we're in dire need of sane allies.' The guard signals you to come closer, no longer in a defensive stance. 'We fear the entire species may succumb, one day... so we do our best to protect ourselves. You'll have to forgive me for my initial hostility. I'm Azure, by the way. Nice to meet you.'";
			say "     After exchanging some words between the rather kind gryphoness guard, she lets you know about her real duty, to point the new gryphons who've strayed away from the others in the city towards the location of a great staircase, ancient and powerful. Azure says it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you ask her more about the ghostly staircase that remains hidden from the outsiders, to which she reveals the fact it moves from time to time, but which comes to rest at the same spots. She gladly offers herself to escort you there, personally. There's no reason to reject such an offer, so you follow her to the mystical place, eventually ending in the flying city safely.";
			now findablestairs is 1;
			change the up exit of Red Apartment Building to Staircase Entry; [This opens then closes the entries...]
			change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
			change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
			change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
			move player to Qytat Plaza;
			AddNavPoint Qytat Plaza;
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
			change the up exit of Red Apartment Building to Staircase Entry; [This opens then closes the entries...]
			change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
			change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
			change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
			move player to Qytat Plaza;
			AddNavPoint Qytat Plaza;
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
	fullBlueGryphonHermTF;
	WaitLineBreak;
	say "     'There you go. Now you're officially one of my kind.' she says, in a rather happy tone, eyeing you from head to talon. 'You see, the only reason I asked you this is because we'd like to keep the place I'm about to tell you about untouched by anything that isn't our kind. We tolerate outside gryphons because our kind has been lost to sex craziness after the nanites were spread among the city, so we're in dire need of sane allies.' The guard signals you to come closer, no longer in a defensive stance. 'We fear the entire species may succumb, one day... so we do our best to protect ourselves. You'll have to forgive me for my initial hostility. I'm Azure, by the way. Nice to meet you.'";
	say "     After exchanging some words between the rather kind gryphoness guard, she lets you know about her real duty, to point the new gryphons who've strayed away from the others in the city towards the location of a great staircase, ancient and powerful. Azure says it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you ask her more about the ghostly staircase that remains hidden from the outsiders, to which she reveals the fact it moves from time to time, but which comes to rest at the same spots. She gladly offers herself to escort you there, personally. There's no reason to reject such an offer, so you follow her to the mystical place, eventually ending in the flying city safely.";
	now findablestairs is 1;
	change the up exit of Red Apartment Building to Staircase Entry; [This opens then closes the entries...]
	change the up exit of Overgrown Rooftop to Staircase Entry; [...allowing them all to be listed... ]
	change the east exit of Bright Alley to Staircase Entry; [...then swapping to the final one... ]
	change the down exit of Staircase Entry to Bright Alley; [...and leaving it open, just in case.]
	move player to Qytat Plaza;
	AddNavPoint Qytat Plaza;
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
			AddNavPoint Qytat Plaza;
		else: [aggressive]
			Linebreak;
			say "     Curious about her odd behavior, you question the gryphoness about it. At first, she is tight-beaked about it, but when you quite literally grab her by the balls, she starts to talk. 'I'm only here watching for new gryphons who've strayed away from the others of my kind. My duty is to point them towards the location that'd take them to our city.' You soon learn that place is a great staircase, ancient and powerful, and she reveals that it leads to some thing or some place called Qytat a'th Lundrues. Intrigued, you force her to develop the subject. 'T-This ghostly staircase moves from time to time, but it comes to rest at the same spots! That's my job, to tell them where to go!' She starts to describe two apartment buildings, one red and one green, as well as a bright alley which are the meeting points in this part of the city. Before you can gain more specific information on all this, she takes advantage of your interest in her tale to pull free of you. The gryphoness scrambles to the edge of the building and leaps off, taking flight to escape you and leaving her standard behind. You watch her leave, wondering if there is any truth to her tale or if the infection is actually catching up to her.";
		now findablestairs is 1;
		change the up exit of Red Apartment Building to Staircase Entry; [This opens then closes the entries...]
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

[Red Apartment Building moved to Basic Locations in Core Mechanics]

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
		AddNavPoint Bright Alley;
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
			change the up exit of Red Apartment Rooftop to Staircase Entry;
			change the down exit of Staircase Entry to Red Apartment Rooftop;
		else if staircaselocation is 2:
			change the up exit of Overgrown Rooftop to Staircase Entry;
			change the down exit of Staircase Entry to Overgrown Rooftop;
		else if staircaselocation is 3:
			change the east exit of Bright Alley to Staircase Entry;
			change the down exit of Staircase Entry to Bright Alley;

before going up from Red Apartment Building:
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

Staircase Entry is a room. Description of Staircase Entry is "[staircase entry desc]".
Qytat Stairs is above Staircase Entry.

To say staircase entry desc:
	say "     Now that you stand upon the staircase, you can see it much more clearly and it becomes solid to your eyes. The staircase stands before you, the legendary path to Qytat a'th Lundrues, the city of the flying. It is a blue silver of some higher element, and the stairs are floating, sliding a little with the slight breeze, but maintaining their orderly position. The stairs glow, and the warmth radiating from them makes you comforted and happy. You can feel a faint, unseen wall around them which grows a translucent blue as the steps spiral up into the sky. You have a feeling that this strange material is completely invisible from the outside.";

Table of GameRoomIDs (continued)
Object	Name
Qytat Stairs	"Qytat Stairs"
Qytat Stairs	"Stairs"
Qytat Stairs	"stairs"

Qytat Stairs is a room. Description of Qytat Stairs is "[Qytat Stairs desc]".
Qytat Plaza is above Qytat Stairs.

To say Qytat Stairs desc:
	say "     The glowing steps extend above and behind you, spiraling upwards.  The faint blue material forming the concealing walls provides something to rest your hand against as you traverse the long staircase to the heavens. Looking through it, everything has a faint, bluish glow that makes everything below seem misty and unfocused, as if it is not quite real.";

Table of GameRoomIDs (continued)
Object	Name
Qytat Plaza	"Qytat Plaza"

Qytat Plaza is a room. Description of Qytat Plaza is "[Qytat Plaza desc]".
Qytat Plaza is fasttravel.
Qytat Plaza is private.
Qytat Plaza is sleepsafe.
Qytat Plaza is south of Plaza Fountain.

To say Qytat Plaza desc:
	say "     The ground here is warm underfoot and a similar blue to the stairs. When you step into the massive Plaza you become aware that this place feels just as solid and unshifting as the cities below you, as if it were built on foundations as strong as any rock on earth. The ground is covered with bricks of what appear to be a pale blue, almost white, granite. There are great spiral patterns made up by the bricks which seem to shift and change when you aren't looking. Everything here seems to be suffused with an ethereal light despite there being no visible sun. Set all about the huge square are ornate columns - pillars of varying height. The Plaza is surrounded by buildings made out of the same pale blue stone, although they do not fit what you consider to be traditional building archetypes. Large holes set all over the face of the buildings serve as what might be considered doors and there are no windows, or roofs - just walls with holes large enough for a gryphon to fly through.";
	say "     [Bold Type]To the north you can see a large fountain in the middle of the square.[roman type][line break]";

Table of GameRoomIDs (continued)
Object	Name
Plaza Fountain	"Plaza Fountain"

Plaza Fountain is a room. Description of Plaza Fountain is "[Plaza Fountain desc]".
Plaza Fountain is private.
Plaza Fountain is sleepsafe.
Plaza Fountain is north of Qytat Plaza.
Plaza Fountain is east of Qytat Tavern.
Plaza Fountain is west of Informal Settlement.
Plaza Fountain is southeast of Market Road.
Plaza Fountain is south of Qytat Church.
Plaza Fountain is southwest of Soup Kitchen.

To say Plaza Fountain desc:
	say	"     An ornate fountain bedecks the middle of the Plaza with a beautifully carved statue of three gryphons set in the middle of the basin. Upon closer inspection, you see that the three Gryphons are representatives of each sex - hermaphrodites, males and females. The herm has a smug look on her face, which is angled high as if turning her beak up at the male and female, who appear almost cowed beneath her. Set all around the square appear to be informal dwellings, although the bulk of them seem to be off to the [Bold Type]east[roman type] in what looks like a small amphitheater. [Bold Type]Above you[roman type], in one of the informal dwellings you can hear someone moaning. A ladder leading up to it means you could climb in. To the [Bold Type]northeast[roman type] you can see a few of the strange buildings, although one in particular seems to have more traffic than the others around it. [Bold Type]North[roman type] of the fountain stands a building shaped almost like a narrow inverted pyramid, it's odd angled walls covered with ornate carvings you cannot see from here. [Bold Type]West[roman type] of you is a short but wide building. It appears only two floors high when compared to the five story average of the buildings around it. [Bold Type]Northwest[roman type] of you is a road that heads off into another part of the city.";

Table of GameRoomIDs (continued)
Object	Name
Informal Settlement	"Informal Settlement"

Informal Settlement is a room. Description of Informal Settlement is "[Informal Settlement desc]".
Informal Settlement is private.
Informal Settlement is sleepsafe.
Informal Settlement is east of Plaza Fountain.
Informal Settlement is southeast of Qytat Church.
Informal Settlement is south of Soup Kitchen.
Informal Settlement is up of Qytat Tent.

To say Informal Settlement desc:
	say "     A broad oval amphitheater is spread out before you. The pillars are more numerous here, and were likely intended as seating for gryphons in place of the more traditional raised steps. Large oval structures that look like they were woven from vines, rope, wire and other assorted debris are stung up between the pillars set all about the amphitheater. Round openings angled any which way allow entry and exit for their flying inhabitants, through which you see Gryphons flying in or out. Others lounge on the ground nearby with tin cups, shaking them at passers by in a pitiable attempt at begging. Upon closer inspection, you can see that milling all about the Plaza are what appear to be only male and female gryphons, with nary a herm in sight. Set in the center of the amphitheater is a large tent around which the other inhabitants seem have built their ramshackle dwellings. It draws your eye as the focal point of the camp, and you could head [Bold Type]down[roman type] to it if you wished. To the [Bold Type]north[roman type] you see more clearly that a number of the inhabitants of this informal settlement are heading to and from of the busiest of the buildings. To the [Bold Type]northwest[roman type] you can see the large building shaped like a narrow inverted pyramid.";

Table of GameRoomIDs (continued)
Object	Name
Qytat Tent	"Qytat Tent"

Qytat Tent is a room. Description of Tent is "[Qytat Tent desc]".
Qytat Tent is private.
Qytat Tent is sleepsafe.
Qytat Tent is down of Informal Settlement.

To say Qytat Tent desc:
	if PlayerMet of Quintus is false:
		say "     This is not so much a tent as it is a refashioned gazebo, built as a temporary dwelling on the main stage of the amphitheater. The canvas walls are lined with drawings and city plans. A large square table occupies the center of the room around which a group of male and female gryphons stand talking amongst themselves. The large gazebo also houses a few makeshift beds as well as various other accumulated household paraphernalia. A large male gryphon looks up from the documents on the table as you enter, eyeing you suspiciously.";
	else:
		say "     This is not so much a tent as it is a refashioned gazebo, built as a temporary dwelling on the main stage of the amphitheater. The canvas walls are lined with drawings and city plans. A large square table occupies the center of the room around which a group of male and female gryphons stand talking amongst themselves. The large gazebo also houses a few makeshift beds as well as various other accumulated household paraphernalia. Quintus looks up from the documents on the table as you enter and nods in brief greeting before returning to his documents.";

Table of GameRoomIDs (continued)
Object	Name
Soup Kitchen	"Soup Kitchen"

Soup Kitchen is a room. Description of Soup Kitchen is "[Soup Kitchen desc]".
Soup Kitchen is private.
Soup Kitchen is sleepsafe.
Soup Kitchen is north of Informal Settlement.
Soup Kitchen is northeast of Plaza Fountain.
Soup Kitchen is east of Qytat Church.

To say Soup Kitchen desc:
	If Daytimer is Day:
		say "     Although there a number of the avian buildings in this area of the plaza, one building in particular is seeing far more traffic than the rest. Off to the [Bold Type]west[roman type] you can see the large inverted pyramid shaped building. [Bold Type]South[roman type] will take you to the informal settlement, and heading to the [Bold Type]southwest[roman type] will return you to the fountain at the center of the plaza. Heading in through one of the ground floor openings to take a look, you deduce that it must be some manner of soup kitchen. Pillars extend up to variable heights in here, although they are not quite as ornate as the ones in the plaza. These pillars are thinner and clearly made from wood, although they are painted the same otherworldly blue as everything else in this rather bright realm. Set atop them and in some cases also along the lengths, are platforms. There are a number of male and female gryphons sitting upon the platforms, eating from bowls before flying back out of the building, probably to return the informal settlement. There is a kitchenette on the ground floor level, where a beautiful looking gryphon is cooking and serving up soup from a large cauldron.";
	else:
		say "     Although there a number of the avian buildings in this area of the plaza, one building in particular is seeing more traffic than the rest. Off to the [Bold Type]west[roman type] you can see the large inverted pyramid shaped building. [Bold Type]South[roman type] will take you to the informal settlement, and heading to the [Bold Type]southwest[roman type] will return you to the fountain at the center of the plaza. Heading in through one of the ground floor openings to take a look, you deduce that it must be some manner of shelter at night. Pillars extend up to variable heights in here, although they are not quite as ornate as the ones in the plaza. These pillars are thinner and clearly made from wood, although they are painted the same otherworldly blue as everything else in this rather bright realm. Set atop them and in some cases also along the lengths, are platforms where a number of male and female gryphons are sleeping. There is a kitchenette area on the ground floor level, were a large cauldron sits empty, likely to be used during the day when this building serves as a soup kitchen.";

Table of GameRoomIDs (continued)
Object	Name
Qytat Church	"Qytat Church"

Qytat Church is a room. Description of Qytat Church is "[Qytat Church desc]".
Qytat Church is private.
Qytat Church is sleepsafe.
Qytat Church is west of Soup Kitchen.
Qytat Church is north of Plaza Fountain.
Qytat Church is east of Market Road.
Qytat Church is northeast of Qytat Tavern.
Qytat Church is northwest of Informal Settlement.
ObserveAvailable of Qytat Church is true.
ObserveString of Qytat Church is "[QytatChurch_ObserveMenu]".

To say Qytat Church desc:
	if Daytimer is day:
		say "     This building is far larger than the others in the square, and such a peculiar shape. It extends maybe fifteen floors high with the same circular openings all over, but it is shaped in such a way as to look like an inverted narrow pyramid - almost as if were making a point of opening up to the heavens. The walls are decorate with elaborate scenes of herm and single-sex gryphons working together to build what must be the city of Qytat a'th Lundrues.";
		if TimekeepingVar is 7 or TimekeepingVar is -1:
			say "     You can see a large number of gryphons flying in through the openings and a voice echoing from within. Thankfully there are entrances at the base of the building through which you are able to walk. Heading inside reveals a glowing pulpit set upon a stage of gold directly ahead of you. All around the walls are outcroppings or steps, making you realize this building is essentially a giant amphitheater. Hundred of gryphons sit around the walls listening to the sermon. An old and greying male gryphon stands behind the pulpit, his reverent voice echoing throughout the chamber. Now is probably not a good time to speak to the priest.";
		else:
			say "     There are entrances at the base of the building through which you are able to walk. Heading inside reveals a glowing pulpit set upon a stage of gold directly ahead of you. All around the walls are outcroppings or steps, making you realize this building is essentially a giant amphitheater. An old and greying male gryphon shuffles about the building with a broom, sweeping around the pulpit and flying here or there along the walls to sweep whatever area requires his attention.";
	else:
		say "     This building is far larger than the others in the square, and such a peculiar shape. It extends maybe fifteen floors high with the same circular openings all over, but it is shaped in such a way as to look like an inverted narrow pyramid - almost as if were making a point of opening up to the heavens. There are entrances at the base of the building through which you are able to walk. Heading inside reveals a glowing pulpit set upon a stage of gold directly ahead of you. All around the walls are outcroppings or steps, making you realize this building is essentially a giant amphitheater. The building is currently empty.";

to say QytatChurch_ObserveMenu:
	say "     This vast church unfolds around you, facing to heavens.";
	say "     [bold type]What do you want to observe?[roman type][line break]";
	now sextablerun is 0;
	[]
	blank out the whole of table of fucking options;
	choose a blank row in table of fucking options;
	now title entry is "Dekkan";
	now sortorder entry is 1;
	now description entry is "Watch what the old priest is up to";
	[]
	if Dekkan is in Qytat Church:
		choose a blank row in table of fucking options;
		now title entry is "General";
		now sortorder entry is 2;
		now description entry is "Watch things happening in the church";
	[]
	sort the table of fucking options in title order;
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
			let nam be title entry;
			now sextablerun is 1;
			if (nam is "Dekkan"):
				say "[QytatChurch_Observe_Dekkan]";
			if (nam is "General"):
				say "[QytatChurch_Observe_General]";
		else if calcnumber is 0:
			now Sextablerun is 1;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say QytatChurch_Observe_Dekkan:
	if TimekeepingVar is 7 or TimekeepingVar is -1:
		say "     The old gryphon priest is hunched over his pulpit, preaching to the surrounding crowds of gryphons. His sermon seems focused on what sounds like a growing conflict between two groups of Gryphons in the flying city. From what you gather there is a class divide being imposed by the hermaphrodite gryphons between them and the male and female gryphons. While you cannot deduce what the minutia of the conflict might be from his sermon, you get the impression that he is advocating for peaceful protest and collaboration with the hermaphodites. He does not feel that violence is the answer to this conflict. Looking at the reactions around the church, you can see that the crowd appears to be divided on whether or not they agree with him.";
	else:
		say "     The old priest flies about the church attending to various tasks. He cleans, arranges his scripture or sits at the pulpit researching for his next sermon.";

to say QytatChurch_Observe_General:
	if TimekeepingVar is 7 or TimekeepingVar is -1:
		say "     The church is currently crowded by a multitude of gryphons, who are listening intently to the old priests' sermon. No one is paying you much attention.";
	else:
		say "     The church is currently empty, occupied only by the old priest attending to his various duties. You see a sign near the entrance stating, 'Services daily at dawn'.";

Table of GameRoomIDs (continued)
Object	Name
Market Road	"Market Road"

Market Road is a room. Description of Market Road is "[Market Road desc]".
Market Road is private.
Market Road is sleepsafe.
Market Road is north of Qytat Tavern.
Market Road is west of Qytat Church.
Market Road is northwest of Plaza Fountain.
Market Road is southeast of Qytat Market.

To say Market Road desc:
	say "     The spiral pattern continues along between more of the strange open air buildings in a northwesterly direction, up towards a massive golden archway. Gryphons pass between the pillars and head off towards, what from a distance, appears to be a collections of stalls and shops. Standing between the archway are two armored gryphon guards eyeing you closely. This must be the way to the gryphon market place.";

instead of going northwest from Market Road:
	if PlayerFriended of Karisha is true and PlayerFriended of Dekkan is true: [both friends]
		say "(Placeholder)";
	else if PlayerFriended of Karisha is true: [friend with K]
		if Daytimer is day: [day]
			say "     The guards stop you and mention that Karisha isn't in the upper city, you should go meet her in the Soup Kitchen.";
		else: [night]
			say "     With a nod, the guards let you through and mention Karisha came through a while ago. She should be at home by now.";
			wait for any key;
			move player to Qytat Market;
	else if PlayerFriended of Dekkan is true: [friend with G]
		if Daytimer is day: [day]
			say "(Placeholder)";
		else: [night]
			say "(Placeholder)";
	else: [neither befriended]
		say "     The gryphon guards extend their poleaxes, barring your entry. 'Halt friend. We cannot permit you entry into the city proper unless a respected member of the community can vouch for you.' It looks like you cannot go this way yet.";

Table of GameRoomIDs (continued)
Object	Name
Qytat Market	"Qytat Market"

Qytat Market is a room. Description of Qytat Market is "[Qytat Market desc]".
Qytat Market is private.
Qytat Market is sleepsafe.

to say Qytat Market desc:
	say "Placeholder";

Table of GameRoomIDs (continued)
Object	Name
Qytat Tavern	"Qytat Tavern"

Qytat Tavern is a room. Description of Qytat Tavern is "[Qytat Tavern desc]".
Qytat Tavern is private.
Qytat Tavern is sleepsafe.
Qytat Tavern is south of Market Road.
Qytat Tavern is west of Plaza Fountain.
Qytat Tavern is northwest of Qytat Plaza.
Qytat Tavern is southwest of Qytat Church.

To say Qytat Tavern desc:
	say "     Before you sits the squattest building on the square. At only two storys high, it dwarfed by the buildings alongside it. Going inside you gather that this must be the local watering hole, and deduce that the height limitation on the building is for the safety of the inebriated patrons. You can't imagine it would be too pleasant passing out at a height of four or five storys. Most of the tables here are at ground level, and you could try get a drink if you wanted.";

Scent of Staircase Entry is "There is a strange scent here that you can only describe as the scent of ozone after lightening strikes".
Scent of Stairs is "There is a strange scent here that you can only describe as the scent of ozone after lightening strikes".
Scent of Qytat Plaza is "This area is strong with the scent of gryphons. It seems you have indeed found their home".
Scent of Spiral Pattern is "It doesn't smell like anything".
Scent of Plaza Fountain is "This fountain smells of a bird bath, and is quite dirty. You imagine it has been used by the locals as a bathing spot".
Scent of Informal Settlement is "This area smells dirty and unkept".
Scent of Qytat Church is "There is a strange scent here that you can only describe as the scent of ozone after lightening strikes".
Scent of Market Road is "This road doesn't smell like much".
Scent of Qytat Tent is "This area smells less dirty and unkept than the rest of the settlement".

instead of sniffing Soup Kitchen:
	say "     The room doesn't smell of anything.";
	if Karisha is present:
		say "     The room smells strongly of cooking vegetables. It smells quite appetizing actually.";

[

Spiral Pattern is a thing. "     The pattern is shifting, and it looks like a great circle, so large you cannot see the other side, with images of DNA and small spheres with arms, odd spherical bubbles with rotating balls around them, the only obvious things that change place, and what looks like a circuit diagram below all of that. It feels soft and warm, yet it doesn't give when you step. You feel creeped out.".

Spiral Pattern is in Qytat Plaza.

understand "spiral" and "ground" as the Spiral Pattern.
]

Qytat a'th Lundrues ends here.
