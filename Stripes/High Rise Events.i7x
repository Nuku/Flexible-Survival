Version 2 of High Rise Events by Stripes begins here.
[version 2.2 - Veterinary Hospital update]

"Adds a series of random events to Flexible Survival located at or focusing on the High Rise District."


Section 1- Rabid Lawyers

Rabid Lawyers is a situation.
The sarea of Rabid Lawyers is "High";
when play begins:
	add Rabid Lawyers to badspots of guy;
	add Rabid Lawyers to badspots of furry;

Instead of resolving a Rabid Lawyers:
	say "     While searching the city, you encounter a large pack of wolves in front of a law firm.  They are partially dressed in suits, mainly the jackets and ties, though some have the torn-open remains of pants.  The are growling and slavering as they snap at each other or swinging their briefcases around.  Mixed among the pack are several smaller wolves in skirts or shirts, clutching reports, pouring coffee or helping the larger ones.  Much of the helping seems to take the form of the interns sucking them off or getting pounded good and hard by one of the bigger males.  Unwilling to face the legal teeth of a pack of rabid lawyers, you slink off as quietly and as quickly as you can.";
	increase score by 1;
	Now Rabid Lawyers is resolved;



Section 2- Pigging Out

Pigging Out is a situation.
The sarea of Pigging Out is "High";
restaurantpig is a number that varies.	[to be used at a later date]
when play begins:
	add Pigging Out to badspots of girl;
	add Pigging Out to badspots of furry;

