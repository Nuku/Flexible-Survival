Version 1 of Zeke by Qazarar begins here.
[Version 1 - new NPC]

[ hp of Zeke                                                 ]
[	0: Not met                                                 ]
[	1: Met                                                     ]

ZekeRelationship is a number that varies. ZekeRelationship is usually 0.

Section 1 - Basic Setup

Zeke is a man. The hp of Zeke is usually 0.
The description of Zeke is "[ZekeDesc]".
The conversation of Zeke is { "<This is nothing but a placeholder!>" }.
The scent of Zeke is "     Zeke smells like a little bit musky and furry, kinda like a humanoid fox is always bound to be.".
Zeke is in Gaming Den.

to say ZekeDesc:
	if debugactive is 1:
		say "DEBUG -> ZekeRelationship: [ZekeRelationship], HP: [hp of Zeke] <- DEBUG[line break]";
	say "     Zeke is a fox man, with fluffy ears and a tail. In addition he is wearing a pair of jeans, and a t-shirt that says <SHIRT REDACTED>.";

Section 2 - Talk

instead of conversing the Zeke:
	if ZekeRelationship is 1:
		say "     Zeke looks visibly delighted that you took him up on his offer. 'Hey, glad you came.' He then gestures broadly around the room. 'As you can see, I have a very nice setup here, and a lot of games to choose from. Since I don't have enough of an idea of what you like to know where we can really cut loose, I figure we should start with something pretty broadly fun, yeah? Make sure we both have a good time and all.' He steps towards one of the several shelves around the room, and spends several moments scanning across the titles it holds, before selecting one. 'Zephyr Kart 8, almost guaranteed to be fun for anyone regardless of skill. There are few better places to start. Shall we?'";
		say "     In no time at all, the two of you are seated among the collection of comfortable chairs and beanbags set up in an arc before his TV. With a practiced hand, he quickly sets up the game system, and before you know it, the title screen is displaying, and you're ready to play. Once the game begins, you can see that Zeke has spent a lot of time playing, as his skills are rather impressive. On the other hand, you're somewhat out of practice, with the situation being as it is, but you don't do too badly yourself, coming out just well enough to not feel bad about your own performance.";
		WaitLineBreak;
		say "     Once the two of you have completed several games, and spent the better part of an hour playing, and occasionally trash talking, you finally call it good for the moment. As Zeke put away the game, he comments on your performance. 'Hey, for someone without a fortified game basement, you weren't half bad. Once you get a little more practice playing against me, with a few more games, you'll be almost as good as me. Almost.' You shake your head, and tell him that you'll get good enough to beat him eventually. He chuckles in response. 'If that's your goal, you're definitely going to need to come over and play more games. I'm always up for more, so feel free to stop on by whenever.'";
		now ZekeRelationship is 2;
	else:
		say "     As you walk up to Zeke, he brightens up a bit. 'Hey, nice to see you. Ready for some games?'";
		WaitLineBreak;
		say "[ZekeTalkMenu]";

to say ZekeTalkMenu:
	say "[line break]";
	say "What do you want to talk with Zeke about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Zeke's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Playing Games";
	now sortorder entry is 2;
	now description entry is "Talk to him about playing some games together";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Generator";
	now sortorder entry is 3;
	now description entry is "Talk to him about his power";
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
					say "[ZekeTalk1]";
				if (nam is "Playing Games"):
					say "[ZekeTalk2]";
				if (nam is "Generator"):
					say "[ZekeTalk3]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the Zeke, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say ZekeTalk1: [talk about him]
	say "     'Well, I don't know how much there is to say. I used to spend all my time cooped in my basement, playing video games. Then the apocalypse happened, and that's still what I do, mostly. I do make sure to get out to the mall sometimes, pick up new games and such. I could probably pick up a bunch at once, but it's more fun to do it one by one. Other than that though, I don't get out much, just stay here where it's relatively safe, and very comfortable. But it can get kind of lonely at times, with nobody to really hang out with. All my other friends lived quite a ways away, and there's no good way to get in contact with them anymore. But hey, that's when you make more.'";

