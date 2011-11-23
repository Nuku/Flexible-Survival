Zoo Events by Sarokcat begins here.

"Adds a series of random events to Flexible Survival set in the zoo area."

Section 1- Electric shockers

Electric shockers is a situation.
The sarea of Electric shockers is "Zoo";

Electricprodstatus is a number that varies.
epcountdown is a number that varies.
eptarget is a number that varies.
eprecharge is a number that varies.

Instead of Resolving a Electric shockers:
	if Electricprodstatus is 0:
		say "Moving through the zoo, you come across one of the zookeepers shacks that seems to have been left open in the confusion. Taking advantage of the situation, you move inside and start searching the place, although it really doesn[apostrophe]t take much looking to find the locked case of what look like extendable cattle prods, obviously intended to shock dangerous animals at a small distance.  Unfortunately the case is locked up tight and all your efforts to pry it open fail miserably.  You do make a mental note to come back again at another time and perhaps you'll have more luck.";
		now Electricprodstatus is 1;
		stop the action;
	otherwise if Electricprodstatus is 1:
		say "Traveling through the zoo, you come across a rather familiar looking zookeepers shack, and it looks like someone else has been here recently as well. Deciding to be careful you peek around the door to make sure there isn[apostrophe]t some kind of strange beast there waiting for you.  You are rather surprised to note that not only is the shack empty again, but it looks like whatever was here had a goal, they seem to have made a concerted assault on the case in the corner holding the powerful electric prods.  They seem to have had more success then you, because the case now hangs open loosely, and several of the useful tools have spilled out onto the floor, a quick examination shows you that most of the weapons were damaged too severely to work by whoever broke the case open, but you actually manage to find one that you think might actually work for a while before it burns out. ";
		add "Electric prod" to invent of player;
		now epcountdown is 0;
		now eptarget is a random number between 11 and 31;
		now Electricprodstatus is 2;
		stop the action;
	if Electricprodstatus is 2:
		say "You find the shack where you managed to salvage your slightly damaged Electric weapon from again, and take a quick look around inside.  But just like before, all you can find are spare batteries, and a number of heavily damaged electric sticks that are about as useful now as a regular stick would be. Sighing, you continue on your way.";
	if Electricprodstatus is 3:
		increase eprecharge by 2;
		say "Finding the shack your electric weapon originally came from, you decide to see if there is anything left inside that might let you repair the nifty weapon.  Glancing around, you swap the spent battery out and put it back on the charger, and begin hunting through the remains of the other electric prods.  You are eventually able to cannibalize one of them in order to replace the burnt out parts in your own, but it takes a decent amount of time to perform the jury-rigged repair.  At the end of it, you once more have a semifunctional electric prod[if eprecharge is 2], and while it could still fritz out on you at any moment, you are at least pretty sure that you can return here and fix it again should that happen.[otherwise if eprecharge is 8], but sadly doubt you'll be able to repair it again from the few meager parts and batteries remaining.[otherwise],  and while it could fritz out on you at any moment, you are hopefuly that you can return here and fix it again if you need to.[end if]";
		add "Electric prod" to invent of player;
		now epcountdown is 0;
		now eptarget is a random number between 9 and ( 27 - eprecharge);	[repairs are increasingly less effective]
		if eprecharge is 4:
			now Electric Shockers is resolved;
		now Electricprodstatus is 2;		


Table of Game Objects (continued)
name	desc	weight	object
"Electric prod"	"A powerful electric tool designed to shock and incapacitate wild animals, it should work on the beasts around the city as well."	5	 Electric prod

Electric prod is an armament. It is part of the player. It has a weapon "[one of]shocking stick[or]your electric prod[at random]". The weapon damage of Electric prod is 22. The weapon type of Electric prod is "Melee". It is not temporary.


An everyturn rule:
	if the Electric prod is wielded and epcountdown is less than eptarget:
		increase epcountdown by 1;
		if epcountdown is eptarget:
			say "With one last electric fizz and pop, the electric prod dies in your hands, its battery obviously drained by the damaged circuits burning out.  Sighing you take a look at your broken weapon, before sticking it in the back of your pack to throw away later... At least you got to have some fun with it while it lasted...";
			now Electricprodstatus is 3;
			process Electric prod;
			delete Electric prod;