Instead of resolving a Pigging Out:
	say "     You come to a very exclusive restaurant.  While you[apostrophe]ve never been there, you[apostrophe]ve heard that reservations are required months in advance and that the cuisine is both wonderful and expensive.  With the fall of the city, you know you won[apostrophe]t be able to order a meal there, but you may be able to get some fine food from the cold locker.  As you get closer, you hear some noise coming from the restaurant and approach more cautiously.  Glancing through one of the large windows, you see a large sow inside, making a mess of the place.  It looks like she has been eating and masturbating all over the place.  One hand holds a fistful of food while the other fingers her dripping pussy.";
	say "[piggycheck]";
	if tempnum is 1:
		say "     Eyeing both her and the food, you lick your lips hungrily.  You feel the urge to join her in the restaurant.  Besides, wouldn[apostrophe]t the experience of eating at the best restaurant in town be better with an attractive date?";
		if the player consents:
			say "     When you first step in, the pig is somewhat startled by your presence.  Her heavy bulk struggles to get up, but she soon relaxes and smiles as she sees your piggish features and eager attitude.  With a grin, she picks up a handful of food from the floor with her left hand, the one she[apostrophe]d had in her pussy.  As you reach for it, you can see her wet juices running over the sugary dessert, making your mouth water for it all the more.  You stuff the food into your mouth, chewing noisily as you enjoy its added seasoning.";
			say "     As you eat, she helps you out of your clothes, tossing them onto a knocked over table.  With you now naked, she runs her messy hands over your body as she pulls you into her arms.  She grabs another of the scattered pastries from the floor and stuffs it into her mouth before sloppily kissing you, smearing the creamy filling into your mouth with her tongue.";
			if cocks of player > 0:
				say "     You place your hands on her sow tits, making her squeal in pleasure.  She lays herself back on the floor, squishing some of the expensive food beneath her bulk.  You bury your face in her teats, licking and suckling at them playfully.  She oinks and moans in pleasure between mouthfuls.  You work your way down her chest, tending to each of her six breasts until that brings you between her legs and that wet, cavernous slit beacons to you.";
				say "     You grab a nearby bottle of maple syrup and tear off the top, pouring it right onto those wet lips before you bury your face between her large thighs.  You lick all over her messy pussy, the maple sweetness tasting wonderful with her porcine juices.  You stuff your tongue into her, delving deeper for more of her sweet honey until she finally orgasms and soaks your face with it.";
				say "     You smile up at her, licking your chops as she motions for you to climb atop her.  You do so eagerly, bringing your hard cock into position at her pussy before burying it in her ample folds.  With your face pressed to her piggish snout, she snuffles at your face and licks away the sticky syrup and her own juices with squeals of pleasure as you fuck her.";
				say "     When she[apostrophe]s finished cleaning your face, you stuff another large pastry into her mouth and share it with her while kissing.  Her plump body ripples with each hard thrust you make into her.  You pound into her again and again until finally you climax, shooting your hot seed into her womb, making her squeal again.";
				say "     Your romp with her continues for several hours. Between gorging and fucking, you feel quite full and satisfied when you both finally part ways.";
			otherwise:
				say "     She presses you down to the floor, flattening several soft pastries beneath you.  She moves her heavy bulk atop you, bringing her wet and dripping pussy over you face.  You moan softly as she presses it to your mouth, smearing her juices onto you, which you quickly start lapping up from her pussy.";
				say "     With her atop you, you barely catch sight of her grabbing a bottle of maple syrup.  A few moments later, you feel the cool, sticky fluid flowing down between your legs.  She spreads your petals and pours more over them before burying her snout between your thighs and licking hungrily at your sticky puss.  You both moan and squeal in pleasure until you climax, adding more hot juices to the sticky mess.";
				say "     She pauses to stuff several more pastries into her mouth, gobbling them down.  She ends up dropping crumbs onto your sticky groin where they cling to the syrupy, slobbery film of your juices.  After her quick gorging, she climbs off of you and goes to the back and into the food locker.  At first you think she[apostrophe]s going to come out with more food for you both, but when she comes out with only a cucumber and a grin, you realize she has something else in mind.";
				say "     She plops herself down onto the messy floor, seating herself between your legs.  Stroking your thigh, she moves her piggy hand up to your wet, messy cunny and spreads your lips.  With a grin, she sinks the long, slender cucumber into you, making you squeal.  She works the vegetable in and out several times before she lays back, one leg over yours and the other under.  With considerable labour, she moves her heavy bulk closer, taking the other half of the cuke into her pussy.";
				say "     With a little careful practice, you both set up a nice rhythm where you rock back and forth, pushing the cuke into each other over and over again.  You both fondle your breasts and stuff more of the scattered desserts into your hungry mouths.  A wet puddle of juices pool beneath it as your pleasure builds and builds until you finally crash over the edge and she follows a few breaths later.  You both writhe in orgasm, eventually snapping the green vegetable in half as you squeal loudly.";
				say "     Your romp with her continues for several hours. Between gorging and fucking, you feel quite full and satisfied when you both finally part ways, with you munching on your half of the sticky cucumber and she doing the same with hers.";
			infect "Messy Pig";
			infect "Messy Pig";
			decrease hunger of player by 30;
			if hunger of player is less than 0, now hunger of player is 0;
			decrease libido of player by 18;
			if libido of player < 0, now libido of player is 0;
			decrease humanity of player by 10;
			increase score by 25;
			now restaurantpig is 1;
		otherwise:
			say "     You resist the urge to join her in the messy feast, but you would still like to opportunity to search the place for supplies.  Shall you enter the restaurant and confront her before she eats it all?";
			if the player consents:
				challenge "Messy Pig";
				if lost is 1:
					say "     After you wipe your face and catch your breath, you see her return from the food locker with another armload of food.  She tosses it in a heap on the floor beside you.  With an oink, she drops down onto the floor next to the food and grabs you by the neck.  She buries your face between her legs, giving you a noseful of her strong scent and wet pussy.  As she smears your face across her pussy lips, you find yourself licking at them with increasing lustful hunger.  Once she[apostrophe]s satisfied that you[apostrophe]re properly set to work, she starts stuffing handfuls of food into her piggish snout with oinks of pleasure.  With you to tend to her pussy, she can stuff food into her hungry maw with both hands.  After numerous squealing orgasms, she seems satisfied and shoves you out of the restaurant, sending you off on your way.";
					infect "Messy Pig";    [extra infection]
					decrease score by 5;
					now restaurantpig is 1;
				otherwise:
					say "     After defeating the pig and sending it on its way, you pick carefully through the ruined restaurant.  The food in the main dining area and kitchen is all clearly tainted, but you do manage to find a little in the back of the walk-in cooler that is clean and undamaged by the gorging pig.  You get enough for two meals packed away using some of the kitchenware to pack it up.  While doing so, you also find a big kitchen knife that you decide to bring along.";
					say "     Food x 2 and cleaver added to inventory.";
					add "food" to invent of player;
					add "food" to invent of player;
					add "cleaver" to invent of player;
					increase score by 5;
			otherwise:
				say "     Looking around the messy restaurant and the scattered food around the pig, you[apostrophe]re not so sure they[apostrophe]ll be anything salvageable left and decide it may not be worth the risk to try.";
				increase score by 1;
	otherwise:
		say "     You look at the disgusting mess that she[apostrophe]s already made of the place and feel your hopes of some fine dining dashed.  You would still like to opportunity to search the place for supplies.  Shall you enter the restaurant and confront her before she eats it all?";
		if the player consents:
			challenge "Messy Pig";
			if lost is 1:
				say "     After you wipe your face and catch your breath, you see her return from the food locker with another armload of food.  She tosses it in a heap on the floor beside you.  With an oink, she drops down onto the floor next to the food and grabs you by the neck.  She buries your face between her legs, giving you a noseful of her strong scent and wet pussy.  As she smears your face across her pussy lips, you find yourself licking at them with increasing lustful hunger.  Once she[apostrophe]s satisfied that you[apostrophe]re properly set to work, she starts stuffing handfuls of food into her piggish snout with oinks of pleasure.  With you to tend to her pussy, she can stuff food into her hungry maw with both hands.  After numerous squealing orgasms, she seems satisfied and shoves you out of the restaurant, sending you off on your way.";
				infect "Messy Pig";    [extra infection]
				decrease score by 5;
				now restaurantpig is 1;
			otherwise:
				say "     After defeating the pig and sending it on its way, you pick carefully through the ruined restaurant.  The food in the main dining area and kitchen is all clearly tainted, but you do manage to find a little in the back of the walk-in cooler that is clean and undamaged by the gorging pig.  You get enough for two meals packed away using some of the kitchenware to pack it up.  While doing so, you also find a big kitchen knife that you decide to bring along.";
				say "     Food x 2 and cleaver added to inventory.";
				add "food" to invent of player;
				add "food" to invent of player;
				add "cleaver" to invent of player;
				increase score by 5;
		otherwise:
			say "     Looking around the messy restaurant and the scattered food around the pig, you[apostrophe]re not so sure they[apostrophe]ll be anything salvageable left and decide it may not be worth the risk to try.";
			increase score by 1;
	Now Pigging Out is resolved;

to say piggycheck:	[to check if player has a pig-like head or body]
	now tempnum is 0;
	if the bodyname of player is "Messy Pig":
		now tempnum is 1;
	if the facename of player is "Messy Pig":
		now tempnum is 1;
	if the bodyname of player is "Piggy":
		now tempnum is 1;
	if the facename of player is "Piggy":
		now tempnum is 1;

Table of Game Objects (continued)
name	desc	weight	object
"cleaver"	"A large kitchen knife, sharp and heavy."	2	cleaver

