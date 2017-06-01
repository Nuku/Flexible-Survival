Version 1 of Thomas by Wahn begins here.
[Version 1.2: Texts fixed up a bit]

"Adds an NPC named Thomas to the Flexible Survival game"

[ HP states of Thomas (localisation & gender)                        ]
[   0: not yet met                                                   ]
[   1: knows he's a herm												                     ]
[   2: open to mare sex, virgin							                         ]
[   3: had mare sex                                                  ]
[   4: invisibly pregnant by the player                              ]
[   5: visibly pregnant by the player                                ]
[  51: doesn't know he's got a pussy										             ]
[  52: has become just a regular stallion								             ]
[ 100: (removed from game)                                           ]

[ ThomasPregnancy - timer since impregnation                         ]
	
[ Libido states of Thomas (to account for his herd)                  ]
[   0: no herd                                                       ]
[   1: got Sandy                                                     ]
[   2: got Sandy & Jill                                              ]
[  10: got Felix                                                     ]
[  11: got Sandy & Felix                                             ]
[  12: got Sandy, Jill & Felix                                       ]
[  20: Felix lost                                                    ]
[  21: got Sandy, Felix lost                                         ]
[  22: got Sandy & Jill, Felix lost                                  ]

[ Lust states of Thomas (anal sex)                                   ]
[   0: no anal sex                                                   ]
[   1: open to anal sex                                              ]
[   2: had anal sex                                                  ]
		
[ ThomasQuestVar																		                 ]
[   0: quest not started                                             ]
[   1: player has to gather 5 soda bottles			                     ]
[   2: soda handed in	                                               ]
[   3: trap has been dug                                             ]
[   4: Sandy saved                                                   ]

Section 1 - Meeting Event

Centaur Gangbang is a situation. The level of Centaur Gangbang is 5.
The sarea of Centaur Gangbang is "Plains".
when play begins:
	add Centaur Gangbang to badspots of hermaphrodite;      [Thomas becomes a herm in/after this scene]
	add Centaur Gangbang to badspots of guy;                [male centaurs]

Instead of resolving a Centaur Gangbang:
	say "     Moving between the large piles of rubble left by several buildings, you hear some noise from further ahead and decide to investigate. You make your way forward carefully, ducking behind the remains of walls and anything else available, and pretty soon a small group of centaurs comes into sight. There are three stallions and a mare, with one of the males on her back, his long cock plunging in and out of her dripping pussy. The other two stand next to them, cheering their buddy on and fondling the mare's body and breasts.";
	say "     You watch the centaurs mating for a while, unnoticed in your hiding place. Then it becomes obvious that there is someone else was observing them - the clatter of rocks pulls your attention to the side, where you spot a lone human halfway up a pile of rubble. It's a black man with blond dreadlocks, clothed in little more than a pair of ragged jeans. Seems like he's been through a lot already. Looking back at the centaurs, the two bystander stallions are already galloping towards this interloper, intent expressions on their faces. The man curses and dashes off, running down the pile's incline and trying to get away. Sadly for him, centaurs on their four legs are a lot faster and they quickly catch up. After a short struggle, they carry the now dazed man back to the other centaurs between them.";
	WaitLineBreak;
	say "     'Look Raul, we caught ourselves a pervert. He was watching you fuck Sandy.' one of the centaurs tells the stallion still fucking the female. The other one holding their captive adds 'Let's give him some action - another mare to share between us would be great to have.' They quickly strip the still somewhat dazed man naked, then lower him to the ground on all fours. Pulling his cheeks aside and pushing a finger inside the black man's ass, one of the centaurs remarks 'Man, he's really tight... might be best if you go first, Raul - to get him wet, you now.'";
	say "     With s sigh and a slurping noise, Raul the centaur pulls his long horsecock out of Sandy, then walks over to the captured human. His black shaft glistens in the [if daytimer is day]sunlight[otherwise]moonlight[end if] with the mare's juices literally dripping from it. As one of his buddies takes his spot fucking the mare, he lines up his long shaft with the human's ass, then thrusts his flared head in deep.";
	say "     [line break]";
	say "     The semiconscious man's gasps as he's penetrated from behind brings you your own little daze of just watching for a moment. Can you really just stand here and watch this man get raped by those centaurs?";
	if the player consents:
		say "     Bringing a hand down to your [if cocks of player > 0]cock[otherwise if cunts of player > 0]cunt[otherwise]genderless crotch[end if] you start stroking yourself, ready to enjoy the show. And what a show it is - Raul keeps fucking the black man with deep thrusts and soon he gives a lust-filled shout as he fills the human's ass with creamy centaur cum. Almost as soon as he pulls out, the third stallion moves up and plunges his shaft in and starts thrusting...";
		say "     [line break]";
		say "     The three centaurs take turns fucking the mare and the human male, then later the two mares as their captive transforms further and further with each load of cum dumped into his hole. Soon he's fully female, sporting a nice pair of breasts and a deep pussy undoubtedly already bearing a developing foal. Finally when they are too exhausted to get their cocks up another time, the stallions herd their well-fucked mares away from the ruins, out into the wide plain where you lose sight of them.";
	otherwise:
		say "     Making your way forward behind covering bits of walls and rubble, you almost get all the way to the little herd of centaurs before one of them notices you. The third centaur nods to his fucking buddies and says 'Look - another one. I'll take care of him...'";
		challenge "Centaur Stallion";
		if fightoutcome >= 20 and fightoutcome <= 29:[lost]
			say "[LoseToCentaurs]";
		otherwise if fightoutcome >= 30:[fled]
			say "[RunFromCentaurs]";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:        [won]
			say "     With the first centaur hurt and stumbling back from you, his buddies stop thrusting into their partners and attack. The one who was fucking the mare is the first to get to you...";
			challenge "Centaur Stallion";
			if fightoutcome >= 20 and fightoutcome <= 29:[lost]
				say "[LoseToCentaurs]";
			otherwise if fightoutcome >= 30:[fled]
				say "[RunFromCentaurs]";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:      [won]
				say "     With another centaur beating a hasty retreat, only the third one - Raul - is left. He comes at you and rears up, hooves beating for your head.";
				challenge "Centaur Stallion";
				if fightoutcome >= 20 and fightoutcome <= 29:[lost]
					say "[LoseToCentaurs]";
				otherwise if fightoutcome >= 30:[fled]
					say "[RunFromCentaurs]";
				otherwise if fightoutcome >= 10 and fightoutcome <= 19:    [won]
					say "     Seeing that you have the upper hand, Raul suddenly turns around and gallops towards his buddies and Sandy. With a 'Fuck this, let's get out of here', he drives the mare out into the plains, closely followed by the other stallions.";
					say "     [line break]";
					say "     Having beaten the centaur stallions, you turn to their groggy human captive. Before you can make more than two steps towards him, a shudder runs though the naked man's body as it changes. Accompanied by the crunching noises of breaking and reforming bones, his lower body changes quite drastically, getting longer and developing four long legs until he looks half-horse, like his former captors.";
					say "     With a moan, the newly made centaur shakes his head, finally getting out of the daze a hit on the head gave him. Rubbing his head, he says 'Ouch, where am I? Those horse dudes pack quite a punch...' - then he looks down and sees his hoofed front legs - 'What the hell? My legs!' He hurriedly stands up from the ground, stumbling around on his four legs before he gets them under control. Noticing you standing nearby, he looks at you warily. 'Someone else who's gonna jump me? No wait - I think I remember you beat off those horse dudes - didn't you? So thanks, I guess. He trots towards you and gives you a hand, saying 'I'm Thomas.'";
					if graphics is true:
						project the figure of Thomas_soft_icon;
					WaitLineBreak;
					say "     The two of you talk for a while, with Thomas telling you he just wanted to get away from the city through the less densely populated and dangerous plains (or so he thought). You in turn tell him what you know about the infection, how the changes work and so on. Having gotten to know you a little bit, Thomas then suddenly broaches a sensitive topic to you. 'You know, I feel pretty strange back there' - with a nod to his hindquarters - '...I mean, stranger than I think it should. Could you - maybe - check it out? Please.'";
					say "     [line break]";
					say "     Easily convinced to help out, you walk around Thomas centaur body and - oh. Looks like in addition to the quite admirable horsecock and balls, Thomas has a mare's pussy. Looks a bit swollen and moist too - he might even be in heat.";
					say "     So how do you want to deal with this? Tell him about this further change of his body [link](1)[as]1[end link], lie about it [link](2)[as]2[end link] or maybe even start fingering him right now [link](3)[as]3[end link]?";
					now calcnumber is 0;
					while calcnumber < 1 or calcnumber > 3:
						say "Choice? (1-3)>[run paragraph on]";
						get a number;
						if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
							break;
						otherwise:
							say "Invalid choice. Type [link]1[end link] to tell him, [link]2[end link] to lie about the pussy or [link]3[end link] to finger Thomas.";
					if calcnumber is 1:[tell him]
						say "     You calmly explain to Thomas that he's a herm now, with both sets of genitalia. The black centaur is visibly distraught at the news, fruitlessly arching his upper body back in a try to see what you're talking about. 'Fuck. Fuck. Fuck! Those centaur assholes tried to make me a woman and even got halfway there. And looking like this, I can't even get away anymore.' He growls to himself. 'But I'll show those fuckers - since they made me a centaur, let's see how they'll like it when I use this bad-boy on 'their' mares.' His black horsecock emerges from its sheath, dangling below his equine body and dribbling a bit of pre-cum.";
						now hp of Thomas is 1;
						move Thomas to Dry Plains;
						now ThomasSaved is turns;
					otherwise if calcnumber is 2:[lie about it]
						say "     You tell Thomas you don't see anything special about him - well, except being a centaur stallion. Visibly relieved, Thomas says 'Ok, thanks. I guess I'm just not used to this new body.' Turning his upper body, he takes a look at his equine body. 'Damn. Looking like this, I can't even get away out of the city anymore.' He growls to himself. 'But I'll show those fuckers - since they made me a centaur, let's see how they'll like it when I use this bad-boy on 'their' mares.' His black horsecock emerges from its sheath, dangling below his equine body and dribbling a bit of pre-cum.";
						now hp of Thomas is 51;
						move Thomas to Dry Plains;
						now ThomasSaved is turns;
					otherwise:[finger him]
						say "     Stepping forward, you reach out and stroke over Thomas moist pussy lips, then push a finger in between them. That brings out a surprised gasp and moan out of the black centaur herm - followed by a kick of his hind legs. Literally kicked by a horse, you sail a fair bit through the air, then find yourself on your back, aching all over. 'So you're just another of those sex freaks after all! Fuck off, I'm out of here.' is the last you hear from Thomas as he gallops away.";
						now hp of Thomas is 100;
	increase score by 20;
	now Centaur Gangbang is resolved;
	
to say LoseToCentaurs:
	if "Submissive" is listed in feats of player:
		say "     As you fall on your ass beaten, the centaurs share a laugh and say 'Now you got a bitch of your own, Danny.' The third stallion moves to stand over you while the other two get back on the mare and the black man. With his long horsecock dangling erect right before your head, it's clear what you're supposed to do, so you eagerly take hold of it and start sucking on the flared head.";
	otherwise:
		say "     As you fall on your ass beaten, the centaurs share a laugh and say 'Now you got a bitch of your own, Danny.' The third stallion moves to stand over you while the other two get back on the mare and the black man. With his long horsecock dangling erect right before your head, it's clear what you're supposed to do, so you reluctantly take hold of it and start sucking on the flared head.";
	say "     [line break]";
	say "     Meanwhile Raul keeps fucking the black man with deep thrusts and soon he gives a lust-filled shout as he fills the human's ass with creamy centaur cum. Danny the centaur calls to him 'Wanna switch? I want to fuck that hole too and my bitch can clean you up.' Grinning, Raul agrees and pulls out of the human's ass with a wet slurping sound, then walks over to you and takes Danny's place. Presented with his long cock wet with the mare's juices and his cum, you take hold of it and start licking it all up. Grunts and moans from somewhere nearby tell you when Danny plunges his shaft into the black man's freshly fucked hole and starts thrusting...";
	WaitLineBreak;
	say "     The three centaurs take turns fucking the mare and human male, as well as getting blowjobs from you. Before too much longer, it's two mares as their other captive transforms further and further with each load of cum dumped into his hole. Soon he's fully female, sporting a nice pair of breasts and a deep pussy undoubtedly already bearing a developing foal. Finally when they are too exhausted to get their cocks up another time, the stallions have a short discussion if they should take you along too. 'Nah, we've got enough to do keeping an eye on this mare' - Raul says and slaps the former black man's equine ass and laughs as she whinnys - 'while we fully train her. Taking two and having them both run off in the night would just be stupid.' They herd their well-fucked mares away from the ruins, out into the wide plains where you lose sight of them. You're left behind, covered in centaur cum drying on your skin.";
	infect "Centaur Mare";[from the pussy juices]
	infect "Centaur Stallion";
	infect "Centaur Stallion";
	infect "Centaur Mare";
	infect "Centaur Stallion";

to say RunFromCentaurs:
	say "     Recognizing a lost fight, you just take your legs under your arms and run as fast as you can. You can only guess what happened to the man you left behind with the centaurs. Most likely, he's another breeding mare by now...";

Section 2 - Thomas, the herm centaur

Thomas is a man. The hp of Thomas is normally 0.
The description of Thomas is "[ThomasDesc]".
The conversation of Thomas is { "Mew!" }.
lastThomasTalk is a number that varies. lastThomasTalk is usually 555.		[turn-counter for talking delays (humanity restoration)]
ThomasSaved is a number that varies. ThomasSaved is usually 555.					[saved to put in a delay of at least 10 turns before Felix shows up]
SandySaved is a number that varies. SandySaved is usually 555. [saved to put in a delay of at least 10 turns before Jill shows up]
FelixSaved is a number that varies. FelixSaved is usually 555. [saved to put in a delay of at least 8 turns before Felix quest starts]
ThomasQuestVar is a number that varies. ThomasQuestVar is usually 0.			[quest stage variable]
ThomasPregnancy is a number that varies. [pregnancy progress variable - after 36 turns, the pregnancy becomes visible]
The icon of Thomas is Figure of Thomas_soft_icon.

An everyturn rule:
	if Thomas is in the Dry Plains and hp of Thomas is 4:   [4 = invisibly pregnant]
		if ThomasPregnancy is 36:
			now hp of Thomas is 5;                                  [5 = visible pregnancy]
		increase ThomasPregnancy by 1;

instead of sniffing Thomas:
	if (hp of Thomas is 52):
		say "Thomas has a pleasant animalistic smell. It's definitely male, a powerful stallion's musk.";
	otherwise:
		say "Thomas has a pleasant animalistic smell. Mostly male, like a stallion - but there's an undertone of a mare's musk.";

to say ThomasDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Thomas], PREGTIMER: [ThomasPregnancy], LIBIDO: [libido of Thomas], LUST: [lust of Thomas] <- DEBUG[line break]";
	if (hp of Thomas is 0):   [starting state]
		say "ERROR-Thomas-001A: He should not be around yet anywhere where players can see him.";
	otherwise if (hp of Thomas is 100):
		say "ERROR-Thomas-100A: He should be avoiding the player now and not be seen again.";
	otherwise:
		say "     Thomas is a good-looking black man with a muscular chest - which leads over to a strong equine body below his belly button. His lower half has a beautiful black coat shining in the [if daytimer is day]sunlight[otherwise]moonlight[end if], while his goatee and the shoulder-long dreadlocks on his head are blond - as well as is his tail. [if hp of Thomas is 52][otherwise]Below which, as you know, lies a mare's pussy in addition to his stallion cock and balls.[end if] [if hp of Thomas is 5]The belly of his equine body seems a bit fuller than before. He's carrying a foal.[end if]";
		if libido of Thomas > 0 and libido of Thomas is not 20:
			if hp of Felix is 0:[Felix among the additional centaurs]
				say "     [line break]";
				say "     Nearby but still a bit off, you see [if (libido of Thomas is 1 or libido of Thomas is 10 or libido of Thomas is 21)]another centaur[otherwise if (libido of Thomas is 2 or libido of Thomas is 11 or libido of Thomas is 22)]two more centaurs[otherwise if libido of Thomas is 12]three centaurs[end if] keeping lookout over the surrounding plain. Looks like Thomas small herd is security-conscious and ready for other infectees. Probably wise, with what you've seen in the city...";
			otherwise if libido of Thomas is not 10:[Felix standing in the room as an npc]
				say "     [line break]";
				say "     Nearby but still a bit off, you see [if (libido of Thomas is 1 or libido of Thomas is 21)]another centaur[otherwise if (libido of Thomas is 2 or libido of Thomas is 12 or libido of Thomas is 22)]two more centaurs[end if] keeping lookout over the surrounding plain. Looks like Thomas small herd is security-conscious and ready for other infectees. Probably wise, with what you've seen in the city...";

