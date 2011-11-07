Junkyard and Warehouse by Rimme begins here.

Chapter 1 - Abandoned Lot into Storage Room

Section 1 - Lot Environment

Abandoned Lot is a room. "In the industrial park on the outskirts of town, you find yourself in a vacant lot, filled with weeds and gravel. Even before the infestation, this place was disheveled. Bordering the lot are a series of broken-down, graffiti-colored warehouses. Old 'Authorized Personnel Only' signs lay on the ground.[line break][line break]Among the warehouses to the east is a road leading further away from the town." Abandoned Lot is fasttravel.

Warehouse Door is a door. "[if the player is in Abandoned Lot]One of the warehouses has an entrance that is cleared of overgrowth. You can see footprints -- human footprints, in fact! -- leading up to it.[otherwise]There are many doors along the wall, but the only one open to you is the one leading outside.[end if]";

South of Abandoned Lot is Warehouse Door.

Section 2 - Entering the Warehouse

Definition: a person is facially human:
	if the facename of the player is "human", yes;
	if the facename of the player is "Awesome tree", yes;
	if the facename of the player is "city sprite", yes;
	no;

Definition: a person is skintone human:
	if the skinname of the player is "human", yes;
	if the skinname of the player is "Awesome tree", yes;
	if the skinname of the player is "elf", yes;
	if the skinname of the player is "city sprite", yes;
	if the skinname of the player is "harpy", yes;
	no;

Definition: a person is bodily human:
	if the bodyname of the player is "human", yes;
	if the bodyname of the player is "Awesome tree", yes;
	no;

Instead of entering the Storage Room:
	try going south;

Instead of going through the Warehouse Door:
	if location of the player is the Abandoned Lot:
		try going south;
	otherwise:
		move the player to the Abandoned Lot;

Instead of going south from the abandoned lot:
	if Stevenremoved is 0:
		say "You knock on the door, and a slat opens up at eye level. ";
		if the player is not facially human:
			if Stevenswayed is 1:
				say "Steven's eyes look at you for a moment, startled by your change in appearance. 'I'm sorry,' he whispers, 'but I [italic type]really[roman type] can't let you in here looking like that. Try changing your appearance, somehow, okay?' before he closes the slat.";
			otherwise:
				say "You barely see a couple of eyes look back at you when you hear a man cry 'Yikes!' and the slat closes rapidly. Perhaps it was your [facename of player] face.";
		otherwise:
			say "'Hello! Who's there?' a man from behind the door says.";
			if Stevenswayed is 1:
				say "'Oh, you again. Come on in.' He opens the door up.";
				move player to Storage Room;
			Otherwise:
				let changed be false;
				if the player is not skintone human, let changed be true;
				if the tail of the player is not "", let changed be true;
				if the player is not bodily human, let changed be true;
				if changed is false:
					say "You explain that you are another survivor, that you wish to enter. 'Of course. Open her up!' he calls out, closing the slat. The door swings open, and you step through.";
					move the player to Storage Room;
				otherwise:
					say "The guard gives a startled cry when he sees the rest of your body, but you quickly explain that you are just another infected survivor, and you wish to enter for just a moment. 'I'm sorry,' he says. 'Too many of us have had, ahem, encounters with the beasts outside. I might make an exception, though,' he whispers, 'If you could bring me a soda. I haven't had one in so long.'";
					if "soda" is listed in invent of player:
						say "Do you give him a soda?";
						if the player consents:
							say "You dig into your backpack and give him your soda. He takes it eagerly and disappears. A few moments later, he shows up with another officer. The two mumble to each other for a moment, before the other officer speaks up.[line break]'All right, we will let you in. But if you try anything funny, we'll throw you out.' You promise you won't be any trouble, and the guards open the door for you.";
							delete soda;
							move the player to Storage Room;
							now Stevenswayed is 1;
						otherwise:
							say "You shake your head and walk away.";
					otherwise:
						say "You promise you will bring him one, and he shakes his head with embarrassment. 'Don't tell anyone I offered you a bribe, understand?' he speaks up again. 'Now go, before someone sees you!' He closes the slat.";
	otherwise:
		say "The slat opens up, and a fierce-looking pair of eyes look upon you. '[one of]Scram[or]Get lost[or]Go away[or]Shoo[or]Get off our land[or]Leave[or]Go fuck your brains out[or]Go screw a farm animal[or]Go suck some horse cocks[or]Go back to your den[at random], you [one of]disgusting[or]sick[or]twisted[or]cock-sucking[or]fucking[or]good-for-nothing[or]degenerate[or]inhuman[at random] [one of]beast[or]mutant[or]pervert[or]animal[or]vermin[or]horse-fucker[or]zoophile[or]traitor[or]savage[at random]!' he shouts, slamming the slat shut.";