cleaver is an armament. It is part of the player. It has a weapon "[one of]your cleaver[or]your kitchen knife[or]your cleaver, screaming 'Oneida!' as you swing it[or]your large knife[or]the large blade[or]your cleaver with a heavy chop[at random]". The weapon damage of cleaver is 6. The weapon type of cleaver is "Melee". It is not temporary.



Section 3- Small Park

Small Park is a situation.
The sarea of Small Park is "High";
when play begins:
	add Small Park to badspots of girl;
	add Small Park to badspots of guy;
	add Small Park to badspots of hermaphrodite;
	add Small Park to badspots of furry;
	add Small Park to badspots of humorous;

Instead of resolving a Small Park:
	say "     While searching the area, you come across a small park.  It is only about a hundred meters in each direction.  From a distance, you spot what appear to be discarded piles of clothes, cum puddles and other signs of citizens being transformed.  You don[apostrophe]t spot any danger at the moment, so perhaps it[apostrophe]s safe.  Shall you enter the park and investigate further? (Y/N)";
	if player consents:
		say "[line break][dogparksearch]";
	otherwise:
		say "     You go off, deciding to find a safer place to search.";
		increase score by 1;
	Now Small Park is resolved;


to say dogparksearch:
	let T be a random number between one and twelve;
	if T is 1:
		say "     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  You get lucky while searching around what appears to be a jogger[apostrophe]s outfit, finding an unopened bottle of water that rolled partway under a bush.";
		say "     Added a water bottle to your supply.";
		add "water bottle" to invent of player;
		increase score by 1;
	if T is 2:
		say "2     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  You get lucky searching one pile of clothes, finding a used can of mace near the torn dress.  Quite sure it would be handy, you pick it up and add it to your inventory.";
		add "pepperspray" to invent of player;
		increase score by 5;
	if T is 3:
		say "3      You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  As you are inspecting one pile with a stick for added safety, hear the crack of a branch behind you, seeing one of the canine creatures who probably originated here.  Having failed to sneak up on you, the male German Shepherd approached swiftly.";
		challenge "German Shepherd";
	if T is 4:
		say "4      You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  Your search turns up nothing of value, but you are getting ready to leave, you spot a large collie-like creature charging into the park.  It sniffs around eagerly, clearly drawn by the scent of so many canines.  Finding the park empty, it is clearly disappointed.  That is, until it finds you.";
		challenge "Shemale Smooth Collie";
	if T is 5:
		say "5      You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  As you approach the far corner of the park, you are spotted by a husky female with the last tatters of her expensive dress still on her and a pearl necklace.  As she bounds towards you, you note that the scent of sex is thick around her.  She was likely very recently transformed and is lost in her new animalistic needs.";
		challenge "Female Husky";
	if T is 6:
		say "6     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  While flipping through a pile of clothes and items, you spot a dog collar.  Making the mistake of picking it up, you find it sticky with something that runs down your arm.  You toss down the cum-slick collar, but it is too late.";
		[random canine infection]
		say "[doggyinfect]";
	if T is 7:
		say "7     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  While flipping through a pile of clothes and items, you spot a dog collar.  Making the mistake of picking it up, you find it sticky with something that runs down your arm.  You toss down the cum-slick collar, but it is too late.";
		[random canine infection]
		say "[doggyinfect]";
	if T is 8:
		say "8     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  While flipping through a pile of clothes and items, you spot a dog collar.  Making the mistake of picking it up, you find it sticky with something that runs down your arm.  You toss down the cum-slick collar, but it is too late.";
		[random canine infection]
		say "[doggyinfect]";
	if T is 9:
		say "9     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  While you walk through the park, you pass near the large tree at the center of the park and the dog smell is the strongest here.  It is very thick in the air around it and you can see the truck discoloured with markings and thick cum splashes.  Despite its origins, the scent is very attractive, drawing you in.  Do you want to examine it more closely? (Y/N)";
		if player consents:
			say "     You move in closer to the tree and start to sniff around it.  The heady scent of dogs, both males and females, fill your nostrils.  You pant a little, tasting the scent of heat as well from many of them.  Your mind grows hazy and you roll on the ground in front of the tree, through several cum puddles, letting their scent get on you.  Getting up, you shamelessly add your scent to the base of the tree before heading off, leaving the dog park now that you[apostrophe]ve marked that you[apostrophe]ve been there.";
			[triple random canine infection]
			say "[doggyinfect]";
			say "[doggyinfect]";
			say "[doggyinfect]";
			increase libido of player by 10;
			if libido of player > 100:
				now libido of player is 100;
			decrease humanity of player by 10;
			decrease score by 10;
		otherwise:
			say "     You resist the urge to give in to those cloying scents and move away.  You try to continue searching, but find yourself drift back to the tree several times and finally decide to abandon the dog park entirely.";
			increase score by 1;
	if T is 10:
		say "10     You start to look around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  As you approach another section of the park, you hear rough panting and growling coming from the other side of a hedge.  Creeping forward, you see a very large dog, possibly some form of labrador, pounding into an increasingly canine woman.  She[apostrophe]s already largely transformed and seems as lost in her animal lusts as the dog atop her.  Sensing that it[apostrophe]s already too late to save her, you decide not to pick a fight with the big dog (and possibly his new mate as well) and sneak out of the park and put some distance between you and them.";
		increase score by 1;
	if T is 11:
		say "11     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  While searching, you come across what to be a jogger[apostrophe]s gear.  The discarded shorts are torn at the front, either ripped open from massive internal growth or an overeager monster seeking the goods within - it[apostrophe]s hard to be certain.  The jogger[apostrophe]s step counter and wrist bands are also scattered among the clothes, but you[apostrophe]re unable to find anything that could be useful to you.";
		increase score by 1;
	if T is 12:
		say "12     You look around the park and are fortunately not spotted by any monsters.  You search around the park, finding many signs of attacked residents.  There are torn and cum-stained clothes in several clusters, along with dog leashes and collars.  The area is thick with the scent of dog.  While searching, you focus on one pile of what appear to have once been rather expensive clothes.  The short skirt and woman[apostrophe]s blazer would be very fashionable if not thoroughly soaked in cum.  The nearby purse and high heels are both designer brand names - expensive French ones.  A broken collar and leash, and a torn remains of a cute dog outfit lead you to suspect that this woman[apostrophe]s little dog become more than she could handle.  Sifting through the items with the help of a stick, you[apostrophe]re unable to find anything that could be useful to you.";
		increase score by 1;


