Version 1 of Thought Eater by Wahn begins here.
[Version 1 - Initial Setup]

"Adds a Thought Eater to Flexible Survival's Wandering Monsters table, with impregnation chance."

Section 1 - Creature Responses

when play begins:
	add { "Thought Eater" } to infections of guy;

to say Thought_Eater_Wins:
	if mindshield helmet is equipped:
		say "     Your will to resist worn away, you fall to your knees in front of the creature. 'Enough of this,' the thought eater hisses, reaching out to rip the mindshield helmet off your head with his long-fingered hands. Then he smashes the piece of equipment against the nearest wall, multiple times, before letting the bent and broken helmet drop on the ground. 'No one can resist my power, not even with your toys!' He grips your head tightly with one hand, his sharp fingernails starting to dig into your skin for a second, then he pulls it back before doing serious damage. 'Stand!' he commands, which you do - after which you're pulled close against him, his clawed fingers gripping your shoulders as the four tentacles on the thought eater's face start reaching for your head, his beak visible between them. As the suckered lengths of tentacle wrap around your head, it almost feels as if they sink into it, digging through your mind and memories.";
		now mindshield helmet is not equipped;
		decrease carried of mindshield helmet by 1;
	else:
		say "     Your will to resist worn away, you fall to your knees in front of the creature. 'Excellent,' the thought eater hisses, reaching out to cup your head with his long-fingered hand. 'Stand!' he commands, which you do - after which you're pulled close against him, his clawed fingers gripping your shoulders as the four tentacles on the thought eater's face start reaching for your head, his beak visible between them. As the suckered lengths of tentacle wrap around your head, it almost feels as if they sink into it, digging through your mind and memories.";
	WaitLineBreak;
	say "     The thoughts of revulsion at the clammy touch of his suckers on your skin are the first to go, devoured by the invading presence in your mind, gone as if they never existed in the first place. He continues to rend apart any plans and hopes you have of escaping your current predicament, then digs deeper into your being. A shudder goes through your body as you feel his mental tentacle wrap around a memory of yours, pulling it out of its proper place to the forefront of your thoughts. 'Delicious', you hear his telepathic comment as he feasts on the memory of... someone and you doing... something. There is only a hint of sexual context left of whatever it was, other than that it's all just blank as you try to recall it. The beginning of gibbering, screaming panic at losing part of yourself to your captor vanishes as quickly as it comes, wiped away by a tentacle and savored like a sweet dessert.";
	say "     You're left somewhat numb and oblivious to what just happened, the sated thought eater then opening his beak to lick your cheek and pulling back from you. His hand moving to the front of his jumpsuit, gripping the growing bulge there, the thought eater tells you telepathically 'Very tasty and stimulating, pet. Present yourself, I want to make use of you.' As the thoughts of denying him this come up and you're just in the process of thinking up a suitably defiant thing to say, you shockedly realize that your body is already moving, removing clothing and gear to fulfill its master's wishes. And that master isn't you, currently, but the only vaguely human creature in front of you, playing with it like a puppet.";
	WaitLineBreak;
	say "     As you find yourself stripped to stand naked in front of him, stretching and posing to show off your form, the next order echoes through your mind, your hands immediately getting to work on the fastenings of his jumpsuit. Pulling down the long zipper at the front and pushing the suit's fabric over his shoulders to pull it down, you bare more and more of your master's body, which is very tall, making it look spindly even though he actually is lightly muscled. Then you arrive down at the crotch, pulling the jumpsuit carefully over his bulge, freeing a long and erect shaft with two sizable balls from their confinement. His manhood looks more or less human, but... moves, bending a bit to rub against your arm as you peel the tight jumpsuit further down the thought eater's body.";
	say "     Soon you're both bare-ass naked, the creature now inspecting you, touching your body with his hands and also his tentacle-like cock. While his hands are on your sides and chest, it rubs against your leg, softly stroking, and you start panting in arousal at the certainty of getting his member into you soon. This feels right, this is right, exactly what you're on the world to do - those thoughts are at the forefront of your mind, caused by the by now very familiar touch of your master's mental appendages guiding your mind to what he wants.";
	WaitLineBreak;
	if Player is female: [female+herm]
		say "     Eager to be fucked by your amazing master, you bend forward as he commands you to, spreading your legs slightly to bare your ready and moist pussy. Stepping up behind you, the thought eater lets his tentacle-like cock stroke between the buns of your ass, then push against your pucker softly before snaking its way further down and reaching your pussy. Rubbing against your sensitive pussy lips and your clit with the tip of his maleness, he gets you hornier and hornier, your female juices by now literally dripping from your cunt.";
		say "     Positioning the tip of his tentacle cock at your opening, he then thrusts into you, going deep and stretching your inner passages around his girth. It's just amazing to be so intimately connected with your lord, feeling him move inside you, his flexible shaft pushing all the right buttons as it winds itself deeper and deeper. He gives you sensations unrivaled by what you felt before, reacting to what feels best instantly by reading your mind. Soon he's all the way in you, the thought eater's balls against your ass and his cockhead testingly poking against your cervix.";
		WaitLineBreak;
		say "     Starting to move in and out, your beloved master fucks you hard and deep, his hands moving forward to grip your shoulders. Pounding his erection into your pussy, the thought eater gets into taking you quite a bit, soon making lustful noises with his beak that aren't even close to anything human. Your mind now closely linked to his magnificent intellect, he takes double pleasure in your coupling, drawing on your own sensations and feelings as he fucks you. A bit of that connection leaks to your conscious self too, giving you the breathtaking (if slightly disorienting) impression of fucking your own pussy.";
		say "     Your master's narrow hips slapping against your ass and his shaft moving deep inside you drives your linked arousal to new heights, driving you towards the edge of your climax. Then, just as the desire to cum becomes almost unbearably strong, the tip of his tentacle-like cock strongly pushes against your cervix, wiggling in just the right way to gain entrance to your womb itself with the muscle at its entrance stretched around his shaft. Then he comes, or you both do, in your extraordinary coupling, linked body and mind. You feel the tightness of his balls as if they were yours, the pulsing of his/your shaft in the tight cave he/you are fucking, as well as your own sensation of having your master's erection stretching your inner walls. Burst after burst of cum shoots through his cock, blasting straight into your womb, giving you a pleasantly full feeling as well as the pleasure at having spread your seed[if Player is male]. Your own hard [cock of Player] cock sprays its load at the same time, splattering the floor below with streaks of white cum[end if].";
		say "     [fimpregchance]";
		WaitLineBreak;
		say "     Staying connected for a while longer, your body getting stroked and... kissed(?) on the back, as far as that's possible with four tentacles and a beak, you feel nothing but bliss at being together with your master. Then suddenly, his mental grip lessens, panic at being alone rising inside you, which he quickly sweeps away with a thought-tentacle and devours like a piece of candy. As his cock pulls out of you, followed by a trickle of cum dripping down between your legs, you hear your master's voice in your head. 'You have pleased me, pet. I'll let you go back out into the city for now, to make more delightful memories I can feast upon. Return later with something that interests me.'";
		say "     With that, you find yourself picking up your gear and clothes, putting them on and walking through the dark corridors to the entrance of the underground tunnels under the Trevor Labs. As you step outside and the door clicks closed behind you, the last of the strange hybrid's mental influence fades away. He let you go, this time, though you still have the gaping hole in your mind where the thought eater fed upon you.";
	else: [male+neuter]
		say "     Eager to be fucked by your amazing master, you bend forward as he commands you to, spreading your legs slightly to bare your asshole. Stepping up behind you, the thought eater lets his tentacle-like cock stroke between the buns of your ass, then wiggle against your pucker before he pushes in against it. Almost imperceptibly, a mental appendage of the creature brushes against a part of your mind, causing you to totally relax back there, letting your muscle easily stretch around the tentacle cock pushing inside your body. He thrusts deep, causing you to moan loudly as he plunges his member into your inner passages. It's just amazing to be so intimately connected with your lord, feeling him move inside you, his flexible shaft pushing all the right buttons as it winds itself deeper and deeper. He gives you sensations unrivaled by what you felt before, reacting to what feels best instantly by reading your mind. Soon he's all the way in you, the thought eater's balls against your ass and his cockhead testingly poking your inner walls.";
		WaitLineBreak;
		say "     Starting to move in and out, your beloved master fucks you hard and deep, his hands moving forward to grip your shoulders. Pounding his erection into your ass, the thought eater gets into taking you quite a bit, soon making lustful noises with his beak that aren't even close to anything human. Your mind now closely linked to his magnificent intellect, he takes double pleasure in your coupling, drawing on your own sensations and feelings as he fucks you. A bit of that connection leaks to your conscious self too, giving you the breathtaking (if slightly disorienting) impression of fucking your own ass.";
		if Player is not mpreg_ok:[normal assfuck]
			say "     Your master's narrow hips slapping against your ass and his shaft moving deep inside you drives your linked arousal to new heights, bringing your orgasm closer and closer. The desire to cum soon becoming almost unbearably strong, he slams into you one last time, burying his whole shaft in your ass. Then he comes, or you both do, in your extraordinary coupling, linked body and mind. You feel the tightness of his balls as if they were yours, the pulsing of his/your shaft in the tight cave he/you are fucking, as well as your own sensation of having your master's erection stretching your inner walls. Burst after burst of cum shoots through his cock, blasting into your body, giving you a pleasantly full feeling as well as the pleasure at having spent your load. [if Player is male]Your own hard cock sprays its load at the same time, splattering the floor below with streaks of white cum[else]Your whole body convulses in pleasure as you orgasm[end if].";
		else: [mpreg fuck]
			say "     Your master's narrow hips slapping against your ass and his shaft moving deep inside you drives your linked arousal to new heights, bringing your orgasm closer and closer. Then, just as the desire to cum becomes almost unbearably strong, the tip of his tentacle-like cock seeks out the entrance to your womb, strongly pushes against it, wiggling in just the right way to gain entrance. Then he comes, or you both do, in your extraordinary coupling, linked body and mind. You feel the tightness of his balls as if they were yours, the pulsing of his/your shaft in the tight cave he/you are fucking, as well as your own sensation of having your master's erection stretching your inner walls. Burst after burst of cum shoots through his cock, blasting straight into your womb, giving you a pleasantly full feeling as well as the pleasure at having spread your seed. [if Player is male]Your own hard [cock of Player] cock sprays its load at the same time, splattering the floor below with streaks of white cum[else]Your whole body convulses in pleasure as you orgasm[end if].";
			say "     [mimpregchance]";
		WaitLineBreak;
		say "     Staying connected for a while longer, your body getting stroked and... kissed(?) on the back, as far as that's possible with four tentacles and a beak, you feel nothing but bliss at being together with your master. Then suddenly, his mental grip lessens, panic at being alone rising inside you, which he quickly sweeps away with a thought-tentacle and devours like a piece of candy. As his cock pulls out of you, followed by a gush of cum, you hear your master's voice in your head. 'You have pleased me, pet. I'll let you go back out into the city for now, to make more delightful memories I can feast upon. Return later with something that interests me.'";
		say "     With that, you find yourself picking up your gear and clothes, putting them on and walking through the dark corridors to the entrance of the underground tunnels under the Trevor Labs. As you step outside and the door clicks closed behind you, the last of the strange hybrid's mental influence fades away. He let you go, this time, though you still have the gaping hole in your mind where the thought eater fed upon you.";
	infect "Herm Human";

