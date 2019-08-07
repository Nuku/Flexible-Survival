Version 3 of Junkyard and Warehouse by Wahn begins here.
[ Version 3 - Rework by Wahn]
[- Originally Authored By: Rimme -]

[ StevenSwayed - Soda for Steven              ]
[  0: no Soda                                 ]
[  1: gave Steven Soda before                 ]

Chapter 1 - Abandoned Lot into Storage Room

Section 1 - Lot Environment

Table of GameRoomIDs (continued)
Object	Name
Abandoned Lot	"Abandoned Lot"

Abandoned Lot is a room.
Abandoned Lot is fasttravel.
The earea of Abandoned Lot is "Outside".
the description of Abandoned Lot is "[LotDesc]".

to say LotDesc:
	say "In the industrial park on the outskirts of town, you find yourself in a vacant lot, filled with weeds and gravel. Even before the nanite outbreak, this place clearly off the beaten path and ill-used. Bordering the lot are a series of broken-down, graffiti-colored warehouses. Old 'Authorized Personnel Only' signs lay on the ground.";
	say "A road leads east between the buildings. You can make out the entrance to a junkyard there.";

Warehouse Door is a door. "[if the player is in Abandoned Lot]One of the warehouses has an entrance that is cleared of overgrowth. You can see footprints - human footprints, in fact! - leading up to it[else]There are many doors along the wall, but the only one open to you is the one leading outside[end if].";

Lot Exit is a door. Lot Exit is dangerous. The marea of Lot Exit is "Outside". Lot Exit is undescribed. Lot Exit is west of Abandoned Lot. Outside Exploration is west of Lot Exit.
Warehouse Door is south of Abandoned Lot.

instead of sniffing Abandoned Lot:
	say "This area smells of dry earth, old machinery and oil.";

instead of sniffing Warehouse Door:
	say "This area smells old machinery and oil, and behind that, faintly of human beings.";

Section 2 - Entering the Warehouse

Definition: a person is facially human:
	if FaceName of Player is "Human", yes;
	if FaceName of Player is "Herm Human", yes;
	if FaceName of Player is "Pod Person", yes;
	if FaceName of Player is "Siren", yes;
	if FaceName of Player is "Greek Nymph", yes;
	if FaceName of Player is "Spartan Warrior", yes;
	if FaceName of Player is "Helot Manservant", yes;
	if FaceName of Player is "Amazonian", yes;
	if FaceName of Player is "Naiad", yes;
	if FaceName of Player is "Math Teacher", yes;
	if FaceName of Player is "Viking Woman", yes;
	if FaceName of Player is "Knight", yes;
	if FaceName of Player is "Squire", yes;
	if HeadName of Player is "Human", yes;
	if HeadName of Player is "Herm Human", yes;
	if HeadName of Player is "Pod Person", yes;
	if HeadName of Player is "Siren", yes;
	if HeadName of Player is "Greek Nymph", yes;
	if HeadName of Player is "Spartan Warrior", yes;
	if HeadName of Player is "Helot Manservant", yes;
	if HeadName of Player is "Amazonian", yes;
	if HeadName of Player is "Naiad", yes;
	if HeadName of Player is "Math Teacher", yes;
	if HeadName of Player is "Viking Woman", yes;
	if HeadName of Player is "Knight", yes;
	if HeadName of Player is "Squire", yes;
	no;

Definition: a person is skintone human:
	if SkinName of Player is "Human", yes;
	if SkinName of Player is "Herm Human", yes;
	if SkinName of Player is "Pod Person", yes;
	if SkinName of Player is "City Sprite", yes;
	if SkinName of Player is "Wood Elf", yes;
	if SkinName of Player is "Elven Hunter", yes;
	if SkinName of Player is "Harpy", yes;
	if SkinName of Player is "Siren", yes;
	if SkinName of Player is "Succubus", yes;
	if SkinName of Player is "Incubus", yes;
	if SkinName of Player is "Greek Nymph", yes;
	if SkinName of Player is "Spartan Warrior", yes;
	if SkinName of Player is "Helot Manservant", yes;
	if SkinName of Player is "Amazonian", yes;
	if SkinName of Player is "Naiad", yes;
	if SkinName of Player is "Caveman", yes;
	if SkinName of Player is "Math Teacher", yes;
	if SkinName of Player is "Viking Woman", yes;
	if SkinName of Player is "Knight", yes;
	if SkinName of Player is "Squire", yes;
	if SkinName of Player is "Gunbunny", yes;
	no;

Definition: a person is bodily human:
	if BodyName of Player is "Human", yes;
	if BodyName of Player is "Herm Human", yes;
	if BodyName of Player is "Wood Elf", yes;
	if BodyName of Player is "Elven Hunter", yes;
	if BodyName of Player is "Pod Person", yes;
	if BodyName of Player is "Greek Nymph", yes;
	if BodyName of Player is "Spartan Warrior", yes;
	if BodyName of Player is "Helot Manservant", yes;
	if BodyName of Player is "Amazonian", yes;
	if BodyName of Player is "Naiad", yes;
	if BodyName of Player is "Math Teacher", yes;
	if BodyName of Player is "Viking Woman", yes;
	if BodyName of Player is "Knight", yes;
	if BodyName of Player is "Squire", yes;
	no;

Instead of entering the Storage Room:
	try going south;

Instead of going through the Warehouse Door:
	if location of the player is the Abandoned Lot:
		try going south;
	else:
		move player to the Abandoned Lot;