Section 2-  Hyena cages

Hyena cages is a situation.
The sarea of Hyena cages is "Zoo";

Instead of Resolving a Hyena cages:
	say "You come across an enclosure that looks like it was burst open from the inside, taking a closer look you notice it looks almost like some of the bars were bitten clean through!  Taking a careful look at the plaque you find that this was actually once the hyena enclosure! Well now you know where all the hyena[apostrophe]s wandering the city came from, and here you thought it was just the natural evolution of scavengers into scavenging hyenas.... still as you are about to leave you note from the 'fun facts' section that the hyena has one of the most powerful bites in the animal kingdom, strong enough even to chew through metal.... you resolve to be more careful next time you face one of the cackling beasts.";
	Now Hyena cages is resolved;

Section 3-  Pachyderm predicament

Pachyderm predicament is a situation.
The sarea of Pachyderm predicament is "Zoo";

Instead of Resolving a Pachyderm predicament:
	say "Wandering through the zoo, you hear some shouting in the distance, moving closer you find one of the zoo employees, that obviously hasn[apostrophe]t succumbed fully to the changes yet. Unfortunately he is stranded in the middle of one of the more open enclosures, on a rock in what appears to be a lake of cum.  You blink at the sheer amount of the stuff coating the area, but are distracted by some rough slapping sounds underneath the hoarse cries of the trapped employee.  Looking around you are shocked to spot two massive mounds of grey flesh going at it not far away, their sheer size making it hard to recgonize them as humanlike elephants instead of say, small buildings.  You find yourself gaping at the riduclous size of the one on the bottoms cock, then clap your hands to your ears as they both trumpet, the one on top erupting into the one on bottom, and the one on bottom erupting everywhere.  The trapped employee moans, as the lake of seed around him rises even higher, the elephant herms take a minute to rest, before switching positions and starting up again.  Sadly you really don[apostrophe]t see any way you could reach the employee to help with anything short of a helicopter, and you certainly aren[apostrophe]t up to taking on two large foes that size.  Shaking your head you move off into the zoo, trying not to shudder at the soon to be elephantine employees cries.";
	Now Pachyderm predicament is resolved;

Section 4-  Snake knot

Snake knot is a situation.
The sarea of Snake knot is "Zoo";

Instead of Resolving a Snake knot:
	say "Traveling past the snake house, you decide to chance a glance inside, only to stare in amazement at a writhing knot of snakes of various sizes filling the room. The smell of snakes and sex fills the room, and their hissing is only broken by the occassional moan or cry of ecstacy, proving that there were a few non snakes caught up in their mating knot at one point, though you are sure they are snakelike by now. Carefully you back away from the door, not desiring to get caught up in their mating frenzy, though it could be fun to try if there were fewer of them.....";
	Now Snake knot is resolved;


Section 5-  Useful pamphlet

Useful pamphlet is a situation.
The sarea of Useful pamphlet is "Zoo";

Instead of Resolving a Useful pamphlet:
	say "Wandering around the zoo, you come across an area dedicated to visitor information, you browse through the few remaining pamphlets and find a couple that seem to be very pertinent on how to defend yourself from wild animals. Useful information indeed under the current circumstances!";
	increase xp of player by 5;
	Say "Your xp increases slightly due to the helpful pamphlet!";
	if a random chance of 1 in 10 succeeds:
		now Useful pamphlet is resolved;


Section 6-  Unidentified sex scene

Unidentified sex scene is a situation.
The sarea of Unidentified sex scene is "Zoo";

Instead of Resolving a Unidentified sex scene:
	say "Traveling through the zoo area, you come to one of the resting areas, and thinking to take a short break you move closer.  Unfortunately it seems several other people or creatures were here before you, and it was obvious not much 'resting' occurred, although several of the participants were probably horizontal at one point.  Looking around you take in the splatters of cum from several unidentified participants, several articles of shed clothing tossed around haphazardly, and a variety of mixed animal prints tracked in the dirt.  You really aren[apostrophe]t sure just who all or what all enjoyed themselves here, but they definitely had lots of fun.  Sighing you leave without taking a rest, the scene making you too nervous, and aroused, to stay there any longer.";
	increase libido of player by 20;
	Now Unidentified sex scene is resolved;


