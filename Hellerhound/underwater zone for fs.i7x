Version 2 of underwater zone for fs by Hellerhound begins here.
[Version 2.1 - Adjusted for new Beach layout]

Section 1 - Gill Fruit Tree

Gill Fruits Tree is a situation.
the sarea of Gill Fruits Tree is "Beach".

Instead of resolving a Gill Fruits Tree:
	say "You come across an odd tree, half in and half out of the water, with slitted fruits on the branches. This must be the elusive gill fruit tree.";
	say "Do you wish to pick some?";
	if the player consents:
		increase carried of gill fruit by 1;
		say "As you pick some of the fruit, the rest falls off into the water, overripe. Odd.";
		now gill fruits tree is resolved;
	else:
		say "You leave the tree alone.";

gill fruit is a grab object.
gill fruit has a usedesc "[gill fruit use]".
hasgills is a number that varies.

Table of Game Objects(continued)
name	desc	weight	object
"Gill Fruit"	"An oddly slitted fruit, green-blue and ripe to eat."	1	gill fruit

to say gill fruit use:
	say "You eagerly gulp the fruit.";
	now hasgills is 1;
	decrease the thirst of the player by 10;
	decrease the hunger of the player by 10;
	if thirst of player < 0, now thirst of player is 0;
	if hunger of player < 0, now hunger of player is 0;
	increase score by 10;
	say "Your neck feels odd as gills seem to sprout, tiny folds of skin that stay flat in the air.";
	follow the turnpass rule;

after examining the player:
	if hasgills is 1:
		say "You have small gills on your neck, a result of eating strange fruit.";

the scent of gill fruit is "The strange fruit has a faint, fishy scent.".

Section 2 - Underwater Beach

swimtoing is an action applying to one thing.

understand "swim [any room]" as swimtoing.
understand "swim to [any room]" as swimtoing.

		[Fight;]
[if there is a area of Battleground in the table of random critters:]
[now battleground is "Sea";]

check swimtoing:
	if hasgills is not 1:
		if facename of player is not "Squid", say "You'll not be able to swim there without a way to breathe underwater. It's too far and too deep." instead;
	if the noun is a direction, say "If you enter the water, how will you know you are going the right direction? Maybe you should try swimming towards the place itself." instead;
	if the noun is not adjacent to the location of the player, say "That isn't nearby. Make sure that you're swimming to a specific location nearby." instead;
	if the location of the player is noun, say "You're already there." instead;

carry out swimtoing:
	if a random number between 1 and 26 > the perception of the player:[higher chance than normal]
		swimmingfight;
	else:
		say "You travel to [the noun], avoiding trouble as best you can. The gills on your neck prove their worth, gathering air for you underwater as you move beneath the waves.";
	move the player to the noun;
	follow turnpass rule;

to swimmingfight:
	let T be a random number between one and 10;
	if T is 1:
		if furry is banned or guy is banned:
			increase T by 1;
		else:
			say "As you [if rowing is true]row[else]swim[end if], you spot a sleek and streamlined blue form cutting through the water. As the draconic serpent draws closer, you [if rowing is true]row[else]swim[end if] as quickly as you can to a nearly rocky outcropping and prepare to face the fearsome beast.";
			challenge "Feral Sea Dragon"; [duh case, all three ways]
	if T is 2:
		if furry is banned or girl is banned:
			increase T by 1;
		else:
			say "As you [if rowing is true]row[else]swim[end if], you spot a sleek and streamlined blue form cutting through the water. As the draconic serpent draws closer, you [if rowing is true]row[else]swim[end if] as quickly as you can to a nearly rocky outcropping and prepare to face the fearsome beast.";
			challenge "Feral Sea Dragoness";
	if T is 3:
		if furry is banned or hermaphrodite is banned:
			increase T by 1;
		else:
			challenge "Hermaphrodite Dolphin";
	if T is 4:
		if furry is banned or guy is banned:
			increase T by 1;
		else:
			challenge "Killer Whale";
	if T is 5:
		if furry is banned:
			increase T by 1;
		else:
			challenge "Otter";
	if T is 6:
		if guy is banned:
			increase T by 1;
		else:
			challenge "Siren";

Section 3 - Sea Dragon Cum

Table of Game Objects(continued)
name	desc	weight	object
"sea dragon cum"	"Thick seed from one of the dangerous sea dragons that marauds the coast. It is rarely found concentrated like this."	1	sea dragon cum

the scent of sea dragon cum is "The cum smells powerfully of a male sea dragon.".

to say sea dragon cum use:
	if the cunts of the player > 0:
		say "Do you wish to eat the seed (y), or impregnate yourself with it (n)?";
		if the player consents:
			if a random chance of one in two succeeds and guy is not banned:
				infect "Feral Sea Dragon";
			else:
				infect "Feral Sea Dragoness";
		else:
			say "You rub the thick stuff into your waiting cunt, massaging it in. You moan in pleasure as you work the thick cum deep inside you.";
			if a random chance of one in two succeeds and guy is not banned:
				infect "Feral Sea Dragon";
			else:
				infect "Feral Sea Dragoness";
			impregnate with "Feral Sea Dragon[one of][or]ess[at random]";
	else:
		if a random chance of one in two succeeds and guy is not banned:
			infect "Feral Sea Dragon";
		else:
			infect "Feral Sea Dragoness";

sea dragon cum is a grab object. sea dragon cum is cum.
sea dragon cum has a usedesc "[sea dragon cum use]".


underwater zone for fs ends here.
