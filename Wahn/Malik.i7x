Version 1 of Malik by Wahn begins here.

[ Loyalty of Malik - opinion of the player in Malik's eyes                            ]
[   8 - Malik respects the player, is open for being fucked                           ]
[   7 - Malik respects the player, is open for sucking their dick                     ]
[   6 - Malik respects the player                                                     ]
[ < 6 - Malik has some respect for the player, even if they're 'just' his breeder dad ]
[   0 - no opinion                                                                    ]
[ < 0 - Malik increasingly sees the player as only a slut                             ]
[  -6 - Malik is ready to challenge Chris for the fucking rights of the player        ]

[ Libido of Malik - sex openness                                                      ]
[   0 - he fucks anything that moves                                                  ]
[   1 - got fingered + eaten out by the player                                        ]
[   2 - has sucked the player                                                         ]
[   3 - fingered & has sucked the player                                              ]
[   4 - got fucked by the player                                                      ]

[ Intelligence of Malik - location                                                    ]
[   0 - npc nexus (character glomped onto Chris's description)                        ]
[   1 - Appearing at the Looted Shops west of the library                             ]

[ Stamina of Malik - last training turn                                               ]

Stamina of Malik is usually 20000.[@Tag:NotSaved]

MaliksRandomCaptive is a number that varies. [@Tag:NotSaved]

Table of GameCharacterIDs (continued)
object	name
Malik	"Malik"

Malik is a man.
Malik is in NPC Nexus. [not currently placed in the game]
[physical details as of game start]
ScaleValue of Malik is 3. [human sized]
Cock Count of Malik is 1.
Cock Length of Malik is 13.
Ball Size of Malik is 8.
Ball Count of Malik is 2.
Cunt Count of Malik is 0.
Cunt Depth of Malik is 0.
Cunt Tightness of Malik is 0.
Nipple Count of Malik is 2. [2 nipples]
Breast Size of Malik is 0.
[Basic Interaction states as of game start]
PlayerMet of Malik is true.
PlayerRomanced of Malik is false.
PlayerFriended of Malik is false.
PlayerControlled of Malik is false.
PlayerFucked of Malik is false.
OralVirgin of Malik is true.
Virgin of Malik is true.
AnalVirgin of Malik is true.
PenileVirgin of Malik is false.
SexuallyExperienced of Malik is false.
The MainInfection of Malik is "Orc Breeder".
The description of Malik is "[MalikDesc]".
The conversation of Malik is { "Mew!" }.

instead of sniffing Malik:
	say "     Malik has got an attractive male scent.";

to say MalikDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Malik] <- DEBUG[line break]";
	say "     Your son Malik has the typical looks of an orc warrior, standing about 7 feet tall with a broad-shouldered frame and slightly oversized hands and feet, at least compared to a human. Green-skinned and strong, he has a moderate dusting of black body hair over his bulging muscles, almost all of which are on full display as the orc only ever wears a somewhat ragged loincloth that barely covers his long schlong of a cock. Malik's face with its square jaw and somewhat brutish features is topped by a short mane of black hair that almost hides his bluntly pointed ears.";
	if Loyalty of Malik > 5: [respect locked]
		say "     As he notices your attention on himself, the young orc gives you a smile and a respectful nod.";
	else if Loyalty of Malik > 0: [a little respect there]
		say "     As he notices your attention on himself, the young orc gives you a slight smile and the hint of a nod.";
	else if Loyalty of Malik is 0: [neutral]
		say "     As he notices your attention on himself, the young orc lets his gaze wander up and down over you, coupled with a calculating expression.";
	else if Loyalty of Malik > -5: [some slutty rep]
		say "     As he notices your attention on himself, the young orc lets his gaze wander up and down over you, almost as if imagining you naked and stretched out under him.";
	else: [convinced that the player is a slutty breeder]
		say "     As he notices your attention on himself, the young orc lets his gaze wander up and down over you, with a lewd grin spreading over his face. He starts to rub his cock through the fabric of his loincloth.";

an everyturn rule:
	if Intelligence of Malik is 1:
		[if TimekeepingVar is 1 or TimekeepingVar is -7:] [midnight]
		[else if TimekeepingVar is 0 or TimekeepingVar is -8:] [pre dawn]
		if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning]
			if Player is in Looted Shops:
				say "     Strolling down the middle of the road as if he owns the place, your orc warrior son Malik comes over from the direction of the library. He gives you a broad grin and a 'Yo, breeder-dad!' as he walks past, moving to stand against a nearby wall between two shattered shop windows. Relaxedly leaning against the brick wall, he starts to let his gaze roam back and forth over the street, just waiting for someone worth his attention to wander by.";
			else if Player is in Main & 7th Street:
				say "     Suddenly, the door to the library is pushed open, with Malik sauntering through it, openly walking onto the street as if he owns it. Seems like he doesn't fear much of anything in the area, being the strong orc warrior that he is. With a grin and a wink at you as he passes by, your orcish son continues to the west, where you can see a row of looted shops.";
			else if Player is in Sitting Area:
				say "     Malik stands up from where he was lounging around on one of the sofas, then says loudly, 'I'm gonna be out for a while dads, see ya in a bit, or over at the looted shops if you come out for a stroll.'";
			move Malik to Looted Shops;
		[else if TimekeepingVar is 6 or TimekeepingVar is -2:] [mid-morning]
		[else if TimekeepingVar is 5 or TimekeepingVar is -3:] [noon]
		[else if TimekeepingVar is 4 or TimekeepingVar is -4:] [mid afternoon]
		else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
			if Player is in Looted Shops:
				say "     Glancing over to you as he pushes himself off from where he was leaning against a wall, Malik clears his throat. 'I'm gonna go back inside. See ya there, breeder-dad!' With that said, he wanders off towards the east.";
			else if Player is in Main & 7th Street:
				say "     Your orcish son Malik comes strolling up the street from the west, right in the middle of the road and strutting as if he owns the place. With a grin and a wink at you as he passes by, Malik then continues to the east, entering the library.";
			else if Player is in Sitting Area:
				say "     Malik comes walking in, giving you a grin and Chris a respectful nod. 'I'm back dads! Had a nice little time outside.'";
			now Malik is in NPC Nexus; [stashed in another dimension]
		[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night]

instead of conversing the Malik:
	say "[MalikTalkMenu]";

to say MalikTalkMenu:
	LineBreak;
	say "     [bold type]What do you want to talk with Malik about?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask the orc about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sex";
	now sortorder entry is 2;
	now description entry is "Ask the orc about sex";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Yourself";
	now sortorder entry is 3;
	now description entry is "Ask the orc what he thinks of you";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Respect";
	now sortorder entry is 4;
	now description entry is "Demand some respect from him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Running";
	now sortorder entry is 5;
	now description entry is "Suggest that the two of you go for a run";
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
				if nam is "Himself":
					say "[MalikTalk1]";
				else if nam is "Sex":
					say "[MalikTalk2]";
				else if nam is "Yourself":
					say "[MalikTalk3]";
				else if nam is "Respect":
					say "[MalikTalk4]";
				else if nam is "Running":
					say "[MalikTalk5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MalikTalk1: [Himself]
	say "     'What do you mean?' Malik replies to your question, raising an eyebrow. 'You know just about anything there is about me already. Did you forget being knocked up by Chris, carrying me and popping out a sweet little orcling?' Smirking, he shrugs and adds, 'I guess you want something more recent, eh? Fine, let me tell you about the time that I...' What follows is a hair-rising tale of his own virility and strength, boisterous enough that you'd have discounted it as a tall tale at any point before the nanite apocalypse. Now that you know what orcs are capable enough, it's only all too likely that Malik's story actually happened.";

to say MalikTalk2: [Sex]
	say "     'What about it? You offering, breeder-dad?' Malik replies with a smirk that shows his tusks. 'It's hella fun, that's what it is! The streets are ours and we take any handsome dude that comes along! Must have been bad in the before-time, eh? I think I got some of your memories about that. Guys must have had constant blue balls, not being able to get off when they wanted to!' For a second, you contemplate explaining that humans don't have the virility of orcs, or the ability to produce gallons of cum in a given day, but you decide that it's not really worth the effort and just shrug it off.";

to say MalikTalk3: [His Opinion on the Player]
	if Loyalty of Malik > 5: [respect]
		say "     'Sure thing, breeder-dad!' Malik says in reply, stepping even closer and giving your arm a 'light' slap in camaraderie. A broad grin spreads over his face as he gives you a look up and down that lingers for a moment at your crotch. 'Well, you're my daddy. A real proper daddy that I can hang out with and do stuff together,' he adds as his gaze finally arrives at your eyes again, followed by the young brute offering you a fist-bump, which you meet right away. Moving a hand to scratch the back of his neck, Malik seems slightly embarrassed to say the next words. 'You know, at first I was a bit doubtful about ya. I mean, there's proper men, and then there's cock sluts who go down on you at the first wag of a dick. With you being the fav fuckhole of Chris, I kinda thought you were just another breeder whore.'";
		say "     'Man was I wrong, eh? Really, I like having you around to talk to. You're, like, the best of both things! Never thought someone could be strong [italic type]and[roman type] slutty at the same time, or would even want to be anything but the top[if Libido of Chris is 0]!' Malik says, giving you a nod of respect. [else if Libido of Chris is 1]! Though I've been wondering a little bit, after you did that thing with your tongue and all,' Malik says, giving you a meaningful wiggle of his eyebrows. [else]! Now I know better, ain't that right big daddy?' Malik says, giving you a meaningful grin and wiggle of his eyebrows. [end if][line break]";
	else if Loyalty of Malik > 0: [a little respect there]
		say "     'Sure thing, breeder-dad!' Malik says in reply, stepping even closer and giving your arm a 'light' slap in camaraderie. An almost thoughtful expression spreads over his face as he gives you a look up and down that lingers for a moment at your crotch. 'Well, you're a breeder, Chris's breeder. Popped me into the world and all that. But at the same time, you almost seem like a, well, second proper daddy. Someone I can hang out with and do stuff together,' he adds as his gaze finally arrives at your eyes again. 'It's really confusing. I thought breeders were breeders and warriors were warriors. But you're not acting like just one thing. I mean, you're not gobbling my dick right now, are you? Instead we're standing here, having a parent to orcling talk.' He squints a little, apparently still unsure about what to make of you, then finally shrugs and drops the topic.";
	else if Loyalty of Malik is 0: [neutral]
		say "     Looking you up and down, his gaze lingering at your hips for a long while and craning his neck to check your ass out, Malik finally directs his gaze at your face again. 'Well, you're my breeder-dad. Chris's fav slut, and all that. Why do you ask?' You exchange some more words with him after that, but it becomes clear to you that the young orc doesn't really see 'sluts' in the best light, discounting them as being good for nothing except fucking and cock sucking.";
	else if Loyalty of Malik > -6: [some slutty rep]
		say "     Looking you up and down, his gaze lingering at your hips for a long while and craning his neck to check your ass out, Malik finally directs his gaze at your face again. 'Well, you're my breeder-dad. Chris's fav slut, and all that. Though I wonder why. You're giving it away to anyone waving their dick, aren't you?' You exchange some more words with him after that, but it becomes clear to you that the young orc doesn't really see 'sluts' in the best light, discounting them as being good for nothing except fucking and cock sucking.";
	else if Loyalty of Malik < -5: [convinced that the player is a slutty breeder]
		say "     Looking you up and down, his gaze lingering at your hips for a long while and craning his neck to check your ass out, Malik finally directs his gaze at your face again. 'Why do you ask, breeder-dad? We both know what a whore you are, craving dick from anyone you run into.' You exchange some more words with him after that, but it becomes clear to you that he's fully discounted you as being nothing more than a slut to be fucked.";

to say MalikTalk4: [respect]
	say "     ";

to say MalikTalk5: [running]
	if Loyalty of Malik < 0: [slut rep]
		say "     'Huh? Why would you suggest that? We both know you're just out for gobbling some cock, and we can do that right here!' Pulling his loincloth aside, the young orc whips out his green-skinned shaft, wagging it in your direction as if expecting you to sink to your knees right away. He shrugs when you don't and murmurs, 'You know you want it, slut!'";
	else: [good rep]
		if Stamina of Malik - turns < 6:
			say "     As you bring up running with him again, Malik shrugs and shakes his head. 'We've already one that today. I'm not in the mood for another go.'";
		else:
			say "     'You wanna spend some time together, breeder-dad? Nice, I know a good route for a proper workout. Might have some eye-candy on the way too.' Joining in with the chuckle of the orc, you wave for him to take the lead and follow him as he moves to the street right in front of the library. 'There's a lot of interesting things to find in the neighborhood,' Malik grunts with a tusk-bearing grin, then sets off at a well-paced jogging speed, with you close behind. As you're moving through the empty streets with the orc, you can't help but smile to yourself about his outfit - a very loose loincloth just flapping in the wind, not really hiding anything at all, and bare feet below. Not that the latter makes any difficulty for your son, as the tough skin on his large feet is more than enough to deal with even the glass shards and rubble that cover the street in places. And for the former, he apparently loves to show off his huge dick and would no doubt have whipped it out to shock passersby even if the city was still a civilized place.";
			say "[MalikRunningTraining]";

Instead of fucking the Malik:
	if (lastfuck of Malik - turns < 2):
		say "     Malik puts a hand on your chest to hold you back and says, 'Give a guy a moment to rest!'";
	else:
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		say "     [bold type]What do you want to do with the orc?[roman type][line break]";
		[
		if Player is male and Loyalty of Malik > 6:
			choose a blank row in table of fucking options;
			now title entry is "Get a blowjob from Malik";
			now sortorder entry is 1;
			now description entry is "Let the orc suck you off";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Give Malik a blowjob";
		now sortorder entry is 2;
		now description entry is "Suck the orc off";
		[]
		if Player is male and Loyalty of Malik > 7:
			choose a blank row in table of fucking options;
			now title entry is "Fuck the orc's ass";
			now sortorder entry is 3;
			now description entry is "Pound your dick into Malik";
		[]
		choose a blank row in table of fucking options;
		now title entry is "Let the orc take your ass";
		now sortorder entry is 4;
		now description entry is "Bend over for Malik";
		]
		choose a blank row in table of fucking options;
		now title entry is "Milk him for some orc cum";
		now sortorder entry is 5;
		now description entry is "Collect a bottle of cum from Malik";
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
					if nam is "Get a blowjob from Malik":
						say "[MalikSex1]";
					else if nam is "Give Malik a blowjob":
						say "[MalikSex2]";
					else if nam is "Fuck the orc's ass":
						say "[MalikSex3]";
					else if nam is "Let the orc take your ass":
						say "[MalikSex4]";
					else if nam is "Milk him for some orc cum":
						say "[MalikSex5]";
					wait for any key;
					now lastfuck of Malik is turns;
			else if calcnumber is 0:
				now sextablerun is 1;
				say "     You step back from the orc, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;

to say MalikSex1: [Malik sucks the player]
	say "...";

to say MalikSex2: [player gives Malik a BJ]
	say "...";

to say MalikSex3: [the player fucks Malik]
	say "...";

to say MalikSex4: [Malik fucks the player]
	say "...";

to say MalikSex5: [milk cum out of Malik]
	if Loyalty of Malik < 6: [not locked in as respecting the player]
		say "     Malik chuckles as you ask to milk his dick, shaking his head in disbelief when you wave the empty bottle you have ready for the task. 'What's this? You need some extra spunk for when you're out in the city and get cravings? Man, so you're just a cumslut[if Loyalty of Malik > 0] after all[end if]! Why don't you just sink down and suck it right from the tap? I got plenty for ya and you can just stay here instead, chugging my loads!' The young orc warrior pulls his loincloth aside, revealing his thick shaft and cupping the set of full balls dangling under it. Looking down on you with an expectant expression, he says, 'Go on then!' He sways his hips to make the cock wave before your eyes as you obediently sink down, then take hold of his shaft and begin to stroke along its length. 'Yeah, jerk that dick! Faster!' he adds with a moan, thrusting his hips forward a little and bumping your gripping hand with his crotch.";
		say "     One of his hands moves to cradle the back of your head, pulling you in towards Malik's large erection. His pre-cum leaking dickhead leaves a wet smear over your cheek as the orc rubs your face against his manhood with obvious amusement. You roll with the flow of it, hands still on his shaft and balls, stroking and squeezing to milk him of the liquid treasure you're out to gether. 'Someone sure is eager for some nut-milk,' Malik comments and grins down at you, rubbing your face against his cock some more, with the head brushing right across your lips and nose. As he does so, you snake out your tongue and give his cum-slit a quick lick, then trace the glans of his mushroom head with your wet appendage, much to the pleasure of the green-skinned young brute. 'Damn, that's nice! Getting kinda close too,' he grunts out, leaning his head back with closed eyes to fully focus on the sensation.";
		WaitLineBreak;
		say "     With the orc momentarily lost in his pleasure, his grip on your head is fairly weak, so you use the opportunity to pull away from his dick and instead raise the bottle. Eager to capture the essence of his virile manhood, you position your container at the head of his dick, then lean in to lick its shaft, teasing your son with your tongue. Going all out in stimulating him by rolling his balls in one hand and orally servicing his shaft, you manage to push him over the edge before much longer. 'Fuuuckkkk! Take that, cum-slut!' Malik bellows and you can feel his big cock throb against your tongue and lips. With a deep grunt from the young orc, the first spurt of cum erupts into the bottle, hitting the end with a little thud. Then another and another blast of his rich, creamy cum gushes forth and you can see before your very eyes how he fills the bottle, cum-shot by cum-shot.";
		say "     The green-skinned brute's output is actually too much to be contained by the bottle, eventually gushing out of its open top as the next heavy spurt churns the seed already inside to a froth. Hastily, you let go of his cock and pull the lid from your pocket, then pull the bottle away after another splurge and cap it. Somehow the milky white content of the bottle look incredibly tasty to you right now. Must be the aroma of orc cum that wafts heavy into your nose. Then suddenly, the almost time-stopped moment of you staring down at the bottle in your hand is broken - by a fresh cum-shot hitting you in the face. Looking up, you realize that Malik is holding his prick, aiming it right at you as he chuckles and grunts with every further spurt. 'Get a bigger bottle next time,' the orc says in an amused tone as he cums on your face, creaming you good with the ebbing-off orgasm.";
		if Strength of Chris < 2: [no sex with Malik so far]
			now Strength of Chris is 2; [blew Malik]
		if Loyalty of Malik > 0 and Loyalty of Malik < 6: [relationship building phase]
			now Loyalty of Malik is 0; [opinion crash for being slutty]
		if Loyalty of Malik > -6 and Loyalty of Malik < 1: [on the path of becoming Malik's bitch]
			decrease Loyalty of Malik by 1; [one step further towards slut reputation]
	else:
		say "     Malik chuckles as you ask to milk his dick, shaking his head in disbelief when you wave the empty bottle you have ready for the task. 'You planning some extra long trips daddy and want to take a taste of home? Man, I love how much of a cumslut you can be sometimes! I got plenty for whatever you need it for!' The young orc warrior pulls his loincloth aside, revealing his thick shaft and cupping the set of full balls dangling under it. Looking down on you with an expectant expression, he says, 'Go on then!' He sways his hips to make the cock wave before your eyes as you obediently sink down, then take hold of his shaft and begin to stroke along its length. 'Yeah, jerk that dick! Faster!' he adds with a moan, thrusting his hips forward a little and bumping your gripping hand with his crotch.";
		say "     One of his hands moves to cradle the back of your head, pulling you in towards Malik's large erection. His pre-cum leaking dickhead leaves a wet smear over your cheek as the orc rubs your face against his manhood with obvious amusement. You roll with the flow of it, hands still on his shaft and balls, stroking and squeezing to milk him of the liquid treasure you're out to gether. 'Someone sure is eager for some nut-milk,' Malik comments and grins down at you, rubbing your face against his cock some more, with the head brushing right across your lips and nose. As he does so, you snake out your tongue and give his cum-slit a quick lick, then trace the glans of his mushroom head with your wet appendage, much to the pleasure of the green-skinned young brute. 'Damn, that's nice! Getting kinda close too,' he grunts out, leaning his head back with closed eyes to fully focus on the sensation.";
		WaitLineBreak;
		say "     After pleasuring the orc a few moments more, you lightly tap against his wrist, making him release your head from his grasp. Then you pull back a little and pick up the bottle, raising it to his crotch. Eager to capture the essence of his virile manhood, you position your container at the head of his dick, then lean in to lick its shaft, teasing your son with your tongue. Going all out in stimulating him by rolling his balls in one hand and orally servicing his shaft, you manage to push him over the edge before much longer. 'Fuuuckkkk! This is for you!' Malik bellows and you can feel his big cock throb against your tongue and lips. With a deep grunt from the young orc, the first spurt of cum erupts into the bottle, hitting the end with a little thud. Then another and another blast of his rich, creamy cum gushes forth and you can see before your very eyes how he fills the bottle, cum-shot by cum-shot.";
		say "     The green-skinned brute's output is actually too much to be contained by the bottle, eventually gushing out of its open top as the next heavy spurt churns the seed already inside to a froth. Hastily, you let go of his cock and pull the lid from your pocket, then pull the bottle away after another splurge and cap it. Somehow the milky white content of the bottle look incredibly tasty to you right now. Must be the aroma of orc cum that wafts heavy into your nose. Then suddenly, the almost time-stopped moment of you staring down at the bottle in your hand is broken - by a fresh cum-shot hitting you in the face. Looking up, you meet Malik's somewhat wide-eyed gaze and hear him say, 'Ooops,' then wrap his large green hand around the head of his shaft, catching any further spurts on his palm. 'Sorry about the mess, daddy!' he adds, reaching out with his free hand to wipe off some cum from your forehead that was threatening to trickle into your eye.";
		WaitLineBreak;
		say "     'Guess we need a bigger bottle next time,' the orc says in a mixture of pride and slight embarrassment that makes you laugh out loud. Wanting to show that you're not bothered by getting a bit sticky, you put down your filled bottle, then take his hand and pull it closer, licking the smear of cum from his index finger and swallowing it with openly shown pleasure. 'So that's how it is, eh? God, you're such a slut daddy!' Malik comments amusedly, then takes the other hand from around the head of his dick. You immediately move in to brush your lips over his cum-slit, slurping up some orcish seed clinging to it, then begin to lap at the orc warrior's palm, swallowing the rest of his load lick for lick. With it being less than his full load, you don't get too drunk on its effect, but definitively end up somewhat buzzed. Malik helps you stand up when you're done, steadying you as you sway a little.";
	increase carried of orc cum by 1;

after going to Sitting Area while (Chris is in Sitting Area and Stamina of Chris > 0 and Strength of Chris is 0):
	if debugactive is 1:
		say "     DEBUG: Malik intro scene; Strength of Chris: [Strength of Chris], Stamina of Chris: [Stamina of Chris][line break]";
	say "     As you enter the area, your gaze falls upon Chris and your firstborn son with the orc warrior, the two of them standing at the railing overlooking the open interior of the library as they guzzle orc brew and talk with each other. '...real nice snug fit around my cock, definitely. And I can't complain about the result, eh?' He pats his son's shoulder and gives him a squeeze, then notices you standing nearby. 'Ah, speak of the devil. Say hello to your breeder-dad, boy.' The younger orc turns around to look at you, taking another swig to finish off his brew before setting the empty mug on the broad railing. Walking up to you, he wraps you in a muscle-packed embrace that almost takes your breath away, then grins broadly, showing off his tusks. In a proud voice, he tells you, 'Dad and me have chosen a name! I'm Malik, firstborn of your new tribe together!' That said, he slaps his broad chest with his large hand, giving a masculine grunt.";
	say "     'This boy will make us proud,' Chris boasts as he joins the two of you, laying his arms around you both. 'Almost as strong as his dad, and you should have seen him take out that German shepherd we ran into not too far from here. That doggy sure didn't make any boasts about being an Alpha anymore when we left him in a puddle of cum on the street!' 'Yeah! Pounded and bred that little bitch good! He was a bit too whiny to keep, but not bad as a casual cumdump,' Malik tells you with a smirk as he lets a hand casually wander down your backside to grope your ass. 'Better watch out boy, that's your chieftain's breeder!' Chris tells him and punches the other orc's shoulder. For a second, a challenging expression crosses Malik's face, then he gives in and pulls his hand away. Your three-way family hug breaks up after that, with Chris suggesting the three of you hang around together on a nearby sofa, you on his lap and his son next to him as you chat for a while.";
	now Strength of Chris is 1; [introduced]

after going to Sitting Area while (Chris is in Sitting Area and Daytimer is day and Intelligence of Malik is 0 and Strength of Chris > 0 and Libido of Malik is not 0):
	if debugactive is 1:
		say "     DEBUG: Malik NPC Placement Scene; Libido of Malik: [Libido of Malik][line break]";
	say "     As you enter the area, your gaze falls upon Chris, who is casually standing against one of the bookshelves, an orc brew in his hand. The orc warrior greets you with a smile, then draws you closer and gives you a possessive kiss. You start to chat a little, only to be interrupted by a call of, 'Hey dad - err, dads!' coming from the side. It's Malik, your firstborn son with Chris, who comes strolling up to stand before you. Broad-shouldered and with bulging muscles, he's almost the archetype of a proud orc warrior. 'Just wanted to tell ya that I'm gonna go out and hang in the street most of the time from now on. The library's swell and all, but I want some more action! New people wandering by to fuck and all that, hah!' Showing a confident, tusk-bearing grin, he exchanges a fist-bump with Chris, then squeezes the side of your arm as he adds, 'Gonna be out at the looted shops during the days. See ya, breeder-dad!'";
	say "     With that said, the young brute walks off to go to his new haunt. Looking after his son with a proud look on his face, Chris then leans in to you to lightly nip the side of your neck with his tusks. 'It'll be good for him to get a nice parade of possible breeders to pick from. Hell, if I didn't have your sweet ass to fill with orclings, I'd be right along to fuck any dude we could catch!' Before you can think of anything to say in reply, your orc warrior lover starts kissing you again, making out with you and pushing his tongue into your mouth to wrestle with yours. The next little while is spent in the arms of your big, strong orc, with all you can think of being his touch and kisses.";
	move Malik to Looted Shops;
	now Intelligence of Malik is 1; [moving in and out of the Looted Shops room]

after going to Sitting Area while (Chris is in Sitting Area and Stamina of Chris > 0 and Strength of Chris > 0 and Stamina of Malik - turns > 4 and a random chance of 1 in 3 succeeds):
	if debugactive is 1:
		say "     DEBUG: Malik training scene; Strength of Chris: [Strength of Chris], Stamina of Chris: [Stamina of Chris], Stamina of Malik: [Stamina of Malik][line break]";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1: [cum production]
			say "     As you enter the area, your gaze falls upon Chris and Malik doing push-ups next to each other. Far from being a regular fitness workout though, the two of them have come up with a definitively orcish way to do their training. The two brutish males are naked, sweaty, and erect, with their dicks pushing into some sort of red-white pillows every time they go down. Then you blink and have a second look, realizing that there's a bit more to the cock-receptacles than that - it wasn't initially too easy to see, but the squishy pillow actually has paws and a head: They're latex foxes! Chris and Malik must have fucked them a few times already to make them quite this stretched with fluid! 'Remember son, muscles isn't the only part of you that needs to build its stamina! The balls are among the most important bits on an orc,' your orc warrior mate grunts as he pumps himself up and down a few more times, then blasts yet another load into the fox, which swells with the squeak of straining latex.";
			say "     Meanwhile, Malik pounds his own training toy, but then suddenly pulls out of the creature, creating a tiny fountain of cum as it starts to leak his previous deposits. Pinching the rubbery material of the latex fox's buttocks between his fingers, he stops it from making too much of a mess, then looks over to his father with a bit of a shame-faced expression. 'Sorry, just couldn't go on. My balls are drained!' Chris chuckles loudly and pats his offspring on the side, casually continuing his push-ups with one arm. 'It's alright son, that's why we train this. Before long, you'll be ready to breed all the men you want nonstop! But now... wanna see how high these things bounce?' Before you know what's going on, he stands up with the balloon-like latex fox still impaled on his cock, and Malik joins his father in a quick dash towards the front of the building.";
			say "     Laughing like drunk frat boys, the two of them pull a window open and chuck their captives out of it. There's a squishing, squeaking noise from the street below and you see a colossal splash of cum streak upwards, leaving a white streak up the wall and onto the roof of the building across the street. Following the orcs, you look outside and see that the foxes seem to have weathered their fall without anything more than a few scrapes, and are weakly crawling down the street, leaving a wet trail behind them.";
		-- 2: [strength]
			say "     As you enter the area, your gaze falls upon your orc warrior son Malik, stretched out on the ground and lifting a set of weights. They're of the self-made variety, consisting of a road-sign pole, with both ends punched through the centers of several canal lids. The whole thing must weigh a lot, which doesn't stop the young buck of an orc from moving it up and down in the air in a steady rhythm. It's not like there isn't sweat visible on his chest, brow and arms, but a regular human would definitively be outmatched here. Noticing your presence, the orc grins and between the grunts of lifting his weights, he calls out, 'Heya breeder-dad! Wanna join me in the workout?' He gives a nod of his head, indicating something along the line his body is stretched out.";
			say "     With your eyes wandering along Malik's form, you notice some heavy handheld fitness weights scattered on the ground to the side of the orc's hips. That's not all that draws your gaze though, as the traditional orcish loincloth Malik is wearing has fallen to the side during his training, allowing the young male's cock to stand proudly erect in open view. Blood's not the only thing pumping for him right now, with a glistening drop of pre-cum starting to trickle down the side of his shaft right before your eyes. Casually glancing around, you see that Chris isn't actually in sight, apparently busy somewhere else in the library right now.";
			LineBreak;
			say "     [bold type]How do you react to the invitation?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Grab the weights and keep him company.";
			say "     [link](2)[as]2[end link] - Slide your lips over his shaft and train his 'other' stamina too.";
			say "     [link](3)[as]3[end link] - Just wave him off and walk away.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to lift weights, [link]2[end link] to suck him off or [link]3[end link] to leave.";
			if calcnumber is 1: [train]
				LineBreak;
				say "     Sitting down next to your green-skinned son, you reach out to grab the weights and lift them with some effort. As he pumps his canal lid weights up and down, you do your best to keep pace with the lighter ones, one in each hand. Your shared grunts fill the upper floor of the library and the two of you work up a nice sweat and burn in the muscles of your arms. It's a nice bonding moment with your brutish offspring, who grins at you and grunts out encouraging comments for you to work those weights. When he eventually drops his own set over his head and creates a set of dents in the floor, both of you are thoroughly exhausted and soaked in sweat. Sitting with your backs to the wall, you chat for a while about life in the city afterwards, then eventually get back up.";
				if a random chance of 1 in 3 succeeds:
					StatChange "Strength" by 1;
				if Loyalty of Malik > -6 and Loyalty of Malik < 6: [relationship building phase]
					increase Loyalty of Malik by 1; [good clean family fun makes Malik happy]
			else if calcnumber is 2: [blow]
				LineBreak;
				if Loyalty of Malik < 6: [not locked in as respecting the player]
					say "     Moving closer to the young orc, you sit down on the ground next to him and reach out for his erection, wrapping your fingers around its girthy shaft. 'You really are just a hungry breeder[if Loyalty of Malik > 0] after all[end if]! Dad won't mind if I use a slut like you! Go on, suck it!' he grunts during a short break with the weights resting on the ground, letting out a satisfied moan as you lean over his crotch and slurp your tongue over his dickhead. 'Yeah, just like that,' he says with a chuckle, then picks up his weights again and starts to work them up and down. You kinda fall into the same rhythm as him, bobbing your head after wrapping your lips around the green shaft and tracing the veins of his dick with your tongue. Grunts and sucking noises fill the upper floor of the library as Malik works up a nice sweat and burn in the muscles of his arms while you service him orally.";
					say "     His breaths come quicker and quicker as the urge to come builds in the young orc's balls thanks to your stimulation, and eventually he reaches the end of his (sexual) endurance. Dropping the weights over his head and creating a set of dents in the floor, Malik's hands shoot down to clamp your head between them, forcing it down all the way on his massive cock. Before you can get over the shock of suddenly deep-throating your son, his erection already gives its first heavy throb, blasting rich, creamy orc cum into your stomach. He bucks his hips up reflexively, grinding your nose into his pubes as another and another spurt follow. Only by tapping out against his side do you manage to remind the orc that you do actually need to breathe, and he lets you go a moment later to gasp for air while he paints your face with his further splashes of cum.";
					WaitLineBreak;
					say "     Already feeling the effects of the orc cum from what you took into your stomach, you feel blissed out and kinda drunk, taking hold of Malik's shaft again to lick it clean from any escaped traces of his seed. The hunky young man chuckles at your cum-slut behavior and playfully scoops his semen off your face to feed it to you with a broad grin on his face. When it is all gone finally, he draws you up to give you a dominant kiss, exploring your mouth with his tongue before carrying you over to the sofa to lay you on it. 'Till next time, slut!' he tells you, then walks away while you doze off.";
					if Strength of Chris < 2: [no sex with Malik so far]
						now Strength of Chris is 2; [blew Malik]
					if Loyalty of Malik > 0 and Loyalty of Malik < 6: [relationship building phase]
						now Loyalty of Malik is 0; [opinion crash for being slutty]
					if Loyalty of Malik > -6 and Loyalty of Malik < 1: [on the path of becoming Malik's bitch]
						decrease Loyalty of Malik by 1; [one step further towards slut reputation]
				else: [respecting the player, loyalty locked at 6+]
					say "     Moving closer to the young orc, you sit down on the ground next to him and reach out for his erection, wrapping your fingers around its girthy shaft. 'Oooh, breeder-daddy wants some cock, eh? Be my guest! Go on, suck it!' he grunts during a short break with the weights resting on the ground, letting out a satisfied moan as you lean over his crotch and slurp your tongue over his dickhead. 'Yeah, just like that,' he says with a chuckle, then picks up his weights again and starts to work them up and down. You kinda fall into the same rhythm as him, bobbing your head after wrapping your lips around the green shaft and tracing the veins of his dick with your tongue. Grunts and sucking noises fill the upper floor of the library as Malik works up a nice sweat and burn in the muscles of his arms while you service him orally.";
					say "     His breaths come quicker and quicker as the urge to come builds in the young orc's balls thanks to your stimulation, and eventually he reaches the end of his (sexual) endurance. Dropping the weights over his head and creating a set of dents in the floor, Malik's hands shoot down to clamp your head between them, forcing it down all the way on his massive cock. Before you can get over the shock of suddenly deep-throating your son, his erection already gives its first heavy throb, blasting rich, creamy orc cum into your stomach. He bucks his hips up reflexively, grinding your nose into his pubes as another and another spurt follow. You're about to raise a hand to tap out against his side when the orc finally releases you, allowing you to pull off and take a first gasped breath as his next splashes of cum cover your face.";
					WaitLineBreak;
					say "     'Oops, sorry daddy! Got a bit carried away,' Malik tells you with a somewhat worried look on his face, to be replaced by joy as he sees your cum-drunk, smiling expression. Relieved that you're not cross with him, he wipes up the splashes of his seed on your face and feeds them to you, followed by holding out his shaft so you can lap it clean too. The hunky young man murmurs something about 'Strong and slutty' under his breath, happily patting your head and leaving you all the time you need to sate your hunger for his cum. When it is all gone finally, he draws you up to give you a long kiss, exploring your mouth with his tongue before carrying you over to the sofa to lay you on it. 'See ya!' he tells you, then walks away while you doze off.";
			else: [blow him off]
				LineBreak;
				say "     Shaking your head and wishing him a nice workout, you turn around and leave Malik to his weightlifting.";
				if Loyalty of Malik > -1 and Loyalty of Malik < 6: [relationship building phase]
					if a random chance of 1 in 4 succeeds: [25% chance]
						decrease Loyalty of Malik by 1; [disappointment]
		-- 3: [running outside]
			say "     As you enter the area, your gaze falls upon your orc warrior son Malik just getting up from the sofa standing against the back wall. Tall, broad-shouldered and with quite a few bulging muscles under his green skin, it's sometimes hard to imagine that this hunk of a man was birthed by you not all that long ago. The nanites have for sure changed this world in quite interesting ways. Malik greets you with a broad grin and a wave, 'Heya breeder-dad! I was just gonna go out for a bit of a run. Wanna come with? It'll be fun!' Coming to stand in front of you, he cups the bulge in his loincloth with one hand and winks.";
			LineBreak;
			say "     [bold type]How do you react to the invitation?[roman type][line break]";
			say "     [link](1)[as]1[end link] - Go running with him outside.";
			say "     [link](2)[as]2[end link] - You're down for some fun with his dick in your mouth. Follow him into a nearby alley.";
			say "     [link](3)[as]3[end link] - Just wave him off and walk away.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to go running, [link]2[end link] to suck him off or [link]3[end link] to leave.";
			if calcnumber is 1: [train]
				LineBreak;
				say "     Replying to the orc that you'd love to spend some time with him, you allow him to lead you down the stairs and out into the street. 'There's a lot of interesting things to find in the neighborhood,' Malik grunts with a tusk-bearing grin, then sets off at a well-paced jogging speed, with you close behind. As you're moving through the empty streets with the orc, you can't help but smile to yourself about his outfit - a very loose loincloth just flapping in the wind, not really hiding anything at all, and bare feet below. Not that the latter makes any difficulty for your son, as the tough skin on his large feet is more than enough to deal with even the glass shards and rubble that cover the street in places. And for the former, he apparently loves to show off his huge dick and would no doubt have whipped it out to shock passersby even if the city was still a civilized place.";
				say "[MalikRunningTraining]";
			else if calcnumber is 2: [blow]
				LineBreak;
				if Loyalty of Malik < 6: [not locked in as respecting the player]
					say "     Moving closer to the young orc, you stroke the back of his hand and tell him that you're down for some fun, then let him lead you down the stairs and out onto the street. 'There's a lot of interesting things to find in the neighborhood,' Malik grunts with a tusk-bearing grin, then sets off at a well-paced jogging speed, with you close behind. As you're moving through the empty streets with the orc, you can't help but smile to yourself about his outfit - a very loose loincloth just flapping in the wind, not really hiding anything at all, and bare feet below. Not that the latter makes any difficulty for your son, as the tough skin on his large feet is more than enough to deal with even the glass shards and rubble that cover the street in places. And for the former, he apparently loves to show off his huge dick and would no doubt have whipped it out to shock passersby even if the city was still a civilized place.";
					say "     One block over, you call out to Malik and wave him over to a side alley. 'Saw something interesting in here?' the green-skinned brute asks you as he glances around, only to find himself being fondled by yourself, a hand slipping under his loincloth to wrap around his girthy shaft. 'You really are just a hungry breeder[if Loyalty of Malik > 0] after all[end if]! Dad won't mind if I use a slut like you! Go on, suck it!' he grunts, switching tracks to satisfying his libido almost without pause. A satisfied moan leaves his lips a few seconds later as you lean over forward and slurp your tongue over his dickhead. 'Yeah, just like that,' Malik chuckles, then puts his hands on your head, pumping it up and down on his quickly filled-out erection. The orc sets a quick pace for you, lips sliding up and down over the green shaft and your tongue tracing the veins of his dick. Grunts and sucking noises fill the alley as Malik takes his pleasure in your oral service.";
					WaitLineBreak;
					say "     His breaths come quicker and quicker as the urge to come builds in the young orc's balls thanks to your stimulation, and eventually he reaches the end of his (sexual) endurance. Hands clamping down hard on your head, he wrenches you against his crotch, forcing his whole length into your mouth. Before you can get over the shock of suddenly deep-throating your son, his erection already gives its first heavy throb, blasting rich, creamy orc cum into your stomach. He bucks his hips forward reflexively too, grinding your nose into his pubes as another and another spurt follow. Only by tapping out against his side do you manage to remind the orc that you do actually need to breathe, and he lets you go a moment later to gasp for air while he paints your face with his further splashes of cum.";
					say "     Already feeling the effects of the orc cum from what you took into your stomach, you feel blissed out and kinda drunk, taking hold of Malik's shaft again to lick it clean from any escaped traces of his seed. The hunky young man chuckles at your cum-slut behavior and playfully scoops his semen off your face to feed it to you with a broad grin on his face. When it is all gone finally, he draws you up to give you a dominant kiss, exploring your mouth with his tongue. By this time, you're almost too blissed out to stand, just moaning into his mouth as he makes out with you. 'Guess I'll have to cut the training short for today. Dad would punch me out if I left your ass here in the alley for any random fucker to make use of while I finished my miles.' With a snort, he bends down to grab you and throw you over his shoulder, then carries you back to the library.";
					WaitLineBreak;
					say "     As the two of you arrive on the upper floor, you run into Chris, who looks at his firstborn with a raised eyebrow and asks gruffly, 'What's going on here? Did something happen?!' Malik shrugs, making you shift on his shoulder and let out a panted breath. 'No worries, dad. Just had a workout with breeder-dad that was a bit much apparently and [SubjectPro of Player] got exhausted. Thought I'd bring [ObjectPro of Player] here to rest a bit.' Chris huffs a little, looking at you and seeing that you're not really capable of intelligible talk right now. 'Fine. Go ahead boy, but be sure to make [ObjectPro of Player] comfortable.' 'Will do, dad!' Malik replies, then carries you off. In your semiconscious state, you see Chris looking after the two of you with a bit of a frown on his face.";
					if Strength of Chris < 2: [no sex with Malik so far]
						now Strength of Chris is 2; [blew Malik]
					if Loyalty of Malik > 0 and Loyalty of Malik < 6: [relationship building phase]
						now Loyalty of Malik is 0; [opinion crash for being slutty]
					if Loyalty of Malik > -6 and Loyalty of Malik < 1: [on the path of becoming Malik's bitch]
						decrease Loyalty of Malik by 1; [one step further towards slut reputation]
				else: [respecting the player, loyalty locked at 6+]
					say "     Moving closer to the young orc, you stroke the back of his hand and tell him that you're down for some fun, then let him lead you down the stairs and out onto the street. 'There's a lot of interesting things to find in the neighborhood,' Malik grunts with a tusk-bearing grin, then sets off at a well-paced jogging speed, with you close behind. As you're moving through the empty streets with the orc, you can't help but smile to yourself about his outfit - a very loose loincloth just flapping in the wind, not really hiding anything at all, and bare feet below. Not that the latter makes any difficulty for your son, as the tough skin on his large feet is more than enough to deal with even the glass shards and rubble that cover the street in places. And for the former, he apparently loves to show off his huge dick and would no doubt have whipped it out to shock passersby even if the city was still a civilized place.";
					say "     One block over, you call out to Malik and wave him over to a side alley. 'Saw something interesting in here?' the green-skinned brute asks you as he glances around, only to find himself being fondled by yourself, a hand slipping under his loincloth to wrap around his girthy shaft. 'Oooh, breeder-daddy wants some cock? Be my guest! Go on, suck it!' he grunts, switching tracks to satisfying his libido almost without pause. A satisfied moan leaves his lips a few seconds later as you lean over forward and slurp your tongue over his dickhead. 'Yeah, just like that,' Malik chuckles, then puts his hands on your head, pumping it up and down on his quickly filled-out erection. The orc sets a quick pace for you, lips sliding up and down over the green shaft and your tongue tracing the veins of his dick. Grunts and sucking noises fill the alley as Malik takes his pleasure in your oral service.";
					WaitLineBreak;
					say "     His breaths come quicker and quicker as the urge to come builds in the young orc's balls thanks to your stimulation, and eventually he reaches the end of his (sexual) endurance. Hands clamping down hard on your head, he wrenches you against his crotch, forcing his whole length into your mouth. Before you can get over the shock of suddenly deep-throating your son, his erection already gives its first heavy throb, blasting rich, creamy orc cum into your stomach. He bucks his hips forward reflexively too, grinding your nose into his pubes as another and another spurt follow. You're about to raise a hand to tap out against his side when the orc finally releases you, allowing you to pull off and take a first gasped breath as his next splashes of cum cover your face.";
					say "     'Oops, sorry daddy! Got a bit carried away,' Malik tells you with a somewhat worried look on his face, to be replaced by joy as he sees your cum-drunk, smiling expression. Relieved that his daddy isn't cross with him, he wipes up the splashes of his seed on your face and feeds them to you, followed by holding out his shaft so you can lap it clean too. The hunky young man murmurs something about 'Strong and slutty' under his breath, happily patting your head and leaving you all the time you need to sate your hunger for his cum. When it is all gone finally, he draws you up to give you a long kiss, exploring your mouth with his tongue. By this time, you're almost too blissed out to stand, just moaning into his mouth as he makes out with you. 'Guess I'll have to cut the training short for today. Gotta take care of my daddy. Man, I love how slutty you sometimes can be.' With a snort, he bends down to grab you and throw you over his shoulder, then carries you back to the library.";
					WaitLineBreak;
					say "     As the two of you arrive on the upper floor, you run into Chris, who looks at his firstborn with a raised eyebrow and asks gruffly, 'What's going on here? Did something happen?!' Malik shrugs, making you shift on his shoulder and let out a panted breath. 'No worries, dad. Just had a workout with breeder-dad that was a bit much apparently and he got exhausted. Thought I'd bring him here to rest a bit.' Chris huffs a little, looking at you and seeing that you're not really capable of intelligible talk right now. 'Fine. Go ahead boy, but be sure to make him comfortable.' 'Will do, dad!' Malik replies, then carries you off. In your semiconscious state, you see Chris looking after the two of you with a bit of a frown on his face.";
			else: [refuse training]
				LineBreak;
				say "     Shaking your head and wishing him a nice workout, you pat Malik on the arm as he passes you by and leaves the library for a bit.";
				if Loyalty of Malik > -6 and Loyalty of Malik < 6: [relationship building phase]
					if a random chance of 1 in 4 succeeds: [25% chance]
						decrease Loyalty of Malik by 1; [disappointment]

to say MalikRunningTraining:
	say "     Running side by side, the two of you work up a good sweat and light burn in your muscles as you continue for a few blocks, then make a right turn and start curving back towards the library on a large circuit. Along the way, you surprisingly do not see all that many creatures out and about. The ones that do make an appearance are mostly weaker breeds that are peeking out of their hiding spots and are completely ignored by Malik. At first you think he really just wants to run right now, but then it becomes clear that they were just beneath his notice, with the orc preferring stronger prey: Ahead of the two of you, ";
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "a proud ram struts self-confidently around a corner, only to bleat in surprise as he spots Malik and yourself. The male sheep whirls around in a scrape of hooves on the asphalt and runs the way he came, seeking to put as much distance as possible between him and the orc. Your brutish son is on his trail instantly, shouting over his shoulder as he runs off, 'You turn left here, I'll chase him around the block right into your arms!'";
		-- 2:
			say "a male German shepherd pads around the corner, his gaze hunting for prey, only for him to whine in fright as he spots Malik. The canine backs away, then turns and runs the way he came, seeking to put as much distance as possible between him and the orc. Your brutish son is on his trail instantly, shouting over his shoulder as he runs off, 'You turn left here, I'll chase him around the block right into your arms!'";
		-- 3:
			say "a husky strolls around the corner with a little pack of bitches by his side. He freezes in motion as he spots Malik, then shouts for his bitches to run and shoos them the way they came from. In a rush of barks and claws scraping on the asphalt, they try to put as much distance as possible between their group and the orc. Your brutish son is on his trail instantly, shouting over his shoulder as he runs off, 'You turn left here, I'll chase him around the block right into your arms!'";
	LineBreak;
	say "     [bold type]Do you follow Malik's order and get moving to cut off his target's escape?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Run him down!";
	say "     ([link]N[as]n[end link]) - Stand aside and make excuses if he escapes.";
	if Player consents: [assist]
		LineBreak;
		say "     Playing along with Malik's plans, you jog down the path he indicated and arrive at the far corner of the block just as the ";
		if randomnumber is:
			-- 1:
				say "ram turns the corner at a full run, barely avoiding running into you. His hooves scratch over the asphalt as he dodges initially, but with you being fresher than him you manage to cut him off from true escape without too much trouble. Staring at you with wide-eyed fright, he starts to say, 'Please, I -' And that's how far he gets before Malik catches up with him, pouncing on the ram and pulling him to the ground.";
				now MaliksRandomCaptive is 1;
			-- 2:
				say "German Shepherd turns the corner ahead not too long after, panting urgently as he runs. The anthro dog stares at you with grim determination on his face, getting himself ready to fight past you. Yet that hesitation is enough to allow Malik to catch up, and the orc pounces on the canine and pulls him to the ground.";
				now MaliksRandomCaptive is 2;
			-- 3:
				say "male husky turns the corner in front of you not too long after, panting urgently. Seems he got split off from his bitches, or maybe he told them to run another way so they were safe while he led the orc away. No matter which, now he's barreling towards you with grim determination on his face, apparently ready to run you down. It's fairly easy to fake him out and shove him to stumble and fall. This gives Malik ample time to catch up and snatch the canine just as he tries to stand up again.";
				now MaliksRandomCaptive is 3;
		say "[MalikRunningCaptiveSexMenu]";
	else: [help escape]
		LineBreak;
		say "     Not really in the mood to participate in a hunt so Malik can get his rocks off, you shrug and jog down the path he indicated in a sedate tempo. As he predicted, the ";
		if randomnumber is:
			-- 1:
				say "ram actually appears in front of you not too long after, gasping as he slides around the corner and runs towards you in full flight. He stares at you with wide-eyed fright, yet you simply move aside a little and wave along. 'Thank you! That green brute is a beast!' he calls as he dashes past in a flash of brown fur. ";
			-- 2:
				say "German Shepherd in front of you not too long after, panting urgently as he peels around the corner at a run. The anthro dog stares at you with grim determination on his face, getting himself ready to fight past you. He seems surprised as you simply step aside and wave him past. 'Thanks!' he calls as he dashes past in a flash of fur and scraping claws. ";
			-- 3:
				say "male husky in front of you not too long after, panting urgently as he peels around the corner at a run. Seems he got split off from his bitches, or maybe he told them to run another way so they were safe while he led the orc away. No matter which, now he's barreling towards you with grim determination on his face, apparently ready to run you down. He seems surprised as you simply step aside and wave him past. 'Thanks!' he calls as he dashes past in a flash of fur and scraping claws. ";
		say "Malik turns the corner a moment later, obviously fairly winded from pushing his bulky body to a sprint around the block. His expectant grin turns into a frown as he sees you alone in front of him, with the quarry far beyond and escaping. Coming to a stop beside you, he grumbles, 'Hey, what happened? You should have been able to block him!' Raising your hands in a consoling gesture, you tell him that the guy was just too quick. The story gets embellished a bit with you saying that he feinted one way, then slipped past as you were moving that direction, and Malik finally shrugs in annoyance and waves you to continue your run with him. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. The young orc is still a bit grumpy from not catching his intended prey, so he doesn't really say much as you go back upstairs to the place you started out from.";
		if Loyalty of Malik > -6 and Loyalty of Malik < 6: [relationship building phase]
			decrease Loyalty of Malik by 1; [disappointment]
	if a random chance of 1 in 3 succeeds:
		StatChange "Stamina" by 1;
	follow the turnpass rule;

to say MalikRunningCaptiveSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and MaliksRandomCaptive is 1:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck the ram as he is fucked";
		now sortorder entry is 1;
		now description entry is "Spit-roast the ram between you and Malik";
	[]
	if Player is male and MaliksRandomCaptive is 2:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck the German shepherd as he is fucked";
		now sortorder entry is 1;
		now description entry is "Spit-roast the canine between you and Malik";
	[]
	if Player is male and MaliksRandomCaptive is 3:
		choose a blank row in table of fucking options;
		now title entry is "Face-fuck the husky as he is fucked";
		now sortorder entry is 1;
		now description entry is "Spit-roast the canine between you and Malik";
	[]
	if Player is male and MaliksRandomCaptive is 1:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the ram (after Malik)";
		now sortorder entry is 2;
		now description entry is "Have sloppy seconds in the ram's ass";
	[]
	if Player is male and MaliksRandomCaptive is 2:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the dog (after Malik)";
		now sortorder entry is 2;
		now description entry is "Have sloppy seconds in the German shepherd's ass";
	[]
	if Player is male and MaliksRandomCaptive is 3:
		choose a blank row in table of fucking options;
		now title entry is "Fuck the dog (after Malik)";
		now sortorder entry is 2;
		now description entry is "Have sloppy seconds in the husky's ass";
	[]
	if MaliksRandomCaptive is 1:
		choose a blank row in table of fucking options;
		now title entry is "Blow the ram as he is fucked";
		now sortorder entry is 3;
		now description entry is "Suck the ram off while Malik takes him";
	[]
	if MaliksRandomCaptive is 2:
		choose a blank row in table of fucking options;
		now title entry is "Blow the German shepherd as he is fucked";
		now sortorder entry is 3;
		now description entry is "Suck the canine off while Malik takes him";
	[]
	if MaliksRandomCaptive is 3:
		choose a blank row in table of fucking options;
		now title entry is "Blow the husky as he is fucked";
		now sortorder entry is 3;
		now description entry is "Suck the canine off while Malik takes him";
	[
	if MaliksRandomCaptive is 1:
		choose a blank row in table of fucking options;
		now title entry is "Take the ram's cock as he is fucked";
		now sortorder entry is 4;
		now description entry is "Offer your ass to the captive while Malik takes him";
	[]
	if MaliksRandomCaptive is 2:
		choose a blank row in table of fucking options;
		now title entry is "Take the German shepherd's cock as he is fucked";
		now sortorder entry is 4;
		now description entry is "Offer your ass to the captive while Malik takes him";
	[]
	if MaliksRandomCaptive is 3:
		choose a blank row in table of fucking options;
		now title entry is "Take the husky's cock as he is fucked";
		now sortorder entry is 4;
		now description entry is "Offer your ass to the captive while Malik takes him";
	]
	if Player is male and Loyalty of Malik > 2:
		choose a blank row in table of fucking options;
		now title entry is "Finger and eat Malik's ass as he fucks the captive";
		now sortorder entry is 5;
		now description entry is "Give the orc some extra stimulation";
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
				if nam is "Face-fuck the ram as he is fucked" or nam is "Face-fuck the German shepherd as he is fucked" or nam is "Face-fuck the husky as he is fucked":
					say "[MalikRunSex1]";
				else if nam is "Fuck the ram (after Malik)" or nam is "Fuck the dog (after Malik)":
					say "[MalikRunSex2]";
				else if nam is "Blow the ram as he is fucked" or nam is "Blow the German shepherd as he is fucked" or nam is "Blow the husky as he is fucked":
					say "[MalikRunSex3]";
				else if nam is "Take the ram's cock as he is fucked" or nam is "Take the German shepherd's cock as he is fucked" or nam is "Take the husky's cock as he is fucked":
					say "[MalikRunSex4]";
				else if nam is "Finger Malik's ass as he fucks the captive":
					say "[MalikRunSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc, leaving him to have his fun with your captive on his own. While you walk around and casually search for any supplies or useful gear in the surroundings, you do your best to ignore the grunts and moans coming from your son and his current sex toy. Some time later, Malik joins up with you, his loincloth still pulled aside to allow his cum-slick dick to swing freely. Almost demonstratively tucking his girthy man-meat away with a grin on his face, he says 'Should have joined me in taking him. That was a good slut!' You make some excuses that he shrugs off, followed by the orc tapping your arm and taking off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
			if Loyalty of Malik > -1 and Loyalty of Malik < 6: [relationship building phase]
				if a random chance of 1 in 4 succeeds: [25% chance]
					decrease Loyalty of Malik by 1; [disappointment]
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say MalikRunSex1: [face-fuck the captive]
	if MaliksRandomCaptive is 1: [Ram]
		say "     The ram tries to kick his orc captor between the legs, only to find his hoof deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male sheep's impressive curled horns scraping over the asphalt as Malik pins him down with one forearm pressing against his neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the ram starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the ram's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the ram fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the ram, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step up and kneel in front of the ram. It is quite easy to just pull his head down on your [Cock of Player] manhood, what with the horns to provide easy handholds. Slipping your erection between his lips, it slides over the warm and wet tongue of the male anthro and you start to face-fuck the guy, balls slapping against his chin as you adopt a steady rhythm of thrusts. Your muscle-packed offspring gives you a broad grin over the furred back of your shared captive, grunting out, 'Isn't this just the best, breeder-dad?' He clearly doesn't expect a reply as he looks down again right after and concentrates on deep-dicking his bottom boy. Still, you can't help but agree at least partially, not with the great feeling of the ram's mouth around your cock.";
		say "     Between Malik and yourself, the captured bovine is spit-roasted in an intense threesome that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the ram and unloading everything his balls have into the man. Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the ram orgasms right along with Malik, spraying his seed over the road beneath. You're not far behind, grinding your crotch against his muzzle as your erection sends throbs of cum right down his throat. Overcome by the intensity of your climax, you have to brace against Malik's broad chest as it runs its course, with the orc just giving you a tusk-bearing grin as you do so.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after both of your orgasms have run their course and he pulls his spent cock out of the ram, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the ram over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Ram" receives "OralCock" from "Player";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "     The German shepherd tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the tan and brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the German shepherd starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the German shepherd's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the German shepherd, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step up and kneel in front of the German shepherd. Initially at least a little leery about putting your best piece between his teeth, you push your thumb into his mouth, pressing down against the floppy tongue of his. The anthro dog reacts well, just flexing his wet appendage to lick at your finger a little, which gives you the confidence to pull his head down on your [Cock of Player] manhood. Slipping your erection between his lips, it is soon wrapped by the long, floppy tongue and you start to face-fuck the guy, balls slapping against his chin as you adopt a steady rhythm of thrusts. Your muscle-packed offspring gives you a broad grin over the furred back of your shared captive, grunting out, 'Isn't this just the best, breeder-dad?' He clearly doesn't expect a reply as he looks down again right after and concentrates on deep-dicking his bottom boy. Still, you can't help but agree at least partially, not with the great feeling of the German shepherd's mouth around your cock.";
		say "     Between Malik and yourself, the captured bovine is spit-roasted in an intense threesome that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the German shepherd and unloading everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the German shepherd orgasms right along with Malik, spraying his seed over the road beneath. You're not far behind, grinding your crotch against his muzzle as your erection sends throbs of cum right down his throat. Overcome by the intensity of your climax, you have to brace against Malik's broad chest as it runs its course, with the orc just giving you a tusk-bearing grin as you do so.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after both of your orgasms have run their course and he pulls his spent cock out of the German shepherd, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the German shepherd over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "German Shepherd Male" receives "AssFuck" from "Malik";
		CreatureSexAftermath "German Shepherd Male" receives "OralCock" from "Player";
	else if MaliksRandomCaptive is 3: [Husky]
		say "     The husky tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the grey and white-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the husky starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the husky's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the husky, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step up and kneel in front of the husky. Initially at least a little leery about putting your best piece between his teeth, you push your thumb into his mouth, pressing down against the floppy tongue of his. The anthro dog reacts well, just flexing his wet appendage to lick at your finger a little, which gives you the confidence to pull his head down on your [Cock of Player] manhood. Slipping your erection between his lips, it is soon wrapped by the long, floppy tongue and you start to face-fuck the guy, balls slapping against his chin as you adopt a steady rhythm of thrusts. Your muscle-packed offspring gives you a broad grin over the furred back of your shared captive, grunting out, 'Isn't this just the best, breeder-dad?' He clearly doesn't expect a reply as he looks down again right after and concentrates on deep-dicking his bottom boy. Still, you can't help but agree at least partially, not with the great feeling of the husky's mouth around your cock.";
		say "     Between Malik and yourself, the captured bovine is spit-roasted in an intense threesome that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the husky and unloading everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the husky orgasms right along with Malik, spraying his seed over the road beneath. You're not far behind, grinding your crotch against his muzzle as your erection sends throbs of cum right down his throat. Overcome by the intensity of your climax, you have to brace against Malik's broad chest as it runs its course, with the orc just giving you a tusk-bearing grin as you do so.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after both of your orgasms have run their course and he pulls his spent cock out of the husky, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the husky over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Husky Alpha" receives "OralCock" from "Player";
	if Loyalty of Malik > -6 and Loyalty of Malik < 6: [relationship building phase]
		increase Loyalty of Malik by 1; [good clean family fun makes Malik happy]

to say MalikRunSex2: [fuck the captive]
	if MaliksRandomCaptive is 1: [Ram]
		say "     The ram tries to kick his orc captor between the legs, only to find his hoof deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male sheep's impressive curled horns scraping over the asphalt as Malik pins him down with one forearm pressing against his neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the ram starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the ram's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the ram fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the ram, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Biding your time of getting a reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step to the side and watch the action with a rapt expression on your face. Fingers wrapping around your [Cock of Player] manhood, you jerk yourself while watching the orc pounding his captive. Your muscle-packed offspring gives you a broad grin, grunting out, 'He's a tight bottom boy, breeder-dad! You should feel him around your cock!' Laughing as you give an eager nod, he looks down again right after and concentrates on deep-dicking his no longer quite as unwilling breeding slut. The captured bovine is pounded in an intense marathon fuck that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the ram and unloading everything his balls have into the man.";
		say "     Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the ram orgasms right along with Malik, spraying his seed over the road beneath. Feeling that your time finally has come, you step up to the two of them, erect cock leading the way, much to the amusement of Malik. 'Want a dip in the slut too, eh dad? Sure thing! The family that hunts together breeds together!' Not at all shy about touching you, the young orc reaches out to take hold of your shaft and gently pulls you closer, giving it a few appreciative strokes. 'Ready?' he asks with a tusk-bearing grin, and as you nod, he pulls out with a squelching sound, immediately wrenching you on top of the ram in his place.";
		WaitLineBreak;
		say "     The ram's somewhat reddened hole gushing Malik's seed is quickly plugged by your own shaft, aimed straight and true by Malik's hand on your erection. With a well-meant slap and push on your ass, he makes you penetrate the ram with your whole length instantly, slamming balls-deep into his slick and creamy hole. He feels absolutely amazing to be in: warm, snug and gripping, sending your libido ablaze by the time you feel his buttocks against your crotch. Of course, the fact that you're churning up a virile young orc warrior's aphrodisiac-laden seed and it starting to affect you might also have something to do with that. Not that you really care, with the amount of pleasure you're having inside the bleeking and ecstatically whimpering ram. 'Good slut, eh?' Malik comments with a grin as he walks around your captive, then crouches before him at the front end. His uncut schlong dangles weightily between his legs as he moves, to be brought back into action as he slaps it lightly on top of the ram's head.";
		say "     Squelchingly full of Malik's seed, the ram is in a well and truly blissed-out state and not really capable of conscious movement right now, so your orcish offspring simply takes hold of him by the horns, lifting the anthro's head from where it was resting on the asphalt of the street. Presented with a thick, green cock directly in front of his muzzle now, the panting bovine reacts by opening his mouth a little wider and sticking out his tongue. Malik rewards him by sliding his cock between the ram's lips, then begins pumping in and out, face-fucking his captive gleefully. Between yourself and your son, the ram is spit-roasted and pounded from both ends, soon culminating in him twitching and thrashing as all of the stimulation drives him over the edge once more. Spurt after spurt of ovine cum splashes onto the street increasing the size of the cum puddle underneath him a little further.";
		WaitLineBreak;
		say "     As he orgasms, the ram's asshole squeezes your [Cock of Player] shaft in a vice-like grip, enhancing the pleasure of being inside his well-bred ass even further. In literally just another few heartbeats more, you let out an urgent grunt and grind yourself against his rear, wanting to be as deep as you can get as you add your own cum to Malik's earlier deposit. Meanwhile, the young orc is still hammering in and out of your shared captives's throat. He gives you a broad grin as your eyes meet over the back of the ram, then winks and pulls the guy's head off his shaft with a finger hooked around one horn. Malik's other hand quickly wraps around his shaft and jerks it furiously, quickly allowing him to reach a bellowed climax in which he blasts a thick strand of cum right across the ram's muzzle, up to his forehead. The male sheep struggles a little in his grasp, seemingly intent on tasting the orc's seed, so Malik relents after the first two or three shots, spurting the rest of his load over your captive's tongue.";
		say "     The two of you continue to grind into the ram's holes for a little while, riding out your orgasms before pulling spent cocks out of his holes. Orally and anally filled, the guy just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the Malik in standing up. He rolls the ram over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		WaitLineBreak;
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Player";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "     The German shepherd tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm on is neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and pulls up his tucked-away tail up to wipe the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the dog starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the dog's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the dog fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the dog, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Biding your time of getting a reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step to the side and watch the action with a rapt expression on your face. Fingers wrapping around your [Cock of Player] manhood, you jerk yourself while watching the orc pounding his captive. Your muscle-packed offspring gives you a broad grin, grunting out, 'He's a tight bottom boy, breeder-dad! You should feel him around your cock!' Laughing as you give an eager nod, he looks down again right after and concentrates on deep-dicking his no longer quite as unwilling breeding slut. The captured canine is pounded in an intense marathon fuck that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the dog and unloading everything his balls have into the man.";
		say "     Throb after throb of potent orc cum floods the German shepherd's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the dog orgasms right along with Malik, spraying his seed over the road beneath. Feeling that your time finally has come, you step up to the two of them, erect cock leading the way, much to the amusement of Malik. 'Want a dip in the slut too, eh dad? Sure thing! The family that hunts together breeds together!' Not at all shy about touching you, the young orc reaches out to take hold of your shaft and gently pulls you closer, giving it a few appreciative strokes. 'Ready?' he asks with a tusk-bearing grin, and as you nod, he pulls out with a squelching sound, immediately wrenching you on top of the dog in his place.";
		WaitLineBreak;
		say "     The dog's somewhat reddened hole gushing Malik's seed is quickly plugged by your own shaft, aimed straight and true by Malik's hand on your erection. With a well-meant slap and push on your ass, he makes you penetrate the German shepherd with your whole length instantly, slamming balls-deep into his slick and creamy hole. He feels absolutely amazing to be in: warm, snug and gripping, sending your libido ablaze by the time you feel his buttocks against your crotch. Of course, the fact that you're churning up a virile young orc warrior's aphrodisiac-laden seed and it starting to affect you might also have something to do with that. Not that you really care, with the amount of pleasure you're having inside the bleeking and ecstatically whimpering dog. 'Good slut, eh?' Malik comments with a grin as he walks around your captive, then crouches before him at the front end. His uncut schlong dangles weightily between his legs as he moves, to be brought back into action as he slaps it lightly on top of the dog's head.";
		say "     Squelchingly full of Malik's seed, the dog is in a well and truly blissed-out state and not really capable of conscious movement right now, so your orcish offspring simply takes hold of him by the scruff of his neck, lifting the anthro's head from where it was resting on the asphalt of the street. Presented with a thick, green cock directly in front of his muzzle now, the panting canine reacts by opening his mouth a little wider and sticking out his tongue. Malik rewards him by sliding his cock between the dog's lips, then begins pumping in and out, face-fucking his captive gleefully. Between yourself and your son, the dog is spit-roasted and pounded from both ends, soon culminating in him twitching and thrashing as all of the stimulation drives him over the edge once more. Spurt after spurt of canine cum splashes onto the street increasing the size of the cum puddle underneath him a little further.";
		WaitLineBreak;
		say "     As he orgasms, the dog's asshole squeezes your [Cock of Player] shaft in a vice-like grip, enhancing the pleasure of being inside his well-bred ass even further. In literally just another few heartbeats more, you let out an urgent grunt and grind yourself against his rear, wanting to be as deep as you can get as you add your own cum to Malik's earlier deposit. Meanwhile, the young orc is still hammering in and out of your shared captives's throat. He gives you a broad grin as your eyes meet over the back of the dog, then winks and pulls the guy's head off his shaft with a finger hooked around one horn. Malik's other hand quickly wraps around his shaft and jerks it furiously, quickly allowing him to reach a bellowed climax in which he blasts a thick strand of cum right across the dog's muzzle, up to his forehead. The male sheep struggles a little in his grasp, seemingly intent on tasting the orc's seed, so Malik relents after the first two or three shots, spurting the rest of his load over your captive's tongue.";
		say "     The two of you continue to grind into the dog's holes for a little while, riding out your orgasms before pulling spent cocks out of his holes. Orally and anally filled, the guy just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the Malik in standing up. He rolls the dog over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		WaitLineBreak;
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "German Shepherd Male" receives "AssFuck" from "Malik";
		CreatureSexAftermath "German Shepherd Male" receives "AssFuck" from "Player";
	else if MaliksRandomCaptive is 3: [Husky]
		say "     The husky tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the grey and white-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm on is neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and pulls up his tucked-away tail up to wipe the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the dog starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the dog's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the dog fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the dog, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Biding your time of getting a reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step to the side and watch the action with a rapt expression on your face. Fingers wrapping around your [Cock of Player] manhood, you jerk yourself while watching the orc pounding his captive. Your muscle-packed offspring gives you a broad grin, grunting out, 'He's a tight bottom boy, breeder-dad! You should feel him around your cock!' Laughing as you give an eager nod, he looks down again right after and concentrates on deep-dicking his no longer quite as unwilling breeding slut. The captured canine is pounded in an intense marathon fuck that goes on for a while before it eventually culminates in your son hammering his shaft all the way into the dog and unloading everything his balls have into the man.";
		say "     Throb after throb of potent orc cum floods the husky's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the dog orgasms right along with Malik, spraying his seed over the road beneath. Feeling that your time finally has come, you step up to the two of them, erect cock leading the way, much to the amusement of Malik. 'Want a dip in the slut too, eh dad? Sure thing! The family that hunts together breeds together!' Not at all shy about touching you, the young orc reaches out to take hold of your shaft and gently pulls you closer, giving it a few appreciative strokes. 'Ready?' he asks with a tusk-bearing grin, and as you nod, he pulls out with a squelching sound, immediately wrenching you on top of the dog in his place.";
		WaitLineBreak;
		say "     The dog's somewhat reddened hole gushing Malik's seed is quickly plugged by your own shaft, aimed straight and true by Malik's hand on your erection. With a well-meant slap and push on your ass, he makes you penetrate the husky with your whole length instantly, slamming balls-deep into his slick and creamy hole. He feels absolutely amazing to be in: warm, snug and gripping, sending your libido ablaze by the time you feel his buttocks against your crotch. Of course, the fact that you're churning up a virile young orc warrior's aphrodisiac-laden seed and it starting to affect you might also have something to do with that. Not that you really care, with the amount of pleasure you're having inside the bleeking and ecstatically whimpering dog. 'Good slut, eh?' Malik comments with a grin as he walks around your captive, then crouches before him at the front end. His uncut schlong dangles weightily between his legs as he moves, to be brought back into action as he slaps it lightly on top of the dog's head.";
		say "     Squelchingly full of Malik's seed, the dog is in a well and truly blissed-out state and not really capable of conscious movement right now, so your orcish offspring simply takes hold of him by the scruff of his neck, lifting the anthro's head from where it was resting on the asphalt of the street. Presented with a thick, green cock directly in front of his muzzle now, the panting canine reacts by opening his mouth a little wider and sticking out his tongue. Malik rewards him by sliding his cock between the dog's lips, then begins pumping in and out, face-fucking his captive gleefully. Between yourself and your son, the dog is spit-roasted and pounded from both ends, soon culminating in him twitching and thrashing as all of the stimulation drives him over the edge once more. Spurt after spurt of canine cum splashes onto the street increasing the size of the cum puddle underneath him a little further.";
		WaitLineBreak;
		say "     As he orgasms, the dog's asshole squeezes your [Cock of Player] shaft in a vice-like grip, enhancing the pleasure of being inside his well-bred ass even further. In literally just another few heartbeats more, you let out an urgent grunt and grind yourself against his rear, wanting to be as deep as you can get as you add your own cum to Malik's earlier deposit. Meanwhile, the young orc is still hammering in and out of your shared captives's throat. He gives you a broad grin as your eyes meet over the back of the dog, then winks and pulls the guy's head off his shaft with a finger hooked around one horn. Malik's other hand quickly wraps around his shaft and jerks it furiously, quickly allowing him to reach a bellowed climax in which he blasts a thick strand of cum right across the dog's muzzle, up to his forehead. The male sheep struggles a little in his grasp, seemingly intent on tasting the orc's seed, so Malik relents after the first two or three shots, spurting the rest of his load over your captive's tongue.";
		say "     The two of you continue to grind into the dog's holes for a little while, riding out your orgasms before pulling spent cocks out of his holes. Orally and anally filled, the guy just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the Malik in standing up. He rolls the dog over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		WaitLineBreak;
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Player";
	if Loyalty of Malik > -6 and Loyalty of Malik < 6: [relationship building phase]
		increase Loyalty of Malik by 1; [good clean family fun makes Malik happy]

to say MalikRunSex3: [blow the captive]
	if MaliksRandomCaptive is 1: [Ram]
		say "     The ram tries to kick his orc captor between the legs, only to find his hoof deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male sheep's impressive curled horns scraping over the asphalt as Malik pins him down with one forearm pressing against his neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the ram starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the ram's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the ram fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the ram, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you get down on the ground and shimmy underneath the ram until your head is just beneath his swinging cock. Stretching your neck, it's easy to catch the hard shaft between your lips and to start sucking on it, pushing the ram's moans to another level of urgency. Leaning forward and to the side to glance down at you, Malik gives you a broad grin and grunts out, 'Enjoying yourself, breeder-dad?' He clearly doesn't expect a reply as he straightens up almost immediately, then gets back to deep-dicking his bottom boy. Still, you can't help but agree, not with the hard shaft of the ram's cock in your mouth. Between Malik driving his thick schlong into the captured bovine and you sucking on his cock, the ram's sexual endurance doesn't really stand a chance, so it doesn't take all that long before he lets out a breathless grunt and starts to unload onto your tongue, spurting out rich, creamy cum.";
		say "     As the bovine orgasms, his inner muscles flex and tighten around Malik's cock, giving your orcish son the last push past the point of no return. With an aroused bellow, the green-skinned brute hammers into the ram one last time and unloads everything his balls have into the man. Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs that extends his orgasm into a mind-blowing experience and leaves the man twitching and trembling all over his body. Even his spurts of cum are affected, as the furry balls right in front of your eyes seem to pulsate, sending forth every last drop they can deliver.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after his orgasm has run its course and you crawl out from under the ram. Then the orc pulls his spent cock out of your caprine, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the ram over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Player" receives "OralCock" from "Ram";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "     The German shepherd tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the tan and brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the German shepherd starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the German shepherd's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the German shepherd, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you get down on the ground and shimmy underneath the German shepherd until your head is just beneath his swinging cock. Stretching your neck, it's easy to catch the hard shaft between your lips and to start sucking on it, pushing the anthro dog's moans to another level of urgency. Leaning forward and to the side to glance down at you, Malik gives you a broad grin and grunts out, 'Enjoying yourself, breeder-dad?' He clearly doesn't expect a reply as he straightens up almost immediately, then gets back to deep-dicking his bottom boy. Still, you can't help but agree, not with the hard shaft of the German shepherd's cock in your mouth. Between Malik driving his thick schlong into the captured canine and you sucking on his cock, the German shepherd's sexual endurance doesn't really stand a chance, so it doesn't take all that long before he lets out a breathless grunt and starts to unload onto your tongue, spurting out rich, creamy cum.";
		say "     As the canine orgasms, his inner muscles flex and tighten around Malik's cock, giving your orcish son the last push past the point of no return. With an aroused bellow, the green-skinned brute hammers into the German shepherd one last time and unloads everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs that extends his orgasm into a mind-blowing experience and leaves the man twitching and trembling all over his body. Even his spurts of cum are affected, as the furry balls right in front of your eyes seem to pulsate, sending forth every last drop they can deliver.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after his orgasm has run its course and you crawl out from under the German shepherd. Then the orc pulls his spent cock out of your caprine, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the German shepherd over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "German Shepherd Male" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Player" receives "OralCock" from "German Shepherd Male";
	else if MaliksRandomCaptive is 3: [Husky]
		say "     The husky tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the grey and white-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm across his neck. The captive manages to growl, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!'[of]I'll bite your dick off before this is over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the husky starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the husky's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the anthro canine fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out caprine up to all fours so he can more easily thrust into him. Looking at the husky, you see his red, knotted erection bobbing in the air beneath his furred body and his muzzle hang open as he moans loudly and pants in lust.";
		WaitLineBreak;
		say "     Deciding that it is time for you to get your own reward for participating in Malik's little hunt, you get down on the ground and shimmy underneath the husky until your head is just beneath his swinging cock. Stretching your neck, it's easy to catch the hard shaft between your lips and to start sucking on it, pushing the anthro dog's moans to another level of urgency. Leaning forward and to the side to glance down at you, Malik gives you a broad grin and grunts out, 'Enjoying yourself, breeder-dad?' He clearly doesn't expect a reply as he straightens up almost immediately, then gets back to deep-dicking his bottom boy. Still, you can't help but agree, not with the hard shaft of the husky's cock in your mouth. Between Malik driving his thick schlong into the captured canine and you sucking on his cock, the husky's sexual endurance doesn't really stand a chance, so it doesn't take all that long before he lets out a breathless grunt and starts to unload onto your tongue, spurting out rich, creamy cum.";
		say "     As the canine orgasms, his inner muscles flex and tighten around Malik's cock, giving your orcish son the last push past the point of no return. With an aroused bellow, the green-skinned brute hammers into the husky one last time and unloads everything his balls have into the man. Throb after throb of potent orc cum floods the male dog's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs that extends his orgasm into a mind-blowing experience and leaves the man twitching and trembling all over his body. Even his spurts of cum are affected, as the furry balls right in front of your eyes seem to pulsate, sending forth every last drop they can deliver.";
		WaitLineBreak;
		say "     'Good slut, eh?' Malik eventually asks after his orgasm has run its course and you crawl out from under the husky. Then the orc pulls his spent cock out of your caprine, who just sinks down to lie in the street, ass still raised high. You make some noises to express your own opinion of the guy you took captive, then join the orc warrior in standing up. He rolls the husky over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock.";
		say "     As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Malik";
		CreatureSexAftermath "Player" receives "OralCock" from "Husky Alpha";
	if Loyalty of Malik > -6 and Loyalty of Malik < 6: [relationship building phase]
		increase Loyalty of Malik by 1; [good clean family fun makes Malik happy]

to say MalikRunSex4: [get fucked by the captive while Malik fucks]
	if MaliksRandomCaptive is 1: [Ram]
		say "     ";
		CreatureSexAftermath "Player" receives "AssFuck" from "Ram";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "     ";
		CreatureSexAftermath "Player" receives "AssFuck" from "German Shepherd Male";
		CreatureSexAftermath "German Shepherd Male" receives "AssFuck" from "Malik";
	else if MaliksRandomCaptive is 3: [Husky Alpha]
		say "     ";
		CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
		CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Malik";

to say MalikRunSex5: [finger Malik as he fucks]
	if MaliksRandomCaptive is 1: [Ram]
		say "     The ram tries to kick his orc captor between the legs, only to find his hoof deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male sheep's impressive curled horns scraping over the asphalt as Malik pins him down with one forearm pressing against his neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and wipes the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the ram starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the ram's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the ram fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the ram, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Biding your time of getting a reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step to the side and watch the action with a rapt expression on your face. Fingers wrapping around your [Cock of Player] manhood, you jerk yourself while watching the orc pounding his captive. Your muscle-packed offspring gives you a broad grin, grunting out, 'He's a tight bottom boy, breeder-dad! You should feel him around your cock!' Laughing as you give an eager nod, he looks down again right after and concentrates on deep-dicking his no longer quite as unwilling breeding slut. With Malik pounding his captured bovine, you're left free to wander over and stand behind him, then begin stroking his flexing muscles and feel their warmth beneath your fingers. The orc takes this in stride, proudly enjoying the chance to show off his strength and even tensing his muscles demonstratively for you.";
		if Libido of Malik is 0: [first time]
			say "     Letting your hands move over his broad back and muscled sides, you work your way down slowly, making sure that the orc isn't suspecting anything yet. He grunts in pleasure as your fingers brush over the light fuzz covering his buttocks, then squeeze them appreciatively. Your son's ass flexes under your grip as he continues to pump in and out of the ram, almost making you forget about your true objective, yet the fleeting glimpses of the tight hole between his buns soon remind you. Gathering a gob of spit, you let it drip onto the fingers of one hand, spreading the wetness around a little before moving your hand down to Malik's crack. 'Huh?' comes an inquisitive grunt from the young orc as you touch his back door, rubbing over it and starting to worm a fingertip into the tight ring of muscle.";
			WaitLineBreak;
			say "     Not having all that much time before Malik starts to grope backwards blindly to push you off, there sadly isn't all that much time to start him gently on anal play. But then, orcs are tough, so just a few heartbeats later, you press in hard and sink your digits into the green-skinned male's asshole. Virgin-tight as he may be, there still is a nice give to his back passage and it seems to be more slippery than just your little spit would account for, showing that in the end, orc warriors aren't that far removed from their smaller breeding partners. Sliding deeper, you easily find the knot of muscle that is his prostate and rub against it, drawing a lewd groan from the orc. The movements of Malik's groping hand become less focused on pushing you away, and even as he finally bumps against your shoulder, all that results is him grabbing it and squeezing it a little. Apparently, your boy likes someone playing with his ass after all.";
		else: [already had some fun with his ass]
			say "     Letting your hands move over his broad back and muscled sides, you work your way down and then give the orc's ass a light slap, making him give an amused snort and look over his shoulder. Malik grunts in pleasure as your fingers brush over the light fuzz covering his buttocks, then squeeze them appreciatively. Your son's ass flexes under your grip as he continues to pump in and out of the ram, almost making you forget about your true objective, yet the fleeting glimpses of the tight hole between his buns soon remind you. Gathering a gob of spit, you let it drip onto the fingers of one hand, spreading the wetness around a little before moving your hand down to Malik's crack. 'Nnghh yeah!' comes an eager grunt from the young orc as you touch his back door, rubbing over it and starting to worm a fingertip into the tight ring of muscle.";
			WaitLineBreak;
			say "     Malik starts to grope backwards blindly as you work his hole, soon finding your shoulder to grab hold of. He gives you a squeeze as you sink your fingers into the olive-green ring of his asshole, making it flex around the questing digits. Tight as he may be, there still is a nice give to his back passage and it seems to be more slippery than just your little spit would account for, showing that in the end, orc warriors aren't that far removed from their smaller breeding partners. Sliding deeper, you easily find the knot of muscle that is his prostate and rub against it, drawing a lewd groan from the orc. Your boy definitively enjoys someone playing with his ass.";
		say "     'Fuuuckkk!' the orc shouts in pleasure, now consciously tightening his anal muscles as he revels in having your fingers up his butt. His movements of hammering into the ram take on an extra level of urgency as he slides in and out of your captive at the same time as grinding back against your digits, allowing them to go to various depths and stroking ever new sensitive spots inside of him. [if Loyalty of Malik > 5]'Feels... really... great,' [else]'That feels weird, but... keep doing it,' [end if]Malik grunts out, at which point you brush off his hand on your shoulder and lean forward. Spreading his green-skinned buns with both of your hands, you bury your face in his crack and start lapping, then snake your wriggling tongue into the relaxed opening of his asshole. The new sensation of having your wet, spongy appendage move over his pucker and then inside him drives Malik wild, panting like a bitch in heat as he brings his hand down on your head and presses you against him even firmer. With just a few more curls of your questing tongue, you drive the orc right over the edge.";
		WaitLineBreak;
		say "     Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the ram orgasms right along with Malik, spraying his seed over the road beneath. Lifting yourself from being bent over to eat Malik out, you feel the overwhelming desire to join the two of them in orgasm and start to jerk off furiously, hand sliding up and down over your [Cock of player] shaft and squeezing it just right. As aroused as you already are, it takes little time to push yourself over the edge, sending thick and creamy spurts flying to paint Malik's ass in white splashes. The broad-shouldered orc twists his upper body to glance back at you, meeting your eyes and letting out an amused snort.";
		say "     'You know, daddy... I always thought breeders were a bit weaker than true orcs, with them squealing so much when pounded hard. Never imagined that it might just be because it's just so fucking good! That thing you did with your tongue was just... something else!' He falls silent after saying this, just looking at you for a few seconds before he uses his hand to wipe your cum off his ass. Sliding his other arm under the freshly bred captive, he pulls him up against his chest and feeds the guy your load, making him lick it off his strong fingers and broad palm. Malik continues to grind against his captive a little while longer and allows him to lap at his hand, then eventually lets go of the ram and pulls his spent cock out of his stretched hole. The guy just sinks down to lie in the street, ass still raised high.";
		WaitLineBreak;
		say "     Standing up, Malik rolls the ram over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock. As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Ram" receives "AssFuck" from "Malik";
	else if MaliksRandomCaptive is 2: [German Shepherd]
		say "     The German shepherd tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the brown-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm on is neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and pulls up his tucked-away tail up to wipe the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the dog starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the dog's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the dog fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the dog, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Biding your time of getting a reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step to the side and watch the action with a rapt expression on your face. Fingers wrapping around your [Cock of Player] manhood, you jerk yourself while watching the orc pounding his captive. Your muscle-packed offspring gives you a broad grin, grunting out, 'He's a tight bottom boy, breeder-dad! You should feel him around your cock!' Laughing as you give an eager nod, he looks down again right after and concentrates on deep-dicking his no longer quite as unwilling breeding slut. With Malik pounding his captured bovine, you're left free to wander over and stand behind him, then begin stroking his flexing muscles and feel their warmth beneath your fingers. The orc takes this in stride, proudly enjoying the chance to show off his strength and even tensing his muscles demonstratively for you.";
		if Libido of Malik is 0: [first time]
			say "     Letting your hands move over his broad back and muscled sides, you work your way down slowly, making sure that the orc isn't suspecting anything yet. He grunts in pleasure as your fingers brush over the light fuzz covering his buttocks, then squeeze them appreciatively. Your son's ass flexes under your grip as he continues to pump in and out of the dog, almost making you forget about your true objective, yet the fleeting glimpses of the tight hole between his buns soon remind you. Gathering a gob of spit, you let it drip onto the fingers of one hand, spreading the wetness around a little before moving your hand down to Malik's crack. 'Huh?' comes an inquisitive grunt from the young orc as you touch his back door, rubbing over it and starting to worm a fingertip into the tight ring of muscle.";
			WaitLineBreak;
			say "     Not having all that much time before Malik starts to grope backwards blindly to push you off, there sadly isn't all that much time to start him gently on anal play. But then, orcs are tough, so just a few heartbeats later, you press in hard and sink your digits into the green-skinned male's asshole. Virgin-tight as he may be, there still is a nice give to his back passage and it seems to be more slippery than just your little spit would account for, showing that in the end, orc warriors aren't that far removed from their smaller breeding partners. Sliding deeper, you easily find the knot of muscle that is his prostate and rub against it, drawing a lewd groan from the orc. The movements of Malik's groping hand become less focused on pushing you away, and even as he finally bumps against your shoulder, all that results is him grabbing it and squeezing it a little. Apparently, your boy likes someone playing with his ass after all.";
		else: [already had some fun with his ass]
			say "     Letting your hands move over his broad back and muscled sides, you work your way down and then give the orc's ass a light slap, making him give an amused snort and look over his shoulder. Malik grunts in pleasure as your fingers brush over the light fuzz covering his buttocks, then squeeze them appreciatively. Your son's ass flexes under your grip as he continues to pump in and out of the dog, almost making you forget about your true objective, yet the fleeting glimpses of the tight hole between his buns soon remind you. Gathering a gob of spit, you let it drip onto the fingers of one hand, spreading the wetness around a little before moving your hand down to Malik's crack. 'Nnghh yeah!' comes an eager grunt from the young orc as you touch his back door, rubbing over it and starting to worm a fingertip into the tight ring of muscle.";
			WaitLineBreak;
			say "     Malik starts to grope backwards blindly as you work his hole, soon finding your shoulder to grab hold of. He gives you a squeeze as you sink your fingers into the olive-green ring of his asshole, making it flex around the questing digits. Tight as he may be, there still is a nice give to his back passage and it seems to be more slippery than just your little spit would account for, showing that in the end, orc warriors aren't that far removed from their smaller breeding partners. Sliding deeper, you easily find the knot of muscle that is his prostate and rub against it, drawing a lewd groan from the orc. Your boy definitively enjoys someone playing with his ass.";
		say "     'Fuuuckkk!' the orc shouts in pleasure, now consciously tightening his anal muscles as he revels in having your fingers up his butt. His movements of hammering into the dog take on an extra level of urgency as he slides in and out of your captive at the same time as grinding back against your digits, allowing them to go to various depths and stroking ever new sensitive spots inside of him. [if Loyalty of Malik > 5]'Feels... really... great,' [else]'That feels weird, but... keep doing it,' [end if]Malik grunts out, at which point you brush off his hand on your shoulder and lean forward. Spreading his green-skinned buns with both of your hands, you bury your face in his crack and start lapping, then snake your wriggling tongue into the relaxed opening of his asshole. The new sensation of having your wet, spongy appendage move over his pucker and then inside him drives Malik wild, panting like a bitch in heat as he brings his hand down on your head and presses you against him even firmer. With just a few more curls of your questing tongue, you drive the orc right over the edge.";
		WaitLineBreak;
		say "     Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the dog orgasms right along with Malik, spraying his seed over the road beneath. Lifting yourself from being bent over to eat Malik out, you feel the overwhelming desire to join the two of them in orgasm and start to jerk off furiously, hand sliding up and down over your [Cock of player] shaft and squeezing it just right. As aroused as you already are, it takes little time to push yourself over the edge, sending thick and creamy spurts flying to paint Malik's ass in white splashes. The broad-shouldered orc twists his upper body to glance back at you, meeting your eyes and letting out an amused snort.";
		say "     'You know, dad... I always thought breeders were a bit weaker than true orcs, with them squealing so much when pounded hard. Never imagined that it might just be because it's just so fucking good! That thing you did with your tongue was just... something else!' He falls silent after saying this, just looking at you for a few seconds before he uses his hand to wipe your cum off his ass. Sliding his other arm under the freshly bred captive, he pulls him up against his chest and feeds the guy your load, making him lick it off his strong fingers and broad palm. Malik continues to grind against his captive a little while longer and allows him to lap at his hand, then eventually lets go of the dog and pulls his spent cock out of his stretched hole. The guy just sinks down to lie in the street, ass still raised high.";
		WaitLineBreak;
		say "     Standing up, Malik rolls the dog over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock. As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "German Shepherd Male" receives "AssFuck" from "Malik";
	else if MaliksRandomCaptive is 3: [Husky]
		say "     The husky tries to kick his orc captor between the legs, only to find his paw deflected and Malik coming down mercilessly on top of him, pinning the grey and white-furred male to the street. There is a little bit more of a struggle that soon ends with the male dog's muzzle pressed against the asphalt as Malik pins him down with one forearm on is neck. The captive manages to grunt, '[one of]Get off me, you bastard!' [or]I'll get you for this!' [or]This isn't over!' [at random]which prompts Malik to comment, 'I like it when my breeders have some spunk in them. Shows they'll give good orclings to their masters!' You can hear the mixture of excitement and arousal in the young orc warrior's tone as he goes on to say 'Gonna show you what was missing in your life until now, slut!' With that said, he lines his erect and pre-cum dripping shaft up with the other man's crack and pulls up his tucked-away tail up to wipe the sticky fluid against his clenched pucker.";
		say "     'Get off, you -', the dog starts to say, only to let out an involuntary moan as his body shudders in sudden arousal. 'I will, fuckmeat! And when I get off in you and fill you with my load, you'll feel even better than this!' Malik replies in a chuckle, milking his erection to smear more spurts of pre over the dog's skin to deliver the potent aphrodisiacs in it. It doesn't take long at all before the struggles of the dog fade and your orcish offspring begins to nudge his slick cock inside him, stretching the quickly relaxing muscle around his shaft. 'Yeah, nice and tight!' Malik calls out, for all the world to hear, and then pulls his now blissed-out captive up to all fours so he can more easily thrust into him. Looking at the dog, you see an erection bobbing in the air beneath his muscled body and his mouth open as he moans loudly.";
		WaitLineBreak;
		say "     Biding your time of getting a reward for participating in Malik's little hunt, you [if Player is not naked]quickly take off your clothes and gear, then [end if]step to the side and watch the action with a rapt expression on your face. Fingers wrapping around your [Cock of Player] manhood, you jerk yourself while watching the orc pounding his captive. Your muscle-packed offspring gives you a broad grin, grunting out, 'He's a tight bottom boy, breeder-dad! You should feel him around your cock!' Laughing as you give an eager nod, he looks down again right after and concentrates on deep-dicking his no longer quite as unwilling breeding slut. With Malik pounding his captured bovine, you're left free to wander over and stand behind him, then begin stroking his flexing muscles and feel their warmth beneath your fingers. The orc takes this in stride, proudly enjoying the chance to show off his strength and even tensing his muscles demonstratively for you.";
		if Libido of Malik is 0: [first time]
			say "     Letting your hands move over his broad back and muscled sides, you work your way down slowly, making sure that the orc isn't suspecting anything yet. He grunts in pleasure as your fingers brush over the light fuzz covering his buttocks, then squeeze them appreciatively. Your son's ass flexes under your grip as he continues to pump in and out of the dog, almost making you forget about your true objective, yet the fleeting glimpses of the tight hole between his buns soon remind you. Gathering a gob of spit, you let it drip onto the fingers of one hand, spreading the wetness around a little before moving your hand down to Malik's crack. 'Huh?' comes an inquisitive grunt from the young orc as you touch his back door, rubbing over it and starting to worm a fingertip into the tight ring of muscle.";
			WaitLineBreak;
			say "     Not having all that much time before Malik starts to grope backwards blindly to push you off, there sadly isn't all that much time to start him gently on anal play. But then, orcs are tough, so just a few heartbeats later, you press in hard and sink your digits into the green-skinned male's asshole. Virgin-tight as he may be, there still is a nice give to his back passage and it seems to be more slippery than just your little spit would account for, showing that in the end, orc warriors aren't that far removed from their smaller breeding partners. Sliding deeper, you easily find the knot of muscle that is his prostate and rub against it, drawing a lewd groan from the orc. The movements of Malik's groping hand become less focused on pushing you away, and even as he finally bumps against your shoulder, all that results is him grabbing it and squeezing it a little. Apparently, your boy likes someone playing with his ass after all.";
		else: [already had some fun with his ass]
			say "     Letting your hands move over his broad back and muscled sides, you work your way down and then give the orc's ass a light slap, making him give an amused snort and look over his shoulder. Malik grunts in pleasure as your fingers brush over the light fuzz covering his buttocks, then squeeze them appreciatively. Your son's ass flexes under your grip as he continues to pump in and out of the dog, almost making you forget about your true objective, yet the fleeting glimpses of the tight hole between his buns soon remind you. Gathering a gob of spit, you let it drip onto the fingers of one hand, spreading the wetness around a little before moving your hand down to Malik's crack. 'Nnghh yeah!' comes an eager grunt from the young orc as you touch his back door, rubbing over it and starting to worm a fingertip into the tight ring of muscle.";
			WaitLineBreak;
			say "     Malik starts to grope backwards blindly as you work his hole, soon finding your shoulder to grab hold of. He gives you a squeeze as you sink your fingers into the olive-green ring of his asshole, making it flex around the questing digits. Tight as he may be, there still is a nice give to his back passage and it seems to be more slippery than just your little spit would account for, showing that in the end, orc warriors aren't that far removed from their smaller breeding partners. Sliding deeper, you easily find the knot of muscle that is his prostate and rub against it, drawing a lewd groan from the orc. Your boy definitively enjoys someone playing with his ass.";
		say "     'Fuuuckkk!' the orc shouts in pleasure, now consciously tightening his anal muscles as he revels in having your fingers up his butt. His movements of hammering into the dog take on an extra level of urgency as he slides in and out of your captive at the same time as grinding back against your digits, allowing them to go to various depths and stroking ever new sensitive spots inside of him. [if Loyalty of Malik > 5]'Feels... really... great,' [else]'That feels weird, but... keep doing it,' [end if]Malik grunts out, at which point you brush off his hand on your shoulder and lean forward. Spreading his green-skinned buns with both of your hands, you bury your face in his crack and start lapping, then snake your wriggling tongue into the relaxed opening of his asshole. The new sensation of having your wet, spongy appendage move over his pucker and then inside him drives Malik wild, panting like a bitch in heat as he brings his hand down on your head and presses you against him even firmer. With just a few more curls of your questing tongue, you drive the orc right over the edge.";
		WaitLineBreak;
		say "     Throb after throb of potent orc cum floods the male sheep's insides, which may or may not start the process of growing a womb for male pregnancy in him, but definitively delivers an overwhelming dose of aphrodisiacs. Making gurgling noises around your cock, his Adam's apple bouncing up and down as his body is wracked by spasms of pleasure, the dog orgasms right along with Malik, spraying his seed over the road beneath. Lifting yourself from being bent over to eat Malik out, you feel the overwhelming desire to join the two of them in orgasm and start to jerk off furiously, hand sliding up and down over your [Cock of player] shaft and squeezing it just right. As aroused as you already are, it takes little time to push yourself over the edge, sending thick and creamy spurts flying to paint Malik's ass in white splashes. The broad-shouldered orc twists his upper body to glance back at you, meeting your eyes and letting out an amused snort.";
		say "     'You know, dad... I always thought breeders were a bit weaker than true orcs, with them squealing so much when pounded hard. Never imagined that it might just be because it's just so fucking good! That thing you did with your tongue was just... something else!' He falls silent after saying this, just looking at you for a few seconds before he uses his hand to wipe your cum off his ass. Sliding his other arm under the freshly bred captive, he pulls him up against his chest and feeds the guy your load, making him lick it off his strong fingers and broad palm. Malik continues to grind against his captive a little while longer and allows him to lap at his hand, then eventually lets go of the dog and pulls his spent cock out of his stretched hole. The guy just sinks down to lie in the street, ass still raised high.";
		WaitLineBreak;
		say "     Standing up, Malik rolls the dog over onto his back with a fairly gentle nudge of his foot, then bends over the guy. 'If you want more of this, find me. And if you don't... I'll find you, and give you another dose! As I said, my orclings deserve a strong breeder as their other dad!' With that said, he turns away from the panting and moaning male and pulls his loincloth straight again, so it can (just barely) cover his half-hard cock. As soon as you yourself are ready too, Malik takes off at a run, getting back to his workout routine. Some time later, the two of you arrive back at the library, sweaty and somewhat exhausted from the long run. Chris greets you as you return to the place you started out from, then gets told about the run and hunt in excited tones by his sun, giving him a high-five as Malik lays it out in all the lewd details.";
		CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Malik";
	if Loyalty of Malik > -6 and Loyalty of Malik < 6: [relationship building phase]
		increase Loyalty of Malik by 1; [good clean family fun makes Malik happy]
	if Libido of Malik is 0:
		now Libido of Malik is 1; [fingered + licked him]

Malik ends here.
