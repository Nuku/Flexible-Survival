Version 1 of Pericles by Rikaeus begins here.
[Version 1 - New NPC, New Events]

[ PericlesRelationship                                     ]
[   0: Hasnt met                                           ]
[   1: Has met via Bjorn Event                             ]
[   2: Has seen his second event                           ]
[   3: Has seen his third event                            ]
[   4: Has seen his fourth event                           ]
[   5: Has seen his fifth event, now available in room     ]

Daily Training Session is a situation.
Daily Training Session is resolved.
The sarea of Daily Training Session is "Campus".

when play begins:
	add Daily Training Session to badspots of guy;

instead of going to Athletic Street while (Daily Training Session is not resolved and LastCampusWalkin - turns > 0 and PericlesRelationship is 1 and a random chance of 1 in 3 succeeds):
	move player to Athletic Street;
	FirstPericlesEvent;

instead of resolving Daily Training Session:
	move player to Athletic Street;
	FirstPericlesEvent;

to FirstPericlesEvent:
	say "     Upon entering the street holding all of the athletic buildings, you notice an odd sight. A familiar-looking and well dressed Spartan is leading a large group of Spartans. Upon closer examination you realize that it's Pericles, the spartan leader you encountered before. He actually ends up noticing you and waves you over with a wide smile on his face. With a shrug of your shoulders you head over to him. 'Hey, I remember you [if BjornRelationship > 0 and BjornRelationship < 99]intervened to save that novice viking from me.'[else if BjornRelationship is 99]were there when I dispatched that novice viking.'[end if] He then gives you a once over and nods. 'I felt there was a certain something that drew my eyes to you,' he says and shakes your hand.";
	say "     A quick second later the male turns towards the Spartans and yells at them to drop and give him fifty before he returns his attention to you. 'As you've probably guessed I'm the leader of all the Spartans and Helots, Pericles,' the buff male says. You give him an odd look which prompts a sigh. 'Yes I know, it's stupid for the leader of the Spartans to be named Pericles who was Athenian, blame my parents for not calling me Leonidas or something,' he says with a roll of his eyes. You mention to the human-like male that you weren't giving him the look for that. Rather, you were confused as to why he appears to be more in touch with the world around him than his subordinates. This causes the guy to blush beet red at his mistake. 'I'm sorry. I've just had so many people ask me about my name, especially my soldiers,' he says with a shrug of his shoulders.";
	WaitLineBreak;
	say "     Quickly after that though he turns to his subordinates whom he orders to start their mock fights. To be honest, it's rather difficult to tell who's who because of all the Spartans looking rather similar, which you guess is another downside of the nanite infections. But nevertheless both of the warriors begin to spar, clashing at each other with real swords, something that you give a concerned look to Pericles about. 'Oh, don't worry. They're ordered not to try to kill and the nanites will heal anything that happens,' he explains to you. When you think about it, it makes sense so you just nod and go along with it. As you're watching the soldiers fight, one of them manages to overwhelm his opponent completely. This seems to trigger something in the young man, as he doesn't stop with that - no, he calls the loser names, insults him and brags loudly, turning the other spartan over onto all fours with a harsh shove. Then he rams his hard cock home, fucking the other student with harsh thrusts. Before your very eyes, the fucked gasping bottom starts to transform into a helot, his cloak and sandals simply crumbling away.";
	say "     Surprisingly, Pericles is instantly enraged when he becomes aware at what you are staring. 'Zeus damnit! What have I told you oversexed bastards about fucking and disrespecting each other after training!' He shouts, walking up to the winner and lifting him up by his cloak. 'Not to do it, sir!' He says, a little fear on his face. 'And why have I told you not to do so?' The strong male asks, glaring into his victim's eyes. 'Because it unbalances our numbers, sir,' the spartan says, gulping audibly. 'And lastly, what is the punishment for disobeying me?' He asks sternly. 'To... be used by all my soldiers and the helot I made... while being stuck as a Spartan,' he says sadly, although his cock is hard. That makes you believe that the Spartans and Helots love sex no matter what they get. Pericles however is just nodding and then turns to you with an apologetic look on his face.";
	WaitLineBreak;
	say "     'I'm sorry, but we have to take this elsewhere as the dean doesn't like outright orgies out in the open. Talk to you later?' He asks you. You smile and nod your head at him. That makes him return the gesture before turning to the Spartans and one Helot. 'Alright gang, let's go to the building that was provided for us and teach this rule-breaker a lesson,' he says. The Spartans salute and follow Pericles as he leads them further away from you and into a large building off to the distance. You mentally think to find the leader sometime later to talk with him again.";
	now PericlesRelationship is 2;
	now LastCampusWalkin is turns;
	now Daily Training Session is resolved;
	now History Class Lesson is not resolved;

History Class Lesson is a situation.
History Class Lesson is resolved.
The sarea of History Class Lesson is "Campus".

when play begins:
	add History Class Lesson to badspots of guy;

instead of going to Lecture Street while (History Class Lesson is not resolved and LastCampusWalkin - turns > 0 and PericlesRelationship is 2 and a random chance of 1 in 3 succeeds):
	move player to Lecture Street;
	SecondPericlesEvent;

