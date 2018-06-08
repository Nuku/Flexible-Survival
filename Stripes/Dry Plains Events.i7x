Version 2 of Dry Plains Events by Stripes begins here.
[Version 2 - 2 new events added]

"Adds a series of random events to Flexible Survival located at or focusing on the Dry Plains area."


Section 1- Creeping Grass

Creeping Grass is a situation.
The sarea of Creeping Grass is "Plains".

Instead of resolving a Creeping Grass:
	say "     As you check out a few fallen buildings, you notice that the rubble pile has already been partially covered by the dry grasses of the plains. Somehow, despite their recent collapse, the plains are already starting to cover and reclaim them. Checking more closely and prodding it with a stick, you can see that the grass roots, instead of burrowing into the soil, have climbed up the fallen beams and boards, spreading to grow fresh grass overtop of them. Putting some weight on the covered spot, it breaks and crumbles easily, showing that the grasses are breaking down and destroying the ruins they cover.";
	increase score by 1;
	Now Creeping Grass is resolved;


Section 2- Ranch House

Ranch House is a situation.
The sarea of Ranch House is "Plains".

Instead of resolving a Ranch House:
	say "     You come the ruins of what was probably a ranch house. You search through the broken home, but find nothing of use or value. Looking around, you see that some of the fence still stands and notice a second fallen structure. Going over, you can quickly tell that this was once a small stable from the smell of horses hanging over it. You take care where you step, avoiding the dark messes as well as the white ones from equine cum. Hoofprints in the dirt around the stable head off into the plains where the transformed horses probably live now in some altered form.";
	increase score by 1;
	Now Ranch House is resolved;


Section 3- Soaring Eagle

Soaring Eagle is a situation.
The sarea of Soaring Eagle is "Plains".

Instead of resolving a Soaring Eagle:
	say "     Taking a short break under one of the rare trees on the plains, you spot a shadow drift across the ground. Looking up, you spot an eagle high up in the sky. As you watch it, you notice that it is not a normal eagle, but some kind of eagle man. Deciding to take no risks, you wait in the shadow of the tree until he passes from sight.";
	increase score by 1;
	Now Soaring Eagle is resolved;


Section 4- Partial Ruin

Partial Ruin is a situation. The level of Partial Ruin is 5.
The sarea of Partial Ruin is "Plains".
when play begins:
	add Partial Ruin to badspots of hermaphrodite;
	add Partial Ruin to badspots of furry;

Instead of resolving a Partial Ruin:
	say "     You manage to find a stretch of asphalt that is only partially broken up by the grasses, most roadway here having already been split and broken through extensively by the plantlife here. This stretch has only started to succumb, but looks a couple of decades old and poorly maintained despite its probably newness. Following it, you come to a half-fallen building, the remains of a corner store. Hopeful of finding something of use, you rush over and start searching through the place. You have only started to look around when the ground starts to shake and rumble and another wall of the building collapses.";
	let bonus be ( Dexterity of player + Strength of player - 20 ) divided by 2;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]:";
	if dice + bonus > 14:
		say "     You push and dodge your way past the debris to get out of the collapsing building before it all comes tumbling down atop you. From a safe distance, you watch the last of it collapse down. The strange rumble seemed more like a cave-in or sinkhole than an earthquake, so you start looking around for clues when suddenly you hear some barking sounds around you moments before the ground gives out beneath you.";
	else:
		say "     You try your best to dodge and push your way through the falling building, but are struck by some falling rubble on your way out (10 dmg). Rubbing your aching shoulder and side, you watch as the last of it comes tumbling down. The strange rumble seemed more like a cave-in or sinkhole than an earthquake, so you start looking around for clues when suddenly you hear some barking sounds around you moments before the ground gives out beneath you.";
		decrease HP of player by 10;
		if "Toughened" is listed in feats of player, increase HP of player by 1;
	challenge "Prairie Dog";
	if lost is 1:
		say "     Before leaving the area, the prairie dogs rummage through the ruins of the building, taking the last few items of value before disappearing back under the earth, leaving the rubble to be reclaimed by the plain and made into more pristine grasslands.";
	else:
		say "     Having beaten them into retreat, you search through the ruins of the store they destroyed. It seems that little of value remained in here even before they tore the place down from below. You do manage to find a couple of cans of food undamaged by the collapse. After storing it away, you dust yourself off you leave the ruined store behind to be reclaimed by the grasslands, as the burrowing prairie dogs would rather have it.";
		say "     Food x2 obtained.";
		increase carried of food by 2;
		increase score by 5;
	Now Partial Ruin is resolved;


