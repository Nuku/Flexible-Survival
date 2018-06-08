Version 4 of Assorted Events by Stripes begins here.
[version 4.5 - Brutus on the Lovers Bench MM/MF/FF]

"Adds a batch of random events to Flexible Survival scattered around the city."

Section 1 - Ninjas?

Fallen Kunoichi is a situation.
The sarea of Fallen Kunoichi is "Museum".
when play begins:
	add Fallen Kunoichi to badspots of furry;

Instead of resolving a Fallen Kunoichi:
	say "     Passing through the halls of the museum, you come across the aftermath of what was an epic battle. Many of the displays here are knocked over or shattered by what must have been powerful blows by a great weapon. You can see gouges cut deep into the walls, many stained with blood. Smaller darts and shuriken are embedded in the wall as well. The floor is marked with several blood stains and cum puddles, as well as soot marks from flash powder or smoke bombs. Clearly many battled a great foe here.";
	say "     Half-buried in the ruins of one display, you find the grisly remains of a feline ninja cleaved in two at the waist. Drawing off its mask, you see her face feminine locked in an expression of great pain and horror. Something about her death gaze disturbs you deep inside and you are unable to bear the sight of it. You brush her eyes shut and pull the mask back down over her feline face. Beside the fallen kunoichi is her weapon, a bo staff with ornate metal tips. Cautious of any infected blood, you quickly check her [italic type]shinobi shozoko[roman type], but find nothing else of use.";
	say "     Bo staff obtained.";
	increase carried of bo staff by 1;
	increase score by 5;
	Now Fallen Kunoichi is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"bo staff"	"An ornate fighting staff. A trained martial artist could wield it with greater effectiveness."	2	bo staff

bo staff is an armament. It is part of the player. It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]". The weapon damage of bo staff is 4. The weapon type of bo staff is "Melee". It is not temporary.


Suddenly Ninjas is a situation.
The sarea of Suddenly Ninjas is "Museum".
when play begins:
	add Suddenly Ninjas to badspots of furry;
	add Suddenly Ninjas to badspots of guy;

Instead of resolving a Suddenly Ninjas:
	say "     Suddenly! Ninjas! Everywhere!";
	say "     You are travelling through the museum, minding your own business when suddenly a pack of ninjas leap out to attack you. Ninja stars are flying through the air and the dark costumed cats are leaping in to attack you from all sides, brandishing an array of weapons taken from the Japanese history exhibit. There are too many to try fighting them all. They would bear your down by sheer numbers and countless poisoned shuriken. You are forced to try fleeing, but several of the felines leap in to fight you. You dodge and run, but one is able to make an attempt to stop you, fighting you even as you both run down the hall.";
	challenge "Ninja Cat";
	if lost is 1:
		say "[lostninjahorde]";
	else:
		say "     Having escaped the first as you fought him while running side by side down the hall, you continue your run through the museum. You dive past a few displays and leap over a small satyr party, knocking over their large ewer of wine. This causes some distraction as the satyrs get up and turn on the felines, letting you gain a little distance before another one is able to make an attack on you.";
		challenge "Ninja Cat";
		if lost is 1:
			say "[lostninjahorde]";
		else:
			say "     With another ninja evaded and several left behind to deal with the angered satyrs, you duck through the aerospace wing. Glancing up, you can see the suspended planes and banners sway, telling you there is at least one left up there. You try leaping over a display cordon and running past the display when the ninja makes his move.";
			challenge "Ninja Cat";
			if lost is 1:
				say "[lostninjahorde]";
			else:
				say "     When that feline withdraws after his defeat, you dive through an employee access door and rush down the passage, coming out in an Early American exhibit. Uncaring about the value or frailty of the items, you grab several period pieces of furniture and toss them helter-skelter in front of the doorway to block the approaching ninja horde. Knowing that your impromptu barricade will only hold them off for a short time before they push through or go around, you quickly run back to the relative safety of the museum lobby.";
				increase score by 15;
	Now Suddenly Ninjas is resolved;

to say lostninjahorde:
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Ninja Cat":
			now monster is y;
			break;
	say "     With the victorious ninja having finished with you, several others move in to have their way with you as well. You are groped and fondled by the felines who tease and excite you to arousal and climax again and again. Their skillful paws roam all over your body while they take turns filling all your holes. You are pumped full of feline cum again and again by the sexy ninjas who never say a word as they fuck you completely senseless. Lost in the lust of the ninja lovers, you eagerly take it all. In the end, you feel as if several cups worth of cum have been pumped into you from every hole and even more coats your body. You are left panting on the floor in a large puddle of musky semen, moaning as you roll around in it and leaking more cum out to add to it.[impregchance][impregchance]";
	increase libido of player by 25;
	if libido of player > 100, now libido of player is 100;
	decrease humanity of player by 18;
	infect "Ninja Cat";
	infect "Ninja Cat";


Section 2 - Outside Events

Losing It is a situation. The level of Losing It is 7.
when play begins:
	add Losing It to badspots of furry;
	add Losing It to badspots of guy;

Instead of resolving a Losing It:
	say "     Travelling through the city you see a stumbling figure with a skirt and a handbag in an alley. Hoping to find another survivor, you rush over, but are disappointed by her current state. Her face is reshaping itself into a feline muzzle while fur spreads over the last of her uncovered skin. But most striking of it is the large erection and hefty balls propping up her... no, his skirt. Suffering a complete gender swap from the infection, the poor woman has become a snow leopard man. You try to help him along while he complains about the wretched heat and pants. Then something changes in his eyes and he looks at you with an animalistic thirst. He grabs you tightly and tries to wrestle you down, his mind unraveling even as you try to help him. You escape his grip, but are left with facing the lustful snow leopard.";
	challenge "Snow Leopard";
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "     Having dealt with the lustful feline, you get ready to leave, but notice the purse next to the tattered remains of the skirt that was torn off in the fight. You take a moment to examine these last remnants of the woman's feminine identity. You carefully avoid several spots of snowmeow cum, whether his or that of the one who changed her, you cannot say, as you shift the clothes around. You are more successful with her purse, finding a canister of mace. It seems she failed to use it in time and paid the price. You mentally remind yourself to use it before things get out of hand and you end up like her... him.";
		say "     Pepperspray obtained.";
		increase carried of pepperspray by 1;
		increase score by 5;
	else if fightoutcome >= 20 and fightoutcome <= 29:
		say "     After having been beaten by the beautiful feline, you stagger off in a bit of a lustful haze. Something about the whole experience leaves you aroused and eager for more.";
		increase libido of player by a random number from 3 to 8;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 2;
		if libido of player > 100, now libido of player is 100;
	else:
		say "     Escaping the crazed feline, you dash off into the city, deciding to search somewhere away from the newly transformed and lustful feline. Perhaps once it has sated its lusts from its transformation it will wander off and you can return to searching.";
	mallrecall;
	Now Losing It is resolved;


[CatsandDogs moved to CEO1 file]


Tour Bus is a situation. The level of Tour Bus is 6.
when play begins:
	add Tour Bus to badspots of furry;

instead of resolving a Tour Bus:
	say "     Your path through the city is interrupted by an overturned tour bus. It seems there was quite an accident here, with several cars piled up around the bus as well. You do manage to weave your way through the mess, but it takes some time. You remind yourself not to take this street again next time when passing through this area. You head over to check out the bus, hopeful to find something of use in there. You climb up onto a car, then get on the bus's side. Looking in the windows, you can see several bags and packs, but you also see large amounts of semen and scratches to the seats. Regardless of how the accident came to pass, it seems like the occupants were all transformed into more sexual monsters. Certainly, it would not be safe to enter the bus, given how soaked in cum everything is.";
	say "     You hop back onto the car, then onto the ground. You start to head on your way, mentally reminding yourself not to take this street again when passing through this area, when you hear a growl from behind you. Crawling out of the bus, you see a large, cougar herm wearing a cap and coat that leads you to suspect this was once the bus driver. It growls again and hops onto the ground, coming at you quickly.";
	challenge "Cougar";
	say "     Your encounter with the cougar creature over, you continue on your way, leaving it and its unusual den behind.";
	mallrecall;
	now Tour Bus is resolved;


Section 3 - Diego Events

Trickster is a situation. The level of Trickster is 4.
wolffight is a number that varies.
when play begins:
	add Trickster to badspots of furry;
	add Trickster to badspots of guy;
	add Trickster to badspots of girl;

instead of resolving a Trickster:
	say "     As you are travelling along, you spot some activity in the distance. At first, fearing that it is another band of monsters, you take cover. But a few moments later, you discover it to be a small team of soldiers moving stealthily through the city. They may be doing recon or on some other kind of mission, but you may be able to get assistance, or even be rescued by them. But even as you're walking up and trying to decide how best to approach them, you see a coyote [if Diegochanged is 0]man[else if Diegochanged is 1]herm[else]woman[end if] carrying a large sack dash into their midst[if diegotalk > 0 and Diegochanged is 0]. You recognize Diego, the coyote trickster, and have to wonder what he is up to this time[else if diegotalk > 0]. You recognize Diego, the coyote trickster, and have to wonder what she is up to this time[end if][if Diegochanged is 0]. He[else]. She[end if] passes the bag quickly to a flabbergasted soldier with a quick 'Here, hold this' before continuing on with a happy chuckle.";
	say "     As the stunned soldiers watch the coyote run off in the direction of the city park and look at the mysterious sack, you hear some approaching howls. If you're going to get out of here, you'll have to do it right now.";
	say "     [bold type]Do you move to join the soldiers or run and hide to watch what happens?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay.";
	say "     ([link]N[as]n[end link]) - Run.";
	if the player consents:
		say "     You dash up to the soldiers and pull out your weapon. Knowing your luck, trouble's on the way. You run up to the soldier left holding the bag. Your sudden appearance after the coyote's keeps him off guard long enough to pull the sack from him, finding it stuffed with gray fur inside. You barely have a chance to look up when a large pack of wolves come running around the corner, slamming into the unexpected team of soldiers. Several of the men are knocked down immediately.";
		let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 15: ";
		if dice plus bonus > 15:
			say "     You toss the bag of fur in the face of one wolf about the slam into you. He has large sections of his pelt shaved off, exposing wide patches of pink skin. The bagged fur is sent flying, floating in the air all around the area. You cough and brush it out of your eyes in time to see another wolf moving in to attack you.";
		else:
			decrease HP of player by 10;
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
					say "     Food, water bottle and combat knife obtained.";
					increase carried of food by 1;
					increase carried of water bottle by 1;
					increase carried of combat knife by 1;
					increase score by 20;
		if wolffight is 3:
			say "     Deciding to give up on fighting entirely, you push your way free of the wild fight. You hop over one wolf who's mounted one poor soldier and are almost knocked down as your pursuer runs into a soldier getting up. Finding an [']eager volunteer['] for his cock, the wolf drives it into the soldier's mouth and starts pounding away. The wolves get the last of the soldiers as you're turning into an alleyway. You can hear the laughter of what is probably the coyote trickster, amused by the results of [if diegochanged is 0]his[else]her[end if] prank[if Park Entrance is unknown]. You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
			infect "Feral Wolf";
		if wolffight is 2:
			if cunts of player > 0:
				say "     Before you can get back up, you are mounted by one of the other wolves, moaning loudly as he drives his thick cock into you. He fucks you hard and fast, eager to fill you with cum and pups before moving on to another victim. His wild, feral rutting is a mix of pain and pleasure as that thick cock pumps in and out of your wet hole. 'Mmm... my bitch...' he rumbles softly, and you are surprised to hear one of the feral wolves speak. You respond to his words by pressing your ass back, moaning louder as he pounds into your abused pussy. Your excitement builds, finally peaking when he unleashes his hot, lupine seed into you with a howl[if cocks of player > 0]. Your cock throbs and sprays its load onto the pavement as you're stuffed full of creamy wolf cum[end if]. Withdrawing, he licks your cheek and growls softly before pouncing on a soldier, tearing away some partially shredded clothes to uncover a fresh pussy for him to fuck.[impregchance]";
			else:
				say "     Before you can get back up, you are pushed down by one of the other wolves. He pushes your clothes aside with his paws, scratching at your back with his claws, then growls and mounts you. You can feel his wet, sticky cock slide against your ass before finding your tight pucker and pushing it open. You moan loudly as he drives his thick cock into you. He fucks you hard and fast, eager to fill you with cum before moving on to another victim. His wild, feral rutting is a mix of pain and pleasure as that thick cock pumps in and out of your tight hole. 'Mmm... my bitch...' he rumbles softly, and you are surprised to hear one of the feral wolves speak. You respond to his words by pressing your ass back, moaning louder as he pounds into your abused asshole, pressing that lupine shaft against your prostate. Your excitement builds, finally peaking when he unleashes his hot, lupine seed into you with a howl. Your cock throbs and sprays its load onto the pavement as you're stuffed full of creamy wolf cum. Withdrawing, he licks your cheek and growls softly before pouncing on a soldier, tearing away some partially shredded clothes to uncover a fresh pussy for him to fuck.[impregchance]";
			say "     Just as your head is starting to clear, another wolf moves up to you, sticky cock hanging under him. Seizing what may be your only opportunity to escape, you grab a fallen, half-transformed soldier beside you and press his growing muzzle onto the wolf's cock. He latches onto it hungrily and starts licking and sucking. Distracted, the wolf turns his attention on the changing soldier and thrusts into his muzzle. Crawling carefully past a few more distracted wolves, you make it to the edge of the orgy and dash into a nearby building. You rush out the back, having to leave the soldiers to their fate as bitches for a wolf pack - a fate you almost shared. As you run off, over the sounds of mating wolves, you catch the faint laughter of someone, probably the coyote trickster, enjoying the results of [if diegochanged is 0]his[else]her[end if] prank[if Park Entrance is unknown]. You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
			infect "Feral Wolf";
	else:
		say "     Turning tail before the coyote's trick is set off, you dash into a burned out shop and watch from there. The howls get louder and a pack of wolves come rushing around the corner, right into the soldiers. Several of the soldiers are bowled over as the wolves weren't expecting obstacles. At the head of the pack is a large wolf with large, poorly shaved patches his pelt, showing the pink skin beneath. The bag, sent flying by the collision, flips in the air and opens, spilling out what must be the shaved wolf's fur. Deciding that the soldiers must ultimately be responsible for his shaving, he and the other wolves attack.";
		say "     The soldiers, unprepared for such an assault, are soon borne down by the powerful wolves and wild rutting ensues. You watch as soldiers are forced to suck wolfcock or are buggered by the angry pack. The humans begin to transform, gaining fur, ears or tails as the lupine infection starts to spread. As some start to gain pussies, these new holes are stuffed full of wolfcock to breed pups in them. When the soldiers succumb enough to stop resisting, they are dragged off by the wolves, probably to their den to finish mating with them until they're fully members of the pack. The remaining wolves start sniffing around the area, spreading out. Worried they'll pick up the trail of your scent you think it best to make your escape. You slip out the back of the store and make a break for it, sure that you could hear some laughing in the distance[if Park Entrance is unknown]. You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
		increase score by 5;
	now wolffight is 0;
	now Trickster is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"combat knife"	"A large combat knife in a belt holster."	2	combat knife

