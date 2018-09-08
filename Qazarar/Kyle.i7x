Version 1 of Kyle by Qazarar begins here.
[Version 1 - new npc]

[ KyleRelationship                                           ]
[   0: not met                                               ]
[   1: met and spoken to                                     ]
[   2: talking to                                            ]
[   3: talking to                                            ]
[   4: GertyQuest available                                  ]
[   5: GertyQuest completed                                  ]
[	6: Accepted date                                           ]
[  10: dating                                                ]
[  99: date not accpted yet                                  ]
[ 100: met, refused                                          ]

[ GertyQuest                                                 ]
[   0: GertyQuest not started                                ]
[   1: GertyQuest accepted                                   ]
[   2: GertyQuest beaten                                     ]
[   3: GertyQuest over                                       ]
[  99: GertyQuest refused                                    ]
[ 100: GertyQuest failed                                     ]

[ libido of Kyle                                             ]
[   0: not sexable                                           ]
[   1: sexable                                               ]

[ hp of Kyle                                                 ]
[	0: not on date                                             ]
[   1: on a date                                             ]

[ thirst of Kyle                                             ]
[	0: not sexed yet                                           ]
[	1: had sex                                                 ]

[ Thirst of Kyle                                             ]
[	0: no threesome set                                        ]
[   1: threesome set                                         ]

KyleRelationship is a number that varies. KyleRelationship is usually 0.
GertyQuest is a number that varies. GertyQuest is usually 0.

Section 1 - Basic Setup

Table of GameCharacterIDs (continued)
object	name
Kyle	"Kyle"

Kyle is a man. The hp of Kyle is usually 0.
The description of Kyle is "[KyleDesc]".
The conversation of Kyle is { "<This is nothing but a placeholder!>" }.
The scent of Kyle is "     Kyle smells like scales and paper.".
Kyle is in Brookstone Books.

to say KyleDesc:
	if debugactive is 1:
		say "DEBUG -> KyleRelationship: [KyleRelationship], HP: [hp of Kyle] <- DEBUG[line break]";
	else:
		say "     The lizardman before you is covered in small, bright green scales on all of his visible skin, which is more than a little owing to his lack of shirt. He is taller than average, making him stand out even more against the numerous mall rats inhabiting this place. The only item of clothing he is wearing on his lithe frame is a pair of cargo pants. Perched on his reptilian face are a pair of glasses, through which his eyes peer at you intently.";

Section 2 - Talk

instead of conversing the Kyle:
	if KyleRelationship < 1: [First time meeting Kyle]
		say "     As you walk up to the lizardman, he looks up from the book he seems to be absentmindedly reading. 'Oh, hello there. I don't think I've seen you around here before. We don't get a lot of new faces in the bookstore here.' He closes the book he is holding and slides it back on to the bookshelves before turning back to face you again. 'My name is Kyle, and I'm something of a regular here.' He pauses, and looks slightly lizardman-ish for a moment. 'But I don't want to just go off on a long speech right here out in the middle of the store. Do you have time to sit down and chat?'";
		say "     [bold type]Do you stay and talk with Kyle?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay and talk with the lizardman.";
		say "     ([link]N[as]n[end link]) - Not right now.";
		if player consents:
			LineBreak;
			say "[KyleIntroTalk]";
			now KyleRelationship is 1;
		else:
			LineBreak;
			say "     Kyle looks slightly crestfallen at your response, before speaking. 'I suppose that's fair. I'm sure you must be busy. But feel free to come back to talk if you have time.'";
			now KyleRelationship is 100;
	else if KyleRelationship is 100:
		say "     As you walk up to Kyle, he looks up from the book he seems to be absentmindedly reading. 'Oh, it's you again, hello. Do you have time to chat?'";
		say "     [bold type]Do you stay and talk with Kyle?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Stay and talk with the lizardman.";
		say "     ([link]N[as]n[end link]) - Not right now.";
		if player consents:
			LineBreak;
			say "[KyleIntroTalk]";
			now KyleRelationship is 1;
			WaitLineBreak;
		else:
			LineBreak;
			say "     Kyle looks slightly crestfallen at your response, before speaking. 'I suppose that's fair. I'm sure you must be busy. But feel free to come back to talk if you have time.'";
	else:
		say "     As you walk up to Kyle, he brightens upon seeing you. Then the tall lizardman puts away the book he was browsing, and brings you into the back room of the bookstore once again. Once you arrive, you both sit down, and Kyle clears some space on the table in front of him before speaking. 'Nice to see you again. What did you want to talk about?'";
		WaitLineBreak;
		say "[KyleTalkMenu]";

to say KyleIntroTalk:
	say "     Kyle seems to perk up when you acquiesce. 'Excellent. Well, follow me, please.' The lizardman leads you past the rows bookshelves into an area further back in the store. He stops, and you notice an unremarkable door you hadn't paid any attention to before. 'Just through here. I've known the owner for a while now, and she usually lets me use the back room for any more serious efforts. Less chance of me cluttering up the aisles in here that way, I'm sure.' He smiles before opening the door, and stepping through. A moment later, you follow, into a cozy looking back room. The room is fairly small, but has smaller bookshelves lining one wall, and a table with comfortable chairs set up in the middle. Atop the table are several books stacked on top of each other, and even more scattered open alongside papers and notebooks. Looks like somebody has used the table for an intense studying session lately. 'So this is where I spend a lot of my time around here. Go on, have a seat. I don't mind.'";
	say "     You take a seat at the table, and on the opposite side, Kyle does the same. 'Well, like I already told you, my name is Kyle. Before all of this happened,' he says, gesturing broadly outward, 'I was just living in the city, getting by with part time jobs after I graduated from Tenvale. I was an English major, if you were wondering. In my free time, I was trying to write a novel, and make a career as a writer. This whole mess shot that down somewhat, though I'm not giving up completely.' He pauses, and looks more intently at you. 'And what about you? What's your story?' You take a few moments and summarize your experience to Kyle. 'That sounds like quite the experience, friend. I'm glad you came into the store, and that we had this talk. If you ever want to talk more, just stop by, and we can come back here again.' After your conversation, both you and Kyle leave the back room, returning to the bookstore.";

