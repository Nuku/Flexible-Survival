Version 5 of Junkyard and Warehouse by Wahn begins here.
[ Version 3 - Rework by Wahn]
[ Version 4 - Old Stallion Friendship event added to Steven - Vinickus (code support by Gherod)]
[ Version 5 - Steven Events on the Library - Vinickus ]
[- Originally Authored By: Rimme -]

[ StevenSwayed - Soda for Steven              ]
[  0: no Soda                                 ]
[  1: gave Steven Soda before                 ]

[ StevenCharisma - To do with his friend]
[ 1: You used his toy                   ]
[ 51: You respected his desires         ]
[ 2/52: Submitted Steven outside Library ]
[ 3/53: Submitted a second time ]

[ StevenDexterity - Alt Path?]
[ 1: Turned him down when met outside Library ]

Chapter 1 - Abandoned Lot into Storage Room

Section 1 - Lot Environment

Table of GameRoomIDs (continued)
Object	Name
Abandoned Lot	"Abandoned Lot"

Abandoned Lot is a room.
Abandoned Lot is fasttravel.
The earea of Abandoned Lot is "Outside".
Description of Abandoned Lot is "[LotDesc]".

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

Definition: a person is fully human:
	if person is not facially human, no;
	if person is not skintone human, no;
	if person is not bodily human, no;
	yes;

Instead of entering the Storage Room:
	try going south;

Instead of going through the Warehouse Door:
	if Location of Player is the Abandoned Lot:
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
				if the tail of Player is not "":
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
							ItemLoss soda by 1;
							move player to Storage Room;
							now StevenSwayed is 1;
						else:
							say "     Shaking your head, you step away from the door. The viewing slat quickly closes.";
					else:
						say "You promise you will bring him one, and he shakes his head with embarrassment. 'Don't tell anyone I offered you a bribe, understand?' he speaks up again. 'Now go, before someone sees you!' He closes the slat.";
	else if Resolution of Old Stallion Friendship < 3:
		say "The slat opens up, and a fierce-looking pair of eyes look upon you. '[one of]Scram[or]Get lost[or]Go away[or]Shoo[or]Get off our land[or]Leave[or]Go fuck your brains out[or]Go screw a farm animal[or]Go suck some horse cocks[or]Go back to your den[at random], you [one of]disgusting[or]sick[or]twisted[or]cock-sucking[or]fucking[or]good-for-nothing[or]degenerate[or]inhuman[at random] [one of]beast[or]mutant[or]pervert[or]animal[or]vermin[or]horse-fucker[or]zoophile[or]traitor[or]savage[at random]!' he shouts, slamming the slat shut.";
	else if Resolution of Old Stallion Friendship is 3:
		say "You knock on the door, but no one answers. Maybe Steven is out or busy? <Writer's Note: Further content will be added to continue here in future updates. Please be patient.>";
	else if Resolution of Old Stallion Friendship is 4:
		say "You knock on the door, but no one answers. Perhaps given the last events, they are still sorting themselves in there. <Writer's Note: Further content will be added to continue here in future updates. Please be patient.>";

Chapter 2 - Storage Room and Steven

Section 1 - The environment

Table of GameRoomIDs (continued)
Object	Name
storage room	"storage room"

The storage room is a room. "The inside of this warehouse has been converted into a shelter. The large stockpile of packaging and spare parts remains in the center of the room, a remnant of the city's industry. More heavily guarded are the stockpiles of bottled water in the corner. A line of survivors stretches from the water all the way around the wall. Few of them carry any possessions; they sit on blankets as they talk to one another. Every now and then, a glint of color or a patch of fur catches your eye; it seems at least a few of these survivors have already been mutated, and are desperately trying to hide it.";

Storage Room is south of the Warehouse Door.

instead of sniffing Storage Room:
	say "The storage room smells of the human survivors and their supplies. Fear is thick in the air, almost completely masking the faint traces of other non-human scents among the group. It seems a few of them are at least slightly infected and desperately trying to hide it.";

Table of GameRoomIDs (continued)
Object	Name
Junkyard Alley	"Junkyard Alley"

Junkyard Alley is a room.
The earea of Junkyard Alley is "Outside".
Description of Junkyard Alley is "[JunkAlleyDesc]"

Junkyard Alley is southeast of Abandoned Lot.

to say JunkAlleyDesc:
	say "     This alley has probably never seen better days, as it's been thoroughly cleaned out and swept up. It looks as though someone regularly comes this way to clear out debris and make the place look presentable. However, this particular spot makes you feel suspicious[if Resolution of Old Stallion Friendship is 0], but you are not entirely sure why[else if Resolution of Old Stallion Friendship < 2] with that hidden door[else if Resolution of Old Stallion Friendship > 2] with that little secret entrance you discovered into the inhabited and, mostly, uninfected warehouse[end if].";

instead of smelling Junkyard Alley:
	say "     It smells thoroughly clean, missing the lingering scents of sex and musk. It's hard to tell if that's more disappointing than surprising.";

Section 2 - Steven, chat

StevenSwayed is a number that varies. StevenSwayed is usually 0.

Table of GameCharacterIDs (continued)
object	name
Steven	"Steven"