to say ZekeTalk2: [playing games]
	say "     Zeke takes very little time to setup a game for the two of you to play. This time his pick is a fighting game, though not one you're overly familiar with. He gives you a brief while to practice before taking you right into a longer tournament mode, where he immediately gets very focused every time the gameplay starts.";
	let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Intelligence Check):[line break]";
	increase diceroll by bonus;
	if diceroll > 19:
		say "     Once you start playing, it feels somewhat familiar, and you find yourself able to apply some skills you'd almost forgotten you had to it, and end up soundly trouncing Zeke at his own game. He is completely speechless at you victory, simply sitting with a shocked look for several moments, before he laughs heartily. 'Impressive stuff! Even I could hardly beat you at that. Play that impressive deserves a reward.' Zeke stands, and walks over to a cupboard, rifling through it for a few moments. Soon after, he tosses you a bag of chips. 'You earned it. Now come back some time, you hear? I need a rematch against that.'";
		increase carried of chips by 1;
	else if diceroll > 15:
		say "     Your skills win out, and your general practice at this, along with quickly picking up the moves, means you manage to scrape out a win. As the sight of his defeat on the screen, Zeke is almost speechless. 'Wow, you're not half bad. A little more practice, and you can be as pro as I am. And I'd definitely like to help you practice.'";
	else:
		say "     The brief time practicing wasn't quite enough, it seems, and Zeke defeats you in the game, though you weren't completely hopeless. The fox looks satisfied at his own victory, but is also quick to console you. 'Hey, I've had a lot more practice at this, don't worry about it. Just keep playing with me, and someday you'll be as radical as me.'";

to say ZekeTalk3: [generator]
	say "     'I can see why you'd be curious about it. From what I've seen, very few places have any sort of power. This generator can't do too much, but it is enough to keep my games running as long as I'm careful with it, and that's good enough for me. At the moment I have plenty of fuel, hopefully enough to last until somebody fixes the power. I've heard some people mentioning that they've seen soldiers in the city, so I don't expect it'll be too long until something gets done.'";

Section 3 - Sex