to say KyleTalkMenu:
	LineBreak;
	say "What do you want to talk with Kyle about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Kyle's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The City";
	now sortorder entry is 2;
	now description entry is "Talk to him about what the city and your situation";
	[]
	choose a blank row in table of fucking options;
	now title entry is "His Novel";
	now sortorder entry is 3;
	now description entry is "Talk to him about the novel he mentioned";
	[]
	if KyleRelationship > 3:
		choose a blank row in the table of fucking options;
		now title entry is "His Friend";
		now sortorder entry is 4;
		now description entry is "Talk to him about the friend he mentioned";
	[]
	if KyleRelationship > 4 and KyleRelationship < 100:
		choose a blank row in the table of fucking options;
		now title entry is "Relationship";
		now sortorder entry is 5;
		now description entry is "Talk to him about a relationship";
	[]
	if KyleRelationship is 10 and libido of Kyle is 0:
		choose a blank row in the table of fucking options;
		now title entry is "Having Sex";
		now sortorder entry is 6;
		now description entry is "Talk to Kyle about progressing your relationship";
	[]
	if KyleRelationship is 10:
		choose a blank row in the table of fucking options;
		now title entry is "Date";
		now sortorder entry is 7;
		now description entry is "Ask Kyle on another date";
	[]
	if GertyRelationship is 6:
		choose a blank row in the table of fucking options;
		now title entry is "Threesome";
		now sortorder entry is 8;
		now description entry is "Ask Kyle about another threesome";
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
					say "[KyleTalk1]";
				if (nam is "The City"):
					say "[KyleTalk2]";
				if (nam is "His Novel"):
					say "[KyleTalk3]";
				if (nam is "His Friend"):
					say "[KyleTalk4]";
				if (nam is "Relationship"):
					say "[KyleTalk5]";
				if (nam is "Having Sex"):
					say "[KyleTalk6]";
				if (nam is "Date"):
					say "[KyleTalk7]";
				if (nam is "Threesome"):
					say "[KyleTalk8]";
				say "     Kyle gets up and heads for the door out of the back room, and you follow. 'Well, it was nice talking to you. Come back soon when you have some time, and we can chat some more.'";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from Kyle, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KyleTalk1: [talk about him]
	say "     'So you want to know more about me? Well, there's only so much to say, I suppose. I studied at Tenvale for a while until I graduated as an English major. After that I spent a while working various small jobs while trying to write my novel. I was mostly just stable while doing that, at least until the world basically ended. That was definitely something.' Kyle pauses for a moment, and moves a few books around. 'I thought it was just a normal day, and I'd been looking a few things up in the library for reference. On my way back from the library though, that's when it all started. Everything was going crazy, people transforming around me, it was a disconcerting time. I ran back to my apartment to try and get away from it, and was lucky enough to make it there safely. But when I got there, that luck ran out. I opened my door and was attacked by what I suspect used to be my pet snake.";
	say "     He pauses his story, and gestures down at himself. 'It wasn't long until I looked like this. Thankfully I'd read enough apocalyptic novels to have the idea to take refuge at the mall, and managed to get here safely before I had a minor breakdown.' Kyle shuffles around some of the papers in front of him before continuing. 'Besides, I've made out a lot better than some. I'm still mostly humanoid, I have my sanity, and my eyes work perfectly now.' He taps one of his scaled fingers against his glasses. 'These are actually plain glass lenses. I only wear them because I feel strange without them. Plus, they look great on me.' He grins at you. 'So that's my story, far as I can remember.'";
	if KyleRelationship < 4:
		increase KyleRelationship by 1;

to say KyleTalk2: [talk about the city]
	say "     'So you want to know more about the city?' Kyle puts one hand on the side of his face, and leans into the palm for a moment. 'Well, I only know so much about what's changed lately. Most of my inquiry has been about other places with books, since I've been focusing on my novel. The mall you're familiar with, at this point. It's a fairly safe place to spend time, and much more collected than most of the city. The bookstore certainly doesn't hurt, which is the main reason I spend so much time here. I've heard a bit about the central library from some of the others here, and I know that isn't somewhere I want to go right now, since it's apparently locked down tight, and in a more dangerous area than the mall.' He shudders briefly, interrupting his own speech.";
	say "     'I'm not much one for fighting, so I don't stray far. I did go with a few others once and took a look at Tenvale, which was... safer, certainly, but it was still a bit much for me. Certainly too much going on to effectively focus on anything. Slightly more hopeful were other bookshops in the city, though I haven't braved them myself. Sometimes my friend Gerty will make expeditions to bookstores in the city to get more books, though.'";
	say "     'So, what about you? What sort of sights have you seen in the city?' Kyle looks at you questioningly. You spend several minutes telling him about the strange things you have seen and encountered in the city since you emerged from your bunker. He looks at you interestedly when you finish. 'Wow, that's some pretty impressive stuff. If I need some serious adventuring done, I'll have to call you. Next time you see something neat, you'll have to come and tell me. Maybe it'll give me some ideas.'";
	if KyleRelationship < 4:
		increase KyleRelationship by 1;

