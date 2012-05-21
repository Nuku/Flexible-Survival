Version 4 of Assorted Events by Stripes begins here.
[version 4 - Beach Party event added ]

"Adds a batch of random events to Flexible Survival scattered around the city."


Section 1 - Ninjas?

Fallen Kunoichi is a situation.
The sarea of Fallen Kunoichi is "Museum";
when play begins:
	add Fallen Kunoichi to badspots of furry;

Instead of resolving a Fallen Kunoichi:
	say "     Passing through the halls of the museum, you come across the aftermath of what was an epic battle.  Many of the displays here are knocked over or shattered by what must have been powerful blows by a great weapon.  You can see gouges cut deep into the walls, many stained with blood.  Smaller darts and shuriken are embedded in the wall as well.  The floor is marked with several blood stains and cum puddles, as well as soot marks from flash powder or smoke bombs.  Clearly many battled a great foe here.";
	say "     Half-buried in the ruins of one display, you find the grisly remains of a feline ninja cleaved in two at the waist.  Drawing off its mask, you see her face feminine locked in an expression of great pain and horror.  Something about her death gaze disturbs you deep inside and you are unable to bear the sight of it.  You brush her eyes shut and pull the mask back down over her feline face.  Beside the fallen kunoichi is her weapon, a bo staff with ornate metal tips.  Cautious of any infected blood, you quickly check her [italic type]shinobi shozoko[roman type], but find nothing else of use.";
	say "     Bo staff obtained.";
	add "bo staff" to invent of player;
	increase score by 5;
	Now Fallen Kunoichi is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"bo staff"	"An ornate fighting staff."	2	bo staff

bo staff is an armament. It is part of the player. It has a weapon "[one of]your bo staff[or]your fighting staff[or]your staff[or]your bo staff with a hard whack[or]the long pole[or]your staff with a fast jab[at random]". The weapon damage of bo staff is 3. The weapon type of bo staff is "Melee". It is not temporary.


Suddenly Ninjas is a situation.
The sarea of Suddenly Ninjas is "Museum";
when play begins:
	add Suddenly Ninjas to badspots of furry;
	add Suddenly Ninjas to badspots of guy;

Instead of resolving a Suddenly Ninjas:
	say "     Suddenly!  Ninjas!  Everywhere!";
	say "     You are travelling through the museum, minding your own business when suddenly a pack of ninjas leap out to attack you.  Ninja stars are flying through the air and the dark costumed cats are leaping in to attack you from all sides, brandishing an array of weapons taken from the Japanese history exhibit.  There are too many to try fighting them all.  They would bear your down by sheer numbers and countless poisoned shuriken.  You are forced to try fleeing, but several of the felines leap in to fight you.  You dodge and run, but one is able to make an attempt to stop you, fighting you even as you both run down the hall.";
	challenge "Ninja Cat";
	if lost is 1:
		say "[lostninjahorde]";
	otherwise:
		say "     Having escaped the first as you fought him while running side by side down the hall, you continue your run through the museum.  You dive past a few displays and leap over a small satyr party, knocking over their large ewer of wine.  This causes some distraction as the satyrs get up and turn on the felines, letting you gain a little distance before another one is able to make an attack on you.";
		challenge "Ninja Cat";
		if lost is 1:
			say "[lostninjahorde]";
		otherwise:
			say "     With another ninja evaded and several left behind to deal with the angered satyrs, you duck through the aerospace wing.  Glancing up, you can see the suspended planes and banners sway, telling you there is at least one left up there.  You try leaping over a display cordon and running past the display when the ninja makes his move.";
			challenge "Ninja Cat";
			if lost is 1:
				say "[lostninjahorde]";
			otherwise:
				say "     When that feline withdraws after his defeat, you dive through an employee access door and rush down the passage, coming out in an Early American exhibit.  Uncaring about the value or frailty of the items, you grab several period pieces of furniture and toss them helter-skelter in front of the doorway to block the approaching ninja horde.  Knowing that your impromptu barricade will only hold them off for a short time before they push through or go around, you quickly run back to the relative safety of the museum lobby.";
				increase score by 15;
	Now Suddenly Ninjas is resolved;

to say lostninjahorde:
	say "     With the victorious ninja having finished with you, several others move in to have their way with you as well.  You are groped and fondled by the felines who tease and excite you to arousal and climax again and again.  Their skillful paws roam all over your body while they take turns filling all your holes.  You are pumped full of feline cum again and again by the sexy ninjas who never say a word as they fuck you completely senseless.  Lost in the lust of the ninja lovers, you eagerly take it all.  In the end, you feel as if several cups worth of cum have been pumped into you from every hole and even more coats your body.  You are left panting on the floor in a large puddle of musky semen, moaning as you roll around in it and leaking more cum out to add to it.";
	increase libido of player by 25;
	if libido of player > 100, now libido of player is 100;
	decrease humanity of player by 18;
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Ninja Cat":
			now monster is y;
			break;
	say "[impregchance][impregchance]";
	infect "Ninja Cat";
	infect "Ninja Cat";


Section 2 - Outside Events

Losing It is a situation.  The level of Losing It is 7.
snowmeowfight is a number that varies.
when play begins:
	add Losing It to badspots of furry;
	add Losing It to badspots of guy;

Instead of resolving a Losing It:
	say "     Travelling through the city you see a stumbling figure with a skirt and a handbag in an alley.  Hoping to find another survivor, you rush over, but are disappointed by her current state.  Her face is reshaping itself into a feline muzzle while fur spreads over the last of her uncovered skin.  But most striking of it is the large erection and hefty balls propping up her... no, his skirt.  Suffering a complete gender swap from the infection, the poor woman has become a snow leopard man.  You try to help him along while he complains about the wretched heat and pants.  Then something changes in his eyes and he looks at you with an animalistic thirst.  He grabs you tightly and tries to wrestle you down, his mind unravelling even as you try to help him.  You escape his grip, but are left with facing the lustful snow leopard.";
	now snowmeowfight is 0;
	challenge "Snow Leopard";
	if snowmeowfight is 1:
		say "     Having dealt with the lustful feline, you get ready to leave, but notice the purse next to the tattered remains of the skirt that was torn off in the fight.  You take a moment to examine these last remnants of the woman's feminine identity.  You carefully avoid several spots of snowmeow cum, whether his or that of the one who changed her, you cannot say, as you shift the clothes around.  You are more successful with her purse, finding a canister of mace.  It seems she failed to use it in time and paid the price.  You mentally remind yourself to use it before things get out of hand and you end up like her... him.";
		say "     Pepperspray obtained.";
		add "pepperspray" to invent of player;
		increase score by 5;
	otherwise if snowmeowfight is 2:
		say "     After having been beaten by the beautiful feline, you stagger off in a bit of a lustful haze.  Something about the whole experience leaves you lustful and eager for more.";
		increase libido of player by a random number from 3 to 8;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 2;
		if libido of player > 100, now libido of player is 100;
	otherwise:
		say "     Escaping the crazed feline, you dash off into the city, deciding to search somewhere away from the newly transformed and lustful feline.  Perhaps once it has sated its lusts from its transformation it will wander off and you can return to searching.";
	Now Losing It is resolved;


CatsandDogs is a situation.
when play begins:
	add CatsandDogs to badspots of furry;

