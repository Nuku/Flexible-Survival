Version 1 of Joe by Wahn begins here.
[Version 1 - Put into its own file]

[ HP of Joe                                          ]
[   0: never met                                     ]
[   1: had a friendly talk                           ]
[   2: had voluntary sex                             ]
[  20: fought before, player lost                    ]
[  21: fought before, player fled                    ]
[  22: fought before, player won                     ]
[ 100: player not interested                         ]

[ libido of Joe                                      ]
[   0: no sex with the player                        ]
[   1: Joe on player oral                            ]
[   2: player on Joe oral                            ]
[   3: mutual oral                                   ]
[   4: Joe got fucked by the player                  ]
[   5: player got fucked by Joe                      ]
[   6: mutual fuckings                               ]

Section 1 - Initial Events

Road Wanderer is a situation.
The sarea of Road Wanderer is "High".

Instead of resolving a Road Wanderer:
	if HP of Joe is 0: [never met before]
		say "     Exploring the streets of the high rise district, you wander past piles of trash, check out abandoned cars and houses, all while taking care not to draw any attention from wandering beasts. Luck is with you today, as your scavenging is soon rewarded by finding a forgotten bag of salted nuts under the seat of one of the cars. It's a bit dusty but still good, even if the best before date makes you guess that the owner of the car must have dropped it under the seat months ago. You pack the food into your backpack with a grin on your face, then set out to see if you'll find more nice stuff today.";
		LineBreak;
		say "[bold type]You gain 1 food![roman type][line break]";
		increase carried of food by 1;
		LineBreak;
		say "     Continuing on your way, you soon reach a street corner, which brings with it a curious sight. There's a human man there, just openly strolling down the centerline of the road as if he is ready to take on the world. Even more outrageous is his outfit: The muscular Asian man's only real article of clothing is a pair of loose, bright red shorts, as if he just stepped out of a kickboxing ring or fitness studio, baring his V-shaped chest for the world to see. Other than that, the only fabric on the man are a pair of martial arts handwraps. Looking at the guy's handsome face and the boyish grin he throws you as he examines you in turn, you can't help but think that he must be fairly tough, if he made it till now while cockily strutting through the street.";
		LineBreak;
		say "     [bold type]What now?[roman type][line break]";
		say "     [link](1)[as]1[end link] - Try to start a conversation. You're both sane, that has to count for something even during the nanite apocalypse!";
		say "     [link](2)[as]2[end link] - A hunky human is right in front of you. Grab him and fuck him of course!";
		say "     [link](3)[as]3[end link] - Eh, you don't need this right now. Just keep your distance and go the other way.";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to talk, [link]2[end link] to fight or [link]3[end link] to avoid the guy.";
		if calcnumber is 1: [talk]
			LineBreak;
			say "     As you approach him, the skimpily dressed man offers his hand to shake without hesitation and says, 'Hey there, I'm Joe. Nice to meet a friendly face for once. Not that I had any problems dealing with the others...' He boasts good-naturedly about what creatures he fought recently, and that none could stand against him. After that, Joe offers to flex his arms for you so you can give his bicep a squeeze, being all in all very happy to show off his body to you.";

			now HP of Joe is 1;
			say "[bold type]Your sanity has increased by 15![roman type][line break]";
			increase humanity of player by 15;
		else if calcnumber is 2: [fight]
			LineBreak;
			say "     As you step towards the human with lust in your eyes, he takes that in stride, simply raising his fists as he gets ready for a fight. 'One of those are you, eh? Fine, let's get it on!' he calls out, sure of his victory.";
			challenge "Human Martial Artist";
			if fightoutcome < 20: [player won]
				say "     <sex menu choices for making use of Joe or leaving>";
				now HP of Joe is 22; [fought, player won]
			else if fightoutcome > 19 and fightoutcome < 30: [lost]
				say "     After the man's last blow, you sway back and forth, then fall on your ass as he gives you another gentle love-tap with his index finger. 'Joe Arashi wins again!' he shouts and throws his arms up in a victorious gesture, almost as if he was posing for a huge crowd of cheering spectators. He basks in the imaginary glory for a few seconds, then turns his attention to you with an intense expression on his handsome face. Lithely crouching in front of you, the Asian Adonis puts one hand on your crotch and gives it an eager grope.";
				if player is male:
					say "     Joe seems very happy to find that you have a cock, and he immediately starts to stroke and jerk you, his capable fingers teasing your manhood into action even though you just fought one another. 'To the victor go the spoils,' he tells you with a broad grin, squeezing your shaft eagerly. 'And what I want is a nice hard cock up my ass!' With that said, he just shoves the red shorts off his thighs, revealing a lengthy and erect cock that is literally dripping with pre-cum. Not giving you any chance to resist or even comment, the martial artist then steps right over you and crouches down, simply sliding his quite flexible pucker down on your manhood. 'Nnnghh, fuck yeah!' your former opponent grunts happily and squeezes his inner muscles around your shaft, creating an incredible sensation for you.";
					WaitLineBreak;
					say "     Despite being sweaty from your earlier fight, Joe doesn't show any sign of exhaustion now that things have turned to sex. He bounces up and down on your shaft in a rapid tempo, his grinning face bent over you as he pins your arms to the ground. Grunting in lust every time his buttocks smack against you thigh, the man uses you like a living sex toy, always wanting more: deeper thrusts and a nice thick cock to stretch his hole. In between his moans, grunts and gasp, you manage to catch some words he keeps murmuring to himself, something about you 'fucking him like that orc brute did'. With a very athletic and seemingly tireless man riding your cock relentlessly, it doesn't take all that long for Joe to stroke the fires of your arousal higher and higher, until you finally just can't contain yourself any longer.";
					say "     Reflexively hammering your hips up against him, you thrust yourself deep into the Asian man, thrashing against his strong hands as he keeps you pinned. The martial artist's face takes on a blissful, almost greedy expression as he feels your shaft throb hard inside his ass, painting his insides white with the first spurt of your built-up load. He moans like a bitch in heat as blast after blast of your cum enters his ass, seemingly taking great pleasure from being bred by another man. This even goes so far that his own hard cock erupts after another few throbs into Joe's ass, without anyone even touching it. The long prick sways back and forth from his movements, spraying heavy strings of seed to splatter over Joe, you and the ground.";
					WaitLineBreak;
					say "     Riding out your mutual orgasms on top of you, Joe calms down a bit and simply enjoys the feeling of your load inside him, breathing deeply to replenish his reserves. Then he looks down at you and puts on a boyish grin, followed by the words, 'Nice cock on ya, stranger. Wanna tell me who just bred my ass?' The corny way he says this makes you chuckle despite yourself, and you can't really deny telling him your name. '[if player is not defaultnamed][name of player], eh? [end if]Pleasure meeting you. And being meated by you, hah!' While you're still groaning about the stupid joke, Joe slides himself up on your shaft, carefully sliding his hand behind his back to prevent your load from gushing out of him as he pulls off. It looks rather funny how he standing there, plugging his hole with a finger, but his rear entrance apparently tightens itself up in abnormal speed. Just a minute or two later, Joe doesn't run any danger of losing his creamy filling as he goes to grab his shorts and get dressed again. 'So long, you hot fucker!' he says with a smile, then saunters off.";
					now libido of Joe is 4; [Joe got fucked]
				else:
					say "     Joe seems a bit disappointed that you don't have a cock, shrugging to himself and standing up. 'Hm, my bad I guess. But hey, you jumped me, not the other way around.' With that said, he turns around and strolls off, just leaving you behind.";
				now HP of Joe is 20; [fought, player lost]
			else if fightoutcome is 30: [fled]
				say "     As you run off, you can hear the martial artist shout after you, 'Can't withstand the power of Joe Arashi, hah! You better run!'";
				now HP of Joe is 21; [fought, player ran]
		else: [avoid]
			LineBreak;
			say "     Deciding that you don't want anything to do with this guy, you turn around and walk the other way, leaving him to continue his own path.";
			now HP of Joe is 100; [player not interested]
	now Road Wanderer is resolved; [for now]