to say KyleTalk3: [talk about his novel]
	say "     Kyle seems to become notably more lively when you ask about his novel. 'Oh, it's definitely going to be something. I've been working on it since my senior year at Tenvale, in bits and pieces. After I graduated, I spent most of my free time working on it or researching for it. I was actually trying to look into publishers for it when all of this went down. Sadly, I lost a lot of my work when I came here. I remember what happened, but without those details, I'm having to rewrite and redraft a lot of work. I'm not going to let a simple apocalypse stop me from finishing this book. Besides, I can just self-publish it if necessary, I'm sure. And that's why I spend so much of my time here in the back of the bookshop, really. Outside is alright, but in here I have real room to work and focus. Beverly is just as excited for me to finish as I am, I think, which is one reason she lets me use this.'";
	say "     'And the other step to help my novel flourish is my friend Gerty, who volunteered to do illustrations for it. His ability to do so even after the disaster is impressive indeed.' He looks directly at you for a moment. 'Maybe some of your experiences will make it into the final draft. Either way, you'll be one of the first to get a copy, friend.' Kyle then spends a few minutes showing you a few excerpts from his works, which were scattered amidst the papers in front of you, and getting your opinion on them. Finally, he sets it all back down and organizes the piles slightly. 'It was nice to be able to talk about my work.'";
	if KyleRelationship < 4:
		increase KyleRelationship by 1;

to say KyleTalk4: [talk about his friend]
	if GertyQuest is 0: [player has not accepted GertyQuest]
		say "     'Ah, Gerty. Definitely an interesting individual. He's one of my best friends, but he's often a bit... much for most people. He takes his literature very seriously, and is similarly serious about his art. He doesn't let anything keep him away from those things, that's for sure. When he was changed in the disaster, he ended up without arms. Instead he worked with an acquaintance of his to design some prosthetic limbs he could still manipulate, and even though it's barely been any time, he can already handle himself about as well as he could before.' Kyle looks fairly contented talking about his friend, but pauses, and stares off to the side for several moments. His expression grows somewhat concerned.";
		say "     'Now that I think about it, Gerty was supposed to come back here with some books he was going to collect a while ago. He's usually very punctual. I'm worried that something may have happened to him. I'm not really suited to going out and making sure he's all right, but I can ask you. Would you mind looking for Gerty, and helping him out if he's in trouble? He's almost certainly at a bookstore in the [bold type]High Rise District[roman type] if he's in trouble.'";
		say "     [bold type]Do you tell him you'll look for Gerty?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Accept the task.";
		say "     ([link]N[as]n[end link]) - No, it's too dangerous.";
		if player consents:
			LineBreak;
			say "     Some of Kyle's worry instantly fades from his face. 'Oh, thank goodness. I'm sure you'll be able to help him out. Just come back and talk to me again once you've found him, alright? I'll be waiting.'";
			now GertyQuest is 1;
			now Angry Snake is active;
		else:
			LineBreak;
			say "     Kyle looks crestfallen. 'I understand, the city out there is dangerous, and I'm sure you're a busy person. Just... think about it, okay?'";
			now GertyQuest is 99;
	if GertyQuest is 99: [if player refused before]
		say "     Kyle looks at you pleadingly. 'Have you reconsidered looking for Gerty?'";
		say "     [bold type]Do you tell him you'll look for Gerty?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Accept the task.";
		say "     ([link]N[as]n[end link]) - No, it's too dangerous.";
		if player consents:
			LineBreak;
			say "     Some of Kyle's worry instantly fades from his face. 'Oh, thank goodness. I'm sure you'll be able to help him out. Just come back and talk to me again once you've found him, alright? I'll be waiting.'";
			now GertyQuest is 1;
			now Angry Snake is active;
		else:
			LineBreak;
			say "     Kyle looks crestfallen. 'I understand, the city out there is dangerous, and I'm sure you're a busy person. Just... think about it, okay?'";
			now GertyQuest is 99;
	if GertyQuest is 1: [player accepted GertyQuest]
		say "     Kyle looks at you, concerned. 'Please, you should be looking for Gerty right now. Time with me can wait until I know he's not in danger.'";
	if GertyQuest is 2: [player completed GertyQuest]
		say "     Kyle turns to you, questioningly. You quickly reassure him, and pass on the message Gerty left with you. 'Oh, thank goodness that turned out okay!' Kyle throws his arms around you, hugging you tightly, and pressing your face against the bare scales of his shoulder. He holds you there for a moment, before pulling back slightly. Suddenly, he kisses you briefly, before almost leaping back, and stammering. 'I'm... glad you're okay too. Thank you so much for helping out.' While his new reptilian biology doesn't allow for it, you are completely certain he would be blushing if it was possible. After a moment of both of you shuffling somewhat awkwardly, he speaks once more. 'So yeah, thanks. I, uh, have some ideas I want to write about now, so I'll talk to you later okay?'";
		now GertyQuest is 3;
		now KyleRelationship is 5;
	if GertyQuest is 3: [player turned in GertyQuest already]
		say "     'Yeah, Gerty's doing alright, it seems. He was by here not that long ago with a few more books and observations.' Kyle looks off past you, clearly in thought for a moment. He then looks back at you, focused again. 'You should actually go see him one of these days. He likes to spend time in the library at Tenvale.' The lizardman grins. 'He'd be happy to see you, even if he complains about it. That's just how he acts about everything.'";