instead of resolving a CatsandDogs:
	say "     As you travel through the city, you come across a pair of old apartment buildings side by side.  The windows are open and the tenants are yelling at one another.  One building appears to be populated entirely by cats and the other by dogs.  They are growling, yowling and making rude gestures at one another.  They jeer at one another and toss trash across the alley dividing their buildings.  Focused on their mutual hatred, they don't notice you, but you do steer clear, certain that you'd not be able to fight off the horde populating either building... or worse, end up as some sort of prize in a battle between them.  You make note of the location and remind yourself to keep away, finding another path around this neighbourhood.";
	now CatsandDogs is resolved;


Tour Bus is a situation.  The level of Tour Bus is 6.
when play begins:
	add Tour Bus to badspots of furry;

instead of resolving a Tour Bus:
	say "     Your path through the city is interrupted by an overturned tour bus.  It seems there was quite an accident here, with several cars piled up around the bus as well.  You do manage to weave your way through the mess, but it takes some time.  You remind yourself not to take this street again next time when passing through this area.  You head over to check out the bus, hopeful to find something of use in there.  You climb up onto a car, then get on the bus's side.  Looking in the windows, you can see several bags and packs, but you also see large amounts of semen and scratches to the seats.  Regardless of how the accident came to pass, it seems like the occupants were all transformed into more sexual monsters.  Certainly, it would not be safe to enter the bus, given how soaked in cum everything is.";
	say "     You hop back onto the car, then onto the ground.  You start to head on your way, mentally reminding yourself not to take this street again when passing through this area, when you hear a growl from behind you.  Crawling out of the bus, you see a large, cougar herm wearing a cap and coat that leads you to suspect this was once the bus driver.  It growls again and hops onto the ground, coming at you quickly.";
	challenge "Cougar";
	say "     Your encounter with the cougar creature over, you continue on your way, leaving it and its unusual den behind.";
	now Tour Bus is resolved;


Dropped Handbag is a situation.

Instead of resolving a Dropped Handbag:
	say "     Passing through the city, you find a dropped handbag with torn scraps of clothes around it.  Given the messy stains on the torn dress, it seems whoever owned the bag met a rather sticky fate.  Do you want to search it?  It doesn't seem like they'll be needing it anymore.";
	if the player consents:
		let T be a random number between 1 and 100;
		if T < 41:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum.  You do manage a lucky find and dig out a small canister of pepperspray.";
			add "pepperspray" to invent of player;
			increase score by 5;
		otherwise if T < 81:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum.  But aside from the bottle of water at the top of the bag, you don't get anything of use.";
			add "water bottle" to invent of player;
			increase score by 1;
		otherwise if T < 91:
			say "     Searching the handbag, you toss aside the makeup, tissues, pens, safety pins, lipstick, mirror, and loads of other little things you don't really need in this crisis, though you do pocket the gum.  But that's about all you find of use in the dropped handbag.";
			increase score by 1;
		otherwise:
			say "     You open the bag and put your hand in to rummage through its contents, but are met with a sticky surprise.  Pulling it out, you find your hand covered in wet, sticky cum.  You can feel the tingles from the infected cum on your hand.  Someone, possibly the bag's original owner, filled it with their cum and left it for someone like you to find.";
			say "[line break]";
			sort table of random critters in random order;
			repeat with X running from 1 to number of filled rows in table of random critters:
				choose row X from the table of random critters;
				if area entry matches the text battleground:
					now monster is X;
					break;
			choose row monster from the table of random critters;
			infect;
			decrease humanity of player by 5;
	otherwise:
		say "     Deciding not to bother, you continue on your way.";
	now Dropped Handbag is resolved;


Section 3 - Diego Events

Trickster is a situation.  The level of Trickster is 4.
wolffight is a number that varies.
when play begins:
	add Trickster to badspots of furry;
	add Trickster to badspots of guy;
	add Trickster to badspots of girl;

