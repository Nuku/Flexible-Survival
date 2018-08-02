Version 1 of Branson & Partner by Wahn begins here.

"Adds an office building to the mall area of Flexible Survival."

[ HP of Melanie - quest progression                               ]
[   0: starting state                                             ]
[   1: got Melanie's starting spiel                               ]
[   2: agreed to listen to Branson's plan                         ]
[   3: delivered the Data                                         ]
[   4: player got free reign in the building now                  ]
[   5: player met the office girls                                ]
[ 100: refused to join Branson                                    ]

OfficeGirlsDominance is a number that varies.
OfficeGirlsFriendship is a number that varies.

Section 1 - Melanie

Melanie is a woman.
The description of Melanie is "[MelanieDesc]".
The conversation of Melanie is { "Hello" }.
Melanie is in Branson & Partner Reception.

the scent of Melanie is "The young woman smells pretty nice - a fresh furry scent overlain a hint of a pleasant perfume. She never wavers in her friendly demeanor, even as you lean forward to sniff at her.".

To say MelanieDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Melanie: [HP of Melanie], libido of Melanie: [libido of Melanie] <- DEBUG[line break]";
	say "     Melanie is a young anthro deer-woman, dressed in a short skirt and pristine white shirt with her name on a little tag - the very image of a receptionist or executive assistant. She is pretty, with a well-sized pair of assets bulging out the top of her shirt. Two interesting little bumps in the white fabric tell you that she isn't wearing a bra either. While the fur on her body is a mixture of light brown and cream at the front (down from her muzzle over her neck and you assume all the way to her hooves), the anthro furry has shoulder-length black hair, pulled into a ponytail behind her head.";

instead of going north from Smith Haven Mall Lot North while HP of Melanie is 0:
	move player to Branson & Partner Reception;
	try looking;
	say "     'Welcome to the offices of Branson & Partner, [if player is female]Ma'am[else]Sir[end if]. I'm Melanie,' the beautiful doe tells you with a friendly smile. 'Please feel free to rest in the waiting area and study the brochures. We have lots of interesting offers. You don't have to worry about the... wild inhabitants of the city here. The guards at the mall keep most of those away anyways, and after my boss Mr. B took care of a few hard-headed cases, they avoid this building at any cost.' An undertone of worshipful admiration fills her voice as she talks of this 'Mr. B' and thanks to the mostly see-through glass front of the reception desk you can see her hand stroke the inside of her crossed legs. Seems like meeting this man might prove interesting...";
	increase HP of Melanie by 1; [got her initial spiel]

Instead of conversing the Melanie:
	say "[MelanieTalkMenu]";

to say MelanieTalkMenu:
	LineBreak;
	say "What do you want to talk with Melanie about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Try to get to know him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about her boss, 'Mr. B'";
	now sortorder entry is 2;
	now description entry is "Pose a question or two about Melanie's boss";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tell her you want to meet her boss";
	now sortorder entry is 3;
	now description entry is "Talk to the big guy";
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
				now sextablerun is 1;
				if (nam is "Just chat a bit"):
					say "[MelanieTalk1]";
				if (nam is "Ask about her boss, 'Mr. B'"):
					say "[MelanieTalk2]";
				if (nam is "Tell her you want to meet her boss"):
					say "[MelanieTalk3]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Yes.";
			say "     ([link]N[as]n[end link]) - No.";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the pretty deer, shaking your head slightly as she gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MelanieTalk1: [chat]
	say "     The beautiful female chats a bit with you about the things going on in the city. In the conversation, you learn that she has been a staff member of this place since before the infection started. Apparently she wasn't too far from work when things started to go down and fled here, not stepping one foot - or hoof, rather - outside since. Her impressions of the nanite spread are mostly of the initial panic and infrequent creatures trying to gain entry to the mall or the office building. Melanie listens wide-eyed to the tales you can tell of the current state of the city and all the different creatures and infections you've already seen yourself.";

to say MelanieTalk2: [ask about Mr. B]
	say "     The beautiful female deer smiles and tells you about Mister Branson, the senior partner of this land management firm. Seems to you like he charmed her socks off and she almost worships the ground on which he walks. Among the things she says are sentences full of adoration like, 'He's a really handsome guy too, even as a crocodile now,' then 'We all feel safe here with him,' and also 'Mr B. is so big and strong. You should have seen him deal with those beasts that tried to come in here!'";

to say MelanieTalk3: [ask to meet Mr. B]
	if HP of Melanie is 100:
		say "     She shakes her head as you bring up talking to her boss. 'I'm sorry [if player is female]Ma'am[else]Sir[end if], but I was told not to allow you up. Trust me, it's better to hear this from me than from Mr. B directly.'";
	else if HP of Melanie is 1:
		let bonus be (( the Charisma of the player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Charisma Check):[line break]";
		increase diceroll by bonus;
		if diceroll > 15:
			say "     Doing your best to charm the pretty receptionist, you pull out all the stops to convince her that you're expected and should go up right away. Her eyebrows rise at your confidently delivered request and it becomes clear that you just elevated yourself to a person of interest in her eyes. Melanie smoothly replies with, 'Oh, I'm sorry... [if player is female]Ma'am[else]Sir[end if]. Of course - please go on up. [if findwires is 2 and fixedgens is 2]You can take the elevator up to the fourth floor.' Following her instructions, soon you are smoothly gliding to a halt three floors up, then step out into[else]The elevator is sadly out of order, but you can use the stairs. Third door on the right, and Mr. B's office is in the fourth floor.' Thanking her, you make your way past the useless elevator and start climbing the stairs. By the time you arrive on the fourth floor landing, you're just a little out of breath and wait for a few moments, then step through the door into[end if] a short corridor decorated with potted plants and modern art. A set of double doors at the end of it promises to lead to the firm's owner.";
			say "     Stepping up to the office doors, you knock and hear a deep voice say the words, 'Come in.' Beyond lies a spacious office, as well-appointed as the rest of the place you've seen so far - granite-tiled floor and light gray walls framing a glass and steel desk in front of an all-glass back wall, a giant window overlooking the city. Behind the desk is a quite large executive chair - clearly custom-made to fit its occupant, as Mr. Branson is both an anthro crocodile and at least eight feet tall, with a muscle-packed physique to match his size. What makes him stand out from being 'merely' as physically imposing as any number of sex-hungry infected out on the streets is the fact that he is calmly having a look at you while wearing a dark blue shirt tailored to his broad frame, as well as a blood-red tie.";
			WaitLineBreak;
			say "     The croc indicates one of the two chairs set up in front of his desk and says in a quite dominant tone, 'Sit.' You can feel his gaze rest upon you, yellow slitted eyes full of cunning evaluating every movement as you ";
			if player is submissive: [sub players]
				say "scurry forward quickly, planting your ass on one of the visitor's chairs. A grin spreads along the tooth-filled maw of the businessman. ";
			else if "Dominant" is listed in feats of player: [dom players]
				say "calmly walk towards him, then come to stand in front of his desk, implicitly ignoring the offered chairs. The businessman raises one eyebrow a little at this, and you can see the end of his tail twitching slightly. ";
			else: [regular players]
				say "walk towards him in a fast yet unhurried pace, then sit down in one of the offered chairs. A small up-tick of the corners of his tooth-filled maw is visible as you study him in turn. ";
			if findwires is 2 and fixedgens is 2: [power is on]
				say "'Melanie tells me you've impressed her and might be just the person we need. More than just another refugee that is flocking to the mall,' ";
			else: [else]
				say "'You must have impressed Melanie for her to send you upstairs. I told her to get rid of any of the rabble and refugees who stumble in. Those can try their luck at the mall,' ";
			say "the scale-covered businessman tells you and gives a smooth grin, showing off his impressive set of teeth. 'Francis Branson. Welcome to my office,' he introduces himself and gives a confirming nod as you do the same, then turns his chair halfway to look out over the city. 'What do you see out there?' Branson asks, not really expecting a reply as he almost immediately follows up with, 'It is an opportunity. I don't pretend to understand why or how it happened, but all this is a chance for those clever enough use it. Would you be interested in playing a part in that? Trust me, it'll be very lucrative for you...'";
			say "     [bold type]Branson almost spears you with his intense gaze, waiting for a reply. Uh-oh, this feels a bit like stumbling upon a Bond-Villain in the making. Do you really want to get involved in this?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - The setup here is pretty nice and he has a plan. Sure, you'll join up.";
			say "     ([link]N[as]n[end link]) - Profit from the chaos and suffering brought on by the nanite infection? Never!";
			if player consents: [listen to his offer]
				LineBreak;
				say "     'Good choice,' the croc businessman tells you with a smile. 'You see - this whole city is dangerously infested with nanites, so much so that the politicians won't have a choice but to declare all of it condemned and keep it quarantined even after the city is pacified again. Can't have anyone moving in here without lots of cleanup first. And the brave souls who do all the hard work of course need to be compensated - which is why any place that doesn't have an owner anymore will be available to be claimed. That is how it will play out... I know people and can give a push where needed.' Branson's smile expands into a tooth-filled grin as he lays out what will happen with absolute confidence.";
				say "     'Now wouldn't it just be... convenient, if someone had all the paperwork done already when such declarations came to pass? Someone with an office building full of lovely ladies as his employees for example, ready to get to work right now?!' he says, chuckling loudly. 'And that's where you come in, my friend. ";
				if findwires is 2 and fixedgens is 2: [power on]
					say "We need one thing to make this work. Thankfully the power came back on a while ago, but what's still missing is information - specifically the city's property registry. Before, one could just get the info through automatic requests from city hall, but with how fucked up things have become... someone needs to go there and grab the data store in person. I gotta ride herd on my girls here - otherwise those bastards out in the streets would storm the building and have an orgy - but you can do it instead. I'll cut you in for part of the profits and you'll get a share of the amenities we have here. A safe place to rest, some food and water - and your pick from the girls too.";
				else: [no power]
					say "We need two things to make this work. Power for this building, and the city's property registry. Before, one could just get the info through automatic requests from city hall, but with how fucked up things have become... someone needs to go there and grab the data store in person. I gotta ride herd on my girls here - otherwise those bastards out in the streets would storm the building and have an orgy - but you can do it instead. I'll cut you in for part of the profits and you'll get a share of the amenities we have here. A safe place to rest, some food and water - and your pick from the girls too.";
				WaitLineBreak;
				say "     The croc waits for his offer to sink in, then raises a hand as you start to say something. 'No need to reply right now - just remember the offer. And if you have doubts... well, those people out there who do nothing but fuck in the street... what do they care about their old houses? They don't, that's what. And if anyone is sane enough to step forward after all - good for them. Just a little payment to the official decontamination manager and it'll all be sorted out right quick.' He gives a shrug and brushes the matter aside - though you'd bet that the 'little' payment will be anything but that. After a few more words exchanged with the large reptile, you get the impression that your audience is over and soon leave his office. A short while later, you're back in the reception area.";
				LineBreak;
				if findwires is 2 and fixedgens is 2: [power on]
					say "     To get the power back to work, it might be a good idea to check the power plant - thinking back to a city tour you took some years back, you remember that the scenic [bold type]plant overview[roman type] isn't too far from the library. The other half of Branson's requirements should hopefully only include a quick stop at the [bold type]City Hall Offices[roman type] in the high rise district.";
				else:
					say "     Thinking about what to do next, a quick stop at the [bold type]City Hall Offices[roman type] in the [bold type]High Rise District[roman type] might be a good idea. Surely that shouldn't be that dangerous.";
				now City Hall Offices are not resolved;
				now HP of Melanie is 2; [listened to the plan]
			else:
				LineBreak;
				say "     Before you can even say anything, the large reptile recognizes the hints of disapproval in your face and posture and scoffs loudly. 'Guess Melanie was mistaken to let you up here. Just go, then - see how well you do with the rest of those aimless sheep,' Mr. Branson tells you, waving dismissively at the door you came in through. Clearly, your audience is at an end, so you quickly leave before he makes you. A short while later, you're back in the reception area.";
				now HP of Melanie is 100; [refused]
		else:
			say "     You try to convince the receptionist that you should meet with her boss right now, but she seems not quite convinced. With a friendly but firm smile, she replies that he is busy right now and you should please wait a little until Mr. B is available. You're halfway to the armchairs before you remember that it's the nanite apocalypse right now and she didn't even check the appointment book or anything. Melanie clearly has some skills in getting rid of 'unwanted' guests and stringing them along. Looks like you'll have to lay on a lot more charm to get a word with her boss.";
	else if HP of Melanie is 2 or HP of Melanie is 3: [repeat visit]
		say "     'Of course - please go on up. [if findwires is 2 and fixedgens is 2]You can take the elevator up to the fourth floor.' Following her instructions, soon you are smoothly gliding to a halt three floors up, then step out into[else]The elevator is sadly out of order, but you can use the stairs. Third door on the right, and Mr. B's office is in the fourth floor.' Thanking her, you make your way past the useless elevator and start climbing the stairs. By the time you arrive on the fourth floor landing, you're just a little out of breath and wait for a few moments, then step through the door into[end if] a short corridor decorated with potted plants and modern art. A set of double doors at the end of it allows you into Mr. Branson's office.";
		say "     The well-dressed anthro croc greets you and waves you over to one of the chairs in front of his desk. Chatting a bit about the progress of his plan, ";
		if findwires is 2 and fixedgens is 2: [power on]
			say "he congratulates you for getting the power running again. ";
		else:
			say "he mentions that as a start, you should work on getting the power running again. Might be a good idea to check the power plant - thinking back to a city tour you took some years back, you remember that the scenic [bold type]plant overlook[roman type] isn't too far from the library. ";
		say "As for the raw data he needs to prep all the paperwork, ";
		if HP of Melanie is 3:
			say "Branson tells you that the data-store device spun up without any problem at all and his girls are already working on making use of it.";
		else if carried of city datastore is 1:
			say "Branson is all smiles as you lift the heavy box of hard-drives onto his desk. Soon the data-store device is collected by a cute bunny-girl in a blue overall and you're sharing a glass of whiskey with the satisfied anthro crocodile.";
			decrease carried of city datastore by 1;
			now HP of Melanie is 3; [delivered the data]
		else:
			say "you really should swing by the [bold type]City Hall Offices[roman type] in the [bold type]High Rise District[roman type] sometime soon. The businessman tells you openly that you're not the only interested party in becoming his business partner, and it'd be a shame if someone else snagged the prize before you.";
		if HP of Melanie is 3 and findwires is 2 and fixedgens is 2:
			say "     With everything taken care of for implementing his plans, Branson gives you a companionable smack on the shoulder. 'Well done, my friend. I knew we could count on you. This will be a very lucrative operation. I'll tell Melanie that you have the run of the building now - including the offices in the first floor. The entrance is just past her desk. Of course, my office girls still have some work to do, so don't overdo it, alright?'";
			change the north exit of Branson & Partner Reception to B&P Company Offices;
			change the south exit of B&P Company Offices to Branson & Partner Reception;
			now HP of Melanie is 4; [player got free reign in the building now]
	else if HP of Melanie is 4: [post quest visits to the boss]
		say "     'Of course - please go on up,' the receptionist tells you with a smile and you ride the elevator up to Mr. Branson's office. Strolling along the short corridor decorated with potted plants and modern art, you enter his office shortly after. The large crocodile is amiable enough towards his business partner, chatting a bit and offering you a drink too. After a little while, he throws back the last of his glass of whiskey, then ";
		if player is male:
			say "bids you farewell. You leave and soon arrive back down at the reception desk.";
		else if player is female:
			say "lets his gaze wander over your body for a moment. 'Was there anything else you wanted from me?' he asks in a charming tone, his hand straying down to his crotch.";
			say "     [bold type]Do you want to be fucked by the large and powerful crocodile?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Oh yeah!";
			say "     ([link]N[as]n[end link]) - Thanks, but no.";
			if player consents:
				LineBreak;
				say "     With an aroused grunt, the large and muscular crocodile stands up from his executive chair, revealing that it actually has a hole in the back for his long tail. He walks around his desk in a few steps and sweeps you up in his arms to sit you down on the edge of his desk. Pulling your clothes and gear off one by one, the strong amphibian gropes and touches your body in eager appreciation. Then he loosens the tie around his neck and undoes the top two buttons of his shirt before leaning forward to lick you - his broad tongue traveling from the base of your pussy over your belly and chest all the way to your neck. His breath is hot against your skin as he big man says, 'I'll show you a really good time.'";
				say "     Then Branson steps back a little and stretches up to his full nine feet in height, putting a hand on his crotch and wrapping it around the thick shaft of his erection - darker green than the scales on the rest of his body. He pumps the big piece of man-meat a few times with his hand wrapped around it, then guides it to your pussy. Brushing over the slit of your sex and making it go wetter by the second as your arousal builds in leaps and bounds, the crocodile grins down at you, then slowly pushes forward. You can't help but gasp as the girth of his manhood stretches your opening around his cock, followed by inch after inch of it sliding into your body.";
				WaitLineBreak;
				say "     Panting loudly, you grip the edge of his desk hard as the man pushes ever deeper, then let out a lust-filled gurgle as he bottoms out, his cock-head nudging hard against the inner barrier of your womb. 'Told ya you'd love it babe,' he adds in a very satisfied tone, then pulls back a little to ram his prick home with increased force this time. You writhe under the big male as his dickhead pops past your cervix - a strange sensation, but also... very, very good somehow. This can't be natural - but then, who can tell these days with nanites everywhere. No matter which, you feel almost delirious in pleasure from being impaled - all the way - on this muscular crocodile's shaft!";
				say "     With an aroused grunt, Branson starts to pull back and leaves your womb again with his cock, then recedes further and further until... he hammers all the way back in with a sudden thrust, filling his office with a lust-filled scream in two voices. And just like that, the man fucks you - hard - really pounding into your pussy again and again while you just whimper and call for more. Something about the man... his strength? His confidence? The humongous cock leaking pre into you steadily? Something fills you with intense satisfaction of being his little fuck-toy, a pussy to sheathe his dick in.";
				WaitLineBreak;
				say "     You can't even remember how long your mating lasts overall, not with the state of helpless bliss he fills you with every stroke, every thrust - but you do know that the climax is something you want to feel again. Having that strong, masculine croc on top of you, his hands holding you tightly as he thrusts in one last time. Then a first heavy throb goes through his balls - you can feel them resting against your crotch - and a deluge of cum erupts right into your womb. Blast after blast, the hunky businessman fills you with his seed, making your belly swell a little from the sheer volume of it. He keeps you in his grip until the very last spurt of cum, teasing you with licks over your skin, then eventually pulls out with a very satisfied grunt.";
				say "     'Girls like you are my favorite people to do business with,' Branson tells you with a satisfied grin. 'Capable, yet ready to put out. Come back anytime.' With that said, he runs his hand along the line of your jaw, then grins down at your cum-dripping pussy and lifts you off his desk to stand before it. Strolling around to take a seat in his executive chair again, the crocodile puts his business attire in order again and watches gleefully as you collect your clothes from the floor, then make an exit from his office with an armful of your gear. After yourself up a little in the elevator and getting dressed, you soon find yourself back in the reception area.";
			else:
				LineBreak;
				say "     With a shrug, he says, 'Your loss. More fun left for my girls, I guess.'";
		else:
			say "bids you farewell. You leave and soon arrive back down at the reception desk.";

the fuckscene of Melanie is "     As you make an amorous offer to the deer, Melanie gives a little giggle and shakes her head. 'Sorry, but I'm under strict orders to be ready for visitors at all times. Can't disappoint Mr. B,' she says and winks at you.".


City Hall Offices is a situation. The level of City Hall Offices is 1. City Hall Offices is resolved.
The sarea of City Hall Offices is "High".

Instead of resolving a City Hall Offices:
	now battleground is "Void"; [avoids random fights after]
	say "     Roaming through the streets of the high rise district, you eventually come to an unassuming office-building, far less glamorous than the more ornate actual city hall of the city. This is where bureaucrats and statisticians have their offices, doing their important yet often overlooked work. It seems like that latter fact works in your favor right now - as the building seems to have been completely ignored in the time since the nanite outbreak. No signs of looting or habitation at all. Just an abandoned office building, waiting for you to gain entrance.";
	say "     It is fairly easy to smash one of the windows on the back side, climbing into the open office filled with cubicles. Standing between the little box-shaped pens for human workers is somewhat eerie, making you feel like you don't belong here. Shaking off the sensation, you quickly move on and check doors left and right in an adjoining hallway - restrooms, office supply cupboard, a few one person offices, then - AHA - the server room! The place does turn out to be locked though, with a powerless key-card reader so you don't even waste the time to search for the card but instead go and grab a fire extinguisher from a nearby wall...";
	WaitLineBreak;
	say "     With the heavy metal tank as an improvised smashing weapon, the server room door doesn't have much chance of stopping you. It splinters after the first few hits, breaking just beside the lock and allowing you to kick it open. Beyond lies a small stuffy room filled with tall racks of computers and what feels like miles of network and power cables bundled into thick strands all over the place. Further back is a smallish cube of softly humming technology, connected to several long-lasting battery systems. That seems like the thing that Branson described - the city hall datastore. Seems they set it up so the thing wouldn't be damaged in a sudden power loss.";
	say "     Turning on the touch-screen monitor on the wall beside it, you get a maintenance overview full of flashing orange triangles and warning lights that decry a total loss of ventilation and power for all the computers in here. A heading of 'Backup Datastore' glows in a soothing green on the other hand, indicating that at least that is safe and secure. Everything is set up fairly simple, and with a few pushes of buttons on the screen, the small cube of hard-drives winds down, then falls completely silent and dark a few seconds later. Disconnecting the cables leading up to it, you do take hold of the device. Phew, quite heavy thing...";
	say "     (You gain a city datastore device.)";
	WaitLineBreak;
	say "     After packing away what you came for, you spend a little more time ransacking a cubicle or two, but find nothing much of interest. Therefore the next thing to do is climb back out the window and get back to the main street. Easy in, easy out - isn't it great when a plan works out?";
	increase carried of city datastore by 1;
	now City Hall Offices is resolved;

City Datastore is a grab object. City Datastore is not temporary.
City Datastore has a usedesc "[DataStoreUse]".

Table of Game Objects (continued)
name	desc	weight	object
"city datastore"	"A mid-sized box filled with high capacity hard-drives, chained together to form a reliable and redundant way of saving all the data the city hall had. Perfect for emergencies - like the nanite apocalypse. It is kinda heavy though..."	10	city datastore

to say DataStoreUse:
	LineBreak;
	say "     There isn't much you can straight out do with the thing. It would make a passable doorstop, but what's really the main point is the data saved on it. Better give it to someone who has an interest in that.";

instead of going north from Branson & Partner Reception while (HP of Melanie is 4):
	say "     As you walk towards the door to the company offices, Melanie stands up from behind her desk and approaches with a smile on her face. 'Let me get that for you, [if player is female]Ma'am[else]Sir[end if].' She looks quite enticing in her secretary outfit, especially with the way she sways her hips with every step. Given the fact that she has slender hooves, there is not even a need for any high heels on the young woman, she just naturally walks with her chest and breasts pushed out in a way that would draw anyone's eye. While thoughts about this are still chasing each other in your head, the smiling doe reaches the frosted glass door in the back wall and pulls it open, inviting you to step right in. Beyond lies an office with six desks in a similar style as Melanie's, most of which are occupied right now by other women.";
	say "     The office girls look up at your sudden entrance, then glance to Melanie for explanation of what is going on. She responds with a little wave, indicating for them all to step up to meet 'Mr Branson's new business partner'. The first one who does so gets introduced to you as Bella; an eye-catching tigress that steps forward on silent paws. The usual uniform of white skirt plus a darker skirt is lightly changed on her, with multiple buttons undone, revealing some glimpses of side-boob. Next up, a friendly Labrador girl steps into line and gets introduced as Elise. Seeing her makes it clear that Mr Branson definitively picked his workers by their looks, as she also is fairly slender, but well-set in the breasts department. The young woman's tail beats in a steady rhythm as she looks at you with interest.";
	WaitLineBreak;
	say "     'And then there are Lola and Layla,' Melanie goes on to say and waves her hand a little to draw your attention away from Elise's looks. For a second, you think you're seeing double as you look at the persons who step up, as it is literally the same woman twice over. Only when the snow-white bunny twins with their white-blond long hair come to a stop next to their colleagues do the differences become apparent. While the first one (Lola) looks you straight in the eye and sets her hands on her hips in a confident stance, her sister Layla appears somewhat more demurely, hands held relaxed behind her back. All four of them - or five, including Melanie - stand at attention, looking at you with interest in their eyes.";
	LineBreak;
	say "     [bold type]How do you want to introduce yourself to them?[roman type][line break]"; [Note: Just some flavour choices for player amusement, no story forks attached to any choice]
	say "     [link](1)[as]1[end link] - Show [']em who's boss and get in a few gropes. They'll be used to it from Branson.";
	say "     [link](2)[as]2[end link] - Give them a confident, business-like greeting.";
	say "     [link](3)[as]3[end link] - Be friendly and joke around a little as you greet them.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to get groping, [link]2[end link] to be all business or [link]3[end link] to be friendly.";
	if calcnumber is 1: [grope]
		LineBreak;
		say "     Putting in a serious expression, you introduce yourself[if player is not defaultnamed] as [name of player][end if], then stride along the line of the young women, inspecting each one in turn. As expected, they take it in stride as your hand strays forward several times to stroke some curves and give a grope or two. The smiles on their faces never go away, but you can't help but think that they seem a little bit less genuine as you get in your touches of their bodies. Eventually, your inspection tour is complete, by which time Melissa clears her throat and says, 'Okay everyone, let's get back to work. Mr Branson is expecting those documents by tomorrow.' Then she gives you a respectful nod and walks back out to the reception.";
	else if calcnumber is 2: [business]
		LineBreak;
		say "     Putting in a serious expression, you introduce yourself[if player is not defaultnamed] as [name of player][end if], then stride along the line of the young women. Giving each one in turn a handshake, you say that you look forward to working with them, now that you've become a silent partner of their boss. They react with genuine smiles and friendly comments, seeming surprised at the everyday business-like tone you're maintaining right now. After you shake her hand, you notice Lola glancing at something on one of the desks, a spot where someone apparently didn't quite get all of a splash of cum when cleaning up. Seems like the young woman are quite familiar with a different kind of treatment. Eventually, your introduction tour is complete, by which time Melissa clears her throat and says, 'Okay everyone, let's get back to work. Mr Branson is expecting those documents by tomorrow.' Then she gives you a respectful nod and walks back out to the reception.";
	else: [friendly]
		LineBreak;
		say "     Getting past the slight tension of introductions by making a joke that seems to inspire genuine chuckles from the pretty young women, you step forward with a friendly expression on your face and move to shake each of the office girl's hands in turn. They react with beaming smiles and come together to chat with you as a group after introductions, everyone being curious about what is going on outside of their workplace refuge. As you tell some stories and learn that neither of them had any family or close friends in the city (somehow all having been hired some distance away and moved here for their jobs), you notice Lola glancing at something on one of the desks thoughtfully before she joins back in on the conversation. Looks like a white streak, by your guess being a spot where someone apparently didn't quite get all of a splash of cum when cleaning up. Seems like the young woman are quite familiar with a different kind of treatment.";
		say "     Eventually, your introduction tour is complete, by which time Melissa clears her throat and says, 'Okay everyone, let's get back to work. Mr Branson is expecting those documents by tomorrow.' Then she gives you a respectful nod and walks back out to the reception.";
	wait for any key;
	move player to B&P Company Offices;
	now HP of Melanie is 5;

[

Initial meeting event with player either being dominant or friendly (just flavor choices)

4 Girls:
	- tiger girl (Bella)
	- labrador girl (Elise)
	- twin white bunnies (one dom - Lola [teasing/denial], one sub - Layla [indulging and into servicing])
	- Melanie the deer (got to send one of the others to the front desk to get her fuckable for a little while)
]

Branson & Partner ends here.