to say KyleTalk5: [talk about relationship]
	if KyleRelationship is 5:
		say "     Kyle looks visibly embarrassed as you ask him about your relationship. 'Well, you've been such a good friend, and so willing to listen to me ramble on, I'd certainly love to keep spending more time with you. Really, I'd be happy to be more than just friends with you.' He pauses, and seems to be grasping for the right way to say it. 'I guess the best way to say this, is do you want to go on a date?'";
		say "     [bold type]Do you agree to go on a date with Kyle[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, you'll date him";
		say "     ([link]N[as]n[end link]) - No, not right now";
		if player consents:
			LineBreak;
			say "     Kyle looks incredibly happy. 'Oh, man, this is gonna be great. But what should we do...' He thinks for a moment, and looks through a few things at his table. 'Okay, I've got an idea. I don't really want to head too far out, so that cuts a lot of options. But let's meet up in the Mall Atrium, and go from there. Whenever you're ready I'll see you there, and we can do this.";
			now KyleRelationship is 6;
			now hp of Kyle is 1;
		else:
			LineBreak;
			say "     Kyle looks incredibly disappointed. 'I understand. There's a lot of reasons you may not want to date at the moment, and I won't press. Just... please keep visiting me, okay?'";
	else if KyleRelationship is 6:
		say "     'Remember, meet me at the Mall Atrium, and we can go on our date.'";
	else if KyleRelationship is 10:
		say "     Kyle looks very excited to speak with you. 'I'm so glad you agreed to date me, you know. For all my writing skills, it can be really hard to explain it properly, but I'm really happy about it. I love spending time with you, and having you around.'";
	else if KyleRelationship is 99:
		say "     Kyle looks notably expectant as you ask him about your relationship. 'If you're asking, does that mean you've reconsidered going on a date with me?'";
		say "     [bold type]Do you agree to go on a date with Kyle[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yes, you'll date him";
		say "     ([link]N[as]n[end link]) - No, not right now";
		if player consents:
			LineBreak;
			say "     Kyle looks incredibly happy. 'Oh, man, this is gonna be great. But what should we do...' He thinks for a moment, and looks through a few things at his table. 'Okay, I've got an idea. I don't really want to head too far out, so that cuts a lot of options. But let's meet up in the Mall Atrium, and go from there. Whenever you're ready I'll see you there, and we can do this.";
			now KyleRelationship is 6;
			now hp of Kyle is 1;
		else:
			LineBreak;
			say "     Kyle looks incredibly disappointed. 'I understand. There's a lot of reasons you may not want to date at the moment, and I won't press. Just... please keep visiting me, okay?'";

to say KyleTalk6: [talk about banging]
	say "     The lizardman seems to have some trouble properly responding to your questioning, stammering somewhat as he tries to answer. After a few moments, he pauses and properly collects himself, taking a few breaths. 'Okay, I hadn't really expected that. I probably should have, but somehow it still totally blindsided me.' He smiles, somewhat abashed. 'Despite how things mostly are nowadays, I haven't spent a lot of time thinking about that sort of thing. I've been far too shy when it comes to, well, sexual stuff. But there's nobody I'd rather do things like that with than you.' Kyle still looks somewhat embarrassed, but you can see his gaze is determined. 'With you, I'd be willing. Just make sure to take it slow, please.'";
	if libido of Kyle < 1:
		now libido of Kyle is 1;

to say KyleTalk7: [ask for date]
	if hp of Kyle is 0:
		say "     'Another date, huh?' Kyle looks at you, and smiles. 'Well, the last one was pretty great, wasn't it? Why not?' He gets up from his seat at the table, walks around, and gives you a brief hug. 'I'd love to. I suppose I'll meet up with you in the Atrium again, and we'll decide from there.'";
		now hp of Kyle is 1;
	else:
		say "     'Yep, I'm pretty excited for our next date. Can't wait to meet up in the Atrium for it soon. Don't keep me waiting, alright?'";

to say KyleTalk8: [ask for threesome]
	if Thirst of Kyle is 0:
		say "     'You're right, the last time we did that was pretty great, and I wouldn't mind another time like that. I'll see about inviting Gerty over. Come by later, and we can have some fun.'";
		now Thirst of Kyle is 0;
	else:
		say "     'As soon as Gerty makes it here, definitely. Until then, you'll have to wait.'";

Section 3 - Sex

