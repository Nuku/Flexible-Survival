Version 2 of Spartan by Wahn begins here.
[Version 2.1 - Flags, Capitalization fix]

"Adds a Male Spartan to Flexible Survival's Wandering Monsters table, with impreg chance"

Section 1 - Creature Responses

to say Spartan wins:
	if HP of Player > 0:[player submits]
		if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior" and Cunt Count of Player is 0:[Spartans, but not herms and females]
			say "     A shocked expression on his face, the young warrior stares at you as you kneel and submit to him. Then anger clouds his features and he shouts 'Impostor! How dare you disguise yourself as one of your betters, slave. I'll teach you your place, dirty Helot!' With that, he rips the helmet off your head and throws it on the ground, its metal crumpling like it's a cheap copy and not the well-crafted helmet it was seconds before. Then he shreds your cloak, its bright red color fading as he touches it and the material ripping easily in his hands.";
			LineBreak;
			say "     Forcefully pulling your head to his crotch, the Spartan thrusts his cock into your mouth, fucking your face without restraint or mercy. He pumps in and out, pushing deep until your nose touches his pubic hair and his shaft is in your throat. You cough from the rough treatment, but he just keeps going, shoving his cock down your throat and angrily saying 'Yeah, choke on it - you should have thought twice about donning that disguise!' Both hands on your head, he holds you tight, his thick shaft in your throat cutting off your breathing. Only when you start feeling woozy and see stars does he release you to collapse at his feet, gasping for air.";
			WaitLineBreak;
			say "     The Spartan commands you to get on all fours and moves into position behind you. You can feel the tip of his erection hotly against your pucker when he says 'This is what the gods made you for - time to serve your master!' Then he thrusts into you with a satisfied grunt, burying his hard shaft deep in your tight hole. As his invading member slides deeper, stretching your passage around it, something inside you tells you he's right - this is right - your place in the world is under this virile young man, serving him. Fully submitting to be the Spartan's slave with that realization, you grind back against him, moaning deeply as his cock rubs your prostate. Slamming forward with powerful thrusts, the young warrior's hips hitting your ass with slapping noises, the Spartan speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoots into you. You can feel his hard shaft pulse against your inner walls with each burst of cum.[mimpregchance]";
			say "     Being bred by your master, the amazing full feeling of having his warm load inside you, your own orgasm follows just moments later. [if Player is male]Long bursts of cum jet out of the tip of your manhood, splashing over the ground and the shreds of your former cloak[else]Your whole body shakes in the grip of climax[end if]. Meanwhile, the Spartan pumps in and out of you a few more times as he shoots his last spurts of cum, then pulls out of your ass with a slurping noise. He wipes his cock off on your skin, then stands up.";
			LineBreak;
			say "     Exhausted, you sink to the ground. Lying there, naked and sweaty, the Spartan's cum oozing out of your asshole, you see him walk around and stand over you. 'There, let that be a lesson. It would be good for you if you remembered it.' He spits on the ground then leaves you lying in the dust. After the Spartan is gone, you clean yourself up as much as possible, then use the faded shreds of your former cloak to bind a loincloth around your hips.";
			say "[StealthHelotTransformation]"; [full transformation]
		else if (BodyName of Player is "Amazonian" and FaceName of Player is "Amazonian") or (BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior") and player is female:[females and herms in Amazonian/Spartan form]
			say "     A shocked expression on his face, the young warrior stares at you as you kneel and submit to him. Then anger clouds his features and he moves forward to rip aside your clothes to reveal your pussy. 'You silly little bitch! You can disguise yourself as a warrior, but your true nature always shines through - one of us would never just give in and beg for mercy as you just did! Couldn't hold back your urges anymore - I bet. Fine, have your wish! Get here and suck my cock.'";
			LineBreak;
			say "     Forcefully pulling your head to his crotch, the Spartan thrusts his cock into your mouth, fucking your face without restraint or mercy. He pumps in and out, pushing deep until your nose touches his pubic hair and his shaft is in your throat. You cough from the rough treatment, but he just keeps going, shoving his cock down your throat and angrily saying 'Yeah, choke on it - you should have thought twice about donning that disguise!' Both hands on your head, he holds you tight, his thick shaft in your throat cutting off your air. Only when you start feeling woozy and see stars does he release you to collapse at his feet, gasping for air.";
			WaitLineBreak;
			say "     The Spartan pushes you over on your back, then spreads your legs and kneels between them, guiding his hard cock to your crotch. You can feel the tip of his erection hotly against your wet pussy lips when he says 'This is what the gods made you for - fucking and bearing our children.' Then he thrusts into you with a satisfied grunt, burying his hard shaft deep in your vagina. As his invading member slides deeper, stretching your passage around it, something inside you tells you he's right - this is right - your place in the world is under this virile young man, serving him. Fully submitting to be the Spartan's slave with that realization, you grind up against him, moaning deeply as his cock rubs your insides. Slamming forward with powerful thrusts, the young warrior's hips hitting yours with slapping noises, the Spartan speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoots into you, splashing into your womb. You can feel his hard shaft pulse against your inner walls with each burst of cum.[fimpregchance]";
			say "     Being bred by your master, the amazing full feeling of having his warm load inside you, your own orgasm follows just moments later. [if Player is male]Long bursts of cum jet out of the tip of your manhood, splashing all over your chest[else]Quite a bit of femcum leaks from your vagina, mixed with his white cum, and runs down your crotch[end if]. Meanwhile, the Spartan pumps in and out of you a few more times as he shoots his last spurts of cum, then pulls out with a slurping noise. He wipes his cock off on your skin, then stands up and just leaves you lying there, his sperm oozing out of your gaping pussy.";
		else:
			say "     You fall to your knees, submitting to the young warrior. 'Good, finally a slave that knows his place - present yourself, I want to see what you have to offer.'";
			say "     Stripping off your clothes, you stand in front of the young man, a shudder of arousal running through you as you display your naked body. Eyes wandering over you, he gestures for you to stretch and spin, jerking himself to full hardness over your little show. 'Not bad - on your knees, slave. I want to make use of you.'";
			say "[Spartan fucks]";
		infect "Helot Manservant";
	else:[player loses]
		say "     With a shove, he pushes you to lie on the ground before him. 'Do you admit defeat before me and swear you'll submit to my commands?' the young Spartan asks you. Not ready to face another pounding like that, you lower your head in submission and nod. 'Good - this workout has made me horny. Present yourself. I want to see what I have won.'";
		if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior" and Cunt Count of Player is 0:[Spartans, but not herms and females]
			say "     Stripping off your clothes, you stand in front of the young man, displaying your naked body. Eyes wandering over you, he gestures for you to stretch and spin, jerking himself to full hardness over your little show. 'Not bad - but you clearly need to train more if you ever hope to finish first in this test. For now. I'm clearly superior... and want to make use of my winning privileges. On your knees.'";
		else if (BodyName of Player is "Amazonian" and FaceName of Player is "Amazonian") or (BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior" and player is female):[amazons, and herm/female Spartans]
			say "     Stripping off your clothes, you stand in front of the young man, displaying your naked body. Eyes wandering over you, he gestures for you to stretch and spin, jerking himself to full hardness over your little show. 'A woman as a soldier? Pah. Silly girl. On your knees - I'll show you your proper place.'";
		else: [every other shape]
			say "     Stripping off your clothes, you stand in front of the young man, displaying your naked body. Eyes wandering over you, he gestures for you to stretch and spin, jerking himself to full hardness over your little show. 'Not bad - on your knees, slave. I want to make use of you.'";
		say "[Spartan fucks]";
		if Player is submissive:
			infect "Helot Manservant";

to say Spartan fucks:
	if Player is female:[female + herm]
		LineBreak;
		say "     Kneeling down, you get into position for the young man. You feel him moving into position behind you and reach down between your legs to spread your pussy lips. Then the tip of his cock touches your opening, followed by a deep thrust into your vagina. He fucks you vigorously, pistoning in and out with fluid movements and makes you gasp and moan in pleasure at his invasion of your body. Slamming forward with powerful thrusts, his hips hitting your ass with slapping noises, your Spartan master speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoots into you. You can feel his hard shaft pulse against your inner walls with each shot. [fimpregchance]";
		LineBreak;
		say "     The Spartan rests his hard cock inside you for a moment after he stops cumming, then pulls out and gets ready to leave. Looking down at you, on the ground with his cum dripping from your pussy, he remarks 'If my seed takes and you get with a male child, find the local paidonomos and present the boy. He's not yours, but belongs to Sparta.' Then he walks away.";
	else:[male + neuter]
		LineBreak;
		say "     Kneeling down, you get into position for the young man. You feel him moving into position behind you and spread your cheeks. Then he gets a finger wet in his mouth before pressing it against your hole. After some quick finger-fucking with first one, then two fingers, the probing digits are replaced by the tip of his cock. With the young man's precum providing a bit more lubrication, he slowly presses forward until your pucker yields and allows him to slide into your body. After giving you a moment to get used to his shaft, he pulls out almost all the way, then thrusts back in deep. He fucks you vigorously, pistoning in and out with fluid movements and makes you gasp and moan in pleasure at his invasion of your body. Slamming forward with powerful thrusts, his hips hitting your ass with slapping noises, the Spartan speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoots into you. You can feel his hard shaft pulse against your inner walls with each burst of cum.[mimpregchance]";
		LineBreak;
		if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior" and Cunt Count of Player is 0:[male + neuter Spartans]
			say "     The Spartan rests his hard cock inside you for a moment after he stops cumming, then pulls out and gets ready to leave. Looking down at you, on the ground with his cum dripping from your asshole, he remarks 'Nice ass. I could get used to fucking you. If you get through the trials, seek me out. I'll take you under my wing and into my bed.' Then he walks away.";
		else:
			say "     The Spartan rests his hard cock inside you for a moment after he stops cumming, then pulls out and gets ready to leave. Looking down at you, on the ground with his cum dripping from your asshole, he remarks 'Nice ass. I could get used to fucking you. Maybe I'll take you with me as a personal slave when I get initiated as a full soldier.' Then he walks away.";
	now FuckedBySpartan is 1;        [for use in the Helot infection file in the endings]

to say Spartan loses:
	say "     Breathing hard, the young Spartan takes his helmet off and lays it on the ground in front of you. 'I am defeated. Clearly I need to train more to beat this trial.' He sighs, then lets his cloak fall to the floor too. 'Do with me what you will, it is fitting punishment for my weakness to be dominated by another.'";
	if Player is male:[male+herm]
		LineBreak;
		say "     Looking over the handsome Spartan, you could either mount his cock with you on top [link](1)[as]1[end link], turn the tables and fuck him [link](2)[as]2[end link], have him blow your cock [link](3)[as]3[end link], suck him off [link](4)[as]4[end link] or just leave[link](5)[as]5[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 5:
			say "Choice? (1-5)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] to fuck him, [link]3[end link] to get sucked, [link]4[end link] to blow him or [link]5[end link] to leave.";
		if calcnumber is 1:[mount his cock]
			say "[Spartan ride]";
		else if calcnumber is 2:[fuck him in the ass]
			say "[Spartan fucked]";
		else if calcnumber is 3:[get sucked off]
			say "[Spartan oral]";
		else if calcnumber is 4:[give him a blowjob]
			say "[Spartan blown]";
		else:[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised Spartan behind.";
	else if Player is female:[female]
		LineBreak;
		say "     Looking over the handsome Spartan, you could either mount his cock with you on top [link](1)[as]1[end link], let him lick your pussy [link](2)[as]2[end link], suck him off [link](3)[as]3[end link] or just leave [link](4)[as]4[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] get licked, [link]3[end link] to blow him or [link]4[end link] to leave.";
		if calcnumber is 1:[mount his cock]
			say "[Spartan ride]";
		else if calcnumber is 2:[get licked]
			say "[Spartan oral]";
		else if calcnumber is 3:[give him a blowjob]
			say "[Spartan blown]";
		else:[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised Spartan behind.";
	else:[neuter]
		LineBreak;
		say "     Looking over the handsome Spartan, you could either mount his cock with you on top [link](1)[as]1[end link], suck him off [link](2)[as]2[end link] or just leave [link](4)[as]4[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			else:
				say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] to blow him or [link]3[end link] to leave.";
		if calcnumber is 1:[mount his cock]
			say "[Spartan ride]";
		else if calcnumber is 2:[give him a blowjob]
			say "[Spartan blown]";
		else:[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised Spartan behind.";


to say Spartan ride:
	say "     Spreading his long red cloak on the ground, you motion the young man to lie down on it. He looks pretty good, his toned body stretched out and long hard cock standing erect, waiting for your pleasure.";
	if (player is male) or (player is herm and anallevel > 1):[male + herm (except those with less anal)]
		say "     Kneeling down next to him, you bend over and take the Spartan's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock penetrates your hole, spreading it around his hard shaft. You go deeper, slowly sinking him further into you until finally your buns touch his hips and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The Spartan's shaft feels great rubbing your inner walls and you gasp as it hits your prostate. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the Spartan's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and your anal muscles grip your partner's cock tightly as you cum, long strings of your seed arching out of your cock to splat all over the Spartan's chest. And he's not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum.[mimpregchance]";
		LineBreak;
		say "     Resting on top of your handsome Spartan for a moment, you look down to watch your cum pool between the ridges of his muscles. Giving a satisfied sigh as you feel his cock going soft and then plop out of your ass, you stand up and gather your clothes and stuff. After a last look at the Spartan, still lying on his red cloak with your cum all over him, you turn your thoughts back to survival and leave.";
	else if Player is female:[female]
		say "     Kneeling down next to him, you bend over and take the Spartan's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock touches your moist pussy lips, then spreads them around his hard shaft. You go deeper, slowly sinking him further into you until finally your hips meet and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The Spartan's shaft feels great rubbing your inner walls and you gasp as it brushes over your g-spot. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the Spartan's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and copious amounts of femcum start to run down the Spartan's cock as you orgasm, a tingly feeling of satisfaction spreading through your whole body. Your Spartan is not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum. [fimpregchance]";
		LineBreak;
		say "     Resting on top of your handsome Spartan for a moment, you look down to watch his muscled chest move as he breathes deeply while coming down from his high. Giving a satisfied sigh as you feel his cock going soft and then plop out of your vagina, you stand up and gather your clothes and stuff. After a last look at the Spartan, still lying on his red cloak in all his naked glory, you turn your thoughts back to survival and leave.";
	else:[neuter]
		say "     Kneeling down next to him, you bend over and take the Spartan's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock penetrates your hole, spreading it around his hard shaft. You go deeper, slowly sinking him further into you until finally your buns touch his hips and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The Spartan's shaft feels great rubbing your inner walls and you gasp as it hits your prostate. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the Spartan's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and your anal muscles grip your partner's cock tightly as you orgasm, a tingly feeling of satisfaction spreading through your whole body. Your Spartan is not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum.[mimpregchance]";
		LineBreak;
		say "     Resting on top of your handsome Spartan for a moment, you look down to watch his muscled chest move as he breathes deeply while coming down from his high. Giving a satisfied sigh as you feel his cock going soft and then plop out of your ass, you stand up and gather your clothes and stuff. Giving the Spartan a last look, still lying on his red cloak in all his naked glory, you turn your thoughts back to survival and leave.";

to say Spartan fucked:
	say "     Spreading his long red cloak on the ground, you motion the young man to get on it. He looks pretty good, his toned body on all fours, long hard cock dangling below and tight butt ready to take you.";
	say "     Who could resist such an enticing display? You don't even try, instead following the urges of your own rapidly hardening cock. Moving into position, you rub it up and down the submissive Spartan's crack and do your best to lube him with your precum. Soon you can't hold back any more and press against his opening, spreading it around your hard shaft as you sink inside. The young man moans as you slide deeper and deeper into his body, rubbing very sensitive spots. 'Ah, fuck me. Harder!' he begs, and you eagerly comply, intensifying your thrusts.";
	LineBreak;
	say "     As you fuck the athletic young man, you let your hands wander all over his human body, stroking his hairless skin and defined muscles. One of your hands brushes his cock, rock hard from getting fucked, and you take hold of it to stroke your handsome bottom boy. Pounding his ass hard and giving him a reacharound, it's no big wonder that the Spartan's moans soon come faster and faster and are quickly followed by lust-filled shouts as he orgasms. Long strings of white cum blast from his cock, painting the red cloak under him in an interesting pattern.";
	say "     The young soldier's hole twitches around your shaft as he comes, giving you the final push for your own orgasm. As the pleasant tingle rises in your balls, you thrust in deep one last time, grinding your hips against his ass. Then the floodgates open and blast after spurt after spurt of your seed into the Spartan's ass. Giving a satisfied sigh as you finish coming, you pull out of the young hunk and stand up. Giving him a last look, cum dripping out of his ass and kneeling on a white-streaked red cloak, you leave.";

to say Spartan oral:
	say "     Folding his long red cloak twice you put it on the ground and motion the young man to kneel on it. He looks pretty good, his toned body erect and ready to for your commands.";
	if Player is male:[male + herm]
		say "     Stepping up in front of him, you hold out your erect cock for your submissive Spartan and say 'Get to work, boy.' And oh does he... you're treated with his delightful tongue licking your balls and teasing your member, which has you dripping pre-cum before he even takes you into his mouth. And when he finally does - you learn how good at sucking someone gets after spending his whole life since puberty in a Spartan 'boy-herd' (or at least thinking he did), training naked and encouraged to build bonds between each other.";
		say "     His talented mouth brings you to the edge of orgasm several times, always slowing down when you get too close and allowing you to cool down before he goes on. Then finally, he goes all out bobbing up and down on your shaft and even taking you all the way, deep-throating you. As you moan and gasp 'I'm coming!', he pulls back a bit to take your load on his tongue, tasting it before swallowing it all down. Giving a satisfied sigh as you finish coming, you pull out of the young hunk's mouth and step back. Looks like your Spartan boy is quite into oral sex, as he's stroking his own hard cock now. It doesn't take too much longer until he comes, shooting his load into the palm of his hand before bringing it to his mouth. Giving the hot young Spartan licking up his own cum one last look, you leave.";
	else:[female]
		say "     Stepping up in front of him, you brush your fingers over your moist pussy lips and say 'Get to work, boy.' And oh does he... you're treated with his delightful tongue licking over your sensitive pussy lips, gently teasing here and there before being pushed inside your vagina. Spending his whole life since puberty in a Spartan 'boy-herd' (or at least thinking he did), training naked and encouraged to build bonds between each other, has left your submissive Spartan with quite a bit of experience at oral sex - even though he has to improvise a bit since you don't have a cock.";
		say "     His talented mouth brings you to the edge of orgasm several times, always slowing down when you get too close and allowing you to cool down before he goes on. Then finally, he goes all out, suckling on your clit and stroking you until you can't hold it anymore. As you moan and gasp 'I'm coming!', he pulls back a bit to look up into your face, looking pleased with himself at making you orgasm. Giving a satisfied sigh as you come down from your high, you run a hand through the Spartan's hair and step back. Looks like your young captive is quite into oral sex, as he's furiously stroking his hard cock. It doesn't take too much longer until he comes, shooting his load into the palm of his hand before bringing it to his mouth. Giving the hot young Spartan licking up his own cum one last look, you leave.";

to say Spartan blown:
	say "     Folding his long red cloak twice you put it on the ground and kneel down on it, then motion the young man to come closer. He gets a hopeful look on his face, which becomes a smile and satisfied moan as you grasp his cock and lick over its underside. The young man lets you suck him off for a while before bringing his hands to your head and taking over, pulling you against his crotch in a change of pace. Before long, he's face-fucking you pretty quickly and often pushes into your mouth and down your throat all the way. Soon, the Spartan's moans get louder and louder and then he cums, shooting spurt after spurt of his load into your mouth.";

to say SpartanDesc:
	setmongender 3;
	say "     You cross paths with a young man clothed in nothing but sandals, a long red cloak and a plumed Greek helmet. He holds a pretty self-confident expression as he walks up to you.";
	if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior":
		say "     'Welcome, brother - I see I'm not the only one selected for this test. Let us measure our strength against each other and see who is superior.'";
	else:
		say "     'Ah, a Helot. Some welcome relief for my aching balls,' he says to himself, lowering a hand to fondle them and stroke his long cock. 'Get over here, slave - I have need of you.'";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Spartan";
	add "Spartan Warrior" to infections of HumanList;
	add "Spartan Warrior" to infections of HistoricalList;
	add "Spartan Warrior" to infections of MaleList;
	add "Spartan Warrior" to infections of BipedalList;
	now Name entry is "Spartan Warrior";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 1; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]With a quick sweep of his leg, he brings you crashing to the floor.[or]He grabs hold of you, taking you into a choke-hold that you only just manage to wind your way out of.[or]First throwing a handful of dirt into your face, the young Spartan strikes a painful blow to your side while you're off guard.[at random]";
	now defeated entry is "[Spartan loses]";
	now victory entry is "[Spartan wins]";
	now desc entry is "[SpartanDesc]";
	now face entry is "a handsome young man's, still smooth and beardless. A Greek helmet with a large red horse-hair plume covers your short black hair";
	now body entry is "that of a young man, quite fit and healthy. It is garbed in nothing but a pair of sandals and a long red cloak, held around your shoulders by a brooch";
	now skin entry is "smooth, sun-bronzed"; [ skin Description, format as "You have (your text) skin."]
	now tail entry is "You have a tight, firmly muscled butt."; [ Tail description, write a whole Sentence or leave blank. ]
	now cock entry is "human";
	now face change entry is "it shapes itself into a handsome male visage, smooth-faced and beardless. A Greek helmet materializes out of a swirl of silvery dust to cover your head and short-cut black hair";
	now body change entry is "it is reshaped into a that of a young man, and a fit and healthy one at that";
	now skin change entry is "it smoothes out, becoming sun-bronzed and almost hairless";
	now ass change entry is "it gets tight and firmly muscled";
	now cock change entry is "it becomes human-shaped";
	now str entry is 24;
	now dex entry is 18;
	now sta entry is 18;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 95;
	now lev entry is 10;
	now wdam entry is 15;
	now area entry is "Campus";         [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1;               [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 12;        [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "pita bread";
	now lootchance entry is 40;         [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "fit"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "human";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;
	now altcombat entry is "default";
	now BannedStatus entry is false;

Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is ""; [name of the overall species of the infection, used for children, ...]
	now Name entry is ""; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 5; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 5; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is ""; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is ""; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is ""; [one word descriptive adjective]
	now Head Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 2; [hair length in inches]
	now Hair Shape entry is ""; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is ""; [one word color descriptor]
	now Hair Style entry is ""; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is ""; [one word color descriptor]
	now Eye Adjective entry is ""; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 3; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective  is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 3; [mouth circumference 1-5, see Mouth Circumference Adjective]
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is ""; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is ""; [one word color descriptor]
	now Tongue Length entry is 3; [length in inches]
	now Torso Change entry is ""; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is ""; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is ""; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
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
	now Back Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is ""; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is ""; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is ""; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is ""; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is ""; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is ""; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is ""; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]." (For players with skin, instead of the period: ", covered in [Ass Color of Player] skin and [Body Hair Description of Player]"]
	now Ass Skin Adjective entry is "";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is ""; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is ""; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is ""; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is ""; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 7; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is ""; [one word color descriptor]
	now Cock Count entry is 0;
	now Cock Girth entry is 0; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 0; [length in inches]
	now Cock Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cock Change entry is ""; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is ""; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Color entry is ""; [one word color descriptor]
	now Ball Count entry is 0; [allowed numbers: 1 (uniball), 2 or 4]
	now Ball Size entry is 0; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is ""; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Adjective entry is ""; [one word adjective: avian/canine/...]
	now Cunt Change entry is ""; [partial sentence that fits in: "Your pussy [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt change entry]."]
	now Cunt Description entry is ""; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Color entry is ""; [one word color descriptor]
	now Clit Size entry is 0; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Section 3 - Events

Table of GameEventIDs (continued)
Object	Name
History Lecture	"History Lecture"

History Lecture is a situation.			[repeatable event infecting with Spartan/Helot strains - source of it all]
The sarea of History Lecture is "Campus".

when play begins:
	add History Lecture to BadSpots of MaleList;

Instead of resolving a History Lecture:
	HistoryLectureVisit;

instead of going west from Lecture Street:
	HistoryLectureVisit;

to HistoryLectureVisit:
	if daytimer is night:
		say "     The doors to the classroom are locked and you are unable to get in. You figure that even teachers need rest so you shrug your shoulders and turn around.";
	else if daytimer is day:
		say "     Coming up to a lecturing theater during your explorations, you spot a sign on a stand next to its entrance: 'Customs and History of Ancient Sparta - Guest Speaker: Professor Eudamias Leto'. Hearing voices from the inside, your curiosity makes you pull open the door. Looks like there's still a lecture going on here, even with all that's been happening in the city - at the front of the room, an old man in a white tunic stands, the blackboard behind him covered in Greek writing, and in the two front rows there are several young men wearing nothing except helmets, red cloaks and sandals.";
		say "     All of them turn to look at you, standing there with the doorknob in your hand. So much for just having a quick look... while your thoughts still race in circles as you try to decide what to do next, the old man clears his throat and calls 'Were you raised in a barn? Come in and close the door, or go.'";
		LineBreak;
		say "     Well, that simplifies things - so what do you want to do? Enter ([link]Y[as]y[end link]) or leave ([link]N[as]n[end link])?";
		if Player consents:[enter]
			say "     You step inside the large room, closing the door behind you. 'Good, good - now come closer, my eyesight isn't quite what it was. Who are you - one of my Spartan pupils?'";
			if Player consents:[listen to the lecture]
				if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior":
					say "     'Yes, of course I am. Sorry for coming late,' you say, then move into the second row and sit down two seats beside the nearest Spartan. The young man turns to you, nodding in greeting, then returns his attention to the lecturer as he starts up talking again. '...so let us return to the battle of [one of]Laconia[or]Arcadia[or]Achaea[or]Elis[or]Argolis[at random] then. As I was saying, [one of]Herimades[or]Thucydides[or]Lycurgus[or]Herodotus[or]Eligonis[at random] had just...'";
				else:
					say "     'Yes, of course I am. Sorry for coming late,' you say, then move into the second row and sit down two seats beside the nearest Spartan. The young man turns to you, momentarily puzzled by your appearance. He opens his mouth as if to say something, then his attention is pulled back to the front as the lecturer clears his throat and starts up talking again. '...so let us return to the battle of [one of]Laconia[or]Arcadia[or]Achaea[or]Elis[or]Argolis[at random] then. As I was saying, [one of]Herimades[or]Thucydides[or]Lycurgus[or]Herodotus[or]Eligonis[at random] had just...'";
				say "     You listen to the exciting report of the battle, almost feeling as if you were there and could hear the clang of metal and smell the sweat and blood as the old man recounts his story. It's amazing what your people accomplished through superior tactics and discipline. 'Your people? Now wait a minute!' a little voice in your head tries to interject and remind you that you were born more than 2500 years later and are not really a Spartan yourself - only to be drowned out as the historian asks his listeners to suggest what they would have done better, a discussion you eagerly join in.";
				infect "Spartan Warrior";
				SanLoss 5;
				WaitLineBreak;
				say "     Some time later, the professor calls for a quick break and turns to a young man in a loincloth standing over at the door of a side room. 'Get the other slaves, it's time for some refreshments.' With a nod the Helot servant goes through the door, soon to return with several others, carrying platters with food and drink. The gathered Spartans take what their slaves offer them, eating and drinking heartily and chatting amongst themselves.";
				project the figure of SpartanHelot_dressed_icon;
				say "     Meanwhile, the professor takes a drink from the mug of wine he's offered, then sets it aside and opens up his tunic at the front. Pulling out his cock, he tells the Helot to take care of it, which leads to the young man immediately going down on his knees and starting to suck him off.";
				LineBreak;
				if Player is not neuter:[genitals needed]
					say "     You're still focused on watching the professor getting a blowjob when suddenly someone clears his throat right next to you. It's one of the Helots, offering you a pita bread with tasty-looking and -smelling filling. Accepting it, your gaze falls on the almost naked body of the young slave and your libido rises to the occasion. Would you like to make use of him for your own pleasure?";
					increase carried of pita bread by 1;
					if Player consents:[sex with the slave-servant]
						say "     Setting aside the food for now, you pull the young man close to you. 'Let's see what we have here...' you say, pulling the loincloth off his hips to reveal the Helot's crotch. Quite well hung, this boy - and he has a nicely perky butt as well.";
						if Player is male: [males]
							say "     Imagining what you can do with this handsome servant has your cock hard and ready to go in no time at all, and you quickly remove any clothing you might have had, then lean back on the seat and hold your erect shaft straight up for him. Being used to such things, there is no need to order the Helot, he just kneels down between your legs and starts licking up and down your shaft, then takes it into his mouth and starts bobbing up and down. His soft lips feel amazing on your manhood and he's also very talented with that tongue of his.";
							LineBreak;
							say "     Do you just want him to keep going until you cum ([link]Y[as]y[end link]), or would you rather fuck his ass next ([link]N[as]n[end link])?";
							if Player consents: [get blown and cum in his mouth]
								say "     Running your hands through the Helot's shaggy shoulder-length hair, you take hold of him and pull his head right against your crotch and hold it there a moment, then let him pull back and take a breath. Fucking his face with quick thrusts that make your balls slap against his chin, from time to time holding him tight with your erection all the way in, you're having an amazing time with the young slave. The urge to cum rapidly rises in your balls, and when you finally can't hold back any longer, you pull back until the tip of your cock is between his lips, then blast spurt after spurt of your seed in his mouth. As your orgasm winds down, you tell him to stick out his tongue - covered in your white cum - and then to swallow it all, which he does without hesitation.";
								infect "Spartan Warrior";
								WaitLineBreak;
								say "     Your own urges satisfied for now, you look back to the front of the lecture hall where the professor is by now looking through some notes of his and several of the Spartans are having sex with the Helots, often taking them from the front and back at the same time. Seeing the spontaneous little orgy almost gets you hard again, but you also are reminded of the nanite infection spread through the city making those affected pretty sex-crazy. Suddenly realizing that you almost spent three hours here already and really should be out and about gathering supplies and doing what you need to survive, you make your way to the exit and leave, hurrying a bit not to be entranced again when the old man starts his next lecture.";
							else: [fuck his ass]
								say "     Running your hands through the Helot's shaggy shoulder-length hair, you pull him off your hard cock with a sigh and look into his eyes as you tell him 'I want you to sit on it now. Show me how tight that pretty little ass of yours is...' Obediently, the Helot stands up again, turning around to present you with his well-rounded bubble butt. Your erection almost painfully hard with the need to fuck this young man, your hands rise to squeeze his cheeks appreciatively, then grab the sides of his hips to pull him down onto your crotch.";
								say "     Penetrating the Helot servant's pucker easily, you slide all the way into this very well trained bottom's ass in one go. His soft asscheeks against your crotch, you can feel him flex his muscles around your manhood, almost as if he's jerking you off. Holding on to his hips, you push against him so he moves up until you're only just inside him with your cockhead, then pull him down on your pole again, fucking him with rapid and hard strokes. As amazing as his ass feels around your cock, you're quickly moving towards orgasm and soon feel the urgent need to cum rise in your balls. With a loud, satisfied grunt, you drive all of yourself into him one last time, spurting blast after blast of your seed deep into his inner passage.";
								WaitLineBreak;
								say "     Cock still twitching inside the young man's ass, you reach around him, your hand finding his cock, rock-hard from getting fucked. You grab it tightly, jerking him off. Soon your freshly fucked bottom gasps, his shaft twitching in your hand as he sprays his load over the back of the row of seats in front. You stay sitting there for a moment longer, the Helot on your lap with your slowly softening shaft still inside him, then let him stand up. Fingering his cum-dripping hole and giving him a playful slap, you leave him to get back to his other duties.";
								infect "Spartan Warrior";
								LineBreak;
								say "     Your own urges satisfied for now, you look back to the front of the lecture hall where the professor is by now looking through some notes of his and several of the Spartans are having sex with the Helots, often taking them from the front and back at the same time. Seeing the spontaneous little orgy almost gets you hard again, but you also are reminded of the nanite infection spread through the city making those affected pretty sex-crazy. Suddenly realizing that you almost spent three hours here already and really should be out and about gathering supplies and doing what you need to survive, you make your way to the exit and leave, hurrying a bit not to be entranced again when the old man starts his next lecture.";
						else if Player is female:[females]
							say "     Imagining what you can do with this handsome servant has your pussy moist and dripping in no time at all, and you quickly remove any clothing you might have had, then lean back on the seat and spread your legs for him. The Helot's eyes widen for a moment when he sees you're female, then he gives a little shrug and knells down between your legs. Bringing his head to your crotch, he starts licking over your sensitive pussy lips, then runs his tongue over your clit and pushes a finger inside your body, stroking your inner walls.";
							LineBreak;
							say "     Do you just want him to keep going until you orgasm ([link]Y[as]y[end link]), or would you rather have him fuck you ([link]N[as]n[end link])?";
							if Player consents:[let him get you off orally]
								say "     Running your hands through the Helot's shaggy shoulder-length hair, you take hold of him and pull his head right against your crotch and hold it there a moment, so he can get really deep into your opening with his tongue. Feeling him wriggle inside you sends shivers of pleasure up your spine and you moan deeply. He gets back to fingering and licking after that, driving you into a lustful haze where you don't care about much more than him touching you. After who knows how long in blissed out contentment, he drives you over the edge with his talented fingers, screaming in satisfaction as femcum squirts out of your pussy to run over the Helot's fingers. He just keeps going, fingering and licking until your orgasm finally winds down. You sigh your thanks, then leave him to get back to his other duties.";
								infect "Spartan Warrior";
								WaitLineBreak;
								say "     Your own urges satisfied for now, you look back to the front of the lecture hall where the professor is by now looking through some notes of his and several of the Spartans are having sex with the Helots, often taking them from the front and back at the same time. Seeing the spontaneous little orgy almost gets you ready to go again, but you also are reminded of the nanite infection spread through the city making those affected pretty sex-crazy. Suddenly realizing that you almost spent three hours here already and really should be out and about gathering supplies and doing what you need to survive, you make your way to the exit and leave, hurrying a bit not to be entranced again when the old man starts his next lecture.";
							else:[let him fuck you]
								setmonster "Helot Manservant";
								choose row MonsterID from the Table of Random Critters;
								say "     Running your hands through the Helot's shaggy shoulder-length hair, you pull him away from your nether lips with a sigh and look into his eyes as you tell him 'I want you fuck me. Pound my pussy with your hard cock...' Eagerly, the Helot stands up again, his shaft erect and ready to go. Without delay, he moves forward to put its head between your pussy lips, then sinks into your body. You can feel his manhood spreading your inner passage around it, pleasure tingling through you from the touch of his hard rod against the walls of your vagina. Driving into you with a quick stroke, the slave servant starts fucking you deeply, obviously very horny and happy to be the active partner during sex for once.";
								say "     Being penetrated by the Helot, his balls slapping against your hips as he thrusts in and out, you give yourself to the feeling of having him inside you. A lustful haze rises in your mind and you lose track of time for a while, not caring for much else except getting fucked. After you don't know how long, you orgasm messily, lots of femcum dripping from your pussy and squirting out around the slave's cock as it thrusts in and out. Grunting urgently, the Helot isn't far behind, grinding his hips against yours as he blasts his fertile seed deep into you. A very satisfied grin on his face as he waits for his cock to finish shooting, the servant then pulls out and goes back to his other duties, leaving you leaning back on your seat with his cum dripping your of your pussy.[impregchance]";
								infect "Spartan Warrior";
								WaitLineBreak;
								say "     Your own urges satisfied for now, you look back to the front of the lecture hall where the professor is by now looking through some notes of his and several of the Spartans are having sex with the Helots, often taking them from the front and back at the same time. Seeing the spontaneous little orgy almost gets you ready to go again, but you also are reminded of the nanite infection spread through the city making those affected pretty sex-crazy. Suddenly realizing that you almost spent three hours here already and really should be out and about gathering supplies and doing what you need to survive, you make your way to the exit and leave, hurrying a bit not to be entranced again when the old man starts his next lecture.";
						now Resolution of History Lecture is 1; [had sex with the servant]
					else: [no sex :/]
						say "     You just thank the young man, then look back to the front of the lecture hall where the professor is still getting his blowjob and several of the Spartans are now having sex with the Helots, often taking them from the front and back at the same time. Seeing the spontaneous little orgy pushes your arousal up quite a bit, but you also are reminded of the nanite infection spread through the city making those affected pretty sex-crazy. Suddenly realizing that you almost spent three hours here already and really should be out and about gathering supplies and doing what you need to survive, you make your way to the exit and leave.";
						now Resolution of History Lecture is 2; [no sex with the servant]
				else: [neuters get no sex :/]
					say "     You just thank the young man, then look back to the front of the lecture hall where the professor is still getting his blowjob and several of the Spartans are now having sex with the Helots, often taking them from the front and back at the same time. Seeing the spontaneous little orgy pushes your arousal up quite a bit, but you also are reminded of the nanite infection spread through the city making those affected pretty sex-crazy. Suddenly realizing that you almost spent three hours here already and really should be out and about gathering supplies and doing what you need to survive, you make your way to the exit and leave.";
					now Resolution of History Lecture is 2; [no sex with the servant]
				decrease humanity of Player by a random number between 10 and 20;
			else:[treated as a slave]
				say "     'Err, no - I'm not one of your students. I was just-' you start out saying, only to be interrupted by the old man. 'So you're a Helot then. Why are you disturbing your betters, slave? Well, no matter - if you're so eager to serve that you interrupt my lecture, you shall have your wish.' He opens up his white tunic at the front, pulling out his cock. 'Get to work, Helot.'";
				LineBreak;
				say "     He clearly wants you to give him a blowjob - do you?";
				if Player consents:
					if Player is submissive:[happy to blow him]
						say "     Eager to follow the man's orders, you walk to the front of the lecture hall and kneel down in front of the professor and take his shaft in your mouth. Starting out slow, you run your tongue over his cockhead and tracing the veins on his manhood with its tip for a moment, then get into really sucking on his erection. It's interesting how hard he gets for a man of his age, and when you reach up to fondle his balls, you find them full and heavy with cum. The old man's virility seems to be another effect of the nanite infection - he certainly doesn't need any help to fuck your face and push his cock down your throat.";
						LineBreak;
						say "     Doing your best to please your current master, your oral attention soon drives his lust to the inevitable conclusion, with spurts of his cum blasting into your mouth. When he finally pulls out, you proudly stick out your tongue to show him his load, then demonstratively swallow it.";
						say "     'There, that's that,' the professor says, then continues, 'Now leave us, these young men have a lot to learn about strategy and tactics.' He turns back to the group of Spartans sitting in the first rows of the lecture hall, leaving you to walk to the exit and quietly slip out of the room.";
						infect "Helot Manservant";
						now Resolution of History Lecture is 3; [subby BJ with a spartan]
					else:[grudging blowjob]
						say "     Not having much other choice, with all those Spartans in here, you walk to the front of the lecture hall and kneel down in front of the professor and take his shaft in your mouth. Starting out hesitantly, you earn a cuff on the head from him and only then put your mind to really sucking him off. It's interesting how hard he gets for a man of his age, and when you reach up to fondle his balls, you find them full and heavy with cum. The old man's virility seems to be another effect of the nanite infection - he certainly doesn't need any help to fuck your face and push his cock down your throat.";
						LineBreak;
						say "     Trying to get the professor off quickly to get this over with, your oral attention soon drives his lust to the inevitable conclusion, with spurts of his cum blasting into your mouth. Putting his hands on your head and holding you tightly, he looks down at you and says 'Stick your tongue out and show it to me. And don't you dare spit out my cum.' Grudgingly, when he lets go of your head, you show him your tongue, covered in his creamy load. He nods, then continues with 'Now swallow it.' and watches as you do so, demanding to see you open your mouth to prove it.";
						say "     Finally satisfied, he says 'There, that's that', then continues 'Now leave us, these young men have a lot to learn about strategy and tactics. He turns back to the group of Spartans sitting in the first rows of the lecture hall, leaving you to walk to the exit and quietly slip out of the room.";
						infect "Helot Manservant";
						now Resolution of History Lecture is 4; [gruding BJ with a spartan]
				else:[forced blowjob]
					say "     Shaking your head, you turn to get out of there, only to be brought down by several of the young Spartans sprinting after you. Your struggling against their grip is quickly brought to an end by a blow to the chest that drives the air out of your lungs and you're dragged to the front of the lecture theater. With a Spartan at your left and right holding your arms bent backwards, you find yourself on your knees in front of the professor. 'Open up, or I'll have you beaten,' he says and roughly shoves his manhood into your mouth. Fucking your face in a harsh and fast pace, he sometimes pushes his cock into your throat and keeps it there until you start seeing stars from lack of air and have to gasp for breath.";
					say "     After far too long of this ordeal, the old man finally moans and blasts his cum directly down your throat. The two younger Spartans let you go as he pulls out, and you collapse on the floor, rubbing your hurting joints. 'I'm in half a mind to let all of my pupils have a go at your sorry ass, but we've wasted enough time on the likes of you. Leave, now!' As fast as you can, you limp up to the exit and slip out through the door.";
					infect "Helot Manservant";
					infect "Helot Manservant";
					now Resolution of History Lecture is 5; [forced BJ with a spartan]
		else:[leave]
			say " Who knows where joining them would have led... better safe than sorry, you murmur an apology for the interruption and leave.";
			now Resolution of History Lecture is 6; [didn't go in (yet?)]

Section 4 - Endings

when play ends:
	if BodyName of Player is "Spartan Warrior":
		if humanity of Player < 10: [succumbed]
			if Player is female:[female + herm]
				if Player is submissive:
					say "No matter about the rest of you, having female genitals makes the other Spartans belittle you, leading to quite a few engaging you in battle to 'show you your place'. At first the strong urge of competitiveness your form brings with it drives you to fight and often win, but each time you lose and are fucked, the feeling that they're right becomes stronger. Finally accepting that it's your role to please the real Spartans around you and bear the next generation of warriors, you start serving the men as sexual relief between training sessions.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves', they change tactics and send out a grizzled older soldier in hoplite armor appropriated somewhere. He manages to talk the Spartans into believing the test is over and declares the leading warrior the victor. Soon afterwards, the two of them lead a long line of Spartans out of the city, with yourself far back. After a stop at a medical center to make everyone non-infectious, the procession continues right on to an army training camp.";
					if "sterile" is not listed in feats of Player: [fertile]
						say "Even though you aren't a real soldier and your belly is soon swelling with the product of all these young men fucking you, the Spartans protest as the army wants to remove you from training. Strong boys need strong mothers, they say, leading to you keeping up regular workouts like the rest of them. When your son Lysander is born several weeks later, healthy and strong, the young warriors compete with each other in wrestling matches to determine who gets to be the next one to knock you up...";
					else:[sterile]
						say "Even though you got female genitals, you end up being housed in the normal barracks like everyone else, leading to a pretty good morale of your fellow Spartans. Two or three of them stop by your bunk every night, unloading their pent-up cum into your vagina...";
				else:
					say "No matter about the rest of you, having female genitals makes the other Spartans belittle you, leading to quite a few engaging you in battle to 'show you your place'. It takes quite a bit of work handing out black eyes and sprained wrists until you've shown them that just because you have a pussy, you aren't weak. After gaining grudging acceptance, you keep yourself busy with training sessions with other promising Spartans, usually winning and making them eat you out.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves' by you and the others, they change tactics and send out a grizzled older soldier in hoplite armor appropriated somewhere. He manages to talk you into believing the test is over and declares you the victor. Soon afterwards, the two of you lead a long line of Spartans out of the city, and after a stop at a medical center to make everyone non-infectious, right on to an army training camp.";
					say "Being used to discipline and training, you and your compatriots fit right in... though many in the military are a bit shocked when squads and teams crystallize around intimate relations between the Spartans. With you as the leader of the first squad, the elite, many young men compete with each other for the honor to join you as compatriots - and in bed.";
					if "sterile" is not listed in feats of Player: [fertile]
						say "Gathering virile young men in your squad and testing their prowess not only on the field, but also in more intimate matters, it's only a question of time until someone's seed takes root deep inside you. Though even as your belly swells up with the new life growing inside, you still keep your position, leading and training each day with the others. Several weeks later, your son Lysander is born, healthy and strong - becomes the first pure Spartan to be born to two warrior parents...";
					else:[sterile]
						say "The deep-seated urges to breed more Spartans and the belief that any female should spread her legs and allow you to do so make some problems, with orgy- and gangbang-like incidents with female base personnel. With the tenacity of all the young men and the potency of their seed, within a month every woman on base is pregnant and the Spartans start asking for leave to visit surrounding towns. Being an exceptionally good unit otherwise, the military decides to makes special arrangements, and soon several dozen female huskies from the city are added to your roster to 'help with morale' and keep the men busy.";
			else: [male + neuter]
				if Player is submissive:
					say "Battling anyone you come across to get ahead in the 'trial' you think you're in, you establish a respectable position for yourself among the other Spartans in the area. Even though you might have risen all the way eventually to become their leader, something just clicks inside your head as you're wrestling naked with Nicander, one of the top contestants. Feeling a need inside you that demands to be filled, you grope his cock and allow yourself to be rolled over, then grind your ass back against his crotch. Sharing your attraction for him, the young man thrusts deep into your ass and fucks you, arms wrapped around your body and kissing your back and neck.";
					say "After that you're inseparable, with you attached to Nicander as his lover and right hand. In between the fighting, you get fucked a lot by your man, and both of you get busy fathering the next generation of Spartan warriors in all the 'slaves' (anyone not a Spartan) out there for your enjoyment.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves' by you and the others, they change tactics and send out a grizzled older soldier in hoplite armor appropriated somewhere. He manages to talk you into believing the test is over and declares Nicander the victor. Very proud of your male lover, you pull him into a kiss, which escalates into him fucking you right then and there, in front of a cheering crowd of Spartans and a wide eyed army lieutenant. Soon afterwards, the old soldier and Nicander - your Nicander - lead a long line of Spartans out of the city, and after a stop at a medical center to make everyone non-infectious, right on to an army training camp.";
					say "Being used to discipline and training, you and your compatriots fit right in... though many in the military are a bit shocked when squads and teams crystallize around intimate relations between the Spartans. With Nicander as the leader and you his right hand and lover, you form the first squad, the elite, and many young men compete with each other for the honor to join you two as compatriots - and in bed.";
					if Player is mpreg_ok and "Sterile" is not listed in feats of Player: [mpreg-able, not sterile]
						say "Given your changed physiology, it's only a question of time until the seed your lover shoots into your ass daily takes root. The army doctors are surprised when they realize you're pregnant, carrying Nicander's child, and more thorough checkups with the new Spartan unit brings several more expecting fathers to light. Several weeks later, your son Lysander becomes the first pure Spartan to be born to two warrior fathers. With this new method of reproduction likely being hereditary, this is likely the start of a new subspecies of humanity...";
				else: [non-sub player]
					say "Battling anyone you come across to get ahead in the 'trial' you think you're in, you establish a respectable position for yourself among the other Spartans in the area. In between fights, you keep yourself busy with training (and fucking) sessions with other promising Spartans, and also with fathering the next generation of Spartan warriors in all the 'slaves' (anyone not a Spartan) out there for your enjoyment.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves' by you and the others, they change tactics and send out a grizzled older soldier in hoplite armor appropriated somewhere. He manages to talk you into believing the test is over and declares you the victor. Soon afterwards, the two of you lead a long line of Spartans out of the city, and after a stop at a medical center to make everyone non-infectious, right on to an army training camp.";
					say "Being used to discipline and training, you and your compatriots fit right in... though many in the military are a bit shocked when squads and teams crystallize around intimate relations between the Spartans. With you as the leader of the first squad, the elite, many young men compete with each other for the honor to join you as compatriots - and in bed.";
					say "The deep-seated urges to breed more Spartans and the belief that any female should spread her legs and allow you to do so make some problems, with orgy- and gangbang-like incidents with female base personnel. With the tenacity of all the young men and the potency of their seed, within a month every woman on base is pregnant and the Spartans start asking for leave to visit surrounding towns. Being an exceptionally good unit otherwise, the military decides to makes special arrangements, and soon several dozen female huskies from the city are added to your roster to 'help with morale' and keep the men busy.";
		else:[sane]
			say "When the military finally moves in, you're brought into a medical holding facility. There a doctor checks you out, then gives you a shot to neutralize the remaining nanites in your system before you're released. Since you were only changed into a fit male human form by the nanites, you have a lot fewer problems rejoining society than other, more bestial, infectees.";
			say "Even though you managed to fight off the delusion that you're an actual Spartan warrior, your experience left you with an inner need to compete and excel in what you're doing. Joining a sports team seems the right choice to you, especially after your innate skill at discus and spear throwing becomes obvious during a tryout. Thus you rapidly rise in the world of professional athletics and soon there's even some talk about sending you to the next interregional Multispecies Olympics...";

Section 5 - Drop Item

Table of Game Objects (continued)
name	desc	weight	object
"pita bread"	"A round pocked of bread, filled with salad leaves, meat and spicy sauce."	1	pita bread

instead of sniffing pita bread:
say "Mmmh! Fresh bread, tasty meat and garlic.";

pita bread is a grab object.
the usedesc of pita bread is "[pita bread use]";

to say pita bread use:
	say "Taking the bread into your hands, you bite into it and... it's really good. Bread, salad, sauce - and the meat is even still warm. Something tells you that it has to be packed with nanites through and through to keep it in this state, but you don't really care at the moment as you devour the tasty treat...";
	PlayerEat 15;

pita bread is infectious. The strain of pita bread is "Spartan Warrior".

Spartan ends here.
