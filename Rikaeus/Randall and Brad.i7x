Version 1 of Randall and Brad by Rikaeus begins here.
[Version 1 - New Events]

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

Hanging out on the Green is a situation.
Hanging out on the Green is resolved.
The sarea of Hanging out on the Green is "Campus".

when play begins:
	add Hanging out on the Green to badspots of guy;
	add Hanging out on the Green to badspots of furry;

instead of going to College Walkway West while (Hanging out on the Green is not resolved and LastCampusWalkin - turns > 0 and StewartRelationship > 0 and RandallBradRelationship < 1 and a random chance of 1 in 3 succeeds):
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
	say "     'Hey! Nice to see you here!' The harpy boy says with a smile. Randall looks at his friend with a curious look. 'Oh, yeah. Randall this is the person I told you I ran into a while back,' he says, gesturing to you. The bunny boy 'ahh's before standing up and holding out his hand. You promptly take it and give it a firm shake. [if player is male and cunts of player < 1]As this is happening he seems to give your clothed dick a lusty look before promptly focusing back on you. [end if]'Nice to meet ya, I'm Randall,' he says, shaking your hand back. You smile at him and let the guy know it's great to meet him. Stewart quickly looks towards the direction of the belltower when it begins to ring, causing him to nudge the bunny. 'Come on, we're late for class,' he says, causing the other to swear as the two run towards Lecture Street. You on the other hand get back to what you were doing.";
	now RandallBradRelationship is 1;
	now Hanging out on the Green is resolved;
	now Bunny Eavesdropper is not resolved;

Bunny Eavesdropper is a situation.
Bunny Eavesdropper is resolved.
The sarea of Bunny Eavesdropper is "Campus".

when play begins:
	add Bunny Eavesdropper to badspots of guy;
	add Bunny Eavesdropper to badspots of furry;

instead of going to College Walkway West while (Bunny Eavesdropper is not resolved and LastCampusWalkin - turns > 0 and RandallBradRelationship is 1 and a random chance of 1 in 3 succeeds):
	move player to College Belltower;
	SecondRandallEvent;

instead of resolving Bunny Eavesdropper:
	move player to College Belltower;
	SecondRandallEvent;

to SecondRandallEvent:
	say "     Upon reaching the college belltower you spot a familiar face hiding behind a bush. It's none other than the bunny boy you met earlier via Stewart. Randall appears to be spying on someone, specifically a female lizard-morph and a female wolf-morph. You walk over to him but before you can speak he yanks you down behind the bush. 'Shhh! I'm eavesdropping on Brad's girlfriend, Jennifer. She's the reptile,' he mutters, hushing you before you can say anything. Shrugging your shoulders, you decide you may as well listen in as you have nothing better to do. So, instead you hone in your ears on the two females, aiming to spy just like your friend.";
	say "     'So, Jen, how long are you going to deny Brad sex?' the wolf asks, a curious tone coloring her voice. The sound of laughter that comes from the lizard makes you shiver in disgust but you soldier on and continue to listen. 'Not for a long while, not until he begs me to let him fuck me,' Jennifer says, her voice a snooty nasal-like noise. Upon closer examination of her friends face, it appears she doesn't approve of the decision, it being made even more obvious when she speaks. 'You do know he's going to snap sooner or later. If he's anything like my boyfriend it's not a bright idea to manipulate him like that for a long period of time,' she says hesitantly.";
	WaitLineBreak;
	say "     Jennifer however just sneers at her friend before speaking up. 'So? I want him to be waiting on me hand and foot and refusing sex is one way to go about it,' the girl says. A flash of disgust shows up on the female's face before it's quickly hidden. She makes a quick comment about being late for class which convinces Jen to leave. However, instead of heading off to Lecture Street, the wolf makes a pointed movement towards the two of you in the bushes, making it clear that you've been found out. When she reaches you, the female raises a brow and gives an interested look. With her this close to the two of you, you can get a better look at her. To your utter surprise she's a chocolate labrador although it'd be better to call her a chocolate wolf as she has the characteristics of a wolf rather than dog. However before you can continue to observe, she speaks up.";
	say "     'So... Randall, I see you heard everything,' the girl says, crossing her arms and looking intrigued at him. This causes the bunny boy to chuckle nervously and rub the back of his head. 'Yeah... what of it Coco?' he asks sheepishly, clearly knowing the wolf. 'Oh come off it I know you're interested in Brad? Are you going to do anything about it?' she questions. The male sighs before standing up. 'I want to make him mine,' he says firmly. That appears to be what the chocolate wolf wanted as she smiles victoriously before nodding. 'Good! I have a plan then. Normally after Brad's physics class he meets up with Jen but I can distract her so you can... seduce him,' she says. Randall's shocked for a moment before he nods at the plan. However, after that they get further into planning, causing you to shrug and leave them to their plotting.";
	now RandallBradRelationship is 2;
	now CocoRelationship is 1;
	now Bunny Eavesdropper is resolved;
	now Operation Horny Bunny is not resolved;

