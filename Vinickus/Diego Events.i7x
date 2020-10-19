Version 2 of Diego Events by Vinickus begins here.
[Version 1 - Transplanted two old events (originally written by Stripes) into a new file]
[Version 2 - Added College Flakes event]

Table of GameEventIDs (continued)
Object	Name
Trickster	"Trickster"

Trickster is a situation.
ResolveFunction of Trickster is "[ResolveEvent Trickster]". The level of Trickster is 4.
Sarea of Trickster is "Outside".
wolffight is a number that varies.
when play begins:
	add Trickster to BadSpots of FurryList;
	add Trickster to BadSpots of MaleList;
	add Trickster to BadSpots of FemaleList;

to say ResolveEvent Trickster:
	setmonster "Feral Wolf";
	say "     As you are traveling along, you spot some activity in the distance. At first, fearing that it is another band of monsters, you take cover. But a few moments later, you discover it to be a small team of soldiers moving stealthily through the city. They may be doing recon or on some other kind of mission, but you may be able to get assistance, or even be rescued by them. But even as you're walking up and trying to decide how best to approach them, you see a coyote [if Diegochanged is 0]man[else if Diegochanged is 1]herm[else]woman[end if] carrying a large sack dash into their midst[if PlayerMet of Diego is true and Diegochanged is 0]. You recognize Diego, the coyote trickster, and have to wonder what he is up to this time[else if PlayerMet of Diego is true]. You recognize Diego, the coyote trickster, and have to wonder what she is up to this time[end if][if Diegochanged is 0]. He[else]. She[end if] passes the bag quickly to a flabbergasted soldier with a quick 'Here, hold this' before continuing on with a happy chuckle.";
	say "     As the stunned soldiers watch the coyote run off in the direction of the city park and look at the mysterious sack, you hear some approaching howls. If you're going to get out of here, you'll have to do it right now.";
	say "     [bold type]Do you move to join the soldiers or run and hide to watch what happens?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay.";
	say "     ([link]N[as]n[end link]) - Run.";
	if Player consents:
		say "     You dash up to the soldiers and pull out your weapon. Knowing your luck, trouble's on the way. You run up to the soldier left holding the bag. Your sudden appearance after the coyote's keeps him off guard long enough to pull the sack from him, finding it stuffed with gray fur inside. You barely have a chance to look up when a large pack of wolves come running around the corner, slamming into the unexpected team of soldiers. Several of the men are knocked down immediately.";
		let the bonus be (( Dexterity of Player minus 10 ) divided by 2);
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

Prank Aftermath is a situation.
ResolveFunction of Prank Aftermath is "[ResolveEvent Prank Aftermath]". Prank Aftermath is inactive. The level of Prank Aftermath is 7.
Sarea of Prank Aftermath is "Outside".
when play begins:
	add Prank Aftermath to BadSpots of FurryList;
	add Prank Aftermath to badspots of HermList;

to say ResolveEvent Prank Aftermath:
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

Table of GameEventIDs (continued)
Object	Name
Prankster's Delight	"Prankster's Delight"

Prankster's Delight is a situation.
ResolveFunction of Prankster's Delight is "[ResolveEvent Prankster's Delight]". The level of Prankster's Delight is 7.
Sarea of Prankster's Delight is "Outside".
when play begins:
	add Prankster's Delight to BadSpots of FurryList;
	add Prankster's Delight to Badspots of MaleList;