Section 7-  Grizzly gone

Grizzly gone is a situation.
The sarea of Grizzly gone is "Zoo";

Instead of Resolving a Grizzly gone:
	say "Traveling through the zoo in search of anything of use, you come across a zookeepers hut it seems like something broke into, taking a chance you look inside, and see that most of the area seems to be empty and smelling of sex. About to leave you notice several hurried notes someone left, picking them up you begin to leaf through them.[line break].";
	say "'The grizzly is gone from the enclosure this morning! No sign of it at all and the door was left wide open! What the hell happened last night, I need to ask the night watch...'[line break]";
	say "'Holy shit, if anyone is reading this, I found the grizzly and watch out, He seems to be a size larger then he was yesterday! And god if he doesnt seem to be smarter now too! I locked him out of the shed and I should be safe in here.'[line break]";
	say "I don[apostrophe]t know what the bear is up to out there, but there was a lot of grunting just a minute ago, and there is a strange smell in here now... it smells kinda... good.  For some reason the shack seems to be a size too small now though...[line break]";
	say "Grizzly so good,  grizzly cock is sized juuust right,'  The last note ends there, trailing off into an unrecognizable scrawl.";
	Now Grizzly gone is resolved;


Section 8-  Tasty Treats

Tasty Treats is a situation.
The sarea of Tasty Treats is "Zoo";

Instead of Resolving a Tasty Treats:
	say "Wandering along the zoo pathways, you come across a zoo candy cart, stuffed full with plenty of still wrapped treats and snacks. After checking around to make sure it is safe, you take a short break to help yourself to several different delicious snacks, before moving on your way feeling happy and full.";
	now hunger of player is 0;
	Now Tasty Treats is resolved;


Section 9-  AngieTrapped

AngieTrapped is a situation.
The sarea of AngieTrapped is "Zoo";

angiehappy is a number that varies.