Instead of going south from the Abandoned Lot:
	if Stevenremoved is 0:
		say "     As you knock on the door, a slat opens up at eye level. ";
		if the player is not facially human:
			if StevenSwayed is 1: [gave Steven soda before]
				say "A person you recognize as Steven looks out at you for a moment, startled by your change in appearance. 'I'm sorry,' he whispers, 'but I [italic type]really[roman type] can't let you in here looking like that. Try changing your appearance somehow, okay?' Giving you an apologetic look, he quickly closes the slat again right after that.";
			else:
				say "You barely see a pair of eyes look out at you before a man cries, 'Yikes!' and the slat closes rapidly. Perhaps it was your [FaceName of Player] face.";
		else if scalevalue of Player is 1 or scalevalue of Player > 3 or BodyName of Player is listed in infections of Taurlist: [small or large player, or taurs]
			if StevenSwayed is 1: [gave Steven soda before]
				say "A person you recognize as Steven looks out at you for a moment, startled by your change in appearance. 'I'm sorry,' he whispers, 'but there's [italic type]no[roman type] way to hide [if BodyName of Player is listed in infections of Taurlist]those four feet of yours. You're going to have to at least be humanoid, okay[else if scalevalue of Player is 1]just how small you are. They're sure to know something's up. Try to find a way to get back to normal size, okay[else]big you've gotten. Try to find a way to shrink back down somehow, okay[end if]?' Giving you an apologetic look, he quickly closes the slat again right after that.";
			else:
				say "You barely see a pair of eyes look out at you before a man cries, 'Yikes!' and the slat closes rapidly. Perhaps it was your [if BodyName of Player is listed in infections of Taurlist]tauric body[else]altered body and its [Body Size Adjective of Player] size[end if].";
		else:
			say "'Hello! Who's there?' a man from behind the door says, looking out at you.";
			if StevenSwayed is 1: [gave Steven soda before]
				say "     Steven's stare softens immediately as he recognizes you and says, 'Oh, you again. Come on in.' With that said, the man removes the heavy locking bar and pulls the door open, hastily waving you inside.";
				move player to Storage Room;
			else:
				let changed be false;
				if the player is not skintone human:
					now changed is true;
				if the tail of the player is not "":
					now changed is true;
				if the player is not bodily human:
					now changed is true;
				if changed is false:
					say "     You explain that you are another survivor and that you wish to enter. The guard's gaze jumps left and right as he checks the street for roaming creatures nearby, then he nods. 'Of course. Let me open this up, he says and closes the slat. Through the thick door, you hear him call, 'We got a new visitor!' then you can hear the sound of a heavy locking bar being removed from the other side of the door. Opening the entrance a moment later, the guy hastily waves you inside before throwing it shut again. Offering his hand, he shakes yours and says, 'Welcome. I'm Steven by the way.'";
					move player to Storage Room;
				else:
					say "     The guard gives a startled cry when he sees the rest of your body, but you quickly explain that you are just another infected survivor, and you wish to enter for just a moment. 'I'm sorry,' he says. 'Too many of us have had, ahem, encounters with the beasts outside.' Starting to close the viewing slat at first, he then pauses for a second and looks at you with a little calculation in his eyes. 'Wait - I... I might make an exception,' he whispers, 'If you could bring me a soda. I haven't had one in so long.'";
					if soda is owned:
						LineBreak;
						say "     Do you give him a bottle of soda?";
						if Player consents:
							LineBreak;
							say "     You dig into your backpack and hold the 20 oz bottle up for him to see. The man nods happily and accepts the bottle as you hand it through the slit, having to push a bit to make it fit with some scrapes along the sides. 'Thanks,' he says, then abruptly closes the opening. A few moments later, he is back, opening the slat and showing you to another man who looks out suspiciously. The two mumble to each other for a moment before the second man speaks up.";
							say "     'All right, we will let you in. But if you try anything funny, you'll be out on the streets so fast your head will spin!' You promise you won't be any trouble, and the guards open the door for you, hastily waving you inside. The original guy at the door starts to raise his hand to shake yours, then pauses and puts it back down as he remembers the nanite infection. 'Um. Yeah. So... I'm Steven by the way,' he tells you, then quickly goes to grab a large black raincoat, throwing it over you to conceal your changed body at least a little.";
							delete soda;
							move player to Storage Room;
							now StevenSwayed is 1;
						else:
							say "     Shaking your head, you step away from the door. The viewing slat quickly closes.";
					else:
						say "You promise you will bring him one, and he shakes his head with embarrassment. 'Don't tell anyone I offered you a bribe, understand?' he speaks up again. 'Now go, before someone sees you!' He closes the slat.";
	else:
		say "The slat opens up, and a fierce-looking pair of eyes look upon you. '[one of]Scram[or]Get lost[or]Go away[or]Shoo[or]Get off our land[or]Leave[or]Go fuck your brains out[or]Go screw a farm animal[or]Go suck some horse cocks[or]Go back to your den[at random], you [one of]disgusting[or]sick[or]twisted[or]cock-sucking[or]fucking[or]good-for-nothing[or]degenerate[or]inhuman[at random] [one of]beast[or]mutant[or]pervert[or]animal[or]vermin[or]horse-fucker[or]zoophile[or]traitor[or]savage[at random]!' he shouts, slamming the slat shut.";

Chapter 2 - Storage Room and Steven

Section 1 - The environment

Table of GameRoomIDs (continued)
Object	Name
storage room	"storage room"

The storage room is a room. "The inside of this warehouse has been converted into a shelter. The large stockpile of packaging and spare parts remains in the center of the room, a remnant of the city's industry. More heavily guarded are the stockpiles of bottled water in the corner. A line of survivors stretches from the water all the way around the wall. Few of them carry any possessions; they sit on blankets as they talk to one another. Every now and then, a glint of color or a patch of fur catches your eye; it seems at least a few of these survivors have already been mutated, and are desperately trying to hide it.";

Storage Room is south of the Warehouse Door.

instead of sniffing Storage Room:
	say "The storage room smells of the human survivors and their supplies. Fear is thick in the air, almost completely masking the faint traces of other non-human scents among the group. It seems a few of them are at least slightly infected and desperately trying to hide it.";

Section 2 - Steven, chat

StevenSwayed is a number that varies. StevenSwayed is usually 0.

Table of GameCharacterIDs (continued)
object	name
Steven	"Steven"

Steven is a person in the Storage Room. "A guard who you recognize as the doorkeeper stands, understandably, by the big steel door. A nametag says 'Steven'."
The description of Steven is "A man in his thirties, wearing a security outfit. He looks from side to side with a distant look in his eyes. What kind of life did he have before the nanite invasion?".
The conversation of Steven is {"[Steven flattery]", "What's it like out there? If I only had a gun, I might be able to assist you.", "I don't know how long this infestation has been going on. Long enough, in my opinion.", "None of us knew about the nanites. Just before things went berserk, we grabbed a building and brought in everyone from the streets. You should've seen it.", "Before everything went to hell, I had a house, a son, twenty grand a year. It's all gone now. Those people out there are all I have left.", "Part of me wants to just give in. If civilization is going to hell... but I guess that's why people like me, who don't have anything else, are here for, right?", "You know, if you can find any chips or sodas out there, I can get you a few medkits.", "I miss burger joints. And coffee. And the internet. Hell, even a phone call to my mother would be great.", "Back in college, I played the drums. You think I have time to take it back up?", "I'd offer you a seat, but I don't have a lot around the office. You don't mind standing, right?", "I volunteered to be a guard, just so I wouldn't be wallowing in misery. Plus, you get free health kits.", "I haven't washed this uniform in so long. I could really go for a non-infected shower."}.
The fuckscene of Steven is "[sexwithSteven]".