to say ResolveEvent Prankster's Delight:
	say "     It's just another walk through the desolate city. Chaos, moans, some scattered fires, nothing of interest comes about until you hear snickering off to the side. It appears to be coming from an alley up ahead, and as you get closer, you hear the snickering get louder and more familiar. However, just when you round the corner, the laughter stops, and nothing out of the ordinary catches your eye. Chalking it up to something best not messed with, you continue past the alley. Not ten minutes later there's a loud screech, and seconds after that you hear a cacophony of screaming metal and falling rubble. It takes a minute to pin down the exact street to run towards, but the shouts that soon start up help clue you in.";
	say "     When you get within a good distance to make out what's being yelled about, you perk your ears and hold steady, almost holding your breath as you try to hear exactly what's going on. 'Get this damn truck out of the way!' a gruff voice sounds out. 'With what, sir?!' The second voice sounds shaken, impatient and yet fearful. Whether the accident set him off, his CO, or something else, you can't be sure. Your best guess is that they may have been under a lot of strain and everything is slowly wearing them down. After you begin to relax and move closer, you hear a snickering, the exact same snickering from before: directly above your head. Glancing up you see the orange fur of some kind of canine, his tail flicking back and forth in what looks like amusement. It's hard to make out the rest the person, or even the face, but it's quite clear they're lithe with a bit of muscle.";
	say "     [if park entrance is unknown]Bewildered by the new appearance, you stay stock still to avoid attention[else]You sigh to yourself as you realize who the assailant is[end if].";
	WaitLineBreak;
	say "     With the snickering more or less identified, you manage to stay hidden from [if park entrance is unknown]the crazy entity[else]Diego[end if]. So with little else deterring you, it's quite easy to sneak around the edges of the building and make it within sight of the disturbance. You're currently behind the soldiers, and close to a burned-out car. It is but one of multiple strewn-about wrecks blocking the road. You'd no doubt make a lot of noise if you tried to get around or over all of it, so you simply huddle behind the car. With a good hiding place, and sightlines, you examine the scene more fully. There's a fire truck blocking the road beyond where you're at, probably a good thirty feet from the current blockage. Between you and the firetruck is a squad of ten male soldiers, their urban camo fatigues doing nothing to hide them as they pace back and forth. Eight of them are closer to you than the firetruck, while two examine the wreckage.";
	say "     'How the fuck did this even get here?' came the voice you figure is the CO. He sounds different now that he's not yelling himself hoarse, but he's still boisterous. The other man by him turns and starts talking, but it's hard to make out what he's saying, all you can tell is that he's quite an animated personality. Even without his voice, his posture and arms waving about give a good impression of his mood. Obviously tensions are running high, and the eight soldiers in the back are themselves looking quite beleaguered. Many pace about or simply lean against walls or in corners. You get ready to leave them to whatever their plans are, but as you step back, there's a sudden burst of motion off to the side.";
	WaitLineBreak;
	say "     As you glance towards it, you see nothing but a camo hat on the ground. However, as you think back, you could've sworn a soldier was there moments ago. You count out the numbers again, and realize there is in fact a missing soldier. Another burst of motion catches your attention, this time to the left, and once more all that's left is a camo hat. Whatever is happening, it seems like it's focusing on the soldiers nearest to walls. Maybe you should warn them, but then again you could just leave, or let the little devil in your ear lead the way: a few sexy men getting taken down could be fun to watch.";
	LineBreak;
	say "     [bold type]Do you leave, warn them, or stay quiet and watch what's going on?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Leave.";
	say "     [link](2)[as]2[end link] - Yell out.";
	say "     [link](3)[as]3[end link] - Simply watch.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to Leave, [link]2[end link] to Yell out or [link]3[end link] to Simply watch.";
	if calcnumber is 1:
		LineBreak;
		say "     You take your time to back away, keeping sightlines as a soldier disappears every few seconds. Soon you're around a corner and out of sight, giving you the chance to book it.";
		now Resolution of Prankster's Delight is 1; [Player ran away.]
	else if calcnumber is 2:
		LineBreak;
		say "     You yell out a warning, trying to give them a heads up that something's after them. They noticably jump, turning and grabbing at the wall nearest them. The soldiers then all glance at each other and then back towards you. 'Where'd the equipment go!?' Their obvious anger forces you to back up, as the men seem eager to direct all of their substantial ire your way, at least before a yell breaks the tension: or redirects it. There were eight soldiers glaring you down seconds ago, but now there are only seven. The two who were yelling by the firetruck rush back to rejoin their squad. They all huddle up back-to-back as the CO looks your way. 'What is going on?' he questions. You only get a momentary second to shrug before he's yanked down into the ground, vanishing completely. Strangely, there aren't any holes or debris anywhere around where he was moments ago. Something's very twisted here.";
		say "     His second in command is yanked down next, and as soon as this happens, everything goes haywire. The remaining seven split apart and begin running in various directions. The ones farthest from you make a break for the firetruck, moving to clamber over it. As soon as one is almost up the side, a thin, bony hand shoots from the asphalt below and grabs his ankle. The others nearby try to kick at the arm, but there own assailants soon reveal themselves. More bony hands and insectoid-like appendages grip their ankles and wrists. They get yanked into the ground seconds later, leaving the man hanging onto the truck for dear life.";
		WaitLineBreak;
		say "     Looking for the other soldiers, you see them getting pulled into the walls by more bony and insect-like appendages. That leaves the last soldier dangling on the firetruck, hoping to get away. His arms clearly shake more and more as the moments tick by, and he's soon too weak to keep a grip, falling back into the hold of more appendages. They break his fall, but they also keep him above ground, not quite yanking him below yet. Various new arms and growths surface from the asphalt like it was merely a placid sea. These new ones seem to be covered in tiny little hairs and no visible hands, but soon they're slicing and flicking through the air all around the soldier, leaving him to struggle as an odd dance is carried out before you. Within seconds every scrap of clothing sheds from the man's form, leaving him in only his bare skin as those new appendages sink back into the earth. The original arms and hands still keep a grip on him though, and hold him a few feet off the ground.";
		say "     Soon you see new, long and slick looking lengths emerge from the asphalt. They each look rather... phallic, and they even throb in the open air. However, they appear different than even what's often seen around the city. The lengths look almost bony at first, but soon the top halves split like petals in the morning, revealing dozens of red beads clumped together in what can only be described as a mass of throbbing spheres. It all comes together to form a rather thick and bumpy looking structure, and you can only imagine what it'd feel like inside your [if player is male]ass[else if player is female]pussy[else]mouth[end if]. Each bead seems to be about the size of a large marble, and the width of the phallic things is at least three of the beads across. It's hard to tell the true length though, as there could always be more to be revealed under the rest of the boney structure. All you know is that the current revealed length could no doubt reach deep, deep inside one's body.";
		WaitLineBreak;
		say "     That's exactly what they do too, the red throbbing lengths angling at the man's mouth and ass, poking and prodding at each newfound entrance. They must be slick With some kind of lube, because the one between the solder's legs quickly slams forward, sinking half-a-dozen inches at once. The man quickly breaks after that, releasing screeching moans as he begins to gyrate his hips, helping to sink the weird phallus deeper into his ass. His tongue also reaches out to the length over his mouth, lapping at it like a man dying of thirst. All of the limbs shutter at once, like they're all one being. It takes no time at all for both phallic shapes to begin taking action, one sinking into the man's mouth and throat, as the other begins to push in and out of the soldier's ass. Another shudder goes through the limbs as you watch the two dick-like things pulse and throb. A thick, white substance bursts from the man's mouth as his head lulls, the same liquid dripping from between his legs as his stomach swells. This keeps going and going, and neither cock stops pushing in and out of the male's form. The hands grip tighter around his arms and legs as he convulses and shakes.";
		say "     It takes little time for you to see a meager stream of cum shooting up from around the man's waist. It's hard to tell entirely from where you are, but you're certain he's cumming what's left of his brains out. The limbs then begin to shrink, no, sink into the ground, dragging the soldier with them. Soon you only see the soldier's sweaty, cum slick chest, but moments later even that disappears beneath the asphalt. 'Well, that was fun,' came a voice above you. Glancing up there's nothing to see, but you have a feeling as to who, or what, it was.";
		now Resolution of Prankster's Delight is 2; [Player tried to warn the squad]
	else:
		LineBreak;
		say "     You watch as more and more soldiers disappear from view, soon leaving four soldiers and the two by the firetruck. The CO and his partner soon get yanked down as well. The only ones left glance back at where their superiors were, noticing nothing but camo hats. They split up and jump towards the walls, looking as if they were expecting to find something leaning against them. Each man glances around before bony hands and appendages burst from the walls like breaching whales. But these insect-like things don't immediately drag them from view. They hold them in place, the bony hands gripping tight to their squirming forms. Soon, insect-like lengths that are covered in tiny hairs slip from the walls, surrounding them, slashing and dancing through the air around the pinned soldiers. Your eyes are then met with the sight of the fatigues shedding off the men, the fabric completely shredded and falling to the ground below them.";
		say "     Each side of the area has two men held from the walls and off the ground, letting you glance right and left to see the nude backs of soldiers. Some of the arms split into almost prehensile fingers, gripping and spreading the ass of each man in view, giving you the full view of their twitching holes. Other arms soon appear and split open to reveal red throbbing beads inside, they look and throb like dicks, but are made up of clusters of red beads compacted into a solid shape. They almost look like anal beads glued together into a thick, long construct. The beads are each the size of large marbles, and each of the lengths are three of these beads across, at least. They hover in-front of each man's face, and even as the males seems to try to lean away, their holes twitch ever more. Your eyes then catch more movement in the middle of the area, right between the four men. A single hand emerges from the asphalt and points a finger at you before pointing at the men to each side of it. It appears to be making an offer.";
		say "     [bold type]Do you take this appendage up on its offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - You crawl across the car you've been hiding behind, giving a sly grin as you turn towards two of the men.";
		say "     ([link]N[as]n[end link]) - You shake your head in respectful refusal.";
		if player consents:
			if player is a male: [check for if the player has a cock to penetrate with.]
				LineBreak;
				say "     Standing behind the now nude soldiers really gets you going. Their fine, bubble butts are fully on display, and their winking holes draw you in. Your cock was already hard from the show before, but now you can't wait to sink it into one of these fine specimens of masculinity. Unable to decide, but growing lost to lust, you simply step forward and grind against the ass closest to you, hotdogging between his muscular cheeks. With things growing more and more slick down their, and the twitching hole making his need obvious, you find your tip pops in without any attempt by you. With this, you wrap your arms around your temporary mate, shoving balls-deep into him as he gasps out. His gasp lets the throbbing, red length before him pop into his mouth. This seems to make your fucking all the better as the flesh around your cock grips even tighter, drawing your needs to new heights as you begin to pull out to the tip.";
				say "     You then slam right back in, picking up into a rhythm of vigorous fucking. Your partner soon begins to grind back into your thrusts, begging for more with his muscular body. You try to focus on not cumming so quickly, but it's hard not to when faced with such an eager fuckpuppet, and such a hot one at that. Your efforts are short-lived however, as you feel your balls pull up and cock throb. You slam balls deep once more, holding your hips tight against the soldier's ass as you unload shot after shot of seed. Your cum fills him up enough to where it even begins to dribble out around your shaft. However, this isn't enough for you, and as he is yanked into the wall and off your cock, your eyes turn to his friend. His mouth is already filled with the phallic length before him, making his ass even easier to slip into. That, and all of the cum already caking your cock works as great lube.";
				WaitLineBreak;
				say "     You hump and pound into this man even harder than the last, your mind lost to the need to breed this eager soldier. It takes even less time for your needs to reach a peak. Your cock throbs and your hips slap into his ass a few more times before slapping and holding against his cheeks, unloading what feels like pints of cum. Once more the seed spills out of the hole and around your cock, making it easier for the body to be ripped away from you and into the wall. Hunching over, you realize how exhausted you are. Turning and glancing at where the other two were, you realize they're all gone now. Not even the weird disembodied limbs remain in your sight. Sliding down the wall you were just fucking the soldier's against, you rest for a few moments. Cries in the distance remind you that you have to keep moving though, drawing you to stand and return to your exploration.";
				now Resolution of Prankster's Delight is 3; [Player watched and partook]
			else:
				Linebreak;
				say "     You don't think you're quite equipped for this, so you watch as The hand slips back beneath the asphalt, the four men soon getting yanked into the walls and out of sight. 'Oh well,' a voice says from above. You glance up and see nothing, but are all too aware as to who, or what, it probably was. Straightening yourself up and making sure you're safe to move, you turn away from the pinned in alcove. You then head out and resume your exploration.";
				now Resolution of Prankster's Delight is 4; [Player watched but weren't equipped to partake]
		else:
			LineBreak;
			say "     The hand slips back beneath the asphalt, the four men soon getting yanked into the walls and out of sight. 'Oh well,' a voice says from above. You glance up and see nothing, but are all too aware as to who, or what, it probably was. Straightening yourself up and making sure you're safe to move, you turn away from the pinned in alcove. You then head out and resume your exploration.";
			now Resolution of Prankster's Delight is 5; [Player watched but turned down the offer]
	now Prankster's Delight is resolved;