instead of fucking the Kyle:
	if (lastfuck of Kyle - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     Kyle looks somewhat apologetic. 'Sorry, I'm still worn out from last time. You're almost more than I can handle. Definitely later though.'";
	else if (KyleRelationship < 3): [relationship not high enough]
		say "     'Sorry, I'm not ready to just go and sleep with somebody I still don't know very well.'";
	else if libido of Kyle is 0: [not convinced yet]
		say "     'I know you pretty well now and all, but I don't think I'm quite ready for that.'";
	else if thirst of Kyle is 0: [first time]
		say "     When you broach the subject again, Kyle becomes visibly both nervous and excited. 'Okay, I think I'm ready for this. Let's head to the back room, okay?' The lizardman turns around and walks through the bookshop towards the back room, his pace faster than usual. Just as excited as Kyle, you follow. Once the two of you are together in the privacy of the rear area of the store, he turns back towards you. For a moment, he closes his eyes and breathes deeply. 'Alright, whenever you're ready.' You don't give Kyle the chance to be nervous, and you press right up against him, kissing him deeply. You put your arms around him, holding tight as he reciprocates. The intense lip locking is only broken occasionally to breathe.";
		say "     You pull back slightly, and grin at Kyle. From his expression, you can tell he would be blushing if he were capable. At the same time, you let go of Kyle with one of your hands, and reach downwards to his pants. You take a few moments to fiddle with the button on the front as you make out with him, until eventually it comes open. Wasting no time, you grab the side of the waistline and yank, lowering his pants just enough that his now-hard member becomes partially visible. After that it is a simple task for you to reach in and quickly grasp his shaft, pulling it free of the legwear. For a time, you simply stand there, your hand wrapped around Kyle's reptilian cock, and your lips locked with his.";
		WaitLineBreak;
		if player is male: [for males and herms]
			say "     Slowly you start to stroke the cock in your hand, pressing yourself more closely against Kyle. After a few moments of this, he relaxes slightly, and reaches downward himself, wrapping his scaled hand around your [cockname of player in lower case] cock, and beginning to match your pace. The two of you remain like that for a while, staring into each other's eyes as you each stroke the other's dick, mere inches away from each other. Soon enough, however, the arousal between the two of you grows stronger, and you each stroke faster, kiss harder, and push more deeply against the other. The friction heats up as you furiously masturbate each other, your cocks occasionally bumping against the other member.";
			say "     In the moment of heated action, you're pressing so hard against Kyle that he falls, and as entwined as you are, you fall as well. You knock a stack of books over, and land in the pile it creates, still close to the lizardman's body. Not deterred in the least, you resume your energetic stroking, and it's mere moments before Kyle decides to do the same, and you're back to the state you were in before, albeit on the ground now. Soon, however, the lust builds to a peak, and finally both you and Kyle climax, repeated spurts of seed leaping outward, and covering both of your chests, as well as a number of books. You begin to breathe more slowly, and can hear that Kyle is doing the same, as you each melt into a simple embrace, laying on the discarded books, and unaffected by the sticky fluids pressed between you.";
			WaitLineBreak;
			say "     Your rest is interrupted, however, by the sound of an opening door and a voice. 'Is everything alright back here? I heard a crash.' Looking towards the door, you have just enough time to see Beverly peeking her head in before she gasps and closes it again. After that, you can't help but chuckle, and soon Kyle does the same. 'Okay, I'll admit, this whole situation is pretty funny.' He looks down at you and the pile you're laying on. 'Though maybe we got slightly out of hand. Next time we'll have to be more careful.' Kyle stands up, and reaches down to pull you up with him. 'And there's definitely going to be a next time, love. That was fantastic, believe me.' The lizardman suddenly leans forward and kisses you. 'Now, get out of here. I'll clean up back here and try to calm down Beverly. See you again soon.' You nod, and after a parting hug, leave the bookstore back room.";
		else if player is female: [female variant]
			say "     Sorry, this text is a placeholder. There is currently no scene here for female players.";
		now thirst of Kyle is 1;
	else: [ready for sex]
		say "     As you ask about more personal things, Kyle looks around quickly, and ushers you into the back room, looking rather excited.";
		WaitLineBreak;
		say "[KyleSexMenu]";

to say KyleSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Kyle suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Kyle off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the lizardman's reptilian shaft";
	[]
	if player is male: [only males and herms can fuck him]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the lizardman";
		now sortorder entry is 3;
		now description entry is "Take Kyle's ass for a ride";
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Take Kyle's shaft in your ass";
	now sortorder entry is 4;
	now description entry is "Offer sex to the lizardman";]
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
				if (nam is "Get a blowjob"):
					say "[KyleSex1]";
				if (nam is "Suck Kyle off"):
					say "[KyleSex2]";
				if (nam is "Fuck the lizardman"):
					say "[KyleSex3]";
				if (nam is "Take Kyle's shaft in your ass"):
					say "[KyleSex4]";
				WaitLineBreak;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the anthro lizardman, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say KyleSex1: [oral on the player]
	say "     It doesn't take long after you enter the room before Kyle has already taken a hold of your erection. He strokes it a few times, and sinks to his knees. He smiles up at you from his lowered position, and then starts licking up and down your shaft with his lengthy tongue, performing some rather impressive feats of dexterity with it as he does so. Soon he shifts forward, and engulfs your dick in his reptilian mouth, starting to bob up and down, adding to the sensation offered by his skilled tongue. He looks up, and you lock eyes as he pleasures you, the feelings only growing more intense. Kyle is the one to break your eye contact, as he pushes down further onto your [cock of player in lower case] cock, and reaches below to tease your sack as well.";
	say "     In no time at all, your pleasure peaks, and your shaft begins to pulse just as Kyle looks back up at you, sending strands of cum down the lizardman's throat. Just as they start to slow, he pulls back off of your dick, and the last few spurts end up on his face, and on his glasses. He stands up, and takes his glasses off, and wipes them off with a cloth from the nearby table before putting them back on. 'I hope you liked that, love. I certainly did, even if the cleanup might be a bit messy.' He steps forward once again, and plants a quick kiss on your lips. 'We've probably spent enough time back here for now though. Let's do this again sometime.' You nod, and the two of you head back out into the bookstore, though you can't help but notice Kyle still has a streak of seed on his cheek.";

to say KyleSex2: [oral on Kyle]
	say "     Once the two of you enter the back room, Kyle is already rapidly shedding his single piece of clothing, and in no time at all the lizardman stands before you in the small room, his sizeable lizard cock out in the open. His dick is not yet erect, but is already beginning to harden in reaction to the situation. You don't leave it alone to do so, however, as you drop to your knees in front of him, and grasp it in your hand. You look upwards, away from the shaft and into Kyle's eyes, as you start stroking the bulbous member in your hand. You keep working his cock in your hand, maintaining your eye contact with the lizardman all the while, until you can feel that he has become fully hard in your grasp.";
	say "     You give his dick one last stroke, before you break eye contact to look back at your lover's fully erect prominence. You slowly lean forward, and take the tip into your mouth. For a moment you simply hold it there, before you start to slowly bob your head back and forth, watching as the remaining portion of the shaft shrinks, and grows again. After a short while of this, you pull off of his cock, and instead transition to licking up and down the sides, letting your tongue run along the unique shape of his shaft. As you do this, you look up from your task, and once again meet Kyle's eyes, seeing that behind his glasses, they're intently focused on you, and your actions. As you pause to look into his eyes, he lets out a breath he was holding, before pleading to you. 'Please, don't stop. I'm getting close.'";
	WaitLineBreak;
	say "     You take advantage of having your mouth free to grin up at Kyle, before heeding his request, and putting your lips around his shaft once more. You resume your earlier bobbing, steadily increasing the pace. As you do so, you brace yourself with one hand against the reptilian thigh before you, giving you better leverage in your ongoing blowjob. Your other hand reaches up to fondle the lizard balls hanging under the shaft you're swallowing, adding to your performance. Your efforts are clearly working, as you can hear Kyle moaning above you now, audibly enjoying the results of your labor. At this point you can taste not only the dry scent of his cock, but also the flavor of precum on the back of your tongue, letting you know just how close he is.";
	say "     Soon enough you're proven right, as you can feel the orbs in your hands begin to contract. Eagerly, you push yourself down his cock, your lips meeting the base just as the shaft in your mouth begins to pulsate. As his seed shoots directly down your throat, barely hitting the back of your tongue, you look up at Kyle. His eyes are closed, and his face relaxed in pleasure, showing you the fruits of your labors. After a few more pulses, the flow of cum eventually stops. You pull off of his cock, giving it a single lick, before standing up and locking eyes with Kyle. He's still panting slightly, but you can see how satisfied he is. Before you have a chance to say anything however, he kisses you passionately.";
	WaitLineBreak;
	say "     Eventually he breaks off, and pulls back just enough that he can breathe. 'Thanks for that. You're a real treasure, love.' He smiles at you warmly, only looking away to gather his discarded pants, and slip them back on. Once he looks presentable again, he walks over towards the door. 'We're definitely going to have to do this again, you and me.' He gives a grin, and leaves the back room. You smile to yourself, and follow him.";

