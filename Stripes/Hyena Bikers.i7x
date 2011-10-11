Version 1 of Hyena Bikers by Stripes begins here.
[Completed w/selection menu thanks to mirumu.]
[version 1.1 - added exclusions]

"Adds a situation with a pack of hyenas on motorcycles in the High Rise District."


Section 1- Core Event Tree

Hyena Bikers is a situation.
The sarea of Hyena Bikers is "High";
when play begins:
	add Hyena Bikers to badspots of guy;
	add Hyena Bikers to badspots of hermaphrodite;
	add Hyena Bikers to badspots of furry;

Instead of resolving a Hyena Bikers:
	say "     As you pass down one street, you see a lot of fresh graffiti sprayed onto the concrete high-rises around you.  Looking it over, you see it proclaim the strength of the hyena gang.  This puzzles you, as you thought you were well out of hyena territory.";
	say "     You hear the roar of engines from out of a side street.  It takes you a moment to even place the sound; it has been so long since you[apostrophe]ve heard a motor running.  Motorcycles, your mind screams.  As the moment of realization sets in, you are already running as the hyenas on motor bikes chase after you, cackling loudly.  The next corner is too far away, but you continue running, looking for escape to either side.  The nearby buildings both have no access within reach.  The bikers overtake you and encircle you, laughing like hyenas as they keep you hemmed in.  Many of the bikes have heavy bags tied to them (presumably filled with ill-gotten gains) and a couple carry spare tanks of gas.";
	wait for any key;
	[puts Herm Hyena as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Herm Hyena":
			now monster is y;
			break;
	if hyg is 3 and the bodyname of player is "Herm Hyena":
		say "[ridetimecheck]";
	otherwise:
		say "[bikeattack]";
		challenge "Herm Hyena";
		if lost is 1:
			say "[beatenbyhb]";
			Now Hyena Bikers is resolved;
			stop the action;
		challenge "Herm Hyena";
		if lost is 1:
			say "[beatenbyhb]";
			Now Hyena Bikers is resolved;
			stop the action;
		challenge "Herm Hyena";
		if lost is 1:
			say "[beatenbyhb]";
			Now Hyena Bikers is resolved;
			stop the action;
		if lost is 0:
			say "     Having struck down the third gang member, the others start to move in to mob you, but there[apostrophe]s a laughing bark from the back.  The hyena[apostrophe]s stop, turning to look at their leader.  He steps up, a big male with a well-built body in a leather jacket.  He has a pair of sunglasses that have been modified to fit his muzzle.  You ready your weapon, preparing to deal with this stronger enemy, but he speaks instead of attacking.";
			say "     'You[apostrophe]re pretty tough.  You[apostrophe]re certainly brave and resourceful, managing on your own up to this point.  But you should really consider sticking with the hyenas instead of going solo after this.  You won[apostrophe]t be able to go it alone forever and someone like you could fight for a good position.'";
			say "     As the first hyena who faced you tries to get back up, he gives hir a hard smack in the back of the head.  The herm drops hir tire iron, which the leader kicks over to you.  'Take that, watch yourself and think on the offer.'  He boots the defeated hyenas back to their bikes and the gang gets on their bikes and rides off.  You are left with your strange prize and the biker[apostrophe]s offer mulling through your mind.";
			add "tire iron" to invent of player;
			if hyg < 2:					[alternate progress in joining the gang]
				now hyg is 2;
			say "     Tire iron obtained.";
			increase score by 5;
	Now Hyena Bikers is resolved;


Section 2 - Subroutines

to say ridetimecheck:
	if matriarchowned is 1:				[matriarch]
		say "     You are quickly recognized by the hyenas as their leader and their laughing stops.  One of the bikers, apparently their leader, pulls to a stop and gets off to talk to you.  He is a strong, well-built male in a leather jacket and sunglasses modified to fit his muzzle.  'We[apostrophe]re sorry about that, Matriarch.  We were busy on our duties,' he says as he points to their bags of loot, 'and so we[apostrophe]d missed your inauguration.  I[apostrophe]d like to make that up to you.  Perhaps you[apostrophe]d like us to drop you off somewhere while we return to the hideout.'  He gives you a playful smile.  'And maybe you would care for a little fun as well?'";
		say "[gimmearide]";
		increase score by 20;
	otherwise if matriarchdefeated is 1:	[submissive hyena]
		say "[bikersubsex]";
		increase score by 1;
	otherwise if matriarchdefeated is 2:	[hyena bitch]
		say "[bikerbitchsex]";
		wait for any key;
		increase score by 1;
		Move player to Hyena Hideout;		[dragged back to the hideout]
		now Hyena Bikers is resolved;
	otherwise:						[gang member]
		say "     As the bikers circle around you, you spot one at the back pull up to another watching the group, telling him something.  That biker, presumably their leader, calls off the riders and steps into the circle.  'It seems you[apostrophe]re lucky and one of us heard about you from Gina.  We[apostrophe]ve not been back to the hideout much recently and were just about to head back.  Perhaps we could you give you a fun ride somewhere on the way?'";
		say "[gimmearide]";
		increase score by 10;

ridemessage is a text that varies.

to say gimmearide:
	say "     You have been offered a ride by the hyena bikers.  The leader lists several places in the city they could drop you off and you have a few more come to mind.  Where would you like to go?";
	wait for any key;
	now ridemessage is "";
	change the current menu to table of Biker Destinations;
	carry out the displaying activity;
	clear the screen;
	say "[ridemessage]";
	wait for any key;
	try looking;

Table of Biker Destinations
title		subtable	description	toggle
"Gang HQ"		--	--	bikeride rule
"Abbey"		--	--	bikeride rule
"Mall"		--	--	bikeride rule
"Park"		--	--	bikeride rule
"Beach"		--	--	bikeride rule
"State Fair"		--	--	bikeride rule
"Red Light District"		--	--	bikeride rule
"Capitol Bldg"		--	--	bikeride rule
"Power Plant"		--	--	bikeride rule
"Stay"		--	--	bikeride rule

[This needs to be completed and made active]
This is the bikeride rule:
	choose row current menu selection in the current menu;
	if title entry is "Gang HQ":
		now ridemessage is "     You decide you[apostrophe]d like to ride back with the gang as they return to the hideout.  The leader nods, saying he[apostrophe]s looking forward to getting back as well. [line break][postridesex]";
		Move player to Hyena Hideout, without printing a room description;
		Now Hyena Hideout is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Abbey":
		now ridemessage is "     You decide you want to head back to the bunker at the Abbey.  You [if matriarchowned is 1]tell[otherwise]ask[end if] the biker leader to bring you to a corner nearby, not wanting to divulge its location to the gang quite yet. [line break][postridesex]";
		Move player to Grey Abbey Library, without printing a room description;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Mall":
		now ridemessage is "     You decide to get dropped off at the Smith Haven Mall.  He gives a rough, hyena laugh.  'Planning on doing some shopping?  Be sure to take advantage of the five-finger discount sale going on.' [line break][postridesex]";
		Move player to Smith Haven Mall Lot, without printing a room description;
		Now Smith Haven Mall Lot is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Park":
		now ridemessage is "     You decide to get dropped off at the city park.  'Sure, we can drop you there if you[apostrophe]d like.  Just be careful, there[apostrophe]s a lot of weird stuff in there.'  He points to one of his gang members at the back, a pantsless herm with three long, floppy dongs between hir legs.  'It took a night-long orgy and that[apostrophe]s the best we could do for poor Bill.' [line break][postridesex]";
		Move player to Park Entrance, without printing a room description;
		Now Park Entrance is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Beach":
		now ridemessage is "     You decide to get dropped off at the beach plaza.  He gives a rough, hyena laugh.  'Planning on getting a tan?  Just be careful, I[apostrophe]ve heard there[apostrophe]s some spooky stuff going on there in the evening.' [line break][postridesex]";
		Move player to Beach Plaza, without printing a room description;
		Now Beach Plaza is known;
		now Hyena Bikers is resolved;
		[now Beach Area is resolved;] [removes the random event for discovering the beach]
	otherwise if title entry is "State Fair":
		now ridemessage is "     You decide to get dropped off at the State Fair.  He gives a rough, hyena laugh.  'Looking for a little fun at the carnival?  I[apostrophe]ve got a fun ride for you right here,' he jokes, giving his ample package a squeeze. [line break][postridesex]";
		Move player to State fair, without printing a room description;
		Now State fair is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Red Light District":
		now ridemessage is "     You decide to get dropped off in the Red Light District.  He seems a little nervous at that.  'Just be careful in there.  With the whole city gone sex-crazy, that place has got to be the worst of all.  Watch your ass or something[apostrophe]ll be humping it.'  He[apostrophe]s willing to drop you off at the entrance, but won[apostrophe]t risk his riders by venturing any further in. [line break][postridesex]";
		Move player to Entrance to the Red Light District, without printing a room description;
		Now Entrance to the Red Light District is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Capitol Bldg":
		now ridemessage is "     You decide to get dropped off at the Capitol Building.  He gives a rough, hyena laugh.  'Are you looking for some help from the governor?  Ain[apostrophe]t gonna happen.  That place is all torn up.  Some kinda volcano or meteor strike or something has made a mess of it.  We[apostrophe]ll drop you off as close as we can, but don[apostrophe]t expect to find much.'[line break][postridesex]";
		Move player to Approaching the Capitol Building, without printing a room description;
		Now Approaching the Capitol Building is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Power Plant":
		now ridemessage is "     You decide to get dropped off at the city[apostrophe]s power plant.  If he wonders why you want to go there, he holds his tongue. [line break][postridesex]";
		Move player to Plant Overview, without printing a room description;
		Now Plant Overview is known;
		now Ravaged Power Plant is resolved;	[removes the random event for discovering the power plant]
		now Hyena Bikers is resolved;
	otherwise if title entry is "Stay":
		now ridemessage is "     You decide to decline the ride, telling him that you still have some searching to do around here.  He nods and wishes you well, adding that he hopes to see you back at the gang hideout soon.";
		now Hyena Bikers is resolved;
	decrease the menu depth by 1;
	rule succeeds;


to say bikeattack:
	[dodge three times - 10 dmg each]
	say "[line break]   The hyena bikers laugh derisively as they circle around you as you try to find a way out of this mess.  Suddenly one veers out and tries to charge you on hir bike.";
	wait for any key;
	let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 12: ";
	if dice plus bonus is greater than 12:
		say "   You roll to the side, narrowly missing a kick as he rides past.  You get up quickly, but another one is coming at you, swinging a length of chain over hir head.[line break]";
	otherwise:
		decrease hp of player by 10;
		say "   You are too slow to get away before the biker kicks you hard, knocking you down. (10 dmg)  As you try to get up quickly, another one is coming at you, swinging a length of chain over hir head.[line break]";
	wait for any key;
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 13: ";
	if dice plus bonus is greater than 13:
		say "   You dodge to the side just in time and hear the heavy chain whizz past just inches away.  You turn to face your assailant, but find another hyena biker almost upon you, tire iron raised high.[line break]";
	otherwise:
		decrease hp of player by 10;
		say "   The hyena strikes you hard on the shoulder with the heavy length of chain, bruising you. (10 dmg)  You turn to face your assailant, but find another hyena biker almost upon you, tire iron raised high.[line break]";
	wait for any key;
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 14: ";
	if dice plus bonus is greater than 14:
		say "   You duck quickly and the tire iron passes over your head.  You turn to face the biker, but shi's disappeared back into the whirling group.  You growl in frustration and call them cowards.  Most of them laugh, but one pulls to a stop and gets off to fight you hand to hand.  As you get ready to fight hir, you see others getting off their bikes to take you on as well.";
	otherwise:
		decrease hp of player by 10;
		say "   You are clubbed in the head by the hard metal, making you see stars for a moment. (10 dmg)  You turn to face the biker, but shi's disappeared back into the whirling group.  You growl in frustration and call them cowards.  Most of them laugh, but one pulls to a stop and gets off to fight you hand to hand.  As you get ready to fight hir, you see others getting off their bikes to take you on as well.";


Section 3 - Sexy Subroutines

to say beatenbyhb:
	say "     After the first hyena steps back after had hir way with you, you can see there are others ready and waiting to play with their newly captured toy.  The next in line is a strong male in a leather jacket and sunglasses.  His jeans are unzipped, revealing his large shaft.  It is quite impressive - substantially larger than the average hyena herm.";
	say "     He grabs your jaw and stuffs his thick cock into your mouth while another hyena, a herm, lines hirself up behind you.  You moan loudly as you feel hir shaft pressing into you, spreading your [if cunts of player > 0][cunt size desc of player] pussy[otherwise]tight asshole[end if].  With a firm grip on your rear, shi pounds you hard and fast, clearly quite pent up and intent on relieving hir need deep inside you.";
	wait for any key;
	say "     You try your best not to neglect that thick cock filling your mouth, working your lips and tongue over its hard, black length.  The hyena leader is quite the stud, with a much bigger cock than the other herms have.  It fills your mouth quite full and tastes of male and virility.  His pre leaks onto your tongue and down your throat as he starts thrusting, arousing you further.";
	say "     The two hyenas continue to thrust themselves into your body as they spear you from each end.  You can hear the sounds of the other bikers having fun together around you, further exciting you.  You take it eagerly, moaning and squirming in pleasure until finally you feel the hot rush of cum down your throat, followed by another series of blasts into your [if cunts of player > 0]eager pussy[otherwise]gripping asshole[end if].  [If cocks of player > 0]Your cock dangles beneath you as you cum, spraying your unwanted seed onto the pavement beneath you as the strong, dominant hyenas have their way with you.[end if]";
	wait for any key;
	say "     That pair done with you, you are pushed roughly into the hands of others.  You are bent over one of their bikes at take you again.  Other stroke their cocks and cum all over your face.  You lick up as much of it as you can get, much to their amusement.";
	say "     Eventually, the orgy winds down once all hyenas feel quite sated and you quite full of hyena cum in every available hole.  A shadow passes over you and you look up, still quite dazed with lust.  The hyena leader is standing above you.  'You[apostrophe]re certainly brave and resourceful, managing on your own up to this point.  But you should really consider sticking with the hyenas instead of going solo after this.'  With that, he turns back to his group and gets on his bike.  Following their leader, the bikers mount up once again and ride off, leaving you in a puddle of cum, with part of you longing to be used again.";
	say "[impregchance]";			[another chance for impregnation]
	infect "Herm Hyena";			[second dose of infection]
	decrease humanity of player by 5;
	increase libido of player by 12;
	if libido of player > 100:
		now libido of player is 100;
	if hyg < 2:					[alternate progress in joining the gang]
		now hyg is 2;
	Now Hyena Bikers is resolved;


to say postridesex:
	wait for any key;
	if matriarchowned is 1:				[matriarch]
		say "     You are led to the gang leader[apostrophe]s bike and asked to get on.  He mounts up behind you and the bikes roar to life again.  The ride takes some time to cross the city, with several twists and turns to take routes that are clear enough for the bikes.  In some areas, you are crossing alleys and riding on the sidewalk in others just to get past clumps of abandoned cars.  The bikers know many of these paths, the leader tells you during a brief pause, having found many of them as individual riders before they teamed up and became part of the hyena gang.  You are proud to have such fine members in your gang.";
		say "     During the whole of the ride, you can feel the hard bulge of his cock pressing to your rear and the occasional nuzzle of his muzzle at your ear.  The hard throb of the engine beneath you sends further pleasure through your altered body, making your excitement grow further.  The strength of his male scent any time you pause makes your [if cunts of player > 0 and cocks of player > 0]pussy wet and cock throb[otherwise if cunts of player > 0]pussy wet[otherwise]cock throb[end if].";
		wait for any key;
		if cunts of player > 0:			[female/herm matriarch]
			say "     Eventually, you reach your destination and the gang comes to a stop.  The biker grinds his cock against you a few more times and asks if he may further serve his matriarch.  Having seen him and his group in action, you decide he[apostrophe]s a worthy of mating with you.  You turn your head to kiss him lustfully.  His tongue dives into your mouth and soon you[apostrophe]re naked and laying across the bike.  He grabs one of your legs and raises it up as he lines up his cock.";
			say "     He rumbles softly in your ear as his cock starts to sink into you, making you moan in pleasure.  After all the stimulation on the ride, you are aching to be filled and the biker is just as eager to do the job.  He[apostrophe]s quite well hung, larger than the other hyena herms you[apostrophe]ve seen and it only makes you want the virile male all the more.";
			wait for any key;
			say "     As he thrusts into you, his bike sways and you[apostrophe]re concerned it[apostrophe]ll topple over. But the rider just whistles and one of the gang[apostrophe]s lower flunkies rushes over, propping the bike up with hir own body.  Once hir wet tongue starts lapping at your wet puss and his hard rod as it stuffs you, you[apostrophe]re pleased to see shi[apostrophe]s getting some fun out of being the obedient and submissive bitch.  Shi[apostrophe]s very fortunate to be even able to do this for hir matriarch.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[apostrophe]s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while the studly male fucks you good and hard.";
			wait for any key;
			say "     The strong male pants heavily as he pounds into you vigorously.  You can hear the bitch beneath you groan, possibly in pleasure, as each thrust presses the bike against them.  Certainly the tongue only gets more frantic in its licking, even diving at your asshole from time to time, making you shiver at this new delight.";
			if cocks of player > 0:		[climax for herm matriarch]
				say "     Your hard cock leaks precum onto your body as the hyena pounds you.  As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it as your cock empties its load across your chest.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the biker leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.";
			otherwise:				[climax for female matriarch]
				say "     As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it eagerly.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.";
			say "[impregchance]";
			say "     Once his knot goes down, the male hyena slides his cock out slowly while the obedient herm licks first you, then him clean.  You get slowly up off the bike and kiss the biker in thanks for both rides he[apostrophe]s given you today before you part ways from his group.  He again thanks his matriarch for being able to be of service to her and asks that you call upon him again whenever you wish.";
		otherwise:					[male matriarch]
			say "     Eventually, you reach your destination and the gang comes to a stop.  The biker grinds his cock against you a few more times and asks if he may further serve his matriarch.  Having seen him and his group in action, you decide he[apostrophe]s a worthy of enjoying your cock.  You turn your head to kiss him lustfully.  His tongue dives into your mouth and soon you[apostrophe]re both naked.";
			say "     You firmly shove the biker over to a nearby wall, having him spread himself for you.  He moans softly as your hard cock grinds against his rear, probing his tailhole.  He[apostrophe]s quite tight, clearly never having done this before as a dominant male.  But he wiggles his rump back against you, clearly eager to be of service his matriarch.";
			wait for any key;
			say "     As you sink your shaft into him, you lick his ear and tell him how pleased you are with him and his group.  As you make a particularly hard thrust into him, you tell him how pleased you are that he also knows his place is beneath you as well.  He moans happily and presses his rump back against you, clearly starting to enjoy his service to your needs.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[apostrophe]s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while you fuck the studly male good and hard.";
			wait for any key;
			say "     Only one is left waiting quietly, a hyena herm playing with hirself as shi watches.  Shi is clearly the leader[apostrophe]s servant and is waiting on his orders, and he on yours.  Feeling magnanimous, you motion for hir to come over and take hir position under the male.  Shi licks and sucks him eagerly while your hard thrusts pound him into you.";
			say "     This added stimulation soon gets to be too much for the strong male and he cums hard, shooting his load into the bitch beneath him.  The feel of his tight ass clenching around you sets you off and you shoot your hot load deep into his virgin hole.  You revel in asserting your dominance over the strong, confident male.";
			say "     As your orgasm subsides, you slide your shaft from the freshly claimed male and give his rear a squeeze.  He moans softly, a little pained, but clearly pleased.  You turn him around and kiss the biker in thanks for both rides he[apostrophe]s given you today before you part ways from his group.  He again thanks his matriarch for being able to be of service to her and asks that you call upon him again whenever you wish.  It[apostrophe]s good to have competent followers who know their place.";
	otherwise:						[regular gang member]
		say "     You are led to the gang leader[apostrophe]s bike and told to get on.  He mounts up behind you and the bikes roar to life again.  The ride takes some time to cross the city, with several twists and turns to take routes that are clear enough for the bikes.  In some areas, you are crossing alleys and riding on the sidewalk in others just to get past clumps of abandoned cars.  The bikers know many of these paths, the leader tells you during a brief pause, having found many of them as individual riders before they teamed up and became part of the hyena gang.";
		say "     During the whole of the ride, you can feel the hard bulge of his cock pressing to your rear and the occasional nuzzle of his muzzle at your ear.  The hard throb of the engine beneath you sends further pleasure through your altered body, making your excitement grow further.  The strength of his male scent any time you pause makes your [if cunts of player > 0 and cocks of player > 0]pussy wet and cock throb[otherwise if cunts of player > 0]pussy wet[otherwise]cock throb[end if].";
		wait for any key;
		say "     Eventually, you reach your destination and the gang comes to a stop.  The biker grinds his cock against you a few more times and you turn your head to kiss him in thanks.  His tongue dives into your mouth and soon you[apostrophe]re naked and laying across the bike.  He grabs one of your legs and raises it up as he lines up his cock.";
		if cunts of player > 0:			[female/herm]
			say "     He rumbles softly in your ear as his cock starts to sink into you, making you moan in pleasure.  After all the stimulation on the ride, you are aching to be filled and the biker is just as eager to do the job.  He[apostrophe]s quite well hung, larger than the other hyena herms you[apostrophe]ve seen and it only makes you want the virile male all the more.";
			wait for any key;
			say "     As he thrusts into you, his bike sways and you[apostrophe]re worried it[apostrophe]ll topple over. But the rider just whistles and one of the gang[apostrophe]s lower flunkies rushes over, propping the bike up with hir own body.  You feel a moment of concern for them, but once hir wet tongue starts lapping at your wet puss and his hard rod as it stuffs you, you[apostrophe]re pleased to see shi[apostrophe]s getting some fun out of being the obedient and submissive bitch.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[apostrophe]s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while the studly male fucks you good and hard.";
			wait for any key;
			say "     The strong male pants heavily as he pounds into you vigorously.  You can hear the bitch beneath you groan, possibly in pleasure, as each thrust presses the bike against them.  Certainly the tongue only gets more frantic in its licking, even diving at your asshole from time to time, making you shiver at this new delight.";
			if cocks of player > 0:		[herm climax]
				say "     Your hard cock leaks precum onto your body as the hyena pounds you.  As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it as your cock empties its load across your chest.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.";
			otherwise:				[female climax]
				say "     As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it eagerly.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.";
			say "[impregchance]";
		otherwise:					[male]
			say "     He rumbles softly in your ear as his cock starts to sink into you, making you moan in pleasure.  After all the stimulation on the ride, you are aching for some fun the biker is just as eager to do the job.  He[apostrophe]s quite well hung, larger than the other hyena herms you[apostrophe]ve seen and it only makes you want the dominant, virile male all the more.";
			wait for any key;
			say "     As he thrusts into you, his bike sways and you worry it[apostrophe]ll topple over. But the rider just whistles and one of the gang[apostrophe]s lower flunkies rushes over, propping the bike up with hir own body.  You feel a moment of concern for them, but once hir wet tongue starts lapping at your spread asshole and his hard rod as it stuffs you, you[apostrophe]re pleased to see they[apostrophe]re getting some fun out of being the obedient and submissive bitch.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[apostrophe]s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while the studly male fucks you good and hard.";
			wait for any key;
			say "     The strong male pants heavily as he pounds into you vigorously.  You can hear the bitch beneath you groan, possibly in pleasure, as each thrust presses the bike against them.  Certainly the tongue only gets more frantic in its licking.";
			say "     Your hard cock leaks precum onto your body as the hyena pounds you.  As his knot pops into you, locking you both together, you are driven over the edge.  Your ass clenches around his shaft, milking at it as your cock empties its load across your chest.  The lower herm is there in moments, licking and sucking your cock to enjoy your thick seed.  As you[apostrophe]re finishing up, the well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.";
		say "     Once his knot goes down, the male hyena slides his cock out slowly while the obedient herm licks both it and you clean.  You get slowly up off the bike and kiss the biker in thanks for both rides he[apostrophe]s given you today before you part ways from his group.";
	infect "Herm Hyena";


to say bikersubsex:
	say "     After circling around you for a while, they stop their bikes and get off, moving towards you intently as a group.  One steps through the others, moving up close to you.  'And what is a low-ranked member like you doing out on your own, I wonder,' their leader asks.  'Looking for trouble, are you?' he asks.  'Or perhaps just a little fun?  I think you should get yourself to work, taking care of some real hyenas who[apostrophe]ve been doing some real work for the gang.  We[apostrophe]ve been out collecting for days and could use a little reward.'  He starts unzipping his jeans, showing he has no intent to make this a request and you find yourself complying, submitting to the higher-ranked male.  His cock is out but a moment before you have your mouth wrapped around it.";
	say "     You are helped out of the little clothes you have and you have another hyena, a herm, lining up behind you.  You moan loudly as you feel hir shaft pressing into you, spreading your [if cunts of player > 0][cunt size desc of player] pussy[otherwise]tight asshole[end if].  With a firm grip on your rear, shi pounds you hard and fast, clearly quite pent up and intent on relieving hir need deep inside you.";
	wait for any key;
	say "     You try your best not to neglect that thick cock filling your mouth, working your lips and tongue over its hard, black length.  The hyena leader is quite the stud, with a much bigger cock than the other herms have.  It fills your mouth quite full and tastes of male and virility.  His pre leaks onto your tongue and down your throat as he starts thrusting, arousing you further.";
	say "     The two hyenas continue to thrust themselves into your body as they spear you from each end.  You can hear the sounds of the other bikers having fun together around you, further exciting you.  You take it eagerly, moaning and squirming in pleasure until finally you feel the hot rush of cum down your throat, followed by another series of blasts into your [if cunts of player > 0]eager pussy[otherwise]gripping asshole[end if].  [If cocks of player > 0]Your cock dangles beneath you, spraying its undesirable, submissive seed onto the pavement beneath you as the stronger, more dominant hyenas have their way with you.[end if]";
	say "     That pair done with you, you are pushed roughly into the hands of others.  You are bent over one of their bikes at take you again.  Other stroke their cocks and cum all over your face.  You lick up as much of it as you can get, much to their amusement.";
	wait for any key;
	say "     Eventually, the orgy winds down, everyone feeling quite sated and you quite full of hyena cum in every available hole.  The hyenas mount up once again and ride off, leaving you to your own devices, but longing to be used again.";
	say "[impregchance]";
	infect "Herm Hyena";
	infect "Herm Hyena";	
	decrease humanity of player by 6;
	increase libido of player by 12;
	if libido of player > 100:
		now libido of player is 100;


to say bikerbitchsex:
	say "     With so many hyenas circling around you, your submissive urges start to come back and you drop to all fours, presenting yourself to them.  This makes them get off their bikes and laugh all the louder.  One hyena in a leather jacket and sunglasses strides up first, full of confidence and the strong scent of dominance.  'And what[apostrophe]s a weak little bitch like you doing so far from home?'  He strokes a paw over your bottom, squeezing your rump.  'Looking for a strong alpha to fill you, are you?'";
	say "     Your subservient instincts make you moan and press your rear back into his touch, making him smile wider.  'Yes, I think you are.'  With that, he brings his cock to your [if cunts of player > 0]wet pussy[otherwise]eager ass[end if] and slowly sinks in.  You moan even louder in satisfaction.  He[apostrophe]s larger than the average hyena and fills you so very full, just what your bitch body is craving.";
	wait for any key;
	say "     Another hyena moves in front of you, presenting hir cock to your lips.  Shi doesn[apostrophe]t have to say or do anything more; your stuff it into your mouth, licking and sucking it eagerly.  As the male behind you thrusts, you are rocked between them, riding those hard poles.  Around you, you can hear the others having fun together, further exciting you.";
	if cocks of player > 0:			[male/herm insert]
		say "     Your cock dangles beneath you, spraying its undesirable, submissive seed onto the pavement beneath you as the stronger, more dominant hyenas have their way with you.  You are but a [if cunts of player > 0]breedtoy[otherwise]fucktoy[end if] for them and your sex-addled mind wouldn[apostrophe]t have it any other way.";
	if cunts of player > 0:			[female/herm second half]
		say "     The pair continue to pound their cocks into you from each end until finally you are given a hot load of hyena cum down your throat.  Your dripping cunt grips firmly around the male[apostrophe]s cock, but he only groans and slows his pace to almost a standstill.  This makes you moan all the louder with need as the herm pulls hir cock from you and steps back.  The male leader keeps his paws firmly on your rear, holding you from riding him as your body desires.";
		wait for any key;
		say "     'Not so fast, my eager slut.  I intend to keep your pussy all to myself.  I was looking for a nice bitch to fill with big, strong cubs.'  His words are like a delicious torture to you, making you want his seed to breed you all the more, but knowing the dominant male will not give it to you until later.  You start to beg him to breed you now, but another herm comes up and stuffs hir cock in your muzzle, silencing you.";
		say "     The orgy continues like that for quite some time, with many hyenas enjoying your eager muzzle while the male takes his good, sweet time with you.  As the leader, the others let him keep your pussy all to himself until finally, in the end you are given your reward.  You feel his knot swell fully inside you, locking you tight as his cock throbs inside you, blasting burst after burst of hot hyena cum into you.  Because he held back so long, there is so much of it.  All trapped by his knot, you can feel the hot, virile seed being forced into your womb, filling it with his sperm.";
		say "[impregchance]";
		say "     Once the breeding session is done and his knot has gone down, he pulls out of you.  A little of his cum leaks out, but most is safely stored in your womb, filling you with warmth.  He drags you over to his bike and tosses you onto it like another prize and mounts it.  You ride back to the hideout on his motorcycle, with him playing with your well-used pussy from time to time.  The ride over, he tosses you off and tells you to be a good bitch and come back for more later.";
	otherwise:					[male second half]
		say "     The pair continue to pound their cocks into you from each end until finally you are given a hot load of hyena cum down your throat and another deep inside your bowels.  Your tailhole grips and squeezes at the thick pole, getting every drop your needy body can from the big, virile male.";
		say "     That pair done with you, you are pushed roughly into the hands of others.  You are bent over one of their bikes and taken again.  Other stroke their cocks and cum all over your face.  You lick up as much of it as you can get, much to their amusement.";
		wait for any key;
		say "     Eventually, the orgy winds down, everyone feeling quite sated and your ass full to overflowing with hyena cum.  The hyena leader steps up to you and drags you over to his bike.  He tosses you onto it like another prize and mounts it.  You ride back to the hideout on his motorcycle, with him playing with your well-used asshole from time to time.  The ride over, he tosses you off and tells you to be a good bitch and come back for more later.";
	infect "Herm Hyena";
	infect "Herm Hyena";	
	decrease humanity of player by 8;
	increase libido of player by 15;
	if libido of player > 100:
		now libido of player is 100;


Section 4 - Tire Iron

Table of Game Objects (continued)
name	desc	weight	object
"tire iron"	"A heavy tire iron - a good, cliché make-shift weapon."	1	tire iron

tire iron is an armament. It is part of the player. It has a weapon "[one of]your tire iron[or]the tire iron[or]your metal tire iron[at random]". The weapon damage of tire iron is 6. The weapon type of tire iron is "Melee". It is not temporary.

Hyena Bikers ends here.