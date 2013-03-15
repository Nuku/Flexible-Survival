Version 2 of Spartan by Wahn begins here.
[Version 2 - Further detailed endings]

"Adds a Male Spartan to Flexible Survivals Wandering Monsters table, with impreg chance"

Section 1 - Monster Responses

to say Spartan wins:
	say "     With a shove, he pushes you to lie on the ground before him. 'Do you admit defeat before me and swear you'll submit to my commands?' the young spartan asks you. Not ready to face another pounding like that, lower your head in submission and nod. 'Good - this workout has made me horny. Present yourself. I want to see what I have won.'";
	if bodyname of player is "Spartan" and facename of player is "Spartan" and cunts of player is 0:			[spartans, but not herms and females]
		say "     Stripping off your clothes, you stand in front of the young man, displaying your naked body. Eyes wandering over you, he gestures for you to stretch and spin, jerking himself to full hardness over your little show. 'Not bad - but you clearly need to train more if you ever hope to finish first in this test. For now. I'm clearly superior... and want to make use of my winning privileges. On your knees.'";
	otherwise if (bodyname of player is "Amazon" and facename of player is "Amazon") or (bodyname of player is "Spartan" and facename of player is "Spartan" and cunts of player > 0):		[amazons, and herm/female spartans]
		say "     Stripping off your clothes, you stand in front of the young man, displaying your naked body. Eyes wandering over you, he gestures for you to stretch and spin, jerking himself to full hardness over your little show. 'A woman as a soldier? Pah. Silly girl. On your knees - I'll show you your proper place.'";
	otherwise:  [every other shape]
		say "     Stripping off your clothes, you stand in front of the young man, displaying your naked body. Eyes wandering over you, he gestures for you to stretch and spin, jerking himself to full hardness over your little show. 'Not bad - on your knees, slave. I want to make use of you.'";
	if cunts of player > 0:						[female + herm]
		say "     [line break]";
		say "     Kneeling down, you get into position for the young man. You feel him moving into position behind you and reach down between your legs to spread your pussy lips. Then the tip of his cock touches your opening, followed by a deep thrust into your vagina. He fucks you vigorously, pistoning in and out with fluid movements and makes you gasp and moan in pleasure at his invasion of your body. Slamming forward with powerful thrusts, his hips hitting your ass with slapping noises, your spartan master speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoot into you. You can feel his hard shaft pulse against your inner walls with each shot. [fimpregchance]";
		say "     [line break]";
		say "     The spartan rests his hard cock inside you for a moment after he stops cumming, then pulls out and gets ready to leave. Looking down on you, down on the ground with his cum dripping from your pussy, he remarks 'If my seed takes and you get with a male child, find the local paidonomos and present the boy. He's not yours, but belongs to Sparta.' Then he walks away.";
	otherwise:												[male + neuter]
		say "     [line break]";
		say "     Kneeling down, you get into position for the young man. You feel him moving into position behind you and spread your cheeks. Then he gets a finger wet in his mouth before pressing it against your hole. After some quick finger-fucking with first one, then two fingers, the probing digits are replaced by the tip of his cock. With the young man's precum providing a bit more lubrication, he slowly presses forward until your pucker yields and allows him to slide into your body. After giving you a moment to get used to his shaft, he pulls out almost all the way, then thrusts back in deep. He fucks you vigorously, pistoning in and out with fluid movements and makes you gasp and moan in pleasure at his invasion of your body. Slamming forward with powerful thrusts, his hips hitting your ass with slapping noises, the spartan speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoot into you. You can feel his hard shaft pulse against your inner walls with each shot. [mimpregchance]";
		say "     [line break]";
		if bodyname of player is "Spartan" and facename of player is "Spartan" and cunts of player is 0:			[male + neuter spartans]
			say "     The spartan rests his hard cock inside you for a moment after he stops cumming, then pulls out and gets ready to leave. Looking down on you, down on the ground with his cum dripping from your asshole, he remarks 'Nice ass. I could get used to fucking you. If you get through the trials, seek me out. I'll take you under my wing and into my bed.' Then he walks away.";
		otherwise:
			say "     The spartan rests his hard cock inside you for a moment after he stops cumming, then pulls out and gets ready to leave. Looking down on you, down on the ground with his cum dripping from your asshole, he remarks 'Nice ass. I could get used to fucking you. Maybe I'll take you with me as a personal slave when I get initiated as a full soldier.' Then he walks away.";
		
