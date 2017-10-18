Version 1 of Math Teacher for FS by Stripes begins here.
[This monster was translated from the multiplayer game automatically by Nuku Valente, but may, most likely, have been written by someone else and has been subject to revision.]

"Adds Math Teacher to Flexible Survival."

Section 1 - Monster Responses

when play begins:
	add { "Math Teacher" } to infections of hermaphrodite;


to say mathteacherdesc:
	setmongender 5; [creature is herm]
	let testnum be a random number between 1 and 4;
	say "     You find yourself faced with a strangely human foe with a stern expression on her pretty female face. She has a pair of wire-framed glasses in from of her strict, watchful eyes and her brown hair is kept in a tight bun. She wears red lipstick. She is dressed in a white, button-up shirt with a brown, knee-length skirt. She has a pocket protector which holds a couple of pens and a slide rule. She holds a long, metric ruler in one hand and a heavy [one of]calculus textbook[or]textbook on complex differential equations[or]textbook on number theory[or]mathematics textbook[at random] under her other arm. Several papers, labelled as '[one of]Student Killer Exam [testnum][or]Brain Breaker Quiz [testnum][or]Impossible Assignment [testnum][or]Non-Euclidean Geometry Test of Doom[at random]' and slashed full of red F's, are sticking out of the book. Her brown heels click loudly as she steps towards you, slapping the ruler across her palm. With each slap, you notice a twitch under her skirt, warning you that there's more to this sexy math teacher than a her sexy ass and pert breasts.";


to say losetomathteacher:
	if cunts of player > 0:
		if cocks of player > 0:
			say "     The math teacher stands with her spine perfectly straight and glares at you sternly. 'You,' she says, 'have been a very naughty student. Turn around.' You cannot help but comply, intimidated and oddly unable to get the fear of your old high school principal out of your head. The math teacher raises her ruler and slaps your ass - hard. She slaps again and again, pausing occasionally to squeeze one of your cheeks. Finally, after you feel your ass MUST be in more pain than possible, the creature pushes you to all fours.";
		else:
			say "     The teacher glares at you through her spectacles. 'Young lady,' she barks, 'you need to be taught a lesson about disrespecting mathematics.' She pushes you to the ground and exposes your bottom. You cannot help but comply, cursing yourself for not having paid more attention during [one of]Calc III[or]Algebra 101[or]trigonometry[at random]. The math teacher raises her ruler and slaps your ass - hard. She takes her ruler and smacks it against your rear, eliciting from you pained gasps as your ass turns pink from the abuse. She only pauses occasionally to squeeze one of your cheeks.";
		if a random chance of 1 in 3 succeeds:
			say "     You hear the faint sound of clothing crumpling to the floor. With the clacking of heels against the ground, the teacher walks in front of you. With her skirt and panties gone, you are treated to the sight of her eight-inch penis bobbing erect in front of your face. 'Now, you need to make up for interrupting the class,' she barks. You obediently take the cock into your mouth and start to bob your head, still wincing from your spanking. After a few moments, the cock suddenly is pulled from your mouth and paints your face white with her spunk. 'Now, go clean yourself up and [one of]finish your homework next time[or]don't be late for class again[or]don't let me catch you cheating again[at random].' With that, the deluded teacher walks away, a slight annoyance evident in her pace.";
		else:
			say "     You hear the faint sound of clothing crumpling to the floor shortly before you feel something hard pressing against your tender bottom. 'Well, I guess [one of]you need to be taught to pay more attention in class[or]I'll need to perform some long division between your legs[or]I will have to show you how to properly use a slide rule[at random],' she says before thrusting her cock into you without further delay. You moan at the sudden penetration and the slap of her thighs against your tender ass. Soon she's pounding away at you while making very precise comments about the size of your cunt and its viscosity as well as the frequency of her thrusts. After a fucking that leaves your head dizzy with numbers, she thrusts fully into you and cums hard, pumping her hot load into you. After she pulls out, she orders you to report back for remedial lessons before heading off, heels clacking as she goes.[impregchance]";
	else if cocks of player > 0:
		if anallevel is not 1 and ( a random chance of anallevel in 5 succeeds ):
			say "     The math teacher glares at you through her glasses. 'You have been a very disruptive young man.' She shoves you to all fours and exposes your bottom. She takes the long ruler in her hand and slaps it against your ass. After your ass is nice and tender, she gives your sore cheeks a firm squeeze.";
			say "     You hear the faint sound of clothing crumpling to the floor shortly before you feel something hard pressing against your tender bottom and pressing at your pucker. 'Well, I guess [one of]you need to be taught not forget your pencil case[or]I'll need to perform some complex derivation on this tight problem of yours[or]I will have to show you how to properly use a slide rule[at random],' she says before thrusting her cock into you without further delay. You groan at the sudden intrusion and the slap of her thighs against your tender ass. Soon she's pounding away at you while reminding you to bring the proper equipment to your next class. After a fucking that leaves your head dizzy with numbers, she thrusts fully into you and cums hard, pumping her hot load deep inside you. After she pulls out, she orders you to report back for remedial lessons before heading off, heels clacking as she goes.[mimpregchance]";
		else if a random chance of 2 in 5 succeeds:
			say "     The math teacher glares at you through her glasses. 'You have been a very disruptive young man.' She shoves you to all fours and exposes your bottom. You cannot help but comply, intimidated and oddly unable to get the fear of your old high school principal out of your head. The math teacher raises her ruler and slaps your ass - hard. She slaps again and again, pausing occasionally to squeeze one of your cheeks. Finally, after you feel your ass MUST be in more pain than possible, the creature gives your rear a final smack.";
			say "     You hear the faint sound of clothing crumpling to the floor. With the clacking of heels against the ground, the teacher walks in front of you. With her skirt and panties gone, you are treated to the sight of her eight-inch penis bobbing erect in front of your face. 'Now, you need to make up for interrupting the class,' she barks. You obediently take the cock into your mouth and start to bob your head, still wincing from your spanking. After a few moments, the cock suddenly is pulled from your mouth and paints your face white with her spunk. 'Now, go clean yourself up and [one of]finish your homework next time[or]don't be late for class again[or]don't let me catch you cheating again[at random].' With that, the deluded teacher walks away, a slight annoyance evident in her pace.";
		else:
			say "     The math teacher glares at you through her glasses. 'You have been a very disruptive young man.' She shoves you to all fours and exposes your bottom. She takes the long ruler in her hand and slaps it against your ass, again and again, until it turns pink. 'Now, young man, pull up your pants and take a seat.' She walks away, mumbling to herself about needing the proof for cream pi.";
	else:
		say "     The math teacher stares down at you and mumbles about the terrible state of public education before pushing you down onto all fours. 'Look at you,' she says, groping your bare groin. 'You're neither convex nor concave. Your previous professors clearly did not spend enough time preparing you before sending you to my class.' With that, she starts to slap you with her ruler. After several painful swats that leave your ass sore, you hear the rustle of clothes as she drops her skirt and panties, exposing her eight-inch cock. She lines it up with your tight pucker and slowly sinks it into you. 'This should teach you to [one of]be more mathematically interesting than zero next time[or]be more geometrically pleasing when you come to class[or]score better than a zero on the gender numerics quiz[at random],' she says with a moan as she thrusts hard into you. You groan between the pleasure of the fucking and the soreness of your tender ass. As she's about to cum, she pulls out and sprays her seed across your bottom, leaving you sticky with the professor's semen. She gives your bare crotch a swat to further emphasize her displeasure before striding away, heels clacking as she goes.";