instead of linkactioning Steven when Steventrust > 0 and the player is in Storage Room:
	say "Possible Actions: [link]talk[as]talk Steven[end link], [link]smell[as]smell Steven[end link], [link]fuck[as]fuck Steven[end link][if Stevenfood < 5], [link]food[as]ask for food[end link][end if][if Stevenwater < 5], [link]water[as]ask for water[end link][end if][line break]";

instead of sniffing Steven:
	say "Steven smells strong and manly, reminding you of old cowboy movies for some reason.";

Before conversing Steven:
	if the player is in Storage Room:
		say "As you begin to converse with Steven, he waves to another guard. 'Take my place, will ya?' He takes you aside and says, 'We should talk away from everyone else.' He takes you across the floor to a row of storage compartments, now being used as makeshift guard quarters. He opens one up and lets you step inside.";
		move player to Steven's Office;
		move Steven to Steven's Office;

After going to Storage Room from Steven's Office:
	move Steven to Storage Room.

To say Steven flattery:
	if the player is bodily human:
		if the player is skintone human:
			if TailName is not "Human":
				if Breast Size of Player < 4:
					if Cock Length of Player < 12 or the Ball Size of Player < 12:
						say "You seem pretty reasonably human. Glad the disaster didn't take a hit out of you, eh?";
					else:
						say "Congratulations on that, um... package of yours.";
				else:
					say "So, um... Those are some nice breasts.";
			else:
				say "That tail of yours must be very sensitive. For sitting down, I mean.";
		else:
			say "That skin of yours makes you look very... alien. A good kind of alien, though.";
	else:
		say "I know you still consider yourself human. It's what's on the inside that counts, right?";

Section 3 - Steven, trading

Steven is a trader.

Instead of trading when the second noun is Steven:
	if Stevenremoved is 0:
		if the noun is soda:
			say "Steven's eyes gleam for a moment, before he snatches the can and tucks it away. He pulls out a medkit. 'Don't tell anyone about this.'";
			increment carried of medkit;
			delete soda;
		else if the noun is chips:
			say "Steven looks hungrily at the chips, and he carefully takes them off you and gives you back a medkit. 'You know, I'm breaking the rules for this,' as he winks at you.";
			increment carried of medkit;
			delete chips;
		else:
			say "He looks blankly at the [noun]. 'You can keep it.'";
	else:
		if the noun is soda:
			say "Steven looks at the soda with an air of remembrance. 'You keep it,' he says. 'I've had enough soda for now.'";
		else if the noun is chips:
			say "Steven shakes his head sadly. 'I think I lost my appetite for junk food, frankly.'";
		else if the noun is medkit:
			say "He shakes his head. 'Eh, you keep it. I'm not particularly injured right now.'";
		else:
			say "'Thanks, but no. You hang on to it.";

Section 4 - Steven, requests

Foodrequest is an action applying to nothing.
Understand "ask for food" as foodrequest.
Waterrequest is an action applying to nothing.
Understand "ask for water" as waterrequest.

Lastfoodrun is a number that varies. Lastfoodrun is usually 250.
Stevenfood is a number that varies.
Lastwaterrun is a number that varies. Lastwaterrun is usually 250.
Stevenwater is a number that varies.

Check foodrequest:
	if Steven is not visible:
		say "Your request falls upon deaf ears." instead;
	if Steventrust is 0:
		say "He frowns and shakes his head. 'You're asking for too much, I'm afraid.'" instead;
	if the player is in Steven's Office:
		say "'I don't keep anything in here, you know,' he says." instead;
	if the player is not in Storage Room:
		say "He shakes his head. 'No, it's too late for that.'" instead;
	if Stevenwater is 5:
		say "He shakes his head. 'I can't. Our supplies are too low. Any more will definitely be noticed.'";
	if lastfoodrun - turns < 4:
		say "'Not all at once,' he whispers. 'The longest the guards will tolerate a missing food ration is 12 hours. Ask me then.'" instead;

Carry out foodrequest:
	say "Steven nods. 'Wait here,' he says, and he disappears into the stockpile of supplies. Moments later, he returns with a packet of food.";
	increment carried of food;
	now lastfoodrun is turns;
	increase Stevenfood by 1;
	if Stevenfood is 5:
		say "That's as much food as I can give you. I'm really sorry.";

Check waterrequest:
	if Steven is not visible:
		say "Your request falls upon deaf ears." instead;
	if Steventrust is 0:
		say "He frowns and shakes his head. 'You're asking for too much, I'm afraid.'" instead;
	if the player is in Steven's Office:
		say "'I don't keep anything in here, you know,' he says." instead;
	if the player is not in Storage Room:
		say "He shakes his head. 'No, it's too late for that.'" instead;
	if Stevenwater is 5:
		say "He shakes his head. 'I can't. Our supplies are too low. Any more will definitely be noticed.'";
	if lastwaterrun - turns < 8:
		say "'Sorry,' he hushes you, 'but water is even stricter than food here. I can sneak you some water once every 24 hours, but any more than that, and the boss'll chew everyone's head off for stealing water.'" instead;

Carry out waterrequest:
	say "Steven nods. 'Wait here,' he says, and he disappears into the stockpile of supplies. Moments later, he returns with a bottle of water.";
	increment carried of water bottle;
	now lastwaterrun is turns;
	increase Stevenwater by 1;
	if Stevenwater is 5:
		say "That's as much water as I can give you. I'm really sorry.";

Chapter 3 - The Office and StevenFucking

Section 1 - The Office

Table of GameRoomIDs (continued)
Object	Name
Steven's Office	"Steven's Office"

Steven's Office is a room. "The office is very sparsely decorated. A desk made from pallets and a chair made from crates sits on one corner of the room. A pallet in another corner functions as a bookshelf, showing a couple of books and a blackened popsicle picture frame, with 'Daddy' crayoned inside. Nothing else is decorated. A door leads back to the warehouse floor.";

