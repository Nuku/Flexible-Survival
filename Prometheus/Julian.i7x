Version 1 of Julian by Prometheus begins here.

[ hp of Julian - relationship variable with the player       ]
[   0: not met                                               ]
[   1: Sylvia's heat dealt with.                             ]
[   2: Got his room number.                                  ]
[   3: Met him in his room                                   ]
[   4: Met at beach                                          ]
[   5:                                                       ]
[   6:                                                       ]
[   7:                                                       ]
[ 100: Refused his conversation.                             ]

An everyturn rule:
	if a random chance of 1 in 2 succeeds: [present]
		move Julian to Julian's Room;
	else: [Away on an adventure.]
		remove Julian from play;

Section 1 - Room Declaration

Julian's Room is a room.
The description of Julian's Room is "[JuliansRoomDesc]".

to say JuliansRoomDesc:
	say "     Julian's room looks like ordered chaos. There are piles of books, games, and other belongings lying around, but he seems to know where things are. His bed is crumpled, but mostly made, strands of fur covering the duvet. Beneath the bed, a locked case pokes out, the contents as of yet unknown. Despite the mess, his desk space is clean, a powerless laptop pushed carefully to the side to make space for several pads of paper.";

Section 2 - NPC Declaration

Julian is a man. The hp of Julian is usually 0.
The description of Julian is "[JulianDesc]".
The conversation of Julian is { "Woof grrr" }.
The scent of Julian is "     Julian, unsurprisingly smells like a wolf. Though there are different undertones...".

to say JulianDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Julian] <- DEBUG[line break]";
	else:
		say "     Julian is a young male wolf with pitch black fur covering his entire body. While he usually walks on two legs, you get the impression that if he wanted to, he could drop to all fours for greater speed or balance. He looks at you with curious dark brown eyes, feeling self-conscious as you observe him. He wears black trousers and a white shirt, hiding his body from view, though the impressive bulge in his trousers suggests an impressive organ.";
		LineBreak;
		say "     From what Sylvia has said, and the times you have met him, he seems to be a quiet student, though you have seen him being more boisterous and active. Very loyal to his friends, you seemed to have piqued his interest with your willingness to aid Sylvia. Realising that you have been almost studying him for a while, you bring your gaze back to meet his, a smile cresting his lips.";

Section 3 - Talking

instead of conversing the Julian:
	say "     You approach Julian, whom, from his toothy grin, seems pleased to see you. Brushing off a corner, he indicates for you to sit on the bed facing him and asks what you wish to talk about, his tail wagging cheerfully.";
	WaitLineBreak;
	say "[JulianTalkMenu]";

to say JulianTalkMenu:
	say "[line break]";
	say "What do you wish to discuss with Julian?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn more about the black wolf.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Family";
	now sortorder entry is 2;
	now description entry is "Ask about his family.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Friends";
	now sortorder entry is 3;
	now description entry is "Ask about his friends.";
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
				if (nam is "Himself"):
					say "[JulianTalk1]";
				if (nam is "Family"):
					say "[JulianTalk2]";
				if (nam is "Friends"):
					say "[JulianTalk3]";
				say "      Julian watches you patiently, waiting to see whether you wish to continue the conversation";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You stand up, indicating an end to the conversation. Julian glances at you, before looking out the window.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JulianTalk1: [Talk about him]
	say "     'I don't know how much Sylvia has said about me, so I'll assume nothing. I was born in Canada in a village that you'll have never heard of. We were a close family, though we didn't see Dad very often as he worked for a research firm in the city. He made quite a bit of money too which certainly helped Mum raise us without him. I was home schooled until I was eleven before being sent to a boarding school for my secondary education. Apparently, Mother was good at teaching me mathematics as I was put ahead a few years in it. This meant that by the time I finished maths I had time to focus more on science and that physics was easier due to my knowledge of calculus. I finished school and applied to come here to study biophysics, though I am quite capable of normal physics too. I didn't make any friends at school, there wasn't the tight knit community that existed in the village and I don't talk much to people I don't know,' he says, smiling ruefully.";
	say "     'I didn't play any sports growing up, but I don't mind joining in if there is no pressure to be any good. You may have seen me with the others. When Dad was home, we would all go out as a family for walks in the forest. Sometimes for a few hours, once or twice for a few days. The long trips were especially fun, climbing trees, watching the wildlife... For a tech whiz, my father knew quite a lot about the natural world. Ummm, what else is there to say about me? I'm bisexual, though now I prefer fur to skin. That may be due to being a wolf, but it isn't a big problem. If someone can bring me pleasure with pussy, ass, or cock I don't mind. That said there is much more to life than sex. Something much of the city seems to have forgotten sadly. I think that brings an end to my self-centred monologue, is there anything else?' He looks at you hopefully, any shyness gone for now at least.";