to say doggyinfect:
	let tempnum  be a random number between one and six;  [adjust this for new dogs]
	if tempnum  is 1:
		infect "Female Husky";
	if tempnum  is 2:
		infect "German Shepherd";
	if tempnum  is 3:
		infect "Shemale Smooth Collie";
	if tempnum  is 4:
		infect "Pit bull";
	if tempnum  is 5:
		infect "Ashen Breeder";
	if tempnum  is 6:
		infect "Chocolate Lab";



Section 4- Corporate Fat Cats

Corporate Fat Cats is a situation.
The sarea of Corporate Fat Cats is "High";
when play begins:
	add Corporate Fat Cats to badspots of guy;
	add Corporate Fat Cats to badspots of furry;

Instead of resolving a Corporate Fat Cats:
	say "     You come across a pair of hefty felines on the steps of one of the many high-rise buildings.  Their business suits have mostly been removed and scattered around them.  One is a male black cat with white paws and a splash of white on his wide belly.  The other is a chubby Maine Coon tom with the thick, fluffy fur of the breed.  They are rolling around against one another, groping each other.  While stroking the black cat[apostrophe]s cock, the other cat goes on about looking forward to some asset growth.  The black cat nibbles at the portly Maine Coon[apostrophe]s ear, telling him how he wants to set up this merger and come out on top.  They continue to go on like this, bantering in corporate lingo while the black cat mounts the other while you walk off, leaving the fat cats to their [apostrophe]merger[apostrophe].";
	increase score by 1;
	Now Corporate Fat Cats is resolved;



Section 5- Veterinary Hospital

Veterinary Hospital is a situation.
The sarea of Veterinary Hospital is "High";
doggyness is a number that varies.
kittyness is a number that varies.
when play begins:
	add Veterinary Hospital to badspots of girl;
	add Veterinary Hospital to badspots of guy;
	add Veterinary Hospital to badspots of hermaphrodite;
	add Veterinary Hospital to badspots of furry;

Instead of resolving a Veterinary Hospital:
	say "     You find a veterinary hospital at the ground level of one of the high rises.  You don[apostrophe]t hear any monsters within and consider entering.  There could be some useful supplies within, but it is an animal hospital, so it does seem a somewhat risky venture.  Shall you enter? (Y/N)";
	if player consents:
		say "[line break][vetsearch]";
	otherwise:
		say "     You go off, deciding to find a safer place to search.";
		increase score by 1;
	Now Veterinary Hospital is resolved;