instead of conversing the Thomas:
	if (hp of Thomas is 0):                [not yet met]
		say "ERROR-Thomas-001B: He should not be around yet anywhere where players can see him.";
	otherwise if (hp of Thomas is 100):   [avoiding the player]
		say "ERROR-Thomas-100B: He should be avoiding the player now and not be seen again.";
	otherwise:                [knows he's a herm]
		say "     Thomas nods to you and says 'Hello my friend, what did you want to talk about?'";
		wait for any key;
		say "[ThomasTalkMenu]";

to say ThomasTalkMenu:
	say "[line break]";
	if graphics is true:
		project the figure of Thomas_face_icon;
	say "What do you want to talk with Thomas about?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just chat a bit";
	now sortorder entry is 1;
	now description entry is "Talk a bit about this and that.";
	[]
	if (hp of Thomas is 1):
		choose a blank row in table of fucking options;
		now title entry is "Talk him into sex as a mare";
		now sortorder entry is 2;
		now description entry is "Make him open up to having a pussy.";
	[]
	if (lust of Thomas is 0):
		choose a blank row in table of fucking options;
		now title entry is "Talk him into anal sex";
		now sortorder entry is 3;
		now description entry is "Make him open his horizons a bit.";
	[]
	if (hp of Thomas is 51):
		choose a blank row in table of fucking options;
		now title entry is "Come clean and tell him he's a herm";
		now sortorder entry is 4;
		now description entry is "Admit that you lied about him having a pussy.";
	[]
	if (libido of Thomas > 0 and libido of Thomas is not 20):
		choose a blank row in table of fucking options;
		now title entry is "Ask about his herd";
		now sortorder entry is 5;
		now description entry is "Chat about Thomas centaur herd.";
	[]
	if (ThomasQuestVar is 0 and (ThomasSaved - Turns > 10)):
		choose a blank row in table of fucking options;
		now title entry is "Offer your help for some revenge on his centaur rapists";
		now sortorder entry is 6;
		now description entry is "Take out those three centaurs for good.";
	[]
	if (ThomasQuestVar is 1 and carried of soda >= 5):
		choose a blank row in table of fucking options;
		now title entry is "Give Thomas five soda cans";
		now sortorder entry is 7;
		now description entry is "Hand in supplies for Thomas revenge plan.";
	[]
	if (ThomasQuestVar is 2):
		choose a blank row in table of fucking options;
		now title entry is "Go meet the prairie dogs";
		now sortorder entry is 8;
		now description entry is "Go meet the diggers for Thomas trap.";
	[]
	if (ThomasQuestVar is 3):
		choose a blank row in table of fucking options;
		now title entry is "Help lure the centaur trio into the trap";
		now sortorder entry is 9;
		now description entry is "Time to finally get some revenge.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Nothing";
	now sortorder entry is 10;
	now description entry is "Wave him off as you don't want to talk after all.";
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
				if (nam is "Just chat a bit"):
					say "[ThomasTalk1]";
				if (nam is "Talk him into sex as a mare"):
					say "[ThomasTalk2]";
				if (nam is "Talk him into anal sex"):
					say "[ThomasTalk3]";
				otherwise if (nam is "Come clean and tell him he's a herm"):
					say "[ThomasTalk4]";
				otherwise if (nam is "Ask about his herd"):
					say "[ThomasTalk5]";
				otherwise if (nam is "Offer your help for some revenge on his centaur rapists"):
					say "[ThomasTalk6]";
				otherwise if (nam is "Give Thomas five soda cans"):
					say "[ThomasTalk7]";
				otherwise if (nam is "Go meet the prairie dogs"):
					say "[ThomasTalk8]";
				otherwise if (nam is "Help lure the centaur trio into the trap"):
					say "[ThomasTalk9]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the black centaur, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;
		
to say ThomasTalk1:
	say "     You talk a while with Thomas about your lives before the nanite plague, creatures you've seen in the city and daily survival. It's good to be able to talk to another person and get some things off your chest. In the end, you somehow feel more sane and human than before.";
	if lastThomasTalk - turns > 8:
		increase humanity of player by 5;
		now lastThomasTalk is turns;

to say ThomasTalk2:
	let bonus be (( charisma of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]: ";
	if dice + bonus >= 15:
		say "[line break]";
		say "     Thomas listens to your arguments with a thoughtful expression, then says 'So you think I should just... give in and accept it as part of me now? Maybe you got something there - ignoring it sure is hard.' He shrugs, looking down to the ground for a moment, then back to you. 'Mh - maybe I should stop calling it an 'it' - okay... I got a pussy. And it sure has me hot and bothered sometimes - getting hot and wet and making it terribly hard to concentrate.' He turns his upper body a bit and looks back over his equine rump. 'So... do you maybe want to help me out a bit later? I can't even reach back there...'";
		now hp of Thomas is 2;
	otherwise:
		say "[line break]";
		say "     With crossed arms in front of his chest, Thomas listens to your arguments, then says 'Err... thanks, but no thanks. Not gonna happen.' He turns his upper body a bit and looks back over his equine back. 'Those centaur fuckers wanted to make me their bitch, and I'm not gonna go down that road one step.'";

to say ThomasTalk3:
	if graphics is true:
		project the figure of Thomas_face_icon;
	let bonus be (( charisma of player minus 10 ) divided by 2);
	let dice be a random number from 1 to 20;
	say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]: ";
	if dice + bonus >= 15:
		say "[line break]";
		say "     Thomas listens to your arguments with a thoughtful expression, then says 'Anal, hm? That centaur fucker thrusting in hurt like a bitch at first - but then it kinda felt good, I have to admit. So... I guess I'm okay with it. If you go slow at first.'";
		now lust of Thomas is 1;
	otherwise:
		say "[line break]";
		say "     With crossed arms in front of his chest, Thomas listens to your arguments, then says 'Err... thanks, but no thanks. Not gonna happen.' He turns his upper body a bit and looks back over his equine back. 'That centaur fucker buggered me and look how I ended up. And it hurt like a bitch at first...'";

to say ThomasTalk4:
	if graphics is true:
		project the figure of Thomas_face_icon;
	say "     Thomas brows move together as he looks at you in bafflement, then obvious irritation. 'What the hell are you talking about? Do you think this is all a joke? Bad enough that those fuckers made me one of them - but there's no way I'd become a woman. See...' He swishes his long tail aside and shows you that there's in fact nothing there but the muscled hindquarters and asshole of a stallion. Interesting - the stallion strain nanites must have won out against the others in the end.";
	now hp of Thomas is 52;
		
to say ThomasTalk5:
	if graphics is true:
		project the figure of Thomas_face_icon;
	if libido of Thomas is 1 or libido of Thomas is 21:
		say "     Thomas looks out towards the other centaur standing further off. 'Sandy is still pretty frightened and shy. Those fuckers really got to her, making her believe she had only value as their sex-pet. Thanks for helping me get her out.'";
	otherwise if libido of Thomas is 2 or libido of Thomas is 22:
		say "     Thomas looks out towards the two centaurs standing further off. 'Now that Jill keeps her company, Sandy's gotten a lot better. And Jill is quite happy that she ended up with me and not one of those possessive dicks.'";
	otherwise if libido of Thomas is 10:
		say "     Thomas looks out towards the other centaur standing further off. 'Felix is such a nice young man. I still can't believe his herd just kicked him out to fend for himself.'";
	otherwise if libido of Thomas is 11:
		say "     Thomas looks out towards the two centaurs standing further off. 'Sandy is still pretty frightened and shy. Those fuckers really got to her, making her believe she had only value as their sex-pet. At least Felix has been understanding about it and really helps out calming her down and getting her to open up.'";
	otherwise if libido of Thomas is 12:
		say "     Thomas looks out towards the three centaurs standing further off. 'Nice little herd, hm? Jill and Felix have become good friends, and with them to keep her company, Sandy's gotten better a lot.'";

to say ThomasTalk6:
	if graphics is true:
		project the figure of Thomas_face_icon;
	say "     Thomas puts a hand on your shoulder and smiles, saying 'Nice to hear you want to help me. I've got a plan to deal with those three fuckers who made me a centaur and get their poor mare away from them - who knows who or what she was before. We'll trap them so they don't get away like last time...'";
	say "     'A group of prairie dogs I've spoken to is willing to build a concealed pit for us - if we pay them with half a dozen cans of soda. The only problem is that I only had one can in my backpack when I fled out into the plains. Could you maybe scrounge up five more somewhere? I heard there's still some trading going on at the mall, that might be worth to check out...'";
	if carried of soda >= 5:
		say "     Aware that you have enough soda on you right now, you ([link]Y[as]y[end link]) give Thomas the cans or ([link]N[as]n[end link]) say that you'll look for soda later.";
		if player consents:
			say "     With a surprised look on his face, the black centaur accepts the soda from you. 'Wow, thanks - that was quick. Are you psychic or anything and saw this coming?'";
			now ThomasQuestVar is 2;
			decrease carried of soda by 5;
		otherwise:
			say "     Nodding, Thomas says 'Thanks a lot. I'm counting on you.'";
	otherwise:
		now ThomasQuestVar is 1;
			
to say ThomasTalk7:
	if graphics is true:
		project the figure of Thomas_face_icon;
	say "     Accepting the soda cans from you, Thomas smiles and says 'Thanks a lot. That's enough to pay off the prairie dogs. We can go meet them whenever. Just say when you're ready.'";
	now ThomasQuestVar is 2;
	say "     Do you want to go meet them right now ([link]Y[as]y[end link]) or at some later time ([link]N[as]n[end link]).";
	if player consents:
		say "     'Great! Let's go.' Putting the soda into a backpack, Thomas leads you out into the plains.";
		say "[ThomasTalk8]";
	otherwise:
		say "     'Ok, later then - let's hope the prairie dog diggers are willing to wait...'";
	
to say ThomasTalk8:
	if graphics is true:
		project the figure of Thomas_face_icon;
	say "     After trekking quite a bit through the open plain, Thomas points at several large rubble mounds further ahead. A sign reading 'Glenwood Mining Company' still stands in front of them. A pretty large pit is nearby - looks like it's been dug recently, most likely before the fuel ran out on all the excavators standing around. A shallow ramp leads down into it and the walls inside are filled with tunnel openings. Walking down the ramp, Thomas rings a bell someone has set up there.";
	say "     [line break]";
	say "     Almost at once, lots of furred prairie dog heads pop into sight from behind hidden openings. Looks like the obvious tunnels were all just decoys. Soon the two of you are surrounded by at least fifteen of the three foot tall rodents. One, who wears a plastic toy hard-hat with the word 'Boss' written on it in black marker at the front clears his throat. 'You got the goods? Six cans, and not one less.' Thomas hands his pack to the next bystander, who carries it to the foreman to be inspected.";
	say "     As he nods and the backpack gets handed down into one of the holes, another prairie dog steps up and whispers something into the speaker's ear and points towards you. The foreman nods then turns back to Thomas. 'Seems like there's some demand for a little danger pay. Nothing I can do, strong union - you understand. Your friend there only needs to suck the guys off, then we'll be out and digging your trap in no time.'";
	say "     [line break]";
	say "     What's your answer to their demand? You could just comply [link](1)[as]1[end link], threaten them [link](2)[as]2[end link] (strength check) or talk your way out of it [link](3)[as]3[end link] (intelligence check).";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		otherwise:
			say "Invalid choice. Type [link]1[end link] to suck them off, [link]2[end link] to threaten them or [link]3[end link] to talk your way out.";
	if calcnumber is 1:[suck them]
		say "     Bowing to the inevitable, you get on your knees and get to work on the first digger. The rest of them crowd in around you, cheering as you bob up and down on their compatriot's cock. Before too much longer, he comes in your mouth, coating your tongue with his sperm. As soon as he pulls out and steps aside, another prairie dog comes forward and takes his place...";
		say "     [line break]";
		say "     Quite a while later, with uncounted numbers of cumshots into your stomach (you suspect some of the guys came along for two servings) you're finally done. Thomas helps you back to your feet and the two of you watch the pretty jolly and grinning work group assemble and move out. The foreman nods to your centaur friend and says 'We'll have the job done right quick. You'll see.' before they leave.";
		infect "Prairie Dog";
		infect "Prairie Dog";
		infect "Prairie Dog";
	otherwise if calcnumber is 2:[threaten]
		let bonus be (( strength of player minus 10 ) divided by 2);
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]: ";
		if dice + bonus >= 15:
			say "[line break]";
			say "     You casually pick up the metal rod the bell was hanging from and knot it into pretzel shape. Dropping it on the ground in front of the foreman, you grin at him and crack your knuckles. Looking at the bent piece of metal, the prairie dog quickly says 'Err - that last bit was a joke of course. We'll be off now. Hurriedly and with lots of looks at your demonstration object, the work group assembles and moves out. The foreman nods to your centaur friend and says 'We'll have the job done right quick. You'll see.' before they leave.";
		otherwise:
			say "     Less than impressed with your supposed show of strength, the prairie dogs decide just to take what they want. Like a furry avalanche, a dozen of them pile up on you and pull you to your knees. Then the first one of them pushes his cock in your mouth and starts to face-fuck you. The rest of them crowd in around you, cheering on their buddy. Not much later, he comes in your mouth, coating your tongue with his sperm. As soon as he pulls out and steps aside, another prairie dog comes forward and takes his place...";
			say "     [line break]";
			say "     Quite a while later, with uncounted numbers of cumshots into your stomach (you suspect some of the guys came along for two servings) they're finally done with you. Thomas helps you back to your feet and the two of you watch the pretty jolly and grinning work group assemble and move out. The foreman nods to your centaur friend and says 'We'll have the job done right quick. You'll see.' before they leave.";
			infect "Prairie Dog";
			infect "Prairie Dog";
			infect "Prairie Dog";
	otherwise:[quick talking]
		let bonus be (( intelligence of player minus 10 ) divided by 2);
		let dice be a random number from 1 to 20;
		say "You roll 1d20([dice])+[bonus] vs 15 and score [dice plus bonus]: ";
		if dice + bonus >= 15:
			say "[line break]";
			say "     Reciting the rules and regulations of the united miner's guild, you convince the prairie dogs that (A) they're not allowed to demand sex as payment and (B) a deal's a deal and the payment was already agreed upon. Murmuring about letting someone else negotiate beforehand the next time, the mining rodents have no choice but to agree. Still muttering amongst themselves, the work group soon assembles and moves out. The foreman nods to your centaur friend and says 'We'll have the job done right quick. You'll see.' before they leave.";
		otherwise:
			say "     Your arguments sadly fall on deaf ears and the prairie dogs decide just to take what they want. Like a furry avalanche, a dozen of them pile up on you and pull you to your knees. Then the first one of them pushes his cock in your mouth and starts to face-fuck you. The rest of them crowd in around you, cheering on their buddy. Not much later, he comes in your mouth, coating your tongue with his sperm. As soon as he pulls out and steps aside, another prairie dog comes forward and takes his place...";
			say "     [line break]";
			say "     Quite a while later, with uncounted numbers of cumshots into your stomach (you suspect some of the guys came along for two servings) they're finally done with you. Thomas helps you back to your feet and the two of you watch the pretty jolly and grinning work group assemble and move out. The foreman nods to your centaur friend and says 'We'll have the job done right quick. You'll see.' before they leave.";
			infect "Prairie Dog";
			infect "Prairie Dog";
			infect "Prairie Dog";
	now ThomasQuestVar is 3;

