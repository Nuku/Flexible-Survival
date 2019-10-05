Version 1 of Matriarch NPC by Stripes begins here.
[Version 1 - Matriarch addition]
[Version 2 - Adds Vore Scenes and Bound State - Kurainyx]

"Adds an NPC version of the Hyena Matriarch to the Flexible Survival game"

Section 1 - Matriarch

Table of GameCharacterIDs (continued)
object	name
Matriarch	"Matriarch"

Matriarch is a person.
The description of Matriarch is "[matriarchdesc]".
The conversation of Matriarch is { "Good girl!" }.

the scent of the Matriarch is "[matriarchscent]".

to say matriarchscent:
	say "The powerful scent of the matriarch makes you feel aroused and submissive.";
	if lust of Matriarch - turns >= 8:
		increase Libido of Player by 5 + HP of Matriarch;
		now lust of Matriarch is turns;

to say matriarchdesc:
	say "     The matriarch is the largest hyena you've seen. Her body is strong and powerful, with strong, masculine shoulders and wide, feminine hips. And this is all covered with thick muscles under a layer of coarse fur. Unlike many of the hyenas around, her fur is clean and brushed, probably by one of her many attendants. They flock around her, bringing her news from gang members throughout the city, relaying her orders back to them and generally waiting on her every whim. But she doesn't seem pampered or soft, having a tough look to her and has a willingness to get her hands dirty in a fight, as you've personally experienced. Strong, powerful and virile, your submissive body quivers at the sight of her, wanting to prostrate yourself before her - or better yet, bare your ass and bend over to be bred.";


Instead of conversing the Matriarch:
	say "     [one of]The matriarch is ordering her underlings around, telling them to keep bringing in more [']recruits['][or]The larger hyena listens to some of them give their reports on the activity of other creatures around the city[or]The matriarch's attendants talk to her about how the gang's expansion is coming along[or]One hyena comes up and informs the matriarch of troubles the gang's encountering [randomhyenalocation][or]The matriarch is upset to hear about delays caused by the military's scouting teams[or]One hyena comes up, reporting on continued difficulties when trying to move in on the park. It seems their press gangs keep running into unusual delays or problems. A coyote's been spotted during several of these occurrences[or]One of the hyenas rushes off to bring the matriarch [randomhyenatreat][purely at random].";


to say randomhyenalocation:
	say "[one of]in the downtown district[or]on campus[or]out in the park[at random]";

to say randomhyenatreat:
	say "[one of]some soda[or]some water[or]a snack[or]some food[or]some booze[or]some raw meat[at random]";


Section 2 - Sexxxings

the fuckscene of the Matriarch is "[sexwithMatriarch]".