to say KyleSex3: [Kyle fucked]
	say "     Moments after you've entered the back room, Kyle has already stripped off his pants and thrown them off to the side. As you move closer, he directs you towards one of the chairs. 'Take a seat there, please.' You comply, and sit down. Kyle comes over to you, and reaches down, grasping your [cock of player in lower case] member, teasing it to full hardness with his scaled hands. Once you're fully erect, he leans in and gives it a single lick before standing up. Kyle steps forward, now standing over you, and sits down on your lap. With his new position, your dick is right behind him, pressed against his rear. The two of you lock eyes, as you sit together, and the lizardman speaks. 'Alright, I'm gonna take this slow, okay?'";
	say "     You nod, and Kyle lifts himself up slightly, and then back just enough that he is holding himself up above your erect cock. Slowly, he lowers himself downward, until the tip of your dick is pressed against his rear hole. The lizardman edges himself further down, spreading himself open around the head of your erection. You can feel his ring sliding down around your shaft, gripping you tightly as you sink deeper into him. After what seems like an eternity, he comes to a stop, sitting back on your lap again, the few inches change making all the difference in the world. You look into Kyle's eyes as he sits there, impaled on your cock, and he looks back into yours, and you can see that he is just as awash in pleasure as you.";
	WaitLineBreak;
	say "     Soon enough the pleasure intensifies as Kyle begins to properly ride you, rising up and down on your shaft. You can feel the warm tightness of his ass around you, the friction bringing ever greater sensations. The lizardman seems to be feeling similarly, as his bouncing pace increases, and he starts to let out moans, a slight peaking in the tone each time his cheeks slap back against your thighs. Time seems to get away from you, blurring into a sexual haze as Kyle continues to ride your cock like there's no tomorrow. Eventually the growing pleasure begins to surge, cutting through the haze, and bringing the scene back into sharp clarity just as you start to come. Your erection throbs, and you can feel yourself releasing deep into Kyle, as he holds himself pressed down all the way, taking your shaft completely. As you cry out in orgasm, Kyle follows soon after, his member jerking and firing spurts of seed across each of your chests.";
	say "     The two of you remain sitting there for a short while, panting from the exertion, Kyle leaning draped across you and holding tight. Eventually you both fully catch your breath, and extricate yourselves from your emrace, starting to clean up from your exploits. After you've cleaned off, Kyle finally picks up his pants, and slips them back on. Then the lizardman walks back over to you and embraces you. 'That was wonderful, love. I'd probably be a bit more verbose about it, but I don't think I'll be able to concentrate properly for a while yet.' He laughs. 'Anyway, can't wait to do this again, so come back soon, okay?' You nod to Kyle, and he squeezes you once more before letting go, and the two of you leave the back room.";

to say KyleSex4: [Kyle fucks player ass]
	say "     <text to be added later";

Section 4 - Events

Angry Snake is a situation.
The level of Angry Snake is 4.
The sarea of Angry Snake is "High".
Angry Snake is inactive.

