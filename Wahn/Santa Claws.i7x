Version 1 of Santa Claws by Wahn begins here.
[Version 1.1 - Small Fix]

"Adds a polar bear Mall Santa to Flexible Survival"

[ Santa Claws, the polar bear                                 ]
[ HP of Santa Claws                                           ]
[   0: never met                                              ]
[   1: player was welcomed to the Christmas village           ]

[ Dexterity of Santa Claws - Last Present Turn                ]

Section 1 - Description

Table of GameCharacterIDs (continued)
object	name
Santa Claws	"Santa Claws"

Santa Claws is a man. The HP of Santa Claws is usually 0.
The description of Santa Claws is "[Santa Claws Desc]".
The conversation of Santa Claws is { "Roar." }.
lastfuck of Santa Claws is usually 555.
Santa Claws is in Christmas Village.


to say Santa Claws Desc:
	setmongender 3;
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Santa Claws], LEVEL: [level of Santa Claws] <- DEBUG[line break]";
	say "     Santa Claws is a large and powerful anthro polar bear, his bulky body covered in thick snow-white fur. It is obviously clear that this is no timid little bear, as there are strong muscles under his white pelt, and the claws on his paw-hands and -feet do look pretty dangerous. Nevertheless, you don't feel threatened by him, since the big ursine is wearing a gloriously red and white Santa suit, golden belt buckle and all. Sitting on a wide, cushioned throne made of carved hardwood and with festive decorations carved into its sides, the bear watches his domain with a jolly smile on his face.";

The scent of Santa Claws is "     Santa Claws smells quite manly - like a big and virile furred beast.".

instead of going east from Mall East Wing while HP of Santa Claws is 0:
	say "     As you walk further east down the wide open hallway, you see a thick whirl of white flakes in the air before you, obscuring sight in that direction. Looks like... falling snow? Strange - but what isn't, these days. Coming closer, you see that the snowfall only really is strong for a few feet, forming a kind of curtain and little wall of snow to divide half of the east wing from the rest of the Mall. There is a break in the low snow wall though, as if to welcome you in, with a sign saying 'Christmas Village' stuck in a pile of snow beside it. Curious about the snow here inside of the building, you lean down and take a handful - finding it cool to the touch, but not freezing, and realizing that while it feels real in all other concerns, the white flakes do not melt in your hand.";
	say "     Do you really want to explore this strange place?";
	if Player consents:
		move player to Christmas Village;
		say "     Passing the curtain of snowfall, you enter a pretty little winter wonderland. One can still make out the general shape of the Mall, the wide corridor with skylights above, but things have been... transformed quite a bit. There are evergreen conifer trees that sprout out of the snow-covered ground, mostly hiding the walls and letting things appear as if you're in a midwinter forest, with the front sides of the stores appearing as block houses built from round tree trunks. There are many petite humanoids dressed in green clothes going about their business here, following tracks through the snow, chatting and laughing. Looks like they're Christmas Elves, with their unlined, delicate features and the pointy ears sticking out to the sides.";
		say "     In the center of it all stands a large cushioned throne, carved with many decorative designs, and on it sits a man in a bright red suit - an anthro polar bear. As he lets his gaze wander over his domain, smiling at all the little elves, he notices you and waves you closer with a clawed hand. In a deep voice, the polar bear says, 'Welcome to Santa Claws's little village, visitor. Be advised that this is my realm and I don't condone violence - this is a place to be jolly, so leave any troubles outside. Rest, get your present and enjoy some time here before you have to go back - or stay, as one of my Christmas Elves, if you wish.'";
		now HP of Santa Claws is 1;
		now Dexterity of Santa Claws is turns + 20;
	else:
		say "     Nah, you step back from the curtain of snowfall and walk back towards the normal shops in the west.";

Table of GameRoomIDs (continued)
Object	Name
Christmas Village	"Christmas Village"

Christmas Village is a room.
Christmas Village is east of Mall East Wing.
The description of Christmas Village is "[CVillageDesc]".