Section 5- Hardware Store Ruins

Hardware Store Ruins is a situation.
The sarea of Hardware Store Ruins is "Plains".

Instead of resolving a Hardware Store Ruins:
	say "     Coming across the remains of a hardware store, you are very hopeful to find something of use in it. The rubble is difficult to move and the task quickly becomes both tiring and frustrating. More and more as you work, you come to believe this place was picked completely clean before it collapsed. While some parts are too buried to reach and check, those you can find yield nothing of value at all. After a long and fruitless search, you grab the pack of nails you found and bash them into a board using a rock. You wrap some fabric tape around the base to give you a better grip and end up with a crude spiked club.";
	say "     Spiked club obtained!";
	increase carried of spiked club by 1;
	increase score by 5;
	Now Hardware Store Ruins is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"spiked club"	"A heavy board with nails you crudely pounded into it to vent your frustration."	2	spiked club

spiked club is an armament. It is part of the player. It has a weapon "[one of]your spiked club[or]your pointed club[or]your improvised weapon[or]your large club[or]your spiked club with a heavy thump[or]your nail board[or]your spiked club, driving one of the nails into them[at random]". The weapon damage of spiked club is 6. The weapon type of spiked club is "Melee". It is not temporary. the objsize of spiked club is 4. the hitbonus of spiked club is -1.

the scent of the spiked club is "The heavy club smells of blood, sweat and anger... so much anger.".


Section 6- Hunting Party

Hunting Party is a situation. The level of Hunting Party is 9.
The sarea of Hunting Party is "Plains".
horsefight is a number that varies.
when play begins:
	add Hunting Party to badspots of guy;
	add Hunting Party to badspots of girl;
	add Hunting Party to badspots of furry;

Instead of resolving a Hunting Party:
	say "     Walking along a broken up patch of roadway, you hear loud clopping coming your way from over the small hillock beside you. Getting ready for a fight, you spot a female centaur galloping down the slope towards you, but then she charges right past you. It's then that you notice that her hooves are not the only ones you hear as several horsemen come running over the hill. They are wearing cowboy hats and a few of them have lassos at the ready. Most thankfully run past you, continuing their pursuit of the escaping centauress, but a pair stop to deal with you.";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if Nightmaremastery is 1:
		say "     Recognizing you as their leader, they nod respectfully and start giving you a report on their activity out here. While they had been hopeful that the equine centaurs could be encouraged to join the staff at the Stables, they seem quite reluctant, and even violent, about the prospect. Not taking no for an answer, the horsemen have been trying to capture some of the female centaurs to [']encourage['] them to come along. Squirming under your gaze as you keep questioning them, they report that they haven't yet been successful, as the four-legged centaurs are much faster than them. You order them back to their task and warn them that you expect results or you'll be seeing them in your office. Taking a mental note of their names, you find yourself equally looking forward to either their success or their failure, as either will get you some new mares to fuck.";
		increase score by 10;
	else:
		say "     Their stallionhoods are hanging from their sheaths at the ready after their invigorating chase. It seems this pair has decided that you'll be a good enough to satisfy them. Clearly looking as much for a fight as they are sex, they laugh and arrogantly decide to take turns facing you, feeling quite confident.";
		now horsefight is 1;
		challenge "Horseman";
		say "     With the first one finished, the other cracks his knuckles and gets ready to have a go at you as well.";
		challenge "Horseman";
		say "     Done with both of them, you decide to get moving before their friends come back for their comrades... and perhaps decide that you'd be a fine addition for their stables as well.";
		now horsefight is 0;
		increase score by 1;
	Now Hunting Party is resolved;


