Version 1 of Dry Plains Events by Stripes begins here.

"Adds a series of random events to Flexible Survival located at or focusing on the Dry Plains area."


Section 1- Creeping Grass

Creeping Grass is a situation.
The sarea of Creeping Grass is "Plains";

Instead of resolving a Creeping Grass:
	say "     As you check out a few fallen buildings, you notice that the rubble pile has already been partially covered by the dry grasses of the plains.  Somehow, despite their recent collapse, the plains are already starting to cover and reclaim them.  Checking more closely and prodding it with a stick, you can see that the grass roots, instead of burrowing into the soil, have climbed up the fallen beams and boards, spreading to grow fresh grass overtop of them.  Putting some weight on the covered spot, it breaks and crumbles easily, showing that the grasses are breaking down and destroying the ruins they cover.";
	increase score by 1;
	Now Creeping Grass is resolved;


Section 2- Ranch House

Ranch House is a situation.
The sarea of Ranch House is "Plains";

Instead of resolving a Ranch House:
	say "     You come the ruins of what was probably a ranch house.  You search through the broken home, but find nothing of use or value.  Looking around, you see that some of the fence still stands and notice a second fallen structure.  Going over, you can quickly tell that this was once a small stable from the smell of horses hanging over it.  You take care where you step, avoiding the dark messes as well as the white ones from equine cum.  Hoofprints in the dirt around the stable head off into the plains where the transformed horses probably live now in some altered form.";
	increase score by 1;
	Now Ranch House is resolved;


Section 3- Soaring Eagle

Soaring Eagle is a situation.
The sarea of Soaring Eagle is "Plains";

Instead of resolving a Soaring Eagle:
	say "     Taking a short break under one of the rare trees on the plains, you spot a shadow drift across the ground.  Looking up, you spot an eagle high up in the sky.  As you watch it, you notice that it is not a normal eagle, but some kind of eagle man.  Deciding to take no risks, you wait in the shadow of the tree until he passes from sight.";
	increase score by 1;
	Now Soaring Eagle is resolved;


Section 4- Partial Ruin

Partial Ruin is a situation.  The level of Partial Ruin is 5.
The sarea of Partial Ruin is "Plains";
when play begins:
	add Partial Ruin to badspots of hermaphrodite;
	add Partial Ruin to badspots of furry;

Instead of resolving a Partial Ruin:
	say "     You manage to find a stretch of asphalt that is only partially broken up by the grasses, most roadway here having already been split and broken through extensively by the plantlife here.  This stretch has only started to succumb, but looks a couple of decades old and poorly maintained despite its probably newness.  Following it, you come to a half-fallen building, the remains of a corner store.  Hopeful of finding something of you, you rush over and start searching through the place.  You have only started to look around when the ground starts to shake and rumble and another wall of the building collapses.";
	let bonus be ( Dexterity of player + Strength of player - 20 ) divided by 2;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]:";
	if dice + bonus is greater than 14:
		say "     You push and dodge your way past the debris to get out of the collapsing building before it all comes tumbling down atop you.  From a safe distance, you watch the last of it collapse down.  The strange rumble seemed more like a cave-in or sinkhole than an earthquake, so you start looking around for clues when suddenly you hear some barking sounds around you moments before the ground gives out beneath you.";
	otherwise:
		say "     You try your best to dodge and push your way through the falling building, but are struck by some falling rubble on your way out (10 dmg).  Rubbing your aching shoulder and side, you watch as the last of it comes tumbling down.  The strange rumble seemed more like a cave-in or sinkhole than an earthquake, so you start looking around for clues when suddenly you hear some barking sounds around you moments before the ground gives out beneath you.";
		decrease hp of player by 10;
		if "Toughened" is listed in feats of player, increase hp of player by 1;
	challenge "Prairie Dog";
	if lost is 1:
		say "     Before leaving the area, the prairie dogs rummage through the ruins of the building, taking the last few items of value before disappearing back under the earth, leaving the rubble to be reclaimed by the plain and made into more pristene grasslands.";
	otherwise:
		say "     Having beaten them into retreat, you search through the ruins of the store they destroyed.  It seems that little of value remained in here even before they tore the place down from below.  You do manage to find a couple of cans of food undamaged by the collapse.  After storing it away, you dust yourself off you leave the ruined store behind to be reclaimed by the grasslands, as the burrowing prairie dogs would rather have it.";
		say "     Food x2 obtained.";
		add "food" to invent of player;
		add "food" to invent of player;
		increase score by 5;
	Now Partial Ruin is resolved;


