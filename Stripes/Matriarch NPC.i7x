Version 1 of Matriarch NPC by Stripes begins here.
[Version 1 - Matriarch addition]

"Adds an NPC version of the Hyena Matriarch to the Flexible Survival game"

Section 1 - Matriarch

Matriarch is a person.
The description of Matriarch is "[matriarchdesc]".
The conversation of Matriarch is { "Good girl!" }.

the scent of the Matriarch is "[matriarchscent]".

to say matriarchscent:
	say "The powerful scent of the matriarch makes you feel aroused and submissive.";
	if lust of Matriarch - turns >= 8:
		increase libido of player by 5 + hp of Matriarch;
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
	if bodyname of player is not "Herm Hyena":
		say "     The hyena matriarch glances over at you as you start your needy pleas for sex, but she just gives you a shove with her foot, knocking you over. 'Someone deal with that unhyena bitch and make her more pleasing to me,' she growls. You're dragged off and presented to the hyena gang members, who are more than happy to have a plaything presented to them by the matriarch.";
		WaitLineBreak;
		now lastfuck of Gang Members is turns + 8;
		try fucking the gang members;
	else if lastfuck of Matriarch - turns < 8:
		say "     The matriarch glances over at you as you start your needy pleas for sex, but she just gives you a shove with her foot, knocking you over. 'I've given you enough attention for now. Go [if grantbitch >= 3]beg your master to tend to your lusts. You are Grant's bitch, aren't you?' she rumbles with a smile[else]service the gang members. Unlike you, they've earned a reward,' she growls firmly down at you[end if]. 'For now, I have work to do.' And with that, she turns back to some of the attendants around her, barking orders. You whimper and slink away.";
	else:
		if hp of Matriarch is 0:
			say "     'Mmm... back for more, are you?' she rumbles with a chuckle in her voice. Her dark cock twitches, growing larger as her arousal builds as she looks you over. She runs a paw over you, stroking your hyena body before groping your ass. 'Did you need something?  Does that submissive body of yours call out for something?' she laughs, fondling you as her hard cock grinds against you, leaking precum onto you. The strong scent of it makes you feel aroused and needy, longing for her to take you again. With their matriarch preparing to have some fun, her attendants and followers step back, some taking the opportunity to start some fun of their own while her stoic guards keep watch.";
		else if hp of Matriarch > 0:
			say "     '[one of]Are you looking to please your matriarch again?' she rumbles[or]Are you and that needy, submissive body of yours in need some attention?' she says with a chuckle in her voice[or]Do you need to be bred again, my good girl?,' she asks[or]Were you looking for another fucking, my needy girl?' she rumbles[purely at random]. Her dark cock twitches, growing larger as her arousal builds as she looks you over. She runs a paw over you, stroking your hyena body before groping your ass. '[one of]Maybe another ride on your matriarch's cock will satisfy that itch[or]I could use a quick break[or]I do so enjoy keeping my toys in their place[purely at random],' she rumbles with a grin, fondling you as her cock grinds against you, leaking precum onto you[one of]. Its strong scent makes you feel aroused and needy, longing for her to take you again[or]. You lick your lips as you eye her impressive breeding rod[or]. Your hips tremble as your body longs to have that black rod back inside you[or]. As you look it over, your need to have it thrusting into you gets even stronger[or]. As you watch a drop of pre run down its length, your submissive instincts make you whimper with a need to have it in you[purely at random][one of]. The guards and attendants step back, making room for their matriarch to enjoy the privilege of fucking her defeated rival again[or]. With their matriarch preparing to have some fun, the others move back, some taking the opportunity to have some fun of their own while her stoic guards keep watch[or]. Seeing their matriarch ready to take a break, the attendants turn to other matters - such as their own enjoyment of the show[or]. As their matriarch prepares to play with her [if a random chance of 1 in 2 succeeds]would-be usurper[else]fallen adversary[end if] again, several of the hyenas around pair off for some fun[purely at random].";
		if cocks of player > 0 or cunts of player is 0:
			if cocks of player > 0:		[MALE/HERM]
				say "     Your matriarch reaches down and grabs your twitching cock, growling a little. '[one of]And what does a little bitch like you think she's going to do with this?' she rumbles[or]A submissive bitch like you doesn't need something like this,' she growls[or]And why do you have a useless toy like this?' she laughs[or]You don't need this useless thing any more, you submissive bitch,' she teases[at random]. She swats your shaft away, slapping it against your thigh with disdain. ";
			else:				[NEUTER]
				say "     Your matriarch reaches down and rubs a paw over your bare crotch, laughing a little. '[one of]I see that useless cock of yours is gone, though you haven't gotten anything in trade for it yet,' she rumbles[or]And now you just need a juicy pussy to make you a proper girly bitch for me,' she chuckles[or]How could you hope to run the gang when you can't even keep track of your own cock?' she teases[or]I'm not interested in a genderless slut. You were meant to be a breeding slut, weren't you?' she rumbles in your ear[in random order]. She gives your empty crotch a swat, sending faint shivers through you. ";
			let T be a random number between 1 and 3;
			if T is 1:
				say "     'A needy slut like you just needs to be a girl looking to be bred, isn't that right?' she rumbles in your ear as she pushes you to the ground.";
				WaitLineBreak;
				say "[hyenamatnosex1]";
			else if T is 2:
				say " She grabs your head and buries your face in her crotch.";
				WaitLineBreak;
				say "[hyenamatnosex2]";
			else if T is 3:
				say "     She gives her cock a few strokes, dripping precum onto you, then points her hard rod towards your face. 'Get licking, little bitch. Maybe we can make a proper breeding girl out of you yet.'";
				WaitLineBreak;
				say "[hyenamatnosex3]";
			decrease humanity of player by 5;
			now lastfuck of Matriarch is turns;
		else if cunts of player > 0:
			say "     Your matriarch runs a paw down between your legs, fingering your wet pussy, drawing a long and needful moan out of you. 'Mmm... nothing but a needy, proper bitch now, aren't you?' she rumbles with pleasure. Sliding a pair of fingers into you, your body trembles, wanting more. 'Doesn't that feel better?  You were meant to be needy bitch, [one of]needing cock inside you, getting bred all the time[or]wanting to just be fucked. I could tell it the moment I mounted you[or]meant to carry pups for the gang[or]a slutty breeder[or]the gang's fucktoy[purely at random],' she rumbles to you. You nod eagerly, grinding your hot pussy down onto those fingers, wishing they were her penis. Lost to your growing lust, you can't help but agree with her words, your submissive instincts telling you that's what you want. ";
			WaitLineBreak;
			let Z be a random number between 0 and 100;
			increase Z by hp of matriarch * 20;
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
				decrease humanity of player by 5;
				now lastfuck of Matriarch is turns;
			else if Z < 105:	[sex variations]
				let T be a random number between 1 and 3;
				if T is 1:
					say "[hyenamatsex1]";
				else if T is 2:
					say "[hyenamatsex2]";
				else if T is 3:
					say "[hyenamatsex3]";
				if hp of Matriarch is 0, now hp of Matriarch is 1;
				decrease humanity of player by 10;
				if cunt length of player < 10, increase cunt length of player by 1;
				if cunt width of player < 4, increase cunt width of player by 1;
				now lastfuck of Matriarch is turns;
			else:			[special sex variations]
				let T be a random number between 1 and 2;
				if T is 1:
					say "[hyenamatspecial1]";
					now lastfuck of Matriarch is turns + 2;
				else if T is 2:
					say "[hyenamatspecial2]";
					now lastfuck of Matriarch is turns - 2;
				if hp of Matriarch is 1, now hp of Matriarch is 2;
				decrease humanity of player by 12;
	[puts Herm Hyena as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Herm Hyena":
			now monster is y;
			break;
	now sex entry is "Female";
	infect "Herm Hyena";
	infect "Herm Hyena";
	now sex entry is "Both";


Section 3 - Sex Scenes

Chapter 1 - No-sex Variations

to say hyenamatnosex1:
	say "     Pinning you down under one of her heavy paws, she kneads her toes over your chest as she strokes herself. She pumps her meaty phallus as she stands proudly above you, grinning down at you. You moan softly caressing her leg, feeling the strength of her muscles, feeling as if she could crush your weak body with ease and are aroused by her might. When she brings her foot up to your face, you start licking and kissing at it, lavishing attention upon them. She rumbles happily, clearly pleased by your submissive display[if cunts of player > 0]. With a paw between your legs, you frantically finger your dripping pussy[end if][if cocks of player > 0]. You leave your cock hard but unattended, feeling it is unneeded just as your matriarch said[end if]. As the strong and virile hyena above you cums, she releases a barking laugh with each heavy splatter of her cum that she sprays across you[if cunts of player > 0]. You jam some fingers deep into your cunt, frigging yourself hard as you orgasm as well, soaking your thighs in your juices[end if]. Once she's done with you, the matriarch leaves you there, soaking in a pool of her cum. With one of her attendants licking her foot clean and another on her cock, she turns back to her duties.";

to say hyenamatnosex2:
	say "     With the matriarch's hard cock and heavy balls pressed against the side of your face, your given a noseful of her virile musk, making you whimper with need. You kiss at her furry groin, licking at what your tongue can reach as she holds you there while her scent overwhelms you. You can feel her hard shaft and swelling knot throb against your cheek as she rubs her glans, dripping precum down your back. You whimper and moan, wanting at that cock and begging her to fuck you with it, but she holds you firmly, only letting you fondle her hefty balls and stroke her pussy. 'No, my submissive slut, I'll only give you the hard fucking you deserve once you learn to be a good girl for me,' she chuckles.";
	say "     When she finally pulls your face back, your eyes are glassy and you are panting with need. She gives her cock a few last strokes and cums hard, blasting her thick semen across your face and into your open mouth. You are held back from licking her or gobbling down on that thick ebon rod, whining like a begging animal for it. Kept back, you do your best to catch as much of the torrent of seed in your mouth as you can, swallowing it all down like a good, submissive bitch. Once she's done with you, the matriarch leave you there, covered in her cum. One of her attendants is given the reward of licking her cock clean as the matriarch returns to ordering the others around.";

to say hyenamatnosex3:
	say "     She laughs as you dive eagerly onto her cock, licking and stroking it with your paws. Coated in her virile, musky scent, that throbbing penis is delicious to your submissive and needy body. You open your mouth wide and plunge down onto it, taking the large erection into your mouth and down your throat, drawing a moan of pleasure from the sexy matriarch. You smile happily at this and work your mouth, lips and tongue as best you can to please her, eager to earn your hot and filling reward. She strokes your head and pounds your face, slapping her large, heavy balls against your throat. You grab them and rub them, moaning at their weight and the knowledge that their contents will soon be blasting into you.";
	say "     The matriarch rumbles in pleasure from your eager blow job, her swelling knot pressing at your lips. In your lustful haze, you don't want to miss out on having that inside you and push yourself forward further, taking that growing bulge of meat into your mouth, locking you to her crotch. She releases a loud, barking laugh as she cums hard, sending gushes of thick cum down your stretched throat into your belly. Once she's done and pulls free when her knot's gone down, you are left feeling delightfully bloated and full, very content despite the soreness in your jaw and stretched throat. She leaves you there on the floor, overcome with delight at being stuffed full of her cum and returns to ordering her attendants around.";


Chapter 2 - Sex Variations

to say hyenamatsex1:
	say "     The sexy matriarch decides to give you what you want, pushing you onto all fours and moving in behind you. You moan and raise your ass, a mix of pleas for her to fuck you hard and thanks for deigning to fill such a lowly bitch flowing from your mouth. She gives a hearty laugh and lets her throbbing erection slide across your ass, teasing against your bottom and brushing over your wet folds. You want to spear yourself backwards onto it so badly, but you obediently wait, your hips trembling as you try to hold them back. Finally, after what seems like an eternity in that brief moment, she thrusts forward, driving several inches of her thick cock into you in one go. You release a barking laugh, manic delight filling you as the matriarch starts to breed you like the hyena bitch you are.";
	say "     As she pounds into you, pushing more and more of her large meat into your needy body[if cunt length of player < 10 or cunt width of player < 4], stretching your smaller cunt to accommodate her large breeding pole[end if]. 'Mmm... you like this, don't you?  Why else would someone like you have challenged me again, but to get fucked and bred?' She licks your ears and nuzzles your neck. 'You're my good girl now. A proper hyena girl like you were meant to be, ready to be bred full of strong pups.' You nod, your sex-addled mind accepting her words, wanting nothing more than for her to impregnate you again and again.";
	WaitLineBreak;
	say "     Her hard cock pulses and throbs inside you, making you feel so good. You're glad you lost to her. You were meant to lose. You meant to lose from the very beginning. All so you could feel the joy of being her sexy girl and get bred with her pups. When she thrusts hard into you one last time, driving her thick knot inside you and tying with you, you cry out in ecstasy, your whole body feeling the rush of your orgasm as you receive her virile gift of semen as she seeks to breed you. 'Oh, you are my good girl,' she rumbles. 'Take it. Take it all!' she growls as she cums. When she's done with you, you're left feeling bloated and full with her heavy load, loving its hot warmth inside you and hoping it takes root.[impregchance]";

to say hyenamatsex2:
	say "     Your sexy matriarch decides to give you what you want, pushing you down to the floor and grabbing your legs. You moan and wrap them around her waist, letting her grab your ass and squeeze it. Her erection's fully hard now and she slides the underside of it along your pussy's dripping folds. You whimper with need, feeling that cock against you feels delightful, but your body cries out for more because of the tantalizing touch. You lick your lips and grind back against her as best you can against the object of your submissive, lustful desires. Once she's satisfied you're ready, she slides her hips back, lines up her dripping glans with your lips and thrusts into you firmly, making you bark in delight.";
	say "     Keeping a strong grip on you, she starts breeding you like the hyena bitch that you are[if cunt length of player < 10 or cunt width of player < 4], stretching out your relatively small cunt to take her impressive pole[end if]. 'Isn't it [one of]better[or]easier[in random order] to just be a good girl for your matriarch?  A proper hyena fucking's all you've ever wanted,' she says, thrusting harder into you. You pant and nod, unable to deny how great it feels to be the matriarch's breeding bitch.";
	WaitLineBreak;
	say "     Her thick cock slices in and out of you, sending ripples of pleasure running through your submissive body. You feel so good getting fucked like this. Your needy body tells you that you were always meant to be fucked and bred like this by hyenas, that it was what you've always wanted, dreamed of it your whole life. 'You make a fine horny slut, my pretty hyena girl. And pretty hyena girls get bred,' she matriarch rumbles, growling out the last few words as she pushes hard to pop her knot inside you before cumming. Her hot seed blasts into you again and again, stuffing your womb full of her virile seed, working to breed you full of more strong pups for the gang. You orgasm loudly, for all to hear, as the powerful and sexy matriarch breeds you. When she's finally done and her knot goes down, she pulls out and the excess seed your womb can't hold flows out of you, pooling between your legs as you lay there on the floor, panting, used and loving it.[impregchance]";

to say hyenamatsex3:
	say "     The sexy hyena herm decides to give you what you want, pulling you into her arms as she kneels on the ground. Her stiff erection is between you both as she holds you in her lap. She licks and nibbles along your shoulder and neck, making you moan with pleasure and grind your hyena body firmly against her penis, her growing knot pressed to your needy pussy. Feeling it there, you want it inside you even more and whimper with need, rocking your hips to slather your juices across that bulb of firm flesh. As your excess juices soak her knot, they flow down over her sheath and ballsac. She raises your hips up slowly, licking and kissing across your body as she lets your pussy slide along her cock gradually until her glans rests waiting at your body's eager entrance.";
	say "     Keeping her paws firmly on your hips, she lowers you down onto her cock at what feels like an excrutiatingly slow rate for your needy, lust-addled body. You whimper and groan with need, your pussy quivering and your inner walls squeezing and pulling at her meat, wanting to have it all in you[if cunt length of player < 10 or cunt width of player < 4]. Her slow penetration stretches out your relatively small cunt around her impressive maleness[end if]. 'Oh, doesn't that feel good, my sexy girl?  A good fucking for is just what a horny slut like you needs,' she moans, clearly holding back from fucking you hard and fast as well. Somewhere deep inside, it makes you feel good to know the matriarch wants to breed you almost as bad as you want her to do it.";
	WaitLineBreak;
	say "     Eventually, she has the whole of her cock stuffed inside you, with her hard knot throbbing against your dripping folds once more. You moan and grind down on it before she raises you up a little and starts thrusting into you. Unlike the slow penetration, this fucking is hard and fast, almost brutally so, but your body loves it. As if making up for the slow start, the matriarch pounds into you with animalistic speed that has you moaning and barking lustfully. ";
	if a random chance of 1 in 2 succeeds:
		say "     To silence you, she presses your face into her bosom. You latch onto her nipple and start suckling, delighted as your efforts are rewarded with the matriarch's warm milk. It is deliciously creamy and satisfying, and you suckle greedily for more. Your thoughts grow hazier and more lustful as you drink, with only desires for sex, breeding, pups and more sex filling your mind.";
		say "     With the pleasure from your suckling further exciting her, the matriarch doesn't hold out much longer and drives your hips down hard as she thrusts up, popping her knot into you before cumming hard. She blasts load after load of her thick semen into you, stuffing your womb full to the point of overflowing. Excess semen spurts out from around her cock, even her knot unable to keep it all in there's so much of it. When she's finished and her knot goes down, she lifts you off, a hot rush of her seed pouring down over your thighs and her crotch. You fall to the floor, spent but satisfied, barely able to focus your eyes to watch as one of her lucky attendants gets to lick her clean.[impregchance]";
		decrease thirst of player by 6;
		if thirst of player < 0, now thirst of player is 0;
		decrease humanity of player by 5;
	else:
		say "     You bounce in her lap, riding that thick meat stick as she drives it into you firmly over and over again. 'Oh, that's my good girl,' she rumbles, panting with pleasure as she fucks you. You smile happily, glad your body is able to please your powerful leader. You wiggle your hips and do your best to squeeze your inner walls down around her cock, but the pleasure of the great fucking you're receiving makes it difficult to concentrate enough to do so.";
		say "     Your submissive and needy body responds admirably though, soon driving the matriarch to push your hips down hard as she thrusts up, popping her knot into you before cumming hard. She blasts load after load of her thick semen into you, stuffing your womb full to the point of overflowing as you both release barking howls of hyena pleasure. Excess semen spurts out from around her cock, even her knot unable to keep it all in there's so much of it. When she's finished and her knot goes down, she lifts you off, a hot rush of her seed pouring down over your thighs and her crotch. You fall to the floor, spent but satisfied, barely able to focus your eyes to watch as one of her lucky attendants gets to lick her clean.[impregchance]";


Chapter 3 - Special Sex Variations

to say hyenamatspecial1:
	say "     The matriarch smiles down at you and gives your ass a firm squeeze. 'Since you've been such a good girl and learned your place, I have a special treat for you,' she chuckles as she slides around behind you, her paws roaming over your body. 'My guards have been working hard and I think they deserve a reward. Don't you agree?' she half-whispers in her ear. Looking over at the serious and stoic hyenas who are her bodyguards, you lick your lips. Eying their strong bodies and thick sheaths, you whimper, your thighs getting wet with your juices as your submissive urges run through you. Grinning, she spreads your legs with one of her strong paws, then spreads your pussy lips in a wanton display to the pair. 'Come on, you two. This fine slut's here to reward you for all your [']hard['] work,' she rumbles added emphasis on the word.";
	say "     The duo grin to one another, briefly dropping their serious expressions as they get excited about the prospect of sharing a sexy hyena girl, and one of the matriarch's prize playthings at that. During that short glance, they wordlessly decide who'll take which position and move in on you. You moan excitedly as they grab you firmly and push you to the ground. The one in front of you brings your face between her legs, pressing her throbbing cock into your mouth while the other grabs your ass and gets lined up. Even as the front one makes her first thrust, she pushes you back, spearing you onto the other's hard shaft. You release a wet moan around the guard's cock, licking and sucking it greedily as they pound into you.";
	WaitLineBreak;
	say "     This pair of virile herms take their time with you, alternating a few times between sawing back and forth into you and both thrusting forward at once. As they're using you, the matriarch watches on, clearly quite pleased with the show while several attendants lick her balls and pussy. 'Mmm... that's it, my good girl. Let those big, strong cocks have their way with you. Being fucked and bred is just what you need,' she rumbles. 'Let those powerful hyenas fill you with some strong pups.' Just the thought of that almost makes you cum, you've gotten so excited by their lustful use of your body. This sort of treatment's just what a gang bitch like you wants and needs, those submissive urges tell you. After a good, long fucking, they finally cum[one of], first in your mouth and then your cunt[or], first in your pussy and then down your throat[purely at random], stuffing you with hot loads of virile hyena cum from both ends. Once they're done, they pull out, each wiping their cock on your ass cheeks before heading back to their post. Somewhere along the way the matriarch came as well, filling one of her attendants with a wombful of her hot seed. She's left sprawled out beside you, you both overflowing with virile hyena cum.[impregchance]";

to say hyenamatspecial2:
	say "     The larger hyena smiles down at your and gives your ass a firm squeeze. 'I've been thinking I'd like to have more than just a quick fuck with you, my slutty girl,' she rumbles as she runs a paw over your chest and between your legs. 'I think you need some special attention that I just can't give out here.' She nods to her guards and they grab you by the arms and start dragging you off towards the back of the warehouse. You can hear the matriarch telling her attendants that she'll be in an important meeting for the next few hours and orders them to enjoy their break. They grin and some of they give barking laughs, knowing the kind of [']important meeting['] she has planned. As some head off for food, booze or rest while others grab a partner to pair up with, the guards pull you into the matriarch's chambers and toss you on the bed.";
	say "     While the conversion of this office area into the quarters for the matriarch is roughshod at best, the gang's at least done what it can under the circumstances. After clearing out the desks and filing cabinets, they've added a large bed, several cushions and a rugs. A couple of wall hanging and random decorations among the more ornate of the gang's scavenged prized are in here, presented as gifts to the matriarch. Some coloured lights are strung up, cables running off to a generator elsewhere to power them.";
	WaitLineBreak;
	say "     When the matriarch enters, the large hyena pushes you back down onto the bed and climbs atop you. 'I thought we might spend a little private time together,' she rumbles, running a paw along your side, across your thigh and then between your legs. 'You've been my good girl and I can tell you want some extra attention.' As she says this, she slips a pair of fingers into your cunt, making you moan. She pumps them into you several times as you wriggle on the soft bed, only to whine in disappointment as she removes them. She sniffs your juices off her fingers, then gives them a slow lick. Moving the paw to your breasts, she smears your feminine juices over your nipples in slow circles that leave your nipples achingly hard. 'Aren't you cute like that, my needy girl?  I think I'll take a taste for myself.'";
	say "     And with that said, she moves back, spreading your legs and dives her head between your legs. Her long tongue slides across your pussy before diving it into your cunt. You moan as her tongue slides deep inside your breeding hole to sample your fecund juices, rubbing your paws lovingly over her head. When she finally moves back, you're a panting mess of horny flesh on her bed, eagerly spread as she moves in to mount you. She drives her large cock into your wet and ready hole, making you release a hyenic laugh of delight as that's enough to push you over the edge and cum after her earlier tonguework. Even as you're bucking your hips throughout your climax she starts pounding into you, making you cum all the longer and harder.";
	WaitLineBreak;
	say "     'Oh yes, look at you, my horny girl. Such a needy slut you make. Isn't this much better than trying to be strong and dominant?  Someone like you was always meant to be a submissive fucktoy,' she rumbles as she thrusts. Your sex-filled mind knows what she's saying to be true, your submissive hyena instincts echoing those words over and over as she continues fucking you. As she kneels over you, she brings her muzzle to your nipples and starts licking and sucking on them as she thrusts harder, working to tie with you. When her knot finally pops into you, you cry out in ecstasy along with your matriarch's barking laugh as you cum together. Her hot seed blasts into you, flowing up into your waiting womb and stuffing you wonderfully full.[impregchance]";
	say "     As she rests there atop you while her knot keeps you tied to her, she nuzzles at your neck, licking and nibbling as you bare your throat in submission to your leader. 'I am really pleased with how far you've come, my good girl.' You moan and run your paws over her body, playing with her breasts as you tell her you're much happier that way, which makes her smile all the more.";
	WaitLineBreak;
	say "     Once her knot has gone down and you're left leaking her seed out onto the sheets when she pulls out, she brings her cum-slick cock to your mouth. You dive your mouth down overtop of it, drawing a moan of pleasure from her that warms your heart and your loins. You lick and suck at her returning erection, swallowing down the mix of hyena cum and juices coating it. Knowing this impressive cock was just inside your pussy and breeding you makes it all the more exciting and you bury several fingers into your cunt and start masturbating. 'Oh, that's my good, eager girl,' your hyena mistress moans, starting to thrust into your mouth as she fucks your face. Her paws stroke and caress your head as you knead her balls with one paw and frig your sloppy cunt with the other. Her shaft throbs in your mouth and throat, pulsing as she blasts a fresh load of semen into you, this time filling your belly until that's stuffed full as well.";
	say "     Quite spent now, the larger hyena slides her cock from your muzzle and sags back onto the bed. She spoons with you, pressing her half-hard cock back into your cunt, fucking you more gently now as she clearly wants to make the most of her fun with you. It's not until you've been filled several times more that she eventually sends you on your way so she can resume ordering around the others. Your body is sore and aching, but it's a wonderful ache that feels so satisfying. Much of you is covered in your matriarch's cum and more of it flows out of your thoroughly overstuffed cunt.[impregchance]";
	follow the turnpass rule;

Matriarch NPC ends here.