to say vetsearch:
	let T be a random number between one and twelve;
	decrease humanity of player by 3;
	if T is 1:
		say "     You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  Feeling you shouldn[apostrophe]t stay long, you scout around and are fortunate to find a medical supply kit that is suitable for your needs.  You tuck it under one arm and quickly head out to get some fresh air.";
		add "medkit" to invent of player;
		say "     Medkit obtained.";
		increase score by 3;
	if T is 2:
		say "     You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  Feeling you shouldn[apostrophe]t stay long, you scout around and come across some sample cans of pet food.";
		say "[doggycheck][kittycheck]";
		if doggyness is 1:
			if kittyness is 1:		[both doggy and kitty]
				say "     At this moment at least, the warring feline and canine urges within you are in harmony and you feel a hunger for all the sample food items.  It seems you have enough feline and canine aspects within you that you find the pet food appetizing and are willing to add it to your supply.  As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat.  You quickly stuff them all into your bag and head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
				say "     You obtain the equivalent of 3 food.";
				add "food" to invent of player;
				add "food" to invent of player;
				add "food" to invent of player;
				increase score by 5;
			otherwise:						[just doggy]
				say "     Looking over the cans of dog food, your tummy rumbles.  It seems you have enough canine aspects within you that you find the dog food appetizing and are willing to add it to your supply.  As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat.  You quickly stuff them into your bag and head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
				say "     You obtain the equivalent of 2 food.";
				add "food" to invent of player;
				add "food" to invent of player;
				increase score by 3;
		otherwise if kittyness is 1:				[just kitty]
			say "     Looking over the cans of cat food, your tummy rumbles.  It seems you have enough feline aspects within you that you find the cat food appetizing and are willing to add it to your supply.  As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat.  You quickly stuff them into your bag and head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
			say "     You obtain the equivalent of 2 food.";
			add "food" to invent of player;
			add "food" to invent of player;
			increase score by 3;
		otherwise if hunger of the player > 49:		[starving]
			say "     You look at the cans of pet food for a moment and your stomach rumbles.  Despite being pet food, you are very hungry and need something to eat.  As they are sealed and were probably canned months before the outbreak in another city, you feel they are safe to eat.  Resigned to your fate, you take one of the cans and add it to your supply.  You then quickly head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
			say "     You obtain the equivalent of 1 food.";
			add "food" to invent of player;
			increase score by 1;
		otherwise:							[not a kitty or doggy, nor starving]
			say "     You look at the cans of pet food briefly, then turn and continue searching.  You haven[apostrophe]t sunk that low yet.  A quick look around the rest of the room finds nothing else of interest.  Unsuccessful, you quickly head back outside before the scents filling the veterinary hospital get to be too much and you give in to the urges.";
			increase score by 1;
	if T is 3 or T is 4 or T is 5 or T is 6 or T is 7:		[high chance of random 'pet' fight]
		say "      You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  Feeling you shouldn[apostrophe]t stay long, move quickly through the examination rooms.  There is a noise behind you and you turn around quickly to find one of the monsters behind you, perhaps it was once one of the humans who were here, or maybe even one of the animals.";
		say "[randomvetfight]";
		say "     After having lost time dealing with the creature, you can feel the scents suffusing the vet[apostrophe]s office are getting to you and you leave before you succumb entirely.";
	if T is 8:
		say "     You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  Feeling you shouldn[apostrophe]t stay long, you move quickly through the examination rooms.  In them you find more signs of rapid transformation and sex.  Perhaps an owner had brought in their pet when it started to show [apostrophe]symptoms[apostrophe].  You open up the medical cabinet to look through it, but accidentally place your hand in a sticky puddle of something.  Your hand starts to tingle and you can feel the infection trying to take hold.  The scents all around you become more attractive. You feel a strong urge to give in and roll around in them, and even lap them up.  You manage to suppress it long enough to run out of the place, panting in the fresh air to clear your head.";
		infect "Female Husky";
	if T is 9:
		say "     You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  Feeling you shouldn[apostrophe]t stay long, move quickly through the examination rooms.  In them you find more signs of rapid transformation and sex.  Perhaps an owner had brought in their pet when it started to show [apostrophe]symptoms[apostrophe].";
		say "     As you start to open up the medical cabinet to look for supplies, you feel a cold, sticky splash against your back.  Splatters of thick, cool cum splash past you and onto cabinet[apostrophe]s contents.  You turn around quickly to see one of the large panther taurs in the doorway behind you, wearing the remains of a doctor[apostrophe]s coat over her upper body.  In her paw she has another large, clear balloon filled with what must be her cum.  And that[apostrophe]s when you realize its not a balloon, but an overinflated condom.  As the tingles of transformation run through you, you have to dodge to the side to avoid the second one before closing in to fight her.";
		infect "Panther Taur";
		challenge "Panther Taur";
		say "     Once the panther creature has left, you return to quickly inspect the medical cabinet, but find that the contents have been throroughly soaked in the feline[apostrophe]s cum.  The scent of it and of all the other creatures is quickly getting to be too much.  You barely resist giving in and lapping up the growing puddle of cool cum that[apostrophe]s flowing out of the cabinet before running out into the fresh air to clear your head.";
	if T is 10:
		say "     You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  You end up making your way into the staff break room and find that the animalistic sex spread into here as well.  From the clawmarks on the table and the large cum stain in the middle, some big male or herm got a thorough fucking while bent over it.  You quickly search around the room for usable supplies, but it seems the few lunches that were brought in have already been consumed by the newly transformed creatures.  The scents filling the place start to get to you and you eventually have to leave empty handed to resist giving in to them fully.";
		increase score by 1;
	if T is 11:
		say "     You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  You search around the waiting area, where many of the chairs have been overturned and several broken pet carriers remain.  There are piles of clothes and numerous patches of cum.  It seems the waiting area turned into an orgy of pets and owners.  You try to sift through the messy piles, but have no luck finding anything before the scents become too much and you have to abandon searching entirely.";
		increase score by 1;
	if T is 12:
		say "     You cautiously enter the veterinary hospital and look around.  As you suspected, it was rather hard hit by the outbreak.  You can see the tattered remains of the secretary and the vets[apostrophe] clothes scattered about, as well as many dried pools of cum.  The scent of feline and canine arousal is strong in the air, making the infection inside you tingle.  You start by looking around the reception desk and find the secretary[apostrophe]s discarded panties at the foot of the chair.  Drawn by a scent, you kneel down and find a large cumstain against the wall of the desk.  It looks like the secretary had started to grow a cock and had jerked herself off, probably while still greeting incoming owners.  The scents all around you get to be too strong for you.  You can barely resist licking at that large stain, so you get up and rush out quickly.";
		increase score by 1;


to say doggycheck:		[add new canids when they arise]
	now doggyness is 0;
	if the bodyname of player is "Female Husky":
		now doggyness is 1;
	if the facename of player is "Female Husky":
		now doggyness is 1;
	if the bodyname of player is "German Shepherd":
		now doggyness is 1;
	if the facename of player is "German Shepherd":
		now doggyness is 1;
	if the bodyname of player is "Shemale Smooth Collie":
		now doggyness is 1;
	if the facename of player is "Shemale Smooth Collie":
		now doggyness is 1;
	if the bodyname of player is "Pit bull":
		now doggyness is 1;
	if the facename of player is "Pit bull":
		now doggyness is 1;
	if the bodyname of player is "Latex Wolf":
		now doggyness is 1;
	if the facename of player is "Latex Wolf":
		now doggyness is 1;
	if the bodyname of player is "Ashen Breeder":
		now doggyness is 1;
	if the facename of player is "Ashen Breeder":
		now doggyness is 1;
	if the bodyname of player is "Painted Wolf Herm":
		now doggyness is 1;
	if the facename of player is "Painted Wolf Herm":
		now doggyness is 1;
	if the bodyname of player is "Alpha Wolf":
		now doggyness is 1;
	if the facename of player is "Alpha Wolf":
		now doggyness is 1;
	if the bodyname of player is "Wolftaur":
		now doggyness is 1;
	if the facename of player is "Wolftaur":
		now doggyness is 1;
	if the bodyname of player is "jackalboy":
		now doggyness is 1;
	if the facename of player is "jackalboy":
		now doggyness is 1;
	if the bodyname of player is "jackalman":
		now doggyness is 1;
	if the facename of player is "jackalman":
		now doggyness is 1;
	if the bodyname of player is "Chocolate Lab":
		now doggyness is 1;
	if the facename of player is "Chocolate Lab":
		now doggyness is 1;
	if the bodyname of player is "Feral Wolf":
		now doggyness is 1;
	if the facename of player is "Feral Wolf":
		now doggyness is 1;