to say beatthemathteacher:
	let mathnum be 0;
	say "     You push the math teacher onto all fours and flip up the back of her dress. Exposing her rear, you take her ruler and slap her rump with several thwacks, venting ancient frustrations with your previous professors as well as disciplining this one for attacking you. She starts to moan and you can see her panties getting wet and becoming stretched taut by her erection. ";
	if cocks of player > 0 and cunts of player > 0:
		say "     Shall you have some more fun with her?  You could [link]fuck her (1)[as]1[end link], [link]ride her cock (2)[as]2[end link] or [link]let her go (3)[as]3[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to fuck her, [link]2[end link] to ride her cock or [link]3[end link] to let her go.";
		if calcnumber is 1:
			say "[mathteachsex1]";
		else if calcnumber is 2:
			say "[mathteachsex2]";
		else:
			say "     Not interested in more fun, you give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";
	else if cocks of player > 0:
		say "     [bold type]Shall you have some fun with her? You could fuck her or just let her go.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Fuck her.";
		say "     ([link]N[as]n[end link]) - Let her go.";
		if the player consents:
			say "[mathteachsex1]";
		else:
			say "     Not interested in more fun, you give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";
	else if cunts of player > 0:
		say "     ";
		say "     [bold type]Shall you have some more fun with her?  You could ride her cock or let her go.[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Ride her cock.";
		say "     ([link]N[as]n[end link]) - Let her go.";
		if the player consents:
			say "[mathteachsex2]";
		else:
			say "     Not interested in more fun, you give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";
	else:
		say "     You give her a few final swats before sending her on her way. She grumbles something about unruly students and walks away as quickly as her sore ass will let her, heels clacking all the way.";

to say mathteachsex1:
	say "     Tossing aside her meter stick, you pull down her panties and climb atop of her. Getting your cock lined up with her pussy, you thrust into her[if cock length of player >= 16]. As you push your [cock size desc of player] [cock of player] penis into her, she moans in discomfort and rattles of various numbers and equations. At first, she seems very tight and it's difficult to penetrate her, but soon her cunt seems more roomy, as if she's used some mathematical trick to let your massive cock somehow fit into her[else]. As you push your [cock size desc of player] [cock of player] penis into her juicy cunt[end if].";
	say "     She tries to muffle her moans of pleasure at first, but soon she's eagerly getting into it despite her previously stern demeanor. You keep the fucking up until finally you push fully into her and pump your hot load into her. You pull your cock out and she drops to the floor. She dips her fingers into the growing puddle of cum that leaks out of her, using it to scribble numbers and equations on the floor. From the few bits you catch, it seems to be at least partially based on the recent fucking you gave her and the size and output of your cock. You leave her to her current mathematical obsession.";