instead of resolving History Class Lesson:
	move player to Lecture Street;
	SecondPericlesEvent;

to SecondPericlesEvent:
	say "     When you make your way onto Lecture Street you notice a bunch of students walking into one of the buildings. Amongst them is Pericles who appears to be walking with the teacher, a tortoise-morph. Curious, you manage to slip into the crowd and make your way into the lecture hall where you choose a seat somewhere in the middle. Once everyone is seated, you see that your Spartan friend is at the front of the class, standing with the teacher who appears to be looking over the large group of people. Everyone around you is chatting and staring at the buff male up there with the professor and by how they're acting you assume that this is their first class. Nevertheless, the teacher clears his throat to get everyone's attention.";
	say "     'As you all are new to this class, I have brought a guest to explain something to you,' the tortoise says in a deep voice. He then gestures to Pericles who steps forward. 'You all may have spotted that this college already has a history lecture hall. You are to not go anywhere near it unless you value your sanity,' he orders firmly. One of the students, a feline, scoffs which causes the Spartan standing at the front of the room to glare at him. 'That history class is the original one before the apocalypse happened. However, when it did, it transformed the entire roster into either Spartans or Helots,' he says, looking over all the students with a grimace.";
	WaitLineBreak;
	say "     A minute or so after he finishes, a student speaks up and asks him as to why he appears to be a lot more sane than the others. Pericles sighs before he speaks up, looking at the person who asked that question. 'The infection affected me differently than the others, hence why I'm more cognitive and am their leader,' he tells them, although you swear that the response sounds like a lie, or at the very least not the entire truth. Nevertheless you appear to be the only one who thinks that as everyone just nods along. Following that, he explains further that the reason they aren't to go anywhere near it is because the Spartans and Helots there will change them.";
	say "     Pericles has a thankful look on his face when everyone appears to understand. After that he lets them ask a few questions before it's time for the end of class. When all the students are gone, he notices you and walks over. He tosses an arm around your shoulder and smiles at you. 'Hey! It's nice to see you again friend!' He says happily. You admit it's nice as well, and asks him about this entire thing. He chuckles before replying to give you an answer. 'I've been asked to give this informative lecture to the new history students by the Dean, as for why... I'll tell you that later,' he says winking at you. He looks at the clock and curses. 'Shit, I'm late for my Calculus class,' he swears before apologizing and running off. You shrug your shoulders before you yourself leave the lecture hall.";
	now PericlesRelationship is 3;
	now History Class Lesson is resolved;
	now Masturbation In Private is not resolved;
	now LastCampusWalkin is turns;

Masturbation In Private is a situation.
Masturbation In Private is resolved.
The sarea of Masturbation In Private is "Campus".

when play begins:
	add Masturbation In Private to badspots of guy;

instead of going to Tenvale College Library while (Masturbation In Private is not resolved and LastCampusWalkin - turns > 0 and PericlesRelationship is 3 and a random chance of 1 in 3 succeeds):
	move player to Tenvale College Library;
	ThirdPericlesEvent;

instead of resolving Masturbation In Private:
	move player to Tenvale College Library;
	ThirdPericlesEvent;