to say kittycheck:		[add new felines when they arise]
	now kittyness is 0;
	if the bodyname of player is "Panther Taur":
		now kittyness is 1;
	if the facename of player is "Panther Taur":
		now kittyness is 1;
	if the bodyname of player is "cheetah woman":
		now kittyness is 1;
	if the facename of player is "cheetah woman":
		now kittyness is 1;
	if the bodyname of player is "Tigress Hooker":
		now kittyness is 1;
	if the facename of player is "Tigress Hooker":
		now kittyness is 1;
	if the bodyname of player is "Felinoid":
		now kittyness is 1;
	if the facename of player is "Felinoid":
		now kittyness is 1;
	if the bodyname of player is "Feline":
		now kittyness is 1;
	if the facename of player is "Feline":
		now kittyness is 1;
	if the bodyname of player is "Rubber tigress":
		now kittyness is 1;
	if the facename of player is "Rubber tigress":
		now kittyness is 1;
	if the bodyname of player is "Tiger":
		now kittyness is 1;
	if the facename of player is "Tiger":
		now kittyness is 1;
	if the bodyname of player is "Tiger Cop":
		now kittyness is 1;
	if the facename of player is "Tiger Cop":
		now kittyness is 1;
	if the bodyname of player is "Plush lion":
		now kittyness is 1;
	if the facename of player is "Plush lion":
		now kittyness is 1;
	if the bodyname of player is "Sabretooth":
		now kittyness is 1;
	if the facename of player is "Sabretooth":
		now kittyness is 1;
	if the bodyname of player is "tigertaur":
		now kittyness is 1;
	if the facename of player is "tigertaur":
		now kittyness is 1;
	if the bodyname of player is "sphinx":
		now kittyness is 1;
	if the facename of player is "sphinx":
		now kittyness is 1;
	if the bodyname of player is "Cheetah":
		now kittyness is 1;
	if the facename of player is "Cheetah":
		now kittyness is 1;
	if the bodyname of player is "Pantherherm":
		now kittyness is 1;
	if the facename of player is "Pantherherm":
		now kittyness is 1;
	if the bodyname of player is "Leopardman":
		now kittyness is 1;
	if the facename of player is "Leopardman":
		now kittyness is 1;
	if the bodyname of player is "Ninja Cat":
		now kittyness is 1;
	if the facename of player is "Ninja Cat":
		now kittyness is 1;
	if the bodyname of player is "Cougar":
		now kittyness is 1;
	if the facename of player is "Cougar":
		now kittyness is 1;
	if the bodyname of player is "Snow Leopard":
		now kittyness is 1;
	if the facename of player is "Snow Leopard":
		now kittyness is 1;
	if the bodyname of player is "Margay":
		now kittyness is 1;
	if the facename of player is "Margay":
		now kittyness is 1;

to say randomvetfight:				[more suitable pets can be added]
	let tempnum be a random number between one and seven;
	if tempnum is 1:
		challenge "Female Husky";
	if tempnum is 2:
		challenge "Shemale Smooth Collie";
	if tempnum is 3:
		challenge "Pit bull";
	if tempnum is 4:
		challenge "Cute Chinchilla Woman";
	if tempnum is 5:
		challenge "German Shepherd";
	if tempnum is 6:
		challenge "rabbit pack";
	if tempnum is 7:
		challenge "Feline";


Section 6- Golf Store

Golf Store is a situation.
The sarea of Golf Store is "High";
when play begins:
	add Golf Store to badspots of furry;

Instead of resolving a Golf Store:
	say "     While passing down the street, hear a growing sound, like many hard objects striking the pavement again and again.  As the sound draws closer, you look around for a place to hide and duck into a small golf store.  Peering from behind a display case, you see a small herd of horsemen clomping through the street.  They seem in good spirits, but are watchful and some at the edge of the herd are on the lookout.  Something in their look tells you to remain hidden, which is later confirmed when you see a few half-changed prisoners at the center of the herd.  You continue to watch from the shadow until they[apostrophe]re gone.  As they march out of earshot, you relax and take a moment to look around the golf store you[apostrophe]d hidden in.  You grab a sturdy looking 9-iron from the display, your mind focused on arming yourself after seeing the herd.";
	say "     Golf club obtained.";
	add "golf club" to invent of player;
	increase score by 5;
	Now Golf Store is resolved;

Table of Game Objects (continued)
name	desc	weight	object
"golf club"	"To an overpaid sports star, it is a piece of high-quality equipment meant for a game of style and skill.  To you, a blunt instrument."	2	golf club

golf club is an armament. It is part of the player. It has a weapon "[one of]your golf club[or]your 9 Iron[or]your golf club, getting a bit of a slice on that swing[or]your golf club, calling out FORE! and making a hard swing[at random]". The weapon damage of golf club is 5. The weapon type of golf club is "Melee". It is not temporary.



Section 7- Electronics Store

