Version 2 of Red Events by Stripes begins here.
[version 2.3 - Leather Wolves unlocks new location]

"Adds a series of random events to Flexible Survival located at or focusing on the Red Light District."


Section 1 - Leather Wolves

[Moved to Zigor file]

Section 2 - Fetish Store

Fetish Store is a situation.
The sarea of Fetish Store is "Red".

Instead of resolving a Fetish Store:
	say "     You come across a sex and fetish shop, which has clearly been ransacked by the sex-crazed mob. After cautiously glancing around, you slip inside to see if you can find anything of use. Sidestepping toppled displays, broken glass and sticky puddles, you quickly see that the sextoys and lube have all been taken. Any remaining kinkwear is damaged beyond usability or soaked in cum. This place has been stripped cleaner than any place you've examined to date. But fortune smiles upon you just a little before you head out and you spot something sticking out from under one of the toppled shelves. Moving the shelf aside, you see it is a small riding crop. Rather than leaving empty-handed, you decide to keep it and slip back outside to continue searching.";
	say "     Riding crop obtained. Giddy-up!";
	increase carried of riding crop by 1;
	increase score by 5;
	Now Fetish Store is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"riding crop"	"A leather riding crop used for dealing with recalcitrant steeds and playtoys."	1	riding crop

riding crop is an armament. It is part of the player. It has a weapon "[one of]your riding crop[or]your crop[or]your leather crop[or]your disciplinary tool[at random]". The weapon damage of riding crop is 4. The weapon type of riding crop is "Melee". It is not temporary. the objsize of riding crop is 2.

the scent of the riding crop is "The riding crop smells of leather and discipline.".

Section 3 - Raided Corner Store

Raided Corner Store is a situation. The level of Raided Corner Store is 3.
The sarea of Raided Corner Store is "Red".
when play begins:
	add Raided Corner Store to badspots of hermaphrodite;
	add Raided Corner Store to badspots of furry;

Instead of resolving a Raided Corner Store:
	say "     You come across a small corner store. While it has been raided, you can see that it's not been as badly damaged as others and may still hold something of interest. You slip inside and glance around, but the shelves, coolers and displays have been emptied of anything useful. The cash register is empty as well. You head to check the back and find that the entrance to the back is locked. Perhaps there is something worthwhile in there. You start by knocking as asking if anyone's still safe in there, but get no response.";
	say "     [bold type]Do you try to break in?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents:
		say "     You kick and slam at the door several times, with growing frustration as you fail to have any effect. The door is quite sturdy, and would have to be to have survived any previous scavengers. After giving it one last kick, you turn away in frustration, only to see the commotion has attracted others. There are now a pair of hyenas between you and the exit.[line break]";
		if hyg is 4:
			if the bodyname of player is "Herm Hyena" or facename of player is "Hyena Herm":
				say "     As one of the pair is about to step forward to deal with you, the other grabs hir shoulder, holding them back. The second steps forward, looking you over more carefully. 'Hey, I think I heard about you from Gina. You certainly smell like you've met her. Could you use some help there?'  You nod and the hyenas join you by the door. One has some lockpicks and they soon get the door open. Little of the stores inside are usable, most having been eaten or damaged already. Presumably the owner was holed up in here. Before they succumbed to the infection and presumably left to the wilds of the city, that is. But there is still some the usable loot. You split your find with the hyenas, taking a couple of drinks and snacks each before you and they go your separate ways.[line break]";
				say "     You obtain two snacks and two soft drinks.";
				increase score by 10;
				increase carried of soda by 2;
				increase carried of chips by 2;
			else:
				challenge "Herm Hyena";
				challenge "Herm Hyena";
				say "     After the hyenas are gone, you try the door again, taking greater care to avoid noise, but are unable to force it open.";
		else:
			challenge "Herm Hyena";
			challenge "Herm Hyena";
			say "     After the hyenas are gone, you try the door again, taking greater care to avoid noise, but are unable to force it open. Disappointed, you head back into the city.";
	else:
		say "     You opt to leave it alone and head back to search elsewhere. The grapes were probably sour anyhow.";
		increase score by 1;
	Now Raided Corner Store is resolved;


Section 4 - Aussie Pub

[ Moved to Down Under Pub ]

Section 5 - Flooded Street

Flooded Street is a situation. The level of Flooded Street is 3.
The sarea of Flooded Street is "Red".
when play begins:
	add Flooded Street to badspots of guy;
	add Flooded Street to badspots of humorous;

