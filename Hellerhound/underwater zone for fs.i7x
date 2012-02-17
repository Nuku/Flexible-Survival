underwater zone for fs by Hellerhound begins here.



Section 1 - Gill Fruit Tree

Gill Fruits Tree is a situation.

the sarea of Gill Fruits Tree is "Beach";

Instead of resolving a Gill Fruits Tree:
	say "You come across an odd tree, half in and half out of the water, with slitted fruits on the branches. This must be the elusie gill fruit tree.";
	say "Do you wish to pick some?";
	if the player consents:
		add "Gill Fruit" to the invent of the player;
		add "Gill Fruit" to the invent of the player;
		say "As you pick some of the fruit, the rest falls off into the water, overripe. Odd.";
	otherwise:
		say "You leave the tree alone.";


hasgills is a number that varies.



Table of Game Objects(continued)
name	desc	weight	object
"Gill Fruit"	"An oddly slitted fruit, green-blue and ripe to eat."	1	gill fruit

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

		[Fight;]
[if there is a area of Battleground in the table of random critters:]
[now battleground is "Sea";]

check swimtoing:
	if hasgills is not 1, say "You'll not be able to swim there without a way to breath underwater.  It's too far and too deep." instead;
	if the noun is a direction, say "If you enter the water, how will you know you are going the right direction? Maybe you should try swimming towards the place itself." instead;
	if the noun is not adjacent to the location of the player, say "That isn't nearby.  Make sure that you're swimming to a specific location nearby." instead;
	if the location of the player is noun, say "You're already there." instead;

carry out swimtoing:
	if a random number between 1 and 26 is greater than the perception of the player:[higher chance than normal]
		let T be a random number between one and 4;
		if T is 1:
			say "As you swim, you spot a sleek and streamlined blue form cutting through the water.  As the draconic serpent draws closer, you swim as quickly as you can to a nearly rocky outcropping and prepare to face the fearsome beast.";
			challenge "feral sea dragon"; [duh case, all three ways]
		otherwise if T is 2:
			say "As you swim, you spot a sleek and streamlined blue form cutting through the water.  As the draconic serpent draws closer, you swim as quickly as you can to a nearly rocky outcropping and prepare to face the fearsome beast.";
			challenge "feral sea dragoness";
		otherwise if T is 3:
			challenge "hermaphrodite dolphin";
	otherwise:
		say "You travel to [the noun], avoiding trouble as best you can.";
	move the player to the noun;
	follow turnpass rule;



after looking when the player is in the public beach:
	say "The rolling waves pass over the sandy shore, which slopes down into the ocean.  In the distance, past those sloping sands, the waves strike a rocky barrier.  To get past it, you would need to be able to [bold type]swim[roman type] along the coast.";


The Sloping Sand is a room. "The sand here slopes gently downward, with a few rising dunes under the water causing shallow and deep areas, but always progressively passing deeper into the ocean.  From here, you have a better view of the rocky area with the crashing waves.  It looks like a rather unhealthy area to swim - but at one spot, there is a kind of coral-encrusted arch allowing passage through the rocks.";
the Sloping Sand is southeast of public beach. 

before swimtoing The Sloping sand:
	if hasgills is not 1:
		say "You are unable to go further south, the waves pounding against sharp rocks. You would have to go underwater. If only you had gills...";
		stop the action;
	otherwise:
		say "The gills on your neck prove their worth, gathering air for you underwater as you walk beneath the waves. [line break]You will have to [bold type]swim[roman type] from now on. Since the water impedes any sense of direction, [bold type]you'll have to name where you are going.[roman type]";

before going to the coral ring:
	say "You can't just walk out into the ocean.  You'll have to swim into the deeper waters.";
	stop the action;

Coral Ring is south of the Sloping Sand.

The coral ring is a room. "A huge ring of red coral arches over your head, allowing you passage through the choppy waters by the jagged rocks.  By passing through here, you are able to move to and from the deeper reaches of the sea.  To the south from here, you can see a shadowy shape beneath the water, barely at the limits of your restricted vision in the deeper waters.  It seems like a sunken ship, its broken mast helping you distinguish the shape.  It looks like there's a shipwreck to explore!".

after entering the coral ring:
	say "You look up with awe, sure this accomplishment was great.";
	increase score by 5;

before going to the sunken ship:
	say "You cannot do that, you'll get lost out here!";
	stop the action;

Sunken Ship is south of Coral Ring.

Sunken Ship is a room.
The description of Sunken Ship is "A large ship lays sunken and rotting here.  From the breaks in the old hull, it seems the ship ran afoul of the rocky waters and went down long ago.  It is now an attraction for divers and sea creatures alike. Maybe going here was a bad idea.  There is a cloudy mess of thick seed hanging in the water and stuck to part of the ship, tribute to some huge beast.  You'd best be careful.  From here, you can barely make out the lighter spot in the rocks that is the coral ring you passed through to get here.";

The invent of Sunken Ship is { "Sea Dragon Cum" , "Sea Dragon Cum" };


Section 3 - Sea Dragon Cum


Table of Game Objects(continued)
name	desc	weight	object
"Sea Dragon Cum"	"Thick seed from one of the dangerous sea dragons that marauds the coast. It is rarely found concentrated like this."	1	sea dragon cum

to say sea dragon cum use:
	if the cunts of the player > 0:
		say "Do you wish to eat the seed (y), or impregnate yourself with it(n)?";
		if the player consents:
			if a random chance of one in two succeeds:
				infect "feral sea dragon";
			otherwise:
				infect "feral sea dragoness";
		otherwise:
			say "You rub the thick stuff into your waiting cunt, massaging it in.  You moan in pleasure as you work the thick cum deep inside you.";
			if a random chance of one in two succeeds:
				infect "feral sea dragon";
			otherwise:
				infect "feral sea dragoness";
			impregnate with "feral sea dragon[one of][or]ess[at random]";
	otherwise:
		if a random chance of one in two succeeds:
			infect "feral sea dragon";
		otherwise:
			infect "feral sea dragoness";		


sea dragon cum is a grab object;
sea dragon cum has a usedesc "[sea dragon cum use]";


underwater zone for fs ends here.