to say JulianTalk2: [Talk about his family]
	say "     'My father worked for a tech development company, something to do with computers. He said he wasn't allowed to tell us exactly what. He wasn't often at home, but when he was we would be all together in the same room or walking in the forest. He liked spending time outdoors, even in winter. When we were younger we all used to play hide-and-seek in the woods, each of us carrying a thermos of hot chocolate. My mother had to look after us while Dad was away, meaning she didn't have any employment. She home schooled us until we were ready for high school and then we were sent to board. She had a teaching license, so we had a decent start in life. I should have a photo of us somewhere.' He rootles through a drawer, pulling out a battered photo frame with five smiling people in it. A tall black-haired man and a round woman with wavy ginger hair stand behind three boys of varying ages. Julian points to the oldest looking boy standing next to his father. 'That's me. Gosh, I look silly in photos.'";
	say "     You ask who was taking the picture. He looks at you sadly and mumbles, 'my sister. She was older than me, but she slipped down a hill and has been in a coma since just before I came here. If what's happening to the city is happening elsewhere, I don't know how she is.' Wanting to change the subject, you quickly ask about his brothers. 'Alan is the youngest, he was seven when I left. he wanted to be like Dad when he grew up, so Mother let him have extra time using the computer that my other siblings and I didn't have when we were his age. My other brother, James, was eleven and wanted to join the armed forces. He was very good at making friends with people, a quality which I lacked, so I'm sure he would do very well surrounded by strangers.' He seems lost in thought, perhaps thinking of how his family may be now. You sit in silence, deciding whether or not to ask anything else.";
	
to say JulianTalk3: [Talk about his friends]
	say "     'Before I went to high school, I was friends with many of the other children in the village. There was a small school, but I didn't go to it. I would be able to play with them in the afternoons, once we had all finished our classes for the day. Boys and girls all together. It was good, but once I went to boarding school my social life changed. I didn't really make friends with the other pupils, some bullied me, and many of the others feared associating with me in case they faced the same. I sort of became a teacher's pet, putting a lot of effort into progressing academically rather than focusing on a social life or sport. That probably didn't help improve my treatment from my peers. A few people would sit with me at times, eating lunch quietly with only a few soft conversations across the table. Luckily, since coming to Tenvale, the other students treat me nicely, though I still wouldn't describe myself as a people person,' he jokes about his shyness.";
	say "     'My main friends are Sylvia and the twins, Evelyn and Evenlyn, though there are a few other people that I talk to fairly often. One of the main reasons I'm friends with Sylvia is that we've done many of the same science papers, even being assigned to the same tutorials and labs. Her being so socially competent probably helped considerably too. Now we're in the same research group, though with the developments in the city, the focus has changed somewhat. The twins sort of invited themselves into the group, with none of us minding at all. They're cheerful and helpful, some of the things they bring back makes me wonder where and how they managed to get it, but I admit, the food and medicine are a distinct boon for us. They seem to be a bit more intimate than I would expect of siblings, but I don't have anything against it, and there are much worse things happening in the city,' he contemplates. 'I think that's all. Who knows, in future I might be mentioning you to other people when asked such a question.'";

Section 4 - Sex