to ThirdPericlesEvent:
	say "     Upon entering the library it appears like it's not that crowded. There are a few students dotted sparsely all over the place but that's about it. However, what catches your attention is something that occurs when you wander over to the wall containing the doors to the study rooms that are soundproof unless someone's right by the entrances. Behind one of them you hear grunting and moaning, sounds that intrigue you a lot. Out of curiosity, you turn the knob and open it a smidge. To your shock you find Pericles in the room, furiously masturbating. He's running his hand up and down his cock while he's making sounds that show he's clearly enjoying it. However, you stumble a bit and cause some noise, making him hear you and turn towards you.";
	if player is female:
		say "     He frowns a bit at you before giving you a hesitant smile. 'Could... you leave me to uh.. take care of this?' He asks kindly and a bit forceful. From the tone of his voice, it appears that your body isn't something that he likes. Most likely the fact that you have female anatomy as you did see him stare at only men really. You shrug and oblige his desires and leave him be, closing the door behind you. Deciding loitering around wouldn't do well, you decide to go on your way. Maybe you'll get to see him sometime later. Perhaps if you want to sex him, then you may want to lose what makes you female. You could always find his room too.";
		now Masturbation In Private is resolved;
		now History Video is not resolved;
		now PericlesRelationship is 4;
	else:
		say "     When he sees you in the doorway he smiles and continues to masturbate, although at a slower pace now. He takes his free hand and runs it through his hair before he speaks up. 'Mmm I was actually hoping you'd show up. Do you want to help me friend? Or you could just watch,' he asks, gesturing to his cock and balls. The spartan's assets are rather amazing. His dick looks to be maybe ten inches long, not as long as some of the weirder ones you see, and about maybe five inches around. His balls are rather large as well, looking full and ready to pump out a huge load of cum. It is very clear that the infection apocalypse did good for him, though he could have looked like this before it. Nonetheless, you think about his offer.";
		LineBreak;
		say "     [bold type]What now?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Help the Spartan with his problem. (From what you've seen, the male is rather dominant when it comes to sex.)";
		say "     [link](2)[as]2[end link] - Watch him finish himself off.";
		say "     [link](3)[as]3[end link] - Just leave.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to go down on him, [link]2[end link] to watch him or [link]3[end link] to leave.";
		if calcnumber is 1:
			LineBreak;
			say "     When you nod your head he smirks at you before he barks out an order. 'Good! Now get over here and on your knees,' he says firmly, something that sends shivers throughout your body. Of course, you comply and are soon kneeling with the large cock in front of your face, the scent of manly musk filling your nose and making you groan out loud. 'Hm? Do you like the smell? If you like it so much then bury your nose into my balls and start licking,' he tells you rather sternly. Nevertheless you push your head nose first into his large ballsack and inhale before starting to lavish it with your tongue, moaning when the sweaty taste enters your mouth. Your attention to his balls makes your friend let out sounds of pleasure as well, with him beginning to grind it against your face.";
			say "     This whole process continues for a couple of minutes before Pericles pushes your head back and presents you with the tip of his cock. 'Suck bitch,' he orders you roughly, pushing his dick forward until it hits the opening of your mouth. You eagerly open up, allowing the musky manhood to enter your oral cavity, the delicious taste of his precum lighting up your tastebuds in pleasure. Inch by inch the length goes until it is buried deep into your throat. 'Mmm you have a nice tight throat slut,' he compliments you before pulling out and quickly slamming back in. You gag for a second but soldier on, eager to please the powerful male above you.";
			WaitLineBreak;
			say "     Pericles begins to roughly fuck your throat, sounds of it entering and leaving your mouth filling the room. It is very clear that the male is enjoying using you as he's started to mutter dirty words to you, from calling you a cockslut to even a whore. 'You like this, don't you cumslut?' He grunts, slamming in deep, not letting you control the flow at all. On top of him abusing your oral cavity, his balls are slapping loudly and wetly against your chin, the lewd sound only making the situation hotter. It is also through this position that you're able to tell when your friend is getting close as the ballsack quickly begins to tighten.";
			say "     'Take my cum you slut!' He roars as he pulls back so that his tip is resting on your tongue. Shortly after that a warm salty fluid starts coating the insides of your mouth. It appears to be a large amount as you are forced to gulp it down so as to not have any spill. Even so, some of the cum leaks out of your mouth. Less than a minute later Pericles finishes cumming. When he does, he pulls out and wipes his jizz coated tip on your lips, covering them with his seed. He then takes a good look at you before smiling. 'That's a good look on you,' he says, chuckling. He then helps you up, pulling you into a sloppy kiss afterwards. 'That was amazing, sorry about whatever I said during that. This infection... makes me rather dominating,' he says, rubbing the back of his head sheepishly. You tell him it was perfectly fine and you enjoyed it. That makes him smile at you happily. The two of you clean up before leaving the room. When you do, as he heads off he tells you to visit his room soon.";
			now Masturbation In Private is resolved;
			now History Video is not resolved;
			now PericlesRelationship is 4;
		else if calcnumber is 2:
			LineBreak;
			say "     You shake your head and instead decide to just watch. He shrugs his shoulder and then smirks at you. He raises his free hand to one of his nipples before starting to tweak it as he's masturbating, making him moan out loud. The virile male appears eager to put on a show for you. However, you feel as if the male is rather close already, possibly from you watching him. This is evidenced by the fact that he looks to be rubbing his cock even faster and pinching his nipples even harder. Minutes later he's moaning loudly and humping his hand, rather shortly after that the Spartan starts swearing up a storm, his head thrown back in pleasure.";
			say "     Quickly after that Pericles['] hand leaves his cock as cum shoots all over his body, practically coating the male with it. Some of it even lands in his mouth to which he eagerly gulps it down. A minute later he comes down from his orgasmic high and begins cleaning up as he'd probably be yelled at by the librarians here, Spartan leader or not. Once he's done he walks up to you and smiles before leading you out of the room. 'If you could, please visit my room sometime later, I have something to show you,' the male tells you. You nod at him and watch him head off on his own before you continue to do whatever you were doing before.";
			now Masturbation In Private is resolved;
			now History Video is not resolved;
			now PericlesRelationship is 4;
		else:
			LineBreak;
			say "     You quietly excuse yourself and just slip out of the room, leaving Pericles to finish himself off on his own.";
	now LastCampusWalkin is turns;

History Video is a situation.
History Video is resolved.
The sarea of History Video is "Campus".

when play begins:
	add History Video to badspots of guy;

instead of going to Tenvale College Male Dorms while (History Video is not resolved and LastCampusWalkin - turns > 0 and PericlesRelationship is 4 and a random chance of 1 in 3 succeeds):
	move player to Tenvale College Male Dorms;
	FourthPericlesEvent;

instead of resolving History Video:
	move player to Tenvale College Male Dorms;
	FourthPericlesEvent;