Table of GameEventIDs (continued)
Object	Name
College Flakes	"College Flakes"

College Flakes is a situation.
ResolveFunction of College Flakes is "[ResolveEvent College Flakes]". The level of College Flakes is 7.
The sarea of College Flakes is "Outside".
when play begins:
	add College Flakes to BadSpots of FurryList;
	add College Flakes to Badspots of MaleList;
	add College Flakes to badspots of FemaleList;

to say ResolveEvent College Flakes:
	say "     As you once more journey about the collapsed society that is this city, you hear mumbling and hushed whispers. You can't tell the exact direction it's coming from, but as you continue on your path you find it's getting more discernible. You're eventually able to nail down the general street that the noises are originating from, giving you a chance to get close and find a hiding spot in a nearby alleyway. From your position you have a clear sightline right down a long, broad street. There's little debris or trashed cars along it, giving an unfettered view of the pristine, almost crimson buildings on each side of the asphalt path. It's from one of those big, red bricked buildings that the voices seem to be most concentrated. The building is only a dozen or so feet away, but given you know nothing about the source of the voices, you're not sure getting any closer would be a smart idea.";
	say "     At first it's hard to make anything out, at least anything distinct, but as the people talking step out in the open, you manage to catch a bit more. 'There's nothing to be done. We had to leave or we'd be caught up in whatever shit they were doing.' The first voice you can make out comes from an ebony skinned, broad shouldered man. He looks like a quintessential running back, and he's even wearing a varsity jacket to boot. With him are two blonde, pale skinned and skimpily dressed cheerleaders. Their shoulder-length hair is artfully ruffled, their breasts are perky and at least C cup in size, and their eyes are a striking blue. Their pale skin contrasts with the open, dark environment, and while the jock wears pants and a varsity jacket, the two women are wearing short, short skirts and shirts that barely cover their chests: revealing underboob for days. The skirts also leave almost nothing to the imagination, showing every bit of skin up to their asses.";
	WaitLineBreak;
	say "     The three of them look like college students, in both age and dress, but least they're not too cocky to go unarmed. The two blondes are carrying baseball bats at their sides, eyes focused. The jock carries a simple led pipe instead, face slack as his back hunches in obvious fatigue. All three are obviously on edge, not much of a surprise, and the broad man seems to be constantly adjusting his grip on the metal pipe. His eyes betray his interests though, darting up and down the bodies of the women beside him. The crotch of his bluejeans stretching out in an obvious, significant bulge. You could swear you even see a wet spot spreading from there, leaving no doubt in your mind of how much the environment is getting to him. There's little hope for them long term resisting things, but it's interesting to see such untainted, or seemingly untainted, youths running about.";
	say "     Everything beyond their seeming normalcy is quite expected, even mundane given the current situation. As the silence grows stale, a loud crash draws your attention to the roof of the building they just left. 'Dammit. I thought he was down,' the jock spits out. 'I told you it was pointless,' came a reply from one of the cheerleaders. 'That's only because you're a horny bitch,' said the other blonde. This drew a shake of the head from the previous cheerleader. She'd obviously heard the same trite before, and had no interest in getting into a fight at that time. Still, she glanced back up at the building and looked almost forlorn in her gaze. 'There she goes again, fantasizing about some furry menace. Horny bitch.' This time the jock stepped in, standing fully between them and glancing from one to the other. 'You two done? That coyote-thing will be back after us soon.' All he got was a shake of the head from each woman. Resigning to a good enough expression, the jock begins to sneak along the building walls. His path will eventually take him right by your hiding spot, giving you a few choices about your next action.";
	LineBreak;
	say "     [bold type]Do you get involved in the situation, watch, or simply leave?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Alert them to your location and wave them over to you.";
	say "     [link](2)[as]2[end link] - Stay hidden and watch what happens if you do nothing.";
	say "     [link](3)[as]3[end link] - Back away and down the alley to leave unseen.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to Alert them, [link]2[end link] to Watch or [link]3[end link] to Leave.";
	if calcnumber is 1:
		LineBreak;
		say "     Seeing them approach where you are, draws you to lean out and wave them over, ";
		if BodyName of player is "Human":
			say "they quickly move over to your location, sneaking into the alley as you let them move by you. The cheerleaders stop in-front of you and glance at each other before shrugging. They then move in to kiss your cheeks, one on each side. They're sloppy, wet kisses, and you could swear you feel a bit of tongue lapping over your skin. These two are most certainly becoming a bit changed by things: how much so is uncertain. As they pull back and you stare into their striking blue eyes, your concerns are erased. The jock looks confused as you glance over to him, but he quickly shrugs and moves away, followed by the two blondes";
		else:
			say "they hesitate, unsure of your motivations, but as more crashing can be heard from the building they left, that hesitation evaporates. Once the three are in the alley with you, the two women hesitate before kissing your face. The jock then looks a bit concerned before hussling away, quickly followed by the two cheerleaders. To avoid spooking them, you wait a bit before heading out yourself.";
		now resolution of College Flakes is 1; [Player helped them leave, but noticed something odd about the cheerleaders]
	else if calcnumber is 2:
		LineBreak;
		say "     Deciding to simply watch things unfold, you stay hidden and keep an eye on the trio. Soon you notice movement above, something jumping from roof to roof right above them. They don't look up, don't even seem to notice anything odd. The movement doesn't stop until it's a few buildings ahead of the college students' path. That's when you get a clear look at whoever, or whatever, has been pursuing these three survivors. An orange, anthro coyote stands right at the edge of the roof, and his hands are furiously moving back and forth on his crotch, fluids dribbling down from where he is and splattering on the sidewalk. The trio don't notice this until it's too late and the coyote arches his back, releasing a surge of cum all over the three from above. Confused and panicked, they look up, eyes no doubt wide as the coyote gives a toothy grin before disappearing. Well, [if park entrance is known]typical Diego[else]what a strange canine[end if].";
		say "     The three begin to run down the street in a tizzy, all ready to keep going until the jock hunches over, grabbing his stomach. The two cheerleaders stop moments later and do the same. Soon they're all leaning against a wall, groaning out in discomfort. 'So... hot,' the jock grunts out. 'Yeah,' the cheerleaders reply. You have a feeling on what's going on, but you still wait and see. The first change is the jock's new plan, he quickly removes his varsity jacket and undershirt, moving to take his jeans off next. The cheerleaders watch as he does this, bodies shaking before they glance at each other. The jock's shoes are in the way of him stripping, and he quickly rips them off, letting him remove his jeans and underwear moments after.";
		WaitLineBreak;
		say "     The now nude jock is built for days. His stomach is just a washboard of abs, an eight pack at least, and his chest is tight and built in the best of ways. His legs are defined with grooves and bulges of muscle. The man's arms are much the same as the muscles underneath twist and bulge out in his effort to keep himself under control. It's all in vein however, as he quickly moves on the cheerleaders, grabbing them and pulling them against his nude body. His lips press against their mouths when his tongue isn't lapping at them. For all the cheerleader's movements, not a single one looks like resistance. They wrap their arms around him and grind into his form, their hands slipping down and grabbing at his bubble butt as their groins grind against him.";
		say "     The ebony and pale skins of the three crash together in what could almost be seen as a work of art, their passions unleashing together. The jock is soon pushing them to their kness, offering up his cock as they grab his ass even tighter. Each of the women takes a side of the rod, licking up and down the length as the jock releases a sigh through gritted teeth. One of the cheerleaders then deepthroats his cock as the other moves down to his balls. The jock shoves his hips forward at this, his hands grabbing at the head of the one his dick is buried in, humping at her face as you see his ass clench. A strangled grunt escapes the man, and it's clear from the cheerleader's throat that he's cumming already. The man pulls out his still rock hard length, slapping his cock against the woman's exhausted face, giving the other cheerleader a chance to gobble him down. Much the same happens, him pulling out a few moments later still rock hard, and having deposited a load down the second cheerleaders throat.";
		if player is male and anallevel > 1:
			say "     [bold type]Do you try to get your own fun out of the coyote's mischief, or move on?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Have your own fun with the jock and cheerleaders.";
			say "     ([link]N[as]n[end link]) - Move on";
			if player consents:
				LineBreak;
				say "     Stepping out of the alley, none of them notice you as you approach, your cock already at the ready.";
				if anallevel is 3:
					say "     You know just what to do to move things along as well. You step behind the jock as he trades who he facefucks, falling down to your knees. His ass is immaculately sculped, like that of a Michelangelo statue. The crack is smooth, hairless with a healthy glaze of sweat, and a scent of musky need. He's perfectly clean and free of any undesirable scents, all that's waiting for you is the smell of a man. As soon as your hands grip his ass, he jolts, turning his head to look down at you with wide eyes. 'W-what? Get..' That's all that he manages to utter out before his body shudders again, no doubt more cum pumped down a cheerleader's throat. With that distraction, you shove your face into his ass, jabbing your tongue into his hole and getting right to the tongue-fucking. The jock begins moaning in short order, even louder than before. You can feel each orgasm pulse through his anal muscles, and between his legs, as you keep up your vigorous rimming and tonguing. It's only after you've thoroughly salivated his hole that you lean back, kissing his ass once more before standing. Once you're standing fully behind the jock, you jab your dick at his hole, letting the distractions from his numerous orgasms help you penetrate his slick hole.";
				else:
					say "     Once you're standing fully behind the jock, you jab your dick at his hole, letting the distractions from his numerous orgasms help you penetrate his tight fuck-chute.";
				say "     You're soon taking this previously, no doubt, straight jock for a ride. Pounding at his ass like there's no tomorrow, leaving him nothing but a sloppy mess as the cheerleaders trade off who gets his next load. He had to have gone through at least a dozen orgasms by the time you were inside him, and now that you're fucking him, he's no doubt going through several more every minute. You can feel each pulse, each jerk and tightening of his sphincter, and it makes your pounding all the more fun. You doubt you will be able to last long with this kind of situation, and so move to pound your load as deep into him as you can. Slapping sounds fill the street as you pick up speed and slam your hips into his bubble butt with each thrust. It takes only a minute more before one loud slap sounds out. You're balls deep now, and your scrotum pulls up as you unload shot after shot of cum inside this bimboed jock.";
				WaitLineBreak;
				say "     Your erection doesn't die down even a bit, still throbbing within the tight ass you've marked as yours. However, your ideas of what to do next shift. You pull your cock from the jock, wiping your length off on his ass as your walk up beside him, patting him on his sweaty back and glancing down at the cheerleaders eager for his cock. Soon they're eager for yours as well, not even hesitating to swap between the two of you. Their mouths swap from ebony jock-cock, to your own [cock of player] one. There's not much like this: ass to ass with a sexy jock as two hot cheerleaders worship you both. You turn and forcefully make out with the man beside you, showing him who's boss as your load drips from his ass. You're soon grabbing the head of the cheerleader currently gagging on your cock, gyrating your hips as you begin to facefuck the eager slut. It takes little time to deposit your own cum into her stomach, adding to the no doubt copious amounts already there.";
				say "     Decidng to move things along to something more interesting, you pull out, splattering the last of your load all over her face. You then lift her up and spin her around, pressing her barely clothed breasts into a brick wall. Your hands stroke down her body, stopping at her hips and pulling them towards your crotch, grinding your cock against her clothed ass. With a flick of the hand, her short-shorts are halfway down her thighs, leaving her pussy and ass on full display. Looking to your left you see the jock is doing much the same. However, he's much further along, his cheerleader already breathlessly moaning as he slams balls deep. Not wanting to keep your own woman waiting, you slam into her slick pussy. Her walls clamp down on you, slightly delaying your penetration, but it does nothing to stop the last inches from slipping inside.";
				WaitLineBreak;
				say "     The pleasure and heat is far too intense to resist, and you're quickly pounding away at her tunnel, unable to control yourself: or even slow down. Your rapid thrusts leave her scraping against the wall, yanked back and forth as you vapidly pound at her breeding hole. She doesn't get fucked quietly either, her moans sounding out as you keep going harder and harder... and yet still harder. You're dripping with sweat within minutes, and your balls tighten seconds after that. Your cock begins to pulse inside her, and her own vagina begins to do the same. As soon as your first shot of cum fills her, she lets out a shriek, her pussy clamping down on your cock as you unload what feels like pints of cum inside her.";
				say "     You hear much the same going on beside you, and once your orgasm subsides, you glance over and watch that jock's ebony ass clench up as he unloads deep inside his friend. Slapping his ass, you give him a grin, both of you satisfied for once. The cheerleaders seem less so however, as when you both pull out, the women start making out, fingering the cum further inside each other as they press their barely clothed boobs together. You're quick to push the dazed jock to his knees, pressing your cock against his lips as he opens wide, sucking your length down his throat. Once your cum, and the pussy juice, are sucked clean off your cock, you let him back up.";
				WaitLineBreak;
				say "     You let them know there's a safe place for them to hold up and fuck all they want, and while they seem far less than capable of understanding much more than sex, they eagerly follow you back to the bunker[if park entrance is known]. You thank your stars for Diego as you lead them back[else]. That coyote is your new best friend[end if].";
				say "     AUTHOR'S NOTE: These three will likely be put in the bunker at a later time, for now I hope you enjoyed the event.";
				now resolution of College Flakes is 2; [Player used the college clique for his own fun and took them as his]
			else:
				LineBreak;
				say "     Deciding to move on, you turn and head down the alley you were hiding in, hearing the sounds of quickly escalating sex behind you.";
				now resolution of College Flakes is 4; [Player left the college flakes to their lusts and corruption]
		else:
			say "     Seeing all you needed to of the current situation, you head down the alley you were hiding in. You're quickly out in another street, the sounds of escalating sex still audible as you head on your way.";
			now resolution of College Flakes is 5; [Player wasn't properly equipped at the time]
	else:
		LineBreak;
		say "     Deciding not to get involved in whatever these college students got themselves into, you just head down the alley and to another street, hustling away as quickly as you can.";
		now resolution of College Flakes is 3; [Player left the area before anything happened]
	now College Flakes is resolved;


Diego Events ends here.