to say CVillageDesc:
	say "     Around you, a little winter wonderland occupies this section of the Mall. There are evergreen conifer trees that sprout out of the snow-covered ground, mostly hiding the walls and letting things appear as if you're in a midwinter forest, with the front sides of the stores appearing as block houses built from round tree trunks. Only the north side looks different, with what appears to be an unhewn rock-wall behind the trees, complete with a somewhat foreboding entrance to a cave. There are many petite Christmas Elves dressed in green clothes going about their business here, following tracks through the snow, chatting and laughing. Among them, you see some visiting Mall rats and other species, but the majority of people are elves. In the center of it all stands a large cushioned throne, carved with many decorative designs, and on it sits Santa Claws, the master of this domain.";
	say "     To the west, behind a curtain of thickly falling snow, lies the rest of the Mall. You wonder if you really should go back, or just stay in this nice and happy place...";

Section 2 - Talking

instead of conversing the Santa Claws:
	say "[SantaTalkMenu]";

to say SantaTalkMenu:
	say "What do you want to talk with Santa Claws about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the polar bear about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Present";
	now sortorder entry is 2;
	now description entry is "Ask for a present";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mall";
	now sortorder entry is 3;
	now description entry is "Talk about the Mall";
	[]
	if HP of Krampus > 0:
		choose a blank row in table of fucking options;
		now title entry is "Krampus";
		now sortorder entry is 4;
		now description entry is "Ask him about the goat-demon";
	[]
	if JayMarkRelationship > 2:
		choose a blank row in table of fucking options;
		now title entry is "Mark";
		now sortorder entry is 5;
		now description entry is "Ask him about the other polar bear";
	[]
	if JayMarkRelationship > 1:
		choose a blank row in table of fucking options;
		now title entry is "Jay";
		now sortorder entry is 6;
		now description entry is "Ask him about the Christmas Elf";
	[]
	if thirst of Jay > 0 and thirst of Jay < 9:
		choose a blank row in table of fucking options;
		now title entry is "A Suit for Jay";
		now sortorder entry is 7;
		now description entry is "Talk about getting Jay a business suit";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Himself":
					say "[SantaTalk1]";
				if nam is "Present":
					say "[SantaTalk2]";
				if nam is "Mall":
					say "[SantaTalk3]";
				if nam is "Krampus":
					say "[SantaTalk4]";
				if nam is "Mark":
					say "[SantaTalk5]";
				if nam is "Jay":
					say "[SantaTalk6]";
				if nam is "A Suit for Jay":
					say "[SantaTalk7]";
				wait for any key;
				now lastfuck of Santa Claws is turns;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the polar bear, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SantaTalk1:
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'You want to know who I am? Why, Santa of course! Just look around - isn't this the perfect little Christmas village? A place where everyone can be jolly.' Letting his gaze roam over the snow-covered trees and the many elves going about their business, he smiles. Then the bear looks back to you, still with the same curious expression on your face, and adds, 'Let's not dwell on the past, okay? I'm happier being Santa Claws now than I ever was as that scared little man, running and hiding from the monsters. It's almost as if this suit called to me after I went into the storeroom, wishing for someone to fill the mantle... and that is what I did.'";
		-- 2:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'When I became Santa, the magic just spread all around me. This almost instantly make people feel a little better: seeing something familiar, something safe. We got all of the decorations out, bit by bit, set them up - and they became real, before long.' He moves his clawed hand in an arc to indicate your surroundings, trees and block houses, as well as the snow. 'Isn't it beautiful?' the bear asks. 'Some left because they were afraid of it, but most stayed with me - and why wouldn't they? This place is for them to be happy in, and I keep it safe.'";
			say "     Looking around at the numerous Christmas Elves going about their business, you tentatively have to agree. This is a pretty nice setup, if one can stand the theme...";
		-- 3:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'I feel the bear inside of me, you know: the primal urges to roam the land as a mighty predator, be respected and feared by any who cross my path, and to mate, with all of the lesser beasts... like humans. It wants to push them down and mount them, breed them and leave a string of cubs growing in any and all females...' As he says this, the ursine's clawed hands start to grip the wooden throne's armrests tightly and you think that the bulge in his pants grows a bit too - then he relaxes again and shakes his head. 'But I don't. This suit - it means something. A responsibility that I just can't forget. Look around at all of these people, living peacefully and content while outside, chaos reigns. No, I am Santa Claws and this is my domain. No urge to rut like a beast will make me forget that...";
			say "     Looking around at the numerous Christmas Elves going about their business, you tentatively have to agree. This is a pretty nice setup, if one can stand the theme, day in, day out.";
		-- 4:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'Some say that it's just little machines that do all this, bringing chaos into the world. But... if they can do such almost-magical things, couldn't there also be real magic? I believe that something more than chance brought me to wear this suit - fate led me to it, and it is my task to wear it with honor. Just look around... isn't this very different than what is happening in the streets? Something wanted to save us and chose me to protect this haven.'";
			say "     Looking around at the numerous Christmas Elves going about their business, you tentatively have to agree. This is a pretty nice setup, if one can stand the theme, day in, day out.";