to FourthPericlesEvent:
	say "     Deciding to visit your Spartan friend, you make your way to the Male Dorms. It is there that you spot Pericles who smiles and waves at you. 'Hey! Just who I wanted to see, I have something to show you,' he tells you, before quickly asking you to follow him. The male leads you to the staircase of the dorms and goes up to the second floor, you walking behind. When you reach the top he immediately goes into the west room, the area that is facing the campus. Upon entering the room you see that it is the opposite of the word Spartan. On the walls are loads of band posters, play posters, movie posters and even posters of naked men. Leaning against the wall are a large variety of weapons and shields as well as stacks of video games. There's also a bookshelf in here filled with history books and next to it a dresser filled with clothes. His bed is plain though, with a laptop sitting on top of it.";
	say "     Despite wanting to look further, you decide against it. Instead you turn to the strong male who is nervously holding a CD case. 'I want you to watch this and tell me what you think,' he says, gesturing to his laptop. You take the container and look at the disc inside. Written in black marker are the words History Lecture, February 11th 2008. That's the day that everything went to hell. Intrigued, you take the disc out and walk over to the bed. You pop open the CD slot and put the disc in. It takes you a while to click play as you are wondering what could be on it that your friend is so nervous about. Nevertheless you start the video and watch on.";
	WaitLineBreak;
	say "     The scene opens up on a history lecture, which is obvious because of the name on the disc. It is a class of fifty one students with an old man teaching at the lectern. For some reason, one of the students, an average looking male wearing glasses is standing at the front. Ignoring that for now you focus on the lesson itself. The topic appears to be on the culture of Spartans. When the teacher begins describing how they look and that they'd often have Helots to take care of their needs, the boy at the front appears to have a bulge, something that you notice rather easily. However, quickly the topic changes to what kind of weapons they use, the teacher holding out a sword. 'Young Pericles here has agreed to demonstrate with this authentic Spartan blade,' the teacher said, handing him the weapon. When that happened, everything started going to hell.";
	say "     Seconds later after the handle touched the male's hand his body appeared to shudder for a second before changing rapidly. The first thing that happened was that he rapidly grew from five foot six to six foot tall. His glasses then suddenly vanished and his clothes started reforming as well into what someone from Greece in the old days would be wearing. After that, the body under the clothes started getting more defined and muscular. There were other small changes but that appeared to be it. As for the students they were panicking until the same thing happened to them. However, what occurred was far different from what Pericles changed into. No, the transformations for them were split fifty/fifty. Some of them changed into buff naked men wearing only a cloak and a helmet to others changing into muscular yet smaller men wearing only a loincloth.";
	WaitLineBreak;
	say "     As this pandemonium was happening Pericles appeared to be slightly confused and panicking until he hears the flapping of wings. A man you can't really see well approaches the person you know to be your friend and sighs. 'This place is going to need a little order, so I do apologize about the pain,' he says before holding up his hand, a bright light emerging from it. The spartan screams in pain when it hits him, but seconds later the light vanishes and so does the agony. When it's done, the male appears to have a much more sane look on his face. 'Good, you've regained your cognitive functions. Look, I'll explain everything later but I need you to obtain order with these people,' the angelic man tells him. Your friend nods, albeit still confused and the angel flies away. After that the Pericles you know now appears and begins ordering around the new Spartans and Helots.";
	say "     The video ends after that, so you turn to face him with an inquisitive look. 'Well, now you know that I was the source of the infection, which is why I'm their leader,' he mumbles. Seeing that it's kind of made him sad, you hug him which appears to lighten him up. Afterwards you ask him who that angel was. 'Oh, him? He's the current Dean, Azrael. The man's partially the reason this place is so safe, he's immensely powerful.' Pericles says. You nod at that and then tell him that you're grateful for him having told you. He smiles at you and nods. 'No problem! Feel free to visit my room any time, I'd love to chat with you,' he says before he turns to a pile of papers that was on his bed. You shrug and leave him be for now, making sure to maybe visit later.";
	now History Video is resolved;
	now PericlesRelationship is 5;
	now LastCampusWalkin is turns;
	move Pericles to Pericles' Room;
	change the west exit of Second Floor Male Dorms to Pericles' Room; [connecting the location to the travel room]
	change the east exit of Pericles' Room to Second Floor Male Dorms; [connecting the location to the travel room]

Pericles is a man.
The description of Pericles is "[PericlesDesc]".
The conversation of Pericles is { "<This is nothing but a placeholder!>" }.
The scent of Pericles is "     Pericles smells like sweat and hard work, something to be expected of the leader of the Spartans and Helots. Beyond that he smells like the pages of a book.".

to say PericlesDesc:
	say "     The Spartan-Helot leader is very much a different look than all the others. First and foremost from your personal information it partially has to do with the fact that Pericles is in fact both a Helot and a Spartan, thus has a mix of a lithe and muscular form that seems to fit for the male. Secondly it is what he is wearing that makes the leader appear different. Unlike his subordinates he is wearing a full set of clothing, well armor. Said set of metal is well polished and wouldn't be out of sight of the Sparta era of Greece. Soon enough Pericles notices you staring at him and he smiles in your direction.";

Section 2 - Talking with Pericles

instead of conversing the Pericles:
	if PericlesRelationship < 5: [should be not yet available]
		say "     ERROR: Pericles shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [PericlesRelationship]";
	else:
		say "     As you walk up to Pericles, who has been wandering around his room, he looks up at you and smiles. 'What do you want?' He asks, clearly happy to see you.";
		say "[PericlesTalkMenu]";

