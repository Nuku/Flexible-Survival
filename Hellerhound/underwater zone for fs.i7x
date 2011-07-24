underwater zone for fs by Hellerhound begins here.



Section 1 - Gill Fruit Tree

Gill fruits tree is a situation.

the sarea of gill fruits tree is "Beach";

Instead of resolving a gill Fruits Tree:
	say "You come across an odd tree, half in and half out of the water, with slitted fruits on the branches. This must be the elusie gill fruit tree.";
	say "Do you wish to pick some?";
	if the player consents:
		say "[gill fruit][gill fruit]";
		say "As you pick some of the fruit, the rest falls off into the water, overripe. Odd.";
	otherwise:
		say "You leave the tree alone.";


hasgills is a number that varies.

to say gill fruit:
	add "Gill Fruit" to the invent of the player;
	


Table of Game Objects(continued)
name	desc	weight	object
"Gill Fruit"	"An oddly slitted fruit, green -blue and ripe to eat."	1	gill fruit

to say gill fruit use:
	say "You eagerly gulp the fruit.";
	now hasgills is 1;
	decrease the thirst of the player by 10;
	decrease the hunger of the player by 10;
	increase score by 10;
	say "Your neck feels odd as gills seem to sprout, tiny folds of skin flat in the air.";
	follow the turnpass rule;

after examining the player:
	if hasgills is 1:
		say "You have small gills on your neck, a result of eating strange fruit.";


gill fruit is a grab object;
gill fruit has a usedesc "[gill fruit use]";




Section 2 - Underwater Beach


swimtoing is an action applying to one thing.

understand "swim [any room]" as swimtoing;
understand "swim to [any room]" as swimtoing;


[nuku, if you know how to add direction moving here, I would be very happy]

carry out swimtoing:
	if the location of the player is noun:
		say "You're already there.";
		stop the action;
	now battleground is "Beach";
	let the bonus be (( the perception of the player minus 10 ) divided by 2);
	if a random number from 1 to 20 is less than 10 minus bonus:
		if there is a area of Battleground in the table of random critters:
			Fight;
	otherwise:
		say "You travel to [the noun], avoiding trouble as best you can.";
	move the player to the noun;
	follow turnpass rule;


the south beach is a door. "The southern beach is currently flooded due to global warming, with waves hitting the rock barrier to the southeast. You could also try to [bold type]swim[roman type] along the coast.". 
the south beach is southeast of public beach.
The Sloping Sand is a room. "The sand here slopes gently downward, slow enough for one to walk into the water against the waves. However it provides a haven for any denizens of the depths that may live here. Keep on your guard. To the east is a red spot, maybe coral?".
the Sloping Sand is southeast of south beach. 
the marea of the south beach is "Beach".

before swimtoing the south beach:
	if hasgills is not 1:
		say "As you attempt to walk into the waves, the water sprays your open mouth, causing you to choke. Quickly you walk up the beach and abandon your plan to enter the water.";
		stop the action;
	otherwise:
		say "The gills on your neck prove thier worth, gathering air for you underwater as you walk beneath the waves. [line break]You will have to [bold type]swim[roman type] from now on. Since the water impedes any sense of direction, [bold type]you'll have to name where you are going.[roman type]";

before going to the coral ring:
	say "You can't do that! You'll be running in circles!";
	stop the action;

Coral Ring is east of the Sloping Sand.

The coral ring is a room. "A huge ring of red coral surges over your head, marking this place as the netryway to the waterworld. To the south is what looks like a roting mast, maybe a sunken ship?".

after entering the coral ring:
	say "You look up with awe, sure this accomplishment was great.";
	increase score by 5;

before going to the sunken ship:
	say "You cannot do that, you'll get lost out here!";
	stop the action;

Sunken Ship is south of Coral Ring.

Sunken Ship is a room. "A large ship lays sunken and rotting here. It is an attraction for divers and sea creatures alike. Maybe going here was a bad idea.".
There is 2 Sea Dragon Cum in Sunken Ship. "Two clouds of thick seed are hanging in the water, tribute to some huge beast.".
The invent of sunken ship is { "sea dragon cum" };


Section 3 - Sea Dragon Cum


to say gill fruit:
	add "Gill Fruit" to the invent of the player;
	


Table of Game Objects(continued)
name	desc	weight	object
"sea dragon cum"	"Thick seed from one of the dangerous sea dragons that marauds the coast. It is rarely found concentrated like this."	1	sea dragon cum

to say sea dragon cum use:
	if the cunts of the player > 0:
		say "Do you wish to eat the seed (y), or impregnate yourself with it(n)?";
		if the player consents:
			if a random chance of one in two succeeds:
				infect "Feral Sea Dragon";
			otherwise:
				infect "Feral Sea Dragoness";
		otherwise:
			say "You rub the thick stuff into your waiting cunt, massaging it in.";
			if a random chance of one in two succeeds:
				infect "Feral Sea Dragon";
				impregnate with "Feral Sea Dragon";
			otherwise:
				infect "Feral Sea Dragoness";
				impregnate with "Feral Sea Dragoness";
	otherwise:
		if a random chance of one in two succeeds:
			infect "Feral Sea Dragon";
		otherwise:
			infect "Feral Sea Dragoness";		
			


sea dragon cum is a grab object;
sea dragon cum has a usedesc "[sea dragon cum use]";





Section 4 - Dragolf 


[TODO later, will be unfinished for a while]














underwater zone for fs ends here.