combat knife is an armament. It is part of the player. It has a weapon "[one of]your large knife[or]your combat knife[or]the large blade[or]your combat knife with a strong thrust[or]your large blade with a quick slash[at random]". The weapon damage of combat knife is 6. The weapon type of combat knife is "Melee". It is not temporary.


Prank Aftermath is a situation. Prank Aftermath is resolved. The level of Prank Aftermath is 7.
prankevent is a number that varies.
when play begins:
	add Prank Aftermath to badspots of furry;
	add Prank Aftermath to badspots of hermaphrodite;

instead of resolving a Prank Aftermath:
	say "     As you travel through the city, you hear some moaning mewls coming from up ahead. On your guard, you sneak forward and take in the sight of several of those puma creatures playing with what was once a team of six soldiers. The cougars have the men pinned to the ground and are having their way with them. As you watch, the cougars force them to nurse from their breasts or suck their cocks until they develop a wet, new pussy for the herm kitties to fuck. Outnumbered, the soldiers have no chance to escape and there are several felines waiting for their turn to sate their lusts on the transforming humans.";
	say "     Not normally native to this part of the city, you start to wonder how such a large band of the felines got here when you spot one of them eating a large fish from a basket while she waits for her next turn with the new breedtoys. Remembering that you told Diego an idea you had about using fish to lure some of the felines around for a prank, it seems you've run into the aftermath of your idea";
	if libido of player - humanity of player < -25:
		say ". Being too far gone into your lustful urges and the infection taking over, you feel some remorse for your actions, but are too aroused by what you see to do anything but watch.";
		decrease humanity of player by 10;
		decrease morale of player by 5;
		increase libido of player by 20;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 5;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 5;
		if libido of player > 100, now libido of player is 100;
	else:
		say ". You find the sight strangely arousing, though your guilt over assisting in the infection of these soldiers does sadden you.";
		decrease humanity of player by 2;
		decrease morale of player by 25;
		increase libido of player by 8;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 2;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
		if libido of player > 100, now libido of player is 100;
	LineBreak;
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
	say "     As you watch, the last of the soldiers is made into a herm with a pair of swelling breasts on her chest and a pair of feline ears. She is pushed into the arms of two of her former teammates. Too far gone in their own infection, they push her onto all fours, one taking her virgin pussy with her feline cock and the other forces her cock into his mouth. As they fuck her, all three continue to change until they are full puma herms, fucking with mrowls of lustful delight. The former soldiers cum hard into their ex-teammate, filling her new pussy and feline muzzle with their hot cum. Watching this arousing show, you can't help but get turned on and start masturbating. As you climax, you groan loudly and cum hard, unable to stop yourself. But this doesn't go unheard and several of the powerful felines come after you. Having just cum, you barely manage to get yourself back on your feet and ready to fight by the time the first one reaches you.";
	LineBreak;
	challenge "Cougar";
	say "     Recovering from your encounter with the first feline, you try to get away, but have to deal with another who moves to bar your path.";
	LineBreak;
	challenge "Cougar";
	say "     With the second battle over, the other pumas move in to capture you. You manage to dive into a building and bar the door with a filing cabinet. As they pound at it, you find another exit from the building and weave through some side streets to make sure that you've lost the lustful felines.";
	now Prank Aftermath is resolved;


Section 4 - Park Events

Lovers Bench is a situation.
The sarea of Lovers Bench is "Park".
loversbench is a number that varies.
when play begins:
	add Lovers Bench to badspots of furry;
	add Lovers Bench to badspots of guy;
	add Lovers Bench to badspots of girl;

lbcomplist is a list of pets that varies.