Chapter 2 - Storage Room and Steven

Section 1 - The environment

The storage room is a room. "The inside of this warehouse has been converted into a shelter. The large stockpile of packaging and spare parts remains in the center of the room, a remnant of the city's industry. More heavily guarded are the stockpiles of bottled water in the corner. A line of survivors stretches from the water all the way around the wall. Few of them carry any possessions; they sit on blankets as they talk to one another. Every now and then, a glint of color or a patch of fur catches your eye; it seems at least a few of these survivors have already been mutated, and are desperately trying to hide it.";

South of the Warehouse Door is the Storage Room.

Section 2 - Steven, chat

Stevenswayed is a number that varies. Stevenswayed is usually 0.

Steven is a person in the Storage Room. "A guard who you recognize as the doorkeeper stands, understandably, by the big steel door. A nametag says 'Steven'."
The description of Steven is "A man in his thirties, wearing a security outfit. He looks from side to side with a distant look in his eyes. What kind of life did he have before the nanite invasion?"
The conversation of Steven is {"[steven flattery]", "What's it like out there? If I only had a gun, I might be able to assist you.", "I don't know how long this infestation has been going on. Long enough, in my opinion.", "None of us knew about about the nanites. Just before things went berserk, we grabbed a building and brought in everyone from the streets. You should've seen it.", "Before everything went to hell, I had a house, a son, twenty grand a year. It's all gone now. Those people out there are all I have left.", "Part of me wants to just give in. If civilization is going to hell... but I guess that's why people like me, who don't have anything else, are here for, right?", "You know, if you can find any chips or sodas out there, I can get you a few medkits.", "I miss burger joints. And coffee. And the internet. Hell, even a phone call to my mother would be great.", "Back in college, I played the drums. You think I have time to take it back up?", "I'd offer you a seat, but I don't have a lot around the office. You don't mind standing, right?", "I volunteered to be a guard, just so I wouldn't be wallowing in misery. Plus, you get free health kits.", "I haven't washed this uniform in so long. I could really go for a non-infected shower."}.

Before conversing Steven:
	if the player is in Storage Room:
		say "As you begin to converse with Steven, he waves to another guard. 'Take my place, will ya?' He takes you aside and says, 'We should talk away from everyone else.' He takes you across the floor to a row of storage compartments, now being used as makeshift guard quarters. He opens one up and lets you step inside.";
		move the player to Steven's Office;
		move Steven to Steven's Office;

After going to Storage Room from Steven's Office:
	move Steven to Storage Room.

To say steven flattery:
	if the player is bodily human:
		if the player is skintone human:
			if tailname is not "human":
				if the breast size of player is less than 4:
					if the Cock Length of player is less than 12 or the cock width of player is less than 12:
						say "You seem pretty reasonably human. Glad the disaster didn't take a hit out of you, eh?";
					otherwise:
						say "Congratulations on that, um... package of yours.";
				otherwise:
					say "So, um... Those are some nice breasts.";
			otherwise:
				say "That tail of yours must be very sensitive. For sitting down, I mean.";
		otherwise:
			say "That skin of yours makes you look very... alien. A good kind of alien, though.";
	otherwise:
		say "I know you still consider yourself human. It's what's on the inside that counts, right?";

Section 3 - Steven, trading

Steven is a trader.