Section 2 - Talk Menu

to say JoeSexMenu:
	LineBreak;
	now sextablerun is 0;
	say "     When you're eventually able to get a word in edgewise, you talk to Joe about:";
	blank out the whole of table of fucking options;
	[]
	if player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Who he is";
		now sortorder entry is 1;
		now description entry is "Ask questions about him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "What he is doing here";
	now sortorder entry is 2;
	now description entry is "Ask why he is wandering the streets";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Why he's still human";
	now sortorder entry is 2;
	now description entry is "Ask how he remained unchanged by the nanites";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Having sex with him";
	now sortorder entry is 3;
	now description entry is "Offer the human man a good time";
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
				if (nam is "Who he is"):
					say "[JoeTalk1]";
				if (nam is "What he is doing here"):
					say "[JoeTalk2]";
				if (nam is "Why he's still human"):
					say "[JoeTalk3]";
				if (nam is "Who he is"):
					say "[JoeTalk4]";
				wait for any key;
		else if calcnumber is 0:
			say "Break off the conversation?";
			if player consents:
				now sextablerun is 1;
				say "     You step back from the horseman farmhand, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say JoeTalk1:
	say "     As you ask him about himself, the Asian man's expression falls for a second before he puts on a determined smile once more. 'Really? Never heard about me? Joe Arashi? Kickboxing champion of the West Coast League since last fall? Man, I should get a better agent!' He grumbles a little and shrugs, then turns his attention back to you. 'Anyways, I'm a martial artist and am training for the national championship. You'd have recognized me for sure if this whole thing had happened two months later, after I won!'";