instead of resolving a Angry Snake:
	if GertyQuest is 1:
		say "     As you wander the High Rise District, a sign catches your eyes. It reads 'The Read Scare', and along with the iconography, you can tell that it was clearly a bookstore at one point. Remembering your promise to Kyle, you go to check it out, and go closer. As you near the front door, however, you can hear the sounds of something happening, a disturbance in the otherwise quiet air of the city block. Alarmed, you rush in the door, only to be greeted by a strange sight. Before you are three German Shepherds, standing together and growling menacingly at what seems to be a large fort constructed of books, set up between two of the bookshelves. Periodically one will inch closer, and then you finally see what's been keeping them at bay.";
		say "     A snake-like head emerges from an opening in the fort, and soon after a mechanical looking claw device reaches out alongside, and hurls what seems to be a large, hardbound copy of War and Peace at the lead canine, shouting all the while. 'Face the wrath of Tolstoy, fiends! Get thee away! To the classics section with you!' The book was thrown expertly, and connects with an audible smack against the muzzle of the targeted feral. The german shepherd whimpers at the attack, and backs further away, his companions alongside. If your hunch is correct, then it seem Gerty has been holed up here for some time, defending himself in an unconventional manner.";
		WaitLineBreak;
		say "     However, your observance doesn't go completely unnoticed. Soon enough, one of the canines realizes you're there, and shortly after the entire group is watching you. They look back and forth between you and the entrenched Gerty, and seem to unanimously decide you as the easier target, as they then rush at you.";
		let GroupFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and GroupFightCounter < 3: [runs three times or until loss/flee]
			now inasituation is true;
			challenge "German Shepherd";
			increase GroupFightCounter by 1;
		if fightoutcome < 20:
			say "     You stand victorious, the canines cowed before you. With another yell, Gerty throws a large encyclopedia at them from his fort. This proves to be the final straw for the dogs, and they flee, whimpering. You turn towards the fort, and narrowly dodge another tome sent your way. 'Back off, pal! I have dictionary, and I'm not afraid to use it!' You quickly throw your hands up in a gesture of surrender, and explain that Kyle sent you to make sure he was okay. The snake-like head once again pokes out of the fort. 'Bah, clearly I'm fine. And what's more, I had it handled. I had the entire contents of the reference section ready to discipline any more strays with.' The metallic appendage you had noticed before shakes at you like a fist.";
			say "     Despite his assertions, Gerty does begin to disassemble his fort, and emerges from his palace of knowledge. Now that you can see his entire body, he seems to essentially be an extremely large snake, when positioned upright his head being about as high up as an average person. His scales are mostly green, with a yellow pattern on the top of his head that seems to go back and down, and he is visibly shorter than his friend. Unlike most of the transformed you have seen, he lacks natural arms entirely on his new form. However, he has a slightly ragged looking harness about relative to his head as you would expect a torso to be, attached to some rather impressive mechanical prostheses that seem to replace them. His mechanical arms and snake-like torso give him the overall appearance of a Naga.";
			WaitLineBreak;
			say "     Gerty frowns at you. 'Well, since you're here, you may as well go tell Kyle that I'm fine, and that I'll deliver his books soon. Even if I didn't need the help, I appreciate the thought.' He picks up a small bag you hadn't noticed before, and from the view through the opening you can clearly tell that the bag is full of books, Gerty's haul on this expedition. 'I'll just be sure to pack more dictionaries next time, in case more pests decide to try and stop me.' With his goods clasped firmly in his mechanical hands, he turns around to leave, and stops when he sees you're still there. 'What are you waiting for? Get a move on!' In no time at all you're turned around and out the door, very much not wanting another book thrown at you. Time to talk to Kyle.";
			now GertyQuest is 2;
			move Gerty to Tenvale College Library;
			now Angry Snake is resolved;
		else if fightoutcome > 19 and fightoutcome < 30:
			say "     As you collapse, exhausted and injured, the [if GroupFightCounter is 1]trio of german shepherds prowl[else if GroupFightCounter is 2]remaining pair of german shepherds prowl[else]final german shepherd prowls[end if] towards your prone form, clearly preparing to do unspeakable things. However, their concentration is interrupted by another barrage from Gerty, distracting them momentarily. You quickly take advantage of your opening to get away before their attention is brought to you again. Hopefully Gerty will be fine for now.";
			now GertyQuest is 100;
		else if fightoutcome is 30:
			say "     You decide to cut your losses and get out of the bookstore before you are defeated by your canine adversaries. You turn around and run, fleeing out the door of the building to the sound of Gerty hurling both books and insults at your foes. Hopefully he'll be fine for now.";
			now GertyQuest is 100;
		now inasituation is false;
	if GertyQuest is 100:
		say "     You return to the bookshop where Gerty had been holding out in, and peer inside. It seems he's still been able to keep any ferals at bay, as any given creature that makes a move towards his fort receives a swift retribution in the form of a book to the nose. Deciding not to leave him trapped any longer, you leap into action to fight the canines prowling around.";
		let GroupFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and GroupFightCounter < 3: [runs three times or until loss/flee]
			now inasituation is true;
			challenge "German Shepherd";
			increase GroupFightCounter by 1;
		if fightoutcome < 20:
			say "     You stand victorious, the canines cowed before you. With another yell, Gerty throws a large encyclopedia at them from his fort. This proves to be the final straw for the dogs, and they flee, whimpering. You turn towards the fort, and narrowly dodge another tome sent your way. 'Back off, pal! I have dictionary, and I'm not afraid to use it!' You quickly throw your hands up in a gesture of surrender, and explain that Kyle sent you to make sure he was okay. The snake-like head once again pokes out of the fort. 'Bah, clearly I'm fine. And what's more, I had it handled. I had the entire contents of the reference section ready to discipline any more strays with.' The metallic appendage you had noticed before shakes at you like a fist.";
			say "     Despite his assertions, Gerty does begin to disassemble his fort, and emerges from his palace of knowledge. Now that you can see his entire body, he seems to essentially be an extremely large snake, when positioned upright his head being about as high up as an average person. His scales are mostly green, with a yellow pattern on the top of his head that seems to go back and down, and he is visibly shorter than his friend. Unlike most of the transformed you have seen, he lacks natural arms entirely on his new form. However, he has a slightly ragged looking harness about relative to his head as you would expect a torso to be, attached to some rather impressive mechanical prostheses that seem to replace them. His mechanical arms and snake-like torso give him the overall appearance of a Naga.";
			WaitLineBreak;
			say "     Gerty frowns at you. 'Well, since you're here, you may as well go tell Kyle that I'm fine, and that I'll deliver his books soon. Even if I didn't need the help, I appreciate the thought.' He picks up a small bag you hadn't noticed before, and from the view through the opening you can clearly tell that the bag is full of books, Gerty's haul on this expedition. 'I'll just be sure to pack more dictionaries next time, in case more pests decide to try and stop me.' With his goods clasped firmly in his mechanical hands, he turns around to leave, and stops when he sees you're still there. 'What are you waiting for? Get a move on!' In no time at all you're turned around and out the door, very much not wanting another book thrown at you. Time to talk to Kyle.";
			now GertyQuest is 2;
			move Gerty to Tenvale College Library;
			now Angry Snake is resolved;
		if fightoutcome > 19 and fightoutcome < 30:
			say "     As you collapse, exhausted and injured, the [if GroupFightCounter is 1]trio of german shepherds prowl[else if GroupFightCounter is 2]remaining pair of german shepherds prowl[else]final german shepherd prowls[end if] towards your prone form, clearly preparing to do unspeakable things. However, their concentration is interrupted by another barrage from Gerty, distracting them momentarily. You quickly take advantage of your opening to get away before their attention is brought to you again. Hopefully Gerty will be fine for now.";
		if fightoutcome is 30:
			say "     You decide to cut your losses and get out of the bookstore before you are defeated by your canine adversaries. You turn around and run, fleeing out the door of the building to the sound of Gerty hurling both books and insults at your foes. Hopefully he'll be fine for now.";
		now inasituation is false;