Section 7- Pit Trap

Pit Trap is a situation. The level of Pit Trap is 5.
The sarea of Pit Trap is "Plains".
when play begins:
	add Pit Trap to badspots of hermaphrodite;
	add Pit Trap to badspots of furry;

Instead of resolving a Pit Trap:
	say "     Cresting a small hillock, you notice a large hole at the bottom of the hill and can hear a soft moan of pain coming from it. Cautiously approaching, you peek inside to find an injured soldier down at the bottom of a deep hole. The hole seems quite smoothly dug and has vertical sides, clearly dug by someone or something. Given its placement along the path between the hillocks and the pile of berries the soldier is munching on while trapped, it was clearly made as a pit trap and was successful. In the grass beside the pit is a small pack, probably dropped by the soldier when he fell.";
	say "     Spotting you, the soldier starts calling up for you to help him. He tells you that there's some rope in the pack he lost up there and to get him out quick. Looking at the pack, you reach for it.";
	say "     [bold type]Shall you grab it and run, leaving him to his fate?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if the player consents:
		say "     Grabbing the pack, you start to hoof it away before whoever set the trap returns. You chuckle as you hear the soldier screaming at you before his screams of anger turn to those of fear before being silenced. Clearly the pit's creator or some other monster found the noisy human and they are going to be getting better acquainted. You find a spot some distance away, sheltered by a mound of rubble, to examine the bag's contents. Aside from a pocketknife, there a medkit and a ration pack to go along with the rope.";
		if scenario is "Bunker" or scenario is "Caught Outside":
			say "Medkit and food obtained.";
			increase carried of medkit by 1;
			increase carried of food by 1;
			increase score by 5;
			decrease humanity of player by 5;
		else:
			say "Pocketknife, medkit and food obtained.";
			increase carried of pocketknife by 1;
			increase carried of medkit by 1;
			increase carried of food by 1;
			increase score by 10;
			decrease humanity of player by 5;
	else:
		say "     Quickly digging out the rope, you start securing it to a large rock nearby. The soldier keeps babbling his thanks to you. But as you try to warn him to be quiet, it is too late. Emerging from hidden holes in the ground come numerous three foot prairie dog creatures. One of them waves her shovel at you. 'Hey now! You leave that alone. We caught it fair and square! That one's ours,' she says, crossing her fluffy arms over her large breasts. ";
		if bodyname of player is "Prairie Dog" and facename of player is "Prairie Dog" and skinname of player is "Prairie Dog":
			say "     Looking you over, the rodent herm grins. 'But you know what, you're a fine looking burrower. How about we share him?' The soldier, just having finished coming up the rope, whimpers at this suggestion.";
			say "     [bold type]Shall you take her up on her offer?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if the player consents:
				say "[prairiedogsex]";
			else:
				say "     'Well, that's just too bad. We'll just have to take what's ours then,' she growls, raising her shovel.";
				say "[prairiedogfight]";
		else:
			say "     'And maybe we'll have some fun with you as well,' she says with a growl. 'Get [']em, girls,' she says, raising her shovel and charging. The poor soldier, having just managed to get himself up the rope, finds himself swarmed with a pack of horny prairie dogs.";
			say "[prairiedogfight]";
	Now Pit Trap is resolved;

to say prairiedogfight:
	challenge "Prairie Dog";
	if lost is 1:
		say "     During your unsuccessful fight with the burrowing rodents, the soldier was easily taken down as well and fucked roughly by the lustful prairie dogs. After having their way with you both, they drag the soldier and his gear down underground with them as they make their escape to finish claiming their prize, leaving only his torn clothes behind. You get up slowly, feeling glad you didn't end up joining him in his fate, though partially longing to discover what it would be like as well. Feeling still flush from the vigorous lovemaking of the coterie of rodents, you think it best you head off before you do anything rash.";
		decrease score by 10;
	else:
		say "     Defeating the prairie dogs, you manage to drive them off. Luckily, you were able to deal with them in time and the soldier still seems to be human. He thanks you profusely for your help and gathers up his gear. He searches through his pack and, needing the medkit for his own injuries, passes you his rations, saying he'll have to head back to base to report in on this new hazard in the area. You wish him well and head your separate ways, feeling much better about yourself.";
		increase carried of food by 1;
		increase score by 25;
		increase humanity of player by 5;
		increase morale of player by 3;