to say Thought_Eater_Loses:
	say "     As you land blow after blow on the creature, the thought eater retreats a bit each time, clearly having had enough of a beating from you. At one point, he looks to the side, his tentacles waving a bit as if he was doing a silent call for someone, then he goes back to dodging your attacks.";
	LineBreak;
	say "     After a minute or so more of this, you hear something from a corridor to your left. You barely have time to even turn your head before you hear a shouted 'Don't hurt the master!' and a young Asian man rushes at you from the darkness. The guy is naked except for a long lab-coat and just keeps coming at you at full speed, his arms wrapping around your chest as he bowls you over.";
	WaitLineBreak;
	say "     By the time you manage to push off the thought eater's slave and get your feet back under you, the creature is already well ahead of you, running down a darkened corridor. Before you can start chasing him, the Asian guy in the lab-coat steps in front of you again. 'Wait, don't hurt the master.' His arms twitch up a bit, then he lets them fall as he realizes that he's no match for you without surprise on his side. Instantly switching tactics, he runs his hands down his smooth chest, grasping his cock and holding it up to show the opening of a pussy right below where his balls hang. With a hopeful smile, the handsome guy pushes his naked body against yours, saying 'You can make use of me instead, just leave him and I'll do anything you wish!'";
	LineBreak;
	say "     [bold type]What is your decision?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Let the slave's charms distract you.";
	say "     ([link]N[as]n[end link]) - Keep going for the thought eater instead.";
	if Player consents:
		LineBreak;
		say "     Taking your eyes off the retreating shape of your opponent, you look closer at the slave he called to make his getaway. It's an Asian man in his mid-twenties you'd say, relatively tall and skinny. He's got a handsome face and hairless chest, with a quite respectable cock hanging between his legs, plus that pussy under it he showed you earlier. His only piece of clothing is a white lab-coat, loosely worn with an open front. A Trevor Labs name-plate on it makes the man out to be Lee Sato, junior researcher.";
		say "     Relieved that his ploy is working, Lee gives you his best seductive look, stroking over his chest and abs, jerking his manhood demonstratively and then pulls his nether lips apart to show an already moist pussy. With a flowing movement, he also turns around and leans his upper body forward a bit, running a hand over a very nicely rounded and perky butt. 'I'm ready to please you,' he coos over his shoulder, then moves to stand directly in front of you, his hand rubbing your crotch.";
		WaitLineBreak;
		say "     [TESlaveSexMenu]";
	else:
		LineBreak;
		say "     Brushing the almost naked herm aside, you dash after the fleeing thought eater. Running as fast as you can, you manage to catch up a little bit in the immensely long corridor, but then he dodges around a corner. As you come to it and look around, you see your quarry and... one, two, thr - you don't know how many - deformed creatures with tentacles further along that hallway. With a hiss, pointing his long and thin arm, the thought eater tells them to attack.";
		say "     Faced with a mob of monstrosities coming your way, you decide that retreat might just be the best option and run. Thankfully, the creatures aren't all that quick and jostle each other for the spots at the front, so you make it to the exit well ahead of them. The heavy door to the underground closes behind you with a comforting thud.";

