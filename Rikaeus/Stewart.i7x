Version 1 of Stewart by Rikaeus begins here.
[Version 1 - New NPC and new Area]

[ StewartRelationship                                                   ]
[   0: Have not encountered Stewart                                     ]
[   1: Have met Stewart in the clouds or library                        ]
[   2: Have met Stewart and successfully studied with him               ]

[ CloudKnowledge                                                        ]
[   0: Have not learned of the clouds                                   ]
[   1: Have learned of the clouds from event                            ]
[   2: Have talked with Good Elijah about the clouds                    ]

Section 1 - Declaring Room, Variables, Gamerules, and the harpy boy

StewartRelationship is a number that varies.
CloudKnowledge is a number that varies.
StewartLocationCounter is a number that varies.

[Room Declaration]
The Clouds is a room. It is private.
The description of The Clouds is "[CloudDesc]"

to say CloudDesc:
	say "     Taking a good look around, you notice that all you can really see is clouds for miles. However, it isn't completely empty. No, rather you see groups of flight-capable people hanging out up where you are. Most of them appear to be college students, which is to be expected as this area [italic type]is[roman type] above the belltower. Just like below, you also catch the occasional group having sex out in the open, something that draws your attention before you quickly look away.";

instead of going Northwest from College Walkway Northwest while CloudKnowledge is 0:
	say "     When you walk forward and reach the belltower you notice a couple winged people taking flight from the ground. Upon closer examination you see that they appear to be flying up to the clouds. You realize that there must be something up there and wonder what you need to do to reach that location. Suddenly though a grphon approaches you with a smile. 'Hey there, you look confused,' he says in a joyful tone. You give an assent to that statement and ask how to get up there. 'Well, you could just grow wings or perhaps you could find someone with them that could take you up there. I can't cause I'm in a hurry,' he says, apologizing before leaving. When he does you're left with your own thoughts on getting to the clouds.";
	change up exit of College Belltower to The Clouds;
	now CloudKnowledge is 1;

instead of going Up from College Belltower:
	if bodyname of player is listed in infections of flightlist:
		say "     With a hard push you use your ability to fly to launch yourself into the air. When you do remove yourself from the ground your beginning flight is rather unsteady. You have to quickly correct your path so that you don't crash into the belltower itself. Once you're out of the turbulence of the tower you easily glide up to the fluffy white clouds. You reach them in no time, landing yourself on the vast expanse of surprisingly solid water vapor.";
		move player to The Clouds;
	else:
		say "     You get a confused look on your face when you try to go up. What would make you think you could fly without wings or some infection that can do so without. So instead you shrug and remain where you are, unable to get to the clouds.";

instead of going Down from The Clouds:
	if bodyname of player is listed in infections of flightlist:
		say "     With a burst of speed you run before flipping yourself off the clouds. Your ability to fly kicks in right away allowing you to hover in place. Once you've gathered your bearings you begin a dive to the ground. It's not long before you gracefully land in front of the College Belltower, leaving you to continue on your journey.";
		move player to College Belltower;
	else:
		say "     You direct yourself over to the edge of the clouds, taking a peek downward to confirm that there is a pool below you, as you do not wish to be a pancake on the ground. Thankfully there is a pool below you so you mentally prepare yourself. As you do this you suddenly hear cheering behind you, specifically people asking you to do a cannonball. With a shrug of your shoulders you decide to oblige them. Taking a couple steps back you start off into a run before launching yourself off the edge. Once airborne you are spinning in the air, wondering why the fuck you jumped off a cluster of clouds hundreds of feet in the air. Thankfully you do not go splat on the pavement, instead landing in the pool, causing an eruption of water to spray all the students at the pool. With an ecstatic smile, you clamber on out of the liquid and go on your way, ignoring the naiads yelling at you for wasting their water.";
		move player to Athletic Street;

Stewart's Room is a room. It is private.
The description of Stewart's Room is "[StewartRoomDesc]"

