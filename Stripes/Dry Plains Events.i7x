Version 2 of Dry Plains Events by Stripes begins here.
[ Version 1.0 - Original events added - Stripes              ]
[ Version 2.0 - Two new events added - Stripes               ]
[ Version 2.1 - Added bad end for Watering Hole event - Song ]

"Adds a series of random events to Flexible Survival located at or focusing on the Dry Plains area."


Section 1 - Creeping Grass

Table of GameEventIDs (continued)
Object	Name
Creeping Grass	"Creeping Grass"

Creeping Grass is a situation.
ResolveFunction of Creeping Grass is "[ResolveEvent Creeping Grass]".
Sarea of Creeping Grass is "Plains".

to say ResolveEvent Creeping Grass:
	say "     As you check out a few fallen buildings, you notice that the rubble pile has already been partially covered by the dry grasses of the plains. Somehow, despite their recent collapse, the plains are already starting to cover and reclaim them. Checking more closely and prodding it with a stick, you can see that the grass roots, instead of burrowing into the soil, have climbed up the fallen beams and boards, spreading to grow fresh grass overtop of them. Putting some weight on the covered spot, it breaks and crumbles easily, showing that the grasses are breaking down and destroying the ruins they cover.";
	increase score by 1;
	now Creeping Grass is resolved;


Section 2 - Ranch House

Table of GameEventIDs (continued)
Object	Name
Ranch House	"Ranch House"

Ranch House is a situation.
ResolveFunction of Ranch House is "[ResolveEvent Ranch House]".
Sarea of Ranch House is "Plains".

to say ResolveEvent Ranch House:
	say "     You come the ruins of what was probably a ranch house. You search through the broken home, but find nothing of use or value. Looking around, you see that some of the fence still stands and notice a second fallen structure. Going over, you can quickly tell that this was once a small stable from the smell of horses hanging over it. You take care where you step, avoiding the dark messes as well as the white ones from equine cum. Hoof-prints in the dirt around the stable head off into the plains where the transformed horses probably live now in some altered form.";
	increase score by 1;
	now Ranch House is resolved;


Section 3 - Soaring Eagle

Table of GameEventIDs (continued)
Object	Name
Soaring Eagle	"Soaring Eagle"

Soaring Eagle is a situation.
ResolveFunction of Soaring Eagle is "[ResolveEvent Soaring Eagle]".
Sarea of Soaring Eagle is "Plains".

to say ResolveEvent Soaring Eagle:
	say "     Taking a short break under one of the rare trees on the plains, you spot a shadow drift across the ground. Looking up, you spot an eagle high up in the sky. As you watch it, you notice that it is not a normal eagle, but some kind of eagle man. Deciding to take no risks, you wait in the shadow of the tree until he passes from sight.";
	increase score by 1;
	now Soaring Eagle is resolved;


Section 4 - Partial Ruin

Table of GameEventIDs (continued)
Object	Name
Partial Ruin	"Partial Ruin"

Partial Ruin is a situation.
ResolveFunction of Partial Ruin is "[ResolveEvent Partial Ruin]". The level of Partial Ruin is 5.
Sarea of Partial Ruin is "Plains".
when play begins:
	add Partial Ruin to badspots of HermList;
	add Partial Ruin to BadSpots of FurryList;

to say ResolveEvent Partial Ruin:
	say "     You manage to find a stretch of asphalt that is only partially broken up by the grasses, most roadway here having already been split and broken through extensively by the plantlife here. This stretch has only started to succumb, but looks a couple of decades old and poorly maintained despite its probably newness. Following it, you come to a half-fallen building, the remains of a corner store. Hopeful of finding something of use, you rush over and start searching through the place. You have only started to look around when the ground starts to shake and rumble and another wall of the building collapses.";
	let bonus be ( Dexterity of Player + Strength of Player - 20 ) divided by 2;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]:";
	if dice + bonus > 14:
		say "     You push and dodge your way past the debris to get out of the collapsing building before it all comes tumbling down atop you. From a safe distance, you watch the last of it collapse down. The strange rumble seemed more like a cave-in or sinkhole than an earthquake, so you start looking around for clues when suddenly you hear some barking sounds around you moments before the ground gives out beneath you.";
	else:
		say "     You try your best to dodge and push your way through the falling building, but are struck by some falling rubble on your way out (10 dmg). Rubbing your aching shoulder and side, you watch as the last of it comes tumbling down. The strange rumble seemed more like a cave-in or sinkhole than an earthquake, so you start looking around for clues when suddenly you hear some barking sounds around you moments before the ground gives out beneath you.";
		decrease HP of Player by 10;
		if "Toughened" is listed in feats of Player, increase HP of Player by 1;
	challenge "Prairie Dog";
	if lost is 1:
		say "     Before leaving the area, the prairie dogs rummage through the ruins of the building, taking the last few items of value before disappearing back under the earth, leaving the rubble to be reclaimed by the plain and made into more pristine grasslands.";
		now Resolution of Partial Ruin is 1; [Failed to scavenge anything]
	else:
		say "     Having beaten them into retreat, you search through the ruins of the store they destroyed. It seems that little of value remained in here even before they tore the place down from below. You do manage to find a couple of cans of food undamaged by the collapse. After storing it away, you dust yourself off you leave the ruined store behind to be reclaimed by the grasslands, as the burrowing prairie dogs would rather have it.";
		ItemGain food by 2;
		increase score by 5;
		now Resolution of Partial Ruin is 2; [Successfully scavenged food]
	now Partial Ruin is resolved;


Section 5 - Hardware Store Ruins

Table of GameEventIDs (continued)
Object	Name
Hardware Store Ruins	"Hardware Store Ruins"

Hardware Store Ruins is a situation.
ResolveFunction of Hardware Store Ruins is "[ResolveEvent Hardware Store Ruins]".
Sarea of Hardware Store Ruins is "Plains".