Storage Room is outside of Steven's Office. Nowhere is inside of Storage Room.

instead of sniffing Steven's Office:
	say "The room smells like Steven, strong and manly.";

Section 2 - StevenFucking

Steventrust is a number that varies.
Stevenremoved is a number that varies.
Stevenmm is a number that varies.

to say sexwithSteven:
	if the player is in Storage Room:
		if Player is male:
			say "You lustily let down your pants as your member throbs in anticipation. As people around you begin screaming, however, a couple of guards grab you, keeping your precum away from anyone around you. They hurl open the door and toss you outside onto the stinging gravel.";
		else:
			if Player is female:
				say "You lustily let down your pants as your flower goes red with anticipation. As people around you begin screaming, however, a couple of guards grab you, careful not to touch your parts. They hurl open the door and toss you outside onto the stinging gravel.";
			else:
				say "You start doing a belly dance as everyone, civilians and guards alike, suddenly tenses up. No sooner do you turn around and slowly pull down your pants do the guards grab you and throw you, ass-backwards, onto the gravel outside.";
		move player to the Abandoned Lot;
	else:
		if Stevenremoved is 0:
			if Steventrust is 0:
				say "You approach Steven, and give him a long, tender kiss. He seems astonished and tries to back away, but as you keep on kissing him, he slowly starts to let loose. Just as you get into it, and start tugging his shirt, he pulls away. 'I'm sorry, I can't,' he stands in the corner, looking at his bookshelf. 'I have a responsibility now. I can't give up on it. Not yet. Not now.'";
				say "You hug him from behind and take off his trousers, exposing his cock. His black, seven-inch horse cock.";
				say "'I was working at the station when I heard the sirens,' he says. 'I ran straight to my apartment, and everything was on fire. I tried to find Danny. All I found was my Father's Day gift, there on the bookshelf. As I was running back, I ran into this horse thing. It must've squirted me, or something, because after I arrived here, my dick looked like this. Every day, I feel like this thing is trying to control me. But I have to suppress everything. If I go the slightest thing loose, I'll lose everything. The job I have here, the... friends I've made, my people...'";
				say "Do you want to continue fucking him?";
				if Player consents:
					say "'You've had some painful memories,' you say, as you walk over to him, and lean over to whisper in his ear. 'But I can help you forget.'";
					StevenFuck;
				else:
					say "You politely clear your throat, embarrassed by this incident. He pulls up his trousers, and straightens them carefully. 'Thank you,' he says, shaking. 'Don't tell anyone. I mean it[soda reference]. I'll give you clean food and water, no charge, no questions asked, I promise. Just [bold type]ask for food[roman type] or [bold type]ask for water[roman type], and I'll give it to you.' He walks to the door. 'Thanks for the chat,' as he leaves.";
					now Steventrust is 1;
					move Steven to Storage Room;
			else:
				say "You look at Steven, and he looks back. He backs up against the bookshelf, fearing the lust in your eyes. 'I know what you're thinking,' he says, backing towards the bookshelf. 'Please, don't. It's hard enough on my own. If you try to seduce me... well, I'll throw you, is what I'll do.' He turns away, shaking fearfully. 'I don't want to lose what I have...'";
				say "Do you still want to fuck him?";
				if Player consents:
					say "You walk up to him, slowly, and place your hand on his shoulder. He shivers. You put your other hand on his shoulder. You can feel the muscles underneath build up with tension. You lean over and whisper, 'You've got someone who loves you. What else matters?'";
					StevenFuck;
				else:
					say "You apologize, and Steven simply leaves the room. 'Come back when you want to just talk, again.'";
					move Steven to Storage Room;
		else:
			Stevenjunkfuck;

To say soda reference:
	if StevenSwayed is 1:
		say ", even more than that soda";

To StevenFuck:
	if Player is female:
		say "You turn him around and give him a long, lustful kiss. Your tongues touch and dance around each other as his cock grows in anticipation. You slip off your pants and seat your vulva around his cock and begin pumping it, back and forth, eagerly, as he falls against the bookshelf.";
		WaitLineBreak;
		say "His grunts become groans of pleasure, as his hair starts to let itself down into a flowing mane. He fumbles with his shirt, trying to take it off as his hands harden into hooves. Finally he rips it off and sucks your mouth hard, his tongue fiercer with more passion than you've ever felt.";
		WaitLineBreak;
		say "Each kiss becomes more intense than the last, as every buried passion comes forth as he jerks his pelvis into you, his butt ramming against the bookshelf. With one last bang, he snaps the bookcase into splinters, sending everything left on the shelf to the ground, while he ejaculates into you, letting loose a wild whinny.";
		WaitLineBreak;
	else:
		say "You turn him around and give him a long, lustful kiss. Your tongues touch and dance around each other as his cock grows in anticipation. You grab his shaft with one hand and begin rubbing it up and down.";
		WaitLineBreak;
		if Player is male:
			if Cock Length of Player > 8:
				say "You drop your own pants, and rub your own penis against his. He starts to gasp, but you keep your lips against his, tongues twirling around each other. He salivates passionately, and he grips your sides as his hips start rocking, banging into the bookshelf with ever-increasing vigor.";
				WaitLineBreak;
		else:
			say "He tries to pull away, in one last attempt at freedom, but you grab him with both hands and kiss him hard as you wriggle your whole body up and down his member. He falls against the bookshelf as you hug him more tightly his feet rising up off the ground, hands gradually coming to meet yours.";
			WaitLineBreak;
		say "Finally, he pulls his mouth away from yours, but only for a second, as he darts back in, kissing you in the cheek and neck. His moans become whinnies of joy as his face stretches forward, kissing you further and further down your face. You sidle around as he kisses the back of your neck, and inserts his giant horse penis into your ass.";
		WaitLineBreak;
		say "Now it is your turn to gasp, as he cuddles you tightly with his strong stallion arms. He bangs you, harder, harder, each time cracking the bookshelf into pieces. With one final kick, he smashes the pallet into smithereens as the cum creams into your abdomen, soaking your legs and dripping onto the floor.";
		WaitLineBreak;
	say "Now all of your clothes are on the floor, Steven's right beside you. Both of you tumble to the floor, as he whinnies in excitement. His deep equine eyes jiggle with pleasure. 'Oh, let's not stop now,' he breathes, 'Let's do it again!' He kisses you again, and his feet, now hooves, stamps against the ground, smashing the picture frame and ripping the books in two. You two slide towards the middle and start doing it again, this time even faster and harder than before.";
	WaitLineBreak;
	if Player is female:
		if Nipple Count of Player > 3:
			say "He drives his member into your hole, his balls banging against your ass, his hands gripping two of your breasts and stroking them, all while he kisses you, sucking at your lips and your tongue. You both gasp and groan very loudly as you pound the ground over and over again, until you suddenly feel Steven being lifted from you. You open your eyes to see the guards, having broken down the door, pulling your away from the primal scene.";
	else:
		say "He presses your body up and down his equine body, until you finally catch his cock with your hands. Now you bring your head down onto it and start sucking it, loudly, strongly, with as much ferocity as his tongue. He falls over backwards, gasping, pounding the floor as loud as he can, screaming long and hard. He spasms hard, exhaling at the top of his lungs, and just as the seed comes forth and fills your mouth, the door roars open as heavy footsteps barge in and yank you away from your satisfied boyfriend.";
	say "The guards grab at Steven, two at each arm, three at each leg, in order to subdue him. They finally pin him against the wall, away from you, while another three drag you out. A hushed murmur has fallen amidst the crowd outside, but all you hear is your heart racing and your stomach spinning with glee. You barely notice being thrown outside.";
	move player to Abandoned Lot;
	increase Libido of Player by 10;
	now Stevenremoved is 1;
	newStevenconverse;
	move Steven to Steven's Home;
	now MonsterID is 1;
	say "You slowly pull yourself up, still wheezing from excitement. "; [continues into next line]
	infect "Morgan Horse Stallion";
	infect "Morgan Horse Stallion";

