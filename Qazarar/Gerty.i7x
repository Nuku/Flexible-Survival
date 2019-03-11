Version 1 of Gerty by Qazarar begins here.
[Version 1 - new NPC]

[ GertyRelationship                                          ]
[   0: Gerty unlocked                                        ]
[ 	1: Talked with                                           ]
[	2: Still talking with                                      ]
[	3: Sexable                                                 ]
[	4: Sexed, secret available                                 ]
[	5: Kyle threesome available (If sexing Kyle)               ]
[	6: did threesome                                           ]

[ hp of Gerty                                                ]
[   0: NPC not placed                                        ]
[   1: NPC in the mall lockerroom                            ]
[   2: NPC in the library                                    ]

GertyRelationship is a number that varies. GertyRelationship is usually 0.

Section 1 - Basic Setup

Table of GameCharacterIDs (continued)
object	name
Gerty	"Gerty"

Gerty is a man. The hp of Gerty is usually 0.
[Physical details as of game start]
ScaleValue of Gerty is 3. [human sized]
SleepRhythm of Gerty is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Gerty is 1. [X cock]
Cock Length of Gerty is 7. [X Inches]
Cock Width of Gerty is 5.
Testes of Gerty is 2. [X balls]
Cunts of Gerty is 0. [X pussy]
Cunt Length of Gerty is 0. [X Cunt]
Cunt Width of Gerty is 0. [X Cunt]
Breasts of Gerty is 0. [X nipples]
Breast Size of Gerty is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Gerty is false. [can not take oversized members without pain]
Sterile of Gerty is true.
PlayerMet of Gerty is false.
PlayerRomanced of Gerty is false.
PlayerFriended of Gerty is false.
PlayerControlled of Gerty is false.
PlayerFucked of Gerty is false.
OralVirgin of Gerty is true.
Virgin of Gerty is true.
AnalVirgin of Gerty is true.
PenileVirgin of Gerty is true.
SexuallyExperienced of Gerty is false.
MainInfection of Gerty is "".
[Gerty will be moved to the Tenvale College Library through Kyle content]
The description of Gerty is "[GertyDesc]".
The conversation of Gerty is { "<This is nothing but a placeholder!>" }.
The scent of Gerty is "     Gerty smells like X.".

to say GertyDesc:
	if debugactive is 1:
		say "DEBUG -> GertyRelationship: [GertyRelationship], HP: [hp of Gerty] <- DEBUG[line break]";
	say "     Gerty seems to essentially be an extremely large snake, when positioned upright his head being about as high up as an average person. His scales are mostly green, with a yellow pattern on the top of his head that seems to go back and down. Unlike most of the transformed you have seen, he lacks natural arms entirely on his new form. However, he has a slightly ragged looking harness about relative to his head as you would expect a torso to be, attached to some rather impressive mechanical prostheses that seem to replace them. His mechanical arms and snake-like torso give him the overall appearance of a Naga.";

Section 2 - Talk

instead of conversing the Gerty:
	say "     As you walk up to Gerty, the eccentric snakeman notices you. 'Ah, you again, I see. Don't you have somebody else to bother?' Despite his unkind commentary, there is no real heat in his voice. Having dealt with Gerty before, you know he means little by it.";
	WaitLineBreak;
	say "[GertyTalkMenu]";

to say GertyTalkMenu:
	LineBreak;
	say "What do you want to talk with Gerty about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Gerty's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The City";
	now sortorder entry is 2;
	now description entry is "Talk to him about what the city and your situation";
	[]
	choose a blank row in the table of fucking options;
	now title entry is "His Arms";
	now sortorder entry is 3;
	now description entry is "Ask about his interesting arms";
	[]
	if GertyRelationship > 2:
		choose a blank row in the table of fucking options;
		now title entry is "His Success";
		now sortorder entry is 4;
		now description entry is "Ask about how he did so well";
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
					say "[GertyTalk1]";
				if (nam is "The City"):
					say "[GertyTalk2]";
				if (nam is "His Arms"):
					say "[GertyTalk3]";
				if (nam is "His Success"):
					say "[GertyTalk4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from Gerty, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GertyTalk1: [talk about him]
	say "     'Well, I used to be a freelance artist, and as you may know, I was planning on working with Kyle on the novel he was writing. Things had been pretty alright for me since I graduated a while back, really, and I never had to work so many odd jobs as Kyle did to make ends meet. I did spend some part time helping out in the library here, but mostly I was able to get by with the art, with enough money to not always be concerned about the money. I didn't hang out with many people, for some reason they find me abrasive, but I had a few friends, and a few hobbies to keep me busy. Those are the big things, I suppose.'";
	if GertyRelationship < 3:
		increase GertyRelationship by 1;