Operation Horny Bunny is a situation.
Operation Horny Bunny is resolved.
The sarea of Operation Horny Bunny is "Campus".

when play begins:
	add Operation Horny Bunny to badspots of guy;
	add Operation Horny Bunny to badspots of furry;

instead of going to Lecture Street while (Operation Horny Bunny is not resolved and LastCampusWalkin - turns > 0 and RandallBradRelationship is 2 and a random chance of 1 in 3 succeeds):
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
		say "     'Would you like some help with that?' Randall asks sultrily. The bunny jock visibly gulps, trying to resist the urge to possibly bend the other over the desk and fuck him brutally. 'I-I can't... my girlfriend.' He weakly responds. That however doesn't stop your friend who slips to his knees and yanks down the male's shorts. The almost foot long cock slaps against the bunny boy's cheek, leaving a trail of precum on it. When Randall licks up and down the big rod you can see that Brad's resistance is disappearing bit by bit. It isn't until the other opens his mouth wide and impales it on the large dick, deepthroating it good that he loses it completely. The basketball player groans loudly and softly grabs a hold of Randall's ears before humping against his face.";
		WaitLineBreak;
		say "     The room is filled with the sound of slurping as Brad begins to thrust in and out Randall's throat, eagerly facefucking him. While this is happening you're wondering how the hell Coco is keeping Jennifer distracted for so long. Nevertheless you continue to star on as your friend takes the throat rape eagerly, occassionally slipping his tongue out to lick at the bunny jock's balls whenever the male is balls deep in his mouth. However, it's very clear that Brad hasn't had any sex in a while by how much he is coming apart only with a blowjob. He's moaning wantonly like a slut, clearly enjoying Randall's tight throat.";
		say "     However, because of not having sex in a while, it doesn't take much for the basketball player to cum. When he does, it's in such large amounts that it starts to spill out of the bunny boy's mouth. Even then, Brad pulls out and continues to shoot, but this time on Randall's face, coating it in jizz. When the male's done, his partner takes his cock in his mouth, proceeding to clean him off before letting it out of his mouth with a pop. 'Fuck dude, that was brilliant.' The bunny jock mutters. However he quickly notices that he's later for his next class. 'Shit! Maybe we could do this again some other time?' he asks before running off. Randall just sits there in bliss with a happy smile as he pushes the cum coating him into his mouth. Deciding to leave the boy on his own, you head off, making sure to look for him later.";
	else:
		say "     You shake your head and decide against it. You'd rather not interrupt a moment for the bunny boy himself. Instead you turn and make your way elsewhere. Perhaps you'll see them later.";
	now RandallBradRelationship is 3;
	now Operation Horny Bunny is resolved;

instead of going northeast from College Walkway Northeast while RandallBradRelationship is 3:
	say "     Upon entering the library you notice a familiar pair of bunnies talking next to a bookshelf. Randall appears to have a frustrated look on his face whereas Brad looks to be having an existential crisis. 'Come on Brad, you should leave her,' the bunny boy begs. The jock, who still appears to be having no clue what to do, speaks up. 'But she's my girlfriend,' he tries countering. However, your friend immediately bites back with an argument. 'Girlfriend?! The chick who's been blue-balling you and trying to manipulate you for the past two-three weeks?!' he quietly yells. That prompts a whine of protest from the bun that Randall is trying to seduce. It's very clear that he agrees with the shorter boy's statement but still appears hesitant.";
	say "     The bunny boy then decides to make a dirty move, as you see him slip his paw into Brad's shorts, grasping a hold of his slowly hardening cock. 'Come on, just think about it. You know I'll take care of you,' he mutters, starting to plant kisses on the jock's neck. Said male lets out a groan of appreciation before his resistance finally crumbles. 'F-fine,' the basketball player says, causing Randall to cheer before giving his new boyfriend a big sloppy kiss on the lips. After that the conversation dies down to your friend telling Brad it'd be best for him to move in with the bunny boy as he does currently live with Jen. The jock sighs and nods at that, the two of them heading off to the Dorms to start moving everything.";
	now RandallBradRelationship is 4;
	now New Roommates is not resolved;