to say JoeTalk2:
	say "     As you ask what he is doing out here in the streets, the martial artist laughs and puffs up his bare chest a little, playfully flexing his muscled pecs to show off. 'I'm gonna be famous, you know. With all this free training here, I'll not only ace the national championship, but there'll be lots of opportunities besides that when we get out of here. A movie deal for sure - [']Joe the Monster Puncher[']. Maybe they'll even make a video game about me, hah!' Listening to his eager chatter about the cloud-castles he dreams lie in his future, you have to admit that he definitively has got spirit in spades, never faltering to think big despite the dire situation everyone in this city found themselves in.";

to say JoeTalk3:
	say "     As you bring up the question of why he's still completely human and not changed like almost everyone else, the boisteous man hesitates for a second, then shrugs and replies jokingly, 'Maybe I'm just that tough. I don't know. Haven't noticed any chances about myself, even after wrestling down all sorts of beasts. ";

Section 3 - Enemy Definition

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Human Martial Artist";
	now attack entry is "[one of]Joe kicks you right in the face.[or]The martial artist kicks your knee.[or]For a second, you think you got him, but Joe elbows you in the stomach and sends you stumbling back.[or]Joe's balled fist hits your side![at random]";
	now defeated entry is "";
	now victory entry is "";
	now desc entry is "     Joe is a muscular and quite well built man, armed with a kickboxer's training and lots of stamina. He sure won't be easy to beat down!";
	now face entry is "charmingly human";
	now body entry is "charmingly human";
	now skin entry is "smooth";
	now tail entry is "";
	now cock entry is "[one of]normal[or]flesh-toned[or]uninfected[or]human[at random]";
	now face change entry is "";
	now body change entry is "";
	now skin change entry is "";
	now ass change entry is "";
	now cock change entry is "";
	now str entry is 19;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 14;
	now int entry is 12;
	now cha entry is 16;
	now sex entry is "Nochange";       [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 125;                [ How many HP has the monster got? ]
	now lev entry is 15;                [ Level of the Monster, you get this much XP if you win, or this much XP halved if you loose ]
	now wdam entry is 12;              [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";       [ Case sensitive]
	now cocks entry is 1;              [ number of cocks if sex is 'Male' or 'Both' ]
	now cock length entry is 11;
	now cock width entry is 6;         [ Size of balls ]
	now breasts entry is 2;            [ Number of nipples. ]
	now breast size entry is 4;        [ Size of breasts infection will try to attain ]
	now male breast size entry is 0;   [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;              [ number of pussies if sex is 'Female' or 'Both' ]
	now cunt length entry is 6;
	now cunt width entry is 4;
	now libido entry is 75;            [ Amount player Libido will go up if defeated ]
	now loot entry is "";              [ Loot monster drops, ]
	now lootchance entry is 0;         [ Chance of loot dropping 0-100 ]
	now scale entry is 3;              [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "human";
	now type entry is "human";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	blank out the nocturnal entry;     [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";

Joe ends here.