to say SantaTalk2:
	if Dexterity of Santa Claws - turns < 16:
		say "     The polar bear rumbles, 'Now now - you've already had a present recently. Don't be greedy.'";
	else:
		now Dexterity of Santa Claws is turns;
		say "     As you bring up the topic of a present, Santa Claws [if scalevalue of Player > 3]waves you closer[else]leans back and waves you to sit on his lap, which you do[end if]. Putting a strong arm around your shoulders, the polar bear pulls you close and says, 'Ho ho ho - have you been naughty, or nice?'";
		say "     Looking at his clawed hand that holds your shoulder, then into the blue eyes in the Mall Santa's ursine face, you say...[line break]";
		say "     [link](1)[as]1[end link] 'Naughty'[line break]";
		say "     [link](2)[as]2[end link] 'Nice'[line break]";
		say "     [link](3)[as]3[end link] Nothing, and rub his crotch instead.[line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to say 'Naughty', [link]2[end link] to say 'Nice' or [link]3[end link] to rub his crotch.";
		if calcnumber is 1:[Naughty]
			say "     'So... a naughty [if Player is female]girl[else]boy[end if] then!' Santa Claws says in a somewhat disappointed tone, pursing his lips as he slowly shakes his head. 'I fear that you have come to the wrong man. There is another whose specialty is dealing with those who don't behave themselves...' Throwing a look at the somewhat foreboding cave entrance to the north, he leans in to whisper, 'It's never too late to turn yourself around and reclaim your place on the nice list. But if you really feel like you've got something to repent, Krampus will be happy to [italic type]have[roman type] you - long and hard, if you know what I mean.'";
		else if calcnumber is 2:[Nice]
			say "     'So... a nice [if Player is female]girl[else]boy[end if]!' Santa Claws booms in a loud voice, chuckling as he squeezes your shoulder affectionately. 'Let's give you something that's good for you then.' Reaching down into the opening of a large red sack lying next to his throne, the large ursine pulls out ";
			let randomnumber be a random number from 1 to 3;
			if randomnumber is:
				-- 1:
					say "a soda bottle, which bears Christmas-y print with snow and smiling polar bears.";
					say "[bold type]You gain 1 soda![roman type][line break]";
					increase carried of soda by 1;
				-- 2:
					say "a large gingerbread star, decorated with lots of almonds and still in its clear plastic wrapping.";
					say "[bold type]You gain 1 food![roman type][line break]";
					increase carried of food by 1;
				-- 3:
					say "a hearty-looking Christmas fruitcake, still in its clear plastic wrapping. It looks relatively small, but when you accept it, you realize how heavy it is. There's quite a bit packed into this thing.";
					say "[bold type]You gain 2 food![roman type][line break]";
					increase carried of food by 2;
		else if calcnumber is 3:[rub him]
			setmonster "Polar Bear";
			choose row MonsterID from the Table of Random Critters;
			say "     Lowering a hand, you put it right on the powerful ursine's crotch and rub against the respectable bulge you feel through the soft material. As Santa Claws cock starts to get hard, he gives a lusty rumble that reverberates in his broad chest. His clawed hand wandering down to your hips, pulling you closer, the mighty polar bear says, 'So... you want a really [italic type]special[roman type] present today. I'd be more than happy to give it to you.' His voice starts getting a bit deeper and more animal-like as he adds, 'Hard and deep,' a moment later. With that, the bear sets both of his hands on your body, lifting you up as he stands - which makes you feel pretty tiny compared to the muscled bulk of this big creature, pressed tightly against the warm coat on his body. You can feel the deep vibration run through his chest as he gives a low, aroused growl. Clearly, you've woken the beast inside this man, bringing with it strong urges now that it is no longer slumbering beneath the surface.";
			say "     Lowering his head to take a good, long sniff of your scent, Santa Claws squeezes your butt, then pulls himself back slightly from the aroused growling and grunting. With a grumbled, 'Let's get this stuff off of you,' he lowers you to lie flat on your back on the throne. Strong clawed hands work quickly to pull off your gear and clothing, dropping it all on the ground, and soon you're lying naked before the big bear. 'Good,' he growls, running his fingers down your [bodytype of Player] form until he reaches your crotch and [if Player is female]brushes over your nether lips[else]pushes your legs apart a little bit to brush over your pucker[end if].";
			WaitLineBreak;
			say "     Rising to his impressively tall height before you, Santa Claws impatiently undoes the belt of his suit and the buttons on the red coat. He has it off in a second after that, revealing a wide chest with snow-white fur, which at the same time is well-padded against the cold as well as being pretty muscular. The pants are next to go, being pushed - no, almost ripped - off of his legs by the polar bear's clawed hands, which leaves him standing in his full naked glory in the middle of the Christmas Village. One look down at his hips shows you that Santa is more than ready to give you your present. His thick shaft is standing fully erect and pointing at your crotch. A little murmur from the side suddenly makes you realize that the two of you are far from alone. There is a whole crowd of elves gathered all around, watching with eager expressions, many of them murmuring to each other and some stroking themselves.";
			if Player is female:
				say "     Dropping down on all fours, the sexy polar bear pushes his muzzle between your legs, taking great huffs of your aroused scent and lapping at your sex. It feels pretty nice to have that warm, wet tongue brush over your nether lips, then push in between them for a moment before moving further up to stimulate your clit. After a few more moments of oral fun, the snow-white male raises his head and looks at you. His eyes almost glow with lust as untamed feral needs take over the human mind in the same body, and with a roar, the mighty beast rears up and mounts you. Soft, white fur brushes against your naked body as the at least 1500 pound ursine covers you completely, holding himself up with strong arms as his hips position the thick cock between his legs at your opening. Helplessly lying under such a massive partner might frighten others, but you, as horny and wound up as you are, just take it in stride, even eagerly meeting his muzzle in a sloppy kiss as the bear licks your face.";
				WaitLineBreak;
				say "     Then, with a single mighty thrust, everything changes, as the polar bear sinks his erection into your body all the way, straight from the start. You can't help but dig your hands into his luxurious pelt, holding on for dear life as the quasi-feral man bucks against you in a rapid pace. It feels so good to have your pussy stretched wide by his hard shaft and feel its thick girth rubbing against sensitive spots inside of your body that you don't even remember how long your mating lasts. It's all just a blissful haze of pleasure and lust, writhing on the wooden throne's cushioned seat. You're fucked hard and deep, giving you multiple orgasms in a row that come crashing over you, making you pant and moan loudly as femcum trickles out of your pussy and coats his thrusting shaft. After quite a while, the mighty polar bear's moans and grunts get louder and louder too, eventually culminating in a satisfied roar as his thick shaft pulses inside you, flooding your womb with his fertile seed.[fimpregchance]";
				say "     Still breathing heavily, but with reason coming back into his eyes now that the mating urges of his animal form have been sated, Santa Claws sighs, 'Thank you. You felt amazing.' With that said, he pulls you tight against his broad chest in a tight bear-hug, then stands up. The way his still half-hard cock shifts inside your well-bred pussy gives you a nice little tingle as he moves and you feel very warm and protected in this embrace. Still holding on to you, the polar bear then sits back on the throne, leaning back while stroking your [skin of Player] skin. 'Watching out over the village and handing out presents all the time sometimes makes me forget that my body has needs too, so... hope I didn't get too wild on ya.' Looking back to all of the orgasms you had while being fucked just minutes ago, you chuckle and tell him that it's no problem. No problem at all.";
				LineBreak;
				say "     After remaining some more time like that, leaning against the soft-furred chest of your partner and enjoying his warmth, you climb down from of his throne and put your gear back on. Time to get back to the business of surviving in this crazy, flexible world...";
			else:
				say "     Dropping down on all fours, the sexy polar bear pushes his muzzle between your legs, taking great huffs of your aroused scent and lapping at your [if Player is male]own [cock of Player] cock. It feels pretty nice to have that warm, wet tongue brush over your erection, wrapping around its shaft for a moment before licking the cock-head. The bear then[else]sexless crotch. It feels pretty nice to have that warm, wet tongue brush over your sensitive skin, before the bear[end if] lowers his head a bit more and goes for your pucker. Strong hands take hold of your legs and spread them, allowing the large ursine easy access to your rear. What follows is a very nice bit of getting your ass eaten out, with him running that tongue over your puckered opening and pushing in against it, wiggling the tip in and getting your hole wet and ready. Then, after a few more moments of oral fun, the snow-white male raises his head and looks at you. His eyes almost glow with lust as untamed feral needs take over the human mind in the same body, and with a roar, the mighty beast rears up and mounts you. Soft, white fur brushes against your naked body as the at least 1500 pound ursine covers you completely, holding himself up with strong arms as his hips position the thick cock between his legs at your opening. Helplessly lying under such a massive partner might frighten others, but you, as horny and wound up as you are, just take it in stride, even eagerly meeting his muzzle in a sloppy kiss as the bear licks your face.";
				WaitLineBreak;
				say "     Then, with a single mighty thrust, everything changes, as the polar bear sinks his erection into your body all the way, straight from the start. You can't help but dig your hands into his luxurious pelt, holding on for dear life as the quasi-feral man bucks against you in a rapid pace. It feels so good to have your asshole stretched wide by his hard shaft and feel its thick girth rubbing against sensitive spots inside your body that you don't even remember how long your mating lasts. It's all just a blissful haze of pleasure and lust, writhing on the wooden throne's cushioned seat. You're fucked hard and deep, giving you multiple orgasms in a row that come crashing over you, making you pant and moan loudly as you [if Player is male]come all over yourself[else]twitch weakly in your climax[end if]. After quite a while, the mighty polar bear's moans and grunts get louder and louder too, eventually culminating in a satisfied roar as his thick shaft pulses inside you, flooding your insides with his fertile seed.[mimpregchance]";
				say "     Still breathing heavily, but with reason coming back into his eyes now that the mating urges of his animal form have been sated, Santa Claws sighs, 'Thank you. You felt amazing.' With that said, he pulls you tight against his broad chest in a tight bear-hug, then stands up. The way his still half-hard cock shifts inside your well-bred butt-hole gives you a nice little tingle as he moves and you feel very warm and protected in this embrace. Still holding on to you, the polar bear then sits back on the throne, leaning back while stroking your [skin of Player] skin. 'Watching out over the village and handing out presents all the time sometimes makes me forget that my body has needs too, so... hope that I didn't get too wild on ya.' Looking back to all the orgasms you had while being fucked just minutes ago, you chuckle and tell him that it's no problem. No problem at all.";
				LineBreak;
				say "     After remaining some more time like that, leaning against the soft-furred chest of your partner and enjoying his warmth, you climb off his throne and put your gear back on. Time to get back to the business of surviving in this crazy, flexible world...";
			infect "Polar Bear";