to say ThomasTalk9:
	if graphics is true:
		project the figure of Thomas_face_icon;
	say "     Thomas leads you to a rather unremarkable spot out in the plains. There's nothing there really, except some very few mid-sized rocks. Wondering what you're doing here, you walk a few steps, looking left and right before Thomas suddenly calls 'Stop! You're almost on the trap.' Pulling you back a step, he says 'They really did a good job, didn't they? Barely anything noticeable, except when you know exactly where to look. See - it starts at that rock there and goes all the way over here.' Watching the ground closely, it still takes a moment till you spot the edges of the trap.";
	say "     'Ok, here's what we'll do. I'll get their attention and while they chase me, you can get their mare and run this way. And when they notice that you're taking their fucktoy away, they'll follow you and fall into the trap.'";
	WaitLineBreak;
	say "     The two of you make your way towards the centaurs camp, splitting up when you see it in the distance. Thomas angles to the left while you sneak closer through the grass to the right. You hear Thomas voice shout 'Hey assholes, you're even uglier than I remembered.' followed by shouts and galloping hooves. That's your chance... you rush into the midst of the small camp and find yourself face with a wide-eyed centaur mare. 'Come on - follow me. It's time to get out of here!' you tell her, and she readily complies - you're not quite sure if it's out of the desire to be freed, or just the habit of following orders.";
	say "     Running out of and away from the small encampment with Sandy by your side, you hear some shouts and the beating of hooves behind you. Not wasting any time to look back, you just keep running and soon the marker rocks for the trap come into sight. Taking care not to cross the invisible line, you guide Sandy past the trap, then angle back behind it. There's a loud crashing noise as your followers try to take the shortest way to follow you and run right into the trap.";
	say "     [line break]";
	say "     Turning around, you see the previously so well-contained pit clearly for the first time. It's quite big, with steep reinforced walls and a pile of straw to cushion the fall. In it, the three centaur stallions you fought before lie in a crumpled heap, moaning in pain and weakly twitching. That must have hurt - well, at last the nanites will quickly knit broken bones these days. Thomas walks up to you and looks into the pit, then turns his attention to the centaur mare. 'Hello there, I'm Thomas. You're... Sandy, right? Nice to meet you.' he says, and offers her his hand. She just stares at it for a moment, then turns around and offers her moist pussy to be mounted. 'Oh boy, you're not gonna be easy to talk to, hm.'";
	WaitLineBreak;
	say "     A while later, Thomas leads Sandy away, leaving you with the duty to 'Make sure the three fuckers in the pit don't get away somehow till Vance comes to take over.' Standing at the side of the pit, you wait and watch as the trapped guys broken legs slowly straighten themselves out and knit back together. Then they come back to consciousness and start shouting abuse up at you. Thankfully, not long after that point, you see someone walk up over the plains. It's a male husky, carrying a large sack over one shoulder.";
	say "     'Ah, there you are - I'd been wondering if Thomas sent me on a wild goose chase. Name's Vance, by the way. And those are the bitches I was promised?' He nods towards the pit and sets down the sack. It's dog food, you can see now. 'Bit unruly and noisy, but I guess that'll stop in time. Oh well, I've got time to wait - they'll get hungry sometime.' Patting the sack of dry dog food, he gives the captured centaurs a somewhat hungry look. You leave him and his future husky bitches and start walking back towards your usual meeting place with Thomas.";
	now ThomasQuestVar is turns;
	now SandySaved is turns;
	increase libido of Thomas by 1;    [Sandy]

