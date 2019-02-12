Version 2 of Randall and Brad by Rikaeus begins here.
[Version 2 - New Room, NPCs, and a Sex Menu]

[ RandallBradRelationship                                  ]
[   0: not met                                             ]
[   1: Has seen Stewart and Randall talking about Brad     ]
[   2: Has seen Randall spying on Jennifer                 ]
[   3: Has seen Randall seduce Brad into having sex        ]
[   4: Has seen Randall talk Brad into leaving Jennifer    ]
[   5: Has seen Randall and Brad have first sex as couple  ]

[ CocoRelationship                                         ]
[   0: not met                                             ]
[   1: met in Randall's Second Event                       ]
[   2: Has seen helping Randall seduce Brad into having sex]

RandallBradRelationship is a number that varies.
CocoRelationship is a number that varies.
BunnySexChoice is a number that varies.

Table of GameEventIDs (continued)
Object	Name
Hanging out on the Green	"Hanging out on the Green"

Hanging out on the Green is a situation.
Hanging out on the Green is inactive.
The sarea of Hanging out on the Green is "Campus".

when play begins:
	add Hanging out on the Green to badspots of guy;
	add Hanging out on the Green to badspots of furry;

instead of going to College Walkway West while (Hanging out on the Green is active and Hanging out on the Green is not resolved and LastCampusWalkin - turns > 0 and StewartRelationship > 0 and RandallBradRelationship < 1 and a random chance of 1 in 3 succeeds):
	move player to College Walkway West;
	FirstRandallEvent;

instead of resolving Hanging out on the Green:
	move player to College Walkway West;
	FirstRandallEvent;

to FirstRandallEvent:
	say "     When you start making your way through the college's west walkway you notice a familiar face. Lounging on the lawn of the campus is none other than Stewart, your harpy boy friend. But he's not the only one laying there. No, rather lying next to him is a black furred bunny boy who you're pretty sure isn't one of those many bunny jocks you've seen. Said lagomorph, upon closer examination, is wearing a pair of tight fitting jeans and a simple dark blue tank top. From your perusal of his figure you tell that if he wanted to, he could probably run track or basketball though. Overall, you think he's a very nice-looking bunny boy.";
	say "     You're soon drawn out of your thoughts though when you realize that the two are talking about something. 'Randall, if you didn't sleep around with loads of guys left and right, I'd think you actually want to date Brad.' The harpy boy scoffs. The other male gives his friend an odd look which causes Stewart to groan out loud. 'Really? You actually want to be in a relationship with him?' he asks curiously. 'I mean... Brad's really nice and I knew him before this whole apocalypse situation...' Randall trails off, his voice a nice smooth sound. Stewart sighs before pushing himself up so that he's sitting now. 'Alright, what's your plan for getting your guy?' he questions his friend. The bunny boy looks at the harpy in shock.";
	WaitLineBreak;
	say "     'You don't mind me going after him?' Randall asks. Stewart shakes his head with a shrug of his shoulders. 'You don't throw around the word date haphazardly so I trust that you're serious about this, so, what's your plan?' he questions. The bunny boy switches to a sitting position as well before he speaks up himself. 'I was going to spy on his girlfriend to see if there's a reason she's not giving him sex,' he explains. The harpy raises a brow at his friend, prompting further explanation. 'With me being a bunny like Brad, I can tell he hasn't had sex in a long while and it's driving him crazy. We bunnies can't go that long without jumping on the nearest available and willing person, sometimes not willing though...' he trails off. Stewart sighs before nodding his head. 'Alright, I guess that's a good start,' the male says before he spots you looking at them. He quickly waves you over.";
	say "     'Hey! Nice to see you here!' the harpy boy says with a smile. Randall looks at his friend with a curious look. 'Oh, yeah. Randall this is the person I told you I ran into a while back,' he says, gesturing to you. The bunny boy 'ahh's before standing up and holding out his hand. You promptly take it and give it a firm shake. [if player is male and cunts of player < 1]As this is happening he seems to give your clothed dick a lusty look before promptly focusing back on you. [end if]'Nice to meet ya, I'm Randall,' he says, shaking your hand back. You smile at him and let the guy know it's great to meet him. Stewart quickly looks towards the direction of the belltower when it begins to ring, causing him to nudge the bunny. 'Come on, we're late for class,' he says, causing the other to swear as the two run towards Lecture Street. You on the other hand get back to what you were doing.";
	now RandallBradRelationship is 1;
	now Hanging out on the Green is resolved;
	now Bunny Eavesdropper is active;
	now PlayerMet of Randall is true;

Table of GameEventIDs (continued)
Object	Name
Bunny Eavesdropper	"Bunny Eavesdropper"

Bunny Eavesdropper is a situation.
Bunny Eavesdropper is inactive.
The sarea of Bunny Eavesdropper is "Campus".

when play begins:
	add Bunny Eavesdropper to badspots of guy;
	add Bunny Eavesdropper to badspots of furry;

instead of going to College Walkway West while (Bunny Eavesdropper is active and Bunny Eavesdropper is not resolved and LastCampusWalkin - turns > 0 and RandallBradRelationship is 1 and a random chance of 1 in 3 succeeds):
	move player to College Belltower;
	SecondRandallEvent;

instead of resolving Bunny Eavesdropper:
	move player to College Belltower;
	SecondRandallEvent;

to SecondRandallEvent:
	say "     Upon reaching the college belltower you spot a familiar face hiding behind a bush. It's none other than the bunny boy you met earlier via Stewart. Randall appears to be spying on someone, specifically a female lizard-morph and a female wolf-morph. You walk over to him but before you can speak he yanks you down behind the bush. 'Shhh! I'm eavesdropping on Brad's girlfriend, Jennifer. She's the reptile,' he mutters, hushing you before you can say anything. Shrugging your shoulders, you decide you may as well listen in as you have nothing better to do. So, instead you hone in your ears on the two females, aiming to spy just like your friend.";
	say "     'So, Jen, how long are you going to deny Brad sex?' the wolf asks, a curious tone coloring her voice. The sound of laughter that comes from the lizard makes you shiver in disgust but you soldier on and continue to listen. 'Not for a long while, not until he begs me to let him fuck me,' Jennifer says, her voice a snooty nasal-like noise. Upon closer examination of her friends face, it appears she doesn't approve of the decision, it being made even more obvious when she speaks. 'You do know he's going to snap sooner or later. If he's anything like my boyfriend it's not a bright idea to manipulate him like that for a long period of time,' she says hesitantly.";
	WaitLineBreak;
	say "     Jennifer however just sneers at her friend before speaking up. 'So? I want him to be waiting on me hand and foot and refusing sex is one way to go about it,' the girl says. A flash of disgust shows up on the female's face before it's quickly hidden. She makes a quick comment about being late for class which convinces Jen to leave. However, instead of heading off to Lecture Street, the wolf makes a pointed movement towards the two of you in the bushes, making it clear that you've been found out. When she reaches you, the female raises a brow and gives an interested look. With her this close to the two of you, you can get a better look at her. To your utter surprise, she's a chocolate labrador, although it would be more accurate to call her a chocolate wolf due to her lupine features. Before you can continue to observe, she speaks up.";
	say "     'So... Randall, I see you heard everything,' the girl says, crossing her arms and looking intrigued at him. This causes the bunny boy to chuckle nervously and rub the back of his head. 'Yeah... what of it, Coco?' he asks sheepishly, clearly knowing the wolf. 'Oh come off it I know you're interested in Brad. Are you going to do anything about it?' she questions. The male sighs before standing up. 'I want to make him mine,' he says firmly. That appears to be what the chocolate wolf wanted as she smiles victoriously before nodding. 'Good! I have a plan then. Normally after Brad's physics class he meets up with Jen but I can distract her so you can... seduce him,' she says. Randall's shocked for a moment before he nods at the plan. However, after that they get further into planning, causing you to shrug and leave them to their plotting.";
	now RandallBradRelationship is 2;
	now CocoRelationship is 1;
	now Bunny Eavesdropper is resolved;
	now Operation Horny Bunny is active;

Table of GameEventIDs (continued)
Object	Name
Operation Horny Bunny	"Operation Horny Bunny"

Operation Horny Bunny is a situation.
Operation Horny Bunny is inactive.
The sarea of Operation Horny Bunny is "Campus".

when play begins:
	add Operation Horny Bunny to badspots of guy;
	add Operation Horny Bunny to badspots of furry;

instead of going to Lecture Street while (Operation Horny Bunny is active and Operation Horny Bunny is not resolved and LastCampusWalkin - turns > 0 and RandallBradRelationship is 2 and a random chance of 1 in 3 succeeds):
	move player to College Belltower;
	ThirdRandallEvent;

instead of resolving Operation Horny Bunny:
	move player to College Belltower;
	ThirdRandallEvent;

to ThirdRandallEvent:
	say "     On your way to the street that held all the lecture buildings you spot two familiar faces. The first is Randall who's looking rather nervous and the other is Coco who's just rolling her eyes. She sees you rather quickly, waving you over promptly. When you reach them, you ask her what's going on. 'Bunny boy here is having a nervous breakdown about today's plan. I'm surprised because he's usually a cockslut, at least that's the word on campus,' the chocolate wolf says. The lapine male groans. 'Yeah but this is a guy I actually like,' he says, but whatever the female was going to reply with was stopped when people started to file out. Soon after that she located Jennifer and walked over to distract her. Seeing the bunny boy still hesitant, you give him a shove in the direction of the lecture building. When you do this, something pops in your head.";
	say "     [bold type]Do you want to spy on Randall and Brad?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Hot bunny on bunny sex, why not!?";
	say "     ([link]N[as]n[end link]) - No, this is something you should leave to Randall, and Randall alone.";
	if player consents:
		say "     Intrigued, you make your way into the lecture hall and hide yourself in the back row. As soon as you do this, you catch the beginning of a conversation. 'Hey there Brad...' Randall's voice trails off. You direct your attention to where the origin of the sounds come from and see the bunny boy talking with a bunny jock who's wearing a tank top with his basketball shorts. It is very clear that he's extremely horny if the thick and clear bulge in his pants say anything. The basketball player looks up at him with a curious look. 'Oh, hey... you're Randall right?' he asks, having put away his textbooks. Suddenly the buff male is set upon by the bunny boy who grabs ahold of his huge dick. Brad lets out a groan of pleasure mixed with a whimper.";
		say "     'Would you like some help with that?' Randall asks sultrily. The bunny jock visibly gulps, trying to resist the urge to possibly bend the other over the desk and fuck him brutally. 'I-I can't... my girlfriend,' he weakly responds. That however doesn't stop your friend who slips to his knees and yanks down the male's shorts. The almost foot long cock slaps against the bunny boy's cheek, leaving a trail of precum on it. When Randall licks up and down the big rod you can see that Brad's resistance is disappearing bit by bit. It isn't until the other opens his mouth wide and impales it on the large dick, deepthroating it good that he loses it completely. The basketball player groans loudly and softly grabs a hold of Randall's ears before humping against his face.";
		WaitLineBreak;
		say "     The room is filled with the sound of slurping as Brad begins to thrust in and out Randall's throat, eagerly facefucking him. While this is happening you're wondering how the hell Coco is keeping Jennifer distracted for so long. Nevertheless you continue to stare on as your friend takes the throat rape eagerly, occasionally slipping his tongue out to lick at the bunny jock's balls whenever the male is balls deep in his mouth. However, it's very clear that Brad hasn't had any sex in a while by how much he is coming apart only with a blowjob. He's moaning wantonly like a slut, clearly enjoying Randall's tight throat.";
		say "     However, because of not having sex in a while, it doesn't take much for the basketball player to cum. When he does, it's in such large amounts that it starts to spill out of the bunny boy's mouth. Even then, Brad pulls out and continues to shoot, but this time on Randall's face, coating it in jizz. When the male's done, his partner takes his cock in his mouth, proceeding to clean him off before letting it come out with a pop. 'Fuck dude, that was brilliant,' the bunny jock mutters. However he quickly notices that he's later for his next class. 'Shit! Maybe we could do this again some other time?' he asks before running off. Randall just sits there in bliss with a happy smile as he pushes the cum coating him into his mouth. Deciding to leave the boy on his own, you head off, making sure to look for him later.";
		now Resolution of Operation Horny Bunny is 1; [watched them fuck]
	else:
		say "     You shake your head and decide against it. You'd rather not interrupt a moment for the bunny boy himself. Instead you turn and make your way elsewhere. Perhaps you'll see them later.";
		now Resolution of Operation Horny Bunny is 2; [didn't watch them fuck]
	now RandallBradRelationship is 3;
	now Operation Horny Bunny is resolved;

instead of going northeast from College Walkway Northeast while RandallBradRelationship is 3:
	say "     Upon entering the library you notice a familiar pair of bunnies talking next to a bookshelf. Randall appears to have a frustrated look on his face whereas Brad looks to be having an existential crisis. 'Come on Brad, you should leave her,' the bunny boy begs. The jock, who still appears to be having no clue what to do, speaks up. 'But she's my girlfriend,' he tries countering. However, your friend immediately bites back with an argument. 'Girlfriend?! The chick who's been blue-balling you and trying to manipulate you for the past two-three weeks?!' he quietly yells. That prompts a whine of protest from the bun that Randall is trying to seduce. It's very clear that he agrees with the shorter boy's statement but still appears hesitant.";
	say "     The bunny boy then decides to make a dirty move, as you see him slip his paw into Brad's shorts, grasping a hold of his slowly hardening cock. 'Come on, just think about it. You know I'll take care of you,' he mutters, starting to plant kisses on the jock's neck. Said male lets out a groan of appreciation before his resistance finally crumbles. 'F-fine,' the basketball player says, causing Randall to cheer before giving his new boyfriend a big sloppy kiss on the lips. After that the conversation dies down to your friend telling Brad it'd be best for him to move in with the bunny boy as he does currently live with Jen. The jock sighs and nods at that, the two of them heading off to the Dorms to start moving everything.";
	now RandallBradRelationship is 4;
	now New Roommates is active;

Table of GameEventIDs (continued)
Object	Name
New Roommates	"New Roommates"

New Roommates is a situation.
New Roommates is inactive.
The sarea of New Roommates is "Campus".

when play begins:
	add New Roommates to badspots of guy;
	add New Roommates to badspots of furry;

instead of going to Dorm Street while (New Roommates is active and New Roommates is not resolved and LastCampusWalkin - turns > 0 and RandallBradRelationship is 4 and a random chance of 1 in 3 succeeds):
	move player to Dorm Street;
	FourthRandallEvent;

instead of resolving New Roommates:
	move player to Dorm Street;
	FourthRandallEvent;

to FourthRandallEvent:
	say "     When you make your way to Dorm Street out of the corner of your eye you catch something familiar. Making your way to it, you come upon a window and through that window are two faces you've seen before, your bunny boy friend and his jock boyfriend. They're currently moving what you assume to be Brad's stuff into Randall's room. You figure it's his things as it consists of a basketball, some trophies, and a box filled with jockstraps, shorts, and wife beaters. The scene before you is rather domestic as the smaller male is happily moving aside half of his clothes in his dresser, making room for his boyfriend's stuff. They trade smiles towards each other that show you that despite the fact that the relationship was built on bunny boy seducing the jock, they do care for each other. However, you see Randall moving his hand down to Brad's crotch.";
	say "     [bold type]Do you want to watch what's going to happen?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Hot gay sex, why not!?";
	say "     ([link]N[as]n[end link]) - No, you'd rather not get caught spying on two guys having sex.";
	if player consents:
		say "     With a push of his padded paws, Randall shoves Brad back onto their bed. From there the bunny boy hooks his digits under the waistband and yanks the shorts down. His boyfriend's hard foot long cock pops out and smacks the smaller male on the face. Quickly your friend draws his attention to the jock's large furry balls and promptly nuzzles his bunny nose into it. He groans and moans as he inhales his athletic counterpart's musky scent before lavishing them with his tongue. Brad groans out loud, squirming on the bed. You put your ear against the window and can hear them talk. 'Fuck Randall, worship those balls. Jen was never as attentive as you,' he moans out loud. That appears to push the bunny boy on, licking and slurping at his boyfriend's sack with gusto.";
		say "     Eager to go further, the bunny takes his tongue and drags it up the massive length, enjoying the moans that he gets out of Brad. Once he gets to the tip, he takes it into his mouth and slowly goes down on it. Seconds later, he's deepthroating the large cock, something that makes the jock stare blissfully at him. 'God, you're so great at this. I can still hardly believe you can go all the way,' he groans. You can see the cocksucking bunny look up and practically beg with his eyes for his throat to be fucked. His boyfriend obliges by grabbing his ears and using them as handles to thrust in and out of his throat with an eager snapping of the male's hips. From the window you can hear the sloshing sounds of it, something that makes your cheeks heat up.";
		WaitLineBreak;
		say "     This continues for a good ten minutes but Randall is quickly shoved off and promptly picked up before he is thrown onto the bed, back first. Brad quickly yanks off his boyfriend's pants, exposing his rear to the outside world, and yanks him to the edge of the bed. The male then quickly positions himself at the entrance of his lover's hole and slowly pushes in. The bunny boy lets out a moan of pleasure as he's dryly entered, his entrance quivering around the foot long cock that's going in him. It doesn't take long for Brad to bottom out, his heavy balls resting against Randall's ass. 'Fuck, don't wait on me...' The smaller male moans and groans on the thick cock, pushing himself against it. The jock happily follows his boyfriend's request and pulls out before slamming back in, quickly started a fast pace to fucking him.";
		say "     Sounds of heavy balls slapping against bunny boy's cheeks fill the room, something that you can clearly hear from the window you're watching at. Randall is moaning like a wanton whore at the moment, showing how much he loves dick. By now he's reached his paw down to his smaller, yet still big dick and has started to masturbate. Brad on the other hand is grunting as he thrusts into his boyfriend. The two of their sounds get louder and louder, signifying that they're nearing orgasm. It isn't until the bunny jock lets out a loud groan and slams into his lover hard that they both cum. Randall shoots his load all over his body, some of it landing in his mouth whereas Brad dumps his jizz into your friend's hole.";
		WaitLineBreak;
		say "     Seconds later Randall catches you in the corner of his eye and smiles, waving at you from his blissed out position on the bed. That causes Brad to turn towards you and his eyes widen. With a grunt, the bunny boy gets off the bed, cum leaking out of his hole as he wanders over to the window, opening it wide. 'Hey there! Did you like the show?' he asks with a large grin. You nod at him with matching emotions. 'Good! If you want to visit us later and... maybe have some fun together then come see us in the morning. If you can't tell, my room's to the southwest of the entrance to the building,' he tells you. You let out an assent of agreement and head off on your own, hearing an eep as the window shuts.";
		now Resolution of New Roommates is 1; [watched them fuck]
	else:
		say "     You shake your head. You're in a public place and would rather not be spotted spying on a couple having sex. Instead you turn and head back the way you came, maybe you'll visit later.";
		now Resolution of New Roommates is 2; [didn't watch them fuck]
	now RandallBradRelationship is 5;
	now New Roommates is resolved;
	move Randall to Randall's Room;
	move Brad to Randall's Room;
	change southwest exit of Tenvale College Male Dorms to Randall's Room;
	change northeast exit of Randall's Room to Tenvale College Male Dorms;
	now PlayerMet of Brad is true;

[Room Declaration]

Table of GameRoomIDs (continued)
Object	Name
Randall's Room	"Randall's Room"

Randall's Room is a room.
The description of Randall's room is "[randallsroomdesc]".

to say randallsroomdesc:
	say "     Getting a better look of the room you notice that the two of them have moved in fully by now. It's a bit hard to tell at first due to both of them being sports players but upon closer examination it's obvious. The first part to note are the posters on the wall. For Randall, he seems to favor track and lewd-ish male model posters, whereas Brad favors basketball themed ones. The next difference is the trophies, which requires you to look a lot closer. At first glance they look the same, but the style of the awards differ slightly. For example, the smaller bunny's are topped with a pair of running shoes but the bigger bun's is crowned with a basketball. Besides that, everything else is mixed. They appear to share a dresser, a computer, even a bed, which you expected the last one considering Randall's insatiable sexual appetite. After looking around you notice Brad playing with his basketball on the bed and the smaller bunny messing with the computer. ";

Table of GameCharacterIDs (continued)
Object	Name
Randall	"Randall"

Randall is a man.
[physical details as of game start]
Humanity of Randall is 80. [lives at the campus]
ScaleValue of Randall is 3. [human size]
Cocks of Randall is 1. [has a cock]
Cock Length of Randall is 8. [has an 8 inch cock]
Cock Width of Randall is 4. [size of balls]
Testes of Randall is 2. [has a pair of balls]
Cunts of Randall is 0. [no vagina]
Cunt Length of Randall is 0. [Doesn't have a vagina to get stretched]
Cunt Width of Randall is 0. [Doesn't have a vagina to get stretched]
Breasts of Randall is 2. [Has two normal nipples]
Breast Size of Randall is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
PlayerMet of Randall is false.
PlayerRomanced of Randall is false.
PlayerFriended of Randall is false.
PlayerControlled of Randall is false.
PlayerFucked of Randall is false.
OralVirgin of Randall is false.
Virgin of Randall is false.
AnalVirgin of Randall is false.
PenileVirgin of Randall is true.
SexuallyExperienced of Randall is true.
The description of Randall is "[RandallDesc]".
The conversation of Randall is { "<This is nothing but a placeholder!>" }.
The scent of Randall is "     Randall gives off the smell of sex and sweat, a scent that you admit fits him considering the bun's insatiable appetite when it comes to sex.".

to say RandallDesc:
	say "     The bun is rather short compared to his boyfriend, but you know that doesn't matter at all, as he has speed to back up his height. Appearance wise, he has black fur, which compliments him very well, as when you get to his head it makes it look like he has shaggy hair to match his floppy ears. To cover up his body he's wearing his usual favorite of a tank top, though this one is black. And just like always, he's wearing a pair of tight fitting jeans, more than likely to tease Brad and probably entice him into fucking his ass. A few seconds later Randall looks over at you, apparently having noticed you staring at him and he waggles his brows at you.";

instead of conversing the Randall:
	if RandallBradRelationship < 5: [should not be here yet]
		say "     ERROR: Randall shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [RandallBradRelationship]";
	else:
		say "     Figuring that you might have something to ask the bun, you approach him as he's on the computer. He turns to you, with an inquisitive look on his face. 'What's up?' he asks you.";
		say "[RandallTalkMenu]";

to say RandallTalkMenu:
	LineBreak;
	say "What do you wish to talk to the bun about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sports";
	now sortorder entry is 1;
	now description entry is "Ask him about what he does for sports.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Relationship";
	now sortorder entry is 2;
	now description entry is "Ask him how the relationship is going";
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
				if (nam is "Sports"):
					say "[RandallSports]";
				if (nam is "Relationship"):
					say "[RandallRelationship]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Realizing you don't actually have anything to say, you shrug and apologize, letting him get back to work.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say RandallSports:
	say "     Mentioning sports the bun looks up and chuckles. 'Well, I run track for the most part,' Randall says, sitting up in his chair. Tilting your head at him you ask the guy what he means by 'for the most part'. 'Well, recently with me having started dating Brad, I've been noticed by the basketball team. They ask me to help out and act as a reserve from time to time,' he says with a shrug. You look at him with interest and make a comment that it sounds like a lot of work. 'Not really, the coaches make sure that I don't get too stressed, after all it wouldn't do good for one of their players to get burned out,' the bun says with a chuckle.";
	say "     You ask him if he enjoys it all, which prompts a happy nod from the bun. 'Yeah, it's rather fun, it lets me exercise plus, I get to hang out with Brad during his basketball practice,' Randall says with a lewd look that makes you simply roll your eyes. But you then give him a smile and say that you're glad he's enjoying himself at college. 'Mhm! Everything's much better now that me and the big guy are together, thanks to your and Coco's help,' he says with a returning grin. You tell him it was no problem before letting him return to work.";

to say RandallRelationship:
	say "     You're a tad bit curious as to how the two's relationship is going at the moment. The bun quirks his head in your direction and lets out a happy hum. 'Well the sex is amazing and I have a wonderful person to share my life with and learn about,' Randall says, looking in Brad's direction, chuckling when he sees an embarrassed look on the bunny jock's face. You smile at the male, happy that everything's going good. Though your friend does frown a second later. 'There are a few issues with his ex girlfriend but you'd do better asking Brad about that than me,' he says with a shrug. You give him a slightly worried look but then stop, figuring that it was bound to happen since Randall did more or less take the jock from the lizard woman. Figuring you've exhausted this line of conversation you let the guy return to work.";

instead of fucking Randall:
	if (lastfuck of Randall - turns < 2): [You sexed the couple in the last 6 hours]
		say "     As you approach Randall with the intent on sexing him up, he turns to you and chuckles. '[if cocks of player < 1]As fun as it is watching you two,[else]As much as I am a cockslut,[end if] me and Brad are both exhausted from last time,' the bun says this with a smile and a brow wag. His boyfriend on the other hand blushes, clearly not used to the male's openness yet.";
	if cocks of player < 1:
		say "     When you walk up to the bunny and proposition him for sex he gives you an odd look before chuckling. 'You do realize I'm a cockhound right my friend?' he asks with a deadpan stare after he finishes laughing. However before you can get your hopes up he continues. 'Of course, that doesn't mean that Brad over there can't play with you and I watch,' the bun says with a smirk. You do like where this idea is going.";
		now BunnySexChoice is 1; [Has Talked to Randall]
		say "[BunnyCoupleSexMenu]";
	else:
		say "     When you walk up to the bunny and proposition him for sex, he immediately gives you a sultry look. 'Oh, you want a taste of the bun now do you?' he asks you with a waggle of his eyebrows which throws you off for a second. He glances over to Brad with a smirk before looking back at you. 'I'm sure if you want to bring Brad in on this he'd love to oblige,' Randall says with a pointed look towards his boyfriend.";
		now BunnySexChoice is 1; [Has Talked To Randall]
		say "[BunnyCoupleSexMenu]";

to say BunnyCoupleSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck Randall's Ass";
		now sortorder entry is 1;
		now description entry is "Take the bun's hole for a ride.";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Chain Fuck";
		now sortorder entry is 2;
		now description entry is "Fuck the bun while Brad takes your hole.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Tease The Jock";
	now sortorder entry is 3;
	now description entry is "Suck on Brad's Cock";
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
				if (nam is "Fuck Randall's Ass"):
					say "[BunnyCoupleSex1]";
				if (nam is "Chain Fuck"):
					say "[BunnyCoupleSex2]";
				if (nam is "Tease The Jock"):
					say "[BunnyCoupleSex3]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				if BunnySexChoice is 1:
					say "     You think about your options before shaking your head and apologizing to the bun. He gives you a slightly frustrated look that's made obvious why with his hard-on but he's clearly okay with it.";
					now BunnySexChoice is 0;
				if BunnySexChoice is 2:
					say "     You look up and down at the bunny jock and then over at his boyfriend before sighing and shaking your head and telling Brad that you're not actually interested at the moment. Understandably this frustrates him sexually but he sighs and says okay.";
					now BunnySexChoice is 0;
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say BunnyCoupleSex1:
	if BunnySexChoice is 1:
		say "     Getting a good idea of what you want from this encounter, you yank the bun up from the chair and pull him into a sloppy kiss, causing Randall's eyes to widen before he promptly smirks and returns it. On the other end of the room though you hear a gasp and the prompt sound of a basketball hitting the ground and bouncing away. Your friend pulls away with a trail of saliva connecting your mouths before it disconnects and he speaks. 'You know normally Brad would punch someone for being so bold, but I think, he liked that, didn't you my studly bunny?' he asks with a provocative tone in his boyfriend's direction. All you hear is an affirmative tone as you look at Brad as he reaches a paw into his basketball shorts.";
	else if BunnySexChoice is 2:
		say "     You have a pretty good idea of what you want to do, so you stalk your way over, away from Brad and towards his boyfriend instead, planning on teasing him instead, telling him to stay put. Randall gains a smirk on his face as you say this and stands up approaches you as well, the two of you meeting behind his chair. You pull him into a rough kiss, causing the bun to groan and before promptly returning it. Behind you, you hear a gasp and the sound of the basketball that the jock had failed to catch to be pushed off the bed, causing it to bounce on the floor. Seconds later your friend pulls away and has a mischievous glint in his eyes. 'That was an interesting move, I bet Brad liked it, didn't you my sexy bunny?' he asks with a provocative tone towards his lover. All you hear in return is an affirmative tone as you look behind you and see Brad reach a paw into his basketball shorts.";
	say "     Deciding to give the jock a show, you move your hands towards the bun's ass before groping hard, eliciting a moan from him. 'Fuck, I'm wearing too much for this,' he groans, as he starts removing his clothing, causing you to remove your attire as well if you had any, watching him if you don't. Once Randall's naked you trail an appreciative look up and down his figure, deeming it very fuckable, which definitely works since that's what you're going to be doing to him. First and foremost though you have to get him randy and ready though, pun not intended. Pulling him close, you move one of your hands from his ass cheek to his pucker, circling it around before you quickly push inward, evoking a groan from your partner.";
	WaitLineBreak;
	say "     You hear Brad make a grunt before speaking up, causing you to turn towards him, seeing that his hard cock is fully out of his pants now and he's stroking it. 'Bend him over and spread his cheeks, I want to see his hole as you finger him and open him up,' the bunny jock practically demands. This order practically causes Randall to instantly comply without your help, spreading himself wide, revealing his pucker to his boyfriend, the entire scenario obviously turning him on. Deciding that if the bunny jock wants a show you should give him one, you spit on the bun's hole before using that as lube to push your finger back in, adding another finger when you figure that he can take it.";
	say "     Once the second digit's in you begin to scissor his hole, opening it up so that he can take you. By the groans and moans from both lagomorphs you can tell they're enjoying it, you feel like you should move forward so you could join them in the fun. Though before you can continue that thought, a bottle is tossed in your direction, from Brad's general vicinity. 'Wouldn't want you to go in dry, could possibly hurt him,' the bunny jock says with a grunt, as he slowly jacks himself off. With a shrug you stand up, and pop off the cap of the lube and lather yourself up before putting the lid back on. Once you're ready you position yourself at the bun's entrance with him bent over the back of the chair, with a hand on his own cock. With one swift push you ease yourself into him.";
	WaitLineBreak;
	say "     Your action causes Randall to gasp out in both pain and pleasure, and quickly start moaning once you're fully sheathed in him. 'Do you enjoy their cock in you my little bun?' Brad growls from his spot on the bed. 'Fuck yes, but I bet you're enjoying the show, aren't you, you stud,' he pants, pushing himself up against you. Taking that as a sign to start moving, you pull back before slamming all the way in, causing your skin to slap against your partner's. Despite knowing how sexually active the male was before his boyfriend, he's still pretty tight, which causes you to groan and moan as you fuck him, the pressure of his hole practically massaging your cock.";
	say "     With the tightness you don't believe you'll last long, and it's very true. What doesn't help your ability to hold on is when minutes later, after managing to hit his prostrate, Randall groans and spills his seed all over the back of the chair. This causes his hole to tighten even further and grip at your cock, making you moan loudly before slamming into him one more time, releasing your load into him and slumping over his back. You're not the final one to reach their climax however though, you hear a 'Fuck!' from behind you as what's clearly Brad sprays his cum all over his hand, chest and face. If you were looking you'd be rather surprised at the amount he came.";
	WaitLineBreak;
	say "     The three of you recover for a few seconds before Randall eases your cock out of him and clambers on over to where Brad is, happily licking all the cum he spilled off of him before promptly kissing him, the two of them moaning. Realizing that the two are probably about to go at it again, with them having the stamina of bunnies, you get yourself cleaned up and presentable. After that you decide that it'd be best to leave the couple alone, as you yourself are exhausted after your go, so you make your way out of the room, as the sounds of moans and groans start to fill the area.";
	move player to Tenvale College Male Dorms;
	now lastfuck of Randall is turns;
	now BunnySexChoice is 0;

to say BunnyCoupleSex2:
	if BunnySexChoice is 1:
		say "     Getting a good idea of what you want from this encounter, you yank the bun up from the chair and pull him into a sloppy kiss, causing Randall's eyes to widen before he promptly smirks and returns it. On the other end of the room though you hear a gasp and the prompt sound of a basketball hitting the ground and bouncing away. You then pull away and smirk towards the bunny jock and wiggles your ass in his direction, asking him if he wants to join in the fun, causing his eyes to glaze over before he promptly scrambles to his feet. Once off the bed he rushes over and pulls the two of you into a three way tongue filled kiss, that causes the three of you to moan and reach for each other, groping at each other's bodies.";
	else if BunnySexChoice is 2:
		say "     You get a pretty good idea of what you want and how to get it, so you yank the bunny jock up and into a bold kiss, that causes him to let out a gasp of shock. It turns into an eep when you turn around and grind your ass up against his tented shorts, but that embarrassed sound doesn't last long as it promptly turns into a moan. Randall however, chuckles at his boyfriend's situation, but you aren't leaving the bun alone as you promptly gesture over to him. You tell him that your cock wont take care of itself while you're getting railed by Brad after all. The bun's light chuckles turn into outright laughter before he nods and strides over, pulling the three of you into a sloppy three-way tongue-filled kiss, making all of you moan and prompting you guys to grope at each other's bodies.";
	say "     It's Brad who quickly decides that everyone's wearing too much clothing. So Randall and him quickly strip themselves of their clothes, causing you to do so as well if you are wearing any but if not you just watch them, admiring their bodies as they get naked. Once they're free of their attire, Randall is suddenly tossed onto the bed and you're pushed onto him, your lips clashing as they meet. When this happens, you feel something wet at your pucker before it quickly goes in, causing you to moan into the kiss you're currently in with the bun. You can't exactly see but you are pretty sure that Brad is currently rimming you, if the sensations are telling you anything.";
	WaitLineBreak;
	say "     Suddenly though the bun in front of you flips onto his back and inches his face closer towards your crotch. Seconds later you feel a warm mouth surround your cock and a tongue promptly swirling around the head, causing you to moan loudly. Of course, you're not left taskless as in front of your face is Randall's own hardon. You figure why not as you need something to focus on from the ministrations on your hole and dick so as not to cum early. So, you quickly take the length into your mouth, shuddering in pleasure as your friend moans around your cock. Eager to make your friend writhe, you lick and suck at the tip before going further down, causing him to groan loudly, which just makes it worse for you. However, Randall just takes that as a challenge to do the exact same to you.";
	say "     Brad on the other hand, who's been rimming you for the entire time that this has been happening suddenly stops and seconds later you feel the warm mouth leave your cock. Right after that you are suddenly yanked of the bed and turned towards the jock bunny who has a semi-disappointed look on his face. 'Now you two, don't make the other cum before I get the chance to finish,' he says with a half-frown, half-smirk. Randall who's looking at the two of you upside down smiles mischievously before jumping up and positioning himself up against the wall on the bed before speaking. 'Hey stud, lube yourself up for our friend here and toss them the bottle,' the bun says, wiggling his butt before spreading his cheeks.";
	WaitLineBreak;
	say "     The bunny jock says nothing as he moves towards the computer desk but you can see a lust filled look on his face. He kneels down and opens up a drawer, pulling out a bottle of lube before walking over to you. 'Bed,' Brad promptly orders, to which you oblige without refusal. You get up behind Randall, and you can hear the cap be popped off and a few seconds later something passed into your hand. Taking the bottle you lather up your own cock with the liquid, making sure it's nice and ready for the bun in front of you. Once ready you turn around and hand it to the bunny jock who promptly caps it and just drops it onto the floor, his cock in his other hand. Moments later you feel the blunt tip of his cock pushing up against your hole which urges you to do the same to Randall.";
	say "     In one swift movement as Brad pushes up against you and you against Randall, both of you sheathe into your sexual partner. This causes both you and your friend to let out a whorish, wanton moan of a bit of pain and a lot of pleasure. Thankfully though the bunny jock allows you a few seconds to get used to him before he starts to pull back. Figuring that this sexual position would be useless if you didn't go with the motion you follow his hips, making sure to only just keep the tip of his cock in you. Once you're just about to fall out of Randall's hole you slam back in, Brad doing the same to you, causing that same moan to emit from the bun's mouth and your own.";
	WaitLineBreak;
	say "     Once the three of you though finally get used to the motions, the real fucking gets started, with Brad's balls slapping against your cheeks and yours against Randall's. As the three of your guys' pleasure builds, you pull the bun into a sloppy kiss tongue and all, your fleshy organ seeking out his. This seems to prompt the bunny jock behind you to start licking and biting at your neck, which just causes you to groan and moan into the liplock you're in with your friend. This along with the hard cock going in and out of your hole as well as your own length ramming Randall's own pucker drives your pleasure through the roof, making your sight see stars.";
	say "     By now you're pretty sure that you are close to orgasm, same with Brad due how rough he's getting with his thrusts and bites, though thankfully not hard enough to draw blood, but enough that if the nanites didn't heal it they'd leave hickies. So, you decide to help out the bun under you and that you're kissing rather sloppily and passionately. You reach around and grasp his hard cock, and start masturbating him, feeling slick precum that appears to be leaking rather copiously from his tip. You're pretty sure if it wasn't for how you guys were positioned that Randall would be humping your hand. Thankfully, and surprisingly too, seconds later, the bun pulls back from the kiss, panting to gasp out something. 'Fuck I'm going to cum!' he groans out loud. Brad grunts the same thing a few seconds later and you're pretty sure that your own climax isn't that far away either.";
	WaitLineBreak;
	say "     With one last strong thrust, Brad buries himself balls deep into you, causing you to be sheathed all the way into Randall and all three of you moan lewdly and loudly as you guys reach your orgasms. Your hole instantly starts filling up with copious amounts of warm, hot, cum, courtesy of the bunny jock who just thoroughly fucked you. You on the other hand breed the bun your cock is lodged in and dump your load in him, letting him enjoy the sensation of containing your seed. Randall however, since he was being masturbated by you ends up shooting his jizz all over your hand and the wall that he was pushed up against, as well as his own chest, which leaves a massive mess.";
	say "     That just causes Brad to chuckle as the three of you collapse onto the bed in each other's arms. 'Welp, looks like we need to launder our sheets again and wash the wall,' he says with a dopey smile. Randall just rolls him eyes and leans into your side to look at the bunny jock. 'Yeah well, I'm pretty sure that slime likes cleaning everything for everyone. As for the walls, you act like it'd take forever,' the bun says as if this is a common occurrence. 'Well, when you seem to cum on the walls every day it does seem like that,' his boyfriend says, causing Randall to playfully smack the other before returning to just laying there. The three of you then just rest until the two of them deem it time to get up, especially the bun as he comments he does have homework to finish. That shocks though you quickly recover and make a comment about him being not all sex before standing up.";
	now lastfuck of Randall is turns;
	now BunnySexChoice is 0;

to say BunnyCoupleSex3:
	if BunnySexChoice is 1:
		say "     Getting an idea you're sure Randall would love and probably get the kick out of, you whisper it into his ear. After you tell him what you have in mind, he smirks and nods, turning in his chair to face the bed where Brad is, quickly fishing out his cock and starting to stroke it. You stalk your way over to the bunny jock and climb onto the bed where he's tossing the basketball up and down. Promptly you yank down his basketball shorts and grab ahold of his cock and start to masturbate it, moving your hand up and down on it, causing him to both eep and moan as well as miss the ball. It falls and hits the floor, bouncing away, leaving Brad staring at you with a mixed look of both shock and lust.";
	else if BunnySexChoice is 2:
		say "     Getting a mischievous idea, you drag your hand upward and trail it slowly towards the tent in Brad's basketball shorts. When you reach that bit you rub your thumb around the tip of it, dragging a moan out of the bunny jock's lips and a chuckle out of the bun behind you, which causes you to look in that direction. Randall by now has fished out his cock and is stroking it, watching you two in interest, wondering what you're going to do. So, not wanting to disappoint, you move your hand towards the band of the shorts and yank them down, revealing Brad's rather large cock that looks eager to be played with. Of course, not one to disagree, you grab ahold of it and start moving your hands up and down, slowly starting to masturbate the bunny jock's length, making him lustily moan out loud.";
	say "     Of course, the entire plan was to tease the bunny jock, not simply get handsy with his dick. So, you move agonizingly slow towards his crotch, enjoying the growing lust in his eyes. Once you get there, you take your tongue and drag it against his balls, taking in the tangy taste of sweat that appears to have built up, which isn't a surprise considering what the bunny does for a sport. Eager to make him writhe in pleasure a bit more you take one of his orbs into your mouth and start to suck on it, swirling it around it and tugging at it. Taking a brief look up you can see that he's panting and his eyes are glazed over a bit in lust, clearly your teasing's working.";
	WaitLineBreak;
	say "     Deciding to take it to the next step, you remove your mouth from his balls and instead move your tongue to the bottom of his cock. From there you start to slowly lick up his large dick, which just prompts him to groan and beg for you to hurry up. You simply back away and tell him that you'll go at your own pace and then return to where you left off and continue going up. When you reach the tip Brad is leaking copious amounts of precum, which you were able to taste on your way. You take your tongue and then swirl it around the top, managing to get a mouthful before gulping it down. However as soon as you take the tip into your mouth you lose control of the situation as the bunny jock grabs the back of your head.";
	say "     He promptly thrusts balls deep into your mouth, filling your throat with a foot of cock. You gag at the sudden intrusion but Brad groans in pleasure instead, enjoying the nice, warm, wet cavity that is your mouth. You thankfully manage to get used to it but not before the bunny jock starts to rapidly hump your face, driving his length in and out of your throat. Looking up while this happens allows you to see that your partner is lost to the pleasure that your teasing had caused as well as the current blowjob is causing. So, you just lay there as Brad roughly facefucks you, letting his balls slap heavily against your chin.";
	WaitLineBreak;
	say "     Thankfully though it appears that your teasing had drawn Brad halfway to his orgasm so it you don't have to lay there that long. Rather, a minute or so later of being practically used like a sex doll, the bunny jock slams into your mouth one last time, holding your mouth firmly against his crotch. Seconds afterwards, massive amounts of cum starts to fill your throat, giving you a necessity to constantly swallow. Behind you, you can hear Randall swear, which brings you to the assumption that he managed to reach orgasm as well by just watching his boyfriend get off and masturbating. Soon enough on your end, Brad finishes filling your stomach with his seed, which allows him to pull out and slump against the wall. 'Fuck, that was great,' he says with a mumble.";
	say "     'Glad you enjoyed that my studly bunny, I'm actually surprised our friend survived that long teasing you,' Randall says from over by the computer as you stand up. You start to clean yourself up as Brad begins to mumble something back to his boyfriend. 'Well, I didn't want to be too rude, and you did say I need to learn control my little bun,' he says tiredly, causing your friend to chuckle. You raise a brow at that, the bunny jock thinks that was control? But then again, he did manage to hold off until you got to the head of his cock, so instead you just shrug your shoulders. 'Thanks again for that, I do really appreciate it,' Brad says lazily as he pulls up his shorts. You wave it off and say it's alright and that you enjoyed it as well before letting the two get back to what they were doing.";
	now lastfuck of Randall is turns;
	now BunnySexChoice is 0;

Table of GameCharacterIDs (continued)
Object	Name
Brad	"Brad"

Brad is a man.
[physical details as of game start]
Humanity of Brad is 80. [lives at the campus]
ScaleValue of Brad is 4. [basketball player size]
Cocks of Brad is 1. [has a cock]
Cock Length of Brad is 12. [has a 12 inch cock]
Cock Width of Brad is 5. [size of balls]
Testes of Brad is 2. [has a pair of balls]
Cunts of Brad is 0. [no vagina]
Cunt Length of Brad is 0. [Doesn't have a vagina to get stretched]
Cunt Width of Brad is 0. [Doesn't have a vagina to get stretched]
Breasts of Brad is 2. [Has two normal nipples]
Breast Size of Brad is 0. [Doesn't have breasts really]
[Basic Interaction states as of game start]
PlayerMet of Brad is false.
PlayerRomanced of Brad is false.
PlayerFriended of Brad is false.
PlayerControlled of Brad is false.
PlayerFucked of Brad is false.
OralVirgin of Brad is true.
Virgin of Brad is false.
AnalVirgin of Brad is true.
PenileVirgin of Brad is false.
SexuallyExperienced of Brad is true.
The description of Brad is "[BradDesc]".
The conversation of Brad is { "<This is nothing but a placeholder!>" }.
The scent of Brad is "     Brad gives off the scent of rubber and sweat with the underlying smell of sex. For a basketball player the first two kinda make sense and the last one you attribute to his boyfriend Randall.".

to say BradDesc:
	say "     The bunny jock is pretty well built, which is to be expected considering the fact he's on the basketball team. Standing at six foot six compared to his five foot four boyfriend the bunny [if scalevalue of player < 4]towers over you making you feel rather small. [else if scalevalue of player is 4]is roughly about your size, making you see eye to eye with him. [else]is rather short himself if you do a size comparison between the two of you. [end if]Appearance wise, he has fluffy looking white fur that covers him nicely and two floppy looking ears. Hiding his stomach muscles and his impressive length is a black wife beater and a pair of basketball shorts. Soon enough though Brad notices you staring in his direction and he smiles and waves in the middle of one of his tosses, somehow managing to catch the ball after doing so.";

instead of conversing the Brad:
	if RandallBradRelationship < 5: [should not be here yet]
		say "     ERROR: Brad shouldn't be where a player can see him yet, heck you shouldn't even have access to this room yet! Please report to Rikaeus on the FS Discord and quote this tracking number for easier bugfixing: [RandallBradRelationship]";
	else:
		say "     Approaching the jock bunny on the bed, he quickly catches the basketball as it falls towards him and looks towards you with an inquisitive look, as if asking you what you want.";
		say "[BradTalkMenu]";

to say BradTalkMenu:
	LineBreak;
	say "What do you wish to talk to Brad about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Sports";
	now sortorder entry is 1;
	now description entry is "Ask him about what he does for sports.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Jennifer";
	now sortorder entry is 2;
	now description entry is "Ask him how Jennifer has reacted to the entire situation.";
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
				if (nam is "Sports"):
					say "[BradSports]";
				if (nam is "Jennifer"):
					say "[BradJennifer]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Realizing you don't have much to talk to him about, you let the bunny get back to tossing the basketball.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say BradSports:
	say "     As soon as you ask this question, the jock gives you a flat look and gestures to the object in his hands. 'I'd think it would be rather obvious what I do for sports,' he says with a chuckle. Instantly you give him an embarrassed look but swiftly change the topic slightly, asking him how his teammates have taken the new relationship. A bit surprised to have been asked that, it takes him a few seconds to answer. 'Well, to be honest they were super supportive actually,' Brad says with a sheepish scratching of the back of his head. Instantly you're rather interested in the topic, considering the bunny jock had practically cheated on his girlfriend with Randall, and you say as much to the guy.";
	say "     'Well, yeah but in their own words, [']Jenn was a bitch who purposefully withholds sex because she likes the power it gives her.['] So, apparently I dodged a bullet,' Brad says with a shrug. You refrain from pointing out that it was pretty obvious from how she behaved in fear of hurting the bunny jock's pride. 'Anyways, they seem to love Randall, as they've pulled him into the reserves for the team. So that's great, though I've told anyone that if they lay a groping paw or lust-filled eye on him they'll get an ass-kicking,' the bunny jock growls defensively, causing you to smirk. It looks like someone is possessive and by the glint of a bun's eyes over by the computer you can tell their other half likes it.";

to say BradJennifer:
	say "     As soon as you mention the jock's ex's name he frowns. 'Yeah, we've been having a few issues with her, partially because she can't seem to take the hint that she's been dumped,' Brad says with a roll of his eyes. Though the next part is said with a half-smile, half smirk. 'Thankfully the track team, the basketball team, and Coco have been helping run interference against her,' he says. You ask him to give an example, which causes him to chuckle. 'Well, when she tried interrupting a conversation between me and Randall, Coco's boyfriend tripped her into the fountain which allowed us to get away and continue talking,' he says with a grin. That prompts you yourself to laugh and say that they do seem to have it handled, leaving the bunny to his basketball throwing.";

instead of fucking Brad:
	if (lastfuck of Randall - turns < 2): [You sexed the couple in the last 6 hours]
		say "     As you walk up to Brad, with clear intent on seducing him, he stumbles and grabs the basketball before it can fall. 'Um, as much as I'd love to enjoy your company with Randall [if player is male]over there[else]watching[end if], we're still a bit exhausted from last time,' the bunny jock says with a blush on his face. You nod and back away, letting the nervous male get back to playing with his ball.";
	else if cocks of player < 1:
		say "     As you approach the bunny jock you run your hand down his thigh which makes him let out of a yelp of shock mixed with a moan. This causes him to drop his basketball and Randall to turn towards you guys and chuckle. 'Looks like our friend wants to have some fun. Of course, the cockhound that I am, I'll just be watching,' the bun says, giving you a wink. 'Well... what do you want to do?' Brad asks tentatively with a blush on his face now that he has approval from his boyfriend.";
		now BunnySexChoice is 2; [Has Talked to Brad]
		say "[BunnyCoupleSexMenu]";
	else:
		say "     As you approach the bunny jock you run your hand down his thigh, causing the male to let out a yelp of shock mixed with a moan. This causes his basketball to miss his hands when it comes down and at the same time Randall to turn and chuckle at you guys. 'Well, it looks like our friend wants to have some fun... I wouldn't mind joining you guys either,' the bun says with a sultry wink. 'What do you want to do?' Brad asks with a audible gulp and visible erection seeing that he's gotten massive approval from his boyfriend.";
		now BunnySexChoice is 2; [Has Talked to Brad]
		say "[BunnyCoupleSexMenu]";

Randall and Brad ends here.