to say SantaTalk3:
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'The Mall is a big place and fairly safe, for the times we're in now. Much of that is thanks to Wolverine Security - they're pretty grim and not very friendly, but I shudder to think where we all would be without their relentless focus on doing their duty.'";
		-- 2:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'Have you stopped by that strange store down in the west wing? Nermine is a peculiar woman and seems very interested in buying my suit...'";
		-- 3:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'Watch out when you go to the main restrooms. I heard some critters came up through the sewer entrance there...'";

to say SantaTalk4: [talking about Krampus]
	say "     The polar bear glances over to the cave entrance in the north, then focuses on you again. 'Ah, Krampus. I hope that you didn't form an opinion based on his appearance alone! He may look rather demonic and acts all mean and tough, but I know he's a good guy at heart. Although I may wish differently, his task remains a necessary evil. There is such wickedness in the world.' Letting out a short breath, Santa Claws shrugs and focuses on the happy bustle of the Christmas Village all around you. This seems to distract him from the earlier dark thoughts, though it becomes obvious that they are still on his mind when he quietly adds, 'If you do know someone who might be going down a path that draws Krampus to get them, please pass along the message that redemption is always an option. Being on the Naughty List is not forever.'";

to say SantaTalk5: [talking about Mark]
	say "     As you bring up the other polar bear, Santa smiles and nods to you, then says, 'Mark is a good and dependable man who loves his husband with all of his heart. I am proud to call him a friend and can honestly say that there are few people I'd prefer to have by my side if a truly dire situation came up.' Letting his gaze wander over the happy and carefree Christmas Elves living in his domain, the big white bear puts on a more serious expression for a second, then lets out a deep breath. Sometimes I wish that I too could just forget, like most of them did. But no, it is my responsibility, my duty, to protect them. Being aware of what grim realities the outside world entails is definitely part of that. When Jay and Mark came here, I recognized in him one of the worst examples of PTSD that I'd seen since... ah, no. Don't let me get you down with a tale like that, I shouldn't be gossiping about their private matters anyways. One thing I can say is that I am glad that their transformations went relatively well, and Mark is better for it now.'";
	say "     Falling quiet after the last words, the large, white bear leans back in his throne and gives a welcoming smile to a newcomer who cautiously steps through the curtain of snow flakes demarcating the Christmas Village from the rest of the Mall. He waves the person closer and wishes them a friendly welcome, then starts to chat a bit. Apparently, your talk about the current topic is over, and as you walk away, you can't help but wonder if that is because you almost got a snippet of Santa's past, or to protect the privacy of Mark and Jay. Maybe a bit of both...";

