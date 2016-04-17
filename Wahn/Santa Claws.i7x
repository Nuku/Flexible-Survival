Version 1 of Santa Claws by Wahn begins here.
[Version 1.1 - Small Fix]

"Adds an polar bear mall Santa to Flexible Survival"

[ Santa Claws, the polar bear                                 ]
[ HP of Santa Claws                                           ]
[   0: never met                                              ]
[   1: player was welcomed to the Christmas village           ]

[ Dexterity of Santa Claws - Last Present Turn                ]

Section 1 - Description

Santa Claws is a man. The hp of Santa Claws is usually 0.
The description of Santa Claws is "[Santa Claws Desc]".
The conversation of Santa Claws is { "Roar." }.
lastfuck of Santa Claws is usually 555.
Santa Claws is in Christmas Village.


to say Santa Claws Desc:
	setmongender 3;	
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Santa Claws], LEVEL: [level of Santa Claws] <- DEBUG[line break]";
	say "     Santa Claws is a large and powerful anthro polar bear, his bulky body covered in thick snow-white fur. It is obviously clear that this is no timid little bear, as there are strong muscles under his white pelt, and the claws on his paw-hands and -feet do look pretty dangerous. Nevertheless, you don't feel threatened by him, since the big ursine is wearing a gloriously red and white Santa suit, golden belt buckle and all. Sitting on a wide, cushioned throne made of carved hardwood and with festive decorations carved into its sides, the bear watches his domain with a jolly smile on his face.";

The scent of Santa Claws is "     Santa Claws smells quite manly - like a big and virile furred beast.".

instead of going east from Mall East Wing while hp of Santa Claws is 0:
	say "     As you walk further east down the wide open hallway, you see a thick whirl of white flakes in the air before you, obscuring sight in that direction. Looks like... falling snow? Strange - but what isn't, these days. Coming closer, you see that the snowfall only really is strong for a few feet, forming a kind of curtain and little wall of snow to divide half of the east wing from the rest of the mall. There is a break in the low snow wall though, as if to welcome you in, with a sign saying 'Christmas Village' stuck in a pile of snow besides it. Curious about the snow here inside the building, you lean down and take a handful - finding it cool to the touch, but not freezing, and realizing that while it feels real in all other concerns, the white flakes do not melt in your hand.";
	say "     Do you really want to explore this strange place?";
	if player consents:
		move player to Christmas Village;
		say "     Passing the curtain of snowfall, you enter a pretty little winter wonderland. One can still make out the general shape of the mall, the wide corridor with skylights above, but things have been... transformed quite a bit. There are evergreen conifer trees that sprout out of the snow-covered ground, mostly hiding the walls and letting things appear as if you're in a midwinter forest, with the front sides of the stores appearing as block houses built from round tree trunks. There are many petite humanoids dressed in green clothes going about their business here, following tracks through the snow, chatting and laughing. Looks like they're Christmas elves, with their unlined, delicate features and the pointy ears sticking out to the sides.";
		say "     In the center of it all stands a large cushioned throne, carved with many decorative designs, and on it sits a man in a bright red suit - an anthro polar bear. As he lets his gaze wander over his domain, smiling at all the little elves, he notices you and waves you closer with a clawed hand. In a deep voice, the polar bear says, 'Welcome to Santa Claws little village, visitor. Be advised that this is my realm and I don't condone violence - this is a place to be jolly, so leave any troubles outside. Rest, get your present and enjoy some time here before you have to go back - or stay, as one of my Christmas elves, if you wish.'";
		now hp of Santa Claws is 1;
		now Dexterity of Santa Claws is turns + 20;
	otherwise:
		say "     Nah, you step back from the curtain of snowfall and walk back towards the normal shops in the west.";