instead of resolving a Trickster:
	say "     As you are travelling along, you spot some activity in the distance.  At first, fearing that it is another band of monsters, you take cover.  But a few moments later, you discover it to be a small team of soldiers moving stealthily through the city.  They may be doing recon or on some other kind of mission, but you may be able to get assistance, or even rescued by them.  But even as you're walking up and trying to decide how best to approach them, see a coyote [if Diegochanged is 0]man[otherwise if Diegochanged is 1]herm[otherwise]woman[end if] carrying a large sack dash into their midst[if diegotalk > 0 and Diegochanged is 0].  You recognize Diego, the coyote trickster, and have to wonder what he is up to this time[otherwise if diegotalk > 0].  You recognize Diego, the coyote trickster, and have to wonder what she is up to this time[end if][if Diegochanged is 0].  He[otherwise].  She[end if] passes to bag quickly to a flabbergasted soldier with a quick 'Here, hold this' before continuing on with a happy chuckle.";
	say "     As the stunned soldiers watch the coyote run off in the direction of the city park and look at the mysterious sack, you hear some approaching howls.  If you're going to get out of here, you'll have to do it right now.  Do you move to join the soldiers or run and hide to watch what happens? (Y=Stay, N=Run)";
	if the player consents:
		say "     You dash up to the soldiers and pull out your weapon.  Knowing your luck, trouble's on the way.  You run up to the soldier left holding the bag.  Your sudden appearance after the coyote's keeps him off guard long enough to pull the sack from him, finding it stuffed with grey fur inside.  You barely have a chance to look up when a large pack of wolves come running around the corner, slamming into the unexpected team of soldiers.  Several of the men are knocked down immediately.";
		let the bonus be (( the dexterity of the player minus 10 ) divided by 2);
		let the dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] -- [dice plus bonus] vs 15: ";
		if dice plus bonus is greater than 15:
			say "     You toss the bag of fur in the face of one wolf about the slam into you.  He has large sections of his pelt shaved off, exposing wide patches of pink skin.  The bagged fur is sent flying, floating in the air all around the area.  You cough and brush it out of your eyes in time to see another wolf moving in to attack you.";
		otherwise:
			decrease hp of player by 10;
			say "     You are slammed into by one of the wolves and knocked to the side, taking 10 damage.  You can see as he continues past you that this wolf is the largest of them all and probably the pack alpha.  He has large sections of his pelt poorly shaved off, exposing wide patches of pink skin.  The bagged fur is sent flying, floating in the air all around the area.  You cough and brush it out of your eyes as you get back to your feet in time to see another wolf moving in to attack you.";
		now wolffight is 3;
		challenge "Feral Wolf";
		if wolffight is 1:
			now wolffight is 3;
			say "     You manage to dispatch one of the wolves and look around, seeing several of the others dealing with the struggling soldiers.  Some of the men have already been taken down, but others are still putting up a fight against the lupine pack that's suddenly surrounded them.  You try to make your way free and charge a second wolf at the edge of the pack.";
			challenge "Feral Wolf";
			if wolffight is 1:
				now wolffight is 3;
				say "     Having beaten the second wolf, you find yourself at the edge of the fight start to move away.  Most of the soldiers are down now, many of them pounced by the wolves.  You can see several of the men being facefucked or buggered by the feral wolf creatures.  These soldiers are starting to show signs of transformation, gaining ears, tails, muzzles or fur.  Before you can make a break for it, you are spotted by the wolfpack leader.  Switching from standing upright onto all fours, the shaved wolf recognizes you as the one with the bag and growls.  He leaps across some moaning piles of wolf and man to close on you to fight.";
				challenge "Alpha Wolf";
				if wolffight is 1:
					say "     Having beaten the pack alpha and sent him packing, the wolves['] assault on the few remaining soldiers wavers.  With a howl from their leader, they snatch up the fallen, partially transformed soldiers and drag them off into the city.  They'll be taking them back to their den to finish mating them until they're fully members of the pack.  Too tired from the fight, you and the other soldiers are in no shape to give pursuit.  As the last of the wolves are running off, you hear some distant laughter, probably from the coyote trickster who enjoyed the show while it lasted[if Park Entrance is unknown].  You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
					say "     The remaining soldiers thank you for the assistance.  Because of the cloud of wolf fur, nearly all of them have picked up ears or tails, but their humanity is mostly intact thanks to your help.  They'll have to scrub their recon mission and return to base.  You're told they can't take you with them at this time, but they do give over some of their supplies, as they'll re-equip at the base earlier than planned.  They take their guns and ammo, but one of the few who remained fully unchanged passes you his combat knife with a silent nod.  After packing the food and water away and strapping on the knife, you're given another round of thanks before they head off.";
					say "     Food, water bottle and combat knife obtained.";
					add "food" to invent of player;
					add "water bottle" to invent of player;
					add "combat knife" to invent of player;
					increase score by 20;
		if wolffight is 3:
			say "     Deciding to give up on fighting entirely, you push your way free of the wild fight.  You hop over one wolf who's mounted one poor soldier and are almost knocked down as your pursuer runs into a soldier getting up.  Finding an [']eager volunteer['] for his cock, the wolf drives it into the soldier's mouth and starts pounding away.  The wolves get the last of the soldiers as you're turning into an alleyway.  You can hear the laughter of what is probably the coyote trickster, amused by the results of his prank[if Park Entrance is unknown].  You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
			infect "Feral Wolf";
		if wolffight is 2:
			if cunts of player > 0:
				say "     Before you can get back up, you are mounted by one of the other wolves, moaning loudly as he drives his thick cock into you.  He fucks you hard and fast, eager to fill you with cum and pups before moving on to another victim.  His wild, feral rutting is a mix of pain and pleasure as that thick cock pumps in and out of your wet hole.  'Mmm... my bitch...' he rumbles softly, and you are surprised to hear one of the feral wolves speak.  You respond to his words and press your ass back, moaning louder as he pounds into your abused pussy.  Your excitement builds, finally peaking when he unleashes his hot, lupine seed into you with a howl[if cocks of player > 0].  Your cock throbs and sprays its load onto the pavement as you're stuffed full of creamy wolf cum[end if].  Withdrawing, he licks your cheek and growls softly before pouncing on a soldier, tearing away some partially shredded clothes to uncover a fresh pussy for him to fuck.";
				say "[impregchance]";
			otherwise:
				say "     Before you can get back up, you are pushed down by one of the other wolves.  He pushes your clothes aside with his paws, scratching at your back with his claws, then growls and mounts you.  You can feel his wet, sticky cock slide against your ass before finding your tight pucker and pushing it open.  You moan loudly as he drives his thick cock into you.  He fucks you hard and fast, eager to fill you with cum before moving on to another victim.  His wild, feral rutting is a mix of pain and pleasure as that thick cock pumps in and out of your tight hole.  'Mmm... my bitch...' he rumbles softly, and you are surprised to hear one of the feral wolves speak.  You respond to his words and press your ass back, moaning louder as he pounds into your abused asshole, pressing that lupine shaft against your prostate.  Your excitement builds, finally peaking when he unleashes his hot, lupine seed into you with a howl.  Your cock throbs and sprays its load onto the pavement as you're stuffed full of creamy wolf cum.  Withdrawing, he licks your cheek and growls softly before pouncing on a soldier, tearing away some partially shredded clothes to uncover a fresh pussy for him to fuck.";
			say "     Just as your head is starting to clear, another wolf moves up to you, sticky cock hanging under him.  Seizing what may be your only opportunity to escape, you grab a fallen, half-transformed soldier beside you and press his growing muzzle onto the wolf's cock.  He latches onto it hungrily and starts licking and sucking.  Distracted, the wolf turns his attention on the changing soldier and thrusts into his muzzle.  Crawling carefully past a few more distracted wolves, you make it to the edge of the orgy and dash into a nearby building.  You rush out the back, having to leave the soldiers to their fate as bitches for a wolf pack.  A fate you almost shared.  As you run off, over the sounds of mating wolves, you catch the faint laughter of someone, probably the coyote trickster, enjoying the results of his prank[if Park Entrance is unknown].  You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
			infect "Feral Wolf";
	otherwise:
		say "     Turning tail before the coyote's trick is set off, you dash into a burned out shop and watch from there.  The howls get louder and a pack of wolves come rushing around the corner, right into the soldiers.  Several of the soldiers are bowled over as the wolves weren't expecting obstacles.  At the head of the pack is a large wolf with large, poorly shaved patches his pelt, showing the pink skin beneath.  The bag, sent flying by the collision, flips in the air and opens, spilling out what must be the shaved wolf's fur.  Deciding that the soldiers must ultimately be responsible for his shaving, he and the other wolves attack.";
		say "     The soldiers, unprepared for such an assault, are soon born down by the powerful wolves and wild rutting ensues.  You watch as soldiers are forced to suck wolfcock or are buggered by the angry pack.  The humans begin to transform, gaining fur, ears or tails as the lupine infection starts to spread.  As some start to gain pussies, these new holes are stuffed full of wolfcock to breed pups in them.  When the soldiers succumb enough to stop resisting, they are dragged off by the wolves, probably to their den to finish mating with them until they're fully members of the pack.  The remaining wolves start sniffing around the area, spreading out.  Worried they'll pick up the trail of your scent you think it best to make your escape.  You slip out the back of the store and make a break for it, sure that you could hear some laughing in the distance[if Park Entrance is unknown].  You may be able to track down the coyote if you can find a way to the Park Entrance[end if].";
		increase score by 5;
	now wolffight is 0;
	now Trickster is resolved;


Table of Game Objects (continued)
name	desc	weight	object
"combat knife"	"A large combat knife in a belt holster."	2	combat knife

combat knife is an armament. It is part of the player. It has a weapon "[one of]your large knife[or]your combat knife[or]the large blade[or]your combat knife with a strong thrust[or]your large blade with a quick slash[at random]". The weapon damage of combat knife is 6. The weapon type of combat knife is "Melee". It is not temporary.


Prank Aftermath is a situation.  Prank Aftermath is resolved.  The level of Prank Aftermath is 7.
prankevent is a number that varies.
when play begins:
	add Prank Aftermath to badspots of furry;
	add Prank Aftermath to badspots of hermaphrodite;