to say SantaTalk6: [talking about Jay]
	say "     Stroking his furry white chin, Santa raises an eyebrow and glances to the small, fairly carefree inhabitants of the Christmas Village. 'Jay is actually a special case among the elves. Most of those who come and choose to stay as part of my domain are lost and just want to forget. He wasn't, and he didn't, with his transformation mostly an accident, caused by the aftermath of the events that he and his partner Mark witnessed before fleeing to the Mall. In the end, the two of them do not actually live in the Christmas Village and still have a life outside of its boundaries. They visit often though, and have become good friends of mine, which makes me glad that things worked out alright in the way that they did.'";
	if thirst of Jay is 0:
		say "     'One thing that does concern me a little though is that Jay has some issues with certain aspects of his new form. There isn't much to be done about his size, not without excessive steps during which he may lose himself, but the other thing... that we can fix. I do know that he despises the elf outfit, so I was wondering if you might like to help me improve at least on that part for him.' Raising a large paw-hand, the polar bear indicates the bustling crowd of elves all around you and lets out a chuckle. 'You know, all of my little charges here actually fulfill the complete stereotype of Santa's elves and have gained almost supernatural crafting skills. If [italic type]someone[roman type] brought them a good bolt of fabric, or even just the right thread, they could surely put together a proper business suit for Jay in no time at all. Reclaiming such an important symbol of his old life would surely thrill Jay to no end. Let me know if you're interested, and we can talk about it, okay?'";
		now thirst of Jay is 1;