Electronics Store is a situation.
The sarea of Electronics Store is "High";
when play begins:
	add Small Park to badspots of humorous;

Instead of resolving a Electronics Store:
	say "     In the corner of one of the high-rise office buildings, you spot an odd pair of beings.  They are a duo of strange, cybernetic people with vacant, luminescent eyes.  Unlike any of the others you[apostrophe]ve seen in the city, you are drawn to investigate.  From behind a car, you watch them as they eat the electronic hardware from the displays.  One is a glossy white with blue highlights and a smooth, dome head.  He is dressed in loose-fitting, slacker wear.  The other has a matte black finish where he[apostrophe]s not flesh and wearing a grey suit and charcoal tie.";
	say "     As you watch, the darker one twitches and shudders for a moment while trying to swallow down a big mouthful.  His eyes blink, then turn a solid blue.  He smacks his chest a few times to reboot himself.  Once that is settled, he opens his jacket, accesses a panel on himself and pulls out a video card, swapping it for a newer model from one of the shelves.";
	say "     With this impromptu upgrade completed, they get back to squabbling over the various electronic phones, mp3 players and doodads, babbling marketing buzzwords all the while.";
	increase score by 1;
	Now Electronics Store is resolved;


Section 8 - Cameo

Cameo is a situation.
The sarea of Cameo is "High";
choclabfight is a number that varies.
when play begins:
	add Cameo to badspots of hermaphrodite;
	add Cameo to badspots of humorous;
	add Cameo to badspots of furry;