Section 4 - Steven in the Junkyard

To newStevenconverse:
	now the description of Steven is "A tall, imposing horse figure, were he not someone you knew. He has muscles up and down his red-haired body, his black hair replaced with a long red mane. He wears a loincloth and a belt, probably from his old uniform. He walks awkwardly, but carefully with his legs that end in hooves.";
	now the conversation of Steven is {"I've seen a few beasts here and there, but I always manage to run away and hide. It's not as infested out here as the guards made it out to be.", "I think a wild animal used to live here, before the infestation. Smells like it hasn't been back for a long time.", "I actually feel pretty good. Even better than as a guard. It feels like I have a purpose, now.", "I might miss my old human body, but if you can't beat them, join them.' He chuckles, 'And no one could beat you, dear.", "You'd think there'd be a lot of disease going around. But I guess the nanites took care of that problem.", "One thing I like about this body is I feel so strong, I could lift a car. I always did wish I had a stronger build.", "I didn't use to be fond of horses, but now I can't stop thinking about them.", "I wish I had something to offer you, but I don't. There's not a lot of food here anymore.", "There are plenty of coffee tins here. I think I might make a set of bongo drums.", "The smell still gets through, once in a while. Tell me if you find any potpourri or something."};
	now the initial appearance of Steven is "[one of]Steven continues to rearrange the furnishings[or]Steven waits on you patiently[or]Steven swats away an annoying fly[or]Steven straightens his loincloth[or]Steven smiles warmly as you look at him[at random].";