Instead of resolving a Lovers Bench:
	if loversbench is 0:				[first visit]
		say "     While travelling through the park, you come across a pair making out lustfully on one of the benches. The male atop is an anthro wolf with gray fur and a strong build. The female stretched back on the bench is a spotted feline, perhaps an ocelot. Their clothes are scattered around the bench and seem partially torn. You hang back, wary to approach but unwilling to look away from the sight. You watch as the wolf eases his thick cock into the smaller woman's pussy, making her yowl in delight. She puts her arms around him and grabs his rear, pulling him into her with each thrust he makes. The ocelot licks and kisses at the wolf's neck and he brings a paw to caress her breast while the other digs into the back of the wooden bench. When the wolf finally drives his lupine knot into the feline's cunt, they growl passionately, cumming hard[if cocks of player > 0 or cunts of player > 0]. You do as well, having started playing with yourself at some point while peeping on the spectacle[end if]. Finished, the wolf sags atop the feline as they start licking and kissing one another. The ocelot's markings start to spread into the wolf's pelt while her fur takes on a more grayish tint overall.";
		say "     You quietly walk away, ashamed of your peeping and quite certain they have succumbed too far to be safe to approach. Even if currently sated, they are both equally infectious. But at least they are a couple.";
		increase score by 1;
		increase loversbench by 1;
	else if loversbench is 1:		[second visit]
		say "     Your meandering through the park brings you back to the lovers['] bench and find them gone, though their scattered clothes remain. This helps confirm your earlier guess that they'd succumbed. The bench has quite a few scratches and claw marks on it, clearly having been used by many others since the outbreak, as well as older, carved graffiti hearts. You suspect this bench has been a make-out spot for quite some time, being in a more secluded area in the park. Certainly there is a strong scent of sex hanging around it, even in the open air of the park. Remembering the lovemaking you witnessed here, you start to get turned on.";
		if scenario is "Bunker" or scenario is "Caught Outside":
			say "     You focus on checking out the scattered clothes for anything of use. The clothes, as you saw, are a little torn, perhaps from when they were first infected or in their rush to mate at the bench. Their food has been reduced to scraps and crumbs and their drink bottles are empty. There is a small pocketknife in the wolf's khakis. It is no better than your own, so you toss it aside. The woman's jeans do yield a small canister of mace, which you store somewhere within easy reach. You leave the rest, finding nothing else of use to you.";
			say "     Pepperspray obtained.";
			increase carried of pepperspray by 1;
			increase score by 5;
		else:
			say "     You focus on checking out the scattered clothes for anything of use. The clothes, as you saw, are a little torn, perhaps from when they were first infected or in their rush to mate at the bench. Their food has been reduced to scraps and crumbs and their drink bottles are empty. There is a small pocketknife in the wolf's khakis. Thinking it may be a useful tool or perhaps a weapon in a pinch, you take it. The woman's jeans do yield a small canister of mace, which you store somewhere within easy reach. You leave the rest, finding nothing else of use to you.";
			say "     Pocketknife and pepperspray obtained.";
			increase carried of pocketknife by 1;
			increase carried of pepperspray by 1;
			increase score by 10;
		increase loversbench by 1;
	else if loversbench is 2:		[third+ visit]
		say "     Returning to the area around the lovers['] bench, you decide to search around it again. Thinking others may have lost or forgotten items in their rush of excitement, you check among the scraps of clothes for any other lost or discarded items. Sadly, you are unable to locate anything new or of any use.";
	if loversbench is 2 and companion of player is not listed in lbcomplist and (cocks of player > 0 or cunts of player > 0):
		if companion of player is pink raccoon:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Raccoon":
					now monster is y;
					break;
			if cocks of player > 0:
				say "     As you're finishing up your scavenging, your pink raccoon pet takes your hand in his and pulls you over to the bench with a soft chirr. He smiles and kneels on the bench, flagging his tail up to uncover his tight rump. He makes a needful moan. It seems your pet wants to enjoy the lovers['] bench with you as well. The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer. You stand behind him and give his rump a squeeze, spreading his cheeks and lining up your cock with his pink pucker. You dribble pre onto it, then slowly ease into him, enjoying the sound of his soft moan as you penetrate him.";
				say "     Gripping the bench tightly with his little claws, he leaves fresh holes in the wood while you thrust into him. You stroke his back and sides, telling him what a good pet he is and how much you love him. Something about the bench makes this more than just sex, but instead lovemaking. Your coon smiles back at you and his cotton candy scent fills the air, mingling with all the other arousing scents. You reach around to pump at his cock while you work your cock into his tight bottom. His pink, banded tail wraps around your waist, snugging you lovingly.";
				say "     After a powerfully long orgasm that pumps your seed into your pet's ass and his own sweet smelling cum is added to bench's scents, you withdraw. Your pet is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
			else:
				say "     As you're finishing up your scavenging, your pink raccoon pet takes your hand in his and pulls you over to the bench with a soft chirr. He smiles and nuzzles you, guiding you to lay back on the bench. You can see the front of his skirt standing up as his erect cock makes it rise. He makes a needful moan as you slip a hand under his skirt to fondle his balls. It seems your pet wants to enjoy the lovers['] bench with you as well. The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer. You stretch back on the bench, leaving one leg draped over the side, giving your pink pet clear access to your dripping slit. He climbs atop you, lining up his cock even as he nuzzles at your neck. You scritch his ears and caress his back as his penis sinks into your cunt, enjoying the sound of his soft moan as he slowly, tenderly penetrates you.";
				say "     Gripping the bench tightly with his little claws, her leaves fresh holes in the wood while he thrusts into you. You stroke his back and sides, telling him what a good pet he is and how much you love him. Something about the bench makes this more than just sex, but instead lovemaking. Your coon smiles down at you, kissing and nuzzling your face as you do the same. His cotton candy scent fills the air, mingling with all the other arousing scents. You reach around to grab his rump, squeezing it and making him moan as you pull him to thrust harder and harder into your dripping pussy.";
				say "     After a powerfully long orgasm that pumps an impressive load of his coonboi seed into your pussy, he withdraws slowly. Your pet is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.[impregchance]";
			now lastfuck of pink raccoon is turns;
			infect "Raccoon";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			increase XP of pink raccoon by ( level of pink raccoon + 1 ) * 3;
			increase score by 20;
		else if companion of player is Gryphoness:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Hermaphrodite Gryphon":
					now monster is y;
					break;
			say "     As you're finishing up your scavenging, Denise takes your hand in hers and grins playfully at you. She gives you a tug over to the bench. 'We should... umm... I mean, everyone's using this bench for...' she says softly as she sits back on it, running her paws over her lovely body. Her nipples are quite hard, as is her cock and gryphon juices drip from her aroused pussy. The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on her offer.";
			if cocks of player > 0:
				say "     You snuggle up beside her on the bench, nuzzling and kissing one another. Her paw soon find its way to your cock and strokes at your stiff shaft. With her other arm around you, she moves to lay back on the bench while guiding you atop her. Soon enough, you are lining your cock up with that dripping snatch and sinking into her, causing her to moan lustfully. You continue kissing as you thrust into her, enjoying the warm, wet grip of her cunt around you. Her paws roam over your body while her taloned feet dig into the bench, adding her marks to those of the others who've used it. Your sex is lustful, but loving as well, as something about the bench makes this more like lovemaking than raw sex. With one hand on the bench for support like that wolf, you let the other stroke Denise's bosom as she sings out her love for you and you respond in kind.";
				say "     After a powerfully long orgasm that pumps your seed into the sexy gryphoness's pussy and her own cum sprays across her body and the bench, you withdraw. Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to her.";
			else:
				say "     You snuggle up beside her on the bench, nuzzling and kissing one another. Her paw soon find its way to your pussy and she fingers and teases your wet folds. With her other arm around you, she moves to sit at one corner of the bench and guides you to sit in her lap. Soon enough, you are lining up her throbbing cock with your wet hole while kissing your loving companion. You moan in pleasure as you sink down on her leonine cock, gripping her shoulders. She nuzzles your bosom, licking and sucking at your nipples before moving her head back up to kiss you. You continue kissing as you ride in her lap, enjoying the feel of her throbbing meat inside your cunt. One paw roams over your body while the other digs into the bench, adding her marks to those of the others who've used it. Your ride her cock lustfully, but loving as well, as something about the bench makes this more like lovemaking than raw sex. With your arms around her, you hold her lovingly while scritching at her wing roots, which makes her sing out her love for you and you respond in kind.";
				say "     After a powerfully long orgasm that pumps an impressive load of her gryphon seed into your pussy and her own female juices leak onto the bench to join the others, you ease yourself off her spent shaft. Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to her.[ovichance]";
			now lastfuck of gryphoness is turns;
			infect "Hermaphrodite Gryphon";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			increase XP of Gryphoness by ( level of Gryphoness + 1 ) * 3;
			increase score by 20;
		else if companion of player is Felinoid companion:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Felinoid":
					now monster is y;
					break;
			if cunts of player > 0:
				say "     As you're finishing up your scavenging, your felinoid companion snuggles up to you, rumbling and purring as he starts nudging you over to the bench with his strong body. You sit on the bench and he puts his front paws on either side of you, nuzzling and licking at your face. You can see his aroused cock, red and throbbing as it drips precum on your leg. It seems your companion wants to enjoy the lovers['] bench with you as well. The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer. You move to lay back on the bench, putting your hips at one edge so your four-legged feline can mount you. And he quickly does, lining up his cock with your dripping snatch before slowly sinking into you. You moan in delight and run your hands over his sides and hips as his large, feline cock eases into you.";
				say "     His large paws dig into the bench beside your head, leaving fresh scratches in the wood while he thrusts into you. You nuzzle and kiss his feline face, telling him what a good kitty he is and how much you love him. Something about the bench makes this more than just sex, but instead lovemaking. Your kitty seems to smile down at you as he lickgrooms your face and chest, running his raspy tongue over your breasts. You reach back to rub his large balls and squeeze his tightly muscled rear while he thrusts into you. The sex is somehow both wildly animalistic and tenderly loving as the feline beast mates with you.";
				say "     After a powerfully long orgasm that pumps a huge load of his feline seed into your pussy, he eases his spent shaft from your cream-filled cunt. Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.[fimpregchance]";
			else:
				say "     As you're finishing up your scavenging, your felinoid companion snuggles up to you, rumbling and purring as he starts nudging you over to the bench with his strong body. You sit on the bench and he puts his front paws on either side of you, nuzzling and licking at your face. You can see his aroused cock, red and throbbing as it drips precum on your leg. It seems your companion wants to enjoy the lovers['] bench with you as well. The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer. You put your hands at his hips and get him to climb a little further onto the bench, bringing his large cock within reach of your mouth. You start licking and kissing at his throbbing meat, then slide your mouth down over it, enjoying his mrowl of pleasure as you do.";
				say "     His large paws dig into the back of the bench, leaving fresh scratches in the wood as he thrusts gently into your muzzle. Your face is buried in his soft fur as you run your fingers through it, stroking his belly and thighs as you lick and suck his cock. You slide your mouth off, telling him what a good kitty he is and how much you love him as you kiss his cock and balls. Something about the bench makes this more than just sex, but instead lovemaking. Your kitty seems to smile down at you as you take him in your mouth again and he starts thrusting softly. You reach rub his large balls and squeeze his tightly muscled rear while he rocks his hips. The sex is somehow both wildly animalistic and tenderly loving as the feline beast pumps his cock as you take it fully into your mouth and down your throat.";
				say "     After a powerfully long orgasm that pumps a huge load of his feline seed into your belly, he eases his spent shaft from your mouth. Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
			now lastfuck of felinoid companion is turns;
			infect "Felinoid";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			increase XP of Felinoid companion by ( level of Felinoid companion + 1 ) * 3;
			increase score by 20;
		else if companion of player is bee girl:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
			say "     As you're finishing up your scavenging, Honey buzzes on over and takes your hand in her. She smiles up at you and grins playfully. She gives your arm a gentle tug with her four hands. 'I want to try out the bench, now that I have someone special to share it with,' she buzzes softly. 'I used to see couples here when I was...' She pauses, remembering her lost sisters. 'But I have you now[if HP of bee girl >= 5], a strong and caring queen bee[end if],' she says, smiling up at your with a mix of lust and adoration as you walk with her to the bench to take her up on her offer. Her nipples, normally hidden, are quite hard, and her honeyed juices run down her legs. The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your small companion up on her offer.";
			if cocks of player > 0:
				say "     Honey climbs up onto the bench, raising her bee abdomen up and waving her cute little bottom at you. The soft, golden puff over her pussy is soaked in her juices and you can see her soft lips parted and ready for you. The bumblebee drone buzzes excitedly as you move in behind her and get your hard cock lined up with her eager pussy. She pushes herself back onto your cock slowly, clearly holding back from pushing it all in quickly, wanting to savour this moment. Once you're stuffed inside her, you wrap your arms around her insect abdomen and start thrusting. Her wings buzz frantically and her abdomen twitches in your arms. 'Mmm... kiss it. Please, I want you to kiss me there,' she moans as her pussy quivers and squeezes around you at the thought of it. So when you kiss and lick at the end of her abdomen, that sensitive spot where her stinger was lost - that you healed to save her life - she convulses in pleasure and digs her four chitinous hands into the wooden bench, adding fresh marks to join the numerous others. Your sex is both lustful and loving all at once, as something about the bench makes this more like lovemaking than raw sex. With one hand on the bench for support like that wolf, you let the other hold her striped behind while you lick and kiss it.";
				say "     After a powerfully long orgasm that pumps your seed into the cute bumblebee girl's pussy while her honeyed juices soak you both, you slide your spent cock from her. Your companion is extra-snugly after the lovemaking, nuzzling against your side as she holds your hand in her four small hands and you happily return this affection, feeling closer to her.";
			else:
				say "     Honey lays back on the middle of the bench and motions for you to climb atop her. Bringing your pussy to her lips, she starts licking and kissing at your sex, running her long proboscis over your wet folds before sliding it into you like a flower full of rich nectar. Her talented tongue delves inside you again and again, licking and teasing at your sensitive inner walls as it slides to your very depths to please you. You run your hand over her insect abdomen and she buzzes with delight. 'Mmm... kiss it. Please, I want you to kiss me there,' she moans before diving her tongue into you again. Her tongue is writhing inside you at the thought of it. So when you kiss and lick at the end of her abdomen, that sensitive spot where her stinger was lost - that you healed to save her life - she convulses in pleasure and digs her four chitinous hands into the wooden bench, adding fresh marks to join the numerous others. Your sex is both lustful and loving all at once, as something about the bench makes this more like lovemaking than raw sex. With one hand on the bench for support like that wolf, you let the other hold her striped behind while you lick and kiss it.";
				say "     After a powerfully long orgasm that soaks the cute bumblebee girl's face in your female nectar while her honeyed juices soak her crotch as her lower hands finger herself vigorously, you climb slowly off from overtop her. Your companion is extra-snugly after the lovemaking, nuzzling against your side as she holds your hand in her four small hands and you happily return this affection, feeling closer to her.";
			now lastfuck of bee girl is turns;
			if HP of bee girl >= 5, infect "Queen Bee";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			increase XP of bee girl by ( level of bee girl + 1 ) * 3;
			increase score by 20;
		else if companion of player is mouse girl:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Mental Mouse":
					now monster is y;
					break;
			say "     As you're finishing up your scavenging, Rachel moves up beside you, running her paws over your [bodytype of player] body and taking your hand in her little paws. She smiles up at you, looking deep into your eyes. 'You want to spend some time with me on the bench, don't you?' she says softly and you nod, the heavy scent of lust in the air and her mental powers make you long to play with the sexy mousie on it. 'Just some personal time for you and I, none of the others listening in this time.' The idea to resist doesn't even pop into your mind and you [if scalevalue of player >= 3]scoop her up into your arms and onto[else]rush her over to[end if] the bench.";
			if cocks of player > 0:
				if scalevalue of player >= 3:
					say "     You set Rachel down on the lovers['] bench and she stands on it with her hands gripping the back rest. Now elevated for easier mounting, the small mouse raises her tail and wiggles her rear with a needy squeak. Her exposed pussy is dripping wet and her murine cock is hard and dribbling precum, her body as aroused by the lustful scents as yours is. You move in behind her and get your hard cock lined up with her wet cunt. She pushes herself back onto your cock quickly, releasing another squeak as she grips the bench. Leaning overtop of the smaller mouse girl, you grab the back of the bench as well and give her ears a nibble as you start pounding into her. She shivers in pleasure at the nibbles and slides her slender tail around your waist.";
					say "     As you continue thrusting into her, you can feel her pleasure as well as your own, sharing your growing love for each other. You can feel the quivers of her pussy around your cock as well as the intense sensations this gives her. You can feel the pulse of her cock as well as the growing pressure inside her balls as you stroke her maleness. You can even sense her gripping the wood tightly and her small claws digging into it to leave fresh marks on the bench. 'Oh, my love. It feels so good to be with you. We should be together forever,' the busty little herm squeaks. 'Accept your place with me and it will always be like this.' You moan and nuzzle at her neck, feeling your bond with this beautiful creature growing stronger as something about the bench makes this more like lovemaking than raw sex.";
				else:
					say "     You and Rachel climb up onto the bench, getting onto all fours atop it. Both being rather small, you can easily both fit on the bench. The small mouse raises her tail and wiggles her rear with a needy squeak. Her exposed pussy is dripping wet and her murine cock is hard and dribbling precum, her body as aroused by the lustful scents as yours is. You move in behind her and get your hard cock lined up with her wet cunt. She pushes herself back onto your cock quickly, releasing another squeak as she grips the bench. Leaning overtop of the smaller mouse girl, you place a hand on the back of the bench for support as the other moves to your sexy lover's cock as you start pounding into her. She shivers in pleasure at the stroking and slides her slender tail around your waist.";
					say "     As you continue thrusting into her, you can feel her pleasure as well as your own, sharing your growing love for each other. You can feel the quivers of her pussy around your cock as well as the intense sensations this gives her. You can feel the pulse of her cock as well as the growing pressure inside her balls as you stroke her maleness. You can even sense her gripping the wood tightly and her small claws digging into it to leave fresh marks on the bench. 'Oh, my love. It feels so good to be with you. We should be together forever,' the busty little herm squeaks. 'Accept your place with me, with all of us, and it will always be like this.' You moan and nuzzle at her neck, feeling your bond with this beautiful creature growing stronger as something about the bench makes this more like lovemaking than raw sex.";
				say "     After a powerfully long orgasm that pumps your seed into the cute mouse girl's pussy while her own seed blasts to splatter across the backrest, you slide your cock from her. Your companion is extra-snugly after the lovemaking, nuzzling at your side as she holds your hand in hers and wraps her tail around your wrist, and you happily return this affection, feeling much closer to her.";
			else:
				say "     Running your hands over each other, you can feel the mousie's stiff cock pressing against you and you can sense what she wants of you. Unwilling to deny the needs of your sexy little lover, you lay your [bodytype of player] body across the bench with your hips and legs hanging off the edge, offering up your [if cunts of player > 0]pussy[else]ass[end if] to the mouse girl. She runs her little paws over your backside and squeaks happily, pleased that this puts you at the perfect height for her cock. Moving in behind you, she lines up her throbbing maleness with your waiting hole and slowly sinks into you. You can't help but moan and squeak in delight as you're penetrated, gripping the wood firmly as she starts pounding into you.";
				say "     As she continues thrusting into you, you can feel her pleasure as well as your own, sharing your growing love for each other. You can feel her cock inside you as well as the intense pleasure of your [if cunts of player > 0]wet vagina[else]tight hole[end if] sliding across her hard flesh as well as the growing pressure inside her balls. You can feel the quivering of her aroused pussy and the wet juices running down her thighs, as well as the slap of her own balls against her clit as she thrusts. Sharing in all of this, you moan loudly and grip the bench firmly, digging fresh marks into it with your nails. 'Oh, my love. It feels so good to be with you. We should be together forever,' the busty little herm squeaks. 'Accept your place with me, with all of us, and it will always be like this.' You moan and nod eagerly, pressing back into her thrusts and feeling your bond with this beautiful creature growing stronger as something about the bench makes this more like lovemaking than raw sex.";
				say "     After a powerfully long orgasm that sends her hot seed into your [if cunts of player > 0]waiting womb and your synchronous climax[else]stuffed bottom[end if], she slides her cock slowly from you, caressing your ass. Your companion is extra-snugly after the lovemaking, nuzzling at your side as she holds your hand in hers and wraps her tail around your wrist, and you happily return this affection, feeling much closer to her.[impregchance]";
			now lastfuck of bee girl is turns;
			infect "Mental Mouse";
			now libido of player is libido of player / 2;
			decrease humanity of player by 20;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 5;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 5;
			increase XP of mouse girl by ( level of mouse girl + 1 ) * 3;
			increase score by 20;
		else if companion of player is equinoid warrior:
			say "     As you're finishing up your scavenging, Liliana strides up beside you to run her hoofed hands over your [bodytype of player] body. She smiles at you with a lustful hunger in her eyes. '[if player is blequinoidbodied]Come, join me over here and I will remind you of the warm embrace of the herd[else]We may be away from the herd, but we can still keep one another fulfilled[end if],' she says, guiding you towards the bench. Having gotten quite aroused by the scents of bestial lusts in the air, the sight of the aroused equinoid with her perky nipples, equine erection and dripping pussy entice you to take her up on her offer.";
			if ( cunts of player > 0 and cocks of player is 0 ) or ( cunts of player > 0 and player is submissive ):
				say "     The young warrior pushes you down onto the bench with an excited whinny, her hands moving down to spread your legs as you lean back on it. Divesting each other of your gear, you take a moment to kiss passionately while groping one another. One of her hands finds its way to your pussy and she plunges a pair of digits into you. Your [if player is blequinoidbodied]knicker[else]moan[end if] of pleasure is met with her tongue pressing past your lips to wrestle with yours.";
				say "     Once her fingering has gotten you quite wet, she slips her fingers out and holds your pussy spread open for her equinoid cock to fill. With a slow, steady thrust, she buries most of it into you while you quiver with delight in your seat. Her hooves move to your ass and grip it firmly while you grab onto the bench for support before she starts fucking you in earnest, pounding into you like a stallion. The feel of that big horsecock of hers stuffed inside you, plunging in and out, has you panting and nickering for more even as you push back into her thrusts. Your nails dig into the wood as you try to hang on (in more than one sense of the word), adding fresh marks to those of the others who've used it.";
				say "     She pounds into you with such energy, but she is loving about it as well, something about the bench making this more like lovemaking than raw sex. 'Mmm... you're so strong, but also wonderfully eager to be ridden. When our journey's done, perhaps you'd enjoy being the first of my mares,' the sexy warrior says with a blush. 'You'd breed such mighty colts.' She ends up neighing out the last word as she thrusts deep into you and blasts her hot seed inside you, flooding your womb with her virile load. You cry out in climax as well, clenching your vagina down around that equine log to milk as much as your loving companion can give.[impregchance]";
				say "     By the time your long orgasms are done, she's pumped an impressive load of her equinoid seed into your pussy. A mix of her juices and yours leaks out onto the bench to join the others, adding to the arousing scent that clings here. With another kiss, she eases her spent shaft from you. After the lovemaking, Liliana is more snuggly than usual, caressing your body tenderly as she gives your neck soft nips. Returning this affection in kind, you feel that you've grown closer to her.";
			else if ( player is male and player is submissive and anallevel > 1) or player is neuter:
				say "     The young warrior pushes you down onto the bench with an excited whinny, her hands moving down to spread your legs as you lean back on it. Divesting each other of your gear, you take a moment to kiss passionately while groping one another. One of her hands finds its way between your asscheeks and rubs against your anal ring. Those roaming digits soon pry you open, thick fingers curling in your depths to stroke along your sensitive lining[if player is male] and massage your needy prostate[end if]. Your [if player is blequinoidbodied]knicker[else]moan[end if] of pleasure is met with her tongue pressing past your lips to wrestle with yours.";
				say "     Once her fingering has gotten you sufficiently [if player is male]hard and [end if]excited, she slips her fingers out and holds your hole spread open for her equinoid cock to fill. With a slow, steady thrust, she buries most of it into you while you quiver with delight in your seat. Her hooves move to your ass and grip it firmly while you grab onto the bench for support before she starts fucking you in earnest, pounding into you like a stallion. The feel of that big horsecock of hers stuffed inside you, plunging in and out, has you panting and nickering for more even as you push back into her thrusts. Your nails dig into the wood as you try to hang on (in more than one sense of the word), adding fresh marks to those of the others who've used it.";
				say "     She pounds into you with such energy, but she is loving about it as well, something about the bench making this more like lovemaking than raw sex. 'Mmm... you're so strong, but also wonderfully eager to be ridden. When our journey's done, perhaps you'd enjoy being the first of my mates,' the sexy warrior says with a blush. [if player is mpreg_ok]'You'd breed such mighty colts.' She ends up neighing out the last word as she thrusts deep into you and blasts her hot seed inside you, flooding your hidden womb[else]After rutting you for a good, long while, she thrusts deep into you and blasts her hot seed inside you, flooding your colon[end if] with her virile load. You [if player is male]cry out in climax as well, clenching[else]shudder in perverse delight and clench[end if] your ass down around that equine log to milk as much as your loving companion can give.[mimpregchance]";
				say "     By the time [if player is male]your long orgasms are done, she's pumped an impressive load of her equinoid seed into your bowels. A mix of her juices and yours leaks[else]her long orgasm is done, she's pumped an impressive load of her equinoid seed into your bowels. Her juices leak[end if] out onto the bench to join the others, adding to the arousing scent that clings here. With another kiss, she eases her spent shaft from you. After the lovemaking, Liliana is more snuggly than usual, caressing your body tenderly as she gives your neck soft nips. Returning this affection in kind, you feel that you've grown closer to her.";
			else:
				say "     The young warrior allows you to push her down onto the bench, giving a soft nicker as you do. She spreads her legs and raises her equine cock and ballsack to show you her dripping snatch. After divesting each other of your gear, you are pulled into a passionate kiss by the eager herm during which she fondles your cock and aims it at that juicy pussy she was showing off earlier. With an excited [if player is blequinoidbodied]whinny[else]groan[end if], you thrust into her, running your hands over her sexy black body as you ease your meat into her wanton hole. Her tongue dives into your mouth as you moan, sliding against yours as you start mating with the lovely equinoid.";
				say "     Her pussy is hot and juicy, feeling wonderful around your cock, and feeling her own dribbling shaft pressed between you both only adds to the excitement. From the way it's pulsing and drooling pre, you can tell she's really enjoying being ridden. As you pick up the pace, she grips the wood of the bench hard, digging her hoof-like fingers into it, adding fresh marks to the many already there from the others who've used it.";
				say "     You pound away at her zealously, working equally hard for her pleasure and for your own. Something about the bench makes this more like lovemaking than raw sex. 'Mmmm... you're so strong and so passionate. When our journey's over, I might even be willing to accept being one of your mares,' the sexy warrior says with a bright blush. 'You'd give me such mighty colts.' She ends up neighing out the last word as her pussy clamps down around you and her cock slaps across her chest, cum spurting in a fountain from it. The sight, scent and sensation of her cumming are enough to push you to orgasm as well. You hold one another tightly while you pump your [cum load size of player] load into her dark-lipped cunt.";
				say "     By the time your long orgasms are done, she's splattered you both thoroughly with an impressive load of equinoid semen. A mix of her juices and yours leak out onto the bench to join the others, adding to the arousing scent that clings here. With another kiss, you ease your spent shaft from her. After the lovemaking, Liliana is more snuggly than usual, caressing your body tenderly as she fawns over you. Returning this affection in kind, you feel that you've grown closer to her.";
			now lastfuck of equinoid warrior is turns;
			infect "Black Equinoid";
			now libido of player is libido of player / 2;
			now libido of equinoid warrior is 0;
			decrease humanity of player by 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			increase XP of equinoid warrior by ( level of equinoid warrior + 1 ) * 3;
			increase score by 20;
		else if companion of player is demon brute and DBCaptureQuestVar > 5:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Demon Brute":
					now monster is y;
					break;
			if DemonBruteStatus < 2: [male/herm Brutus]
				say "     As you're finishing up your scavenging, you notice Brutus standing next to the bench, his nostrils flaring as he takes deep breaths of the air around it. The smells here seem to be affecting him quite a bit, as his massive cock is fully erect and even dripping precum. And he's not the only one - the musk of all the previous couples making use of this place has your own libido ramped up pretty high...";
				say "     Ogling the naked form of your demonic companion, lustful thoughts going through your head, you find yourself stepping closer to him. 'Master?' Brutus asks as he turns his head, then falls silent as his eyes meet yours, both of you drawn into the pretty intense connection you feel right then. After a moment of being lost in each other's eyes, a deep lust-filled grumble comes from Brutus broad chest and he looks at the bench, then back at you. 'Do you want to...' is all that he has time to say before you pull his horned head to yours, kissing him deeply and hungrily.";
				if cocks of player > 0: [male+herm]
					if anallevel > 1:	 [anal sex not blocked]
						let DBAnalScene be a random number from 1 to 10;
						if player is submissive:
							increase DBAnalScene by 2;
						if DBAnalScene < 5:
							say "     [BenchAnalFuckDB]";
						else:
							say "     [BenchAnalDBFucksPlayer]";
					else: [anal sex blocked]
						say "     [BenchDBBlowsPlayer]";
				else: [female player]
					say "     [BenchDBFucksPlayer]";
			else: [female Brutus]
				say "     As you're finishing up your scavenging, you notice Brutus standing next to the bench, his nostrils flaring as he takes deep breaths of the air around it. The smells here seem to be affecting him quite a bit, as his pussy looks open and swollen, being drippingly wet. And he's not the only one - the musk of all the previous couples making use of this place has your own libido ramped up pretty high...";
				say "     Ogling the naked form of your demonic companion, lustful thoughts going through your head, you find yourself stepping closer to him. 'Master?' Brutus asks as he turns his head, then falls silent as his eyes meet yours, both of you drawn into the pretty intense connection you feel right then. After a moment of being lost in each other's eyes, a deep lust-filled grumble comes from Brutus broad chest and he looks at the bench, then back at you. 'Do you want to...' is all that he has time to say before you pull his horned head to yours, kissing him deeply and hungrily.";
				if cocks of player > 0: [male+herm player]
					say "     [BenchFuckDB]";
				else: [female player]
					say "     [BenchDBFemaleSex]";
			now lastfuck of demon brute is turns;
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by 1;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by 1;
			increase XP of demon brute by ( level of demon brute + 1 ) * 3;
			increase score by 20;
		else:
			increase libido of player by ( 100 - libido of player ) / 4;
			say "     Aroused by the lingering scent of sex around the area, your eyes are drawn to the bench. You find yourself thinking that it might be more fun if you were to bring some [if lbcomplist is not empty]new [end if]companionship here next time.";
		add companion of player to lbcomplist;

