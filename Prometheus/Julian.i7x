Version 1 of Julian by Prometheus begins here.

[ hp of Julian - relationship variable with the player       ]
[   0: not met                                               ]
[   1: Sylvia's heat dealt with                              ]
[   2: Got his room number                                   ]
[   3: Met him in his room                                   ]
[   4: Met at beach                                          ]
[   5: Got the libido pills                                  ]
[   6:                                                       ]
[   7:                                                       ]
[ 100: Refused his conversation                              ]

[QUEST LOG]
to JulianQuestLog:
	if hp of Julian is:
		-- 1:
			say "[bold type]Julian Quest: [roman type]Having helped Sylvia get over her heat, I should get to know Julian more if I want to spend more time with them.";
		-- 2:
			say "[bold type]Julian Quest: [roman type]While he didn't stay for long, Julian gave me his room number. I should go and see him at some point.";
		-- 3:
			say "[bold type]Julian Quest: [roman type]Once again, Julian was too busy to spend much time with me. He was very apologetic and invited me to join the group at the beach.";
		-- 4:
			say "[bold type]Julian Quest: [roman type]I met the Julian and his friends at the beach and they made me feel like part of the group. Hopefully he'll give me more chances to help them.";
		-- 5:
			say "[bold type]Julian Quest: [roman type]I helped Julian gather libido suppressants from the hospital. While it didn't go smoothly, a mercenary, Cynthia, intervened on out behalf and we succeeded in getting the drugs.";


JulianRoomConnection is a number that varies.[@Tag:NotSaved]

an everyturn rule:
	if Wolf's Invitation is resolved and Resolution of Wolf's Invitation is 1 and JulianRoomConnection is 0:
		change the northeast exit of Tenvale College Male Dorms to Julian's Room; [connecting the location to the travel room]
		change the southwest exit of Julian's Room to Tenvale College Male Dorms; [connecting the location to the travel room]
		now JulianRoomConnection is 1; [room connected]
	if a random chance of 1 in 2 succeeds: [present]
		move Julian to Julian's Room;
	else: [Away exploring]
		now Julian is nowhere;

Section 1 - Room Declaration

Table of GameRoomIDs (continued)
Object	Name
Julian's Room	"Julian's Room"

Julian's Room is a room.
The description of Julian's Room is "[JuliansRoomDesc]".

to say JuliansRoomDesc:
	say "     Julian's room looks like ordered chaos. There are piles of books, games, and other belongings lying around, but he seems to know where things are. His bed is crumpled, but mostly made, strands of fur covering the duvet. Beneath the bed, a locked case pokes out, the contents as of yet unknown. Despite the mess, his desk space is clean, a powerless laptop pushed carefully to the side to make space for several pads of paper.";

Section 2 - NPC Declaration

Table of GameCharacterIDs (continued)
object	name
Julian	"Julian"

Julian is a man. The hp of Julian is usually 0.
[Physical details as of game start]
ScaleValue of Julian is 3. [human sized]
SleepRhythm of Julian is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Julian is 1. [One cock]
Cock Length of Julian is 10. [10 Inches]
Cock Width of Julian is 2. [Each testicle 1 inch across]
Testes of Julian is 2. [Two balls]
Cunts of Julian is 0. [No pussy]
Cunt Length of Julian is 0. [No Cunt]
Cunt Width of Julian is 0. [No Cunt]
Breasts of Julian is 2. [2 nipples]
Breast Size of Julian is 0. [Flat at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Julian is false. [can take oversized members without pain]
Sterile of Julian is false.
PlayerMet of Julian is false.
PlayerRomanced of Julian is false.
PlayerFriended of Julian is false.
PlayerControlled of Julian is false.
PlayerFucked of Julian is false.
OralVirgin of Julian is false.
Virgin of Julian is true.
AnalVirgin of Julian is false.
PenileVirgin of Julian is false.
SexuallyExperienced of Julian is true.
MainInfection of Julian is "Alpha Wolf".
The description of Julian is "[JulianDesc]".
The conversation of Julian is { "Woof grrr" }.
The scent of Julian is "     Julian, unsurprisingly smells like a wolf. Though there are different undertones...".

to say JulianDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Julian] <- DEBUG[line break]";
	else:
		say "     Julian is a young male wolf with pitch-black fur covering his entire body. While he usually walks on two legs, you get the impression that if he wanted to, he could drop to all fours for greater speed or balance. He looks at you with curious, dark-brown eyes, feeling self-conscious as you observe him. He wears black trousers and a white shirt, hiding his body from view, though the impressive bulge in his trousers suggests an impressive organ.";
		say "     From what Sylvia has said and the times you have met him, he seems to be a quiet student, though you have seen him being more boisterous and active. Very loyal to his friends, you seemed to have piqued his interest with your willingness to aid Sylvia. Realizing that you have been almost studying him for a while, you bring your gaze back to meet his, a smile cresting his lips.";

Section 3 - Talking

instead of conversing the Julian:
	say "     You approach Julian, whom, from his toothy grin, seems pleased to see you. Brushing off a corner, he indicates for you to sit on the bed facing him and asks what you wish to talk about, his tail wagging cheerfully.";
	say "[JulianTalkMenu]";

to say JulianTalkMenu:
	LineBreak;
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
					say "[JulianTalk1]";
				if (nam is "Family"):
					say "[JulianTalk2]";
				if (nam is "Friends"):
					say "[JulianTalk3]";
				say "     Julian watches you patiently, waiting to see whether you wish to continue the conversation";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You stand up, indicating an end to the conversation. Julian bids you farewell, before looking out the window.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JulianTalk1: [Talk about him]
	say "     'I don't know how much Sylvia has said about me, so I'll assume nothing. I was born in Canada in a village that you'll have never heard of. We were a close family, though we didn't see Dad very often as he worked for a research firm in the city. He made quite a bit of money too, which certainly helped Mum raise us without him. I was homeschooled until I was eleven before being sent to a boarding school for my secondary education. Apparently, Mother was good at teaching me mathematics as I was put ahead a few years in it. This meant that by the time I finished maths, I had time to focus more on science and that physics was easier due to my knowledge of calculus. I finished school and applied to come here to study biophysics, though I am quite capable of normal physics too. I didn't make any friends at school.' Julian gives a rueful smile. 'There wasn't the tight knit community that existed in the village, and I don't talk much to people that I don't know.'";
	say "     'I didn't play much sports growing up, but I don't mind joining in if there is no pressure to be any good. You may have seen me with the others. When Dad was home, we would all go out as a family for walks in the forest. Sometimes for a few hours, once or twice for a few days. The long trips were especially fun, climbing trees, watching the wildlife... For a tech whiz, my father knew quite a lot about the natural world. Ummm, what else is there to say about me? I'm bisexual, though now I prefer fur to skin. That may be due to being a wolf, but it isn't a big problem. If someone can bring me pleasure with pussy, ass, or cock, I don't mind. That said, there is much more to life than sex, something much of the city seems to have forgotten sadly. I think that brings an end to my self-centered monologue, is there anything else?' He looks at you hopefully, any shyness gone for now at least.";

to say JulianTalk2: [Talk about his family]
	say "     'My father worked for a tech development company, something to do with computers. He said that he wasn't allowed to tell us exactly what. He wasn't often at home, but when he was, we would be all together in the same room or walking in the forest. He loved spending time outdoors, even in winter. When we were younger, we all used to play hide-and-seek in the woods, each of us carrying a thermos of hot chocolate. My mother had to look after us while Dad was away, meaning that she didn't have any employment. She homeschooled us until we were ready for high school and then we were sent to board. She had a teaching license, so we had a decent start in life. I should have a photo of us somewhere.' Julian roots through a drawer, pulling out a battered photo frame with five smiling people in it. A tall black-haired man and a round woman with wavy ginger hair stand behind three boys of varying ages. Julian points to the oldest looking boy standing next to his father. 'That's me. Gosh, I look silly in photos.'";
	say "     You ask who was taking the picture. He looks at you sadly and mumbles, 'My sister. She was older than me, but she slipped down a hill and has been in a coma since just before I came here. If what's happening to the city is happening elsewhere, I don't know how she is.' Wanting to change the subject, you quickly ask about his brothers. 'Alan is the youngest, and he was seven when I left. He wanted to be like Dad when he grew up, so Mother let him have extra time using the computer that my other siblings and I didn't have when we were his age. My other brother, James, was eleven and wanted to join the armed forces. He was very good at making friends with people, a quality which I lacked, so I'm sure that he would do very well surrounded by strangers.' He seems lost in thought, perhaps thinking of how his family may be now. You sit in silence, deciding whether or not to ask anything else.";

to say JulianTalk3: [Talk about his friends]
	say "     'Before I went to high school, I was friends with many of the other children in the village. There was a small school, but I was homeschooled. I would be able to play with them in the afternoons, once we had all finished our classes for the day. Boys and girls all together. It was good, but once I went to boarding school, my social life changed. I didn't really make friends with the other pupils. Some bullied me, and many of the others feared associating with me in case they faced the same. I sort of became a teacher's pet, putting a lot of effort into progressing academically rather than focusing on a social life or sport. That probably didn't help improve my treatment from my peers. A few people would sit with me at times, eating lunch quietly with only a few soft conversations across the table. Luckily, since coming to Tenvale, the other students have treated me nicely, though I still wouldn't describe myself as a people person,' Julian jokes about his shyness.";
	say "     'My main friends are Sylvia and the twins, Evelyn and Evenlyn, though there are a few other people that I talk to fairly often. One of the main reasons that I'm friends with Sylvia is that we've done many of the same science papers, even being assigned to the same tutorials and labs. Her being so socially competent probably helped considerably too. Now that we're in the same research group, though with the developments in the city, the focus has changed somewhat. The twins sort of invited themselves into the group, with none of us minding at all. They're cheerful and helpful, and some of the things that they bring back makes me wonder where and how they managed to get them, but I admit, the food and medicine are a distinct boon for us. They seem to be a bit more intimate than I would expect of siblings, but I don't have anything against it, and there are much worse things happening in the city,' he contemplates. 'I think that's all. Who knows, in the future, I might be mentioning you to other people when asked such a question.'";

Section 4 - Sex

instead of fucking Julian:
	if (lastfuck of Julian - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'Quite the sex drive you have there. Sorry, but it hasn't been that long since we last... you know... Give me a bit more time, then I'll be ready again.'";
	else if hp of Julian < 4: [relationship not high enough]
		say "     'While I am looking forward to feeling your body against mine... Wait. Why did I describe it like that? I feel really embarrassed... Please. Let me get to know you more, then we can discuss this.'";
	else: [ready for sex]
		say "     Looking at the wolf, you can see the ruddy tip of his penis peeking out of his sheath. Noticing your glance, Julian blushes, but turns to give you a better view and inviting further action.";
		WaitLineBreak;
		say "[JulianSexMenu]";

to say JulianSexMenu:
	say " [line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Receive Fellatio";
		now sortorder entry is 1;
		now description entry is "Ask Julian to give you a blowjob";
	[]
	if player is female: [only females and herms can be eaten out.]
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
				if (nam is "Receive Fellatio"):
					say "[JulianSex1]";
				if (nam is "Receive Cunnilingus"):
					say "[JulianSex2]";
				if (nam is "Give Fellatio"):
					say "[JulianSex3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the wolf, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JulianSex1: [Receive a blowjob]
	say "     Exposing your erect cock, you gesture for Julian to kneel and give it some attention. He shakes his head, instead suggesting that you stand at the bottom of the bed and thrust into his mouth while he lies there. Mock sighing at his laziness, you quickly shuffle across, eager to feel his throat pulse around your member. His fluffy, black head hangs over the edge of the mattress, waiting for you to align yourself. 'I hope that you realize that me exposing my throat like this doesn't make you dominant or anything. I expect to have my chances with you too,' he playfully growls, a twinkle in his eye. You [if player is submissive]quickly inform him that you'll act in whatever way pleases him, whether it be giving or receiving pleasure[else if player is dominant]grunt, neither assenting or disputing his claim. It all depends on how you feel at the time, but there seems little harm in a little role reversal if it keeps you both happy[else]smile, saying that you hadn't really thought of it like that, but if he wants to be dominant or submissive, you don't mind[end if]. With that out of the way, you thrust forward, pushing your [cock of player] shaft over his lips and into his warm, wet mouth.";
	say "     Julian is careful not to scrape you with his teeth, suggesting that he has had some experience with this before. Supporting this assumption is the way in which he cradles your cock with his tongue as it slides through his mouth, the dexterous organ seemingly squeezing you every so often. You stroke his neck and the underside of his jaw with one hand while supporting yourself on his shoulder with the other. You increase the pace, your balls slapping against his snout, his sharp inhales tickling your skin. With a stifled shout, you hilt yourself in his muzzle, your seed squirting down his throat, the wolf swallowing keenly. With a sigh, you pull out, a few strands of semen trickling onto Julian's face as he turns over. Licking as much of his face as he can, Julian sits up. 'That was fun, really made me feel the bond between us. Enjoying the flavor is an added bonus too. Perhaps you could reciprocate at some point? Have an experience with the big bad wolf?' His ears dip at the last comment. 'Sorry, that was a bit too far, but please, come back again.'";

to say JulianSex2: [Be eaten out]
	say "     Removing your clothes, you spread your labia with two fingers, displaying to Julian how ready you are. 'This will be easier if you sit on the edge of the bed,' he says, kneeling next to you as you seat yourself, legs apart. He traces his fingers over your thighs, carefully avoiding touching your most sacred place. As his hand runs over your tummy, you lose patience, grabbing his wrist and tugging it back down to your gash, easing one of his digits into the dampness. He grins at you seizing control, but nonetheless accedes to your will, inserting a second finger and thrusting them into your snatch while rubbing your clit with his thumb. Occasionally, he touches just the right place, causing your hips to spasm, sending his fingers deeper as your groin thrusts forth. His other hand caresses your waist, the contrasting levels of stimulation tingling the nerves in the back of your neck.";
	say "     Withdrawing his fingers from your cunt, Julian licks the juices off of them, noisily smacking his lips. 'Time for this wolf to eat the kitty,' he jokes before diving between your legs, showing more enthusiasm than skill in lapping at the folds of your slit. Gripping his ears, you grind against his snout, his cool nose pressed against your clitoris, heightening the pleasure of the action. Eager to see what you really taste like, the wolf spears your pussy with his tongue, juices running over his muzzle. You press him even tighter against you, making him focus on moving his tongue rather than his whole head. He adapts quickly, using the flat, pink organ like a penis, thrusting it in and out instead of running it up and down. Shuddering, your orgasm breaks, fem-cum spraying into his maw and across his snout. As you relax, he eases his head out of your hands and looks at you, wet patches speckled across his face. 'Tart,' he says standing up and wiping his face. 'Definitely worth repeating.'";

to say JulianSex3: [Give him a blowjob]
	say "     Noticing your glances at his tip peeping from the sheath, Julian surmises your desire and walks across to you. 'If you could kneel on all fours please,' he requests, cradling his hardening shaft in his hand. You comply, stripping, before looking up at him, waiting. His carmine cock hangs in front of your face, twitching with a bead of fluid on the tip. He presses it against your lips, crouching slightly to improve the angle. [if player is submissive]The wolf's display of dominance sends tingles down your spine, his confidence heightening the thrill. [else if player is dominant]While part of you resents being in such a submissive position, you concede that some variety could be beneficial too. [end if]You gaze up at him, catching his eye as you push your mouth forward, his shaft disappearing into your cozy maw. He aids you, shuffling forward until his furry scrotum is against your chin, and your nose is pressed into his groin, smelling his pleasant canine scent.";
	say "     Julian begins thrusting, holding your shoulders for support. Wet squelching and slapping noises fill the room to such an extent that you wonder how many other people in the dorm can hear you. A low growl rumbles in the wolf's throat, though it sounds more like a groan of pleasure than hostility. A knot begins to develop at the base of his penis as the wet warmth of your mouth excites him. The developing bulge squeezes past your lips, luckily avoiding any contact with your teeth. Deciding that knotting your mouth isn't a good idea, Julian reduces the depth of his thrusts but increases the tempo to compensate. As he nears climax, your lupine lover firmly grips the side of your head, hilting up to his knot, which brushes your nose, saliva still smeared on it. Fighting back a howl, Julian releases a torrent of cum into your mouth, the copious fluid dribbling out of the corners as you fail to swallow quickly enough. Once he is content that you have swallowed his load, the wolf pulls out, his cock hanging down stiffly between his legs still twitching.";


Section 5 - Events

[See Sylvia for start]

Wolf's Invitation is a situation.
Prereq1 of Wolf's Invitation is Unnatural Heat.
Prereq1Resolution of Wolf's Invitation is { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15 }.
The level of Wolf's Invitation is 0.
The sarea of Wolf's Invitation is "Campus".

instead of going to College Walkway East while (Wolf's Invitation is active and Wolf's Invitation is PrereqComplete and Wolf's Invitation is not resolved and (hp of Sylvia > 3 or hpM of Sylvia > 2 or hpF of Sylvia > 2) and a random chance of 1 in 2 succeeds and LastCampusWalkin - turns > 2):
	move player to College Walkway East;
	WolfsInvitationEvent;

Instead of resolving Wolf's Invitation:
	WolfsInvitationEvent;

to WolfsInvitationEvent: [Room invitation from Julian]
	say "     A shout catches your attention as you walk along the pathway. Turning around, you see a wolf rushing towards you whom you recognize as Julian, Sylvia's friend. He slows as he reaches you and asks whether you would like to sit with him, indicating a nearby bench. Curious as to why he was so keen on getting your attention, you follow him, his tail wagging softly through a hole in his trousers as you agree. You sit together, watching the other students wandering around the campus. Having never spent any time with him without the collie present, usually doing something sexual, you feel slightly unsure of what he expects from you.";
	say "     [bold type]Do you want to stay and see what he wants, or is this too weird?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Stay. He seems friendly.";
	say "     ([link]N[as]n[end link]) - Time to leave. You're feeling uncomfortable.";
	if player consents: [Stay]
		LineBreak;
		say "     He turns to you, nervously scratching a wrist. 'What you did to help Sylvia was really kind,' he mumbles, conversing with people he barely knows apparently not his strong point. 'She seems to trust you, and I trust her judgement, so... would you like to talk some more at some point? I'd like to get to know you more, especially if you're going to be one of Sylvia's friends.' He looks at you earnestly, his deep brown eyes meeting your own. 'I'll let you think about it more,' he says, standing up, 'Come and see me if you feel like it.' After giving you his room number, he walks away, his social anxiety overcoming his desire to continue talking to you. You stand up and return to the path, trying to decide whether, and if so when, you want to visit his room.";
		now hp of Julian is 2; [Got room number]
		add "Julian Quest" to OpenQuests of player;
		now Resolution of Wolf's Invitation is 1; [got invited]
		change the northeast exit of Tenvale College Male Dorms to Julian's Room; [connecting the location to the travel room]
		change the southwest exit of Julian's Room to Tenvale College Male Dorms; [connecting the location to the travel room]
	else: [Go]
		say "     Apologizing that you have places to be, you leave the wolf dejected on the bench and return to the path. You don't think that he'll be doing that again.";
		now Resolution of Wolf's Invitation is 99; [rejected him]
		now hp of Julian is 100; [Rejected him]
	now Wolf's Invitation is resolved;

Julian's Room Event is a situation.
Prereq1 of Julian's Room Event is Wolf's Invitation.
Prereq1Resolution of Julian's Room Event is { 1 }.
The level of Julian's Room Event is 0.
The sarea of Julian's Room Event is "Nowhere".

instead of going northeast from Tenvale College Male Dorms while (Julian's Room Event is active and Julian's Room Event is PrereqComplete and Julian's Room Event is not resolved and hp of Julian is 2):
	JuliansRoomEvent;

to JuliansRoomEvent: [First Time to Julian's Room]
	say "     As you walk down the corridor, the merriment of the students reverberates off the walls. You reach Julian's room and knock on his door, his voice from within telling you to enter. You close the door behind you as you step into a disorderly room, clutter on the table that the wolf is sitting at, who is seemingly copying passages from a textbook. He turns to face you, a smile breaking across his face at your decision to come and see him despite his nervous invitation. 'I'm glad that you came. Would you like a seat?' He offers the desk chair that he was just sitting in as he perches on the edge of the fur-covered bed. You do so, swiveling so that you are facing him, and wait for him to begin a conversation.";
	say "     'Considering so far every time that you've seen me, it has been in some connection with Sylvia to put it lightly. I thought that I should probably tell you a bit more about myself. As you know, my name is Julian, and I am from Canada. I'm studying biophysics, though being part of Sylvia's research team means that I do other things too as she is more focused on biology,' the wolf explains, scratching his arm nervously. You quickly introduce yourself, shaking his hand to show that you don't mind his social ineptitude. He beams at you and continues, 'I don't have many friends, Sylvia and the twins being the only people I really socialize with, though I'm hoping that you would be willing to spend time with us too. Who knows, you might be able to help our research progress, but you'd have to talk to Sylvia about it. We're going to the beach at some point. Perhaps you could join us and meet the whole group? But unfortunately, you've caught me at a bad moment. I have an assignment due tomorrow, and I've barely started. You seem nice, so please come back again. I really do want to get to know you better,' he says suggestively, glancing at your form.";
	now hp of Julian is 3; [Met him in his room]
	now resolution of Julian's Room Event is 1;
	now Julian's Room Event is resolved;

Suppressant Supply Run is a situation.
Prereq1 of Suppressant Supply Run is Julian's Room Event.
Prereq1Resolution of Suppressant Supply Run is { 1 }.
Prereq2 of Suppressant Supply Run is Beach Field Research.
Prereq2Resolution of Suppressant Supply Run is { 1, 2 }.
The level of Suppressant Supply Run is 0.
The sarea of Suppressant Supply Run is "Nowhere".

instead of going northeast from Tenvale College Male Dorms while (Suppressant Supply Run is active and Suppressant Supply Run is PrereqComplete and Suppressant Supply Run is not resolved and hp of Julian is 4 and a random chance of 1 in 2 succeeds):
	SuppressantSupplyRunEvent;

to SuppressantSupplyRunEvent: [Trip to Hospital for Libido Suppressants. Meet Cynthia]
	say "     You walk into Julian's room to find him discarding empty syringes into a biohazard bin. He looks up as you enter and smiles in recognition, pushing the bin into a corner and walking over to you. To your surprise, he hugs you, sniffing the nape of your neck as he does so. You are sure that he can tell where you have been, and with whom. '[name of player]! It's good to see you. I hope that you've been well.' The enthusiasm with which he greets you is invigorating, making the struggles of the city feel far away. 'I don't suppose that you would be able to help me. We're running low on libido suppressants, so I need to go to the hospital and [italic type]borrow[roman type] some more. Would you be willing to come with me for companionship? I can provide stimulating conversation as we walk. Though if you're busy, we can probably manage for a bit more.'";
	say "     [bold type]Do you want to help Julian gather some more libido suppressants from the Hospital?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes. It shouldn't be too difficult to steal a few more syringes.";
	say "     ([link]N[as]n[end link]) - No. Now isn't the time. Perhaps later.";
	if player consents: [Steal]
		say "     He seems visibly pleased by your response, his fluffy black tail wagging vigorously. 'Just let me get a few things,' the wolf calls, stuffing a few oddments into a backpack. If it weren't for the clothes in the way, you might consider admiring his body while he isn't watching, but as they are not form fitting, you have to rely on your memory from previous occasions to feed your saucy whim. 'Okay, let's go. Try not to attract the attention of too many creatures as we go through the city. You don't need to impress me by showing off,' Julian cautions, tapping you on the nose at the end to emphasize the point. He shepherds you out the door before locking it behind him and pocketing the key. With that, you leave the dormitory building and briskly walk through the college and out into the city.";
		say "     As you trudge through the city together, Julian chats with you about the college, his friends, and previous excursions looking for supplies. 'We usually rely on the twins to source whatever we need, but with you helping us, and you being as capable as you are, the twins can spend more time locating items that may need their mischievous talents to acquire.' Your previous encounters with the feline duo support such a claim. You can imagine how their light fingers and impressive athleticism could make stealing or looting desirable supplies much easier. The ease with which they socialize maybe even more useful. You are surprised that none of the city's many denizens have been attracted by the noise of the conversation, attributing it to luck and hoping that this luck will hold inside the Hospital as well.";
		WaitLineBreak;
		say "     At the Hospital, the foyer has several infected waiting in chairs while the vixen nurse at the front desk sits, filing her nails while looking over an official looking clipboard. She doesn't seem to notice you as Julian drags you through a door to the bathrooms, too engrossed in making sure that her claws are nicely rounded. Your companion pulls two uniforms like those the orderlies wear from his bag. To your surprise, he strips without thought, carefully folding his shirt and trousers into the space that previously had the light blue-green clothes. As you dress yourself in the disguise, you [if hpF of Sylvia > 1]glance quickly at the naked wolf as he pulls the trousers up, just catching a glimpse of crimson from between his legs. Feeling slightly embarrassed with how secretive you're being about appreciating his form, you[else]make sure to avoid looking at him, not wanting to embarrass yourself or him. You[end if] quickly pull the top over your head and pass the waiting wolf your clothes to store in his bag.";
		say "     Lightly grasping the strap of the bag, Julian pushes the door open and steps out confidently, with you following just behind him, trying to imitate the body language of the orderlies that you have seen before. The thought of how the college student is going to explain the difference in appearance nags at the back of your mind, but before you can ask him about it, the nurse looks up from her desk and calls you both over. You silently curse for not fully discussing the plan before coming here and wait for the wolf's response as you both stride over. 'I would say that I don't recognize either of you, but as all of the orderlies are jaguars, I think that might be an understatement,' the gray-furred vixen says severely, a paw hovering over a buzzer on the front desk. You consider your chances of tackling her before she can reach it, but the thought that this would likely cause the entire lobby to intervene makes you wait long enough for Julian to reply.";
		WaitLineBreak;
		say "     'I wouldn't expect you to recognize us,' your lupine companion quietly murmurs to the fox. 'We were doing some work for the doctor, and it didn't work out as well as we had planned. We'd found an infection that may have been useful to him, but before we could leave the person that lived there, if you could call them that, came back and caught us.' The lies seem to be convincing enough that the nurse withdraws her hand from the desk, instead clasping her hands as she listens to the tale. Some of the waiting patients look over curiously, but the conversation is hushed enough that they would be unlikely to hear much, even those with improved hearing. Julian continues the fabricated story, mentioning tests, imprisonment, and how much effort it took to concoct an escape.";
		say "     '... so I grabbed his balls as he was about to inject me and squeezed as hard as I could. As he bent over, I brought my knee to his head knocking him out cold. I pulled my companion with me and we ran, barely stopping to grab the bag.' By this conclusion, the nurse has one hand beneath her skirt, fantasizing over some of the sordid details. 'So now we're back. I think that I'd like a quick rest and a wash before writing a full report. If you'll please excuse us,' he says, turning away and guiding you away from the [']busy vixen['] and through a door deeper into the hospital. You are completely shocked at how easily he seemed to invent the events to excuse your presence to the nurse. You curiously enquire how Julian came up with the story so quickly, to which he gives a small chuckle. 'Practice. When I went on camping trips into the forests with my family, we would take turns making up an adventure and have to flesh it out as others asked questions. Though not nearly as sexually explicit as that one I suppose,' he mumbles sheepishly, and you can imagine him blushing as he remembers some of the details he put in.";
		WaitLineBreak;
		say "     You reach the end of the corridor together and push open the doors into the dispensary. Unfortunately, though probably not unsurprisingly, the room has several occupants in it already. Two of the proper orderlies are talking against one of the walls, probably on break, while one of the doctors is chatting up the lamia staffing the desk. All four look at you, first with a look of curiosity, then more like that of a predator. It would seem that they know that you are masquerading as staff and that you aren't supposed to be here. Julian adapts well to the change in the situation, only hesitating for a moment before bringing his arms up ready for the fight that is about to start. 'Do you want to take the tigers or the two at the desk?' he says quietly, not taking his eyes off the threat.";
		say "     [bold type]Do you want to fight the two orderlies, or the lamia and canine doctors?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Orderlies.";
		say "     ([link]N[as]n[end link]) - Doctors";
		if player consents: [Orderlies]
			say "     You turn to face the two tigers while Julian rushes the doctors. It is time that these orderlies learnt restraint.";
			challenge "Jaguar Orderly";
			if fightoutcome < 20: [player won]
				challenge "Jaguar Orderly";
				if fightoutcome < 20: [player won]
					say "     With a sigh of triumphant relief, you turn from the two crumpled orderlies, ready to aid Julian. To your surprise, he is already stashing some of the bottles of pills off of the shelves into his backpack, his adversaries lying groaning up against the counter. The wolf zips up his bag, and you both rush for the door, eager to be away from here before more hospital workers arrive. Just as you are about to reach it, the door swings violently open, knocking you dazed across the floor. This is quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Julian drops the bag in shock and hastily drags you back, holding his other hand in the air to show that he is of no threat. The militarily dressed individuals ignore you, leaping over the desk and pulling duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
					say "     You examine them through heavy eyelids, still partially stunned. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     Exhausted from defeating the first orderly, you fail to stop the second from grabbing your arms and restricting your movements. Accepting defeat, you dejectedly look up to see how Julian fares. The doctor lies crumpled in a corner, but the lamia has the wolf constricted in her coils and is squeezing tightly. You doubt that it will be long before he loses consciousness. The door swings around, crashing against the wall, quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming that the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
					say "     Too tired to move, you observe them through heavy eyelids. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
				else if fightoutcome is 30: [fled]
					say "     Despite defeating one of the orderlies, you decide that it may be safer for you if you withdraw and give yourself some time to tend to your wounds. Feeling some guilt at deserting Julian, whom is too busy trying to squirm from the coils of the lamia to notice, you make a dash for the door. Just as you are about to reach it, the door swings violently open knocking you dazed across the floor. This is quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
					say "     You examine them through heavy eyelids, still partially stunned. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     Exhausted from defending yourself against the first orderly, you fail to notice the second sneak around behind you and pin your arms, preventing you from fighting back or escaping. Accepting defeat, you dejectedly look up to see how Julian fares. The doctor lies crumpled in a corner, but the lamia has the wolf constricted in her coils and is squeezing tightly. You doubt that it will be long before he loses consciousness. The door swings around, crashing against the wall, quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming that the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
				say "     Too tired to move, you observe them through heavy eyelids. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
			else if fightoutcome is 30: [fled]
				say "     The concern over what the hospital staff might do to you should you be defeated and the thought of having to fight two of the jaguar orderlies causes you to decide that the libido pills aren't worth it. Feeling some guilt at deserting Julian, whom is too busy trying to squirm from the coils of the lamia to notice, you make a dash for the door. Just as you are about to reach it, the door swings violently open knocking you dazed across the floor. This is quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
				say "     You examine them through heavy eyelids, still partially stunned. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
		else: [Doctors]
			say "     You turn to face the two doctors while Julian rushes the orderlies. It is time they had a taste of their own medicine.";
			challenge "Horny Doctor";
			if fightoutcome < 20: [player won]
				challenge "Lamia";
				if fightoutcome < 20: [player won]
					say "     With a sigh of triumphant relief, you turn from the two collapsed doctors, ready to aid Julian. To your surprise, he is already stashing some of the bottles of pills off of the shelves into his backpack, his adversaries lying groaning up against the counter. The wolf zips up his bag, and you both rush for the door, eager to be away from here before more hospital workers arrive. Just as you are about to reach it, the door swings violently open, knocking you dazed across the floor. This is quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Julian drops the bag in shock and hastily drags you back, holding his other hand in the air to show that he is of no threat. The militarily dressed individuals ignore you, leaping over the desk and pulling duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
					say "     You examine them through heavy eyelids, still partially stunned. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
				else if fightoutcome > 19 and fightoutcome < 30: [lost]
					say "     Exhausted from defeating the canine doctor, you fail to prevent the lamia from encircling you and trapping you in her coils. Accepting defeat, you dejectedly look up to see how Julian fares. One orderly lies crumpled in a corner, but the other has the wolf's arms trapped behind his back and is forcing him to the floor. Any defiance seems to have been pummeled out of your lupine colleague. Is this where it ends? The door swings around, crashing against the wall, quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming that the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
					say "     Too tired to move, you observe them through heavy eyelids. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
				else if fightoutcome is 30: [fled]
					say "     Despite defeating the canine doctor, you decide that it may be safer for you if you withdraw and give yourself some time to tend to your wounds. Feeling some guilt at deserting Julian, whom is too busy trying to escape the choke-hold of an orderly to notice, you make a dash for the door. Just as you are about to reach it, the door swings violently open knocking you dazed across the floor. This is quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
					say "     You examine them through heavy eyelids, still partially stunned. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     Exhausted from defending yourself against the canine doctor, you fail to notice the lamia slither up behind you, rapidly coiling herself around you and preventing you from fighting back or escaping. Accepting defeat, you dejectedly look up to see how Julian fares. One orderly lies crumpled in a corner, but the other has the wolf's arms trapped behind his back and is forcing him to the floor. Any defiance seems to have been pummeled out of your lupine colleague. Is this where it ends? The door swings around, crashing against the wall, quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming that the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
				say "     Too tired to move, you observe them through heavy eyelids. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
			else if fightoutcome is 30: [fled]
				say "     The concern over what the hospital staff might do to you should you be defeated and the thought of having to fight two doctors one after another causes you to decide that the libido pills aren't worth it. Feeling some guilt at deserting Julian whom is too busy trying to escape the grip of an orderly to notice, you make a dash for the door. Just as you are about to reach it, the door swings violently open knocking you dazed across the floor. This is quickly followed by two dark-uniformed figures charging into the room, combat knives at the ready. Assuming the new intruders are with you, the hospital staff decide to cut their losses and dart out a side door, leaving you and Julian slumped on the floor. The militarily dressed individuals ignore you, leaping over the desk and pull duffel bags from their shoulders, sweeping various bottles and boxes off of the dispensary shelves into them.";
				say "     You examine them through heavy eyelids, still partially stunned. While they may appear to be military, they are not dressed like any of the soldiers that you have seen so far. They seem to be more heavily equipped than the official military force and wear a different uniform, suggesting that they're mercenaries or a contracting firm. Finished looting the drugs, the two soldiers turn back and gauge the threat that you and Julian may pose. Two human male faces, one with a beard, the other clean shaven, look you over pitilessly, and you get the impression that these [italic type]may[roman type] not be friendlies. 'They don't seem to be with the hospital. Could be looters,' the one with the scraggly beard grunts to his partner. The other pulls two zip ties from his pocket and crouches down to put them around yours and Julian's wrists. 'We'll take [']em back to the Major and see whether he thinks that they'll be of any use. Would be a lot easier if the radios still worked,' he grumbles.";
		WaitLineBreak;
		say "     Hands bound, you and Julian are hauled to your feet and shoved towards the door by the beardless mercenary who has now taken possession of Julian's bag, moving the recently acquired pills into their own duffel bag, while his colleague moves ahead, making sure that none of the Hospital's occupants interfere. You get the idea that making any noise would be a very bad idea for everyone involved, so you somberly trudge in front of Julian as you are taken through the halls back towards the entrance. Luckily, for the staff, the path seems clear, with even the waiting room empty of all patients and nurses. Julian is beginning to hyperventilate by the time you are outside the Hospital, and the beardless captor laughs darkly. 'You have no idea what you're in for. Our commander is quite an expert at getting information when he wants it.' You are led through an alleyway and onto a side street littered with the burnt-out bodies of cars scattered around.";
		say "     'You took a wrong turn. We need to get off of this road. Now,' Beardy reprimands his partner. 'It's too late.' A tall wolf on his hind legs steps out from the alley that you had just left. His fur is so dark that it seems to absorb some of the light around him, which might explain how you all missed seeing him if he was there when you passed. Several more wolves appear from behind cars and from other dark nooks and crannies. The bearded merc swears loudly and draws a large pistol, leveling it at the lead wolf. 'I wouldn't suggest doing that,' the alpha says calmly. 'Your captain can see you, and she's rather upset with how your last meeting went.' A door across the street opens, and a female soldier in a gray uniform walks out, a rifle held in her hands at ease. 'Hello Donald. Keith. It's been quite some time. You look like your kidnapping people, which isn't very nice. But then I suppose that you aren't known for your kindness. You wanted to kill that doctor, and you tried to kill me.'";
		WaitLineBreak;
		say "     'But in the memory of camaraderie, I'm going to let you live. Run back to the Major, and let him know that I'm hunting him. But leave the prisoners and their bag here. I know that it isn't yours.' The wolves part, giving the black-clad mercenaries an escape route. They give the woman a look of loathing before sprinting down the street. Once they are about a hundred meters away, Beardy stops for a moment and shouts back at her, 'Just you wait, bitch. The Major will hunt you down and make you regret your conscience.' She sighs and brings the rifle up, steadying it on the roof of a car and aiming down the sights. This seems to cause the mercenaries to renew the vigor with which they flee, but it would seem that the woman is a good enough shot. With a muffled bang, you watch as a burst of blood appears from Beardy's leg. He stumbles, but continues to flee, barely even limping.";
		say "     With a tired smile, the markswoman turns back to you, slinging the rifle over her back. 'Where are my manners? I should have cut you loose first. Argos, if you would be so kind,' she addresses the lead wolf, who comes forward with a knife and severs the zip ties. 'We had been tracking them since just before they reached the hospital, but I'm curious as to what you two were doing there. You obviously aren't orderlies despite your clothes. You aren't jaguars for one, and you smell wrong. Too earthy as though you are often moving about the city.' A second wolf inquires, 'Have you met them before, Cynthia?' The woman replies, 'I haven't met them per se, Orthos, but I have seen them traveling through. May I know your names? I'm Cynthia, and these two handsome beasts are Argos and Orthos,' she says gesturing at the large black wolf and a similar size gray and brown pack mate. 'They are senior pack members for the Pack Alpha and Den Mother.'";
		WaitLineBreak;
		say "     You and Julian introduce yourselves and thank them for the rescue. '[if player is not defaultnamed][name of player][else]That one[end if], I've seen moving around the city before,' Cynthia says to Argos. 'They seem to have a base in the library.' You are slightly concerned that someone else knows where you have been living without you telling them. 'And Julian is one of the students at the College. He seems to be friends with the collie and the two cats.' Julian confirms this, looking almost reverentially at the wolves. 'We were searching for libido suppressants,' he replies in answer to why you were in the hospital. 'We use them as insurance against inopportune arousal, but those two soldiers interrupted us and we have now lost the chance.' In response, Cynthia quickly re-enters the building in which she had previously been observing your predicament, and returns with a small satchel. 'I have a few left in here from earlier in the outbreak, but I don't use them any more so you can have them. I hope that helps.'";
		say "     Your companion thanks her profusely, sliding the satchel into a pocket of his bag before slinging it over his shoulder. Cynthia addresses you both, 'Here isn't a safe place to explain, but should Donald and Keith threaten you again, or anyone else, you can find us near that [bold type]Bright Alley[roman type], you know the one. I'll explain there should you decide to come. I suppose that you could go there at some point anyway. There may be some people who may be interested in meeting you. But for now, we must go. We wish you well.' She and the lead wolves nod at you before leaving the street with the rest of the pack via alleyways and ruined buildings. Working out your bearings, you and Julian begin working your way back to the college, mission complete, albeit not as smoothly as you had hoped. After a thankfully uneventful return trip, you enter Julian's room, where he collapses on the bed with a sigh. 'That could have ended badly. Help yourself to a syringe before I take them to the twins. Thank you so very much for your aid. I wouldn't have managed it without you. I'm really exhausted, so I think I'll take a nap. See you soon.'";
		say "[bold type]You gain one libido suppressant![roman type][line break]";
		increase carried of libido suppressant by 1;
		now hp of Julian is 5;
		now hp of Cynthia is 1;
		now resolution of Suppressant Supply Run is 1;
		now Suppressant Supply Run is resolved;
	else: [Wait]
		say "     You apologize, saying that now isn't a good time and that you'll probably be able to help him at another point. 'Fair enough. As I said, we have enough to manage for a bit, and we can scrounge off of others if necessary.' Relieved that he isn't upset, you sit down on the corner of his bed and try and remember what it is you came here for.";
	move player to Julian's Room;
	move Julian to Julian's Room;

Julian ends here.
