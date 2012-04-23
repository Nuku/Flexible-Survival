Version 2 of Smell by Hellerhound begins here.
[Version 2 update by Stripes - smell all the things!]
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
	say "It smells like a [noun].";


heresniffing is an action applying to nothing.

understand "smell here" as heresniffing.
understand "sniff here" as heresniffing.
understand "smell around" as heresniffing.
understand "sniff around" as heresniffing.


carry out heresniffing:
	try sniffing the location of the player;
	repeat with X running through all the visible things in the location of the player:
		try sniffing X;


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

instead of sniffing Doctor Matt:
	if hp of Doctor Matt is not 100:
		say "Safely encapsulated in his environment suit, he cannot be smelled.";
	otherwise:
		say "The doctor isn't here, and his tape recorder smells like old plastic.";

instead of sniffing Rod:
	say "Rod smells of rats and his mall home.";

instead of sniffing Ronda:
	say "Ronda smells of cheap perfume, rats and her mall home.";

instead of sniffing grey abbey library:
	say "The smell of books permeates the air in the library.  Smelling outside the doors, you can smell the scents of the city.  You catch numerous scents of lust and arousal on the breeze, including that of [one of]several lupine creatures[or]some sulfurous stink[or]a variety of canines[or]something like latex[or]a feline in heat[at random].";

instead of sniffing Bunker:
	say "The air in the bunker smells a little stale from being sealed so long, but is quite breathable[if philip is in the bunker].  The strong scent of Philip's improvised sty lingers in the air as well[end if].";

instead of sniffing Smith Haven Mall Lot:
	say "The parking lot smells of the smashed cars and the sticky remains left when their drivers were infected.";

instead of sniffing Mall Foodcourt:
	say "The food court smells of fast food from a little restaurant some of the rats are running to feed themselves.  It doesn't smell very appetizing to you, but they seem to like the garbagy smell.  A similar stink rises up from the small grate in one corner that leads to the underground tunnels.";

instead of sniffing Mall Atrium:
	say "The air smells of fake plants and excessive perfume from the female rats.";

instead of sniffing Outside Trevor Labs:
	say "The air out here smells no different than the rest of the city.";

instead of sniffing Trevor Labs Lobby:
	say "The air is better in here[if orthasstart > 2], with Orthas's aroused scent in the room[otherwise], without the excess scents of sex and arousal of the city[end if].";

instead of sniffing 2F Trevor Labs:
	say "The air smells pretty clear up here.  It doesn't seem that roaming creatures have been getting in here.";

instead of sniffing Primary Lab:
	say "The lab smells of Dr Matt's experiments[if Susan is in Primary Lab] and of Susan's musky doe arousal[end if].";

instead of sniffing Park Entrance:
	say "The park entrance smells of trees and flowers and a myriad of lustful creatures.";

instead of sniffing Park Trail:
	say "Now in the park, the scents of the creatures are stronger.  You can tell that there are many different ones around.  You manage to catch a whiff of [one of]some felines[or]a lupine creature[or]an equine scent[or]the farm scent of dairy cows[or]a strong, female scent[or]the sharp scent of skunk spray[at random].  You'd best be careful.";

instead of sniffing Faint Trail:
	say "The scents of the creatures roaming the park are stronger this way.  You can tell that there are many different ones around.  You manage to catch a whiff of [one of]some felines[or]a lupine creature[or]an equine scent[or]the farm scent of dairy cows[or]a strong, female scent[or]the sharp scent of skunk spray[at random].  You'd best be careful.";

instead of sniffing Cola Vending Machine:
	say "The vending machine smells of burnt electronics and is busted.  Guess you'll have to hit it to get anything out.";

instead of sniffing Microwave:
	say "The microwave smells a little from the dried stains inside.  It seems Dr Matt is too lazy or busy to clean it.";

instead of sniffing Infection Terminal:
	say "The infection terminal smells like old, vintage electronics from the time of DOS and dinosaurs.";

instead of sniffing water bottle:
	say "Water Bottles smell like plastic.";

instead of sniffing water bottle:
	say "The dirty water smells a little off, but is still potable.";

instead of sniffing food:
	say "The food smells [one of]good[or]appetizing[or]tasty[or]edible[at random].";

instead of sniffing pocketknife:
	say "Pocketknives smell like metal.";

instead of sniffing chair:
	say "The metal chair smells of metal and aging plastic.";

instead of sniffing journal:
	say "The journal smells of cheap leather, paper and ink.";

instead of sniffing medkit:
	say "The medkit smells like antiseptic.";

instead of sniffing gryphon milk:
	say "The milk smells faintly of those gryphon creatures.";

instead of sniffing distilled milk:
	say "The powder smells faintly of milk.";

instead of sniffing glob of goo:
	say "The goo smells faintly of fruit jelly, though you cannot pin down the specific scent.";

instead of sniffing soda:
	say "The soda smells like a can of soda.";

instead of sniffing chips:
	say "The snack treat smells like it's still good.";

instead of sniffing dog milk:
	say "There is a definite dog scent to this milk.";

instead of sniffing cot:
	say "The small cot smells a little moldy, but otherwise a fine spot to take a much needed nap.";

instead of sniffing infection monitor:
	say "The small device smells of electronics.";

instead of sniffing panther milk:
	say "This milk has a feline scent to it.";

instead of sniffing chocolate milk:
	say "The chocolate milk smells of fine, white chocolate.";

instead of sniffing vixen milk:
	say "The milk has a mediciny smell to it.";


Section 4 - Priorities

Does the player mean sniffing the medkit when the medkit is owned: it is very likely.
Does the player mean sniffing the Medkit Parts when the medkit is owned: it is very unlikely.

Does the player mean sniffing a situation: it is very unlikely.



Smell ends here.