instead of navigating Dry Plains while (hp of Thomas > 0 and hp of Thomas < 100 and libido of Thomas < 10 and ThomasSaved - turns > 10):
	say "[NavCheck Dry Plains]";
	if NavCheckReturn is false, stop the action;
	move player to Dry Plains;
	say "     As you come out into the dry plains, a rather concerned looking Thomas gallops up to you. 'Someone needs our help - please hurry!' He dashes off again before you can say anything, so you hurry up and do your best to follow him. Soon, you come into sight of a slavering behemoth of a creature chasing after a teenage centaur. 'Please, can you help me save him? We can't let him get caught by that!'";
	say "     [line break]";
	say "     What's your answer to that? Do you want to try taking on the behemoth ([link]Y[as]y[end link]), or rather run away ([link]N[as]n[end link]) ?";
	if player consents:
		challenge "Behemoth";
		if fightoutcome >= 20 and fightoutcome <= 29:[lost]
			say "     Even though you ended up losing, the distraction you provided was enough for the young centaur and Thomas to get away safely. When you finally make your way back to your usual meeting point, all wet and sticky from your time with the behemoth, you find the two centaurs waiting for you there. Thomas walks up to you and says 'Thank you for your help, my friend. Here, come meet Felix, whom you saved.' He leads you over to the other centaur, a pretty-looking young stallion with sandy coat and red hair.";
		otherwise if fightoutcome >= 30:[fled]
			say "     Even though you turned tail and ran, the behemoth followed you quite a bit, which was enough distraction for the young centaur and Thomas to get away safely. When you finally make your way back to your usual meeting point, pretty sweaty from running like hell away from that beast, you find the two centaurs waiting for you there. Thomas walks up to you and says 'Thank you for your help, my friend. Here, come meet Felix, whom you saved.' He leads you over to the other centaur, a pretty-looking young stallion with sandy coat and red hair.";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:      [won]
			say "     Having beaten the behemoth, you look around and see Thomas and the young centaur a small distance away. They wave for you to follow, then gallop off, most likely to get out of here before the behemoth decides it wants another round. Hurrying after them, you soon find yourself at the usual meeting spot with Thomas, where the two centaurs await your arrival. Thomas walks up to you and says 'Thank you for your help, my friend. Here, come meet Felix, whom you saved.' He leads you over to the other centaur, a pretty-looking young stallion with sandy coat and red hair.";
		increase libido of Thomas by 10;
		now FelixSaved is turns;
		say "     [line break]";
		say "     Shaking your hand, Felix smiles and says 'Thanks for saving me. I really thought I was a goner when that big thing went after me. I guess that was the plan when my herd kicked me out.' Thomas walks up beside him and puts a hand on Felix shoulder. 'Can you believe he came from a herd consisting of only one male and more than a dozen mares? And that fucked-up guy breeds em all, then keeps the girls and sends any of his male offspring out on their own all alone. Most don't make it very long, with all those critters out here...' Thomas looks around over the surrounding plains with a wary expression, then shrugs. 'Well, enough of that fucked up shit - you're very welcome to stay as part of my little herd, Felix.'";
	otherwise:
		say "     Shouting 'Sorry, I can't fight that.' you run away and only look back when you're in a somewhat safe distance. From there, you see Thomas attack the huge creature and get thrown aside with an almost casual slap. Not long after, the behemoth finally catches up with the young centaur it was chasing and... stuffs him into its pussy? Now that's a rather strange and somewhat disturbing sight. You doubt that what will emerge from those folds later will still be a centaur...";
		say "     Having struggled to his feet, Thomas limps away from the scene towards you, a rather disappointed expression on his face. 'You were right - it's just too strong.' he sighs, then leaves.";
		increase libido of Thomas by 20;
	
