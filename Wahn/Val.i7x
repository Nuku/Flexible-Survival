Version 1 of Val by Wahn begins here.

[ HP of Val                                                    ]
[  0: player hasn't visited his cell                           ]
[  1: player has visited his cell                              ]
[  2: player has seen him pregnant                             ]

[ thirst of Val - who impregnated him                          ]
[  0: no one (not preggers)                                    ]
[  1: one of the orcs                                          ]
[  2: the player                                               ]

[ ValPregnancy                                                 ]
[  0: not preggers                                             ]
[  1: invisibly preggers                                       ]
[  2: small bulge                                              ]
[  3: big bulge                                                ]
[  4: kid born and taken while the player was out              ]

Table of GameCharacterIDs (continued)
object	name
Val	"Val"

Val is a man. The HP of Val is normally 0.
The description of Val is "[ValDesc]".
The conversation of Val is { "Mew!" }.
ValPregCounter is a number that varies.
ValPregnancy is a number that varies.
The icon of Val is Figure of OrcBreeder_random_icon.

instead of sniffing Val:
	say "     Val has got an attractive male scent, with a definite undertone of orc cum - no wonder, with how often he gets fucked.";

to say ValDesc:
	if debugactive is 1:
		say "DEBUG -> HP: [HP of Val], THIRST: [thirst of Val], ValPregCounter: [ValPregCounter], VALPREGNANCY: [ValPregnancy] <- DEBUG[line break]";
	say "     Val is a very handsome orc breeder, with a muscled physique that lacks the sheer bulk and mass of the orc warriors. Being completely naked, you can see that his cock is a bit smaller than those of the bigger orcs, though still respectably sized. His features are almost pretty but still masculine, with a somewhat pronounced brow, a square jaw and yellow eyes. Two small tusks protrude from his lower mandible, looking rather cute, compared to a real orc's. Long, silky black hair hanging down over his shoulders underlines his good looks";
	if ValPregnancy is 1:
		say ". There is a kind of special glow about him";
	else if ValPregnancy is 2:
		say ". A slight bulge of his stomach shows the first visible proof of his pregnancy";
	else if ValPregnancy is 3:
		say ". He is quite obviously pregnant, with a bulging belly showing proof of [if thirst of Val is 1]his masters['][else]your sperm's[end if] virility";
	say ".";
	say "     As Val notices your intense gaze upon him, he presents himself for your viewing pleasure, stretching and slowly turning to show off his well-rounded ass. He's certainly become a well-trained slave in the short time since his capture.";

instead of conversing the Val:
	if facename of player is "Orc Warrior" and player is pure:
		say "     Seeing an orc warrior approach, Val reflexively licks his lips and one of his hands moves down to rub his quickly hardening cock. He waits for you to speak.";
	else if facename of player is "Orc Breeder" and player is pure:
		say "     Seeing you approach, Val lets an appreciative gaze wander up and down your body, then asks 'Yes, brother?'";
	else:
		say "     Seeing a non-orc approach, Val looks a bit curious at you, then asks 'Yes?'";
	wait for any key;
	say "[ValTalkMenu]";

to say ValTalkMenu:
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Talk about him";
	now sortorder entry is 1;
	now description entry is "Let him tell you about himself";
	now toggle entry is ValTalk rule;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Offer to free him";
	now sortorder entry is 2;
	now description entry is "Offer him his freedom";
	now toggle entry is ValTalk rule;
	[]
	if ValPregnancy > 1:
		choose a blank row in table of fucking options;
		now title entry is "Talk about his pregnancy";
		now sortorder entry is 3;
		now description entry is "Ask him how he feels about being with child";
		now toggle entry is ValTalk rule;
	[]
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the ValTalk rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Talk about him"):
			say "[ValTalk1]";
		if (nam is "Offer to free him"):
			say "[ValTalk2]";
		if (nam is "Talk about his pregnancy"):
			say "[ValTalk3]";
		wait for any key;

to say ValTalk1:
	say "     Val's brows draw together a bit as he tries to think back to his old self. Finally he says, 'I - I can't remember Vincent too well anymore.' Biting his lip, he continues, [one of]'I think I worked... in a store? A clothing store? Terribly long hours, and rude customers, and then... I was sorting items from the dressing rooms back to their places when I changed suddenly. Fur, and fangs and a fox tail.' He rubs the base of his spine thoughtfully, then shrugs.[or]'Master Mul says he doesn't matter anymore, so I guess it's okay.'[or]'He was a fox, no a man - a fox-man? Different than I am now anyways.' With a shrug, he stops trying to remember.[or]'There was a lot of running and hiding from the monsters on the streets, I was never safe. Not like now, with the powerful masters taking care of me.'[or]'He never thought about doing anything with a man. Strange, hm? I don't think I'd want to live without my masters. I'm here for their pleasure.'[at random]";

to say ValTalk2:
	say "     A hopeful flicker comes up in Val's eyes, then quickly dies down again. 'I - no, I couldn't. I'm here to serve the masters. They take care of me, making me feel so good when they fuck me every day and feed me their cum. I'm happy to be theirs.'";

to say ValTalk3:
	say "     Putting a hand on the bulge in his stomach, Val says, 'Vincent would never have dreamed of how amazing this is. To feel a new life growing inside you, knowing that you'll be a parent soon.' His expression takes on a thoughtful cast for a moment. 'I worry a bit about what will become of my child, though. I love my masters, but... I want him to be more than just another brute or breeder. And that's the choices to be had here in the lair.'";

An everyturn rule:
	if ValPregCounter is 1:
		if thirst of Val is 2:
			increase score by a random number between 5 and 10;
		if player is in Slave Cell 1:
			say "     Suddenly, Val calls, 'It's time!' and starts panting loudly, holding his bulging stomach with both hands. You rush over to him and help him to sit on the bed. A tremble goes through Val's lower belly as his special incubation chamber opens, releasing an egg-sack with the child inside into his bowels. With the completion of his male pregnancy fast approaching, Val lies back on the bed, breathing quickly as his body spasms in readiness. With nothing else you can do to help, you just sit beside him, holding his hand and wiping sweat of his brow.";
			say "     As Val struggles with his unusual birthing, he huffs and pushes as best he can, working to nudge the large egg onwards, working to expel it from his anus. It is not nearly as uncomfortable or painful as one might think, his orc breeder body clearly being meant to serve in this way. After about twenty minutes of pushing and grunting, the fleshy egg is pushed free with a little discomfort and even some pleasure as Val shudders from the rush at having created a new life. Moments after leaving his body, the flexible sack around the green-skinned child tears open in a gush of fluids, allowing Val to cradle his clean, if pretty wet, offspring to his breast.";
			WaitLineBreak;
			say "     The little orc seeks out his nipples and starts nursing, suckling hungrily as the orc breeder's body strives to complete its task and begins to lactate temporarily to feed his offspring. As the child drinks, it grows rapidly in Val's arms, rushing through the stages of toddler and little child in just moments, becoming a young boy next, then slowing down a little bit as he enters puberty. Before long, Val is sitting beside a second orc on the bed, his child having arrived at young adult development when he stopped drinking from the breeder's breast. Not only nutrition but personality and knowledge seem to have flowed through the nipple into the newborn, who's now become a young man.";
			say "     The minutes-old orc gives his 'father' an affectionate hug, then stands up, looking into the world with new eyes and an intelligent, curious look on his face. After watching his son explore his surroundings for a moment, moving around totally unashamed by his nakedness, Val turns to you and says, 'I want to call him Christopher - no, Chris... but he'll likely be [']Uglug the warrior brute['] or just another breeder if he stays here for any time. Can you... take him away from the lair with you? Bring him somewhere safe?' He looks over at Chris with proud eyes, then sighs. 'I want to be with him for a while, but if he's ever supposed to be... more, you know, he can't be here.'";
			LineBreak;
			say "     [bold type]What's your answer?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Take Chris with you to the library.";
			say "     ([link]N[as]n[end link]) - Refuse to take Chris.";
			if player consents:
				LineBreak;
				say "     A look of incredible relief on his face, Val hugs you, saying, 'Thank you, thank you, thank you,' while he does so. A moment later, he steps back from you again and takes Chris to the side, talking to him in quiet tones for a while, then embraces his son and says a bit louder, 'My friend here will take you to a safer place. And remember - don't ever drink an orc brew or let an orc cum in your ass or mouth. Orc cum is... delicious, but you'll never want to stop afterwards. Now go, while there's still time.'";
				if CellDoorStatus is 0 or CellDoorStatus is 2:
					say "     With that, Val digs out a key to the cell door from under his mattress, unlocking the door and holding it open for you. So he does have the means to escape, but is too tamed and docile as well as dependent on orc cum to do so. As you leave the cell, the door automatically falls shut again when Val lets go of it, pushed by a spring at the top. The lock gives a click as it locks the slave in. Well, if he doesn't want to leave himself, there's nothing much you can do about that, so you just make your way out and down the corridor with Chris, silently escaping the orc lair. The young orc is a natural at stealthy movement, no doubt thanks to the skills inherited from his father, and you make your way to the library with ease.";
					now the Cell Door 1 is closed;
					now the Cell Door 1 is locked;
					now battleground is "void";
					move player to Sitting Area;
					move Chris to Sitting Area;
					now HP of Chris is 1;
				else:
					say "     Val moves over to the cell door, holding it open for you. As you leave the cell, the door automatically falls shut again when Val lets go of it, pushed by a spring at the top. The breeder slave gives you a wave, being too tamed and dependent on orc cum to want to escape himself, then sits down on his cot. Well, if he doesn't want to leave himself, there's nothing much you can do about that, so you just make your way out and down the corridor with Chris, silently escaping the orc lair. The young orc is a natural at stealthy movement, no doubt thanks to the skills inherited from his father, and you make your way to the library with ease after that.";
					now the Cell Door 1 is closed;
					now battleground is "void";
					move player to Sitting Area;
					move Chris to Sitting Area;
					now HP of Chris is 1;
			else:
				LineBreak;
				say "     Val's expression falls as you decline, and the disappointment is audible in his voice as he says, 'I - I'll just spend what time I have with Chris then... while he still is Chris.' Turning away from you, the orc breeder then walks over to his son, talking to him in a quiet voice. You decide to keep your distance and leave them to it in peace.";
			now ValPregnancy is 0;     [no need to tell the player about the birth, as he was present]
		else:
			say "     You have a strange feeling in your body, as if you somehow just know that a new life has entered this world. Maybe you should go check on Val in the orc lair...";
			now ValPregnancy is 4;     [so he can tell the player about their kid in the next meeting]
		now ValPregCounter is 0;
	else if ValPregCounter is 3 and player is not in Slave Cell 1 and HP of Val is 2:
		say "     [bold type]You remember that the time for the birth of Val's child should be soon. Maybe you should visit the orc breeder in his cell to be at his side when that happens...[roman type]";
	else if ValPregCounter is 12:
		now ValPregnancy is 3;   [very visible pregnancy]
	else if ValPregCounter is 24:
		now ValPregnancy is 2;   [visible pregnancy]
	if ValPregCounter > 1:
		decrease ValPregCounter by 1;

Instead of fucking the Val:
	if (lastfuck of Val - turns < 2):
		say "     Val puts a hand on your chest to hold you back and says, 'Please, I need a break for a moment, okay?";
	else:
		say "[ValSexMenu]";

to say ValSexMenu:
	setmonster "Orc Breeder";
	LineBreak;
	project the Figure of OrcBreeder_random_icon;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his ass";
		now sortorder entry is 1;
		now description entry is "Take the orc breeder's ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 2;
	now description entry is "Slide yourself down on the orc breeder's cock";
	[]
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Fuck his ass"):
					say "[ValSex1]";
				if (nam is "Ride his cock"):
					say "[ValSex2]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the orc breeder, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say ValSex1: [fucking him]
	say "     Stepping up to Val, you put your arms around him and grope the firm, round cheeks of his butt. The orc breeder moans deeply as you touch him, leaning in against you with the eagerness of a true submissive, his own cock quickly hardening to press against your stomach. Pulling his cheeks apart, you rub a finger up and down the orc's crack, teasingly stroking over his pucker before pushing in. Val's muscle yields readily to your invasion, well-used to such treatment by now - as becomes apparent when you feel the wetness of cum around your probing digit. Seems like the panting breeder already got fucked by his masters today, and likely more than once. You continue to finger him for a while, delighting in the little gasps and groans you can make him do, then tell him to get on the padded bench in the middle of the cell.";
	say "     Giving a reflexive 'Yes [master],' Val immediately obeys, quickly stepping over to the fuck-bench and lying down on it lengthwise on his back. Then he raises and spreads his legs, holding them open so you have full access to his oh so fuck-able butt. You take a moment to savor the sight of this strong and muscular yet totally submissive orc presenting himself to you, idly dropping your gear and clothes as you do so. After the last piece of cloth falls to the ground, you do what seems natural, stepping up to the enticing breeder to rub your hard cock over his waiting hole. Val gives a needy moan as you brush against him, then gasps 'Yeah, fuck me. I need it!' as you push forward and sink your manhood into his welcoming depths.";
	WaitLineBreak;
	say "     It's amazing how tight the orc's cum-lubed hole is around your shaft, given that Val is constantly getting fucked by his masters['] thick cocks. Might be that he's just a natural at bottoming or maybe part of the whole orc breeder infection - not that you care that much about which it is currently, being balls-deep inside him and running your hands over Val's muscled chest and abs. After stroking down over his stomach, you give Val's own hard cock a few strokes, then put your hands on his hips, gripping him tightly. Then you pull your cock out almost all the way and start fucking him with deep and hard strokes, filling the cell with slapping noises as you pound against his butt.";
	say "     Val just takes everything you can give, even moaning to take him ever faster and harder, while at the same time flexing his inner muscles to grip and squeeze your thrusting shaft for maximum pleasure. Getting a good ass-fucking drives the eager orc breeder over the edge before much longer, almost shouting 'Just like that, yeah, YEAH - aahhh - I'm coming!' as his cock sprays a pretty hefty load of cum all over his chest. His inner muscles twitch and flex with each shot of seed erupting from Val's cock, giving you all new stimulating sensations as you move in and out of him. Just a moment later, you reach the climax of your arousal and come, filling the orc's insides with spurt after spurt of your warm seed.";
	WaitLineBreak;
	say "     After that, the slutty little orc breeder just stays lying on the bench, enjoying the afterglow of his orgasm and the full feeling you gave him. You on the other hand go and grab your gear and clothes to get dressed, as you don't have the time to lounge around all day like this kept slave.";
	infect "Orc Warrior";
	now lastfuck of Val is turns;

to say ValSex2: [riding him]
	if player is female:
		say "     Stepping up to Val, you put your arms around him and grope the firm, round cheeks of his butt. The orc breeder moans deeply as you touch him, leaning in against you with the eagerness of a true submissive, his own cock quickly hardening to press against your stomach. Pulling his cheeks apart, you rub a finger up and down the orc's crack, teasingly stroking over his pucker before pushing in. Val's muscle yields readily to your invasion, well-used to such treatment by now - as becomes apparent when you feel the wetness of cum around your probing digit. Seems like the panting breeder already got fucked by his masters today, and likely more than once. You continue to finger him for a moment longer, delighting in the little gasps and groans you can make him do, then switch over to his front and take hold of the orc's hard cock. After stroking the thick piece of man-meat a few times and cupping Val's full balls, you tell him to get on the cot at the back of the cell.";
		say "     Giving a reflexive 'Yes [master],' Val immediately obeys, quickly walking over to his bed and lying down on his back. Then he raises and spreads his legs, holding them open so you have full access to his oh so fuck-able butt. You take a moment to savor the sight of this strong and muscular yet totally submissive orc presenting himself to you, idly dropping your gear and clothes as you do so. But after the last piece of cloth falls to the ground, you surprise Val by ordering him to lower his legs and climbing on the bed to kneel over his body, your legs left and right of his hips. The orc breeder's eyes go wide as you reach down to find his cock, holding it straight up as you lower your hips bit by bit. Val pants in need as his erection presses against your nether lips, then sinks inside between them. He gasps 'Yeah, feels so good. Thank you!' as you impale yourself fully on his shaft, gripping it tightly with your inner muscles.";
		WaitLineBreak;
		say "     It's amazing how quickly the usually so submissive orc breeder starts to get into thrusting up against you hard and deep. Might be that it's all his pent-up urges from just bottoming all the time or maybe there's a bit of his old self Vincent left in there somewhere - not that you care that much about which it is currently, riding Val's shaft and gasping as he hammers into you from below. You just lean back, enjoying the thorough fucking you're getting while supporting yourself with both hands gripping Val's legs.";
		say "     The lithe orc breeder really knows what he's doing, rotating his hips a bit to give you all kinds of great sensations and often hitting your g-spot. Well, as often as he gets fucked, he almost has to know all the tricks by now. Val keeps fucking you with admirable stamina for quite a while, then finally his moans rise in volume and urgency and his thrusts get faster and faster. Not much later, he almost shouts 'Yeah, YEAH - aahhh - I'm coming!' as his cock blasts a hefty load of cum deep into you. Getting bred by the green-skinned slave and feeling his cock pulse inside you was the last little push you yourself needed to get off, so you join him in orgasm only a second later.[fimpregchance]";
		WaitLineBreak;
		say "     Sinking down to sit on Val's hips with his cock still inside you, you lean forward and kiss him, then just lie on the bed for a while, basking in your orgasms afterglow together. You wish you could stay like this for some more time, but eventually you have to get back to the tricky business of surviving in this chaotic city...";
	else:
		say "     Stepping up to Val, you put your arms around him and grope the firm, round cheeks of his butt. The orc breeder moans deeply as you touch him, leaning in against you with the eagerness of a true submissive, his own cock quickly hardening to press against your stomach. Pulling his cheeks apart, you rub a finger up and down the orc's crack, teasingly stroking over his pucker before pushing in. Val's muscle yields readily to your invasion, well-used to such treatment by now - as becomes apparent when you feel the wetness of cum around your probing digit. Seems like the panting breeder already got fucked by his masters today, and likely more than once. You continue to finger him for a moment longer, delighting in the little gasps and groans you can make him do, then switch over to his front and take hold of the orc's hard cock. After stroking the thick piece of man-meat a few times and cupping Val's full balls, you tell him to get on the cot at the back of the cell.";
		say "     Giving a reflexive 'Yes [master],' Val immediately obeys, quickly walking over to his bed and lying down on his back. Then he raises and spreads his legs, holding them open so you have full access to his oh so fuck-able butt. You take a moment to savor the sight of this strong and muscular yet totally submissive orc presenting himself to you, idly dropping your gear and clothes as you do so. But after the last piece of cloth falls to the ground, you surprise Val by ordering him to lower his legs and climbing on the bed to kneel over his body, your legs left and right of his hips. The orc breeder's eyes go wide as you reach down to find his cock, holding it straight up as you lower your hips bit by bit. Val pants in need as his erection presses against your waiting hole, then sinks inside as your pucker yields to his member. He gasps 'Yeah, feels so good. Thank you!' as you impale yourself fully on his shaft, gripping it tightly with your inner muscles.";
		WaitLineBreak;
		say "     It's amazing how quickly the usually so submissive orc breeder starts to get into thrusting up against you hard and deep. Might be that it's all his pent-up urges from just bottoming all the time or maybe there's a bit of orc warrior sexual dominance even in the most docile breeder - not that you care that much about which it is currently, riding Val's shaft and gasping as he hammers into you from below. You just lean back, enjoying the thorough fucking you're getting while supporting yourself with both hands gripping Val's legs.";
		say "     The lithe orc breeder really knows what he's doing, rotating his hips a bit to give you all kinds of great sensations and often hitting your prostate. Well, as often as he gets fucked, he almost has to know all the tricks by now. Val keeps fucking you with admirable stamina for quite a while, then finally his moans rise in volume and urgency and his thrusts get faster and faster. Not much later, he almost shouts 'Yeah, YEAH - aahhh - I'm coming!' as his cock blasts a hefty load of cum deep into you. Getting bred by the green-skinned slave and feeling his cock pulse inside you was the last little push you yourself needed to get off, so you join him in orgasm only a second later[if player is male]. Your [cock of player] cock twitches and jerks as your body trembles in pleasure, spraying your own creamy load all over Val and the bed[end if].[mimpregchance]";
		WaitLineBreak;
		say "     Sinking down to sit on Val's hips with his cock still inside you, you lean forward and kiss him, then just lie on the bed for a while, basking in your orgasms afterglow together. You wish you could stay like this for some more time, but eventually you have to get back to the tricky business of surviving in this chaotic city...";
	infect "Orc Breeder";
	now lastfuck of Val is turns;

Val ends here.