Instead of trading when the second noun is Steven:
	if stevenremoved is 0:
		if the noun is soda:
			say "Steven's eyes gleam for a moment, before he snatches the can and tucks it away. He pulls out a medkit. 'Don't tell anyone about this.'";
			add "medkit" to invent of player;
			repeat with Q running through invent of the the player:
				if Q matches the regular expression "soda":
					delete soda;
					stop the action;
		if the noun is chips:
			say "Steven looks hungrily at the chips, and he carefully takes them off you and gives you back a medkit. 'You know, I'm breaking the rules for this,' as he winks at you.";
			add "medkit" to invent of player;
			repeat with Q running through invent of the the player:
				if q matches the regular expression "chips":
					delete chips;
					stop the action;
		say "He looks blankly at the [noun]. 'You can keep it.'";
	otherwise:
		if the noun is soda:
			say "Steven looks at the soda with an air of remembrance. 'You keep it,' he says. 'I've had enough soda for now.'";
		if the noun is chips:
			say "Steven shakes his head sadly. 'I think I lost my appetite for junk food, frankly.'";
		if the noun is medkit:
			say "He shakes his head. 'Eh, you keep it. I'm not particularly injured right now.'";
			[]

Section 4 - Steven, requests

Foodrequest is an action applying to nothing.
Understand "ask for food" as foodrequest.
Waterrequest is an action applying to nothing.
Understand "ask for water" as waterrequest.

Lastfoodrun is a number that varies. Lastfoodrun is usually 250.
Lastwaterrun is a number that varies. Lastwaterrun is usually 250.

Check foodrequest:
	if Steven is not visible:
		say "Your request falls upon deaf ears." instead;
	if steventrust is 0:
		say "He frowns and shakes his head. 'You're asking for too much, I'm afraid.'" instead;
	if the player is in Steven's Office:
		say "'I don't keep anything in here, you know,' he says." instead;
	if the player is not in Storage Room:
		say "He shakes his head. 'No, it's too late for that.'" instead;
	if lastfoodrun - turns is less than 4:
		say "'Not all at once,' he whispers. 'The longest the guards will tolerate a missing food ration is 12 hours. Ask me then.'" instead;

Carry out foodrequest:
	say "Steven nods. 'Wait here,' he says, and he disappears into the stockpile of supplies. Moments later, he returns with a packet of food.";
	add "food" to invent of player;
	now lastfoodrun is turns;

Check waterrequest:
	if Steven is not visible:
		say "Your request falls upon deaf ears." instead;
	if steventrust is 0:
		say "He frowns and shakes his head. 'You're asking for too much, I'm afraid.'" instead;
	if the player is in Steven's Office:
		say "'I don't keep anything in here, you know,' he says." instead;
	if the player is not in Storage Room:
		say "He shakes his head. 'No, it's too late for that.'" instead;
	if lastwaterrun - turns is less than 8:
		say "'Sorry,' he hushes you, 'but water is even stricter than food here. I can sneak you some water once every 24 hours, but any more than that, and the boss'll chew everyone's head off for stealing water.'" instead;

Carry out waterrequest:
	say "Steven nods. 'Wait here,' he says, and he disappears into the stockpile of supplies. Moments later, he returns with a bottle of water.";
	add "water bottle" to invent of player;
	now lastwaterrun is turns;

Chapter 3 - The Office and Stevenfucking

Section 1 - The Office

Steven's Office is a room. "The office is very sparsely decorated. A desk made from pallets and a chair made from crates sits on one corner of the room. A pallet in another corner functions as a bookshelf, showing a couple of books and a blackened popsicle picture frame, with 'Daddy' crayoned inside. Nothing else is decorated. A door leads back to the warehouse floor.";

Outside of Steven's Office is Storage Room. Inside of Storage Room is nowhere.

Section 2 - Stevenfucking

Steventrust is a number that varies. Steventrust is usually 0.
Stevenremoved is a number that varies. Stevenremoved is usually 0.