Steven is a man in the Storage Room. "A guard who you recognize as the doorkeeper stands, understandably, by the big steel door. A nametag says 'Steven'."
ScaleValue of Steven is 4. [human sized]
Body Weight of Steven is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Steven is 8. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Steven is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Steven is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Steven is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Steven is 5. [length in inches]
Breast Size of Steven is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Steven is 2. [count of nipples]
Asshole Depth of Steven is 8. [inches deep for anal fucking]
Asshole Tightness of Steven is 2. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Steven is 1. [number of cocks]
Cock Girth of Steven is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Steven is 15. [length in inches]
Ball Count of Steven is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Steven is 4. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Steven is 0. [number of cunts]
Cunt Depth of Steven is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Steven is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Steven is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Steven is false.
PlayerRomanced of Steven is false.
PlayerFriended of Steven is false.
PlayerControlled of Steven is false.
PlayerFucked of Steven is false.
OralVirgin of Steven is false.
Virgin of Steven is true.
AnalVirgin of Steven is true.
PenileVirgin of Steven is false.
SexuallyExperienced of Steven is true.
TwistedCapacity of Steven is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Steven is false. [steriles can't knock people up]
MainInfection of Steven is "Morgan Horse Stallion".
Description of Steven is "[StevenDesc]".
Conversation of Steven is { "<This is nothing but a placeholder!>" }.
The fuckscene of Steven is "[sexwithSteven]".

to say StevenDesc:
	if Steven is not in Steven's Home:
		say "     A man in his thirties, wearing a security outfit. He looks from side to side with a distant look in his eyes. What kind of life did he have before the nanite invasion?";
	else:
		say "     A tall, imposing horse figure, were he not someone you knew. He has muscles up and down his red-haired body, his black hair replaced with a long red mane. He wears a loincloth and a belt, probably from his old uniform. He walks awkwardly, but carefully with his legs that end in hooves.";

instead of conversing Steven:
	if the player is in Storage Room:
		say "As you begin to converse with Steven, he waves to another guard. 'Take my place, will ya?' He takes you aside and says, 'We should talk away from everyone else.' He takes you across the floor to a row of storage compartments, now being used as makeshift guard quarters. He opens one up and lets you step inside.";
		move player to Steven's Office;
		move Steven to Steven's Office;
	else:
		say "     You approach Steven, [one of]while he continues to rearrange the furnishings[or]while he waits on you patiently[or]as he swats away an annoying fly[or]as he straightens his loincloth[or]while he smiles warmly as you look at him[at random].";
	say "[StevenTalkMenu]";

instead of linkactioning Steven when Steventrust > 0 and the player is in Storage Room:
	say "Possible Actions: [link]talk[as]talk Steven[end link], [link]smell[as]smell Steven[end link], [link]fuck[as]fuck Steven[end link][if Stevenfood < 5], [link]food[as]ask for food[end link][end if][if Stevenwater < 5], [link]water[as]ask for water[end link][end if][line break]";

instead of sniffing Steven:
	say "Steven smells strong and manly, reminding you of old cowboy movies for some reason.";

After going to Storage Room from Steven's Office:
	move Steven to Storage Room;

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

to say StevenTalkMenu:
	say "     [bold type]What do you want to talk to Steven about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Have a chat with Steven";
	[]
	if Steven is in Steven's Home:
		choose a blank row in table of fucking options;
		now title entry is "His feelings";
		now sortorder entry is 2;
		now description entry is "Ask him about his feelings on his old acquaintances";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Nevermind[as]0[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Just chat a bit"):
					say "[StevenTalkChat]";
				if (nam is "His feelings"):
					say "[StevenTalkFeelings]";
				wait for any key;
				say "[StevenTalkMenu]"; [looping back to keep talking with him]
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You give Steven a nod as you make your leave, which he retributes.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say StevenTalkChat:
	if Steven is in Steven's Office:
		say "     [Steven flattery]";
		say "     [one of]'What's it like out there? If I only had a gun, I might be able to assist you.'[or]'I don't know how long this infestation has been going on. Long enough, in my opinion.'[or]'None of us knew about the nanites. Just before things went berserk, we grabbed a building and brought in everyone from the streets. You should've seen it.'[or]'Before everything went to hell, I had a house, a son, twenty grand a year. It's all gone now. Those people out there are all I have left.'[or]'Part of me wants to just give in. If civilization is going to hell... but I guess that's why people like me, who don't have anything else, are here for, right?'[or]'You know, if you can find any chips or sodas out there, I can get you a few medkits.'[or]'I miss burger joints. And coffee. And the internet. Hell, even a phone call to my mother would be great.'[or]'Back in college, I played the drums. You think I have time to take it back up?'[or]'I'd offer you a seat, but I don't have a lot around the office. You don't mind standing, right?'[or]'I volunteered to be a guard, just so I wouldn't be wallowing in misery. Plus, you get free health kits.'[or]'I haven't washed this uniform in so long. I could really go for a non-infected shower.'[at random]";
	else if Steven is in Steven's Home:
		say "     [one of]'I've seen a few beasts here and there, but I always manage to run away and hide. It's not as infested out here as the guards made it out to be.'[or]'I think a wild animal used to live here, before the infestation. Smells like it hasn't been back for a long time.'[or]'I actually feel pretty good. Even better than as a guard. It feels like I have a purpose, now.'[or]'I might miss my old human body, but if you can't beat them, join them.' He chuckles, 'And no one could beat you, dear.'[or]'You'd think there'd be a lot of disease going around. But I guess the nanites took care of that problem.'[or]'One thing I like about this body is I feel so strong, I could lift a car. I always did wish I had a stronger build.'[or] 'I didn't use to be fond of horses, but now I can't stop thinking about them.'[or]'I wish I had something to offer you, but I don't. There's not a lot of food here anymore.'[or]'There are plenty of coffee tins here. I think I might make a set of bongo drums.'[or]'The smell still gets through, once in a while. Tell me if you find any potpourri or something.'[at random]";

to say StevenTalkFeelings:
	say "     When you question him on how he feels about those that kicked him out, he gives a snort very befitting his stallion body. 'They're... just ignorant. I don't blame them, really.";
	if Resolution of Old Stallion Friendship is 1:
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Push the issue.";
		say "     ([link]N[as]n[end link]) - Better back off, for now.";
		if player consents:
			Linebreak;
			say "     'If there was some way I could get back in and talk to them, then—well I might be able to convince them I'm the same as before.' You give him the location of the alley you found, and 	the oddly convenient backdoor. 'Alright. Maybe one of these days I'll see about talking to them. But I don't think I'll want to do it alone. Can you come with me when I'm ready?' You give your assurances to him and step aside, content with where things ended up.";
			now Resolution of Old Stallion Friendship is 2; [Event now active]
		else:
			say "     You think it's better to not push him on this subject, for now.";

Section 3 - Steven, trading

Steven is a trader.

Instead of trading when the second noun is Steven:
	if Stevenremoved is 0:
		if the noun is soda:
			say "Steven's eyes gleam for a moment, before he snatches the can and tucks it away. He pulls out a medkit. 'Don't tell anyone about this.'";
			increment carried of medkit;
			ItemLoss soda by 1;
		else if the noun is chips:
			say "Steven looks hungrily at the chips, and he carefully takes them off you and gives you back a medkit. 'You know, I'm breaking the rules for this,' as he winks at you.";
			increment carried of medkit;
			ItemLoss chips by 1;
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
				say "You approach Steven, and give him a long, tender kiss. He seems astonished and tries to back away, but as you keep on kissing him, he slowly starts to let loose. Just as you get into it, and start tugging his shirt, he pulls away. 'I'm sorry, I can't,' he stands in the corner, looking at his bookshelf. 'I have a responsibility now. I can't give up on it. Not yet. Not now.' Still, you hug him from behind and take off his trousers, exposing his cock. His black, seven-inch horse cock.";
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
		say "You turn him around and give him a long, lustful kiss. Your tongues touch and dance around each other as his cock grows in anticipation. You slip off your pants and seat your vulva around his cock and begin pumping it, back and forth, eagerly, as he falls against the bookshelf. His grunts become groans of pleasure, as his hair starts to let itself down into a flowing mane. He fumbles with his shirt, trying to take it off as his hands harden into hooves. Finally he rips it off and sucks your mouth hard, his tongue fiercer with more passion than you've ever felt. Each kiss becomes more intense than the last, as every buried passion comes forth as he jerks his pelvis into you, his butt ramming against the bookshelf. With one last bang, he snaps the bookcase into splinters, sending everything left on the shelf to the ground, while he ejaculates into you, letting loose a wild whinny.";
		NPCSexAftermath Player receives "PussyFuck" from Steven;
	else:
		say "You turn him around and give him a long, lustful kiss. Your tongues touch and dance around each other as his cock grows in anticipation. You grab his shaft with one hand and begin rubbing it up and down. ";
		if Player is male:
			say "You drop your own pants, and rub your own penis against his. He starts to gasp, but you keep your lips against his, tongues twirling around each other. He salivates passionately, and he grips your sides as his hips start rocking, banging into the bookshelf with ever-increasing vigor. ";
		else:
			say "He tries to pull away, in one last attempt at freedom, but you grab him with both hands and kiss him hard as you wriggle your whole body up and down his member. He falls against the bookshelf as you hug him more tightly his feet rising up off the ground, hands gradually coming to meet yours. ";
		say "Finally, he pulls his mouth away from yours, but only for a second, as he darts back in, kissing you in the cheek and neck. His moans become whinnies of joy as his face stretches forward, kissing you further and further down your face. You sidle around as he kisses the back of your neck, and inserts his giant horse penis into your ass. Now it is your turn to gasp, as he cuddles you tightly with his strong stallion arms. He bangs you, harder, harder, each time cracking the bookshelf into pieces. With one final kick, he smashes the pallet into smithereens as the cum creams into your abdomen, soaking your legs and dripping onto the floor.";
		NPCSexAftermath Player receives "AssFuck" from Steven;
	WaitLineBreak;
	say "Now all of your clothes are on the floor, Steven's right beside you. Both of you tumble to the floor, as he whinnies in excitement. His deep equine eyes jiggle with pleasure. 'Oh, let's not stop now,' he breathes, 'Let's do it again!' He kisses you again, and his feet, now hooves, stamps against the ground, smashing the picture frame and ripping the books in two. You two slide towards the middle and start doing it again, this time even faster and harder than before. ";
	if Player is female:
		if Nipple Count of Player > 3:
			say "He drives his member into your hole, his balls banging against your ass, his hands gripping two of your breasts and stroking them, all while he kisses you, sucking at your lips and your tongue. You both gasp and groan very loudly as you pound the ground over and over again, until you suddenly feel Steven being lifted from you. You open your eyes to see the guards, having broken down the door, pulling your away from the primal scene. ";
	else:
		say "He presses your body up and down his equine body, until you finally catch his cock with your hands. Now you bring your head down onto it and start sucking it, loudly, strongly, with as much ferocity as his tongue. He falls over backwards, gasping, pounding the floor as loud as he can, screaming long and hard. He spasms hard, exhaling at the top of his lungs, and just as the seed comes forth and fills your mouth, the door roars open as heavy footsteps barge in and yank you away from your satisfied boyfriend. ";
	say "The guards grab at Steven, two at each arm, three at each leg, in order to subdue him. They finally pin him against the wall, away from you, while another three drag you out. A hushed murmur has fallen amidst the crowd outside, but all you hear is your heart racing and your stomach spinning with glee. You barely notice being thrown outside.";
	move player to Abandoned Lot;
	increase Libido of Player by 10;
	now Stevenremoved is 1;
	move Steven to Steven's Home;
	now MonsterID is 1;
	say "You slowly pull yourself up, still wheezing from excitement. "; [continues into next line]
	infect "Morgan Horse Stallion";
	infect "Morgan Horse Stallion";

Section 4 - Steven in the Junkyard

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
		say "     You take a breath and push back, sliding his shaft into you. You groan and begin to ride him, taking it slow at first but soon picking up speed. Panting and moaning hard, it isn't long before you feel Steven tense up under you, the head of his equine cock flaring up as he climaxes, flooding your womb with his fertile cum. This pushes you over the edge into your own orgasm, your cunt spasming around his thick shaft, milking it for his cum. Collapsing on top of him, you pant hard, enjoying the feel of his warm cum inside you. You stretch out and slide up of his shaft, his cum flooding out of you. You grin and lean down, giving him a kiss before you go and clean yourself up. He leans back and smiles happily, seeming quite pleased with himself and the large load of thick horse cum he gave you.";
		increase StevenFuckcount by 1;
	else:
		say "     As you're about to sink down onto his shaft, he grabs you with both strong hands and lays you on the ground, moving atop you with an eager gleam in his eyes and a grin on his equine face. Spreading your legs, he presses his impressive cock against your pussy and sinks his glans into you. He smiles as you moan in pleasure and starts thrusting, steadily working more of his lengthy shaft into you. Your moans gradually turn to whinnies of delight as the sexy stud pushes his equine manhood deep inside you, making you feel so wonderful.";
		say "     The feel of that throbbing pillar of horsemeat inside you comes to a peak when he nickers and drives deep inside you, unleashing a hot rush of equine cum to splatter against your cervix. You are sent over the edge as he keeps thrusting, wet, slurping sounds coming as his flared glans pushes each gush of fertile semen into your womb. Your hot tunnel grips around his cock, squeezing and milking at it for all the red stallion can give, which is quite considerable. In the end, you are left feeling pleasantly full and satisfied, well seeded by the strong stud now snuggling up to you.";
		increase StevenFuckcount by 1;
	NPCSexAftermath Player receives "PussyFuck" from Steven;

to say Stevensuck:
	say "     After stroking the equine man till he's nice and hard, you lean down and give the tip of his rod a tender kiss, licking up and swallowing some of the pre that's leaking out. Leaning further forward, you slip the tip into your mouth, gently sucking on it. Groaning, you feel Steven placing his hand on your head, pushing you further down on his shaft, the thick length filling up your mouth. You gulp around the length, stroking the base of it as you begin bobbing your mouth up and down.";
	say "     Your mouth is too much for the poor equine man to take and you feel the head of his cock flare up as he climaxes, pumping his thick cum down your throat. You gulp down as much as you can, but much of it squirts out around his shaft. When he finally empties his balls you slip his length out of your mouth and take a long needed breath. Panting hard you lick your lips and get about cleaning yourself off, but not before you move up and give Steven a good long kiss. He leans back and smiles happily, seeming quite pleased with himself and the large load of thick horse cum he gave you.";
	NPCSexAftermath Player receives "OralCock" from Steven;
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
		say "     Having already fucked you a few minutes ago, the stallion has more endurance this time, making for a nice, long fuck that has you moaning and whinnying beneath him. He nuzzles at your neck and nips at it with his flat teeth as you both get hot and sweaty from the mating. Finally his excitement boils over and he thrusts hard into you one last time, blasting his hot load deep inside you. His load, while not as big as the last, it still quite impressive and gives your [if Player is female]womb[else]lower belly[end if] a wonderfully full feeling. After withdrawing, he wipes his spent shaft across your rear and snuggles you in his arms.";
		if Player is female:
			NPCSexAftermath Player receives "PussyFuck" from Steven;
		else:
			NPCSexAftermath Player receives "AssFuck" from Steven;

to say Stevenanal:
	say "     After stroking the equine man until he's nice and hard, you lean down and give the tip of his rod a tender kiss, licking up and swallowing some of the pre that's leaking out. You then slide up on top of him, pressing your body to his and giving him a deep kiss. As you kiss him, you lower yourself into position on his hard rod before he realizes what is happening. You groan a little into the kiss as his enlarged, equine shaft presses into your back passage.";
	say "     You take a breath and push back, sliding more of his thick meat into you. You groan and begin to ride him, taking it slow at first, but soon picking up speed. His strong hands move to your hips, squeezing your bottom and pulling you down onto him as he accepts his lustful urges and fucks your sexy ass. You can feel the pulse of his rod inside you and feeling his copious pre making you more and more slick. Panting and moaning hard, it isn't long before you feel Steven tense up under you, the head of his equine flaring up as he climaxes, flooding your bowels with his fertile cum[if Player is male]. This pushes you over the edge into your own orgasm, your ass clenching around his thick shaft, squeezing as much cum as you can get from this equine stud. Your seed splatters across his chest as your [cock size desc of Player] [Cock of Player] cock pulses[end if].";
	say "     Collapsing on top of him, you pant hard, enjoying the feel of his warm cum inside you. You stretch out and slide up of his shaft, his cum flooding out of you. You grin and lean down, giving him a kiss before you go and clean yourself up. He leans back and smiles happily, seeming quite pleased with himself and the large load of thick horse cum now slowly leaking out of your stretched pucker.";
	if Stevenmm < 2, increase Stevenmm by 1;
	NPCSexAftermath Player receives "AssFuck" from Steven;

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
		NPCSexAftermath Steven receives "AssFuck" from Player;
	else:
		say "     You try to seduce him into letting you fuck him, but he manages to shake off your advances and pushes you back. 'Hey, I said I'm not in the mood.' He gets up and looks around. 'I'm going to go take a walk.'";

Section 5 - Junkyard Alley Event

Table of GameEventIDs (continued)
Object	Name
Old Stallion Friendship	"Old Stallion Friendship"

Old Stallion Friendship is a situation.
ResolveFunction of Old Stallion Friendship is "".
Sarea of Old Stallion Friendship is "Nowhere".

instead of going southeast from Abandoned Lot while (Resolution of Old Stallion Friendship is 0 and Steven is in Steven's Home):
	say "     Scrounging around you find scratches along the ground nearest a wall, coincidentally it's the wall of the inhabited warehouse. The scratches form a sort of semicircle of chipped granite and whitened pavement. Looking a bit closer you can see a loose bit of aluminum siding, and as you pull at it you can hear the sounds of people on the other side. You even peak around the edge to see the people meandering around inside. [bold type]Maybe this would help Steven get back.[roman type][line break]";
	now Resolution of Old Stallion Friendship is 1; [Found a new way into the warehouse]

instead of going southeast from Abandoned Lot while (Resolution of Old Stallion Friendship is 2 and Steven is in Steven's Home):
	say "     You see Steven clopping back and forth, a pensive expression draped across his features. When you get his attention his face brightens ever so little. 'Hey, [if Player is not defaultnamed][Name of Player][else]dude[end if]. I still don't know what I'm doing here. They'll never accept me as,' Steven then looks down and waves his arms downwards, 'this!' Looking up and down his form draws your attention to what looks like a somewhat cleaned loincloth with little strings wrapped around it.";
	say "     Your attention towards his groin draws a light nicker. 'I had to tie my... thing to the cloth. It helps avoid any unpleasant reveals.' You assure him that any such reveals would be quite pleasant indeed. A genuine smile breaks through his tense features, but then the storm clouds return.";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Encourage him to continue.";
	say "     ([link]N[as]n[end link]) - Perhaps it's better to return another day.";
	if player consents:
		say "     With a bit of prodding, you get the stallion to agree to go ahead and get it over with. The man lightly grips the pealed back bits of aluminum, slowly opening the back 'entrance' and squeezing through. Almost immediately, you follow after him. Once inside, you're relieved that his bulging body is able to hunch behind the piles of food packet boxes, water bottle crates, soda crates, and everything in between. The pile of supplies easily reaches up to neck height for the average human, making your positioning all the easier, even with the broad slab of pure muscle right next to you";
		say "     'So what now?' Steven asks with a jittery voice. You simply nudge him with an elbow, looking at his eyes as they show a look of utter bewilderment. 'Fine.' The stallion then walks out from behind the pile of supplies, hands raised with a face full of concern. No one seems to notice at first, but as soon as just a single person sees the hulking, mostly nude male heading towards them, they gasp. That gasp then draws more attention, and then more gasps, sounding like a slowly crescendoing chorus of pure hot air. 'Run!' someone you can't identify shouts. 'No! Wait!' Steven tries to yell out over the panic. However, it does little good, everyone stampedes towards the main door. The guards are far more concerned with Steven than keeping the survivors safe.";
		WaitLineBreak;
		say "     'Don't move,' one of the guards snaps at the stallion, the man's body covered in thick riot gear. 'I'm not here to hurt anyone,' the equine male protests. 'I just want you to see—' He's then interrupted as a shot rings out, the horse stumbling back. 'Why?!' he yells. 'You're a danger.' Another shot then rings out right afterwards, but it comes too late, the clops of an angry stallion filling the warehouse as wild firing begins. You duck behind your cover, staying hidden as the gunshots continue, the pops intermingled with sounds of men grunting and angry neighs. Things grow quiet after several minutes, and balling up your fists, you peak over the edge of your hiding spot. Your eyes widen as you look over the tied up men and groaning civilians, many of whom caught stray shots. Steven is hunched over one such groaning man, hands stroking over his face.";
		say "     'If I'd have known you were still you, I wouldn't have stayed here,' the groaning man gasps out. 'I would've come found you. I always knew what you were hiding down there. It was obvious after each time in your office. Your pants can only hide so much.' A chuckle then rings out from the groaning male. 'Thank god for these nanites. I would've been dead otherwise.' The man then takes one of Steven's massive hands between his own, rubbing it as he smiles. 'Sorry that I didn't come looking for you. They told us you were lost. Insane. If I'd known—' the stallion shuts the man up with an eager kiss, his muzzle rotating as he kept making out with his friend. You step out from your hiding place, cautiously approaching Steven as he pulls his lips back from the human before him. Once you're close enough, you place a hand on his shoulder, questioning what's going to happen with the guards. 'What do you think?'";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Teach them what a wild stallion can do [bold type](Steven will become temporarily unavailable).[roman type][line break]";
		say "     ([link]N[as]n[end link]) - If they can't be convinced to stay civil, then kick them out.";
		if player consents: [Wild Stallion]
			LineBreak;
			say "     Steven gives a look of shock, but as you rub over his flank and reach towards his cock, his look abates towards one of confusion. His muzzle then twists into a vision of pure lust as you wrap a hand around his loincloth covered dick. The strings keeping the shaft mostly out of view snap as it hardens at a ridiculous pace. A neigh then rings out from him as he shakes his head, lightly pushing you aside as he clops over to the indisposed guards. 'So you think you could stop me from taking what I want?! Huh!' The stallion then pumps at his fully hardened dong, pre spewing out across the face of the guard nearest him. Steven then slaps the man across the face with the leaking shaft, neighing out sounds of pure lust as he grips the guards head. The still human man's eyes gloss over as his lips kiss at the stallion's tip. 'So quick to fall to your betters. Let me help you fall faster.' The musk ridden male then slams his cock down the guards throat, the human gagging momentarily before miraculously overcoming that limitation.";
			say "     Steven quickly gets into a rhythm of throat-fucking the male before him, neighing and flehmening as his cock gets coated with ever thickening saliva. The man the stallion was previous huddled over is still in the same spot, and as you glance at him, you realize that fine hairs have begun to sprout along his neck. Hunching over, you rip his shirt open, revealing hairs all over his torso, at their thickest along his lower abdomen as they trail down into his pants.";
			Linebreak;
			say "     Do you want to suck the stallion's old friend? Beware, though, as [bold type]Steven may have words with you afterwards if you do.[roman type][line break]";
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents: [sucks]
				Linebreak;
				say "     You quickly rip off the rest of the man's clothes, revealing an ever lengthening, and ever more equine cock between his legs. Unable to help yourself, you lap at the tip, sucking down all of the seed the man pumps out. His product seems to increase with each passing second, and soon you find your mouth regularly filled to the brim with musky cum. You have to gulp it down just to avoid drowning, but you can't help yourself as you push your mouth further down his shaft, watching as the fur along his body spreads faster as you get further down. Soon he's neighing out of a slender equine muzzle, his newly thickened fingers gripping at your head to force you down to the base. As you gulp around the tip of the shaft, you feel it edging its way deeper inside you. The length slows in its growth, but is still quite eager to get even larger within you. A loud neigh then fills the room, your eyes darting to the side so you can just barely make out the sight of Steven's ass cheeks clenching together, the muscles held tight as the sounds of gulping gets louder.";
				say "     You refocus on your current task, gulping down around the length deep inside your throat as the changing human begins to thrust his hips, fucking your face. At first you gag, but as you work up to the rhythm of it, you take it like a champ. With the thrusting, your gulping, and the now fully grown cock, your feel new urgency in the thrusts down your throat. Before you can panic, however, the stallion shoves you to the base once more as his cock pulses and his hips still. You feel it before you taste it, the thick globs of seed firing down your gullet and into your stomach. Four, five, eight, twelve, eighteen, and then finally the globs begin to slow, your lungs burning as you desperately claw at the crotch before you, whinnies filling your ears as the hands loosen their grip on you. You yank yourself back hard enough to land on your ass, the rest of the seed from that monolith of masculinity splattering across the once human groin and cock, some even splattering against you.";
				WaitLineBreak;
				say "     As you catch your breath, you look over the newly christened equine before you, the male far more lithe, and even feminine, compared to Steven himself. However, before you can look too thoroughly along the new being, you feel a hand yank you up off the ground. 'Since you've had a taste of him, and ruined my own chance to change him, I'm going to use you as my personal little pet from now on. You understand?' Nodding, you look back at the exhausted male on the ground. 'No, look at me!' Steven then forces your head towards his towering figure and wrathful eyes. 'I'm going to brand that sorry body of yours as mine, forever, and his too.' the stallion says as he jabs a thumb to his changed friend. You then feel yourself being carried along before getting tossed through a doorway, landing on all fours on rough pavement. However, before you can get up to check yourself, the door behind you slams shut. Moans and sounds of pure ecstasy come through the walls.";
				CreatureSexAftermath "Player" receives "OralCock" from "Morgan Horse Stallion";
				now Resolution of Old Stallion Friendship is 3; [The warehouse is now a whorehouse]
				now charisma of Steven is 1; [You made Steven a tad upset]
				now Steven is nowhere;
			else: [No]
				Linebreak;
				say "     You simply go back to watching the great stallion defile the guards, each one falling more and more into depravity as the musk from Steven sinks in. The ones tied up the farthest from the action try and scoot closer, doing anything to get closer to their new object of worship. Before long the stallion gives out a loud neigh as he slams his hips forward, the guard before him gulping louder with each second. Steven's ass even clenches as the muscles between his legs pulse. After what feels like several minutes, the stallion pulls his saliva and cum stricken, drippy cock from the guard, continuing onto the next one. He slams his cock down that man's throat as well, seeming to have adopted a style of creating more sluts for himself. As time passes each guard feels that shaft down their throats, their need evident as they pant and moan from just being near him. Soon he would pump a load down each of their throats, the eager guards soon groaning in pain as you look on with concern.";
				say "     Your worries are soon assuaged as Steven strips them of their clothing and gear, revealing the tan hairs sprouting all over their bodies. The new sounds from the men is that of lust and excitement. The shifting men then run their hands along their changing bodies, the more muscled ones slimming down as the others merely trim up. Each of them turn into quintessential twinks right before your eyes, only they have fine hairs all over their bodies, and cocks to almost rival Steven himself. It also doesn't take long for the new twinks to start running their hands over each other, the ropes and bindings torn off them when they'd been stripped by their stallion. Moans sound out next as they get more vulgar in their explorations. It takes no time at all for once human, presumably straight, males to descend into a pile of writhing equine desire.";
				now Resolution of Old Stallion Friendship is 3; [The warehouse is now a whorehouse]
				now charisma of Steven is 51; [You honored Steven's wishes]
				now Steven is nowhere;
			CreatureSexAftermath "Human" receives "OralCock" from "Steven";
		else: [Kick them out]
			say "     You encourage the man to let them be, since no one was killed. Only a couple of guards were nauseant enough to be forced out. The rest decide they'd accept the new normal, at least for now. However, most of the ones who remain give you the side eye as you leave the warehouse with Steven. The stallion slaps you on the back and gives thanks, grinning ear to ear as you part ways. Moments before you're out of sight, you see a man chase after him from the warehouse, the two embracing each other before falling out of sight.";
			now Resolution of Old Stallion Friendship is 4; [Freed the Warehouse from the fear]
			now strength of Steven is 1;
	else: [discouraged]
		say "     Deciding that it may be best to simply wait for another day, you back out of the plan altogether, telling Steven to come back here some other time.";
		stop the action;

Section 6 - Steven Bunker events

[Gotta move Steven to the bunker for one event, then he'd go back to the junkyard. All of this will be for a male player.]

after going to Main & 7th Street while ((Charisma of Steven is 1 or Charisma of Steven is 51) and Resolution of Old Stallion Friendship is 3 and Dexterity of Steven < 1 and player is male and daytimer is day):
	say "     As you walk out onto the steps of the old library, you hear a man clear his throat. You then glance to the side, seeing the imposing figure of Steven. He's leaning against a pillar, his eyes drinking you in as he simply remains silent. A loincloth is the only thing blocking your view of his crotch, but even then, several inches of his equine shaft dangle in clear view, well past the edges of the small piece of fabric. Apparently, he's settling for just having your attention. The silence remains for several awkward seconds, forcing you to make the first move.";
	Linebreak;
	say "     [bold type]Do you want to question him about his presence, or do you want to simply leave him to come back another time?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents: [Starts Event]
		LineBreak;
		say "     You question why he's here and what may have been going down in the warehouse. He hesitates, glares up and down your form, and then clears his throat again. This time, it's followed by his deep voice answering you, 'The warehouse is now the perfect harem for me, and some of the less changed ones make for perfect bait. However, I'm not here to answer all your questions. I'm here to use you[if charisma of Steven is 1]. Your antics from before need to be paid for, and you being a good little toy will set you on that path. However, this once, I will give you the chance to back out. You did do many things that brought me great pleasure. So, I will give you the chance, this once, to avoid me and my business, and in return, I will do the same[else if charisma of Steven is 51]. Your help with getting me my new slaves will earn you a bit of fun as my toy. Then again, maybe that was a one time thing for you. If that's the case, we can both go our separate ways, permanently[end if].'";
		LineBreak;
		say "     [bold type]Do you want to be adopted by Steven, taken by him?[roman type][line break]";
		say "     ([link]Y[as]y[end link]) - Yes.";
		say "     ([link]N[as]n[end link]) - No.";
		if player consents: [Final check to continue event]
			LineBreak;
			say "     You give him a nod, and a smile streaks across his muzzle. 'Now that's a good toy.' You aren't quite sure what he has in mind for you, but you can't help but find yourself excited by the coming prospects. After what you saw in the warehouse, there's no doubt in your mind that he will pull out every stop, that he will use you in the most primal manner one can. There's not much else you could ever want, and that thought surprises you. Whether he has some primal effect on your mind, or whether his dominance has filled you with that desire, you're not sure. You're also not sure how long you were simply standing there and taking his form in, eyehumping his muscles, but he soon approaches you, grabbing an arm and hauling you out into the street.";
			say "     You almost try to jolt away from him, your concern about the inhabitants of the city overwhelming your submission. However, Steven won't have any of it, tightening his grip on you as he feels you jolt. 'I'm going to show everyone around who you belong to. You agreed, so no trying to back out now.' Steven's gruff voice gives you goosebumps, makes you truly feel owned. He is right, however, there is no turning back now. You agreed to the will of a conquerer, and there's nothing to do but follow through. Even if you really wanted to back out, he'd still take you as his. That's exactly why you find yourself facing the cement, his hulking hands shoving you face down onto the ground.";
			WaitLineBreak;
			say "     You then let Steven adjust your position, raise your ass and push his crotch against your ass. The loincloth tickles your skin, but soon his smoldering cock pushes up against you. He pulls back, and when he presses into you once more, his cock is smashed flat against you, the loincloth brushing against your left butt cheek. His length dribbles hot fluids on your lower back, and as he hotdogs your ass, Steven's cum smears up and down his shaft. It lubes the equine cock, allowing for him to thrust faster, to move between your cheeks with more fluid motion. There's nothing to do but brace yourself as he vigorously humps your ass.";
			say "     The sound of slick movement, of groaning pants and of his balls slapping your taint, really insures that everyone and everything in earshot is fully aware of what's happening. However, as a particularly loud snort sounds out from behind you, the equine shaft slips free from between your cheeks. The blunt tip soon returns, though, poking at your anus with ever increasing demand. It's the only part of Steven's cock that you feel against you, but it makes that length feel even larger than before. Your anus quivers in anticipation of what the ex-guard is going to do.";
			WaitLineBreak;
			say "     And then it happens; your anus opens up, and that broad tip slips inside. At that moment, your mouth gapes, and you're left in complete bliss. The flared tip brushes right over your prostate, driving you mad with pleasure in mere seconds. There's nothing left to hide, and so you simply let it happen. You brace yourself even more, letting him put all his weight into sliding his cock deep within your ass. There's nothing but bliss, Steven's sensitive flesh sliding right into you. It feels like it has always belonged inside you. As the pleasure spikes, as the median ring pops into you, your body quivers with uncontrollable ecstasy.";
			say "     You almost feel like you've already cum. The pleasure is so overwhelming that you feel like you're in a constant state of climax, and as his hips finally press firmly against your ass, that climactic feeling only strengthens. Of course, Steven doesn't just rest there and let you ride out the pleasure. Soon he begins to pull out, forcing you to go through the exact same insane pleasure, and yet it feels like it's even more maddening in strength. When the median ring pops out of you, your mind blanks out. Before you know it, you feel his hips slapping against your ass again, and again, and again.";
			WaitLineBreak;
			say "     His rhythm picks up, and as your mind continues to fill with static, your cock lurches in the air, firing off shot after shot of cum. The seed splatters against the asphalt, marking it with your utter desire. Steven doesn't slow down at all, however, continuing to pound your ass, slapping his hips against you as he snorts and neighs in unctrollable outbursts. The ex-guard, turned dominant horse, doesn't give you a break, his neighing filling the area as the wet slapping picks up. Somehow he's going even faster, humping you even harder. It's then that you realize that something is pumping straight into your guts.";
			say "     You don't quite understand what's going on until hot cum begins to spurt out of your ass. The horse is cumming straight into you, and he's not slowing down for a second. You can feel each shot almost bulge out your stomach, his cock pulsing again, and again, constantly throbbing as it fills you to the brim. When there's too much, the cum squirts right back out and all over the both of you. Soon Steven's crotch is coated in seed, your lower body covered with it as well, and as he keeps fucking you, the cum splatters about even more.";
			WaitLineBreak;
			say "     It's not until you're kneeling in a puddle of his hot jizz that he slows down, eventually holding himself balls deep inside you. 'Always nice to get a new plaything,' Steven grunts out. He then snorts again, pulling his cock out of you with a wet slurp. 'See you again.' The man then clops off, leaving you stuffed and marked. You take a minute to relax, to gather yourself, and as the cum begins to dry, you get up and gather your things.";
			if Charisma of Steven is 1:
				Now Charisma of Steven is 2;
			else if Charisma of Steven is 51:
				Now Charisma of Steven is 52;
			NPCSexAftermath Player receives "AssFuck" from Steven;
		else: [Blocks out future Steven content for now]
			say "     You shake your head at the hulking horse, simply turning and heading off. You can feel his eyes digging straight into your back, but he's not yet far enough gone to go against your wishes.";
			now Dexterity of Steven is 1; [alt path]
	else: [Delays Event]
		say "     You decide to simply head on your way, shrugging your shoulders at the confusing appearance.";

[Steven shows up at the bunker for a second time]

after going to Main & 7th Street while ((Charisma of Steven is 2 or Charisma of Steven is 52) and XP of Onyx > 9 and XP of Onyx < 20 and player is male and daytimer is day):
	say "     'There you are, my little bitch,' you hear a voice declare as you walk out of the library. It's Steven again.";
	LineBreak;
	say "     [bold type]Do you pay attention to him?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - Yes.";
	say "     ([link]N[as]n[end link]) - No.";
	if player consents: [Starts Event]
		LineBreak;
		say "     Turning around, you set your eyes on the hulking horse before you. The ex-guard seems bigger than when you last spoke to him. His height isn't noticeably different, his muscles, while more defined, don't seem to have grown outward, and yet, somehow, you feel as if you're standing before a giant: a predatory giant. 'That's how I like to be looked at. In awe. In worship, and just a touch of fear.' Something has clearly grown within him, and as Steven clops his way towards you, the wind tickling at his short fur, his cock becomes ever more present in your mind. Gone is the loincloth from before, the thing that was always soaked in musk and seed. Now there's nothing to hide his virility.";
		say "     Steven's musk almost immediately hits you, his ever closer presence wafting the scent up to your nose. Your eyes lock onto the source of the smell, the crotch of the great equine before you. That's when you notice the longer fur around the base of his cock, his thick pubic-fur, and then you notice how sweaty the equine has gotten. 'I just got done with pounding a new recruit. He was a nice military guy, gruff, muscled, and ready to fight. However, all I had to do was whip off my loincloth and toss it in his face. Within seconds, he was begging for my cock. So, sorry if you were wanting a whiff of it. It's still balled up in his mouth.'";
		WaitLineBreak;
		say "     You don't really respond, and as you glance back into his smiling face, you hear hooves clopping inside the library, approaching the two of you. 'Oh, got another horseboy?' Steven chuckles. A deep voice replies, 'I ain't no boy, and he's my toy.' You then see Onyx step out of the library. 'Oh, is that so? Up to share him for a bit?' The ex-guard then turns and grabs a duffle bag from behind a pillar. He pulls out a leash, a halter and a bit. When Onyx sees all of this, his eyes light up with utter glee. 'Oh, if we're doing that, and you brought all that lovely gear, then we can work something out.' You feel concern welling up within you.";
		say "     However, that concern doesn't get a chance to come out. You're quickly shoved to your knees, your mouth inches away from the equine's cock. The thing soon pops straight up, slapping against your chin. You're left with only one option when a hand cups the back of your head: your mouth directed at the tip. As soon as your lips touch the broad end, you're shoved down to the base of the equine shaft. Your nose is then nestled right in a tuft of pubic fur, the sweaty, musky scent blanking your mind of all reason for several seconds.";
		WaitLineBreak;
		say "     Somehow, you manage to regain some consciousness and reason. You also manage to avoid a chocking fit on that long rod, your throat easily accommodating it. Within moments, however, you're pulled right off it. Your head is then angled up, your vision filled with the grinning muzzles of two massive equines. 'So let's do this,' Onyx proclaims. Steven then gets to making use of everything he brought. A collar and bridle are quickly snapped around your head and neck, with the bit shoved in seconds later. The leash is then clipped right onto your collar.";
		say "     'This place seems a bit quiet, but I'm sure a few beasties are watching. Maybe we give them a show?' Steven offers up. 'Oh, sounds perfect,' Onyx replies. You're then pulled by the leash, your hands and feet barely keeping you from falling over and simply being dragged down the stairs. Luckily, Steven doesn't pull you along too fast, giving you at least a chance to stay upright. However, you are quite roughly yanked into the middle of the street. Your neck burns from the grinding of the collar, but after being positioned in the open, there aren't any more efforts to move you along.";
		WaitLineBreak;
		say "     You quickly feel hands all over you. The rough, equine appendages stroke up and down your sides, slap and grope at your ass, all while you feel hot breath wafting over you. You're then quickly, and unceremoniously, stripped of your belongings. You're now entirely revealed to the world around you, and as the hot breath wafts over your exposed body, thick fingers jab at your hole. Beyond their hooves and snorting, there is little noise from either. They stay entirely focused on breaking you in. However, things come to a stop almost as quickly as they had started. When you feel one of them step over you, and their ass slam down onto your back, you know what's next. 'Giddy-up,' is all you hear from the horse above you: Steven. He then yanks on your leash and squeezes his thighs around your torso, keeping his ass tight to your back. You're forced to crawl about on the street, taking Steven with you. He jerks and pulls on the leash, directing you this way and that.";
		say "     No matter how much you might try, the halter and bit keeps you from saying a thing. The only sounds that come out of your maw are grunts, groans and indiscernible gibberish. This keeps going for what feels like half-an-hour, the big horse using you as a mount, quite literally. You're never driven too far away form the Library, but you're still shown off like some prized stallion. 'It feels pretty good up here,' Steven remarks as he slaps your back, his erection strafing back and forth between your shoulder blades. The pre leaking all over your back only makes this an even more humiliating affair, and as you question why you even agreed to this in the first place, you feel a blunt, wet object poke at your ass. It rubs back and forth, coating your rear in fluids, and as it slips between your cheeks, it swipes over your hole. The feeling of it, of the warm rod grazing your hole, reminds you exactly why you do things like this.";
		WaitLineBreak;
		say "     Your leash is yanked, hard, forcing you to stop as you let out gagging hacks for air. The cock behind you then slams right in. There's a sheering, almost unimaginable moment of pain, but after that brief second, ecstasy fills you, blinds you, and leaves you drooling over the metal bit in your mouth. You're filled to the brim with Onyx's cock, and as you try to move, Steven jerks on your leash. You aren't allowed to do anything other than take it. Of course, as the cock withdraws, your mind goes blank in fog. Lust infects your every thought, pleasure consuming you from the inside out.";
		say "     All mercy that they may have had is quickly yanked away. The muscled, equine hips behind you quickly smack into your ass, pull away, and then slam back into you. This repeats, faster and faster, as if Onyx is trying to pound you into a mushy stain on the street. You're not sure if it's anger or lust that drives that cock in and out of you, and the gutteral, rasping grunts don't clear things up. However, as the speed picks up, you feel Steven begin to jack off above you. His cock grazes the back of your head every so often, his furred, yet callused, hands brushing against you as he pleasures himself.";
		WaitLineBreak;
		say "     It is then that a telltale slam comes from behind. A warmth fills you to the brim, and a neigh of base emotion sounds out. Another neigh soon follows, and the back of your head is painted with hot cum. Whatever misses your head, splatters to the ground in-front of you. Pure white fluids dribble down over your forehead, dripping past your eyes as you close them. Soon, your entire head is plastered in equine fluids, and as the horse behind you pulls out, the one above you gets up. It takes a bit of effort for Onyx to pop his flared head out, but when he does, his load pours out over your thighs, balls and cock. It even begins to pool around your knees, caking your legs in semen. That's when you notice that you're free of the bridle and bit; even the leash and collar get taken off. All of it is covered in cum, but Steven still takes it back to his bag in front of the library, packing all of it up.";
		say "     Your cum covered ass gets a quick smack, and then, Onyx heads up to Steven. They then lean into each other, Onyx placing his hands against Steven's chest. As they get closer and closer, you notice their heads tilt, and seconds later they're making out. Deciding you better get back to exploring before they get any other ideas for your body, you gather your things and head off. The cum eventually dries into you, but you're left feeling thoroughly marked.";
		if Charisma of Steven is 2:
			Now Charisma of Steven is 3;
		else if Charisma of Steven is 52:
			Now Charisma of Steven is 53;
		NPCSexAftermath Player receives "OralCock" from Steven;
		NPCSexAftermath Player receives "AssFuck" from Onyx;
	else:
		say "     You simply head off on your own, quickly jogging away like you didn't hear him.";

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
	now SeductionImmune entry is false;
	now libido entry is 60;
	now loot entry is "";
	now lootchance entry is 0;
	now MilkItem entry is "";
	now CumItem entry is "";
	now TrophyFunction entry is "-";
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
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

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
Junkyard Digups	"A pile of garbage"
Junkyard Digups	"Junkyard Digups"

Junkyard Digups is a situation.
ResolveFunction of Junkyard Digups is "[ResolveEvent Junkyard Digups]".
The printed name of Junkyard Digups is "A pile of garbage".
Sarea of Junkyard Digups is "Junkyard".
jdigup is a number that varies.

to say ResolveEvent Junkyard Digups:
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
	if jdigup is 3, now Junkyard Digups is resolved;


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
[Sarea of Steven's Home is "Junkyard."]

instead of sniffing Steven's Home:
	say "This spot in the junkyard smells of Steven and his manly, equine scent. It only partially blocks the pervasive scent of the junkyard though.";

Table of GameEventIDs (continued)
Object	Name
Junkyard Home	"Junkyard Home"

Junkyard Home is a situation.
ResolveFunction of Junkyard Home is "[ResolveEvent Junkyard Home]".
Sarea of Junkyard Home is "Junkyard".

to say ResolveEvent Junkyard Home:
	if Stevenremoved is 0:
		say "     You come across what looks like an abandoned habitation, filled with old nesting material and various shiny objects. Is it some kind of bird's nest? You decide to leave it alone... for now.";
	else:
		say "     You turn around a corner and find a quaint little cove in the stacks of junk. A familiar-looking person is tidying up the floor, and looks up as you approach. 'Ah, hello,' Steven says. 'Didn't know if I'd see you again.' He looks down at near-naked equine body, wearing only a belt and a loincloth. 'As you can tell, I was permanently disbarred and exiled. My old clothes don't fit me anymore. This loincloth was part of a curtain. There is a lot of useful stuff out here, but it's not like it was in the shelter. I'm sure we'll make it through, though.' 'I want to thank you,' he says. 'I don't know if it was the best decision I've made, but I feel some relief for this body. It feels like, completion, I guess. The grass is tastier on the other side, after all.' He smiles. 'You like the place? I think it's roomy enough. If you want to... you know... move in.' He coughs and goes back to work.";
		move player to Steven's Home;
		AddNavPoint Steven's Home;
		now junkyard home is resolved;


Section 4 - Finding a tool

Table of GameEventIDs (continued)
Object	Name
Unused Tool	"Unused Tool"

Unused Tool is a situation.
ResolveFunction of Unused Tool is "[ResolveEvent Unused Tool]".
Sarea of Unused Tool is "Junkyard".

to say ResolveEvent Unused Tool:
	say "As you explore the junkyard, you come across a pile of discarded tools. You search through the pile for something interesting.";
	let result be a random number from 1 to 3;
	if result is 1:
		ItemGain crowbar by 1;
	else if result is 2:
		ItemGain mallet by 1;
	else if result is 3:
		ItemGain iron pipe by 1;
	now Unused Tool is resolved;

[Weapons moved to Core Mechanics/Weapons.i7x]

Section 5 - Find a random infected object

Table of GameEventIDs (continued)
Object	Name
Signs of a Scuffle	"signs of a scuffle"
Signs of a Scuffle	"Signs of a Scuffle"

Signs of a Scuffle is a situation.
ResolveFunction of Signs of a Scuffle is "[ResolveEvent Signs of a Scuffle]".
Sarea of Signs of a Scuffle is "Junkyard".
scufflecount is a number that varies.

to say ResolveEvent Signs of a Scuffle:
	increase scufflecount by 1;
	say "It looks like two infected creatures were fighting each other out here. You search the area for any fallen loot:[line break]";
	let opportunity be 0;
	let firstbeast be a random number from 1 to number of filled rows in the Table of Random Critters;
	choose row firstbeast from the Table of Random Critters;
	if there is a loot entry:
		if loot entry is not "" and loot entry is not " ":
			ItemGain loot entry by 1;
			now opportunity is 1;
	let secondbeast be a random number from 1 to number of filled rows in the Table of Random Critters;
	choose row secondbeast from the Table of Random Critters;
	if there is a loot entry:
		if loot entry is not "" and loot entry is not " ":
			ItemGain loot entry by 1;
			now opportunity is 1;
	if opportunity is 0:
		say "Alas, you found nothing but dirt, dust, and junk.";
	if scufflecount is 3, now Signs of a Scuffle is resolved;

Junkyard and Warehouse ends here.
