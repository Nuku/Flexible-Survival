Version 1 of CEOutside by Stripes begins here.
[Version 1.1 - #4 removed from set]

"Consolidates a collection of simple and background events into a pair of events to clear up the Outside area."

Book 1 - CEO1 (Kaleem and hiccup)

Consolidated Events Outside CEO1 is a situation.
The sarea of Consolidated Events Outside CEO1 is "Outside".

ceoutside1list is a list of numbers that varies.  ceoutside1list is usually {1, 2, 3, 5, 6, 7, 8, 9}.
[ #4 removed due to placement issues and general story violations ]

Instead of resolving Consolidated Events Outside CEO1:
	if furry is banned or hermaphrodite is banned, remove 2 from ceoutside1list, if present;
	if furry is banned or guy is banned or girl is banned, remove 4 from ceoutside1list, if present;
	if girl is banned, remove 5 from ceoutside1list, if present;
	if furry is banned or guy is banned, remove 8 from ceoutside1list, if present;
	if ceoutside1list is not empty:					[unique situations]
		sort ceoutside1list in random order;
		if entry 1 of ceoutside1list is 1:
			say "[ceoutside1]";
		else if entry 1 of ceoutside1list is 2:
			say "[ceoutside2]";
		else if entry 1 of ceoutside1list is 3:
			say "[ceoutside3]";
[		else if entry 1 of ceoutside1list is 4:
			say "[ceoutside4]";]
		else if entry 1 of ceoutside1list is 5:
			say "[ceoutside5]";
		else if entry 1 of ceoutside1list is 6:
			say "[ceoutside6]";
		else if entry 1 of ceoutside1list is 7:
			say "[ceoutside7]";
		else if entry 1 of ceoutside1list is 8: 
			say "[ceoutside8]";
		else if entry 1 of ceoutside1list is 9:
			say "[ceoutside9]";
	if ceoutside1list is empty, now Consolidated Events Outside CEO1 is resolved;


Section 1 - Grumpy Old Men (by Kaleem)

to say ceoutside1:
	say "While walking down the streets of the city you stop when your eyes catch the form of two old men, a tiger and wolf respectfully, arguing with each other while waving their hands up and down wildly at one another. Thinking that the two are about to fight you watch as they move right on down the street past you, completely ignoring you, while at the same time wondering if you should speak up to say anything to stop their argument. You find your words disappearing inside of your throat as you listen to the conversation of the two, if only in bits and pieces. 'Harry, you're too old be this cranky anymore.' The wolf says while walking on next to his friend. The lupine seems to be a bit embarrassed by the feline, but at the same time he's smiling all the while. 'I'll be too old when they put me in the grave. Until then, keep your fuzzy tail moving so we can find old Alma to see if we can borrow some of that ammunition of hers.' The tiger grumbles while twisting his head this way and that, as though looking for this [italic type]Alma[roman type] person right here, right now. 'Do you really think she survived all of this?' The wolf waves his hand around to denote the mess that the town has become and strangely enough the graying tiger gives the silver wolf a pointed look. 'Sure as hell do, just like you know. Hell, knowing her, she's probably taking in refuges!' The tiger lets out a roar of laughter before hissing and then kneeling down to rub at his lower back. In a heartbeat the wolf is right next to his companion, helping the other by offering a shoulder to the feline who maybe is a little too proud, or stubborn, to take.";
	say "'Will you let me be! I can manage just fine. I've haven't gotten that old, damnit!' The tiger says even while taking the arm of his cohort. 'I know...I know, sure shot. However, if you won't let me help you, then who will you let tend to your ouchies?' The wolf seems to speak somewhat more softly at his friend. The tiger says nothing as he looks up into the bright eyes of his friend, before quickly turning his head to grumble something while using the wolf as a crutch. 'You keep this up and the next thing you know I'll be asking you to cook for me.' The tiger gruffs. The wolf only laughs though. 'Harry, I already do cook for you.' 'Yeah, but I don't have to ask for it just yet,' A playful smile crosses the striped feline muzzle and you have to blink to be sure that you are seeing correctly as the lupine seems to almost flush at the other's statement.";
	say "The two men continue to walk down the street, the tiger slipping away from the wolf after he regains some of his balance, and then off the two go -- down the street and out of sight - with both still fussing at each other playfully while respective tails wrap tightly around each other. You can only shake your head as you hope that one day you'll be able to have a friend like that when you get to the age of those old men.";
	mallrecall;
	remove 1 from ceoutside1list;


Section 2 - Guess that Character Two (by Kaleem)

to say ceoutside2:
	say "Jumping out of the way you find yourself dodging a charging Minotaur just as the creature is hightailing it at top speeds in the direction you've just come from. Tilting your head at seeing the odd creature running so fast you wonder what the hell could be scaring the beast so bad, right before your answer comes in the form of a dominatrix clad hyena herm charging down the street with a whip in her hand. The woman, who can't be more than five foot eight inches tall, has on a black bustier, stiletto boots, and is cackling manically as she follows on the trail of the minotaur. Gaping slight at seeing the hyena actually frightening away a creature almost twice as big and two and half heads taller than hir you wonder what's up with that pair. Just before the woman is totally out of sight you have swear that you heard hir say something along the lines of 'Call me queen, darling!'";
	mallrecall;
	remove 2 from ceoutside1list;


Section 3 - Helping the Helpless (by Kaleem)

to say ceoutside3:
	say "Walking down the almost deserted streets of the city, you come across a lone Dalmatian figure scrapping through a bunch of trash cans. More than likely looking for food, the figure's black and white spotted tail hangs limply as the mutant doesn't see anything appetizing inside of the smelly waste container.";
	if food is owned:
		say "A part of you wants to feel sorry for the mutant, but is it your job to save every kitten, or canine in this case, stuck in a tree? (Y=yes, N=No)";
		if player consents:
			say "Whistling to the Dalmatian to get the cano-mutate's attention, you swallow nervously when you see the other's floppy ear flick and then the Dal's black-spotted face turn in your direction. You have all of a half second to realize that you may have made a slight mistake as you watch the other run over to you after looking at your outstretch hand holding onto a small parcel of food. Bracing yourself for impact you ready yourself to hit the asphalt, but get the surprise of all surprises when the Dalmatian creature simply skids to a stop two feet from your outstretch hand. Going down onto its haunches to beg up at you like a normal canine, the Dal whines pleadingly while staring you down with big soulful brown eyes.";
			say "The whines of hunger that comes out of the other are almost heartbreaking for you to hear. Setting the food down in front of the anthro and then taking a step back you watch as the spotted creature quickly gobbles up the food as though it hadn't eaten in days. Knowing how rough things are here in this city, the Dal probably hadn't. When the other finishes, it turns its muzzle to look up at you adoringly and then gives you a happy bark before trotting off. You suddenly feel good about yourself for what you have done, even though you're slightly lacking on provisions as of now.";
			increase morale of player by 5;
			increase humanity of player by 12;
			if humanity of player > 100, now humanity of player is 100;
			delete food;
			increase score by 10;
		else:
			say "Shaking your head you turn away from the scavenging mongrel to make your way down the street some other way. It's not your business what others have to do to survive. You've currently got your own shit to deal.";
	else if chips is owned:
		say "You know that you yourself don't have any food, but maybe some of the small snacks you have in your pocket will tide the creature over. It might not be much, but it's better than trash can food, right? (Y=Yes, N=No)";
		if player consents:
			say "Whistling to get the Dalmatian anthro's attention, you watch as it turns and then looks down to see what you put on the ground at your feet. Turning to step away from the cano-mutant, you're already moving off on your way just as your ears pick up the sound of charging footsteps going over to grasp your left behind treats. It might not have been much, but it was what you had after all. A sense of elation runs through you because of your gracious efforts.";
			increase morale of player by 2;
			increase humanity of player by 6;
			delete chips;
			if humanity of player > 100, now humanity of player is 100;
			increase score by 5;
		else:
			say "Knowing that you yourself are doing without you move along down the street, completely ignoring the black spotted mutant rustling through the garbage bin.";
	else:
		say "Knowing that you yourself are doing without, you move along the street, ignoring the black-spotted mutant rustling through the garbage bin.";
	mallrecall;
	remove 3 from ceoutside1list;

[

Section 4 - The Pack (by Kaleem)

to say ceoutside4:
	say "Running through the city streets, you look up to the grey clouds above just in time to hear as a clap of thunder resonate throughout the sky. Shivering because you know that you're about to be caught in a small shower you instinctively find yourself looking around for some kind of cover to wait out the incoming rain. Twisting your head from side to side you finally see a small shop with boarded up windows standing quietly between two tall trees. A second boom of thunder has you making your way over to the slightly cracked door of the building and then proceeding to knock down the door as you frantically hope to find suitable shelter inside.";
	let bonus be (( the Strength of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
	increase diceroll by bonus;
	if diceroll is greater than 8:
		say "Breaking into the front of the store, you find yourself encased in pitch black darkness just as a bolt of lightning lights up the sky. Turning to see that small droplets of rain are coming through the now opened door behind you, you swiftly move to shut the wood barrier before the inside area can get soaked. Once the door is closed, you find yourself breathing a sigh as you think about how safe you should be from the coming storm, however the feeling of security quickly abandons you as you hear a dark rumble come from around you. Slowly rolling a nervous eye towards your left side, you flinch as you hear someone striking a match. The darkened store brightens instantaneously as the unknown person lights a large candle and then picks up said candle by the holder it's placed into. Turning around to regard the other, you find yourself gasping slightly as you note the imposing figure of an Alpha Wolf standing in front of you, on two legs no less, with the same strong lupine features you have come to both know and slightly fear in this city. The other looks at you with uninterested grey eyes and you have to wonder if the other was the one to growl, that is, right before several dark forms slowly assemble around the candle-holding canine.";
		say "'Who are you, stranger? What are you doing here?' The smooth and even tone from the Alpha Wolf makes you pause to think as you look notice more and more wolves gathering together around their leader. Many of them are slightly dirty, probably from the lack of working water in the city, and have tangled and matted fur running along their strong, bulky frames. The smell of musky canine seems to rise steadily inside of the small shop as the canines break free from the surrounding shadows to stand around their alpha until they form a wall between their leader and you. 'S-sorry, I-I just came to get out of the rain.' You say just as a booming roar of thunder strikes out overhead. You jump a little, but manage to calm down before your heart can leap into your throat. A hand pressing over your chest helps with this effort.";
		say "'I see. You are welcome to say if you cause no trouble here.' The Alpha Wolf says somberly and you are quick to nod as you watch the other wolves around you growling and watching you with glowering eyes. 'So be it then,' This is the last the dominant male has to say to you before he turns and then heads up a flight of stairs you hadn't noticed beforehand. The assembled gathering of wolves watch you carefully for another minute as you look around for a place to wait out the storm before they all head up after their alpha. Many of them walk onto all fours like quadrupeds while others take a two-legged stance when heading upstairs, but all of them exclude and aura of viciousness about themselves making you very cautious of anything you might do while within the little shop. Not really knowing how or why this group of canines have all banded together, you don't take the time to bother caring as you hunker down to wait out the storm.";
		say "Twenty minutes into your self-imposed siesta you hear the familiar noises of someone moaning coming from upstairs. Taking a guess as to what's happening you snort before burying your head between your shoulders with the full intention of ignoring the disturbance. It's only when you hear a female begin to yelp that your head snaps up and your senses go to blazing. Wondering why there was a woman making such noise, even though in the back of your subconscious you instinctively know why, you narrow your eyes as the desire to check things out upstairs courses through you. Should you really go to investigate? (Y=Yes, N=No)";
		if player consents:
			say "Carefully getting yourself up you stretch to get your bones back into their proper place before moving over to take the stairs that the Alpha Wolf and his pack had gone up.";
			let bonus be (( the Dexterity of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus]: [diceroll + bonus], ";
			increase diceroll by bonus;
			if diceroll is greater than 10:
				say "Thankfully your carefully placed footsteps keep you from making any noise as you head on up the building. You smirk slightly in triumph for your cat-like ability to be silent as you get to the second floor of the dilapidated shop. When you do though your eyes nearly bulge out of their sockets as there in the middle of the floor, surrounded by over a dozen wolves, is a man in his early thirties panting and gasping while slamming his ass back and forth against the groin of the Alpha Wolf. Thrusting himself into the human with a smooth set of motions the larger canine steadily works to drive his long red cock back and forth inside of the other male's backside, breaking through whatever resistance he might have found, as he swiftly works to change the male into a proper wolf. Confused as to the feminine shout that you had heard just now you tilt your head to the side in confusion, and then gasp silently as you watch the onset of breasts pushing out from the other male's body.";
				say "Looking over the man, who is slowly becoming a female, you see that the unnamed human's skin is slowly being covered with a dark coat of fur of fur while at the same time [']her['] waist is narrowing itself down to become curvier. The next cry that comes from the she-male sounds almost completely feminine in vocalization as the other lifts hir head up to pant and then drool openly while whining as shi gives hirself over to her new alpha. The look of bliss on the other's face would not have been so bad had hir cock not been shrinking down to become nonexistent. Not wanting to see any more, you tentatively back up to move back down the steps so as not to having your peeping found out. Going back downstairs and listening to the strong howls of the wind coming from outside you hunker yourself down close to the door and then proceed to wait the storm out. Listening to the male upstairs yelping as he slowly becomes more and more feminine you try not to shudder as you imagine what it must be like for the other to be losing his masculinity. The pleased noises that the other makes seconds later make you think that the other doesn't mind so much as she is now receiving pleasure the likes that a regular human man could never dream. A resounding yip has you jumping slightly as you can just imagine that the new female wolf's ass has just spread enough to the Alpha Wolf to slip his engorged knot into her. That's not your problem though, you surmise because immediately after the rain lets up you promise to bolt of out of the little shop to get well away from this pack of mutants.";
			else:
				say "You curse slightly as your feet make the floorboards squeak. You have only a second to regret your curious nature as something comes to the front of the stairs and then slams down into you forcing both you and it to tumble as you both fall down the stairwell.";
				say "Upon groaning and then blinking to look up at what hit you, you find yourself gulping quietly as your eyes lock on to a drooling muzzle snarling down at you angrily. Acting on pure instinct you brace your foot underneath the wolf atop you and then kick with all of your might to shove the incensed canine away. With a loud yelp and then a yowl you have just enough time to breathe a sigh and then get up onto your feet to scramble for the front door of the shop before the canine is up and darting after you. Getting to the door and grabbing hold of the handle you throw open the wooden barrier right as the beast grabs your ass between its teeth. The hard bite that you receive makes you scream out loud which inadvertently summons some of the other wolves. Hearing the pack coming for you, you reach back a hand to swat the canine tugging at your tender rear in order to get it to release you.";
				say "Thankfully, the wolf lets go of you, though not without taking a part of your pants with it, and then you speedily throw open the front door and head out into the pouring rain to get away. You don't take the time to care that you are getting soaked as you rush down the street. This will be better than being mauled by ferocious canines any day, you think while blinking through the veil of water coming down from the sky.";
				decrease hp of player by 5;
				infect "Feral Wolf";
		else:
			say "Knowing better than to stick your nose in where it doesn't belong you settle yourself back down with a weary grunt and then close your eyes so that you can block out the noise coming from both upstairs and outside with the raging storm now seeming to pick up in intensity. The cries from the female soon become yips and whines and you hazard a guess as to what has just happened before ignoring the now crooning whimpers coming from upstairs. It really doesn't matter though since [']that['] sort of thing has become a natural occurrence in this city. By the time you've finished your nap the rain has let up outside. Picking yourself up to leave you find yourself just in time to watch the Alpha Wolf coming back down the stairs to check on you. Giving the other a cordial nod for his hospitality you make your way out of the front door just in time to miss thirteen other wolves come down to see about their alpha. One of them was limping slightly, but at the same time this particular lupine was panting happily as a long tail wagged wildly behind their backside. The sounds of something liquid dropping onto the ground from behind the other completely escaped your hearing as you are already five steps down the now wet street.";
	else:
		say "Grunting as your shoulder bangs into the doorframe without causing it to open you curse and then shake your head as you try to prepare yourself for another ramming charge. However, the pitter patter of rain soon comes down around you and you end up getting drenched before you can make your second effort of it. Swearing and throwing an arm up to shield your head you move away from the door to find another spot to take cover in. Running as you do, coupled with the growing storm raging around you, you fail to hear a woman's cry coming from the derelict little shop. The yelping sound soon turns into a series of biting moans as the minutes pass, but by then you are already a block and a half away. Too far to hear or care.";
	remove 4 from ceoutside1list;

]

Section 5 - Desperation (by Kaleem)

to say ceoutside5:
	say "Coming across a bunch of soldiers you notice the large grouping of uniformed men and women seemed to have somehow brought a wyvern down onto the ground and were currently staring at the mutant irritably. The large beast, which has to be almost thirty feet long, cries and chirps loudly just as the soldiers begin to shout and kick at it. The desperation in some of the human's voices has your body tensing as you watch from your position on side of the assembled collective. Not saying so much as a word to alert them of your presence you continue to watch what is happening in front of you with a mix of emotions. Your eyes widen as the troops began to viciously beat at the creature with both their boots and the ends of their long assault rifles. Your stomach turns as you note how blood and other fluids are slowly starting to leak around the defenseless creature's body in a quickly growing pool. Why, if they have already downed the mutant, don't they just kill it already?, you think as you watch the viciousness of humanity continue for several seconds. This can't go on, you think as you hear the monster's cries of pain growing steadily louder. It's just not right... but should you really interfere? Aren't the soldiers just doing their job, after all?";
	if the player consents:
		say "White hot fire soon shoots through your mind as you can't watch the soldiers continue torturing the monster any longer until finally something inside of your erupts in anger. Fury born of the raw hatred at seeing life, even a twisted one such as a monsters, being so readily desecrated has you moving from around your place behind the three and then howling a battle cry as you charge at soldiers. Quickly the men and women flip their heads around to look at you, but sadly all they can see is a speeding ball of fury as you crash into the ones closets to the downed wyvern. Throwing the miscreants away from the beast you find yourself looking at all of slightly scared soldiers in anger before suddenly flying into them. Punching and kicking and hissing at the men and women like a mother protecting her young you send the confused soldiers scattering as you savage anyone too slow, or stupid, not to get away from the mutant. By the time you're done with them your knuckles are wet with blood, though whether it belongs to the other humans, the wyvern's, or your own you don't know, but it doesn't matter in the face of having sent the others away from your charge. Turning around to look at the poor creature you realize that the wyvern is looking at you intensely with its strange, feline slit eyes. An understanding seems to go through you both as you flush down at the monster. Maybe now would be a good time for you to do some first aid on the creature. Do you even have a medkit?";
		if medkit is owned:
			say "While you're no doctor you manage to use your medical kit to stitch and patch up whatever wounds you can find on the big beast. A few chirps of pain come from the creature, but you just tell it/her/him to grin and bear it as this is the cost of being taken care of. Once you are done however, you take a few steps back to look at your [italic type]patient[roman type] and then nod accordingly when you see the other look over its battered and worn body. Blood quickly stains the bandages that you have wrapped around the wyvern as the mutant tries to get up and quickly you have to hush the thing so that you can stop it from ruining all of your hard work. Quickly comforting the beast into settling down you try and tell it not to move and that it needs to rest before it can recover fully. The monster seems somewhat hesitant about doing so, and looking around you can understand why as the area you both are in is quite open to possible attack, either from the soldiers or other mutants. Giving a sigh of exasperation you slowly pad up to the reptilian creature's muzzle and then pat the wyvern on the snout gently before telling it that you will watch over it. The beast seems to understand, or well you think that it understands you, as it slowly relaxes and then settles down to rest. Once the wyvern is snoring in sleep, you prepare yourself to stand guard over the creature in order to keep your promise.";
			say "Thankfully you encounter little trouble as neither the soldiers or any other mutants come around the vulnerable critter. The size and smell of it probably scaring anything with good common sense off. That soon changes however, when a flock of wyverns soon come around to see about their missing companion. Noticing the large assortment of flying creatures you decide that now it's time to beat feet out of here. You've done your good deed for the day after all.";
			delete medkit;
			increase humanity of player by 10;
			increase score by 10;
		else:
			say "Shaking your head you go over and around the sides of the beast, tending to its wounds the best you can with your limited supplies as you strip your shirt from off of your body to use for makeshift bandages. Tearing off strips of your upper garment, and even your pants in order to have enough material, you work carefully, but determinedly to save the wyvern's life. Ok, well that might be a bit of a stretch as the beast's wounds are not THAT bad, but they are somewhat grisly to look at. The pooling blood had seem to come from many of the small, but numerous wounds that the creature had received and from the looks of it the only way the wyvern would have died is if it had taken too many hits to the head. Never minding this, it takes you a few moments to go over the entirety of the monster from top to tail, but once you do you have to smile in satisfaction as you have done a pretty decent job in patching up the reptilian mutant. Looking to the other to see how it feels you see that your time with mending the other's wounds has been too long for your patient's attention as the wyvern is now asleep. Snorting somewhat in annoyance at the other you find your lips raising up into a genuine smile as you look down at the flying mutate in wonder. While normally you wouldn't ever want to face one of these creatures in battle, you can't help but marvel slightly at the beauty of the critter. Reaching out to stroke the sleeping beast's muzzle you suddenly go rigid as you hear the cries of other wyverns shouting throughout the sky above you.";
			say "You find yourself moving on quick feet as you hightail it away from the other before its friends can come around to see you standing there with their beaten up comrade. Kindness aside, you're not fool enough to try and explain this to a bunch of, what you're sure will be, angry mutants about how you hadn't hurt their friend, but that you have saved its life instead. Mama didn't raise a fool, after all.";
			increase humanity of player by 10;
			increase score by 1;
	else:
		say "The soldiers are just doing their job, you think with some confliction. You have no right to get involved and besides that the wyvern is a freaking monster for cripes sake! Shaking your head you turn to let the uniformed wearing men and women go about their [italic type]duty[roman type] without looking back. The loud chirps of the wyvern seem to grow louder, almost as if calling out for help, but then soon quiet all of a sudden.";
	remove 5 from ceoutside1list;


Section 6 - School Spirit (by hiccup)

to say ceoutside6:
	say "While exploring the city, you discover a crashed school bus. There is no one on the bus, but you do find a dozen shredded cheerleader uniforms. Judging by the uniforms, the cheerleaders were from the local college. All the uniforms are ripped around the middle, almost as if the bellies of all the cheerleaders grew until they ripped through their uniforms. That's when you notice the dozen piles of afterbirth on the floor of the bus. A creature must have gotten on board the bus and impregnated every single cheerleader with its infectious seed. You quietly leave the bus and sneak away before the cheerleaders and their spawn return.";
	increase the score by 1;
	mallrecall;
	remove 6 from ceoutside1list;


Section 7 - Another Survivor (by hiccup)

to say ceoutside7:
	say "While exploring the city, you spot another survivor. Before you get a chance to introduce yourself, a Hermaphrodite Gryphon swoops out of the sky, snatches up the other survivor, and flies away.";
	increase the score by 1;
	mallrecall;
	remove 7 from ceoutside1list;


Section 8 - Masturbating Fox (by hiccup)

to say ceoutside8:
	say "While exploring the city, you hear a strange sound in the distance.[line break][line break]Squeak! Squeak! Squeak![line break][line break]You follow the strange squeaking sound until you find it's source. The sound is coming from a latex fox creature that you find behind a pile of rubble. The creature is vigorously masturbating it's rubbery cock, creating a loud squeaking sound with each stroke. The creature notices your presence and you brace yourself for a fight. Thankfully the creature decides to ignore you and go back to masturbating. You sigh with relief and leave before it can change its mind.";
	increase the score by 1;
	mallrecall;
	remove 8 from ceoutside1list;


Section 9 - Giant Egg (by hiccup)

to say ceoutside9:
	say "You search through the city streets, until you come across a giant egg. The egg is the size of a beach ball and it looks freshly laid. You quickly leave the area before its Mommy returns.";
	increase the score by 1;
	mallrecall;
	remove 9 from ceoutside1list;




Book 1 - CEO2 (Sarokcat, Hellerhound and Stripes)

Consolidated Events Outside CEO2 is a situation.
The sarea of Consolidated Events Outside CEO2 is "Outside".

ceoutside2list is a list of numbers that varies.  ceoutside2list is usually {10, 11, 12, 13, 14, 15}.

Instead of resolving Consolidated Events Outside CEO2:
	if furry is banned or hermaphrodite is banned, remove 10 from ceoutside2list, if present;
	if furry is banned or hermaphrodite is banned, remove 12 from ceoutside2list, if present;
	if furry is banned or hermaphrodite is banned, remove 14 from ceoutside2list, if present;
	if ceoutside2list is not empty:					[unique situations]
		sort ceoutside1list in random order;
		if entry 1 of ceoutside2list is 10:
			say "[ceoutside10]";
		else if entry 1 of ceoutside2list is 11:
			say "[ceoutside11]";
		else if entry 1 of ceoutside2list is 12:
			say "[ceoutside12]";
		else if entry 1 of ceoutside2list is 13:
			say "[ceoutside13]";
		else if entry 1 of ceoutside2list is 14:
			say "[ceoutside14]";
		else if entry 1 of ceoutside2list is 15:
			say "[ceoutside15]";
[		else if entry 1 of ceoutside2list is 16:
			say "[ceoutside16]";
		else if entry 1 of ceoutside2list is 17:
			say "[ceoutside17]";
		else if entry 1 of ceoutside2list is 18: 
			say "[ceoutside18]";
		else if entry 1 of ceoutside2list is 19:
			say "[ceoutside19]";]
	if ceoutside2list is empty, now Consolidated Events Outside CEO2 is resolved;



Section 10 - Cream truck (by Sarokcat)

to say ceoutside10:
	say "An abandoned ice cream truck lies sitting here lonesomely in the middle of the street, you quickly investigate to see if any of the delicious treats are left.  Looking in the cooler in back you are disappointed to find all the ice cream has melted all over the place, covering the inside of the ice cream truck in sticky white stuff. Taking a whiff of a strange smell you investigate further, and closer investigation determines that the sticky white stuff may not be ice cream after all, but just plain someone or something cream...  You might be able to find something useful here, but it would be messy, do you try?";
	If player consents:
		say "Carefully digging through the mess returns a few bottles of milk that doesn't appear to be too tainted for use, although in the process of searching you managed to get some of the sticky cream on you as well.  Trying to scrape the stuff off while leaving the truck, you find the cream seems to be seeping into your skin, and your insides twist as you feel yourself change slightly.";
		increase carried of gryphon milk by 2;
		gryphonify;
	else:
		say "Deciding it would be best to avoid any contact with whatever might be left in the truck, you continue on down the road, the truck soon lost in the distance behind you.";
	mallrecall;
	remove 10 from ceoutside2list;


Section 11 - Wyvern Flight (by Sarokcat)

to say ceoutside11:
	say "You spy a small group of Wyverns hauling off tables and chairs from a sidewalk cafe, apparently building a large nest somewhere nearby.  You quickly lie low in a nearby storefront until the activity ceases, thankful to not be noticed. It seems the city keeps getting more dangerous every day.";
	mallrecall;
	remove 11 from ceoutside2list;


Section 12 - Strange preacher (by Sarokcat)

to say ceoutside12:
	say "Wandering the deserted streets, you hear what sounds like a loud voice from down the street a ways. Hurrying to see who is talking, you are shocked to see a strange creature shouting out to an empty street.  Moving closer in case this is some kind of trick, you get a better look at the creature and finding yourself shaking your head in astonishment.  With the lower body of one of those panther taurs, she is resting her front legs on a box of some type while her back ones brace her on the street, her legs spread giving you a good look at hir erect feline cock.  Behind hir though a long reptilian tail is lashing in time with her words, its scaled length almost as long as her entire furred panther lower body. Her torso seems to be covered in rough brown dog fur, with a bovine udder hanging off her upper body's stomach, Her arms are twisted around and pulled up into almost wyvern-like wings, obviously not strong enough to lift her even an inch of the ground.  It is almost startling to see the rather human head sitting on the shoulders of the creature, her eyes closed as she continues to speak. [line break] You realize as you have been staring at the strangeness of her form, you have hardly paid any attention to what she was actually saying, you pause to listen for a minute.  Listening to her speak, it quickly becomes obvious she is singing the praises of something called the church of the maternal beast, and someone she calls the Great Mother.  She appears to be trying to appeal to the infected by telling them to embrace the changes, and the new sexuality sweeping the city, but not to let it overwhelm them. She continues on in lewd detail about the things that one should be careful of doing, or else you might give in and lose yourself completely, her body shaking as she depicts several strange lewd acts to be avoided, and you can see her hind legs pumping her erect cock in the empty air eagerly as she continues to get more and more explicit in her descriptions. Shaking your head at the absurdity of it all, you leave the strange thing to its preaching, unsure if it even noticed you stopping to listen for a minute.";
	mallrecall;
	remove 12 from ceoutside2list;


Section 13 - Hyena Kill  (by Hellerhound)

to say ceoutside13:
	say "You come across a murder scene in the corner of one of the streets, blood spattered everywhere, on the walls, the sidewalk, the parked cars, and black spotted hair also. Powdered segments of bone are also scattered. It looks like one of the hyenas didn't go for the rape, but for the kill. Ouch. They must have really hated the person.";
	say "You hope that isn't what they think of you.";
	mallrecall;
	remove 13 from ceoutside2list;


Section 14 - Panther Trap  (by Hellerhound)

to say ceoutside14:
	say "You come across two large piles of debris that all but block the way forward. Despite them, you try and squeeze through. Unfortunately the grey and tall junk piles fall onto you before you get fully through, trapping you with a loud smashing noise that you would swear would be audible throughout the city. You wince to think of the attention coming your way and start trying to escape, fast.";
	if a random number between one and 20 < 12:
		[puts Panther Taur as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Panther Taur":
				now monster is y;
				break;
		[the felitaur heard]
		say "A panther taur comes up behind you, its trap having fallen on you, and proceeds to use you.";
		say "[panthertaur rape]";
	else:
		if a random chance of one in 3 succeeds:
			let Q be a list of numbers;
			repeat with X running from 1 to number of rows in table of random critters:
				choose row X from the table of random critters;
				if there is no area entry, next;
				if name entry matches the text battleground, case insensitively:
					add x to Q;
			sort Q in random order;
			repeat with Z running through Q:
				choose row Z from the table of random critters;
				if there is a name entry:
					now monster is Z;
				else:
					next;
				break;
			say "A nearby monster catches you in the felitaur's trap, and proceeds to fight you, in the process disrupting the rubble and freeing you.";
			decrease the HP of the player by 10;
			fight;
			follow the turnpass rule;
		else:
			say "Nobody shows up before you succeed at freeing yourself. Phew.";
	remove 14 from ceoutside2list;


Section 15 - CatsandDogs (by Stripes)

to say ceoutside15:
	say "     As you travel through the city, you come across a pair of old apartment buildings side by side.  The windows are open and the tenants are yelling at one another.  One building appears to be populated entirely by cats and the other by dogs.  They are growling, yowling and making rude gestures at one another.  They jeer at one another and toss trash across the alley dividing their buildings.  Focused on their mutual hatred, they don't notice you, but you do steer clear, certain that you'd not be able to fight off the horde populating either building... or worse, end up as some sort of prize in a battle between them.  You make note of the location and remind yourself to keep away, finding another path around this neighbourhood.";
	mallrecall;
	remove 15 from ceoutside2list;


CEOutside ends here.