To Stevenjunkfuck:
	[puts red horse as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Morgan Horse Stallion":
			now MonsterID is y;
			break;
	if lastfuck of Steven - turns < 6:
		say "You start to cuddle up against him, but the flame just isn't lighting for him. Perhaps you should try again later.";
	else:
		say "     You slide over and cuddle up against Steven, pulling you both down to the ground. You nuzzling at his chest as you slide your hand down to his crotch, taking hold of his flaccid equine shaft. He groans and shivers a little as you begin to gently stroking it";
		if Player is male:
			if Player is female:
				say ". While the equine man relaxes and enjoys the attention you're giving his shaft, you ponder over how best to please him. Being a herm, you could easily climb up on top of him and ride him, or you could give him a some [']oral['] attention. (Y=Ride, N=Suck) ";
				if Player consents:
					say "[Stevenride]";
				else:
					say "[Stevensuck]";
			else if Stevenmm > 1:
				say ". As the equine man relaxes and enjoys the attention you're giving his shaft, you ponder how best to have fun with him. You might provide him with a [link]blow job (1)[as]1[end link] or [link]let him fuck your ass (2)[as]2[end link] again. Then again, given how relaxed he is with you now and anal sex, perhaps you might even be able to convince him to [link]let you be on top (3)[as]3[end link].";
				now calcnumber is 0;
				while calcnumber < 1 or calcnumber > 3:
					say "Choice? (1-3)>[run paragraph on]";
					get a number;
				if calcnumber is 1:
					say "[Stevensuck]";
				else if calcnumber is 2:
					say "[Stevenanal]";
				else:
					say "[Stevenonbottom]";
			else:
				say ". As the equine man relaxes and enjoys the attention you're giving his shaft, you ponder over how best to please him. While he doesn't seem interested in being mounted, perhaps he'd consent to fucking your ass. Otherwise, you might give him some [']oral['] attention. (Y=Ride, N=Suck) ";
				if Player consents:
					say "[Stevenanal]";
				else:
					say "[Stevensuck]";
		else:
			if Player is female:
				say ". Licking your lips and staring down at his large rod, you feel a red hot need growing between your legs and you get yourself ready to ride his thick shaft.";
				say "[Stevenride]";
			else:
				say ". Frowning a bit, you realize you don't have any male or female equipment. A little discouraged, you're about to stop when you realize you still have one thing you could use to get this sexy horse off. You lick your lips and take a deep breath, getting your jaw nice and loose for his sexy equine length.";
				say "[Stevensuck]";
		infect "Morgan Horse Stallion";
		infect "Morgan Horse Stallion";
		now lastfuck of Steven is turns;

StevenFuckcount is a number that varies.

to say Stevenride:
	say "     After stroking the equine man until he's nice and hard, you lean down and give the tip of his rod a tender kiss, licking up and swallowing some of the pre that's leaking out. You then slide up on top of him, sliding down his body into the head of his length presses up against your cunt. You groan a little and press back lightly against it, teasing him.";
	if StevenFuckcount is even:
		say "     You take a breath and push back, sliding his shaft into you. You groan and begin to ride him, taking it slow at first but soon picking up speed. Panting and moaning hard, it isn't long before you feel Steven tense up under you, the head of his equine cock flaring up as he climaxes, flooding your womb with his fertile cum. This pushes you over the edge into your own orgasm, your cunt spasming around his thick shaft, milking it for his cum.";
		say "     Collapsing on top of him, you pant hard, enjoying the feel of his warm cum inside you. You stretch out and slide up of his shaft, his cum flooding out of you. You grin and lean down, giving him a kiss before you go and clean yourself up. He leans back and smiles happily, seeming quite pleased with himself and the large load of thick horse cum he gave you.[impregchance]";
		increase StevenFuckcount by 1;
	else:
		say "     As you're about to sink down onto his shaft, he grabs you with both strong hands and lays you on the ground, moving atop you with an eager gleam in his eyes and a grin on his equine face. Spreading your legs, he presses his impressive cock against your pussy and sinks his glans into you. He smiles as you moan in pleasure and starts thrusting, steadily working more of his lengthy shaft into you. Your moans gradually turn to whinnies of delight as the sexy stud pushes his equine manhood deep inside you, making you feel so wonderful.";
		say "     The feel of that throbbing pillar of horsemeat inside you comes to a peak when he nickers and drives deep inside you, unleashing a hot rush of equine cum to splatter against your cervix. You are sent over the edge as he keeps thrusting, wet, slurping sounds coming as his flared glans pushes each gush of fertile semen into your womb. Your hot tunnel grips around his cock, squeezing and milking at it for all the red stallion can give, which is quite considerable. In the end, you are left feeling pleasantly full and satisfied, well seeded by the strong stud now snuggling up to you.[impregchance]";
		increase StevenFuckcount by 1;


to say Stevensuck:
	say "     After stroking the equine man till he's nice and hard, you lean down and give the tip of his rod a tender kiss, licking up and swallowing some of the pre that's leaking out. Leaning further forward, you slip the tip into your mouth, gently sucking on it. Groaning, you feel Steven placing his hand on your head, pushing you further down on his shaft, the thick length filling up your mouth. You gulp around the length, stroking the base of it as you begin bobbing your mouth up and down.";
	say "     Your mouth is too much for the poor equine man to take and you feel the head of his cock flare up as he climaxes, pumping his thick cum down your throat. You gulp down as much as you can, but much of it squirts out around his shaft. When he finally empties his balls you slip his length out of your mouth and take a long needed breath. Panting hard you lick your lips and get about cleaning yourself off, but not before you move up and give Steven a good long kiss. He leans back and smiles happily, seeming quite pleased with himself and the large load of thick horse cum he gave you.";
	if ( player is submissive or ( player is mpreg_ok and Cunt Count of Player is 0 ) ) and a random chance of 2 in 5 succeeds:
		say "     Steven smiles down at you and strokes your head. 'Mmm... I can tell what you're really after,' he nickers before moving around behind you. He pushes you forward onto all fours and runs his hands over your [bodydesc of Player] body. 'You're really wanting the big stallion to mount you, aren't you?' he says. He runs his hand between your legs to tease your [if Player is female]pussy[else]pucker[end if] while grinding his cock against your backside, leaking the last few dribbles of his previous load onto your ass. 'How about I take you like a mare, huh?' he asks, rubbing a pair of fingers over into your needy hole. Your ";
		if Player is submissive:
			say "submissive urges, already fired up from sucking off the virile male, have ";
		else:
			say "breedable backside, already aching to be filled after having sucked off the virile male, has ";
		say "you moaning beneath him for him to mount you, bringing a smile to his equine face.";
		say "     The strong horse guides his throbbing cock against your [if Player is female]pussy before thrusting into your wet hole[else]pucker before thrusting into your tight hole[end if]. Climbing atop you, he nickers in pleasure as he fucks you, fucking you energetically despite having just gotten off[if Breast Size of Player > 0]. He moves a hand to your [breast size desc of Player] breasts, tweaking your nipples while he rides you[else]. He rubs one hand over your flat [bodytype of Player] chest[end if].";
		if Player is puremale:		[male sub bonus scene]
			say "     His hand moves lower, wrapping around your [cock size desc of Player] [Cock of Player] dick and stroking it as he fucks you. 'What a strange mare you are with a leaking cock like this. You're a sexy mare though, aren't you? Or maybe I'm wrong and I should stop fucking you,' he says, slowing his thrusts and moving to withdraw from you. You release a soft whinny of need and push back onto his rod, replying that you want to be his sexy mare and that you need him to fill you. At your words, he thrusts back into you hard and resumes fucking you, still stroking your dribbling erection.";
		say "     Having already fucked you a few minutes ago, the stallion has more endurance this time, making for a nice, long fuck that has you moaning and whinnying beneath him. He nuzzles at your neck and nips at it with his flat teeth as you both get hot and sweaty from the mating. Finally his excitement boils over and he thrusts hard into you one last time, blasting his hot load deep inside you. His load, while not as big as the last, it still quite impressive and gives your [if Player is female]womb[else]lower belly[end if] a wonderfully full feeling. After withdrawing, he wipes his spent shaft across your rear and snuggles you in his arms.[impregchance]";


to say Stevenanal:
	say "     After stroking the equine man until he's nice and hard, you lean down and give the tip of his rod a tender kiss, licking up and swallowing some of the pre that's leaking out. You then slide up on top of him, pressing your body to his and giving him a deep kiss. As you kiss him, you lower yourself into position on his hard rod before he realizes what is happening. You groan a little into the kiss as his enlarged, equine shaft presses into your back passage.";
	say "     You take a breath and push back, sliding more of his thick meat into you. You groan and begin to ride him, taking it slow at first, but soon picking up speed. His strong hands move to your hips, squeezing your bottom and pulling you down onto him as he accepts his lustful urges and fucks your sexy ass. You can feel the pulse of his rod inside you and feeling his copious pre making you more and more slick. Panting and moaning hard, it isn't long before you feel Steven tense up under you, the head of his equine flaring up as he climaxes, flooding your bowels with his fertile cum[if Player is male]. This pushes you over the edge into your own orgasm, your ass clenching around his thick shaft, squeezing as much cum as you can get from this equine stud. Your seed splatters across his chest as your [cock size desc of Player] [Cock of Player] cock pulses[end if].";
	say "     Collapsing on top of him, you pant hard, enjoying the feel of his warm cum inside you. You stretch out and slide up of his shaft, his cum flooding out of you. You grin and lean down, giving him a kiss before you go and clean yourself up. He leans back and smiles happily, seeming quite pleased with himself and the large load of thick horse cum now slowly leaking out of your stretched pucker.[mimpregchance]";
	if Stevenmm < 2, increase Stevenmm by 1;


to say Stevenonbottom:
	say "     Stroking his equine shaft in both hands, you lean in and give him a kiss. As your tongues fence with one another, you let one hand slip down to his ballsack briefly before continuing south. Before he knows it, you've got a finger lightly probing at his pucker. This surprises him and he breaks the kiss.";
	if Stevenmm is 2:
		say "     'What do you think you're doing? I don't know if I'm ready for that sor- Uhh... I mean, I'm not really interested in that,' he says, trying to sound firm though with that same repressed desire you've heard from him before";
	else:
		say "     'Whoa! Slow down there. I don't know if I'm up for that again,' he starts to protest, trying his best to hold back his desire";
	say ". Seeing how his cock is as hard as ever, you give it a playful stroke and rub his tailhole again and grin at how it twitches.";
	WaitLineBreak;
	let bonus be ( charisma of Player - 10 ) / 2;
	if "Haggler" is listed in feats of Player:
		increase bonus by 3;
	if Stevenmm > 2:
		increase bonus by Stevenmm;
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus]: [dice + bonus] vs 15:[line break]";
	if bonus + dice > 14:
		say "     You continue to tantalize him, not pressing the matter too fast. You tell him how sexy he is and how hard just looking at him makes you. As you move to get him to lay back, you silence a half-formed protest with a kiss and remind him that [if Stevenmm is 2]you've let him fuck you a few times, so it'd only be fair to let you have a turn[else]he seemed to enjoy it last time and that you just want to make him feel that good again[end if].";
		say "     Your stiff, dribbling rod finds its place under his balls and against his dark red asshole. That horse pucker spreads open for you [if Cock Length of Player < 20]readily, having little difficulty accommodating your [cock size desc of Player] manhood[else]slowly, having a little trouble with your [cock size desc of Player] manhood[end if]. His ass is hot and grips so nicely around your pulsing shaft that you have to hold yourself back from pounding him right away. He releases a nickering moan and blushes all the redder upon your next thrust. While it's a little tempting to tease him, you instead resume stroking his cock, further keeping the strong horse happy as you fuck him.";
		WaitLineBreak;
		say "     The grinding of your cock against his prostate soon gets to him and he's panting heavily soon enough. You keep at playing with his cock and balls, enjoying how they pulse and throb with growing need. The sight of him laying there as you drill into him is wonderfully arousing; the tough stallion looks so sexy as he moans with a cock buried in his butt. As your pace picks up, he's not able to hold out much longer, the stimulation against his prostate eventually putting him over the edge. He groans loudly and cums in messy spurts across himself, staining his red coat with streaks of white.";
		say "     The sight of him cumming's enough to push you over the top as well. Driving your [Cock of Player] shaft [if Cock Length of Player < 18]fully [end if]into him, you groan and cum messily into his ass. Your gooey load pools in his bowels, making him extra-slick for the few last thrusts as you drain your balls in him. By the time you pull out, he's left panting and dazed with a sated smiled on his equine face.";
		if Stevenmm < 4, increase Stevenmm by 1;
	else:
		say "     You try to seduce him into letting you fuck him, but he manages to shake off your advances and pushes you back. 'Hey, I said I'm not in the mood.' He gets up and looks around. 'I'm going to go take a walk.'";


Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Morgan Horse";
	add "Morgan Horse Stallion" to infections of Equinelist;
	add "Morgan Horse Stallion" to infections of NatureList;
	add "Morgan Horse Stallion" to infections of MaleList;
	add "Morgan Horse Stallion" to infections of BluntCockList;
	add "Morgan Horse Stallion" to infections of SheathedCockList;
	add "Morgan Horse Stallion" to infections of BipedalList;
	add "Morgan Horse Stallion" to infections of TailList;
	now Name entry is "Morgan Horse Stallion";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is "Steven";
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[NonCombatError]";
	now defeated entry is "[NonCombatError]";
	now victory entry is "[NonCombatError]";
	now desc entry is "[NonCombatError]";
	now face entry is "flat-toothed, prehensile-lipped equine";
	now body entry is "well-muscled";
	now skin entry is "long red hairs up and down your";
	now tail entry is "You have a long, stringy tail that you can whisk as you please.";
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
	now HP entry is 45;
	now lev entry is 5;
	now wdam entry is 7;
	now area entry is "Nowhere";
	now Cock Count entry is 1;
	now Cock Length entry is 15;
	now Ball Size entry is 3;
	now Nipple Count entry is 2;
	now Breast Size entry is 4;
	now Male Breast Size entry is 0;
	now Cunt Count entry is 1;
	now Cunt Depth entry is 15;
	now Cunt Tightness entry is 7;
	now libido entry is 40;
	now loot entry is "";
	now lootchance entry is 0;
	now scale entry is 4; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]powerful[or]muscled[or]muscular[at random]";
	now type entry is "equine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]