to say TESlaveSexMenu:
	setmonster "Thought Eater";
	choose row MonsterID from the Table of Random Critters;
	now non-infectious entry is true;
	setmonster "Herm Human";
	choose row MonsterID from the Table of Random Critters;
	blank out the whole of table of fucking options;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Have him blow your cock";
		now sortorder entry is 1;
		now description entry is "Let the herm slave blow you.";
		now toggle entry is TESlaveSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Suck his cock";
	now sortorder entry is 2;
	now description entry is "Put the Asian dude's shaft in your mouth.";
	now toggle entry is TESlaveSex rule;
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Have him lick your pussy";
		now sortorder entry is 3;
		now description entry is "Put the herm slave's mouth to good use.";
		now toggle entry is TESlaveSex rule;
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck his pussy";
		now sortorder entry is 4;
		now description entry is "Fill the herm slave's pussy with your cock.";
		now toggle entry is TESlaveSex rule;
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Let him fuck your pussy";
		now sortorder entry is 5;
		now description entry is "Ride the Asian dude's cock.";
		now toggle entry is TESlaveSex rule;
	if (Cock Count of Player > 1):
		choose a blank row in table of fucking options;
		now title entry is "Take his ass";
		now sortorder entry is 6;
		now description entry is "Fill the herm slave's ass with your cock.";
		now toggle entry is TESlaveSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Let him fuck your ass";
	now sortorder entry is 7;
	now description entry is "Ride the Asian dude's cock.";
	now toggle entry is TESlaveSex rule;
	choose a blank row in table of fucking options;
	now title entry is "Nothing";
	now sortorder entry is 8;
	now description entry is "Don't have sex with the herm slave after all.";
	now toggle entry is TESlaveSex rule;
	sort the table of fucking options in sortorder order;
	change the current menu to table of fucking options;
	carry out the displaying activity;
	clear the screen;