instead of fucking the Zeke:
	if (lastfuck of Zeke - turns < 5): [he got fucked in the last 18 hours = 6 turns]
		say "     'I can only handle so much fucking. I'd dig more, but I need a rest first.'";
	else if ZekeRelationship < 2: [not talked to enough]
		say "     'I'm as horny as the next guy, but I'd like to at least talk first.'";
	else: [ready for sex]
		say "     Zeke looks rather excited at the prospect of getting frisky with you, but asks a question. 'Hey, there's a lot of things we could do, but I need to narrow it down. Do you want to do this co-op, or competitive?'";
		say "     [bold type]Do you want to compete with Zeke?[roman type][line break]";
		WaitLineBreak;
		say "     ([link]Y[as]y[end link]) - Get competitive.";
		say "     ([link]N[as]n[end link]) - Keep it cooperative.";
		LineBreak;
		if player consents:
			say "     'Alright then, time to see who's the better player.' Zeke quickly sets up for your competition, turning on the various parts of his gaming hub, and choosing a game. In no time at all, you're both seated comfortably in front of the television, controllers in hand, ready to go.";
			let bonus be (( the Intelligence of the player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]15[roman type] (Intelligence Check):[line break]";
			increase diceroll by bonus;
			if diceroll > 15:
				say "     Both of you play your hardest, and though the matches are close, in the end you pull out more wins, your superior skills and strategy bringing you the victory. As the winner, it becomes your right to choose how to play with your newly earned prize.";
				say "[ZekeSexMenu2]";
			else:
				say "     You do your best to defeat Zeke in the digital arena, but your skills aren't quite up to the task. Your playing wasn't a total failure, but it just wasn't enough to beat his practiced skills at the game. As a result, the fox is the victor, and it's up to him what to do with you.";
				say "[ZekeSexMenu3]";
		else:
			LineBreak;
			say "     'So you feel like keeping it casual, and just helping each other out? I can get behind that. I'll let you pick what to do.?'";
			WaitLineBreak;
			say "[ZekeSexMenu1]";

to say ZekeSexMenu1: [Cooperative]
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can do this]
		choose a blank row in table of fucking options;
		now title entry is "Frotting";
		now sortorder entry is 1;
		now description entry is "Make the penises touch";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Zeke off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the fox's vulpine shaft";
	[]
	if cocks of player > 0: [only males and herms can 69 with him]
		choose a blank row in table of fucking options;
		now title entry is "Sixty-nine";
		now sortorder entry is 3;
		now description entry is "Sixty-nine with Zeke";
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
				if (nam is "Frotting"):
					say "[ZekeSex1]";
				if (nam is "Suck Zeke off"):
					say "[ZekeSex2]";
				if (nam is "Sixty-nine"):
					say "[ZekeSex3]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the fox, shaking your head slightly as he gives a questioning look.";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say ZekeSexMenu2: [Domming Zeke]
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Facefuck Zeke";
		now sortorder entry is 1;
		now description entry is "Take control of the fox's mouth";
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Power bottom";
	now sortorder entry is 2;
	now description entry is "Dominantly ride the fox";]
	[]
	[if cocks of player > 0:
		choose a blank row in table of fucking options;
		now title entry is "Pound him";
		now sortorder entry is 3;
		now description entry is "Take the fox's rear end";]
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
				if (nam is "Facefuck Zeke"):
					say "[ZekeSex4]";
				if (nam is "Power bottom"):
					say "[ZekeSex5]";
				if (nam is "Pound him"):
					say "[ZekeSex6]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the fox, shaking your head slightly as he gives a questioning look. 'If you don't feel like it anymore, that's fine. Maybe another time.'";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say ZekeSexMenu3: [Dommed by Zeke]
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Get facefucked";
	now sortorder entry is 1;
	now description entry is "Have your mouth used by the horny fox";]
	[]
	choose a blank row in table of fucking options;
	now title entry is "Get fucked";
	now sortorder entry is 2;
	now description entry is "Let Zeke fuck you";
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
				if (nam is "Get facefucked"):
					say "[ZekeSex7]";
				if (nam is "Get fucked"):
					say "[ZekeSex8]";
				WaitLineBreak;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the fox, shaking your head slightly as he gives a questioning look. 'If you don't feel like it anymore, that's fine. Maybe another time.'";
				WaitLineBreak;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say ZekeSex1: [frotting]
	say "     The two of you each prepare, sliding out of any distracting equipment, until you stand naked before each other. You can see Zeke's vulpine shaft standing proudly aroused, coming to a clear point, and with a sizeable knot at the base. You break the stillness first, moving right up against the fox, until you stand a scant few inches away. Slowly, you press up against him, until your cock is pressed up against his shaft. Then Zeke begins to reciprocate your motions, and presses back against you as well, the combined motion causing a slight friction as your dicks start to rub against each other, a sense of warm pleasure beginning to build up.";
	say "     With the sensations growing, both of you start to shift your motions, changing from pressing to grinding, almost humping. At the same time, your hands drift downward, joining the mess of pleasure below, adding stroking and tugging to the rubbing sensations. You can feel the veins of his knot against your own member, and the feeling of them in contact with you finally pushes you over the edge. Your cock begins to jerk as you feel the pleasure peaking and flowing, shots of seed splashing over the both of you. Immediately following your own climax, Zeke's dick erupts as well, adding more semen to the mess. The two of you remain like that for a while, basking in the afterglow, before you muster the will to move again and clean yourselves up.";
	now lastfuck of Zeke is turns;

to say ZekeSex2: [blowing - casual]
	say "     When you make your request, the fox quickly strips off his clothing, and then responds. 'If you want to treat me, I don't mind. But anything more serious than this, you'll have to try your luck with some competition. The reward is more fun with a risk.' He follows up his comment by winking at you, before he settles down into one of the beanbags, legs spread, and the slowly hardening cock beginning to stand free. You step over to Zeke, and then fall to your knees in front of him, bringing your eyes level with his vulpine dick. For a moment, you sit there, your eyes following the slight twitches of the shaft before you. Eventually the temptation becomes too much for you to wait any longer, and you lean forward, capturing it in your mouth.";
	say "     In no time at all, you're bobbing up and down the vulpine member, the tip reaching almost to the top of your throat, and your lips stopping just at the edge of his knot. You glance upwards, and can see Zeke panting in pleasure from your ministrations. A few seconds after, he meets your eyes, and grins at you. 'You're, ah, pretty good at this. You must have played a lot of games when you were younger, gotten a lot of practice at cartridge blowing.' He smiles at his own joke, but you simple keep at work, ignoring his terrible sense of humor. Soon enough, your efforts bear fruit, and you can feel his member pulse in your mouth, and start releasing your reward. You take your head down his shaft and hold it in place with your mouth just meeting his knot, and let his seed fill you. Far too soon, it comes to an end, and you swallow, before licking his cock clean, and leaning back. Your eyes meet his again, and he smiles at you as you stand back up. ";
	now lastfuck of Zeke is turns;