Instead of resolving a Flooded Street:
	say "     You come across a small lake of cum blocking your path. This section of street is literally flooded with cum. Wading through the musky pond are several of those giant walking cocks. At the far side of the cum flood, a pair of them are pleasuring one another, releasing more spurts into the sea of semen. You certainly cannot cross here and expect to remain intact and so start to back away slowly.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if a random chance of 1 in 3 succeeds:
		say "     You are spotted by one of the ambulatory cock creatures and its rush towards you alerts the others.";
		LineBreak;
		challenge "Cock Cannon";
		challenge "Cock Cannon";
		challenge "Cock Cannon";
		say "     Those disturbing creatures finally dealt with, you make good your escape before others turn up.";
	else:
		say "     You quietly make your escape.";
		increase score by 1;
	Now Flooded Street is resolved;



Section 6 - Strip Bar

Strip Bar is a situation.
The sarea of Strip Bar is "Red".
stripbarcounter is a number that varies.
when play begins:
	add Strip Bar to badspots of hermaphrodite;
	add Strip Bar to badspots of furry;

Instead of resolving a Strip Bar:
	if stripbarcounter is 1:
		say "     After a few hours of fruitless searching among the besieged city, you come across another strip bar that's in fairly good shape. You see no obvious signs of trouble and after the last few hours of getting nowhere, you consider searching inside.";
		say "     [bold type]Do you enter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[stripbarsearch]";
		else:
			say "     You go off, deciding to find a safer place to search.";
			increase score by 1;
		now stripbarcounter is 2;
	else if stripbarcounter is 2:
		say "     You come to a third strip bar tucked into secluded part of this seedy part of town. It seems to have fared relatively well, with only minor damage. After a cautious glance inside, you don't see any signs of trouble.";
		say "     [bold type]Do you enter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[stripbarsearch]";
		else:
			say "     You go off, deciding to find a safer place to search.";
			increase score by 1;
		Now Strip Bar is resolved;
	else:
		say "     Passing through the infected city, you keep a watch for aggressive creatures or possible things of use while you await rescue. During your searching, you come across a relatively intact strip bar. While the lights and neon are off and it seems unoccupied, the place seems to be in better shape than many of the others you've come across. Perhaps there may still be something useful in there. Though given the nature of the business, you do worry about the risks.";
		say "     [bold type]Do you enter?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents:
			say "[stripbarsearch]";
		else:
			say "     You go off, deciding to find a safer place to search.";
			increase score by 1;
		now stripbarcounter is 1;
	stop the action;