to say StewartRoomDesc:
	say "     The first thing you notice about the harpy-boy's room are the bookshelves that line the walls to the brim. If you hadn't already studied with the guy, you'd think he was a book nut. Instead you know that he's just enthusiastic about his grades. Thankfully, at least for your horny mind, Stewart's bed isn't covered in literary tomes of knowledge. Otherwise that'd make it really difficult to have sex."

instead of going south from Tenvale College Male Dorms while Stewart is not in Stewart's Room:
	say "     Upon touching the door handle you notice it's locked, realizing that Stewart must not be in his room at the moment. You decide to try again later, hoping that he's going to be there.";

an everyturn rule:
	if StewartLocationCounter >= 1 and StewartLocationCounter <= 3:
		move Stewart to The Clouds;
	else if StewartLocationCounter >= 4 and StewartLocationCounter <= 6:
		move Stewart to Tenvale College Library;
	else if StewartLocationCounter >= 7 and StewartLocationCounter <= 8:
		move Stewart to Stewart's Room;
	increase StewartLocationCounter by 1;
	if StewartLocationCounter is 9:
		now StewartLocationCounter is 1;

Stewart is a man.
The description of Stewart is "[StewartDesc]".
The conversation of Stewart is { "<this is nothing but a placeholder!>" }.
The scent of Stewart is "The harpy-boy smells of that new book scent as well as an undertone of green apples.".

to say StewartDesc:
	if Stewart is in The Clouds:
		say "The first thing you see about the harpy boy is that his arms are transformed into his wings. His feathers are of a pure white shade, but the backside of his wings are covered in fur, rather than avian coverings. The fur is of an orange and brown striped pattern that stands out rather boldly. His feet are clawed just like a winged creature's should be. From his backside you can see feathers that spread out into a tail. Clothing-wise he is wearing a white t-shirt with an american flag on it and cargo shorts. The male is currently lounging on the white fluffy clouds, enjoying the sun. When he notices you looking at him Stewart smiles at you and waves his left arm.";
	else if Stewart is in Tenvale College Library:
		say "You notice Stewart is currently sitting at one of the many tables in the library. He is gazing over multiple different books of many kinds of subjects and appears to be taking a large swig of coffee from a cup on the table every few minutes. From the muttering under his breath you can tell that he's trying to study. Appearance-wise, the guy's arms are currently in their human form, rather than winged arms he has human ones, that match his olive-skinned tone. He's wearing a button up shirt as well as a pair of dress pants. When he notices you looking at him, he gives you a weary smile and waves.";
	else if Stewart is in Stewart's Room:
		say "The harpy boy is laying spread out on his bed, reading what looks to be fantasy novel. You guess that college students do need breaks from studying sometimes too. His arms aren't transformed, which makes sense as otherwise he'd be unable to hold the book. At the moment he is only wearing a pair of cargo shorts, revealing his human-like chest and his perky nipples. It doesn't take him long to realize you're staring at him, which prompts him to smile at you before returning his attention to his book.";

Section 2 - Talking with Stewart