to say PericlesTalkMenu:
	LineBreak;
	say "What do you wish to talk about with the Spartan?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Pre Apocalypse";
	now sortorder entry is 1;
	now description entry is "Ask him what his life was before the apocalypse.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Current College Life";
	now sortorder entry is 2;
	now description entry is "Ask him about his current college life.";
	[]
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
				if (nam is "Pre Apocalypse"):
					say "[PericlesApocalypse]";
				if (nam is "Current College Life"):
					say "[PericlesCollege]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You apologize and tell him you that you don't have anything to say. He raises a brow but gets back to what he was doing.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say PericlesApocalypse:
	say "     'My life before everything?' He asks, moving to his bed before laying on it. 'It was rather simple, I went to classes, I read my favorite books, I had friends...' Pericles says with a reminiscing look. You raise a brow at him, wondering if his life could be really that simple. Seeing this, the Spartan-Helot chuckles at you. 'Well, it wasn't that boring. I mean, my parents were archaeologists, particularly of the Ancient Greece, hence my name. That always led to odd conversations.' He mumbles. That in turn causes you to let out a laugh, which surprisingly makes him blush. However, he soldiers on and finishes talking. 'Thankfully though, it made my parents super accepting of me being gay, other than that nothing too insane happened to me before the apocalypse.' He says, deciding to stay laying on the bed after he finishes.";

to say PericlesCollege:
	say "     You ask the Spartan-Helot what his life is like now that he's the leader of the Spartans and Helots. He hums to himself before wandering over to the window where he beckons you over. Looking out you can see some of his subordinates keeping guard of the campus. 'Now my days are filled with me training my soldiers, making sure they don't get too rowdy, you probably know as well as anyone that they love messing around with anyone who comes into the campus.' Pericles says with a roll of his eyes. You chuckle at that and turn your attention to the paperwork by the desk and mention that.";
	say "     'Oh yeah... I don't exactly mind the paperwork to be honest. It's mostly reports from my Spartans and Helots as well as my documents I'm sending to the dean,' he says giving the papers a cursory glance. The last thing you mention is the classes, which you ask if he still go to. 'Yeah, I still go to them, after all I have to learn. Though as you've seen I also do the lesson for the history class in informing them about the Spartans...' He trails off. The conversation switches to a far more pleasant topic before he realizes he needs to finish some of his paperwork, heading off to his desk.";

Section 3 - Sex