to say SantaTalk7: [Suit Quest info]
	if thirst of Jay is 1:
		say "     Coming back to Santa and bringing up the topic of getting a business suit for Jay leads to the polar bear waving over a nearby elf with fiery red hair and a goatee. 'Okay Walter, please tell our friend here what you will need.' The diminutive man standing before you looks young, in the ageless fashion that all of the elves inherently carry, but the rich tone and confidence in his voice tell a tale of a well-experienced person. He clears his throat and smiles at you, then says, 'Mostly, it is just the proper materials that we need. We elves aren't that big either, so a single bolt of fabric should do. Something nice, you know. Worsted wool, cashmere, maybe even silk. And please watch the thread count. Any good suit needs good fabric. Or, if you have trouble finding finished fabrics out there, we could even do with just thread. A loom isn't hard to put together or use.'";
		say "     Thanking the elf and watching him get back to what he was doing before, Santa adds, 'I know that something this specific will be hard to find out there, so I asked around among the recent visitors to the Christmas Village. Maybe you could get fabric or thread at a [bold type]swap meet[roman type]. From what I was told, there should be a somewhat regular one in a [bold type]warehouse[roman type] near the harbor. Though if you do go there... take care. Those meetings are meant to be neutral ground, but one never knows exactly what will happen in these uncertain times.";
		now thirst of Jay is 2; [initial info given]
		now Harbor Swap Meet is active;
	else if thirst of Jay > 1 and thirst of Jay < 5:
		say "     Coming back to Santa and bringing up the topic of getting a business suit for Jay again, he asks, 'Have you found a source for fabric or thread yet? As Walter said, they do need at least fabric, or enough thread to make fabric, for that suit. From what I was told, there should be a somewhat regular [bold type]swap meet[roman type] in a [bold type]warehouse[roman type] near the harbor. Though if you do go there... take care. Those meetings are meant to be neutral ground, but one never knows exactly what will happen in these uncertain times.";
		[Swap meet event in the file Jay.i7x]
	else if thirst of Jay > 4 and thirst of Jay < 8:
		say "     Coming back to Santa and bringing up the topic of getting a business suit for Jay again, he says, 'Do not worry about the suit. Work is progressing on it, and my elves will have it ready by the time it is needed.'";
	else:
		say "     Coming back to Santa and bringing up the topic of getting a business suit for Jay again, he says, 'My elves finished it and it already has been delivered to Mark. He said something about wanting to talk to you again. I'd advise searching him out at the north entrance of the mall, in the mornings or afternoons.'";

