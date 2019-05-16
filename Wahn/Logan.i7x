Version 1 of Logan by Wahn begins here.
[Version 1 - Put into its own file]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Logan	"Logan"

Logan is a man.
ScaleValue of Logan is 3. [human sized]
Cock Count of Logan is 1.
Cock Length of Logan is 14.
Ball Size of Logan is 8.
Ball Count of Logan is 2.
Cunt Count of Logan is 0.
Cunt Depth of Logan is 0.
Cunt Tightness of Logan is 0.
Nipple Count of Logan is 2. [2 nipples]
Breast Size of Logan is 0.
[Basic Interaction states as of game start]
PlayerMet of Logan is false.
PlayerRomanced of Logan is false.
PlayerFriended of Logan is false.
PlayerControlled of Logan is false.
PlayerFucked of Logan is false.
OralVirgin of Logan is true.
Virgin of Logan is true.
AnalVirgin of Logan is true.
PenileVirgin of Logan is false.
SexuallyExperienced of Logan is true.
MainInfection of Logan is "Wolverine Guard".
The description of Logan is "[LoganDesc]".
The conversation of Logan is { "<This is nothing but a placeholder!>" }.
The scent of Logan is "     Logan smells nicely masculine, with just the smallest amount of sexy sweat to his body, complete with lots of pheromones that can drive almost anyone wild in lust.".

to say LoganDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Logan: [HP of Logan] <- DEBUG[line break]";
	say "     Dressed in a security guard uniform so dark blue it almost appears black, Logan presents an impressive image with his broad shoulders and powerful body standing on two digitigrade paws. Just like the 'Wolverine Security' badge on his chest proclaims, he's an anthro animal, and you have little doubt that he follows the wolverine stereotype of being truly ferocious in a fight. In theory that might be a comforting thought for people he's supposed to protect, but something about the look in his eyes as he studies those around him sends a nervous tingle up your spine. The tooth-showing smile that usually follows only underlines the feeling, appearing not so much friendly but instead predatory as he imagines what he could do to the target of his attention.";
	say "     As the muscular male notices your gaze upon himself, he gives you a knowing nod as if to confirm your impressions, followed by a rumbling chuckle from the depth of his chest. Straightening the uniform cap on his head, he then turns back to watching his surroundings with silent intensity.";