East of Mall East Wing is Christmas Village. 
The description of Christmas Village is "Around you, a little winter wonderland occupies this section of the mall. There are evergreen conifer trees that sprout out of the snow-covered ground, mostly hiding the walls and letting things appear as if you're in a midwinter forest, with the front sides of the stores appearing as block houses built from round tree trunks. There are many petite Christmas elves dressed in green clothes going about their business here, following tracks through the snow, chatting and laughing. Among them, you see some visiting mall-rats and other species, but the majority of people are elves. In the center of it all stands a large cushioned throne, carved with many decorative designs, and on it sits Santa Claws, the master of this domain.[line break]To the west, behind a curtain of thickly falling snow, lies the rest of the mall. You wonder if you really should go back, or just stay in this nice and happy place...".

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
	now description entry is "Talk about the mall";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Himself":
					say "[SantaTalk1]";
				if nam is "Present":
					say "[SantaTalk2]";
				if nam is "Mall":
					say "[SantaTalk3]";
				wait for any key;
				now lastfuck of Santa Claws is turns;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the polar bear, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SantaTalk1:
	let randomnumber be a random number from 1 to 4;
	if randomnumber is:
		-- 1:		
			say "     The polar bear leans back on his throne, then says in his deep voice, 'You want to know know who I am? Why, Santa of course! Just look around - isn't this the perfect little Christmas village? A place where everyone can be jolly.' Letting his gaze roam over the snow-covered trees and the many elves going about their business, he smiles. Then the bear looks back to you, still with the same curious expression on your face, and adds, 'Let's not dwell on the past, okay? I'm happier being Santa Claws now than I ever was as that scared little man, running and hiding from the monsters. It's almost as if this suit called to me after I went into the storeroom, wishing for someone to fill the mantle... and that is what I did.'";
		-- 2:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'When I became Santa, the magic just spread all around me. And people felt better because of it, seeing something familiar, something safe. We got all the decorations out, bit by bit, set them up - and they became real, before long.' He moves his clawed hand in an arc to indicate your surroundings, trees and block houses, as well as the snow. 'Isn't it beautiful?' the bear asks, then continues, 'Some left because they were afraid of it, but most stayed with me - and why wouldn't they? This place is for them to be happy in, and I keep it safe.'";
			say "     Looking around at the numerous Christmas elves going about their business, you tentatively have to agree. This is a pretty nice setup, if one can stand the theme...";
		-- 3:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'I feel the bear inside me, you know. The primal urges to roam the land as a mighty predator, be respected and feared by any who cross my path - and to mate, with all the lesser beasts... like humans. It wants to push them down and mount them, breed them and leave a string of cubs growing in any and all females...' As he says this, the ursine's clawed hands start to grip the wooden throne's armrests tightly and you think the bulge in his pants grows a bit too - then he relaxes again and shakes his head. 'But I don't. This suit - it means something. A responsibility that I just can't forget. Look around at all these people. Living peacefully and content while outside, chaos reigns. No, I am Santa Claws and this is my domain. No urge to rut like a beast will make me forget that...";
			say "     Looking around at the numerous Christmas elves going about their business, you tentatively have to agree. This is a pretty nice setup, if one can stand the theme, day in, day out.";
		-- 4:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'Some say that it's just little machines that do all this, bringing chaos into the world. But... if they can do such almost magical things - couldn't there also be real magic? I believe that something more than chance brought me to wear this suit - fate led me to it, and it is my task to wear it with honor. Just look around... isn't this very different than what is happening in the streets? Something wanted to save us and chose me to protect this haven.'";
			say "     Looking around at the numerous Christmas elves going about their business, you tentatively have to agree. This is a pretty nice setup, if one can stand the theme, day in, day out.";