instead of resolving a Prank Aftermath:
	say "     As you travel through the city, you hear some moaning mewls coming from up ahead.  On your guard, you sneak forward and take in the sight of several of those puma creatures playing with what was once a team of six soldiers.  The cougars have the men pinned to the ground and are having their way with them.  As you watch, the cougars force them to nurse from their breasts or suck their cocks until they develop a wet, new pussy for the herm kitties to fuck.  Outnumbered, the soldiers have no chance to escape and there are several felines waiting for their turn to sate their lusts on the transforming humans.";
	say "     Not normally native to this part of the city, you start to wonder how such a large band of the felines got here when you spot one of them eating a large fish from a basket while it waits for its next turn with the new breedtoys.  Remembering that you told the Diego an idea you had about using fish to lure some of the felines around for a prank, it seems you've run into the aftermath of your idea";
	if libido of player - humanity of player < -25:
		say ".  Being too far gone into your lustful urges and the infection taking over, you feel some remorse for your actions, but are too aroused by what you see to do anything but watch.";
		decrease humanity of player by 10;
		decrease morale of player by 5;
		increase libido of player by 20;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 5;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 5;
		if libido of player > 100, now libido of player is 100;
	otherwise:
		say ".  You find the sight strangely arousing, though your guilt over assisting in the infection of these soldiers does sadden you.";
		decrease humanity of player by 2;
		decrease morale of player by 25;
		increase libido of player by 8;
		if "Cold Fish" is listed in feats of player, decrease libido of player by 2;
		if "Horny Bastard" is listed in feats of player, increase libido of player by 2;
		if libido of player > 100, now libido of player is 100;
	say "[line break]";
	if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
	say "     As you watch, the last of the soldiers is made into a herm with a pair of swelling breasts on her chest and a pair of feline ears.  She is pushed into the arms of two of her former teammates.  Too far gone in their own infection, they push her onto all fours, one taking her virgin pussy with her feline cock and the other forces her cock into his mouth.  As they fuck her, all three continue to change until they are full puma herms, fucking with mrowls of lustful delight.  The former soldiers cum hard into their ex-teammate, filling her new pussy and feline muzzle with their hot cum.  Watching this arousing show, you can't help but get turned on and start masturbating.  As you climax, you groan loudly and cum hard, unable to stop yourself.  But this doesn't go unheard and several of the powerful felines come after you.  Having just cum, you barely manage to get yourself back on your feet and ready to fight by the time the first one reaches you.";
	say "[line break]";
	challenge "Cougar";
	say "     Recovering from your encounter with the first feline, you try to get away, but have to deal with another who moves to bar your path.";
	say "[line break]";
	challenge "Cougar";
	say "     With the second battle over, the other pumas move in to capture you.  You manage to dive into a building and bar the door with a filing cabinet.  As they pound at it, you find another exit from the building and weave through some side streets to make sure that you've lost the lustful felines.";
	now Prank Aftermath is resolved;


Section 4 - Park Events

Lovers Bench is a situation.
The sarea of Lovers Bench is "Park";
loversbench is a number that varies.
when play begins:
	add Lovers Bench to badspots of furry;
	add Lovers Bench to badspots of guy;
	add Lovers Bench to badspots of girl;