Chapter 4 - Junkyard

Section 1 - The environment

Table of GameRoomIDs (continued)
Object	Name
Junkyard Entrance	"Junkyard Entrance"

Junkyard Entrance is a room.
Junkyard Entrance is east of the Abandoned Lot. "In this dirty part of the town you stand on the road to an even dirtier place. The smells of the city junkyard, of rotting food and fetid water, reek from the north. The dirt road curves to the west, back to the abandoned warehouse complex."
The earea of Junkyard Entrance is "Junkyard".

instead of sniffing Junkyard Entrance:
	say "The junkyard smells predominantly of old machinery and oil, though there's a faint smell of normal trash as well from piles of that scattered around.";

Junkyard Gate is a door. "The junkyard to the north appears threatening and dangerous, but there's probably plenty of loot for the taking." Junkyard Gate is dangerous.

Table of GameRoomIDs (continued)
Object	Name
Junkyard Interior	"Junkyard Interior"

Junkyard Interior is a room.
Junkyard Interior is north of Junkyard Gate.
Junkyard Gate is north of Junkyard Entrance.

The marea of Junkyard Gate is "Junkyard".


Section 2 - Junkyard Digups

Table of GameEventIDs (continued)
Object	Name
Junkyard digups	"A pile of garbage"

Junkyard digups is a situation. The printed name of Junkyard digups is "A pile of garbage".
The sarea of junkyard digups is "Junkyard".
jdigup is a number that varies.

