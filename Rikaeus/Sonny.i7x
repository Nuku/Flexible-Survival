Version 1 of Sonny by Rikaeus begins here.
[Version 1 - new NPC]

[ SonnyRelationship (shy sheep, a bit exhibitionistic)     ]
[   0: not met                                             ]
[   1: met, above the belt shave                           ]
[   2: met, below the belt shave                           ]
[   3: met, below the belt shave + groping                 ]
[   4: met, below the belt shave + blowjob                 ]
[   5: has taken his virginity                             ]
[   6: has learned that he misses the taste of home        ]
[   7: has cooked him manicotti                            ]
[   8: has learned that he likes you, in a relationship    ]
[ 100: met, refused to help                                ]

[ SonnyFood                                                ]
[   0: has learned of Sonny's homesickness                 ]
[   1: has talked to Sonny about what he misses            ]
[   2: has learned how to make manicotti from Francois     ]
[   3: has acquired the ingredients for manicotti          ]
[   4: has cooked manicotti for Sonny, quest end           ]

[ HP of Sonny                                              ]
[   0: NPC not placed                                      ]
[   1: NPC in the mall lockerroom                          ]
[   2: NPC in the bunker                                   ]

[ Libido of Sonny                                          ]
[   0: anal virgin                                         ]
[   1: player fucked him                                   ]

[ Intelligence of Sonny - formerly SonnyPersonality        ]
[   0: Submissive                                          ]
[   1: Dominant                                            ]

[variables]
SonnyFood is a number that varies.
SonnyQuest is a number that varies.

Section 1 - Basic Setup

Table of GameCharacterIDs (continued)
object	name
Sonny	"Sonny"

Sonny is a man. The HP of Sonny is usually 0.
[Physical details as of game start]
ScaleValue of Sonny is 3. [human sized]
SleepRhythm of Sonny is 0. [0 - awake at all times, 1 - day active, 2 - night active]
Cock Count of Sonny is 1. [X cock]
Cock Length of Sonny is 6. [X Inches]
Ball Size of Sonny is 4.
Ball Count of Sonny is 2. [X balls]
Cunt Count of Sonny is 0. [X pussy]
Cunt Depth of Sonny is 0. [X Cunt]
Cunt Tightness of Sonny is 0. [X Cunt]
Nipple Count of Sonny is 2. [X nipples]
Breast Size of Sonny is 0. [X at the start]
[Basic Interaction states as of game start]
TwistedCapacity of Sonny is false. [can not take oversized members without pain]
Sterile of Sonny is true.
PlayerMet of Sonny is false.
PlayerRomanced of Sonny is false.
PlayerFriended of Sonny is false.
PlayerControlled of Sonny is false.
PlayerFucked of Sonny is false.
OralVirgin of Sonny is true.
Virgin of Sonny is true.
AnalVirgin of Sonny is true.
PenileVirgin of Sonny is true.
SexuallyExperienced of Sonny is false.
MainInfection of Sonny is "".
Description of Sonny is "[SonnyDesc]".
Conversation of Sonny is { "<This is nothing but a placeholder!>" }.
The scent of Sonny is "     Sonny smells like berries with an underlying hint of musk. You feel as if it's probably from the conditioner he uses for his wool.".

to say SonnyDesc:
	if debugactive is 1:
		say "DEBUG -> SonnyRelationship: [SonnyRelationship], HP: [HP of Sonny] <- DEBUG[line break]";
	if graphics is true:
		project the figure of Sonny_shaved_jeans_icon;
	say "     Sonny is a rather adorable looking sheep boy. He doesn't have the full looks of a ram, as clearly evidenced by the tiny little nub-horns on his forehead. What he does have is fluffy looking white wool, blue eyes, and what appears to be a disposition to being shirtless. Because of his lack of a shirt, you can see that Sonny does exercise, as he has well defined muscles, but not so much that he looks like a bodybuilder. His pants are a rather simple pair of denim jeans that are worn in some places and his shoes are a worn pair of sneakers. All in all, you pretty much think he looks like a twink, though he sure doesn't act like it.";
	if Sonny is in Half-Renovated Room:
		say "     In the room, Sonny seems to have set up a cozy little sleep pad in one of the corners. The area consists of a mattress that the sheep boy has dragged up from the bunker, his shaving supplies, and oddly enough an open crate filled with all the shaven wool[if Skarnoth is in Half-Renovated Room]. He can be seen throwing nervous looks at the chained-up demon, which just results in Skarnoth returning lewd glances and suggestive hip-thrusts back[end if].";
	else if Sonny is in Mall Lockerroom:
		say "     In the lockerroom it appears that Sonny has practically claimed the area in front of the mirror. His sleeping bag is currently sitting on the bench nearby, rolled up so it doesn't take up much space. To the right of the sleeping bag and under the bench, a number of items are scattered. They appear to be the sheep boy's shaving supplies, meticulously taken care of. Other than that, a plastic crate filled with tufts of his shorn-off wool strikes you as a bit of an odd sight.";

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
	LineBreak;
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
		now title entry is "Send him to the mall";
		now sortorder entry is 4;
		now description entry is "Tell Sonny to go back to the mall";
	[]
	if SonnyRelationship is 6: [has learned that he misses the taste of home]
		choose a blank row in table of fucking options;
		now title entry is "Ask him about home";
		now sortorder entry is 5;
		now description entry is "Ask the sheep boy what exactly he misses about home";
	[]
	if SonnyRelationship is 8 and Stamina of Leon > 0 and player is male:
		choose a blank row in table of fucking options;
		now title entry is "Confidence";
		now sortorder entry is 6;
		now description entry is "Work on the sheep boy's confidence by taking him to Leon";
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
				if (nam is "Confidence"):
					say "[SonnyLeon1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro sheep, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SonnyTalk1: [talk about him]
	say "     'Me?' he asks, rather confused. You nod your head, saying that you want to get to know the guy. Sonny starts stuttering and you're quite sure that if he could he'd be blushing. You find the entire situation rather adorable to be honest, but you save that bit to yourself lest you embarrass him even more. He calms down rather quickly and straightens himself up before speaking. 'Well, I grew up in New York to begin with, a nice little suburb community,' Sonny starts off. New York? Why did the sheep boy move here? 'Well, college, of course. I had gotten a full ride to the college here and then well,' he trails off. You understand what he means. The whole nanite event threw everything into hysteria. 'To be honest my life wasn't that interesting before the whole catastrophe,' the boy admits truthfully. You nod at that before backing off, feeling as if you've learned enough for now.";

to say SonnyTalk2: [talk about the city]
	say "     'It's pretty bad out there,' Sonny murmurs when you mention the city. You nod in agreement, as the place has gone pretty crazy since the nanite event. 'Though, the mall wasn't [italic type]that[roman type] bad, all things considered,' is what he says next. Really? You probably don't know the mall enough to argue with him, so instead you ask what he means. 'Well, sure, there'd be people getting assaulted and stuff, but Wolverine Security for the most part kept it all together. Out in the open there was no safety net,' Sonny says. You nod and move away seeing that he had nothing more to say.";

to say SonnyTalk3: [send him to the library]
	say "     'Move in with you?' the sheep-morph asks rather confused. You nod your head, telling him that it'd far easier if he lived within the same place that you did. 'But wouldn't I be taking up too much space?' Sonny asks shyly. This time a shake of the head is given, telling the sheep boy that the library has more than enough room for him and a few dozen others. Instantly after that is said, he perks up and nods eagerly. 'That'd be great then! I accept!' he shouts in joy. You chuckle at his enthusiasm as you wait for him to finish packing up to lead the guy to the library.";
	move Sonny to Half-Renovated Room;
	move player to Half-Renovated Room;
	now HP of Sonny is 2;

to say SonnyTalk4: [send him to the mall]
	if Intelligence of Sonny is 0:
		say "     'A-alright. I don't mind moving back to the mall,' he stutters out, looking rather sad. He works on packing up his area, getting all his stuff into one box. When he's done and carrying the box the sheep boy is standing in front of you. 'I'm... packed and ready to go,' he says, still rather depressed about the entire situation. You then lead him back to the mall, thankfully nothing bad happening on the way there. When Sonny's settled back in his usual place, he turns to you to speak. 'P-please don't forget to visit me, okay?' the guy asks you. You assure him that you'll try to visit him from time to time before you head back to the bunker.";
	else if Intelligence of Sonny is 1:
		say "     'Alright! I don't mind going back, but you better visit me alright?' He says giving you a stern look that causes you to nod. He packs up his area, you helping as you feel that you need to with his air of dominance around him. Once everything's packed up he turns to you. 'Mind escorting me?' He says, holding out an arm. You hook arms with him and lead him back to the mall, thankfully nothing happening. Once you get there you help him get settled back in. 'Now, like I said, visit me, after all, we're lovers!' Sonny says with a chuckle. You assure him you'll visit him occasionally before heading back to the bunker.";
	move Sonny to Mall Lockerroom;
	now HP of Sonny is 1;

to say SonnyTalk5: [ask him about home]
	say "'O-oh, you remember that from our conversation?' he asks, shocked that you remembered. You smile at him, of course you'd remember, you do care for him. That sends the sheep into a bluster of stutters and fidgeting. You're quite sure that if he could, he'd be blushing as red as can be right now. Thankfully though it doesn't take long for the shy ovine to stop acting embarrassed. When he does, the wistful look is back on his face. 'Well... back at home, my mother would always make this amazing manicotti that we'd eat together,' Sonny says. It doesn't sound like a father was in the picture, you say as much and regret it when you do. The sheep has a sad look now as he tells you that his father died when he was young. 'B-b-but that's fine! My mom was all I needed,' he tells you. Nodding at his information, you head off. Maybe you could find a place where someone could teach you how to make manicotti?";
	now SonnyFood is 1;

to say SonnyLeon1:
	say "     Walking up to the sheep boy from behind you give him a hug, causing him to let out an eep before relaxing in your arms. 'H-hey there!' Sonny says turning so that you can kiss him. You tell him that you want to help him get his confidence up, help him feel better about himself. 'R-really? How would you do this?' He asks, a curious, contemplative look in his eyes. You explain that you have a friend named Leon, who's a Ram who would probably be more than happy to help him. The sheep tilts his head at that but the nods. 'S-sure! If you think it'll help then I'll go with you!' Sonny says with a bit of determination on his face. Grinning at him you take him by the hand and lead him out of the abbey.";
	say "     It takes you a fair bit of time to reach the New Ewe Store, but when you get there you knock on the door. A few seconds later, it's thrown open and you're met with the very ram you're looking for. 'Oh! If it isn't my favorite ewe! What can I do for you?' He asks, welcoming you guys in. Sonny looks confused at the exchange but follows you in nonetheless. As you head in, you prose your suggestion to Leon, who appears to think for a second before getting a smirk on his face. 'Well, he does seem pretty wimpy... but with you as his training partner, he definitely can become dominant.' He says with a chuckle. By now, your sheepy boyfriend is super confused and is about to say something when the ram asks you guys to follow him into the back room.";
	WaitLineBreak;
	say "     As soon as you're in there he gives you a look, one you're very familiar with, having been with him before. Instantly you remove any type of clothing and get on the ground. 'W-what are you doing?' Sonny asks, rather confused. 'They're being your training partner sheep boy.' Leon said before turning directly to him. 'Now, lose the damn stutter.' He orders firmly, just causing him to stutter again. 'I said... [bold type]lose the god damn stutter![roman type].' The ram shouts. 'Okay! Okay!' Sonny replies back, completely free of his stutter. 'Good, good, now we can move onto the good part.' Leon says with a nod.";
	say "     'Now, sheep boy, stand in front of your lover here, and tell them what you want them to do.' The ram says, gesturing in a [']go on['] motion. Biting his lip, Sonny walks in front of you and checks to see in your eyes if this is really what you want. Seeing nothing but desire and love in them, he nods. 'I... I want you to take my cock out and suck it.' He says in a firm tone. You oblige him by undoing his pants, causing his length to slip out. You bring your face to it, a scent of musk hitting you and causing you to inhale it before you take it into your mouth, swirling your tongue around the tip, making him hold back a groan.";
	WaitLineBreak;
	say "     'Ugh, yeah that's good, take it deeper into your mouth.' Sonny groans, grabbing at your head. In the background you hear Leon mutter that he's a natural as you eye him stroking himself in the corner of your eye. However, you eagerly go further down your partner's cock, taking it inch by inch until it's suddenly balls deep in your mouth. 'Now fuck your mouth on my dick.' your sheep moans, enjoying every bit of your actions. Eager to encourage this side of him, you do as he asks, sliding up and down his length, a slick sloshing sound filling the room as you throatfuck yourself on his cock.";
	say "     However, it seems that you sucking his cock isn't all he wants you to do. As he soon pulls out of your mouth and gives you a look. 'Turn around, bend over, and spread your cheeks for me.' Sonny orders. You eagerly do so, revealing your pucker to the sheep. Afterwhich you suddenly feel something blunt and wet at your hole. It's teased repeatedly by being rubbed about but never really pushed in. 'Come on, beg for my cock, like you want it.' He orders. Loving this new side of Sonny you practically scream out, saying that you want him to spear you with his thick length, to fuck you as hard as he can.";
	WaitLineBreak;
	say "     As soon as you finish saying those words Sonny pushes in, popping his cock into your hole and causing you to groan. It doesn't take long for him to fully hilt in you, his balls soon resting against your ass. He doesn't stay seated in you for long, pulling back and before slamming back in, causing you to lurch forward from the momentum. He continues to fuck you roughly like this for a while, sending massive amounts of pleasure through you as he does so, jabbing at your prostate with each thrust. As he does this,he reaches forward and grabs your head, yanking you back into a hot, passionate kiss that he practically dominates, tongue and all that makes your mind rather hazy.";
	say "     You can tell his own pleasure is mounting as he's getting more and more desperate with his thrusts, but soon enough you're met with a cock in your face, Leon's to be specifically. It's quickly shoved into your mouth and you're made to suck on it as you're practically spitroasted by the two ovine. They tag team you for a while before their panting gets rougher and rougher and they both let out a roar and the same time. Creamy cum starts shooting both down your throat and into your ass, filling your in both ends, causing your own pleasure to soar.[if player is herm]You let out a loud muffled moan as your pussy twitches before it starts leaking fluids eveywhere just as your cock shoots its load all over the floor, creating a large puddle[else if player is male]You let out a loud muffled moan and your cock starts to spurt its own load, splattering all over the backroom floor, creating a large puddle[end if].";
	WaitLineBreak;
	say "     Both of them then pull out, causing you to collapse onto the floor onto your cum puddle. Leon snickers and turns to Sonny and speaks up. 'You did a pretty good job kid.' He says, but he's rather ignored by the sheep. Your lover instead picks you up and cuddles you into his arms, kissing you passionately and whispering about how much of a wonderful job you did. That causes you to smile happily and nuzzle him back. You're surprised when he picks you up and carries you out of the room and seemingly back to the abbey and into his bed where he snuggles you some more before the both of you nod off to sleep. When you wake up later, you feel that Sonny's personality has changed a lot.";
	now Intelligence of Sonny is 1;
	now lastfuck of Sonny is turns;

Section 3 - Sex

instead of fucking the Sonny:
[
	if SonnyRelationship < XXX): [romance quest not yet done]
		say "     <hook for the romance quest>";
]
	if Sonny is in Mall Lockerroom and Intelligence of Sonny is 0:
		say "     'A-a-ah, I'm really sorry... but I'd rather not have sex in a public place like this,' the sheep boy says nervously. It might be a good idea to ask the guy to move in with you if sex is your desire.";
	else if Sonny is in Mall Lockerroom and Intelligence of Sonny is 1:
		say "     As much as I'd love to have fun with you in public, I'd rather us have fun back at the Abbey.' Sonny says with a smile in your direction. It might be better to have him move back if you want sex.";
	else if Intelligence of Sonny is 0 and (lastfuck of Sonny - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'I'd love to... b-but I'm still very tired from last time,' he says, practically apologizing with his eyes. Sheesh, give the guy some time, you just fucked him!";
	else if Intelligence of Sonny is 1 and (lastfuck of Sonny - turns < 3): [he got fucked in the last 9 hours = 3 turns]
		say "     'I'd love to, but we just did a while ago, I need time to rest,' Sonny says with a chuckle.";
	else: [ready for sex]
		say "     As you walk up to Sonny, you can see him blush at the mention of sex, eagerness practically oozing off of him.";
		wait for any key;
		say "[SonnySexMenu]";

to say SonnySexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male and Intelligence of Sonny is 0: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Get a blowjob";
		now sortorder entry is 1;
		now description entry is "Let Sonny suck you off";
	[]
	if Intelligence of Sonny is 1:
		choose a blank row in table of fucking options;
		now title entry is "Suck Sonny off"; [anyone can blow him]
		now sortorder entry is 2;
		now description entry is "Wrap your lips around the sheep boy's ovine shaft";
	[]
	if Player is male and Libido of Sonny is 0: [only males and herms can fuck him, virgin Sonny]
		choose a blank row in table of fucking options;
		now title entry is "Talk the friendly sheep into giving up his virginity";
		now sortorder entry is 3;
		now description entry is "Take Sonny's ass for a ride";
	[
	if Player is male and Libido of Sonny is 1: [only males and herms can fuck him, also just for Sonny who isn't a virgin]
		choose a blank row in table of fucking options;
		now title entry is "Fuck the friendly sheep";
		now sortorder entry is 4;
		now description entry is "Take Sonny's ass for a ride";
	][
	if Player is female: [only females and herms can take him in the pussy]
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
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the anthro sheep, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say SonnySex1: [oral on the player]
	say "     You suggest to the sheep that he returns the favor from the shaving session, wagging your eyes suggestively. The boy appears to look embarrassed if the way he's looking at his feet. 'A-ah, alright,' he says shyly before asking you to sit on the chair that he points to nearby. You sit down and Sonny approaches you on his knees, face first with your crotch area. He takes his hands and tugs at the waistband of the clothing you're wearing, pulling it and your underwear down a bit, revealing your already hardening cock. The sheep gives a nervous look at it before he brings his head to the tip, giving it a tiny lick. You shiver at the sensation from his tongue on your cock, your hands grasping the wool on his head. Not wanting to rush the sheep boy too much, you resist the urge to thrust your cock into the warmth that is his mouth. Sonny appears to be thankful for this as he laps at your cock, looking more like a dog than a sheep at the moment.";
	say "     After a few seconds of him licking your cock, he swallows the tip with his mouth, forcing a gasp of pleasure out of your mouth. Still, you resist fucking his face, not wanting to be too rough on him. Sonny swirls his tongue around your cock-head, each stroke causing you to moan out loud. He then proceeds to move his mouth down on your manhood, the sheep's nose quickly reaching your skin. You can tell that he has experience sucking cocks by the way that he's not gagging on your cock. He doesn't stay stationary for long, bobbing his head up and down your straining dick. When you glance down you can see that Sonny's hand is firmly on his own prick, jerking it off rather vigorously. It doesn't take long before both of you let out a loud moan, both you and the sheep boy cumming. He takes the cum shooting into his mouth like a champ, swallowing it while his own seed splatters against the ground. When you both come down from the intensity of the orgasm, you guys clean up. Once that's done you both part ways.";
	now lastfuck of Sonny is turns;

to say SonnySex2: [oral on Sonny]
	say "     Walking up to Sonny you seem to be projecting an eager aura which causes him to raise a brow to you. 'Oh, does my lover want something?' He asks, leaning against the wall while sitting on his bed. You nod before glancing at his crotch. 'Oh, you want a taste of me? Eh?' The sheep says with a smile before spreading his legs wide. 'Well then, who am I to deny you what you want, go right ahead.' He says, causing you to climb right on the bed and shove your face right into his crotch. Once your face meets his crotch you can feel the heat of it meet your face, causing you to let out a moan.";
	say "     Inhaling you get a good whiff of his musk, which is a nice masculine smell, causing you to groan and nuzzle it. Popping open your jeans, you get thwapped in the face with his cock which is already leaking precum, which sticks to your face after having smacked you. Freeing the whole length and balls from the pair of pants you drag your tongue from his balls to his tip, taking in the taste and letting out a hum of contentment, enjoying this new side of Sonny. Moving your face further down you nuzzle your nose into his ballsack, letting the heavy and hazy smell coming from them envelop you.";
	WaitLineBreak;
	say "     Taking one of his orbs into your mouth you suck on it, swirling it around in your mouth, gaining a moan out of the sheep who pushes your face deeper into his crotch, clearly enjoying what you're doing. Once you've washed the sweat off of that one you switch to the other and repeat, groaning the entire time. After that, you slowly lick up his length, dragging your tongue up the veins that trace his cock until you reach the tip which is currently leaking precum. You happily lap up the fluid, smacking your lips as you taste it, letting him know you enjoy it all.";
	say "     'Come on, enough fun, take my cock in your mouth, I wanna fuck your throat. I know you can take it.' Sonny orders, causing a shiver to go down your spine. Eagerly you comply, opening your mouth and engulfing the head of the length before slowly sliding down it. Your sheepy lover groans at your warm throat constricting around his dick, grabbing a hold of your head as you sink inch by inch deeper into your mouth. Soon enough you have him balls deep in you, his testicles sitting against your nose causing you to once more be surrounded by his scent.";
	WaitLineBreak;
	say "     However once you get comfortable Sonny pulls back and thrusts back in, beginning to fuck your face, his balls slapping against you with a wet sound from the saliva you coated on it. He repeatedly humps at you, his cock going in and out, a sloshing filling the room as he throatfucks you. You take it eagerly, enjoying the domination your sheepy boyfriend is putting on you, sometimes even meeting the thrusts he puts out. To help him out you swirl your tongue around his cock, licking and sucking at it each time he pushes it into your mouth, causing him to moan rather loudly each time.";
	say "     With each thrust Sonny makes you can tell he gets closer, as your sheepy lover gets louder and more desperate with his moans and his balls start to tighten against your face. This allows you to prepare a bit for what's about to come. And oh boy does it come. About a minute later the sheep slams into your mouth one last time, groaning as rope after rope of cum pours down your throat, you trying your best to taste it with your tongue. When the last bit of cum peters off, Sonny pulls back with a panting breath and pulls you into his arms. 'Fuck that was hot come here.' He says before kissing you, not minding that his cum is in your mouth. The two of you make out, swapping his come back and forth as you lay there for a while. Twenty minutes later you get up and return to what you were doing earlier, giving the sheep a kiss goodbye, promising to return later.";
	now lastfuck of Sonny is turns;

to say SonnySex3: [virgin Sonny fucked]
	say "     When you suggest fucking him, Sonny's eyes widen big time. 'W-w-what?' he stutters. You repeat yourself, this time wagging your eyebrows for emphasis. 'W-well, I-I'm a virgin,' the sheep boy says nervously. You tell him that you don't mind that and that you'll take it easy on him. The sincerity in your voice appears to win him over as he relaxes. However, that is rather short-lived as he appears to be nervous once more. You ask him the reason for that, making him look down on the floor. 'I-I have a request...' Sonny says, trailing off. Your raise one of your brows, curious as to what that request is. The sheep boy doesn't say anything, rather he takes your hand and pulls you over to what appears to be a crotch-height table. But that isn't what Sonny dragged you here for. No, the guy walks up to a large cloth to the left of the table and yanks it off. Instantly, a large, wide mirror is revealed, showing both of your reflections.";
	say "     'I-I want you to fuck me in front of the mirror!' Sonny says, shouting and speaking the last bit rather quickly. Now you're really curious. How did a cute, adorable little sheep like him develop a mirror fetish? You so much as say this, causing the guy to look down in embarrassment. 'It was from you shaving me, okay?' he says, feeling defeated. Seeing this, you walk up to the boy and wrap your arms around him, both your hands landing on his ass. You squeeze his clothed cheeks but before he can moan in pleasure you pull him into a kiss. When both of your lips meet it's rather electric as pleasure shoots through the two of you. The kiss quickly moves from a simple one to an all out make-out session, your tongue in his mouth as you explore every inch of his oral cavity. In the haze of the passionate kiss, you offhandedly notice that Sonny tastes like chocolate. The taste just adds to the experience, increasing your moans even louder.";
	WaitLineBreak;
	say "     By now your hands have moved on from his ass, instead they're at his bare chest, tweaking at his nipples. It appears to have the intended result as Sonny's moans become louder too. Looking into his eyes you can see that he is in a daze of sexual pleasure, evidenced by the glassy appearance of them. Deciding to take this a step further, you break the kiss and drop to your knees. The haze of ecstasy is still present in the sheep so he doesn't notice this until you unbutton his pants, slide them down along with the pair of boxers he is wearing. 'Wah?' he says rather confused. Before he can say anything you engulf the head of his already hard cock. This makes him bleat in pleasure, shudders running through his body. 'I thought you wanted to f-fuck me?' he stutters. You swirl your tongue around his dick-head, forcing a moan out of the guy before you temporary take your mouth off. You then tell him that you do, you're just getting him ready, sticking your finger into your mouth. Sonny's face shows a confused look until he yelps loudly.";
	say "     The thing that caused the yelp was you slowly pushing the wet digit into his pucker. By the time you've done this, your mouth is back on his hard cock. The sheep is thrown into another haze of pleasure as you finger and suck him simultaneously. The spurts of precum from the ovine's manhood begin coming at a more frequent rate. So, you end up slowing down your motions on the prick, in order to not make him cum too early. When you slow down, you add another finger in and begin to scissor open his asshole, so he could take you with the smallest amount of pain possible. Though it appears that the scissoring does cause a wince of pain to show on his face for a second. This convinces you to find his prostate as fast as possible, which thankfully doesn't take too long. When you do, a large amount of precum spills into your mouth, Sonny moaning quite loudly. 'A-a-ah! That feels so good!' the sheep shouts in pleasure.";
	WaitLineBreak;
	say "     You continue to suck and scissor Sonny for a few minutes, bringing him to the edge before stopping quite a couple of times. However, you soon decide that it's time to take another step forward. So, you pick up the sheep and set him back first on the table. He's a bit confused until you undo your lower clothing, revealing your own cock, which you promptly put at his entrance. With a single push, you manage to pop the head of your cock into his pucker, causing a gasp of both pain and pleasure to come out of the ovine's mouth. 'P-please go slow,' he asks of you with eyes holding a glint that's a mix of begging and glassy pleasure. That makes you think that he's asking for two reasons. One, to make it so that it doesn't hurt too much. The second reason is because he doesn't want to cum too early. But nevertheless, you abide by your partner's request and very slowly push your shaft into his asshole.";
	say "     It takes you about a minute or so to get balls deep, as you occasionally pause to let Sonny adjust to you. Once you are, though, you quickly pull back and position yourself in the direction that you found his prostate. It seems that the lack of your length in him causes him to whine out but that's quickly rectified when you slam back in, brushing against his sweet spot. That creates a scream of pleasure from Sonny as a large spurt of precum comes flying out of his cock and onto the ovine's belly, drenching a tiny bit of his wool. You begin to keep up a decent pace, repeatedly thrusting against the guy's prostate, turning the sheep into a veritable ball of goo, eyes fixed on his reflection in the mirror. Quickly though you feel your own climax coming so you pull your lover up to you as you continue to thrust and move into a sloppy kiss. The two of you trade spit as your own thrusting becomes erratic until Sonny lets out a shout.";
	WaitLineBreak;
	say "     That shout turned out to be the sheep cumming first, his anal muscles clamping down into a tight vice around your cock. That in turn sets you off, making you cum and release your load into the ovine. With the last of your strength before you collapse from pleasure, you move the two of you to Sonny's mattress, promptly falling onto it, the both of you now laying up against each other. You and the sheep settle into a post-coitus cuddle session, you nuzzling your face against Sonny's, enjoying the sweet bliss that occurs after orgasm. Your friend has a different idea, turning your face towards his before kissing you chastely, these kisses much different than the ones during sex. No, these ones were sweet and loving, which told you a lot about the sheep and made you question a few things. Like why didn't you romance him first? Sure, nowadays it's usually fucking with loving gestures being a rare occurrence.";
	say "     You ponder this for a while as the two of you trade loving kisses between each other. About an hour later, you stand up, leaving a soft kiss on his cheek before getting dressed. Once you're dressed you watch Sonny get dressed, admiring the look of your cum leaking out of his ass. When the sheep is dressed you hug him and thank the guy for the time before heading off. As you're heading back to your journey, your cuddle session thoughts pop up. Maybe you should find a way to make this relationship go further, at least other than fucking?";
	now lastfuck of Sonny is turns;
	now Libido of Sonny is 1;
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

after navigating Bone-Appetit while SonnyFood is 1:
	say "     Upon making your entrance into the baked goods store of your hybrid French friend he notices the contemplative look on your face. 'Ah, mon ami, what is with the long face?' Francois asks, looking a little bit concerned. You mention that a pal of yours, who you admit you might be feeling something a bit more, is feeling homesick and wishes for a dish their parent had cooked. The flamboyant man lets out a hum before he nods. 'I see, I see. Well, then what does this friend of yours desire?' he asks, his tone getting inquisitive. You tell him that Sonny longs for manicotti, something you don't know how to make. However, Francois's eyes light up as you say this and he vanishes into the back of the store.";
	say "     About ten minutes later the hybrid comes out with a recipe book that he promptly places on the table. 'I would, how would you English say it, complacent, not to learn anything about the culinary arts outside of baking,' Francois says, flipping the book open and leafing through the pages. As he does this you notice several different kinds of recipes, from confectionery to cooking to almost anything one could think falls under the culinary arts. 'I just decided on baking because I so happened to like les aminaux and Mont Blancs are to die for!' your friend says, clearly reminiscing before he finally comes to what he was looking for, instructions on how to make manicotti. 'There you go mon ami, one recipe. As for the ingredients, I believe I saw a grocery store here in the High Rise District with just what you were looking for, surprisingly enough despite the apocalyptic event. When you have everything come back and I'll let you use my kitchen and perhaps my store to feed ton petit amor,' your friend says, teasing you with the last bit before shooing you off.";
	now SonnyFood is 2;
	now Manicotti Shopping is active;

Table of GameEventIDs (continued)
Object	Name
Manicotti Shopping	"Manicotti Shopping"

Manicotti Shopping is a situation.
ResolveFunction of Manicotti Shopping is "[ResolveEvent Manicotti Shopping]". The level of Manicotti Shopping is 2. Manicotti Shopping is inactive.
Sarea of Manicotti Shopping is "high".

to say ResolveEvent Manicotti Shopping:
	say "     As you explore the High Rise, you finally manage to come upon the grocery store that Francois told you about. Staring you in the eyes is a large sign saying 'Shroger', designating it as one of the big grocery chain stores in America. The once sliding doors to the place are torn off, giving sight into the superstore, though not much. From outside all you can notice are where the shopping carts were usually stored and perhaps maybe the cash registers but that's it, so with a shrug you head on in. To your surprise, the inside is actually not abandoned, there are people scattered about, hanging out in the place though to be honest you should have expected this. One of them, a tan-furred male mouse in a simple black shirt and cargo pants ends up approaching you.";
	say "     'Hey there friend! What brings you to our little neck of the High Rise?' he asks, tilting his head and looking you up and down, as if trying to understand you. You explain that you're attempting to get ingredients for a dish that a friend of yours is homesick for. That ends up causing the rodent to give you a curious look. 'That might be a bit difficult, considering that most of the food here was taken in the beginning of the [']incident['], by the way my name is Wally,' the male informs you, holding out a paw. You shake the paw and tell him that the particular recipe you are trying to make is manicotti and then mention Francois which causes the mouse to chuckle. 'Ah, of course he sent you. Ever the romantic that guy. And he was right, surprisingly we just so happen to have the stuff for it and you may as well see why,' Wally says, gesturing for you to follow.";
	WaitLineBreak;
	say "     You follow after him to the first destination, the pasta aisle. When you arrive here, the mouse explains to you that the reason behind these ingredients not being gone is that since the power kind of went out all over the city nobody has been able to really make use of the stuff. He says all of this to you before promptly putting the items into a bag for you and then you both head off to the area that would give people the most concerns, the refrigerated foods. When you arrive, to your utter shock the temperature of the area plummets and you find your self in a semi-winter wonderland. Seeing you shiver, the mouse lets out a little chuckle. 'Yeah, so when the nanites hit, one of the employees was working in the freezer area and turned into some kind of snow-yeti like creature that froze the entire area. Makes the place cold, but does wonders for the existing produce,' Wally says.";
	say "     The refrigerated goods were the last bit of ingredients you needed anyways, so after the both of you collect the cheeses, you made your way back to the front. Once there, Wally hands you the bag and gives you a smile. 'Here you go! I hope your [']friend['] enjoys the meal. And perhaps you could come back and visit? The others here might want to introduce themselves at some point,' he tells you before waving you off. You turn around and then make your way out of the store, heading off to who knows were, though you may want to go back to Francois at some point so you can give Sonny the meal he wants.";
	now SonnyFood is 3;
	now Manicotti Shopping is resolved;

after navigating Bone-Appetit while SonnyFood is 3:
	say "     Walking into the gourmet bakery with the bag of groceries in hand you are met immediately with Francois. 'Ah, mon ami, I see you have what you need. Est parfait!' he says in an excited voice before he starts pushing you towards his kitchen. When you get in there you're revealed to the secret as to how Francois bakes without power, he doesn't. Rather, the hybrid has a generator that gives his entire kitchen electricity. You muse that the French male was rather prepared for anything. Your overlooking of his set up seems to amuse him if anything though, according to the look on his face. He however shakes it off and then instructs you to set everything on the counter as well as the recipe, which you do as such.";
	say "     'Alright mon ami, you will be back here cooking while I will go get your little friend so I will need directions to him,' Francois says to you. You open your mouth to protest, knowing of your hybrid friend's flirtatious nature but the male just holds up a hand to stop you. 'Don't worry your coeur, your heart, mon ami, I won't take your love interest,' the French male says before once more asking for directions. You stutter at his implications but give him directions, after which he promptly leaves you alone in the kitchen to your thoughts and your ingredients. Deciding that even though it would take a bit for Francois to convince Sonny to follow you do need to get started now.";
	WaitLineBreak;
	say "     So, without further ado you get started, first putting the manicotti pasta into a pot and boiling them. As you start the process of making the dish your thoughts go back to what Francois said about your feelings for Sonny were. Sure, they started out sexual, after all the sheep boy did have a certain cuteness to him that you couldn't resist. However, over time, you don't know where, the feelings evolved into something more than just wanting a romp in the hay. Though if you were honest with yourself it could be when the male had given you his virginity, as it was then that you felt he deserved something better, something better than what you were currently giving him. Although at the same time, you also hadn't entirely decided on romantic feelings at the time either. It probably wasn't until he mentioned his homesickness and acted on it that you had fully decided on it. Ending your musing you realize that you've actually reached the end of making the manicotti, so you promptly take it out.";
	say "     It's when you take it out and set it on the counter that you hear the ringing of the bell from the store door and then Francois's voice telling someone to sit at a table. Seconds later you see him come through the kitchen door with a smirk on his face. 'Your sheep is rather cute,' he comments, waggling his brows. You scowl a bit, which just makes your hybrid friend chuckle at your expression. 'Ah, young love, always so sweet. Now, how about you go and sit down with him while I serve you guys up mon ami? After all you can't keep him waiting,' Francois says, shooing you off. You give him a weird look before acquiescing to his request.";
	WaitLineBreak;
	say "     When you head out into the main part of the bakery you see a nervous Sonny sitting at a table. However, that look goes away as soon as he sees you, replaced immediately by a happy smile, one so wide that you're sure if he was standing he would be wagging his tail. You promptly sit down and he strikes up a conversation with you. 'So why did you get your friend to bring me here? He was rather cryptic about the whole thing,' the sheep says, an inquisitive look on his face. You smile and tell him that it's a surprise and that he should wait for Francois to return. That causes the ovine to pout, something that you think looks rather adorable. Thankfully though for you, it doesn't take long for the hybrid to come out with the food on plates.";
	say "     Francois walks over and places a plate of manicotti in front of each of you as well as silverware. 'Bon apetit, cooked here by your friend here little sheep. There is seconds if you want it,' the male says before walking away, leaving the two of you alone. Sonny looks back and forth at the plate of food and you repeatedly before he practically lunges at you, carefully avoiding the plates, and kisses you. You're rather surprised but happily accept it. When he sits back down, the male is looking like he is the happiest sheep in the world, which he probably is. 'You did this all for me, after I told you about my homesickness I assume?' he asks, taking a bite out of the food, letting out a moan at the food, clearly approving. You nod and tell him that you wanted to do something special for him, the response causing him to blush. The conversation turns to random things as you eat but by the end of the entire thing you're sure the two of you have grown closer.";
	move player to Half-Renovated Room;
	PlayerEat 20;
	now SonnyFood is 4;
	now SonnyRelationship is 7;
	now SonnyQuest is turns;

instead of going to Half-Renovated Room while (SonnyRelationship is 7 and SonnyQuest - turns > 6):
	say "     Upon entering the half-renovated room Sonny perks up from his area and bounds on over with a blush on his face. Curious about it, you ask him what he wants, not that he ever needs to ask of anything, really. 'Ah, well... Why do you hang out with me?' the sheep asks you, looking at the floor with a nervous look. You let out a hum before listing out the reasons off the top of your head. You tell him that he's kind, cute, cuddly, has a great personality, as well as a much longer list that would take a bit longer than the time they have to name. That prompts his entire face turning red and him looking like he wants to say something. Suddenly, though, he blurts it out. 'I like you, like, romantically!' Sonny shouts, causing you to raise a brow.";
	say "     To be honest, you thought that you were going to be the first one to admit your feelings to the sheep, but it looks like he beat you to it. Oh well, you may as well say something, as it looks like he thinks that you're rejecting him because of you not saying anything. You quickly admit that you like him as well, romantically of course, causing a look of relief to flutter over his face. 'Do... you perhaps want to date?' he asks, which you admit is an odd question. Odd because most people in the current state of the world just stick to fucking rather than romantic relationships. But instead you smile at Sonny and nod, telling him you wouldn't mind it. He smiles happily at you and shuffles close to you before pulling you into a soft kiss that has a bit more feeling to it than the previous ones the two of you had. The sheep then backs away and says that maybe at a later time you two could go on a date maybe.";
	now SonnyRelationship is 8;
	now PlayerRomanced of Sonny is true;


[
Section 5 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Sonny's Epilogue"	"NPC"	""	Sonny's Epilogue rule	900	false

This is the Sonny's Epilogue rule:
	if (HP of Sonny > 0): [player met him and got as far as seeing him as an NPC]
		trigger ending "Sonny's Epilogue"; [Here it states, that the ending has been played.]
		if humanity of Player < 10: [player went feral]
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