to say ResolveEvent Hardware Store Ruins:
	say "     You wander across the dry plains, following the path of a worn-down road as it meanders through the rolling hills. The smell of dust still lingers in the air, likely the result of a herd of centaurs as they move through the plains. Not wanting to be caught off guard, you walk with further haste, until the dust settles, and you can once again relax. You pause for a moment to catch your breath. Taking the opportunity to survey your	surroundings, you think you spot a number of buildings up ahead. You approach to a safe distance, your eyes scanning the horizon for both peril and plunder, until eventually, they settle on the ruins of an old hardware store.";
	say "     [bold type]Do you want to investigate the ruins? [roman type]There's a good chance you could find some useful tools, but it looks risky, and rummaging around in the debris might bring unwanted attention.";
	LineBreak;
	if Player consents:
		let diceRoll be a random number from 1 to 20;
		let bonus be ( ( Perception of Player minus 10 ) divided by 2 );
		let perceptionRoll be diceRoll plus bonus;
		say "     You proceed to clamber into the ruins, moving aside fallen junk in an effort to find something of use. The rubble is difficult to move and the task quickly becomes both tiring and frustrating. More and	more as you work, you come to believe this place was picked completely clean before it collapsed. While some parts are too buried to reach and check, those you can find yield nothing of value at all. At one point, you notice a solid plank of wood buried under the rubble that looks like it might be of use. You give it a tug, but it barely moves. You pull again, getting it to budge this time, but you can see that it's a bit longer than you thought and moves much of the surrounding rubble along with it.";
		say "     You roll 1d20([diceRoll])+[bonus] = [special-style-1][perceptionRoll][roman type] vs [special-style-2]10[roman type] (Perception Check):[line break]";
		if perceptionRoll < 10:
			say "     Giving one last heave on the plank, you manage to dislodge it. What you didn't notice is that it was the only thing holding back a pile of rubble above you. It begins to topple down, and you dive away just in time to avoid being hit. The crash echoes through the store. Checking yourself over, you are relieved to find yourself undamaged, save for a few scrapes and bruises.";
			say "     On that note, you decide you've done enough rummaging for today. You are about to head out when you hear voices in the distance. It seems the noise of your rummaging has attracted some visitors. You slip into the shadows of one of the few walls still standing, hoping to avoid detection. Peeking around the corner, you count three centaurs approaching your position. You pull back into hiding and ponder your next move.";
			say "     [bold type]Do you challenge the group to a fight? [roman type]Otherwise you can try to sneak away without being seen.";
			LineBreak;
			if Player consents:
				say "[CentaurHardwareFight]";
			else:
				let diceRoll be a random number from 1 to 20;
				let bonus be ( ( Dexterity of Player minus 10 ) divided by 2 );
				let dexterityRoll be diceRoll plus bonus;
				say "     You roll 1d20([diceRoll])+[bonus]: [special-style-1][dexterityRoll][roman type] vs [special-style-2]10[roman type] (Dexterity Check):[line break]";
				if dexterityRoll < 10:
					say "     You slink deeper into the shadows and turn to depart in the other direction. You are able to follow the shadow of the crumbling wall for some time, but eventually it ends. With the ceiling having collapsed quite some time ago, you are left to cross a brightly lit gap before you can reach safety. You take your chances and speed across the opening in a standing crouch, but halfway through, you hear one of the centaurs shout. You've been spotted!";
					say "[CentaurHardwareFight]";
				else:
					say "     You slink deeper into the shadows and turn to depart in the other direction. You are able to follow the shadow of the crumbling wall for some time, but eventually it ends. With the ceiling having collapsed quite some time ago, you are left to cross a brightly lit gap before you can reach safety. Glancing at the group of centaurs, you wait until they appear to be distracted and then make your move. You cross to the other side of the opening and make it to the edge of the ruins. Hopping over the final pile of rubble, you make a sprint back to the dry plains. Sparing a glance to the rear, you see no signs of pursuit. Looks like you made out, leaving the pack of centaurs none the wiser.";
		else:
			say "     Realizing that the 2x2 is holding the surrounding junk together, you proceed more cautiously lest it all come tumbling down on you. You approach from a different angle, and this time, you find you are able to easily slide the plank out of its rubble prison. Although it's a bit longer than you would prefer, you find that it would make for a nice club with some improvements. You grab a pack of nails you found previously and bash them into the board using a rock. You wrap some fabric tape, also scavenged from within the ruins, around the base to give you a better grip and end up with a crude spiked club.";
			ItemGain spiked club by 1;
			increase score by 5;
			now Hardware Store Ruins is resolved;
	else:
		say "     Deciding discretion is the better part of valor, you pass the ruins by and continue on with your journey. You	keep an eye open for any trouble, but there are no further disturbances along your pleasant stroll.";

to say CentaurHardwareFight:
	let enemySelector be 0;
	let i be 0;
	now fightoutcome is 0;
	while i < 3:
		now inasituation is true;
		let enemySelector be a random number from 1 to 2;
		if enemySelector is 1:
			challenge "Centaur Mare";
		else:
			challenge "Centaur Stallion";
		now inasituation is false;
		increase i by 1;
	if fightoutcome < 20: [player victory]
		say "     You stand over the defeated centaurs, breathing heavily after the fight. You take a moment to revel in your victory, but with only three to their number, you realize there's a good possibility that more of them might be nearby. Deciding it's best to get out of here before more show up, you pick your way out of the mess of rubble which toppled over in the chaos. Perhaps you can return and continue your search when there's a little less foot traffic around.";
	else if fightoutcome > 19 and fightoutcome < 30: [player loss]
		say "     You slump to the floor, defeated at the hands of the small centaur scouting party. They grin wickedly, eager to have their way with you. One of them steps forward and grabs you by the collar, roughly dragging you to the center of the group while the others clear some room to have some fun.";
		if enemySelector is 1:
			say "[losetocentaurmare]";
		else:
			say "[losetocentaurstallion]";
	else if fightoutcome is 90: [player fled]
		say "     Escaping from the grasp of the centaurs, you quickly dash around a corner of rubble and begin to run. The centaurs attempt to give chase, but they're bulky form gives them trouble navigating the debris of the hardware store. Sparing a glance behind you, you see that they've given up the chase, and you slow your retreat to a more comfortable pace. You make your way out of the ruins and endeavour to come back later, when it's a little less dangerous around. Perhaps then you'll be able to find something useful.";
	else:
		say "You should not be seeing this.";