to say SantaTalk2:
	if Dexterity of Santa Claws - turns < 16:
		say "     The polar bear rumbles, 'Now now - you've already had a present recently. Don't be greedy.'";
	otherwise:
		now Dexterity of Santa Claws is turns;
		say "     As you bring up the topic of a present, Santa Claws [if scalevalue of player > 3]waves you closer[otherwise]leans back and waves you to sit on his lap, which you do[end if]. Putting a strong arm around your shoulders, the polar bear pulls you close and says, 'Ho ho ho - have you been naughty, or nice? I got just the right present for either...'";
		say "     Looking at his clawed hand that holds your shoulder, then into the blue eyes in the mall Santa's ursine face, you say...[line break]";
		say "     [link](1)[as]1[end link] 'Naughty'[line break]     [link](2)[as]2[end link] 'Nice'[line break]     [link](3)[as]3[end link] Nothing, and rub his crotch instead.[line break]";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to say 'Naughty', [link]2[end link] to say 'Nice' or [link]3[end link] to rub his crotch.";
		if calcnumber is 1:								[Naughty]
			say "     'So... a naughty [if player is female]girl[otherwise]boy!', Santa Claws booms in a loud voice, chuckling as he squeezes your shoulder affectionately. 'You're going to have lots of fun with my elves then - they're all pretty naughty too.' With a beaming smile, the large polar bear nods to what's behind you - and as you turn your head, you see a pair of attractive Christmas elves stand just a few steps away, eying you with eager expressions on their faces.";
			say "     Do you want to have sex with one of them?";
			if player consents:
				say "     [line break]";
				say "     [ChristmasElfSex]";
			otherwise:
				say "     [line break]";
				say "     Clearing your throat, you say... that you're not in the mood for any naughty fun right now after all. The two elves give you disappointed looks, then look at each other and the male draws his fellow elf close to kiss her. With a giggle, they vanish into one of the 'block-houses' along the walls, no doubt to satisfy each other's needs.";
		otherwise if calcnumber is 2:			[Nice]
			say "     'So... a nice [if player is female]girl[otherwise]boy!', Santa Claws booms in a loud voice, chuckling as he squeezes your shoulder affectionately. 'Let's give you something that's good for you then. Reaching down into the opening of a large red sack lying next to his throne, the large ursine then pulls out ";
			let randomnumber be a random number from 1 to 3;
			if randomnumber is:
				-- 1:
					say "a soda bottle, which bears Christmas-y print with snow and smiling polar bears.[line break](You gain a soda bottle)";
					increase carried of soda by 1;
				-- 2:
					say "a large gingerbread star, decorated with lots of almonds - still in its clear plastic wrapping.[line break](You gain 1 food)";
					increase carried of food by 1;
				-- 3:
					say "a hearty-looking Christmas fruitcake - still in its clear plastic wrapping. It looks relatively small, but when you accept it, you realize how heavy it is. There's quite a bit packed into this thing.[line break](You gain 2 food)";
					increase carried of food by 2;
		otherwise if calcnumber is 3:			[rub him]
			setmonster "Polar Bear";
			choose row monster from the table of random critters;
			say "     Lowering a hand, you put it right on the powerful ursine's crotch and rub against the respectable bulge you feel through the soft material. As Santa Claws cock starts to get hard, he gives a lusty rumble that reverberates in his broad chest. His clawed hand wandering down to your hips, pulling you closer, the mighty polar bear says, 'So... you want a really - special - present today. And I'm more than happy to give it to you.' His voice starts getting a bit deeper and more animal-like as he adds, 'Hard and deep,' a moment later. With that, the bear sets both his hands on your body, lifting you up as he stands - which makes you feel pretty tiny compared to the muscled bulk of this big creature, pressed tightly against the warm coat on his body. You can feel the deep vibration run through his chest as he gives a low, aroused growl. Clearly, you've woken the beast inside this man, bringing with it strong urges now that it is no longer slumbering beneath the surface.";
			say "     Lowering his head to take a good, long sniff of your scent, Santa Claws squeezes your butt, then pulls himself back slightly from the aroused growling and grunting. With a grumbled, 'let's get this stuff off you,' he lowers you to lie flat on your back on the throne. Strong clawed hands work quickly to pull off your gear and clothing, dropping it all on the ground, and soon you're lying naked before the big bear. 'Good,' he growls, running his fingers down your [bodytype of player] form until he reaches your crotch and [if cunts of player > 0]brushes over your nether lips[otherwise]pushes your legs apart a little bit to brush over your pucker[end if].";
			say "     [WaitLineBreak]";
			say "     Rising to his impressively tall height before you, Santa Claws impatiently undoes the belt of his suit and the buttons on the red coat. He has it off in a second after that, revealing a wide chest with snow-white fur, which at the same time is well-padded against the cold as well as pretty muscular. The pants are next to go, being pushed - no almost ripped - off his legs by the polar bear's clawed hands, which leaves him standing in his full naked glory in the middle of the Christmas village. One look down at his hips shows you that Santa is more than ready to give you your present - as his thick shaft is standing fully erect and pointing at your crotch. A little murmur from the side suddenly makes you realize that the two of you are far from alone. There is a whole crowd of elves gathered all around, watching with eager expressions, many of them murmuring to each other and some stroking themselves.";
			if cunts of player > 0:
				say "     Dropping down on all fours, the sexy polar bear pushes his muzzle between your legs, taking great huffs of your aroused scent and lapping at your sex. It feels pretty nice to have that warm, wet tongue brush over your nether lips, then push in between them for a moment before moving further up to stimulate your clit. After a few more moments of oral fun, the snow-white male raises his head and looks at you. His eyes almost glow with lust as untamed feral needs take over from the human mind in the same body, and with a roar, the mighty beast rears up and mounts you. Soft, white fur brushes against your naked body as the at least 1500 pound ursine covers you completely, holding himself up with strong arms as his hips position the thick cock between his legs at your opening. Helplessly lying under such a massive partner might frighten others, but you, as horny and wound up as you are, just take it in stride, even eagerly meeting his muzzle in a sloppy kiss as the bear licks your face.";
				say "     [WaitLineBreak]";
				say "     Then, with a single mighty thrust, everything changes, as the polar bear sinks his erection into your body all the way, straight from the start. You can't help but dig your hands into his luxurious pelt, holding on for dear life as the quasi-feral man bucks against you in a rapid pace. It feels so good to have your pussy stretched wide by his hard shaft and feel its thick girth rubbing against sensitive spots inside your body that you don't even remember how long your mating lasts. It's all just a blissful haze of pleasure and lust, writing on the wooden throne's cushioned seat. You're fucked hard and deep, giving you multiple orgasms in a row that come crashing over you, making you pant and moan loudly as femcum trickles out of your pussy and coats his thrusting shaft. After quite a while, the mighty polar bear's moans and grunts get louder and louder too, eventually culminating in a satisfied roar as his thick shaft pulses inside you, flooding your womb with his fertile seed.[fimpregchance]";
				say "     Still breathing heavily, but with reason coming back into his eyes now that the mating urges of his animal form have been sated, Santa Claws sighs, 'Thank you. You felt amazing.' With that said, he pulls you tight against his broad chest in a tight bear-hug, then stands up. The way his still half-hard cock shifts inside your well-bred pussy gives you a nice little tingle as he moves and you feel very warm and protected in this embrace. Still holding on to you, the polar bear then sits back on the throne, leaning back while stroking your [skin of player] skin. 'Watching out over the village and handing out presents all the time sometimes makes me forget that my body has needs too, so... hope I didn't get too wild on ya.' Looking back to all the orgasms you had while being fucked just minutes ago, you chuckle and tell him that it's no problem. No problem at all.";
				say "     [line break]";
				say "     After remaining some more time like that, leaning against the soft-furred chest of your partner and enjoying his warmth, you climb off his throne and put your gear back on. Time to get back to the business of surviving in this crazy, flexible world...";
			otherwise:
				say "     Dropping down on all fours, the sexy polar bear pushes his muzzle between your legs, taking great huffs of your aroused scent and lapping at your [if cocks of player > 0]own [cock of player] cock. It feels pretty nice to have that warm, wet tongue brush over your erection, wrapping around its shaft for a moment before licking the cockhead. The bear then[otherwise]sexless crotch. It feels pretty nice to have that warm, wet tongue brush over your sensitive skin, before the bear[end if] lowers his head a bit more and goes for your pucker. Strong hands take hold of your legs and spread them, allowing the large ursine easy access to your rear. What follows is a very nice bit of getting your ass eaten out, with him running that tongue over your puckered opening and pushing in against it, wiggling the tip in and getting your hole wet and ready. Then, after a few more moments of oral fun, the snow-white male raises his head and looks at you. His eyes almost glow with lust as untamed feral needs take over from the human mind in the same body, and with a roar, the mighty beast rears up and mounts you. Soft, white fur brushes against your naked body as the at least 1500 pound ursine covers you completely, holding himself up with strong arms as his hips position the thick cock between his legs at your opening. Helplessly lying under such a massive partner might frighten others, but you, as horny and wound up as you are, just take it in stride, even eagerly meeting his muzzle in a sloppy kiss as the bear licks your face.";
				say "     [WaitLineBreak]";
				say "     Then, with a single mighty thrust, everything changes, as the polar bear sinks his erection into your body all the way, straight from the start. You can't help but dig your hands into his luxurious pelt, holding on for dear life as the quasi-feral man bucks against you in a rapid pace. It feels so good to have your asshole stretched wide by his hard shaft and feel its thick girth rubbing against sensitive spots inside your body that you don't even remember how long your mating lasts. It's all just a blissful haze of pleasure and lust, writing on the wooden throne's cushioned seat. You're fucked hard and deep, giving you multiple orgasms in a row that come crashing over you, making you pant and moan loudly as you [if cocks of player > 0]come all over yourself[otherwise]twitch weakly in your climax[end if]. After quite a while, the mighty polar bear's moans and grunts get louder and louder too, eventually culminating in a satisfied roar as his thick shaft pulses inside you, flooding your insides with his fertile seed.[mimpregchance]";
				say "     Still breathing heavily, but with reason coming back into his eyes now that the mating urges of his animal form have been sated, Santa Claws sighs, 'Thank you. You felt amazing.' With that said, he pulls you tight against his broad chest in a tight bear-hug, then stands up. The way his still half-hard cock shifts inside your well-bred butthole gives you a nice little tingle as he moves and you feel very warm and protected in this embrace. Still holding on to you, the polar bear then sits back on the throne, leaning back while stroking your [skin of player] skin. 'Watching out over the village and handing out presents all the time sometimes makes me forget that my body has needs too, so... hope I didn't get too wild on ya.' Looking back to all the orgasms you had while being fucked just minutes ago, you chuckle and tell him that it's no problem. No problem at all.";
				say "     [line break]";
				say "     After remaining some more time like that, leaning against the soft-furred chest of your partner and enjoying his warmth, you climb off his throne and put your gear back on. Time to get back to the business of surviving in this crazy, flexible world...";
			infect "Polar Bear";


