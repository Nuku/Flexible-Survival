Version 1 of Urik by Wahn begins here.
[Version 1 - New NPC]

Section 1 - NPC

[ Urik, the npc                                                         ]
[                                                                       ]
[ libido states of Urik - Location                                      ]
[   0: in the orc lair                                                  ]
[   1: in the library                                                   ]

Urik is a man.
The description of Urik is "[UrikDesc]";

to say UrikDesc:
	say "     Urik looks the part of a proud orc warrior, tall and strong, with a brutishly handsome face, its square jaw showing two sharp tusks jutting upwards. The only shred of cloth on his impressive physique is a rather flimsy loincloth, its thin fabric leaving little to the imagination... proving that the saying about big hands and feet is quite accurate for some. Only his hair does deviate a little from the typical image of an orc, by being longer than the usual short crop - its shiny length gathered into a ponytail that hangs down his back.";
	say "     In his behaviour though, the orc couldn't be more out of character with the norm. After publicly mistreating one of the human-sized breeder orcs he owned, Boghrim forced him into becoming a breeder slut himself, making him hunger for hard dicks and a tasty load of cum in his belly...";
	
The conversation of Urik is { "<Placeholder>" }.

The scent of Urik is "     Urik has a quite masculine smell, underlined with a little bit of sweat and cum that somehow just makes him more attractive.".

Instead of fucking Urik:
	say "     <Wahn: This NPC is still a work in progress. Please have some patience.>";	