to say GertyTalk2: [talk about the city]
	say "     'Bah, this city's gone downhill since all of this started. It used to be noisy and distracting, but now it's full of a bunch of disgraceful ruffians. That's why I mostly stay around the library here. It's kind of like a window to an easier time. Though really, the students in here could stand to be a little less disruptive.' Gerty shoots a heated glare towards a group of students clustered around a study table. You can see that at least one of the students has stopped their studying, unless perhaps they're taking an anatomy class. 'Ungrateful, the lot of them. Anyway, Usually I save expeditions outwards to favors for friends, though I can handle myself just fine out there, so I don't know too terribly much more.'";
	if GertyRelationship < 3:
		increase GertyRelationship by 1;

to say GertyTalk3: [talk about his arms]
	say "     'Oh, these?' Gerty flexes one of his robotic limbs. 'They are quite the contraption, if I do say so myself. When this whole mess happened, I had run into Kyle shortly after his own... transformation, if you will. At the point, we didn't know very much about what was going on, so we never really realized the risk it posed. His infection ended up spreading to me, though for some reason altered. Kyle doesn't like to talk about it, I've noticed, and I think he feels guilty. I don't think it's worth worrying about really, since it's all resolved now. The form I ended up with had no arms, a most inconvenient thing, you may have noticed. I simply wasn't willing to stand for that. I wasn't going to live an existence where I couldn't create art, read books, and the like. So I solved the problem.";
	say "     'I'd already been something of a tinker before, and had a few ideas for something like these. With my lack of appendages, I couldn't exactly put it together myself, so I grabbed a few of the mechanical engineering students. Getting those college students to properly assemble my arm was like herding cats, literally in some cases, but I kept them in line. And eventually, I had this fantastic harness created, all according to my specifications. Now I'm back to being as mobile and dexterous as I ever was, maybe more.' Gerty wiggles his robotic fingers at you. 'Impressive, isn't it?'";
	if GertyRelationship < 3:
		increase GertyRelationship by 1;

to say GertyTalk4: [talk about his success, and learn secret]
	say "     You ask Gerty about how he was able to live so comfortably after graduation. 'Ah, so you've decided it's time to learn my deepest secret. You understand me better than most, so I'm willing to tell you. Just don't go spreading it around, or I'll have to utilize a rather large Tolstoy I've been saving for a special occasion.' Gerty looks around, and then grabs your arm in his own mechanical one, and pulling you a ways off to the side. 'Most times an artist needs to get quite a lot of skill and following in order to be anywhere near livable on that income. However, some focuses can become much more profitable much more quickly. So right out of the gate I started drawing pornographic content, which makes much more significant monetary amounts than most. Now, away with you, I have work to do.'";
	if GertyRelationship is 4:
		now GertyRelationship is 5;

Section 3 - Sex