[
		now Lovers Bench is resolved;
]

to say BenchAnalFuckDB: [player fucks Brutus]
	say "     When you come back up for air, you stroke your hand down over Brutus muscle-packed chest and grab his hard shaft, stroking it a few times before stepping back and quickly stripping off your clothes and gear. Meanwhile, the aroused demon leans over the bench, presenting his muscular butt to you as he grips the backrest with both hands. Moving up behind him, you rub Brutus well-rounded cheeks, then spread them, revealing his light-purple pucker. Putting your fingers to it, you slide them into his opening, making him moan deeply as you rub his insides. Then you hit an especially sensitive spot and he gasps in lust, digging the tips of his claws into the wooden bench with a splintering crack.";
	say "     You keep going, stroking that same spot a few more times, then Brutus begs 'Fuck me, master. Now. Please.' and rocks back a little bit to get your fingers in deeper. Pulling them out, you take hold of your erection to aim it at Brutus pucker, bringing it against his opening in a second, then pushing forward till it stretches around your invading member and allows you to sink deeper into his warm depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. You even have to slow down a bit so you don't just cum before you're all the way in. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a moment to get yourself back under control, taking deep breaths and stroking Brutus back and hips.";
	WaitLineBreak;
	say "     With you just resting your cock where it is buried in Brutus rear, cooling off, your demon companion gets a bit impatient after a while and you can feel him rocking forward and backward slightly to fuck himself on your shaft. Seems like it's time to take the reins again and give him what he so desperately needs. Pulling back till only the head of your cock is left inside him, you start thrusting in and out, making Brutus moan loudly each time you bottom out inside him. Following pants of 'Harder! Faster!', your movements speed up to oblige him and soon you're really pounding the demon's ass, your hips slapping against his cheeks with each thrust. Fucking Brutus with hard and deep strokes, you keep hitting his prostrate, filling your companion with bliss. His long tail rubs against you as you fuck him, sometimes wrapping around you to pull you closer.";
	say "     The demon brute is the first one to cum from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and cum starts gushing out of his thick shaft. With the broad and muscled back of the demon in the way, you can't see him cum, but you hear what must be massive spurts of demon seed splat all over the bench below. Also feeling his anal muscles twitch around your cock with each burst of the demon's cum, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside his tightly gripping depths as it starts unloading spurt after spurt of your cum. Holding on to the demon's tail, you fill his insides with your seed, then sink forward to rest against his back as you catch your breath.";
	WaitLineBreak;
	say "     As you finally pull out of him some time later, Brutus turns around and pulls you into a tight embrace against his broad chest. Just letting yourself be held like that for a while, you bask in the affection the large creature shows towards you, his saviour and master, and you can't help to feel closer to him after your lovemaking on this well-used parkbench.";

