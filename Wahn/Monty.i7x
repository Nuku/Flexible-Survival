Version 1 of Monty by Wahn begins here.
[Version 1 - Put into its own file]

[ Monty, the NPC                                                        ]
[ Libido of Monty - sexual interactions                                 ]
[   0: nothing yet since the meeting event                              ]
[   1: player didn't offer help with his toys                           ]
[   2: player helped him train                                          ]

Section 1 - events

after going to Parade Ground while (Lone Soldier is resolved and Resolution of Lone Soldier is 1 or Resolution of Lone Soldier is 2):
	say "     As you stroll onto the parade ground and start to look around, you're suddenly approached by a muscular, African-American man with a surprised expression on his face. He's about six foot tall, shaved bald, and you've seen him before - in fact, you've seen pretty much all of him, down to the chocolate-brown buns of his ass. Remembering how you encountered Monty on the streets, culminating in [if Resolution of Lone Soldier is 1]watching a heavy load of minotaur cum leak from his ass[else]eating a tasty load of minotaur cum from his ass[end if], an inevitable grin crosses your features as you greet him. 'What the hell are you doing here?' the man asks, starting out a little loud and then quickly dropping to a half-whisper as some others turn to look what's going on. While you're still thinking of a reply, he meets your eyes, then gives a minute nod to the bystanders and adds for their ears, 'You're late for the debriefing. Come on, gotta hurry up!'";
	say "     Grabbing your upper arm with a strong hand, the soldier pulls you along with him to the east, passing through a few rows of smaller tents until you find yourself standing before the windowless side wall of an office building, right next to where a crashed city bus is sticking through the wall. It's a fairly out of the way corner of the camp, so just the right spot for a private conversation. 'So. What's going on here? You helped me out with that hyena out there on the streets, and after that... well, you know what you did. And now you're just casually wandering into a secure army camp?' For a second, you wonder how he'd react if you said that the camp isn't really that secure, what with their own horny minotaur bull breeding [if HP of Adam > 3]both male and female soldiers[else]all of the strapping soldier hunks[end if] right in the center and everyone's reasoning pretty out of whack given the constant cloud of the bull-man's musk inflaming people's libido pretty fiercely. Might not be the best of options to say, though.";
	LineBreak;
	say "     [bold type]After a short pause to think about it, you say:[roman type][line break]";
	say "     [link](1)[as]1[end link] - You're an informant and have access for your intel.";
	say "     [link](2)[as]2[end link] - You're a soldier too.";
	say "     [link](3)[as]3[end link] - Security isn't the best really. It was easy to talk your way in.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to say you're an informant, [link]2[end link] to pretend you're a soldier or [link]3[end link] to admit you lied your way in.";
	if calcnumber is 1:
		LineBreak;
		say "     Your quick-fire explanation for Monty's questions is that you're a local informant and have been allowed access to the camp so you can report what you know. He listens to your words, frowning a little as he mulls it over, then nods. 'That... makes sense. I guess I should thank you for your patriotism and determination, focusing on what's important despite the other impulses that being in this place puts in your head.' Pressing his lips together, the black man then looks around to make sure no one is in earshot and asks, 'Err, you didn't report about our encounter yet, did you? How it ended, especially.' Embarrassment is clearly written on his face, even though his dark skin hides any blush that might be there. Putting an understanding smile on your face, you ensure him that none of that has been shared with anyone.";
	else if calcnumber is 2:
		LineBreak;
		say "     You start to explain that you're also a soldier, but Monty quickly shoots you down by asking for your unit and other specifics, which you don't have any proper answers to. He frowns, looking you up and down, then reaches out to grasp your shoulder, 'People bought that? Really? Listen, I don't think you're a bad sort, and don't want to cause trouble by exposing you. One mostly sane civvy wandering about in the camp won't cause issues in the end. Still, don't try that line with anyone else, you hear me?' He holds your gaze with an intense expression until you nod in assent. 'Good. Now, something else...' Pressing his lips together, the black man then looks around to make sure no one is in earshot and asks, 'Err, you didn't tell anyone about our encounter, did you? How it ended, especially.' Embarrassment is clearly written on his face, even though his dark skin hides any blush that might be there. Putting an understanding smile on your face, you ensure him that none of that has been shared with anyone.";
	else if calcnumber is 3:
		LineBreak;
		say "     You clear your throat and admit to him that it was fairly easy to gain access to the camp with a little bit of lying. Monty frowns as he hears this, then looks you up and down. 'I guess with the usual behavior of the infected, someone simply walking up and having a chat would seem fairly believable. Listen, I don't think you're a bad sort, and don't want to cause trouble by exposing you. One mostly sane civvy wandering about in the camp won't cause issues in the end. Still, you better be on your best manners!' He holds your gaze with an intense expression until you nod in assent. 'Good. Now, something else...' Pressing his lips together, the black man then looks around to make sure no one is in earshot and asks, 'Err, you didn't tell anyone about our encounter, did you? How it ended, especially.' Embarrassment is clearly written on his face, even though his dark skin hides any blush that might be there. Putting an understanding smile on your face, you ensure him that none of that has been shared with anyone.";
	say "     'Thanks. I might have glossed over it a bit in my after-action report when I got back to the camp. As far as that goes, there was just some unfortunate 'slippage' during the heat of the action when fighting some hyenas.' Rubbing the back of his neck and blowing out his breath, Monty looks aside for a few seconds, then catches himself and chuckles under his breath as he looks back at you. 'Anyways, thanks for understanding. By the way, I'm in the tent over there, with nine other guys, so you know where to find me if you wanna talk. Just don't bring up any embarrassing topics unless we're alone.' That said, he walks you over through the rows of tents, stopping in front of his own. 'Got some tasks to do right now, but see ya later, alright?'";
	wait for any key;
	move Monty to Soldier Tents;
	move Player to Soldier Tents;

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Monty	"Monty"

Monty is a man.
The description of Monty is "[MontyDesc]";

The conversation of Monty is { "Oh, hello." }.

to say MontyDesc:
	if debugactive is 1:
		say "     DEBUG -> Dexterity: [Dexterity of Monty], HP: [Libido of Monty], Libido: [Libido of Monty], Lust: [lust of Monty], Thirst: [thirst of Monty] <- DEBUG";
	project Figure of Monty_clothed_icon;
	say "     Montgomery Freeman is an African-American soldier in his early-twenties, about six feet tall and quite well built - with his green army shirt stretching over bulging pecs and biceps. His head is shaved bald, with not a trace of hair left on the smooth black skin. He gives you a friendly nod as he becomes aware of your attention.";

The scent of Monty is "     Monty has a nice masculine human smell.".


instead of conversing Monty:
	project Figure of Monty_clothed_icon;
	say "     As you approach to talk to the black soldier, he gives a casual nod towards the back of the tent you stand in front of, leading the way. Soon, you find yourself standing before the windowless side wall of an office building, right next to where a crashed city bus is sticking through the wall. It's a fairly out of the way corner of the camp, so just the right spot for a private conversation. ";
	LineBreak;
	say "     [bold type]What do you want to talk about with Monty?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat";
	now sortorder entry is 1;
	now description entry is "Chat a bit with Monty";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ask about his background";
	now sortorder entry is 2;
	now description entry is "Learn a bit about him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Discuss the minotaur";
	now sortorder entry is 3;
	now description entry is "Ask his opinion on Tiny Tim";
	[]
	if Libido of Monty is 0;
		choose a blank row in table of fucking options;
		now title entry is "His 'special transport' mission";
		now sortorder entry is 4;
		now description entry is "Talk about what he was doing, and the aftermath";
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
				if nam is "Just chat":
					say "[MontyTalk1]";
				if nam is "Ask about his background":
					say "[MontyTalk2]";
				if nam is "Discuss the minotaur":
					say "[MontyTalk3]";
				if nam is "Discuss the minotaur":
					say "[MontyTalk4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the soldier, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MontyTalk1: [chatting]
	say "     You have a friendly, casual chat with Monty, just shooting the breeze a bit about nothing too important really. [one of]Starting to talk about sports reveals that Monty is a football fan, and he recounts some exciting games he saw recently. Also, he even played a fair bit himself in high school, but never went professional since he already knew he was going to join the army. [or]He likes action movies quite a bit, the more explosions the better. [or]Somehow, the topic of conversation turns to former relationships and Monty recounts the women he's been with, mostly sexy latinas. Apparently he's got a little bit of a type. [at random]Your talk is interesting and it's nice to just hang out a little, though you can't help but feel a little wistful about it all, as your current life is so very different to anything that came before. Amazing what difference just a few weeks can bring with them.";

to say MontyTalk2: [background]
	let randomnumber be a random number from 1 to 2;
	if randomnumber is:
		-- 1:
			say "     A smile spreads over Monty's face and he replies, 'I'm a Florida boy, born and bred. Summer, sun and beaches, right? Well, what most people forget are the occasional alligator in your back yard, lots of mosquitoes and the odd hurricane to go. Still, that's home for you and I like going back to my old stomping grounds when I'm on leave. For example, there was this one time when...' He proceeds to recount a funny and rather outrageous story of what he and some buddies got into while partying one weekend on the beach, after which you chat a bit more about his life before joining the military.";
		-- 2:
			say "     'Serving in the army is a family tradition. My dad and gramps both did their duty before me, and I never really wanted to do anything else. Though what's going on here is sure different than any of their stories about missions who knows where in the world. Not sure I'll tell all the details of what went on - you know, with the minotaur and whatnot.' He rubs his ass a little as he says this, remembering the interaction he had with Tiny.";

to say MontyTalk3: [Tiny]
	say "     A thoughtful expression crosses Monty's face as he hears you ask about Tiny Tim, the minotaur of Camp Bravo. He scratches the back of his head, then shrugs and says, 'You know what? I like him. Crazy thing to say about a towering beast strong enough to break a man in half, eh? Still, he may be not quite human, and a bit dim, but I don't think there's a bad bone in the big lug.' Monty's eyes get a far-away expression for a second and he shudders a little at the images he must have remembered, followed by the words, 'I've been on the streets out there and have seen the shit that some critters get up to. Tiny's a big teddy bear in comparison. Even if he can be a big pain in your butt when he really gets going and forgets his strength.' The black man winces a little and rubs his ass as he thinks back to his own session with the minotaur, the beginning of his 'special transport' mission that you kinda sabotaged.";
	say "     Clearing his throat, Monty goes on to say, 'One thing Tiny sure ain't, and that's hard to read. He loves the steady sex he's getting, but also genuinely enjoys hanging out with people. Should have seen him when I came back into the camp after, well, you know.' He waves a hand behind his ass for a second, referring to the time you pulled out a butt plug and made a load of minotaur cum leak out of his ass. 'So there I was, on my way to the Major to report on my failure, and suddenly I hear hooves stomping on the ground. A second later, I was in a bear-hug by those huge arms, wedged against his broad, muscled chest. 'Friend came back! Came back for Tiny?' he asked, horned head looming over me and with his hot breath washing over my face. Looking into those huge, trusting eyes, I didn't think he'd understand what actually happened even if I told him, so I just said yes. Man, he followed me around an hour after that, and kept wanting to pick me up for another hug.'";

to say MontyTalk4: [Special Transport]
	say "     Monty becomes a bit flustered and clearly embarrassed as you bring up his earlier mission, which included a load of Tiny's cum up his rear and a butt plug to keep it in. If his skin wasn't so very dark, you bet the young man would be flushed red in the face. 'Well, err, it's for a possible cure of this plague or whatever it is. At least that's what we were told. Sounds crazy, right? But then, what isn't these days? Hell, if I had told anyone about seeing a guy in the street suddenly sprouting wings, boobs and a beak, then trying to have sex with me, I'd have ended up in the brig with a drug test ordered. Now, something like that is just another thing that goes on everywhere.' With a shrug, Monty waves a hand in the air. 'I swore an oath to lay my life on the line for this country. Guess that includes my ass too. So if your superiors tell you to get mino-fucked, you soldier on and bend over, spread em.'";
	say "     Scratching the back of his neck, the black soldier adds, 'Of course, having to come back here and admit that I 'lost my load' was an after-action report from hell. Thank god I'm not the only one, or even first that happened too. They don't even reprimanded me - not for something I never trained for. And that's the rub of it. I got issued a 'training kit' by the quartermaster and she told me to work out [italic type]those[roman type] muscles so I can get a fresh load delivered without issues.' Pressing his lips together, he is quiet for a moment, then adds, 'I - er, I'm having some trouble making myself do it. It's one thing when you're part of a whole group, and everyone lines up for Tiny because that's what you're ordered to do. Sitting with your fellows in a tent and then pulling out sex toys to work on yourself? That's fricking hard!'";
	LineBreak;
	say "     [link](1)[as]1[end link] - Apologize for getting him in trouble.";
	say "     [link](2)[as]2[end link] - Say you're not sorry. His ass was just too nice not to check out.";
	say "     [link](3)[as]3[end link] - Suggest that he should just go for it, ask a buddy to help.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to apologize, [link]2[end link] to compliment his ass and say you're not sorry you went for it or [link]3[end link] to suggest asking his buddies to help.";
	if calcnumber is 1: [sorry]
		LineBreak;
		say "     You tell Monty you're sorry for getting him into this kind of situation, which he accepts graciously enough. 'Guess I just have an irresistible ass then, eh? Prime black booty that no one can resist. I'm not even mad about it, [if Resolution of Lone Soldier is 2]your tongue felt pretty nice and all[else]not with you helping me before[end if].' He shrugs and makes a throwing-away gesture. 'Still, now I gotta work out how to do this shit. Guess I'll just have to, you know, move to a private place to do it. Definetely not gonna do it in front of the guys and get a rep of being the barrack's bottom boy. Gonna be weird, to work my own ass over with those toys.'";
	else if calcnumber is 2: [not sorry]
		LineBreak;
		say "     You admit to Monty that his ass was to nice to keep your hands away from. If you were in the same situation again, you'd not do anything different. The man looks at you somewhat wide-eyed and after a moment, a chuckle bubbles up from him. 'Guess I just have an irresistible ass then, eh? Prime black booty that no one can resist. I'm not even mad about it, [if Resolution of Lone Soldier is 2]your tongue felt pretty nice and all[else]not with you helping me before[end if].' He shrugs and makes a throwing-away gesture. 'Still, now I gotta work out how to do this shit. Guess I'll just have to, you know, move to a private place to do it. Definetely not gonna do it in front of the guys and get a rep of being the barrack's bottom boy. Gonna be weird, to work my own ass over with those toys.'";
	else if calcnumber is 3:
		LineBreak;
		say "     You tell Monty that he should just get over himself and pick a guy to help him train. They'll enjoy it, you're fairly certain. The black man, grimaces and shakes his head, 'Naw man, I can't do that. Me and the guys are tight, but that's not something you ask. Gotta think of how it'd look. I really don't wanna get a rep of being the barrack's bottom boy. That's death for your career and shit.' He shrugs and makes a throwing-away gesture. 'Still, I gotta work out how to do this shit. Guess I'll just have to, you know, move to a private place to do it. And it's gonna be weird, to work my own ass over with those toys.'";
	LineBreak;
	say "     [link](1)[as]1[end link] - Offer your help.";
	say "     [link](2)[as]2[end link] - Wish him the best of luck.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 2:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to offer your help, [link]2[end link] to wish him luck.";
	if calcnumber is 1: [hands-on]
		LineBreak;
		say "     Reaching out to Monty and lightly patting his arm, you tell him that he doesn't have to do it all by his lonesome. Helping out with some hands-on support is the least you can do for him. And after all, it's not like you haven't seen it all before. The man draws in a quick breath, then can't help but chuckle. 'I guess you have a point, kinda. Would be less awkward than groping around cluelessly myself. Fine, it's a deal. Still need a place to do it, though.' He looks to the side thoughtfully, biting his lip, then actually focuses on what is right in front of his eyes. 'Hmmm. You know, this bus might be sticking far enough through the wall that the front door is accessible.' Quickly walking along the side of the crashed bus, he digs his fingers under the corner of a cracked windowpane, levering the safety glass out of its frame. Cracked and spider-webbed as it may be, it still comes out as a single piece that he catches and sets down without too much noise.";
		say "     Pulling himself up to stick his head into the interior of the bus, Monty says, 'Jackpot, the whole front end of this thing is inside of a big room! Just a second, be right back.' He hurries off, to return a little while later with a big wooden crate in his arms, on which a small leather pouch is lying. Setting the crate down under the bus window creates a stepping stone to climb into it fairly easy now, and the two of you walk down the middle passage of the bus to enter the office building next door. It's a bit of a mess in there, with the bus having thrown several desks partway through the room when it crashed through the wall, but the empty building still is just the out of the way place that Monty wanted. Pulling a zipper and then flipping open the lid of the leather pouch, the soldier lays what turns out to be a complete set of training butt-plugs on the nearest table. There's even a bottle of lube in there too. 'So, let's do this, before I lose my nerve.' Monty says, slightly nervous.";
		say "     <toy workout>";
		now Libido of Monty is 2; [had the talk about the special transport, put the toys to use]
	else if calcnumber is 2: [not your problem]
		LineBreak;
		say "     Reaching out to Monty and lightly patting his arm, you tell him that you're sure he'll manage. 'Thank you so much,' he says in a slightly exasperated tone, followed by, 'I know how to do my duty, don't doubt that for a moment. I'll manage, somehow.' Apparently not in a mood to discuss this further, he excuses himself and wanders off.";
		now Libido of Monty is 1; [had the talk about the special transport, didn't offer to help]

Instead of fucking Monty:
	if (lastfuck of Monty - turns < 5):
		say "     Monty chuckles and says, 'Man, you want to go at it again? Do you have a battery compartment somewhere? I for one need a bit of a break.'";
	else if Libido of Monty < 3:
		say "     The black man raises an eyebrow as you make your offer, then shakes his head in a friendly but firm way. 'No thanks, I'm good right now. We're not here to get our rocks off, but to fulfill a mission.' By sheer coincidence, you hear a full-voiced, lustful bellow from the center of the camp just as Monty says this. Sounds like another man [if HP of Adam > 3](or woman)[end if] got a creamy filling of minotaur cum. The soldier glances in that direction, his eyes filled with a far-away look for a second, as he seems drawn back into his own close encounter with the breeding bull of Camp Bravo. Shaking himself out of it, Monty sees you looking at him, which causes an embarrassed flush to spread over face, barely visible under his dark pigmentation. 'Err... you know what I mean. Containing this mess, saving people, helping find the cure.' Waving a hand in the air as if the dispel his own mental image of what's going on in the parade ground, he wanders away a little, busying himself with one task or other.";
	else:
		say "     The black man chuckles as you make him an offer, glancing left and right as if to see if anyone might have overheard. Clearing his throat, he runs a hand over his bald head, then says under his breath, 'Yeah, sure. Not like I'm not as horny as any red-blooded guy here in the camp. Ya barely can turn a corner without stumbling over someone jerking off. Not here, though. Got a rep to maintain.' Giving your arm a light slap, the black man suddenly adds in a loud voice, 'Come on, I'll show you where you have to be for debriefing.' With that said, he walks off in one direction and as you turn to follow him, you see that a whole group of other soldiers was coming up from behind where you were standing a moment ago. Not that they seem to have any interest in you, but they might have overheard any further discussion of lewd fun.";
		say "     Monty leads the way to the out of the way corner of the camp you know well by now, checks that no one else is in sight, then climbs onto the wooden crate and through the shattered window of the city bus. You follow him, passing through the wrecked vehicle and exiting through the wide door at its front end, into the abandoned office building next to the military camp. 'So, here we are,' the muscular soldier says with a grin on his face, letting his gaze wander up and down over your form. He pulls his shirt off in a smooth movement, throwing it onto a nearby desk, then starts to undo his pants. You watch him strip down with interest, exchanging lusty looks with your soldier fuck-buddy.";
		now sextablerun is 0;
		project Figure of Monty_naked_icon;
		say "     [bold type]What do you want to do with your black stud?[roman type][line break]";
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Monty's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		[]
		if (player is male):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		[]
		if Player is female:
			choose a blank row in table of fucking options;
			now title entry is "Let Monty fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the black soldier breed you.";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let Monty fuck your ass";
		now sortorder entry is 4;
		now description entry is "Let the black soldier fill your ass with his seed.";
		[]
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Monty's ass";
			now sortorder entry is 5;
			now description entry is "Fill the young soldier's ass with your cock.";
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
					if nam is "Suck Monty's cock":
						say "[MontySex1]";
					else if (nam is "Have him suck your cock"):
						say "[MontySex2]";
					else if (nam is "Let Monty fuck your pussy"):
						say "[MontySex3]";
					else if (nam is "Let Monty fuck your ass"):
						say "[MontySex4]";
					else if (nam is "Take Monty's ass"):
						say "[MontySex5]";
					wait for any key;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the black soldier, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say MontySex1:
	say "...";
	NPCSexAftermath Player receives "OralCock" from Monty;

to say MontySex2:
	say "...";
	NPCSexAftermath Monty receives "OralCock" from Player;

to say MontySex3:
	say "...";
	NPCSexAftermath Player receives "PussyFuck" from Monty;

to say MontySex4:
	say "...";
	NPCSexAftermath Player receives "AssFuck" from Monty;

to say MontySex5:
	say "...";
	NPCSexAftermath Monty receives "AssFuck" from Player;

Section 3 - Endings

Monty ends here.