instead of fucking the Gerty:
	if (lastfuck of Gerty - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'I only have so much time in my day for distractions. Bother me about it later.'";
	else if (GertyRelationship < 3): [relationship not high enough]
		say "     'I like you and all, but I think we should get to know each other a bit better first.'";
	else: [ready for sex]
		say "     'Ah, so you want some action? I'll allow it. Just watch out for the books. There's already enough hooligans cluttering the library with their sexual acts, I don't need another.'";
		WaitLineBreak;
		say "[GertySexMenu]";

to say GertySexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Gerty suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Gerty off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the snakeman's ophidian shaft";
	[]
	[if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the lizardman";
		now sortorder entry is 3;
		now description entry is "Take Gerty's ass for a ride";]
	[]
	[choose a blank row in table of fucking options;
	now title entry is "Take Gerty's shaft in your ass";
	now sortorder entry is 4;
		now description entry is "Offer sex to the snakeman";]
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
					say "[GertySex1]";
				if (nam is "Suck Gerty off"):
					say "[GertySex2]";
				if (nam is "Fuck the snakeman"):
					say "[GertySex3]";
				if (nam is "Take Gerty's shaft in your ass"):
					say "[GertySex4]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro lizardman, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say GertySex1: [Get blown]
	say "     Gerty slides downward, no longer holding himself up on his own coils, until his face is level with your crotch. His long, ophidian tongue darts out and gives your hardening cock a quick lick. Then he leans forward, and opens his mouth, resting it around the head of your shaft. You look down at the snakeman, eagerly awaiting his performance, but he simply holds that position. Then, right as you are about to speak up, his tongue begins to move. The lengthy appendage wraps around your member, coiling and sliding along the length, bringing a strange feeling that is nonetheless immensely pleasurable. Gerty then adds a more traditional oral technique along with his tongue work, sliding his mouth up and down your shaft as his tongue continues to perform incredible serpentine motions.";
	say "     Soon the pleasure begins to overwhelm you, and you feel yourself nearing climax. The snakeman finally brings you over the peak when his tongue extends further and begins to tease your balls, even as he works your shaft. The sensastions explode, and your dick starts pulsing, unleashing shot after shot of release. Gerty swallows it all as it unleashes, furthering the feeling of pleasure on all of your member, his eyes closed as he does so. Eventually the waves of ecstasy subside, and the snake tongue around your cock releases its grip before its owner rises up. 'An enjoyable experience, I must say. Feel free to come back if you wish to repeat the performance.' Gerty wastes no time in getting back to his duties, leaving you to collect yourself.";
	if GertyRelationship is 3:
		now GertyRelationship is 4;

to say GertySex2: [Blow him]
	say "     You waste no time in starting, quickly dropping to your knees, your eyes level with Gerty's shaft. You can see it has begun to harden in front of you. You reach forward and grasp it in a hand, beginning to stroke slightly up and down, encouraging it to full hardness. Soon the dick is fully firm, and you quickly replace your hand with your mouth, your lips reaching about halfway down the shaft in the first lunge. For a moment you simply hold your position there, feeling the warmth of his member on your tongue, enjoying the sensation. Then you truly begin, slowly moving back and forth along his cock, pressing your tongue against the bottom as you move. You can hear Gerty let out a small moan above you as you work.";
	say "     The snakeman continues to let out quiet, breathy moans as you pleasure his shaft, and at the same time you can feel the slight throbbing of the member increasing in intensity. You can tell that he will soon release his load, and speed up your oral performance, bobbing harder along his cock. Soon you can feel tightening of the organ, and you push further forward, and hold your lips against the base of his ophidian cock, awaiting his orgasm. You aren't waiting long before he moans again, louder this time, and you start to feel spurts of cum firing down your throat. A few moments later the time has passed, and you pull back off of Gerty's dick, the taste of his seed lingering on the back of your tongue.";
	WaitLineBreak;
	say "     You stand up, and Gerty seems as if he is about to set back to work. However, you can see that he is moving somewhat more clumsily than before, and is slightly flustered. A group of students are looking at him, whispering to each other, and he stops to shout at them. 'What are you looking at? Don't you have studying to do?' Hearing his voice only confirms that he is not quite as composed as he would perhaps like you to believe right now. He turns to face you, and speaks again. 'Well, um, anyways. That was quite nice, thank you. Hopefully we can do something like that again sometime. Do come back when you have the time.' He then goes back to his task, still slightly out of sorts.";
	if GertyRelationship is 3:
		now GertyRelationship is 4;

to say GertySex3: [Fuck him]
	say "     <text>";
	if GertyRelationship is 3:
		now GertyRelationship is 4;

to say GertySex4: [Get fucked]
	say "     <text>";
	if GertyRelationship is 3:
		now GertyRelationship is 4;

Gerty ends here.