to say BenchAnalDBFucksPlayer: [BJ/Anal play with Brutus]
	say "     When you come back up for air, you stroke your hand down over Brutus muscle-packed chest and grab his hard shaft, stroking it a few times before stepping back and quickly stripping off your clothes and gear. Then you sit down on the bench, motioning the horny demon to join you, which he immediately does, accompanied by a creaking sound as the bench takes his large form's weight. Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards erect manhood. Leaning over and putting a large clawed hand to rest on your leg, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, licking your balls, even snaking it between your legs to poke your asshole for a second, before he wraps it around your cock. After teasing your cock a bit, he gently takes hold of it with his lips, taking care to keep your precious piece away from all the sharp teeth filling his mouth as he bobs up and down on it. Amazingly good at oral sex, this demon - his hot lips around your manhood and his tongue teasing its shaft.";
	say "     A hand on the demon's horned head as he sucks you, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus erection some attention too. A smile on your lips, you tell him he may rub himself against you, tease your asshole a bit. With an eager, lust-filled grunt, the demon is up on his feet, reaching down to lift and spread your legs with amazing gentleness. He is on top of you in a second, his body leaned over yours and hips thrusting forward - only to stop with just the tip of his thick erection touching your back door, then starting to rub it up against your ass. The hot member of this infernal creature sliding over your skin, touching your pucker and - almost - pushing in, drives your arousal through the roof. It doesn't take much longer until your gasps and moans rise in a crescendo, a lustful groan accompanying long strings of cum shooting from your cock to splat down on your chest.";
	WaitLineBreak;
	say "     As you lean against the backrest of the bench, still in the grip of the amazing feelings coursing through your body, Brutus asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings both his hands up to his massive erection, using them to jerk himself off. Quickly getting ready to cum, he pushes it in between your ass-cheeks, right against your pucker - and blows a hot burst of demonic seed into you. The force of his spurts alone is enough to push open your iris and you can feel shot after shot jet deep into your body. A warm feeling begins to spread through your insides as the demon fills you with his seed. With the sheer amount he's shooting, quite a bit immediately leaks out of your chock-full ass and runs over the wooden bench before dripping to the ground.[mimpregchance]";
	WaitLineBreak;
	say "     After catching his breath for a second, Brutus pulls you into a tight embrace against his broad chest, bodily picking you up and then sitting on the bench himself. Just letting yourself be held like that for a while, you bask in the affection the large creature shows towards you, his saviour and master, and you can't help to feel closer to him after your lovemaking on this well-used parkbench.";

to say BenchDBBlowsPlayer: [BJ]
	say "     When you come back up for air, you stroke your hand down over Brutus muscle-packed chest and grab his hard shaft, stroking it a few times before stepping back and quickly stripping off your clothes and gear. Then you sit down on the bench, motioning the horny demon to join you, which he immediately does, accompanied by a creaking sound as the bench takes his large form's weight. Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards your erect manhood. Leaning over and putting a large clawed hand to rest on your leg, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, licking your balls, even snaking it between your legs to poke your asshole for a second, before he wraps it around your cock. After teasing your cock a bit, he gently takes hold of it with his lips, taking care to keep your precious piece away from all the sharp teeth filling his mouth as he bobs up and down on it. Amazingly good at oral sex, this demon - his hot lips around your manhood and his tongue teasing its shaft.";
	WaitLineBreak;
	say "     With how wound up you were right from the start and Brutus skillfully performed blowjob, it doesn't take all that long until you feel the need to cum rise in your balls. Gripping the demon's head by his horns, you push him down tightly against your crotch and blow your load into his mouth, with Brutus eagerly swallowing spurt after spurt of your cum. He keeps your manhood in his mouth, softly sucking on it as your orgasm runs its course, waiting for even the last drop of your seed. Finally, you pull Brutus head off your softening cock, then give him a deep kiss, tasting your load on his lips.";
	say "     To reward your demonic companion, you tell him to lean back, then grab his erect shaft and jerk its massive length with both of your hands. Stroking the thick piece of cock, Brutus groans and moans quickly rise in volume and urgency, soon reaching their peak as he orgasms. Large spurts of his thick demonic seed blast from your companion's shaft, splattering all over his chest, the bench and your arms. After catching his breath, Brutus pulls you into a tight and a bit sticky embrace against his broad chest. Just letting yourself be held like that for a while, you bask in the affection the large creature shows towards you, his saviour and master, and you can't help to feel closer to him after your lovemaking on this well-used parkbench.";

to say BenchDBFucksPlayer: [Brutus fucks female player]
	say "     When you come back up for air, you stroke your hand down over Brutus muscle-packed chest and grab his hard shaft, stroking it a few times before stepping back and quickly stripping off your clothes and gear. Then you sit down on the bench, motioning the horny demon to join you, which he immediately does, accompanied by a creaking sound as the bench takes his large form's weight. Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards moist pussy. Leaning over and putting a large clawed hand to rest on your leg, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
	WaitLineBreak;
	say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you could almost just let him keep going like this... but no, you want something else right now. A smile on your lips, you tell him he may use that thick cock of his to fuck you. With an eager, lust-filled grunt, the demon is up on his feet, reaching down to lift and spread your legs with amazing gentleness. He is on top of you in a second, his body leaned over yours and hips thrusting forward - only to stop with just the tip of his thick erection nudging your nether lips apart slightly. Brutus face close to yours, he says 'With pleasure, my master', then puts his arms forward to hold you softly as he presses forward, entering your body with his hard shaft.";
	say "     It's big - very big, spreading your pussy lips around it, then sinking deeper into your body, creating pleasant feelings as the bumps on his shaft rub your inner walls. Even as relaxed as your muscles got during the thorough eating out the demon gave you, it's still quite a lot to take. Thankfully, he seems to know what very well, only slowly moving deeper and often stopping to just hold you so you can get used to it. Finally he bottoms out inside you, hard shaft buried all the way and his two large cum-factories resting against your skin. Panting deeply, you grab his head and pull it close, finding his lips with yours. It's amazing to have this huge, muscular creature on top of you, feeling him deep inside you - and being absolutely sure that you're safe in his arms.";
	WaitLineBreak;
	say "     A few minutes of making out with Brutus later, you tell him to continue - slowly. Moving in and out of you, the bumps on his cock rub against your stretched insides, making you shudder with rising lust. Over time, it becomes easier to have him inside you, with the demon leaking more and more precum and your muscles being stretched out and getting used to it. Which allows your companion to speed up his thrusts, going faster and faster, the slapping noises of his balls against your hips now coming in rapid succession. Soon, this drives your arousal over the edge [if cocks of player > 0]and with a loud moan, your [cock of player] shaft sprays cum all over your chest.[else if cunts of player > 0]and with a loud moan, you orgasm, femcum running down from your stretched cunt.[else]and with a loud moan, your body shakes in orgasm.[end if]";
	say "     His duty at getting you off fulfilled, the demon gives something like a very deep purr in satisfaction, his pleasure at serving his master quite obvious. He keeps fucking you while you ride out your orgasm, getting a bit faster than before in his urge to join you. Soon, he reaches his own climax - and with a loud grunt, he begins to pump your insides full of his seed. With the head of his shaft pushing open your cervix, he easily fills your womb and vagina, with the remaining cum squirting out around Brutus thick cock as he thrusts into you a few more times. As he finally removes his cock with a lout *pop*, your stomach looks distended from the sheer amount of cum he has injected into you, with more of it leaking from your stretched hole to run over the wooden bench before dripping to the ground.[fimpregchance]";
	WaitLineBreak;
	say "     After catching his breath for a second, Brutus pulls you into a tight embrace against his broad chest, bodily picking you up and then sitting on the bench himself. Just letting yourself be held like that for a while, you bask in the affection the large creature shows towards you, his saviour and master, and you can't help to feel closer to him after your lovemaking on this well-used parkbench.";

to say BenchFuckDB: [player fucks female Brutus]
	say "     When you come back up for air, you stroke your hand down over Brutus muscle-packed chest and keep going till you reach his crotch, stroking over his sensitive pussy lips a few times before stepping back and quickly stripping off your clothes and gear. Meanwhile, the aroused demon sits down on the bench, accompanied by a creaking sound from its wooden boards bending slightly under his large form. Getting on your knees between Brutus legs, you grab his powerfully muscled thighs, spreading them a bit further to allow yourself access to the swollen pussy waiting for you. Stroking over his sensitive nether lips, then sticking in two fingers between them, you push in and out, making your demon companion give a very satisfied moan. Stimulating him with just your hand has Brutus trembling with arousal, his claws digging into the bench as he grips it to hold on to something.";
	say "     Oh, it'll be fun to really fuck him. A grin on your face, you rub your cock against sensitive pussy lips, running its tip up and down between them before pressing in, sinking your manhood into his moist depths. For such a large creature, he's pretty tight, his inner walls gripping your erection. When you finally bottom out inside him, your balls resting against his muscled cheeks, you take a breath and compliment him on it, making Brutus face blush in interesting shade of purple.";
	WaitLineBreak;
	say "     Pulling back till only the head of your shaft is inside, you then thrust all the way back into the demon's pussy again, your hips meeting his butt with a slap. He gives you a pleased grunt at that - seems like your demon companion likes it a bit rough. Eager to oblige, you start thrusting in and out quickly, slamming back into him hard again and again. Besides being a tight fuck, you feel something of an additional, special satisfaction in dominating this powerful a creature, feeling his inner passages spread around your shaft as he moans for you to fuck him and take him harder. Soon he even rocks down to meet your thrusts and his tail starts stroking you, then wraps around your hips to pull you closer.";
	say "     Interestingly, the Brutus is the first one to come from your coupling, his moans first getting deeper and louder, then turning into lust-filled roars as he bucks against you and femcum starts gushing out of his vagina. It lubricates your thrusting shaft even more and starts running down between his legs, over his pucker and onto the ground. Feeling the muscles in his vagina twitch around your cock, your arousal mounts very quickly and after just a few more thrusts, you join your companion in orgasm. With a deep gasp, you slam into him one last time, your shaft buried as deeply as possible inside Brutus pussy as it starts unloading spurt after spurt of your cum. Gripping his thick, muscular legs with both hands, you fill his insides with your seed and afterwards sink forward to rest against his broad chest. His body is comfortably warm against your skin, and you stay like that for a while, listening to the demon's breathing with his arms wrapped around you. Just letting yourself be held like that, you bask in the affection the large creature shows towards you, his saviour and master, and you can't help to feel closer to him after your lovemaking on this well-used parkbench.";

to say BenchDBFemaleSex: [FF Brutus/Player]
	say "     When you come back up for air, you stroke your hand down over Brutus muscle-packed chest and keep going till you reach his crotch, stroking over his sensitive pussy lips a few times before stepping back and quickly stripping off your clothes and gear. Then you sit down on the bench, motioning the horny demon to join you, which he immediately does, accompanied by a creaking sound as the bench takes his large form's weight. Smiling at how well-behaved the formerly ravenous beast has become, you pull his head to yours for a deep kiss, then direct his attention towards moist pussy. Leaning over and putting a large clawed hand to rest on your leg, Brutus doesn't hesitate to bring his long forked tongue into play, running it over your crotch, even snaking it between your legs to poke your asshole for a second before he slips his forked tongue in between your pussy lips. The wet appendage wiggles around, probing and teasing your insides and causing you to moan in lust. Amazingly good at oral sex, this demon - going deep to find your most sensitive spots.";
	say "     A hand on the demon's horned head as he eats you out, moaning deeply in your mounting arousal, you have an idea for even more fun, giving Brutus pussy some attention too. A smile on your lips, you tell him he may rub himself against you. With an eager, lust-filled grunt, the demon is up on his feet, reaching down to lift and spread your legs with amazing gentleness. He is on top of you in a second, his body covering yours and hips thrusting forward - making his moist female folds brush against yours. Feeling his hot skin against yours - the large creature's parts rubbing your crotch - drives your arousal through the roof. Moaning deeply, you give yourself to the feelings your infernal servant wakes in you. Losing track of time, you're in a pleasant lust-filled haze until finally your lust moves to a crescendo, a long satisfied moan marking your orgasm.";
	WaitLineBreak;
	say "     As you lie on your back, still in the grip of the amazing feelings coursing through your body, Brutus asks 'Have I pleased you, master?', earning a nod and very satisfied smile from you. Giving a sound that resembles a very deep purr, the demon brings one of his hands to his dripping pussy, rubbing it and pushing in a finger or two to stimulate himself. Quickly getting the rest of the way to his own orgasm, he moans deeply, his shoulders shaking a bit as he starts dripping femcum from his pussy. It's quite a bit, running down over your crotch and the bench before dripping down onto the ground.";
	say "     After catching his breath for a second, Brutus pulls you into a tight embrace against his broad chest, bodily picking you up and then sitting on the bench himself. Just letting yourself be held like that for a while, you bask in the affection the large creature shows towards you, his saviour and master, and you can't help to feel closer to him after your lovemaking on this well-used parkbench.";