to say prairiedogsex:
	choose row monster in table of random critters;
	setmonster "Prairie Dog";
	say "     Looking from your fellow rodents to the human soldier, you nod at the offer and the reach to grab him. He struggles a little, but superior numbers have him down soon enough. Numerous little paws grab at his clothes and strip him bare. The one prairie dog you spoke with motions for you to pick a spot to have a go at him";
	if cocks of player > 0 and cunts of player > 0:
		say "     [bold type]Shall you ride his cock or stuff his ass?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Ride his cock.";
		say "     ([link]N[as]n[end link]) - Stuff his ass.";
		if the player consents:
			say "     Deciding to get the soldier's cock in you, you climb atop him and sink yourself down onto it with a soft moan. His cock throbs in you as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Spotting your stiff member[if cock length of player < 10], one of them snuggles her back against you and starts riding your shaft to get you to fill her[else], one of them starts groping and fondling your large meat, running her tongue over it and sucking at its tip to get you to cum down her throat[end if]. Another moves up behind you and, with a little cooperation from you, raises him up enough to drive into his tight behind while rubbing her soft breasts against your back. Others spray their seed onto him again and again. As you ride, you can feel his cock shifting and changing inside you while sandy brown fur spreads over his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum in you, draining away his human seed into you to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard and pump your load into the prairie dog in front of you. Sated, you cede your place to another who wants her turn on the soldier's cock while their leader moves to take his new pussy's virginity.[impregchance]";
		else:
			say "     Deciding to get have a go at his ass, you boost his hips up and drive your cock slowly into him[if cock length of player > 12]. It takes some effort to stuff your big meat into the soldier's tight rump, you it is well worth it when you do[end if]. His ass is snug and warm around your pistoning shaft. His cock throbs and twitches as you fuck him as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Another is helped up so she can get his cock into her dripping snatch. Another moves in behind you and, with your cooperation, sinks her throbbing shaft into your wet, dripping pussy. You moan in pleasure at the sensation of fucking and being fucked at once, and the knowledge that you're corrupting this poor soldier making it all the better. You can feel the sandy brown fur spreading over his hips and then up his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum into the rodent in front of you, draining away his human seed to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard, blasting your cum into his ass while the one behind you fills your pussy. Sated, you cede your place, allowing their leader to move in to take his new pussy's virginity.[impregchance]";
	else if cocks of player > 0:
		say ".";
		WaitLineBreak;
		say "     Deciding to get have a go at his ass, you boost his hips up and drive your cock slowly into him[if cock length of player > 12]. It takes some effort to stuff your big meat into the soldier's tight rump, you it is well worth it when you do[end if]. His ass is snug and warm around your pistoning shaft. His cock throbs and twitches as you fuck him as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Another is helped up so she can get his cock into her dripping snatch. Another moves in behind you and, with your cooperation, sinks her throbbing shaft into your tight asshole to give you the same treatment you're giving the soldier. You moan in pleasure at the sensation of fucking and being fucked at once, and the knowledge that you're corrupting this poor soldier making it all the better. You can feel the sandy brown fur spreading over his hips and then up his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum into the rodent in front of you, draining away his human seed to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard, blasting your cum into his ass while the one behind you fills your rump in return. Sated, you cede your place, allowing their leader to move in to take his new pussy's virginity.";
	else:
		say ".";
		WaitLineBreak;
		say "     Deciding to get the soldier's cock in you, you climb atop him and sink yourself down onto it with a soft moan. His cock throbs in you as you watch the others scramble atop him, stroking and teasing him all over. Their leader drives her hard shaft into his mouth, fucking his face until he starts moaning and sucking on it hungrily. Another moves up behind you and, with a little cooperation from you, raises him up enough to drive into his tight behind while rubbing her soft breasts against your back. Others spray their seed onto him again and again. As you ride, you can feel his cock shifting and changing inside you while sandy brown fur spreads over his body and breasts form on his chest. Two lucky rodents get their muzzles onto them and start sucking his nipples, getting him to moan and cum in you, draining away his human seed into you to be replaced by much better prairie dog semen as he transforms. He is now well on his way to becoming a prairie dog herm. Lost in the lust of transforming a human, you cum hard. Sated, you cede your place to another who wants her turn on the soldier's cock while their leader moves to take his new pussy's virginity.[impregchance]";
	say "     You play and tease him, watching mostly as the others share him around until they're all satisfied. Lost in a lustful haze, the new prairie dog herm is easily led underground where you're sure her induction into the warren will continue. You feel a strong longing to join them, but manage to resist it, at least for the moment.";
	infect "Prairie Dog";
	now libido of player is libido of player / 2;
	decrease humanity of player by 20;
	increase score by 25;