instead of conversing the Stewart:
	if Stewart is in The Clouds and StewartRelationship < 1:
		say "     When you approach what looks to be a male harpy, he turns his head towards you from his position on the ground and smiles. 'Hey there! You look new around here,' the guy says rather cheerfully. You admit that this is your first time actually visiting this place and are rather intrigued as to how everyone is standing on clouds. 'Oh, that. Well from what I know, apparently there's supposed to be a magical place around here that basically solidifies the clouds.' He chuckles. You tilt your head at that answer, not understanding exactly what he means. 'I can sympathize with your confusion, I only know of that information by secondhand. Anyways I'm Stewart, if you ever want to talk with me I'm usually here in the morning but move to the library mid day,' the guy informs you before saying that he hopes to see you again.";
		now StewartRelationship is 1;
		now Hanging out on the Green is not resolved;
	else if Stewart is in Tenvale College Library and StewartRelationship < 1:
		say "     The person you approach appears to be studying rather furiously, if the large amount of books surrounding him says something. He notices you rather quickly which prompts a question for him. 'Hey, you wouldn't happen to know how to derive a multi-variable function?' he asks rather wearily. Before you can answer, he lets out a sigh followed a verbal apology. 'I'm so sorry, it's just that I have like five different exams coming up within the next week and it's driving me crazy. If you can't tell, currently I'm trying to study for calculus.' The male groans. A thought passes by in your head that perhaps you could help him study to ease the already huge mental burden the guy has.";
		say "     You can tell how stressed he is by two things. One, the bags under his eyes which inform you that he's sleep deprived. Lastly, the five or so coffee cups that have been drained of their caffeine filled contents. 'Anyways, I'm Stewart, a guy harpy if you can't tell by my legs. Before you ask, I can freely transform my arms back and forth,' he explains, showing you by setting down his book before doing so and then changing back. Quickly after he says this though, the male apologizes once more and tells you he needs to get back to studying.";
		now StewartRelationship is 1;
		now Hanging out on the Green is not resolved;
	else if Stewart is in The Clouds:
		say "     Stewart smiles when he sees you approach before kindly asking you what you need.";
		wait for any key;
		say "[StewartTalkMenu]";
	else if Stewart is in Tenvale College Library:
		say "     The harpy boy looks up at you with a weary look on his face as well as a hopeful one, possibly wondering if you'd help him study.";
		wait for any key;
		say "[StewartTalkMenu]";
	else if Stewart is in Stewart's Room:
		say "     Your harpy boy friend sets his book down before turning his head towards you, smiling, and then asking if you need anything.";
		wait for any key;
		say "[StewartTalkMenu]";

to say StewartTalkMenu:
	LineBreak;
	say "What do you wish to talk about with Stewart?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "College";
	now sortorder entry is 1;
	now description entry is "Ask him why he's still going to college";
	[]
	if StewartRelationship < 2:
		choose a blank row in table of fucking options;
		now title entry is "Studying";
		now sortorder entry is 2;
		now description entry is "Ask him if he'd like help studying";
	[]
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
				if (nam is "College"):
					say "[StewartCollege]";
				if (nam is "Studying"):
					say "[StewartStudying]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You shake your head, which prompts a confused look from him but he shrugs and returns to what he was doing.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say StewartCollege:
	say "     'Er, well my motivation isn't different from most other people on campus at the moment,' Stewart says in an awkward tone. You tilt your head at him before asking him what he means. 'Well, most, if not all of us, are staying here because either we or our parents paid way too much money to drop everything just because of an apocalypse,' he explains. Vaguely, you understand what he's talking about. If you had paid five thousand dollars out of pocket to get an education then nothing would stop you from getting your money's worth. Not really sure about what to say next, you step back and let the harpy boy get back to whatever he was doing.";