Instead of fucking the steven:
	if the player is in Storage Room:
		if cocks of player > 0:
			say "You lustily let down your pants as your member throbs in anticipation. As people around you begin screaming, however, a couple of guards grab you, keeping your precum away from anyone around you. They hurl open the door and toss you outside onto the stinging gravel.";
		otherwise:
			if cunts of player > 0:
				say "You lustily let down your pants as your flower goes red with anticipation. As people around you begin screaming, however, a couple of guards grab you, careful not to touch your parts. They hurl open the door and toss you outside onto the stinging gravel.";
			otherwise:
				say "You start doing a belly dance as everyone, civilians and guards alike, suddenly tenses up. No sooner do you turn around and slowly pull down your pants do the guards grab you and throw you, ass-backwards, onto the gravel outside.";
		move the player to the Abandoned Lot;
	otherwise:
		if stevenremoved is 0:
			if steventrust is 0:
				say "You approach Steven, and give him a long, tender kiss. He seems astonished and tries to back away, but as you keep on kissing him, he slowly starts to let loose. Just as you get into it, and start tugging his shirt, he pulls away. 'I'm sorry, I can't,' he stands in the corner, looking at his bookshelf. 'I have a responsibility now. I can't give up on it. Not yet. Not now.'";
				say "You hug him from behind and take off his trousers, exposing his cock. His black, 7-inch horse cock.";
				say "'I was working at the station when I heard the sirens,' he says. 'I ran straight to my apartment, and everything was on fire. I tried to find Danny. All I found was my Father's Day gift, there on the bookshelf. As I was running back, I ran into this horse thing. It must've squirted me, or something, because after I arrived here, my dick looked like this. Every day, I feel like this thing is trying to control me. But I have to suppress everything. If I go the slightest thing loose, I'll lose everything. The job I have here, the ... friends I've made, my people...'";
				say "Do you want to continue fucking him?";
				if the player consents:
					say "'You've had some painful memories,' you say, as you walk over to him, and lean over to whisper in his ear. 'But I can help you forget.'";
					stevenfuck;
				otherwise:
					say "You politely clear your throat, embarrassed by this incident. He pulls up his trousers, and straightens them carefully. 'Thank you,' he says, shaking. 'Don't tell anyone. I mean it[soda reference]. I'll give you clean food and water, no charge, no questions asked, I promise. Just [bold type]ask for food[roman type] or [bold type]ask for water[roman type], and I'll give it to you.' He walks to the door. 'Thanks for the chat,' as he leaves.";
					now steventrust is 1;
					move Steven to Storage Room;
			otherwise:
				say "You look at Steven, and he looks back. He backs up against the bookshelf, fearing the lust in your eyes. 'I know what you're thinking,' he says, backing towards the bookshelf. 'Please, don't. It's hard enough on my own. If you try to seduce me... well, I'll throw you, is what I'll do.' He turns away, shaking fearfully. 'I don't want to lose what I have...'";
				say "Do you still want to fuck him?";
				if the player consents:
					say "You walk up to him, slowly, and place your hand on his shoulder. He shivers. You put your other hand on his shoulder. You can feel the muscles underneath build up with tension. You lean over and whisper, 'You've got someone who loves you. What else matters?'";
					stevenfuck;
				otherwise:
					say "You apologize, and Steven simply leaves the room. 'Come back when you want to just talk, again.'";
					move Steven to Storage Room;
		otherwise:
			stevenjunkfuck;

To say soda reference:
	if stevenswayed is 1:
		say ", even more than that soda";