Instead of resolving a Lovers Bench:
	if loversbench is 0:
		say "     While travelling through the park, you come across a pair making out lustfully on one of the benches.  The male atop is a anthro wolf with grey fur and a strong build.  The female stretched back on the bench is a spotted feline, perhaps an ocelot.  Their clothes are scattered around the bench and seem partially torn.  You hang back, wary to approach but unwilling to look away from the sight.  You watch as the wolf eases his thick cock into the smaller woman's pussy, making her yowl in delight.  She puts her arms around him and grabs his rear, pulling him into her with each thrust he makes.  The ocelot licks and kisses at the wolf's neck and he brings a paw to caress her breast while the other digs into the back of the wooden bench.  When the wolf finally drives his lupine knot into the feline's cunt, they growl passionately, cumming hard.  You do as well, having started playing with yourself at some point while peeping on the spectacle.  Finished, the wolf sags atop the feline as they start licking and kissing one another.  The ocelot's markings start to spread into the wolf's pelt while her fur takes on a more greyish tint overall.";
		say "     You quietly walk away, ashamed of your peeping and quite certain they have succumb too far to be safe to approach.  Even if currently sated, they are both equally infectious.  But at least they are a couple.";
		increase score by 1;
		increase loversbench by 1;
	otherwise:
		say "     Your meandering through the park brings you back to the lovers['] bench and find them gone, though their scattered clothes remain.  This helps confirm your earlier guess that they'd succumbed.  The bench has quite a few scratches and claw marks on it, clearly having been used by many others since the outbreak, as well as older, carved graffiti hearts.  You suspect this bench has been a make-out spot for quite some time, being in a more secluded area in the park.  Certainly there is a strong scent of sex hanging around it, even in the open air of the park.  Remembering the lovemaking you witnessed here, you start to get turned on.";
		if scenario is "Bunker" or scenario is "Caught Outside":
			say "     You focus on checking out the scattered clothes for anything of use.  The clothes, as you saw, are a little torn, perhaps from when they were first infected or in their rush to mate at the bench.  Their food has been reduced to scraps and crumbs and their drink bottles are empty.  There is a small pocketknife in the wolf's khakis.  It is no better than your own, so you toss it aside.  The woman's jeans do yield a small canister of mace, which you store somewhere within easy reach.  You leave the rest, finding nothing else of use to you.";
			say "     Pepperspray obtained.";
			add "pepperspray" to invent of player;
			increase score by 5;
		otherwise:
			say "     You focus on checking out the scattered clothes for anything of use.  The clothes, as you saw, are a little torn, perhaps from when they were first infected or in their rush to mate at the bench.  Their food has been reduced to scraps and crumbs and their drink bottles are empty.  There is a small pocketknife in the wolf's khakis.  Thinking it may be a useful tool or perhaps a weapon in a pinch, you take it.  The woman's jeans do yield a small canister of mace, which you store somewhere within easy reach.  You leave the rest, finding nothing else of use to you.";
			say "     Pocketknife and pepperspray obtained.";
			add "pocketknife" to invent of player;
			add "pepperspray" to invent of player;
			increase score by 10;
		if companion of player is pink raccoon:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Raccoon":
					now monster is y;
					break;
			if cocks of player > 0:
				say "     As you're finishing up your scavenging, your pink raccoon pet takes your hand in his and pulls you over to the bench with a soft chirr.  He smiles and kneels on the bench, flagging his tail up to uncover his tight rump.  He makes a needful moan.  It seems your pet wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You stand behind him and give his rump a squeeze, spreading his cheeks and lining up your cock with his pink pucker.  You dribble pre onto it, then slowly ease into him, enjoying the sound of his soft moan as you penetrate him.";
				say "     Gripping the bench tightly with his little claws, her leaves fresh holes in the wood while you thrust into him.  You stroke his back and sides, telling him what a good pet he is and how much you love him.  Something about the bench makes this more than just sex, but instead lovemaking.  Your coon smiles back at you and his cotton candy scent fills the air, mingling with all the other arousing scents.  You reach around to pump at his cock while you work your cock into his tight bottom.  His pink, banded tail wraps around your waist, snugging you lovingly.";
				say "     After a powerfully long orgasm that pumps your seed into your pet's ass and his own sweet smelling cum is added to bench's scents, you withdraw.  Your pet is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
			otherwise:
				say "     As you're finishing up your scavenging, your pink raccoon pet takes your hand in his and pulls you over to the bench with a soft chirr.  He smiles and nuzzles you, guiding you to lay back on the bench.  You can see the front of his skirt standing up as his erect cock makes it rise.  He makes a needful moan as you slip a hand under his skirt to fondle his balls.  It seems your pet wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You stretch back on the bench, leaving one leg draped over the side, giving your pink pet clear access to your dripping slit.  He climbs atop you, lining up his cock even as he nuzzles at your neck.  You scritch his ears and caress his back as his penis sinks into your cunt, enjoying the sound of his soft moan as he slowly, tenderly penetrates you.";
				say "     Gripping the bench tightly with his little claws, her leaves fresh holes in the wood while he thrusts into you.  You stroke his back and sides, telling him what a good pet he is and how much you love him.  Something about the bench makes this more than just sex, but instead lovemaking.  Your coon smiles down at you, kissing and nuzzling your face as you do the same.  His cotton candy scent fills the air, mingling with all the other arousing scents.  You reach around to grab his rump, squeezing it and making him moan as you pull him to thrust harder and harder into your dripping pussy.";
				say "     After a powerfully long orgasm that pumps an impressive load of his coonboi seed into your pussy, he withdraws slowly.  Your pet is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
				say "[impregchance]";
			infect "Raccoon";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Pure" is listed in feats of player, increase humanity of player by 1;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 1;
			increase xp of pink raccoon by ( level of pink raccoon + 1 ) * 3;
			increase score by 20;
		otherwise if companion of player is Gryphoness:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Hermaphrodite Gryphon":
					now monster is y;
					break;
			say "     As you're finishing up your scavenging, Denise takes your hand in hers and grins playfully at you.  She gives you a tug over to the bench.  'We should... umm... I mean, everyone's using this bench for...' she says softly as she sits back on it, running her paws over her lovely body.  Her nipples are quite hard, as is her cock and gryphon juices drip from her aroused pussy.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on her offer.";
			if cocks of player > 0:
				say "     You snuggle up beside her on the bench, nuzzling and kissing one another.  Her paw soon find its way to your cock and strokes at your stiff shaft.  With her other arm around you, she moves to lay back on the bench while guiding you atop her.  Soon enough, you are lining your cock up with that dripping snatch and sinking into her, causing her to moan lustfully.  You continue kissing as you thrust into her, enjoying the warm, wet grip of her cunt around you.  Her paws roam over your body while her taloned feet dig into the bench, adding her marks to those of the others who've used it.  Your sex is lustful, but loving as well, as something about the bench makes this more like lovemaking than raw sex.  With one hand on the bench for support like that wolf, you let the other stroke Denise's bosom as she sings out her love for you and you respond in kind.";
				say "     After a powerfully long orgasm that pumps your seed into the sexy gryphoness's pussy and her own cum sprays across her body and the bench, you withdraw.  Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to her.";
			otherwise:
				say "     You snuggle up beside her on the bench, nuzzling and kissing one another.  Her paw soon find its way to your pussy and she fingers and teases your wet folds.  With her other arm around you, she moves to sit at one corner of the bench and guides you to sit in her lap.  Soon enough, you are lining up her throbbing cock with your wet hole while kissing your loving companion.  You moan in pleasure as you sink down on her leonine cock, gripping her shoulders.  She nuzzles your bosom, licking and sucking at your nipples before moving her head back up to kiss you.  You continue kissing as you ride in her lap, enjoying the feel of her throbbing meat inside your cunt.  One paw roams over your body while the other digs into the bench, adding her marks to those of the others who've used it.  Your ride her cock lustfully, but loving as well, as something about the bench makes this more like lovemaking than raw sex.  With your arms around her, you hold her lovingly while scritching at her wing roots, which makes her sing out her love for you and you respond in kind.";
				say "     After a powerfully long orgasm that pumps an impressive load of her gryphon seed into your pussy and her own female juices leak onto the bench to join the others, you ease yourself off her spent shaft.  Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to her.";
				say "[impregchance]";
			infect "Hermaphrodite Gryphon";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Pure" is listed in feats of player, increase humanity of player by 1;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 1;
			increase xp of Gryphoness by ( level of Gryphoness + 1 ) * 3;
			increase score by 20;
		otherwise if companion of player is Felinoid companion:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			repeat with y running from 1 to number of filled rows in table of random critters:
				choose row y in table of random critters;
				if name entry is "Felinoid":
					now monster is y;
					break;
			if cunts of player > 0:
				say "     As you're finishing up your scavenging, your felinoid companion snuggles up to you, rumbling and purring as he starts nudging you over to the bench with his strong body.  You sit on the bench and he puts his front paws on either side of you, nuzzling and licking at your face.  You can see his aroused cock, red and throbbing as it drips precum on your leg.  It seems your companion wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You move to lay back on the bench, putting your hips at one edge so your four-legged feline can mount you.  And he quickly does, lining up his cock with your dripping snatch before slowly sinking into you.  You moan in delight and run your hands over his sides and hips as his large, feline cock eases into you.";
				say "     His large paws dig into the bench beside your head, leaving fresh scratches in the wood while he thrusts into you.  You nuzzle and kiss his feline face, telling him what a good kitty he is and how much you love him.  Something about the bench makes this more than just sex, but instead lovemaking.  Your kitty seems to smile down at you as he lickgrooms your face and chest, running his raspy tongue over your breasts.  You reach back to rub his large balls and squeeze his tightly muscled rear while he thrusts into you.  The sex is somehow both wildly animalistic and tenderly loving as the feline beast mates with you.";
				say "     After a powerfully long orgasm that pumps a huge load of his feline seed into your pussy, he eases his spent shaft from your cream-filled cunt.  Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
				say "[impregchance]";
			otherwise:
				say "     As you're finishing up your scavenging, your felinoid companion snuggles up to you, rumbling and purring as he starts nudging you over to the bench with his strong body.  You sit on the bench and he puts his front paws on either side of you, nuzzling and licking at your face.  You can see his aroused cock, red and throbbing as it drips precum on your leg.  It seems your companion wants to enjoy the lovers['] bench with you as well.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on his offer.  You put your hands at his hips and get him to climb a little further onto the bench, bringing his large cock within reach of your mouth.  You start licking and kissing at his throbbing meat, then slide your mouth down over it, enjoying his mrowl of pleasure as you do.";
				say "     His large paws dig into the back of the bench, leaving fresh scratches in the wood as he thrusts gently into your muzzle.  You face is buried in his soft fur as you run your fingers through it, stroking his belly and thighs as you lick and suck his cock.  You slide your mouth off, telling him what a good kitty he is and how much you love him as you kiss his cock and balls.  Something about the bench makes this more than just sex, but instead lovemaking.  Your kitty seems to smile down at you as you take him in you mouth again and he starts thrusting softly.  You reach rub his large balls and squeeze his tightly muscled rear while he rocks his hips.  The sex is somehow both wildly animalistic and tenderly loving as the feline beast pumps his cock as you take it fully into your mouth and down your throat.";
				say "     After a powerfully long orgasm that pumps a huge load of his feline seed into your belly, he eases his spent shaft from your mouth.  Your companion is extra-snugly after the lovemaking, nuzzling and kissing at you and you happily return this affection, feeling closer to him.";
			infect "Felinoid";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Pure" is listed in feats of player, increase humanity of player by 1;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 1;
			increase xp of Felinoid companion by ( level of Felinoid companion + 1 ) * 3;
			increase score by 20;
		otherwise if companion of player is bee girl:
			if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
			say "     As you're finishing up your scavenging, Honey buzzes on over and takes your hand in her.  She smiles up at you and grins playfully.  She gives your arm a gentle tug with her four hands.  'I want to try out the bench, now that I have someone special to share it with,' she buzzes softly.  'I used to see couples here when I was...'  She pauses, remembering her lost sisters.  'But I have you now,' she says, smiling up at your with a mix of lust and adoration as you walk with her to the bench to take her up on her offer.  Her nipples, normally hidden, are quite hard, and her honeyed juices run down her legs.  The scents here, which have been getting you more aroused, seem all the stronger and you decide to take your pet up on her offer.";
			if cocks of player > 0:
				say "     Honey climbs up onto the bench, raising her bee abdomen up and waving her cute little bottom at you.  The soft, golden puff over her pussy is soaked in her juices and you can see her soft lips parted and ready for you.  The bumblebee drone buzzes excitedly as you move in behind her and get your hard cock lined up with her eager pussy.  She pushes herself back onto your cock slowly, clearly holding back from pushing it all in quickly, wanting to savour this moment.  Once you're stuffed inside her, you wrap your arms around her insect abdomen and start thrusting.  Her wings buzz frantically and her abdomen twitches in your arms.  'Mmm... kiss it.  Please, I want you to kiss me there,' she moans as her pussy quivers and squeezes around you at the thought of it.  So when you kiss and lick at the end of her abdomen, that sensitive spot where her stinger was lost - that you healed to save her life - she convulses in pleasure and digs her four chitinous hands into the wooden bench, adding fresh marks to join the numerous others.  Your sex is both lustful and loving all at once, as something about the bench makes this more like lovemaking than raw sex.  With one hand on the bench for support like that wolf, you let the other hold her striped behind while you lick and kiss it.";
				say "     After a powerfully long orgasm that pumps your seed into the cute bumblebee girl's pussy while her honeyed juices soak you both, you slide your spent cock from her.  Your companion is extra-snugly after the lovemaking, nuzzling against your side as she holds your hand in her four small hands and you happily return this affection, feeling closer to her.";
			otherwise:
				say "     Honey lays back on the middle of the bench and motions for you to climb atop her.  Bringing your pussy to her lips, she starts licking and kissing at your sex, running her long proboscis over your wet folds before sliding it into you like a flower full of rich nectar.  Her talented tongue delves inside you again and again, licking and teasing at your sensitive inner walls as it slides to your very depths to please you.  You run your hand over her insect abdomen and she buzzes with delight.  'Mmm... kiss it.  Please, I want you to kiss me there,' she moans before diving her tongue into you again.  Her tongue is writhing inside you at the thought of it.  So when you kiss and lick at the end of her abdomen, that sensitive spot where her stinger was lost - that you healed to save her life - she convulses in pleasure and digs her four chitinous hands into the wooden bench, adding fresh marks to join the numerous others.  Your sex is both lustful and loving all at once, as something about the bench makes this more like lovemaking than raw sex.  With one hand on the bench for support like that wolf, you let the other hold her striped behind while you lick and kiss it.";
				say "     After a powerfully long orgasm that soaks the cute bumblebee girl's face in your female nectar while her honeyed juices soak her crotch as her lower hands finger herself vigorously, you climb slowly off from overtop her.  Your companion is extra-snugly after the lovemaking, nuzzling against your side as she holds your hand in her four small hands and you happily return this affection, feeling closer to her.";
			now libido of player is libido of player / 2;
			decrease humanity of player by 5;
			if "Pure" is listed in feats of player, increase humanity of player by 1;
			if "Corrupt" is listed in feats of player, decrease humanity of player by 1;
			increase xp of bee girl by ( level of bee girl + 1 ) * 3;
			increase score by 20;
		otherwise:
			increase libido of player by ( 100 - libido of player ) / 4;
		now Lovers Bench is resolved;