instead of navigating Dry Plains while ((libido of Thomas is 1 or libido of Thomas is 11 or libido of Thomas is 21) and SandySaved - turns > 10):
	say "[NavCheck Dry Plains]";
	if NavCheckReturn is false, stop the action;
	move player to Dry Plains;
	say "     At the same time as your arrival at the meeting place with Thomas, a centaur mare walks up out of the plains too. She's beautiful, with sun-bronzed skin, flowing blond hair and a nice pair of breasts. 'Hello there, I'm Jill. I heard talk about what you did to Raul and his buddies, and... can I please join your herd?' She gives Thomas a pleading smile, then nervously looks back over her shoulder. 'You see, today's my birthday - and father invited all the stallions far and wide to... sell me to the highest bidder. I got to warn you, they're most likely tracking me right now...'";
	say "     Thomas thinks for a short moment, then nods to Jill 'Of course you're welcome. Let's get ready for the search party.' He calls over [if libido of Thomas is 1 or libido of Thomas is 21]Sandy and sends her away so she'll be safe[otherwise if libido of Thomas is 11]Sandy and Felix, sending them away so she'll be safe[end if], then turns to you. 'Are you with us, my friend? This is gonna be a tough one - we have...' He gives a questioning look to Jill and she answers 'Eight, at least.' '...centaurs coming in. We really could use your help.'";
	say "     [line break]";
	say "     What's your answer to that? Do you stay ([link]Y[as]y[end link]), or rather run away ([link]N[as]n[end link]) ?";
	if player consents:
		say "     'Thank you - let's go over there and wait for them.' Thomas leads Jill and twenty minutes to the east, saying 'Watch out, there's a lot of rabbit holes over here - let's hope some of those guys step into them and stumble.'";
		say "      [line break]";
		say "     You don't have to wait too long before a group of centaurs comes into sight in the distance and veers right towards you. It's eleven stallions, and they don't look at all talkative. Shouting, they rush at you - and two of them make acquaintance the holes in the ground. Stepping right into them, they stumble, and with the crunching sound of shattering bone two of your opponents are out of the fight. That only leaves nine to come at your little group...";
		challenge "Centaur Stallion";
		if fightoutcome >= 20 and fightoutcome <= 29:[lost]
			say "     [LoseToCentaurs2]";
		otherwise if fightoutcome >= 30:[fled]
			say "     [RunFromCentaurs2]";
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:      [won]
			say "     Having beaten one centaur, another immediately comes forward, rearing up to kick you with his front legs.";
			challenge "Centaur Stallion";
			if fightoutcome >= 20 and fightoutcome <= 29:[lost]
				say "     [LoseToCentaurs2]";
			otherwise if fightoutcome >= 30:[fled]
				say "     [RunFromCentaurs2]";
			otherwise if fightoutcome >= 10 and fightoutcome <= 19:      [won]
				say "     With another centaur beating a hasty retreat, only a third one rushes at you.";
				challenge "Centaur Stallion";
				if fightoutcome >= 20 and fightoutcome <= 29:[lost]
					say "     [LoseToCentaurs2]";
				otherwise if fightoutcome >= 30:[fled]
					say "     [RunFromCentaurs2]";
				otherwise if fightoutcome >= 10 and fightoutcome <= 19:      [won]
					say "     The fight is going well, and you have a moment time to look around - Thomas and Jill have taken down three of the other attackers and are engaged with a fourth - which only leaves an older bearded centaur for you. He shouts 'I'll show you to make off with my daughter! She's supposed to bring in good money!'";
					challenge "Centaur Stallion";
					if fightoutcome >= 20 and fightoutcome <= 29:[lost]
						say "     [LoseToCentaurs2]";
					otherwise if fightoutcome >= 30:[fled]
						say "     [RunFromCentaurs2]";
					otherwise if fightoutcome >= 10 and fightoutcome <= 19:      [won]
						say "     Finally, the gang of centaurs has had enough. Cursing you, they flee as fast as they're able.";
						say "     [line break]";
						say "     Jill hugs Thomas and you, then says 'That was my dad you just beat up - and oh, does he deserve it. Thank you both for helping me.'";
						increase libido of Thomas by 1;
	otherwise:
		say "     Apologizing and saying it's not your fight, you run away. Somehow you doubt that they'll be able to make a stand without you... so you likely won't see Thomas anymore.";
		remove Thomas from play;
		now hp of Thomas is 100;
		
to say LoseToCentaurs2:
	say "     Badly beaten, you fall to the ground and can't do anything but watch as the stallions subdue Thomas and Jill. [if hp of Thomas < 51]When someone notices that Thomas is a herm, many of the guys spring instant erections and start fucking him in a not at all gentle gangbang.[otherwise]With several guys holding Thomas down, he's mounted by one of the stallions, who just rams his whole horsecock in his ass. After he fills your friend with his load, another takes his place, then another.[end if] Before long, load after load of cum dumped into his body start to show their impact. Thomas features become rounder, his chest bulges outward to form big breasts and his cock shrinks until it's gone completely. He soon stops struggling and only moans as the next centaur thrusts into his pussy, now completely reduced to a needy mare in heat.";
	WaitLineBreak;
	say "     While the rest of the party is busy raping Thomas, a bearded centaur takes Jill to the side and starts shouting at her. 'You ruined everything, you stupid bitch - no matter how good you look, no one will want to pay much for a mare that might run off! I'll have to use you as breeding stock - maybe you'll at least give me a strong son, or some more obedient girls with your looks.' With that, the centaur moves behind her and thrusts his hard horsecock into her pussy, mounting her hard and forcefully. Holding her down, he pounds into her, creating loud slapping noises as his balls hit her ass. Soon, he gives a lust-filled grunt and his balls pump a huge load into her womb. 'Not bad, little bitch. I should have done this sooner.' He walks to her front and pulls her head to his crotch. 'Why don't you clean me off and get me hard again for another round.'";
	say "     [line break]";
	say "     After the gangbang around Thomas runs its course and Jill gets fucked again several times by the bearded centaur, the hunting party moves back out into the plains, taking their thoroughly fucked mares with them.";
	remove Thomas from play;
	now hp of Thomas is 100;