To stevenfuck:
	if cunts of player > 0:
		say "You turn him around and give him a long, lustful kiss. Your tongues touch and dance around each other as his cock grows in anticipation. You slip off your pants and seat your vulva around his cock and begin pumping it, back and forth, eagerly, as he falls against the bookshelf.";
		wait for any key;
		say "His grunts become groans of pleasure, as his hair starts to let itself down into a flowing mane. He fumbles with his shirt, trying to take it off as his hands harden into hooves. Finally he rips it off and sucks your mouth hard, his tongue fiercer with more passion than you've ever felt.";
		wait for any key;
		say "Each kiss becomes more intense than the last, as every buried passion comes forth as he jerks his pelvis into you, his butt ramming against the bookshelf. With one last bang, he snaps the bookcase into splinters, sending everything left on the shelf to the ground, while he ejaculates into you, letting loose a wild whinny.";
		wait for any key;
	otherwise:
		say "You turn him around and give him a long, lustful kiss. Your tongues touch and dance around each other as his cock grows in anticipation. You grab his shaft with one hand and begin rubbing it up and down.";
		wait for any key;
		if cocks of player > 0:
			if Cock Length of player > 8:
				say "You drop your own pants, and rub your own penis against his. He starts to gasp, but you keep your lips against his, tongues twirling around each other. He salivates passionately, and he grips your sides as his hips start rocking, banging into the bookshelf with ever-increasing bangs.";
				wait for any key;
		otherwise:
			say "He tries to pull away, in one last attempt at freedom, but you grab him with both hands and kiss him hard as you wriggle your whole body up and down his member. He falls against the bookshelf as you hug him more tightly his feet rising up off the ground, hands gradually coming to meet yours.";
			wait for any key;
		say "Finally, he pulls his mouth away from yours, but only for a second, as he darts back in, kissing you in the cheek and neck. His moans become whinnies of joy as his face stretches forward, kissing you further and further down your face. You sidle around as he kisses the back of your neck, and inserts his giant horse penis into your ass.";
		wait for any key;
		say "Now it is your turn to gasp, as he cuddles you tightly with his strong stallion arms. He bangs you, harder, harder, each time cracking the bookshelf into pieces. With one final kick, he smashes the pallet into smithereens as the cum creams into your abdomen, soaking your legs and dripping onto the floor.";
		wait for any key;
	say "Now all of your clothes are on the floor, Steven's right beside you. Both of you tumble to the floor, as he whinnies in excitement. His deep equine eyes jiggle with pleasure. 'Oh, let's not stop now,' he breathes, 'Let's do it again!' He kisses you again, and his feet, now hooves, stamps against the ground, smashing the picture frame and ripping the books in two. You two slide towards the middle and start doing it again, this time even faster and harder than before.";
	wait for any key;
	if cunts of player > 0:
		if breasts of player > 3:
			say "He drives his member into your hole, his balls banging against your ass, his hands gripping two of your breasts and stroking them, all while he kisses you, sucking at your lips and your tongue. You both gasp and groan very loudly as you pound the ground over and over again, until you suddenly feel Steven being lifted from you. You open your eyes to see the guards, having broken down the door, pulling your away from the primal scene.";
	otherwise:
		say "He presses your body up and down his equine body, until you finally catch his cock with your hands. Now you bring your head down onto it and start sucking it, loudly, strongly, with as much ferocity as his tongue. He falls over backwards, gasping, pounding the floor as loud as he can, screaming long and hard. He spasms hard, exhaling at the top of his lungs, and just as the seed comes forth and fills your mouth, the door roars open as heavy footsteps barge in and yank you away from your satisfied boyfriend.";
	say "The guards grab at Steven, two at each arm, three at each leg, in order to subdue him. They finally pin him against the wall, away from you, while another three drag you out. A hushed murmur has fallen amidst the crowd outside, but all you hear is your heart racing and your stomach spinning with glee. You barely notice being thrown outside.";
	move the player to Abandoned Lot;
	increase libido of player by 10;
	now Stevenremoved is 1;
	newstevenconverse;
	move Steven to Steven's home;
	now monster is 1;
	say "You slowly pull yourself up, still wheezing from excitement. "; [continues into next line]
	infect "red horse";
	infect "red horse";

Section 4 - Steven in the Junkyard
	
To newstevenconverse:
	now the description of Steven is "A tall, imposing horse figure, were he not someone you knew. He has muscles up and down his red-haired body, his black hair replaced with a long red mane. He wears a loincloth and a belt, probably from his old uniform. He walks awkwardly, but carefully with his legs that end in hooves.";
	now the conversation of Steven is {"I've seen a few beasts here and there, but I always manage to run away and hide. It's not as infested out here as the guards made it out to be.", "I think a wild animal used to live here, before the infestation. Smells like it hasn't been back for a long time.", "I actually feel pretty good. Even better than as a guard. It feels like I have a purpose, now.", "I might miss my old human body, but if you can't beat them, join them.' He chuckles, 'And no one could beat you, dear.", "You'd think there'd be a lot of disease going around. But I guess the nanites took care of that problem.", "One thing I like about this body is I feel so strong, I could lift a car. I always did wish I had a stronger build.", "I didn't use to be fond of horses, but now I can't stop thinking about them.", "I wish I had something to offer you, but I don't. There's not a lot of food here anymore.", "There are plenty of coffee tins here. I think I might make a set of bongo drums.", "The smell still gets through, once in a while. Tell me if you find any potpourri or something."};
	now the initial appearance of Steven is "[one of]Steven continues to rearrange the furnishings[or]Steven waits on you patiently[or]Steven swats away an annoying fly[or]Steven straightens his loincloth[or]Steven smiles warmly as you look at him[at random].";