Section 5 - State Fair Events

Concession Stand is a situation.
The sarea of Concession Stand is "Midway";
foodvendor is a number that varies.
when play begins:
	add Concession Stand to badspots of furry;
	add Concession Stand to badspots of guy;

Instead of resolving a Concession Stand:
	if foodvendor is 0:
		say "     Wandering through the bright lights of the state fair, you wander into a cluster of food stands advertising a variety of fried foods and sugary treats.  Most are closed up right now, but one seems to be open with a strange figure manning the stand.  This man is wearing a bright green suit with yellow trim and a yellow bowler hat.  While you think he's human, his features seem to be strangely shifting, making it hard for you to pin down exactly what he looks like.  At moments, you think you see a hint of lupine in his eyes or a feline muzzle, but then you can no longer discern these traits.  For a second you think you see a broad tail, but then it is gone as if it were never there.  Confused by all this, you miss the first part of his sales pitch, where he's trying to entice you into buying some of the snacks he has on sale.  '...so like I said, not a penny from your pocket do I want for them.  A delicious snack to satisfy your cravings and a cool drink to help you beat the heat,' he says as he motions to the tasty looking treats on display and the cans of soda chilling in an ice barrel.  'So, we got a deal?' he asks, holding out his hand.";
		if the player consents:
			say "     As you take the strange salesman's, you can feel a tingle run up through your arm.  The guy grins and hops onto his counter, sitting in front of you as he unzips his pants.  He whips out his cock, and like the rest of him, it is difficult to discern its features.  At times, you think it more feline, others more equine.  Even as you wrap your lips around it and start sucking, the feel and taste on your tongue changes over and over again.  You momentarily find yourself wondering when you started sucking his cock and why, but your mind can't hold onto it and instead you start puzzling over the form of his cock again.  You felt a knot there for a few bobs of your head, but now it seems more like a pair of hemipenises instead.  You keep sucking at his shifting cock, your hazy mind focused on its ever-changing shape and taste.  Eventually, he grips your head and holds you down into his lap as his cock gets quite long and is stuffed down your throat, unleashing a thick rush of cum into your belly.";
			say "     The vendor releases you and flips back behind the counter.  With a broad grin that seems momentarily feline, he passes you a tray of snacks and a can of soda.  You head off, still in a bit of a daze, licking your lips as you try to figure out the flavour of cum you just guzzled down.";
			sort table of random critters in random order;
			now monster is 1;
			infect;
			infect;
			add "chips" to invent of player;
			add "soda" to invent of player;
			decrease humanity of player by a random number between 8 and 6;
			if "Pure" is listed in feats of player, increase humanity of player by a random number between 2 and 5;
			if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 1 and 4;
			increase foodvendor by 1;
		otherwise:
			say "     Shaking your head and looking away from him, you try to refocus you mind.  Wary of the strangely hypnotic figure, you move away, taking care not to look at him.  You resolve not to return, lest your mind be ensnared again.";
			increase score by 1;
			now Concession Stand is resolved;
	otherwise:
		say "     Your path meandering path through the fair ends up taking you back to those concession stands and you can see the green suited fellow still at his stand.  He waves you over with a broad grin.  Shall you return to his stand?";
		if the player consents:
			if foodvendor is 1:
				say "     As you walk up to the stand, the gentleman sets another tray of fried treats and a can of soda on the counter, then leaps over it.  You don't say a word as he whips out his cock again.  Any thoughts of discussion or dealing with the man fade as you again bury his throbbing meat in your mouth and suck away at it.  He chuckles softly and rubs your head, pumping into your mouth.  You run your tongue over some feline barbs, then across a pointed, canine glans.  It is thick, then long, then almost human, then unnaturally ridged.  These changes continue as you try to figure out each new one, loving the ever-changing delight more and more.  You put a hand to his ballsac and find it changing as well.  The orbs inside always remain quite large and heavy, though their shape shifts subtly.  But more apparent is the soft fur, no the hard scales, no the smooth skin, that covered his scrotum.  This time your lustful cocksucking is rewarded when you feel a knot briefly locking his cock in your mouth and he sprays thick cum into your mouth.  When the knot fades away as if never there, you pull your mouth back and swallow down the semen.  You take your purchased wares with a lustfully clouded mind that lingers as you wander back into the flashy fair.";
				sort table of random critters in random order;
				now monster is 1;
				infect;
				infect;
				add "chips" to invent of player;
				add "soda" to invent of player;
				decrease humanity of player by a random number between 10 and 20;
				if "Pure" is listed in feats of player, increase humanity of player by a random number between 3 and 6;
				if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 2 and 5;
				increase foodvendor by 1;
			otherwise if foodvendor is 2:
				say "     Knowing what is coming, you help the gentleman open his bright green pants when he moves over the counter.  Pulling out his cock, you stuff it into your mouth with a soft moan, taking delight at having it in your mouth again.  You love how it keeps changing for you, giving you a myriad of delightful tastes and sensations.  He rubs your head and moans softly as you bob over it, running your tongue over it.  You plunge it down your throat as it becomes thick and donkey-like, then suck firmly at it becomes small and lapine.  Its draconic knobs and ridges stimulate your throat as he switches to thrusting into your mouth.  'Oh, you're so good at this,' he moans.  'You should come back again.  Since you're my favorite customer, I'll give you something really special.'";
				say "     Rubbing his balls and sucking his cock, you lavish attention upon him, becoming more and more eager to please him.  When he finally cums, his thick seed comes blasts from a large, leonine cock and you gulp it all down, rubbing your belly as his semen fills it.  You get up and lick your lips, barely remembering to take the food items.  You were so focused on getting the cum, you barely remembered the purchase at all this time.";
				sort table of random critters in random order;
				now monster is 1;
				infect;
				infect;
				add "chips" to invent of player;
				add "soda" to invent of player;
				decrease humanity of player by a random number between 12 and 24;
				if "Pure" is listed in feats of player, increase humanity of player by a random number between 4 and 8;
				if "Corrupt" is listed in feats of player, decrease humanity of player by a random number between 3 and 6;
				increase foodvendor by 1;
			otherwise if foodvendor is 3:
				say "     Your friend the vendor smiles very happily as you come over again.  He doesn't bother to put out any food this time and hops fully over the counter.  Putting his shifting hands (paws?) on you, he leans you over the counter and unzip his fly.  Feeling him move to grope your ass, you moan softly and get your clothes and gear off.  He runs his fingers (talons?) down your back and rubs his throbbing shaft against your rear, making you moan again.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				if cunts of player > 0:
					say "     The vendor lines up his cock to your pussy, then sinks it into you while it is small and musine in form.  It then shifts and becomes thick and equine, filling you deeply.  This sudden change leaves you gasping in pleasure, writhing over his meat.  It changes inside you again and again as he pounds away at you.  His penis drives into you with a canine knot that pops tightly into you, then pulls out with feline barbs that stimulate you walls deliciously.  It rubs your vaginal folds with draconic ridges, then pushes past your cervix as a slimy tendril[if cocks of player > 1].  His hands, feeling like velvety paws for a moment, grip your cocks and stroke them as he fucks you good and hard[otherwise if cocks of player is 1].  His hand, feeling like a velvety paw for a moment, grips your cock and strokes it as he fucks you good and hard[end if].  You writhe under this ever-changing rutting, loving every unique moment of pleasure it gives you.";
				otherwise:
					say "     The vendor lines up his cock to your tight asshole, then sinks it into you while it is small and musine in form.  It then shifts and becomes thick and equine, filling you deeply.  This sudden change leaves you gasping in pleasure, writhing over his meat.  It changes inside you again and again as he pounds away at you.  His penis drives into you with a canine knot that pops tightly into you, then pulls out with feline barbs that stimulate you walls deliciously.  It rubs against your spread anus with draconic ridges, then pushes deep into your bowels as a slimy tendril[if cocks of player > 1].  His hands, feeling like velvety paws for a moment, grip your cocks and stroke them as he fucks you good and hard[otherwise].  His hand, feeling like a velvety paw for a moment, grips your cock and strokes it as he fucks you good and hard[end if].  You writhe under this ever-changing rutting, loving every unique moment of pleasure it gives you.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "     'You love that, don't you?' he says in a soft, alluringly feline voice as ear while pounding a new cock into you with each thrust.  You respond by nodding your head eagerly.  'Of course, you'll want it again and again, won't you?'  You can only nod all the more, agreeing with his virile, lapine tone.  'You want to stay here and be my slutty pet to get it all the time.  Just think of it, being my slut, changing into different creatures for me to fuck.  Always new pleasures to be had.  You want that, don't you?' he rumbles in your ear, sounding strong and lupine now.  Lost in the haze of his enthralling power, you can't help but nod vigorously, agreeing to become his, wanting to be used like this over and over again.";
				if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
				say "     Having given in to him, you can feel the last of your will draining away, succumbing to being your master's slutty pet.  His to change.  His to fuck[if cunts of player > 0].  His to breed[end if].  And he rewards you by driving his cock deep inside you, feeling like an equine's, but so much larger, perhaps an elephant?  With his giant cock thrust deep inside you, he blasts his hot load into you, filling your [if cunts of player > 0]womb[otherwise]ass[end if] with his virile seed.  You moan and pant in delight as its volume bloats your tummy a little, making you feel so full and happy with so much of your new master's cum inside you.";  
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
				now the daycycle of player is 0;
				end the game saying "You submitted to the shifting man at the fair, becoming his slutty pet.";
				now battleground is "void";
				wait for any key;
				follow the turnpass rule;
				stop the action;
		otherwise:
			say "     Remembering how the man's appearance has affected you in the past, you turn away and resolve not to return here, lest he affect your mind again and you accept another of his deals.";
			now Concession Stand is resolved;

