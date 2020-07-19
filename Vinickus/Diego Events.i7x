Version 1 of Diego Events by Vinickus begins here.
[Version 1 - Transplanted two old events (originally written by Stripes) into a new file]

Table of GameEventIDs (continued)
Object	Name
Trickster	"Trickster"

Trickster is a situation. The level of Trickster is 4.
wolffight is a number that varies.
when play begins:
	add Trickster to BadSpots of FurryList;
	add Trickster to BadSpots of MaleList;
	add Trickster to BadSpots of FemaleList;

instead of resolving a Trickster:
	setmonster "Feral Wolf";
	say "     As you are traveling along, you spot some activity in the distance. At first, fearing that it is another band of monsters, you take cover. But a few moments later, you discover it to be a small team of soldiers moving stealthily through the city. They may be doing recon or on some other kind of mission, but you may be able to get assistance, or even be rescued by them. But even as you're walking up and trying to decide how best to approach them, you see a coyote [if Diegochanged is 0]man[else if Diegochanged is 1]herm[else]woman[end if] carrying a large sack dash into their midst[if PlayerMet of Diego is true and Diegochanged is 0]. You recognize Diego, the coyote trickster, and have to wonder what he is up to this time[else if PlayerMet of Diego is true]. You recognize Diego, the coyote trickster, and have to wonder what she is up to this time[end if][if Diegochanged is 0]. He[else]. She[end if] passes the bag quickly to a flabbergasted soldier with a quick 'Here, hold this' before continuing on with a happy chuckle.";
	say "     As the stunned soldiers watch the coyote run off in the direction of the city park and look at the mysterious sack, you hear some approaching howls. If you're going to get out of here, you'll have to do it right now.";
	say "     [bold type]Do you move to join the soldiers or run and hide to watch what happens?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay.";
	say "     ([link]N[as]n[end link]) - Run.";
	if Player consents:
		say "     You dash up to the soldiers and pull out your weapon. Knowing your luck, trouble's on the way. You run up to the soldier left holding the bag. Your sudden appearance after the coyote's keeps him off guard long enough to pull the sack from him, finding it stuffed with gray fur inside. You barely have a chance to look up when a large pack of wolves come running around the corner, slamming into the unexpected team of soldiers. Several of the men are knocked down immediately.";
		let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 15: ";
		if dice plus bonus > 15:
			say "     You toss the bag of fur in the face of one wolf about the slam into you. He has large sections of his pelt shaved off, exposing wide patches of pink skin. The bagged fur is sent flying, floating in the air all around the area. You cough and brush it out of your eyes in time to see another wolf moving in to attack you.";
		else:
			decrease HP of Player by 10;
			say "     You are slammed into by one of the wolves and knocked to the side, taking [special-style-2]10[roman type] damage. You can see as he continues past you that this wolf is the largest of them all and probably the pack alpha. He has large sections of his pelt poorly shaved off, exposing wide patches of pink skin. The bagged fur is sent flying, floating in the air all around the area. You cough and brush it out of your eyes as you get back to your feet in time to see another wolf moving in to attack you.";
		now wolffight is 3;
		challenge "Feral Wolf";
		if wolffight is 1:
			now wolffight is 3;
			say "     You manage to dispatch one of the wolves and look around, seeing several of the others dealing with the struggling soldiers. Some of the men have already been taken down, but others are still putting up a fight against the lupine pack that's suddenly surrounded them. You try to make your way free and charge a second wolf at the edge of the pack.";
			challenge "Feral Wolf";
			if wolffight is 1:
				now wolffight is 3;
				say "     Having beaten the second wolf, you find yourself at the edge of the fight start to move away. Most of the soldiers are down now, many of them pounced by the wolves. You can see several of the men being face-fucked or buggered by the feral wolf creatures. These soldiers are starting to show signs of transformation, gaining ears, tails, muzzles or fur. Before you can make a break for it, you are spotted by the wolfpack leader. Switching from standing upright onto all fours, the shaved wolf recognizes you as the one with the bag and growls. He leaps across some moaning piles of wolf and man to close on you to fight.";
				challenge "Alpha Wolf";
				if wolffight is 1:
					say "     Having beaten the pack alpha and sent him packing, the wolves['] assault on the few remaining soldiers wavers. With a howl from their leader, they snatch up the fallen, partially transformed soldiers and drag them off into the city. They'll be taking them back to their den to finish mating them until they're fully members of the pack. Too tired from the fight, you and the other soldiers are in no shape to give pursuit. As the last of the wolves are running off, you hear some distant laughter, probably from the coyote trickster who enjoyed the show while it lasted[if Park Entrance is unknown]. You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
					say "     The remaining soldiers thank you for the assistance. Because of the cloud of wolf fur, nearly all of them have picked up ears or tails, but their humanity is mostly intact thanks to your help. They'll have to scrub their recon mission and return to base. You're told they can't take you with them at this time, but they do give over some of their supplies, as they'll re-equip at the base earlier than planned. They keep their guns and ammo, but one of the few who remained fully unchanged passes you his combat knife with a silent nod. After packing the food and water away and strapping on the knife, you're given another round of thanks before they head off.";
					ItemGain food by 1;
					ItemGain water bottle by 1;
					ItemGain combat knife by 1;
					increase score by 20;
					now Resolution of Trickster is 1;		[Won against wolves]
		if wolffight is 3:
			say "     Deciding to give up on fighting entirely, you push your way free of the wild fight. You hop over one wolf who's mounted one poor soldier and are almost knocked down as your pursuer runs into a soldier getting up. Finding an [']eager volunteer['] for his cock, the wolf drives it into the soldier's mouth and starts pounding away. The wolves get the last of the soldiers as you're turning into an alleyway. You can hear the laughter of what is probably the coyote trickster, amused by the results of [if diegochanged is 0]his[else]her[end if] prank[if Park Entrance is unknown]. You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
			infect "Feral Wolf";
			now Resolution of Trickster is 2;		[Ran from wolves]
		if wolffight is 2:
			if Player is female:
				say "     Before you can get back up, you are mounted by one of the other wolves, moaning loudly as he drives his thick cock into you. He fucks you hard and fast, eager to fill you with cum and pups before moving on to another victim. His wild, feral rutting is a mix of pain and pleasure as that thick cock pumps in and out of your wet hole. 'Mmm... my bitch...' he rumbles softly, and you are surprised to hear one of the feral wolves speak. You respond to his words by pressing your ass back, moaning louder as he pounds into your abused pussy. Your excitement builds, finally peaking when he unleashes his hot, lupine seed into you with a howl[if Player is male]. Your cock throbs and sprays its load onto the pavement as you're stuffed full of creamy wolf cum[end if]. Withdrawing, he licks your cheek and growls softly before pouncing on a soldier, tearing away some partially shredded clothes to uncover a fresh pussy for him to fuck.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Feral Wolf";
			else:
				say "     Before you can get back up, you are pushed down by one of the other wolves. He pushes your clothes aside with his paws, scratching at your back with his claws, then growls and mounts you. You can feel his wet, sticky cock slide against your ass before finding your tight pucker and pushing it open. You moan loudly as he drives his thick cock into you. He fucks you hard and fast, eager to fill you with cum before moving on to another victim. His wild, feral rutting is a mix of pain and pleasure as that thick cock pumps in and out of your tight hole. 'Mmm... my bitch...' he rumbles softly, and you are surprised to hear one of the feral wolves speak. You respond to his words by pressing your ass back, moaning louder as he pounds into your abused asshole, pressing that lupine shaft against your prostate. Your excitement builds, finally peaking when he unleashes his hot, lupine seed into you with a howl. Your cock throbs and sprays its load onto the pavement as you're stuffed full of creamy wolf cum. Withdrawing, he licks your cheek and growls softly before pouncing on a soldier, tearing away some partially shredded clothes to uncover a fresh pussy for him to fuck.";
				CreatureSexAftermath "Player" receives "AssFuck" from "Feral Wolf";
			say "     Just as your head is starting to clear, another wolf moves up to you, sticky cock hanging under him. Seizing what may be your only opportunity to escape, you grab a fallen, half-transformed soldier beside you and press his growing muzzle onto the wolf's cock. He latches onto it hungrily and starts licking and sucking. Distracted, the wolf turns his attention on the changing soldier and thrusts into his muzzle. Crawling carefully past a few more distracted wolves, you make it to the edge of the orgy and dash into a nearby building. You rush out the back, having to leave the soldiers to their fate as bitches for a wolf pack - a fate you almost shared. As you run off, over the sounds of mating wolves, you catch the faint laughter of someone, probably the coyote trickster, enjoying the results of [if diegochanged is 0]his[else]her[end if] prank[if Park Entrance is unknown]. You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
			now Resolution of Trickster is 3;		[Lost to wolves]
			infect "Feral Wolf";
	else:
		say "     Turning tail before the coyote's trick is set off, you dash into a burned out shop and watch from there. The howls get louder and a pack of wolves come rushing around the corner, right into the soldiers. Several of the soldiers are bowled over as the wolves weren't expecting obstacles. At the head of the pack is a large wolf with large, poorly shaved patches his pelt, showing the pink skin beneath. The bag, sent flying by the collision, flips in the air and opens, spilling out what must be the shaved wolf's fur. Deciding that the soldiers must ultimately be responsible for his shaving, he and the other wolves attack.";
		say "     The soldiers, unprepared for such an assault, are soon borne down by the powerful wolves and wild rutting ensues. You watch as soldiers are forced to suck wolfcock or are buggered by the angry pack. The humans begin to transform, gaining fur, ears or tails as the lupine infection starts to spread. As some start to gain pussies, these new holes are stuffed full of wolfcock to breed pups in them. When the soldiers succumb enough to stop resisting, they are dragged off by the wolves, probably to their den to finish mating with them until they're fully members of the pack. The remaining wolves start sniffing around the area, spreading out. Worried they'll pick up the trail of your scent you think it best to make your escape. You slip out the back of the store and make a break for it, sure that you could hear some laughing in the distance[if Park Entrance is unknown]. You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
		increase score by 5;
		now Resolution of Trickster is 4;		[Did not engage wolves]
	now wolffight is 0;
	now Trickster is resolved;