[spiked club moved to Core Mechanics/Weapons.i7x]


Section 6 - Hunting Party

Table of GameEventIDs (continued)
Object	Name
Hunting Party	"Hunting Party"

Hunting Party is a situation.
ResolveFunction of Hunting Party is "[ResolveEvent Hunting Party]". The level of Hunting Party is 9.
Sarea of Hunting Party is "Plains".
horsefight is a number that varies.
when play begins:
	add Hunting Party to BadSpots of MaleList;
	add Hunting Party to BadSpots of FemaleList;
	add Hunting Party to BadSpots of FurryList;

to say ResolveEvent Hunting Party:
	project the Figure of CentaurMare_icon;
	say "     Walking along a broken up patch of roadway, you hear loud clopping coming your way from over the small hillock beside you. Getting ready for a fight, you spot a female centaur galloping down the slope towards you, but then she charges right past you. It's then that you notice that her hooves are not the only ones you hear as several horsemen come running over the hill. They are wearing cowboy hats and a few of them have lassos at the ready. Most thankfully run past you, continuing their pursuit of the escaping centauress, but a pair stop to deal with you.";
	WaitLineBreak;
	if Nightmaremastery is 1:
		say "     Recognizing you as their leader, they nod respectfully and start giving you a report on their activity out here. While they had been hopeful that the equine centaurs could be encouraged to join the staff at the Stables, they seem quite reluctant, and even violent, about the prospect. Not taking no for an answer, the horsemen have been trying to capture some of the female centaurs to [']encourage['] them to come along. Squirming under your gaze as you keep questioning them, they report that they haven't yet been successful, as the four-legged centaurs are much faster than them. You order them back to their task and warn them that you expect results or you'll be seeing them in your office. Taking a mental note of their names, you find yourself equally looking forward to either their success or their failure, as either will get you some new mares to fuck.";
		increase score by 10;
		now Resolution of Hunting Party is 1; [Nightmare met horsemen]
	else:
		say "     Their stallionhoods are hanging from their sheaths at the ready after their invigorating chase. It seems this pair has decided that you'll be a good enough to satisfy them. Clearly looking as much for a fight as they are sex, they laugh and arrogantly decide to take turns facing you, feeling quite confident.";
		now horsefight is 1;
		challenge "Horseman";
		say "     With the first one finished, the other cracks his knuckles and gets ready to have a go at you as well.";
		challenge "Horseman";
		say "     Done with both of them, you decide to get moving before their friends come back for their comrades... and perhaps decide that you'd be a fine addition for their stables as well.";
		now horsefight is 0;
		increase score by 1;
		now Resolution of Hunting Party is 2; [Fought horsemen]
	now Hunting Party is resolved;


Section 7 - Pit Trap

Table of GameEventIDs (continued)
Object	Name
Pit Trap	"Pit Trap"

Pit Trap is a situation.
ResolveFunction of Pit Trap is "[ResolveEvent Pit Trap]". The level of Pit Trap is 5.
Sarea of Pit Trap is "Plains".
when play begins:
	add Pit Trap to badspots of HermList;
	add Pit Trap to BadSpots of FurryList;

to say ResolveEvent Pit Trap:
	say "     Cresting a small hillock, you notice a large hole at the bottom of the hill and can hear a soft moan of pain coming from it. Cautiously approaching, you peek inside to find an injured soldier down at the bottom of a deep hole. The hole seems quite smoothly dug and has vertical sides, clearly dug by someone or something. Given its placement along the path between the hillocks and the pile of berries the soldier is munching on while trapped, it was clearly made as a pit trap and was successful. In the grass beside the pit is a small pack, probably dropped by the soldier when he fell.";
	say "     Spotting you, the soldier starts calling up for you to help him. He tells you that there's some rope in the pack he lost up there and to get him out quick. Looking at the pack, you reach for it.";
	say "     [bold type]Shall you grab it and run, leaving him to his fate?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if Player consents:
		say "     Grabbing the pack, you start to hoof it away before whoever set the trap returns. You chuckle as you hear the soldier screaming at you before his screams of anger turn to those of fear before being silenced. Clearly the pit's creator or some other monster found the noisy human and they are going to be getting better acquainted. You find a spot some distance away, sheltered by a mound of rubble, to examine the bag's contents. Aside from a pocketknife, there a medkit and a ration pack to go along with the rope.";
		if scenario is "Bunker" or scenario is "Caught Outside":
			ItemGain medkit by 1;
			ItemGain food by 1;
			increase score by 5;
			SanLoss 5;
			now Resolution of Pit Trap is 1; [Stole bag, Bunker or Caught Outside Scenario]
		else:
			ItemGain pocketknife by 1;
			ItemGain medkit by 1;
			ItemGain food by 1;
			increase score by 10;
			SanLoss 5;
			now Resolution of Pit Trap is 2; [Stole bag, Other Scenarios]
	else:
		say "     Quickly digging out the rope, you start securing it to a large rock nearby. The soldier keeps babbling his thanks to you. But as you try to warn him to be quiet, it is too late. Emerging from hidden holes in the ground come numerous three foot prairie dog creatures. One of them waves her shovel at you. 'Hey now! You leave that alone. We caught it fair and square! That one's ours,' she says, crossing her fluffy arms over her large breasts. ";
		if BodyName of Player is "Prairie Dog" and FaceName of Player is "Prairie Dog" and SkinName of Player is "Prairie Dog":
			say "Looking you over, the rodent herm grins. 'But you know what, you're a fine looking burrower. How about we share him?' The soldier, just having finished coming up the rope, whimpers at this suggestion.";
			say "     [bold type]Shall you take her up on her offer?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if Player consents:
				say "[prairiedogsex]";
			else:
				say "     'Well, that's just too bad. We'll just have to take what's ours then,' she growls, raising her shovel.";
				say "[prairiedogfight]";
		else:
			say "'And maybe we'll have some fun with you as well,' she says with a growl. 'Get [']em, girls,' she says, raising her shovel and charging. The poor soldier, having just managed to get himself up the rope, finds himself swarmed with a pack of horny prairie dogs.";
			say "[prairiedogfight]";
	now Pit Trap is resolved;