when play ends:
	if foodvendor is 4:
		if "Male Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.";
		otherwise if "Female Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.  You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time.";
		otherwise if "Herm Preferred" is listed in feats of player:
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.  You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time.  Your master takes to becoming a female or a herm at times so you may enjoy breeding her and the other pets on occasion.";
		otherwise:				[all open]
			say "     Your shapeshifting master is true to his word and keeps you as a lustful pet, fucking you in a myriad of ways and in an infinite combination of bodies.  He changes you again and again, spending days or weeks as canines, felines, equines and every other creature.  Almost fully human at times to completely animal at others.  Any form his mind desires and always changing you to another before either of you can become bored of it.  Not even your gender is fixed, changing from males to females and anything in between.  You smile happily as he ensnares others to add to his harem over time, giving you playmates to enjoy.  He alters them to suit his whims as well, creating even greater variety in the pleasures for you to experience.  You are bred by him and his pets on numerous occasions, birthing different creatures and hybrids every time.  Your master takes to becoming a female or a herm at times so you may enjoy breeding her and the other pets on occasion.";
		if hellHoundLevel > 0:
			say "[line break]";
			say "     Lost in the lustful decadence of being a slutpet of any kind for your master, you forget about your deal with the hellhound, troubled only be the occasional, unremembered dream.  But he does not forget.  Having given in to a life of debauchery and sin, your foul contract was only delayed to better prepare you for your coming, unending fate.";
			say "     When that times comes, you are pulled into the pits of Hades and given a life of eternal servitude as a sexual slave to the countless foul hellhounds who guard the gates of Hell.  Your body is changed by them to whatever suits their dark whims and your time in countless forms for your former master has served you well in preparing you for this unending task as the lustful slave to the demonic hounds.  Your body is used in every foul, deviant act imaginable and responds lustfully to their every dark need or twisted whim";
			if cocks of player > 0:
				say ".  Some of the fel beasts allow you to breed the hellhound bitches, but only when they are mounting you at the same time.  Regardless of your form, you always sire pure hellspawn in these hellhounds.  When they eventually grow strong, they join the others in slaking their sexual urges upon your mutable body until the ends of time.";
			otherwise:
				say ".  The fel beasts breed you incessantly, filling your womb with litters of their spawn.  Regardless of your form, they are always pure hellspawn like their brethren.  They nurse from your breasts and grow strong, eventually joining the others in mating you until the ends of time.";
		stop the action;