Section 5- Hardware Store

Hardware Store is a situation.
The sarea of Hardware Store is "Plains";

Instead of resolving a Hardware Store:
	say "     Coming across the remains of a hardware store, you are very hopeful to find something of use in it.  The rubble is difficult to move and the task quickly becomes both tiring and frustrating.  More and more as you work, you come to believe this place was picked completely clean before it collapsed.  While some parts are too buried to reach and check, those you can find yield nothing of value at all.  After a long and fruitless search, you grab the pack of nails you found and bash them into a board using a rock.  You wrap some fabric tape around the base to give you a better grip and end up with a crude spiked club.";
	say "     Spiked club obtained!";
	add "spiked club" to invent of player;
	increase score by 5;
	Now Hardware Store is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"spiked club"	"A heavy board with nails you crudely pounded into it to vent your frustration."	2	spiked club

spiked club is an armament. It is part of the player. It has a weapon "[one of]your spiked club[or]your pointed club[or]your improvised weapon[or]your large club[or]your spiked club with a heavy thump[or]your nail board[or]your spiked club, driving one of the nails into them[at random]". The weapon damage of spiked club is 6. The weapon type of spiked club is "Melee". It is not temporary.

instead of sniffing the spiked club:
	say "The heavy club smells of blood, sweat and anger... so much anger.";


Section 6- Hunting Party

Hunting Party is a situation.  The level of Hunting Party is 9.
The sarea of Hunting Party is "Plains";
horsefight is a number that varies.
when play begins:
	add Hunting Party to badspots of guy;
	add Hunting Party to badspots of girl;
	add Hunting Party to badspots of furry;

Instead of resolving a Hunting Party:
	say "     Walking along a broken up patch of roadway, you hear loud clopping coming your way from over the small hillock beside you.  Getting ready for a fight, you spot a female centaur galloping down the slope towards you, but then she charges right past you.  It's then that you notice that her hooves are not the only ones your hear as several horsemen come running over the hill.  They are wearing cowboy hats and a few of them have lassos at the ready.  Most thankfully run past you, continuing their pursuit of the escaping centauress, but a pair stop to deal with you.";
		wait for any key;
	if Nightmaremastery is 1:
		say "     Recognizing you as their leader, then nod respectfully and start giving you a report on their activity out here.  While they had been hopeful that the equine centaurs could be encouraged to join the staff at the Stables, they seem quite reluctant, and even violent, about the prospect.  Not taking no for an answer, the horsemen have been trying to capture some of the female centaurs to [']encourage['] them to come along.  Squirming under your gaze as you keep questioning them, they report that they haven't yet been successful, as the four-legged centaurs are much faster than them.  You order them back to their task and warn them that you expect results or you'll be seeing them in your office.  Taking a mental note of their names, you find yourself equally looking forward to either their success or their failure, as either will get you some new mares to fuck.";
		increase score by 10;
	otherwise:
		say "     Their stallionhoods are hanging from their sheaths at the ready after their invigorating chase.  It seems this pair has decided that you'll be a good enough to satisfy them.  Clearly looking as much for a fight as they are sex, they laugh and arrogantly decide to take turns facing you, feeling quite confident.";
		now horsefight is 1;
		challenge "Horseman";
		say "     With the first one finished, the other cracks his knuckles and gets ready to have a go at you as well.";
		challenge "Horseman";
		say "     Done with both of them, you decide to get moving before their friends come back for their comrades... and perhaps decide that you'd be a fine addition for their stables as well.";
		now horsefight is 0;
		increase score by 1;
	Now Hunting Party is resolved;


Section 7- Pit Trap

Pit Trap is a situation.  The level of Pit Trap is 5.
The sarea of Pit Trap is "Plains";
when play begins:
	add Pit Trap to badspots of hermaphrodite;
	add Pit Trap to badspots of furry;