to say prairiedogfight:
	challenge "Prairie Dog";
	if lost is 1:
		say "     During your unsuccessful fight with the burrowing rodents, the soldier was easily taken down as well and fucked roughly by the lustful prairie dogs. After having their way with you both, they drag the soldier and his gear down underground with them as they make their escape to finish claiming their prize, leaving only his torn clothes behind. You get up slowly, feeling glad you didn't end up joining him in his fate, though partially longing to discover what it would be like as well. Feeling still flush from the vigorous lovemaking of the coterie of rodents, you think it best you head off before you do anything rash.";
		decrease score by 10;
		now Resolution of Pit Trap is 3; [Fought Prairie Dogs, Lost]
	else:
		say "     Defeating the prairie dogs, you manage to drive them off. Luckily, you were able to deal with them in time and the soldier still seems to be human. He thanks you profusely for your help and gathers up his gear. He searches through his pack and, needing the medkit for his own injuries, passes you his rations, saying he'll have to head back to base to report in on this new hazard in the area. You wish him well and head your separate ways, feeling much better about yourself.";
		ItemGain food by 1 silently;
		increase score by 25;
		SanBoost 5;
		increase morale of Player by 3;
		now Resolution of Pit Trap is 4; [Fought Prairie Dogs, Won]

to say prairiedogsex:
	choose row MonsterID in Table of Random Critters;
	setmonster "Prairie Dog";
	say "     Looking from your fellow rodents to the human soldier, you nod at the offer and the reach to grab him. He struggles a little, but superior numbers have him down soon enough. Numerous little paws grab at his clothes and strip him bare. The one prairie dog you spoke with motions for you to pick a spot to have a go at him.";
	if Player is herm:
		say "     [bold type]Shall you ride his cock or stuff his ass?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Ride his cock.";
		say "     ([link]N[as]n[end link]) - Stuff his ass.";
		if Player consents:
			say "     Deciding to get the soldier's cock in you, you climb atop him and sink yourself down onto it with a soft moan. His cock throbs in you as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Spotting your stiff member, one of them [if Cock Length of Player < 10]snuggles her back against you and starts riding your shaft to get you to fill her[else]starts groping and fondling your large meat, running her tongue over it and sucking at its tip to get you to cum down her throat[end if]. Another moves up behind you and, with a little cooperation from you, raises him up enough to drive into his tight behind while rubbing her soft breasts against your back. Others spray their seed onto him again and again. As you ride, you can feel his cock shifting and changing inside you while sandy brown fur spreads over his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum in you, draining away his human seed into you to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard and pump your load into the prairie dog in front of you. Sated, you cede your place to another who wants her turn on the soldier's cock while their leader moves to take his new pussy's virginity.[impregchance]";
		else:
			say "     Deciding to get have a go at his ass, you boost his hips up and drive your cock slowly into him[if Cock Length of Player > 12]. It takes some effort to stuff your big meat into the soldier's tight rump, but it is well worth it when you do[end if]. His ass is snug and warm around your pistoning shaft. His cock throbs and twitches as you fuck him as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Another is helped up so she can get his cock into her dripping snatch. Another moves in behind you and, with your cooperation, sinks her throbbing shaft into your wet, dripping pussy. You moan in pleasure at the sensation of fucking and being fucked at once, and the knowledge that you're corrupting this poor soldier making it all the better. You can feel the sandy brown fur spreading over his hips and then up his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum into the rodent in front of you, draining away his human seed to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard, blasting your cum into his ass while the one behind you fills your pussy. Sated, you cede your place, allowing their leader to move in to take his new pussy's virginity.[impregchance]";
	else if Player is male:
		WaitLineBreak;
		say "     Deciding to have a go at his ass, you boost his hips up and drive your cock slowly into him[if Cock Length of Player > 12]. It takes some effort to stuff your big meat into the soldier's tight rump, but it is well worth it when you do[end if]. His ass is snug and warm around your pistoning shaft. His cock throbs and twitches as you fuck him as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Another is helped up so she can get his cock into her dripping snatch. Another moves in behind you and, with your cooperation, sinks her throbbing shaft into your tight asshole to give you the same treatment you're giving the soldier. You moan in pleasure at the sensation of fucking and being fucked at once, and the knowledge that you're corrupting this poor soldier making it all the better. You can feel the sandy brown fur spreading over his hips and then up his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum into the rodent in front of you, draining away his human seed to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard, blasting your cum into his ass while the one behind you fills your rump in return. Sated, you cede your place, allowing their leader to move in to take his new pussy's virginity.";
	else:
		WaitLineBreak;
		say "     Deciding to get the soldier's cock in you, you climb atop him and sink yourself down onto it with a soft moan. His cock throbs in you as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Another moves up behind you and, with a little cooperation from you, raises him up enough to drive into his tight behind while rubbing her soft breasts against your back. Others spray their seed onto him again and again. As you ride, you can feel his cock shifting and changing inside you while sandy brown fur spreads over his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum in you, draining away his human seed into you to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard. Sated, you cede your place to another who wants her turn on the soldier's cock while their leader moves to take his new pussy's virginity.[impregchance]";
	say "     You play with and tease him, mostly watching as the others share him around until they're all satisfied. Lost in a lustful haze, the new prairie dog herm is easily led underground where you're sure her induction into the warren will continue. You feel a strong longing to join them, but manage to resist it, at least for the moment.";
	infect "Prairie Dog";
	now Libido of Player is Libido of Player / 2;
	SanLoss 20;
	increase score by 25;
	now Resolution of Pit Trap is 1; [Had sex with Soldier]


Section 8 - Watering Hole

Table of GameEventIDs (continued)
Object	Name
Watering Hole	"Watering Hole"