Instead of resolving junkyard digups:
	increase jdigup by 1;
	say "There are plenty of piles in the junkyard to look through. You pick one and search it.";
	if a random chance of 1 in 3 succeeds:
		if a random chance of 1 in 2 succeeds:
			say "You find a bottle of water!";
			increment carried of water bottle;
		else:
			say "You find a bottle of dirty water!";
			increment carried of dirty water;
	else:
		say "Alas, you do not find anything in this pile. You should try again.";
	if jdigup is 3, now junkyard digups is resolved;


Section 3 - Steven's Home

Table of GameRoomIDs (continued)
Object	Name
Steven's Home	"Steven's Home"

Steven's Home is a room. "You are in a more cozy and more private part of the junkyard. All of the hard metal objects have been cleared, and instead the floor is lined with mattress stuffing and foam insulation, topped off with wild grass for a natural feel. It also doesn't smell as bad, thanks to the pine needles and wildflower petals mixed into the floor. You feel safe and protected here." It is fasttravel. It is private.

Table of GameRoomIDs (continued)
Object	Name
Junkyard Entrance	"Junkyard Entrance"

Junkyard Entrance is a room.
Junkyard Entrance is outside of Steven's Home. Nowhere is inside of Junkyard Entrance.
[The sarea of Steven's Home is "Junkyard."]

instead of sniffing Steven's Home:
	say "This spot in the junkyard smells of Steven and his manly, equine scent. It only partially blocks the pervasive scent of the junkyard though.";

Table of GameEventIDs (continued)
Object	Name
Junkyard Home	"Junkyard Home"

Junkyard Home is a situation.
The sarea of Junkyard Home is "Junkyard".

Instead of resolving Junkyard Home:
	if Stevenremoved is 0:
		say "You come across what looks like an abandoned habitation, filled with old nesting material and various shiny objects. Is it some kind of bird's nest? You decide to leave it alone... for now.";
	else:
		say "You turn around a corner and find a quaint little cove in the stacks of junk. A familiar-looking person is tidying up the floor, and looks up as you approach.";
		say "'Ah, hello,' Steven says. 'Didn't know if I'd see you again.' He looks down at near-naked equine body, wearing only a belt and a loincloth. 'As you can tell, I was permanently disbarred and exiled. My old clothes don't fit me anymore. This loincloth was part of a curtain. There is a lot of useful stuff out here, but it's not like it was in the shelter. I'm sure we'll make it through, though.'";
		say "'I want to thank you,' he says. 'I don't know if it was the best decision I've made, but I feel some relief for this body. It feels like, completion, I guess. The grass is tastier on the other side, after all.' He smiles. 'You like the place? I think it's roomy enough. If you want to... you know... move in.' He coughs and goes back to work.";
		move player to Steven's Home;
		now Steven's Home is known;
		now junkyard home is resolved;


Section 4 - Finding a tool

Table of GameEventIDs (continued)
Object	Name
unused tool	"unused tool"

an unused tool is a situation.
The sarea of an unused tool is "Junkyard".

Table of Game Objects (continued)
name	desc	weight	object
"crowbar"	"A big, heavy crowbar. It's not sharp, but it's heavy enough to strike a good blow."	3	crowbar
"mallet"	"A heavy mallet. If you swung it hard enough, you could easily crack someone's head open."	5	mallet
"iron pipe"	"A piece of iron pipe. It might make an adequate blunt weapon."	3	iron pipe

crowbar is a armament. It is a part of the player. It has a weapon "your crowbar". The weapon damage of crowbar is 6. The weapon type of crowbar is "Melee". It is not temporary.
mallet is a armament. It is a part of the player. It has a weapon "your mallet". The weapon damage of mallet is 7. The weapon type of mallet is "Melee". It is not temporary.
iron pipe is a armament. It is a part of the player. It has a weapon "your iron pipe". The weapon damage of iron pipe is 5. The weapon type of iron pipe is "Melee". It is not temporary. the objsize of mallet is 2.

instead of sniffing the crowbar:
	say "The crowbar smells of metal and motor oil.";

instead of sniffing the mallet:
	say "The mallet smells faintly of the junkyard where you found it.";

instead of sniffing the iron pipe:
	say "The iron pipe smells like old rust and whatever that hard, dry gunk inside was.";


Instead of resolving an unused tool:
	say "As you explore the junkyard, you come across a pile of discarded tools. You search through the pile for something interesting.";
	let result be a random number from 1 to 3;
	if result is 1:
		say "Huzzah! You found a crowbar!";
		increment carried of crowbar;
	if result is 2:
		say "Success! You found a mallet!";
		increment carried of mallet;
	if result is 3:
		say "Yay! You found an iron pipe!";
		increment carried of iron pipe;
	now an unused tool is resolved;


Section 5 - Find a random infected object

Table of GameEventIDs (continued)
Object	Name
signs of a scuffle	"signs of a scuffle"

signs of a scuffle is a situation.
The sarea of signs of a scuffle is "Junkyard".
scufflecount is a number that varies.

Instead of resolving signs of a scuffle:
	increase scufflecount by 1;
	say "It looks like two infected creatures were fighting each other out here. You search the area for any fallen loot:[line break]";
	let opportunity be 0;
	let firstbeast be a random number from 1 to number of filled rows in the Table of Random Critters;
	choose row firstbeast from the Table of Random Critters;
	if there is a loot entry:
		if loot entry is not "" and loot entry is not " ":
			add loot entry to invent of Player;
			say "You found 1 x [loot entry]!";
			now opportunity is 1;
	let secondbeast be a random number from 1 to number of filled rows in the Table of Random Critters;
	choose row secondbeast from the Table of Random Critters;
	if there is a loot entry:
		if loot entry is not "" and loot entry is not " ":
			add loot entry to invent of Player;
			say "You found 1 x [loot entry]!";
			now opportunity is 1;
	if opportunity is 0:
		say "Alas, you found nothing but dirt, dust, and junk.";
	if scufflecount is 3, now signs of a scuffle is resolved;

Junkyard and Warehouse ends here.
