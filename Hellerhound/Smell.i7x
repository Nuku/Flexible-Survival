Smell by Hellerhound begins here.
"Adds the sense of smell to Flexible Survival"



[maybe add lsitening later?]

Section 1 - Command

sniffing is an action applying to one thing.

understand "sniff [something]" as sniffing.
understand "smell [something]" as sniffing.

check sniffing:
	if noun is not visible, say "What?" instead;

before sniffing:
	say "You sniff the [noun].";


carry out sniffing:
	say "It smells like a [noun].";


heresniffing is an action applying to nothing.

understand "smell here" as heresniffing.
understand "sniff here" as heresniffing.
understand "smell around" as heresniffing.
understand "sniff around" as heresniffing.


carry out heresniffing:
	sniff the location of the player;
	repeat with X running through all the things in the room of the player:
		sniff X;


Section 2 - The player

instead of sniffing the player:
	say "You smell like a [if the cocks of the player > 0 and the cunts of the player > 0]hermaphrodite[otherwise if the cunts of the player > 0]female[otherwise if the cocks of the player > 0]male[otherwise]neuter[end if][bodyname of the player].";
	if animal heat is True:
		say "There is a animalistic musk around you.";
	if the pregnant of the player is not 0:
		say "You smell pregnant.";
	
	
after examining the player:
	try sniffing the player;


Section 3 - overrides for included places

[this is just a start...]

instead of sniffing Sarah:
	say "She smells like a horny husky. [if sarahpreg is not 0]She is pregnant.[end if]";

instead of sniffing grey abbey library:
	say "The smell of books permeates the air.";

instead of sniffing the beach plaza:
	say "The seashore is near, there is salt in the air.";

instead of sniffing Public Beach:
	say "The salt in the air is reminicint of high tide at the beach.";

instead of sniffing water bottle:
	say "Water Bottles smell like plastic.";

instead of sniffing food:
	say "The food smells good.";

instead of sniffing jackal totem:
	say "The totem smells like hot sand.";
	
instead of sniffing Nermine:
	say "Nermine smells like a female jackal.";

instead of sniffing pocketknife:
	say "Pocketknives smell like metal.";

instead of sniffing medkit:
	say "The medkit smells like antiseptic.";

instead of sniffing valerie:
	say "She smells like a sphinx.";

instead of sniffing timothy:
	say "It smells like a hermaphrodite gryphon. She is pregnant.";

instead of sniffing Diego:
	say "Diego smells like a male coyote.";

instead of sniffing Brian:
	say "Brian smells like a male rhino, covered in sweat.";

instead of sniffing Alex:
	say "Alex smells like a male ferret, and like a male human.";

instead of sniffing Coleen:
	say "Coleen smells like a female. You also smell a little sweat nearby.";

instead of sniffing Leon:
	say "Leon smells like a male ram.";

instead of sniffing Mary:
	say "Mary smells like a female sheep.";

instead of sniffing motel key:
	say "Motel keys smell like metal.";

instead of sniffing the gryphon nest:
	say "The room smells like sex.";

Smell ends here.