[combat knife moved to Core Mechanics/Weapons.i7x]

Table of GameEventIDs (continued)
Object	Name
Prank Aftermath	"Prank Aftermath"

Prank Aftermath is a situation. Prank Aftermath is inactive. The level of Prank Aftermath is 7.
when play begins:
	add Prank Aftermath to BadSpots of FurryList;
	add Prank Aftermath to badspots of HermList;

instead of resolving a Prank Aftermath:
	say "     As you travel through the city, you hear some moaning mewls coming from up ahead. On your guard, you sneak forward and take in the sight of several of those puma creatures playing with what was once a team of six soldiers. The cougars have the men pinned to the ground and are having their way with them. As you watch, the cougars force them to nurse from their breasts or suck their cocks until they develop a wet, new pussy for the herm kitties to fuck. Outnumbered, the soldiers have no chance to escape and there are several felines waiting for their turn to sate their lusts on the transforming humans.";
	say "     Not normally native to this part of the city, you start to wonder how such a large band of the felines got here when you spot one of them eating a large fish from a basket while she waits for her next turn with the new breedtoys. Remembering that you told Diego an idea you had about using fish to lure some of the felines around for a prank, it seems you've run into the aftermath of your idea";
	if Libido of Player - humanity of Player < -25:
		say ". Being too far gone into your lustful urges and the infection taking over, you feel some remorse for your actions, but are too aroused by what you see to do anything but watch.";
		SanLoss 10;
		decrease morale of Player by 5;
		increase Libido of Player by 20;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 5;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 5;
		if Libido of Player > 100, now Libido of Player is 100;
	else:
		say ". You find the sight strangely arousing, though your guilt over assisting in the infection of these soldiers does sadden you.";
		decrease humanity of Player by 2;
		decrease morale of Player by 25;
		increase Libido of Player by 8;
		if "Cold Fish" is listed in feats of Player, decrease Libido of Player by 2;
		if "Horny Bastard" is listed in feats of Player, increase Libido of Player by 2;
		if Libido of Player > 100, now Libido of Player is 100;
	WaitLineBreak;
	say "     As you watch, the last of the soldiers is made into a herm with a pair of swelling breasts on her chest and a pair of feline ears. She is pushed into the arms of two of her former teammates. Too far gone in their own infection, they push her onto all fours, one taking her virgin pussy with her feline cock and the other forces her cock into his mouth. As they fuck her, all three continue to change until they are full puma herms, fucking with mrowls of lustful delight. The former soldiers cum hard into their ex-teammate, filling her new pussy and feline muzzle with their hot cum. Watching this arousing show, you can't help but get turned on and start masturbating. As you climax, you groan loudly and cum hard, unable to stop yourself. But this doesn't go unheard and several of the powerful felines come after you. Having just cum, you barely manage to get yourself back on your feet and ready to fight by the time the first one reaches you.";
	LineBreak;
	challenge "Cougar";
	say "     Recovering from your encounter with the first feline, you try to get away, but have to deal with another who moves to bar your path.";
	LineBreak;
	challenge "Cougar";
	say "     With the second battle over, the other pumas move in to capture you. You manage to dive into a building and bar the door with a filing cabinet. As they pound at it, you find another exit from the building and weave through some side streets to make sure that you've lost the lustful felines.";
	now Prank Aftermath is resolved;


Diego Events ends here.