Instead of Resolving a AngieTrapped:
	if angiehappy is 0:
		say "Wandering along the zoo pathways, you hear several of the creatures roaming the zoo apparently fighting nearby. Curious you move slightly closer to investigate, and see a few of the beasts appear to be fighting outside one of the smaller animal pens, you really aren[apostrophe]t sure what they are fighting about, but it could be dangerous to interfere, do you do so anyways?";
		if player consents:
			say "Deciding that whatever this is about, it might be best if you intervened, you step forward and prepare to fight!";
			fight;
			fight;
			say "As you recover from your recent exertions, you hear a voice call out from the small den the creatures were fighting outside of.  'Is it safe now?' The voice calls, causing you to turn your head and stare in astonishment as the face of a black panther wearing a zookeepers hat sticks itself out, looking around before the rest of the body follows. You find yourself staring at her changed body as she looks around, her legs resting easily on her new pantherlike paws, her face a blend of panther and human, and wearing the remains of what was obviously a zookeepers uniform.  The uniform has seen better days however, as her zookeepers vest hangs open, revealing a shirt that is torn almost all the way down, and now does nothing to conceal the rather large breasts that obviously expanded enough to tear it apart.  Her shorts are in even worse shape, having obviously had something large claw a hole in the crotch for easier access, the hole now gapes open revealing not only her new panther snatch, damp with her obvious arousal, but also revealing her erect panther like cock, its soft barbs easily visable. [line break]";
			say "Noticing where your gaze has strayed, the former zoo employee coughs, drawing your attention back to her muzzle.  'Thanks for driving those two off, I was sure I was about to get fucked again, and this time I don[apostrophe]t think I would have managed to get away again, and to be honest im not sure I would have wanted to if it was as good as...' her voice trails off, before she catches herself daydreaming and continues. 'Sorry, my names Angie, and well, I work here, or at least I used to, as one of the big cat handlers. Of course that all changed a little bit ago, when I went to take care of the panthers, and I found out that the male cat was waiting there to take care of me instead. He was on me so fast, forcing me down and then fucking me, god it was so good,' Angie says, her eyes going unfocused for a minute as she pants at the memory.  'I didn[apostrophe]t know what was going on, but I couldn[apostrophe]t bring myself to to stop him, it was probably the best i[apostrophe]ve ever felt in my life, being his feline fuck toy,' She says with a moan, 'But he wasn[apostrophe]t the only one of the cats that got loose, and before he could finish making me into his pet fully, he got interrupted by one of the other cats.  While the two of them squabbled over me, I managed to crawl away and lock myself in one of the side rooms while my changes finished, and once I managed to recover I have been trying to sneak around the zoo, and see if I can figure out whats going on, or if I can find some supplies.  Unfortunately,' Angie says with a sigh, 'Thats when those two managed to find me, and then you showed up. I[apostrophe]m grateful to you for your help here, and if you know anyplace around thats semi safe i[apostrophe]d be even more grateful.' She says hopefully, you tell the panther herm about the zoo giftshop, and how it seems to be safe for now, making her smile and nod, as she heads there right away, her tail lashing in excitement behind her.";
			increase angiehappy by 1;
			now angiefound is 1;
			stop the action;
		otherwise:
			say "deciding it might be best to let them fight amongst themselves, you continue on your way.";
			stop the action;
	if angiehappy is 1:
		say "Traveling down the zoo pathways, you hear some strange sounds coming from one of the enclosures, taking a cautious look, you see what appears to be a large pantherlike beast, growling and chuffing as it tries to reach something that appears to have fallen into a narrow space beside the den.  You watch for a while as the beast tries increasingly desperate measures to get at whatever is stuck in there, before it eventually gives up and stalks off in a huff.  Curiosity getting the better of you, you go down to investigate and find some small cloth wrapped packet has rolled into the crack. Grabbing a nearby branch you manage to roll the small bundle out of the crack, and take a look at it, and while it seems to exude a nice pleasantly minty odor, you can[apostrophe] tell why the big panther wanted it so badly.  Shrugging you decide to tuck it away for further investigation later, and continue on through the zoo.";
		now angietalk is 2;
		Now AngieTrapped is resolved;

Section 10-  Panda parade

Panda parade is a situation.
The sarea of Panda parade is "Zoo";

Instead of Resolving a Panda parade:
	say "Traveling through the zoo, you stop as you see a white and black coloured bearlike man, tottering down one of the other paths, a zookeepers hat still sitting jauntily atop the very well endowed pandas head.  You back off out of sight of the panda as it trots past, seemingly intent on moving as fast as it can down the path.  You are about to come out of hiding, when another more beastial panda comes trotting down the path moving quickly, this one is obviously female and it quickly chases after the retreating male panda.  The second panda is swiftly followed by two more female pandas, each batting at each other as they try to get ahead, and finally one last slightly pandalike female trailing along after everyone else, the final one still kicking off its encumbering clothing as it continues to change into a full panda.  Slightly amused at the strange situation, you wait to be sure there arent any more girl pandas chasing after the obviously very popular guy panda, before coming out of hiding and continuing on your way.";
	Now Panda parade is resolved;


Section 11-  Petting zoo

Petting zoo is a situation.
The sarea of Petting zoo is "Zoo";

Instead of Resolving a Petting zoo:
	say "Traveling along the empty zoo paths, you come across the petting zoo area, thinking surely there cant be much threat there you decide to stop by and investigate for a minute.  Entering the petting zoo you are only slightly surprised to find the area empty, more surprising is the large amount of childrens clothing and a number of backpacks scattered around on the ground, obviously there was a school bus visiting the area at some point recently.  You sigh as you look around, then give a halfhearted search of the backpacks lying around, you find several items of food and water, and decide to take them with you.  It doesn[apostrophe]t count as taking candy from kids if they aren[apostrophe]t around does it?";
		Add "food" to invent of player;
		Add "water bottle" to invent of player;
		Add "water bottle" to invent of player;
	Now Petting zoo is resolved;


