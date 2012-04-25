Mall events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival located in the mall area."

Section 1- Tight space

Tight space is a situation.
The sarea of Tight space is "Mall";


Instead of resolving Tight space:
	say "You come across a very narrow opening in the sewers underneath the city, you think you see something gleaming in the back of it, but it would be a really tight squeeze to fit in there, and might leave you vulnerable to attack.  Do you try to enter the tight space anyways?";
	If player consents:
		let T be a random number between one and five;
		if T is 1:
			say "It looks like the glint was just some leftover iridescent paint someone smeared here.";
			stop the action;
		if T is 2:
			say "You find a unopened bottle of water that must have rolled in here!";
			Add "water bottle" to invent of player;
			stop the action;
		if T is 3:
			say "You get stuck in the tight space. Panicking, you struggle and fight to get out, eventually managing to tear your way free, leaving a good portion of skin behind though... damn that hurts!";
			decrease hp of player by 20;
			stop the action;
		If T is 4:
			say "It looks like some kid made a little nest down here, you find some comic books and a few other shiny items, but most importantly you find some chips and soda to snack on!";
			Add "chips" to invent of player;
			Add "soda" to invent of player;
			stop the action;
		otherwise:
			say "As you wriggle into the tight space, you hear something moving behind in behind you. It was a trap!";
			fight;
			stop the action;
	otherwise:
		say "Deciding to play it safe, you leave the narrow opening alone and continue about your business.";
		stop the action;


Section 2- Strange echo

Strange echo is a situation.
The sarea of Strange echo is "Mall";

Instead of resolving a Strange echo:
	say "While exploring the sewers, you come across a strange tapping noise, almost like someone is following you. The noise stops when you stop moving and try to determine where it is coming from.  Feeling slightly paranoid, you try moving in a different direction, only to have the noise begin again even louder.  Panicking slightly you break into a run, only to have the sounds of lots of creatures charging forward surround you. Fearing the worst, you let out a loud shout as you ready for combat!  When your shout reverberates back at you from all around you due to the many hollow pipes and arches in the area, you blush as you realize you have been scared by the echo of your own passage.";
	Now Strange echo is resolved;


Section 3- Sewer worker

Sewer worker is a situation.
The sarea of Sewer worker is "Mall";

Instead of resolving a Sewer worker:
	say "Traveling through the dim passages under the city, you see a soft gleam of light off in the distance. Worried about a possible trap, you approach the area cautiously, only to find what seems to be an abandoned mining style hat, the light on the front of the hat still shining off into the darkness. Looking around, you can see some shreds of khaki cloth scattered about the area and a small cloth patch lying there in a corner. Bringing the patch into the light, you can see it says 'Sewer workers union 108'.  Before you can do more then just glance at the patch however, there is a sound from behind you and one of the creatures of the tunnels attacks.";
	fight;
	say "Driving the creature back into the darkness, you look around at the shredded remains of the sewer workers outfit and wonder if the missing worker encountered the same creature.  Or perhaps, you think with a shudder, the missing sewer worker WAS that creature?  Resolving not to think about the disturbing possibilities any more then necessary, you quickly move off down the tunnels.";
	Now Sewer worker is resolved;

Section 4- totally lost

totally lost is a situation.
The sarea of totally lost is "Mall";

Instead of resolving a totally lost:
	say "After a while of traveling the sewer passages, you try to head back only to realize that you must have somehow got turned around down here, and have no idea just where you are and how to get out. Beginning to panic, you start to run down different passageways at random - only to stumble out right into the area you entered the sewers. Apparently you have been wandering around in circles for hours.";
	Now totally lost is resolved;


Section 5- Captive rat

Captive rat is a situation.  The level of Captive Rat is 6.
The sarea of Captive rat is "Mall";
when play begins:
	add Captive Rat to badspots of guy;
	add Captive Rat to badspots of hermaphrodite;
	add Captive Rat to badspots of furry;
	add Captive Rat to badspots of hellspawn;


Instead of resolving a Captive rat:
	say "Traveling the sewers, you hear a strange chanting noise in the distance, and you almost think you hear a call for help. Do you want to investigate?";
	if player consents:
		say "Carefully heading down a side passageway, you find it opens up into a small room where a Demon Brute seems to have captured a struggling mall rat.  The demon brute is chanting over the bound rat, and the girl is begging and pleading for someone to help free it.  Before you can do anything more, the brutes chant finishes and it shoots its seed all over the trapped rat. The beast then turns to look directly at you, 'Did you like watching?' it asks sarcastically as it charges. 'You can be next!'";
		challenge "Demon Brute";
		say "Driving off the foul demon, you turn to free the captive mall rat, only to discover that it has not only managed to free itself, but it seems to have undergone a surprising transformation as well!";
		challenge "Slut Rat";
		say "After that last fight, you definitely have more questions than answers. Maybe you should ask Rod or Ronda back in the mall about the strange demon[apostrophe]s seed.";
		stop the action;
	otherwise:
		say "Discretion definitely being the better part of valor, you quickly hurry along the tunnels, ignoring the strange sounds.";
		stop the action;
	Now Captive rat is resolved;

Section 6- puddle of goo

puddle of goo is a situation.
The sarea of puddle of goo is "Mall";
when play begins:
	add puddle of goo to badspots of girl;