to say stripbarsearch:
	let T be a random number between one and twelve;
	if T is 1:
		say "     Navigating around the tables and the occasional cum puddle, you see that the outbreak struck here as well while the business was running. You are extra cautious and avoid the main public area, instead checking behind the bar for supplies. It seems that much of it was damaged or take already, but you do have some luck and find some soda you can take.";
		say "     You obtain three soft drink cans.";
		increase score by 5;
		increase carried of soda by 3;
	if T is 2:
		say "     Searching through the strip bar, you have to avoid cum puddles. You head over to check the bar, but find that it was destroyed during the outbreak. It is covered in claw marks all over. You can see a huge puddle of cum behind the bar. You consider leaving, but spot the backstage door and slip in there before you leave. It's also quite messy back here, but you do manage to recover some snacks that one of the girls must have brought.";
		say "     You obtain a can of soft drink.";
		increase carried of soda by 1;
		increase score by 1;
	if T is 3:
		say "     Searching the strip bar, take care to avoid the cum puddles you find in there. Clearly this place was open when the infection struck and the patrons and staff fell quickly. You look around as best you can, but the extent of the contamination is too great and you have to give up the place for a loss. As you step out, you are spotted by a tigress who emerges from a nearby alleyway. She grins at you and runs a paw along her side. 'Looking for a little fun, are we? I've got just what you need,' she purrs, fondling a sizeable bulge under hir skirt.[line break]";
		challenge "Tigress Hooker";
	if T is 4:
		say "     Searching the strip bar, take care to avoid the cum puddles you find in there. Clearly this place was open when the infection struck and the patrons and staff fell quickly. You start to look around as best you can, but you are interrupted when a large, shemale collie bursts out of the backstage area. 'I was looking to see if there were still any of the sexy girls back there to bear my puppies, but now I've got you instead.'  Shi grins at you and crosses the distance between you even as you try to run out. You manage to make it outside before shi catches up with you, pulling you into a fight.[line break]";
		challenge "Shemale Smooth Collie";
	if T is 5:
		say "     Searching through the strip bar, you navigate cautiously around the tables and puddles of cum. It seems that this place was struck rather hard when the infection took hold. Despite outer appearances, the inside has been quite devastated. You decide to head back out, but not in time. A large glob of cum which was stuck to the ceiling comes down right on top of you. You try your best to wipe it off, but you can feel the tingles of the infection."; [random infection]
		weakrandominfect;
	if T is 6:
		say "		Searching through the strip bar, you navigate cautiously around the tables and puddles of cum. A quick check shows that the bar area has been already picked clean of anything that survived the initial damage. You turn to head out, but step on an empty bottle. Rolling away, it sends your foot out from under you and you fall. Your hand feels wet and sticky, having landed in a puddle of cum. You try to shake it off, but you can feel the tingles of the infection."; [random infection]
		weakrandominfect;
	if T is 7:
		say "     Searching through the strip bar, you navigate cautiously around the tables and puddles of cum. Clearly this place was open when the infection struck and the patrons and staff fell quickly. You head over to check the bar, but find that it was destroyed during the outbreak and even partially burned. Did the bartender try to ward off the monsters with fire or did something else occur? Seeing how there is nothing usable left, you decide not to investigate further and instead head to leave. As you're heading to leave, you spot the backstage door decide to check it out before you go.";
		say "     This turns out to be your undoing, as a bucketful of sticky, musky cum and juices falls onto you. An array of scents fill your nose, the bucket clearly having been filled by a variety of creatures, possibly the ex-staff of this establishment. Their combined fluids have soaked you and you can feel the tingles of the infection."; [triple unrelated random]
		weakrandominfect;
		weakrandominfect;
		randominfect; [researcher still gets one]
		decrease score by 5;
		decrease humanity of player by 5;
	if T > 7:
		say "Searching through the strip bar, you have to avoid cum puddles. You head over to check the bar, but find that it was destroyed during the outbreak. Clearly someone became something large and aggressive. The booze rack has been knocked completely over and the bottles are shattered. There are large patches of cum all around that area, so you have no inclination to search it more closely for any goods which may have survived. Well, better luck next time.";
		increase score by 1;



Section 7 - Evangelist

Evangelist is a situation.
The sarea of Evangelist is "Red".
when play begins:
	add Evangelist to badspots of girl;
	add Evangelist to badspots of guy;
	add Evangelist to badspots of hermaphrodite;
	add Evangelist to badspots of furry;
	add Evangelist to badspots of humorous;

Instead of resolving a Evangelist:
	say "     While trying to cross between stopped cars at a large intersection, you are stopped by the sound of someone climbing onto a car. Still hunkered down, you see an unchanged human. Unshaven for several days and dressed in dirty clothes, he smells strongly of alcohol. He is wild-eyed and waves a bible around as he start yelling at no one. He goes on incoherently about sinners, Babylon, bedding down with animals, damnation and so forth. You try to calm him down, but he will have none of it. Clearly overwrought by witnessing the transforming populous from his hiding spot, he's gone off the deep end. From some of his rambling, you gather he's always been upset by the lascivious nature of the neighbourhood around his home.";
	say "     Before you can get him to be quiet long enough to talk, it's too late. Drawn by the ruckus, the nearby monsters have taken notice and approach the intersection from all sides. Seeing an unchanged human, they go ballistic and charge forward. With you between them, you are forced to struggle against the maddened tide of lustful monsters.[line break]";
	if a random chance of 1 in 3 succeeds, now battleground is "Outside";
	fight;
	now battleground is "Red";
	say "     Looking up during a brief moment of respite, you see the would-be evangelist swinging his hardcover bible like a club, still screaming incessantly about the corruption of the flesh. Madness has given him strength and he manages to keep the monsters from climbing onto the car roof. The fact that many of the second ring of monsters around him are trying to mate those closer help him as well. Before you can consider whether to push forward to help him or try to make your escape, you are drawn into another fight.[line break]";
	if a random chance of 1 in 3 succeeds, now battleground is "High";
	fight;
	now battleground is "Red";
	say "     Having dealt with the next, you look over just in time to see the man get blasted across the face by a large splatter of cum. Turning to the side, you see a trio of leather-clad wolves with their arms around the body of one of the large, cock-shaped creatures. They stroke and tease it again, this time one mounting it from behind as the others aim. Another volley is shot, striking the man in the chest. He's already begun to transform, face taking the smooth shape of a giant glans and torso reshaping into a giant cock. The press of fur and flesh around you brings another monster to press against you, trying to bear you down to take its pleasure.[line break]";
	if a random chance of 1 in 3 succeeds, now battleground is "Outside";
	fight;
	now battleground is "Red";
	say "     Taking a quick breath, you look back to what remains of the man, but find him but another piece of the writhing mass of orgiastic sex. Only the tattered remains of his clothes let you spot him, he is shifting almost constantly as he is spit-roasted by a leopard guy at the front and a raccoon herm at the rear. Several others stroke their cocks, spraying cum all over him, and he seems to be loving it. Lost in the release of his long pent-up inhibitions, he has joined the mindlessly infected.";
	if libido of player > 39:
		say "     The sights, sounds and scents around you are becoming more and more cloying. You look around, seeing so many attractive pairings and trios of lustful animals. You are tempted to join them - to simply give into the lustful mass and join the orgy.";
		if libido of player > 74:
			say "[orgyoutcome]";
			increase score by 50;
			Now Evangelist is resolved;
			stop the action;
		say "     [bold type]You are tempted to join them - to simply give into the lustful mass and join the orgy.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Join them.";
		say "     ([link]N[as]n[end link]) - Leave.";
		if player consents:
			say "[orgyoutcome]";
			increase score by 50;
			Now Evangelist is resolved;
			stop the action;
	say "     You resist the urge to give in and join the orgy that has formed after the battle and scan around the sea of fur and flesh surrounding you. You notice the leather wolves are still at it with the cock cannon and one of them points towards you, trying to get the attention of his lustful brethren. You need to get out of here soon. Finding a path between several mating pairs, you try to dash to safety before things cascade further. You run, making it most of the way out of the crowd before being blocked by another monster.[line break]";
	fight;
	say "     Pushing your way free, you move to the relative safety of a nearby alcove, panting to catch your breath and to recover you energy. You look back at the top of the car, seeing that the leopard has prevailed against the other prospective lovers and is now plowing into the newly corrupted leopardess beneath him. They both yowl in feline ecstasy as he pumps his heavy load into her womb, seeking to breed his new mate.";
	increase score by 50;
	Now Evangelist is resolved;