[
an everyturn rule:
	if LoganRelationship > 10 and LoganRelationship < 90:
		if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight]
			if Player is in Logan's Bedroom and Logan is nowhere:
				project the figure of Logan_face_icon;
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A short moment later, the three of them come into the Bedroom and Logan greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, the man sets down his gear next to the bed, quickly strips off and gets into bed, slipping under the covers dressed only in some baggy boxer shorts. His two wolves quickly follow, cuddling up to their master and getting some pats from him before all three of them doze off.";
			else if Player is in Survivor Refuge and Logan is nowhere:
				project the figure of Logan_face_icon;
				say "     The front door is unlocked with the key and Logan opens it, letting in his two wolves Romulus and Remus. The feral canines beat their tails, happy to arrive back home and make a beeline for you, sniffing a little before they move on. A short moment later, when Logan is done closing the door and re-locking it securely, he greets you, but quickly makes clear that he's fairly tired and needs some rest. Yawning, he adds that you of course can feel free to stay longer, just to please not wake him. And with that, he vanishes into his bedroom, together with the two wolves.";
			else if Player is in Logan's Bathroom and Logan is nowhere:
				say "     You hear the front door open and close, then the barks of Romulus and Remus as they happily arrive back home. A little while later, you hear another door - that must have been the one to the bedroom. Sounds like the three of them came back and went straight to bed.";
			move Logan to Logan's Bedroom;
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn - unused, Logan sleeps]
		[else if TimekeepingVar is 7 or TimekeepingVar is -1:] [early morning - unused, Logan sleeps in]
		else if TimekeepingVar is 6 or TimekeepingVar is -2: [mid-morning]
			if Player is in Logan's Bedroom:
				project the figure of Logan_face_icon;
				say "     Waking up after a restful night, Logan sits up between the two wolves cuddled up against him and stretches his arms, which gives you a good view of his broad-shouldered chest and trained body. He yawns and says good morning to you, then gently shakes Romulus and Remus awake and goes into the main room of the apartment to feed them. Logan returns a little while later, still in nothing but his baggy boxer shorts. 'Did I miss anything exciting going on out there?' he asks with a nod to the city outside the large windows and his telescope specifically. As you shake your head, he smiles and goes to grab his usual outfit, getting dressed before he sits down at his desk.";
			else if Player is in Survivor Refuge:
				say "     Suddenly, the door to the bedroom opens and Logan steps out of it, dressed in nothing more than some baggy boxer shorts and followed by some very eager wolves. He wishes you a good morning, then quickly stops by the kitchen to feed his feral canines, ducking back into the bedroom while they're still wolfing down their food.";
			else if Player is in Logan's Bathroom:
				say "     You hear a door open and close, then happy barks by Romulus and Remus. Sounds like Logan woke up and just went to feed them.";
		else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
			if Player is in Logan's Bedroom:
				project the figure of Logan_face_icon;
				say "     Sitting up from working at his desk, where he was updating some lists and his journal, Logan stretches out and goes into the main room of the loft apartment.";
			else if Player is in Survivor Refuge:
				project the figure of Logan_face_icon;
				say "     Logan comes out of the bedroom and nods to you, then sits down on the lifting bench and starts to pump a weight up and down. He keeps at it tirelessly for quite a while too - no wonder he has such a physique.";
			else if Player is in Logan's Bathroom:
				say "     You hear a door open and close somewhere nearby - the bedroom maybe? Then some fairly low, rhythmic grunting starts up in the main room of the loft apartment.";
			move Logan to Survivor Refuge;
		else if TimekeepingVar is 4 or TimekeepingVar is -4: [mid afternoon]
			if Player is in Survivor Refuge and Logan is in Survivor Refuge:
				project the figure of Logan_face_icon;
				say "     Finishing with a fairly well-rounded exercise routine, Logan moves over to the comfortable sofa in the front half of the room and sits down on it. As he leans forward to grab a book, Romulus and Remus are already on the way to join him on the sofa, soon flanking the muscular man on both sides and pressing up against him. They sniff him happily and lap at any exposed skin, licking his salty sweat off. After a minute or two of this, with Logan stroking his companions['] fur, the three of them quiet down and sit quietly to read - the wolves either understanding what is written in the book too, or simply enjoying the companionship with their master.";
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if ((player is in Logan's Bedroom or player is in Logan's Bathroom) and Logan is in Survivor Refuge):
				say "     You hear Logan say, 'Come on guys, time for some scavenging!' The happy barks of his two wolves follow, and soon after, you hear the front door open and close.";
			else if Player is in Survivor Refuge and Logan is in Survivor Refuge:
				project the figure of Logan_face_icon;
				say "     Going to collect his gear - backpack, baseball bat and taser - Logan then waves the wolves up from where they have been lounging around and says, 'Come on guys, time for some scavenging!' Both Romulus as well as Remus give happy barks, tails wagging eagerly to go out with their master. Logan bids you farewell, saying that you can stay and keep an eye on the place while he's out, then leads his companions to the door and leaves.";
			now Logan is nowhere; [stashed in another dimension]
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, Logan is out scavenging]
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Logan:
	say "     What do you want to talk to Logan about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Logan to tell you about himself";
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
				if (nam is "Himself"):
					say "[LoganTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LoganTalk1:
	say "     Logan chuckles as you ask him about himself and he starts to casually play with his nipples as he thinks for a second, then replies, 'Oh, it's just the usual story. You bone mom in a bout of amazing sex, knock her up and a few hours later - boom, here I am. The world's my oyster, and I wanna fuck all of it! [one of]That includes actual oysters actually, you see, there were those freaky girls out in the surf at the coast, and I gave it to them good! Might have some grand-kids out there too now, if you know what I mean.' [or]Women, men, other things - where's the difference? I can tell you, there was this one pretty boy orc who just had the most amazing ass that I just couldn't get enough of. He had a proper little bump in his stomach by the time his leather daddy came back to check on him and I had to beat a hasty retreat out a window.' [or]Women, men, other things - where's the difference? I mean, canine bitches clearly have that nice big tail as a handhold to hold on to while you fuck [']em, right? So, so convenient...' [at random]He regales you with a shockingly detailed account of his latest conquests, clearly enjoying himself quite a bit as he lays it out for you.";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Logan:
	if (lastfuck of Logan - turns < 2): [he got fucked in the last 18 hours = 6 turns]
		say "     'Hey, I'm a horny dude, but after a certain point one can get sore. Give ma a moment, alright?' Logan replies with a chuckle.";
	else: [ready for sex]
		say "     As you walk up to Logan, he recognizes the lustful gleam in your eyes and licks his lips in anticipation. 'Oooh daddy, are you ready to play with me?' he says in a cocky tone, stroking a hand over his muscular chest as he does so.";
		wait for any key;
		say "[LoganSexMenu]";