instead of going to Mall Atrium while hp of Kyle is 1: [Kyle date event] [{]
	KyleDateEvent;

to KyleDateEvent:
	move player to Mall Atrium;
	say "     As you enter the main room of the mall, you see Kyle leaning up against the wall, slightly out of the way of the main crowds. You walk over to him, dodging out of the way of a mall rat as you go. When you get close, Kyle notices you, and smiles. 'Glad to see you. Now, we should probably decide what we're actually going to do for the date.' He stteps away from the wall, and glances around the atrium. 'I'm not entirely sure about leaving the mall for it, since it can be pretty dangerous out there, and I'm not really good at the whole danger thing. And I'm sure we could have an excellent time here in the mall. But I'll leave the decision to you. Where do you want to go?'";
	if KyleRelationship < 10:
		now KyleRelationship is 10;
		now hp of Kyle is 0;
		say KyleDate1;
	else:
		now hp of Kyle is 0;
		say "[KyleDateMenu]";

to say KyleDateMenu:
	LineBreak;
	say "Where do you want to go on a date with Kyle?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "The Mall";
	now sortorder entry is 1;
	now description entry is "Stay in the mall and hang out";
	[]
	[if Park Entrance is known:
		choose a blank row in table of fucking options;
		now title entry is "The Park";
		now sortorder entry is 2;
		now description entry is "Go to the park";]
	[]
	[if Beach Plaza is known:
		choose a blank row in table of fucking options;
		now title entry is "The Beach";
		now sortorder entry is 1;
		now description entry is "Take Kyle to the beach";]
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
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
				if (nam is "The Mall"):
					say "[KyleDate2]";
				if (nam is "The Park"):
					say "[KyleDate3]";
				if (nam is "The Beach"):
					say "[KyleDate4]";
				WaitLineBreak;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options]";
	clear the screen and hyperlink list;

to say KyleDate1: [first mall date]
	say "     You tell Kyle that you're fine with staying in the mall, and spending some time with him there. He smiles in response. 'It may not be the most spectacular, but hey, it'll be a pretty great date no matter what, as long as we're spending it together, right?' You nod at Kyle in affirmation. 'Great. Now, I've spent enough time here to know my way around fairly well, so come on. I'll give you a tour.' For the next while, Kyle leads you around the mall, showing you the various points of interest, and telling you things about them that only a mall local would know. Some time is spent at the various mall stores that are still functional, browsing collections, discussing items, and generally having an enjoyable time. Finally, the two of you come back to the atrium of the mall, and the two of you sit in the center, looking at the fountain. Though it's now just a stagnant pool of water, you can still see clearly how it used to look.";
	say "     As the two of you lean into each other in front of the fountain, Kyle speaks. 'Hey, I had a really good time, even without leaving the mall. Spending time with you is nice, and I'd definitely like to do it more.' Kyle looks away from the still water of the fountain, and meets your gaze. 'I think that I'm ready for this to be a relationship, now. I was nervous before, I'd never really done anything of the sort. Always too much of an introvert, never looked very hard. But this? This is good. I definitely want to do this again.' Kyle's voice is somewhat tense, a measure of nervous energy putting him on edge. You smile at the lizardman, agreeing on may of those points. Rather than let him engage further in his nervous speech, however, you answer him affirmatively, by leaning forward and catching his lips with a kiss.";
	WaitLineBreak;
	say "     As the kiss goes on, Kyle relaxes, and leans further into you. After a short while, you finally break apart to breathe properly, and Kyle smiles. 'Well, I suppose I can take that as an agreement, can't I? Well, I may have said it already, but it bears saying again. The date was wonderful, and you were wonderful. I'm glad we did it, and I can't wait for more.' Kyle suddenly shoots forwards and gives you a hug. 'I'll see you soon, I hope, back at the shop, love. Oh, that sounds great. Love. Anyway, even the best date has to end somewhere, so see you later, love.' Kyle stands up and walks back towards the east wing of the mall, leaving you sitting by the fountain in the atrium, enjoying the warm feeling you still have.";

to say KyleDate2: [mall date]
	say "     A";

to say KyleDate3: [park date]
	say "     You tell Kyle that you'd like to take him on a date to the park. 'Oh, man, the city park was a nice one. I bet it'd be a great place for a date. But isn't it kind of dangerous now?' You reassure him that you know what you're doing, and that you'll make sure to protect him while you're there. He looks slightly worried, but nods regardless. 'Alright. I trust you. Let's go to the park, then.' You spend a short while escorting Kyle to the park, avoiding confrontations with several ferals along the way. Finally you both arrive, safely at the entrance to the city park.";
	say "     <text>";

to say KyleDate4: [beach date]
	say "     <text>";


[instead of going to Brookstone Books while (GertyRelationship is 5 and a random chance of 1 in 3 succeeds): [First Gerty threesome event]
	move player to Brookstone Books;
	say "     <Gerty Threesome Event Text>";]

[
instead of going to Brookstone Books while (Thirst of Kyle is 1):
	move player to Brookstone Books;
	say "     <Second Threesome Text>";
	now Thirst of Kyle is 0;
]

Kyle ends here.