instead of fucking Pericles:
	if (lastfuck of Pericles - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     Pericles raises a brow and shakes his head at you. 'Even with my mutation I need some time to rest friend,' he says, chuckling at the end.";
	else if cunts of player > 1: [Player has a vagina]
		say "     The buff male shakes his head at you and apologizes. 'I'm sorry but womanly parts aren't my thing, sorry.' Pericles then tells you that if you wish to have fun with him then come back as a male.";
	else if player is neuter: [Player is genderless]
		say "     When you approach him Pericles suddenly blushes and stutters out a response. 'I'm so sorry! I would love to but it's just awkward without a cock there to play with during sex.' He blurts out, looking embarrassed. You get the feeling that he'll only really have fun with you if you have a cock and only that.";
	else:
		say "     When Pericles wanders on over to the window to look over the entire campus a thought pops into your head, a rather dirty thought... What do you want to do to the man?";
		wait for any key;
		say "[PericlesSexMenu]";

to say PericlesSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male and cunts of player < 1:
		choose a blank row in table of fucking options;
		now title entry is "Ride the Spartan cock";
		now sortorder entry is 1;
		now description entry is "Take the Spartan-Helot leader for a ride";
	[]
	if player is male and cunts of player < 1:
		choose a blank row in table of fucking options;
		now title entry is "Suck Pericles off"; [only males can suck him off]
		now sortorder entry is 2;
		now description entry is "Gice Pericles a good time with your lips";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Ride the Spartan cock"):
					say "[PericlesSex1]";
				if (nam is "Suck Pericles off"):
					say "[PericlesSex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head and decide against sexing up the buff Spartan leader.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say PericlesSex1:
	if bodyname of player is "Helot" and facename of player is "Helot":
		say "     Getting an idea of what you want to do to the Spartan-Helot, you make your way to behind him and wrap one of your arms around the guy to reach for his crotch. However, before you can you're shoved up against the wall by the window. 'It looks like somebody is getting ideas above their station.' Pericles says gruffly, reaching his hand instead to squeeze at your ass. Your face blushes red and you look down submissively, your Helot infection causing you to defer dominance to this male. Though, you know it's because he is the originator of the Helots and Spartans but that information doesn't help you at all mentally. You are quickly snapped out of this thought process when Pericles harshly spanks your ass, causing you to let out a gasp. 'You've been playing around with my soldiers... haven't you?' The question is more of a statement than anything else. Nevertheless you nod your head, confirming it to the alpha male in front of you.";
		say "     Pericles gives you a calculating look before he nods to himself with a smirk. 'Slave, strip and lay on my bed, back first. That is a direct order,' the Spartan-Helot orders you, sending shivers down your spine as you promptly obey. You quickly deprive yourself of clothing, letting it pool on the floor, moving onto the bed soon after. Once you're in position, you see the buff male looking up and down at your body in desire. A few seconds later he then too drops everything he's wearing, letting you once more look upon his glory. Pericles['] cock is already rock hard but he pays no mind to it as he walks over to the bedside drawer, which he opens and pulls out a bottle of lube. Popping it open the Spartan-Helot moves on over to you and pours some of it onto his hand before reaching for your hole, slipping a finger in right away, making you let out a gasp at the cool sensation.";
		WaitLineBreak;
		say "     'You like that, don't you, Helot?' Pericles asks, pushing another finger in, making you groan out loud. He quickly then proceeds to scissor your hole open, the pleasure causing moans to pour out of your mouth. 'You won't need much preparation, but then again Helots never do,' he says, proving that by slipping in another digit, the action not incurring much pain. About a minute later the Spartan-infection progenitor removes his fingers and promptly orders you hold up your legs, something that you hurriedly do, happy to get onto the sex. While you're doing this Pericles is lubing up his cock so he doesn't have to go in dry, a gesture that you no doubt appreciate. After doing that he climbs on up to the bed and positions himself at your entrance. With one quick thrust he hilts himself fully into you, filling your vision with stars, something that causes you to gasp loudly.";
		say "     'Fuck, I never really understood why you Helots were always still so tight despite being fucked silly every day.' Pericles grunts, clearly enjoying the velvety feeling of your tight hole. You on the other hand are groaning in pleasure at just being filled by the male's rather large cock. Though, the Spartan-Helot doesn't stay still for long, rather he soon pulls out to just the tip before slamming back into you, his cum-filled balls slapping loudly against you ass-cheeks. This action sends more stars shooting through your vision as you let out a loud moan, but you aren't allowed any respite as he begins to fuck you as rough as he can, grabbing at your legs to hold onto as he does this. The sounds and smells of sex fill the room as Pericles pounds your hole, creating a sight that would arouse anyone that saw.";
		WaitLineBreak;
		say "     It doesn't take him long to find your prostrate, the sheer action putting you out of commission by making you look like somebody fucked your brains out, which is one hundred percent the truth. With your mental leave of absence, Pericles repositions you so that you are now face to face with him as he is slamming his cock in and out of you, though he soon makes a comment about your state of mind. 'You look like you're right where you belong slave, both mentally and physically,' he says with a grunt as his thrusts get more frantic, signifying that he's getting close to orgasm. However, in a sporadic action, the Spartan-Helot bites you on the neck, causing you to let out a moan mixed with a yelp as well as suddenly cumming hard, shooting your load all over the two of you. This causes your hole to tighten around the male fucking you, which appears to cause him to reach his climax as well.";
		say "     'Fuck!' He roars, slamming into you one last time before spilling his seed into your hole and then promptly slumping over your body, panting hard. The two of you lay there for a good while, just enjoying the orgasmic bliss of your post-coitus. It isn't until about an hour later that you both come to your senses and sit up. This time instead of you, it's Pericles who's blushing. 'I'm sorry about how I acted. The nanites make me react weirdly towards the Helot infection, at least sexually.' He admits. You tell him that it's perfectly fine and that you understand, especially considering that he is the originator of that particular strain of infection and then tell him that you enjoyed it thoroughly. When you say that he gives you a beaming smile before he helps you clean up. Once the both of you are cum free and have your clothes back the two of you return to what you were doing prior to the sex.";
	else:
		say "     A few seconds later you finally figure out what you want to do with Pericles, but you end up wondering how you'll go about it. You know that if you offer the Spartan-Helot your ass he'd probably gladly take it but you would rather not be so easy. So, instead you step behind the well-built male and position your head close to his ear, your hot breath coming into contact with it. Promptly after you ask him if he'd like to have a bit of fun, saying this as you snake your hand around to grab at his crotch, his cock responding well to your touch. 'You're quite the eager beaver, I don't mind at all,' he purrs, the sensuality of the way he said it causing you to blush but soldier on, grasping harder at his dick. It appears that Pericles enjoys it, as by now he's fully hard.";
		say "     The buff male grabs the hand on his crotch and drags you over to the bed where he pushes you onto it. Now on you're back you watch him strip down to absolutely nothing, getting the chance to ogle his naked body, something that you thoroughly enjoy. Of course you know that all these muscles were acquired from the nanites, you do also know that Pericles does maintain them with exercise. All the same, they suit the male, as well as the rather large cock and low hanging balls. When he approaches, you're startled when he reaches for you and starts depriving you of your own clothing, leaving you bare in front of him just like he is for you. You're even more surprised when he yanks you by the legs and pulls your ass to the edge of the bed and then kneels.";
		WaitLineBreak;
		say "     'Time for some preparation my friend,' he mutters before you let out a gasp when his head leans forward and goes right between your cheeks, with him starting to rim you. The sensation of his tongue on your hole is a welcome one, something that causes you to let out little moans with each swipe of his fleshy organ. Of course, the rimming isn't constant, as occasionally he replaces his mouth with two fingers that scissor and finger your hole to open it up more for insertions, something that you're grateful for because if he had just gone straight in with no prep it would hurt like a motherfucker. While Pericles swaps back and forth between tonguing you and thrusting his digits into your ass he uses his free hand to blindly feel around for what you assume to be his bedside drawer as when he manages to open it, he fishes out a bottle of lube.";
		say "     To your surprise you hear the sound of a bottle cap hitting the wall, which leads you to assume the lube was opened. That implies a bit of skill on his part as you swear in your pleasure addled mind that it was a twist cap. A sharp shooting sensation of pleasure however quickly distracts you from that thought process. 'Ooh, looks like I found your prostate.' Pericles says with a smirk as he lubes up his own cock in preparation of fucking you. By now he's alternating between tonguing your hole and fingering you with a total of three digits, something that is already making you see stars, your cock fully rock hard. 'I think you're ready, don't you agree?' He asks, standing up and positioning himself at your hole.";
		WaitLineBreak;
		say "     Before you can say anything, Pericles fully buries himself into your hole, the action causing you to grunt and moan loudly, your friend swearing on the other hand. 'Fuck, you feel wonderful!' The Spartan-Helot pants, letting his cock rest in you for a few seconds. And a few it was, as your friend soon pulls back, only to slam back in full force. Surprisingly enough with this thrust he manages to find your prostate again and jabs into it, causing your dick to leak copious amounts of precum. The male soon enough finds his rhythm, fucking you at hard and fast pace, the sounds of his balls slapping against your cheeks filling the room. As much as you'd love for this to continue for a lot longer, you're getting rather close, and by the fact that Pericles is leaking precum as well that means he's close too.";
		say "     It's when the Spartan-Helot slams into you particularly hard that you can't take it anymore, letting out a gasp as you let loose your cum, it spraying all over the upper part of your partner due to the position the two of you are in. As you're climaxing, so does Pericles, the male swearing loudly as he hilts himself one last time into you before you feel yourself filling with his warm seed. He ends up cumming quite a lot, causing some of it to spill out of your hole and leak onto the floor. However, your friend doesn't care at all, instead he pulls out of you and slumps onto the empty spot on the bed beside you and sighs happily. 'Well, that was great,' he says, a dopey smile on his face. You nod blissfully at him, thinking just the same. It takes you guys about half an hour to recollect yourself and clean up but when you do, you get back to what you were doing before, promising to repeat the action again at a later time.";
	now lastfuck of Pericles is turns;

to say PericlesSex2:
	if bodyname of player is "Helot" and facename of player is "Helot":
		say "     Having an idea of what you want to do, you make your way over to Pericles, who appears to sense you coming up behind him. Upon seeing your lust-filled look his facial expression changes into one that you recognize, if only barely, from the Spartan-Helot's drills with his soldiers. 'Ah, the slave seems to want something, don't you?' he asks, the male's eyes filled with a heat that sends shivers down your spine. You nod half-mindedly, a smirk coming to the leader's face as it then turns to a stern look. 'On your knees then helot!' He orders firmly '. Not even thinking of disobeying, you immediately sink to the floor, now face first with his clothed crotch. 'Is this what you desired slut?' He questions, pulling your head closer to your prize. You mumble out a sound of agreement as you nuzzle your face closer to the warmth, inhaling the scent from behind his pants, the musk making your head light.";
		say "     'Now unbutton them slave.' He orders you firmly, you promptly obeying, reaching up with your hand, something that he saps away. 'With your mouth.' You nod at him before bringing your teeth to the button of his pants. You bite at the cloth and then tug at them, mentally thanking whatever power there is when it comes undone. Moving down you bring your teeth to his zipper which you promptly drag down, revealing his jock strap underneath. You nuzzle the cloth cupping his crotch, licking at it softly, enjoying the taste that you can gather from it. This action appears to make Pericles moan softly, showing that he enjoys what you're doing, though it was already obvious by his hardening cock from behind the underwear. Soon after, without him even saying, you use your teeth to pull down his jock strap, freeing his dick and making it slap you in the face, leaving a bit of precum on your cheek.";
		WaitLineBreak;
		say "     'You don't get your prize just yet. You have to prove yourself first helot,' he tells you, gesturing to his balls where you can smell a good amount of musk coming from. Figuring out what he wanted you to do pretty easily, you bring your face to his sac and take one of them into your mouth. The taste of sweat hits your tongue causing you to moan softly as you swirl his orb around in your mouth. You switch back and forth between each one, making sure to take care of both, occasionally removing your mouth to lick at the area under his balls and the part between them and his thigh. Pericles appears to be enjoying this thoroughly as he's groaning with each swipe of your tongue, his eyes closed in bliss. A few minutes later though he looks down at you with an approving look.";
		say "     'Get to sucking slave, you've earned it,' he barks out at you before he turns to look out the window, leaving you to your work. Eager to get started you take the tip of his cock into your mouth, savoring the salty taste of the precum that was leaking prominently. You quickly swirl your tongue around to gather some more, really enjoying it all. From the sounds that Pericles was making, the stronger male was enjoying it as well. Interested in going further, you begin to take more, the large cock starting to enter your throat. The Spartan-Helot lets out a moan, the velvety feeling of your throat giving his dick a vice like grip. It wasn't until a few seconds later that the man took a hold of your hair before yanking you down on his length. 'Mmm, your throat feels so fucking good slut,' he says, practically balls deep in you.";
		WaitLineBreak;
		say "     Quickly after that Pericles begins to hump your mouth, fucking your throat repeatedly, the sound of his balls slapping against your chin. You willingly sit there and let the stronger male facefuck you, focusing on his pleasure rather than yours. After all, you're a helot and he's the originator of your infection, so it's only right that he lords it over you. Though at the same time you're very grateful that it appears you have no gag reflex. 'Mmm, your mouth is just a nice hole for me to fuck, maybe next time I'll take your actual hole. I bet you'd like that, wouldn't you, slut,' he says, moaning in bliss as he roughly slams in and out of your throat. As he's doing this you can feel the balls slapping against you tighten, a tell-tale sign that he's getting close, though his following words told you everything. 'Fuck, drink down my cum slave!' He roared, going all the way in one last time.";
		say "     Shortly after he pulls the tip back so it's resting on your tongue and then right after ropes of cum begin to coat your mouth, the taste lighting your tastebuds up in pleasure. You greedily swallow it all down, bit after bit. When Pericles pulls out he wipes the last bit of cum on your cheek before smirking at you. A few minutes later the sexual haze vanishes and your friend is now blushing beet red and apologizing profusely to you. 'I'm so sorry! I couldn't control myself!,' he says, trying not to look in your direction. You chuckle at him and tell him that it's perfectly fine and you don't mind it and wouldn't mind it again, winking in his direction causing him to blush once more. He quickly turns towards the window and pulls his pants up, going back to watching the campus.";
	else:
		say "     Having a good idea of what you want to do, you walk over to Pericles and grab him by his hand. The guy appears a bit surprised but nevertheless follows your lead. When you reach his bed, you push him onto his back, leaving him legs spread on the bed for you. 'Ah, now I see... but the real question is, what are you going to do?' He asks, giving you a raised brow. You reply by sinking to your knees, face first with his crotch. Promptly you nuzzle your nose to his pants, enjoying the musk that emanates from it. 'Enjoying the smell of my hard work there my friend?' The Spartan-Helot asks in a somewhat haughty tone. You just mumble a sound of agreement.";
		say "     Eager to continue onward you bring your hands up and unbutton his pants, revealing his bulging underwear. You bring your face to his crotch and nuzzle it again, licking at it before sucking at where you suspect the tip of his cock to be. This causes a moan to escape from Pericles' mouth, making you smirk at you being able to do this to the strong male. You reach up once more but this time to pull his cock and balls from out of their entrapped area, allowing it to slap you in the face. With the male's dick now free you bring your mouth to the base of it to lick and suck at the shaft, causing Spartan-Helot to groan in pleasure. You follow this up with a trail of kisses up to the tip, to which you lick at, taking in some precum that ends up leaking out due to your actions.";
		WaitLineBreak;
		say "     'Zeus Damnit, stop teasing me friend!' Pericles curses, causing you to raise a brow at his unique form of words, which just makes him blush. Nevertheless you acquiesce to his request and take his cock into your mouth, swirling your tongue at the tip, making the Spartan-Helot writhe in pleasure. Not giving him time to take control you go further down on his dick and soon enough you're deepthroating him. 'Fuck, you're awfully good at this,' he mumbles, looking at you with lust-laden eyes. Even with his length in your mouth you manage to smirk at him before getting to work, taking your lips up and down his shaft, practically fucking your face on his cock. Your pride swells when you hear Pericles practically unravel at your ministrations.";
		say "     Eager to make him go a bit crazier, you slip your hand into the leg of his underwear and search for his hole, something that you are sure you'd be unable to do if you weren't distracting him with your actions. When you do find it, you begin fingering him, something that Pericles hadn't expected but you assume welcomes by the fact that his moans are now much louder. The scene now present in the room is of you deepthroating the Spartan-Helot's cock while you finger his hole. What an interesting sight it would be for someone to walk in upon. However, sadly from what you can tell it won't last much longer as your friend appears to be getting closer and closer to orgasm.";
		WaitLineBreak;
		say "     Sure enough about five minutes later, Pericles' body freezes up and then he lets out a stream of expletives as you can taste rope after rope of cum shoot into your mouth. 'Fuck, fuck, fuck, fuck!' Your friend swears loudly, clenching the sheets in his hands as he orgasms roughly. You greedily gulp it all down, glad to drink the Spartan leader's seed. Even when the stream of jizz ends, it takes the stronger male a good twenty minutes to ride out his sexual high, during that time you kind of just sit there and watch him. When he finally comes to, he's smiling dumbly at you, something that makes you raise a brow. 'That was wonderful, we should definitely have a repeat of that sometime in the future,' he says before getting up and righting all his clothing. You give him a smile back and a nod of agreement, more than happy to suck him off in the future again.";
	now lastfuck of Pericles is turns;

testpericles is an action applying to nothing.
understand "pericles test" as testpericles.

carry out testpericles:
	say "DEBUG: PericlesRelationship VARIABLE SET TO 4 - Pericles now available to see last event that allows for room access";
	now PericlesRelationship is 4;

Pericles ends here.