to say orgyoutcome:
	say "     Giving in to the temptation of so many sexy creatures around you, you pounce at a nearby herm unicorn and wrap your lips around hir cock-like clit. You lick and suck over it, moaning in pleasure as the lust fills you. Shi is covered in soft, white hair which you run your hands over as you cup hir ass. Shi has no visible balls for you to play with, so you stuff a few fingers into hir dripping puss. Shi's already been seeded during the orgy and the cum leaks down over your hand.";
	say "     Behind you, you feel soft paws grip your bottom and a rubbery squeak before a wet cock teases against your ass before mounting you. You moan around your mouthful of cock. From the corner of your eye, you see a brief flash of orange. You probably have one of those latex foxes at your rear. You can feel him pounding you hard and fast, eager to send his hot seed into you.";
	say "     Your mouth is filled with a hot blast of juices from the ivory unicorn. You swallow it down eagerly between moans as the fox tries to stuff his knot fully into you. The unicorn is abruptly pulled away from you, still spurting as a large lion male moves to take hir place. He stuffs his cock into your mouth, facefucking you roughly. Though, in your lust-filled state, you certainly don't mind at all. And finally having that thick fox-knot locked inside you certainly helps as well.";
	say "     After getting a bellyfull of tasty lionseed and the sated fox's knot shrinks enough to pop free, you look over to the cause of this wonderful sexcapade you've found yourself in. Seeing that the leopard has prevailed against the other prospective lovers, you lick your lips as you watch him plowing into the newly corrupted leopardess beneath him. They both yowl in feline ecstasy as he pumps his heavy load into her womb, seeking to breed his new mate. You consider heading over to join them, but spot the herm raccoon who was there earlier. Being much closer and currently unoccupied, you give hir a kiss, taking hir hard cock in hand. Shi moans in pleasure and wraps hir arms around you, returning the lustful kiss by sliding hir tongue between your lips.";
	if cunts of player > 0 and cocks of player > 0:				[ HERM! ]
		say "     Deciding it's high time you tend to your cock, you guide the raccoon onto all fours and slide your cock into hir dripping pussy. Hir pussy grips you tightly as you plow into hir again and again. Surprisingly strong for hir size, you find shi's able to support your weight easily, freeing your hands to play with hir tits and cock while you fuck hir. Shi turns out to be a wonderful fucktoy, squealing and moaning in delight as you have your way with hir until finally spraying your hot load into hir. Hir heavy nuts drain their load onto the pavement as you pump hir cock while seeding hir, forming a large puddle of coonseed.";
		say "     As you withdraw, you're pulled into the arms of a herm gryphon. Sitting you in hir lap, shi bounces you on hir hard pole. Then it's off to mount a lioness before sucking off two different strains of horses at once. Things grow hazier as you pass from partner to partner. There is only the lust of so many creatures satisfying one another together.";
	else if cunts of player > 0 and cocks of player is 0:		[ FEMALE! ]
		say "     Deciding you want a taste of the thick coon meat, you bring your lips to it and start to suck it hungrily. The raccoon moans in pleasure, running hir hands over your head while your tongue slides up and down that tasty cock. Equipped with a heavy set of balls, you roll the grey-furred sac in your paws until they finally give up their thick load. You swallow it all down, feeling its warmth flowing into your belly.";
		say "     As you move back, you're pulled into the arms of a pair of stallions. They appear to be from two different strains, one a large draft horse and the other a quarter horse. Pressing you between them, the pair take you in the pussy and ass at once, stuffing you so deliciously full of horse cock, and later horse cum. Once satisfied, the pair move on and you're joined by a herm gryphon to takes your messy pussy while you eat out a sexy lioness. Things grow hazier as you pass from partner to partner. There is only the lust of so many creatures satisfying one another together.";
	else if cunts of player is 0 and cocks of player > 0:		[ MALE! ]
		say "     Deciding it's high time you tend to your cock, you guide the raccoon onto all fours and slide your cock into hir dripping pussy. Hir pussy grips you tightly as you plow into hir again and again. Surprisingly strong for hir size, you find shi's able to support your weight easily, freeing your hands to play with hir tits and cock while you fuck hir. Shi turns out to be a wonderful fucktoy, squealing and moaning in delight as you have your way with hir until finally spraying your hot load into hir. Hir heavy nuts drain their load onto the pavement as you pump hir cock while seeding hir, forming a large puddle of coonseed.";
		say "     As you withdraw, you're pulled into the arms of a lioness. Shoving you down, she wraps her muzzle around your cock while offering her pussy for you to lick. Your tongues please one another until you both reach a powerful climax. Then it's off to have a herm gryphon fill your ass again while sucking off two different strains of horses at once. Things grow hazier as you pass from partner to partner. There is only the lust of so many creatures satisfying one another together.";
	say "     This wild romp continues for hours, with numerous monsters sharing you or being shared by you. You quickly lose track of all the creatures you mate with and cycle through a myriad of positions and partners before it finally all falls apart from exhaustion. Your grip on your identity has been shaken from the intensity of the orgy, but you are quite sexually sated - for the time being.[randomimpreg][randomimpreg]";
	LineBreak;
	decrease humanity of player by 25;
	decrease libido of player by 40;
	if libido of player < 0:
		now libido of player is 0;
	randominfect; [4 different infections]
	now researchbypass is 1;
	increase monster by 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	infect;
	increase monster by 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	infect;
	increase monster by 1;
	choose row monster from table of random critters;
	while there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
		increase monster by 1;
		choose row monster from table of random critters;
		if there is a non-infectious in row monster of table of random critters and non-infectious entry is true:
			next;
		break;
	infect;
	now researchbypass is 0;