Section 12-  Instructional video

Instructional video is a situation.
The sarea of Instructional video is "Zoo";

Instead of Resolving a Instructional video:
	say "Coming across one of the zoo buildings in your wanderings, you try taking a look inside, and find a small open class like area, with several desks set up and a projector hooked up to a vcr.  Taking a look at the vcr it is labeled 'Animal Handling Training', feeling curious you push play and settle down to watch a bit.  Soon you are caught up in all the tips and tricks the training tape teaches to aspiring zookeepers on how to handle the animals and deal with any trouble.  An hour later when the tape clicks off, you find yourself feeling much more confidant about your ability to deal with any animals or beasts that you might come across.";
	increase xp of player by 30;
	Now Instructional video is resolved;

Section 13- Vet supplies

Vet supplies is a situation.
The sarea of Vet supplies is "Zoo";

Instead of Resolving a Vet supplies:
	say "Traveling down some of the zoo maintenance pathways, you come across a small veterinary bag, obviously used by one of the employees to treat the animals. Unfortunately for the employee involved, from the torn vegetation and scent of animal sex in the area, it looks like they were the one who got their 'treatment' today instead. Still deciding there might be something useful to you in the bag, you begin to sort through the various supplies inside. Strangely most of what seems to be contained within is a variety of animal hormone shots, and treatments for either male or female animals depending.  You think you could probably inject yourself with some of the animal hormone boosters, and the extra hormones could help you maintain your gender identity... but should you really be using medicine designed for animals? Do you inject yourself?";
	if player consents:
		say "Deciding to try your luck with the animal drugs, you sort them out until you have male and female hormone shots and treatments fully laid out, as well as having figured out just how to apply them properly.  Now that leaves you with just one last decision... which shots do you want to take?  Do you take the female shots?";
		if player consents:
			say "Examining the female shots you have laid out before you, you decide to discard the male  shots, and slowly begin the process of injecting yourself with the female chemicals, your skin seeming to twitch as each animal based injection enters your body, and your head seeming to swim as a surge of estrogen rushes through your body, altering your perspective on things..";
			if "Female Preferred" is listed in feats of the player:
				say "While the chemicals running through your body rushs to your head, you groan as your instincts surge and makes you feel even more beastial then ever, you seem to feel as if your body could not truly be even more female oriented, and all the shots seem to do is make you feel more animalistic and feral then ever.";
				decrease humanity of player by 40; 
				stop the action;
			if "Male Preferred" is listed in feats of the player:
				say "You can feel the Female hormones running through your body as they counter your strong male orientation, your body at war with itself painfully as the hormones bringing your body back into proper equilibrium. Now you are afraid the beasts can change you into females to suit their pleasure and bear their offspring again...";
				remove "Male Preferred" from feats of the player;
				decrease hp of player by 30;
				stop the action;
			otherwise:
				say "You can feel the female hormones rushing through your body, and they surprisingly feel amazing as they rush through your body, your body surges with the primal need to breed and formerly neglected maternal instincts are enhanced and strengthened.  You feel downright slutty as the chemicals react with and alter your body, and you feel very sure that you won[apostrophe]t have to worry about becoming a male anymore!";
				decrease humanity of player by 20;
				add "Female Preferred" to feats of the player;
				stop the action;
		otherwise:
			say "Discarding the female shots, you focus your attention on the male treatments you have laid out, and slowly begin the process of injecting yourself with the chemicals, your skin seeming to twitch with each animal based injection, and your head seeming to swirl with a roar of beastial testosterone rushing through your body.";
			if "Male Preferred" is listed in feats of the player:
				say "While the testosterone running through your body rushes to your head, and makes you feel even more beastial then ever, you seem to feel as if your body could not truly be even more male oriented, and all the shots seem to do is make you feel more animalistic then ever.";
				decrease humanity of player by 40; 
			if "Female Preferred" is listed in feats of the player:
				say "You can feel the Male hormones running through your body as they counter your strong female orientation, your body at war with itself painfully as the hormones bringing your body back into proper equilibrium. Now you are afraid the beasts can change you into males to suit their pleasure again...";
				Remove "Female Preferred" from feats of the player;
				decrease hp of player by 30;
				stop the action;
			otherwise:
				say "You can feel the male hormones rushing through your body, and they surprisingly feel damn good as your more aggressive male tendancies are enhanced and strengthened.  You feel downright predatory as the chemicals react with and alter your body, and you feel very sure that you won[apostrophe]t have to worry about becoming a female anymore!";
				decrease humanity of player by 20;
				add "Male Preferred" to feats of the player;
				stop the action;
	otherwise:
		say "Deciding not to take your chances with any of the medicine designed for animals, you leave the veterinary bag where it lies, and continue along your way through the zoo.";
	Now Vet supplies is resolved;