Section 6 - Beach Events

Beach Party is a situation.  The level of Beach Party is 5.
The sarea of Beach Party is "Beach";
when play begins:
	add Beach Party to badspots of furry;
	add Beach Party to badspots of girl;

Instead of resolving a Beach Party:
	say "     Travelling along the beach, you crest a small dune to find a group of bright pink, dolphin girls splashing around in the water.  They seem to be throwing a [if daytimer is day]sunny[otherwise]nighttime[end if] beach party for themselves, giggling and playing around a large dolphin pooltoy.  One runs over to a small cooler and pulls out a can of soda.  After shaking it up, she sprays it wildly across her friend's body, causing her to squeak and laugh as she tries to block the foamy spray[if thirst of player > 30].  Feeling rather thirsty yourself, you find it disappointing they'd waste a drink like that[end if].  As the foam slides down her body, you notice that something is odd about their appearance[if daytimer is day].  In the sunlight, you can see that the dark cola running down her back can be seen through her[otherwise].  In the moonlight, you can see the foam cola running smoothly down her body[end if].  These dolphin girls are inflatable creatures and completely empty save for air.";
	say "     It is at this point that you are spotted.  And, eager for more fun, the dolphin girl on the beach tosses down the empty can and bounds her way towards you with a vapid smile on her face.";
	now dolphinflatablefight is 3;
	challenge "Bottlenose Toy";
	if dolphinflatablefight is 1:
		say "     With the first dolphin girl sent back to the water, she giggles and gets in a splashing fight with her friend who got the soda treatment to help clean her off.  As this goes on, another of the dolphin girls prances out of the water with loud giggles to play with you as well.";
		now dolphinflatablefight is 3;
		challenge "Bottlenose Toy";
		if dolphinflatablefight is 1:
			say "     As the second is returning to the water, the one you believe was sprayed with the soda comes towards you.  You don't really know how you can tell the identical dolphin girls apart, but you're fairly certain its her coming towards you with a big smile on her bottlenose snout.";
			now dolphinflatablefight is 3;
			challenge "Bottlenose Toy";
			if dolphinflatablefight is 1:
				say "     As she prances back into the water, the girls giggle and whisper amongst themselves.  They grab onto the dolphin pooltoy floating in the water around them and together toss it towards you.  It floats lazily in the air, drifting all the way up the dune to land near your feet.";
				now dolphinflatablefight is 4;
				challenge "Bottlenose Toy";
				if dolphinflatablefight is 1:
					say "     With the green dolphin sent back into the water, the girls start playing around with it.  Some start fingering themselves and each other, rather worked after their amusement with you.  With them distracted, you decide to avail yourself of the remaining contents of their cooler, taking the last two cans before heading on your way, the sounds of their playing fading behind you as you go past a pile of rocks.";
					add "soda" to invent of player;
					add "soda" to invent of player;
					increase score by 10;
	if dolphinflatablefight is 2:
		say "     Even as the dolphin who just finished playing with you heads back to the water, several of the others are all on you at once.  One has the last of the sodas.  But rather than give you a drink, she sprays both cans all over you, wasting their contents while the girls giggle merrily.  The dolphins all huddle around you and start licking all over your body to clean the sweet soda from you.  Their rubber tongue glide across your skin and seek to tease you all over.  Two set to work on your nipples[if breast size of player > 0], squeezing your breasts[end if].  Others kiss and lick at your face and nibble at your ears.  Another, the soda girl, nuzzles her snout down between your legs, licking and kissing at your groin.  Her tongue plays over your [if cocks of player > 1]sticky, throbbing [cockname of player] cocks[otherwise if cocks of player is 1]sticky, throbbing [cockname of player] cock[otherwise if cunts of player > 1]sticky, juicy pussies[otherwise if cunts of player is 1]sticky, juicy pussy[otherwise]sticky thighs and barren crotch[end if].  Another enterprising girl, after sucking your fingers clean one by one, guides your hand to her groin, getting you to finger her dripping pussy until you feel her slick juices soak your hand as she cums with delighted trills.  All this attention makes you laugh and giggle like a girl, sounding a lot like the inflatable females surrounding you[if cocks of player is 0 and cunts of player is 0].  Once you're finally all cleaned up,[otherwise].  When you finally cum,[end if] the pink dolphins release you, heading back to frolic in the water again.";
		say "     Having the air-headed dolphin girls lavish so much attention onto you, you can't help but feel yourself fading away some, as if you're becoming more empty-headed and giggly like them.  You rise to your feet easily, feeling as if buoyed by your own happy feelings and look over your body, fully that of an inflatable dolphin like those pretty girls";
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
		if waiterhater is 0, wait for any key; [skips waiting if it's not wanted]
		if libido of player < 60, now libido of player is 60;
		if humanity of player < 10:
			say ".  With your mind fading away, you giggle happily and bound off into the water to play with your new friends as you forget yourself entirely and become a fun-loving beach toy.";
			end the game saying "There are no thoughts left in your air-filled head but that of playing at the beach.";
			now battleground is "void";
			wait for any key;
			follow the turnpass rule;
			stop the action;
		otherwise:
			say ".  You manage to keep your mind together enough to leave the dolphin girls and with their large dolphin toy to continue their partying.  As you walk back along the beach, you can hear a few cries of disappointment, but the giggling and playing starts up again moments afterwards.  You're quite sure they won't pursue you, but you decide to head back and wait for them to finish their beach party before passing this way again.";
	if dolphinflatablefight is 3 or dolphinflatablefight is 4:
		say "     You manage to make a break for it, running away from the waterfront.  You can hear a few cries of disappointment, but the giggling and playing starts up moments afterwards.  You're sure they won't pursue you, but you decide to head back and wait for them to finish their beach party before passing this way again.";


Assorted Events ends here.