instead of fucking Julian:
	if (lastfuck of Julian - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'Quite the sex drive you have there. Sorry, but it hasn't been that long since we last... you know... Give me a bit more time, then I'll be ready again.'";
	else if hp of Julian < 4: [relationship not high enough]
		say "     'While I am looking forward to feeling your body against mine... Wait. Why did I describe it like that? I feel so embarrassed. Please. Let me get to know you more, then we can discuss this.'";
	else: [ready for sex]
		say "     Looking at the wolf, you can see the ruddy tip of his penis peeking out of his sheath. Noticing your glance, Julian blushes, but turns to give you a better view and inviting further action.";
		WaitLineBreak;
		say "[JulianSexMenu]";

to say JulianSexMenu:
	say " [line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Receive Fellatio";
		now sortorder entry is 1;
		now description entry is "Ask Julian to give you a blowjob";
	[]
	if cunts of player > 0: [only females and herms can be eaten out.]
		choose a blank row in table of fucking options;
		now title entry is "Receive Cunnilingus";
		now sortorder entry is 2;
		now description entry is "Feel his tongue in your pussy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Give Fellatio";
	now sortorder entry is 3;
	now description entry is "Have a taste of his lupine cock";
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
				if (nam is "Receive Fellatio"):
					say "[JulianSex1]";
				if (nam is "Receive Cunnilingus"):
					say "[JulianSex2]";
				if (nam is "Give Fellatio"):
					say "[JulianSex3]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the wolf, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JulianSex1: [Receive a blowjob]
	say "     Exposing your erect cock, you gesture for him to kneel and give it some attention. He shakes his head, instead suggesting that you stand at the bottom of the bed and thrust into his mouth while he lies there. Mock sighing at his laziness, you quickly shuffle across, eager to feel his throat pulse around your member. His fluffy black head hangs over the edge of the mattress, waiting for you to align yourself. 'I hope you realise that me exposing my throat like this doesn't make you dominant or anything, I expect to have my chances with you too,' he playfully growls, a twinkle in his eye. [if player is submissive]You quickly inform him that you'll act in whatever way pleases him, whether it be giving or receiving pleasure. [else if player is dominant]You grunt, neither assenting or disputing his claim. It all depends on how you feel at the time, bit there seems little harm in a little role reversal if it keeps you both happy. [else] You smile, saying that you hadn't really thought of it like that, but if he wants to be dominant or submissive, you don't mind. [end if]With that out of the way, you thrust forward, pushing your [cock of player]shaft over his lips and into his warm, wet mouth.";
	say "     Julian is careful not to scrape you with his teeth, suggesting he has had some experience with this before. Supporting this assumption is the way in which he cradles your cock with his tongue as it slides through his mouth, the dextrous organ seemingly squeezing you every so often. You stroke his neck and the underside of his jaw with one hand while supporting yourself on his shoulder with the other. You increase the pace, your balls slapping against his snout, his sharp inhales tickling your skin. With a stifled shout, you hilt yourself in his muzzle, your seed squirting down his throat, the wolf swallowing keenly. With a sigh, you pull out, a few strands of semen trickling onto Julian's face as he turns over. Licking as much of his face as he can, Julian sits up. 'That was fun, really made me feel the bond between us. Enjoying the flavour is an added bonus too. Perhaps you could reciprocate at some point? Have an experience with the big bad wolf?' His ears dip at the last comment. 'Sorry, that was a bit too far, but please, come back again.'";
	
to say JulianSex2: [Be eaten out]
	say "     Removing your clothes, you spread your labia with two fingers, displaying to Julian how ready you are. 'This will be easier if you sit on the edge of the bed,' he says, kneeling next to you as you seat yourself, legs apart. He traces his fingers over your thighs, carefully avoiding touching your most sacred place. As his hand runs over your tummy you lose patience, grabbing his wrist and tugging it back down to your gash, easing one of his digits into the dampness. He grins at you seizing control, but nonetheless accedes to your will, inserting a second finger and thrusting them into your snatch while rubbing your clit with his thumb. Occasionally he touches just the right lace, causing your hips to spasm, sending his fingers deeper as your groin thrusts forth. His other hand caresses your waist, the contrasting levels of stimulation tingling the nerves in the back of your neck.";
	say "     Withdrawing his fingers from your cunt, Julian licks the juices off them, noisily smacking his lips. 'Time for this wolf to eat the kitty,' he jokes before diving between your legs, showing more enthusiasm than skill in lapping at the folds of your slit. Gripping his ears, you grind against his snout, his cool nose pressed against your clitoris, heightening the pleasure of the action. Eager to see what you really taste like, the wolf spears your pussy with his tongue, juices running over his muzzle. You press him even tighter against you, making him focus on moving his tongue rather than his whole head. He adapts quickly, using the flat pink organ like a penis, thrusting it in and out instead of running it up and down. Shuddering, your orgasm breaks, fem-cum spraying into his maw and across his snout. As you relax, he eases his head out of your hands and looks at you, wet patches speckled across his face. 'Tart,' he says standing up and wiping his face. 'Definitely worth repeating.'";

to say JulianSex3: [Give him a blowjob]
	say "     Noticing your glances at his tip peeping from the sheath, Julian surmises your desire, and walks across to you. 'If you could kneel on all fours please,' he requests, cradling his hardening shaft in his hand. You comply, stripping, before looking up at him, waiting. His carmine cock hangs in front of your face, twitching with a bead of fluid on the tip. He presses it against your lips, crouching slightly to improve the angle. [if player is submissive]The wolf's display of dominance sends tingles down your spine, his confidence heightening the thrill. [else if player is dominant]While part of you resents being in such a submissive position, you concede that some variety could be beneficial too. [end if]You gaze up at him, catching his eye as you push your mouth forward, his shaft disappearing into your cosy maw. He aids you, shuffling forward until his furry scrotum is against your chin, and your nose is pressed into his groin, smelling his pleasant canine scent.";
	say "     Julian begins thrusting, holding your shoulders for support. Wet squelching and slapping noises fill the room to such an extent that you wonder how many other people in the dorm can hear you. A low growl rumbles in the wolf's throat, though it sounds more like a groan of pleasure than hostility. A knot begins to develop at the base of his penis as the wet warmth of your mouth excites him. The developing bulge squeezes past your lips, luckily avoiding any contact with your teeth. deciding that knotting your mouth isn't a good idea, Julian reduces the depth of his thrusts but increases the tempo to compensate. As he nears climax, your lupine lover firmly grips the side of your head, hilting except for the knot which brushes your nose, saliva still smeared on it. Fighting back a howl, Julian releases a torrent of cum into your mouth, the copious fluid dribbling out of the corners as you fail to swallow quickly enough. Once he is content that you have swallowed his load, the wolf pulls out, his cock hanging down stiffly between his legs still twitching.";

Section 5 - Events

[See Sylvia for start]

A Wolf's Invitation is a situation.
The level of A Wolf's Invitation is 0.
The sarea of A Wolf's Invitation is "Campus".

instead of going to College Walkway East while (A Wolf's Invitation is not resolved and hp of Sylvia > 3 and a random chance of 1 in 2 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	AWolfsInvitationEvent;

Instead of resolving A Wolf's Invitation:
	AWolfsInvitationEvent;

to AWolfsInvitationEvent: [Room invitation from Julian]
	say "     A shout catches your attention as you walk along the pathway. Turning around, you see a wolf rushing towards you whom you recognise as Julian, Sylvia's friend. He slows as he reaches you so as to avoid knocking you over, and asks whether you would like to sit with him, indicating a nearby bench. Curious as to why he was so keen on getting your attention, you follow him, his tail wagging softly through a hole in his trousers as you agree. You sit together, watching the other students wandering around the campus. Having never spent any time with him without the collie present, usually doing something sexual, you feel slightly unsure of what he expects from you.";
	say "     [bold type]Do you want to stay and see what he wants, or is this too weird?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay. He seems friendly.";
	say "     ([link]N[as]n[end link]) - Time to leave. You're feeling uncomfortable.";
	if player consents: [Stay]
		LineBreak;
		say "     He turns to you, nervously scratching a wrist. 'What you did to help Sylvia was really kind,' he mumbles, conversing with people he barely knows apparently not his strong point. 'She seems to trust you, and I trust her judgement, so... would you like to talk some more at some point? I'd like to get to know you more, especially if you're going to be one of Sylvia's friends.' He looks at you earnestly, his deep brown eyes meeting your own. 'I'll let you think about it more,' he says, standing up, 'Come and see me if you feel like it.' After giving you his room number, he walks away, his social anxiety overcoming his desire to continue talking to you. You stand up and return to the path, trying to decide whether, and if so when, you want to visit his room.";
		now hp of Julian is 2; [Got room number]
		change the northeast exit of Tenvale College Male Dorms to Julian's Room; [connecting the location to the travel room]
		change the southwest exit of Julian's Room to Tenvale College Male Dorms; [connecting the location to the travel room]
	else: [Go]
		say "     Apologising that you have places to be, you leave the wolf dejected on the bench and return to the path. You don't think he'll be doing that again.";
		now hp of Julian is 100; [Rejected him]
	now A Wolf's Invitation is resolved;
		
instead of going northeast from Tenvale College Male Dorms while (hp of Julian is 2):
	JulianRoomEvent;
	
to JulianRoomEvent: [First Time to Julian's Room]
	say "     As you walk down the corridor, the merriment of the students reverberates off the walls. You reach Julian's room and knock, his voice from within telling you to enter. You close the door behind you as you step into a disorderly room, clutter on the table that the wolf is sitting at, seemingly copying passages from a text book. He turns to face you, a smile breaking across his face at your decision to come and see him despite his nervous invitation. 'I'm glad you came, would you like a seat?' he offers the desk chair he was just sitting in as he perches on the edge of the fur covered bed. You do so, swivelling so that you are facing him, and wait for him to begin a conversation.";
	say "     'Considering so far every time you've seen me it has been in some connection with Sylvia, to put it lightly, I thought I should probably tell you a bit more about myself. As you know, my name is Julian and I am from Canada. I'm studying biophysics, though being part of Sylvia's research team means I do other things to as she is more focused on biology,' the wolf explains, scratching his arm nervously. 'I don't have many friends, Sylvia and the twins being the only people I really socialise with, though I'm hoping that you would be willing to spend time with us too. Who knows, you might be able to help our research progress, but you'd have to talk to Sylvia about it. We're going to the beach at some point, perhaps you could join us and meet the whole group? While I'm pleased that you took the time to come and see me, I have some work to do now, but please come back again another time, I really do want to get to know you better,' he says suggestively, glancing at your form.";
	now hp of Julian is 3; [Met him in his room]

Julian ends here.