Section 3 - Sex

Instead of fucking the Santa Claws:
	say "     The polar bear gives you an interested glance, looking you up and down. With a rumble in his broad chest, he tenses his arms as if to stand up, then huffs, 'No, I'm sorry. There are still so many presents to be given out. Don't want to disappoint anyone who comes to visit my domain.'";

Section 4 - Infections

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Polar Bear";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "He should not fight, how did you see this?";          [ Text used when the monster succeeds on an attack ]
	now defeated entry is "He should not fight, how did you see this?";         [ Text when monster loses. ]
	now victory entry is "He should not fight, how did you see this?"; [ Text when monster wins. ]
	now desc entry is "This is not a wandering monster.";                      [ Description of the creature when you encounter it. ]
	now face entry is "now the large and wide head of a polar bear, with a short muzzle tipped in a wet, black nose. Two rounded ears and a respectable set of teeth finish the picture of an ursine predator"; [ Face. Format as Your face is [face of Player]. ]
	now body entry is "that of a bipedal polar bear, thickly proportioned and muscled, with large paw-like hands ending in sharp claws"; [ Body. Format as "Your body is [body of Player]." ]
	now skin entry is "[one of]fur-covered[or]white-furred[or]snow-white furred[at random]"; [ Skin. Format as "Looking at yourself, your body is covered in [skin of Player] skin." ]
	now tail entry is "You have a short ursine tail that hangs over your ass."; [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "ursine"; [ Cock. Format as "You have a 'size' [cock of Player] cock." ]
	now face change entry is "it re-forms into a pretty wide and big shape, with the lower half of your face pushing out to become a muzzle, filled with sharp teeth. Your nose takes on a black color, also getting really wet, while both of your ears move to the top of your head and become rounded and ursine"; [ Face TF text. Format as "Your face tingles as [face change entry]." ]
	now body change entry is "it becomes large, thicker, and more muscular, more ursine. Your neck widens, as do your arms and legs, and your hands and feet become paw-like, ending in sharp claws"; [ Body TF text, format as "Your body tingles as [body change entry]. ]
	now skin change entry is "thick snow-white fur spreads across your skin"; [ Skin TF text, format as "Your skin tingles as [skin change entry]. ]
	now ass change entry is "your rump becomes thicker, more rounded and bear-like, with a short fuzzy tail hanging down over your new ursine ass"; [ Ass/Tail TF text, format as "Your ass tingles as [tail change entry]." ]
	now cock change entry is "a furred sheath grows around it, protecting it when it's not erect"; [ Cock TF text, format as "Your groin tingles as [cock change entry]." ]
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male";              [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 96;
	now lev entry is 14;                  [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 18;                 [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";          [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;                 [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 9;           [ Length in inches infection will make cock grow to if cocks. ]
	now Ball Size entry is 4;           [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;               [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;           [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now Male Breast Size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;                 [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 0;           [ Depth in inches of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]            [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50;
	now loot entry is "";                 [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;            [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]burly[or]strong[at random]";       [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]ursine[or]bear-like[at random]";         [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;        [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Christmas Elf Female";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "They don't fight.";
	now defeated entry is "They don't fight.";
	now victory entry is "They don't fight.";
	now desc entry is "They don't fight.";
	now face entry is "delicate and beautiful, with a petite nose and elfin features. Your full, lustrous lips seem to be made to smile and laugh. The eyes through which you see the world are slightly larger than a human's, showing very round and shiny green irises. Two pointed ears poke out from under your long blond hair and complete the picture";
	now body entry is "that of a lithe and slender human being, if proportioned to be pretty short. It is garbed in tight, dark green leather pants and leaf green tunic, allowing for unhindered, graceful movement";
	now skin entry is "[one of]pale, flawless[or]pristine[or]perfect[at random]";
	now tail entry is "You have a petite and shapely butt, just waiting to be grabbed.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]amazing[or]perfect[or]human-like[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into beautiful, elfin features. Your ears lengthen and taper to narrow points. And finally, from one blink to the next, your eyes change in some way, allowing for much sharper vision"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a more attractive form, leaving you with a lithe and slender body in proportions a bit shorter than a regular human. A sound of wind-chimes behind you draws your attention, and when you turn around, there's a small pile of clothing sitting on the ground at your feet. Slipping into the soft boots, tight leather pants and soft tunic that were provided for you makes things feel just right";
	now skin change entry is "it seems to soften and smooth out, creating the impression of timeless youth. Any blemishes and unwanted hair are wiped away with a wonderfully pleasant sensation that leaves you with perfect skin";
	now Ass Change entry is "it tightens up into a petite, shapely behind";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 12;
	now dex entry is 20;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";          [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 15;
	now lev entry is 1;                 [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 2;                [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";        [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 0;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7;         [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 2;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 1;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 8;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if Player is male]handsome[else]sultry[end if][at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]



Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Christmas Elf Male";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "They don't fight.";
	now defeated entry is "They don't fight.";
	now victory entry is "They don't fight.";
	now desc entry is "They don't fight.";
	now face entry is "beautiful and elfin, with handsome, if a bit delicate features. Your full, lustrous lips seem to be made to smile and laugh. The eyes through which you see the world are slightly larger than a human's, showing very round and shiny green irises. Two pointed ears poke out from under your long blond hair and complete the picture";
	now body entry is "that of a lithe and slender human being, if proportioned to be pretty short. It is garbed in tight, dark green leather pants and leaf green tunic, allowing for unhindered, graceful movement";
	now skin entry is "[one of]pale, flawless[or]pristine[or]perfect[at random]";
	now tail entry is "You have a firm and shapely bubble butt, just waiting to be grabbed.";  [ Ass/Tail. Write as a full sentence (with period) or leave blank for none. ]
	now cock entry is "[one of]amazing[or]perfect[or]human-like[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into handsome, elfin features. Your ears lengthen and taper to narrow points. And finally, from one blink to the next, your eyes change in some way, allowing for much sharper vision"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a more attractive form, leaving you with a lithe and slender body in proportions a bit shorter than a regular human. A sound of wind-chimes behind you draws your attention, and when you turn around, there's a small pile of clothing sitting on the ground at your feet. Slipping into the soft boots, tight leather pants and soft tunic that were provided for you makes things feel just right";
	now skin change entry is "it seems to soften and smooth out, creating the impression of timeless youth. Any blemishes and unwanted hair are wiped away with a wonderfully pleasant sensation that leaves you with perfect skin";
	now Ass Change entry is "it tightens up into a petite, shapely behind";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 12;
	now dex entry is 20;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male";            [ Infection will move the player towards this gender. Current: 'Male' 'Female' 'Both' ]
	now HP entry is 15;
	now lev entry is 1;                 [ Monster level. (Level x 2) XP for victory. (Level / 2) XP for losing. ]
	now wdam entry is 2;                [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";        [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now Cock Count entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now Cock Length entry is 7;         [ Length infection will make cock grow to if cocks. ]
	now Ball Size entry is 2;          [ Cock width, more commonly used for ball size. ]
	now Nipple Count entry is 2;             [ Number of nipples the infection will give a player. ]
	now Breast Size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now Cunt Depth entry is 8;         [ Depth of female sex the infection will attempt to give a player. ]
	now Cunt Tightness entry is 4;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 2;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if Player is male]handsome[else]sultry[end if][at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Beard Style entry is ""; [short beard style (goatee/three day stubble/full beard/...)]
	now Body Hair Length entry is  0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [Torso Description of Player][if Body Hair Length of Player > 0], covered in [Body Hair Adjective of Player] [Hair Color of Player] chest hair[end if]."]
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
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking;]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
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
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/well-used/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]

Santa Claws ends here.