Instead of resolving a puddle of goo:
	say "Looking around in the area under the mall, you find a strange puddle of goo just lying there in the middle of the passageway. You think you could take a sample if you wanted to.";
	if player consents:
		let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
		increase diceroll by bonus;
		if diceroll is greater than 14:
			say " You manage to gather up some of the strange goo without incident!";
			add "glob of goo" to invent of player;	
			add "glob of goo" to invent of player;	
		otherwise:
			say "While trying to gather up some of the strange substance, you slip and fall in it instead!";
			infect "Goo Girl";
			infect "Goo Girl";
			add "glob of goo" to invent of player;	
	otherwise:
		say "deciding it is always best to leave strange, gooey puddles alone, you give it a wide berth as you continue on your way.";
	Now puddle of goo is resolved;

Section 7- Strange symbol

Strange symbol is a situation.
The sarea of Strange symbol is "Mall";

Instead of resolving a Strange symbol:
	say "Moving through the sewers, you notice a strange white symbol painted on the wall.  Moving closer to investigate, you note that the symbol almost seems to writhe and move out of the corner of your eyes. Finally getting to where you can stand in front of the symbol, you find you still can[apostrophe]t seem to make heads or tails of the strange pattern, though the longer you stare at it the more it seems like you are just on the edge of figuring it out. You blink as you realize your eyes have gone heavy, and your brain feels somewhat fuzzy as well, you can almost swear that you hear dark whispers in the shadows surrounding you. You quickly realize that the strange symbol is doing something to you, and manage to drag yourself away from its fascinating lines and stumble away, feeling much less human then when you started.";
	decrease humanity of player by 30;
	Now Strange symbol is resolved;

Section 8- Goo Gathering

Goo Gathering is a situation.  The level of Goo Gathering is 2.
The sarea of Goo Gathering is "Mall";
when play begins:
	add Goo Gathering to badspots of guy;
	add Goo Gathering to badspots of furry;

Instead of resolving a Goo Gathering:
	say "Traveling through the dim passages under the city, you come across a large open area where several tunnels come together. Looking out into the area, you are surprised to see a large amount of those gooey girls gathered around talking to each other. Deciding discretion is the better part of valor, you try to slip away down the passageway before you can be noticed.";
	let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 14:	
		say "Your nimble feet navigate the passage without any problems, allowing you to slip away from the potentially dangerous situation unharmed.";
	otherwise:
		say "You try to slip away down the passage, only to scuff your feet and trip on the rough surface, you catch yourself almost immediately, but it appears several of the gooey beasts heard the noise and are coming to investigate!";
		challenge "Goo Girl";
		challenge "Goo Girl";
		challenge "Goo Girl";
		say "quickly recovering from your encounter with the gooey creatures, you stumble on down the passageway back towards the mall before any more of the creatures can come looking for you.";
	Now Goo Gathering is resolved;


Section 9-Old rail system

Old rail system is a situation.
The sarea of Old rail system is "Mall";

Instead of resolving a Old rail system:
	say "Moving through the deserted passages under the city, you find an old metal door, half concealed by the darkness and rubble. You curiously try the door only to find that while it is unlocked, it is partially rusted shut, you pull and tug on the door, until with a rusty shriek it finally opens. You pause for a second, the silence seeming deafening after the loud noise, hoping nothing down here heard that.";
	if a random chance of 1 in 2 succeeds:
		say "Luckily, it seems nothing heard the noise and you continue through the now open door.";
	otherwise:
		say "Unfortunately, the noise seems to have alerted something to your location!";
		fight;
		say "Recovering from the unexpected encounter, you continue through the now open door.";
	Say "Inside the door you find a large mostly sealed off area, the remains of what appears to be an old rail station, with part of a old rail truck still sitting there on the turning section.  You look around in amazement at this abandoned bit of history, and at a few of the still open rail tunnels, the partially rusted rails leading farther off into the darkness.  Sadly the place is so old you don[apostrophe]t think you will find much of use here for your current situation, but it could be fun to return and explore further sometime.";
	Now Old rail system is resolved;


Section 10 - B&R		[addition by Stripes]

B&R is a situation.
The sarea of B&R is "Mall";

Instead of resolving a B&R:
	say "     While roaming around through the sewers, you hear the sound of arguing voices coming towards you.  Being cautious, you duck into the shadows and watch the pair approach.  They are an odd pair of big, muscled brutes carrying large weapons.  The first is a warthog wearing shoulder pads and a torn, red vest, with several hand grenades within easy reach on it.  His sharp, white tusks, hoop snoot-ring and bone necklace give him a menacing appearance despite the purple mohawk and sunglasses.  The other is a rhino in a yellow wife-beater and cargo pants with a bandolier of bullets across his chest, as well as a grenade of his own.  While he clearly has a bit of a gut on him, his arms are even more muscled than his companion[apostrophe]s.";
	say "     It[apostrophe]s hard to follow what exactly they[apostrophe]re arguing about as they pause near your hiding place.  Most of the time, it sounds like they[apostrophe]re searching for turtles, intent on violence, but the rest of the time they[apostrophe]re trying to remember an old cartoon they watched as kids.  Eventually, they make a decision on which way to go next and continue on.  Rather than interrupt the well-armed, volatile and clearly crazy duo, you quietly let them pass before moving on.";
	Now B&R is resolved;


Mall events ends here.