Watering Hole is a situation.
ResolveFunction of Watering Hole is "[ResolveEvent Watering Hole]". The level of Watering Hole is 8.
Sarea of Watering Hole is "Plains".
when play begins:
	add Watering Hole to BadSpots of MaleList;
	add Watering Hole to BadSpots of FurryList;

to say ResolveEvent Watering Hole:
	choose row MonsterID in Table of Random Critters;
	setmonster "Bald Eagle";
	say "     In a depression in the grassy plains, you find a greener spot around a small pond. However, there is an eagle man bathing himself in the water and clearly enjoying it. The avian creature strokes his hard cock, leaking precum into the water. Focused on his own fun, he hasn't spotted you yet. Shall you approach the bathing bird (Y) or take this opportunity to leave (N) while you still can?";
	if Player consents:
		say "     Deciding to approach, you move cautiously towards the bird. It doesn't notice you until you get closer to the water. When you're spotted, it squawks and flaps angrily in the water, startled by your arrival. Thankfully, it does calm down a little when you don't attack right away. You start telling him that you were just coming over to get some water, but he grins and waves off your comments. 'Oh, I know you were really coming over to join me in my bath. No need to be coy about it, sexy. Come on in and let's have a little romp? You look like you could use some fine eagle cock stuffed inside you.' Shall you take him up on his offer?";
		if Player consents:
			say "     The bird grins at the corners of his beak and takes your hand as he helps you into the pond. Aside from a little sediment at the bottom of the pond, the water is rather clean and feels good after your long trek through the city and the dry plains. The eagle runs his wet wings over your body as he moves in behind you, rubbing his throbbing cock against your ass.";
			if Player is female:
				say "     Lowering you onto all fours in the water, he lines up his cock with your wet pussy and slowly sinks his shaft into you. You moan in pleasure and push into his thrusts, aroused by the idea of fucking in this pond the birds have been using as their bath. And you're quite certain many of them have been cumming in it as well, tasting their semen in the water as you take that drink you wanted while getting fucked. The strong eagle rubs his feathered hands along your back and over your ass as he keep plowing his throbbing, leaking prick into you. 'Isn't that nice, my little chick? A big eagle cock to fuck you right. Breed you full of eaglets.' You moan and nod, lost in the lustful mating. When he finally cums, he blasts his thick load into you and you cum moments later.[ovichance]";
			else:
				say "     Lowering you onto all fours in the water, he lines up his cock with your waiting pucker and slowly sinks his shaft into you. You moan in pleasure and push into his thrusts, aroused by the idea of fucking in this pond the birds have been using as their bath. And you're quite certain many of them have been cumming in it as well, tasting their semen in the water as you take that drink you wanted while getting fucked. The strong eagle rubs his feathered hands along your back and over your ass as he keep plowing his throbbing, leaking prick into you. 'Isn't that nice, my little chick? A big eagle cock to fuck you right. Stuff that slutty ass of yours.' You moan and nod, lost in the lustful mating. When he finally cums, he blasts his thick load into you and you cum moments later.[movichance]";
			if humanity of Player > 15:
				say "     Finished with his bath and his fuck, he helps you out of the water and rubs his feathered hand across your stuffed tummy, nipping at your neck with his beak. As you prepare to go, he flies off. Looking up as he gains altitude, you spot several other eagles soaring over the pond and head on your way, as the others may not be so friendly about an intruder at their bathing spot. Both covered in and filled with eagle-tainted fluids, ";
				if BodyName of Player is "Bald Eagle" and player is pure:
					say "the infection soaks deeper into you, further corrupting your body and mind. Still awash in the pleasures of the mating and the overdose on tainted water, you are quite pleased with the feeling of the infection spreading through you.";
					SanLoss 5;
				else:
					say "you quickly start to change, fully changing into an eagle creature like your lover. Still awash in the pleasures of the mating and the overdose on tainted water, you are quite pleased with the feeling of the infection spreading through you.";
				say "[eaglefulltf]";
				increase morale of Player by 3;
				SanLoss 15;
				now thirst of Player is 0;
				increase score by 25;
				now Resolution of Watering Hole is 1; [Had sex with eagle, no bad end]
			else:
				WaitLineBreak;
				say "     Somewhere in the midst of your wild romp, the last of your humanity is finally fucked from your mind. You let out several happy, high-pitched chirps as your greedy inner walls squeeze around the eagle stud's cock. 'Still eager for more, my little chick? I knew you were a keeper.' The handsome male chuckles at your submission and rubs his beak against the side of your neck. His hips begin to rock against your ass again, pumping that hard eagle shaft back and forth in your cum-soaked passage, making you moan and push back into his thrusts. Lost in his alluring presence, you pose no resistance when his feathery hips start to pound against you, each thrust causing your [if Player is herm]cunt[sfn] to squirt around his maleness while your cock[smn] twitch[esmv] and leak[smv] into the water[else if Player is female]cunt[sfn] to squirt around his maleness[else if Player is male]cock[smn] to twitch and spurt into the water[else]ass to squeeze even tighter around that amazing avian length[end if].";
				say "     You're in no position to resist when a taloned hand pushes your head into pond, forcing you to drink down more of the delicious, tainted water. Your infected thoughts are shuffled and rearranged until it's clear that you were always meant to be his slutty, obedient plaything, his perfect little bottom bitch to rail and ravage to his heart's content. The realization that you're nothing but a hollow, feral sex slave for this handsome eagle stud pushes you right over the edge, [if Player is neuter]experiencing a powerful sexless climax[else]cumming hard[end if] around your lover's pistoning prick. The wringing tightness of your [if Player is female]pussy[else]asshole[end if] proves too much for your mate, and soon he's sending hot ropes of seed deep into your [if Player is female]womb[else]bowels[end if]. Pleasure rockets through you as his sperm coats your insides, leaving no spot unmarred by that sticky, virile gunk. Even while peaking, he can't help but buck into your form, using your [if Player is female]cunt[else]ass[end if] as little more than a cum-sullied cocksleeve until the last of his spurts have finally abated.";
				say "[eaglefulltf]";
				WaitLineBreak;
				say "     Exhausted, you aren't sure how long you lie soaking in the pond with your resting partner, your breath soft and ragged. Eventually, he pries that tapered dick from your sopping wet [if Player is female]pussy[else]hole[end if], leaving his creamy seed to drool down your thighs into the cloudy water below. You roll over onto your back and stare up into the [if daytimer is day]blue sky above[else]starry night sky[end if], your head empty of all but the amazing sex you just experienced. Floating in the water, your lover slides down to join you, wrapping his wet, slightly sticky wings around your body in a protective embrace. You dimly recall something about eagles mating for life, but that information seems so inconsequential to you now as the lovely male holds you close to his soft plumage and strokes along your body. His teasing contact quickly gets you aroused, and soon you're pressed into the water again while the handsome bird fucks you into a dazed and drooling stupor.";
				say "     After several more romps in the pond's tainted water, you and your avian lover collapse in the warm, cloudy mess of [if Player is female]mixed fluids[else if Player is male]mixed seed[else]his seed[end if], your lusts completely sated. His large wings wrap around to cradle you while his taloned hands caress your stomach and [if Breast Size of Player > 0]breasts[else]chest[end if]. You rest with him for a while, savoring the pleasant ache in your [if Player is female]folds[else]rear[end if] and focusing on the amazing feeling of his cock still throbbing within you. Once you've both recovered, your sexy eagle mate draws your head back for a sensual, tongue-filled kiss that has you moaning into his hooked raptor beak.";
				say "     You shudder when the avian pulls out from your [if Player is female]cum-soaked pussy[else]jealously squeezing asshole[end if], a cascade of warm cream spilling down your inner thighs. He then guides you up on shaky legs, keeping you ensnared in his brown-feathered wings as a taloned hand strokes the side of your beak. 'C'mon, let's get you back to the nest,' he croons into your ear. You nod unthinkingly, just happy to have pleased him. With another lustful kiss that numbs your hazy thoughts further, your eagle lover leads you out of the pond. 'Ready or not,' he teases, and you scarcely have time to clear your sex-fogged mind before he's taking off into the skies above. On instinct, you run after him, and with several powerful beats of your wings, you manage to lift yourself off the ground and fly after your partner.";
				WaitLineBreak;
				say "     The trip to his nest is a blur of baser instincts. One moment, you're soaring through the skies, dancing with your lover in an intricate mating display; the next, you're landing in a conifer near an idyllic lake, the city a distant silhouette on the horizon. Your eagle mate is quick to press you down against his nest, a cushy bed of natural materials and manmade goods. The blanket you rest on smells strongly of the eagle male's scent, a heady blend of feathers, pine, and avian sex that makes you want to bury your face in it forever.";
				say "     Your legs are [if Player is female]spread apart[else]pushed up and spread[end if] as he presses in against you from above, keeping you pinned beneath his supple weight. Your mate aligns his dripping cocktip with your [if Player is female]slick and wanting folds, smearing that pulsing, bestial length against your needy cunt[else]eager rear entrance, smearing that pulsing, bestial length around your rim[end if] before aligning it properly. He sinks himself inside of you with a single claiming stroke, stretching your [if Player is female]slavering pussy[else]hungry hole[end if] around him, every nerve in your body aching to be taken by the dominant male. His large wings cast a tarp over your body, obscuring your vision to what dim light flitters through his dense brown plumage. His possessive embrace keeps you mired in his arousing scent while he fucks you through several powerful orgasms, stretching you wide around that ample eagle cock throughout. [if Player is herm]Each hot squirt and spurt of your cum takes with it the last vestiges of your humanity, leaving[else if Player is female]Each hot squirt of femcum around his rigid dick takes with it the last vestiges of your humanity, leaving[else if Player is male]Each strained spurt from your [cock size desc of Player] cock[smn] takes with it the last vestiges of your humanity, leaving[else]The hot and wild sex leaves[end if] no room for anything in your broken mind but the desire to be [if Player is impreg_ok]a horny, well-bred receptacle for his eggs, nothing but a vessel to be stuffed with and impregnated by[else]his slutty mate and plaything, nothing but a vessel to be stuffed and bloated with[end if] his amazing eagle seed for the rest of your simple existence.";
				wait for any key;
				now humanity of Player is 0;
				trigger ending "Watering Hole Bad End";
				end the story saying "You have given yourself over to your handsome eagle mate.";
		else:
			say "     He seems upset that you've refused his offer, but lets you approach the pond to take some water regardless. His hands move back to his cock, stroking and pumping at it casually. As you lean in to take some water though, he quickly swoops in to attack you and you stumble back a few steps away from the pond onto firmer soil and prepare to fight. It seems he'll try to have his way with you, regardless of your wishes.";
			challenge "Bald Eagle";
			if lost is 1:
				say "     After the eagle has had his way with you, he flies back up into the air. Looking up, you spot several other eagles in the air and decide to hightail it out of there before the others come swooping in to enjoy the beaten interloper by their bathing spot.";
				decrease score by 1;
				now Resolution of Watering Hole is 2; [Fought Eagle, Lost]
			else:
				say "     After defeating the eagle and sending it on its way, you face the pond, trying to decide if you'll take a drink. Shall you lean down and have some water from the pond?";
				if Player consents:
					say "     Deciding that you'd rather have the water, regardless of the consequences, you lean in and drink your fill of the tainted waters. You can taste the arousing flavor of their semen mixed into the water, but you're too excited now to stop. As you finish your long drink, you spot a reflection in the water and, looking up, you spot more eagles soaring above you. You decide to hightail it out of there before the others come swooping in to deal with the interloper around their bathing spot, only pausing to grab a couple of the feathers lying around before you go.";
					ItemGain eagle feather by 2 silently;
					let ponddrinks be ( 1 + ( ( thirst of Player - 1 ) / 25 ) );
					if "Iron Stomach" is not listed in feats of Player:
						repeat with y running from 1 to ponddrinks:
							infect "Bald Eagle";
							decrease humanity of Player by a random number between 1 and 4;
					increase score by 10;
					now thirst of Player is 0;
					now Resolution of Watering Hole is 3; [Defeated Eagle, Drank]
				else:
					say "     Deciding it'd probably be best to avoid the tainted waters, you get up. Spotting more eagles in the air above you, you decide to hightail it out of there before the others come swooping in to deal with the interloper around their bathing spot. You pause only long enough to grab a couple of the feathers scattered around the edge of the pond.";
					ItemGain eagle feather by 2 silently;
					increase score by 5;
					now Resolution of Watering Hole is 4; [Defeated eagle, Did not Drink]
	else:
		say "     Rather than risk facing the [if level of Player <= 10]powerful [end if]creature for clearly tainted water, you decide to continue on your way, counting yourself lucky that you were able to learn that the water was infected. Had he not been there, you may have ended up drinking it without knowing any better.";
		increase score by 1;
		now Resolution of Watering Hole is 5; [Avoided Watering Hole]
	now Watering Hole is resolved;

