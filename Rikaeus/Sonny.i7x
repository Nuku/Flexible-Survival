Version 1 of Sonny by Rikaeus begins here.
[Version 1 - new npc]

[ SonnyRelationship (shy sheep, a bit exhibitionistic)     ]
[   0: not met                                             ]
[   1: met, above the belt shave                           ]
[   2: met, below the belt shave                           ]
[   3: met, below the belt shave + groping                 ]
[   4: met, below the belt shave + blowjob                 ]
[   5: has taken his virginity                             ]
[   6: has learned that he misses the taste of home        ]
[   7: has cooked him manicotti                            ]
[   8: has learned that he likes you                       ]
[   9: has taken Sonny out on a date                       ]
[ 100: met, refused to help                                ]

[ SonnyFood                                                ]
[   0: has learned of Sonny's homesickness                 ]
[   1: has talked to Sonny about what he misses            ]
[   2: has learned how to make manicotti from Francois     ]
[   3: has acquried the ingredients for manicotti          ]
[   4: has cooked manicotti for Sonny, quest end           ]

[ HP of Sonny                                              ]
[   0: NPC not placed                                      ]
[   1: NPC in the mall lockerroom                          ]
[   2: NPC in the bunker                                   ]

[ libido of Sonny                                          ]
[   0: anal virgin                                         ]
[   1: player fucked him                                   ]

[variables]
SonnyFood is a number that varies.

Section 1 - Basic Setup

Sonny is a man. The HP of Sonny is usually 0.
The description of Sonny is "[SonnyDesc]".
The conversation of Sonny is { "<This is nothing but a placeholder!>" }.
The scent of Sonny is "     Sonny smells like berries with an underhint of musk. You feel as if it's probably from the conditioner he uses for his wool.".

to say SonnyDesc:
	if debugactive is 1:
		say "DEBUG -> SonnyRelationship: [SonnyRelationship], HP: [HP of Sonny] <- DEBUG[line break]";
	if graphics is true:
		project the figure of Sonny_shaved_jeans_icon;
	say "     Sonny is a rather adorable looking sheep boy. He doesn't have the full looks of a ram, as clearly evidenced by the tiny little nub-horns on his forehead. What he does have is fluffy looking white wool, blue eyes, and what appears to be a disposition to being shirtless. Because of his lack of a shirt, you can see that Sonny does excercise, as he has well defined muscles, but not so much that he looks like a bodybuilder. His pants are a rather simple pair of denim jeans that are worn in some places and his shoes are a worn pair of sneakers. All in all, you pretty much think he looks like a twink, though he sure doesn't act like it.";
	if Sonny is in Half-Renovated Room:
		say "     In the room, Sonny seems to have set up a cozy little sleep pad in one of the corners. The area consists of a matress that the sheep boy has dragged up from the bunker, his shaving supplies, and oddly enough an open crate filled with all the shaven wool.[If Skarnoth is in Half-Renovated Room] He can be seen throwing nervous looks at the chained-up demon, which just results in Skarnoth returning lewd glances and suggestive hip-thrusts back.[end if]";
	else if Sonny is in Mall Lockerroom:
		say "     In the lockerroom it appears that Sonny has practically claimed the area in front of the mirror. His sleeping bag is currently sitting on the bench nearby, rolled up so it doesn't take up much space. To the right of the sleeping bag and under the bench, a number of items are scattered. They appear to be the sheep boy's shaving supplies, meticuously taken care of. Other than that, a plastic crate filled with tufts of his shorn-off wool strikes you as a bit of an odd sight.";

Section 2 - Talk

instead of conversing the Sonny:
	if SonnyRelationship < 4: [should be not yet available]
		say "     ERROR: Sonny shouldn't be where a player can see him yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [SonnyRelationship]";
	else:
		if graphics is true:
			project the figure of Sonny_face_icon;
		say "     As you walk up to Sonny, he smiles widely at you, clearly happy to see you. 'Hey there! Nice seeing you here,' the sheep says before warmly asking what you need.";
		wait for any key;
		say "[SonnyTalkMenu]";

to say SonnyTalkMenu:
	say "[line break]";
	say "What do you want to talk with Sonny about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Try to learn a bit about Sonny's background";
	[]
	choose a blank row in table of fucking options;
	now title entry is "The City";
	now sortorder entry is 2;
	now description entry is "Talk to him about what the city and your situation";
	[]
	if HP of Sonny is 1: [Sonny is in the mall lockerroom]
		choose a blank row in table of fucking options;
		now title entry is "Take him to the library";
		now sortorder entry is 3;
		now description entry is "Take Sonny to stay with you in the Grey Abbey Library";
	[]
	if HP of Sonny is 2: [Sonny is in the half renovated room of the library]
		choose a blank row in table of fucking options;
		now title entry is "Take him to the mall";
		now sortorder entry is 4;
		now description entry is "Take Sonny back to the mall";
	[]
	if SonnyRelationship is 6: [has learned that he misses the taste of home]
		choose a blank row in table of fucking options;
		now title entry is "Ask him about home";
		now sortorder entry is 5;
		now description entry is "Ask the sheep boy what exactly he misses about home";
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
				if (nam is "Himself"):
					say "[SonnyTalk1]";
				if (nam is "The City"):
					say "[SonnyTalk2]";
				if (nam is "Take him to the library"):
					say "[SonnyTalk3]";
				if (nam is "Send him to the mall"):
					say "[SonnyTalk4]";
				if (nam is "Ask him about home"):
					say "[SonnyTalk5]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro sheep, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say SonnyTalk1: [talk about him]
	say "     'Me?' he asks, rather confused. You nod your head, saying that you want to get to know the guy. Sonny starts stuttering and you're quite sure that if he could he'd be blushing. You find the entire situation rather adorable to be honest, but you save that bit to yourself lest you embarrass him even more. He calms down rather quickly and straightens himself up before speaking. 'Well, I grew up in New York to begin with, a nice little suburb community,' Sonny starts off. New York? Why did the sheep boy move here? 'Well, college, of course. I had gotten a full ride to the college here and then well,' he trails off. You understand what he means. The whole nanite event threw everything into hysteria. 'To be honest my life wasn't that interesting before the whole catastrophe,' the boy admits truthfully. You nod at that before backing off, feeling as if you've learned enough for now.";

to say SonnyTalk2: [talk about the city]
	say "     'It's pretty bad out there,' Sonny murmurs when you mention the city. You nod in agreement, as the place has gone pretty crazy since the nanite event. 'Though, the mall wasn't [italic type]that[roman type] bad, all things considered,' is what he says next. Really? You probably don't know the mall enough to argue with him, so instead you ask what he means. 'Well, sure, there'd be people getting assaulted and stuff, but Wolverine Security for the most part kept it all together. Out in the open there was no safety net.' Sonny says. You nod and move away seeing that he had nothing more to say.";

to say SonnyTalk3: [send him to the library]
	say "     'Move in with you?' the sheep-morph asks rather confused. You nod your head, telling him that it'd far easier if he lived within the same place that you did. 'But wouldn't I be taking up too much space?' Sonny asks shyly. This time a shake of the head is given, telling the sheep boy that the library has more than enough room for him and a few dozen others. Instantly after that is said, he perks up and nods eagerly. 'That'd be great then! I accept!' he shouts in joy. You chuckle at his enthusiasm as you wait for him to finish packing up to lead the guy to the library.";
	move Sonny to Half-Renovated Room;
	move player to Half-Renovated Room;
	now HP of Sonny is 2;

to say SonnyTalk4: [send him to the mall]
	say "     'A-alright. I don't mind moving back to the mall.' He stutters out, looking rather sad. He works on packing up his area, getting all his stuff into one box. When he's done and carrying the box the sheep boy is standing in front of you. 'I'm... packed and ready to go,' he says still rather depressed about the entire situation. You then lead him back to the mall, thankfully nothing bad happening on the way there. When Sonny's settled back in his usual place, he turns to you to speak. 'P-please don't forget to visit me, okay?' the guy asks you. You assure him that you'll try to visit him from time to time before you head back to the bunker.";
	move Sonny to Mall Lockerroom;
	now HP of Sonny is 1;

to say SonnyTalk5: [ask him about home]
	say "'O-oh, you remember that from our conversation?' he asks, shocked that you remembered. You smile at him, of course you'd remember, you do care for him. That sends the sheep into a bluster of stutters and fidgeting. You're quite sure that if he could, he'd be blushing as red as can be right now. Thankfully though it doesn't take long for the shy ovine to stop acting embarrassed. When he does, the wistful look is back on his face. 'Well... back at home, my mother would always make this amazing manicotti that we'd eat together,' Sonny says. It doesn't sound like a father was in the picture, you say as much and regret it when you do. The sheep has a sad look now as he tells you that his father died when he was young. 'B-b-but that's fine! My mom was all I needed,' he tells you. Nodding at his information, you head off. Maybe you could find a place where someone could teach you how to make manicotti?";
	now SonnyFood is 1;

Section 3 - Sex

instead of fucking the Sonny:
[
	if SonnyRelationship < XXX): [romance quest not yet done]
		say "     <hook for the romance quest>";
]
	if Sonny is in Mall Lockerroom:
		say "     'A-a-ah, I'm really sorry... but I'd rather not have sex in a public place like this,' the sheep boy says nervously. It might be a good idea to ask the guy to move in with you if sex is your desire.";
	else if (lastfuck of Sonny - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'I'd love to... b-but I'm still very tired from last time,' he says, practically apologizing with his eyes. Sheesh, give the guy some time, you just fucked him!";
	else: [ready for sex]
		say "     As you walk up to Sonny, you can see him blush at the mention of sex, eagerness practically oozing off of him.";
		wait for any key;
		say "[SonnySexMenu]";

to say SonnySexMenu:
	say "[line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if cocks of player > 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Sonny suck you off";
	[
	choose a blank row in table of fucking options;
	now title entry is "Suck Sonny off"; [anyone can blow him]
	now sortorder entry is 2;
	now description entry is "Wrap your lips around the sheep boy's ovine shaft";
	][]
	if cocks of player > 0 and libido of Sonny is 0: [only males and herms can fuck him, virgin Sonny]
		choose a blank row in table of fucking options;
		now title entry is "Talk the friendly sheep into giving up his virginity";
		now sortorder entry is 3;
		now description entry is "Take Sonny's ass for a ride";
	[
	if cocks of player > 0 and libido of Sonny is 1: [only males and herms can fuck him, also just for Sonny who isn't a virgin]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the friendly sheep";
		now sortorder entry is 4;
		now description entry is "Take Sonny's ass for a ride";
	][
	if cunts of player > 0: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Sonny's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer sex to the friendly sheep";
	][
	choose a blank row in table of fucking options;
	now title entry is "Take Sonny's shaft in your ass";
	now sortorder entry is 6;
		now description entry is "Offer sex to the friendly sheep";
	]
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
				if (nam is "Get a blowjob"):
					say "[SonnySex1]";
				if (nam is "Suck Sonny off"):
					say "[SonnySex2]";
				if (nam is "Talk the friendly sheep into giving up his virginity"):
					say "[SonnySex3]";
				if (nam is "Fuck the friendly sheep"):
					say "[SonnySex4]";
				if (nam is "Take Sonny's shaft in your pussy"):
					say "[SonnySex5]";
				if (nam is "Take Sonny's shaft in your ass"):
					say "[SonnySex6]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro sheep, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say SonnySex1: [oral on the player]
	say "     You suggest to the sheep that he returns the favor from the shaving session, wagging your eyes suggestively. The boy appears to look embarrassed if the way he's looking at his feet. 'A-ah, alright,' he says shyly before asking you to sit on the chair that he points to nearby. You sit down and Sonny approaches you on his knees, face first with your crotch area. He takes his hands and tugs at the waistband of the clothing you're wearing, pulling it and your underwear down a bit, reavealing your already hardening cock. The sheep gives a nervous look at it before he brings his head to the tip, giving it a tiny lick. You shiver at the sensation from his tongue on your cock, your hands grasping the wool on his head. Not wanting to rush the sheep boy too much, you resist the urge to thrust your cock into the warmth that is his mouth. Sonny appears to be thankful for this as he laps at your cock, looking more like a dog than a sheep at the moment.";
	say "     After a few seconds of him licking your cock, he swallows the tip with his mouth, forcing a gasp of pleasure out of your mouth. Still, you resist fucking his face, not wanting to be too rough on him. Sonny swirls his tongue around your cock-head, each stroke causing you to moan out loud. He then proceeds to move his mouth down on your manhood, the sheep's nose quickly reaching your skin. You can tell that he has experience sucking cocks by the way that he's not gagging on your cock. He doesn't stay stationary for long, bobbing his head up and down your straining dick. When you glance down you can see that Sonny's hand is firmly on his own prick, jerking it off rather vigorously. It doesn't take long before both of you let out a loud moan, both you and the sheep boy cumming. He takes the cum shooting into his mouth like a champ, swallowing it while his own seed splatters against the ground. When you both come down from the intensity of the orgasm, you guys clean up. Once that's done you both part ways.";
	now lastfuck of Sonny is turns;

to say SonnySex2: [oral on Sonny]
	say "     A";

to say SonnySex3: [virgin Sonny fucked]
	say "     When you suggest fucking him, Sonny's eyes widen big time. 'W-w-what?' he stutters. You repeat yourself, this time wagging your eyebrows for emphasis. 'W-well, I-I'm a virgin,' the sheep boy says nervously. You tell him that you don't mind that and that you'll take it easy on him. The sincerity in your voice appears to win him over as he relaxes. However, that is rather shortlived as he appears to be nervous once more. You ask him the reason for that, making him look down on the floor. 'I-I have a request...' Sonny says, trailing off. Your raise one of your brows, curious as to what that request is. The sheep boy doesn't say anything, rather he takes your hand and pulls you over to what appears to be a crotch-height table. But that isn't what Sonny dragged you here for. No, the guy walks up to a large cloth to the left of the table and yanks it off. Instantly, a large, wide mirror is revealed, showing both of your reflections.";
	say "     'I-I want you to fuck me in front of the mirror!' Sonny says, shouting and speaking the last bit rather quickly. Now you're really curious. How did a cute, adorable little sheep like him develop a mirror fetish? You so much as say this, causing the guy to look down in embarrassment. 'It was from you shaving me, okay?' he says, feeling defeated. Seeing this, you walk up to the boy and wrap your arms around him, both your hands landing on his ass. You squeeze his clothed cheeks but before he can moan in pleasure you pull him into a kiss. When both of your lips meet it's rather electric as pleasure shoots through the two of you. The kiss quickly moves from a simple one to an all out make-out session, your tongue in his mouth as you explore every inch of his oral cavity. In the haze of the passionate kiss, you offhandedly notice that Sonny tastes like chocolate. The taste just adds to the experience, increasing your moans even louder.";
	WaitLineBreak;
	say "     By now your hands have moved on from his ass, instead they're at his bare chest, tweaking at his nipples. It appears to have the intended result as Sonny's moans become louder too. Looking into his eyes you can see that he is in a daze of sexual pleasure, evidenced by the glassy appearance of them. Deciding to take this a step further, you break the kiss and drop to your knees. The haze of ecstasy is still present in the sheep so he doesn't notice this until you unbutton his pants, slide them down along with the pair of boxers he is wearing. 'Wah?' he says rather confused. Before he can say anything you engulf the head of his already hard cock. This makes him bleat in pleasure, shudders running through his body. 'I thought you wanted to f-fuck me?' he stutters. You swirl your tongue around his dick-head, forcing a moan out of the guy before you temporary take your mouth off. You then tell him that you do, you're just getting him ready, sticking your finger into your mouth. Sonny's face shows a confused look until he yelps loudly.";
	say "     The thing that caused the yelp was you slowly pushing the wet digit into his pucker. By the time you've done this, your mouth is back on his hard cock. The sheep is thrown into another haze of pleasure as you finger and suck him simultaneously. The spurts of precum from the ovine's manhood begin coming at a more frequent rate. So, you end up slowing down your motions on the prick, in order to not make him cum too early. When you slow down, you add another finger in and begin to scissor open his asshole, so he could take you with the smallest amount of pain possible. Though it appears that the scissoring does cause a wince of pain to show on his face for a second. This convinces you to find his prostate as fast as possible, which thankfully doesn't take too long. When you do, a large armound of precum spills into your mouth, Sonny moaning quite loudly. 'A-a-ah! That feels so good!' the sheep shouts in pleasure.";
	WaitLineBreak;
	say "     You continue to suck and scissor Sonny for a few minutes, bringing him to the edge before stopping quite a couple of times. However, you soon decide that it's time to take another step forward. So, you pick up the sheep and set him back first on the table. He's a bit confused until you undo your lower clothing, revealing your own cock, which you promptly put at his entrance. With a single push, you manage to pop the head of your cock into his pucker, causing a gasp of both pain and pleasure to come out of the ovine's mouth. 'P-please go slow,' he asks of you with eyes holding a glint that's a mix of begging and glassy pleasure. That makes you think that he's asking for two reasons. One, to make it so that it doesn't hurt too much. The second reason is because he doesn't want to cum too early. But nevertheless, you abide by your partner's request and very slowly push your shaft into his asshole.";
	say "     It takes you about a minute or so to get balls deep, as you occasionally pause to let Sonny adjust to you. Once you are, though, you quickly pull back and position yourself in the direction that you found his postrate. It seems that the lack of your length in him causes him to whine out but that's quickly rectified when you slam back in, brushing against his sweet spot. That creates a scream of pleasure from Sonny as a large spurt of precum comes flying out of his cock and onto the ovine's belly, drenching a tiny bit of his wool. You begin to keep up a decent pace, repeatedly thrusting against the guy's prostate, turning the sheep into a veritable ball of goo, eyes fixed on his reflection in the mirror. Quickly though you feel your own climax coming so you pull your lover up to you as you continue to thrust and move into a sloppy kiss. The two of you trade spit as your own thrusting becomes eratic until Sonny let's out a shout.";
	WaitLineBreak;
	say "     That shout turned out to be the sheep cumming first, his anal muscles clamping down into a tight vice around your cock. That in turn sets you off, making you cum and release your load into the ovine. With the last of your strength before you collapse from pleasure, you move the two of you to Sonny's mattress, promptly falling onto it, the both of you now laying up against each other. You and the sheep settle into a post-coitus cuddle session, you nuzzling your face against Sonny's, enjoying the sweet bliss that ocurrs after orgasm. Your friend has a different idea, turning your face towards his before kissing you chastely, these kisses much different than the ones during sex. No, these ones were sweet and loving, which told you a lot about the sheep and made you question a few things. Like why didn't you romance him first? Sure, nowadays it's usually fucking with loving gestures being a rare occurence.";
	say "     You ponder this for a while as the two of you trade loving kisses between each other. About an hour later, you stand up, leaving a soft kiss on his cheek before getting dressed. Once you're dressed you watch Sonny get dressed, admiring the look of your cum leaking out of his ass. When the sheep is dressed you hug him and thank the guy for the time before heading off. As you're heading back to your journey, your cuddle session thoughts pop up. Maybe you should find a way to make this relationship go further, at least other than fucking?";
	now lastfuck of Sonny is turns;
	now libido of Sonny is 1;
	now SonnyRelationship is 5; [has taken his virginity]

to say SonnySex4: [non-virgin Sonny fucked]
	say "     A";

to say SonnySex5: [Sonny fucks player pussy]
	say "     A";

to say SonnySex6: [Sonny fucks player ass]
	say "     A";
[]

Section 4 - Events

instead of going to Bunker while HP of Sonny is 2 and (SonnyRelationship is 5): [walk-in event for special occasions]
	move player to Bunker;
	if debugactive is 1:
		say "     DEBUG: Sonny Bunker Event. SonnyRelationship: [SonnyRelationship][line break]";
	say "     Upon entering the bunker, you see Sonny who waves you over. 'Hey, you up for just laying about and talking?' he asks you. You shrug your shoulders and say that you do have the time. Minutes later you find yourself and the sheep laying on his mattress, the same place where the two of you cuddled after you took his virginity. Taking that off your mind, you listen to the ovine ramble as he's laying up against your chest, enjoying the warmth between the two of you. Soon after that though, Sonny looks at you with a wistful look on his face, so you ask him what's wrong. 'Oh, nothing. I mean I enjoy living here with you but.... I miss home sometimes,' the ovine says, allowing you to identify the new look as nostalgia. However, your friend doesn't spend too much on that topic as he soon changes it to asking about your recent adventures. You gladly tell him about your recent fights. After an hour the two of you get up, the sheep thanking you for spending time with him.";
	now SonnyRelationship is 6; [turning off the event, progressing his relationship]
[]
[
Section 5 - Endings

when play ends:
	if (HP of Sonny > 0):  [player met him and got as far as seeing him as an npc]
		if humanity of player < 10: [player went feral]
			if HP of Sonny is 1: [Sonny is at the mall when the game ends]
				if SonnyRelationship < XXX: [non romance ending]
					say "     ...";
				else if SonnyRelationship > XXX: [romance ending]
					say "     ...";
			else if HP of Sonny is 2: [Sonny is at the bunker when the game ends]
				if SonnyRelationship < XXX: [non romance ending]
					say "     ...";
				else if SonnyRelationship > XXX: [romance ending]
					say "     ...";
		else:
			if HP of Sonny is 1: [Sonny is at the mall when the game ends]
				if SonnyRelationship < XXX: [non romance ending]
					say "     ...";
				else if SonnyRelationship > XXX: [romance ending]
					say "     ...";
			else if HP of Sonny is 2: [Sonny is at the bunker when the game ends]
				if SonnyRelationship < XXX: [non romance ending]
					say "     ...";
				else if SonnyRelationship > XXX: [romance ending]
					say "     ...";
]


Sonny ends here.