Section 8 - Business as Usual

Business as Usual is a situation.
The sarea of Business as Usual is "Red".
when play begins:
	add Business as Usual to badspots of furry;

Instead of resolving a Business as Usual:
	say "     You spot a grey mouse person a few buildings away. He's wearing a blue t-shirt and shorts and is carrying a small backpack in one hand. Despite their small size, barely over four feet tall, you take cover to observe him for a moment, trying to decide what to do. He darts intently across the street, stopping short of a tigress who steps from a nearby alleyway.";
	say "     The tigress is much taller than him and wearing a skimpy outfit that shows off her shapely body. She has a pink half-shirt that barely holds in her large bosom. She has a fishnet undershirt that covers her tight belly and has a cheap, leather skirt around her waist. Her red hair is tied into a ponytail by a small bow. She has another similar bow at the end of her tail.";
	say "     The mouse stands there nervously for a while, shifting from one foot to another, while she is at ease, almost as if bored by the discussion. Finally, she grows weary of a conversation she's probably had many times before and waves for him to give her the bag's contents. He smiles and pulls out a two-liter carton of milk and the tigress's eyes almost light up. She takes it and rushes him into the alley, paws roaming over his body. It seems that even in these strange times, the world's oldest profession lives on.";
	increase score by 1;
	Now Business as Usual is resolved;



Red Events ends here.