to say Spartan loses:
	say "     Breathing hard, the young spartan takes his helmet off and lays it on the ground in front of you. 'I am defeated. Clearly I need to train more to beat this trial.' He sighs, then lets his cloak fall to the floor too. 'Do with me what you will, it is fitting punishment for my weakness to be dominated by another.'";
	if cocks of player > 0:						[male+herm]
		say " 		[line break]";
		say "     Looking over the handsome Spartan, you could either mount his cock with you on top [link](1)[as]1[end link], turn the tables and fuck him [link](2)[as]2[end link], have him blow your cock [link](3)[as]3[end link], suck him off [link](4)[as]4[end link] or just leave[link](5)[as]5[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 5:
			say "Choice? (1-5)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to ride his cock, [link]2[end link] to fuck him, [link]3[end link] to get sucked, [link]4[end link] to blow him or [link]5[end link] to leave.";
		if calcnumber is 1:								[mount his cock]
			say "[Spartan ride]";
		otherwise if calcnumber is 2:			[fuck him in the ass]
			say "[Spartan fucked]";
		otherwise if calcnumber is 3:			[get sucked off]
			say "[Spartan oral]";
		otherwise if calcnumber is 4:			[give him a blowjob]
			say "[Spartan blown]";
		otherwise:												[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised spartan behind.";
	otherwise if cunts of player > 0:	[female]
		say " 		[line break]";
		say "     Looking over the handsome Spartan, you could either mount his cock with you on top [link](1)[as]1[end link], let him lick your pussy [link](2)[as]2[end link], suck him off [link](3)[as]3[end link] or just leave[link](4)[as]4[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 4:
			say "Choice? (1-4)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to ride his cock, [link]2[end link] get licked, [link]3[end link] to blow him or [link]4[end link] to leave.";
		if calcnumber is 1:								[mount his cock]
			say "[Spartan ride]";
		otherwise if calcnumber is 2:			[get licked]
			say "[Spartan oral]";
		otherwise if calcnumber is 3:			[give him a blowjob]
			say "[Spartan blown]";
		otherwise:												[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised spartan behind.";
	otherwise:												[neuter]
		say " 		[line break]";
		say "     Looking over the handsome Spartan, you could either mount his cock with you on top [link](1)[as]1[end link], suck him off [link](2)[as]2[end link] or just leave[link](4)[as]4[end link].";
		now calcnumber is 0;
		while calcnumber < 1 or calcnumber > 3:
			say "Choice? (1-3)>[run paragraph on]";
			get a number;
			if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
				break;
			otherwise:
				say "Invalid choice.  Type [link]1[end link] to ride his cock, [link]2[end link] to blow him or [link]3[end link] to leave.";
		if calcnumber is 1:								[mount his cock]
			say "[Spartan ride]";
		otherwise if calcnumber is 2:			[give him a blowjob]
			say "[Spartan blown]";
		otherwise:												[leave]
			say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised spartan behind.";
	
		
to say Spartan ride:
	say "     Spreading his long red cloak on the ground, you motion the young man to lie down on it. He looks pretty good, his toned body stretched out and long hard cock standing erect, waiting for your pleasure.";
	if (cocks of player > 0) or (cocks of player > 0 and cunts of player > 0 and anallevel > 1):						[male + herm (except those with less anal)]
		say "     Kneeling down next to him, you bend over and take the spartan's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock penetrates your hole, spreading it around his hard shaft. You go deeper, slowly sinking him further into you until finally your buns touch his hips and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The spartan's shaft feels great rubbing your inner walls and you gasp as it hits your prostate. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the spartan's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and your anal muscles grip your partner's cock tightly as you cum, long strings of your seed arching out of your cock to splat all over the spartan's chest. And he's not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum. [mimpregchance]";
		say "     [line break]";
		say "     Resting on top of your handsome spartan for a moment, you look down to watch your cum pool between the ridges of his muscles. Giving a satisfied sigh as you feel his cock going soft and then plop out of your ass, you stand up and gather your clothes and stuff. After a last look at the spartan, still lying on his red cloak with your cum all over him, you turn your thoughts back to survival and leave.";
	otherwise if cunts of player > 0:	[female]
		say "     Kneeling down next to him, you bend over and take the spartan's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock touches your moist pussy lips, then spreads them around his hard shaft. You go deeper, slowly sinking him further into you until finally your hips meet and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The spartan's shaft feels great rubbing your inner walls and you gasp as it brushes over your g-spot. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the spartan's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and copious amounts of femcum start to run down the spartan's cock as you orgasm, a tingly feeling of satisfaction spreading through your whole body. Your spartan is not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum. [fimpregchance]";
		say "     [line break]";
		say "     Resting on top of your handsome spartan for a moment, you look down to watch his muscled chest move as he breathes deeply while coming down from his high. Giving a satisfied sigh as you feel his cock going soft and then plop out of your vagina, you stand up and gather your clothes and stuff. After a last look at the spartan, still lying on his red cloak in all his naked glory, you turn your thoughts back to survival and leave.";
	otherwise:												[neuter]
		say "     Kneeling down next to him, you bend over and take the spartan's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock penetrates your hole, spreading it around his hard shaft. You go deeper, slowly sinking him further into you until finally your buns touch his hips and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The spartan's shaft feels great rubbing your inner walls and you gasp as it hits your prostate. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the spartan's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and your anal muscles grip your partner's cock tightly as you orgasm, a tingly feeling of satisfaction spreading through your whole body. Your spartan is not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum. [mimpregchance]";
		say "     [line break]";
		say "     Resting on top of your handsome spartan for a moment, you look down to watch his muscled chest move as he breathes deeply while coming down from his high. Giving a satisfied sigh as you feel his cock going soft and then plop out of your ass, you stand up and gather your clothes and stuff. Giving the spartan a last look, still lying on his red cloak in all his naked glory, you turn your thoughts back to survival and leave.";
				
to say Spartan fucked:
	say "     Spreading his long red cloak on the ground, you motion the young man to get on it. He looks pretty good, his toned body on all fours, long hard cock dangling below and tight butt ready to take you.";
	say "     Who could resist such an enticing display? You don't even try, instead following the urges of your own rapidly hardening cock. Moving into position, you rub it up and down the submissive spartan's crack and do your best to lube him with your precum. Soon you can't hold back any more and press against into opening, spreading it around your hard shaft as you sink inside. The young man moans as you slide deeper and deeper into his body, rubbing very sensitive spots. 'Ah, fuck me. Harder!' he begs, and you eagerly comply, intensifying your thrusts.";
	say "     As you fuck the athletic young man, you let your hands wander all over his human body, stroking his hairless skin and defined muscles. One of your hands brushes his cock, rock hard at getting fucked, and you take hold of it to stroke your handsome bottom boy. Pounding his ass hard and giving him a reacharound, it's no big wonder that the spartan's moans soon come faster and faster and are quickly followed by lust-filled shouts as he orgasms. Long strings of white cum blast from his cock, painting the red cloak under him in an interesting pattern.";
	say "     The young soldier's hole twitches around your shaft as he comes, giving you the final push for your own orgasm. As the pleasant tingle rises in your balls, you thrust in deep one last time, grinding your hips against his ass. Then the floodgates open and blast after spurt after spurt of your seed blast into the spartan's ass. Giving a satisfied sigh as you finish coming, you pull out of the young hunk and stand up. Giving him a last look, cum dripping out of his ass and kneeling on a white-streaked red cloak, you leave.";
	
to say Spartan oral:
	say "     Folding his long red cloak twice you put it on the ground and motion the young man to kneel on it. He looks pretty good, his toned body erect and ready to for your commands.";
	if cocks of player > 0:						[male + herm]
		say "     Stepping up in front of him, you hold out your erect cock for your submissive spartan and say 'Get to work, boy.' An oh does he do it... you're treated with his delightful tongue licking your balls and teasing your member, which has you dripping pre-cum before he even takes you into his mouth. And when he finally does - you learn how good at sucking someone gets after spending his whole life since puberty in a spartan 'boy-herd' (or at least thinking he did), training naked and encouraged to build bonds between each other.";
		say "     His talented mouth brings you to the edge of orgasm several times, always slowing down when you get too close and allowing you to cool down before he goes on. Then finally, he goes all out bobbing up and down on your shaft and even taking you all the way, deep-throating you. As you moan and gasp 'I'm coming!', he pulls back a bit to take your load on his tongue, tasting it before swallowing it all down. Giving a satisfied sigh as you finish coming, you pull out of the young hunk's mouth and step back. Looks like your spartan boy is quite into oral sex, as he's stroking his own hard cock now. It doesn't take too much longer until he comes, shooting his load into the palm of his hand before bringing it to his mouth. Giving the hot young spartan licking up his own cum one last look, you leave.";
	otherwise:												[female]
		say "     Stepping up in front of him, you brush your fingers over your moist pussy lips and say 'Get to work, boy.' An oh does he do it... you're treated with his delightful tongue licking over your sensitive pussy lips, gently teasing here and there before being pushed inside your vagina. Spending his whole life since puberty in a spartan 'boy-herd' (or at least thinking he did), training naked and encouraged to build bonds between each other, has left your submissive spartan with quite a bit of experience at oral sex - even though he has to improvise a bit since you don't have a cock.";
		say "     His talented mouth brings you to the edge of orgasm several times, always slowing down when you get too close and allowing you to cool down before he goes on. Then finally, he goes all out, suckling on your clit and stroking you till you can't hold it anymore. As you moan and gasp 'I'm coming!', he pulls back a bit to look up into your face, looking pleased with himself at making you orgasm. Giving a satisfied sigh as you come down from your high, you run a hand through the spartan's hair and step back. Looks like your young captive is quite into oral sex, as he's furiously stroking his hard cock. It doesn't take too much longer until he comes, shooting his load into the palm of his hand before bringing it to his mouth. Giving the hot young spartan licking up his own cum one last look, you leave.";
		
to say Spartan blown:
	say "     Folding his long red cloak twice you put it on the ground and kneel down on it, then motion motion the young man to come closer. He gets a hopeful look on his face, which leads over to a smile and satisfied moan as you grasp his cock and lick over its underside. The young man lets you suck him off for a while before bringing his hands to your head and taking over, pulling you against his crotch in a change of pace. Before long, he's face-fucking you pretty quickly and often pushes into your mouth and down your throat all the way. Soon, the spartan's moans get louder and louder and then he cums, shooting spurt after spurt of his load into your mouth.";
	
to say SpartanDesc:
	say "     You cross paths with a young man clothed in nothing but sandals, a long red cloak and a plumed greek helmet. He holds a pretty self-confident expression as he walks up to you.";
	if bodyname of player is "Spartan" and facename of player is "Spartan":
		say "		  'Welcome, brother - I see I'm not the only one selected for this test. Let us measure our strength against each other and see who is superior.'";		
	otherwise:
		say "		  'Ah, a helot. Some welcome relief for my aching balls.' he says to himself, lowering a hand to fondle them and stroke his long cock. 'Get over here, slave - I have need of you.'";		
	
Section 2 - Monster Insertion

Table of random critters (continued)
name	attack	defeated	victory	desc	face	body	skin	tail	cock	face change	body change	skin change	ass change	cock change	str	dex	sta	per	int	cha	sex	hp	lev	wdam	area	cocks	cock length	cock width	breasts	breast size	male breast size	cunts	cunt length	cunt width	libido	loot	lootchance	scale (number)	body descriptor (text)	type (text)	magic (truth state)	resbypass (truth state)	non-infectious (truth state)	nocturnal (truth state)	altcombat (text)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	-- 	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

[ Adds a blank row to the table, this is immediately filled ;) ]
When Play begins:
	Choose a blank row from Table of random critters;
	now name entry is "Spartan"; [Name of your new Monster]
	now attack entry is "[one of]With a quick sweep of his leg, he brings you crashing to the floor.[or]He grabs hold of you, taking you into a choke-hold that you only just manage to wind your way out of.[or]First throwing a handful of dirt into your face, the young spartan manages a painful bow to your side while you're off guard.[at random]";
	now defeated entry is "[Spartan loses]";				[ Text or say command used when Monster is defeated.]
	now victory entry is  "[Spartan wins]";					[ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block as the demonstration text shows.]
	now desc entry is "[SpartanDesc]";							[ Description of the creature when you encounter it.]
	now face entry is "a handsome young man's, still smooth and beardless. A greek helmet large horse-hair plume in red covers your short black hair";
	now body entry is "that of a young man, quite fit and healthy. It is garbed in nothing but a pair of sandals and a long red cloak, held around your shoulders by a brooch";
	now skin entry is "smooth, sun-bronzed";[ skin Description, format as the text "You have (your text) skin"] 
	now tail entry is "You have a tight, firmly muscled butt.";[ Tail description, write a whole Sentence or leave blank. ] 
	now cock entry is "human";[ Cock Description, format as you have a 'size' (your text) cock] 
	now face change entry is "it shapes itself into a handsome male visage, smooth-faced and beardless. A greek helmet materializes out of a swirl of silvery dust to cover your head and short-cut black hair"; [ face change text. format as "Your face feels funny as (your text)" ]
	now body change entry is "it is reshaped into a that of a young man, and a fit and healthy one at that"; [ body change text. format as "Your body feels funny as (your text)" ]
	now skin change entry is "it smoothes out, becoming almost hairless and sun-bronzed"; [ skin change text. format as "Your skin feels funny as (your text)" ]
	now ass change entry is "it gets tight and firmly muscled"; [ ass/tail change text. format as "Your ass feels funny as (your text)" ]
	now cock change entry is "it becomes human-shaped"; [ cock change text. format as "Your cock feels funny as (your text)" ]
	now str entry is 24;
	now dex entry is 18;
	now sta entry is 18;
	now per entry is 16;
	now int entry is 12;
	now cha entry is 12;
	now sex entry is "Male";
	now hp entry is 95;
	now lev entry is 10;
	now wdam entry is 15;
	now area entry is "Campus";								[ Current options are 'Outside' and 'Mall'  Case sensitive]
	now cocks entry is 1;											[ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now cock length entry is 12;							[ Length infection will make cock grow to if cocks]
	now cock width entry is 5;								[ Size of balls apparently ;) sneaky Nuku]
	now breasts entry is 0;										[ Number of Breasts infection will give you. ]
	now breast size entry is 0;								[ Size of breasts infection will try to attain ]
	now male breast size entry is 0;					[ Breast size for if Sex="Male", usually zero. ]
	now cunts entry is 0;											[ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now cunt length entry is 0;								[ Length of female sex  infection will attempt to give you. ]
	now cunt width entry is 0;								[ Width of female sex  infection will try and give you ] 
	now libido entry is 10;										[ Amount player Libido will go up if defeated ]
	now loot entry is "pita bread";						[ Dropped item, blank for none.  Case sensitive. ]
	now lootchance entry is 40;								[ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;											[ Number 1-5, approx size/height of infected PC body:  1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "fit";				[ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender"   Use [one of] to vary ]
	now type entry is "human";								[ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;									[ Is this a magic creature? true/false (normally false) ]
	now resbypass entry is false;							[ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;				[ Is this a non-infectious, non-shiftable creature? True/False (usually false) ]
	blank out the nocturnal entry;						[ True=Nocturnal (night encounters only), False=Diurnal (day encounters only), blank for both. ]
	now altcombat entry is "default";					[ Row used to designate any special combat features, "default" for standard combat. ]
		
Section 3 - Endings

when play ends:
	if bodyname of player is "Spartan":
		if humanity of player is less than 10:   [succumbed]
			if cunts of player > 0:			[female + herm]
				if "Submissive" is not listed in feats of player:
					say "No matter about the rest of you, having female genitals makes the other spartans belittle you, leading to quite a few engaging you in battle to 'show you your place'. It takes quite a bit of work handing out black eyes and sprained bones until you've shown them that just because you have a pussy, you aren't weak. After gaining grudging acceptance, you keep yourself busy with training sessions with promising other spartans, usually winning and making them eat you out.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves' by you and the others, they change tactics and send out a grizzled older soldier in a hoplite armor appropriated somewhere. He manages to talk you into believing the test is over and declares you the victor. Soon afterwards, the two of you lead a long line of spartans out of the city, and after a stop at a medical center to make everyone non-infectious, right on to an army training camp.";
					say "Being used to discipline and training, you and your compatriots fit right in... though many in the military are a bit shocked when squads and teams crystallize around intimate relations between the spartans. With you as the leader of the first squad, the elite, many young men compete with each other for the honor to join you as compatriots - and in bed.";
					if "sterile" is not listed in feats of player:  [fertile]
						say "Gathering virile young men in your squad and testing their powress not only on the field, but also in more intimate matters, it's only a question of time until someone's seed takes root deep inside you. Though even as your belly swells up with the new life growing inside, you still keep your position, leading and training each day with the others. Several weeks later, your son Lysander is born, healthy and strong - becomes the first pure spartan to be born to two warrior partens...";
					otherwise:			[sterile]
						say "The deep-seated urges to breed more spartans and the belief that any female should spread her legs and allow you to do so make some problems, with orgy- and gangbang-like incidents with female base personnel. With the tenacity of all the young men and the potency of their seed, within a month every woman on base is pregnant and the spartans start asking for leave to visit surrounding towns. Being an exceptionally good unit otherwise, the military decides to makes special arrangement, and soon several dozen female huskies from the city are added to your roster to 'help with morale' and keep the men busy.";
				otherwise:  [sub player]
					say "No matter about the rest of you, having female genitals makes the other spartans belittle you, leading to quite a few engaging you in battle to 'show you your place'. At first the strong urge of competitiveness your form brings with it drives you to fight and often win, but each time you lose and are fucked, the feeling that they're right becomes stronger. Finally accepting that it's your role to please the real spartans around you and bear the next generation of warriors, you start serving the men as sexual relief between training sessions.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves', they change tactics and send out a grizzled older soldier in a hoplite armor appropriated somewhere. He manages to talk the spartans into believing the test is over and declares the leading warrior the victor. Soon afterwards, the two of them lead a long line of spartans out of the city, with yourself far back. After a stop at a medical center to make everyone non-infectious, the procession continues right on to an army training camp.";
					if "sterile" is not listed in feats of player: [fertile]
						say "Even though you aren't a real soldier and your belly is soon swelling with the product of all these young men fucking you, the spartans protest as the army wants to remove you from training. Strong boys need stong mothers, they say, leading to you keeping up regular workouts like the rest of them. When your son Lysander is born several weeks later, healthy and strong, the young warriors compete with each other in wrestling matches to determine who gets to be the next one to knock you up...";
					otherwise:			[sterile]
						say "Even though you got female genitals, you end up being housed in the normal barracks like everyone else, leading to a pretty good morale of your fellow spartans. Two or three of them stop by your bunk every night, unloading their pent-up cum into your vagina...";
			otherwise:    [male + neuter]
				if "Submissive" is listed in feats of player:
					say "Battling anyone you come across to get ahead in the 'trial' you think you're in, you establish a respectable position for yourself among the other spartans in the area. Even though you might have risen all the way eventually to become their leader, something just clicks inside your head as you're wrestling naked with Nicander, one of the top contestants. Feeling a need inside you that demands to be filled, you grope his cock and allow yourself to be rolled over, then grind your ass back against his crotch. Sharing your attraction for him, the young man thrusts deep into your ass and fucks you, arms wrapped around your body and kissing your back and neck.";
					say "After that you're inseperable, with you attached to Nicander as his lover and right hand. In between the fighting, you get fucked a lot by your man, and both of you get busy fathering the next generation of spartan warriors in all the 'slaves' (anyone not a spartan) out there for your enjoyment.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves' by you and the others, they change tactics and send out a grizzled older soldier in a hoplite armor appropriated somewhere. He manages to talk you into believing the test is over and declares Nicander the victor. Very proud of your male lover, you pull him into a kiss, which escalates into him fucking you right then and there, in front of a cheering crowd of spartans and a wide eyed army lieutenant. Soon afterwards, the old soldier and Nicander - your Nicander - lead a long line of spartans out of the city, and after a stop at a medical center to make everyone non-infectious, right on to an army training camp.";
					say "Being used to discipline and training, you and your compatriots fit right in... though many in the military are a bit shocked when squads and teams crystallize around intimate relations between the spartans. With Nicander as the leader and you his right hand and lover, you form the first squad, the elite, and many young men compete with each other for the honor to join you two as compatriots - and in bed.";
					if "Mpreg" is listed in feats of player and "Sterile" is not listed in feats of player:  [mpreg-able, not sterile]
						say "Given your changed physiology, it's only a question of time until the seed your lover shoots into your ass daily takes root. The army doctors are surprised when they realize you're pregnant, carrying Nicander's child, and more thorough checkups with the new spartan unit brings several more expecting fathers to light. Several weeks later, your son Lysander becomes the first pure spartan to be born to two warrior fathers. With this new method of reproduction likely being heredetary, this is likely the start of a new subspecies of humanity...";
				otherwise: [non-sub player]
					say "Battling anyone you come across to get ahead in the 'trial' you think you're in, you establish a respectable position for yourself among the other spartans in the area. In between fights, you keep yourself busy with training (and fucking) sessions with promising other spartans, and also with fathering the next generation of spartan warriors in all the 'slaves' (anyone not a spartan) out there for your enjoyment.";
					say "When the military finally moves in and several scouts get taken as 'pleasure slaves' by you and the others, they change tactics and send out a grizzled older soldier in a hoplite armor appropriated somewhere. He manages to talk you into believing the test is over and declares you the victor. Soon afterwards, the two of you lead a long line of spartans out of the city, and after a stop at a medical center to make everyone non-infectious, right on to an army training camp.";
					say "Being used to discipline and training, you and your compatriots fit right in... though many in the military are a bit shocked when squads and teams crystallize around intimate relations between the spartans. With you as the leader of the first squad, the elite, many young men compete with each other for the honor to join you as compatriots - and in bed.";
					say "The deep-seated urges to breed more spartans and the belief that any female should spread her legs and allow you to do so make some problems, with orgy- and gangbang-like incidents with female base personnel. With the tenacity of all the young men and the potency of their seed, within a month every woman on base is pregnant and the spartans start asking for leave to visit surrounding towns. Being an exceptionally good unit otherwise, the military decides to makes special arrangement, and soon several dozen female huskies from the city are added to your roster to 'help with morale' and keep the men busy.";
		otherwise:		[sane]
			say "When the military finally moves in, you're brought into a holding facility to be checked out. After getting a shot to neutralize the remaining nanites in your system, you're released. Only changed into a fit male human form by the nanites, you have a lot less problems rejoining society than other infectees.";
			say "Even though you managed to fight off the delusion that you're an actual spartan warrior, your experience left you with an inner need to compete and excel in what you're doing. Joining a sports team seems the right choice to you, especially after your innate skill at discus and spear throwing becomes obvious during a tryout. Thus you rapidly rise in the world of professional athletics and soon there's even some talk about sending you to the next Olympics...";
	
Table of Game Objects(continued)
name	desc	weight	object
"pita bread"	"A round pocked of bread, filled with salad leaves, meat and spicy sauce."	1	pita bread

instead of sniffing pita bread:
say "Mmmh! Fresh bread, tasty meat and garlic.";

pita bread is a grab object.
the usedesc of pita bread is "[pita bread use]";

to say pita bread use:
say "Taking the bread into your hands, you bite into it and... it's really good. Bread, salad, sauce - and the meat is even still warm. Something tells you that it has to be packed with nanites through and through to keep it in this state, but you don't really care at the moment as you devour the tasty treat...";
decrease hunger of player by 6;
if hunger of player < 0, now hunger of player is 0;

pita bread is infectious. The strain of pita bread is "Spartan".

Spartan ends here.