Version 2 of Smell by Core Mechanics begins here.
[Version 2 update by Stripes - smell all the things!]
[- Originally Authored By: Hellerhound -]

"Adds the sense of smell to Flexible Survival"

Section 1 - Command

understand the command smell as something new.
understand the command sniff as something new.

sniffing is an action applying to one thing.
understand "sniff [something]" as sniffing.
understand "smell [something]" as sniffing.

check sniffing:
	if the Location of Player is noun, continue the action;
	if noun is not visible, say "What? I don't see any [noun] around here to smell." instead;
	if noun is listed in companionList of Player:
		continue the action;
	else if noun is a pet:
		say "You don't have one of those with you right now." instead;
	if noun is a situation:
		say "It smells strangely existential, like cats, radioisotopes and poison. It gives you a headache. Perhaps you should stick to smelling more concrete, physical things." instead;

before sniffing:
	if noun is a situation:
		say "You can't see any such thing.";
		stop the action;
	if noun is a grab object:
		if noun is not owned:
			say "I don't see any [Noun] around here to sniff.";
			stop the action;
	if the noun is a pet:
		if noun is listed in companionList of Player:
			increase score by 0;
		else:
			say "I don't see any [Noun] around here to sniff.";
			stop the action;
	if the noun is a person:
		say "You sniff [noun].";
	else:
		say "You sniff the [noun].";

carry out sniffing:
	if noun is a person:
		say "[noun] smells pretty much as you'd expect.";
	else if noun is a room:
		say "This place smells as you'd expect.";
	else:
		say "It smells pretty normal for [noun].";

Instead of sniffing something (called x):
	if the scent of x is empty:
		say "It smells pretty normal for [a printed name of x].";
	else:
		say "[scent of x][line break]";

heresniffing is an action applying to nothing.
understand "smell here/around" as heresniffing.
understand "sniff here/around" as heresniffing.

carry out heresniffing:
	try sniffing the Location of Player;

instead of sniffing a room (called x):
	if location of Player is not x:
		say "You can't smell that place from here.";
	else if scent of x is empty:
		say "This place smells as you'd expect.";
	else:
		say "[scent of x][line break]";

Section 2 - The player

instead of sniffing yourself:
	say "     You smell like a [if Player is herm]hermaphrodite[else if Player is female]female[else if Player is male]male[else]neuter[end if] [BodySpeciesName of Player in lower case][if animal heat is true]. There is an animalistic musk around you[end if].";
	if child is not born and gestation of child > 0:
		say "     You smell pregnant.";

[
after examining yourself:
	try sniffing yourself;
]

Section 3 - overrides for included places

[this is the stuff from the main story.ni file. Other content is in their files.]

the scent of Doctor Matt is "     [if HP of Doctor Matt is not 100]Safely encapsulated in his environment suit, he cannot be smelled[else]The doctor isn't here, and his tape recorder smells like old plastic[end if].".

[instead of sniffing Smith Haven Mall Lot:
	say "The parking lot smells of the smashed cars and the sticky remains left when their drivers were infected.";]

[instead of sniffing Mall Foodcourt:
	say "The food court smells of fast food from a little restaurant some of the rats are running to feed themselves. It doesn't smell very appetizing to you, but they seem to like the garbagy smell. A similar stink rises up from the small grate in one corner that leads to the underground tunnels.";]

the scent of Faint Trail is "     The scents of the creatures roaming the park are stronger this way. You can tell that there are many different ones around. You manage to catch a whiff of [one of]some felines[or]a lupine creature[or]an equine scent[or]the farm scent of dairy cows[or]a strong, female scent[at random]. You'd best be careful.".

the scent of journal is "The journal smells of cheap leather, paper and ink.".

Section 4 - Priorities

Does the player mean sniffing the medkit when the medkit is owned: it is very likely.
Does the player mean sniffing the Medkit Parts when the medkit is owned: it is very unlikely.

Does the player mean sniffing a situation: it is very unlikely.

Smell ends here.