to say LoganSexMenu:
	say "     What exactly do you plan on doing with Logan?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	if Player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Push him down to get a blowjob";
		now sortorder entry is 1;
		now description entry is "Make Logan suck you off";
	]
	choose a blank row in table of fucking options;
	now title entry is "Sink to your knees and give Logan a blowjob";
	now sortorder entry is 2;
	now description entry is "Give the handsome demon some oral pleasure";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take control and fuck Logan's ass";
		now sortorder entry is 3;
		now description entry is "Bend him forward and give the incubus a hard pounding";
	[
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Logan's cock in your pussy";
		now sortorder entry is 4;
		now description entry is "Get fucked by the incubus";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Logan's cock in your ass";
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Push him down to get a blowjob"):
					say "[LoganSex1]";
				if (nam is "Sink to your knees and give Logan a blowjob"):
					say "[LoganSex2]";
				if (nam is "Take control and fuck Logan's ass"):
					say "[LoganSex3]";
				if (nam is "Take Logan's cock in your pussy"):
					say "[LoganSex4]";
				if (nam is "Take Logan's cock in your ass"):
					say "[LoganSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LoganSex1: [oral on the player]
	say "     ...";

to say LoganSex2: [BJ on Logan]
	say "     Giving Logan's shoulder a squeeze, you lean in to kiss him on the lips, at which point the young man slides his arms around you and takes control. His tongue darts into your mouth as the two of you make out, wrestling your own down in a playful show of dominance. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'I know what you want,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, can you? Your mouth watering when you think about sucking my long, hard cock! Here it is, daddy! Go on, worship it!' With that said, the incubus grasps the base of his thick piece of man-meat and wags it against your body while his other hand moves to push down on your shoulder.";
	say "     Sinking down to your knees, you look up to see the smiling face of Logan looking down at you, just past his erect cock. He traces the tip of his index finger over the cum-slit and comes away from it with a sticky string of pre-cum, then smears the fluid over your lips. 'Open wide to receive me!' the young demon commands, proudly holding out his dick and moving to stand over you. He gleefully brushes his cum-slit against your lips even as you open your mouth and try to start sucking, only allowing you to do so once he has spread more of his pre on you. Then finally, he's inside your mouth - his warm length of demonic cock laying on your tongue and pushing further back to bump the back of your throat. Working himself back and forth, the incubus contains his impatience enough so that he can get you used to his girth, tilting back your head as he pushes down your throat eventually.";
	WaitLineBreak;
	say "     'You did such a good job in making this cock, daddy! Glad you're taking the chance to savor your handiwork now. How does it feel down your throat, eh? Leaking pre into daddy! Fuck, this is nice!' Logan says in a gleeful tone as he works himself in and out of your mouth, patting your head. He's obviously quite into the fun of using you this way and soon proceeds to take hold of your head with both hands, then starts to face-fuck you in a rapid tempo, chuckling about the slapping noises of his balls against your chin. 'I'm gonna feed you my cum now! Ready to take a load from your own demon boy? Of course you are, daddy. Only a real cum-slut would be on their knees before their son!' With that said, Logan takes out all the stops and really hammers into your throat hard, making it hard to even get a panted breath through your nose as he mostly blocks your airways with his cock.";
	say "     It doesn't take all that long of such harsh pounding before Logan shouts, 'Fffuuckkkkk! Take it, slut!' His cock throbs heavily against your tongue and you can feel it in your throat as the first splash of cum is pumped into it. More and more follow after that, so many that you actually have to pat urgently against the incubus's hips so he pulls back and allows you a gasp of air. It's not like he doesn't enjoy that part of it either though, as any cum that isn't blown down your throat gets used to paint your face white. As his orgasm slowly ebbs off, Logan looks down at you with a grin, inspecting his handiwork. 'Hmm, that's a great look on you daddy! I might just forgive you for being an absentee dad and missing all the hours of my childhood if you keep this up.'";
	NPCSexAftermath Player receives "OralCock" from Logan;

to say LoganSex3: [ass fuck on Logan]
	say "     Giving Logan's shoulder a squeeze, you move your hand to the back of his head and draw him towards you, meeting the incubus's smiling lips in a demanding kiss. As you invade his mouth with your tongue, wrestling his appendage down in a bout for supremacy over the cocky young man, he replies in kind, tensing is muscles and spreading his wings a bit further as if to appear bigger and more powerful. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'Someone's eager to be with me here,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, getting hard and dripping at just the thought of feeling my dick in you. Pounding in and out of your mouth or ass, eh? Pleasuring your very own son!'";
	say "     Being the sex-demon that he is, it's almost certain that Logan knows exactly what you want to do to him, but still the young buck can't help but tease and prod you a little. Which in the end just makes it so much more satisfying to push against his chest and make him stumble back against the wall, then catching his wrists one by one to pin them against the soot-stained stone. Holding him tight like that, you kiss his full lips forcefully before moving on to lick the side of his neck and nibbling at his earlobe. Grunting into his ear that you'll make him your moaning bitch, you then grab his shoulder and turn Logan around, overwhelming the token resistance he puts up against you. Man-handling the incubus, you get him standing against the wall in a classic police pat-down pose, legs spread and hands planted wide apart against the stone.";
	WaitLineBreak;
	say "     'You'll never break me, copper!' Logan growls playfully over his shoulder, his tail waving sinuously in front of your face, then pointing down towards his ass with the spaded tip. Happy to follow the invitation, you quickly free your [cock of Player] erection and smack it a few times against the globes your demonic offspring's amazing bubble butt. Gathering a bit of spit to let drip down onto your shaft, you then line yourself up with his rear entrance and thrust in with a sharp push, sinking into the young man with a satisfied grunt in both of your voices. 'Fffuuckkk!' he groans out lustfully, raising his ass a little to receive you. 'Soo good! Love the girth of your prick inside me, daddy! Pound me, I've been a bad, bad boy!'";
	say "     Sinking all the way into the incubus's tight hole, you have to grab hold of his shoulders to keep standing as he squeezes his muscles around your length and gives you a mind-bogglingly good sensation that way. He doesn't let off doing that afterwards either, making every thrust into him akin to a hand closing around your cock and milking it. 'Feels good, doesn't it daddy?' Logan asks over his shoulder, that challenging tone rising back in his voice as he can't help but needle you. This time, you've got enough of his cocky attitude though and with a quick grab, you snatch his tail and shove the spaded tip into his mouth, telling him to suck it and be quiet. Finally having shut your incubus boy-toy up, you pull yourself out all the way from his ass, then shove your prick back into him all of a sudden, followed by jack-hammering in and out of his fuckhole too fast for him to start his tricks again.";
	WaitLineBreak;
	say "     Mercilessly pounding the young demon's ass, you reduce him to moaning and grunting around the tail-tip still in his mouth, the muscles in his arms flexing as he braces against your thrusts. Reaching around, you find his own cock fully erect and literally dripping long streaks of pre, making your fingers slick and wet. Wrapping them around his boner, you jerk your sexy partner in rhythm with your own deep thrusts, driving his arousal to new heights. You can hear his breaths coming faster and faster and soon, there's a throb of his cock as a spurt of pre splashes out - at which point you stop your thrusts and just clamp your fingers tight around his length. Logan moves to grind back against you for a second, only to be brought to a stand still by your other hand tightly clasping his hip. Leaning forward, you grunt into his ear that you're in control now and will decide if and when he can come.";
	say "     Pulling his tail-tip out of his mouth, Logan breathlessly pants out, 'Yes daddy! Now fuck me, please!' You've got little doubt that he'll be back to his cocky self soon after, but for now, that's exactly what you wanted to hear, so you tell him what a good boy he is and hammer into him hard, your hand jerking him off in a furious tempo. 'Nnnnghhhh!' Logan shouts out loud, filling the chapel with his moan of pleasure as his dick erupts like a cum-volcano, splattering the wall with creamy spurts of his seed. The young man's hole quivers and flexes around you as he orgasms, creating the most exquisite feeling for your cock and driving you over the edge right along with him. Thrusting deep, you grind against his rear as you paint his insides white, staking your claim to this sexy man, at least for a little while.";
	WaitLineBreak;
	say "     As your shared orgasms run their course, Logan eventually switches over to brace himself against the wall with the edges of his strong wings, freeing his arms for other things. He slides his hands along your sides and moans in pleasure, then says, 'That was amazing daddy! Feeling you inside me, and now I'm so warm and full.' He tilts his ass up and down a little, grinding against you and enjoying himself before adding, 'Too bad you're going soft already now, I'd love to have you and your cum inside me longer.' Shaking your head about the incessant goading the cocky demon dishes out at the slightest opportunity, you reply that you have just the thing to help him out with that. 'Oh, what's that daddy?' he asks and wiggles his ass left and right, making you groan as that squeezes your cock.";
	say "     Pulling your softening length out of him once he holds still again a moment later, you then grab his tail and wedge the spit-slick spade against his hole, plugging the incubus's asshole with his own appendage! 'Damn! Nice idea,' Logan almost drools as he experimentally pushes his spade deeper, then retracts it a little again. With the sex-demon busy with himself for a while now, you have the time to get dressed again in peace.";
	NPCSexAftermath Logan receives "AssFuck" from Player;

to say LoganSex4: [pussy-fucking by Logan]
	say "     ...";

to say LoganSex5: [ass-fucking by Logan]
	say "     ...";

to say LoganElijahThreesomeMenu:
	say "     What exactly do you plan on doing with Logan and Elijah?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Get a shared blowjob, with both of them on their knees";
		now sortorder entry is 1;
		now description entry is "Make Logan and Elijah service you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sink to your knees and worship both of their dicks";
	now sortorder entry is 2;
	now description entry is "Let them use your mouth";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Spit-roast Logan";
		now sortorder entry is 3;
		now description entry is "Bend him the incubus over the altar and fuck him from both ends";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Spit-roast Elijah";
		now sortorder entry is 4;
		now description entry is "Bend him the incubus over the altar and fuck him from both ends";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Be spit-roasted between them";
		now sortorder entry is 5;
		now description entry is "Take the incubus and angel at the same time, front and back";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Do a three man chain-fuck";
		now sortorder entry is 6;
		now description entry is "Have some anal fun";
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
				if (nam is "Get a shared blowjob, with both of them on their knees"):
					say "[LoganEliThreesomeSex1]";
				if (nam is "Sink to your knees and worship both of their dicks"):
					say "[LoganEliThreesomeSex2]";
				if (nam is "Spit-roast Logan"):
					say "[LoganEliThreesomeSex3]";
				if (nam is "Spit-roast Elijah"):
					say "[LoganEliThreesomeSex4]";
				if (nam is "Be spit-roasted between them"):
					say "[LoganEliThreesomeSex5]";
				if (nam is "Do a three man chain-fuck"):
					say "[LoganEliThreesomeSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Changing your mind about this whole thing, you clear your throat and tell Logan and Elijah that you've got things to do. 'But dad! I wanna fuck!' comes the immediate groaned-out reply from your demonic offspring, followed by Elijah chuckling and telling him, 'I'll take care of you, boy-slut!' You use the moment of distraction to hurry out of the chapel, debris and gravel crunching under your feet and not quite covering the moans and grunts that start up behind you.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say LoganEliThreesomeSex1: [two man oral]
	say "     Quickly peeling off what gear and clothing you have, you step up to the waiting men with your [cock of Player] shaft leading the way, already hard and ready from watching their antics. The two of them greet you with hungry looks and lewd grins. For a second, it seems like Elijah is going to take the lead, but before he can you've already given the command to get on their knees. The incubus immediately complies, letting out a playfully over-acted moan as he sinks down. '[if Charisma of Logan is 1]Yes daddy, anything for you,[else]I love it when [SubjectPro of Player]'s all bossy,[end if]' the young demon says as he tugs on his angelic fuck-buddy's hand, having to do it twice before Elijah shrugs and joins him on the ground before you. Looking down on the handsome faces of your two partners, one framed in long black hair, the other with red hair and pointy little horns, you feel your prick throb in your hand.";
	say "     It may be the middle of the nanite apocalypse, but moments like this almost make the fall of civilization and having to fight for your life worth it all on their own. Such a perfect opportunity to have two sexy studs to play with, one created by yourself when you bred and knocked up Lilith, the other the result of you giving him a hard shove to fall from his lofty status to become a sex fiend. As these thoughts go through your mind, your cum-slit leaks a drop of pre, forming a glistening bead at the tip of your dick. It starts to run down the curve of your erection's head a little as more pre-cum wells up, then suddenly is stopped by Logan's tongue as the demon laps it up. 'Mmmh, tasty!' he sighs in pleasure, being joined by Elijah a second later, who kisses the side of your shaft and mouths at it, his tongue playing along the underside.";
	WaitLineBreak;
	say "     Putting your hands on the heads of both of your willing sluts, you lean your head back and close your eyes for the moment, fully concentrating on the duo of mouths and tongues teasing and caressing your sex. Almost constantly, you have one and sometimes even two tongues lapping at your dickhead, intermixed with eager lips sliding over your head to lightly suckle at it. Their hands glide up and down along your thighs and back to your buttocks, stroking and feeling you up, with the one that isn't working your dickhead usually licking your shaft or taking your balls into his mouth and playing over them with his tongue. Your burning libido is audible in your voice as you praise them for their service, moan and grunt at the things they do to pleasure your body. For a while, you are simply content to have them servicing you at their own pace and revel in the sensations, but as you start to feel the familiar tingle of a nearing orgasm in your balls, you decide you want more.";
	say "     Looking down at your happily sucking and licking sluts, you get a bit of a firmer grip of their heads and guide them to work on both sides of your erection at the same time. Eye to eye with each other, the demon and angel's lips form an almost unbroken circle around your shaft, with the tips of their tongues playing over your sex. It is a lot of fun to hump your hips back and forth to feel the oral pleasure zone all along your dick, rapidly bringing you closer and closer to the point of no return. When the rising urge to come can barely be denied any longer, you withdraw from between them with a sharp pull, making Logan's and Elijah's lips meet as they suddenly lose contact with the dick they were servicing. Your two kneeling studs take this in stride, tongues wrestling with each other as they start to make out lustfully. And that is when you finally erupt, blasting thick ropes of seed to paint your kissing sluts faces in white splatters.";
	WaitLineBreak;
	say "     Logan and Elijah bask in the fruits of their oral service, stopping their kisses just long enough to lick up this or that streak of cum and then sharing it with the other. Now that the edge of your own lust is ebbing, you manage to focus past your own dick and their faces, seeing that the two of them are joined in another way: Logan is holding their dicks together in his hands, one atop the other as he's stroking the two shafts in a rapid pace. Meanwhile, Elijah humps his hips back and forth a little to grind against his grasp and rub the demon's cock with his own. With you out of the picture, the two intensify their efforts to please each other, which results in an explosive finish before much longer, with Logan starting to blast his infernal seed over Elijah's crotch while the angel in turn covers his balls and inner thighs with his own cum. Sinking forward to lean against each other as they pant and gasp for breath, your two fuck buddies ride out their shared orgasms together.";
	say "     'That was FUN!' Logan bursts out with an eager smile, looking up at you, then down again at Elijah. 'Wanna do so again, sometime soon?' he asks in an eager tone, drawing a laugh from Elijah who wipes up the cum from his crotch with one hand and raises it to shove two cum-dripping fingers between Logan's lips. As the incubus sucks his own load off, the fallen angel replies, 'Who could resist such an eager little whore? You know[if Player is not defaultnamed] [Name of Player],[else],[end if] I think I'll have to come by to visit this ruin regularly from now on. What it's lacking in amenities it more than makes up in the slutty boy-toy.' Laughing along with him and watching Elijah pull Logan into a demanding kiss, you saunter back over to your dropped gear and get dressed.";
	NPCSexAftermath Logan receives "OralCock" from Player;
	NPCSexAftermath Elijah receives "OralCock" from Player;

to say LoganEliThreesomeSex2:
	say "     ...";

to say LoganEliThreesomeSex3:
	say "     ...";

to say LoganEliThreesomeSex4:
	say "     ...";

to say LoganEliThreesomeSex5:
	say "     ...";

to say LoganEliThreesomeSex6:
	say "     ...";

Logan ends here.