Laststevenfuck is a number that varies. Laststevenfuck is usually 250.

To stevenjunkfuck:
	if laststevenfuck - turns is less than 6:
		say "You start to cuddle up against him, but the flame just isn't lighting for him. Perhaps you should try again later.";
		stop the action;
	[fucking in the junkyard; should fill this in with sex]
	say "You have a jolly good fucking with Steven.";
	now laststevenfuck is turns;

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--

When play begins:
	add "red horse" to infections of furry;
	add "red horse" to infections of hermaphrodite;
	Choose a blank row from Table of random critters;
	now name entry is "red horse";
	now face entry is "flat-toothed, prehensile-lipped equine";
	now body entry is "well-muscled";
	now skin entry is "long red hairs up and down your";
	now tail entry is "You have a long stringy tail that you can whisk as you please.";
	now cock entry is "horse";
	now face change entry is "the bones in your face mold like putty into a long, equine snout. Your ears scurry to the top of your head as your hair flows down into a mane.";
	now body change entry is "your body stretches and bends in places you didn't know existed. Muscles grow on your body, and your fingers thicken and blacken, but thankfully don't disappear. Your feet lengthen and both of your legs toughen up to support your sizable bulk.";
	now skin change entry is "hairs start growing from your skin, soon covering you with a layer of long auburn hairs.";
	now ass change entry is "your butt starts to tingle a little, and with a sudden push from just above the crack, a horse tail sprouts.";
	now cock change entry is "it stretches and flattens, your testicles grow small red hairs as the foreskin of your penis creeps up and covers the tip.";
	now str entry is 18;
	now dex entry is 12;
	now sta entry is 20;
	now per entry is 10;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Both";
	now cock length entry is 15;
	now cock width entry is 6;
	now cocks entry is 1;
	now breasts entry is 2;
	now breast size entry is 4;
	now male breast size entry is 0;
	now cunts entry is 1;
	now cunt length entry is 15;
	now cunt width entry is 7;
	now libido entry is 40;
	now lootchance entry is 0;

Chapter 4 - Junkyard

Section 1 - The environment

Junkyard Entrance is east of the Abandoned Lot. "In this dirty part of the town you stand on the road to an even dirtier place. The smells of the city junkyard, of rotting food and fetid water, reek from the north. The dirt road curves to the west, back to the abandoned warehouse complex."

Junkyard Gate is a door. "The junkyard to the north appears threatening and dangerous, but there's probably plenty of loot for the taking." Junkyard Gate is dangerous.

North of Junkyard Gate is Junkyard Interior.
North of Junkyard Entrance is Junkyard Gate.

The marea of Junkyard Gate is "Junkyard".

Section 2 - Junkyard Digups

Junkyard digups is a situation. The printed name of Junkyard digups is "a pile of garbage".
The sarea of junkyard digups is "Junkyard".

After resolving the junkyard digups, try looking;

Instead of resolving junkyard digups:
	say "There are plenty of piles in the junkyard to look through. You pick one and search it.";
	if a random chance of 1 in 3 succeeds:
		if a random chance of 1 in 2 succeeds:
			say "You find a bottle of water!";
			add "water bottle" to invent of player;
		otherwise:
			say "You find a bottle of dirty water!";
			add "dirty water" to invent of player;
	otherwise:
		say "Alas, you do not find anything in this pile. You should try again."

Section 3 - Steven's home