[
	if(lastfuck of Urik - turns < 5):
		say "     Urik says, 'I need a break for a moment master. Please...'";
	otherwise:
		if Urik is in Main Hall:
			say "     You walk up to Urik and tell him you want to 'talk' to him - alone. [if thirst of Urik < 2]He salutes and leads you to a nearby tent. Soon you're standing between several bunk beds, alone in the tent with the handsome soldier..[otherwise]He gives you a knowing wink and leads you to a nearby tent. Soon you're standing between several bunk beds, alone in the tent with the handsome soldier...[end if]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		choose a blank row in table of fucking options;
		now title entry is "Suck Urik's cock";
		now sortorder entry is 1;
		now description entry is "Give him a blow-job.";
		[]
		if (lust of Urik > 0 and cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Have him suck your cock";
			now sortorder entry is 2;
			now description entry is "Get a blow-job.";
		[]
		if (cunts of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Urik fuck your pussy";
			now sortorder entry is 3;
			now description entry is "Let the orc warrior breed you.";
		[]
		if (lust of Urik > 0):
			choose a blank row in table of fucking options;
			now title entry is "Let Urik fuck your ass";
			now sortorder entry is 4;
			now description entry is "Let the orc warrior fill your ass with his seed.";
		[]
		if (cocks of player > 0):
			choose a blank row in table of fucking options;
			now title entry is "Take Urik's ass";
			now sortorder entry is 5;
			now description entry is "Fill the orc slave's ass with your cock.";
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
				say "[bold type][title entry]: [description entry]?[roman type][line break]";
				if player consents:
					let nam be title entry;
					clear the screen and hyperlink list;
					now sextablerun is 1;
					if nam is "Suck Urik's cock":
						say "[UrikSex1]";
					otherwise if (nam is "Have him suck your cock"):
						say "[UrikSex2]";
					otherwise if (nam is "Let Urik fuck your pussy"):
						say "[UrikSex3]";
					otherwise if (nam is "Let Urik fuck your ass"):
						say "[UrikSex4]";
					otherwise if (nam is "Take Urik's ass"):
						say "[UrikSex5]";
					wait for any key;
					now lastfuck of Urik is turns;
			otherwise if calcnumber is 100:
				say "[bold type]Break off?[roman type][line break]";
				if the player consents:
					now sextablerun is 1;
					say "     You step back from the large orc, shaking your head slightly as he gives a questioning look.";
					wait for any key;
				otherwise:
					say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
			otherwise:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
]

instead of conversing Urik:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat";
	now sortorder entry is 1;
	now description entry is "Chat a bit with Urik";
	[]
	if hp of Urik is 0:
		choose a blank row in table of fucking options;
		now title entry is "Send him to the library";
		now sortorder entry is 2;
		now description entry is "Send Urik to stay with you in the Grey Abbey Library";
	[]
	if hp of Urik is 1:
		choose a blank row in table of fucking options;
		now title entry is "Send him to the orc lair";
		now sortorder entry is 3;
		now description entry is "Send Urik to stay with the orcs in their lair";
	[]
	if UrikEricInteraction > 0:
		choose a blank row in table of fucking options;
		now title entry is "Talk about Eric";
		now sortorder entry is 4;
		now description entry is "Chat with your orc slave about Eric";
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Just chat":
					say "[UrikTalk1]";
				if nam is "Send him to the library":
					say "[UrikTalk2]";
				if nam is "Send him to the orc lair":
					say "[UrikTalk3]";
				if nam is "Talk about Eric":
					say "[UrikTalk4]";					
				wait for any key;
				now lastfuck of Urik is turns;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the orc warrior, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say UrikTalk1: [chatting]
	say "     Urik says, '[one of]I still can't believe Boghrim did this to me. And all over that stupid little breeder...'[or]I'd never have believed how good it feels to be fucked before.'[at random]"; [more to be added]

to say UrikTalk2: [send him to the library]
	say "     Urik listens to your instructions with a quiet intensity that makes it clear he commits the directions to the library to his memory. When you finish and ask if he understood, he hesitates for a second, then forces himself to say, 'Yes, master.' You can see that he is still a bit uncomfortable at accepting his new reality of being your breeder. Well, he'd better learn to live with it, as having your own orc warrior is something you won't easily let go of. With a playful slap at his muscled buttocks, you send him off into the city.";
	move Urik to Grey Abbey 2F;
	now hp of Urik is 1;

to say UrikTalk3: [send him to the orc lair]
	say "     Urik listens to your instructions quietly, looking a little embarrassed as you say he should go back to the orc lair. When you finish and ask if he understood, he hesitates for a second, then forces himself to say, 'Yes, master.' You can see that he is still a bit uncomfortable at accepting his new reality of being your breeder. Well, he'd better learn to live with it, as having your own orc warrior is something you won't easily let go of. With a playful slap at his muscled buttocks, you send him off into the city.";
	move Urik to Main Hall;
	now hp of Urik is 0;
	
to say UrikTalk4: [talk about Eric]
	if UrikEricInteraction is 1: [Urik grabbed Eric, player stepped in and allowed Eric to watch the orc finger himself]
		say "     Urik grumbles a little and says, 'Don't worry - I haven't touched a hair on your little redhead. You're the boss and he's a dick-less freak anyways.'";	
	otherwise	if UrikEricInteraction is 2: [Urik grabbed Eric, player stepped in and allowed Eric to get oral pleasure from the orc]
		say "     Urik grumbles a little and says, 'Don't worry - I haven't touched a hair on your little redhead. You're the boss.' There are a few moments of silence, then the large orc adds in a casual tone, 'Even though it's a downright shame to not train the lil pussy properly. He's got the temperament of a breeder slut - that's for sure. Should have seen the look in his eyes when he tasted my cum.'";
	otherwise	if UrikEricInteraction is 3: [Urik went down on Eric's pussy, then fed him his orc cum in a sloppy kiss]
		say "     Urik gives a little amused snort as you bring up Eric, then waves his hand in the air casually. 'I do admit - the kid's kinda cute to have hanging around. But really, he's too frigging shy! Hell, you've declared that he can order me around and what does he do? Nothing, that's what! A day-old orcling has more balls than him - and chest hair, and a fucking dick. Any orc teen would be out roaming the neighbourhood for something to fuck!' The muscled orc rubs his crotch through the loincloth and a smile spreads over his face, 'Not that the lil redhead didn't want some action though... after a bit of encouragement.' As you raise your eyebrow at his comment, Urik is fast to add, 'Hey boss. Don't you look at me that way... I didn't do nothing until he asked for it. He even said please, hmpf. Needs some lessons to realize he has to just take what he wants, that kid.'";
	otherwise	if UrikEricInteraction is 4: [Eric + Urik had 69 action]
		say "     Urik gives a little amused snort as you bring up Eric, then waves his hand in the air casually. 'Well, at least he's learning - came right up to me the last time and said he wants some fun.' The orc sticks out his tongue and wiggles it up and down, then grins. 'I'm just doing what he wants me to, alright boss? Following your orders and being all nice and accommodating.' A twitch of the thick shaft hidden under the orc warrior's loincloth tells you that he's clearly enjoying the time he spends with Eric.";
	otherwise	if UrikEricInteraction is 5: [Eric thanked Urik for being nice (and all the oral sex) with a BJ]
		say "     'You know what,' the orc warrior says and rubs his chin-beard with a thoughtful gesture before adding, 'I don't know how, but Eric's actually grown on me. Doesn't mean that he isn't likely a lost cause with that shyness - hell, I try to teach him to be more forward, take what he wants and all ...and he blows me like a cum-hungry breeder as his thanks. Just hopeless... but I like him. Too cute by half, that little redhead.'";
	otherwise	if UrikEricInteraction is 6: [Urik pounded Eric's pussy and bred him]
		say "     'Eric's my lil buddy,' the orc warrior says, then shows you a beaming grin as he adds, '...and he's a fucking hot lay too! Never thought pussy could be as good as a sweet ass, but... man the kid feels nice. Tight as hell and with that thingy inside - you know, like a pucker to push through when you're already balls-deep in him. Fucked his womb so hard and pumped it full of cum!' Urik gives a low grunt and slides one hand under his loincloth to stroke himself, getting hard from just thinking about the sex he had with Eric.";
		say "     After being lost in his thoughts for a few seconds, Urik focuses back on you a moment later, then says, 'Oh, and there's another funny thing... I kinda end up hanging out with Eric quite often, even without having sex. Weird, eh? It's really fun, even if he just wants to read books together or... do some other shit together.'";
		
Section 3 - Endings

Urik ends here.