[functional pets]
[ pink raccoon ]
[ gryphoness ]
[ felinoid ]
[ bee girl - needs queen bee touch-ups]
[ mouse girl ]
[ equinoid warrior ]
[ demon brute ]

[ pets needing scenes ]
[ rubber tigress ]


PeachTree is a situation. The level of PeachTree is 7.
The sarea of PeachTree is "Park".
peachtreefight is a number that varies.

when play begins:
	add PeachTree to badspots of hermaphrodite;

Instead of resolving a PeachTree:
	now peachtreefight is 3;
	say "     Straying down a disused path, you find yourself approaching a large peach tree. The tree is laden with large, juicy fruit. Your mouth salivates just from the scent coming from it";
	if HP of Joanna >= 7 and HP of Joanna < 90:		[Joanna's seed]
		say ". As you start to step towards the tree, intent on having your fill of its fruit, your belly stirs. You stifle a groan as Joanna's seed inside you squirms in an uncomfortable way. Having not felt that reaction from it before, you stop yourself short and realize that you were about to rush up to the tree without pausing to check if it was safe. Now that you look, you can see that the earth around the base of the tree has been disturbed and proper scrutiny of the canopy shows some half-hidden vines.";
		say "     The fruit is still quite tempting, but it seems to not be as free as it first appeared.";
		say "     [bold type]Shall you still try to gather some?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			say "     Deciding to risk it, you get ready and approach the tree. As you near the trunk, the seed inside you stirs again, stimulated by the scent of the other plant nearby until it cannot help but push its vine out and burrow into the soil. The vines from the canopy take this opportunity to make a grab for you, but you are ready for them and prevent them from latching onto you by surprise.";
			challenge "Parasitic Plant";
			if lost is 0:
				say "     Disentangling yourself from the tendrils in the tree and freeing yourself of the vine inside you, you make a quick grab for some of the fruit. You snag a couple of them and then make a run for it as more vines rustle in the canopy. As you move further from the tree, Joanna's seed settles down again. You stroke your belly as if petting it, thankful for the warning it tried to give before its instincts took over.";
				increase carried of tasty peach by 3;
				increase score by 10;
			else:
				infect "Parasitic Plant";
				say "     Unable to hold out against the vine's actions, you are held by their steely grip as the vines inside you squirm, swell and thrust until its sticky cum is pumped into you. The plant's semen has a distinct peach flavour to it that arouses you greatly, keeping you excited and compliant as the plant fucks and milks you long and hard for your juices. Given the skill the vines display in pleasing you as it gathers your sexual fluids, this plant has had numerous victims drawn in by its peach tree home. Your body is made to give all it can by those tendrils assaulting you in such a strangely arousing manner until finally you collapse to the ground and are released. Weak, you manage to crawl away slowly, your mind a haze of instinctual, sexual thoughts that take some time to clear.";
				now libido of player is libido of player / 2;
				decrease humanity of player by 10;
		else:
			say "     Deciding not to risk it, you cover your nose and head back the way you came.";
	else:
		if plantdefeat > 0:
			say ".";
			say "     As you approach the peach tree, there is a squirming sensation from your belly before the slumbering plant inside you pushes free. It digs its main vine into the soil near the tree, trapping you there as other vines start to descent from the canopy. Tricked by the plant's alluring scent and tempting fruit, you are now caught in a fight with the vines. Between those from the tree and the one inside you, you will have a struggle on your hands.";
			decrease HP of player by HP of player / 4;
		else:
			say ".";
			say "     As you approach the peach tree, your mind is intent only on those delicious, juicy fruit and blind to all else until it is too late. As you reach up to grab some of the peaches, vines whip out from the canopy, wrapping around your wrists and grabbing you tightly. As you struggle against this, another tendril erupts from the soil at the base of the tree, driving itself into your [if cunts of player > 0]pussy[else]anus[end if] and swelling to try and lock itself inside you. You groan in a mix of discomfort and pleasure at this unusual intrusion and struggle to break free, but you will be fighting at a disadvantage this time as the plant's taken you by surprise.";
			decrease HP of player by HP of player / 5;
		challenge "Parasitic Plant";
		if lost is 0:
			say "     Disentangling yourself from the tendrils in the tree and freed yourself of the vine inside you, you make a quick grab for some of the fruit. You snag a couple of them and then make a run for it as more vines rustle in the canopy.";
			increase carried of tasty peach by 3;
			increase score by 10;
		else:
			infect "Parasitic Plant";
			say "     Unable to hold out against the vine's actions, you are held by their steely grip as the vines inside you squirm, swell and thrust until its sticky cum is pumped into you. The plant's semen has a distinct peach flavour to it that arouses you greatly, keeping you excited and compliant as the plant fucks and milks you long and hard for your juices. Given the skill the vines display in pleasing you as it gathers your sexual fluids, this plant has had numerous victims drawn in by its peach tree home. Your body is made to give all it can by those tendrils assaulting you in such a strangely arousing manner until finally you collapse to the ground and are released. Weak, you manage to crawl away slowly, your mind a haze of instinctual, sexual thoughts that take some time to clear.";
			now libido of player is libido of player / 2;
			decrease humanity of player by 10;
	now peachtreefight is 0;
	now PeachTree is resolved;


Table of Game Objects(continued)
name	desc	weight	object
"tasty peach"	"A very plump and juicy peach. It is much larger than a typical peach, but smells all the more delicious."	1	tasty peach

tasty peach is a grab object. tasty peach is temporary.

the usedesc of tasty peach is "[yummypeach]";

to say yummypeach:
	if "Junk Food Junky" is listed in feats of player:
		say "You decide to take a bite out of the juicy peach, finding it nearly as good as those gummy peach candies you like so much. The fruit slakes your hunger and thirst a little, though you can't help but become a little aroused as well. Peaches have been called aphrodisiacs by some, after all.";
		PlayerDrink 5;
		PlayerEat 2;
	else:
		say "You decide to take a bite out of the juicy peach, savouring its soft flesh as you eat it. The fruit slakes your hunger and thirst a little, though you can't help but become a little aroused as well. Peaches have been called aphrodisiacs by some, after all.";
		PlayerDrink 6;
		PlayerEat 3;
	increase libido of player by 10;
	if libido of player > 100, now libido of player is 100;

instead of sniffing tasty peach:
	say "The oversized peach smells delicious and tempting.";


Section 5 - State Fair Events

Concession Stand is a situation.
The sarea of Concession Stand is "Midway".
foodvendor is a number that varies.
when play begins:
	add Concession Stand to badspots of furry;
	add Concession Stand to badspots of guy;

Instead of resolving a Concession Stand:
	if foodvendor is 0:
		say "     Wandering through the bright lights of the state fair, you wander into a cluster of food stands advertising a variety of fried foods and sugary treats. Most are closed up right now, but one seems to be open with a strange figure manning the stand. This man is wearing a bright green suit with yellow trim and a yellow bowler hat. While you think he's human, his features seem to be strangely shifting, making it hard for you to pin down exactly what he looks like. At moments, you think you see a hint of lupine in his eyes or a feline muzzle, but then you can no longer discern these traits. For a second you think you see a broad tail, but then it is gone as if it were never there. Confused by all this, you miss the first part of his sales pitch, where he's trying to entice you into buying some of the snacks he has on sale. '...so like I said, not a penny from your pocket do I want for them. A delicious snack to satisfy your cravings and a cool drink to help you beat the heat,' he says as he motions to the tasty looking treats on display and the cans of soda chilling in an ice barrel.";
		say "     [bold type]'So, we got a deal?' he asks, holding out his hand.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			say "     As you take the strange salesman's hand, you can feel a tingle run up through your arm. The guy grins and hops onto his counter, sitting in front of you as he unzips his pants. He whips out his cock, and like the rest of him, it is difficult to discern its features. At times, you think it more feline, others more equine. Even as you wrap your lips around it and start sucking, the feel and taste on your tongue changes over and over again. You momentarily find yourself wondering when you started sucking his cock and why, but your mind can't hold onto it and instead you start puzzling over the form of his cock again. You felt a knot there for a few bobs of your head, but now it seems more like a pair of hemipenises instead. You keep sucking at his shifting cock, your hazy mind focused on its ever-changing shape and taste. Eventually, he grips your head and holds you down into his lap as his cock gets quite long and is stuffed down your throat, unleashing a thick rush of cum into your belly.";
			say "     The vendor releases you and flips back behind the counter. With a broad grin that seems momentarily feline, he passes you a tray of snacks and a can of soda. You head off, still in a bit of a daze, licking your lips as you try to figure out the flavour of cum you just guzzled down.";
			randominfect; [first one picks a valid critter while infecting]
			infect; [second one gives the same infection]
			increase carried of chips by 1;
			increase carried of soda by 1;
			decrease humanity of player by a random number between 8 and 6;
			if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 2 and 5;
			if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 1 and 4;
			increase foodvendor by 1;
		else:
			say "     Shaking your head and looking away from him, you try to refocus your mind. Wary of the strangely hypnotic figure, you move away, taking care not to look at him. You resolve not to return, lest your mind be ensnared again.";
			increase score by 1;
			now Concession Stand is resolved;
	else:
		say "     Your path meandering path through the fair ends up taking you back to those concession stands and you can see the green suited fellow still at his stand. He waves you over with a broad grin.";
		say "     [bold type]Shall you return to his stand?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if the player consents:
			if foodvendor is 1:
				say "     As you walk up to the stand, the gentleman sets another tray of fried treats and a can of soda on the counter, then leaps over it. You don't say a word as he whips out his cock again. Any thoughts of discussion or dealing with the man fade as you again bury his throbbing meat in your mouth and suck away at it. He chuckles softly and rubs your head, pumping into your mouth. You run your tongue over some feline barbs, then across a pointed, canine glans. It is thick, then long, then almost human, then unnaturally ridged. These changes continue as you try to figure out each new one, loving the ever-changing delight more and more. You put a hand to his ballsack and find it changing as well. The orbs inside always remain quite large and heavy, though their shape shifts subtly. But more apparent is the soft fur, no the hard scales, no the smooth skin, that covered his scrotum. This time your lustful cocksucking is rewarded when you feel a knot briefly locking his cock in your mouth and he sprays thick cum into your mouth. When the knot fades away as if never there, you pull your mouth back and swallow down the semen. You take your purchased wares with a lustfully clouded mind that lingers as you wander back into the flashy fair.";
				randominfect; [first one picks a valid critter while infecting]
				infect; [second one gives the same infection]
				increase carried of chips by 1;
				increase carried of soda by 1;
				decrease humanity of player by a random number between 10 and 20;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 3 and 6;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 2 and 5;
				increase foodvendor by 1;
			else if foodvendor is 2:
				say "     Knowing what is coming, you help the gentleman open his bright green pants when he moves over the counter. Pulling out his cock, you stuff it into your mouth with a soft moan, taking delight at having it in your mouth again. You love how it keeps changing for you, giving you a myriad of delightful tastes and sensations. He rubs your head and moans softly as you bob over it, running your tongue over it. You plunge it down your throat as it becomes thick and donkey-like, then suck firmly at it becomes small and lapine. Its draconic knobs and ridges stimulate your throat as he switches to thrusting into your mouth. 'Oh, you're so good at this,' he moans. 'You should come back again. Since you're my favorite customer, I'll give you something really special.'";
				say "     Rubbing his balls and sucking his cock, you lavish attention upon him, becoming more and more eager to please him. When he finally cums, his thick seed comes blasts from a large, leonine cock and you gulp it all down, rubbing your belly as his semen fills it. You get up and lick your lips, barely remembering to take the food items. You were so focused on getting the cum, you barely remembered the purchase at all this time.";
				randominfect; [first one picks a valid critter while infecting]
				infect; [second one gives the same infection]
				increase carried of chips by 1;
				increase carried of soda by 1;
				decrease humanity of player by a random number between 12 and 24;
				if "Strong Psyche" is listed in feats of player, increase humanity of player by a random number between 4 and 8;
				if "Weak Psyche" is listed in feats of player, decrease humanity of player by a random number between 3 and 6;
				increase foodvendor by 1;
			else if foodvendor is 3:
				say "     Your friend the vendor smiles very happily as you come over again. He doesn't bother to put out any food this time and hops fully over the counter. Putting his shifting hands (paws?) on you, he leans you over the counter and unzip his fly. Feeling him move to grope your ass, you moan softly and get your clothes and gear off. He runs his fingers (talons?) down your back and rubs his throbbing shaft against your rear, making you moan again.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
				if cunts of player > 0:
					say "     The vendor lines up his cock to your pussy, then sinks it into you while it is small and murine in form. It then shifts and becomes thick and equine, filling you deeply. This sudden change leaves you gasping in pleasure, writhing over his meat. It changes inside you again and again as he pounds away at you. His penis drives into you with a canine knot that pops tightly into you, then pulls out with feline barbs that stimulate you walls deliciously. It rubs your vaginal folds with draconic ridges, then pushes past your cervix as a slimy tendril[if cocks of player > 1]. His hands, feeling like velvety paws for a moment, grip your cocks and stroke them as he fucks you good and hard[else if cocks of player is 1]. His hand, feeling like a velvety paw for a moment, grips your cock and strokes it as he fucks you good and hard[end if]. You writhe under this ever-changing rutting, loving every unique moment of pleasure it gives you.";
				else:
					say "     The vendor lines up his cock to your tight asshole, then sinks it into you while it is small and murine in form. It then shifts and becomes thick and equine, filling you deeply. This sudden change leaves you gasping in pleasure, writhing over his meat. It changes inside you again and again as he pounds away at you. His penis drives into you with a canine knot that pops tightly into you, then pulls out with feline barbs that stimulate you walls deliciously. It rubs against your spread anus with draconic ridges, then pushes deep into your bowels as a slimy tendril[if cocks of player > 1]. His hands, feeling like velvety paws for a moment, grip your cocks and stroke them as he fucks you good and hard[else]. His hand, feeling like a velvety paw for a moment, grips your cock and strokes it as he fucks you good and hard[end if]. You writhe under this ever-changing rutting, loving every unique moment of pleasure it gives you.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
				say "     'You love that, don't you?' he says in a soft, alluringly feline voice as ear while pounding a new cock into you with each thrust. You respond by nodding your head eagerly. 'Of course, you'll want it again and again, won't you?' You can only nod all the more, agreeing with his virile, lapine tone. 'You want to stay here and be my slutty pet to get it all the time. Just think of it, being my slut, changing into different creatures for me to fuck. Always new pleasures to be had. You want that, don't you?' he rumbles in your ear, sounding strong and lupine now. Lost in the haze of his enthralling power, you can't help but nod vigorously, agreeing to become his, wanting to be used like this over and over again.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if waiterhater is 0 and hypernull is 0, LineBreak; [adds a break after the 'more']
				say "     Having given in to him, you can feel the last of your will draining away, succumbing to being your master's slutty pet. His to change. His to fuck[if cunts of player > 0]. His to breed[end if]. And he rewards you by driving his cock deep inside you, feeling like an equine's, but so much larger, perhaps an elephant? With his giant cock thrust deep inside you, he blasts his hot load into you, filling your [if cunts of player > 0]womb[else]ass[end if] with his virile seed. You moan and pant in delight as its volume bloats your tummy a little, making you feel so full and happy with so much of your new master's cum inside you.";
				wait for any key;
				now humanity of player is 9;
				increase foodvendor by 1;
				now tailname of player is "Shifting Pet";
				now facename of player is "Shifting Pet";
				now skinname of player is "Shifting Pet";
				now bodyname of player is "Shifting Pet";
				now cockname of player is "Shifting Pet";
				now scalevalue of player is 3;
				now bodydesc of player is "malleable";
				now bodytype of player is "ever-changing";
				now daycycle of player is 0;
				end the story saying "You submitted to the shifting man at the fair, becoming his slutty pet.";
				now battleground is "void";
				wait for any key;
				now skipturnblocker is 1;
				follow the turnpass rule;
				stop the action;
		else:
			say "     Remembering how the man's appearance has affected you in the past, you turn away and resolve not to return here, lest he affect your mind again and you accept another of his deals.";
			now Concession Stand is resolved;

when play ends:
	if foodvendor is 4:
		if "Male Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies. He changes you again and again, spending days or weeks as canines, felines, equines and every other creature. Almost fully human at times to completely animal at others. Any form his mind desires and always changing you to another before either of you can become bored of it. You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy. He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.";
		else if "Female Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies. He changes you again and again, spending days or weeks as canines, felines, equines and every other creature. Almost fully human at times to completely animal at others. Any form his mind desires and always changing you to another before either of you can become bored of it. You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy. He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience. You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time.";
		else if "Herm Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies. He changes you again and again, spending days or weeks as canines, felines, equines and every other creature. Almost fully human at times to completely animal at others. Any form his mind desires and always changing you to another before either of you can become bored of it. You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy. He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience. You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time. Your master takes to becoming a female or a herm at times so you may enjoy breeding her and the other pets on occasion.";
[		else if "Always Cocky" is listed in feats of player:
			say "***";
		else if "Always A Pussy" is listed in feats of player:
			say "***";
		else if "Single Sexed" is listed in feats of player:
			say "***";]
		else:				[all open]
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies. He changes you again and again, spending days or weeks as canines, felines, equines and every other creature. Almost fully human at times to completely animal at others. Any form his mind desires and always changing you to another before either of you can become bored of it. Not even your gender is fixed, changing from males to females and anything in between. You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy. He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience. You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time. Your master takes to becoming a female or a herm at times so you may enjoy breeding her and the other pets on occasion.";
		if hellHoundLevel > 0:
			LineBreak;
			say "     Lost in the lustful decadence of being a slutpet of any kind for your master, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream. But he does not forget. Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
			say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave to the countless foul hellhounds who guard the gates of Hell. Your body is changed by them to whatever suits their dark whims and your time in countless forms for your former master has served you well in preparing you for this unending task as the lustful slave to the demonic hounds. Your body is used in every foul, deviant act imaginable and responds lustfully to their every dark need or twisted whim";
			if cocks of player > 0:
				say ". Some of the fel beasts allow you to breed the hellhound bitches, but only when they are mounting you at the same time. Regardless of your form, you always sire pure hellspawn in these hellhounds. When they eventually grow strong, they join the others in slaking their sexual urges upon your mutable body until the ends of time.";
			else:
				say ". The fel beasts breed you incessantly, filling your womb with litters of their spawn. Regardless of your form, they are always pure hellspawn like their brethren. They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time.";
		stop the action;


Sweet Exchange is a situation.
The sarea of Sweet Exchange is "Midway".
when play begins:
	add Sweet Exchange to badspots of furry;
	add Sweet Exchange to badspots of girl;
	add Sweet Exchange to badspots of guy;
	add Sweet Exchange to badspots of humorous;

Instead of resolving a Sweet Exchange:
	say "     From up ahead, you hear a bunch of excited voices and decide to cautiously check it out. What you discover is a mob of pastel colored ferrets poinging up and down in front of a stall. Atop the stall are some sugar gliders covered in cotton candy fur. Both groups are yelling at one another, calling each other names though neither of them seems particularly upset.";
	say "     'Fork it over, you cotton-brained thief!' one ferret yells. 'Yeah!' 'Sugar snatchers!' 'Give it.' 'PopPopPopPopPop!' the others babble excitedly, many of them making grabby paws in the air towards the bottles and cans of pop the pink marsupials are dangling tantalizingly out of reach.";
	say "     'Pay up then, you soda jerks,' one sugar glider responds. 'We got this fair and square,' she adds, sticking out her tongue and looking insulted, while several of her friends giggle at that. 'Give us that sweet, sweet candy you've been hoarding, you carbonated tube rats,' another yells of the sugar gliders.";
	say "     'Candy ass! The Sweet Tooth is our place. We found the candy shop first, so the candy's ours too. Find your own!' a pastel green ferret yells up. 'Yeah!' 'We want pop!' 'Hey, I'll fuck you for a can.' 'Sugar snatchers!' the business of colorful ferrets calls up, several of them making rude gestures all the while grinning happily.";
	say "     These strange negotiations go on for a while like this, trading insults, offers of sex and rude gestures as they negotiate their trade of candy for cola. One of the sugar gliders even tantalizes the ferrets with a display of her fingering her two juicy cunts to get them to up their price by a few more bags of jelly beans. As you watch them, you can't help but feel that this rivalry's all in good fun for both sides, more some kind of contest or game they play rather than an actual feud.";
	if bodyname of player is "Sugar Ferret" and player is pure:
		say "     As the deal is coming to a close, the ferrets start passing up bags of candy to the sugar gliders as they dole out the pop in exchange. Seeing as you look like the other ferrets, you slip amongst the crowd and try to push your way to the front. With all the other greedy, excited ferrets mobbing to grab some of that delicious soda, it takes some effort to get to the front of the pack, but eventually you manage to snag some. A rush of giggling excitement runs through you at having gotten some more pop and it takes some effort not to drink it down right away. You instead slip away before any of the other ferrets succumb to their thirst or notice you among them.";
		increase carried of soda by 1;
	else if bodyname of player is "Sugar Glider" and player is pure:
		say "     As the deal is coming to a close, the sugar gliders start passing down the cans and bottles of pop in exchange for bags of candy. Seeing as you look like the others, you climb onto a nearby stand and make your way over to the roof of the booth with the rest of the sweet marsupials. The giggling girls pass around the collected bags of candy, stuffing them into their pouches. Unnoticed among them, you manage to get passed some of the candy as well, which you stuff into your [if cunts of player > 0]pouch[else]backpack[end if] before making your escape before they catch on.";
		increase carried of chips by 1;
	else:
		say "     As the deal is coming to a close, the two sides start the actual exchange, insults and greedy demands for more next time flying between them even as they do. Seeing as things are wrapping up, you decide it best to withdraw before the swap is complete and the two mobs disperse. With that many sugar-crazed mutants around, you're not sure if you'd be able to remained unnoticed without putting some distance between you and them while you can.";
	if CandyShop is not resolved:
		say "     As you go, you ponder the strange negotiations between the two groups and wonder if you might try looking for that [bold type]candyshop[roman type] the excitable ferrets mentioned.";
	now Sweet Exchange is resolved;


Caught Glider is a situation. Caught Glider is resolved.
The sarea of Caught Glider is "Midway".
when play begins:
	add Caught Glider to badspots of furry;
	add Caught Glider to badspots of girl;
	add Caught Glider to badspots of guy;
	add Caught Glider to badspots of humorous;

Instead of resolving a Caught Glider:
	say "     Hearing some commotion start up suddenly behind you, you turn around in time to see one of those cotton-candy-colored sugar gliders run across the laneway. In hot pursuit of her are a pack of the colorful, sugar-crazed ferrets. 'Sugar thief!' 'Come back here!' 'Don't let her get away, guys!' 'Candy-assed scoundrel!' they call out excitedly, laughing as they give chase. Following cautiously, you watch the sugar glider string them along for a while rather than just glide away, giggling as well at the fun and yelling taunts back at them.";
	say "     But when it looks like she's going to get away, she banks the wrong way and is jumped by several of the ferrets who doubled-back and were waiting atop the roof of one of the stalls. The fluffy pink girl is pulled to the ground and pinned down by the excited ferrets. 'Let's show her what we do to sugar thieves,' one says with a wide, toothy grin. 'Yeah!' 'Do it!' 'Thieves get fucked!' the others cheer.";
	say "     The sugar glider giggles at this and squirms playfully as the ferrets around her start groping her cute body. 'Oh, don't you dare, you soda jerks. Don't you dare stuff my sweet, juicy cunts,' she says while parting her legs and spreading the wet lips of her two pussies. 'You're such naughty hobs for even suggesting it,' she sniffs haughtily, grinning all the more even as she continues to frig herself.";
	say "     Of course, with such tantalizing teasing, the ferrets eagerly pile atop her, two lucky males getting the chance to stuff her cunts. A bright blue jill holds the sugar glider's head between her legs and from the moaning she's giving, the pink girl's long tongue is hard at work in the female ferret's cunt. The other ferrets break into little groups and pass around some celebratory soda, an impromptu orgy breaking out as they celebrate their victory. The manic tube rats change partners often and it's hard for you to keep your eyes on the sugar glider during it all, having several other sexy makeout sessions to watch. The whole thing gets you quite worked up and soon you're [if cocks of player > 0 and cunts of player > 0]stroking your cock[smn] and fingering your puss[yfn] while watching the rampant sex[else if cocks of player > 0]stroking your cock[smn] while watching the rampant sex[else if cunts of player > 0]fingering your puss[yfn] while watching the rampant sex[else]rubbing over your body and grinding your bare groin against the corner of the bench you're using as cover[end if][if cocks of player > 0 or cunts of player > 0]. You eventually masturbate yourself to orgasm while watching all the fucking going on[end if].";
	say "     Eventually, the ferret orgy starts to break up when it's noticed that they're out of soda again. As the business gets refocused on the pursuit of pop, they head off as an excited mob full of energetic poinging. Looking around as they head off, you're unable to spot the sugar glider, though there seems to be a new, hot pink jill among the group of sugar-crazed ferrets.";
	if lastcaffeine of Sweet Tooth - turns < 8:		[extend manic phase]
		increase lastcaffeine of Sweet Tooth by 4;
	else:
		now lastcaffeine of Sweet Tooth is turns + 4;
	now Caught Glider is resolved;


Section 6 - Beach Events

Beach Party is a situation. The level of Beach Party is 5.
The sarea of Beach Party is "Beach".
when play begins:
	add Beach Party to badspots of furry;
	add Beach Party to badspots of girl;

Instead of resolving a Beach Party:
	say "     Travelling along the beach, you crest a small dune to find a group of bright pink, dolphin girls splashing around in the water. They seem to be throwing a [if daytimer is day]sunny[else]nighttime[end if] beach party for themselves, giggling and playing around a large dolphin pooltoy. One runs over to a small cooler and pulls out a can of soda. After shaking it up, she sprays it wildly across her friend's body, causing her to squeak and laugh as she tries to block the foamy spray[if thirst of player > 30]. Feeling rather thirsty yourself, you find it disappointing they'd waste a drink like that[end if]. As the foam slides down her body, you notice that something is odd about their appearance[if daytimer is day]. In the sunlight, you can see that the dark cola running down her back can be seen through her[else]. In the moonlight, you can see the foam cola running smoothly down her body[end if]. These dolphin girls are inflatable creatures and completely empty save for air.";
	say "     It is at this point that you are spotted. And, eager for more fun, the dolphin girl on the beach tosses down the empty can and bounds her way towards you with a vapid smile on her face.";
	now dolphinflatablefight is 3;
	challenge "Bottlenose Toy";
	if dolphinflatablefight is 1:
		say "     With the first dolphin girl sent back to the water, she giggles and gets in a splashing fight with her friend who got the soda treatment to help clean her off. As this goes on, another of the dolphin girls prances out of the water with loud giggles to play with you as well.";
		now dolphinflatablefight is 3;
		challenge "Bottlenose Toy";
		if dolphinflatablefight is 1:
			say "     As the second is returning to the water, the one you believe was sprayed with the soda comes towards you. You don't really know how you can tell the identical dolphin girls apart, but you're fairly certain its her coming towards you with a big smile on her bottlenose snout.";
			now dolphinflatablefight is 3;
			challenge "Bottlenose Toy";
			if dolphinflatablefight is 1:
				say "     As she prances back into the water, the girls giggle and whisper amongst themselves. They grab onto the dolphin pooltoy floating in the water around them and together toss it towards you. It floats lazily in the air, drifting all the way up the dune to land near your feet.";
				now dolphinflatablefight is 4;
				challenge "Bottlenose Toy";
				if dolphinflatablefight is 1:
					say "     With the green dolphin sent back into the water, the girls start playing around with it. Some start fingering themselves and each other, rather worked after their amusement with you. With them distracted, you decide to avail yourself of the remaining contents of their cooler, taking the last two cans before heading on your way, the sounds of their playing fading behind you as you go past a pile of rocks.";
					increase carried of soda by 2;
					increase score by 10;
	if dolphinflatablefight is 2:
		say "     Even as the dolphin who just finished playing with you heads back to the water, several of the others are all on you at once. One has the last of the sodas. But rather than give you a drink, she sprays both cans all over you, wasting their contents while the girls giggle merrily. The dolphins all huddle around you and start licking all over your body to clean the sweet soda from you. Their rubber tongue glide across your skin and seek to tease you all over. Two set to work on your nipples[if breast size of player > 0], squeezing your breasts[end if]. Others kiss and lick at your face and nibble at your ears. Another, the soda girl, nuzzles her snout down between your legs, licking and kissing at your groin. Her tongue plays over your [if cocks of player > 1]sticky, throbbing [cockname of player] cocks[else if cocks of player is 1]sticky, throbbing [cockname of player] cock[else if cunts of player > 1]sticky, juicy pussies[else if cunts of player is 1]sticky, juicy pussy[else]sticky thighs and barren crotch[end if]. Another enterprising girl, after sucking your fingers clean one by one, guides your hand to her groin, getting you to finger her dripping pussy until you feel her slick juices soak your hand as she cums with delighted trills. All this attention makes you laugh and giggle like a girl, sounding a lot like the inflatable females surrounding you[if player is neuter]. Once you're finally all cleaned up,[else]. When you finally cum,[end if] the pink dolphins release you, heading back to frolic in the water again.";
		say "     Having the air-headed dolphin girls lavish so much attention onto you, you can't help but feel yourself fading away some, as if you're becoming more empty-headed and giggly like them. You rise to your feet easily, feeling as if buoyed by your own happy feelings and look over your body, fully that of an inflatable dolphin like those pretty girls";
		decrease humanity of player by 20;
		increase morale of player by 5;
		[puts Bottlenose Toy as lead monster for infection and impregnation]
		repeat with y running from 1 to number of filled rows in table of random critters:
			choose row y in table of random critters;
			if name entry is "Bottlenose Toy":
				now monster is y;
				break;
		now tailname of player is "Bottlenose Toy";
		now facename of player is "Bottlenose Toy";
		now skinname of player is "Bottlenose Toy";
		now bodyname of player is "Bottlenose Toy";
		now cockname of player is "Bottlenose Toy";
		attributeinfect;
		now tail of player is tail entry;
		now face of player is face entry;
		now skin of player is skin entry;
		now body of player is body entry;
		now cock of player is cock entry;
		if hellHoundLevel is 0:
			follow the sex change rule;
			follow the sex change rule;
		if libido of player < 60, now libido of player is 60;
		if humanity of player < 10:
			say ". With your mind fading away, you giggle happily and bound off into the water to play with your new friends as you forget yourself entirely and become a fun-loving beach toy.";
			wait for any key;
			end the story saying "There are no thoughts left in your air-filled head but that of playing at the beach.";
			now battleground is "void";
			wait for any key;
			now skipturnblocker is 1;
			follow the turnpass rule;
			stop the action;
		else:
			say ". You manage to keep your mind together enough to leave the dolphin girls and with their large dolphin toy to continue their partying. As you walk back along the beach, you can hear a few cries of disappointment, but the giggling and playing starts up again moments afterwards. You're quite sure they won't pursue you, but you decide to head back and wait for them to finish their beach party before passing this way again.";
	if dolphinflatablefight is 3 or dolphinflatablefight is 4:
		say "     You manage to make a break for it, running away from the waterfront. You can hear a few cries of disappointment, but the giggling and playing starts up moments afterwards. You're sure they won't pursue you, but you decide to head back and wait for them to finish their beach party before passing this way again.";


Section 7 - Mall Events

B&R is a situation.
The sarea of B&R is "Mall".

Instead of resolving a B&R:
	say "     While roaming around through the sewers, you hear the sound of arguing voices coming towards you. Being cautious, you duck into the shadows and watch the pair approach. They are an odd pair of big, muscled brutes carrying large weapons. The first is a warthog wearing shoulder pads and a torn, red vest, with several hand grenades within easy reach on it. His sharp, white tusks, hoop snoot-ring and bone necklace give him a menacing appearance despite the purple mohawk and sunglasses. The other is a rhino in a yellow wife-beater and cargo pants with a bandoleer of bullets across his chest, as well as a grenade of his own. While he clearly has a bit of a gut on him, his arms are even more muscled than his companion's.";
	say "     It's hard to follow what exactly they're arguing about as they pause near your hiding place. Most of the time, it sounds like they're searching for turtles, intent on violence, but the rest of the time they're trying to remember an old cartoon they watched as kids. Eventually, they make a decision on which way to go next and continue on. Rather than interrupt the well-armed, volatile and clearly crazy duo, you quietly let them pass before moving on.";
	Now B&R is resolved;


Section 8 - Zoo Events

Slumbering Giant is a situation.
The sarea of Slumbering Giant is "Zoo".
when play begins:
	add Slumbering Giant to badspots of guy;

Instead of resolving a Slumbering Giant:
	say "     Going over a small rise, you are met with an impressive sight. Lying down in one of the smaller pasture paddocks is a giant human being. You'd guess he's about 40 feet tall and he takes up a good part of the grassy area he's sleeping in. You'd not spotted him until now because his chosen napping spot is a depression behind the hill you're on. He's wearing a large tan jacket that's scaled to his size and nothing else. He groans softly and rolls over, giving you a view of his enormous cock, semi-hard in his sleep. Yawning wide, he gives his enormous balls a scratch and his cock a quick rub before his hand slides back to the ground with a heavy thud. Given the size of he and knowing how grumpy you can be if someone wakes you up from a nap, you quietly turn around and sneak off, hoping he won't wake up until you're long gone from here.";
	now Slumbering Giant is resolved;


My Own Zoo Playset is a situation. The level of My Own Zoo Playset is 12.
The sarea of My Own Zoo Playset is "Zoo".
when play begins:
	add My Own Zoo Playset to badspots of guy;

Instead of resolving a My Own Zoo Playset:
	say "     While moving through an area of empty pens and habitats, you turn hear some activity coming from the opposite side of a thick cluster of trees. Cautiously peering out from some bushes at the edge of the copse of trees, you are met with a startling sight. There's a giant of a man wearing a zookeeper's jacket. He's probably over 40 feet tall and is sitting cross-legged on the ground with a couple a cars and zoo maintenance vehicles scattered around him. Given how the grass is all torn up with tire tracks, it looks like he's been pushing them around like they're toys.";
	say "     And speaking of toys, he's also got an assortment of animal mutants in an enclosure. Clearly frightened, most of them are huddling in small groups or in what dark corners they can find. Scattered among them are others you'd almost mistake at first to be animal print balls, were they not huge and rolling around slightly as they squirm their arms and legs weakly. Bloated like cum-filled balloons, they've clearly been left rounded by the giant as part of some more sexual playing with these gathered [']toys['].";
	say "     At the moment, he's got a tigertaur and a panda girl in his hands, pressing them up against one another rather roughly. It's clear that they're too scared to kiss, or fight, or make out, or whatever he has in mind, but he doesn't seem to notice, having a simple grin on his face. As this is going on, you spot a door open very slowly on one of the battered cars and a rather nervous zebra pokes his head out. Confirming that the giant's occupied, he hops out of the car and staggers off as quick as his battered body can take him. Unfortunately for all involved, he doesn't get far before he's noticed by the giant. The startled giant tosses the two in his hands back into the enclosure, dropping them about 20 feet and leaving them dazed. He lumbers to his feet and charges after the zebra, who is running right for the nearest cover... the trees you're hiding in right now!";
	let T be a random number between 1 and 20;
	if "Stealth" is listed in feats of player, increase T by 3;
	if T < 9:
		say "     Knocking over several trees in his search, the giant spots you trying to hide. Forgetting about the zebra, he turns his attention on you.";
		challenge "Human Giant";
	else if T < 17:
		say "     Knocking over several trees in his search, the giant catches sight of the zebra trying to hide and grabs him roughly with both hands. The zebra struggles briefly, but is clearly too weak to put up much of a struggle and soon gives up with a weak sigh. The giant shakes him around roughly, telling him he's a bad zebra for trying to run away from playtime. Sitting back down, he buries the striped equine under his enormous manhood and reaches into the enclosure to grab a fresh pair of hapless victims. He sticks them in a car which has had its roof torn clean off and starts to make the car do doughnuts on the grass as the terrified pair scream and scramble to buckle up while being knocked around.";
		say "     Having seen plenty and afraid of being caught by the giant while he's in the mood to [']play['] with the animals, you back out of the trees and try to get some distance between the two of you.";
	else:
		say "     As the giant starts shoving over trees as he searches through the thicket of trees, you spot the zebra running towards you. Grabbing his wrist as he moves past, you pull him in under the branches of a couple of the fallen trees while the giant's looking at the other end of the copse. Keeping your hand over his muzzle you shush his surprised cry and wait with him until the giant finally either gets distracted by something else or just plain gives up. Hearing him thump back towards his other collected [']toys['], you get the zebra to move quietly with you to the other side of the (now mostly uprooted) trees and go as quickly as he can move to get some further distance from the giant. The zebra thanks you for your help, giving you a bottle of water he'd stashed before the two of you head your separate ways.";
		increase carried of water bottle by 1;
	now My Own Zoo Playset is resolved;


Section 9 - Sealed Events

Destroyed Records is a situation.
The sarea of Destroyed Records is "Sealed".

Instead of resolving a Destroyed Records:
	say "     Wandering through the darkened halls of the underground lab complex, your attention is drawn towards the stale smell of smoke and ashes. Following your nose, you find your way into records room that's been purposefully destroyed. There is a large char mark and a pile of ashes on the middle of the floor. It seems someone, probably when things started to go downhill, decided to burn all the records of what was really going on down here. You sift through the mess, finding the charred remains of what were probably once data CDs and DVDs among the mess. You search through it carefully, but they were quite thorough and you're unable to find anything scraps of unburnt paper with more than a few legible letters on them.";
	increase score by 1;
	now Destroyed Records is resolved;

Assorted Events ends here.