to say mathteachsex2:
	say "     Tossing aside the meter stick, you push down her panties and push her down onto her tender rear. Grabbing her cock, you move over her crotch and lower your wet pussy down onto it with a moan of pleasure. As you start to ride in her lap, she tries to muffle her moans of pleasure at first, but soon she's eagerly getting into it despite her previously stern demeanor. She wraps her arms around you, mumbling something about [one of]earning extra credit[or]maybe being able to adjust your grade a little[or]correctly solving for cream pi[at random]. You ride the herm professor until you can get her to cum, shooting her hot seed into your waiting cunt as you climax as well. Once she's drained, you get up and leave her lying there on the floor, mutter numbers to herself as if evaluating your cunt and grading the quality of the fuck you gave her.[impregchance]";


Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance
	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Math Teacher"; [Name of your new Monster]
	now attack entry is "[one of]The teacher swats you painfully with her ruler![or]The professor bashes you with her textbook, making numbers swirl around in your eyes temporarily![or]The math teacher confuses you by asking you a math question that derails your brain. When you can't answer in time, she screams that you get an F and clubs you with her textbook![or]She runs her hands over her [if a random chance of 2 in 3 succeeds]D-cup breasts[else]plump ass cheeks[end if] while making sexy comments about their area, volume, density, elasticity and other numerical attributes, ending by summarizing them as [if a random chance of 1 in 3 succeeds]a 10 out of 10[else if a random chance of 1 in 2 succeeds]an A+[else]worth 10 bonus points[end if]. While unusual, this wanton display wears down your resistance to her advances![at random]";
	now defeated entry is "[beatthemathteacher]";
	now victory entry is "[losetomathteacher]";
	now desc entry is "[mathteacherdesc]";
	now face entry is "a female human's head. You have wire-framed reading glasses in front of your strict eyes. Your brown hair is kept in a neat bun, and you're wearing red lipstick. From time to time your thoughts [one of]drift to numbers and equations rather than words and ideas[or]get caught up in a numerical analysis of the genitals of the various creatures you spot[or]mull over what paths through the city might get you the most sex[at random]";
	now body entry is "a human female body. You are wearing a white, button-up shirt with a pocket protector in it. Half-hidden by your knee-length brown skirt, you have long, shapely legs with brown high-heeled shoes on your feet";
	now skin entry is "human";
	now tail entry is "";
	now cock entry is "[one of]human[or]beautifully proportioned[as decreasingly likely outcomes]";
	now face change entry is "your head becomes human with a pretty, feminine appearance. You can taste lipstick on your lips and your hair pulls itself back into a tight bun. You don't remember those glasses on your nose either. Your pleasure at seeming to become more human than most others around here fades from your mind as you start thinking about pi and trigonometry instead";
	now body change entry is "you feel your body become just like a regular human's body, almost as if the nanites never came. Suddenly though, you feel a new outfit appear over you, probably made of nanites. You now wear a white, button-up shirt with a brown, knee-length skirt. Your body changes, becoming more feminine than before. Your legs feel... fairly normal. They are a bit daintier than usual, but you feel like a regular human. You almost trip with your next step though as you realize you are now wearing heels";
	now skin change entry is "your skin ripples and settles down as what seems to be perfectly normal human skin";
	now ass change entry is "you feel a strange sensation in your rump. You turn your head and watch as it inflates into a plump, round rump that feels very nice. You wiggle it a bit, and can't help but smile to have such an attractive butt";
	now cock change entry is "you feel your cock tingle, and realize it's just a normal human cock now";
	now str entry is 12;
	now dex entry is 16;
	now sta entry is 10;
	now per entry is 10;
	now int entry is 18;
	now cha entry is 14;
	now sex entry is "Both";
	now hp entry is 42; [ How many HP has the monster got?]
	now lev entry is 7; [ Level of the Monster, you get this much hp if you win, or this much hp halved if you lose]
	now wdam entry is 8; [Amount of Damage monster Does when attacking.]
	now area entry is "Campus";
	now cocks entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 8; [ Length infection will make cock grow to if cocks]
	now cock width entry is 6; [ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 2; [ Number of Breasts infection will give you. ]
	now breast size entry is 4; [Size of breasts infection will try to attain ]
	now male breast size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 1; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 8;
	now cunt width entry is 4;
	now libido entry is 40; [ Amount player Libido will go up if defeated ]
	now loot entry is "";
	now lootchance entry is 0; [ Chance of loot dropping 0-100 ]
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]sultry[or]sexy[or]feminine[or]normal[as decreasingly likely outcomes]";
	now type entry is "human"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	blank out the nocturnal entry; [ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default"; [ Row used to designate any special combat features, "default" for standard combat. ]


Section 3 - Endings

[to be added later]

Math Teacher for FS ends here.