to say ZekeSex3: [sixty-nine]
	say "     After deciding how you two will take care of each other, it takes almost no time until you're each completely nude, and ready to have a good time. Once that is done, you see Zeke standing near the largest couch in the room. 'I think this will do nicely, don't you?' You nod in response, and approach him. Deciding to move first, you lay yourself down on the couch. You start stroking your member lightly, building it up towards full hardness, and give the fox your best inviting look. He quickly gets the message, and after some slightly awkward maneuvering, ends up properly in place above you. You can feel his breath against the tip of your cock, just as you can see his appealing shaft right in front of your own face.";
	say "     In the end, was the one who acted first, evidenced by the feeling of a warm suction starting to cover your shaft. Not to be outdone, you follow suit, and move your head up enough to get his fox cock in your mouth. In no time at all, the two of you achieve a rhythm, his head bobbing down on your dick just as your head bobs upwards to meet his. Soon enough, you can feel that your task is nearing completion, clearly evidenced by the way his shaft is starting to twitch and pulse in your mouth. At the same time, your own orgasm draws nearer from the constant pleasure provided by Zeke. You begin to speed up your own efforts to bring him to climax, and in no time at all the fox begins to follow suit.";
	WaitLineBreak;
	say "     Eventually the stalemate is broken, and Zeke is the first to peak. His cock is throbbing in your mouth, shooting spurts of seed down your throat, with the hard knot battering against your lips as he thrust his hips downward in his orgasm. After several moments of his cum shooting into you, the same release happens to you, with your own cock firing off jets of semen into the fox's mouth. Your lower body involuntarily jerks upwards slightly as this matching pair of orgasms flows between the two of you, the electric senses of pleasure seeming to connect you in a continuous circuit. After a time, however, the sensation fades, and you are left with the fox laying comfortably atop your body, and the two of you remain lying in comfort for several more minutes. Eventually, however, you each clean up from your lustful adventure.";
	now lastfuck of Zeke is turns;

to say ZekeSex4: [facefuck Zeke]
	say "     As the victor, it is your right to take the spoils. And this time, it will be the fox's pretty little mouth you'll be taking. You spend a few moments getting Zeke properly set up, laying across his couch on his back, his mouth right at crotch level. You spend several more moments stroking your member to full hardness, making sure you're ready to act. You barely give him any time to adjust before you start using him, practically slamming your cock into his mouth. You follow up by moving your hips, building up into a proper rhythm, only going in partway at first. Once he seems to be ready to take your full length, however, you thrust in fully, sinking your shaft into his throat.";
	say "     From there, you continue pistoning your cock in and out of the fox, keeping up the unrelenting oral pressure. You can feel the tight seal his mouth makes around you, accompanied by the very audible noises made by your thrusts. The pleasure begins to build, and you can feel the wave rising, and your speed increasing until it eventually peaks. You thrust in as far as you are able, hilting yourself, with your balls resting on his face, and you release. Your cock throbs, and unleashes a stream of spunk into the fox's mouth, quickly filling him. After several moments of this, the pressure in your shaft abates, and you pull back, watching Zeke's stunned face, with several streaks of cum dripping from his mouth.";
	WaitLineBreak;
	say "     After you have completely pulled back from Zeke, he finally becomes fully aware again, shaking himself out of his daze. He sits up, and looks over at you. 'Wow, you really took charge there, didn't you? Guess the competition was good for you. But next time, I'll win, and then it'll be my turn.' He laughs, before going over to the corner of the room, and cleaning himself off. You follow suit, and clean yourself up as well, enjoying the last fleeting remnants of the pleasure as they last.";
	now lastfuck of Zeke is turns;

to say ZekeSex5: [power bottom Zeke]
	say "     A";
	now lastfuck of Zeke is turns;

to say ZekeSex6: [fuck Zeke]
	say "     A";
	now lastfuck of Zeke is turns;

to say ZekeSex7: [being facefucked]
	say "     A";
	now lastfuck of Zeke is turns;