to say StewartStudying:
	if Stewart is in The Clouds or Stewart is in Stewart's Room:
		say "     As soon as you say the word study, Stewart turns a glare on you that should be intimidating but isn't. Rather it just makes him look utterly adorable. Apparently, the harpy boy appears to notice your smile and huffs before looking away. 'I'm not studying until I have to go to the library. This is one of two times in the day I can destress thank you very much.' He grumbles at you. Shrugging your shoulders, you decide it's better to ask him again when he's ready.";
	else:
		say "     The weary looking harpy boy's eyes light up in hope when you mention that you wish to help him study. 'Oh will you please! This stuff is extremely confusing.' Stewart begs. Looking over all of the books that he has on the table you see that there are five topics. Chemistry, Calculus, Anatomy of Animals and Humans, Forensic Science, and oddly enough Italian are the subjects that he is studying. They all look like high level stuff that would confuse most people. With that in mind though, you mentally wonder just how exactly you are going to study with the harpy boy and if you really do wish to help him.";
		say "     [bold type]Do you want to help Stewart study, knowing that the anatomy book could possibly end up being lewd?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, why not?";
		say "     ([link]N[as]n[end link]) - No, you don't want to possibly see penises on a book.";
		if player consents:
			let bonus be (( intelligence of player minus 10 ) divided by 2);
			let diceroll be a random number from 1 to 20;
			say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]18[roman type] (Intelligence Check):[line break]";
			if diceroll + bonus >= 18:
				say "     You notice that you recognize and understand a lot, if not all of those topics. Instead of grabbing any of the books or Stewart's notes, you ask him what he's having trouble with. That prompts a confused look on his face, but he answers nonetheless. 'Uh, well I'm having trouble with Calculus the most. Derivatives just aren't my forte.' He sighs. You nod before writing out a problem for him to do and handing it to him, telling him to solve it. While not really understanding, Stewart still does the problem and hands it to you. Quite quickly you notice his mistakes and point them out before kindly explaining what went wrong. It takes a couple of these problems before he finally gets it. When he does he laughs out loud and hugs you, thanking you greatly.";
				say "     With a smirk you tell him that you aren't done just yet before moving onto the next subject, Chemistry. This entire process continues for each and every subject with you successfully guiding the boy through each of his issues. For Chem it was the atomic numbers, for Forensic Science it turned out to be bullet wounds, and for Italian it was conjugation. However, upon reaching anatomy it became heated. While describing the different looks and anatomy of various infection's dicks you notice that Stewart is slowly forming a bulge in his pants, clearly becoming horny from the descriptions of cocks. With a huge smirk on your face, you climb under the table, very thankful that it is up against the wall.";
				WaitLineBreak;
				say "     'W-what are you doing?' He stutters out. You quickly hush him and unbutton his dress pants. To your shock, he appears to go commando as you are quickly hit in the face with his above average dick, which leaves a trail of precum on your cheek. When you look up you see that Stewart is trying to not moan just from the cool air hitting his cock. You decide to give the harpy boy a hand, or in this case a mouth, as you swallow the tip of his manhood. This forces him to let out a strangled moan, which thankfully for him isn't too loud. Swirling your tongue around the head of his dick you moan as well, savoring the taste of your study partner's fluids. Briefly you pull off and lick a trail from his heavy balls to the tip before taking his prick back into your mouth.";
				say "     This time around you decide to deepthroat his manhood, taking him all the way to the root. You hear Steward moan, but it sounds to be muffled. Looking up with his schlong still in your throat, you realize why. The harpy boy has currently stuffed his mouth with his fist and is biting down on it. Shortly after you look at him though, his breath hitches, possibly from seeing you stare at him while he's balls deep in your gullet. You try to convey your wishes for him to fuck your face. It takes a while but you manage to belay your desires to him as he gains a blissful look and removes his fist from his mouth before taking both of his hands and placing them on your head.";
				WaitLineBreak;
				say "     Quite soon after that he grips your head tightly and begins to thrust furiously into your throat. When the sounds of balls slapping against your chin and a dick going in and out of your mouth fill the room you wonder why nobody has noticed you two. But you quickly realize that they probably have but just don't care. So, instead you relish the feeling of the delicious cock entering and leaving your gullet rapidly, moaning whenever you taste his precum. [if cocks of player > 0 or cunts of player > 0]You begin to masturbate yourself rather determinedly, trying to reach your own orgasm, the gesture making you start to pant as well. [end if]However, soon Stewart's thrusts become much more frantic, which makes you realize that your sex partner is slowly reaching his peak, something that doesn't take too long to actually happen.";
				say "     With a loud grunt, the harpy boy thrusts one last time before he starts spilling his copious load into your stomach. However, he has just enough cognitive functions to pull back and let the cum pool in your mouth. [if cocks of player > 0 or cunts of player > 0]Just as your partner finishes, you reach your own orgasm, grunting out loud as you ride it out. [end if]While the two of you would probably love to enjoy your post-coital bliss, you are in a public place so you promptly clean up and slide back into the chair next to him. 'Ah-uh that was nice....' he trails off, blushing rather hard. 'Um, if you want to help me later or something, you can see me in my room, I'm only there late at night though,' Stewart says. You ask him which dorm room his is. 'Oh! My room is immediately south as soon as you enter the building,' he tells you before he quickly gets back to work, you standing up.";
				now StewartRelationship is 2;
				change south exit of Tenvale College Male Dorms to Stewart's Room;
				change north exit of Stewart's Room to Tenvale College Male Dorms;
			else:
				say "     Realizing that you don't have much knowlecge on any of those subjects, you decide to ask Stewart for his notes. With a confused look on his face, he hands them over. The harpy boy quickly realizes what you're doing when you start spouting off different questions to him. With a determined look on his face, he begins to answer them with fervor. You do this for each and every subject, though it does get a little hilarious when you reach the anatomy book which seems to be updated with penises from different infections and you notice the cum stains. Stewart blushes and quickly says that you've helped him enough before grabbing the book from your hands. Seeing that you won't get any further with him, you get up from the chair and stand.";
		else:
			LineBreak;
			say "     You apologize before quickly leaving the harpy boy though you are unable to ignore the disappointed look on his face.";

