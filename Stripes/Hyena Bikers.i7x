Version 2 of Hyena Bikers by Stripes begins here.
[Completed w/selection menu thanks to mirumu.]
[version 2.5 - Biker leader sex]

"Adds a situation with a pack of hyenas on motorcycles in the High Rise District."


Section 1- Core Event Tree

Hyena Bikers is a situation.
The sarea of Hyena Bikers is "High".
when play begins:
	add Hyena Bikers to badspots of guy;
	add Hyena Bikers to badspots of hermaphrodite;
	add Hyena Bikers to badspots of furry;

Instead of resolving a Hyena Bikers:
	move Grant to Hyena Hideout;
	say "     As you pass down one street, you see a lot of fresh graffiti sprayed onto the concrete high-rises around you.  Looking it over, you see it proclaim the strength of the hyena gang.  This puzzles you, as you thought you were well out of hyena territory.";
	say "     You hear the roar of engines from out of a side street.  It takes you a moment to even place the sound; it has been so long since you[']ve heard a motor running.  Motorcycles, your mind screams.  As the moment of realization sets in, you are already running as the hyenas on motor bikes chase after you, cackling loudly.  The next corner is too far away, but you continue running, looking for escape to either side.  The nearby buildings both have no access within reach.  The bikers overtake you and encircle you, laughing like hyenas as they keep you hemmed in.  Many of the bikes have heavy bags tied to them (presumably filled with ill-gotten gains) and a couple carry spare tanks of gas.";
	wait for any key;
	[puts Herm Hyena as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Herm Hyena":
			now monster is y;
			break;
	if hyg is 4 and the bodyname of player is "Herm Hyena":
		say "[ridetimecheck]";
	otherwise if hyg is 4 and the facename of player is "Herm Hyena":
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
			say "     Having struck down the third gang member, the others start to move in to mob you, but there[']s a laughing bark from the back.  The hyena[']s stop, turning to look at their leader.  He steps up, a big male with a well-built body in a leather jacket.  He has a pair of sunglasses that have been modified to fit his muzzle.  You ready your weapon, preparing to deal with this stronger enemy, but he speaks instead of attacking.";
			say "     'You[']re pretty tough.  You[']re certainly brave and resourceful, managing on your own up to this point.  But you should really consider sticking with the hyenas instead of going solo after this.  You won[']t be able to go it alone forever and someone like you could fight for a good position.'";
			say "     As the first hyena who faced you tries to get back up, he gives hir a hard smack in the back of the head.  The herm drops hir tire iron, which the leader kicks over to you.  'Take that, watch yourself and think on the offer.'  He boots the defeated hyenas back to their bikes and the gang gets on their bikes and rides off.  You are left with your strange prize and the biker[']s offer mulling through your mind.";
			increase carried of tire iron by 1;
			if hyg < 2:					[alternate progress in joining the gang]
				now hyg is 2;
			say "     Tire iron obtained.";
			increase score by 5;
	Now Hyena Bikers is resolved;


Section 2 - Subroutines

to say ridetimecheck:
	if matriarchowned is 1:				[matriarch]
		say "     You are quickly recognized by the hyenas as their leader and their laughing stops.  One of the bikers, apparently their leader, pulls to a stop and gets off to talk to you.  He is a strong, well-built male in a leather jacket and sunglasses modified to fit his muzzle.  'We[']re sorry about that, Matriarch.  We were busy on our duties,' he says as he points to their bags of loot, 'and so we[']d missed your inauguration.  I[']d like to make that up to you.  Perhaps you[']d like us to drop you off somewhere while we return to the hideout.'  He gives you a playful smile.  'And maybe you would care for a little fun as well?'";
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
		say "     As the bikers circle around you, you spot one at the back pull up to another watching the group, telling him something.  That biker, presumably their leader, calls off the riders and steps into the circle.  'It seems you[']re lucky and one of us heard about you from Gina.  We[']ve not been back to the hideout much recently and were just about to head back.  Perhaps we could you give you a fun ride somewhere on the way?'";
		say "[gimmearide]";
		increase score by 10;

ridemessage is a text that varies.

to say gimmearide:
	say "     You have been offered a ride by the hyena bikers.  The leader lists several places in the city they could drop you off and you have a few more come to mind.  Where would you like to go?";
	wait for any key;
	now ridemessage is "";
	sort the table of Biker Destinations in sortorder order;
	change the current menu to table of Biker Destinations;
	carry out the displaying activity;
	clear the screen;
	say "[ridemessage]";
	wait for any key;
	try looking;

Table of Biker Destinations
title		subtable	description	sortorder	toggle
"Gang HQ"		--	--	1	bikeride rule
"Abbey"		--	--	2	bikeride rule
"Mall"		--	--	3	bikeride rule
"Park"		--	--	4	bikeride rule
"Beach"		--	--	5	bikeride rule
"Hospital"		--	--	6	bikeride rule
"State Fair"		--	--	7	bikeride rule
"Red Light District"		--	--	9	bikeride rule
"Capitol Bldg"		--	--	11	bikeride rule
"Power Plant"		--	--	12	bikeride rule
"College Campus"		--	--	13	bikeride rule
"Warehouse District"		--	--	14	bikeride rule
"Stay"		--	--	100	bikeride rule
with two blank rows.

to enable the Stables:
	choose a blank row in the table of Biker Destinations;
	now title entry is "The Stables";
	now sortorder entry is 10;
	now toggle entry is bikeride rule;
	sort the table of Biker Destinations in sortorder order;

to enable the High Rise District:
	choose a blank row in the table of Biker Destinations;
	now title entry is "High Rise District";
	now sortorder entry is 8;
	now toggle entry is bikeride rule;
	sort the table of Biker Destinations in sortorder order;

to disable the Stay option:
	repeat through the table of Biker Destinations:
		if title entry is "Stay":
			blank out the whole row;

This is the bikeride rule:
	choose row current menu selection in the current menu;
	if title entry is "Gang HQ":
		if bikedest is 0:
			now ridemessage is "     You decide you[']d like to ride back with the gang as they return to the hideout.  The leader nods, saying he[']s looking forward to getting back as well. [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide you[']d like to ride back with the gang as they return to the hideout.  The leader nods, saying he[']s looking forward to getting back as well. [line break]";
		Move player to Hyena Hideout, without printing a room description;
		Now Hyena Hideout is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Abbey":
		if bikedest is 0:
			now ridemessage is "     You decide you want to head back to the bunker at the Abbey.  You [if matriarchowned is 1]tell[otherwise]ask[end if] the biker leader to bring you to a corner nearby, not wanting to divulge its location to the gang quite yet. [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide you want to head back to the bunker at the Abbey.  You [if matriarchowned is 1]tell[otherwise]ask[end if] the biker leader to bring you to a corner nearby, not wanting to divulge its location to the gang quite yet. [line break]";
		Move player to Grey Abbey Library, without printing a room description;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Mall":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the Smith Haven Mall.  He gives a rough, hyena laugh.  'Planning on doing some shopping?  Be sure to take advantage of the five-finger discount sale going on.' [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the Smith Haven Mall.  He gives a rough, hyena laugh.  'Planning on doing some shopping?  Be sure to take advantage of the five-finger discount sale going on.' [line break]";
		Move player to Smith Haven Mall Lot South, without printing a room description;
		Now Smith Haven Mall Lot South is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Park":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the city park.  'Sure, we can drop you there if you[']d like.  Just be careful, there[']s a lot of weird stuff in there.'  He points to one of his gang members at the back, a pantsless herm with three long, floppy dongs between hir legs.  'It took a night-long orgy and that[']s the best we could do for poor Bill.' [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the city park.  'Sure, I can drop you there if you[']d like.  Just be careful, there[']s a lot of weird stuff in there and don't take your eyes off the plants.' [line break][postridesex]";
		Move player to Park Entrance, without printing a room description;
		Now Park Entrance is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Beach":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the beach plaza.  He gives a rough, hyena laugh.  'Planning on getting a tan?  Just be careful, I[']ve heard there[']s some spooky stuff going on there in the evening.' [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the beach plaza.  He gives a rough, hyena laugh.  'Planning on getting a tan?  Just be careful, I[']ve heard there[']s some spooky stuff going on there in the evening.' [line break]";
		Move player to Beach Plaza, without printing a room description;
		Now Beach Plaza is known;
		now Hyena Bikers is resolved;
		[now Beach Area is resolved;] [removes the random event for discovering the beach]
	otherwise if title entry is "Hospital":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the City Hospital.  He seems a little nervous at that.  'Just be careful in there, I've heard tales of strange monsters and the ex-staff capturing people and dragging them back for experiments.  We should be safe enough in the parking lot together, but you'll be on your own after we drop you off.' [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the City Hospital.  He seems a little nervous at that.  'Just be careful in there, I've heard tales of strange monsters and the ex-staff capturing people and dragging them back for experiments.  We should be safe enough in the parking lot together, but you'll be on your own after I drop you off.' [line break]";
		Move player to City Hospital, without printing a room description;
		Now City Hospital is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "State Fair":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the State Fair.  He gives a rough, hyena laugh.  'Looking for a little fun at the carnival?  I[']ve got a fun ride for you right here,' he jokes, giving his ample package a squeeze. [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the State Fair.  He gives a rough, hyena laugh.  'Looking for a little fun at the carnival?  I[']ve got a fun ride for you right here,' he jokes, giving his ample package a squeeze. [line break]";
		Move player to State fair, without printing a room description;
		Now State fair is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "High Rise District":
		now ridemessage is "     You decide to get dropped off in the High Rise District.  He gives a rough, hyena laugh. 'Looking to head back where we first met?  Didn't know you were so sentimental,' he jokes, though he has a tender smile as he helps you mount up. [line break][postridesex]";
		Move player to Entrance to the High Rise District, without printing a room description;
		Now Entrance to the High Rise District is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Red Light District":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off in the Red Light District.  He seems a little nervous at that.  'Just be careful in there.  With the whole city gone sex-crazy, that place has got to be the worst of all.  Watch your ass or something[']ll be humping it.'  He[']s willing to drop you off at the entrance, but won[']t risk his riders by venturing any further in. [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off in the Red Light District.  He seems a little nervous at that.  'Just be careful in there.  With the whole city gone sex-crazy, that place has got to be the worst of all.  Watch your ass or something[']ll be humping it.'  He[']s willing to drop you off at the entrance, but won[']t risk his riders by venturing any further in. [line break]";
		Move player to Entrance to the Red Light District, without printing a room description;
		Now Entrance to the Red Light District is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "The Stables":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at The Stables whorehouse.  'Going to check up on our deal, are you?  Or maybe just the wares?  You be careful in there.  I've heard those equines can be rather rough about recruiting and they may try to pull something on you if you're not careful.'  He cautions you as you mount up. [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at The Stables whorehouse.  'Going to check up on our deal, are you?  Or maybe just the wares?  You be careful in there.  I've heard those equines can be rather rough about recruiting and they may try to pull something on you if you're not careful.'  He cautions you as you mount up. [line break]";
		Move player to Stables, without printing a room description;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Capitol Bldg":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the Capitol Building.  He gives a rough, hyena laugh.  'Are you looking for some help from the governor?  Ain[']t gonna happen.  That place is all torn up.  Some kinda volcano or meteor strike or something has made a mess of it.  We[']ll drop you off as close as we can, but don[']t expect to find much.'[line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the Capitol Building.  He gives a rough, hyena laugh.  'Are you looking for some help from the governor?  Ain[']t gonna happen.  That place is all torn up.  Some kinda volcano or meteor strike or something has made a mess of it.  I[']ll drop you off as close as I can, but don[']t expect to find much.'[line break]";
		Move player to Approaching the Capitol Building, without printing a room description;
		Now Approaching the Capitol Building is known;
		Now Government Assistance is resolved;	[removes the random event for discovering the Capitol Bldg]
		now Hyena Bikers is resolved;
	otherwise if title entry is "Power Plant":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the city[']s power plant.  If he wonders why you want to go there, he holds his tongue. [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the city[']s power plant.  If he wonders why you want to go there, he holds his tongue. [line break]";
		Move player to Plant Overview, without printing a room description;
		Now Plant Overview is known;
		now Ravaged Power Plant is resolved;	[removes the random event for discovering the power plant]
		now Hyena Bikers is resolved;
	otherwise if title entry is "College Campus":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the city's college campus.  'We kept our distance from that spot.  It doesn't look like those jocks and their steroids reacted well to this whole mess.  You be careful.' [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the city's college campus.  'We kept our distance from that spot.  It doesn't look like those jocks and their steroids reacted well to this whole mess.  You be careful.' [line break]";
		Move player to College Campus, without printing a room description;
		Now College Campus is known;
		now Reaching the College is resolved;	[removes the random event for discovering the College Campus]
		now Hyena Bikers is resolved;
	otherwise if title entry is "Warehouse District":
		if bikedest is 0:
			now ridemessage is "     You decide to get dropped off at the warehouse district along the waterfront.  'Good thinking, casing out those warehouses for stuff for the gang.' [line break][postridesex]";
		otherwise:
			now ridemessage is "     You decide to get dropped off at the warehouse district along the waterfront.  'Good thinking, casing out those warehouses for stuff for the gang.' [line break]";
		Move player to Warehouse District, without printing a room description;
		Now Warehouse District is known;
		now Hyena Bikers is resolved;
	otherwise if title entry is "Stay":
		now ridemessage is "     You decide to decline the ride, telling him that you still have some searching to do around here.  He nods and wishes you well, adding that he hopes to see you back at the gang hideout soon.";
		now Hyena Bikers is resolved;
	decrease the menu depth by 1;
	rule succeeds;


to say bikeattack:
	[dodge three times - 10 dmg each]
	say "[line break]   The hyena bikers laugh derisively as they circle around you as you try to find a way out of this mess.  Suddenly one veers out and tries to charge you on hir bike.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 12: ";
	if dice plus bonus is greater than 12:
		say "   You roll to the side, narrowly missing a kick as he rides past.  You get up quickly, but another one is coming at you, swinging a length of chain over hir head.[line break]";
	otherwise:
		decrease hp of player by 10;
		say "   You are too slow to get away before the biker kicks you hard, knocking you down. (10 dmg)  As you try to get up quickly, another one is coming at you, swinging a length of chain over hir head.[line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	let the dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 13: ";
	if dice plus bonus is greater than 13:
		say "   You dodge to the side just in time and hear the heavy chain whizz past just inches away.  You turn to face your assailant, but find another hyena biker almost upon you, tire iron raised high.[line break]";
	otherwise:
		decrease hp of player by 10;
		say "   The hyena strikes you hard on the shoulder with the heavy length of chain, bruising you. (10 dmg)  You turn to face your assailant, but find another hyena biker almost upon you, tire iron raised high.[line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
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
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     You try your best not to neglect that thick cock filling your mouth, working your lips and tongue over its hard, black length.  The hyena leader is quite the stud, with a much bigger cock than the other herms have.  It fills your mouth quite full and tastes of male and virility.  His pre leaks onto your tongue and down your throat as he starts thrusting, arousing you further.";
	say "     The two hyenas continue to thrust themselves into your body as they spear you from each end.  You can hear the sounds of the other bikers having fun together around you, further exciting you.  You take it eagerly, moaning and squirming in pleasure until finally you feel the hot rush of cum down your throat, followed by another series of blasts into your [if cunts of player > 0]eager pussy[otherwise]gripping asshole[end if].  [If cocks of player > 0]Your cock dangles beneath you as you cum, spraying your unwanted seed onto the pavement beneath you as the strong, dominant hyenas have their way with you.[end if]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     That pair done with you, you are pushed roughly into the hands of others.  You are bent over one of their bikes and another pair take you again.  Other stroke their cocks and cum all over your face.  You lick up as much of it as you can get, much to their amusement.";
	say "     Eventually, the orgy winds down once all hyenas feel quite sated and you quite full of hyena cum in every available hole.  A shadow passes over you and you look up, still quite dazed with lust.  The hyena leader is standing above you.  'You[']re certainly brave and resourceful, managing on your own up to this point.  But you should really consider sticking with the hyenas instead of going solo after this.'  With that, he turns back to his group and gets on his bike.  Following their leader, the bikers mount up once again and ride off, leaving you in a puddle of cum, with part of you longing to be used again.[impregchance]";			[another chance for impregnation]
	infect "Herm Hyena";			[second dose of infection]
	decrease humanity of player by 5;
	increase libido of player by 12;
	if libido of player > 100:
		now libido of player is 100;
	if hyg < 2:					[alternate progress in joining the gang]
		now hyg is 2;
	now lastfuck of grant is turns;
	Now Hyena Bikers is resolved;


to say postridesex:
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if matriarchowned is 1:				[matriarch]
		say "     You are led to the gang leader[']s bike and asked to get on.  He mounts up behind you and the bikes roar to life again.  The ride takes some time to cross the city, with several twists and turns to take routes that are clear enough for the bikes.  In some areas, you are crossing alleys and riding on the sidewalk in others just to get past clumps of abandoned cars.  The bikers know many of these paths, the leader tells you during a brief pause, having found many of them as individual riders before they teamed up and became part of the hyena gang.  You are proud to have such fine members in your gang.";
		say "     During the whole of the ride, you can feel the hard bulge of his cock pressing to your rear and the occasional nuzzle of his muzzle at your ear.  The hard throb of the engine beneath you sends further pleasure through your altered body, making your excitement grow further.  The strength of his male scent any time you pause makes your [if cunts of player > 0 and cocks of player > 0]pussy wet and cock throb[otherwise if cunts of player > 0]pussy wet[otherwise]cock throb[end if].";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if cunts of player > 0:			[female/herm matriarch]
			say "     Eventually, you reach your destination and the gang comes to a stop.  The biker grinds his cock against you a few more times and asks if he may further serve his matriarch.  Having seen him and his group in action, you decide he[']s worthy of mating with you.  You turn your head to kiss him lustfully.  His tongue dives into your mouth and soon you[']re naked and laying across the bike.  He grabs one of your legs and raises it up as he lines up his cock.";
			say "     He rumbles softly in your ear as his cock starts to sink into you, making you moan in pleasure.  After all the stimulation on the ride, you are aching to be filled and the biker is just as eager to do the job.  He[']s quite well hung, larger than the other hyena herms you[']ve seen and it only makes you want the virile male all the more.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     As he thrusts into you, his bike sways and you[']re concerned it[']ll topple over. But the rider just whistles and one of the gang[']s lower flunkies rushes over, propping the bike up with hir own body.  Once hir wet tongue starts lapping at your wet puss and his hard rod as it stuffs you, you[']re pleased to see shi[']s getting some fun out of being the obedient and submissive bitch.  Shi[']s very fortunate to be even able to do this for hir matriarch.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[']s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while the studly male fucks you good and hard.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     The strong male pants heavily as he pounds into you vigorously.  You can hear the bitch beneath you groan, possibly in pleasure, as each thrust presses the bike against them.  Certainly the tongue only gets more frantic in its licking, even diving at your asshole from time to time, making you shiver at this new delight.";
			if cocks of player > 0:		[climax for herm matriarch]
				say "     Your hard cock leaks precum onto your body as the hyena pounds you.  As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it as your cock empties its load across your chest.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the biker leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.[impregchance]";
			otherwise:				[climax for female matriarch]
				say "     As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it eagerly.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.[impregchance]";
			say "     Once his knot goes down, the male hyena slides his cock out slowly while the obedient herm licks first you, then him clean.  You get slowly up off the bike and kiss the biker in thanks for both rides he[']s given you today before you part ways from his group.  He again thanks his matriarch for being able to be of service to her and asks that you call upon him again whenever you wish.";
		otherwise:					[male matriarch]
			say "     Eventually, you reach your destination and the gang comes to a stop.  The biker grinds his cock against you a few more times and asks if he may further serve his matriarch.  Having seen him and his group in action, you decide he[']s worthy of enjoying your cock.  You turn your head to kiss him lustfully.  His tongue dives into your mouth and soon you[']re both naked.";
			say "     You firmly shove the biker over to a nearby wall, having him spread himself for you.  He moans softly as your hard cock grinds against his rear, probing his tailhole.  He[']s quite tight, clearly never having done this before, being a dominant male.  But he wiggles his rump back against you, clearly still eager to be of service his matriarch.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     As you sink your shaft into him, you lick his ear and tell him how pleased you are with him and his group.  As you make a particularly hard thrust into him, you tell him how pleased you are that he also knows his place is beneath you as well.  He moans happily and presses his rump back against you, clearly starting to enjoy his service to your needs.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[']s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while you fuck the studly male good and hard.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     Only one is left waiting quietly, a hyena herm playing with hirself as shi watches.  Shi is clearly the leader[']s servant and is waiting on his orders, and he on yours.  Feeling magnanimous, you motion for hir to come over and take hir position under the male.  Shi licks and sucks him eagerly while your hard thrusts pound him into you.";
			say "     This added stimulation soon gets to be too much for the strong male and he cums hard, shooting his load into the bitch beneath him.  The feel of his tight ass clenching around you sets you off and you shoot your hot load deep into his virgin hole.  You revel in asserting your dominance over the strong, confident male.";
			say "     As your orgasm subsides, you slide your shaft from the freshly claimed male and give his rear a squeeze.  He moans softly, a little pained, but clearly pleased.  You turn him around and kiss the biker in thanks for both rides he[']s given you today before you part ways from his group.  He again thanks his matriarch for being able to be of service to her and asks that you call upon him again whenever you wish.  It[']s good to have competent followers who know their place.";
			increase grantfucked by 1;
	otherwise:						[regular gang member]
		say "     You are led to the gang leader[']s bike and told to get on.  He mounts up behind you and the bikes roar to life again.  The ride takes some time to cross the city, with several twists and turns to take routes that are clear enough for the bikes.  In some areas, you are crossing alleys and riding on the sidewalk in others just to get past clumps of abandoned cars.  The bikers know many of these paths, the leader tells you during a brief pause, having found many of them as individual riders before they teamed up and became part of the hyena gang.";
		say "     During the whole of the ride, you can feel the hard bulge of his cock pressing to your rear and the occasional nuzzle of his muzzle at your ear.  The hard throb of the engine beneath you sends further pleasure through your altered body, making your excitement grow further.  The strength of his male scent any time you pause makes your [if cunts of player > 0 and cocks of player > 0]pussy wet and cock throb[otherwise if cunts of player > 0]pussy wet[otherwise]cock throb[end if].";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Eventually, you reach your destination and the gang comes to a stop.  The biker grinds his cock against you a few more times and you turn your head to kiss him in thanks.  His tongue dives into your mouth and soon you[']re naked and laying across the bike.  He grabs one of your legs and raises it up as he lines up his cock.";
		if cunts of player > 0:			[female/herm]
			say "     He rumbles softly in your ear as his cock starts to sink into you, making you moan in pleasure.  After all the stimulation on the ride, you are aching to be filled and the biker is just as eager to do the job.  He[']s quite well hung, larger than the other hyena herms you[']ve seen and it only makes you want the virile male all the more.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     As he thrusts into you, his bike sways and you[']re worried it[']ll topple over. But the rider just whistles and one of the gang[']s lower flunkies rushes over, propping the bike up with hir own body.  You feel a moment of concern for them, but once hir wet tongue starts lapping at your wet puss and his hard rod as it stuffs you, you[']re pleased to see shi[']s getting some fun out of being the obedient and submissive bitch.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[']s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while the studly male fucks you good and hard.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     The strong male pants heavily as he pounds into you vigorously.  You can hear the bitch beneath you groan, possibly in pleasure, as each thrust presses the bike against them.  Certainly the tongue only gets more frantic in its licking, even diving at your asshole from time to time, making you shiver at this new delight.";
			if cocks of player > 0:		[herm climax]
				say "     Your hard cock leaks precum onto your body as the hyena pounds you.  As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it as your cock empties its load across your chest.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.[impregchance]";
			otherwise:				[female climax]
				say "     As his knot pops into you, locking you both together, you are driven over the edge.  Your pussy quivers around his shaft, milking at it eagerly.  The well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.[impregchance]";
		otherwise:					[male]
			say "     He rumbles softly in your ear as his cock starts to sink into you, making you moan in pleasure.  After all the stimulation on the ride, you are aching for some fun the biker is just as eager to do the job.  He[']s quite well hung, larger than the other hyena herms you[']ve seen and it only makes you want the dominant, virile male all the more.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     As he thrusts into you, his bike sways and you worry it[']ll topple over. But the rider just whistles and one of the gang[']s lower flunkies rushes over, propping the bike up with hir own body.  You feel a moment of concern for them, but once hir wet tongue starts lapping at your spread asshole and his hard rod as it stuffs you, you[']re pleased to see they[']re getting some fun out of being the obedient and submissive bitch.";
			say "     Around you, you can see that many of the others in the gang have broken off into groups and are going at it like wild animals.  They ease into their roles as tops or bottoms, masters or bitches, quite smoothly.  It[']s clear this is a well-organized group with the pecking order and team units well established.  Wherever you choose to look, you are given a lovely show, with an array of positions and carnal acts to watch while the studly male fucks you good and hard.";
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     The strong male pants heavily as he pounds into you vigorously.  You can hear the bitch beneath you groan, possibly in pleasure, as each thrust presses the bike against them.  Certainly the tongue only gets more frantic in its licking.";
			say "     Your hard cock leaks precum onto your body as the hyena pounds you.  As his knot pops into you, locking you both together, you are driven over the edge.  Your ass clenches around his shaft, milking at it as your cock empties its load across your chest.  The lower herm is there in moments, licking and sucking your cock to enjoy your thick seed.  As you[']re finishing up, the well-hung male groans and slams into you hard one last time, releasing his hot load into you in heavy spurts.  As the leader spreads his seed in you, the hyena tongue licking you eagerly laps up what few drops leak out around that thick knot.[mimpregchance]";
		say "     Once his knot goes down, the male hyena slides his cock out slowly while the obedient herm licks both it and you clean.  You get slowly up off the bike and kiss the biker in thanks for both rides he[']s given you today before you part ways from his group.";
	infect "Herm Hyena";
	now lastfuck of grant is turns;


to say bikersubsex:
	say "     After circling around you for a while, they stop their bikes and get off, moving towards you intently as a group.  One steps through the others, moving up close to you.  'And what is a low-ranked member like you doing out on your own, I wonder,' their leader asks.  'Looking for trouble, are you?' he asks.  'Or perhaps just a little fun?  I think you should get yourself to work, taking care of some real hyenas who[']ve been doing some real work for the gang.  We[']ve been out collecting for days and could use a little reward.'  He starts unzipping his jeans, showing he has no intent to make this a request and you find yourself complying, submitting to the higher-ranked male.  His cock is out but a moment before you have your mouth wrapped around it.";
	say "     You are helped out of the little clothes you have and you have another hyena, a herm, lining up behind you.  You moan loudly as you feel hir shaft pressing into you, spreading your [if cunts of player > 0][cunt size desc of player] pussy[otherwise]tight asshole[end if].  With a firm grip on your rear, shi pounds you hard and fast, clearly quite pent up and intent on relieving hir need deep inside you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     You try your best not to neglect that thick cock filling your mouth, working your lips and tongue over its hard, black length.  The hyena leader is quite the stud, with a much bigger cock than the other herms have.  It fills your mouth quite full and tastes of male and virility.  His pre leaks onto your tongue and down your throat as he starts thrusting, arousing you further.";
	say "     The two hyenas continue to thrust themselves into your body as they spear you from each end.  You can hear the sounds of the other bikers having fun together around you, further exciting you.  You take it eagerly, moaning and squirming in pleasure until finally you feel the hot rush of cum down your throat, followed by another series of blasts into your [if cunts of player > 0]eager pussy[otherwise]gripping asshole[end if].  [If cocks of player > 0]Your cock dangles beneath you, spraying its undesirable, submissive seed onto the pavement beneath you as the stronger, more dominant hyenas have their way with you.[end if]";
	say "     That pair done with you, you are pushed roughly into the hands of others.  You are bent over one of their bikes and another pair take you again.  Others stroke their cocks and cum all over your face.  You lick up as much of it as you can get, much to their amusement.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Eventually, the orgy winds down, everyone feeling quite sated and you quite full of hyena cum in every available hole.  The hyenas mount up once again and ride off, leaving you to your own devices, but longing to be used again.[impregchance]";
	infect "Herm Hyena";
	infect "Herm Hyena";	
	decrease humanity of player by 6;
	increase libido of player by 12;
	if libido of player > 100:
		now libido of player is 100;
	now lastfuck of grant is turns;


to say bikerbitchsex:
	say "     With so many hyenas circling around you, your submissive urges start to come back and you drop to all fours, presenting yourself to them.  This makes them get off their bikes and laugh all the louder.  One hyena in a leather jacket and sunglasses strides up first, full of confidence and the strong scent of dominance.  'And what[']s a weak little bitch like you doing so far from home?'  He strokes a paw over your bottom, squeezing your rump.  'Looking for a strong alpha to fill you, are you?'";
	say "     Your subservient instincts make you moan and press your rear back into his touch, making him smile wider.  'Yes, I think you are.'  With that, he brings his cock to your [if cunts of player > 0]wet pussy[otherwise]eager ass[end if] and slowly sinks in.  You moan even louder in satisfaction.  He[']s larger than the average hyena and fills you so very full, just what your bitch body is craving.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Another hyena moves in front of you, presenting hir cock to your lips.  Shi doesn[']t have to say or do anything more; you stuff it into your mouth, licking and sucking it eagerly.  As the male behind you thrusts, you are rocked between them, riding those hard poles.  Around you, you can hear the others having fun together, further exciting you.";
	if cocks of player > 0:			[male/herm insert]
		say "     Your cock dangles beneath you, spraying its undesirable, submissive seed onto the pavement beneath you as the stronger, more dominant hyenas have their way with you.  You are but a [if cunts of player > 0]breedtoy[otherwise]fucktoy[end if] for them and your sex-addled mind wouldn[']t have it any other way.";
	if cunts of player > 0:			[female/herm second half]
		say "     The pair continue to pound their cocks into you from each end until finally you are given a hot load of hyena cum down your throat.  Your dripping cunt grips firmly around the male[']s cock, but he only groans and slows his pace to almost a standstill.  This makes you moan all the louder with need as the herm pulls hir cock from you and steps back.  The male leader keeps his paws firmly on your rear, holding you from riding him as your body desires.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     'Not so fast, my eager slut.  I intend to keep your pussy all to myself.  I was looking for a nice bitch to fill with big, strong cubs.'  His words are like a delicious torture to you, making you want his seed to breed you all the more, but knowing the dominant male will not give it to you until later.  You start to beg him to breed you now, but another herm comes up and stuffs hir cock in your muzzle, silencing you.";
		say "     The orgy continues like that for quite some time, with many hyenas enjoying your eager muzzle while the male takes his good, sweet time with you.  As the leader, the others let him keep your pussy all to himself until finally, in the end you are given your reward.  You feel his knot swell fully inside you, locking you tight as his cock throbs inside you, blasting burst after burst of hot hyena cum into you.  Because he held back so long, there is so much of it.  All trapped by his knot, you can feel the hot, virile seed being forced into your womb, filling it with his sperm.[impregchance]";
		say "     Once the breeding session is done and his knot has gone down, he pulls out of you.  A little of his cum leaks out, but most is safely stored in your womb, filling you with warmth.  He drags you over to his bike and tosses you onto it like another prize and mounts it.  You ride back to the hideout on his motorcycle, with him playing with your well-used pussy from time to time.  The ride over, he tosses you off and tells you to be a good bitch and come back for more later.";
	otherwise:					[male second half]
		say "     The pair continue to pound their cocks into you from each end until finally you are given a hot load of hyena cum down your throat and another deep inside your bowels.  Your tailhole grips and squeezes at the thick pole, getting every drop your needy body can from the big, virile male.[mimpregchance]";
		say "     That pair done with you, you are pushed roughly into the hands of others.  You are bent over one of their bikes and taken again.  Other stroke their cocks and cum all over your face.  You lick up as much of it as you can get, much to their amusement.[mimpregchance]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Eventually, the orgy winds down, everyone feeling quite sated and your ass full to overflowing with hyena cum.  The hyena leader steps up to you and drags you over to his bike.  He tosses you onto it like another prize and mounts it.  You ride back to the hideout on his motorcycle, with him playing with your well-used asshole from time to time.  The ride over, he tosses you off and tells you to be a good bitch and come back for more later.";
	infect "Herm Hyena";
	infect "Herm Hyena";	
	decrease humanity of player by 8;
	increase libido of player by 15;
	if libido of player > 100:
		now libido of player is 100;
	now lastfuck of grant is turns;


Section 4 - Tire Iron

Table of Game Objects (continued)
name	desc	weight	object
"tire iron"	"A heavy tire iron - a good, cliche make-shift weapon."	1	tire iron

tire iron is an armament. It is part of the player. It has a weapon "[one of]your tire iron[or]the tire iron[or]your metal tire iron[at random]". The weapon damage of tire iron is 6. The weapon type of tire iron is "Melee". It is not temporary.

instead of sniffing tire iron:
	say "The tire iron smells of metal and motor oil.";


Section 5 - Grant

Grant is a man.
The description of Grant is "[grantdesc]".
The conversation of Grant is { "Cool!" }.
The icon of Grant is figure of Grant2_icon.
granttalk is a number that varies.
grantbitch is a number that varies.
grantsex is a number that varies.
grantfucked is a number that varies.
bikedest is a number that varies.

to say grantdesc:
	say "     The leader of the hyena bikers is here, sitting on a wooden crate and watching the others milling about.  His pose is casual, but his eyes watch them intently, as if sizing them up and evaluating them.  He is a strong, fully male hyena wearing a leather jacket and jeans.  He has a pair of sunglasses that have been adjusted to fit on his muzzle.";

instead of sniffing Grant:
	say "Grant smells of male hyena, strong and virile.  His scent also contains the scent of old leather, grease and motorcycle exhaust[if matriarchdefeated is 2].  His dominant, masculine scent makes you the hyena bitch inside you want to bend over for him[end if].";

instead of conversing the Grant:
	if matriarchdefeated is 2:
		if bodyname of player is not "Herm Hyena":
			say "     The hyena biker glances down at you, looking over your [bodyname of player] form and shakes his head.  'Now, that just won't do at all.  He grabs your shoulder and pushes you to your knees in front of him.  With his legs around you, he holds you close.  You watch as he pulls out his impressive cock and strokes himself hard.";
			say "     Your eyes remain locked on this display, enable to draw away as those suppressed hyena urges start to rise again, keeping you submissively waiting for what you know is coming.  The scent of his arousal grows stronger, turning you on as well, making you more and more eager for what is to come.  And cum he does, spraying his thick, ample seed across your face and chest, marking you with his semen and letting it soak into you, seeking to restore the hyena bitch in you.";
			now lastfuck of grant is turns;
			hyenaify;
		otherwise:
			say "     The impressive male hyena spares you the briefest of glances as you come over to him, then casually shoves you away with one of his feet, not interested in talking to a gang bitch like you.";
	otherwise if granttalk is 0:
		say "     You head on over to the biker leader to talk to him.  He [if matriarchowned is 1]rises respectfully as his superior comes over[otherwise if matriarchdefeated is 1]looks you over, a lesser member, and gives a soft grunt of acknowledgement[otherwise]nods casually to you, waiting to hear what you have to say[end if].  You start talking to him and he looks over the room again, then back to you.";
		say "     'The name's Grant.  I don't think you got it earlier.  I've got the mechanics working on my bike, giving her a bit of tune up.  After so long out on the road, she needs some TLC.  I'll be here for a little while.  I've been eying the new recruits for possible riders while I've got the time, but haven't seen any I want to bother with.  Slim picking lately, it seems.'";
		increase granttalk by 1;
	otherwise:
		say "[one of]'Like I said,' the biker leader states, 'I have the crew working on a tune up for my bike.  It's good to take a break after being away for so long.'[or]'Look at them,' the hyena says, 'most of them are running around without any focus.  Too undisciplined to be any use except as goons.'[or]'Most of this lot don't measure up to my riders.  I don't think I'll be adding any new riders.'[or]'It seems that you and Gina are hitting it off.  Stick with her.  She's a good lieutenant.'[or]'If Gina was into bikes, I'd have her in my team.'[in random order]";


instead of fucking the grant:
	[puts Herm Hyena as lead monster for possible impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Herm Hyena":
			now monster is y;
			break;
	if bikedest is 0:
		now bikedest is 1;
		enable the High Rise District;
		disable the Stay option;
	if lastfuck of grant - turns is less than 8:
		if matriarchdefeated is 2:
			say "     The biker leader hops off the crate and push you against it roughly.  He leans overtop you and nibbles your ear.  As you start to hope he'll mount you, he swats you hard on the rear.  'You're overeager, little bitch.  Come back later and I'll be in the mood to show you what a real male's like.'  He gives you another swat on the ass before shoving you back into the room.  Many of the others around chuckle as the impressive male sends you off firmly.  You blush and slink away, but long for [']later['] to come.";
		otherwise:
			say "     'Well, you're certainly had a good time and are eager if you're back for more this soon.  I do need a little chance to recover before I go again.  I'm not quite ready for another [']ride['] quite yet,' Grant says with a grin.";
	otherwise if matriarchdefeated is 2:
		if bodyname of player is not "Herm Hyena":
			say "     The hyena biker glances down at you, looking over your [bodyname of player] form and shakes his head.  'Now, that just won't do at all.'  He grabs your shoulder and pushes you to your knees in front of him.  With his legs around you, he holds you close.  You watch as he pulls out his impressive cock and strokes himself hard.";
			say "     Your eyes remain locked on this display, enable to draw away as those suppressed hyena urges start to rise again, keeping you submissively waiting for what you know is coming.  The scent of his arousal grows stronger, turning you on as well, making you more and more eager for what is to come.  And cum he does, spraying his thick, ample seed across your face and chest, marking you with his semen and letting it soak into you, seeking to restore the hyena bitch in you.";
		otherwise:
			if grantbitch is 0:
				say "[grantbitchsex1]";
			otherwise if grantbitch is 1:
				say "     The biker leader doesn't seem to notice you as you come over.  You shift from one foot to the other uneasily for a moment, drawn back to him.  Before you can come to a decision on how to make your offer, he reaches out and grabs your head, pulling your face down to his crotch.  You are pressed to the denim fabric, the scent of his sheath and cock hidden beneath it filling your nose.";
				say "     'Get to work, little bitch,' he says softly, not even turning his head to look at you.  But you can tell his eyes are locked on you from behind those sunglasses.  You nod quickly and unzip his jeans.  You slip them open and fish out his ample sheath and balls, then happily lick and kiss his maleness.  As his cock starts to engorge and slips from its sheath, you eagerly start to lavish it with attention.  As your lips wrap around his swelling glans, he smiles a little and strokes your ears.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "[grantbitchsex2]";
				say "     When that's finished to his satisfaction, he gently pushes you away with his other foot.  He chuckles at your soft whine and tells you to come back again later if you want to continue being his special bitch.";
			otherwise if grantbitch is 2:
				say "[grantbitchsex3]";
			otherwise if remainder after dividing grantbitch by 3 is 0:
				say "     As you start to head over to Grant, the biker smiles teasingly and slides down his zipper.  As he pulls his impressive sheath and balls from the tight jeans, he motions for you to get on your knees, which you do obediently.  He takes his sheath in your paws, stroking the soft fur and coaxing out his growing shaft.  You lick and kiss at it, making smile and stroke your ears.  'That's my good pet,' he compliments you.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "[grantbitchsex2]";
				say "     After you've cleaned your master's footpaw to his satisfaction, he grins and presses you away with the other foot.  You whine submissively and he smiles, tucking himself back into his jeans.  'Gimme a little while to rest up, my eager bitch, and then maybe I'll give you the good fucking you need.  If you're good,' he adds with a chuckle.  You head off, eager for the prospect of next time's fun.";
			otherwise if remainder after dividing grantbitch by 3 is 1:
				say "[grantbitchsex4]";
			otherwise if remainder after dividing grantbitch by 3 is 2:
				say "[grantbitchsex5]";
			increase grantbitch by 1;
			increase grantsex by 1;
		hyenaify;
		now lastfuck of grant is turns;
	otherwise if bodyname of player is not "Herm Hyena":
		say "     The hyena biker glances down at you, looking over your [bodyname of player] form and shakes his head.  'Now, that just won't do at all.  He motions for you to get onto your knees as he pulls out his impressive cock and strokes himself hard.  'Let's see if we can improve your looks a little.'";
		say "     As you watch, the strong male strokes his large shaft, precum dripping down it.  Your hyena urges start to rise again as you watch that big shaft get hard for you.  The scent of his arousal grows stronger, turning you on as well, making you more and more eager for what is to come.  And cum he does, spraying his thick, ample seed across your face and chest, marking you with his semen and letting soak into you, seeking to restore the hyena in you.";
		hyenaify;
		now lastfuck of grant is turns;
	otherwise:
		say "     'Oh?  Interested in taking a ride with the big, bad biker, are we?  [if matriarchowned is 1]It would be my pleasure to serve you, my matriarch,'[otherwise if matriarchdefeated is 1]I could stand for a joyride, little sub,'[otherwise]Best to have our fun away from Gina's watchful eye.  I'll just give you a lift somewhere,'[end if] he replies with a wink.";
		say "     The biker leader leads to you the garage where his bike is stored.  A few of his team are there, working on their bikes or shooting the breeze.  They all smarten up as they see [if matriarchowned is 1]you both[otherwise]him[end if] come in, then relax when he nods to them[if matriarchowned is 1].  'Just giving our matriarch a lift, boys.  You guys still have some time for R&R.'  They wait respectfully for their matriarch to leave before breaking into a bit of roughhousing[otherwise].  'Just a little joyride, boys.  No mission yet.'  They chuckle a little, grinning as they eye the new member they met out on the road[end if].";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     You and Grant roar out on his bike, taking a short but scenic ride through the city before riding to the top of a parking structure.  There, he stops the bike and takes you into his arms";
		if cocks of player > 0 and cunts of player > 0 and matriarchowned is 1:		[herm matriarch]
			say ".  The biker runs his paws along your body, shifting between your cock and pussy while licking and nibbling along your neck.  'And what can I do to serve my matriarch today?' he rumbles softly in your ear.";
			say "     (Y=to be fucked, N=to fuck him)";
			if the player consents:
				say "[grantfsex]";
			otherwise:
				say "[grantmbottom]";
		otherwise if cocks of player > 0 and matriarchowned is 1:				[male matriarch]
			say ".  The biker runs his paws along your body, shifting them to your cock while licking and nibbling along your neck.  'And how can I serve my matriarch today?' he rumbles softly in your ear, to which you respond by giving his ass a firm squeeze.";
			wait for any key;
			say "[grantmbottom]";
		otherwise if cunts of player > 0:
			say ".  The biker runs his paws along your body and between your legs to rub your pussy while licking and nibbling along your neck.  'Come, my eager lady, let's get you nice and filled,' he rumbles softly in your ear.";
			wait for any key;
			say "[grantfsex]";
		otherwise:
			say ".  The biker runs his paws along your body and between your legs to rub your cock while licking and nibbling along your neck.  His other paw gives your ass a firm squeeze.  'Come, my eager slut, let's get you nice and filled,' he rumbles softly in your ear.";
			wait for any key;
			say "[grantmtop]";
		if matriarchowned is not 1 and matriarchdefeated is 1 and a random chance of 1 in 2 succeeds:
			say "     'Get moving.  I want to head back to HQ and check on something,' he growls roughly, pulling you back onto the bike with him.  Your submissive urges make you obey him in silence, keeping your arms around him tightly and resting your head against his back during the return trip.  You find yourself longing to be with him again, to feel him in you again.  The ride is too short for your liking, with him sending you back out into the main area as soon as you arrive.";
		otherwise:
			if matriarchdefeated is 1:
				say "     'It's a nice day/night for a ride and I'm feeling generous.  Where would you like me to drop you off?'";
			otherwise if matriarchowned is 1:
				say "     'Thank you for a very pleasant ride, my matriarch.  Where would you like to go now?'";
			otherwise:
				say "     'That was a fun ride.  Is there anywhere you'd like me to drop you off while we're out?'";
		increase grantsex by 1;
		now lastfuck of grant is turns;
		say "[gimmearide]";


to say grantstretch:
	if cunt length of player < 6 and "Male Preferred" is not listed in feats of player:
		increase cunt length of player by 3;
		increase cunt width of player by 1;
		say "     The well-endowed hyena's meat is a very tight fit for you, but he manages to stretch you out some to accommodate him.  You whimper softly at the initial pain, but he licks your ears and takes it easy for a few minutes, letting you adjust before returning to his vigorous pace.";
	otherwise if cunt length of player < 11 and "Male Preferred" is not listed in feats of player and "Modest Organs" is not listed in feats of player:
		increase cunt length of player by 2;
		increase cunt width of player by 1;
		say "     The well-endowed hyena's meat is a tight fit for you, but he manages to stretch you out some to accommodate him.  He licks your ears and takes it easy briefly, letting you adjust before returning to his vigorous pace.";


to say grantbitchsex1:
	say "     As you come over to the alpha male with the intent to solicit his attention, he glances over at you for a moment.  As if knowing what you're after by reading your body language, Grant hops off the crates and grabs you roughly.  With a shove, he has you pressed down across what was his seat moments ago as his paws roam over your body.  'You need a good fucking, don't you, bitch?' he rumbles in your ear.";
	say "     Keeping a paw to hold you down even though this is what you came over for, he opens his jeans and removes any unnecessary clothes between his cock and your ass.  That done, he brings his free paw to your rear, teasing your [if cunts of player > 0]cunt[otherwise]balls[end if] and tailhole while rubbing his erection against your bottom.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     His cock is quite large, bigger than the other hyenas and you whimper with need as he presses it against your [if cunts of player > 0]pussy[otherwise]tailhole[end if] teasingly.  You try to push your rear back to take him in, but he keeps you held down.  Clearly he's going to use you as he sees fit without any say from you and your instincts have you submit to him.  You moan needfully, but cease your struggles and let him set the pace.";
	say "     Grant continues to grind his cock against you.  'You want this, don't you?' he rumbles with a soft chuckle in his voice.  'Maybe I'll keep you to be my special bitch,' he whispers in your ear as he slowly sinks that thick meat into you, making you moan and nod your head vigorously.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if cunts of player > 0:
		say "     Your pussy squeezes and trembles as the large cock spreads you wide and starts pounding into you hard and fast.  His precum leaks steadily into you, making you even wetter inside.  The feel of that big prick inside you is so good, making you love to be used like the weak, submissive bitch your new instincts say you are.";
		say "[grantstretch]";
	otherwise:
		say "     Your anal walls stretch painfully wide to take the large cock, but the pressure of it against your prostate gives you much more pleasure.  As your tailhole starts to get used to the intruder, the biker starts pounding into you hard and fast.  His precum leaks steadily into you, making your back passage slick for him.  The feel of that big prick inside you is so good, making you love to be used like the weak, submissive bitch your new instincts say you are.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Glancing past his strong body, you can see several of the other hyenas have stopped to watch the show.  Some have even paired off to have a little fun while others look on enviously.  You can't help but think they envy your position, given how much you're enjoying being used by such a stud.";
	if cunts of player > 0:
		say "     As he fucks you, the male doesn't neglect his bitch's needs either.  Now that you're properly submitting to him, his paws can roam to tease your nipples and finger your clit while he breeds you[if cocks of player > 0].  He also makes sure to give some attention to your cock and balls as well, clearly very familiar with pleasing herms[end if].  His sharp teeth and slobbery tongue play against your ear as he tells you again and again what a good bitch you are and that he'll fill you with what you need.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     The hard fucking feels wonderful, but all good things must come to an end.  After you've had several orgasms, he buries his cock to just before the knot and unleashes his hot seed, blasting it against your cervix.  Your pussy clenches down on the thick rod, milking it for semen as his knot rubs against your wet folds.  You can feel his fertile load flowing up into your womb, sending you into another crashing climax [if cocks of player > 0]and painting your own seed across the crate[otherwise]that leaves you exhausted and panting on the crate[end if].[impregchance]";
		say "     Grant pulls his spent shaft free with a wet pop before wiping it against your butt.  Done with you, he pulls you roughly from the box and onto the floor.  He teasingly grins down at you as he hops back onto the crate.  'You're in my seat.'  You moan softly and lower your ears at his playful admonishment, nuzzling at his sheath and cock, to finish licking him clean.  He rubs your ears and strokes your muzzle lightly before sending you off with a light swat on your rear for your impertinence.";
		wait for any key;
	otherwise:
		say "     As he fucks you, the male doesn't neglect his bitch's needs either.  Now that you're properly submitting to him, his paws can roam to tease your nipples and stroke your cock while he screws you.  His sharp teeth and slobbery tongue play against your ear as he tells you again and again what a good bitch you are and that he'll fill you with what you need.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     The hard fucking feels wonderful, but all good things must come to an end.  After fucking you through one orgasm that leaves a sticky stain on the side of the crate and getting you hard and ready to blow again, he buries his cock to just before the knot and unleashes his hot seed, blasting it deep inside your ass.  You can feel his virile load shooting into your bowels, sending you into another crashing climax that leaves you exhausted and panting on the crate.[mimpregchance]";
		say "    Grant pulls his spent shaft free with a wet pop before wiping it against your butt.  Done with you, he pulls you roughly from the box and onto the floor.  He teasingly grins down at you as he hops back onto the crate.  'You're in my seat.'  You moan softly and lower your ears at his playful admonishment, nuzzling at his sheath and cock, to finish licking him clean.  He rubs your ears and strokes your muzzle lightly before sending you off with a light swat on your rear for your impertinence.";
		wait for any key;


to say grantbitchsex2:
	say "     You run your hands over his sheath and ballsac, caressing those large orbs while your mouth works over the big cock before you.  Though his expression hardly changes, you're clearly pleasing him as he rewards you by shifting one of his feet to rub at your [if cocks of player > 0 and cunts of player > 0]cock and pussy[otherwise if cocks of player > 0]cock[otherwise]pussy[end if].  The alternate pleasures of his soft fur and rough pawpads against your sensitive flesh makes you moan wetly around his cock.";
	say "     While you greedily suck his cock, obediently servicing this strong male, he continues the footjob while softly telling you what a good bitch and a proper fucktoy you make for the gang.  These words ring true to your lustful instincts and you suck him off all the harder[if cocks of player > 0].  His paw strokes along your erection, rubbing against your shaft and teasing your glans with his toes.  At times, he presses your stiff member between his foot and your tummy and other times he kneads your balls with his furred digits[end if][if cunts of player > 0].  His softly furred foot rubs at your pussy, stroking your sensitive folds.  He slips a furred digit into your pussy a few times and carefully teases your clit with a blunt claw at one point[end if].";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Torn between your longing for the taste of the male's cum and the continued attention from his foot, you are eventually pulled hard towards the hyena's groin, stuffing his cock deep into your mouth.  You can feel his ballsac draw up and his cock throb moments before his hot seed blasts down your throat.  Much of his hot seed flows down into your belly, but a little washes back to fill your mouth with his rich, manly taste[if cocks of player > 0].  Your cock throbs against his paw, spraying your weak, unworthy seed onto his foot[end if][if cunts of player > 0].  Your pussy quivers against his footpaw, soaking it in your juices as you cum as well[end if].";
	say "     Once he's finally drained, he pushes you off his cock and you land on your ass, panting for breath even as you lick your lips to seek every last drop.  With a teasing grin, he holds up his sticky footpaw.  You dip your ears in playful submission and take it in your hands, licking and kissing it until it's clean of your [if cocks of player > 0 and cunts of player > 0]semen and femme juices[otherwise if cocks of player > 0]semen[otherwise]femme juices[end if].";
	wait for any key;


to say grantbitchsex3:
	say "     'Back again, slut,' he chuckles as you start to walk up.  He hops off the crate immediately and grabs you by the hips and pulls you to his chest.  Pressed against the strong male's body, his scent fills your nose.  He smiles down at you.  'This must mean you truly want to be my special bitch.  It's time to claim you, then.'";
	say "     He grabs your ass and gives it a squeeze, making you moan softly.  And as you moan, he presses his muzzle to your lips, kissing you and diving his tongue into your mouth.  Yours eyes go wide in surprise that such a powerful male would deign to kiss such a lowly member of the gang as you.  Your eyes then close slowly as your adoration grows for this male who doesn't neglect the needs of even his fucktoy bitch.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     And you have no trouble thinking of yourself as his.  Your submissive instincts having drawn you back to him again and again, giving yourself to him.  As he presses you down onto the crate again, you moan loudly, looking forward to his thick meat filling you and claiming your body like the submissive slut you are.";
	say "     When his cock slides between your ass cheeks, leaking precum between them, you whimper and grip the box, but hold yourself steady for the dominant male.  He strokes your rear tenderly and clearly has a smile in his voice as he says, 'That's a good little bitch.  Time for your reward.'  He shifts his hips and lines his cock into position before thrusting slowly into you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if cunts of player > 0:
		say "     You are filled with pleasure as the studly male sinks his cock into your pussy, spreading your wet lips around his thick shaft.  It somehow feels even better than before, like this is exactly where you belong, bent over for this dominant, loving master.  Your body is meant for him and your womb is meant for his seed.  That image makes your pussy quiver and you lick your lips, hopeful to feel it soon.";
		say "[grantstretch]";
		say "     Glancing back, you can see the hangers on are watching again, eying you both lustfully and enviously.  Let them watch and be jealous all they want, you think.  It is too late, you are his special bitch now";
		if "Sterile" is not listed in feats of player, say " and his pups will be yours now";
		say ".";
		say "     His paws are not idle, playing with your breasts and stroking your pussy even as he tries to work his growing knot into you.  'Ngg... I knew you'd come back, slut.  And I'm glad, only a special bitch like you deserves to be my personal";
		if "Sterile" is not listed in feats of player:
			say " breeder";
		otherwise:
			say " fucktoy";
		say ".'  As he groans out that last word, his knot pops into you, sending you both over the edge.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Feeling the hot rush of the stud's seed into you, you grip the wood, sinking your claws into it.  His cock has pushed into your womb, blasting his thick load deep inside you in an attempt to breed his new bitch.  You feel so warm and full inside as his ample load fills you.";
		say "     With his knot locked inside you, you can feel him continuing to spurt semen into you for quite some time.  During this long breeding session, he licks and nibbles at your ears, whispering how much he loves his new bitch, his special fucktoy, his hyena slut.  His words feel so right to you hyena body and submissive urges that you moan and eventual orgasm again from it all[if cocks of player > 0].  Your cock sprays your unwanted, submissive seed against the side of the box, showing how much you enjoy being the biker's slut[end if].[impregchance]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As your quivering vagina starts to settle down, his knot has shrunk enough for him to pull out.  A gush of hyena cum soaks your thighs, though you do manage to keep quite a bit of it inside by clenching tightly.  He shoves you down and reclaims his seat, doing so firmly, but in no way hurting you.  He grins and makes a casual motion to his crotch and you're at it immediately, licking your stud clean before heading off with a swat to the rump that makes you moan and giggle.";
		wait for any key;
	otherwise:
		say "     You are filled with pleasure as the studly male sinks his cock into your ass, spreading your tailhole wide around his thick shaft.  Having stretched you out last time, there is little pain now and it somehow feels even better than before.  It is like this is exactly where you belong, bent over for this dominant, loving master.  Your body is meant for him and your ass is meant for his cum.  That image makes your anal walls quiver and you lick your lips, longing to feel it soon.";
		say "     Glancing back, you can see the hangers on are watching again, eying you both lustfully and enviously.  Let them watch and be jealous all they want, you think.  It is too late, you are his special bitch and fucktoy now.";
		say "     His paws are not idle, playing with your cock and balls even as he tries to work his growing knot into you.  'Ngg... I knew you'd come back, slut.  And I'm glad, only a special bitch like you deserves to be my personal fucktoy.'  As he groans out that last word, his knot pops into you, sending you both over the edge.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Feeling the hot rush of the stud's seed into you, you grip the wood, sinking your claws into it.  His cock has pushed deep into your tight rump, blasting his thick load inside you as he claims you as his new bitch.  You feel so warm and full inside as his ample load fills you while your own submissive cum paints the crate.[mimpregchance]";
		say "     With his knot locked inside you, you can feel him continuing to spurt semen into you for quite some time.  During this long breeding session, he licks and nibbles at your ears, whispering how much he loves his new bitch, his special fucktoy, his hyena slut.  His words feel so right to you hyena body and submissive urges that you moan and eventual orgasm again from it all.";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     As your balls are drained, his knot has shrunk enough for him to pull out.  A gush of hyena cum soaks your thighs, though you do manage to keep quite a bit of it inside by clenching tightly.  He shoves you down and reclaims his seat, doing so firmly, but in no way hurting you.  He grins and makes a casual motion to his crotch and you've at it in seconds, licking your stud clean before heading off with a swat to the rump that makes you moan and giggle.";
		wait for any key;


to say grantbitchsex4:
	say "     Grant smiles as you come up to him.  'Back again, my little bitch?  Just can't get enough of it, can you?' he says with a rough, hyena chuckle, but smiling down at his special fucktoy tenderly.  Knowing he wants no answer in words, you step into arms reach, giving yourself over to whatever he's in the mood to do with you.";
	say "     He grins and rubs the bulge in his jeans, staying in his seat this time.  'Pull it out, my sweet slut, and I'll give it to you.'  You pull them open quickly and get that swelling cock in your paws as fast as you can.  As you start nuzzling and licking it, he reaches down and pulls you up into his lap, back to his chest and facing the room of gathered hyenas.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if cunts of player > 0:
		say "     You moan loudly as he settles you down onto his cock, spreading your pussy wide around his thick meat.  The sound draws the attention of the others and all eyes turn to you and you smile happily, quivering in delight as you show them all that you are his special bitch.";
		say "[grantstretch]";
		say "     His paws tease your nipples and fondle your breasts, showing off his fucktoy as you bounce in his lap.  The wet sounds of sex can be heard across the room as almost everyone stops what they were doing to stare.  The only other sounds come from the sex that breaks out from other couples turned on by your display.";
	otherwise:
		say "     You moan loudly as he settles you down onto his cock, spreading your asshole wide around his thick meat.  The sound draws the attention of the others and all eyes turn to you and you smile happily, quivering in delight as you show them all that you are his special bitch.";
		say "     His paws stroke your hard cock and bitch balls, showing off his fucktoy as you bounce in his lap.  The wet sounds of sex can be heard across the room as almost everyone stops what they were doing to stare.  The only other sounds come from the sex that breaks out from other couples turned on by your display.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     Grant nibbles along your neck and whispers softly in your ear.  'Give them a good show, my pet.  Let them all see what they're missing out on.'  You obediently cry out louder and ride him harder and faster, though your moans are in no way false or forced, loving every moment of your lustful display.  You let them all see that you belong to him as none of them ever will be his slut.  That he is yours as much as you are his.";
	if cunts of player > 0:
		say "     You have several small orgasms before your master drives his knot deep inside you and pumps his hot, virile seed into your womb.  The heat and fullness of it plumping your tummy a little drives you to a powerful orgasm that wracks your body with delight.  As you pant, leaning back against him, he snuggles you in his arms, telling you again what a good slut you are and you are filled with warmth and pride at having pleased him so.[impregchance]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Once his knot goes down, he slides you off and sets you back on the floor.  You immediately drop to your knees and submissively clean your master's cock before getting your customary swat on the rump and heading off.  You wander around the room a little, showing off your pussy, wet and leaking his cum onto the floor as you go.";
	otherwise:
		say "     You spray your submissive, omega seed across your chest in small spurts as you have several small orgasms before your master drives his knot deep inside you and pumps his hot, virile seed into your ass.  The heat and fullness of it plumping your tummy a little drives you to a powerful orgasm that wracks your body with delight.  As you blast your remaining seed onto your chest, you drain your balls in a shameless show for the jealous onlookers.  As you pant after your orgasm and lean back against him, he snuggles you in his arms, telling you again what a good slut you are.  You are filled with warmth and pride at having pleased him so.[mimpregchance]";
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		say "     Once his knot goes down, he slides you off and sets you back on the floor.  You immediately drop to your knees and submissively clean your master's cock before getting your customary swat on the rump and heading off.  You wander around the room a little, showing off your sticky rump and leaking his cum for your overfilled tailhole onto the floor as you go.";
	wait for any key;


to say grantbitchsex5:
	say "     As you step up to the hyena biker, he hops off the crate and grabs you roughly.  You find yourself bent over the crate and feel his bared cock at your tight rump moments later.  'It is always pleasant to see you, my little bitch.  Did you need something?' he asks softly as he teases his cock against your [if cunts of player > 0]pussy[otherwise]asshole[end if].  You moan softly and he continues to tease you.  'I'm sorry, what did you need, slut?' he whispers.";
	say "     You grip the wooden crate tightly and moan that you need his cock.  He licks your ear.  'Say it loud.  Let them all hear,' he whispers, pressing his large glans slightly into your [if cunts of player > 0]slit[otherwise]tailhole[end if], just enough to get you really hungry for more.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     'I need your cock,' you cry out.  'I need you to fuck me.  Take me.  Make me yours.  Use me and fill me like your little fucktoy, master.'  Clearly pleased with your response, he drives his cock firmly into you and starts pounding away at you like a beast.  You moan and squirm beneath him, loving every moment of his rough lovemaking.";
	if cunts of player > 0:
		say "[grantstretch]";
	say "     When at last his hot load fills you, you cry out again for all to hear, cumming hard yourself.  When he's done seeding you like his little bitch, he French kisses you before pulling out.  With you on the floor and pressed back against his crate, he wipes his cock clean on your face, covering you in his scent.  He retakes his seat, one leg on either side of you and scritches your ears.  When you recover enough to get up, he gives you spank and a grin to send you off.[impregchance]";


to say grantfsex:
	say "     The hyena male kisses you roughly, sliding his long tongue into your mouth even as he leads you over to a small pile of sheets beside the sheltered stairwell.  He lowers you down onto them while his paws roam over your body, pulling off the last of your clothes before moving to fondle your breasts.  He brings his muzzle to your bosom and licks your nipples before suckling playfully at them.";
	say "     His paws move to your legs and spread them as he lines up his cock.  You eagerly wrap them around his back, pulling him down into you as soon as he's in position.  You moan loudly at the sudden penetration of his sizeable member, loving the feel of so much meat stuffed into you as he starts thrusting into you hard and fast.";
	say "[grantstretch]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     You grip him tightly, rocking your hips up into each thrust the studly hyena makes.  Your arms stroke his muscular back, feeling the strength of this impressive male fucking you.  His tongue and lips keep at your nipples.  He uses one paw to help support his weight while the other grips your ass, squeezing it as he pounds into you.";
	say "     'Mmm... you feel so good.  So hot and wet around my cock, [if matriarchowned is 1]my matriarch[otherwise if matriarchdefeated is 1]you eager sub[otherwise]my lovely[end if],' he rumbles before nuzzling up to lick and nibble along your neck.  You tilt your head back and run a paw through his hair, stroking his ears.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     The wet sounds of your sex from the hard, steady thrusts of the hyena into your sopping pussy surround you.  The slap of his heavy balls against your ass makes you long more and more for the virile seed within them[if cocks of player > 0].  Your penis is pressed between you both and his soft fur rubs against it deliciously[end if].  His panting grows heavier as his excitement builds, growing closer until finally he thrusts hard into you one last time, driving his cock fully into you and tying with you.";
	say "     You can feel his cock throb inside you as it blasts shot after shot of thick semen into your womb, making you swell just little from its amount.  The feel of so much virile heat shooting into you sends you over the edge and you climax moments later[if cocks of player > 0].  Your pussy quivers around the thick shaft as your cock spurts a sticky mess between you both[otherwise].  Your pussy quivers around his thick shaft, milking it for as much as he can give[end if].[impregchance]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     When his knot finally comes down and he pulls out of you, he wipes himself [if matriarchdefeated is not 1]and you [end if]off with a towel left there for that purpose.  He gets up slowly and stretches, showing off his sexy body to you before [if matriarchdefeated is 1]waiting for you to rise[otherwise]helping you up[end if].";
	hyenaify;


to say grantmtop:
	say "     The hyena male kisses you roughly, sliding his long tongue into your mouth even as he leads you over to a small pile of sheets beside the sheltered stairwell.  He lowers you down onto all fours on them while his paws roam over your body, pulling off the last of your clothes before moving to fondle your ass and cock.  He brings his muzzle to the back of your neck as he mounts you.";
	say "     His paws move to your legs and spread them as he lines up his cock.  You steady yourself with a soft moan of eagerness, pressing back as soon as he's in position.  You whimper softly at the sudden penetration of his sizeable member.  But it feels so good, thick and hard pressing into your tight rump, pressing delightfully against your prostate.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     You dig your paws at the bedding the big male fucks you hard and fast, leaking a steady flow of precum into your bottom to get you slick.  You can feel his muscular chest against your back as he nibbles and nips at your nape and ears.  He uses one paw to help support his weight while the other grips your [cockname of player] cock, squeezing it as he pounds into you.";
	say "     'Mmm... your such a nice, tight fuck.  So smooth and tight around my cock, [if matriarchdefeated is 1]you eager slut[otherwise]my lovely[end if],' he rumbles before taking the nape of your neck into his muzzle and growling softly.  You tilt your head back and pant in pleasure, enjoying the lustful fucking you're getting.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     The wet sounds of your sex from the hard, steady thrusts of the hyena into your pre-slick tailhole surround you.  The slap of his heavy balls against your own makes you long more and more for the virile seed within them.  Your own cock throbs and leaks precum in an ever-growing stain on the blankets.  His panting grows heavier as his excitement builds, growing closer until finally he thrusts hard into you one last time, driving his cock fully into you and tying with you.";
	say "     You can feel his cock throb inside you as it blasts shot after shot of thick semen into your bowels, making your tummy plump a little from its amount.  The feel of so much virile heat shooting into you sends you over the edge and you climax moments later.  He growls softly and pumps at your cock, shooting your [if matriarchdefeated is 1]unwanted, submissive [end if]load onto the sheets.[mimpregchance]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     When his knot finally comes down and he pulls out of you, he wipes himself [if matriarchdefeated is not 1]and you [end if]off with a towel left there for that purpose.  He gets up slowly and stretches, showing off his sexy body to you before [if matriarchdefeated is 1]waiting for you to rise[otherwise]helping you up[end if].";
	hyenaify;


to say grantmbottom:
	say "     The hyena male's ears dip a little at your request, but he kisses you roughly and slides his long tongue into your mouth even as he leads you over to a small pile of sheets beside the sheltered stairwell.  He pulls off the last of your clothes[one of] as well as his own[or], but you have him keep the jacket on[or] though you take his shades and wear them for the rest of the romp[purely at random].  He drops himself to all fours and obediently offers his rear to his leader, submitting to you without objection.  You rub your paws over his firm, muscled rear as you line up your tip with his tailstar.";
	say "     He gives a soft, submissive whine as you tease your tip against him.  As you let your precum leak out to get him slick, he [if grantfucked > 2]moans softly and pushes back, letting his practiced tailhole kiss your cock.  It seems he's becoming eager for you to fill him[otherwise]chews at his lip and grips the blankets even as he tries to relax for you[end if].  You find the sight very arousing and start to sink into him.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     He releases a soft moan and buries his face in the blankets as your [cockname of player] penis sinks into him.  His warm rump around you feels so nice and doing it to such a strong male makes it all the better.  You can't help telling him so, which makes his ears blush pink inside and dip a little, though he clearly grins and rocks into your thrusts all the more.";
	say "     Not to neglect him, you reach around and stroke his ample penis.  It is pleasantly larger than your other subordinates' and has a hefty pair of balls to go with it.  Almost any of the girls back at the hideout would bend over for him at a word, but here he is, taking it up the ass from you.  Your cock throbs inside him at that thought, drawing another moan from him.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     The wet sounds of your sex from your hard, steady thrusts into the hyena's pre-slick tailhole surround you.  The slap of your balls against his makes you long to get this tough biker to cum as you fill his ass.  And from the growing wet spot in the blankets under him, that will be soon.  His panting grows heavier as you lean over him, whispering what a good pack member he is, such a competent leader, a virile male, a stud.  And your little fucktoy right now.";
	say "     'Go on.  Show me how much you enjoy being under your matriarch.  Cum for me, hon,' you rumble in his ear, licking and nibbling at it as you stroke his cock and pound into him, pushing yourself fully into his rear.  He groans loudly and his tailhole spasms around you as his cock throbs in your paw, unleashing massive spurts of cum onto the blankets.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     This sets you off and you growl, firing your hot load into him, spraying your dominant seed into your subordinate's tight ass.  His tongue hangs out to one side and he grins happily, loving the feel of you claiming [if grantfucked is 0]his virgin tailhole[otherwise]him again[end if].";
	say "     Once you've both drained your balls, you slowly pull your cock from his slick bottom and give him a playful swat.  He rolls over, grabbing a nearby towel left for this times and wipes you clean, then himself[if cunts of player > 0].  You eye the large mess of hyena cum he's left and wonder if you should let him fill you next time[end if].  He gets up slowly and helps you up, taking you back to the bike.";
	increase grantfucked by 1;
	hyenaify;



Hyena Bikers ends here.