This is the TESlaveSex rule:
	choose row Current Menu Selection in table of fucking options;
	let nam be title entry;
	say "[title entry]: [description entry][line break]";
	say "Is this what you want?";
	if Player consents:
		decrease menu depth by 1;
		clear the screen;
		if (nam is "Have him blow your cock"):
			say "[TESlaveSex1]";
		if (nam is "Suck his cock"):
			say "[TESlaveSex2]";
		else if (nam is "Have him lick your pussy"):
			say "[TESlaveSex3]";
		else if (nam is "Fuck his pussy"):
			say "[TESlaveSex4]";
		else if (nam is "Let him fuck your pussy"):
			say "[TESlaveSex5]";
		else if (nam is "Take his ass"):
			say "[TESlaveSex6]";
		else if (nam is "Let him fuck your ass"):
			say "[TESlaveSex7]";
		else if (nam is "Nothing"):
			say "[TESlaveSexCancel]";
		wait for any key;

to say TESlaveSex1: [cock sucked by Lee]
	say "     As you put your hands on his shoulders and softly push down on them, the slave willingly kneels, eager to fulfill his task. While you drop your pack and gear, his hands are on your hips, sliding down any clothing you're wearing to reveal your already half-hard manhood. He takes it in his hand, jerking it a few times, then looks up at you with a submissive expression and proceeds to lick your balls, taking one, then the other into his mouth and playing his tongue over them. Holding your cock up, he then slowly licks up its underside before finally arriving at the tip. 'I've trained a lot to better please my master,' he says with a dreamy smile, then slides his soft lips over your cockhead.";
	say "     And indeed he has - the junior scientist takes your maleness into his mouth bit by bit, his lips tight around it while his tongue teases its length. Then he's got it all inside his mouth, the Asian slave's nose pressing against your crotch. Holding still like that for several seconds, he then pulls back to take a breath before starting to bob his head up and down on your shaft. Getting an expert blowjob from the young man, your arousal is quickly driven to new heights. Before much longer, you feel the need to cum rise in your balls and pull the slave's head against your crotch, holding it there with your erection all the way inside him. And just like that, you cum, blasting burst after burst of your seed straight into Lee's mouth, where he swallows it hungrily.";
	WaitLineBreak;
	say "     With you having gotten your rocks off and his master having gotten away, Lee gives a pleased smile at having done his job well. He kisses the tip of your softening cock, then stands up and says 'There, wasn't that better than hurting the master?' His eyes get a faraway look for a second, then he continues 'I have to return to my chamber now. Please don't try to follow me.' With that, he dashes off down the nearest hallway, pretty fast in his unencumbered, nearly naked state.";
	infect "Herm Human";