to say RunFromCentaurs2:
	say "     Deciding that this is a lost fight, you run like hell, getting yourself to safety. You don't know what exactly happened to Thomas and Jill after that, but a good guess is that they were taken away with the hunting party nd both used as breeding mares...";
	remove Thomas from play;
	now hp of Thomas is 100;

Section 3 - Fucking Thomas

Instead of fucking the Thomas:
	[puts Centaur Stallion as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Centaur Stallion":
			now monster is y;
			break;
	if (hp of Thomas is 0):               [not yet met]
		say "ERROR-Thomas-001C: He should not be around yet anywhere where players can see him.";
	otherwise if (hp of Thomas is 100):   [avoiding the player]
		say "ERROR-Thomas-100B: He should be avoiding the player now and not be seen again.";
	otherwise:
		if(lastfuck of Thomas - turns < 5):
			say "     Thomas says 'Sorry I'm still worn out from last time. Give me some space, ok?'";
		otherwise:
			say "[ThomasSexMenu]";

to say ThomasSexMenu:
	say "[line break]";
	if graphics is true:
		project the figure of Thomas_face_icon;
	say "What sort of fun do you want to have with Thomas?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the centaur herm blow you.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Suck Thomas cock";
	now sortorder entry is 2;
	now description entry is "Put Thomas long horsecock in your mouth.";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put the centaur herm's mouth to good use.";
	[]
	if (hp of Thomas is 2 or hp of Thomas is 3):
		choose a blank row in table of fucking options;
		now title entry is "Finger his pussy";
		now sortorder entry is 4;
		now description entry is "Finger-fuck Thomas pussy to make him cum.";
	[]
	if (cocks of player > 0 and (hp of Thomas is 3 or hp of Thomas is 4 or hp of Thomas is 5)):
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 5;
		now description entry is "Fill the herm centaur's pussy with your cock.";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your pussy";
		now sortorder entry is 6;
		now description entry is "Ride Thomas long horsecock.";
	[]
	if (lust of Thomas > 0):
		choose a blank row in table of fucking options;
		now title entry is "Finger Thomas ass";
		now sortorder entry is 7;
		now description entry is "Stimulate the herm centaur's ass with your hand.";
	[]
	if (cocks of player > 0 and lust of Thomas > 1):
		choose a blank row in table of fucking options;
		now title entry is "Take Thomas ass";
		now sortorder entry is 8;
		now description entry is "Fill the herm centaur's ass with your cock.";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Let him fuck your ass";
	now sortorder entry is 9;
	now description entry is "Ride Thomas long horsecock.";
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
				if (nam is "Have him blow your cock"):
					say "[ThomasSex1]";
				if (nam is "Suck Thomas cock"):
					say "[ThomasSex2]";
				otherwise if (nam is "Have him lick your pussy"):
					say "[ThomasSex3]";
				otherwise if (nam is "Finger his pussy"):
					say "[ThomasSex4]";
				otherwise if (nam is "Fuck his pussy"):
					say "[ThomasSex5]";
				otherwise if (nam is "Let him fuck your pussy"):
					say "[ThomasSex6]";
				otherwise if (nam is "Finger Thomas ass"):
					say "[ThomasSex7]";
				otherwise if (nam is "Take Thomas ass"):
					say "[ThomasSex8]";
				otherwise if (nam is "Let him fuck your ass"):
					say "[ThomasSex9]";
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the black centaur, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say ThomasSex1:    [cock sucked by Thomas]
	say "     Walking up to Thomas, you run your hands over his muscular chest, then pull his lips to yours for a kiss. After coming back up for air, you whisper 'You know what would be hot...' and pull Thomas hands down to your crotch '...you sucking off my cock.' Smiling, Thomas pulls out your hard [cock of player] cock, pumping it in his hand. 'You know, just a short while ago I'd never have dreamed I'd be sucking someone off willingly. But I like getting you off, and anyways I owe you for saving my ass.'";
	say "     [line break]";
	say "     With that, he leans over and takes your shaft in his mouth, bobbing up and down on it. Being a man, he knows how to handle a cock and what you need, so the blowjob that follows is pretty amazing. Bringing you to the edge of cumming several times, then allowing you to catch your breath to prolong the experience, he has you highly wound up and aching to cum when he finally goes all out. You're deep in Thomas throat with his nose pressed against you crotch when you finally cum, squirting cum right into his stomach. The black centaur pulls back a bit before you're completely done so he can taste your seed, then shows it to you on his tongue and swallows it too.";
	infect "Centaur Stallion";
			
to say ThomasSex2:    [sucking Thomas cock]
	say "     Walking up to Thomas, you run your hands over his muscular chest, then pull his lips to yours for a kiss. After coming back up for air, you whisper 'How about a blowjob, big boy?' He grins and pulls you in for another bit of tongue wrestling, then steps back a bit and turns his equine body to show you his long horsecock standing ready and erect for you. Kneeling down, you reach out for it, stroking the warm shaft in a hand while your other one fondles the black centaur's balls.";
	say "     [line break]";
	say "     In no time at all your taur friend is moaning, then gasping in pleasure as you speed up your stroking him and bring your tongue into play, running it up the side of his cock. Arriving at the tip, you lick over the cock's flared head. Doing your best to fit his cockhead into your mouth, you stroke Thomas long cock with both hands. Under your skillful stimulation, it doesn't take long until you hear the centaur shout 'Ah - I'm getting real close!' quickly followed by his horsecock pulsing in your hand. The first two huge squirts of his cum are enough to fill your mouth, and while you swallow all that, he continues blasting away, further cumshots painting your face and chest in white.";
	say "     As you stand up again and Thomas sees you, he grins and gives you a deep kiss, tasting his own sperm on your lips. 'Sorry for the mess. I've always shot big loads, and with these big stallion balls...'";
	infect "Centaur Stallion";
	
to say ThomasSex3:    [cunt licked by Thomas]
	say "     Walking up to Thomas, you run your hands over his muscular chest, then pull his lips to yours for a kiss. After coming back up for air, you whisper 'You know what would be hot...' and pull Thomas hands down to your crotch '...you licking my pussy.' Smiling, Thomas peels off your clothes and starts stroking over your nether lips. 'As you wish. How about we lie down over there.'";
	say "     [line break]";
	say "     As you lie down, Thomas gets into position in front of you, then kneels so he can reach you when leaning forward with his upper body. He fondles you for a moment with his fingers, then spreads your pussy lips and starts to lick. Wow, he's got quite a long and talented tongue, your black centaur friend. Licking leads to soft sucking on your clit, then him pushing his tongue into your vagina. Then he goes back to pushing his fingers inside you, massaging your sensitive inner walls. With Thomas expertly masturbating your pussy, he brings you to the brink of orgasm time and again, then pulls back a bit until you've calmed down. Then after you don't know how long in a lustful haze, he takes out all the stops and just keeps going till you come, shouting in satisfaction as your whole body trembles in orgasm.";
	infect "Centaur Mare";
	
to say ThomasSex4:    [Thomas cunt licked/fingered]
	say "     You go and give Thomas a hungry kiss, your tongues exploring each other's mouths. Making out with him his great and you almost forget what you were planning to do, only reluctantly pulling back from the centaur herm's lips. Running your hands down over the Thomas muscled chest, then along his flank as you walk around his equine body to his rear end. Groping the muscled flesh of his ass, you make him moan in anticipation, then raise his blond tail to reveal an already moist pussy. You lean forward and lick over the black centaur's sensitive folds, revelling in the gasps you get out of him. Running your tongue along the inside of his pussy lips, you make Thomas pant and moan and soon you hear him say 'This feels amazing!'";
	say "     [line break]";
	say "     Oh, but that's only the start of what you have planned for him... you bring your hand to his pussy and start to massage it. Slipping Three, then four fingers, then your whole hand into the centaur's body, you stroke his inner passage, grinning at the lust-filled panting and moaning you create with that. Feeling around a bit, you find a spot that seems especially sensitive judging from the joyful gasps it make Thomas do every time you stroke over it. Concentrating on that, it doesn't take much longer until the centaur herm orgasms, femcum gushing out of his opening and dripping off your arm. His long horsecock meanwhile gushes a huge load of cum onto the ground below, creating a small puddle.";
	say "     As he comes down from his orgasm high, you step up to Thomas and pull him into a kiss. In between making out vigorously, he says 'Having a pussy feels great! Thanks for talking me into this.'";
	if hp of Thomas is 2:
		now hp of Thomas is 3;[now he's ready for mare sex]
	infect "Centaur Stallion";
	
to say ThomasSex5:    [Thomas pussy fucked by player]
	say "     You go and give Thomas a hungry kiss, your tongues exploring each other's mouths. Making out with him his great and you almost forget what you were planning to do, only reluctantly pulling back from the centaur herm's lips. Running your hands down over the Thomas muscled chest, then along his flank as you walk around his equine body to his rear end. Groping the muscled flesh of his ass, you make him moan in anticipation, then raise his blond tail to reveal an already moist pussy. You lean forward and lick over the black centaur's sensitive folds, revelling in the gasps you get out of him. Running your tongue along the inside of his pussy lips, you make Thomas pant and moan, and soon you hear him say 'I'm soo horny - please, fuck me now!'";
	say "     [line break]";
	if cock length of player < 20:
		say "     Who could resist that? Quickly throwing off your clothes, you bring your rock hard [cock of player] cock to Thomas wet, winking pussy and thrust deep into him in one go. His pussy is very large, taking everything you've got easily. Though clearly equipped for bigger cocks, Thomas does his best to grip you tight with his vaginal muscles and the two of you enjoy yourselves quite a bit. Fucking the black centaur herm with abandon, you soon feel a familiar tingle in your balls and plunge in deep one last time before you start cumming. Spurt after spurt of your fertile seed jet out of your hard shaft and vanish in the depths of his vagina.";
		WaitLineBreak;
		say "     Resting against his muscled hindquarters until you catch your breath, you then pull your cock out of its moist and warm cave. As your partner hasn't come yet, you bring your hand to his pussy and start to massage it. Slipping Three, then four fingers, then your whole hand into the centaur's body, you stroke his inner passage, wet with your cum and his juices. Feeling around a bit, you find a spot that seems especially sensitive judging from the joyful shouts it make Thomas do every time you stroke over it. Concentrating on that, it doesn't take much longer until the centaur herm orgasms, femcum gushing out of his opening and dripping off your arm.";
	otherwise:
		say "     Who could resist that? Quickly throwing off your clothes, you bring your rock hard [cock of player] cock to Thomas wet, winking pussy and thrust deep into him in one go. His pussy is very large, but your shaft fills it out quite nicely, evoking a whole new level of moans from Thomas. Hitting all the sensitive spots deep inside him, the black centaur gasps, then shouts for you to fuck him harder. Eagerly complying, you fuck Thomas with abandon, thrusting in and out of his equine body.";
		WaitLineBreak;
		say "     Soon, the wild ride you're giving him pushes the centaur herm over the edge and he orgasms, his pussy becoming even slicker with lots of femcum and a massive load gushing onto the ground out of his erect horsecock. Making him come gives your own arousal a big push, so you're not far behind, sinking your hard shaft deep inside Thomas body one last time as a familiar tingle awakens in your balls. Then you come, spurt after spurt of your fertile seed jetting into the centaur herm's vagina and flooding his womb with cum.";
	say "     [line break]";
	say "     The both of you coming down from your orgasm highs, Thomas moves around to take you into his arms and kisses you. In between making out vigorously, he says 'I love having you fuck me. Thanks for talking me into this.'";
	infect "Centaur Stallion";
	if hp of Thomas is 3 and a random chance of 1 in 3 succeeds:
		now hp of Thomas is 4;[knocked up by the player]

to say ThomasSex6:    [player's pussy fucked by Thomas]
	say "     You go and give Thomas a hungry kiss, your tongues exploring each other's mouths. Making out with him his great and you almost forget what you were planning to do, only reluctantly pulling back from the centaur herm's lips. Running your hands down over the Thomas muscled chest, then along his flank as you walk around his equine body. Then you kneel down and rub his balls, stroking his black horsecock as it emerges from its sheath. Groaning in anticipation as his cock hardens, Thomas says 'I can't wait to fuck you.' and steps a bit to the side so you're now fully under him.";
	say "     [line break]";
	say "     You quickly get into position on your knees, then reach back to guide the black centaur's long shaft to your moist pussy. The two of you gasp in lust as he pushes the flared head of his cock inside your body, then slides more and more of his shaft into you. It's an amazing feeling to be almost literally fucked by a horse, with his warm body above you and that massive cock thrusting in and out, stretching your innermost depths. With him rubbing all the sensitive spots you have, he soon brings you to an orgasm, moaning and shouting as your femcum starts to drip from your cunt and his cock.";
	WaitLineBreak;
	say "     After giving you a moment's rest he goes on fucking, tirelessly pounding his manhood into you. Soon, you're all hot and worked up again, moaning loudly with each of his thrusts. Thomas long horsecock rubs you in all the right places, and before much longer, he drives you over the edge again, orgasming a second time. As you gasp in lust, he says 'Like that, baby? I'm gonna fill you up now.' That said, he relaxes his self-constraint, plunging in deep a few more times before his cock starts to pulse with spurt after spurt of centaur cum shooting directly into your womb. [if gestation of child is 0]With the amount of Thomas seed creating a noticeable bulge in your belly, it's almost as if you're pregnant already.[end if][fimpregchance][fimpregchance]";
	say "     [line break]";
	say "     After he finally stops coming a while later, Thomas pulls his shaft out and quite a bit of his cum gushes out of your open hole to drip on the ground below. He steps to the side to allow you to stand up, then puts his arms around you and pulls you in for a kiss. In between making out vigorously, he says 'You liked the horse-dong, didn't you? At least that's one plus of this whole transformation business. Not that I had any problems before, but this tool is something else...'";
	infect "Centaur Mare";

to say ThomasSex7:    [fingering Thomas ass]
	say "     You go and give Thomas a hungry kiss, your tongues exploring each other's mouths. Making out with him his great and you almost forget what you were planning to do, only reluctantly pulling back from the centaur herm's lips. Running your hands down over the Thomas muscled chest, then along his flank as you walk around his equine body to his rear end. Groping the muscled flesh of his ass, you make him moan in anticipation, then raise his blond tail to reveal his asshole. You lean forward and lick over the black centaur's pucker, revelling in his initial 'Oh? Oh!' and the gasps that follow. Running your tongue up and down his crack, then poking his hole with it, you make Thomas pant and moan and soon you hear him say 'This feels amazing!'";
	say "     [line break]";
	say "     Oh, but that's only the start of what you have planned for him... you bring your hand to his hole and start to massage it. After starting slow with one and two fingers, you get him to loosen up and soon are able to slip three, then four fingers in - followed by your whole hand. Pushing deeper into the centaur's body, you stroke his inner passage, grinning at the lust-filled panting and moaning you create with that. Feeling around a bit, you find a spot that seems especially sensitive judging from the joyful gasps it make Thomas do every time you stroke over it. Concentrating on that, it doesn't take much longer until the centaur orgasms, his sphincter gripping your arm tightly as a huge load of cum gushes from his horsecock onto the ground, creating a small puddle.";
	say "     As he comes down from his orgasm high, you step up to Thomas and pull him into a kiss. In between making out vigorously, he says 'It's amazing how hot it feels to have you play with my ass! Thanks for talking me into this.'";
	if lust of Thomas is 1:
		now lust of Thomas is 2;[now he's ready for anal sex]
	infect "Centaur Stallion";
	
to say ThomasSex8:    [fucking Thomas ass]
	say "     You go and give Thomas a hungry kiss, your tongues exploring each other's mouths. Making out with him his great and you almost forget what you were planning to do, only reluctantly pulling back from the centaur herm's lips. Running your hands down over the Thomas muscled chest, then along his flank as you walk around his equine body to his rear end. Groping the muscled flesh of his ass, you make him moan in anticipation, then raise his blond tail to reveal his asshole. You lean forward and lick over the black centaur's pucker, revelling in his initial 'Oh? Oh!' and the gasps that follow. Running your tongue up and down his crack, then poking his hole with it, you make Thomas pant and moan and soon you hear him say 'I'm soo horny - please, fuck me now!'";
	say "     [line break]";
	say "     Who could resist that? Quickly throwing off your clothes, you step up to Thomas with your rock hard [cock of player] in your hand. Rubbing it up and down his crack, you tease him a bit with it, pushing the tip against his opening, then going back to more rubbing. Only when you got him so hot and bothered that he begs you to put it in already do you plunge in, thrusting deep into his back passage in one go. Owning to the large size of his equine body, his hole is large too, but Thomas manages to grip your shaft pretty tightly with his anal muscles. All in all, your shaft pushing into his body feels quite nice, and as you start thrusting in and out faster, you evoke a whole new level of moans from Thomas.";
	WaitLineBreak;
	say "     Hitting all the sensitive spots deep inside him, the black centaur gasps, then shouts for you to fuck him harder. Eagerly complying, you fuck Thomas with abandon, your hips slapping loudly against his equine body with the force of your thrusts.";
	say "     Soon, the wild ride you're giving him pushes the centaur over the edge and he orgasms, his sphincter gripping your shaft like a vise as a huge load of cum gushes from his horsecock onto the ground, creating a small puddle. With Thomas hot hole tight around your cock and creating breathtaking sensations as you fuck him, you soon feel a familiar tingle rise in your balls. Plunging in one last time, you grind your hips against his equine rump and hold on tight as you come, shooting burst after burst of cum deep into his asshole.";
	say "     [line break]";
	say "     The both of you coming down from your orgasm highs, Thomas moves around to take you into his arms and kisses you. In between making out vigorously, he says 'I love having you fuck me. Thanks for talking me into this.'";
	infect "Centaur Stallion";
	
to say ThomasSex9:    [player's ass fucked by Thomas]
	say "     You go and give Thomas a hungry kiss, your tongues exploring each other's mouths. Making out with him his great and you almost forget what you were planning to do, only reluctantly pulling back from the centaur herm's lips. Running your hands down over the Thomas muscled chest, then along his flank as you walk around his equine body. Then you kneel down and rub his balls, stroking his black horsecock as it emerges from its sheath. Groaning in anticipation as his cock hardens, Thomas says 'I can't wait to fuck you.' and steps a bit to the side so you're now fully under him.";
	say "     [line break]";
	say "     You quickly get into position on your knees, then reach back to guide the black centaur's long shaft to your asshole. Rubbing its tip up and down your crack, you spread Thomas ample pre-cum around a bit and do your best to lube up with it. Almost trembling in anticipation you reach up and rub Thomas muscled flank and say 'I'm ready.' The two of you gasp in lust as he pushes the flared head of his cock through your opening, then slides more and more of his shaft into you. It's an amazing feeling to be almost literally fucked by a horse, with his warm body above you and that massive cock thrusting in and out, stretching your innermost depths.";
	WaitLineBreak;
	say "     'Man, your ass is so hot and tight around my shaft. Makes me totally regret not accepting all my gay buddy Orin's offers when we were out partying.' Eager to experience everything you have to give, Thomas thrusts deep and holds still for a moment, revelling in the feeling of having his shaft buried in your insides. Then he starts up fucking in and out again, tirelessly pounding your ass. Accompanied by the slapping noises of his balls hitting your cheeks, both your arousal quickly mounts. Before much longer, you moan loudly and [if cocks of player > 0]spray your seed all over the ground below[otherwise if cunts of player > 0]drip copious amounts of femcum onto the ground[otherwise]shudder in orgasm[end if]. As you gasp in lust, Thomas says 'Like that, baby? I'm gonna fill you up now.' That said, he relaxes his self-constraint, plunging in deep a few more times before his cock starts to pulse with spurt after spurt of centaur cum shooting deep into you. [if gestation of child is 0]With the amount of Thomas seed creating a noticeable bulge in your belly, it looks almost as if you're pregnant right now.[end if][mimpregchance][mimpregchance]";
	say "     [line break]";
	say "     After he finally stops coming a while later, Thomas pulls his shaft out and quite a bit of his cum gushes out of your open hole to drip on the ground below. He steps to the side to allow you to stand up, then puts his arms around you and pulls you in for a kiss. In between making out vigorously, he says 'You liked the horse-dong, didn't you? At least that's one plus of this whole transformation business. Not that I had any problems before, but this tool is something else...'";
	infect "Centaur Stallion";

Section 4 - Endings

when play ends:
	if (hp of Thomas > 0 and hp of Thomas < 100) and Dry Plains is known and humanity of player > 10:  [player met him and is sane]
		say "    After getting out of the city, you see Thomas again a while later and he invites you out to a farming community in the countryside where many non-humanoid infectees settled. Many of the buildings look rather strange, from a human perspective, being very open for large forms or arching high without any stairs since the inhabitants have wings. The black centaur is one of the leaders of the settlement, standing at the head of the herd of centaurs making up about a third of the population. [if hp of Thomas is 51 or hp of Thomas is 52]Most of them are females, their equine bellies bulging with proof of the potency of the black stallion's seed. They seem quite happy, talking and laughing with each other - kinda like a large polygamous family.[otherwise]They're more or less evenly split between males and females, with several recognizable couples and the rest enamored to the black centaur herm. Seems like a happy and content group, talking and laughing with each other - kinda like a large polygamous family.[end if]";
		if hp of Thomas is 4 or hp of Thomas is 5:[player knocked him up]
			say "    Calling a young filly out to meet you, Thomas introduces her to you as Ellen, and you to her as her father. The product of your coupling in the city, the little girl is very nice and chipper, happily chatting to get to know you and showing you around in the herd. Later, after she's gone off to play with other foals, Thomas invites you to his hut to rekindle your relationship and you end up fucking like sex-starved bunnies all night. You come back to visit him quite often after that, both to get it on as well as to see your growing brood of kids with him that results from your couplings.";
		otherwise if libido of Thomas is 10 or libido of Thomas is 11 or libido of Thomas is 12 and hp of Felix is not 2:        [Felix available]
			if hp of Thomas is 1:[player didn't try to have mare sex with Thomas]
				say "    Calling a young colt out to meet you, Thomas introduces him to you as Kurt, his son with Felix. Being the result of you saving his father, the chipper little boy is very eager to have you tell him all about it, getting pretty big eyes as you recount the size of the beast after Felix and your role in getting the centaur away from it. Later, after he's gone off to amaze his friends with the story, Thomas and Felix invite you to their hut and you have a long talk about the time in the city and what happened since.";
				say "    As the evening progresses and more racy topics come up, their arousal rises, and they soon are touching and kissing each other. Not being shy at all about such things, this quickly moves on to Felix mounting Thomas, the young stallion's long horsecock driving into your herm friend's pussy. It's quite a night to remember after that. Having had a ringside seat for the conception of their second child, you end up becoming the new colt's godparent and often come back to visit the centaurs.";
			otherwise if hp of Thomas is 2 or hp of Thomas is 3:[player was interested in mare sex with Thomas, Felix not lost]
				say "    Calling a young colt out to meet you, Thomas introduces him to you as Kurt, his son with Felix. Being the result of you saving his father, the chipper little boy is very eager to have you tell him all about it, getting pretty big eyes as you recount the size of the beast after Felix and your role in getting the centaur away from it. Later, after he's gone off to amaze his friends with the story, Thomas and Felix invite you to their hut and you have a long talk about the time in the city and what happened since.";
				if cocks of player > 0:[knocks Thomas up with one of two twins]
					say "    As the evening progresses and more racy topics come up, their arousal rises, and they soon are touching and kissing each other. Not being shy at all about such things, this quickly moves on to Felix mounting Thomas, the young stallion's long horsecock driving into your herm friend's pussy. Joining in for some fun yourself, you take turns fucking Thomas with Felix, with each of you shooting several loads into him over the course of that night. When he turns up pregnant afterwards, no one is quite sure who's the father. As it turns out when Thomas gives birth a few weeks later, you both are - it's twins, with one of them looking a lot like you, the other one resembling Felix. You come back to visit them quite often after that, both to get it on as well as to see the growing brood of kids that results from your couplings.";
				otherwise if cunts of player > 0:[pussy fucked]
					if "Sterile" is not listed in feats of player:[player gets knocked up by Felix]
						say "    As the evening progresses and more racy topics come up, their arousal rises, and they soon are touching and kissing each other. Not being shy at all about such things, this quickly moves on to Felix mounting Thomas, the young stallion's long horsecock driving into your herm friend's pussy. Joining in for some fun yourself, you take turns getting fucked with Thomas, with Felix filling both of you with several loads over the course of that night. Both of you ending up pregnant afterwards, you spend several more weeks there until the foals are born and thereafter return regularly to the community to ride hard centaur cocks and see your kids resulting from that.";
					otherwise:[player not fertile]
						say "    As the evening progresses and more racy topics come up, their arousal rises, and they soon are touching and kissing each other. Not being shy at all about such things, this quickly moves on to Felix mounting Thomas, the young stallion's long horsecock driving into your herm friend's pussy. Joining in for some fun yourself, you take turns getting fucked with Thomas, with Felix filling both of you with several loads over the course of that night. When Thomas turns up pregnant afterwards, you end up becoming the new colt's godparent and often return to the community to see your friends and get it on with the centaurs.";
			otherwise if hp of Thomas is 52 and lust of Thomas > 0: [stallion, open to anal]
				say "     After a day of exploring the village and meeting all kinds of people, Thomas invites you and Felix to his hut and you have a long talk about the time in the city and what happened since. As the evening progresses and more racy topics come up, their arousal rises, and they soon are touching and kissing each other. Not being shy at all about such things, this quickly moves on to Felix mounting Thomas, the young stallion's long horsecock driving into your friend's ass. Seems like your [if lust of Thomas is 1]arguments about anal fun have[otherwise]initiation to anal fun has[end if] well and truly taken hold. It's pretty hot to see these two handsome centaurs go at it right in front of you, and [if cocks of player > 0]you instantly join in when Felix comes and pulls out, driving your own hard cock into Thomas cum-filled ass. This leads over to a wild threesome, the three of you having sex in all possible permutations.[otherwise]you fondle and stretch Felix with your fingers and hand for when it's his turn to take Thomas black shaft.[end if] Having had a quite memorable night with the two of them, you often return to the centaur community after that to see your friends and have more sex-filled nights of fun.";
		otherwise if libido of Thomas is 2 or libido of Thomas is 12 or libido of Thomas is 22:[Jill available]
			say "    Calling a young colt out to meet you, Thomas introduces him to you as Kurt, his son with Jill. Being the result of you helping to save his mother, the chipper little boy is very eager to have you tell him all about it, getting pretty big eyes as you recount the battle against the centaurs following her. Later, after he's gone off to amaze his friends with the story, Thomas and Jill invite you to their hut and you have a long talk about the time in the city and what happened since.";
			say "    As the evening progresses and more racy topics come up, their arousal rises, and they soon are touching and kissing each other. Not being shy at all about such things, this quickly moves on to Thomas mounting Jill, the black stallion's long horsecock driving into her moist and dripping pussy. It's quite a night to remember after that. Having had a ringside seat for the conception of their second child, you end up becoming the new colt's godparent and often come back to visit the centaurs.";

Thomas ends here.