Instead of resolving a Pit Trap:
	say "     Cresting a small hillock, you notice a large hole at the bottom of the hill and can hear a soft moan of pain coming from it.  Cautiously approaching, you peek inside to find an injured soldier down at the bottom of a deep hole.  The hole seems quite smoothly dug and has vertical sides, clearly dug by someone or something.  Given its placement along the path between the hillocks and the pile of berries the soldier is munching on while trapped, it was clearly made as a pit trap and was successful.  In the grass beside the pit is a small pack, probably dropped by the soldier when he fell.";
	say "     Spotting you, the soldier starts calling up for you to help him.  He tells you that there's some rope in the pack he lost up there and to get him out quick.  Looking at the pack, you reach for it.  Shall you grab it and run, leaving him to his fate?";
	if the player consents:
		say "     Grabbing the pack, you start to hoof it away before whoever set the trap returns.  You chuckle as you hear the soldier screaming at you before his screams of anger turn to those of fear before being silenced.  Clearly the pit's creator or some other monster found the noisy human and they are going to be getting better acquainted.  You find a spot some distance away, sheltered by a mound of rubble, to examine the bag's contents.  Aside from a pocketknife, there a medkit and a ration pack to go along with the rope.";
		if scenario is "Bunker" or scenario is "Caught Outside":
			say "Medkit and food obtained.";
			add "medkit" to invent of player;
			add "food" to invent of player;
			increase score by 5;
			decrease humanity of player by 5;
		otherwise:
			say "Pocketknife, medkit and food obtained.";
			add "pocketknife" to invent of player;
			add "medkit" to invent of player;
			add "food" to invent of player;
			increase score by 10;
			decrease humanity of player by 5;
	otherwise:
		say "     Quickly digging out the rope, you start securing it to a large rock nearby.  The soldier keeps babbling his thanks to you.  But as you try to warn him to be quiet, it is too late.  Emerging from hidden holes in the ground come numerous three foot prairie dog creatures.  One of them waves her shovel at you.  'Hey now!  You leave that alone.  We caught it fair and square!  He's ours,' she says, crossing her fluffy arms over her large breasts";
		if bodyname of player is "Prairie Dog" and facename of player is "Prairie Dog" and skinname of player is "Prairie Dog":
			say ".  Looking you over, the rodent herm grins.  'But you know what, you're a fine looking burrower.  How about we share him?'  The soldier, just having finished coming up the rope, whimpers at this suggestion.  Shall you take her up on her offer?";
			if the player consents:
				say "[prairiedogsex]";
			otherwise:
				say "     'Well, that's just too bad.  We'll just have to take what's ours then,' she growls, raising her shovel.";
				say "[prairiedogfight]";
		otherwise:
			say ".  'And maybe we'll have some fun with you as well,' she says with a growl.  'Get [']em, girls,' she says, raising her shovel and charging.  The poor soldier, having just managed to get himself up the rope, finds himself swarmed with a pack of horny prairie dogs.";
			say "[prairiedogfight]";
	Now Pit Trap is resolved;

to say prairiedogfight:
	challenge "Prairie Dog";
	if lost is 1:
		say "     During your unsuccessful fight with the burrowing rodents, the soldier was easily taken down as well and fucked roughly by the lustful prairie dogs.  After having their way with you both they drag the soldier and his gear down underground with them as they make their escape to finish claiming their prize, leaving only his torn clothes behind.  You get up slowly, feeling glad you didn't end up joining him in his fate, though partially longing to discover what it would be like as well.  Feeling still flush from the vigorous lovemaking of the coterie of rodents, you think it best you head off before you do anything rash.";
		decrease score by 10;
	otherwise:
		say "     Defeating the prairie dogs, you manage to drive them off.  Luckily, you were able to deal with them in time and the soldier still seems to be human.  He thanks you profusely for your help and gathers up his gear.  He searches through his pack and, needing the medkit for his own injuries, passes you his rations, saying he'll have to head back to base to report in on this new hazard in the area.  You wish him well and head your separate ways, feeling much better about yourself.";
		increase score by 25;
		increase humanity of player by 5;
		increase morale of player by 3;