Section 8 - Watering Hole

Watering Hole is a situation. The level of Watering Hole is 8.
The sarea of Watering Hole is "Plains".
when play begins:
	add Watering Hole to badspots of guy;
	add Watering Hole to badspots of furry;


Instead of resolving a Watering Hole:
	choose row monster in table of random critters;
	setmonster "Bald Eagle";
	say "     In a depression in the grassy plains, you find a greener spot around a small pond. But there is an eagle man bathing himself in the water and clearly enjoying it. The avian creature strokes his hard cock, leaking precum into the water. Focused on his own fun, he hasn't spotted you yet. Shall you approach the bathing bird (Y) or take this opportunity to leave (N) while you still can?";
	if the player consents:
		say "     Deciding to approach, you move cautiously towards the bird. It doesn't notice you until you get closer to the water. When you're spotted, it squawks and flaps angrily in the water, startled by your arrival. Thankfully, it does calm down a little when you don't attack right away. You start telling him that you were just coming over to get some water, but he grins and waves off your comments. 'Oh, I know you were really coming over to join me in my bath. No need to be coy about it, sexy. Come on in and lets have a little romp? You look like you could use some fine eagle cock stuffed inside you.' Shall you take him up on his offer?";
		if the player consents:
			say "     The bird grins at the corners of his beak and takes your hand as he helps you into the pond. Aside from a little sediment at the bottom of the pond, the water is rather clean and feels good after your long trek through the city and the dry plains. The eagle runs his wet wings over your body as he moves in behind you, rubbing his throbbing cock against your ass.";
			if cunts of player > 0:
				say "     Lowering you onto all fours in the water, he lines up his cock with your wet pussy and slowly sinks his shaft into you. You moan in pleasure and push into his thrusts, aroused by the idea of fucking in this pond the birds have been using as their bath. And you're quite certain many of them have been cumming in it as well, tasting their semen in the water as you take that drink you wanted while getting fucked. The strong eagle rubs his feathered hands along your back and over your ass as he keep plowing his throbbing, leaking prick into you. 'Isn't that nice, my little chick? A big eagle cock to fuck you right. Breed you full of eaglets.' You moan and nod, lost in the lustful mating. When he finally cums, he blasts his thick load into you and you cum moments later.[ovichance]";
			else:
				say "     Lowering you onto all fours in the water, he lines up his cock with your waiting pucker and slowly sinks his shaft into you. You moan in pleasure and push into his thrusts, aroused by the idea of fucking in this pond the birds have been using as their bath. And you're quite certain many of them have been cumming in it as well, tasting their semen in the water as you take that drink you wanted while getting fucked. The strong eagle rubs his feathered hands along your back and over your ass as he keep plowing his throbbing, leaking prick into you. 'Isn't that nice, my little chick? A big eagle cock to fuck you right. Stuff that slutty ass of yours.' You moan and nod, lost in the lustful mating. When he finally cums, he blasts his thick load into you and you cum moments later.[movichance]";
			say "     Finished his bath and his fuck, he helps you out of the water and rubs his feathered hand across your stuffed tummy, nipping at your neck with his beak. As you prepare to go, he flies off. Looking up as he gains altitude, you spot several other eagles soaring over the pond and head on your way, as the others may not be so friendly about an intruder at their bathing spot. Both soaked and filled with eagle-tainted fluids, ";
			if bodyname of player is "Bald Eagle" and the player is pure:
				say "the infection soaked deeper into you, further corrupting your body and mind. Still awash in the pleasures of the mating and the overdose on tainted water, you are quite pleased with the feeling of the infection spreading through you.";
				decrease humanity of player by 5;
			else:
				say "     You quickly start to change, fully changing into an eagle creature like your lover. Still awash in the pleasures of the mating and the overdose on tainted water, you are quite pleased with the feeling of the infection spreading through you.";
			say "[eaglefulltf]";
			increase morale of player by 3;
			decrease humanity of player by 15;
			now thirst of player is 0;
			increase score by 25;
		else:
			say "     He seems upset that you've refused his offer, but lets you approach the pond to take some water regardless. His hands move back to his cock, stroking and pumping at it casually. As you lean in to take some water though, he quickly swoops in to attack you and you stumble back a few steps away from the pond onto firmer soil and prepare to fight. It seems he'll try to have his way with you, regardless of your wishes.";
			challenge "Bald Eagle";
			if lost is 1:
				say "     After the eagle has had his way with you, he flies back up into the air. Looking up, you spot several other eagles in the air and decide to hightail it out of there before the others come swooping in to enjoy the beaten interloper by their bathing spot.";
				decrease score by 1;
			else:
				say "     After defeating the eagle and sending it on its way, you face the pond, trying to decide if you'll take a drink. Shall you lean down and have some water from the pond?";
				if the player consents:
					say "     Deciding that you'd rather have the water, regardless of the consequences, you lean in and drink your fill of the tainted waters. You can taste the arousing flavor of their semen mixed into the water, but you're too excited now to stop. As you finish your long drink, you spot a reflection in the water and, looking up, you spot more eagles soaring above you. You decide to hightail it out of there before the others come swooping in to deal with the interloper around their bathing spot, only pausing to grab a couple of the feathers lying around before you go.";
					increase carried of eagle feather by 2;
					let ponddrinks be ( 1 + ( ( thirst of player - 1 ) / 25 ) );
					repeat with y running from 1 to ponddrinks:
						infect "Bald Eagle";
						decrease humanity of player by a random number between 1 and 4;
					increase score by 10;
					now thirst of player is 0;
				else:
					say "     Deciding it'd probably be best to avoid the tainted waters, you get up. Spotting more eagles in the air above you, you decide to hightail it out of there before the others come swooping in to deal with the interloper around their bathing spot. You pause only long enough to grab a couple of the feathers scattered around the edge of the pond.";
					increase carried of eagle feather by 2;
					increase score by 5;
	else:
		say "     Rather than risk facing the [if level of player <= 10]powerful [end if]creature for clearly tainted water, you decide to continue on your way, counting yourself lucky that you were able to learn that the water was infected. Had he not been there, you may have ended up drinking it without knowing any better.";
		increase score by 1;
	Now Watering Hole is resolved;

