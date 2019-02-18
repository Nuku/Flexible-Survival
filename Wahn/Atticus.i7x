Version 1 of Atticus by Wahn begins here.
[Version 1 - Put into its own file]


[ TimekeepingVar - Atticus's location                             ]
[ 1, -7 (midnight): sleeping in Atticus's Bedroom                 ]
[ 0, -8 (pre dawn): sleeping in Atticus's Bedroom                 ]
[ -1, 7 (early morning): sleeping in Atticus's Bedroom            ]
[ -2, 6 (mid-morning): awake in Atticus's Bedroom                 ]
[ -3, 5 (noon): awake in Survivor Refuge                          ]
[ -4, 4 (mid afternoon): awake in Survivor Refuge                 ]
[ -5, 3 (evening): outside the apartment                          ]
[ -6, 2 (early night): outside the apartment                      ]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Army Convoy	"Incubus Offspring Meeting"

Incubus Offspring Meeting is a situation.
The sarea of Incubus Offspring Meeting is "Nowhere".

when play begins:
	add Incubus Offspring Meeting to badspots of guy;
	add Incubus Offspring Meeting to badspots of Incest;

after going to Burned-Out Chapel while (LilithKidCounter > 0 and PlayerMet of Atticus is false and Elijah is not in Burned-Out Chapel and a random chance of 1 in 3 succeeds): [Atticus exists, hasn't met the player, Elijah not in there (too complex), 30% chance]
	move Atticus to Burned-Out Chapel;
	say "     As you enter the nave of the ruined chapel, with its soot-blackened walls and columns rising high above you, you become aware that someone else is already inside the room. A series of candles has been set up in the apse behind the altar, their flickering glow playing over the naked skin of a handsome young man standing against the wall there. Casually naked and clearly quite comfortable in his skin, he is pinching his nipples one by one while jerking his meaty shaft in fluid movements. Two small horns bend upwards from his forehead, dark red in color just like the bat-like wings on his back and the spaded tail swinging through the air behind his back. Clearly, this is an incubus - but there's more to him than just that... something about his features and the sexual energy lying thick in the air around him reminds you of Lilith, and it isn't too hard to guess that this is a son of the powerful succubus.";
	say "     Amber eyes flicker towards you as the incubus registers your presence, and with a grin, he speeds his masturbation into a rapid flurry of movement, accompanied by lewd moans spilling easily past his lips. You can do little more than stare as he quickly pushes himself past the point of no return, letting out a satisfied grunt as his body stiffens and a thick spurt of cum erupts from his manhood, followed by another and another. Second by second, the glow of the candles around the naked man seem to diminish and it takes you a second to figure out why: He's literally shooting out the candles with his cum! One, two, three, then four flames are extinguished as their wicks are engulfed by the demon's seed but he aimed a little high for the fifth, so it is only grazed, spreading the scent of burning and cum in the air instead.";
	WaitLineBreak;
	say "     'Aww, just four! So close! Guess I'll have to keep practicing,' the young man says in playfully overacted anger, then glances you up and down hungrily. His gaze is so intense that you almost feel you got groped just by the looks alone. 'You know, you could help me with this. It's your job after all, showing an interest and giving support for the hobbies of your offspring.' A beaming grin spreads over his face as your eyes widen, followed by a confirming nod and a slow, lazy stroke of his cock. ";
	if Playermet of Atticus is false:
		say "'Yeah, that's right! Remember knocking up a certain succubus? I'm the result, daddy! I'm Atticus, by the way. Now why don't you come over here and give your boy a kiss?' Wiggling his eyebrows in a seductive, teasing way, Atticus turns his body to highlight his best features, eager to draw you in.";
	else:
		say "'You don't want to be that kind of dad, do you? Look, you already missed all of the two hours I grew up in, so this is your chance to make up for that! Come play with me! Give your boy a kiss to make it all better, eh?' Wiggling his eyebrows in a seductive, teasing way, Atticus turns his body to highlight his best features, eager to draw you in.";
	LineBreak;
	say "     [bold type]How do you want to deal with him?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Kiss the incubus. He asked nicely after all.";
	say "     ([link]N[as]n[end link]) - Shake your head and ignore his lewd offer.";
	if player consents:
		LineBreak;
		say "     Moving closer to the attractive young demon, you're welcomed with open arms by Lilith's son, with him drawing you into a close embrace. Atticus naked chest rubs against your body as he plasters himself to your side, strong arms holding you tight as he lets his hands wander and feels you up. His lips find yours in a breathtaking instant, followed by his tongue slipping between your lips and playfully wrestling with yours as you make out. Sharing your breath and gazing deep into your eyes with his amber irises full of burning lust, the sex demon draws you under his spell, keeping you close for you don't know how long. Then finally, he releases your form and takes the tiniest step back, just enough so that he can nod down towards his crotch as he says, 'My, my, daddy! You're good at showing your love, but I think we've got another problem now. Wanna kiss that too and make it all better?' Following his gaze, you see Atticus erect cock, complete with a glistening drop of pre-cum at the slit.";
	else:
		say "     Giving the incubus a shake of your head has his features draw into a pout at being rejected for a second or two before he catches himself and puts his seductive smile back on. 'I'll be ready for you when you change your mind daddy, just come and join me then. You know you want to...' With that said, he turns his attention back to jerking his cock, already fully hard again after just shooting a few moments ago.";
	now PlayerMet of Atticus is true;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Atticus	"Atticus"

Atticus is a man.
ScaleValue of Atticus is 3. [human sized]
Cocks of Atticus is 1.
Cock Length of Atticus is 12.
Cock Width of Atticus is 8.
Testes of Atticus is 2.
Cunts of Atticus is 0.
Cunt Length of Atticus is 0.
Cunt Width of Atticus is 0.
Breasts of Atticus is 2. [2 nipples]
Breast Size of Atticus is 0.
[Basic Interaction states as of game start]
PlayerMet of Atticus is false.
PlayerRomanced of Atticus is false.
PlayerFriended of Atticus is false.
PlayerControlled of Atticus is false.
PlayerFucked of Atticus is false.
OralVirgin of Atticus is false.
Virgin of Atticus is true.
AnalVirgin of Atticus is false.
PenileVirgin of Atticus is false.
SexuallyExperienced of Atticus is true.
The description of Atticus is "[AtticusDesc]".
The conversation of Atticus is { "<This is nothing but a placeholder!>" }.
The scent of Atticus is "     Atticus smells nicely masculine, with just the smallest amount of sexy sweat to his body, complete with lots of pheromones that can drive almost anyone wild in lust.".

to say AtticusDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Atticus: [HP of Atticus] <- DEBUG[line break]";
	say "     Atticus has the looks of an eighteen-year old young man with a toned swimmer's build. He has absolutely no hangups about showing it off either, strolling around naked or even hard with casual ease. A pair of small, sharp horns curve up from his forehead and behind his back you can see muscular bat-like wings half-unfolded, as if ready to be laid around you or another partner to draw you in against him. The long and thin tail with a spaded tip completes the image of an attractive incubus. As Atticus notices your interest in him, he gives you an enticing smile, followed by a wink that promises anything you might want or desire.";

[
an everyturn rule:
	if AtticusRelationship > 10 and AtticusRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			if player is in Atticus's Bedroom and Atticus is nowhere:
				project the figure of Atticus_face_icon;
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A short moment later, the three of them come into the Bedroom and Atticus greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, the man sets down his gear next to the bed, quickly strips off and gets into bed, slipping under the covers dressed only in some baggy boxer shorts. His two wolves quickly follow, cuddling up to their master and getting some pats from him before all three of them doze off.";
			else if player is in Survivor Refuge and Atticus is nowhere:
				project the figure of Atticus_face_icon;
				say "     The front door is unlocked with the key and Atticus opens it, letting in his two wolves Romulus and Remus. The feral canines beat their tails, happy to arrive back home and make a beeline for you, sniffing a little before they move on. A short moment later, when Atticus is done closing the door and re-locking it securely, he greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, he vanishes into his bedroom, together with the two wolves.";
			else if player is in Atticus's Bathroom and Atticus is nowhere:
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A little while later, you hear another door - that must have been the one to the bedroom. Sounds like the three of them came back and went straight to bed.";
			move Atticus to Atticus's Bedroom;
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Atticus sleeps]
		[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Atticus sleeps in]
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if player is in Atticus's Bedroom:
				project the figure of Atticus_face_icon;
				say "     Waking up after a restful night, Atticus sits up between the two wolves cuddled up against him and stretches his arms, which gives you a good view of his broad-shouldered chest and trained body. He yawns and says good morning to you, then gently shakes Romulus and Remus awake and goes into the main room of the apartment to feed them. Atticus returns a little while later, still in nothing but his baggy boxer shorts. 'Did I miss anything exciting going on out there?' he asks with a nod to the city outside the large windows and his telescope specifically. As you shake your head, he smiles and goes to grab his usual outfit, getting dressed before he sits down at his desk.";
			else if player is in Survivor Refuge:
				say "     Suddenly, the door to the bedroom opens and Atticus steps out of it, dressed in nothing more than some baggy boxer shorts and followed by some very eager wolves. He wishes you a good morning, then quickly stops by the kitchen to feed his feral canines, ducking back into the bedroom while they're still wolfing down their food.";
			else if player is in Atticus's Bathroom:
				say "     You hear a door open and close, then happy barks by Romulus and Remus. Sounds like Atticus woke up and just went to feed them.";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if player is in Atticus's Bedroom:
				project the figure of Atticus_face_icon;
				say "     Sitting up from working at his desk, where he was updating some lists and his journal, Atticus stretches out and goes into the main room of the loft apartment.";
			else if player is in Survivor Refuge:
				project the figure of Atticus_face_icon;
				say "     Atticus comes out of the bedroom and nods to you, then sits down on the lifting bench and starts to pump a weight up and down. He keeps at it tirelessly for quite a while too - no wonder he has such a physique.";
			else if player is in Atticus's Bathroom:
				say "     You hear a door open and close somewhere nearby - the bedroom maybe? Then some fairly low, rhythmic grunting starts up in the main room of the loft apartment.";
			move Atticus to Survivor Refuge;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if player is in Survivor Refuge and Atticus is in Survivor Refuge:
				project the figure of Atticus_face_icon;
				say "     Finishing with a fairly well-rounded exercise routine, Atticus moves over to the comfortable sofa in the front half of the room and sits down on it. As he leans forward to grab a book, Romulus and Remus are already on the way to join him on the sofa, soon flanking the muscular man on both sides and pressing up against him. They sniff him happily and lap at any exposed skin, licking his salty sweat off. After a minute or two of this, with Atticus stroking his companions['] fur, the three of them quiet down and sit quietly to read - the wolves either understanding what is written in the book too, or simply enjoying the companionship with their master.";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if ((player is in Atticus's Bedroom or player is in Atticus's Bathroom) and Atticus is in Survivor Refuge):
				say "     You hear Atticus say, 'Come on guys, time for some scavenging!' The happy barks of his two wolves follow, and soon after, you hear the front door open and close.";
			else if player is in Survivor Refuge and Atticus is in Survivor Refuge:
				project the figure of Atticus_face_icon;
				say "     Going to collect his gear - backpack, baseball bat and taser - Atticus then waves the wolves up from where they have been lounging around and says, 'Come on guys, time for some scavenging!' Both Romulus as well as Remus give happy barks, tails wagging eagerly to go out with their master. Atticus bids you farewell, saying that you can stay and keep an eye on the place while he's out, then leads his companions to the door and leaves.";
			now Atticus is nowhere; [stashed in another dimension]
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, Atticus is out scavenging]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Atticus:
	say "     What do you want to talk to Atticus about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Atticus to tell you about himself";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Himself"):
					say "[AtticusTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusTalk1:
	say "     Atticus chuckles as you ask him about himself and he starts to casually play with his nipples as he thinks for a second, then replies, 'Oh, it's just the usual story. You bone mom in a bout of amazing sex, knock her up and a few hours later - boom, here I am. The world's my oyster, and I wanna fuck all of it! [one of]That includes actual oysters actually, you see, there were those freaky girls out in the surf at the coast, and I gave it to them good! Might have some grandkids out there too now, if you know what I mean.' [or]Women, men, other things - where's the difference? I can tell you, there was this one pretty boy orc who just had the most amazing ass that I just couldn't get enough of. He had a proper little bump in his stomach by the time his leather daddy came back to check on him and I had to beat a hasty retreat out a window.' [or]Women, men, other things - where's the difference? I mean, canine bitches clearly have that nice big tail as a handhold to hold on to while you fuck [']em, right? So, so convenient...' [at random]He regales you with a shockingly detailed account of his latest conquests, clearly enjoying himself quite a bit as he lays it out for you.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Atticus:
	if (lastfuck of Atticus - turns < 2): [he got fucked in the last 18 hours = 6 turns]
		say "     'Hey, I'm a horny dude, but after a certain point one can get sore. Give ma a moment, alright?' Atticus replies with a chuckle.";
	else: [ready for sex]
		say "     As you walk up to Atticus, he recognizes the lustful gleam in your eyes and licks his lips in anticipation. 'Oooh daddy, are you ready to play with me?' he says in a cocky tone, stroking a hand over his muscular chest as he does so.";
		wait for any key;
		say "[AtticusSexMenu]";

to say AtticusSexMenu:
	say "     What exactly do you plan on doing with Atticus?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Push him down to get a blowjob";
		now sortorder entry is 1;
		now description entry is "Make Atticus suck you off";
	]
	if libido of Atticus > 5 and libido of Atticus < 100:
		choose a blank row in table of fucking options;
		now title entry is "Sink to your knees and give Atticus a blowjob";
		now sortorder entry is 2;
		now description entry is "Give the handsome demon some oral pleasure";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take control and fuck Atticus's ass";
		now sortorder entry is 3;
		now description entry is "Bend him forward and give the incubus a hard pounding";
	[
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Atticus's cock in your pussy";
		now sortorder entry is 4;
		now description entry is "Get fucked by the incubus";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Atticus's cock in your ass";
	now sortorder entry is 5;
	now description entry is "Get fucked in the ass by the incubus";
	]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Push him down to get a blowjob"):
					say "[AtticusSex1]";
				if (nam is "Sink to your knees and give Atticus a blowjob"):
					say "[AtticusSex2]";
				if (nam is "Take control and fuck Atticus's ass"):
					say "[AtticusSex3]";
				if (nam is "Take Atticus's cock in your pussy"):
					say "[AtticusSex4]";
				if (nam is "Take Atticus's cock in your ass"):
					say "[AtticusSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusSex1: [oral on the player]
	say "     ...";

to say AtticusSex2: [BJ on Atticus]
	say "     Giving Atticus's shoulder a squeeze, you lean in to kiss him on the lips, at which point the young man slides his arms around you and takes control. His tongue darts into your mouth as the two of you make out, wrestling your own down in a playful show of dominance. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'I know what you want,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, can you? Your mouth watering when you think about sucking my long, hard cock! Here it is, daddy! Go on, worship it!' With that said, the incubus grasps the base of his thick piece of man-meat and wags it against your body while his other hand moves to push down on your shoulder.";
	say "     Sinking down to your knees, you look up to see the smiling face of Atticus looking down at you, just past his erect cock. He traces the tip of his index finger over the cum-slit and comes away from it with a sticky string of pre-cum, then smears the fluid over your lips. 'Open wide to receive me!' the young demon commands, proudly holding out his dick and moving to stand over you. He gleefully brushes his cum-slit against your lips even as you open your mouth and try to start sucking, only allowing you to do so once he has spread more of his pre on you. Then finally, he's inside your mouth - his warm length of demonic cock laying on your tongue and pushing further back to bump the back of your throat. Working himself back and forth, the incubus contains his impatience enough so that he can get you used to his girth, tilting back your head as he pushes down your throat eventually.";
	WaitLineBreak;
	say "     'You did such a good job in making this cock, daddy! Glad you're taking the chance to savor your handiwork now. How does it feel down your throat, eh? Leaking pre into daddy! Fuck, this is nice!' Atticus says in a gleeful tone as he works himself in and out of your mouth, patting your head. He's obviously quite into the fun of using you this way and soon proceeds to take hold of your head with both hands, then starts to face-fuck you in a rapid tempo, chuckling about the slapping noises of his balls against your chin. 'I'm gonna feed you my cum now! Ready to take a load from your own demon boy? Of course you are, daddy. Only a real cum-slut would be on their knees before their son!' With that said, Atticus takes out all the stops and really hammers into your throat hard, making it hard to even get a panted breath through your nose as he mostly blocks your airways with his cock.";
	say "     It doesn't take all that long of such harsh pounding before Atticus shouts, 'Fffuuckkkkk! Take it, slut!' His cock throbs heavily against your tongue and you can feel it in your throat as the first splash of cum is pumped into it. More and more follow after that, so many that you actually have to pat urgently against the incubus's hips so he pulls back and allows you a gasp of air. It's not like he doesn't enjoy that part of it either though, as any cum that isn't blown down your throat gets used to paint your face white. As his orgasm slowly ebbs off, Atticus looks down at you with a grin, inspecting his handiwork. 'Hmm, that's a great look on you daddy! I might just forgive you for being an absentee dad and missing all the hours of my childhood if you keep this up.'";
	NPCSexAftermath Player receives "OralCock" from Atticus;

to say AtticusSex3: [ass fuck on Atticus]
	say "     Giving Atticus's shoulder a squeeze, you move your hand to the back of his head and draw him towards you, meeting the incubus's smiling lips in a demanding kiss. As you invade his mouth with your tongue, wrestling his appendage down in a bout for supremacy over the cocky young man, he replies in kind, tensing is muscles and spreading his wings a bit further as if to appear bigger and more powerful. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'Someone's eager to be with me here,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, getting hard and dripping at just the thought of feeling my dick in you. Pounding in and out of your mouth or ass, eh? Pleasuring your very own son!'";
	say "     Being the sex-demon that he is, it's almost certain that Atticus knows exactly what you want to do to him, but still the young buck can't help but tease and prod you a little. Which in the end just makes it so much more satisfying to push against his chest and make him stumble back against the wall, then catching his wrists one by one to pin them against the soot-stained stone. Holding him tight like that, you kiss his full lips forcefully before moving on to lick the side of his neck and nibbling at his earlobe. Grunting into his ear that you'll make him your moaning bitch, you then grab his shoulder and turn Atticus around, overwhelming the token resistance he puts up against you. Man-handling the incubus, you get him standing against the wall in a classic police pat-down pose, legs spread and hands planted wide apart against the stone.";
	WaitLineBreak;
	say "     'You'll never break me, copper!' Atticus growls playfully over his shoulder, his tail waving sineously in front of your face, then pointing down towards his ass with the spaded tip. Happy to follow the invitation, you quickly free your [cock of player] erection and smack it a few times against the globes your demonic offspring's amazing bubble butt. Gathering a bit of spit to let drip down onto your shaft, you then line yourself up with his rear entrance and thrust in with a sharp push, sinking into the young man with a satisfied grunt in both of your voices. 'Fffuuckkk!' he groans out lustfully, raising his ass a little to receive you. 'Soo good! Love the girth of your prick inside me, daddy! Pound me, I've been a bad, bad boy!'";
	say "     Sinking all the way into the incubus's tight hole, you have to grab hold of his shoulders to keep standing as he squeezes his muscles around your length and gives you a mind-bogglingly good sensation that way. He doesn't let off doing that afterwards either, making every thrust into him akin to a hand closing around your cock and milking it. 'Feels good, doesn't it daddy?' Atticus asks over his shoulder, that challenging tone rising back in his voice as he can't help but needle you. This time, you've got enough of his cocky attitude though and with a quick grab, you snatch his tail and shove the spaded tip into his mouth, telling him to suck it and be quiet. Finally having shut your incubus boy-toy up, you pull yourself out all the way from his ass, then shove your prick back into him all of a sudden, followed by jack-hammering in and out of his fuckhole too fast for him to start his tricks again.";
	WaitLineBreak;
	say "     Mercilessly pounding the young demon's ass, you reduce him to moaning and grunting around the tail-tip still in his mouth, the muscles in his arms flexing as he braces against your thrusts. Reaching around, you find his own cock fully erect and literally dripping long streaks of pre, making your fingers slick and wet. Wrapping them around his boner, you jerk your sexy partner in rhythm with your own deep thrusts, driving his arousal to new heights. You can hear his breaths coming faster and faster and soon, there's a throb of his cock as a spurt of pre splashes out - at which point you stop your thrusts and just clamp your fingers tight around his length. Atticus moves to grind back against you for a second, only to be brought to a stand still by your other hand tightly clasping his hip. Leaning forward, you grunt into his ear that you're in control now and will decide if and when he can come.";
	say "     Pulling his tail-tip out of his mouth, Atticus breathlessly pants out, 'Yes daddy! Now fuck me, please!' You've got little doubt that he'll be back to his cocky self soon after, but for now, that's exactly what you wanted to hear, so you tell him what a good boy he is and hammer into him hard, your hand jerking him off in a furious tempo. 'Nnnnghhhh!' Atticus shouts out loud, filling the chapel with his moan of pleasure as his dick erupts like a cum-volcano, splattering the wall with creamy spurts of his seed. The young man's hole quivers and flexes around you as he orgasms, creating the most exquisite feeling for your cock and driving you over the edge right along with him. Thrusting deep, you grind against his rear as you paint his insides white, staking your claim to this sexy man, at least for a little while.";
	WaitLineBreak;
	say "     As your shared orgasms run their course, Atticus eventually switches over to brace himself against the wall with the edges of his strong wings, freeing his arms for other things. He slides his hands along your sides and moans in pleasure, then says, 'That was amazing daddy! Feeling you inside me, and now I'm so warm and full.' He tilts his ass up and down a little, grinding against you and enjoying himself before adding, 'Too bad you're going soft already now, I'd love to have you and your cum inside me longer.' Shaking your head about the incessant goading the cocky demon dishes out at the slightest opportunity, you reply that you have just the thing to help him out with that. 'Oh, what's that daddy?' he asks and wiggles his ass left and right, making you groan as that squeezes your cock.";
	say "     Pulling your softening length out of him once he holds still again a moment later, you then grab his tail and wedge the spit-slick spade against his hole, plugging the incubus's asshole with his own appendage! 'Damn! Nice idea,' Atticus almost drools as he experimentally pushes his spade deeper, then retracts it a little again. With the sex-demon busy with himself for a while now, you have the time to get dressed again in peace.";
	NPCSexAftermath Atticus receives "AssFuck" from Player;

to say AtticusSex4: [pussy-fucking by Atticus]
	say "     ...";

to say AtticusSex5: [ass-fucking by Atticus]
	say "     ...";

Atticus ends here.
