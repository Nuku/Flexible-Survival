Version 1 of Jay by Wahn begins here.
[Version 1 - New NPC]


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Jay is a man. 
The description of Jay is "[JayDesc]".
The conversation of Jay is { "<This is nothing but a placeholder!>" }.
The scent of Jay is "     Jay smells nicely masculine, and there is also a little hint of... cinnamon and spices, maybe gingerbread too. That must be because he is a Christmas elf.".

to say JayDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Jay: [HP of Jay], HP: [HP of Jay] <- DEBUG[line break]";
	say "     Looking over to the slender male, it is immediately apparent that Jay is a Christmas elf, being all of four feet tall and dressed in a green and red outfit. He has long brown hair hanging down to below his shoulders, with sharply pointed ears sticking out of it to the sides. The elf has a well-toned physique despite his small stature, lithe and flexible enough to be a gymnast. He moves with feather-light steps, heels raised enough that he stands only on the balls of his feet and his toes. A handsome face bearing a confident expression completes the look of a capable and strong-willed person, no matter how tall or short he may be.";
	say "     As the elfin man feels your gaze come to rest upon him, he looks right back at you and smiles, then raises one hand for a friendly wave.";


[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - Talking
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Jay:
	if HP of Jay is 0: 
		say "     ERROR: Jay shouldn't be available to talk to yet. Please report to Wahn on the FS Discord/Forum and quote this tracking number for easier bug-fixing: [HP of Jay]";
	else:
		say "[JayTalkMenu]"

to say JayTalkMenu:
	LineBreak;
	say "     What do you want to talk about with Jay?";
	now Sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Him";
	now sortorder entry is 1;
	now description entry is "Ask Jay about himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Mark";
	now sortorder entry is 2;
	now description entry is "Talk to Jay about Mark";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
	while Sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if player consents:
				let nam be title entry;
				now Sextablerun is 1;
				if (nam is "Him"):
					say "[JayTalk1]";
				if (nam is "Mark"):
					say "[JayTalk2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now Sextablerun is 1;
				say "     You step back from the diminutive elf, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JayTalk1: [talk about him]
	say "     As you ask Jay about himself, the slender elf takes a deep breath, then draws himself up to his full height of four feet and gives you a cautious look. 'Fine. I will tell you, but only if you swear to me that you will not laugh.' Seeing his serious expression, you agree to the request and wait for him to continue. Frowning as if he had just bitten into a lemon, Jay lets out a sigh and explains, 'I'm a security consultant. A damn good one. What a joke, eh? Who'll come to the skinny dwarf with such a ridiculous outfit and listen to him? No chance anyone'd take me serious at all.' Frustration is clearly visible on his face as the fine-boned male tugs at his colorful garments. 'I'd have burned this stupid thing days ago if I had any alternatives. Oh god, how I wish for a proper suit - or anything normal really. But no, it's either this or kid's clothes, and I'd rather streak around naked than put on batman undies and such stuff. As stupid as the elf getup is, it at least fits me perfectly.'";
	say "     You continue talking to Jay for a little while longer, learning what made him so successful at his job: a winning personality and the will to just go for what he wants, with little restraint to hold him back. Time will tell if he will be able to reclaim his status once all of you hopefully will get out of the city alright. Something tells you he'll likely make it, your mind putting together a mental image of the elf in a black power suit, bearing down on pale-faced businessmen as he stands [italic type]on top[roman type] of a conference table and dominates the conversation.";

to say JayTalk2: [talk about Mark]
	say "     'Mark and I have been partners for five years now. He's everything I ever wanted,' Jay says with a somewhat dreamy expression, his right hand moving to the little bump in his clothing just above his breastbone. You remember that this is where he carries his commitment ring, the broad gold band held on a leather strap since it is much too big for his small fingers now. 'Let me tell you how we met. It was at a really fancy downtown restaurant called 'Tati's', with European specialities. There I was with the senior partner of a new client company, a dreadful bore of a man that cost all my self-control to smile and nod to. And then our waiter, Mark, brings the starters. Black shirt, dark red apron from the waist down, and the cutest smile you can imagine. Our eyes met for a second then, and when he brought the main course, he winked at me.'";
	say "     A smile crosses Jay's face and he goes on to say, 'That was when I knew I had to have him. And I did. Intercepted his sexy little ass as he was coming out of the kitchen in the back and pulled him into the restrooms. A minute later he was on his knees in the handicap stall and blowing me.' Grabbing his crotch and wiggling his eyebrows, the elf adds, 'Then came dates, more racy moments in public, and eventually I asked him to move in with me and be mine. And now, with all of the changes this strange outbreak has brought with it, I guess I'm his. It's almost like this body is made to be a bottom, I can't get enough of it. Don't really care, as long as we are together.'";

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Fucking
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Jay:
	if (lastfuck of Jay - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     <Reason why Jay doesn't feel like having sex right now. Exhaustion, duty, or otherwise>";
	else: [ready for sex]
		say "     As you walk up to Jay, <positive reaction at being approached for sex>";
		wait for any key;
		say "[JaySexMenu]";

to say JaySexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Jay suck you off";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Jay off";
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the horseman's equine shaft";
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
				if (nam is "Get a blowjob"):
					say "[JaySex1]";
				if (nam is "Suck Jay off"):
					say "[JaySex2]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the slender elf, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say JaySex1: [oral on the player]
	say "     A";

to say JaySex2: [oral on Jay]
	say "     A";

Jay ends here.

[ Collected Comments and ideas ]

[ Song: Between the boyish figure and brazen desires of the bottoming elf, there's ample room for some content involving the player sharing the horny male with his far larger lover, spitroasting him on all fours while giving sawing, asynchornous thrusts back and forth into his well-stretched jaw and jealously gripping asshole. Letting out all those pesky inhibitions with every firm thrust as he moans and drools around throbbing dick, all too happy to wrap his arms around the waist of the one screwing his pretty face while his seizing rear massages the pole splitting it wide open. ]

[ Once everything is said and done, the two could even give an extended show of Mark pulling his still-trembling partner against his broad, snowy muzzle, tongue extending to draw several slow, firm licks through the valley of his buns before its tip presses sinuously against that circle-pet star, gliding into that cum-soaked passage with unwavering resolve. Knowing his lover inside and out, Mark's able to draw a cornucopia of pleasured sounds from his submissive mate, from gurgling moans to breathy cries as his tongue sweeps across every sensitive nerve of his clenching anal lining, only to dip below to grind roughly against his prostate, forcibly milking long strands of thick, stringy pre from the flaring tip of Jay's dick. ]

[ Oh, what a show that would be. Something the player could paw off to in their post-sex haze, riling themselves up on the myriad sounds and expressions the horny elf makes as he's orally ravaged into blissful oblivion. ]