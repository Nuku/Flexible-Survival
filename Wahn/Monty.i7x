Version 1 of Monty by Wahn begins here.
[Version 1 - Put into its own file]

[ Monty, the NPC                                                        ]

[ Stamina of Monty - location                                           ]
[   0: out in the city                                                  ]
[   1: in Camp Bravo                                                    ]

[ Libido of Monty - sexual interactions                                 ]
[   0: nothing yet since the meeting event                              ]
[   1: player didn't offer help with his toys                           ]
[   2: player helped him train                                          ]

[ Intelligence of Monty - Nanite Stuff                                  ]
[   0: didn't talk about his ass                                        ]
[   1: talked about his strangely tight hole                            ]
[   2: mentioned Dr. Matt before                                        ]
[   3: took him to see Dr. Matt (he knows he's human still)             ]

Section 1 - events

after going to Parade Ground while (Lone Soldier is resolved and (Resolution of Lone Soldier is 1 or Resolution of Lone Soldier is 2) and Stamina of Monty is 0):
	try looking;
	LineBreak;
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
	now Stamina of Monty is 1;
	move Monty to Soldier Tents;
	move Player to Soldier Tents;

Section 2 - NPC

Table of GameCharacterIDs (continued)
object	name
Monty	"Monty"

Monty is a man.
ScaleValue of Monty is 3. [human sized]
Body Weight of Monty is 5. [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
Body Definition of Monty is 9. [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
Androginity of Monty is 2. [Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/somewhat effeminate/effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
Mouth Length of Monty is 5. [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
Mouth Circumference of Monty is 3. [mouth circumference 1-5, "tiny, small, normal, wide, gaping"]
Tongue Length of Monty is 3. [length in inches]
Breast Size of Monty is 0. [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
Nipple Count of Monty is 2. [count of nipples]
Asshole Depth of Monty is 8. [inches deep for anal fucking]
Asshole Tightness of Monty is 1. [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
Cock Count of Monty is 1. [number of cocks]
Cock Girth of Monty is 3. [thickness 1-5, thin/slender/average/thick/monstrous]
Cock Length of Monty is 10. [length in inches]
Ball Count of Monty is 2. [allowed numbers: 1 (uniball), 2 or 4]
Ball Size of Monty is 3. [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
Cunt Count of Monty is 0. [number of cunts]
Cunt Depth of Monty is 0. [penetratable length in inches; some minor stretching allowed, or more with Twisted Capacity]
Cunt Tightness of Monty is 0. [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
Clit Size of Monty is 0. [size 1-5, very small/small/average/large/very large]
[Basic Interaction states as of game start]
PlayerMet of Monty is false.
PlayerRomanced of Monty is false.
PlayerFriended of Monty is false.
PlayerControlled of Monty is false.
PlayerFucked of Monty is false.
OralVirgin of Monty is false.
Virgin of Monty is true.
AnalVirgin of Monty is false.
PenileVirgin of Monty is false.
SexuallyExperienced of Monty is true.
TwistedCapacity of Monty is false. [Twisted Characters can take any penetration, no matter the size]
Sterile of Monty is false. [steriles can't knock people up]
MainInfection of Monty is "Human".
The description of Monty is "[MontyDesc]".
The conversation of Monty is { "Oh, hello." }.

to say MontyDesc:
	if debugactive is 1:
		say "     DEBUG -> Dexterity: [Dexterity of Monty], HP: [Libido of Monty], Libido: [Libido of Monty], Lust: [lust of Monty], Thirst: [thirst of Monty] <- DEBUG";
	project Figure of Monty_clothed_icon;
	say "     Montgomery Freeman is an African-American soldier in his early-twenties, about six feet tall and quite well built - with his green army shirt stretching over bulging pecs and biceps. His head is shaved bald, with not a trace of hair left on the smooth black skin. He gives you a friendly nod as he becomes aware of your attention.";

The scent of Monty is "     Monty has a nice masculine human smell.".

instead of conversing Monty:
	project Figure of Monty_clothed_icon;
	say "     As you approach to talk to the black soldier, he gives a casual nod towards the back of the tent you stand in front of, leading the way. Soon, you find yourself standing before the windowless side wall of an office building, right next to where a crashed city bus is sticking through the wall. It's a fairly out of the way corner of the camp, so just the right spot for a private conversation.";
	LineBreak;
	say "[MontyTalkMenu]";

to say MontyTalkMenu:
	Let TalkDone be false;
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
	if Libido of Monty is 0:
		choose a blank row in table of fucking options;
		now title entry is "His 'special transport' mission";
		now sortorder entry is 4;
		now description entry is "Talk about what he was doing, and the aftermath";
	[]
	if Libido of Monty > 1:
		choose a blank row in table of fucking options;
		now title entry is "His asshole";
		now sortorder entry is 5;
		now description entry is "Talk about him being so tight, after being fucked by a minotaur and all";
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
				if nam is "Just chat":
					say "[MontyTalk1]";
				if nam is "Ask about his background":
					say "[MontyTalk2]";
				if nam is "Discuss the minotaur":
					say "[MontyTalk3]";
				if nam is "His 'special transport' mission":
					say "[MontyTalk4]";
					now TalkDone is true;
				if nam is "His asshole":
					say "[MontyTalk5]";
					if Intelligence of Monty > 2:
						now TalkDone is true;
				wait for any key;
				if TalkDone is false:
					say "[MontyTalkMenu]";
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
		say "     Pulling himself up to stick his head into the interior of the bus, Monty says, 'Jackpot, the whole front end of this thing is inside of a big room! Just a second, be right back.' He hurries off, to return a little while later with a big wooden crate in his arms, on which a small leather pouch is lying. Setting the crate down under the bus window creates a stepping stone to climb into it fairly easy now, and the two of you walk down the middle passage of the bus to enter the office building next door. It's a bit of a mess in there, with the bus having thrown several desks partway through the room when it crashed through the wall, but the empty building still is just the out of the way place that Monty wanted. Pulling a zipper and then flipping open the lid of the leather pouch, the soldier lays what turns out to be a complete set of variously-sized training butt-plugs on the nearest table. There's even a bottle of lube in there too. 'So, let's do this, before I lose my nerve.' Monty says, slightly nervous.";
		WaitLineBreak;
		say "     With a smile, you tell the black man to trust you, wave at a mostly empty desk and tell him to bend over it. Blowing out his breath, Monty strokes a hand over his shaved head, then murmurs under his breath, 'Focus on the mission, soldier!' There isn't any hesitation after this, with the athletic man quickly stripping off his shirt and throwing it on the desk, followed by pulling off his boots, then undoing his pants. With a decisive movement, he pushes them down complete with his underwear, then straightens to stand before you completely naked. He gives you a nod and gets into position, legs spread and with his upper body bent over the desk, forehead resting on the fabric of his shirt. The soldier's hands slide down along his sides, each grabbing a cheek of his well-rounded buttocks to spread them for you. 'Gotta admit, I always liked looking at a nice round ass, just never thought sexually about my own.'";
		LineBreak;
		say "     [bold type]He's all yours to play with now. How do you begin?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Grab that lube and work it in with your fingers.";
		say "     [link](2)[as]2[end link] - Go natural, with spit and your tongue.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to use lube or [link]2[end link] to eat him out.";
		if calcnumber is 1: [lube]
			LineBreak;
			say "     Reaching over for the bottle of lube, you pop open the cap and squeeze a moderate amount out on your fingers, then dab them lightly at Monty's back door. He tenses a little at your touch, with the wrinkled ring of his pucker flexing visibly and reminding you that the man is not too far away from being a virgin in this regard. In fact, from the looks of it he's quite tight and you can't see any hint of the fact that he had a minotaur's thick schlong shoved inside him recently. Maybe wandering around for hours with nanite-laden cum inside him did have an effect after all, rejuvenating Monty somehow even if it didn't infect him. As not to freak the man out by going too quick, you gently stroke your fingertip over his muscle in a light caress, circling the hole for a few seconds before you proceed to push in against it.";
			say "     He's tight, that's for sure, yet at the same time you're able to penetrate him readily enough, a soft push being sufficient to sink in to your knuckles. Monty's breathing comes a bit quicker now, and when you curl your finger to rub his prostate, he lets out a full-throated moan. 'Nnnghh, do that again!' he calls out breathlessly and you happily oblige, drawing further sounds of arousal from your naked soldier. Soon, you add a second finger to the first, finding his hole tightly gripping yet stretchable and him appreciative of the stimulation. 'Never thought it could feel so good to just be rubbed a bit back there.' It is fun to play around with the handsome brown-skinned man since he's quite responsive, letting out gasps and moans while you experiment to find all of his pleasure spots. You almost just want to keep going like this, yet the plugs are laid out on the table just in the corner of your view, so you eventually slip your fingers from Monty's hole with a sigh and take the smallest of the blunt-headed latex toys.";
		else if calcnumber is 2: [eat out]
			LineBreak;
			say "     Stepping up behind him and sinking to your knees, you lean forward a little to get close to Monty's back door. As the warmth of your next breath touches his skin, he tenses a little, with the wrinkled ring of his pucker flexing visibly and reminding you that the man is not too far away from being a virgin in this regard. In fact, you can't see any hint of the fact that he had a minotaur's thick schlong shoved inside him recently. Maybe wandering around for hours with nanite-laden cum inside him did have an effect after all, rejuvenating Monty somehow even if it didn't infect him. All you can see even from so close up is a tight and well-scrubbed hole, trembling for your touch. As not to freak the man out by going too quick, you stretch out your tongue and play the tip over his muscle in a light caress, circling the hole for a few seconds before you proceed to push in against it. Wiggling your appendage a little, you get him good and wet with spit before soon switching to entering Monty with your index finger.";
			say "     He's extremely tight, that's for sure, yet at the same time you're slowly able to penetrate him readily enough, a firm push being sufficient to sink in to your knuckles. Monty's breathing begins to come out in ragged pants, and when you curl your finger to rub his prostate, he lets out a guttural grunt. 'Nnnghh, do... that again!' he calls out as his body begins to shake and you happily oblige, drawing further sounds of both pain and arousal from your naked soldier. Soon, you add a second finger to the first, finding his hole tightly gripping yet more stretchable and him appreciative of your patience. 'Never thought it could feel so good to just be rubbed back there.' It is fun to play around with the handsome brown-skinned man since he's quite responsive, letting out gasps and groans while you experiment to find all of his pleasure spots. You almost just want to keep going like this, yet the plugs are laid out on the table just in the corner of your view, so you eventually slip your fingers from Monty's hole with a sigh and take the smallest of the blunt-headed latex toys.";
		WaitLineBreak;
		say "     Bringing the little butt-plug up to the crack between the soldier's well-rounded buns, you stroke it over his hole, watching the ring of muscle flex and pull tight in reaction. Monty's buttocks tense as he instinctively prepares to resist an invasion of his hole. It is clear to you that you have to work him up slowly to accept the plug, so you take your time and tease the man with gentle touches to relax his opening. Finally, you push in gently against the ring of muscle, smiling as you see it stretch and allow the blunt tip in. Continuing with circling movements of the latex toy, you sink it deeper into Monty's purplish-pink asshole, up till the point where its widest part slips past the ring. Suddenly, the rest of the toy just slides in, his straining pucker now actually speeding it along and pulling in around the butt plug's narrower neck.";
		say "     Now that the black plug is seated quite nicely inside the soldier, its flared base rests against his crack. His anxiety seems to lift now that it is all in and you can hear a sigh of relief from the tense man, followed by his muscles flexing experimentally around the sex toy. 'Doesn't feel half bad, you know. Just kinda full, but in a good way.' One of his hands moves to touch the plug, poking lightly at it, then taking hold of the base and tugging a little. 'Wow, it's stuck in there good, isn't it?' You comment that he shouldn't worry about that, what goes in will come out again without too much trouble. You take in your handiwork with a grin before you move aside a little and lay one hand on Monty's shoulder and pull him up to stand straight. As you do so, the full extent of his pleasure from your play becomes apparent, as his 10-inch cock is hard and erect. He's puzzled momentarily about what you want, but you quickly enlighten him by waving a hand and saying that he should walk a few steps with the plug in him. This extra training is supposed to make sure that his plug won't slip 'again' after all, in any situation.";
		WaitLineBreak;
		say "     Clearing his throat, Monty nods and marches forward, soon reaching the far wall and having to turn around to come back to you. As he does, your gaze is inevitably drawn down towards the rod of his erection, swinging back and forth and showing the wetness of precum at the tip. Following your gaze, the soldier becomes a bit embarrassed at the sign of his own arousal. Grabbing hold of the shaft, he flicks it lightly to the side sending a sting of pre flying to streak on the side of a desk. 'Err, I - um. This is harder than it was before, you know. With nothing else on my body to distract, this thing draws my attention all the time. It shifts a bit when I walk.' His brown skin getting a bit darker still as he blushes, Monty comes closer and takes position bent over the desk again, then says over his shoulder, 'Could you take it out please?'";
		LineBreak;
		say "     [bold type]How do you react to his request?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Work the toy inside him a little and give him a reacharound.";
		say "     [link](2)[as]2[end link] - Replace the toy with your tongue, stimulating Monty while you jerk him off.";
		say "     [link](3)[as]3[end link] - Just pull the plug and let him take care of himself.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to toy-fuck Monty a little, [link]2[end link] to eat him out or [link]3[end link] to just unplug him.";
		if calcnumber is 1: [toy-fuck]
			LineBreak;
			say "     Taking hold of the toy's base, you slowly start to pull on it. There's a certain resistance, as if the man's hole doesn't want to let go, then his pucker expands a little to stretch around the butt plug becoming wider very swiftly just above the neck. His legs tremble a little from the sudden expansion of his inner muscle. Once you're past the thicker bit, it slides out of Monty almost on its own, slick and tapering as it is. Yet before it does so, you grind the toy back into his hole, aiming to rub Monty's prostate with its blunt tip. The black man lets out a surprised, pleasurable grunt, followed by a lusty groan as you reach around him to grasp his erection. Jerking his thick trouser-snake while pushing the plug past the quivering ring of his hole drives Monty wild. His moans fill the office as lust makes him forget about any pretense of keeping quiet and he humps against your hand.";
			say "     It doesn't take all that long before the double stimulation overloads your 'trainee' and he soon grunts urgently, with the first heavy throb of his cock following right after. Craning your neck to look past his shoulder, you aim the black cock in your hand so the long spurts of his cum streak the flat expanse of the desk, again and again in an eruption of semen. Panting a little after his orgasm slowly ebbs off a little while later, Monty says, 'Man, full service with a happy ending, eh? Thanks, for this and for being here with me. As awkward as this is, I don't know what I'd do if I had to do the 'training' on my own.' After this, you rustle up a box of tissues and clean the used toy while Monty gets dressed. Packing away everything into the carrying case, you then lock it in a nearby drawer, giving Monty the key. Then you leave the office building and soon are back in the camp, with none of the other soldiers having any clue of what their comrade just did.";
		else if calcnumber is 2: [eat out]
			LineBreak;
			say "     Taking hold of the toy's base, you slowly start to pull on it. There's a certain resistance, as if the man's hole doesn't want to let go, then his pucker expands a little to stretch around the butt plug becoming wider very swiftly just above the neck. His legs tremble a little from the sudden expansion of his inner muscle and you crouch behind the man, tracing your tongue over the skin being stretched outwards by your pull. His breath catches for a second at the stimulation while the pucker twitches, unable to contract any further around the sex toy. Then you're past the thicker bit, and it slides out of Monty almost on its own, slick and tapering as it is. Yet before Monty can react in any way to being free of the invader in his back door, you flick your tongue over his hole, worming its way inside an eye-blink later. The black man lets out a surprised, pleasurable grunt, followed by a lusty groan as you reach between his legs to grasp his erection. Jerking his thick trouser-snake while eating out the quivering ring of his hole drives Monty wild. His moans fill the office as lust makes him forget about any pretense of keeping quiet and he humps against your hand.";
			say "     It doesn't take all that long before the double stimulation overloads your 'trainee' and he soon grunts urgently, with the first heavy throb of his cock following right after. Nose buried in Monty's crack as you continue to wriggle your tongue in his hole, you have no chance of aiming his eruption any which way, only realizing afterwards that he made quite a mess of a pushed-aside keyboard and some documents afterwards. Panting a little after the excertion of an orgasm, Monty says, 'Man, full service with a happy ending, eh? Thanks, for this and for being here with me. As awkward as this is, I don't know what I'd do if I had to do the 'training' on my own.' After this, you rustle up a box of tissues and clean the used toy while Monty gets dressed. Packing away everything into the carrying case, you then lock it in a nearby drawer, giving Monty the key. Then you leave the office building and soon are back in the camp, with none of the other soldiers having any clue of what their comrade just did.";
		else if calcnumber is 3: [unplug]
			LineBreak;
			say "     Taking hold of the toy's base, you slowly start to pull on it. There's a certain resistance, as if the man's hole doesn't want to let go, then his pucker expands a little to stretch around the butt plug becoming wider just above the neck. Once you're past the thicker bit, it slides out of Monty almost on its own, slick and tapering as it is. Freed from the invader in his back door, the soldier stands up and lets out a relieved sigh, followed by the words, 'Man, thank you for being here with me. As awkward as this is, I don't know what I'd do if I had to do the 'training' on my own. I'll just go take care of this, be right back.' With a nod towards his crotch, he grabs his clothing and wanders off into a conference room nearby, pushing its door shut quietly behind himself. While he jerks off in there, you find a box of tissues and clean the used toy, then pack everything away in the case.";
			say "     Exploring the office a little until Monty eventually returns, you show him a lockable drawer you found nearby that had the key sticking in it, and the two of you lock the toys in there before leaving the building once more. Soon, you're back in the camp, with none of the other soldiers having any clue of what their comrade just did.";
		now Libido of Monty is 2; [had the talk about the special transport, put the toys to use]
		now Asshole Tightness of Monty is 2; [expanded his horizons a bit]
	else if calcnumber is 2: [not your problem]
		LineBreak;
		say "     Reaching out to Monty and lightly patting his arm, you tell him that you're sure he'll manage. 'Thank you so much,' he says in a slightly exasperated tone, followed by, 'I know how to do my duty, don't doubt that for a moment. I'll manage, somehow.' Apparently not in a mood to discuss this further, he excuses himself and wanders off.";
		now Libido of Monty is 1; [had the talk about the special transport, didn't offer to help]

to say MontyTalk5:
	if Intelligence of Monty is 0:
		say "     Clearing your throat, you lean in a little towards Monty, telling him that you wanted to talk about his rear entrance. The black man's eyebrows rise in puzzlement and he straightens a little, subconsciously clenching his buttocks. 'What do you mean? Don't tell me there's something wrong with it!?' Raising one hand, you squeeze the firm flesh of his upper arm in a vaguely comforting gesture, then explain that he's perfectly fine and normal, just a little too much so maybe. 'Erh?' he asks, still looking worried. Repeating that he should calm down, you ask the muscular soldier about the girth of the minotaur cock he took. 'I - hm, as thick as my wrist at least. And - wait a minute - that thing was as long as my whole forearm, now that I think of it! I remember staring at that huge piece of meat swinging in the air as I was sent out to him.' He frowns a little at his own words, then adds, 'I wasn't quaking in my boots or anything. Somehow it just never crossed my mind that it might not fit, to be honest. If you got your superior ordering 'take that dick', you just salute and soldier on, you know.";
		say "     You gloss over the fact that no one in the whole camp seems to be thinking too clearly, with the constant cloud of minotaur musk and pheromones hanging in the air, instead focusing on the fact that people's holes can be surprisingly accomodating. Still, as Monty hears that this does often result in some permanent stretching and gaping, he frowns and rubs his ass through the camo pants. 'I don't feel different than before,' he mumbles more to himself than anyone, and you give him a smile as you say that his asshole looks perfectly normal too. Worry lines on the dark-skinned man's face smooth out a little but don't quite disappear and you wonder for a second if it'd have been better to not say anything, but it's too late now really with the cat out of the bag.";
		WaitLineBreak;
		say "[MontyDoctorMattTalk1]";
	else if Intelligence of Monty is 1: [talked about his hole before]
		say "     Bringing up his asshole and its apparent miraculous recovery from being pounded by an forearm-long minotaur cock, Monty's expression is again drawn in worried lines. 'Still feeling pretty normal and all, but you've got a point. Damn, it's weird not to understand something about your own body!'";
		say "[MontyDoctorMattTalk1]";
	else if Intelligence of Monty is 2: [mentioned Doctor Matt before]
		say "     Bringing up his asshole and its apparent miraculous recovery from being pounded by an forearm-long minotaur cock again, Monty asks somewhat impatiently, 'Ah, are you ready to go to the doctor now? I really wanna get checked out!'";
		say "     [link](1)[as]1[end link] - Take Monty to see Doctor Matt.";
		say "     [link](2)[as]2[end link] - You can't right at the moment.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to take Monty to see Doctor Matt or [link]2[end link] to postpone for now.";
		if calcnumber is 1: [visit to the doctor]
			LineBreak;
			say "[MontyDoctorMattVisit]";
		else:
			LineBreak;
			say "     The african-american soldier's eagerness to get going right now results in him looking rather disappointed when you explain that you have to postpone the trip for the time being. 'Okay, fine. But could you please come by and take me to that doctor when you've finished up whatever you need to do?'";
			now Intelligence of Monty is 2;
	else if Intelligence of Monty > 2: [visited Doctor Matt]
		if Libido of Monty < 3:
			say "     Rubbing the back of his neck, Monty blows out his breath and says, 'So, I'm not going to turn into a minotaur, or anything nonhuman. Now that's a relief! Thanks a lot for taking me to see Doctor Matt.' With a chuckle, he then adds, 'Man, what a diagnosis: 'Superior to normal asshole.' Hah, guess that'll make the training I've been ordered to do easier. To be honest, it felt pretty neat when you... 'did' me that first time, and I'd been wondering if there could be... more to experience.' It's not easy to tell with his dark skin, but you think that Monty's blushing as he says this. [bold type]He'll be open for more sexual encounters from now on.[roman type][line break]";
			now Libido of Monty is 3; [open for sex]
		else if Libido of Monty is 3:
			say "     Rubbing the back of his neck, Monty blows out his breath and says, 'So, I'm not going to turn into a minotaur, or anything nonhuman. Now that's a relief! Thanks a lot for taking me to see Doctor Matt.' With a chuckle, he then adds, 'Man, what a diagnosis: 'Superior to normal asshole.' Besides the training I've been ordered to do, I kinda want to go further with you just for fun too now. I mean, if I have it, why not use this before it wears off?'";
		else if Libido of Monty > 3:
			say "     Rubbing the back of his neck, Monty blows out his breath and says, 'So, I'm not going to turn into a minotaur, or anything nonhuman. Now that's a relief! Thanks a lot for taking me to see Doctor Matt.' With a chuckle, he then adds, 'Man, what a diagnosis: 'Superior to normal asshole.' And it's been fun to explore with you. Kinda curious how... how far we could take it. I mean, if I have this freaky hole, why not run it through its paces before it wears off?'";

to say MontyDoctorMattTalk1:
	if HP of Doctor Matt > 5 and Doctor Matt is in Primary Lab: [player interacted and he's still available]
		say "     Remembering Doctor Matt, you wonder if he could make heads or tails out of what's been going on with Monty. That could return some peace of mind to the black man, and you guess that the good doctor also wouldn't mind the opportunity to gather some additional information about what is going on. Might be worth the trip, so you tell Monty about the researcher. 'If that guy knows his shit and can give me a checkup, I'm all for it! Trevor Labs you said? Hm, some of the intel I was briefed with said to avoid the whole area, that it was a nest of monsters.' With a shrug, you tell him that it didn't seem any worse than the rest of the city to yourself. 'You know your way around, so I guess whoever reported that must have been mistaken. Could you maybe lead me there and do some introductions?'";
		LineBreak;
		say "     [link](1)[as]1[end link] - Take Monty to see Doctor Matt.";
		say "     [link](2)[as]2[end link] - You can't right at the moment.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 2:
			say "Choice? (1-2)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to take Monty to see Doctor Matt or [link]2[end link] to postpone for now.";
		if calcnumber is 1: [visit to the doctor]
			LineBreak;
			say "[MontyDoctorMattVisit]";
		else:
			LineBreak;
			say "     The african-american soldier's eagerness to get going right now results in him looking rather disappointed when you explain that you have to postpone the trip for the time being. 'Okay, fine. But could you please come by and take me to that doctor when you've finished up whatever you need to do?'";
			now Intelligence of Monty is 2;
	else:
		say "     Given that the nanite infection and everything associated with it is a total mystery to you and anyone else, you can't really do much beyond telling Monty that he should just be happy that he got lucky in some way. 'Maybe you're right,' he replies with a slight frown after a moment, then shrugs. 'Still feels weird not to understand something about your own body.' Patting his shoulder in understanding, you let the topic drop. [bold type]Maybe you could talk to him again in the future if you learn something more about the nanites, or meet an expert about the topic.[roman type][line break]";
		now Intelligence of Monty is 1; [talked about his hole]

to say MontyDoctorMattVisit:
	say "     As you tell Monty that you're ready to go, he can barely restrain himself in the urgency to be checked out. 'Meet you at the camp entrance, I'll grab my kit and clear up going on a scouting mission.' Rushing off without waiting for a reply, you look after the muscular soldier for a moment, then wander over to the camp entrance. You start up a friendly chat with Marc while you wait, then eventually are joined by Monty, decked out in a full uniform, backpack and with a rifle at the ready. 'Let's move out!' he says impatiently, though he does exchange salutes with Marc and gives him a friendly nod before walking past. The trip through the city streets [if daytimer is day]in bright sunlight[else]in the dim moonlight[end if] is fairly uneventful, which might have to do with there being two of you, armed and moving swiftly with a goal in mind. What creatures you do meet generally avoid any possible confrontation, changing the side of the road or ducking out of sight.";
	say "     Not too long after setting out from Camp Bravo, you see the Trevor Labs building before you and call out for Orthas so you do not surprise her with your presence. The black-scaled anthro dragon steps up to the shattered remains of the glass entrance door and looks at the two of you, first warily then with a smile spreading over her muzzle as she recognizes you. Meanwhile, Monty stops in his tracks, looking wide-eyed at the former security guard, then bursting out with the words, 'Wow, there's a guard dragon here?! What kind of place is this?' Taking his comment with a chuckle, Orthas saunters closer, half-spreading her wings to make herself more imposing. 'Not quite, soldier-boy. What I am is a dragoness. These things here should be a hint,' she says to him, demonstratively cupping her F-cup breasts with both hands and giving them a squeeze. This draws the soldier's gaze down to the quite well-rounded bumps under her over-stretched uniform shirt, and he misses it completely as she then holds out one hand for him to shake.";
	WaitLineBreak;
	say "     'The name's Orthas, nice to meet you,' the black dragon says, and after you casually bump your travel companion with an elbow, he blinks away from staring at her large breasts to shake her hand and hastily say, 'Corporal Montgomery Freeman. But you can call me Monty.' With a smile that shows her many sharp teeth, Orthas replies, 'Monty it is then. Welcome to the Trevor Labs. I bet you're here to see Doctor Matt, right? This doesn't look like a rescue party, with just the two of you by your lonesome.' At this point, you jump in for a bit, explaining that the black soldier is with the beachhead troops that set up a camp in the inner city and that the evacuation of any survivors seems to be off a while yet. Orthas accepts this with a friendly enough shrug and says, 'No rest for the guard dragoness yet then, eh? Go right up, he's in his lab as usual and you know the way.'";
	say "     She steps aside to let you by, and as Monty follows, you hear her tease him a bit with the words, 'You can have a feel if you want when you're done and come down later. I don't mind at all - they're fun to play with myself.' It's a bit hard to tell with his quite dark skin, but you're fairly sure Monty is blushing as he catches up with you a moment later. Without comment and doing your best to suppress a smile, you climb the stairs with him and enter the research lab where Doctor Matt is working on solving the riddle of the nanite plague. The familiar red hazmat suit isn't immediately apparent as you come in, so you call out, answered a moment later by a voice saying, 'Over here! Could you walk a bit closer, I can't really see you from this angle.' Curious what is going on, you and Monty walk deeper into the lab and you realize that the voice is actually coming from a speaker on the wall. [if Susan is in Primary Lab]Susan doesn't seem to be here either right now, as you can see her empty bunk in a corner. [end if]Then some movement behind a security window with wire mesh in the back of the large room draws your attention.";
	WaitLineBreak;
	say "     Doctor Matt, uncharacteristically dressed in a t-shirt and pants, is standing in the one location he feels safe enough in to take off the suit - the isolation room of a lab for infectious diseases. 'Welcome, good to see you again. And I see you have brought another visitor too,' the silver-haired scientist says in a friendly tone, adjusting his glasses before addressing Monty. 'You are a member of the armed forces, young man? I am Doctor Matthew Burnell, but most just call me Doctor Matt. May I ask what brings you here? To my knowledge, the plan to evacuate the city is not yet ready, so it can't be that already.' Coming to attention before the older man, Monty says, 'Corporal Montgomery Freeman, sir! My companion told me that you were very knowledgable about the nanite infection and... there's something about, em, my body I was hoping you might help me with.'";
	say "     Raising one eyebrow inquisitively, Doctor Matt nods. 'Well then, Mister Freeman, go ahead and explain. Leave nothing out, even the smallest detail might be of importance.' After saying this, the doctor moves over to a working table, picking up a clipboard and a pen to take notes. 'Ah, before you start - which serum are you on? Given your human appearance, I assume you're part of the troops that were given the experimental nanite countermeasures? Also, do you have an injector on hand that you might be able to give me? I assure you it will greatly help in my research.' Monty's brows draw together for a second, then he pulls his backpack off and opens a side pocket, pulling a bright red auto-injector with an orange protective cap out of it. 'You mean this thing? It's, XN-02. I guess you can have it, as long as I'm back in the camp within the next five hours. We were given strict orders not to miss a single scheduled injection.'";
	WaitLineBreak;
	say "     'Splendid! Please place it next to the sampling rack on that table over there,' Doctor Matt in clearly audible excitement, making notes in between following Monty with his gaze as he walks through the other room. From your position, you can see the paper a little bit, so you crane your neck and see 'XN-02' with the 2 doubly underlined and the words 'No danger of liquification' written underneath. When Monty returns to the window a moment later, Doctor Matt draws an detailed account of what happened from him, asking questions in an uncompromosingly direct way that has the other man pausing in embarrassment more than once, for example at several questions of the exact size of Tiny's erection and how it felt inside him, as well as making Monty guess about the volume of cum that was put into him and the length of time his insides were soaking in the beast-man's seed.";
	say "     Deep in thought for a long while as he re-reads his notes and taps the side of his pen against the clipboard, Doctor Matt eventually looks up again and says, 'Quite interesting, I must say. I've got a theory about what might be happening, but I'll have to examine you to confirm it. Mister Freeman, would you please strip down and sit over there on that examination table. I will be with you in a little while.' Not waiting for a reply, the doctor moves over to the double airlock and starts the process of putting on his suit, complete with pressure checks and everything before he comes out into the same room as you and Monty. The black man nerviously awaits him as instructed, completely naked and with his clothes and gear in a neat stack off on a side table. The next forty minutes or so are filled with a quite thorough examination of the black soldier, with numerous samples being taken: blood, skin from several spots, hair, even a semen sample, as well as Matt asking his patient to 'spread' himself with his fingers since he doesn't have the medical tools available to do so.";
	WaitLineBreak;
	say "     Barely paying Monty any attention after a quick, 'We're done for now. You can get dressed again,' Doctor Matt starts analyzing the samples, speaking quiet notes into a recorder and beginning with the words, 'New patient: Montgomery Freeman, age 22, african-american.' From what you've already seen and heard of the doctor, you decide it might be best to leave him working in peace and not expose Monty to the unfiltered revelations Matt will put in his notes. Waving to Monty to follow, you lead him back downstairs to the lobby. Orthas seems ready to take up her teasing again, but after a quick glance at the soldier's still tense expression, she pushes that aside. No one really seems in the mood to talk too much right now, so everyone stands around a little glumly, until Orthas eventually pulls out a deck of cards from a pants pocket and asks, 'Anyone up for a round of poker?'";
	say "     The three of you move to sit on some of the less damaged pieces of lobby furniture and play cards for what feels like quite a while, using glass shards of various sizes as ersatz money. Interestingly, Monty ends up with a quite admirable stack of fragments of the front door in front of himself. You can't quite tell if he's good at poker or just lucky today, although there's a little suspicion in you hat Orthas might be letting him win at least some of the time. She certainly does her best to be friendly, that's for sure. Some time later, the sound of creaking rubber makes you look up and see the red-suited form of Doctor Matt up at the railing of the stairs to the upper floor. 'Ah, there you are. I've got some results to show you,' he says, then turns around and goes back into his lab.";
	WaitLineBreak;
	say "     'The doctor is very smart, but I think he sometimes simply forgets to be nice. I'm sure it'll be good news, don't worry about it.' Orthas tells Monty in a friendly tone, reaching out to pat his leg above the knee and giving it a gentle squeeze. 'Thank you,' the black man replies, touching the dragoness's arm, then gets up and quickly takes the stairs two steps at a time. You hurry after him, also curious about what Matt found out. Arriving in the lab, you are greeted by Matt standing in front of a workstation with some fairly large scientific device on it. 'If you would direct your attention to the screen over there, I can show you something interesting,' he says, fiddling with the equipment as he does so. You watch the image on the screen, which depicts a skin sample, likely one of Monty's. Then a syringe or something moves closer, delivering a droplet of fluid to touch it, after which you can see the skin rapidly being transformed.";
	say "     'This is the typical reaction of an organism being exposed to the nanites. Now observe what happens when we add some of the hunter-killer nanites of XN-02.' The doctor adjusts something and a second syringe deposits a droplet to mix with the first, which instantly stops the ongoing transformation, leaving the sample halfway changed. 'What Mister Freeman and his compatriots are injecting themselves with are nanites too, who do nothing but search out other nanites and destroy them. Contrary to the rogue, highly developed nanites that are causing this city-wide outbreak, which do have some swarm-movement capability, the experimental devices depend on being moved by external forces. In short, blood being pumped throughout a host's body and carrying them along. This is a valid method of transportation that spreads their protection in the body. But not quite everywhere.' Stepping up to a drawing board, he sketches a diagram of what you recognize as human skin, with various different layers.";
	project the Figure of SkinDiagram1_icon;
	WaitLineBreak;
	project the Figure of SkinDiagram2_icon;
	say "     'As you may know, the uppermost layer of skin is called the epidermis, which is a protective sheath over the deeper layers. It is further made up of different strata of cells: corneum, granulosum, spinosum and basale. The only place where cells are created is the basal stratum at the bottom, after which they are pushed upwards by further newly formed cells and adapt to specific purposes. The important point for Mister Freeman is that there are no blood vessels in the epidermis, with only the lowest stratum being supplied through the blood vessels of the dermis beneath. So they are the last cells that actually are in contact with the hunter-killer nanites.' That said, he takes two differently colored markers and shades the lower half of the sketch green, the upper half red.";
	say "     'During his prolonged exposure to nanite-rich seminal fluid, Mister Freeman's upper cell layers got worked on by the invading nanites. Frankly, they're now far superior to normal skin - more flexible, mobile and structured in a flawless pattern. This results in higher resistance to damage, rapid healing of wounds and increased strechability. What they do not possess is the ability to reproduce, and since his basal cells were protected, the effect will wear off eventually as the epidermis skin cells flake off naturally over time.' Capping his markers and turning back to the two of you, Doctor Matt gives you a smile. 'A fascinating case to study, thank you for giving me the opportunity to do so. Are there any questions?' Monty shakes himself out of staring at the diagram, reaching one arm behind his back as if to touch his ass, then shying away from doing so. 'So you're saying I got a minotaur ass now? Will I get hairy and whatnot else? Or even a tail?!'";
	WaitLineBreak;
	say "     With the sigh of a teacher having to deal with a somewhat slow student, Matt points at the diagram. 'For your first question: Technically yes, but there is generally little differentiation between epidermis cells in any of the mammalian strains I have been able to study so far. But even if you had formed reptilian scales, without cell replenishment those would flake off over time too.' Adding a bulbous shape beneath the previously sketched layers and drawing long parallel lines upwards that penetrate all the way up through the skin, he adds, 'As for question two: No, hair-forming cells are part of the dermis. No attacking nanites had a chance of reaching them. Same thing for your third question. Forming a tail is impossible without an infection in replicating cells.' You can hear a sigh of relief from Monty at those words and the black soldier strokes over his shaved head as he blows out a long breath. 'Thank you for explaining it to me, doctor. It's a relief to hear that I'm still human and there won't be any long-term side effects.'";
	say "     'My pleasure, young man. The insights into your condition as well as the samples of nanite countermeasures you provided will help greatly in my work to understand this rogue nanite spread.' He gives Monty a friendly smile and then turns towards you. 'Thank you for bringing him to me. You're a valued assistant.' The three of you exchange some more words of casual conversation, then Monty suggests you get back to the army camp, thanking Doctor Matt again as he leaves the lab. Walking down the stairs soon after, you're awaited by Orthas leaning against the wall in the lobby. 'That's more like it, eh? Our soldier boy is smiling again! Got some good news from the doc?' she asks, directing her attention at the soldier walking ahead of you. Monty clears his throat and replies, 'Yeah actually. I'm still fully human, in everything that counts at least!' 'Congrats!' Orthas tells him, laying a clawed hand on his shoulder and giving it a comforting squeeze as he arrives at the bottom of the steps.";
	WaitLineBreak;
	say "     The dragoness follows up by leaning in and not quite whispering into his ear, 'The offer still stands, by the way. You can have a feel if you want, Monty. To celebrate, or whatever.' The man swallows visibly and licks his lips... but then the moment starting to build between them is interrupted as you also reach the end of the stair and the soldier moves to make room for you. Afterwards, he looks back and forth between the two of you, trying to come up with something fitting to say, but Orthas waves him off with a smile. 'I can see you're on the jump, and don't wanna keep you. Next time then, eh?' This is delivered with a wink and oh so casual shake of her chest, making the breasts of the dragoness wobble enticingly. 'Be safe out there, and don't be strangers you two. It's so hard these days to find anyone to hang out with.' After some friendly pats, Monty and you leave the Trevor Labs buildings and retrace your steps back to the military camp. A little while later, you're greeted by the familiar face of Marc at the Camp Bravo entrance, who lets you in right away.";
	now Intelligence of Monty is 3; [he knows he's fully human and only has a super stretchy asshole]

Instead of fucking Monty:
	if (lastfuck of Monty - turns < 5):
		say "     Monty chuckles and says, 'Man, you want to go at it again? Do you have a battery compartment somewhere? I for one need a bit of a break.'";
	else if Libido of Monty < 3:
		say "     The black man raises an eyebrow as you make your offer, then shakes his head in a friendly but firm way. 'No thanks, I'm good right now. We're not here to get our rocks off, but to fulfill a mission.' By sheer coincidence, you hear a full-voiced, lustful bellow from the center of the camp just as Monty says this. Sounds like another man [if HP of Adam > 3](or woman)[end if] got a creamy filling of minotaur cum. The soldier glances in that direction, his eyes filled with a far-away look for a second, as he seems drawn back into his own close encounter with the breeding bull of Camp Bravo. Shaking himself out of it, Monty sees you looking at him, which causes an embarrassed flush to spread over face, barely visible under his dark pigmentation. 'Err... you know what I mean. Containing this mess, saving people, helping find the cure.' Waving a hand in the air as if the dispel his own mental image of what's going on in the parade ground, he wanders away a little, busying himself with one task or other.";
	else:
		say "     The black man chuckles as you make him an offer, glancing left and right as if to see if anyone might have overheard. Clearing his throat, he runs a hand over his shaved head, then says under his breath, 'Man, I really wish I could. It's not like I'm not as horny as any red-blooded guy here in the camp. Ya['] barely can turn a corner without stumbling over someone jerking off. Though with me going out on that 'scouting mission' with you, I think it might be too noticable if I steal away too soon after. Gotta wait a while, alright?'";
		LineBreak;
		say "     (Writer's Note: Monty's further sex scenes are not quite done yet. Please have some patience.)";
	[
		say "     The black man chuckles as you make him an offer, glancing left and right as if to see if anyone might have overheard. Clearing his throat, he runs a hand over his shaved head, then says under his breath, 'Yeah, sure. Not like I'm not as horny as any red-blooded guy here in the camp. Ya['] barely can turn a corner without stumbling over someone jerking off. Not here, though. Got a rep to maintain.' Giving your arm a light slap, the black man suddenly adds in a loud voice, 'Come on, I'll show you where you have to be for debriefing.' With that said, he walks off in one direction and as you turn to follow him, you see that a whole group of other soldiers was coming up from behind where you were standing a moment ago. Not that they seem to have any interest in you, but they might have overheard any further discussion of lewd fun.";
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
		[
		if (player is male):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		]
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
		[
		if Player is male:
			choose a blank row in table of fucking options;
			now title entry is "Take Monty's ass";
			now sortorder entry is 5;
			now description entry is "Fill the young soldier's ass with your cock.";
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
]

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