to say SantaTalk3:
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'The mall is a big place and fairly safe, for the times we're in now. Much of that is thanks to Wolverine Security - they're pretty grim and not very friendly, but I shudder to think where we all would be without their relentless focus on doing their duty.'";
		-- 2:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'Have you stopped by that strange store down in the west wing? Nermine is a peculiar woman - and seems very interested in buying my suit...'";
		-- 3:
			say "     The polar bear leans back on his throne, then says in his deep voice, 'Watch out when you go to the main restrooms. I heard some critters came up through the sewer entrance there...'";

to say ChristmasElfSex:
	say "     Looking back and forth between the two elves, you try to decide which one you want - but before you can do so, a swirl of snow blocks your sight and a monotonous voice intones:[line break]";
	say "     '<Sorry, didn't have any time left to give you naughty elf sex. This will have to be added at a later point.>'";

Section 3 - Sex

Instead of fucking the Santa Claws:
	say "     The polar bear gives you an interested glance, looking you up and down. With a rumble in his broad chest, he tenses his arms as if to stand up, then huffs, 'No, I'm sorry. There are still so many presents to be given out. Don't want to disappoint anyone who comes to visit my domain.'";



Section 4 - Infections

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Polar Bear";
	now attack entry is "He should not fight, how did you see this?";	          [ Text used when the monster succeeds on an attack ]
	now defeated entry is "He should not fight, how did you see this?"; 				[ Text when monster loses. ]
	now victory entry is "He should not fight, how did you see this?";					[ Text when monster wins. ]
	now desc entry is "This is not a wandering monster.";	                      [ Description of the creature when you encounter it. ]
	now face entry is "now the large and wide head of a polar bear, with a short muzzle tipped in a wet, black nose. Two rounded ears and a respectable set of teeth finish the picture of an ursine predator";		[ Face Description, format as the text "Your face is (your text)." ]
	now body entry is "that of a bipedal polar bear, thickly proportioned and muscled, with large paw-like hands ending in sharp claws";	[ Body Description, format as the text "Your body is (your text)." ]
	now skin entry is "[one of]fur covered[or]white furred[or]snow white furred[at random]";	[ Skin desc., format as the text "Your body is covered in (your text) skin."  Note: the word 'skin' is automatically included at the end. ]
	now tail entry is "You have a short ursine tail that hangs over your ass.";	[ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "ursine";						[ Cock desc., format as "You have a 'size' (your text) cock." ]
	now face change entry is "it re-forms into a pretty wide and big shape, with the lower half of your face pushing out to become a muzzle, filled with sharp teeth. Your nose takes on a black color, also getting really wet, while both of your ears move to the top of your head and become rounded and ursine";	[ Face TF text, format as "Your face feels funny as (your text)." ]
	now body change entry is "it becomes large, thicker, and more muscular, more ursine. Your neck widens, as do your arms and legs, and your hands and feet become paw-like, ending in sharp claws";	[ Body TF text, format as "Your body feels funny as (your text)." ]
	now skin change entry is "thick snow-white fur spreads across your skin";	[ Skin TF text, format as "Your skin feels funny as (your text)." ]
	now ass change entry is "your rump becomes thicker, more rounded and bear-like, with a short fuzzy tail hanging down over your new ursine ass";	[ Ass/Tail TF text, format as "Your ass feels funny as (your text)." ]
	now cock change entry is "a furred sheath grows around it, protecting it when it's not erect";		[ Cock TF text, format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 12;
	now sta entry is 22;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 14;
	now sex entry is "Male";              [ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 96;                   [ The monster's starting hit points. ]
	now lev entry is 14;                  [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 18;                 [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";          [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;                 [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 9;           [ Length in inches infection will make cock grow to if cocks. ]
	now cock width entry is 12;           [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;               [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;           [ Size of breasts the infection will try to attain (corresponds to letter cup size). ]
	now male breast size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;                 [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 0;           [ Depth in inches of female sex the infection will attempt to give a player. ]
	now cunt width entry is 0;            [ Width in inches of female sex the infection will try to give a player. ]
	now libido entry is 50;               [ Target libido the infection will rise towards. ]
	now loot entry is "";                 [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;            [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 4;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]burly[or]strong[at random]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "[one of]ursine[or]bear-like[at random]";   [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;             [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;         [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;    [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;        [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";     [ Row used to designate any special combat features, "default" for standard combat. ]

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Christmas Elf Female";
	now attack entry is "They don't fight.";
	now defeated entry is "They don't fight.";
	now victory entry is  "They don't fight.";
	now desc entry is "They don't fight.";
	now face entry is "delicate and beautiful, with a petite nose and elfin features. Your full, lustrous lips seem to be made to smile and laugh. The eyes through which you see the world are slightly larger than a human's, showing very round and shiny green irises. Two pointed ears poke out from under your long blond hair and complete the picture";
	now body entry is "that of a lithe and slender human being, if proportioned to be pretty short. It is garbed in tight, dark green leather pants and leaf green tunic, allowing for unhindered, graceful movement";
	now skin entry is "[one of]pale, flawless[or]pristine[or]perfect[at random]";
	now tail entry is "You have a petite and shapely butt, just waiting to be grabbed.";  [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]amazing[or]perfect[or]human-like[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into beautiful, elfin features. Your ears lengthen and taper to narrow points. And finally, from one blink to the next, your eyes change in some way, allowing for much sharper vision"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it is reshaped into a more attractive form, leaving you with a lithe and slender body in proportions a bit shorter than a regular human. A sound of windchimes behind you draws your attention, and when you turn around, there's a small pile of clothing sitting on the ground at your feet. Slipping into the soft boots, tight leather pants and soft tunic that were provided for you makes things feel just right";
	now skin change entry is "it seems to soften and smooth out, creating the impression of timeless youth. Any blemishes and unwanted hair are wiped away with a wonderfully pleasant sensation that leaves you with perfect skin";
	now ass change entry is "it tightens up into a petite, shapely behind";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 12;
	now dex entry is 20;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Female";					[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 15;									[ The monster's starting hit points. ]
	now lev entry is 1;                 [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 2;                [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";        [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 0;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7;         [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4;          [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of breasts the infection will give a player. ]
	now breast size entry is 2;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if cocks of player > 0]handsome[otherwise]sultry[end if][at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;            [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";   [ Row used to designate any special combat features, "default" for standard combat. ]


Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Christmas Elf Male";
	now attack entry is "They don't fight.";
	now defeated entry is "They don't fight.";
	now victory entry is  "They don't fight.";
	now desc entry is "They don't fight.";
	now face entry is "beautiful and elfin, with handsome, if a bit delicate features. Your full, lustrous lips seem to be made to smile and laugh. The eyes through which you see the world are slightly larger than a human's, showing very round and shiny green irises. Two pointed ears poke out from under your long blond hair and complete the picture";
	now body entry is "that of a lithe and slender human being, if proportioned to be pretty short. It is garbed in tight, dark green leather pants and leaf green tunic, allowing for unhindered, graceful movement";
	now skin entry is "[one of]pale, flawless[or]pristine[or]perfect[at random]";
	now tail entry is "You have a firm and shapely bubble butt, just waiting to be grabbed.";  [ Tail desc., written as a full sentence or left blank for none. ]
	now cock entry is "[one of]amazing[or]perfect[or]human-like[at random]";
	now face change entry is "your facial muscles seem to ripple under the skin, rearranging themselves into handsome, elfin features. Your ears lengthen and taper to narrow points. And finally, from one blink to the next, your eyes change in some way, allowing for much sharper vision"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it is reshaped into a more attractive form, leaving you with a lithe and slender body in proportions a bit shorter than a regular human. A sound of windchimes behind you draws your attention, and when you turn around, there's a small pile of clothing sitting on the ground at your feet. Slipping into the soft boots, tight leather pants and soft tunic that were provided for you makes things feel just right";
	now skin change entry is "it seems to soften and smooth out, creating the impression of timeless youth. Any blemishes and unwanted hair are wiped away with a wonderfully pleasant sensation that leaves you with perfect skin";
	now ass change entry is "it tightens up into a petite, shapely behind";
	now cock change entry is "it becomes human-like, uncut and well-proportioned";
	now str entry is 12;
	now dex entry is 20;
	now sta entry is 12;
	now per entry is 18;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Male";						[ Infection will move the player towards this gender.  Current: 'Male' 'Female' 'Both' ]
	now hp entry is 15;									[ The monster's starting hit points. ]
	now lev entry is 1;                 [ Monster level.  (Level x 2) XP for victory.  (Level / 2) XP for losing. ]
	now wdam entry is 2;                [ Monster's average damage when attacking. ]
	now area entry is "Nowhere";        [ "Outside" "Mall" "Park" "Beach" etc... Check an existing creature in the area. ]
	now cocks entry is 1;               [ Number of cocks the infection will try to cause if sex entry is 'Male' or 'Both'. ]
	now cock length entry is 7;         [ Length infection will make cock grow to if cocks. ]
	now cock width entry is 4;          [ Cock width, more commonly used for ball size. ]
	now breasts entry is 2;             [ Number of breasts the infection will give a player. ]
	now breast size entry is 0;         [ Size of breasts the infection will try to attain. ]
	now male breast size entry is 0;    [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;               [ The number of cunts the infection will try to cause if sex entry is 'Female' or 'Both'. ]
	now cunt length entry is 8;         [ Depth of female sex the infection will attempt to give a player. ]
	now cunt width entry is 4;          [ Width of female sex the infection will try to give a player. ]
	now libido entry is 80;             [ Target libido the infection will rise towards. ]
	now loot entry is "";               [ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	[ These represent the new additions to the table of random critters ]
	now scale entry is 2;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]alluring[or]sexy[or][if cocks of player > 0]handsome[otherwise]sultry[end if][at random]";
	now type entry is "[one of]elven[or]fae[at random]";
	now magic entry is true;            [ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;       [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;  [ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;      [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";   [ Row used to designate any special combat features, "default" for standard combat. ]


Santa Claws ends here.