to say sexwithMatriarch:
	if BodyName of Player is not "Hyena Herm":
		say "     The hyena matriarch glances over at you as you start your needy pleas for sex, but she just gives you a shove with her foot, knocking you over. 'Someone deal with that unhyena bitch and make her more pleasing to me,' she growls. You're dragged off and presented to the hyena gang members, who are more than happy to have a plaything presented to them by the matriarch.";
		WaitLineBreak;
		now lastfuck of Gang Members is turns + 8;
		try fucking the gang members;
	else if lastfuck of Matriarch - turns < 8:
		say "     The matriarch glances over at you as you start your needy pleas for sex, but she just gives you a shove with her foot, knocking you over. 'I've given you enough attention for now. Go [if grantbitch >= 3]beg your master to tend to your lusts. You are Grant's bitch, aren't you?' she rumbles with a smile[else]service the gang members. Unlike you, they've earned a reward,' she growls firmly down at you[end if]. 'For now, I have work to do.' And with that, she turns back to some of the attendants around her, barking orders. You whimper and slink away.";
	else:
		if HP of Matriarch is 0:
			say "     'Mmm... back for more, are you?' she rumbles with a chuckle in her voice. Her dark cock twitches, growing larger as her arousal builds as she looks you over. She runs a paw over you, stroking your hyena body before groping your ass. 'Did you need something? Does that submissive body of yours call out for something?' she laughs, fondling you as her hard cock grinds against you, leaking precum onto you. The strong scent of it makes you feel aroused and needy, longing for her to take you again. With their matriarch preparing to have some fun, her attendants and followers step back, some taking the opportunity to start some fun of their own while her stoic guards keep watch.";
		else if HP of Matriarch > 0:
			say "     '[one of]Are you looking to please your matriarch again?' she rumbles[or]Are you and that needy, submissive body of yours in need some attention?' she says with a chuckle in her voice[or]Do you need to be bred again, my good girl?,' she asks[or]Were you looking for another fucking, my needy girl?' she rumbles[purely at random]. Her dark cock twitches, growing larger as her arousal builds as she looks you over. She runs a paw over you, stroking your hyena body before groping your ass. '[one of]Maybe another ride on your matriarch's cock will satisfy that itch[or]I could use a quick break[or]I do so enjoy keeping my toys in their place[purely at random],' she rumbles with a grin, fondling you as her cock grinds against you, leaking precum onto you[one of]. Its strong scent makes you feel aroused and needy, longing for her to take you again[or]. You lick your lips as you eye her impressive breeding rod[or]. Your hips tremble as your body longs to have that black rod back inside you[or]. As you look it over, your need to have it thrusting into you gets even stronger[or]. As you watch a drop of pre run down its length, your submissive instincts make you whimper with a need to have it in you[purely at random][one of]. The guards and attendants step back, making room for their matriarch to enjoy the privilege of fucking her defeated rival again[or]. With their matriarch preparing to have some fun, the others move back, some taking the opportunity to have some fun of their own while her stoic guards keep watch[or]. Seeing their matriarch ready to take a break, the attendants turn to other matters - such as their own enjoyment of the show[or]. As their matriarch prepares to play with her [if a random chance of 1 in 2 succeeds]would-be usurper[else]fallen adversary[end if] again, several of the hyenas around pair off for some fun[purely at random].";
		if vorelevel is 3 and HyenaMatVore is false:
			say "     [HyenaMatVoreIntroAlt]";
		else if vorelevel is 3 and HyenaMatVore is true:
			say "     'There's so much that I can do to you,' the matriarch sneers while she continues to grope your submissive body. 'I could fuck you and make you moan like the bitch you are, or I might decide that it's time for you to revisit your role as hyena food. I wonder what I shall choose...'";
			LineBreak;
			say "     [bold type]What does the matriarch decide to do with you?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Put you in your place as the gang slut.";
			say "     ([link]N[as]n[end link]) - Demote you to hyena food again.";
			if Player consents:
				LineBreak;
				say "     [HyenaMatSexScenes]";
			else:
				LineBreak;
				say "     [HyenaMatVoreRepeat]";
		else:
			say "     [HyenaMatSexScenes]";
	[puts Herm Hyena as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in Table of Random Critters:
		choose row y in Table of Random Critters;
		if Name entry is "Hyena Herm":
			now MonsterID is y;
			break;
	now sex entry is "Female";
	infect "Hyena Herm";
	infect "Hyena Herm";
	now sex entry is "Both";

to say HyenaMatSexScenes:
	if Player is female:
		say "     Your matriarch runs a paw down between your legs, fingering your wet pussy, drawing a long and needful moan out of you. 'Mmm... nothing but a needy, proper bitch now, aren't you?' she rumbles with pleasure. Sliding a pair of fingers into you, your body trembles, wanting more. 'Doesn't that feel better? You were meant to be needy bitch, [one of]needing cock inside you, getting bred all the time[or]wanting to just be fucked. I could tell it the moment I mounted you[or]meant to carry pups for the gang[or]a slutty breeder[or]the gang's fucktoy[purely at random],' she rumbles to you. You nod eagerly, grinding your hot pussy down onto those fingers, wishing they were her penis. Lost to your growing lust, you can't help but agree with her words, your submissive instincts telling you that's what you want.";
		WaitLineBreak;
		let Z be a random number between 0 and 100;
		increase Z by HP of matriarch * 20;
		if Z < 55:			[no-sex variations]
			let T be a random number between 1 and 3;
			if T is 1:
				say "     The large hyena grins and pushes you to the ground in front of her.";
				say "[hyenamatnosex1]";
			else if T is 2:
				say "     The large hyena grins and buries your face in her crotch.";
				say "[hyenamatnosex2]";
			else if T is 3:
				say "     The large hyena grins and gives her cock a few strokes, dripping precum onto you, then points her hard rod towards your face. 'Get licking, little bitch.'";
				say "[hyenamatnosex3]";
			SanLoss 5;
			now lastfuck of Matriarch is turns;
		else if Z < 105:	[sex variations]
			let T be a random number between 1 and 3;
			if T is 1:
				say "[hyenamatsex1]";
			else if T is 2:
				say "[hyenamatsex2]";
			else if T is 3:
				say "[hyenamatsex3]";
			if HP of Matriarch is 0, now HP of Matriarch is 1;
			SanLoss 10;
			if Cunt Depth of Player < 10, increase Cunt Depth of Player by 1;
			if Cunt Tightness of Player < 4, increase Cunt Tightness of Player by 1;
			now lastfuck of Matriarch is turns;
		else:			[special sex variations]
			let T be a random number between 1 and 2;
			if T is 1:
				say "[hyenamatspecial1]";
				now lastfuck of Matriarch is turns + 2;
			else if T is 2:
				say "[hyenamatspecial2]";
				now lastfuck of Matriarch is turns - 2;
			if HP of Matriarch is 1, now HP of Matriarch is 2;
			SanLoss 12;
	else:
		if Player is male:		[MALE/HERM]
			say "     Your matriarch reaches down and grabs your twitching cock, growling a little. '[one of]And what does a little bitch like you think she's going to do with this?' she rumbles[or]A submissive bitch like you doesn't need something like this,' she growls[or]And why do you have a useless toy like this?' she laughs[or]You don't need this useless thing any more, you submissive bitch,' she teases[at random]. She swats your shaft away, slapping it against your thigh with disdain. ";
		else:				[NEUTER]
			say "     Your matriarch reaches down and rubs a paw over your bare crotch, laughing a little. '[one of]I see that useless cock of yours is gone, though you haven't gotten anything in trade for it yet,' she rumbles[or]And now you just need a juicy pussy to make you a proper girly bitch for me,' she chuckles[or]How could you hope to run the gang when you can't even keep track of your own cock?' she teases[or]I'm not interested in a genderless slut. You were meant to be a breeding slut, weren't you?' she rumbles in your ear[in random order]. She gives your empty crotch a swat, sending faint shivers through you. ";
		let T be a random number between 1 and 3;
		if T is 1:
			say "'A needy slut like you just needs to be a girl looking to be bred, isn't that right?' she rumbles in your ear as she pushes you to the ground.";
			WaitLineBreak;
			say "[hyenamatnosex1]";
		else if T is 2:
			say "She grabs your head and buries your face in her crotch.";
			WaitLineBreak;
			say "[hyenamatnosex2]";
		else if T is 3:
			say "She gives her cock a few strokes, dripping precum onto you, then points her hard rod towards your face. 'Get licking, little bitch. Maybe we can make a proper breeding girl out of you yet.'";
			WaitLineBreak;
			say "[hyenamatnosex3]";
		SanLoss 5;
		now lastfuck of Matriarch is turns;


Section 3 - Sex Scenes

Chapter 1 - No-sex Variations

to say hyenamatnosex1:
	say "     Pinning you down under one of her heavy paws, she kneads her toes over your chest as she strokes herself. She pumps her meaty phallus as she stands proudly above you, grinning down at you. You moan softly caressing her leg, feeling the strength of her muscles, feeling as if she could crush your weak body with ease and are aroused by her might. When she brings her foot up to your face, you start licking and kissing at it, lavishing attention upon them. She rumbles happily, clearly pleased by your submissive display[if Player is female]. With a paw between your legs, you frantically finger your dripping pussy[end if][if Player is male]. You leave your cock hard but unattended, feeling it is unneeded just as your matriarch said[end if]. As the strong and virile hyena above you cums, she releases a barking laugh with each heavy splatter of her cum that she sprays across you[if Player is female]. You jam some fingers deep into your cunt, frigging yourself hard as you orgasm as well, soaking your thighs in your juices[end if]. Once she's done with you, the matriarch leaves you there, soaking in a pool of her cum. With one of her attendants licking her foot clean and another on her cock, she turns back to her duties.";

to say hyenamatnosex2:
	say "     With the matriarch's hard cock and heavy balls pressed against the side of your face, you're given a noseful of her virile musk, making you whimper with need. You kiss at her furry groin, licking at what your tongue can reach as she holds you there while her scent overwhelms you. You can feel her hard shaft and swelling knot throb against your cheek as she rubs her glans, dripping precum down your back. You whimper and moan, wanting at that cock and begging her to fuck you with it, but she holds you firmly, only letting you fondle her hefty balls and stroke her pussy. 'No, my submissive slut, I'll only give you the hard fucking you deserve once you learn to be a good girl for me,' she chuckles.";
	say "     When she finally pulls your face back, your eyes are glassy and you are panting with need. She gives her cock a few last strokes and cums hard, blasting her thick semen across your face and into your open mouth. You are held back from licking her or gobbling down on that thick ebony rod, whining like a begging animal for it. Kept back, you do your best to catch as much of the torrent of seed in your mouth as you can, swallowing it all down like a good, submissive bitch. Once she's done with you, the matriarch leaves you there, covered in her cum. One of her attendants is given the reward of licking her cock clean as the matriarch returns to ordering the others around.";

to say hyenamatnosex3:
	say "     She laughs as you dive eagerly onto her cock, licking and stroking it with your paws. Coated in her virile, musky scent, that throbbing penis is delicious to your submissive and needy body. You open your mouth wide and plunge down onto it, taking the large erection into your mouth and down your throat, drawing a moan of pleasure from the sexy matriarch. You smile happily at this and work your mouth, lips and tongue as best you can to please her, eager to earn your hot and filling reward. She strokes your head and pounds your face, slapping her large, heavy balls against your throat. You grab them and rub them, moaning at their weight and the knowledge that their contents will soon be blasting into you.";
	say "     The matriarch rumbles in pleasure from your eager blow job, her swelling knot pressing at your lips. In your lustful haze, you don't want to miss out on having that inside you and push yourself forward further, taking that growing bulge of meat into your mouth, locking you to her crotch. She releases a loud, barking laugh as she cums hard, sending gushes of thick cum down your stretched throat into your belly. Once she's done and pulls free when her knot's gone down, you are left feeling delightfully bloated and full, very content despite the soreness in your jaw and stretched throat. She leaves you there on the floor, overcome with delight at being stuffed full of her cum and returns to ordering her attendants around.";


Chapter 2 - Sex Variations

to say hyenamatsex1:
	say "     The sexy matriarch decides to give you what you want, pushing you onto all fours and moving in behind you. You moan and raise your ass, a mix of pleas for her to fuck you hard and thanks for deigning to fill such a lowly bitch flowing from your mouth. She gives a hearty laugh and lets her throbbing erection slide across your ass, teasing against your bottom and brushing over your wet folds. You want to spear yourself backwards onto it so badly, but you obediently wait, your hips trembling as you try to hold them back. Finally, after what seems like an eternity in that brief moment, she thrusts forward, driving several inches of her thick cock into you in one go. You release a barking laugh, manic delight filling you as the matriarch starts to breed you like the hyena bitch you are.";
	say "     As she pounds into you, pushing more and more of her large meat into your needy body[if Cunt Depth of Player < 10 or Cunt Tightness of Player < 4], stretching your smaller cunt to accommodate her large breeding pole[end if]. 'Mmm... you like this, don't you? Why else would someone like you have challenged me again, but to get fucked and bred?' She licks your ears and nuzzles your neck. 'You're my good girl now. A proper hyena girl like you were meant to be, ready to be bred full of strong pups.' You nod, your sex-addled mind accepting her words, wanting nothing more than for her to impregnate you again and again.";
	WaitLineBreak;
	say "     Her hard cock pulses and throbs inside you, making you feel so good. You're glad you lost to her. You were meant to lose. You meant to lose from the very beginning. All so you could feel the joy of being her sexy girl and get bred with her pups. When she thrusts hard into you one last time, driving her thick knot inside you and tying with you, you cry out in ecstasy, your whole body feeling the rush of your orgasm as you receive her virile gift of semen as she seeks to breed you. 'Oh, you are my good girl,' she rumbles. 'Take it. Take it all!' she growls as she cums. When she's done with you, you're left feeling bloated and full with her heavy load, loving its hot warmth inside you and hoping it takes root.[impregchance]";

to say hyenamatsex2:
	say "     Your sexy matriarch decides to give you what you want, pushing you down to the floor and grabbing your legs. You moan and wrap them around her waist, letting her grab your ass and squeeze it. Her erection's fully hard now and she slides the underside of it along your pussy's dripping folds. You whimper with need, feeling that cock against you feels delightful, but your body cries out for more because of the tantalizing touch. You lick your lips and grind back against her as best you can against the object of your submissive, lustful desires. Once she's satisfied you're ready, she slides her hips back, lines up her dripping glans with your lips and thrusts into you firmly, making you bark in delight.";
	say "     Keeping a strong grip on you, she starts breeding you like the hyena bitch that you are[if Cunt Depth of Player < 10 or Cunt Tightness of Player < 4], stretching out your relatively small cunt to take her impressive pole[end if]. 'Isn't it [one of]better[or]easier[in random order] to just be a good girl for your matriarch? A proper hyena fucking's all you've ever wanted,' she says, thrusting harder into you. You pant and nod, unable to deny how great it feels to be the matriarch's breeding bitch.";
	WaitLineBreak;
	say "     Her thick cock slices in and out of you, sending ripples of pleasure running through your submissive body. You feel so good getting fucked like this. Your needy body tells you that you were always meant to be fucked and bred like this by hyenas, that it was what you've always wanted, dreamed of it your whole life. 'You make a fine horny slut, my pretty hyena girl. And pretty hyena girls get bred,' she matriarch rumbles, growling out the last few words as she pushes hard to pop her knot inside you before cumming. Her hot seed blasts into you again and again, stuffing your womb full of her virile seed, working to breed you full of more strong pups for the gang. You orgasm loudly, for all to hear, as the powerful and sexy matriarch breeds you. When she's finally done and her knot goes down, she pulls out and the excess seed your womb can't hold flows out of you, pooling between your legs as you lay there on the floor, panting, used and loving it.[impregchance]";

to say hyenamatsex3:
	say "     The sexy hyena herm decides to give you what you want, pulling you into her arms as she kneels on the ground. Her stiff erection is between you both as she holds you in her lap. She licks and nibbles along your shoulder and neck, making you moan with pleasure and grind your hyena body firmly against her penis, her growing knot pressed to your needy pussy. Feeling it there, you want it inside you even more and whimper with need, rocking your hips to slather your juices across that bulb of firm flesh. As your excess juices soak her knot, they flow down over her sheath and ballsack. She raises your hips up slowly, licking and kissing across your body as she lets your pussy slide along her cock gradually until her glans rests waiting at your body's eager entrance.";
	say "     Keeping her paws firmly on your hips, she lowers you down onto her cock at what feels like an excruciatingly slow rate for your needy, lust-addled body. You whimper and groan with need, your pussy quivering and your inner walls squeezing and pulling at her meat, wanting to have it all in you[if Cunt Depth of Player < 10 or Cunt Tightness of Player < 4]. Her slow penetration stretches out your relatively small cunt around her impressive maleness[end if]. 'Oh, doesn't that feel good, my sexy girl? A good fucking for is just what a horny slut like you needs,' she moans, clearly holding back from fucking you hard and fast as well. Somewhere deep inside, it makes you feel good to know the matriarch wants to breed you almost as bad as you want her to do it.";
	WaitLineBreak;
	say "     Eventually, she has the whole of her cock stuffed inside you, with her hard knot throbbing against your dripping folds once more. You moan and grind down on it before she raises you up a little and starts thrusting into you. Unlike the slow penetration, this fucking is hard and fast, almost brutally so, but your body loves it. As if making up for the slow start, the matriarch pounds into you with animalistic speed that has you moaning and barking lustfully.";
	if a random chance of 1 in 2 succeeds:
		say "     To silence you, she presses your face into her bosom. You latch onto her nipple and start suckling, delighted as your efforts are rewarded with the matriarch's warm milk. It is deliciously creamy and satisfying, and you suckle greedily for more. Your thoughts grow hazier and more lustful as you drink, with only desires for sex, breeding, pups and more sex filling your mind.";
		say "     With the pleasure from your suckling further exciting her, the matriarch doesn't hold out much longer and drives your hips down hard as she thrusts up, popping her knot into you before cumming hard. She blasts load after load of her thick semen into you, stuffing your womb full to the point of overflowing. Excess semen spurts out from around her cock, even her knot unable to keep it all in there's so much of it. When she's finished and her knot goes down, she lifts you off, a hot rush of her seed pouring down over your thighs and her crotch. You fall to the floor, spent but satisfied, barely able to focus your eyes to watch as one of her lucky attendants gets to lick her clean.[impregchance]";
		PlayerDrink 6;
		SanLoss 5;
	else:
		say "     You bounce in her lap, riding that thick meat stick as she drives it into you firmly over and over again. 'Oh, that's my good girl,' she rumbles, panting with pleasure as she fucks you. You smile happily, glad your body is able to please your powerful leader. You wiggle your hips and do your best to squeeze your inner walls down around her cock, but the pleasure of the great fucking you're receiving makes it difficult to concentrate enough to do so.";
		say "     Your submissive and needy body responds admirably though, soon driving the matriarch to push your hips down hard as she thrusts up, popping her knot into you before cumming hard. She blasts load after load of her thick semen into you, stuffing your womb full to the point of overflowing as you both release barking howls of hyena pleasure. Excess semen spurts out from around her cock, even her knot unable to keep it all in there's so much of it. When she's finished and her knot goes down, she lifts you off, a hot rush of her seed pouring down over your thighs and her crotch. You fall to the floor, spent but satisfied, barely able to focus your eyes to watch as one of her lucky attendants gets to lick her clean.[impregchance]";


Chapter 3 - Special Sex Variations

to say hyenamatspecial1:
	say "     The matriarch smiles down at you and gives your ass a firm squeeze. 'Since you've been such a good girl and learned your place, I have a special treat for you,' she chuckles as she slides around behind you, her paws roaming over your body. 'My guards have been working hard and I think they deserve a reward. Don't you agree?' she half-whispers in your ear. Looking over at the serious and stoic hyenas who are her bodyguards, you lick your lips. Eying their strong bodies and thick sheaths, you whimper, your thighs getting wet with your juices as your submissive urges run through you. Grinning, she spreads your legs with one of her strong paws, then spreads your pussy lips in a wanton display to the pair. 'Come on, you two. This fine slut's here to reward you for all your [']hard['] work,' she rumbles.";
	say "     The duo grin to one another, briefly dropping their serious expressions as they get excited about the prospect of sharing a sexy hyena girl, and one of the matriarch's prize playthings at that. During that short glance, they wordlessly decide who'll take which position and move in on you. You moan excitedly as they grab you firmly and push you to the ground. The one in front of you brings your face between her legs, pressing her throbbing cock into your mouth while the other grabs your ass and gets lined up. Even as the front one makes her first thrust, she pushes you back, spearing you onto the other's hard shaft. You release a wet moan around the guard's cock, licking and sucking it greedily as they pound into you.";
	WaitLineBreak;
	say "     This pair of virile herms take their time with you, alternating a few times between sawing back and forth into you and both thrusting forward at once. As they're using you, the matriarch watches on, clearly quite pleased with the show while several attendants lick her balls and pussy. 'Mmm... that's it, my good girl. Let those big, strong cocks have their way with you. Being fucked and bred is just what you need,' she rumbles. 'Let those powerful hyenas fill you with some strong pups.' Just the thought of that almost makes you cum, you've gotten so excited by their lustful use of your body. This sort of treatment's just what a gang bitch like you wants and needs, those submissive urges tell you. After a good, long fucking, they finally cum, first in your [one of]mouth and then your cunt[or]pussy and then down your throat[purely at random], stuffing you with hot loads of virile hyena cum from both ends. Once they're done, they pull out, each wiping their cock on your ass cheeks before heading back to their post. Somewhere along the way the matriarch came as well, filling one of her attendants with a wombful of her hot seed. She's left sprawled out beside you, both of you overflowing with virile hyena cum.[impregchance]";

to say hyenamatspecial2:
	say "     The larger hyena smiles down at you and gives your ass a firm squeeze. 'I've been thinking I'd like to have more than just a quick fuck with you, my slutty girl,' she rumbles as she runs a paw over your chest and between your legs. 'I think you need some special attention that I just can't give out here.' She nods to her guards and they grab you by the arms and start dragging you off towards the back of the warehouse. You can hear the matriarch telling her attendants that she'll be in an important meeting for the next few hours and orders them to enjoy their break. They grin and some of them give barking laughs, knowing the kind of [']important meeting['] she has planned. As some head off for food, booze or rest while others grab a partner to pair up with, the guards pull you into the matriarch's chambers and toss you on the bed.";
	say "     While the conversion of this office area into the quarters for the matriarch is roughshod at best, the gang's at least done what it can under the circumstances. After clearing out the desks and filing cabinets, they've added a large bed, several cushions and a rug. A couple of wall hangings and random decorations among the more ornate of the gang's scavenged prizes are in here, presented as gifts to the matriarch. Some colored lights are strung up, cables running off to a generator elsewhere to power them.";
	WaitLineBreak;
	say "     When the matriarch enters, the large hyena pushes you back down onto the bed and climbs atop you. 'I thought we might spend a little private time together,' she rumbles, running a paw along your side, across your thigh and then between your legs. 'You've been my good girl and I can tell you want some extra attention.' As she says this, she slips a pair of fingers into your cunt, making you moan. She pumps them into you several times as you wriggle on the soft bed, only to whine in disappointment as she removes them. She sniffs your juices off her fingers, then gives them a slow lick. Moving the paw to your breasts, she smears your feminine juices over your nipples in slow circles that leave your nipples achingly hard. 'Aren't you cute like that, my needy girl? I think I'll take a taste for myself.'";
	say "     And with that said, she moves back, spreads your legs and dives her head between them. Her long tongue slides across your pussy before diving into your cunt. You moan as her tongue slides deep inside your breeding hole to sample your fecund juices, rubbing your paws lovingly over her head. When she finally moves back, you're a panting mess of horny flesh on her bed, eagerly spread as she moves in to mount you. She drives her large cock into your wet and ready hole, making you release a hyenic laugh of delight as that's enough to push you over the edge and cum after her earlier tonguework. Even as you're bucking your hips throughout your climax, she starts pounding into you, making you cum all the longer and harder.";
	WaitLineBreak;
	say "     'Oh yes, look at you, my horny girl. Such a needy slut you make. Isn't this much better than trying to be strong and dominant? Someone like you was always meant to be a submissive fucktoy,' she rumbles as she thrusts. Your sex-filled mind knows what she's saying to be true, your submissive hyena instincts echoing those words over and over as she continues fucking you. As she kneels over you, she brings her muzzle to your nipples and starts licking and sucking on them as she thrusts harder, working to tie with you. When her knot finally pops into you, you cry out in ecstasy along with your matriarch's barking laugh as you cum together. Her hot seed blasts into you, flowing up into your waiting womb and stuffing you wonderfully full.[impregchance]";
	say "     As she rests there atop you while her knot keeps you tied to her, she nuzzles at your neck, licking and nibbling as you bare your throat in submission to your leader. 'I am really pleased with how far you've come, my good girl.' You moan and run your paws over her body, playing with her breasts as you tell her you're much happier that way, which makes her smile all the more.";
	WaitLineBreak;
	say "     Once her knot has gone down and you're left leaking her seed out onto the sheets when she pulls out, she brings her cum-slick cock to your mouth. You dive your mouth down overtop of it, drawing a moan of pleasure from her that warms your heart and your loins. You lick and suck at her returning erection, swallowing down the mix of hyena cum and juices coating it. Knowing this impressive cock was just inside your pussy and breeding you makes it all the more exciting and you bury several fingers into your cunt and start masturbating. 'Oh, that's my good, eager girl,' your hyena mistress moans, starting to thrust into your mouth as she fucks your face. Her paws stroke and caress your head as you knead her balls with one paw and frig your sloppy cunt with the other. Her shaft throbs in your mouth and throat, pulsing as she blasts a fresh load of semen into you, this time filling your belly until that's stuffed full as well.";
	say "     Quite spent now, the larger hyena slides her cock from your muzzle and sags back onto the bed. She spoons with you, pressing her half-hard cock back into your cunt, fucking you more gently now as she clearly wants to make the most of her fun with you. It's not until you've been filled several times more that she eventually sends you on your way so she can resume ordering around the others. Your body is sore and aching, but it's a wonderful ache that feels so satisfying. Much of you is covered in your matriarch's cum and more of it flows out of your thoroughly overstuffed cunt.[impregchance]";
	follow the turnpass rule;


Section 4 - Vore Scenes

HyenaMatVore is a truth state that varies. HyenaMatVore is usually false.

to say HyenaMatVoreIntro:
	say "     The matriarch dismounts from you to take in the sights of the surrounding orgy. Staying on the floor at your better's feet, you also take a look around. You spot Gina not too far away from your cum-soaked form, having had a front row seat to witness your defeat and your subsequent initiation as the gang breeder bitch. While she is busy pounding her cock into the ass of another hyena, she catches your gaze and gives you a wink before thrusting her dick deep into her partner, making them howl with lust. Despite having just been bred by your matriarch, you're already twitching with arousal, wishing that it was you on the receiving end of Gina's cock instead. In fact, all of the debauchery going on throughout the warehouse assault your senses and make you want to partake in the festivities. You aren't able to dwell on your slutty dreaming for long before the matriarch pulls you to your feet, holding you firmly in her grasp.";
	say "     She maliciously grins at you, showing off her sharp teeth, and then bellows out for the whole warehouse to hear, 'Listen up! We got us a new breeder bitch here!' The hyena leader is met with a chorus of cheers, officially cementing your place at the bottom of the gang. 'But that's not all this slut is. Since this troublemaker had the gall to even think of challenging me, they have the honor of being something even lower than a bitch.' The matriarch eyes you hungrily and licks her lips, striking you with a mix of fear and submissive need to please your mistress. More than a few gang members gasp when the dominant herm suddenly shoves your head into her maw. Even though the hyena leader's strength is more than enough to keep you restrained, your struggles are weakened by a part of you just wanting to oblige the commanding predator as she works on devouring the rest of your squirming body.";
	say "     [HyenaMatVoreFirst]";

to say HyenaMatVoreIntroAlt:
	say "     'You know, there's still the matter of that blunder of an uprising you foolishly tried to pull off,' the matriarch rumbles while she continues to grope you. You whimper, both out of fear of displeasing the dominant herm as well as your need to be bred by her. The hyena leader continues, 'I think that you need to be punished for being so full of yourself, you little shit, and I know just what to do with a pathetic bitch like you. You're being demoted to 'food' status.' Before you can even register what she means, the matriarch drags you over to the center of the warehouse and promptly calls the attention of the entire gang.";
	say "     'Listen up! I'm sure that we all remember our newest breeder bitch!' the hyena leader shouts while she pats your head condescendingly and keeping a firm grip on you with the other arm. 'But that's not all this slut is. Since this troublemaker had the gall to even think of challenging me, they have the honor of being something even lower than a bitch.' The matriarch eyes you hungrily and licks her lips, striking you with a mix of fear and submissive need to please your mistress. More than a few gang members gasp when the dominant herm suddenly shoves your head into her maw. Even though the hyena leader's strength is more than enough to keep you restrained, your struggles are weakened by a part of you just wanting to oblige the commanding predator as she works on devouring the rest of your squirming body.";
	say "     [HyenaMatVoreFirst]";

to say HyenaMatVoreFirst:
	WaitLineBreak;
	say "     The matriarch continues to roughly stuff you inside of her mouth, her teeth painfully grazing your body. With your upper half already entering and being squeezed by the predator's throat, you can hear the muffled cheers of various gang members as they watch your flailing legs get pulled into the leader's maw until you disappear from their sight. With a loud hum of delight, the gang leader snaps her jaws shut and gulps you down. The journey through the matriarch's constricting throat is short, the pulsating walls pressing into you the entire time, and you are soon dumped into the stomach of the carnivore, splashing into a pool of juices. Despite the obvious danger that you are now in, there is something alluring about being reduced to such a lowly role, and you are further aroused by the twisted confines rubbing you from all angles.";
	say "     Your movements within the stomach is on full display for the whole gang as the matriarch smacks her lips and proudly shows off her filled belly. Many of the hyenas have stopped cheering and are instead silently watching their leader's belly in awe as it sloshes around with the occasional bulge appearing on the distended flesh. 'Let this be an example for anyone who thinks that they can take my place,' the matriarch proclaims. 'I am the leader here, and anyone who has an issue with that... Well, you get the idea.' She gives her belly a hearty slap, which shakes the prison that you're in. 'Any questions?' The hyena leader's challenging gaze is met with silence, which puts an ominous smirk on her face as she flashes her razor-sharp teeth, but only for a moment, before she barks, 'Good. Now, get back to work!'";
	WaitLineBreak;
	say "     There's a flurry of activity as the gang members scurry off, but one hyena cautiously approaches the boss and asks, 'Matriarch, may I ask what you are going to do with the new breeder bitch?' The feliformia leader snorts at the newcomer. 'Gina, was it? You're the one who was looking after this fucktoy, weren't you? You worried about this bitch or something?' Gina shrugs and replies, 'I'm just curious. They were a pretty good fuck even before they became a breeder bitch, and to be honest, I was kind of hoping to have another go at them.' The matriarch snorts again, but this time, with a smirk. 'I do plan to give the bitch a few good fuckings before I do away with them, assuming they survive that long. Tell you what, since a bunch of your recruits have done good work for the gang, I'll toss you a bone and let you in on the action of our new slut. I might even let them go, if I feel like it, since I'm also aware that you aren't the only one who would like a piece of the bitch's ass.'";
	say "     Gina grins. 'That sounds wonderful, boss, and it's so cool that you're including me in the fun.' The hyena recruiter raises her hand toward the matriarch's stomach, and upon getting a nod, she begins rubbing the belly bulge that is you, and her teasing words reach you on the other side of the hyena fat. 'You hear that? I'm going to get in on the fun with you. I saw you eyeing my cock earlier, no doubt thinking about how much you need to be filled. Too bad that you couldn't join in while you were busy with the matriarch. I would've loved to break in the new bitch, but getting the chance to fuck you alongside our venerable leader more than makes up for it. And, if you do happen to get some time off from being hyena food, I and so many others would be more than happy to breed you. Here's hoping to see you soon.' Gina presses her lips to the matriarch's stomach in a kiss, her words sounding so tantalizing to your pliant mind to the point that it's hard to tell if your thoughts about escape is for your survival or your desire to be bred over and over again by the gang of horny hyenas. At the same time, staying inside of the strangely comforting and alluring confines of the matriarch's stomach is just as tempting.";
	now HyenaMatVore is true;
	WaitLineBreak;
	HyenaMatBind;

to say HyenaMatVoreRepeat:
	if a random chance of 1 in 2 succeeds:
		say "     The matriarch pulls you closer. She licks her lips and smirks, showing off her razor-sharp teeth. 'I haven't had a decent meal today, and I think you'll do just fine in filling me up. I let you go before to fulfill your duties as a breeder bitch, but now it's time to fulfill your duty to me again... as my snack.' As the herm's rough tongue takes a long lick on the side of your face, you can't help but shiver in both fear and anticipation. Despite the danger of being digested, the cloistered depths of the matriarch's stomach was strangely erotic, and the constant attention you got from her and Gina made it all the more arousing. Submitting to your mistress's ravenous appetite, you meekly nod and allow the dominant hyena to have her way with you.";
		say "     The matriarch nods at Gina, who was already nearby and watching the two of you with interest. The hyena recruiter promptly steps forward, and you are shoved into her arms. 'My chambers. Now,' the head hyena orders. Gina complies with a knowing grin and takes you to the back of the warehouse while the matriarch gives out some last orders to her attendants. 'Guess that you can't stay away from our lovely leader's stomach, huh?' Gina teases as she opens the door to a former private office. The room was repurposed into the matriarch's chambers by laying a couple of cushions and a rug on the floor while also decorating the walls with random knick-knacks. You aren't able to look around for long before Gina pinches your ass and then sits you down on the king-sized bed in the corner. 'I can't wait to see you squirm inside of our big, hungry leader,' she adds as your submissive urges allows her to continue groping you unopposed.";
		WaitLineBreak;
		say "     It's not long before the boss lady strides into the room, kicking the door shut behind her as she immediately locks onto you with a hungry gaze. The only warning you get is when Gina swiftly slips away from you a moment before the matriarch clamps her arms onto your sides. Gina giggles at the surprised squeak you make when you are lifted up and have your head be pulled into the predator's maw. You soon feel Gina's smaller hands grip your flailing legs, and between her pushing and the matriarch's mighty throat muscles pulling you in, you can do little more than squirm as you are greedily gulped down. As the last of you finally enters the predator's maw, you slowly slide down her throat, the pulsating muscles hugging you tightly, and are dumped into the familiar confines of the gang leader's stomach.";
		say "     'Ah, that hits the spot,' the matriarch says, patting her belly in satisfaction. 'But eating the bitch has also made me horny as fuck.' She idly rubs her stiffening cock as she eyes Gina with a lewd grin. 'Since our favorite slut is currently occupied, you'll have to fill in. Bend over.' Gina nods with a smile, turning around to lay her upper half on the bed and presenting her cunt. The matriarch quickly grips Gina's hips and sinks her dark dick into the other hyena's welcoming cunt, gradually driving herself deeper amidst the recruiter's needy moans. When the matriarch hilts her burgeoning rod inside of Gina, she then pulls it out, leaving only the tip inside of the dripping passage, before ramming it back in, making Gina yowl in pleasure as she is railed by the larger hyena. Meanwhile, you are tossed back and forth, your fleshy confines shaking with each of your captor's powerful thrusts and thoroughly drenching you in juices. Eventually, the quakes come to a stop when the matriarch reaches her climax and dumps her load into Gina.";
		say "     Her hunger and lust both sated, the matriarch pushes the groaning Gina to the side and lays her back on the bed. Gina, exhausted but also satisfied from the rough fucking, crawls over to the matriarch and lays her head on the stomach bulge that is you. 'Hope you had a fun ride in there, bitch,' the matriarch taunts, slapping her stomach a few times and jiggling your prison. 'But don't get too comfy in there because the fun is only beginning.'";
	else:
		say "     Some of the gang's members are already watching you with interest as their leader talks to you, but when the matriarch drags you to the center of the warehouse, word quickly spreads, and the rest of the gang quickly gathers to watch the show. 'I'm sure that everyone remembers our little would-be usurper here and the [italic type]special[roman type] punishment that they received,' the leader loudly addresses the growing audience, and she's met with a few snickers and nods. 'Our slutty friend here made for a tasty meal, but I let them go because I didn't want to deny them a chance to be a good little breeder bitch for you all. However, it's feeding time again, so let's see how our slutty friend will do this time.' The matriarch's words are met with a round of cheers and laughs as the gang gets hyped up. You see Gina push her way through the crowd of hyenas to get a front row seat of you being devoured, and she shoots you a wink as she eagerly awaits to join in on the fun.";
		say "     'I'm going to enjoy this,' the matriarch murmurs as she pulls you close and makes a big show of licking your face with her rough tongue. You shiver as you're slathered with the hungry hyena's saliva, although it's hard to tell if it's because you are enjoying the oddly pleasant sensation or dreading for what's coming up next. Jeers and laughter come from the crowd as you try to pull away, although it's more of a token struggle at this point, but the mighty predator keeps a firm grip on you as she continues to assault you with her tongue. Suddenly, her tasting comes to a stop, but when you curiously turn your head to look at the matriarch, you get a glimpse of a mischievous smirk before her powerful jaws rush forward, enveloping you in darkness.";
		WaitLineBreak;
		say "     A resounding cheer comes from the audience as the matriarch gets your head into her mouth, and the noise only gets louder and raunchier as the gang leader lifts you up and continues to wolf you down. While you are being forced down the constricting throat, you can hear the muffled, but unmistakable, moans and grunts of the gang as the horny hyenas start fucking each other. The matriarch doesn't take long to swallow the rest of you, having grown accustomed to devouring you, and after a short trip through the crushing grip of her throat, you are dropped into the confines of her stomach. You barely have a moment to get situated in the tight, humid prison before one section of the rumbling walls pushes into you, followed by a familiar giggling from the other side.";
		say "     'Couldn't resist letting our mighty leader have her way with you again, huh?' Gina teases while she rubs and prods the stomach bulge that is you. 'It's always so hot to watch you squirm as you're getting eaten, and I'm not the only one who thinks that. You hear how riled up everyone out here is after watching your little show?' Through the squelches and gurgles coming from your immediate surroundings, you can hear the orgy of rowdy hyenas on the outside as they fuck each other, no doubt celebrating their powerful predator of a leader as she puts a tasty slut in their place. 'Everyone is having so much fun,' Gina continues, 'but don't worry, you got your pal Gina here and our mighty leader to take care of you.' You know very well what Gina means by 'taking care of you', and a part of you is actually excited by the prospect. As the matriarch starts ordering her followers to get back to work, you debate on what you should do from within your perverse situation.";
	WaitLineBreak;
	HyenaMatBind;


Section 5 - Bound State

to HyenaMatBind:
	now lustatt is Libido of Player;
	now calcnumber is -1;
	let Trixieexit be 0;
	while Trixieexit is 0:
		if humanity of Player < 50:
			now obliging is true;
		checkboundrecover;
		if clearnomore is 0, clear the screen;
		if lustatt > 99:
			say "     Your mind blanks out as your arousal comes to a head, and you can't help but [if Player is male]grasp your hardened member and jerk yourself off[else if Player is female]play with your clit[else]thrust your fingers in and out of your ass[end if] until you reach your climax. Your orgasm relieves a bit of the pressure in your mind, and you can think straight again. The matriarch's influence and the churning flesh overwhelm your lust-addled body, and you grind your[if Player is male] cock[smn][else if Player is female] cunt[sfn][else]self[end if] against the stomach walls until you hit your climax[if Player is male], your cum adding to the juices sloshing around[else if Player is female], your femcum adding to the juices sloshing around[end if]. You regain a bit of clarity from your orgasm, but at the same time, it becomes more tempting to remain in your current arousing situation.";
			LineBreak;
			now struggleatt is 0;
			if Libido of Player > 25, decrease Libido of Player by (Libido of Player / 10) + 1;
			now lustatt is Libido of Player;
			if enduring is true:
				decrease humanity of Player by 8 + (psycheadjust * 2);
			else:
				decrease humanity of Player by 15 + (psycheadjust * 5);
				if struggleatt > 0, decrease struggleatt by 1;
		now enduring is false;
		say "     Stewing inside of the hyena matriarch's stomach, you try and assess your situation. [one of]You internally struggle between getting out of this stifling prison or just submitting to the twisted confines[or]The matriarch and Gina are having a chat, often talking about how much of a slut you are[or]The matriarch barks orders at various gang members, her rotund figure not diminishing her leadership at all[or]'Having fun in there?' Gina asks you as she rubs the matriarch's belly[or]The walls press into you as Gina giggles and pushes down on you from the outside[at random]. Your only options are to [bold type]S[roman type]truggle [if obliging is true][bold type]O[roman type]blige[else][bold type]A[roman type]bide[end if] [if boundrecover is true][bold type]R[roman type]ecover from[else][bold type]E[roman type]ndure[end if].[line break]";
		say "[bold type]1[roman type] - [link]Struggle[as]1[end link][line break]";
		say "[bold type]2[roman type] - [link][if obliging is true]Oblige[else]Abide[end if][as]2[end link][line break]";
		say "[bold type]3[roman type] - [link][if boundrecover is false]Endure[else]Recover[end if][as]3[end link][line break]";
		say "Sanity: [humanity of Player]/ 100	Lust: [lustatt]/100	Hunger: [hunger of Player]	Thirst: [thirst of Player]	Struggle: [HyenaMatStruggle]";
		if humanity of Player < 1:
			say "     The churning flesh pressing down on you from all around, combined with the taunting laughter of the hyena leader, wears you down until you are no longer able to resist the influence of the matriarch's stomach anymore.";
			wait for any key;
			repeat with y running from 1 to number of filled rows in Table of Random Critters:
				choose row y in Table of Random Critters;
				if Name entry is "Hyena Herm":
					now MonsterID is y;
					break;
			now voreloss is true;
			now BodyName of Player is "Hyena Herm";
			now FaceName of Player is "Hyena Herm";
			now TailName of Player is "Hyena Herm";
			now SkinName of Player is "Hyena Herm";
			now CockName of Player is "Hyena Herm";
			now tail of Player is tail entry;
			now Face of Player is face entry;
			now Skin of Player is skin entry;
			now Body of Player is body entry;
			now Cock of Player is cock entry;
			now Trixieexit is 1;
			end the story saying "You were demoted to hyena food";
		else:
			let k be 0;
			now keychar is "INVALID";
			change the text of the player's command to "";
			while keychar is "INVALID":
				now k is the chosen letter;
				translate k;
				if the player's command matches "[number]":
					now keychar is "[number understood]";
			if keychar in lower case exactly matches the text "s" or keychar in lower case exactly matches the text "1" or keychar in lower case exactly matches the text "return" or keychar in lower case matches the text "struggle":
				LineBreak;
				increase struggleatt by 1;
				if struggleatt < 3:
					say "     [one of]You push against the squirming walls to try and get yourself coughed up.[or]'Good. I like my sluts to at least have a bit of fight in them before I break them in,' the matriarch taunts while you try to escape.[or]'That's it,' Gina coos, feeling your squirms from inside of the matriarch. 'We'll set you up with a good fucking if you get out of there.'[or]Gina rubs the matriarch's belly and then giggles when your struggles push back.[at random]";
					increase lustatt by 7 + (lustadjust * 2);
					wyvhumanityroll;
					HyenaMatBoundSex;
					wait for any key;
				else:
					say "     You continue to make a fuss, and eventually, your prison violently lurches around before you are pushed up through the esophagus, taking a brief return trip through the tight throat, and then unceremoniously spat out onto the cold, hard floor. 'Hmph, guess that you don't want to be hyena food today,' the matriarch says, faintly smirking at the sorry state that you're in. 'Just means that you can go back to being the gang bitch again. Come see me again if you need me to put you in your place with my cock or my stomach.' The hyena leader then strides away, not even giving you another glance, to resume directing the gang. 'I'm glad that you decided to come back to us,' Gina comments with a malevolent grin. 'Means that I and the other hyenas will get to have fun with our favorite slut again.' As you start to clean yourself up, Gina leaves, but not before giving you a hearty slap on the ass. 'Catch you later. I'll be waiting to fill my favorite slut.'";
					cleanboundmemory;
					now Trixieexit is 1;
					follow the turnpass rule;
					wait for any key;
				next;
			else if (obliging is true and (keychar in lower case exactly matches the text "o" or keychar in lower case matches the text "oblige")) or (obliging is false and (keychar in lower case exactly matches the text "a" or keychar in lower case matches the text "abide")) or keychar in lower case exactly matches the text "2":
				LineBreak;
				if obliging is true:
					decrease struggleatt by 1;
					say "     [one of]'Guess this means that you rather be food instead of a breeder bitch, huh?' Gina asks your unmoving form.[or]The thought of serving the strong, domineering matriarch sounds more and more tempting as you relax into her stomach.[or]'Yes, that's it. Submit to your better,' the matriarch says, feeling your surrender.[at random]";
					wyvhumanityroll;
					increase lustatt by 14 + (lustadjust * 4);
				else:
					decrease struggleatt by 1;
					say "     [one of]'Aww, is someone getting tired?' the matriarch asks mockingly when there's a pause in your movements.[or]Exhausted by your ordeal, you take a break amidst the churning flesh.[or]'Don't tell me that you're giving up already,' Gina taunts, poking you from the outside when you stop moving.[at random]";
					wyvhumanityroll;
					increase lustatt by 7 + (lustadjust * 2);
				HyenaMatBoundSex;
				wait for any key;
				next;
			else:
				LineBreak;
				now enduring is true;
				if boundrecover is true:
					say "     With a brief flash of insight, you're able to find a glimpse of mental clarity within these confines, recovering a small portion of your lost humanity.";
					now boundrecover is false;
					SanBoost 3;
				else:
					say "     [one of]You do your best to resist the matriarch's influence.[or]It's hard to say whether you're biding your time before you make your escape or if you're just trying to dwell amidst the squelching walls for as long as you can.[or]'Trying to resist me, huh?' the matriarch sneers. 'We'll see how long you can keep that up.'[at random]";
					wyvhumanityroll;
				LineBreak;
				increase lustatt by 3 + lustadjust;
				HyenaMatBoundSex;
				wait for any key;
				next;
			say "Invalid action.";

to HyenaMatBoundSex:
	if bsextimer > 5 and a random chance of bsextimer in 18 succeeds or (hunger of Player > 59 or thirst of Player > 59):
		say "     The stomach walls give a sudden lurch before you are dragged upwards, making the brief journey through the matriarch's throat and then being spat out onto the floor. The sudden shift from the sweltering innards and into the cold, airy warehouse makes you shiver, and a small part of you yearns to return to the sauna-like conditions of the matriarch's stomach. You move to get up, thinking that you are being let go, but you freeze at the sight of two dominant hyenas leering down at your sprawled form.";
		if a random chance of 1 in 2 succeeds:
			say "     The matriarch roughly flips you onto your stomach with her foot and then picks up your hips with her hands. 'Having prey squirming inside of me has made me so horny,' she explains as she rubs her thick, dark cock [if Player is female]along the lips of your cunt[else]between your buttcheeks[end if]. 'Good thing that I have a breeder bitch handy to take care of that.' The twisted confines that you were released from had already kindled your lust, and the anticipation of being bred by the powerful, dominant herm only adds to it. You soon start pushing back to try and get that wondrous shaft inside of you, but the matriarch just lets out a barking laugh at your submissive urges and does not give you what you want. She continues to tease you, all while you needily moan, until she finally pulls back her coveted cock for a split second, just to plunge deep inside of you.";
			WaitLineBreak;
			say "     The hyena cock inside of you drags against your inner walls, sending flares of pleasure as it is slowly pulled out, and you whimper in need when only the tip remains inside of you. The matriarch swiftly remedies that by thrusting right back into you. You occasionally wince in pain as the matriarch roughly fucks you, but it is heavily overshadowed by the ecstasy of having her thick rod fill you. As you continue to get railed, each thrust sending you into a blissful haze, you almost forget about the other hyena until Gina bends down in front of your face with a devilish grin. 'You look adorable with our matriarch's dick inside of you, but I think that you'll look even better if you took mine as well.' The matriarch snorts derisively when Gina lifts your upper half with her arms, but she still helps the small hyena hoist you off of the floor, all the while continuing to pound you without missing a beat.";
			say "     Held aloft by the two strong hyenas, you are put at eye-level with Gina's own hardened cock as she presses it against your lips. Already lost in the lustful haze from the matriarch's fucking, you eagerly take Gina's twitching rod into your mouth, reveling in the taste of delectable hyena precum and heady musk. Your efforts to suckle and lick Gina's cock are sloppy at best with the matriarch pounding you from behind, but the recruiter doesn't seem to mind as she thrusts in and out of your mouth. There is no rhythm or coordination between the two hyenas on either end of you, each focusing on their own pleasure as they use your body, but somehow, they reach their climaxes at nearly the same time. The matriarch laughs gleefully as she drives herself up to the hilt inside of you and pumps you full of her cum while Gina yowls in pleasure as she spurts her own load into your mouth, her spunk dribbling down your face as you try to gulp down as much as you can.";
			say "     Eventually, the two hyenas pull their spent cocks out of your cum-bloated form, but they still keep you suspended between them. Exhausted and dripping with hyena seed from both ends, you hardly budge as the matriarch inserts your feet into her hungry maw with Gina helping to push you into the dark depths. As your head is fed through the matriarch's mouth, Gina gives you a wink before the jaws snap shut, sending you back into the stomach of the gang leader.";
		else:
			say "     The matriarch plants her foot on your stomach, a combination of her strength and your submissive urges keeping you pinned to the floor. 'I got to eat you, so I think that you should get the honor of eating me, or at least a part of me,' the matriarch taunts as she turns around, showing off her burly, bodacious butt, before those furry globes quickly descend, smothering you in thick hyena ass. 'Put that tongue of yours to work, slut,' the gang leader commands while she grinds her cunt into your face. With her intoxicating musk filling you with every breath and igniting your lust even more, you dutifully follow her order and stick your tongue into her pussy, doing your best to please your mistress. While you are busy servicing her, the matriarch turns her attention to Gina and points to her stiffening cock. The smaller hyena obeys the silent order and promptly straddles over your legs to bend down and slip the matriarch's dick into her mouth.";
			WaitLineBreak;
			say "     Gina's experience shows as she slowly takes in the whole rod in one smooth motion, plunging it deep into her throat, before bobbing her head back and forth, letting her lips glide across the larger hyena's meatstick. Between your lower lip service and Gina's oral attention, it isn't long before the matriarch pushes Gina off to reveal the rock-hard shaft, now standing at full mast. With a command from the matriarch, Gina turns around and lowers herself onto the tall, twitching dick. You hear Gina's moans clearly, even when buried under the matriarch's ass, as she sinks her cunt onto the burgeoning fuckstick. Despite her quivering legs, Gina bounces up and down on the cock filling her, and her movements cause the plush posterior on top of you to hug you even more tightly, giving you more access into the matriarch's cunny. With you and Gina working together, it doesn't take long for the matriarch to reach her orgasm, her dick spurting into Gina while you are treated to a femcum facial.";
			say "     Soon afterwards, the matriarch gets off of you, giving you a breather, but your relief instantly vanishes when you see the cross glare that she's giving you. 'You're going to have to do better than that if you're going to be a proper bitch,' the gang leader scolds. You're not sure if your tonguework really was poor or if the matriarch is simply taunting you for her own amusement, but you know better than to talk back. 'I don't think you even deserve the honor of being bred by me,' the matriarch continues. 'Still, I know how much of a slut you are, and while you're not going to get fucked by me, I'm generous enough to let you have some of my cum.' She grabs Gina and shoves her, and the smaller hyena's leaking cunt lands right on your face.";
			WaitLineBreak;
			say "     Gina coos in delight when your tongue instinctively thrusts into her used pussy, probing for any trace of the matriarch's delectable baby batter. 'You really do enjoy being a bottom,' Gina remarks as she wiggles her hips, and you can't help but agree that there is something comforting about having a warm, soft hyena tushy dominate you. As you dig deeper into her cum-slicked hole, Gina hums in satisfaction and says, 'You might not have satisfied our matriarch, but I think you are doing a wonderful job as a slut. Just a little bit more, and you'll get your reward.' Spurred on by the praise and the promise of the matriarch's coveted cum, you plunge deep into the hyena's cunt, finding and stimulating her sensitive spots. Gina's teasing stops as she devolves into lustful pants, and it doesn't take much longer before she yowls as she climaxes again, and you try to gulp down the slurry of hyena cum and juices the best you can while the rest splatters onto your face.";
			say "     When the wave of musky fluids come to an end, you let your head fall back onto the floor. Dazed by the heady scent of hyena sex flooding your senses and the arousing situations that you were subjected to, your lust is at a boiling point, and you [if Player is male]jerk yourself off[else if Player is female]play with your clit[else]desperately rub your crotch[end if]. In your aroused state, it doesn't take much before you achieve your own climax, and Gina giggles while your body spasms under her. Exhausted by your orgasm and having to service two hyenas, you barely budge when the furry globes rise off of you, nor do you have the strength to do much when the matriarch picks you up and quickly wolfs you down, returning you to her stomach, as Gina [one of]gives you a kissy face and playfully flips you her middle finger[or]waves goodbye to you[at random].";
		now bsextimer is 1;
		now struggleatt is 0;
		if Libido of Player > 10, decrease Libido of Player by (Libido of Player / 10) + 1;
		now lustatt is Libido of Player;
		decrease humanity of Player by 3 + psycheadjust;
	else:
		increase bsextimer by 2;

to say HyenaMatStruggle:
	say "[bracket]-[if struggleatt > 1][bold type]X[roman type][else]-[end if][if struggleatt > 0][bold type]X[roman type][else]-[end if][close bracket][line break][run paragraph on]";

Matriarch NPC ends here.
