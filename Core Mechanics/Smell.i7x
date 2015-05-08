Version 2 of Smell by Core Mechanics begins here.
[Version 2 update by Stripes - smell all the things!]
[- Originally Authored By: Hellerhound -]

"Adds the sense of smell to Flexible Survival"

Section 1 - Command

sniffing is an action applying to one thing.

understand the command smell as something new.
understand the command sniff as something new.
understand "sniff [something]" as sniffing.
understand "smell [something]" as sniffing.

check sniffing:
	if the location of the player is noun, continue the action;
	if noun is not visible, say "What? I don't see any [noun] around here to smell." instead;
	if the companion of the player is noun:
		continue the action;
	otherwise if noun is a pet:
		say "You don't have one of those with you right now." instead;
	if noun is a situation:
		say "It smells strangely existential, like cats, radioisotopes and poison.  It gives you a headache.  Perhaps you should stick to smelling more concrete, physical things." instead;

before sniffing:
	if noun is a grab object:
		if noun is not owned:
			say "I don't see any [Noun] around here to sniff.";
			stop the action;
	if the noun is a pet:
		if the companion of the player is noun:
			let z be 1;
		otherwise:
			say "I don't see any [Noun] around here to sniff.";
			stop the action;
	if the noun is a person:
		say "You sniff [noun].";
	otherwise:
		say "You sniff the [noun].";


carry out sniffing:
	if noun is a person:
		say "[noun] smells pretty much as you'd expect.";
	otherwise if noun is a room:
		say "This place smells as you'd expect.";
	otherwise:
		say "It smells pretty normal for a [noun].";


heresniffing is an action applying to nothing.

understand "smell here" as heresniffing.
understand "sniff here" as heresniffing.
understand "smell around" as heresniffing.
understand "sniff around" as heresniffing.


carry out heresniffing:
	try sniffing the location of the player;
[	repeat with X running through all the visible things in the location of the player:
		try sniffing X;	]


Section 2 - The player

instead of sniffing yourself:
	say "You smell like a [if the cocks of the player > 0 and the cunts of the player > 0]hermaphrodite[otherwise if the cunts of the player > 0]female[otherwise if the cocks of the player > 0]male[otherwise]neuter[end if] [bodyname of the player].";
	if animal heat is True:
		say "There is a animalistic musk around you.";
	if child is not born and gestation of child is greater than 0:
		say "You smell pregnant.";

[
after examining yourself:
	try sniffing yourself;
]

Section 3 - overrides for included places

[this is the stuff from the main story.ni file.  Other content is in their files.]

the scent of doctor matt is "[if hp of Doctor Matt is not 100]Safely encapsulated in his environment suit, he cannot be smelled[otherwise]The doctor isn't here, and his tape recorder smells like old plastic[end if].".

the scent of grey abbey library is "The smell of books permeates the air in the library.  Smelling outside the doors, you can smell the scents of the city.  You catch numerous scents of lust and arousal on the breeze, including that of [one of]several lupine creatures[or]some sulfurous stink[or]a variety of canines[or]something like latex[or]a feline in heat[at random].".

the scent of Bunker is "The air in the bunker smells a little stale from being sealed so long, but is quite breathable[if philip is in the bunker].  The strong scent of Philip's improvised sty lingers in the air as well[end if].".

[instead of sniffing Smith Haven Mall Lot:
	say "The parking lot smells of the smashed cars and the sticky remains left when their drivers were infected.";]

[instead of sniffing Mall Foodcourt:
	say "The food court smells of fast food from a little restaurant some of the rats are running to feed themselves.  It doesn't smell very appetizing to you, but they seem to like the garbagy smell.  A similar stink rises up from the small grate in one corner that leads to the underground tunnels.";]

the scent of Mall Atrium is "The air smells of fake plants and excessive perfume from the female rats.".

the scent of Outside Trevor Labs is "The air out here smells no different than the rest of the city.";

the scent of Trevor Labs Lobby is "The air is better in here, with[if hp of Orthas > 2] Orthas's aroused scent in the room[otherwise]out the excess scents of sex and arousal of the city[end if].".

the scent of 2F Trevor Labs is "The air smells pretty clear up here.  It doesn't seem that roaming creatures have been getting in here.".

the scent of Primary Lab is "The lab smells of Dr Matt's experiments[if Susan is in Primary Lab] and of Susan's musky doe arousal[end if].".

the scent of Park Entrance is "The park entrance smells of trees and flowers and a myriad of lustful creatures.".

the scent of Park Trail is "Now in the park, the scents of the creatures are stronger.  You can tell that there are many different ones around.  You manage to catch a whiff of [one of]some felines[or]a lupine creature[or]an equine scent[or]the farm scent of dairy cows[or]a strong, female scent[at random].  You'd best be careful.".

the scent of Faint Trail is "The scents of the creatures roaming the park are stronger this way.  You can tell that there are many different ones around.  You manage to catch a whiff of [one of]some felines[or]a lupine creature[or]an equine scent[or]the farm scent of dairy cows[or]a strong, female scent[at random].  You'd best be careful.".

the scent of Cola Vending Machine is "The vending machine smells of burnt electronics and is busted.  Guess you'll have to hit it to get anything out.".

the scent of Microwave is "The microwave smells a little from the dried stains inside.  It seems Dr Matt is too lazy or busy to clean it.".

the scent of Infection Terminal is "The infection terminal smells like old, vintage electronics from the time of DOS and dinosaurs.".

the scent of water bottle is "The water bottle smells like plastic.".

the scent of dirty bottle is "The dirty water smells a little off, but is still potable.".

the scent of food is "The food smells [one of]good[or]appetizing[or]tasty[or]edible[at random].".

the scent of pocketknife is "The pocketknife smells like metal.".

the scent of chair is "The metal chair smells of metal and aging plastic.".

the scent of journal is "The journal smells of cheap leather, paper and ink.".

the scent of medkit is "The medkit smells like antiseptic.".

the scent of face mask is "It smells pretty normal for a face mask; must still be good.".

the scent of gryphon milk is "The milk smells faintly of those gryphon creatures.".

the scent of distilled milk is "The powder smells faintly of milk.".

the scent of glob of goo is "The goo smells faintly of fruit jelly, though you cannot pin down the specific scent.".

the scent of soda is "The soda smells like a can of soda.".

the scent of chips is "The snack treat smells like it's still good.".

the scent of dog milk is "There is a definite dog scent to this milk.".

the scent of cot is "The small cot smells a little moldy, but otherwise a fine spot to take a much-needed nap.".

the scent of infection monitor is "The small device smells of electronics.".

the scent of panther milk is "This milk has a feline scent to it.".

the scent of chocolate milk is "The chocolate milk smells of fine, white chocolate.".

the scent of vixen milk is "The milk has a mediciny smell to it.".


Section 4 - Priorities

Does the player mean sniffing the medkit when the medkit is owned: it is very likely.
Does the player mean sniffing the Medkit Parts when the medkit is owned: it is very unlikely.

Does the player mean sniffing a situation: it is very unlikely.



Smell ends here.