Section 14- Feeding time

Feeding time is a situation.
The sarea of Feeding time is "Zoo";

Instead of Resolving a Feeding time:
	say "Traveling through the twisting paths of the zoo, you come across a rather strange sight, someone has left several cans of food and a bottle of water out in one of the animal feeding areas. Looking around you can[apostrophe]t see any reason for someone to have done so, and the food and water could be pretty useful, still it is rather suspicious, do you try to take it?";
	if player consents:
		say "You can[apostrophe]t resist the temptation to snag some fresh supplies, and cautiously move forward to take the food and water. Just as you are bending over to stuff them in your backpack, you hear a sound behind you and whirl around to see a Tigertaur charge at you out of the bushes, obviously glad someone has taken the bait and walked into its trap!";
		decrease hp of player by 15;
		challenge "tigertaur";
		if lost is 0:
			say " Grinning at the silly beast that thought it could beat you, you quickly pocket the food and water it so graciously left here for you, and whistling continue on your way, keeping your eye out for other traps like this one... after all you could use the supplies.";
			Add "water bottle" to invent of player;
			Add "water bottle" to invent of player;
			Add "food" to invent of player;
			Add "food" to invent of player;
			now Feeding time is resolved;
		otherwise:
			say "Lying there on the ground while you recover from the beasts devious trap, you eventually manage to roll over and pull yourself back to your feet. Looking around, you note with a sigh that the tigertaur took the food with it when it left, leaving you with nothing to show for your efforts other then your well fucked body. Shouldering your pack sadly, you continue on through the zoo, resolving to not be so easily tricked next time.";
			Stop the action;
	otherwise:
		say "Deciding that anything that looks this suspicious is probably some form of trap, you continue along your way, leaving the food and water behind.";
		now Feeding time is resolved;

Section 15- Security Station

Security Station is a situation.
The sarea of Security Station is "Zoo";

Instead of Resolving a Security Station:
	say "Traveling through the deserted zoo, you come across the entrance to a security station. While normally the doors to such areas are locked tightly, this one seems to have been broken down at some point during the recent troubles. Deciding to take a look inside, you can see the security station has several monitors that appear to be working at a glance, although some of them appear to be playing on a loop.  Moving into the small security area, you note that it smells like beastial sex in here, leaving no doubt as to why the security station was broken into, the rich musky scent makes your body tingle with lust, and you realize you can[apostrophe]t stay in here for long without becoming even more aroused then usual. Still there might be something of use in here, you think as you search the small monitoring room, you find your eyes continually drawn to the monitors however, as the action on the screen repeats itself over and over.  Soon you stop even trying to search the area, and are just watching intently, as a cheetah woman teases a zoo intruder into becoming her male mate, and the scene as a pair of wolftaurs burst out of the bathroom and run down some of the zoo paths, before the male catches the female and begins to mate her like an animal. Other scenes of sex and transformation are played out on the monitors in front of you, but you manage to pull yourself away from the sexual scene and scents, and stagger out of the Security booth. Somehow sure that if you had stayed much longer, you would have stayed there watching the sexual scenes and growing increasingly aroused until one of the beasts in the zoo managed to find you in there, and given how aroused you already are.. by that point you might not even have fought whatever strong sexual beast came to take you...  Shaking your head to try to clear it of the increasingly lewd thoughts you continue on your way through the zoo.";
	now libido of player is 100;
	decrease humanity of player by 10;
	Now Security Station is resolved;

