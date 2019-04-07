Version 1 of Bjorn by Rikaeus begins here.
[Version 1 - New NPC + Events]

[ BjornRelationship                                             ]
[   0: Hasn't met                                               ]
[   1: Has rescued from the Spartans                            ]
[   2: Has sufficiently proven their strength to top him        ]
[   3: Manage to convince him to apologize to Pericles          ]
[   4: Failed to Defend the Campus Completely, Disappointing him]
[   5: Player Helped Defend the Campus in the War Completely    ]
[   6: Seen player best Pericles in Combat, redeeming self (WIP)]
[  99: Decided against rescuing him                             ]

[ PericlesRelationship                                          ]
[   0: Hasn't met                                               ]
[   1: Has met via Bjorn Event                                  ]
[   2: Has seen his second event                                ]
[   3: Has seen his third event                                 ]
[   4: Has seen his fourth event                                ]
[   5: Has seen his fifth event, now available in room          ]
[   6: Managed to convince Bjorn to apologize, share rooms      ]

Section 1 - Declaring variables and initial event

BjornRelationship is a number that varies.
PericlesRelationship is a number that varies.

instead of going North from College Campus Entrance while BjornRelationship is 0:
	say "     While making your way to the Campus Fountain you hear what sounds like the noises of swords clashing. Intrigued, you quickly try to find where it's coming from. To your surprise you see a well-decorated Spartan fighting a young adult male Viking. From what you can see the sea warrior is losing rather spectacularly. 'What made you think you could challenge the Spartan-Helot leader Pericles with such skills?' the Greek man asked. The other guy, instead of replying simply glares at his opponent who is beating him soundly. As you focus on the scene before you, an idea pops into your head. You could save the Viking or just watch, what exactly will you do?";
	say "     [bold type]Do you wish to save the Viking?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - He's getting beaten rather badly, why not?";
	say "     ([link]N[as]n[end link]) - No, it's none of your business getting involved.";
	if player consents:
		LineBreak;
		say "     With a shrug of your shoulders you charge and tackle the Spartan leader to the ground. This appears to surprise him, allowing you to successfully knock him to the floor. The male viking takes this opportunity to back away from the Greek warrior. However, you are shoved off him rather quickly but to your shock, the guy isn't angry at all, rather he has an intrigued look on his face as he stands up. 'That... was a maneuver I didn't expect. Viking, your defeat is delayed thanks to your new friend,' Pericles says, brushing the dirt off his clothes. Once again the Spartan directs his attention to you. 'You intrigue me. I'm sure I'll see you around sooner or later,' he says, a tone of interest in his voice before leaving.";
		say "     Now left alone with the Viking you take a closer look at him. Your early description of him being young was an understatement. He looks no older than nineteen and appears to not have experienced many battles if the lack of scars says anything. He has shoulder length dirty blonde hair that looks rather shaggy as well as having bright blue eyes. Clothing-wise he is wearing what you expect of a Viking, scale-mail armor that appears to fit him rather nicely with a wooden shield in his left hand and a sword in his right. He appears to be embarrassed as he is currently blushing and looking down at the ground. 'I didn't need saving,' he mutters, most likely to himself rather than you. You raise a brow and ask him what a young sea warrior like him is doing so far from the beach. As you say this he looks up at you and speaks. 'I... My name's Bjorn... I came out here to prove myself to my tribe,' he manages to say.";
		WaitLineBreak;
		say "     Oh, well you can partially understand what he's talking about but why does he need to prove himself exactly? 'My fellow Vikings think I might be gay,' he mutters, causing you to raise an eyebrow, not exactly understanding what that means. Seeing this, Bjorn explains even further. 'In our culture if you're gay, you're considered to be weaker than other warriors, because you take it up the ass,' he says flatly. Huh, interesting, you wouldn't exactly say that as you feel it would take more strength to do so. However, before you can say so, the male continues. 'I mean I do like women but... I prefer men,' he rants, making you rather confused as to why he's saying this to a stranger. He blushes and stutters at that before he tells you something. 'Ah, uh if you want to talk to me you can find me at the Rocky Cliffs on the beach at night time,' he hurriedly says before running away. You shrug your shoulders before continuing on your way.";
		now BjornRelationship is 1;
		now PericlesRelationship is 1;
		move player to College Fountain;
		move Bjorn to Rocky Cliff;
	else:
		LineBreak;
		say "     You shake your head and decide against it. The Spartan slams the butt of his pommel against the head of the viking, knocking him back before speaking. 'Go! Never return,' Pericles orders. The male scrambles back before running off, leaving you alone with the Greek warrior. Said guy looks at you with an intrigued look before walking off to talk with some of his soldiers. With a shrug of your shoulders you go on your way.";
		now PericlesRelationship is 1;
		now BjornRelationship is 99;
		move player to College Fountain;
	now Daily Training Session is active;

An everyturn rule:
	if BjornRelationship > 0 and BjornRelationship < 3:
		if daytimer is night:
			move Bjorn to Rocky Cliff;
		else if daytimer is day:
			move Bjorn to Viking Ship;



Section 2 - Declaring Bjorn

Table of GameCharacterIDs (continued)
object	name
Bjorn	"Bjorn"

Bjorn is a man.
[Physical details as of game start]
ScaleValue of Bjorn is 3. [human sized]
SleepRhythm of Bjorn is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cocks of Bjorn is 1. [X cock]
Cock Length of Bjorn is 8. [X Inches]
Cock Width of Bjorn is 4.
Testes of Bjorn is 2. [X balls]
Cunts of Bjorn is 0. [X pussy]
Cunt Length of Bjorn is 0. [X Cunt]
Cunt Width of Bjorn is 0. [X Cunt]
Breasts of Bjorn is 2. [X nipples]
Breast Size of Bjorn is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Bjorn is false. [can not take oversized members without pain]
Sterile of Bjorn is true.
PlayerMet of Bjorn is false.
PlayerRomanced of Bjorn is false.
PlayerFriended of Bjorn is false.
PlayerControlled of Bjorn is false.
PlayerFucked of Bjorn is false.
OralVirgin of Bjorn is true.
Virgin of Bjorn is true.
AnalVirgin of Bjorn is true.
PenileVirgin of Bjorn is true.
SexuallyExperienced of Bjorn is false.
MainInfection of Bjorn is "".
The description of Bjorn is "[BjornDesc]".
The conversation of Bjorn is { "<This is nothing but a placeholder!>" }.
The scent of Bjorn is "He smells of the sea and sweat, the later proving that he does work out.".

to say BjornDesc:
	if BjornRelationship < 3:
		say "     Your viking friend has shoulder length, shaggy, dirty blonde hair that is currently tied into a ponytail and bright blue eyes. He is wearing scale-mail armor that doesn't exactly cover everything, mainly his arms which are open to the world, showing off his well-enough muscles. Pants-wise he has leather trousers that one would see on a medieval warrior. You can tell that he's not that experienced when you notice that he doesn't have any scars on his body compared to what you'd expect of a viking. When he sees you he blushes lightly and waves at you.";
	if BjornRelationship is 3:
		say "     Bjorn has undergone quite a change in the short time he's been with the Spartans. His once shaggy, shoulder length blonde hair is shortened to just below the ears, though he still has his bright blue eyes. His scale-mail armor is replaced with what looks to be a golden platebody that is missing, well the body part so only really his arms are covered. Instead of his leather trousers he's wearing armored pants that cover everything but his large cock that match the upper body. Upon noticing you looking at him he blushes at you staring and waves.";
	if BjornRelationship > 3 and BjornRelationship < 99:
		say "     The viking you've grown familiar with is no longer wearing the spartan outfit he was forced to before. Instead he appears to have gone... deep into the college culture. That is, as deep as he can while retaining some of his viking qualities. First and foremost, the blonde haired male is wearing a black tank top with the college's school logo emblazoned on it that heavily emphasizes his musculature. Next, instead of the leather pants he wore at the beginning of your relationship with him, he's now wearing tight leather pants that cling very tightly to his bulge, leaving no room to imagination. In his ears is a set of piercings that add to the overall look, though you swear one of them has a 'P' engraved on it. Lastly he has a large double-headed axe hanging on his back that he appears very comfortable with. Overall you are pretty damn sure that Pericles chose all of his attire for him. When your friend sees you staring he waves, causing his muscles to ripple under the tank top.";

Section 3 - Talking with Bjorn

instead of conversing the Bjorn:
	if BjornRelationship is 3:
		say "     Although he's looking a bit tired from his training with the Spartans, Bjorn still smiles and waves at you before asking what you want to talk about.";
		wait for any key;
		say "[BjornTalkMenu]";
	else if BjornRelationship > 3:
		say "     Looking up from his textbook the viking gives you a warm smile and asks you what you want, saying that he does have to get back to studying soon.";
		wait for any key;
		say "[BjornTalkMenu]";
	else if Bjorn is in Viking Ship:
		say "     Surrounded by his fellow vikings, Bjorn gives a gruff hello before asking you what you request of him, his personality far different from how he is at the cliff.";
		wait for any key;
		say "[BjornTalkMenu]";
	else if Bjorn is in Rocky Cliff:
		say "     The viking smiles at you, pushing himself off the side of the cliff, before asking you what you want, giving you a nice warm smile.";
		wait for any key;
		say "[BjornTalkMenu]";

to say BjornTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Bjorn?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Viking";
	now sortorder entry is 1;
	now description entry is "Ask him about his tribe";
	[]
	if cocks of player > 0 and Bjorn is in Rocky Cliff:
		choose a blank row in table of fucking options;
		now title entry is "Spar";
		now sortorder entry is 2;
		now description entry is "Spar with the Viking";
	[]
	if BjornRelationship is 2 and Bjorn is in Rocky Cliff:
		choose a blank row in table of fucking options;
		now title entry is "Pericles";
		now sortorder entry is 3;
		now description entry is "Convince the Viking to go apologize";
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
				if (nam is "Viking"):
					say "[BjornViking]";
				if (nam is "Spar"):
					say "[BjornSpar]";
				if (nam is "Pericles"):
					say "[BjornPericles]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You shake your head, which creates a confused look on Bjorn's face before he shrugs.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BjornViking:
	say "     You ask him about his tribe of vikings, for example, what they're like. 'Well, the tribe is led by one chief, Frithjof. Despite that however it is split into two different clans, Frithjof clan and my family's clan,' he explains. You nod along understand thus far and then ask what's the deal with the vikings being kind of homophobic. 'Ah, well not the entire tribe. My family is a bit more conservative with the so called viking values. Frithjof's side doesn't give a fuck as long as you can hold yourself in battle,' he says with a sigh of irritation. Out of curiosity, you ask him if there would be any way his clan would accept him being in a gay relationship. Bjorn looks thoughtful before he gives you an answer. 'Well, if I somehow brought a powerful alliance with the relationship then sure, but I don't know how that'll happen,' he says. From there you feel as if he wishes to end the conversation, so you step back.";

to say BjornSpar:
	say "     You offer a spar to the muscular viking male, something that makes his eyes light up with eagerness. 'Really? That'd be great!' he says with a smile as he readies his equipment. You ready yourself for a fight as well but something pops up in your thoughts as you're doing this. You ask him what the prize will be for the one who wins. Bjorn thinks for a minute before he finally comes up with something. 'Winner gets to fuck the other?' he offers hesitantly. Your smirk at that offer, it being something that appeals to you. So you readily agree to it, vocally saying this out loud. 'Alrighty, so uh, rules are to knock either one of us to the ground and keep us there for fifteen seconds?' he asks, as if wondering if it was okay. You nod which prompts him to begin.";
	say "     When he starts you realize you're at a slight disadvantage with no weapon to match up to a sword. However, you're thankful because you notice he's using a wooden sword instead of the real one leaning against the side of the cliff. Nevertheless you block the sword strike with your hands but get pushed back in the sand, stunned a bit by how much strength he put in the attack. You quickly push forward on his weapon causing Bjorn to stumble back. Using this momentum you charge forward and throw a punch at him. You successfully hit him, causing him to fall to the ground. You realize that right now you could end it by holding him to the ground.";
	say "     [bold type]Do you wish to throw the fight?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yeah, I want that dick up my ass.";
	say "     ([link]N[as]n[end link]) - No, it's my turn to top.";
	if player consents:
		LineBreak;
		say "     Deciding that you want to take his cock up your ass, you decide to feign fighting him. You jump onto the viking and pin his arms to the ground faking an attempt to win. You end up not putting enough strength into it and Bjorn manages to shove you off him, with him on top of you now. You are unable to get him off you, something that he smirks at and clearly enjoys if the growing bulge in his pants says anything. Fifteen seconds pass by rather quickly and when it does, he gets off and promptly strips, his hard cock jutting out to show how eager he is to fuck your ass. With a fake sigh of defeat you get up as well and strip yourself of your clothing, leaving you naked in front of the buff viking.";
		say "     Bjorn walks up to you and begins to push a finger into your ass to prepare you for his hard cock. You bite your lip to stifle a moan as he manages to find your prostate. It doesn't take long for him to push another finger in so he could scissor you open, making you wince at the feeling. When you look back at him you see him smirk and wonder what he's about to do. You quickly find out when he begins to thrust his fingers in and out, making sure to press against your prostate. This causes you to writhe on his fingers, thrusting your ass back to have him be deep in your hole. However, when he pulls his fingers out, you whine at the loss which elicits a chuckle from the male.";
		WaitLineBreak;
		say "     Bjorn quickly lays himself on his back on the sand and gestures to his cock, as if asking you to ride him. With a shrug of your shoulders you oblige him and position your hole above his hard dick. You lower yourself onto his manhood, wincing a bit at his big cock pushing into your entrance. Moaning, you quickly manage to have his cock balls deep in you. That action elicits a groan from your viking friend as well as a desperate thrust into your hole. You take that as a cue to begin moving up and down his thick shaft, your cock throbbing hard from the sensations, leaking copious amounts of precum which drips onto his washboard abs.";
		say "     If someone were to happen upon the two of you, they'd see you bouncing up and down Bjorn's dick all the while moaning wantonly. By now the viking is thrusting up quickly in time with you lowering onto him and as well as matching your sounds. You reach your hand down to your own cock and begin to masturbate in time with the fucking in hopes of getting off at the same time as your friend. To your surprise, the male leans up to pull you into a kiss as you ride him, making out roughly with you. This makes even more pleasure shoot through you, something that brings you closer and closer to your own orgasm.";
		WaitLineBreak;
		say "     Sure enough it doesn't take long before you let out a loud grunt and shoot your load across both your stomachs. This causes you to clench your hole on the thick cock you're currently riding, driving Bjorn over the edge. With one last groan, the viking lets loose his cum deep into your ass. While riding out the bliss of your orgasms the two of you lazily swap kisses, simply enjoying each other's presence. Once you're out of your post-coitus haze you ease yourself off his softening cock and begin to clean yourself up. Once done you help him up from the sand. 'That was wonderful, maybe we could try sparing again another time?' he asks. You tell Bjorn that you'll let him know if you wish to spar again before wondering what you'll do next.";
	else:
		LineBreak;
		let bonus be (( strength of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Strength Check):[line break]";
		if diceroll + bonus >= 18:
			say "     You launch yourself onto the viking and try to hold him down. First of all you pin his arms to the sand, wrapping your legs around his. The male struggles to push you off but your strength is too much for him. It doesn't take long for Bjorn to stop trying before he slumps to the ground. You smile widely on him as you reposition yourself so that you're sitting on him and then proudly tell him that you win. 'Yes, yes, you win,' he grumbles as he pushes you off him and stands up. With a sigh he begins to strip himself naked, revealing his sexy body in all of its glory. His soft cock is slowly hardening despite his reluctance, showing that he is as eager for this as you are. He quickly positions himself so that he's up against the cliff wall, leaving his ass open for you to play with.";
			say "     You eagerly approach your viking friend and move your hand to his ass, placing a finger at his pucker. Bjorn groans when you push your digit into his hole, enjoying the feeling. [if BjornRelationship is 1]Based on the tightness you can tell he's a virgin, something you relish in[else]Despite you having already fucked him he's still rather tight, something you enjoy[end if]. Once the male gets used to a single finger, you push another in and begin to scissor his opening, to help loosen it up. By now Bjorn appears to be moaning and groaning on your digits, clearly aroused by the fingering. Soon enough though you feel as if he's ready for your dick thus removing your fingers and positioning yourself at his entrance.";
			WaitLineBreak;
			say "     With a gentleness so as to not hurt Bjorn, you push in slowly, moaning out loud at the sensation of his hole slowly engulfing your hard length. It takes a bit of focus to not succumb to the urge to thrust all the way in but you manage to do so. It wouldn't do for you to cause the male viking pain. When you are balls deep in him, you give him a minute to get used to it although quickly it's apparent that he doesn't want you to wait. 'Fuck me already!' he groans desperately, clearly enjoying your cock in his ass. Not being one to deny another person their request, you pull out before slamming back in, causing the viking to let out a moan.";
			say "     You set a fast pace, eager to release your cum into the buff male's hole. The sounds of your balls slapping wetly against his cheeks makes you happy that nobody comes to the cliff area at night or they'd see you fucking Bjorn roughly. Your partner is moaning wantonly as you repeatedly enter and leave his entrance, with you enjoying the vice-like grip of his anal walls. By now though, the viking has his hand wrapped around his own length and is masturbating rather furiously in time with your thrusts. 'Fucking shit, this feels so good. Come on, fuck me harder!' he grunts, eagerly pushing back against your dick. You pull him into a rough kiss, pushing your tongue into his mouth, something that he returns happily.";
			WaitLineBreak;
			say "     The two of you make out as you fuck his ass, both of you moaning into the kiss, enjoying all of the sensations. Bjorn is the first one to cum, grunting loudly as he releases his load all over his hand. When he does, it makes his hole clench tighter around your cock, multiplying the vice-like grip even more. You're unable to hold yourself back as you gasp as you spill your seed into his hot ass. You and your viking friend slump against the wall, riding out your bliss, still making out. Although Bjorn pulls out of the kiss and eagerly licks up his own cum, something that makes you lock lips with him again to swap the jizz between you two.";
			say "     When the two of you get out of your sexual haze, you stand up and hold out a hand to the male. He gladly accepts it and you help him up, allowing him to stand up. When you get a look at his face you can see there's a slight blush on his cheeks, something that makes you smirk. 'That was wonderful... maybe we could try this again outside of a spar?' he asks you. You nod, agreeing that it would be a fun thing to do. He then proceeds to clean himself up, something that you watch on with interest. When he finishes he leans back up against the cliff, leaving you to wonder what you should do next.";
			if BjornRelationship is 1:
				now BjornRelationship is 2;
		else:
			say "     You jump onto the viking and pin his arms to the ground in an attempt to win. You however end up not putting enough strength into it and Bjorn manages to shove you off him, with him on top of you now. You are unable to get him off you, something that he smirks at and clearly enjoys if the growing bulge in his pants says anything. Fifteen seconds pass by rather quickly and when it does, he gets off and promptly strips, his hard cock jutting out to show how eager he is to fuck your ass. With a sigh of defeat you get up as well and strip yourself of your clothing, leaving you naked in front of the buff viking.";
			say "     Bjorn walks up to you and begins to push a finger into your ass to prepare you for his hard cock. You bite your lip to stifle a moan as he manages to find your prostate. It doesn't take long for him to push another finger in so he could scissor you open, making you wince at the feeling. When you look back at him you see him smirk and wonder what he's about to do. You quickly find out when he begins to thrust his fingers in and out, making sure to press against your prostate. This causes you to writhe on his fingers, thrusting your ass back to have him be deep in your hole. However, when he pulls his fingers out, you whine at the loss which elicits a chuckle from the male.";
			WaitLineBreak;
			say "     Bjorn quickly lays himself on his back on the sand and gestures to his cock, as if asking you to ride him. With a shrug of your shoulders you oblige him and position your hole above his hard dick. You lower yourself onto his manhood, wincing a bit at his big cock pushing into your entrance. Moaning, you quickly manage to have his cock balls deep in you. That action elicits a groan from your viking friend as well as a desperate thrust into your hole. You take that as a cue to begin moving up and down his thick shaft, your cock throbbing hard from the sensations, leaking copious amounts of precum which drips onto his washboard abs.";
			say "     If someone were to happen upon the two of you, they'd see you bouncing up and down Bjorn's dick all the while moaning wantonly. By now the viking is thrusting up quickly in time with you lowering onto him and as well as matching your sounds. You reach your hand down to your own cock and begin to masturbate in time with the fucking in hopes of getting off at the same time as your friend. To your surprise, the male leans up to pull you into a kiss as you ride him, making out roughly with you. This makes even more pleasure shoot through you, something that brings you closer and closer to your own orgasm.";
			WaitLineBreak;
			say "     Sure enough it doesn't take long before you let out a loud grunt and shoot your load all both your stomachs. This causes you to clench your hole on the thick cock you're currently riding, driving Bjorn over the edge. With one last groan, the viking lets loose his cum deep into your ass. While riding out the bliss of your orgasms the two of you lazily swap kisses, simply enjoying each other's presence. Once you're out of your post-coitus haze you ease yourself off his softening cock and begin to clean yourself up. Once done you help him up from the sand. 'That was wonderful, maybe we could try sparring again another time?' he asks. You tell Bjorn that you'll let him know if you wish to spar again before wondering what you'll do next.";

to say BjornPericles:
	if PericlesRelationship < 5:
		say "     Figuring that you're close enough with the viking to bring up this topic, and in a safe enough area, you mention the spartan that well... uh thoroughly trashed him. As soon as you speak of the male, Bjorn blushes, an action that you find rather rare and odd especially when he stutters out a response. 'A-ah him? W-what about him?' the buff warrior manages to get out without completely making a fool of himself. You give him an odd look before telling him that he should formally apologize. 'B-but I don't really know him, s-so what if I embarrass myself or he attacks me?' Bjorn says to you in a small voice. You blink owlishly at him, not really understanding this behavior from the relatively strong viking. Sadly though you cannot ease his worries either, as you do not know the spartan that well. Perhaps you should get to know him better?";
	else if PericlesRelationship is 5:
		say "     Figuring that you're close enough with the viking to bring up this topic, and in a safe enough area, you mention Pericles, the viking that well... uh thoroughly trashed him. As soon as you speak his name vocally Bjorn blushes but is also blinking quite curiously at you, seeming to have noticed the familiarity of the tone. 'W-wait? You know him?' he asks, stuttering, a behavior that you type as odd for the strong muscular man, though the blushing was weird too. Shrugging, deciding to ignore the actions of your friend for now you mention that you do know the spartan, quite well actually. The look in the male's eyes changes to that of what you think to be a mix of interest and a slight bit of jealous although you're not entirely sure why. Though... you have the slightest feeling that Bjorn might be either romantically or sexually interested in Pericles. Judging by the blushing, probably the former.";
		say "     'D-do you think that y-you could come with me to the campus to apologize?' he asks, seemingly avoiding any questions on how close you are to the spartan. Not entirely too worried about his request you shrug your shoulders, wondering how it could possibly go wrong. As soon as you give your assent the viking's demeanor changes and he gains a big smile on his face. Without even giving you time to prepare, he moves on past you telling you to hurry up. Blinking once more, this time at his rapid transition you sigh before following after him, figuring it'd be better for him to not to arrive at the campus alone. As you're pretty sure Pericles would beat him up again, believing that he was there to cause trouble.";
		WaitLineBreak;
		say "     Surprisingly enough it doesn't take long for you to actually reach the campus, though you guess Bjorn's buff figure dissuades anyone from attacking you two. When you arrive at the entrance to the college, the two spartans keeping watch raise their weapons a little bit at the sight of the viking. To calm them, you raise your hand, catching their attention, which causes the both of the warriors to lower the swords and nod, having recognized you having been repeatedly in their leader's company. Nodding at them you head on in and guide your friend through the walkways of the educational center, his eyes lighting up in curiosity at everything.";
		say "     You ask him when you see his interest if he's intrigued by the college and he nods eagerly. 'The only way we learned back on the ship were from our elders and the education wasn't that varied. Just mostly about how to provide for our lives and fight,' he says rather simply. You figure it makes sense, as vikings wouldn't have the best system for providing information for their youth. With a thoughtful hum, you ask him why doesn't he apply for classes here? Instantly as soon as you utter those words the male starts to stutter, partially out of what you suspect fear and the other part out of... embarrassment? 'I c-could't! My f-family would throw a fit! Plus, ah, Pericles is here,' Bjorn gets out in bits and pieces. Oh, that's the reason, family and his suspected crush. Seeing that you're approaching the dorm building you decidedly let the topic go for now.";
		WaitLineBreak;
		say "     Upon entering you wave to anyone you know at the dorms, some of them patting you on the back and asking if you're there to see Pericles. You nod and they tell you that he's up in his room as usual. Thanking them, you turn your attention to the stairs and head on upwards, Bjorn following behind you. When you reach the closed door leading to the Spartan-Helot leader's room you rap your knuckles against the door, the sound echoing in the empty hallway. 'Who is it!' an authoritative voice rings out from behind it. You mention that it's you, causing you to hear clicks as the door opens wide a few seconds later, revealing Pericles in his normal attire. Upon seeing you he hugs you rather eagerly, speaking up as he does so. 'It's nice to see you comrade!' he says a grin in his tone.";
		say "     When the muscled male pulls out of the embrace he sees the viking and his eyes narrows slightly. 'I thought I sent you running with your tail between your legs runt,' your friend says, his more leader-like personality seeming to come forward than the friendly and sometimes awkward one you're used to by now. 'I c-came to a-apologize,' Bjorn mutters. This causes Pericles to raise a brow and turn in your direction. You offer that you had suggested that he do it, as some time had passed since the... incident. That however just prompts a scoff as a response from the Greek warrior towards your seafaring companion. 'I don't want your apology if it won't be sincere viking,' the Spartan-Helot leader says, rolling his eyes.";
		WaitLineBreak;
		say "     That response from Pericles appears to get a rather passionate and strong reaction out of Bjorn as he practically shouts in your other friend's face. 'I'm sincere in my apology! I just didn't want my family to find out,' he says, mumbling the last bit. As soon as the viking says this the scorn in the Greek's face softens a little but he quickly speaks up. 'Then why did you come today?' he asks, his eyes still narrowed despite the loss of some of his scathing tone. Bjorn looks in your direction and gives a response to the question as you're watching this conversation bounce back and forth. 'Well... they said that they knew you very well... and, uh, I took a jump and dragged them with me,' he says, looking down at his feet.";
		say "     Pericles lets out a sigh before giving you a withering look for putting him in this situation, after which he turns to Bjorn. 'Alright, fine I know how you can make it up to me,' the Spartan-Helot says, gesturing for you two to come on in. He heads over to one of his dresser drawers and starts shuffling in it. 'You will send a message to your family and tell them that you're... on an exploration or something. What will really be happening is that you'll be training with my army,' Pericles says, tossing a Spartan uniform at the viking's face, albeit a tad more clothed than the ones you see run around the campus.";
		WaitLineBreak;
		say "     You give your Greek warrior friend a look, staring at him and then at the outfit, practically asking about the nanites. Once more Pericles rolls his eyes before explaining. 'It shouldn't transform him, all it is, is a piece of clothing,' the male says, sounding exasperated. Bjorn however looks really happy and repeatedly thanks him for the opportunity. As your strong seafaring companion does this, your other friend sends you a glare as if blaming you for his plight, which to be honest, it is your fault. Wanting to quickly leave before Pericles decides to stab you with his sword, and not in the fun way, you make your way out of his room, the last thing you hear being that apparently the viking is staying with the Spartan-Helot leader.";
		move player to Second Floor Male Dorms;
		now BjornRelationship is 3;
		now PericlesRelationship is 6;
		move Bjorn to Pericles' Room;
		now VikingWar is turns;

Section 4 - Having Sex With Bjorn

instead of fucking Bjorn:
	if BjornRelationship is 4:
		say "     Bjorn frowns and looks in Pericles['] direction. 'I'm sorry but if we were to do anything he would be mad at me... perhaps you should prove yourself again to him somehow?' the viking says, biting his lip and speaking in a worried tone.";
	else if Bjorn is in Viking Ship:
		say "     He shakes his head vigorously, as if hinting that he'd rather not have sex here where his fellow tribe could see.";
	else if (lastfuck of Bjorn - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     He chuckles at your eagerness. 'As much as I'd love to have fun with you, I need rest from last time,' he says with a smile.";
	else if BjornRelationship > 4 and player is neuter:
		say "     Bjorn gives an apologizing look at you as he stares at you up from his books. 'I'm sorry but I'd rather not exclude Pericles and he... finds it weird when there's not a cock to play with,' the Viking says to you. Perhaps you'd have a better chance with the couple if you were to the dominant's likes?";
	else if BjornRelationship > 4 and cocks of player > 0 and cunts of player < 1:
		say "     He looks up at you from his books and then over at the Spartan-Helot, who is currently working on some paperwork. 'What do you wish to do? I'm sure me and Pericles would love to have fun with you,' he says with a sly smirk.";
		wait for any key;
		say "[PericlesBjornSexMenu]";
	else:
		say "     The male viking looks at you with interest. 'What do you have in mind my friend?' he asks you.";
		wait for any key;
		say "[BjornSexMenu]";

to say BjornSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck him off";
	now sortorder entry is 1;
	now description entry is "Give the viking a blowjob";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Bjorn's shaft in your ass";
	now sortorder entry is 3;
	now description entry is "Take Bjorn's cock for a ride";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Suck him off"):
					say "[BjornSex1]";
				if (nam is "Take Bjorn's shaft in your ass"):
					say "[BjornSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step away from the viking who gives you a disappointed and frustrated look. It appears he really wanted sex.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BjornSex1:
	say "     The viking perks up when you mention that you want to blow him. 'That sounds like a great idea,' he says, a wide smile on his face. Eager to get started the buff male begins to shuck off his scale-mail armor, revealing his muscular body. He tosses it on the sand by the cliff before walking over there and leaning against the rocky wall. He promptly undoes his pants enough to reveal his slowly hardening cock. You walk over to Bjorn and get on your knees making you now face first with the big cock. Just from your position you can easily smell his masculine musk, something that you inhale before moving your face to his dick.";
	say "     You first focus your attention on his balls, lavishing it with your tongue, taking in the sweaty taste of his sack. Judging by that, you can tell he recently worked out, causing thoughts of the buff viking training with his sword to appear in your head. Spurred on by the sexy images popping up in your mind, you begin to drag your tongue up Bjorn's length, enjoying the moans coming from the male. When you reach the tip of the cock, you swirl your tongue around it, savoring the musky taste. This ends up making him grasp at your head, his fingers gripping not too hard. To tease your friend you begin to lick repeatedly at his cock-head, the viking moaning and groaning at the feeling. While you're doing this, his cock is starting to drip precum, which you eagerly lap up.";
	WaitLineBreak;
	say "     Deciding that you've teased him long enough you engulf the cock-head with your mouth and begin to slowly deep-throat him. Bjorn lets out a grunt when you do so, clearly enjoying your efforts. 'Fuck that's great,' he says, clearly resisting the urge to fuck your face. When your face is finally pressed against his crotch, you reach your hand to his balls and start to fondle them, increasing the pleasure that your friend is feeling. From there you start to fuck your own face on his dick, an action that the viking obviously enjoys if his moans and groans tell you anything[if player is female]. You slip your free hand into your clothing and promptly insert a finger into your pussy, fingering yourself so that you can get off with the buff male[else if player is male]. You fish out your own cock from your clothes and begin to masturbate as you suck the buff male's manhood, eager to get off with him[end if].";
	say "     By now Bjorn is unable to resist and begins to thrust in and out of your mouth at a rapid pace, clearly getting closer and closer to his own orgasm. You ride it out, not minding the face-fucking as your friend thankfully doesn't keep his dick in your throat too long, allowing you to take small breaths in between each push. Soon enough though the viking lets out a loud groan as he pulls back enough so that his tip is resting on your tongue. Immediately after that shot after shot of cum pools in your mouth, Bjorn coating your oral cavity with his seed[if player is female]. You greedily swallow it all as you moan loudly, your juices spilling from your pussy[else if player is male]. You greedily swallow it down as you let out your own grunt of pleasure, your load spilling onto the sand below you[end if].";
	WaitLineBreak;
	say "     Bjorn kind of just slumps against the cliff wall, still clearly in post-coital bliss. To your surprise the male helps you up and gives you a kiss on the mouth, taking some of the cum left over into his own oral cavity. When he swallows it, he pulls back and gives you a smile. 'That was a great blowjob,' he remarks happily. Following that the buff viking re-buttons his pants and throws his shirt back on. [if player is not neuter]You do the same, readjusting your clothes so that you look presentable. [end if]Once the two of you are fully dressed, he gives you another kiss and goes back to leaning against the wall. You, however, are left to wonder what you'll do now.";
	now lastfuck of Bjorn is turns;

to say BjornSex2:
	setmonster "Viking";
	say "     As soon as you mention allowing the male to fuck you up the ass, he smiles widely. 'That's a great idea,' he says, clearly eager to get his cock up your hole. Bjorn quickly begins to divest himself of his clothing, starting with his scale-mail chest piece which is promptly tossed onto the ground. Followed by that are his leather pants that join the top on the sand in a pile. His dick is revealed by now, slowly starting to harden, a testament to his horniness. Figuring that you too should strip, you remove your clothing and let it join the Viking's on the floor. The buff male walks up to you and plants a kiss on your neck, something that makes you shiver with pleasure. His hands begin to inch closer and closer to your hole as he switches his attention to your own mouth, starting a rough make-out session.";
	say "     When his fingers finally reach your pucker he slowly pushes in one digit, making causing you to let out a groan of pleasure and pain. Of course your sounds are muffled when he slips his tongue into your mouth, exploring the insides of your oral cavity. This distracts you from the sensation of him adding another finger and beginning to scissor your hole open. Your friend continues this for a while before switching to thrusting his two digits in and out of your entrance[if player is male], making sure to brush up against your prostate to make you moan wantonly[end if]. Sadly though this comes to an end as Bjorn pulls his fingers out of your entrance.";
	WaitLineBreak;
	say "     Thankfully you aren't empty for too long as Bjorn quickly picks you up and positions himself at your entrance. He then slowly pushes into your hole, allowing you to get used to the penetration. Once he's balls deep into you, your viking friend begins to slowly pull out before thrusting back in roughly. This forces a gasp of pleasure out of you, enjoying the thick dick ramming repeatedly into your ass. The sounds of the buff male's balls slapping wetly against your cheeks fill your surroundings, the lewd noises only turning him on even more[if player is female]. You manage to position your hand at your pussy, promptly pushing a digit in and starting to finger yourself[else if player is male]. By now your own hard manhood is throbbing painfully as you leak precum from the tip and onto Bjorn's chest[end if].";
	say "     As you and the Viking's coitus goes on, his thrusts get rougher, evidence that the male is getting closer and closer to his own orgasm. On top of that he appears to be muttering swear words as he does get nearer to his climax, some words that would more than likely make a sailor blush. A minute later he lets out a loud 'Fuck!' as he slams into you one last time before he spills his cum deep into you. [if player is female]You let out a loud moan as you thrust your fingers in one last time before your juices spill from your pussy, finally orgasming. [else if player is male]This sets you off, causing you to shoot your seed all over you and Bjorn's chests. [end if]Your viking friend holds you for five more minutes, content to softly kiss you as you two ride out the bliss. Sadly though it must come to an end as he pulls you off him and helps you clean up. 'That was great, maybe have another go sometime later?' he asks. You tell him you'll let him know later before you step back and wonder what you'll do next.[mimpregchance]";
	now lastfuck of Bjorn is turns;

Bjorn ends here.