instead of fucking Stewart:
	if Stewart is in The Clouds or Stewart is in Tenvale College Library:
		say "     Stewart starts blushing beet red before shaking his head vigoriously. 'No! Not here where everyone can see,' he stutters out.";
	else if (lastfuck of Stewart - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     Stewart apologizes to you rather profusely. 'While I did like last time, I do need time to rest,' he says, waving you off.";
	else if Stewart is in Stewart's Room:
		say "     He blushes but gives you an eager look, as if expecting you to suggest something.";
		say "[StewartSexMenu]";

to say StewartSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Eat his ass";
	now sortorder entry is 1;
	now description entry is "Rim the cute harpy boy";
	[]
	if cocks of player > 0: [one males and herms can do 69]
		choose a blank row in table of fucking options;
		now title entry is "69 with Stewart";
		now sortorder entry is 2;
		now description entry is "Have mutual oral sex with the harpy boy";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Stewart's shaft in your ass";
	now sortorder entry is 3;
	now description entry is "Take Stewart's cock for a ride";
	[]
	Sort the table of fucking options in sortorder order;
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
				if (nam is "Eat his ass"):
					say "[StewartSex1]";
				if (nam is "69 with Stewart"):
					say "[StewartSex2]";
				if (nam is "Take Stewart's shaft in your ass"):
					say "[StewartSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step away from Stewart who sends you a frustrated look. You're not sure if it's because you interrupted his reading or because you didn't commit.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say StewartSex1:
	say "     You hum before saying out loud that you'd love a taste of his ass. Stewart's cheeks light up with a dusting of red from blushing as he stutters out a response. 'A-a-uh. I've never had someone rim me...' he mutters. You chuckle and tell him that there's a first time for everything. Though, you do say that there will be foreplay, as not everyone can cum from their ass being eaten out. 'Oh, alright... what do I do?' he asks. You tell him just to lay there and you'll take care of everything, promptly straddling his lap after you finish speaking. Just from doing that, the harpy boy's breath hitches and you can feel his cock begin to harden against your ass.";
	say "     Poor Stewart, as his dick isn't the focus this time, bringing your lips to his and starting a soft make-out session. From the moan that the male lets out you can tell that he's not entirely experienced with sex, though he's definitely not a virgin. Quite quickly you move the kiss from being chaste to rough, pushing your mouth harshly against the harpy boy's. By now you can feel Stewart's manhood at full mast, straining in his pants and up against your own tush. To mess with the well endowed male, you grind your ass up against his manhood. That prompts him to groan out loud, adding the sounds that he's already making. Deciding that you've already spent enough time on his lips, you start to move down his body.";
	WaitLineBreak;
	say "     Your first destination is his chest. You position your mouth over one of the male's perky nipples, your breath on it making him shudder. Tentatively, you trace your tongue around it before pulling at the nipple with your teeth. 'Fuck!' Stewart gasps cursing for the first time during the foreplay. Taking that as proof that he is enjoying this, you continue to toy with his chest, switching it up between pulling and licking. When you've decided that you've done enough, you move down further. The harpy boy lets out a grunt of disappointment when you completely ignore his rock hard dick. Instead you ease his shorts off of him, his cock springing out and standing tall. You take a moment to admire your partner's dick as well as the amount of precum leaking from it before you move your mouth to your next location.";
	say "     You bury your face into his balls, inhaling the sweet scent of sweat and male sex that makes you moan out loud, the smell driving you crazy. Licking the sack with your tongue, you let your hand wander to his hard dick before slowly gripping it and moving up and down, masturbating him. However, due to you being face first into his crotch, you can tell when he's getting close. Whenever he does, you stop and let him calm down, as you don't want him to cum just yet, only when your tongue is deep in his hole do you want it to happen. So, instead, Stewart is whining whenever you deny orgasm. Upon a brief look at his face you can see that its flushed red and he's panting heavily.";
	WaitLineBreak;
	say "     Figuring that you've teased the harpy boy enough, you move your face down to his pucker. It is down here that the male's manly musk is heavy, causing you to moan loudly before diving right in. The first thing you do is swirl your tongue around the entrance, relishing in the heavy taste of his hole. Even though you haven't even penetrated him, he's writhing about due to your ministrations. Deciding to take it a step forward, you push your tongue into his pucker, piercing it swiftly and making him shout in pleasure. You begin to fuck Stewart's hole on your fleshy organ moving it in and out at a rapid pace. The earlier actions you took during the foreplay appear to have made the harpy boy's orgasm not that hard to reach.";
	say "     You shortly feel the male's balls tighten against your face as he yelps and releases his load all over his chest. While this is happening, he continuously thrusts himself back and forth on your face, as if there was an actual cock in his ass. A few minutes later, Stewart comes to the end of his orgasmic bliss, his body now limp and spread out on his bed. 'God fucking damnit that was fucking amazing.' He swears, panting clear in his tone. You pull your face out of his ass and move up next to him. With a devious smirk you start to feed him his own cum, something that he gladly does. Once done the two of you cuddle on the bed until it's time for you to go.";
	now lastfuck of Stewart is turns;

to say StewartSex2:
	say "     Rather than say anything you climb on top of Stewart and position yourself in a 69 position. The male quickly realizes what you want as you begin to suck at the outline of his cock in his shorts. The harpy boy soon copies what you're doing, his mouth now against whatever clothing you're wearing down there. It appears that this is enough to turn on your friend as you are soon mouthing a fully hard clothed erection. However, you don't want him to cum in his trousers, so instead you pull back to unbutton his pants and then yank them off him. They land in a pile at the end of the bed, but your focus is on his cock. Though, you're not so focused that you don't feel Stewart yanking your clothes off.";
	say "     You catch the tip of his dick in your mouth and suck, making two things happen, one, your friend groaning, and two, a spurt of precum pooling in your mouth. You match the harpy boy's sounds when he swallows your prick into his own oral cavity. Once you get over the shivers of pleasure though, you start to slurp at the cock, the two of you happily sucking each other's manhoods. After a bit though you decide to focus your attention on your partner's balls, taking his prick out of your mouth and replacing it with Stewart's virile sack. You swirl your tongue around the orb in your mouth, savoring the sweaty taste that lingers from an obviously long day at college.";
	WaitLineBreak;
	say "     By this point in time you're humping your dick into Stewart's throat. Surprisingly the harpy boy takes the skull fucking with a fervor, allowing his mouth to be held firmly against your balls. You redirect your attention his own sack, nuzzling it happily, inhaling that musky scent of his. The manly smell makes you moan and groan, grinding your nose into the underside. Sadly though, you have to refocus on the male's cock as you don't want to cum before he does. So, you swallow the manhood whole, your face pressed against the guy's belly. The two of you are lost in bliss, getting closer and closer to each other's peaks. It's not much longer before you reach your orgasm.";
	say "     When you do, you thrust all the way into Stewart's gullet one last time, dumping your cum into his stomach. At the same time bursts of creamy sperm flood your mouth, something that you eagerly drink up, enjoying the delicious taste.  After both of you are spent, the harpy boy and you collapse onto the bed, side-by-side. The male repositions himself so he can cuddle up to your chest, inhaling your scent and sighing. The two of you lay like that for thirty minutes before you sit up, deciding you've spent enough time with the male. You thank him for the time, which he waves you off saying you were perfect before he returns his attention to his book.";
	now lastfuck of Stewart is turns;

to say StewartSex3:
	setmonster "Harpy";
	say "     You decide against speaking and instead straddle the harpy boy's lap, grinding your ass against his clothed crotch. 'That sounds like a brilliant idea.' He murmurs, trailing his hands on your body, slowly taking off your clothes. When he manages to get them off, he tosses them in a pile on the floor, leaving your bare ass against his slowly hardening erection that's hidden behind his shorts. Not wanting to get straight to it, Stewart pulls you into a rough kiss, quickly pushing his tongue into your mouth. Both of you groan into the liplock, slowly losing yourselves to it. All the whle this is happening, you are inhaling his musky male scent [if cunts of player > 0], something that makes your pussy wet[else if cocks of player > 0 and cunts of player < 1], something that makes your dick begin to throb[end if].";
	say "     A couple of minutes into the make-out session you feel the harpy boy begin to ease his own clothing off, quickly tossing his shorts on top of the pile your own clothes are in. Now his hard dick is hotdogging your cheeks, leaking precum onto your backside. Stewart looks you in the eyes before giving you a soft smile. 'Are you ready for this?' he asks you, clearly caring for your well being. With a moan you let out a tone of assent, very eager for your coupling to begin. That response makes the harpy boy's smile widen even further before he kisses you roughly once more. Following that he grabs a hold of your hips and positions your ass so that the tip of his cock is against your pucker.";
	WaitLineBreak;
	say "     Slowly Stewart inches his cock into your hole, the stretching makes you moan as you are filled with his manhood. It doesn't take long for the harpy boy to bottom out, his balls now resting against your cheeks. Eager to get started, you grind your ass against his crotch, enjoying the sounds of his moans. Having been encouraged, the male begins to thrust in and out of your hole, his balls slapping wetly against your ass. [if cocks of player > 0]Thankfully your partner manages to successfully find your sweet spot, making you leak even more precum from your cock. [end if]Both of you go at you rut for a while, both of you slowly edging towards your peaks. As the harpy boy approaches his orgasm his thrusts get wilder and wilder.";
	say "     When Stewart finally reaches it, he slams into you one last time loosing his load into your hole. You moan at the feeling of being filled with his sperm, enjoying it thoroughly. [if cunts of player > 0]The sensation sets you off, making you moan loudly in pleasure, causing you to spill your juices from your pussy. [else if cocks of player > 0]The sensation sets you off, making you roar in pleasure as you spray your cum all over the two of you. [end if]Both of you let out sighs of joy, slumping onto the bed. The harpy boy cuddles up to you, letting his dick slip out of your ass. The two of you remain like that for an hour or so before you figure you should get going. When you get up, he smiles at you and thanks you for the fun.[mimpregchance]";
	now lastfuck of Stewart is turns;

Stewart ends here.