Section 16- Broken fences

Broken fences is a situation.
The sarea of Broken fences is "Zoo";

Instead of Resolving a Broken fences:
	say "While traveling through the zoo paths, you note a small broken area of the underbrush, and out of curiosity move a little closer to take a look.  Behind the foliage, you can see the back of one of the animal enclosures, a nice thick area of fence designed to keep the animals inside. Of course in this case you can see how this group of animals got out, as the fence has been broken and torn here where it isn[apostrophe]t easily visible, leaving more then enough room for someone, or something, to slip into or out of the enclosure.  Examining the edges of the fence, you find yourself more then a little worried about encountering something able to do that kind of damage to the special cage fences, and decide to move along down the pathway quickly, just in case it might still be in the area.";
	Now Broken fences is resolved;


Section 17- Wandering beasts

Wandering beasts is a situation.
The sarea of Wandering beasts is "Zoo";

Instead of Resolving a Wandering beasts:
	say "While traveling through the zoo, you feel the hair on the back of you neck stand up, and feel like something large is coming your way. Feeling somewhat panicked, you waste no time in ducking down behind one of the bushes, doing your best to conceal yourself from whatever is coming your way.  You are just in time as you see a large group of different beasts come charging down the zoo pathways, obviously hot on the scent of a still changeble person.  You hold your breath as the small stampede passes, only letting it out after they have all passed by safely, sighing with relief as you step out of your impromptu hiding place.  Hearing a noise behind you, you realize that you started to relax too soon, as you turn and find yourself staring at one of the beasts that was straggling along behind the stampede!";
	fight;
	Now Wandering beasts is resolved;

Section 18- Roaming spots

Roaming spots is a situation.
The sarea of Roaming spots is "Zoo";

Instead of Resolving a Roaming spots:
	say "Wandering through the zoo, you find yourself alongside one of the small stands of trees set up against the sides of the zoo. You freeze as you hear a noise come from the branches up ahead, and slowly look up, not seeing anything for a minute, before suddenly realizing that a large Leopardman is slowly moving across the branches.  You feel your cheeks heating up even as you try to hold your breath, your eyes fixed on his large sheath even as the spotted Leopardman slowly shifts into the next tree.  You watch with a mixture of fascination and a strange desire as the sleek feline stretches up from his position in his newest tree, until he can grip the top of the zoo wall easily. You blink as in one swift movement the lithe Leopard hauls himself onto the top of the wall, before sliding down out of sight on the other side.  You let out a soft gasp of relief as you realize you are safe from the large feline for now, although for some strange reason you find yourself almost wishing the powerful male cat had noticed you standing there..."; 
	now Roaming spots is resolved;

Section 19- Picture striping

Picture striping is a situation.
The sarea of Picture striping is "Zoo";

Instead of Resolving a Picture striping:
	say "Traveling through the mostly deserted zoo, you find yourself next to one of those old fashioned photo kiosks, this one proudly displaying several various animal themed backgrounds you can choose from. Smiling you pull the curtain to step inside, only to find your nose assaulted with the scent of sex and musk, letting the curtain fall, you gasp for some clean air. As you do so you notice that the slot that dispenses pictures seems to have a strip already in it, curious you pull the strip of pictures out.  Blinking you stare down as a handsome young teenager poses against an african background, a zebra close behind him, the next picture shows the young man turning as the zebra puts its head on his shoulder, an actual zebraman that appears to have been hiding in the booth. The next several shots show in full colour detail the zebra stallion pinning the changing man up against the side of the photo booth, as his body lengthens and is covered in stripes.  The final photo is a wonderfully done photo of a zebra stallion mounting an eager zebra mare with a lewd smile on his snout. You shudder as you realize what a narrow escape you just had, if you had been the first person into that booth, there would have been no way for you to escape or fight in such a confined space. Sighing you prop the pictures up against the photo booth, leaving them there in case the zebras involved want to come back for a momento, you continue your trip through the zoo.";
	now Picture striping is resolved;



Zoo Events ends here.