to say TESlaveSex2: [sucking Lee's cock]
	say "     As you kneel down in front of the slave, you see a look of surprise cross his face, followed by a beaming smile. Seems like him getting serviced isn't how this usually goes. Taking hold of his quickly hardening cock, you stroke it a few times with one hand, your other hand meanwhile brushing over his pussy lips to then cup and fondle his balls. The young herm moans at your stimulation, then gasps as he feels your lips against the tip of his cock, sliding over it and sinking further down along its length. After taking a deep breath through your nose, you keep going until he's all the way inside, deep-throating the panting slave before you pull back again.";
	say "     Bobbing up and down on his shaft, your hands busy with his pussy and balls, it doesn't take all that long until you drive Lee over the edge. With a loud and very satisfied moan, he orgasms, shooting long strings of cum into your mouth at the same time as he squirts femcum all over your hand. After catching all of his load, you stand up and pull him into a deep kiss, sharing it with him, then watch as he swallows it obediently. Finally, you bring your dripping hand up and have him lick off all of his femcum.";
	WaitLineBreak;
	say "     With you having gotten your rocks off and his master having gotten away, Lee gives a pleased smile at having done his job well. He softly kisses your cheek and says 'There, wasn't that better than hurting the master?' His eyes get a faraway look for a second, then he continues 'I have to return to my chamber now. Please don't try to follow me.' With that, he dashes off down the nearest hallway, pretty fast in his unencumbered, nearly naked state.";
	infect "Herm Human";

to say TESlaveSex3: [cunt licked by Lee]
	say "     As you put your hands on his shoulders and softly push down on them, the slave willingly kneels, eager to fulfill his task. While you drop your pack and gear, his hands are on your hips, sliding down any clothing you're wearing to reveal your already swollen pussy. He brushes his fingers over it, caressing your sensitive nether lips and making you moan. Then he proceeds to rub your clit a bit before leaning forward and teasing it with his tongue. It just feels amazing how he pleases you orally, and he has you panting and moaning in no time at all, holding on to his head to keep him going.";
	say "     Then he brings a hand to your crotch again, spreading your pussy lips and inserting a finger between them, pushing into your by now pretty wet love tunnel. With how easy he can slide it in and out, it's not much longer until Lee adds another finger, then another, fondling your inner passage as he does so. Sucking and nibbling on your clit while he fucks his three digits in and out of you, the enslaved researcher quickly drives you to the edge of climax - and then across. Gasping in lust, nearly shouting your moans, you grab his hair tightly with your hands, holding the Asian herm against your crotch as you come, femcum squirting out against his chin and over his flat chest[if Player is male]. Your cock shoots long strings of cum, landing on the concrete floor of the underground passage you are in[end if].";
	WaitLineBreak;
	say "     With you having gotten your rocks off and his master having gotten away, Lee gives a pleased smile at having done his job well. He plants a soft kiss on your clit, then stands up and says 'There, wasn't that better than hurting the master?' His eyes get a faraway look for a second, then he continues 'I have to return to my chamber now. Please don't try to follow me.' With that, he dashes off down the nearest hallway, pretty fast in his unencumbered, nearly naked state.";
	infect "Herm Human";

to say TESlaveSex4: [Lee's pussy fucked by player]
	say "     Ordering him to lie down and spread his legs, you quickly drop your gear and take off your clothes, then kneel down between the willing slave's legs. He watches you with a submissive, eager to please expression, even spreading his pussy lips for you with his fingers. Taking your cock in your hand, ragingly hard from the Asian herm's little show, you put it between his swollen pussy lips and thrust forward, only stopping when your balls touch the skin of his crotch. Lee gasps as your hard shaft pushes into him all the way, stretching his inner passage around its hard length. He pants 'Fuck me. Fuck me!' in between loud moans as you start moving in and out of him, really pounding his pussy with each new thrust.";
	say "     While fucking the herm slave-boy hard and deep, you run your hands over the light muscles of his flat chest, then move them lower to hold on to his hips as you're pushing him away a bit with the more forceful thrusts. With the Asian guy's wet and warm love tunnel tight around your shaft, you feel the urgent need to come rise in your balls before much longer. Reaching your climax just as you were on pulling back out for a new thrust, the shiver going through your body has your shaft slip out of his pussy, causing your first blast of cum to land on his crotch and stomach. Quickly taking hold of your erection, you aim it back at Lee's pussy, blasting the second shot straight into it with your cockhead between his nether lips, then slide yourself deep into him, lubricated by your own cum. Grinding your hips against him, you unload the rest of your seed in his ready pussy and womb.";
	WaitLineBreak;
	say "     With you having gotten your rocks off and his master having gotten away, Lee gives a pleased smile and lets himself go as well, no longer holding back on his own orgasm. With a lust-filled gasp, he pushes his hips up a bit, his inner muscles flexing around your shaft as he comes, shooting strings of cum all over his own chest. Panting, he lies like that for a while longer, running his fingers through the sperm on his chest and licking it off them hungrily. Finally, he scoots back a bit, pulling off your softening cock and sits up, saying 'There, wasn't that better than hurting the master?' His eyes get a faraway look for a second, then he continues 'I have to return to my chamber now. Please don't try to follow me.' With that, he jumps up and dashes off down the nearest hallway, pretty fast in his unencumbered, nearly naked state.";
	infect "Herm Human";

to say TESlaveSex5: [player's pussy fucked by Lee]
	say "     As you drop your gear and undress, then lay down on your spread-out garments with spread legs, you see a look of surprise cross the herm slave's face, followed by a beaming smile. Seems like it's usually him that's getting fucked. Taking hold of his quickly hardening cock, the young scientist kneels between your legs and rubs its head over your nether lips, making a shudder of lust run through your body as he rubs against your clit. He keeps going for a while, rubbing and stroking you, driving your arousal to new heights until you finally can't take it anymore and tell him to fuck you already. Eager to follow your order, the young herm puts the tip of his cock between your swollen pussy lips, then slowly pushes in, sinking his manhood in between your folds. Feeling his manhood stretch your inner passage around it after him winding you up so much makes you gasp in pleasure, your legs wrapping around his hips to pull him against you and drive his cock deeper into you.";
	say "     Leaning over you, Lee runs his hands over your chest, stopping to stroke over your nipples for a moment, then moves in for a kiss. The moment his lips meet yours, he starts moving his hips again, fucking you with rapid thrusts deep into your vagina, making you moan into his mouth. And he just keeps going like that, making out with you as he fucks you, thrusting forward with each little kiss, lick and nibble on your earlobes. The constant stimulation of his hard prick inside you and his lips and tongue on your skin has you reeling a bit, lost in a lustful haze. You don't know how long he keeps you like that - nor do you care - until the moment in which your arousal just can't be contained anymore. With a lust-filled scream, you wrap your arms around Lee, holding on to him as a breathtaking orgasm rocks your whole body[if Player is male]. Your hard cock shoots several long spurts of cum too, making your pressed-together bodies rather wet and sticky[end if].";
	WaitLineBreak;
	say "     With you having gotten your rocks off and his master having gotten away, Lee gives a pleased smile and lets himself go as well, no longer holding back on his own orgasm. With a loud grunt, he sinks his manhood into your pussy all the way, shooting blast after blast of cum deep into your pussy. Panting, he stays on top of you for a while longer, stroking your side lazily. Then he gives you a quick kiss on the cheek and scoots back a bit, pulling his softening cock out of you before saying 'There, wasn't that better than hurting the master?' His eyes get a faraway look for a second, then he continues 'I have to return to my chamber now. Please don't try to follow me.' With that, he jumps up and dashes off down the nearest hallway, pretty fast in his unencumbered, nearly naked state.[fimpregchance]";
	infect "Herm Human";

to say TESlaveSex6: [fucking Lee's ass]
	say "     When you order him to get on all fours, he eagerly complies, pulling off his lab-coat and laying it out on the concrete floor before kneeling down. You quickly drop your gear and take off your clothes, then get behind the willing slave. He gives you a submissive, eager to please expression over his shoulder, then lowers his upper body to the floor, both hands reaching back to his perky ass to pull apart his firm buttocks. Holding your erect manhood in one hand and stroking it slowly, you put your index finger of the other hand to Lee's pucker and push against it. Interestingly, it slides right in, the young slave's backdoor being very relaxed and... his inner passage being wet with cum. Seems like someone else had their fun with this Asian herm not too long ago.";
	say "     With Lee already lubed up and ready to please, you don't waste any more time and thrust into him, sinking all of your manhood deep into the slave-boy. Tight and well-trained, he fits around your hard cock like a glove, flexing his muscles at just the right moments to further enhance your experience. His previous partner's load starts squirting out around your thrusting shaft as you fuck Lee harder and harder, giving the slaps of your hips against his butt a bit of a wet and squelching sound. Riding the Asian scientist, you hold on to his hips tightly as you pound into him, making both your moans and gasps echo along the long corridors.";
	WaitLineBreak;
	say "     Your shaft hitting his prostate again and again, it's not much longer before you drive Lee over the edge, giving a lust-filled groan as his whole body tenses up and he comes all over his lab-coat below. The muscles in his ass tremble and flex with each shot of his load, almost as if he was jerking you off. That really pushes your buttons and just moments later, you follow the moaning slave into Nirvana, unloading your pent-up seed deep into his ass in long bursts. Shooting blast after blast of cum into him, you hold on to Lee and lean against his back to catch your breath.";
	say "     Riding out the last bits your respective orgasms, the two of you stay like that for a while, then Lee pulls off your softening cock. As you leave his body with a little wet plop, you notice him instantly pulling his pucker tight, barely losing a trickle of your cum and keeping most of it inside himself. With you having gotten your rocks off and his master having gotten away, Lee gives a pleased smile and presses a soft kiss on your cheek, saying 'There, wasn't that better than hurting the master?' His eyes get a faraway look for a second, then he continues 'I have to return to my chamber now. Please don't try to follow me.' With that, he pulls on his lab-coat, then jumps up and dashes off down the nearest hallway, pretty fast in his unencumbered, nearly naked state.";
	infect "Herm Human";

to say TESlaveSex7: [player's ass fucked by Lee]
	say "     As you drop your gear and undress, then get on all fours on your spread-out garments and present your ass to him, you see a look of surprise cross the herm slave's face, followed by a beaming smile. Seems like it's usually him that's getting fucked. Taking hold of his quickly hardening cock, the young scientist kneels behind you and rubs its head up and down your crack, making a shudder of lust run through your body as he brushes over your pucker. He keeps going for a while, rubbing up against you, teasingly pushing against your pucker, driving your arousal to new heights until you finally can't take it anymore and tell him to fuck you already. Eager to follow your order, the young herm puts the tip of his cock up against your back door, then slowly pushes in, stretching it around his hard shaft as he sinks into you. Feeling his manhood invade your inner passage after him winding you up so much makes you gasp in pleasure, and before he can get more than halfway in, you rock back against him and push more of his manhood into you.";
	say "     Leaning over you, Lee kisses your back and reaches around to touch your chest, feeling your muscles and stroking over your nipples. Then his hands wander further down, stroking the sides of your body until they get to your hips. He grabs them tightly, then pulls back until his shaft is only just inside you - and thrusts forward again until his hips meet your ass in a satisfying slap. Keeping up the pace just like that, he fucks your ass with hard and deep strokes, reliably hitting your prostate with each new thrust and making you gasp and moan with the feelings that gives you. [if Player is male]With the herm slave giving you a first-class fucking, it's not much longer until you feel the need to cum rise in your balls and pass the point of no return. Grunting in satisfaction with each shot, you come, spraying your load all over your clothes below[else if Player is female]With the herm slave giving you a first-class fucking, it's not much longer until he drives you past the point of no return and you climax. Panting loudly, you dig your fingers in your clothes under you, your pussy just dripping with femcum, which starts running down your leg[else]With the herm slave giving you a first-class fucking, it's not much longer until a tingly feeling fills your whole being, making your whole body tremble in lust as you reach your climax[end if].";
	WaitLineBreak;
	say "     With you having gotten your rocks off and his master having gotten away, Lee gives a pleased smile and lets himself go as well, no longer holding back on his own orgasm. After a few more strokes, he sinks his manhood into your ass all the way with a loud grunt, shooting blast after blast of cum deep into your hole. Panting, he stays on top of you for a while longer, stroking your side lazily. Then he gives you a quick kiss on the back and scoots back a bit, pulling his softening cock out of you before saying 'There, wasn't that better than hurting the master?' His eyes get a faraway look for a second, then he continues 'I have to return to my chamber now. Please don't try to follow me.' With that, he jumps up and dashes off down the nearest hallway, pretty fast in his unencumbered, nearly naked state.[mimpregchance]";
	infect "Herm Human";

to say TESlaveSexCancel: [don't have sex with Lee]
	say "     Changing your mind, you step back from Lee's almost naked form and look down the hallway again. Your moment of hesitation has allowed the thought eater to get away, vanishing from sight. He must have gone into one of the side passages, but you can't tell which one. Not much point in running after him now. You leave the Asian man standing alone in the underground passage, looking relieved that his master got away, in addition to a somewhat dejected look at you spurning him offering himself.";

to say Thought_Eater_Desc:
	setmongender 3;
	say "     A pale-skinned humanoid creature steps out of the darkness ahead of you. Wearing a tight-fitting jumpsuit on its tall form, you can see it's got a pretty skinny build with long arms and legs, and judging from the bulge in the pubic area, is male. The head of the creature looks only vaguely human. Under a high-arching cranium a quartet of tentacles forms the lower half of its face, their ends twitching forward as if to reach for you.";
	LineBreak;
	say "     With a dry, hissing voice the creature tells you 'Kneel before your master!' and follows up with a brutal psychic attack that breaks over you like a powerful wave.";
	LineBreak;
	if mindshield helmet is equipped:
		say "     The shiny metal helmet on your head hums silently and you feel the onslaught on your will lessen, then fade away. Phew - good that you put this thing on. Otherwise this could have been over quickly. The green eyes of your tentacled attacker flash in annoyance and anger as you shrug off its mental attack. With a hiss, it rushes at you, clawing with long fingers ending in sharp claws.";
	else:
		if carried of mindshield helmet > 0 and mindshield helmet is not equipped:
			say "     Uhoh - it might have been a good idea to put your shiny mindshield helmet actually on your head. Well, too late now...";
		decrease HP of Player by ((HP of Player * 75) / 100);
		say "     Stars dance in front of your eyes and you feel as if the thought eater's tentacles were winding themselves into your head, prodding and poking your mind. When your vision clears a bit, you see the tall creature standing right in front of you, clawed hands outstretched to finish you off.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Length	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Name entry is "Thought Eater";
	now enemy title entry is "";
	now enemy Name entry is "";
	now enemy type entry is 0; [non-unique enemy]
	now attack entry is "[one of]The creature concentrates and suddenly your left arm punches you in the side.[or]With a slash of long, clawed fingers, the thought eater leaves bloody streaks on your skin.[or]One of the thought eater's four tentacles slaps you in the face.[at random]";
	now defeated entry is "[Thought_Eater_Loses]";
	now victory entry is "[Thought_Eater_Wins]";
	now desc entry is "[Thought_Eater_Desc]";
	now face entry is "only vaguely that of a human's. Below a high-arching cranium and green eyes, a quartet of tentacles forms its lower half, hiding a sharp-edged beak between them";
	now body entry is "humanoid and tall, but very spindly. Your long arms end in hands with thin fingers, each of them bearing a sharply pointed claw";
	now skin entry is "pale, clammy";
	now tail entry is "";
	now cock entry is "tentacle-like";
	now face change entry is "it deforms pretty drastically, your nose and mouth melding together, then forming into a quartet of about foot-long tentacles. A small, sharp beak comes into existence in their midst, hidden from sight. Meanwhile, your cranium bulges upwards a bit to house a bigger brain under its arching hairless curve";
	now body change entry is "it is wracked with painful changes, stretching and deforming. Soon, you find yourself in a tall and spindly humanoid body with long arms and fingers that end in sharp claws";
	now skin change entry is "any hair you had vanish, leaving you pale and somewhat clammy skin";
	now ass change entry is "your hips become rather narrow and the cheeks of your but tighten up";
	now cock change entry is "it shifts and lengthens, taking on the mobility and form that one might expect from a tentacle";
	now str entry is 10;
	now dex entry is 18;
	now sta entry is 12;
	now per entry is 22;
	now int entry is 28;
	now cha entry is 16;
	now sex entry is "Male";              [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 75;                   [ How many HP has the monster got? ]
	now lev entry is 12;                  [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 7;                  [ Amount of Damage monster Does when attacking.]
	now area entry is "Nowhere";          [ Case sensitive]
	now Cock Count entry is 1;                 [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 12;
	now Ball Size entry is 4;            [ Size of balls ]
	now Nipple Count entry is 2;               [ Number of nipples. ]
	now Breast Size entry is 0;           [ Size of breasts infection will try to attain ]
	now Male Breast Size entry is 0;      [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;                 [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	now libido entry is 25;               [ Amount player Libido will go up if defeated ]
	now loot entry is "tentacle tip";     [ Loot monster drops, ]
	now lootchance entry is 40;           [ Chance of loot dropping 0-100 ]
	now scale entry is 3;                 [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]spindly[or]tall[at random]";
	now type entry is "[one of]hybrid[or]monstrous[at random]";
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is true;
	now DayCycle entry is 0;        [ 0 = Up at all times; 1 = Nocturnal (night encounters only); 2 = Diurnal (day encounters only) ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Arms Change	Arms Description	Arms Skin Adjective	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Ass Change	Ass Description	Ass Skin Adjective	Ass Width	Tail Change	Tail Description	tail skin adjective	Asshole Length	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Length	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight]
	now Body Definition entry is 5; [scale of 1-9 for body definition]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective: skinny/slender/lithe/average/fit/muscled/pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of male to female]
	[Gender Adjective is generated out of androginity]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [head description of Player] with [eye color of Player], [eye type of Player] eyes and an overall [gender appearance of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...)]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Body Adjective of Player], [Gender Adjective of Player] and your torso is [torso description of Player]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word descriptive adjective (furry/scaled/...)]
	now Torso Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is ""; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is ""; [one word color descriptor]
	now Nipple Shape entry is ""; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass description of Player]."]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...)]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your tail [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Tail Change entry]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...)]
	now Asshole Length entry is 7; [inches deep for anal fucking;]
	[Asshole Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Asshole Tightness entry is 3;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "tiny, small, tight, wide, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0;
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0;
	now Ball Size entry is 0; [size of balls 1-5: "acorn-sized", "coin-sized", "egg-sized" "goose-egg sized", "ostrich-egg sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Length entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that is [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [Size of Clit (1-5); very small/small/average/large/very large]



Table of Game Objects (continued)
name	desc	weight	object
"tentacle tip"	"A two-inch long piece of tentacle with a line of small suckers on the underside. The thought eater in the sub-levels of the Trevor Labs lost it when you fought with him and has by now no doubt regenerated a new end for that tentacle. Seems like your piece is even still alive, wiggling a bit on its own."	1	tentacle tip

instead of sniffing tentacle tip:
say "It smells like... er... maybe calamar- waah! Suddenly, the thing bends up and tries to find its way into your nose. Quickly pulling it away, you think you've done enough smelling with it for now.";

tentacle tip is a grab object.
the usedesc of tentacle tip is "[tentacle tip use]";

to say tentacle tip use:
	say "Playing around with the piece of tentacle, you interestedly watch as it stretches and moves, then suddenly wraps itself around your finger. There, it seems to... shrink, staying pressed tightly against your digit as it gets thinner and thinner, then finally is absorbed completely into your skin, vanishing without a trace.";
	TEInfect;

to TEInfect:
	setmonster "Thought Eater";
	choose row MonsterID from the Table of Random Critters;
	now non-infectious entry is false;
	infect "Thought Eater";
	now non-infectious entry is true;

when play ends:
	if bodyname of Player is "Thought Eater":
		if humanity of Player < 10: [succumbed]
			say "     Your worldview shifting further and further from anything close to human, you eventually succumb to your urges to own and control others. Your first victim is a husky you meet out on the street, easily overpowering her mind and making her yours. From then on, it's pretty easy to gather more slaves, using her as a puppet to parade in front of others and draw them closer.";
			say "     As your power and number of followers grows more and more, you prepare for the impending arrival of the military by moving your lair to a mostly empty industrial area, keeping your slaves out of sight in a large warehouse. When one, then a day later another, army scout finally comes along, you manage to dominate them quickly enough so neither of them can give word of anything, then send them on their way. With the men reporting the area to be empty, the military's sweep just passes over you and your slaves, leaving you undiscovered.";
			if Player is male:
				say "     Several days later, the first of your two soldier slaves returns, bringing a female soldier with him whom he promised a good time. Which she most definitively has - riding your cock after quickly succumbing to your mental power. While you fuck and impregnate your new harem slave, you let one of your other servants take care of the scout as a reward, then send him back out to bring you another human woman.";
		else:[sane]
			say "     When the military finally moves in, you're brought into a medical holding facility. There a doctor checks you out, then gives you a shot to neutralize the remaining nanites in your system before you're released. It's not easy to find a place in society looking as you do, and after a while of getting hostile stares and insulting comments, a human even attacks you outside of a bar one night.";
			say "     Reacting out of instinct at first, you lash out at him with a mental blast, bringing the man to his knees. After that, your built-up anger unloads almost explosively, making you invade his head, flaying away layer after layer of his thoughts. Which leaves him a drooling shell, and gives you quite a bit of information about the gang he is in and the underground business going on in the area. Recognizing the chance of gaining control of it all, you let your slave lead you to his friends, then their rivals, turning them into your servants one by one - though being careful to leave them a bit more functional than him. Thus, you become 'The Overmind', a crime lord with an ever growing influence and power.";

Thought Eater ends here.