to say prairiedogsex:
	[puts Prairie Dog as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Prairie Dog":
			now monster is y;
			break;
	say "     Looking from your fellow rodents to the human soldier, you nod at the offer and the reach to grab him.  He struggles a little, but superior numbers have him down soon enough.  Numerous little paws grab at his clothes and strip him bare.  The one prairie dog you spoke with motions for you to pick a spot to have a go at him";
	if cocks of player > 0 and cunts of player > 0:
		say ".  Shall you ride his cock or stuff his ass? (Y=cock, N=ass)";
		if the player consents:
			say "     Deciding to get the soldier's cock in you, you climb atop him and sink yourself down onto it with a soft moan.  His cock throbs in you as you watch the others scramble atop him, stroking and teasing him all over.  Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily.  Spotting your stiff member[if cock length of player < 10], one of them snuggles her back against you and starts riding your shaft to get you to fill her[otherwise], one of them starts groping and fondling your large meat, running her tongue over it and sucking at its tip to get you to cum down her throat[end if].  Another moves up behind you and, with a little cooperation from you, raises him up enough to drive into his tight behind while rubbing her soft breasts against your back.  Others spray their seed onto him again and again.  As you ride, you can feel his cock shifting and changing inside you while sandy brown fur spreads over his body and breasts form on his chest.  Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum in you, draining away his human seed into you to be replaced by much better prairie dog semen as he transforms.  He is now well on his way to becoming a prairie dog herm.  Lost in the lust of transforming a human, you cum hard and pump your load into the prairie dog in front of you.  Sated, you cede your place to another who wants her turn on the soldier's cock while their leader moves to take his new pussy's virginity.";
			say "[impregchance]";
		otherwise:
			say "     Deciding to get have a go at his ass, you boost his hips up and drive your cock slowly into him[if cock length of player > 12].  It takes some effort to stuff your big meat into the soldier's tight rump, you it is well worth it when you do[end if].  His ass is snug and warm around your pistoning shaft.  His cock throbs and twitches as you fuck him as you watch the others scramble atop him, stroking and teasing him all over.  Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily.  Another is helped up so she can get his cock into her dripping snatch.  Another moves in behind you and, with your cooperation, sinks her throbbing shaft into your wet, dripping pussy.  You moan in pleasure at the sensation of fucking and being fucked at once, and the knowledge that you're corrupting this poor soldier making it all the better.  You can feel the sandy brown fur spreading over his hips and then up his body and breasts form on his chest.  Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum into the rodent in front of you, draining away his human seed to be replaced by much better prairie dog semen as he transforms.  He is now well on his way to becoming a prairie dog herm.  Lost in the lust of transforming a human, you cum hard, blasting your cum into his ass while the one behind you fills your pussy.  Sated, you cede your place, allowing their leader to move in to take his new pussy's virginity.";
			say "[impregchance]";
	otherwise if cocks of player > 0:
		say ".";
		wait for any key;
		say "     Deciding to get have a go at his ass, you boost his hips up and drive your cock slowly into him[if cock length of player > 12].  It takes some effort to stuff your big meat into the soldier's tight rump, you it is well worth it when you do[end if].  His ass is snug and warm around your pistoning shaft.  His cock throbs and twitches as you fuck him as you watch the others scramble atop him, stroking and teasing him all over.  Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily.  Another is helped up so she can get his cock into her dripping snatch.  Another moves in behind you and, with your cooperation, sinks her throbbing shaft into your tight asshole to give you the same treatment you're giving the soldier.  You moan in pleasure at the sensation of fucking and being fucked at once, and the knowledge that you're corrupting this poor soldier making it all the better.  You can feel the sandy brown fur spreading over his hips and then up his body and breasts form on his chest.  Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum into the rodent in front of you, draining away his human seed to be replaced by much better prairie dog semen as he transforms.  He is now well on his way to becoming a prairie dog herm.  Lost in the lust of transforming a human, you cum hard, blasting your cum into his ass while the one behind you fills your rump in return.  Sated, you cede your place, allowing their leader to move in to take his new pussy's virginity.";
	otherwise:
		say ".";
		wait for any key;
		say "     Deciding to get the soldier's cock in you, you climb atop him and sink yourself down onto it with a soft moan.  His cock throbs in you as you watch the others scramble atop him, stroking and teasing him all over.  Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily.  Another moves up behind you and, with a little cooperation from you, raises him up enough to drive into his tight behind while rubbing her soft breasts against your back.  Others spray their seed onto him again and again.  As you ride, you can feel his cock shifting and changing inside you while sandy brown fur spreads over his body and breasts form on his chest.  Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum in you, draining away his human seed into you to be replaced by much better prairie dog semen as he transforms.  He is now well on his way to becoming a prairie dog herm.  Lost in the lust of transforming a human, you cum hard.  Sated, you cede your place to another who wants her turn on the soldier's cock while their leader moves to take his new pussy's virginity.";
		say "[impregchance]";
	say "     You play and tease him, watching mostly as the others share him around until they're all satisfied.  Lost in a lustful haze, the new prairie dog herm is easily led underground where you're sure her induction into the warren will continue.  You feel a strong longing to join them, but manage to resist it, at least for the moment.";
	infect "Prairie Dog";
	now libido of player is libido of player / 2;
	decrease humanity of player by 20;
	increase score by 25;


Dry Plains Events ends here.