to say eaglefulltf:
	[puts Bald Eagle as lead monster for infection and impregnation]
	setmonster "Bald Eagle" silently;
	turn the Player into a "Bald Eagle";
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	if Libido of Player < 50, now Libido of Player is 50;


Section 9 - Treasure Hunters

Table of GameEventIDs (continued)
Object	Name
Treasure Hunters	"Treasure Hunters"

Treasure Hunters is a situation.
ResolveFunction of Treasure Hunters is "[ResolveEvent Treasure Hunters]".
Sarea of Treasure Hunters is "Plains".
when play begins:
	add Treasure Hunters to badspots of HermList;
	add Treasure Hunters to BadSpots of FurryList;


to say ResolveEvent Treasure Hunters:
	say "     Taking a short break on a mound of rubble, you hear a pair of arguing voices approaching. Not really having anywhere you can hide on these dry plains, you decide to sit and wait, though you do prepare yourself in case of battle. You spot a pair of hyenas cresting the rise in front of you, arguing vehemently with each other. The pair of herms have shovels in hand and their furry coats are covered in dust and dirt.";
	say "     'Give me that,' one says as she snatches some scrap of paper. 'It says we were supposed to go 150 paces from that last mound. And now there's no tree here at all. Just some loser,' she adds, waving dismissively in your direction.";
	say "     'And that's what I've been trying to tell you. That last mound couldn't have been the right one. He said it was a map to the lost treasure of Black Morris the Short, pirate and plunderer. The Short?!' the second hyena emphasizes. The first looks at her companion in confusion. 'Don't you get it? We're taking too big of paces. We gotta start back over again and take smaller steps.'";
	say "     'Huh? Ohhhhhhhh! You,' the other responds, 'are a genius.'";
	say "     'I know. I know. That's why that dumb coyote sold the map to us. Knew we'd be smart enough to find it.' And with that, she takes the rather new looking [']ancient['] map back.";
	say "     Their plan decided, they down some water, wipe their brows and get ready to head off and glance back at you.";
	if hyg is 4 and ( FaceName of Player is "Hyena Herm" or BodyName of Player is "Hyena Herm" ):
		if matriarchowned is 1:
			say "     Only now do they realize who you are and start fumbling around, trying to hide the shovels and map. 'Oh... umm... we... we didn't recognize you there, Matriarch,' the first starts up. 'We didn't mean to call you a loser, [if Player is herm]sir, ma'am, sir,[else if Player is female]sir, uh, ma'am,[else]uh, sir,[end if]' the first one adds in a mumble, which earns her a light smack from the second. 'We... we were trying to get the treasure for the gang, yeah! That's right. For you and for the gang,' she babbles in an attempt to curry favor with you. For a brief moment you consider dressing down these idiots and ordering them off their bogus treasure hunt, but decide you really don't want these half-wits trying to do any legitimate work for your gang. You thank them for their diligence and order them back to work. You add that you're looking forward to seeing them show up with the treasure, and will be very disappointed if they don't come back with it. Nodding and bowing submissively, the hyenas babble some thanks and then hurry off to restart their quest.";
			increase score by 10;
			now Resolution of Treasure Hunters is 1; [Player is Matriarch]
		else if matriarchdefeated > 0:
			say "     Cluing in that you're a gang member, and a lower-ranked one at that, they strut on over to you confidently. 'We've been hard at work here. Could use a break, you know,' the first says. 'Secret mission stuff,' the other adds quickly, 'so you can't tell no one!' 'Yeah, not even the Matriarch! It's a... uh... surprise.' 'Yeah, that's it. A surprise for her.' It takes considerable effort not to roll your eyes at that, but you somehow manage.";
			say "     They move in closer, dropping their gear and run their paws over you. 'Now about that [']break['],' the second says as her paw moves down to grope you. Your submissive hyena [if matriarchdefeated is 1]urges[else]nature[end if] causes you to submit to them and accept the fondling from the more confident herms. They strip you down, slide off their loose shirts and push you down onto all fours[if matriarchdefeated is 1]. While you might be able to resist the advances of these lesser gang members, your lustful instincts coax you into letting them take you[end if]. The first moves in front of you, bringing her cock to your face while the other grabs your ass and moves into position behind you. You moan softly and tease their cocks with your hand and your rear, getting them fully hard.";
			say "     The pair of them guide your mouth and [if Player is female]pussy[else]asshole[end if] to line up with the tips of their cocks before they thrust into you as they nod to one another. You moan softly around your muzzleful of cock as you're penetrated from behind. The hyena herms pound into you hard and fast, using your body like your instincts tell you it should. Having hyenas fucking you feels so good, and even if this pair aren't as strong of mates as you'd desire, they still have wonderful shafts to fill you with. Throbbing, pulsing dicks that pump into mouth and [if Player is female]cunt[else]rear[end if] and are soon spurting their rich, delicious seed down your throat and into your [if Player is female]womb[else]bowels[end if].[impregchance]";
			say "     Finishing up, the pair grope and fondle you until you cum as well, then leave you there, panting in the grass as they gather their stuff and prepare to head off. 'Now don't forget. Don't tell no one,' they say again. You smile and nod, enjoying the afterglow of the rough fucking, leaving them to their fool's errand now that you've gotten what you wanted.";
			increase score by 10;
			now Resolution of Treasure Hunters is 2; [Player is Omega Gang member]
		else:
			say "     Cluing in that you're another gang member, they approach you cautiously. 'We're... uh... we're on a mission here. Top secret,' the second, the questionable genius, says. 'So you can't tell no one!' she adds. 'Yeah, not even the Matriarch! It's a... uh... surprise,' the first adds. 'Yeah, that's it. A surprise for her.' It takes considerable effort not to laugh at them, but you somehow manage. 'We've been working hard,' the second says. 'For the gang, you know, and could use a bit of a break, if you know what I mean.' Shall you continue the break you were taking by having some fun with this duo of hyenas?";
			if Player consents:
				if Player is male:
					say "     Deciding to have some fun with this pair, you put your arms around the nominally smarter one and grope her bosom, making her moan. You let your hands roam over her body, slipping off her loose shirt so you can uncover her breasts and fondle them directly. Teasing her nipples, you pull her down to sit in your lap, back to your chest and pussy at your cock. You slowly thrust into her, enjoying her lustful moans and groans. Her cunt is hot, wet and dripping around your shaft, eager to be fucked. Her own swollen cock is tended to by her partner, who drops to her knees and starts licking and sucking at it. You bounce her lightly in your lap, setting the pace for her thrusts into the other hyena's muzzle. You continue playing with her hard nipples while she strokes the other's ears and rides your throbbing shaft.";
					say "     Being on the receiving end of you both, she cums first, soaking your crotch and blasting her load into her partner's muzzle. With the squeezing, orgasming cunt milking at your cock, you unleash your load shortly afterwards. You pump your hot load into the herm hyena's womb, watching as her partner pumps her own shaft until she splatters her load onto the grass. Finished, you shove her off, telling them that they should get back to work. They nod and grab their stuff, rushing off.";
					increase score by 10;
					now Resolution of Treasure Hunters is 3; [Player is Male Gang Member, Sex]
				else:
					say "     Deciding to have some fun with this pair, you put your arms around the nominally smarter one and grope her bosom, making her moan. You let your hands roam over her body, slipping off her loose shirt so you can uncover her breasts and fondle them directly. Teasing her nipples, you guide her to lay down on the dry grass and move atop her. Bringing your hips over hers, you grab her sheath and emerging cock, stroking her to full erection before lowering yourself down onto her meat. Enjoying to soft sound of her moan, you start riding her meat and motion for the other to come up and bring her shaft to your mouth. Licking and sucking at it, you lustfully savor the pleasure of having two hyena cocks stuffed inside you, licking and sucking at them until you cum loudly in pleasure and are rewarded with two hot loads of hyena cum from the herms. Finished and satisfied, you push the one back and climb off the other, telling them that they should get back to work. They nod and grab their stuff, rushing off.[impregchance]";
					increase score by 10;
					now Resolution of Treasure Hunters is 4; [Player is female Gang Member, Sex]
			else:
				say "     Deciding not to waste your time and energy on these fools, you tell them that they should probably get back to work. They seem a little disappointed but nod and head back the way they came.";
				increase score by 1;
				now Resolution of Treasure Hunters is 5; [Player is Gang Member, No sex]
	else:		[non-gang-member]
		say "     Reminded that you're there, they growl at you and wave their shovels menacingly. 'Don't you go messin['] with us. We're in the hyena gang and we'll fuck you up if you get in our way,' the second one growls. 'And don't you try and get our treasure,' the other adds. 'Yeah, we're watching you,' the questionable genius says, pointing to her eyes and then to you meaningfully. You chuckle a little at their posturing, but decide they're not worth the bother and simply let them walk off.";
		increase score by 1;
		now Resolution of Treasure Hunters is 6; [Player is not Gang Member]
	now Treasure Hunters is resolved;