Steven's home is a room. "You are in a more cozy and more private part of the junkyard. All of the hard metal objects have been cleared, and instead the floor is lined with mattress stuffing and foam insulation, topped off with wild grass for a natural feel. It also doesn't smell as bad, thanks to the pine needles and wildflower petals mixed into the floor. You feel safe and protected here." It is fasttravel. It is private. Outside of Steven's home is Junkyard Entrance. Inside of Junkyard Entrance is nowhere.
[The sarea of Steven's home is "Junkyard."]

a junkyard home is a situation.
The sarea of a junkyard home is "Junkyard".

Instead of resolving a junkyard home:
	if Stevenremoved is 0:
		say "You come across what looks like an abandoned habitation, filled with old nesting material and various shiny objects. Is it some kind of bird's nest? You decide to leave it alone... for now.";
		stop the action;
	otherwise:
		say "You turn around a corner and find a quaint little cove in the stacks of junk. A familiar-looking person is tidying up the floor, and looks up as you approach.";
		say "'Ah, hello,' Steven says. 'Didn't know if I'd see you again.' He looks down at near-naked equine body, wearing only a belt and a loincloth. 'As you can tell, I was permanently disbarred and exiled. My old clothes don't fit me anymore. This loincloth was part of a curtain. There is a lot of useful stuff out here, but it's not like it was in the shelter. I'm sure we'll make it through, though.'";
		say "'I want to thank you,' he says. 'I don't know if it was the best decision I've made, but I feel some relief for this body. It feels like, completion, I guess. The grass is tastier on the other side, after all.' He smiles. 'You like the place? I think it's roomy enough. If you want to... you know... move in.' He coughs and goes back to work.";
		move the player to Steven's home;
		now junkyard home is resolved.

Section 4 - Finding a tool

an unused tool is a situation.
The sarea of an unused tool is "Junkyard".

Table of Game Objects (continued)
name	desc	weight	object
"crowbar"	"A big, heavy crowbar. It's not sharp, but it's heavy enough to strike a good blow."	3	crowbar
"mallet"	"A heavy mallet. If you swung it hard enough, you could easily crack someone's head open."	5	mallet
"iron pipe"	"A piece of iron pipe. It might make a good blunt weapon."	3	iron pipe

crowbar is a armament. It is a part of the player. It has a weapon "your crowbar". The weapon damage of crowbar is 6. The weapon type of crowbar is "Melee". It is not temporary.
mallet is a armament. It is a part of the player. It has a weapon "your mallet". The weapon damage of mallet is 7. The weapon type of mallet is "Melee". It is not temporary.
iron pipe is a armament. It is a part of the player. It has a weapon "your iron pipe". The weapon damage of iron pipe is 3. The weapon type of iron pipe is "Melee". It is not temporary.

Instead of resolving an unused tool:
	say "As you explore the junkyard, you come across a pile of discarded tools. You search through the pile for something interesting.";
	let result be a random number from 1 to 3;
	if result is 1:
		say "Huzzah! You found a crowbar!";
		add "crowbar" to invent of player;
	if result is 2:
		say "Success! You found a mallet!";
		add "mallet" to invent of player;
	if result is 3:
		say "Yay! You found an iron pipe!";
		add "iron pipe" to invent of player;
	now an unused tool is resolved;

Section 5 - Find a random infected object

signs of a scuffle is a situation.
The sarea of signs of a scuffle is "Junkyard".

Instead of resolving signs of a scuffle:
	say "It looks like two infected creatures were fighting each other out here. You search the area for any fallen loot:[line break]";
	let opportunity be 0;
	let firstbeast be a random number from 1 to number of filled rows in the table of random critters;
	choose row firstbeast from the table of random critters;
	if there is a loot entry:
		if loot entry is not "":
			add loot entry to invent of player;
			say "You found 1 x [loot entry]!";
			now opportunity is 1;
	let secondbeast be a random number from 1 to number of filled rows in the table of random critters;
	choose row secondbeast from the table of random critters;
	if there is a loot entry:
		if loot entry is not "":
			add loot entry to invent of player;
			say "You found 1 x [loot entry]!";
			now opportunity is 1;
	if opportunity is 0:
		say "Alas, you found nothing but dirt, dust, and junk."

Junkyard and Warehouse ends here.