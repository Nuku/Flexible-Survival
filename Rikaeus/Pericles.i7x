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

TestPericles is an action applying to nothing.
understand "Pericles Testing" as TestPericles.

carry out TestPericles:
	say "DEBUG: PericlesRelationship set to 1 and the 'Daily Training Session' set to not resolved.";
	now Daily Training Session is not resolved;
	now PericlesRelationship is 1;

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
	say "    Quickly after that though he turns to his subordinates whom he orders to start their mock fights. To be honest, it's rather difficult to tell who's who because of all the Spartans looking rather similar, which you guess is another downside of the nanite infections. But nevertheless both of the warriors begin to spar, clashing at each other with real swords, something that you give a concerned look to Pericles about. 'Oh, don't worry. They're ordered not to try to kill and the nanites will heal anything that happens,' he explains to you. When you think about it, it makes sense so you just nod and go along with it. As you're watching the soldiers fight, one of them manages to overwhelm his opponent competely. This seems to trigger something in the young man, as he doesn't stop with that - no, he calls the loser names, insults him and brags loudly, turning the other spartan over onto all fours with a harsh shove. Then he rams his hard cock home, fucking the other student with harsh thrusts. Before your very eyes, the fucked gasping bottom starts to transform into a helot, his cloak and sandals simply crumbling away.";
	say "    Surprisingly, Pericles is instantly enraged when he becomes aware at what you are staring. 'Zeus damnit! What have I told you oversexed bastards about fucking and disrespecting each other after training!' He shouts, walking up to the winner and lifting him up by his cloak. 'Not to do it, sir!' He says, a little fear on his face. 'And why have I told you not to do so?' The strong male asks, glaring into his victim's eyes. 'Because it unbalances our numbers, sir,' the spartan says, gulping audibly. 'And lastly, what is the punishment for disobeying me?' He asks sternly. 'To... be used by all my soldiers and the helot I made... while being stuck as a Spartan,' he says sadly, although his cock is hard. That makes you believe that the Spartans and Helots love sex no matter what they get. Pericles however is just nodding and then turns to you with an apologetic look on his face.";
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
	say "     Upon entering the library it appears like it's not that crowded. There are a few students dotted sparsley all over the place but that's about it. However, what catches your attention is something that occurs when you wander over to the wall containing the doors to the study rooms that are soundproof unless someone's right by the entrances. Behind one of them you hear grunting and moaning, sounds that intrigue you a lot. Out of curiosity, you turn the knob and open it a smidge. To your shock you find Pericles in the room, furiously masturbating. He's running his hand up and down his cock while he's making sounds that show he's clearly enjoying it. However, you stumble a bit and cause some noise, making him hear you and turn towards you.";
	if cunts of player > 0:
		say "      He frowns a bit at you before giving you a hesitant smile. 'Could... you leave me to uh.. take care of this?' He asks kindly and a bit forceful. From the tone of his voice, it appears that your body isn't something that he likes. Most likely the fact that you have female anatomy as you did see him stare at only men really. You shrug and oblige his desires and leave him be, closing the door behind you. Deciding loitering around wouldn't do well, you decide to go on your way. Maybe you'll get to see him sometime later. Perhaps if you want to sex him, then you may want to lose what makes you female. You could always find his room too.";
		now Masturbation In Private is resolved;
		now History Video is not resolved;
		now PericlesRelationship is 4;
	else:
		say "     When he sees you in the doorway he smiles and continues to masturbate, although at a slower pace now. He takes his free hand and runs it through his hair before he speaks up. 'Mmm I was actually hoping you'd show up. Do you want to help me friend? Or you could just watch,' he asks, gesturing to his cock and balls. The spartan's assests are rather amazing. His dick looks to be maybe ten inches long, not as long as some of the weirder ones you see, and about maybe five inches around. His balls are rather large as well, looking full and ready to pump out a huge load of cum. It is very clear that the infection apocalypse did good for him, though he could have looked like this before it. Nonetheless, you think about his offer.";
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
	say "     Depsite wanting to look further, you decide against it. Instead you turn to the strong male who is nervously holding a CD case. 'I want you to watch this and tell me what you think,' he says, gesturing to his laptop. You take the container and look at the disc inside. Written in black marker are the words History Lecture, February 11th 2008. That's the day that everything went to hell. Intrigued, you take the disc out and walk over to the bed. You pop open the CD slot and put the disc in. It takes you a while to click play as you are wondering what could be on it that your friend is so nervous about. Nevertheless you start the video and watch on.";
	WaitLineBreak;
	say "     The scene opens up on a history lecture, which is obvious because of the name on the disc. It is a class of fifty one students with an old man teaching at the lecturn. For some reason, one of the students, an average looking male wearing glasses is standing at the front. Ignorning that for now you focus on the lesson itself. The topic appears to be on the culture of Spartans. When the teacher begins describing how they look and that they'd often have Helots to take care of their needs, the boy at the front appears to have a bulge, something that you notice rather easily. However, quickly the topic changes to what kind of weapons they use, the teacher holding out a sword. 'Young Pericles here has agreed to demonstrate with this authentic Spartan blade,' the teacher said, handing him the weapon. When that happened, everything started going to hell.";
	say "     Seconds later after the handle touched the male's hand his body appeared to shudder for a second before changing rapidly. The first thing that happened was that he rapidly grew from five foot six to six foot tall. His glasses then suddenly vanished and his clothes started reforming as well into what someone from Greece in the old days would be wearing. After that, the body under the clothes started getting more defined and muscular. There were other small changes but that appeared to be it. As for the students they were panicking until the same thing happened to them. However, what occurred was far differnet from what Pericles changed into. No, the transformations for them were split fifty/fifty. Some of them changed into buff naked men wearing only a cloak and a helmet to others changing into muscular yet smaller men wearing only a loincloth.";
	WaitLineBreak;
	say "     As this pandemonium was happening Pericles appeared to be slightly confused and panicking until he hears the flapping of wings. A man you can't really see well approaches the person you know to be your friend and sighs. 'This place is going to need a little order, so I do apologize about the pain,' he says before holding up his hand, a bright light emerging from it. The spartan screams in pain when it hits him, but seconds later the light vanishes and so does the agony. When it's done, the male appears to have a much much more sane look on his face. 'Good, you've regained your cognitive functions. Look, I'll explain everything later but I need you to obtain order with these people,' the angelic man tells him. Your friend nods, albeit still confused and the angel flies away. After that the Pericles you know now appears and begins ordering around the new Spartans and Helots.";
	say "     The video ends after that, so you turn to face him with an inquisitive look. 'Well, now you know that I was the source of the infection, which is why I'm their leader,' he mumbles. Seeing that it's kind of made him sad, you hug him which appears to lighten him up. Afterwards you ask him who that angel was. 'Oh, him? He's the current Dean, Azrael. The man's partially the reason this place is so safe, he's immensley powerful.' Pericles says. You nod at that and then tell him that you're greatful for him having told you. He smiles at you and nods. 'No problem! Feel free to visit my room any time, I'd love to chat with you,' he says before he turns to a pile of papers that was on his bed. You shrug and leave him be for now, making sure to maybe visit later.";
	now History Video is resolved;
	now PericlesRelationship is 5;
	now LastCampusWalkin is turns;

Pericles ends here.