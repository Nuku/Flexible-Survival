Version 2 of Consolidated Outside Events by Song begins here.
[ Version 1.0 - Consolidatedbackground events - Stripes ]
[ Version 1.1 - Commented out #4 from set - Stripes     ]
[ Version 2.0 - Sweeping update - Song
	- Renamed "CEOutside" to "Consolidated Outside Events" for clarity
	- Moved file from Stripes' folder to Song's folder. To see the detailed GitHub changelog for the file pre-move, access the primary repository using a commit earlier than this one, or check a stale branch from another contributor. This will allow you to look at the history of the now-removed CEOutside in Stripes' folder
	- Restructured content into separate event names under the same file. This allows players to hunt for specific events and avoids a generic and uninformative event title
	- Removed old, commented-out event #4 altogether to reduce file length and make it easier to tell which content is still relevant. The old content can be salvaged if necessary by looking through the removed file's changelog - see above for details on how to do so
	- General writing and formatting cleanup. Importantly, added prefix spacing in say messages and cleaned up sentence structure
]

"Consolidates a collection of standalone events in the Outside area into a single file."


Section 1 - Grumpy Old Men (by Kaleem)

Grumpy Old Men is a situation.
The sarea of Grumpy Old Men is "Outside".

when play begins:
	add Grumpy Old Men to badspots of furry;
	add Grumpy Old Men to badspots of guy;

Instead of resolving Grumpy Old Men:
	say "     While walking down the city streets, you stop when your eyes catch the form of two old men, a tiger and a wolf, arguing with each other while waving their hands up and down wildly at one another. Worrying that the two are about to start a fight, you watch as they move right on down the street past you, completely ignoring you. You wonder if you should speak up to say anything to stop their argument, but you find your words disappearing inside of your throat as you listen to their conversation, if only in bits and pieces.";
	say "     'Harry, you're too old be this cranky anymore,' the wolf says while walking next to his friend. The lupine seems a bit embarrassed by the feline, though he smiles all the while. 'I'll be too old when they put me in the grave. Until then, keep your fuzzy tail moving so we can find old Alma to see if we can borrow some of that ammunition of hers,' the tiger grumbles. 'Do you really think she survived all of this?' the wolf asks, waving his hand around to denote the mess that the town has become. The graying tiger gives the silver wolf a pointed look. 'I sure as hell do! Hell, knowing her, she's probably taking in refuges!' The tiger lets out a roar of laughter before hissing and leaning over to rub at his lower back. In a heartbeat, the wolf is helping the other by offering a shoulder, though the feline is a little too proud, or stubborn, to take it.";
	WaitLineBreak;
	say "     'Will you let me be?! I can manage just fine. I haven't gotten that old, damnit!' the tiger says, even while taking the arm of his cohort. 'I know, I know, sure shot. However, if you won't let me help you, then who will you let tend to your wounds?' The wolf seems to speak somewhat more softly at his friend. The tiger says nothing as he looks up into the bright eyes of his friend, before quickly turning his head to grumble something while using the wolf as a crutch. 'You keep this up, and the next thing you know, I'll be asking you to cook for me.' The wolf laughs in response. 'Harry, I already cook for you.' 'Yeah, but I don't have to ask for it just yet.' A playful smile crosses the feline's muzzle, and the lupine almost seems to flush at the other's statement.";
	say "     The two men walk down the street, the tiger slipping away from the wolf after he regains some of his balance. They continue to fuss at each other playfully while their tails wrap tightly around each other, and soon the two are out of sight. You can only hope that you'll have a friend like that when you reach the age of those old men.";
	now Grumpy Old Men is resolved;


Section 2 - Fleeing Minotaur (by Kaleem)

Fleeing Minotaur is a situation.
The sarea of Fleeing Minotaur is "Outside".

when play begins:
	add Fleeing Minotaur to badspots of furry;
	add Fleeing Minotaur to badspots of hermaphrodite;
	add Fleeing Minotaur to badspots of guy;

Instead of resolving Fleeing Minotaur:
	say "     While traversing the city streets, you spot a figure swerving rapidly around a corner. As it sprints closer, you realize that it's some kind of minotaur, and you dodge it just in time to avoid being pulverized. To your surprise, the creature runs straight past you, ignoring your presence entirely and hightailing it at top speeds in the direction you just came from. Seeing the odd creature running so fast makes wonder what the hell could scare it so badly, only for the answer to come in the form of a hyena dominatrix charging down the street with a whip in her hand.";
	say "     The woman, who can't be more than five foot eight inches tall, is wearing nothing but a black bustier and stiletto boots, and she cackles manically as she follows the minotaur's trail. You're impressed that the hyena could actually frighten a creature almost twice her size and two and half heads taller than her, and you can't help but wonder what's up with that pair. Just before the woman is totally out of sight, you swear that you hear her say something along the lines of 'Call me queen, darling!'";
	now Fleeing Minotaur is resolved;


Section 3 - Scavenging Dalmatian (by Kaleem)

Scavenging Dalmatian is a situation.
The sarea of Scavenging Dalmatian is "Outside".

when play begins:
	add Scavenging Dalmatian to badspots of furry;
	add Scavenging Dalmatian to badspots of guy;

Instead of resolving Scavenging Dalmatian:
	say "     Walking down the almost deserted streets of the city, you come across a lone Dalmatian scavenging through a trash can. More than likely looking for food, the figure is failing to find anything appetizing inside the smelly waste container, their spotted tail hanging limply behind them.";
	if food is owned:
		say "     A part of you wants to feel sorry for the mutant, but do really want to spare some of your food to help?";
		if player consents:
			say "     Whistling at the Dalmatian to get the cano-mutate's attention, you swallow nervously when you see the Dal's floppy ear flick and their black-spotted face turn in your direction. You have all of a half second to realize that you may have made a slight mistake as you watch the creature run toward you after seeing the small parcel of food in your outstretched hand. Bracing yourself for impact, you expect to be knocked onto the asphalt, but the Dalmatian creature simply skids to a stop two feet from your outstretched hand. Lowering itself to its haunches to beg like a normal canine, the Dal whines pleadingly while staring up at you with big, soulful brown eyes.";
			say "     Their whines of hunger are almost heartbreaking to hear. You set the food down in front of the anthro and then take a step back, watching as the spotted creature quickly gobbles up the food as though it hadn't eaten in days. Knowing how rough things are here in this city, the Dal was probably starving. When the dog finishes, it turns its muzzle to look up at you adoringly and then gives you a happy bark before trotting off. Even though you're shorter on provisions now, you feel good about feeding the hungry creature.";
			increase morale of player by 5;
			increase humanity of player by 12;
			if humanity of player > 100, now humanity of player is 100;
			delete food;
			increase score by 10;
		else:
			say "     Shaking your head, you turn away from the scavenging mongrel to make your way down the street some other way. It's not your business what others have to do to survive. You've currently got your own shit to deal with.";
	else if chips is owned:
		say "     You know that you don't have any proper food, but maybe some of the small snacks that you have in your pocket will tide the creature over. It might not be much, but it's better than food from a trash can, right?";
		if player consents:
			say "     Whistling to get the anthro Dalmatian's attention, you watch as it turns and then looks down to see what you put on the ground at your feet. Turning to step away from the cano-mutant, you're already moving off on your way just as your ears pick up the sound of charging footsteps to grasp your left-behind treats. It might not have been much, but it was all that you had on you. A sense of relief washes over you at having helped a starving creature in the midst of all this chaos.";
			increase morale of player by 2;
			increase humanity of player by 6;
			if humanity of player > 100, now humanity of player is 100;
			delete chips;
			increase score by 5;
		else:
			say "     Knowing that you have no food or snacks on your person, you move down along the street, ignoring the black-spotted mutant rustling through the garbage bin.";
	else:
		say "     Knowing that you yourself are doing without, you move along the street, ignoring the black-spotted mutant rustling through the garbage bin.";
	now Scavenging Dalmatian is resolved;


Section 4 - Captured Wyvern (by Kaleem)

Captured Wyvern is a situation.
The sarea of Captured Wyvern is "Outside".

when play begins:
	add Captured Wyvern to badspots of feral;
	add Captured Wyvern to badspots of furry;

Instead of resolving Captured Wyvern:
	say "     Coming across a large group of soldiers, you notice that the uniformed men and women seem to have somehow brought a wyvern down onto the ground and are currently staring at the mutant irritably. The large beast, which has to be almost thirty feet long, cries and chirps loudly as the soldiers begin to shout and kick at it. The desperation in some of the humans['] voices has your body tensing as you watch the assembled collective.";
	say "     Not saying so much as a word to alert them of your presence, you watch the troops begin to viciously beat at the creature with both their boots and the ends of their long assault rifles. Blood and other fluids slowly start to leak around the defenseless creature's body in a quickly growing pool. Why, if they have already downed the mutant, don't they just kill it already? As the monster's cries of pain grow steadily louder, you feel compelled to interfere and protect it. Do you follow through on the urge?";
	if player consents:
		say "     You can't bear to watch the soldiers torturing another living being, even one as monstrous as this. You furtively draw closer to the assembled group, waiting for an opportune moment, then loose a shrill battle cry as you hurl yourself into the fray. The men and women flip their heads around to look at you, but all they can see is a speeding ball of fury as you crash into the ones closest to the downed wyvern. Throwing the miscreants away from the beast, you find yourself looking at all of slightly scared soldiers in anger before suddenly flying into them. Punching and kicking and hissing at them like a mother protecting her young, you send the confused soldiers scattering as you savage anyone too slow, or too stupid, not to get away from the mutant.";
		say "     By the time you're done with them, your knuckles are wet with blood. Whether it belongs to the other humans, the wyvern's, or your own, you do not know, but it doesn't matter in the face of having sent the others away from your charge. Turning around to look at the poor creature, you realize that the wyvern is looking at you intensely with its strange, vertically slitted eyes. An understanding seems to go through you both as you flush down at the monster. Maybe now would be a good time for you to perform some first aid on the creature. Do you even have a medkit?";
		WaitLineBreak;
		if medkit is owned:
			say "     While you're no doctor, you manage to use your medical kit to stitch and patch up whatever wounds you can find on the big beast. A few chirps of pain come from the creature, but you just tell it to grin and bear it, as this is the cost of being taken care of. Once you are done, you take a few steps back to look at your [italic type]patient[roman type] and then nod accordingly when you see the other look over its battered and worn body. Blood quickly stains the bandages that you have wrapped around the wyvern as the mutant tries to get up.";
			say "     You have to quickly hush the thing to prevent it from ruining all of your hard work, quickly comforting the beast into settling down. You try and tell it not to move and that it needs to rest before it can recover fully. The monster seems somewhat hesitant about doing so, and looking around, you can understand why, as the area you both are in is quite open to possible attack, either from the soldiers or other mutants. Giving a sigh of exasperation, you slowly pad up to the reptilian creature's muzzle and then pat the wyvern on the snout gently before telling it that you will watch over it. The beast slowly relaxes and then settles down to rest. Once the wyvern is snoring in sleep, you prepare yourself to stand guard over the creature in order to keep your promise.";
			say "     Thankfully, you encounter little trouble, as neither the soldiers or any other mutants come around the vulnerable critter. The size and smell of it probably scare off anything with a shred of common sense. That soon changes, however, when a flock of wyverns come around to see about their missing companion. Noticing the large assortment of flying creatures, you decide that it's time to beat feet out of here. You've done your good deed for the day, after all.";
			delete medkit;
			increase humanity of player by 10;
			increase score by 10;
		else:
			say "     Shaking your head, you go over and around the sides of the beast, tending to its wounds the best you can with your limited supplies as you strip your shirt off of your body to use for makeshift bandages. Tearing off strips of your upper garment, and even your pants in order to have enough material, you work carefully, but determinedly to cover the wyvern's grisly wounds, going over the entirety of the monster from top to tail.";
			say "     Looking at the creature to gauge how it feels, you see that your attempts to mend its wounds took too long for your patient's attention, as the wyvern is now asleep. Snorting somewhat in annoyance, you admit a genuine smile as you look down at the flying mutant with wonder. While you wouldn't want to face one of these in battle, you can't help but marvel slightly at the beauty of the creature before you. Reaching out to stroke the sleeping beast's muzzle, you suddenly go rigid as you hear the cries of other wyverns shouting throughout the sky above you.";
			say "     You find yourself moving on quick feet as you hightail it away from the wyvern before its friends can come around to see you standing there with their wounded kin. Kindness notwithstanding, you're not foolish enough to try and explain to a bunch of angry mutants that you didn't hurt their friend.";
			increase humanity of player by 10;
			increase score by 1;
	else:
		say "     The soldiers are just doing their job, you think with some confliction. You have no right to get involved, and there's always the risk of being gunned down yourself if you tried to play the hero. Shaking your head, you turn away and let the uniform-wearing men and women go about their [italic type]duty[roman type] without looking back. The loud chirps of the wyvern seem to grow louder, almost as if calling out for help, but then go quiet all of a sudden.";
	now Captured Wyvern is resolved;


Section 5 - School Spirit (by hiccup)

School Spirit is a situation.
The sarea of School Spirit is "Outside".

when play begins:
	add School Spirit to badspots of girl;

Instead of resolving School Spirit:
	say "     While exploring the city, you discover a crashed school bus. There is no one on the bus, but you do find a dozen shredded cheerleader uniforms. Judging by the uniforms, the cheerleaders were from the local college. All the uniforms are ripped around the middle, almost as if the bellies of all the cheerleaders grew until they ripped through their uniforms. You can only surmise that a creature must have boarded the bus and impregnated every single cheerleader with its infectious seed. Feeling uneasy, you quietly leave the bus and sneak away before the cheerleaders or their spawn return.";
	increase the score by 1;
	now School Spirit is resolved;


Section 6 - Another Survivor (by hiccup)

Another Survivor is a situation.
The sarea of Another Survivor is "Outside".

when play begins:
	add Another Survivor to badspots of furry;
	add Another Survivor to badspots of hermaphrodite;

Instead of resolving Another Survivor:
	say "     While exploring the city, you spot another survivor. Before you get a chance to introduce yourself, a Hermaphrodite Gryphon swoops out of the sky, snatches up the other survivor, and flies away.";
	increase the score by 1;
	now Another Survivor is resolved;


Section 7 - Masturbating Fox (by hiccup)

Masturbating Fox is a situation.
The sarea of Masturbating Fox is "Outside".

when play begins:
	add Masturbating Fox to badspots of furry;
	add Masturbating Fox to badspots of guy;

Instead of resolving Masturbating Fox:
	say "     While exploring the city, you hear a strange sound in the distance.";
	say "     'Squeak! Squeak! Squeak!'";
	say "     You follow the strange squeaking sound until you find its source. The sound is coming from a latex fox creature that you find behind a pile of rubble. The creature is vigorously masturbating its rubbery cock, creating a loud squeaking sound with each stroke. When it notices your presence, you brace yourself for a fight. Thankfully, the creature decides to ignore you and goes back to masturbating. You sigh with relief and leave before it can change its mind.";
	increase the score by 1;
	now Masturbating Fox is resolved;


Section 8 - Giant Egg (by hiccup)

Giant Egg is a situation.
The sarea of Giant Egg is "Outside".

Instead of resolving Giant Egg:
	say "     You search through the city streets until you come across a giant egg. The egg is the size of a beach ball, and it appears to be freshly laid. You quickly leave the area before its mother can return.";
	increase the score by 1;
	now Giant Egg is resolved;


Section 9 - Ice Cream Truck (by Sarokcat)

Ice Cream Truck is a situation.
The sarea of Ice Cream Truck is "Outside".

when play begins:
	add Ice Cream Truck to badspots of furry;
	add Ice Cream Truck to badspots of hermaphrodite;

Instead of resolving Ice Cream Truck:
	say "     An abandoned ice cream truck sits on its lonesome in the middle of the street. You quickly investigate it to check if there's anything edible that hasn't already been scavenged. Looking in the cooler in back, you are disappointed to find that the ice cream has melted all over the place, soaking the inside of the truck. Taking a whiff of a strange smell, you realize that the sticky white stuff may not be ice cream after all, but someone or something's cream. You might be able to find something useful here, but it would be messy. Do you try?";
	if player consents:
		say "     Carefully digging through the mess returns a few bottles of milk that don't appear to be too tainted for use, although in the process of searching you managed to get some of the sticky cream on you as well. Trying to scrape the stuff off while leaving the truck, you find that the cream seems to be seeping into your skin, and your insides twist as you feel yourself change slightly.";
		increase carried of gryphon milk by 2;
		infect "Hermaphrodite Gryphon";
	else:
		say "     Deciding it would be best to avoid any contact with whatever might be left in the truck, you continue on down the road, the truck soon lost in the distance behind you.";
	now Ice Cream Truck is resolved;


Section 10 - Wyvern Flight (by Sarokcat)

Wyvern Flight is a situation.
The sarea of Wyvern Flight is "Outside".

when play begins:
	add Wyvern Flight to badspots of furry;

Instead of resolving Wyvern Flight:
	say "     You spy a small group of wyverns hauling off tables and chairs from a sidewalk café, apparently building a large nest somewhere nearby. You quickly lie low in a nearby storefront until the activity ceases, thankful to not be noticed. It seems the city keeps getting more dangerous every day.";
	now Wyvern Flight is resolved;


Section 11 - Strange Preacher (by Sarokcat)

Strange Preacher is a situation.
The sarea of Strange Preacher is "Outside".

when play begins:
	add Strange Preacher to badspots of furry;
	add Strange Preacher to badspots of hermaphrodite;

Instead of resolving Strange Preacher:
	say "     Wandering the deserted streets, you hear what sounds like a loud voice father down the street. Hurrying to see who is talking, you are shocked to see a strange creature shouting out to an empty street. Moving closer in case this is some kind of trick, you get a better look at the creature and find yourself shaking your head in astonishment. With the lower body of one of those panther taurs, she is resting her front legs on a box of some type while her back ones brace her on the street, her spread legs giving you a good look at hir erect feline cock. Behind hir, a long reptilian tail is lashing in time with her words, its scaled length almost as long as her entire furred lower body. Her torso seems to be covered in rough brown dog fur, with a bovine udder hanging off her upper body's stomach. Her arms are twisted around and pulled up into almost wyvern-like wings, obviously not strong enough to lift her even an inch off the ground. It is almost startling to see the rather human head sitting on the shoulders of the creature, her eyes closed as she continues to speak.";
	say "     Realizing that you've been staring at her form and not paying attention to what she's actually saying, you pause to listen for a minute. Listening to her speak, it quickly becomes obvious that she is singing the praises of something called the church of the maternal beast and someone she calls the Great Mother. She appears to be trying to appeal to the infected by telling them to embrace the changes, and the new sexuality sweeping the city, but not to let it overwhelm them. She continues on in lewd detail about the things that one should be careful of doing, or else you might give in and lose yourself completely. Her body shakes as she depicts several strange lewd acts to be avoided, and you can see her hind legs pumping her erect cock in the empty air eagerly as she continues to get more and more explicit in her descriptions. Shaking your head at the absurdity of it all, you leave the strange thing to its preaching, unsure if it even noticed you stopping to listen for a minute.";
	now Strange Preacher is resolved;


Section 12 - Hyena Kill (by Hellerhound)

Hyena Kill is a situation.
The sarea of Hyena Kill is "Outside".

when play begins:
	add Hyena Kill to badspots of furry;

Instead of resolving Hyena Kill:
	say "     You come across a murder scene in the corner of one of the streets, blood spattered everywhere, on the walls, the sidewalk, the parked cars, and black spotted hair also. Powdered segments of bone are also scattered. It looks like one of the hyenas didn't go for the rape, but for the kill. Ouch. They must have really hated the person. You hope that isn't what they think of you.";
	now Hyena Kill is resolved;


Section 13 - Panther Trap (by Hellerhound)

Panther Trap is a situation.
The sarea of Panther Trap is "Outside".

when play begins:
	add Panther Trap to badspots of furry;
	add Panther Trap to badspots of hermaphrodite;
	add Panther Trap to badspots of noncon;

Instead of resolving Panther Trap:
	say "     You come across two large piles of debris that all but block the way forward. Despite them, you try and squeeze through. Unfortunately, the gray and tall junk piles fall onto you before you get fully through, trapping you with a loud smashing noise that you swear will be audible throughout the city. You wince to think of the attention coming your way and start trying to escape, fast.";
	if a random number between one and 20 < 12: [the felitaur heard]
		[puts Panther Taur as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in Table of Random Critters:
			choose row y in Table of Random Critters;
			if name entry is "Panther Taur":
				now monster is y;
				break;
		say "     A panther taur comes up behind you, its trap having fallen on you, and proceeds to use you.";
		say "[panthertaur rape]";
	else:
		if a random chance of one in 3 succeeds: [fight a monster instead of being raped]
			let Q be a list of numbers;
			repeat with X running from 1 to number of rows in Table of Random Critters:
				choose row X from the Table of Random Critters;
				if there is no area entry, next;
				if name entry matches the text battleground, case insensitively:
					add x to Q;
			sort Q in random order;
			repeat with Z running through Q:
				choose row Z from the Table of Random Critters;
				if there is a name entry:
					now monster is Z;
				else:
					next;
				break;
			say "     A nearby monster catches you in the felitaur's trap and proceeds to fight you. In the process, it disrupts the rubble and frees you.";
			decrease the HP of the player by 10;
			fight;
			follow the turnpass rule;
		else: [flee without being raped or having to fight]
			say "     Nobody shows up before you succeed at freeing yourself. Phew.";
	now Panther Trap is resolved;


Section 14 - CatsandDogs (by Stripes)

CatsandDogs is a situation.
The sarea of CatsandDogs is "Outside".

when play begins:
	add CatsandDogs to badspots of furry;

Instead of resolving CatsandDogs:
	say "     As you travel through the city, you come across a pair of old apartment buildings side by side. The windows are open and the tenants are yelling at one another. One building appears to be populated entirely by cats and the other by dogs. They are growling, yowling and making rude gestures at one another. They jeer at one another and toss trash across the alley dividing their buildings. Focused on their mutual hatred, they don't notice you, but you do steer clear, certain that you'd not be able to fight off the horde populating either building... or worse, end up as some sort of prize in a battle between them. You make note of the location and remind yourself to keep away, finding another path around this neighborhood.";
	now CatsandDogs is resolved;


Consolidated Outside Events ends here.