to say ZekeSex8: [being fucked]
	say "     You've lost, and that means Zeke gets to do what he wants with you. And after that contest, he makes it very clear what it is he wants to do to you. In no time at all, he has you bent over one side of the couch, with him standing naked behind you. A thrill runs through you at the knowledge of what is about to happen, knowledge that is confirmed further as you feel the vulpine cock come to rest on top of your ass, moving back and forth ever so slightly. You feel a warmth on your back as the fox leans further over you, his chest pressed against your back. A shift in the position of his member, bringing the tip to a stop right up against your hole, tells you exactly what comes next.";
	say "     You receive a sudden shock when Zeke slams forward, the tapered head of his dick making the entry smooth and easy, until he rests about halfway into you. For several moments, he holds that position, his cock stretching you open, but as intense as the sensation flooding through you are, this is only the beginning. The fox starts pumping in and out, his cock ending up deeper inside you on each thrust, stretching you yet further. Once he gets even deeper in you, his thrusts are enough that his knot begins to collide with your ass on each thrust. As the action continues, your attentions focus further and further on the pleasure you're getting from being fucked, and nothing else.";
	WaitLineBreak;
	say "     It doesn't take very long after that for you to be jarred from your cock-induced reverie, as Zeke pulls back until he is barely staying in you, and holds there. Before you have a chance to wonder why he stopped, you hear him whisper in your ear. 'If you want me to finish fucking you, tell me you want it.' There is no hesitation in your mind, and you immediately begin begging for him to fuck you. The fox doesn't answer you, but his response is still clear, as he resumes his earlier work even more energetically than before. You gasp in shock and pleasure as he immediately begins hammering you, and sinks his entire shaft into you in one swift thrust, only straining for a moment before the knot pops into you as well.";
	say "     An overwhelming wave of bliss is the only thing on your mind, the wracking pleasure of the dick sheathed inside you right now. Soon a fresh warmth lets you know that Zeke has hit a pleasured peak as well, with his cock pulsing inside you and releasing its payload. That is the final thing to push you over the edge, and the strength of that pleasure is enough that you almost feel about to pass out. In the end, however, you hang on, simply in a pleasurable daze, until finally the two of you have finished. The fox cleans everything up as you lay over the edge of the couch, recovering from the act. When he's finished with that, he comes back over to you. 'You were quite the ride there, weren't you? Maybe next time you'll get the chance to do that to me instead. Looking forward to either possibility.'";
	now lastfuck of Zeke is turns;

Section 4 - Events

instead of going south from Mall East Wing while ZekeRelationship is 0:
	move player to Game Store;
	say "     As you enter the game shop, you notice that there is someone else browsing the shelves, currently leaning over and unintentionally showing off a fluffy tail poking out through a hole in a pair of jeans. After a few moments of watching it swish around, he stands up, a case in hand, and turns away from the shelf. Now that he is fully visible, you can see that he is clearly a fox, albeit on two legs, and in addition to a pair of jeans is wearing a slightly worn shirt displaying the text <MESSAGE REDACTED>. When he realizes that you're there, he starts briefly, and then speaks. 'Oh, hey. You here for some games too? Wait, that's a silly question. Why else would you be in the game shop, after all?'";
	say "     The fox takes a momentary pause, and extends his hand. 'I'm Zeke, by the way. And you are?' You shake his hand, and introduce yourself. 'Well, nice to meet you. You might have guessed, but I tend to play a lot of video games. Even with this whole disaster going on, I still have a pretty nice setup. If you ever want to hang out and play some games, you should visit. I haven't had a lot of opportunity for anything multiplayer lately, and it's nice to have a little variety. Plus, I don't know why, but you seem to me like the sort of person who enjoys video games. Actually, hang on a moment.' Zeke takes off a backpack, which you hadn't noticed he was wearing, and puts the game he was carrying into it. Then he digs out a scrap of paper and scribbles something on it, before handing it to you. It seems to contain directions. 'Now you should be able to find my place, when you want. See you around, I hope.' With that the fox picks up his backpack, and leaves the store.";
	say "     [bold type]You now know the location of Zeke's Gaming Den![roman type]";
	now Gaming Den is known;
	now ZekeRelationship is 1;

Section 5 - Location

Gaming Den is a room. It is a fasttravel. It is private.
The description of Gaming Den is "     The basement is surprisingly spacious, with a large entertainment center set up on one wall. Other walls feature shelves, packed with games, movies, books, and miscellaneous paraphernalia. The center space around the room is taken up by several couches, chairs, and beanbags, set up facing the television.".
The scent of Gaming Den is "<text>".

Game Store is a room.
The description of Game Store is "     The store is almost nothing but shelves and shelves full of games and game accessories. There are plenty of places that have been cleaned out on the shelves, but for the most part it all still seems to be there. It seems there have been other priorities to collecting video games.".
North of Game Store is Mall East Wing.

Zeke ends here.