Section 10 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Watering Hole Bad End"	"BadEnd"	""	Watering Hole Bad End rule	20	false

This is the Watering Hole Bad End rule:
	if ending "Watering Hole Bad End" is triggered:
		say "     Giving yourself over to your insatiable avian mate, you are reduced to nothing more than his lusty, [if Player is impreg_ok]egg-bearing[else]well-fucked[end if] [if Player is puremale]he-hen[else]hen[end if], a mindless toy and nest warmer who welcomes his presence with worshipful attention. The studly male sustains your lifestyle with frequent hunting flights, spending long hours scavenging supplies for his favorite sedentary fucktoy. At times it feels like an eternity before he returns, and once he does, your libido drives you to beg for him to claim you, all other needs secondary to your altered body's demands. You fuck, then feast, then fuck again, losing yourself in a blur of pleasure as you writhe against each other in the makeshift, cum-soaked bedding.";
		say "     Over time, the details of your past life grow hazier, then disappear altogether. After one session, you find that you can't even remember your name - not that you'd need to, what with this handsome hunk to do all the thinking for you. You shiver at the thought of others sharing this simple-minded bliss, and you eagerly accompany your partner when he violates those unlucky few who enter your hunting territory, sharing the ecstasy of the infection by transforming them into sexy little eagle-morphs like you. Though he spends long hours grooming them as he did you on that fateful day, you take solace in the fact that soon you'll be entwined again, reunited with your mate in a mindless fucking frenzy.";
		say "     When the military arrives, your safe distance from the city provides you with a distant vantage to observe their operations. By then, you have only dim awareness of their actions, much preferring devoting every waking second to wrapping your tongue around your mate's hard avian cock or pushing back against his waist as he bucks into your [if Player is female]needy, gripping folds[else]horny, cum-sullied asshole[end if]. The sweltering heat of sex eventually becomes your whole world, little more than a hollow shell of a conscience whose simple sapience is limited to chirping and moaning for more cock[if Player is impreg_ok], more cum, and more eggs for your ever-growing brood[else] and more cum, his horny buttslut to pin and ravage to his infectious, corrupted content[end if], soon knowing nothing more than the instinct-driven bliss that permeates you to your core.";
		the Player is gone;


Dry Plains Events ends here.