Instead of resolving a Cameo:
	say "     Passing past a collection of deluxe shops, your eye is caught by a premiere chocolate store.  Glancing up that the face of the woman for which the store is named, you remember their fine quality products.  Your sweet tooth suddenly needs to be satisfied and you go in before you have a chance to think it over.  A quick glance around shows the store has been ransacked, with several creamy pools of white or dark chocolate on the floor.  The glass displays have chocolate pawprints, both inside and out.  You do spot a couple of display boxes and a cameo collection that seem undisturbed at the back of the store and head towards them.  But when you reach the middle of the store, those dark puddles reshape themselves, forming into gooey canids made of chocolate.  It seems you came across this place as they were cleaning it out and they set a trap for you.  You are surrounded by a trio of chocolatey canines.";
	now choclabfight is 0;
	challenge "Chocolate Lab";
	if choclabfight is 1:
		say "     After having finished with the lead dog, the others are moving in around the displays to get at you even as you keep moving to try and deal with them one on one.  It is difficult going as you have to avoid those while chocolate cream puddles of what you now know to be chocolate dog cum.  You manage to hop the sales counter and prepare to face the next one.";
		now choclabfight is 0;
		challenge "Chocolate Lab";
		if choclabfight is 1:
			say "     With a second down, you ready yourself to face the last of them.  As you look first to the gap your last opponent took, you catch sight of it out of the corner of your eye.  It quietly flowed up the counter as your last fight ended and makes a leap at you.";
			let bonus be (( perception of player + dexterity of player minus 20 ) divided by 2 );
			if "Wary Watcher" is listed in feats of player, increase bonus by 3;
			if "Bad Luck" is listed in feats of player, decrease bonus by 2;
			if bonus > 12, now bonus is 12;
			let dice be a random number from 1 to 20;
			say "You roll 1d20([dice])+[bonus]: [dice + bonus]: ";
			if bonus + dice is greater than 15:
				say "     You manage to avoid the sneak attack, as the dog leaps past you and into the company logo, mashing its whole head into a slobbery kiss on the face of the store's namesake heroine.  It flows and reshapes itself quickly, forming its tail into a new head and swapping its front and back legs around.  This startling change shocks you long enough for it to complete the reversal and start snapping at you before you can take flight.";
			otherwise:
				say "     The chocolate dog slams itself into you, flowing itself across your body.  It squeezes around your chest, pushing out your breath even as its flowing body starts teasing at your nipples and groin.  As you are forced to exhale, the chocolate canine presses its gooey face to yours, pushing its chocolatey tongue into your mouth and humping against your body.  As its arousing taste fills your mouth, you moan softly and find yourself giving in before you snap back control of yourself and push the semi-solid dog back and off of you.  It growls in frustration at you denying its lustful urges and charges to attack.  But its assault on you has weakened you further as well as gotten you more aroused. (15 dmg taken)[line break]";
				decrease hp of player by 15;
				increase libido of player by 12;
			now choclabfight is 0;
			challenge "Chocolate Lab";
			if choclabfight is 1:
				say "     Having defeated the last of them, you pant for breath as the chocolate dogs slink off like beaten curs.  They press themselves to the ground so much that their legs melt away beneath them and flow out as dog-shaped puddles.  With them dispatched, you are free to look around the remains of the store.  It seems that much of the merchandise has already been consumed by the dogs or tainted by them during their lustful gorging.  The boxes of chocolates and cameos on display at the back are thankfully still good, so you snatch them up and exit the store before the strong scent of chocolates and sex arouses you into sampling from the tainted wares.";
				if "Junk Food Junky" is listed in feats of player:
					say "     Outside, you give in and satisfy your craving for chocolate by stuffing yourself with the small cameo pack.  The fine chocolates are quite delicious.  You store the rest for later consumption.  Your junk food fueled metabolism finds the chocolates quite satisfying and you still have enough chocolates and almond bark to be equivalent to roughly two more snacks.";
					decrease hunger of player by 15;
					if hunger of player is less than 0, now hunger of player is 0;
					if morale of player is less than 0:
						increase morale of player by 36;
						if morale of player is greater than 0, now morale of player is 0;
						say "You feel much better after having your snack.";
					increase morale of player by 1;
					add "chips" to invent of player;
					add "chips" to invent of player;
					increase score by 15;
				otherwise:
					say "     Outside, you give in and satisfy your craving for chocolate by stuffing yourself with the small cameo pack.  The fine chocolates are quite delicious.  You store the rest for later consumption.  While not very nutritious, you still have enough chocolates and almond bark to be equivalent to roughly one meal.";
					decrease hunger of player by 6;
					if hunger of player is less than 0, now hunger of player is 0;
					if morale of player is less than 0:
						increase morale of player by 15;
						if morale of player is greater than 0, now morale of player is 0;
						say "You feel better having eaten.";
					add "food" to invent of player;
					increase score by 5;
	if choclabfight is 0:
		say "     Managing to outmaneuver the chocolate dogs, you push your way out of the store and into the courtyard around the shops.  Looking back, you spot the dogs pressed up against the glass, leaving chocolate streaks on windows before they hop down and return to their lustful consumption of the chocolates.  You are quite certain there will be nothing left in the store except for the white chocolate stains from their sexual play as they celebrate their victory at defending their delicious prize.";
	otherwise if choclabfight is 2:
		say "     When the victorious Labrador moves back, you look up to find yourself surrounded by the trio who look at you lustfully.  The other two flow atop you and start humping at your body.  You are buried in flowing chocolate as they cover you completely[if cunts of player > 1].  You can feel their creamy tendrils flow into your every orifice, fucking your mouth, pussies and asshole with a hard chocolate cock for each[otherwise if cunts of player is 1].  You can feel their creamy tendrils flow into your every orifice, fucking your mouth, pussy and asshole with a hard chocolate cock for each[otherwise].  You can feel their creamy tendrils flow into your mouth and asshole, fucking you at both ends with a hard chocolate cock[end if][if cocks of player > 1].  Their flowing bodies form warm, wet cunts around your cocks, sucking and squeezing at them as they pound into you[otherwise if cocks of player is 1].  Their flowing bodies form a warm, wet cunt around your cock, sucking and squeezing at them as they pound into you[end if].";
		wait for any key;
		say "     As this goes on, you can feel them flowing over your whole body, sliding off your clothes and backpack.  Completely naked, your can feel their flowing, rippling chocolate flesh sliding all over you, stimulating you so fully you sink further and further into a haze.  You barely notice the added weight of the third Labrador joining in, but you are somehow keenly aware that he's finished off the last of those chocolates as more and more of that creamy, white chocolate seed is pumped into you[if cocks of player > 0] while you pump your own cum out for them to enjoy[end if]";
		if bodyname of player is "Chocolate Lab" or facename of player is "Chocolate Lab":
			say ".";
			wait for any key;
			say "     During this rampant, fluidic sex with the dogs, you can feel much of your chocolate being intermingling with that of the other Labradors.  It feels like you are simultaneously filled and drained over and over again as your lovers mate you.  You seem to flow into them as they flow into you in an orgasmic melding of pleasure.  You feel yourself becoming much more canine and craving more and more chocolate, causing you to suck, squeeze and gulp down all you can get from them until finally much of you is gone.";
			decrease humanity of player by a random number between 25 and 35;
			increase hunger of player by 12;
			if "Pure" is listed in feats of player, increase humanity of player by a random number between 5 and 10;
			if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 10;
		otherwise:
			say ".  It feels like you are simultaneously filled and drained over and over again as your lovers mate you.  You seem to flow into them as they flow into you in an orgasmic melding of pleasure.";
			decrease humanity of player by a random number between 20 and 30;
			increase hunger of player by 12;
			if "Pure" is listed in feats of player, increase humanity of player by a random number between 5 and 10;
			if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 0 and 10;
		[puts Chocolate Lab as lead monster in case of impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Chocolate Lab":
				now monster is y;
				break;
		now tailname of player is "Chocolate Lab";
		now facename of player is "Chocolate Lab";
		now skinname of player is "Chocolate Lab";
		now bodyname of player is "Chocolate Lab";
		now cockname of player is "Chocolate Lab";
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		if hellHoundLevel is 0:
			follow the sex change rule;
			follow the sex change rule;
		wait for any key;
		if libido of player < 70, now libido of player is 70;
		say "     When they are finally sated, they flow away from you, leaving you in a pool of creamy chocolate.  You struggle to sit up as they flow over the last of the scattered chocolates before heading out the door.  One of them, which you somehow sense to be the one who defeated you, turns back and looks at you, as if to see if you will follow before flowing after the others.";
		say "     Trying again to pull yourself up, you discover that you've fully become flowing, animate chocolate like your assailants.  You try to pull yourself together, taking stock that you've changed and fully become a chocolate Labrador like those sexy, tasty hounds";
		if humanity of player < 10:
			say ".  You flow into the shape of a flowing, chocolate dog and head out after them with a wet yip, having lost too much of yourself to them and succumbing to the bizarre, confectionary infection.  When you catch up to them, they grin and give you slobbery, chocolatey licks and nuzzles, welcoming you into the pack.";
			end the game saying "Your mind melted away into the chocolate dogs, leaving you one of them.";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		otherwise:
			say ".  You manage to keep your mind together enough to pull yourself into a somewhat more solid and bipedal form.  Still deeply infected and weakened, you manage to hold onto enough of your humanity to continue your quest for survival.  You do feel a strong longing for more sex or more chocolate.  Or best of all, more chocolate sex.  You stumble away, trying to pull yourself into enough cohesion to walk as you rub your cream-filled tummy.";
			say "[impregchance][impregchance]";
	now Cameo is resolved;


High Rise Events ends here.