to say eaglefulltf:
	[puts Bald Eagle as lead monster for infection and impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Bald Eagle":
			now monster is y;
			break;
	now tailname of player is "Bald Eagle";
	now facename of player is "Bald Eagle";
	now skinname of player is "Bald Eagle";
	now bodyname of player is "Bald Eagle";
	now cockname of player is "Bald Eagle";
	attributeinfect;
	now tail of player is tail entry;
	now face of player is face entry;
	now skin of player is skin entry;
	now body of player is body entry;
	now cock of player is cock entry;
	if hellHoundLevel is 0:
		follow the sex change rule;
		follow the sex change rule;
	wait for any key;
	if libido of player < 50, now libido of player is 50;


Section 9 - Treasure Hunters

Treasure Hunters is a situation.
The sarea of Treasure Hunters is "Plains".
when play begins:
	add Treasure Hunters to badspots of hermaphrodite;
	add Treasure Hunters to badspots of furry;


Instead of resolving a Treasure Hunters:
	say "     Taking a short break on a mound of rubble, you hear a pair of arguing voices approaching. Not really having anywhere you can hide on these dry plains, you decide to sit and wait, though you do prepare yourself in case of battle. You spot a pair of hyenas cresting the rise in front of you, arguing vehemently with each other. The pair of herms have shovels in hand and their furry coats are covered in dust and dirt.";
	say "     'Give me that,' one says as she snatches some scrap of paper. 'It says we were supposed to go 150 paces from that last mound. And now there's no tree here at all. Just some loser,' she adds, waving dismissively in your direction.";
	say "     'And that's what I've been trying to tell you. That last mound couldn't have been the right one. He said it was a map to the lost treasure of Black Morris the Short, pirate and plunderer. The Short?!' the second hyena emphasizes. The first looks at her companion in confusion. 'Don't you get it? We're taking too big of paces. We gotta start back over again and take smaller steps.'";
	say "     'Huh? Ohhhhhhhh! You,' the other responds, 'are a genius.'";
	say "     'I know. I know. That's why that dumb coyote sold the map to us. Knew we'd be smart enough to find it.' And with that, she takes the rather new looking [']ancient['] map back.";
	say "     Their plan decided, they down some water, wipe their brows and get ready to head off and glance back at you. ";
	if hyg is 4 and ( facename of player is "Herm Hyena" or bodyname of player is "Herm Hyena" ):
		if matriarchowned is 1:
			say "     Only now do they realize who you are and start fumbling around, trying to hide the shovels and map. 'Oh... umm... we... we didn't recognize you there, Matriarch,' the first starts up. 'We didn't mean to call you a loser, [if cocks of player > 0 and cunts of player > 0]sir, ma'am, sir,[else if cunts of player > 0]sir, uh, ma'am,[else]uh, sir,[end if]' the first one adds in a mumble, which earns her a light smack from the second. 'We... we were trying to get the treasure for the gang, yeah! That's right. For you and for the gang,' she babbles in an attempt to curry favor with you. For a brief moment you consider dressing down these idiots and ordering them off their bogus treasure hunt, but decide you really don't want these half-wits trying to do any legitimate work for your gang. You thank them for their diligence and order them back to work. You add that you're looking forward to seeing them show up with the treasure, and will be very disappointed if they don't come back with it. Nodding and bowing submissively, the hyenas babble some thanks and then hurry off to restart their quest. ";
			increase score by 10;
		else if matriarchdefeated > 0:
			say "     Cluing in that you're a gang member, and a lower-ranked one at that, they strut on over to you confidently. 'We've been hard at work here. Could use a break, you know,' the first says. 'Secret mission stuff,' the other adds quickly, 'so you can't tell no one!' 'Yeah, not even the Matriarch! It's a... uh... surprise.' 'Yeah, that's it. A surprise for her.' It takes considerable effort not to roll your eyes at that, but you somehow manage.";
			say "     They move in closer, dropping their gear and run their paws over you. 'Now about that [']break['],' the second says as her paw moves down to grope you. Your submissive hyena [if matriarchdefeated is 1]urges[else]nature[end if] causes you to submit to them and accept the fondling from the more confident herms. They strip you down, slide off their loose shirts and push you down onto all fours[if matriarchdefeated is 1]. While you might be able to resist the advances of these lesser gang members, your lustful instincts coax you into letting them take you[end if]. The first moves in front of you, bringing her cock to your face while the other grabs your ass and moves into position behind you. You moan softly and tease their cocks with your hand and your rear, getting them fully hard.";
			say "     The pair of them guide your mouth and [if cunts of player > 0]pussy[else]asshole[end if] to line up with the tips of their cocks before they thrust into you as they nod to one another. You moan softly around your muzzleful of cock as you're penetrated from behind. The hyena herms pound into you hard and fast, using your body like your instincts tell you it should. Having hyenas fucking you feels so good, and even if this pair aren't as strong of mates as you'd desire, they still have wonderful shafts to fill you with. Throbbing, pulsing dicks that pump into mouth and [if cunts of player > 0]cunt[else]rear[end if] and are soon spurting their rich, delicious seed down your throat and into your [if cunts of player > 0]womb[else]bowels[end if].[impregchance]";
			say "     Finishing up, the pair grope and fondle you until you cum as well, then leave you there, panting in the grass as they gather their stuff and prepare to head off. 'Now don't forget. Don't tell no one,' they say again. You smile and nod, enjoying the afterglow of the rough fucking, leaving them to their fool's errand now that you've gotten what you wanted.";
			increase score by 10;
		else:
			say "     Cluing in that you're another gang member, they approach you cautiously. 'We're... uh... we're on a mission here. Top secret,' the second, the questionable genius, says. 'So you can't tell no one!' she adds. 'Yeah, not even the Matriarch! It's a... uh... surprise,' the first adds. 'Yeah, that's it. A surprise for her.' It takes considerable effort not to laugh at them, but you somehow manage. 'We've been working hard,' the second says. 'For the gang, you know, and could use a bit of a break, if you know what I mean.' Shall you continue the break you were taking by having some fun with this duo of hyenas?";
			if the player consents:
				if cocks of player > 0:
					say "     Deciding to have some fun with this pair, you put your arms around the nominally smarter one and grope her bosom, making her moan. You let your hands roam over her body, slipping off her loose shirt so you can uncover her breasts and fondle them directly. Teasing her nipples, you pull her down to sit in your lap, back to your chest and pussy at your cock. You slowly thrust into her, enjoying her lustful moans and groans. Her cunt is hot, wet and dripping around your shaft, eager to be fucked. Her own swollen cock is tended to by her partner, who drops to her knees and starts licking and sucking at it. You bounce her lightly in your lap, setting the pace for her thrusts into the other hyena's muzzle. You continue playing with her hard nipples while she strokes the other's ears and rides your throbbing shaft.";
					say "     Being on the receiving end of you both, she cums first, soaking your crotch and blasting her load into her partner's muzzle. With the squeezing, orgasming cunt milking at your cock, you unleash your load shortly afterwards. You pump your hot load into the herm hyena's womb, watching as her partner pumps her own shaft until she splatters her load onto the grass. Finished, you shove her off, telling them that they should get back to work. They nod and grab their stuff, rushing off.";
					increase score by 10;
				else:
					say "     Deciding to have some fun with this pair, you put your arms around the nominally smarter one and grope her bosom, making her moan. You let your hands roam over her body, slipping off her loose shirt so you can uncover her breasts and fondle them directly. Teasing her nipples, you guide her to lay down on the dry grass and move atop her. Bringing your hips over hers, you grab her sheath and emerging cock, stroking her to full erection before lowering yourself down onto her meat. Enjoying to soft sound of her moan, you start riding her meat and motion for the other to come up and bring her shaft to your mouth. Licking and sucking at it, you lustfully savor the pleasure of having two hyena cocks stuffed inside you, licking and sucking at them until you cum loudly in pleasure and are rewarded with two hot loads of hyena cum from the herms. Finished and satisfied, you push the one back and climb off the other, telling them that they should get back to work. They nod and grab their stuff, rushing off.[impregchance]";
					increase score by 10;
			else:
				say "     Deciding not to waste your time and energy on these fools, you tell them that they should probably get back to work. They seem a little disappointed but nod and head back the way they came.";
				increase score by 1;
	else:		[non-gang-member]
		say "     Reminded that you're there, they growl at you and wave their shovels menacingly. 'Don't you go messin['] with us. We're in the hyena gang and we'll fuck you up if you get in our way,' the second one growls. 'And don't you try and get our treasure,' the other adds. 'Yeah, we're watching you,' the questionable genius says, pointing to her eyes and then to you meaningfully. You chuckle a little at their posturing, but decide they're not worth the bother and simply let them walk off.";
		increase score by 1;
	now Treasure Hunters is resolved;

Dry Plains Events ends here.