New Roommates is a situation.
New Roommates is resolved.
The sarea of New Roommates is "Campus".

when play begins:
	add New Roommates to badspots of guy;
	add New Roommates to badspots of furry;

instead of going to Dorm Street while (New Roommates is not resolved and LastCampusWalkin - turns > 0 and RandallBradRelationship is 4 and a random chance of 1 in 3 succeeds):
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
		say "     With a push of his padded paws, Randall shoves Brad back onto their bed. From there the bunny boy hooks his digits under the waistband and yanks the shorts down. His boyfriend's hard foot long cock pops out and smacks the smaller male on the face. Quickly your friend draws his attention to the jock's large furry balls and promptly nuzzles his bunny nose into it. He groans and moans as he inhales his athletic counterpart's musky scent before lavishing them with his tongue. Brad groans out loud, squirming on the bed. You put your ear against the window and can hear them talk. 'Fuck Randall, worship those balls. Jen was never as attentive as you.' He moans out loud. That appears to push the bunny boy on, licking and slurping at his boyfriend's sack with gusto.";
		say "     Eager to go further, the bunny takes his tongue and drags it up the massive length, enjoying the moans that he gets out of Brad. Once he gets to the tip, he takes it into his mouth and slowly goes down on it. Seconds later, he's deepthroating the large cock, something that makes the jock stare blissfully at him. 'God, you're so great at this. I can still hardly believe you can go all the way.' He groans. You can see the cocksucking bunny look up and practically beg with his eyes for his throat to be fucked. His boyfriend obliges by grabbing his ears and using them as handles to thrust in and out of his throat with an eager snapping of the male's hips. From the window you can hear the sloshing sounds of it, something that makes your cheeks heat up.";
		WaitLineBreak;
		say "     This continues for a good ten minutes but Randall is quickly shoved off and promptly picked up before he is thrown onto the bed, back first. Brad quickly yanks off his boyfriend's pants, exposing his rear to the outside world, and yanks him to the edge of the bed. The male then quickly positions himself at the entrance of his lover's hole and slowly pushes in. The bunny boy lets out a moan of pleasure as he's dryily entered, his entrance quivering around the foot long cock that's going in him. It doesn't take long for Brad to bottom out, his heavy balls resting against Randall's ass. 'Fuck, don't wait on me...' The smaller male moans and groans on the thick cock, pushing himself against it. The jock happily follows his boyfriend's request and pulls out before slamming back in, quickly started a fast pace to fucking him.";
		say "     Sounds of heavy balls slapping against bunny boy's cheeks fill the room, something that you can clearly hear from the window you're watching at. Randall is moaning like a wanton whore at the moment, showing how much he loves dick. By now he's reached his paw down to his smaller, yet still big dick and has started to masturbate. Brad on the other hand is grunting as he thrusts into his boyfriend. The two of their sounds get louder and louder, signifying that they're nearing orgasm. It isn't until the bunny jock lets out a loud groan and slams into his lover hard that they both cum. Randall shoots his load all over his body, some of it landing in his mouth whereas Brad dumps his jizz into your friend's hole.";
		WaitLineBreak;
		say "     Seconds later Randall catches you in the corner of his eye and smiles, waving at you from his blissed out position on the bed. That causes Brad to turn towards you and his eyes widen. With a grunt, the bunny boy gets off the bed, cum leaking out of his hole as he wanders over to the window, opening it wide. 'Hey there! Did you like the show?' he asks with a large grin. You nod at him with matching emotions. 'Good! If you want to visit us later and... maybe have some fun together then come see us in the morning. If you can't tell, my room's to the southwest of the entrance to the building,' he tells you. You let out an assent of agreement and head off on your own, hearing an eep as the window shuts.";
	else:
		say "     You shake your head. You're in a public place and would rather not be spotted spying on a couple having sex. Instead you turn and head back the way you came, maybe you'll visit later.";
	now RandallBradRelationship is 5;
	now New Roommates is resolved;

Randall and Brad ends here.
