Version 11 of German shepherd by Stripes begins here.
[Version 10.2 - Added additional scenes for submission, furthering the playering being the pet scenario -Rikaeus]
[Version 11 - Added 2 new generic player victory sex scenes - Vinickus]
[- Partially based on the version originally authored by Telanda Softpaw -]

"Adds some roaming German shepherds as well as a unique character on to Flexible Survival's wandering monsters table."

Section 0 - Monster Variables, Flags and Markers

gsd_encounters is a number that varies.		[counts the encounters w/GSDs to rotate in the special GSD.]
gsd_encounters is usually 1.
gsd_special is a truth state that varies.	[marks if encountering the special GSD.]
gsd_special is usually false.
gsd_pet is a number that varies.			[status of relationship w/special GSD.]
gsd_slut is a truth state that varies.		[slut/sub tracker for GSD endings.]
gsd_slut is usually false.
gsd_fled is a truth state that varies.		[tracks if Player fled previous encounter w/special GSD.]
gsd_fled is usually false.
gsd_var is a number that varies.			[temporary variable for tracking between scenes.]
gsd_attack is a truth state that varies.		[registers if the player fought back or not against the special GSD.]
gsd_attack is usually false.
gsd_male is a truth state that varies.		[registers if the player is being trained to be a male packmate.]
gsd_male is usually false.
KorvinSubmitCounter is a number that varies.

[        gsd_pet        ]
[ 0 = not met           ]
[ 1 = met him           ]
[ 2 = player lost       ]
[ 3 = lost again        ]
[ 4 = player locked     ]
[ 10 = player won       ]
[ 11 = won again        ]
[ 12 = recruited        ]
[ 100 = banished        ]


Section 1 - Monster Description

to say gsd_desc:
	setmongender 3; [male]
	choose row MonsterID in Table of Random Critters;
	now gsd_attack is false;
	[
	if gsd_male is true:
		gsd_set_male;
	else:
		gsd_unset_male;
	]
	now gsd_special is false;
	if gsd_encounters > 2 and gsd_pet < 12 and inasituation is false and a random chance of gsd_encounters in 7 succeeds:
		now gsd_special is true;
		if gsd_pet is 0:
			say "     Approaching you is another of those aggressive German shepherds. This one is somewhat different from the others. Oh, he's physically similar to the others, if buffer than most of the others you've seen. He does bear a crooked [bold type]scar[roman type] across his cheek and muzzle. His coat is the typical brown and black of the breed as well. Like the rest, he's nude and half-hard as he strides towards you.";
			say "     'I was hoping to find some way to amuse myself. You smell... interesting. I think I'll enjoy breaking you in,' he says with a lustful growl.";
			say "     It is something in the look in his eyes and the set of his jaw that really distinguishes him in your eyes. While he clearly has the same crazed lust, there is more [']focus['] to him. Unfortunately, that focus is aimed squarely at you at the moment.";
			now gsd_pet is 1;
		else if gsd_pet is 4:
			if KorvinSubmitCounter > 4: [new auto submit + fight]
				let randomnumber be a random number from 1 to 3;
				if randomnumber is:
					-- 1:
						say "[KorvinOrcFight]";
					-- 2:
						say "[KorvinTenrecFight]";
					-- 3:
						say "[KorvinCentaurFight]";
				now combat abort is 1;
			else: [current auto submit]
				if a random chance of 2 in 3 succeeds:
					say "     You once again cross paths with that [bold type]scarred[roman type] German shepherd... no, your Alpha, a corner of your mind quickly corrects. Perhaps he's been looking for you? Or perhaps you've been unconsciously looking for him? Regardless, seeing you, he approaches with a confident swagger.";
					say "     The sight of the buff male coming closer makes you excited and you start moving towards him as any thoughts to resist or get away fade from your mind. When he gets near, you drop to all fours and press your head to his paw. You receive a head petting and scritch that makes you very happy. 'That's my good [if Player is female]bitch[else]pup[end if],' he says condescendingly as you submit immediately to him, though his acknowledgement of you as belonging to him pleases and excites you.";
				else:
					say "     That [bold type]scarred[roman type] German shepherd you met before is back, your paths having crossed once again. Perhaps he's been looking for you? And having found you, he approaches with a confident swagger. The buff male cracks his knuckles and gives a soft growl.";
					say "     'I thought I smelled you around, pup. How about you come over here and show your alpha what a good [if gsd_slut is true and player is female]bitch[else if gsd_slut is true]slut[else]beta[end if] you are?' Despite how you may normally feel about him and what he's done to you, being in the presence of your alpha dog triggers something inside you. The sound of his voice and his scent in your nose arouses you and makes you submit to him. He is your alpha and you obey, eager to please him.";
				increase KorvinSubmitCounter by 1;
				now combat abort is 1;
				now fightoutcome is 22;
				WaitLineBreak;
				say "[losetogsd]";
		else:
			say "     That [bold type]scarred[roman type] German shepherd you met before is back, your paths having crossed once again. Perhaps he's been looking for you? And having found you, he approaches [if gsd_pet < 10]confidently[else]cautiously, but[end if] with an aggressive swagger. The buff male cracks his knuckles and gives a soft growl.";
			if gsd_fled is true:
				say "     'I was hoping to run into you again, cuz we've got some unfinished business. Are you gonna stick around this time or are you gonna chicken out again?' he taunts as he strides towards you.";
			else if gsd_pet < 4:
				say "     'I was hoping to run into you again. Let's continue your training. I'll make a loyal dog out of you yet,' he says as he strides towards you.";
			else if gsd_pet is 10 or gsd_pet is 11:
				say "     'If I kept looking, I knew I'd find you. You may've gotten lucky last time, but that's all it was - luck. I'm top dog around here and that's how it's gonna stay,' he barks. He strides towards you, clearly intent on taking you down a peg.";
			else:
				say "     'I figured you might be around here. Smelled the stink of you in the air,' he growls at you. 'I ain't gonna take this uppity shit from you no more. You're gonna learn your place this time, pup.'";
				say "     For all his posturing, he doesn't come at you right away. More psyching himself up to dare having another go at the foe who's beaten him so many times already. It looks like you'll have to face him at least one more time. And so, rather than waiting for him to finally come at you, you take the fight to him.";
		decrease gsd_encounters by 2;
		if gsd_encounters < 3, now gsd_encounters is 3;
		now gsd_fled is true; [marked as having fled, will clear on win/loss]
	else:
		project Figure of GermanShepherd_naked_icon;
		say "     You're faced with a large, bipedal canine creature. Standing on digitigrade legs, the large canine sports the [one of]traditional brown and tan[or]subtle blue and tan[or]striking black and silver[at random] fur patterns. It's completely unclothed, which makes it QUITE clear that this is a [']He[']. He's got a furry canine sheath resting against his belly and a pair of golf ball-sized balls dangling beneath. He looks you over for a moment, tail starting to wag with increasing enthusiasm as he does. His cock also starts to poke free of its sheath as well, a warning as to what's on his doggified mind. The crazed canine [one of]lets out a rough growl. 'Mmmmm... playtime.'[or][if Player is female]swaggers towards you. 'Good. I was hoping to find a cunt to be my bitch[else]growls aggressively. 'I'm top dog around here. And I'll prove it[end if].'[or]pants with his tongue lolling out. 'Play!' he barks repeatedly as he rushes at you, fists raised and teeth bared - clearly willing to play rough.[or]cracks his knuckles before charging at you.[or]barks a few times before leaping at you.[or]growls aggressively as he stalks towards you.[at random]";
		increase gsd_encounters by 1;
		if gsd_encounters > 6, now gsd_encounters is 6;

to say KorvinOrcFight:
	say "     During your exploration you once more run across your Alpha, the [bold type]scarred[roman type] German shepherd. Quite instantly you drop onto all fours, an action that appears to please the male very much so. When he reaches you he places his paw to your head and rubs it, a feeling that you relish very much so. 'My good little [if Player is female]bitch[else]pup[end if] is rather eager to see me, aren't you?' he says, you bobbing your head eagerly. He smiles at you before speaking once more. 'I have something special for you this time. If you do good, then I'll give you a reward,' the dog tells you.";
	now combat abort is 1; [stops the fight]
	now fightoutcome is 22; [player submitted]
	if "Korvin's Pet - Pink Collar" is listed in feats of Player:
		say "     Your master looks at the glittery pink collar on your neck. 'You can redeem yourself if you win this time,' he tells you, before attaching your leash to the humiliating neck accessory. He then leads you away from your current position. You're rather confused with how far your master is taking you, as you quite soon reach the streets leading up to the Capitol Building. Once the two of you are approaching the building you spot a green skinned person with tusks and a large cock that's barely hidden by a ragged loincloth. It's very clear that it is an orc and to your surprise the buff male who has your leash takes you to him. 'Hey, you wouldn't mind fighting my pet here? If you win, you can do whatever you want,' your Alpha says, shocking you. The orc laughs out loud before quickly agreeing and charging at you to fight.";
	else if "Korvin's Pet - Spiked Collar" is listed in feats of Player:
		say "     Your master smiles at you as you present him with your earlier reward, the black spiked collar he had given you. 'Don't forget, my pet. If you lose, you won't keep that collar; rather, you'll get a different one,' he says. You nod, understanding what he's telling you before he leads you off in a different direction. You're rather confused with how far your master is taking you, as you quite soon reach the streets leading up to the Capitol Building. Once the two of you are approaching the building you spot a green skinned person with tusks and a large cock that's barely hidden by a ragged loincloth. It's very clear that it is an orc and to your surprise the buff male who has your leash takes you to him. 'Hey, you wouldn't mind fighting my pet here? If you win, you can do whatever you want,' your Alpha says, shocking you. The orc laughs out loud before quickly agreeing and charging at you to fight.";
	else:
		say "     Quickly after your Alpha speaks, he pulls out the leash you're oh so familiar with before attaching it to you. The buff male then turns around and begins walking you, apparently in a very specific direction. You're rather confused with how far your master is taking you, as you quite soon reach the streets leading up to the Capitol Building. Once the two of you are approaching the building you spot a green skinned person with tusks and a large cock that's barely hidden by a ragged loincloth. It's very clear that it is an orc and to your surprise the buff male who has your leash takes you to him. 'Hey, you wouldn't mind fighting my pet here? If you win, you can do whatever you want,' your Alpha says, shocking you. The orc laughs out loud before quickly agreeing and charging at you to fight.";
	now inasituation is true;
	challenge "Orc Warrior";
	if fightoutcome >= 20 and fightoutcome <= 29:[lost]
		say "     As soon as you hit the ground, your body aching, you see your master looking at you in disappointment. You aren't on the floor that long before you yelp as the orc warrior picks you up and looks at you with a smirk. 'Looks like I get to have some fun now,' the green male says, pulling his loincloth aside to reveal his endowed cock. The orc [if Player is female]completely ignores your pussy and [end if]positions his manhood at your backdoor, the large dickhead prodding at your pucker. You let out a moan when you feel the orc's seemingly magical precum coat your ass crack. But that feeling doesn't last long before the one holding you pushes, the head of his cock managing to breach your anal ring.";
		say "     The orc doesn't take his time, rather he quickly sets a rapid fucking pace, his large, cum-filled balls slapping heavily against your ass. The feeling of the thick, hard, cock quickly entering and leaving your ass makes you let out a whorish moan. It's by this time that you see your Alpha slowly stroking his own prick, clearly turned on by you getting fucked by an enemy. The idea humiliates you a little bit but that only turns you on even more[if Player is female], making your pussy start to drip and[else if Player is male], making your cock leak precum and[else],[end if] causing you to let out another moan. The orc quickly lets out a grunt as he slams hard into your ass, his pleasure granting cum filling your passage. When you actually look forward you are hit by a spooge of your Alpha's cum as he releases his load onto your face. The orc soon pulls out and smirks at you before thanking your master and leaving, saying he'd love to do it again.";
		WaitLineBreak;
		say "     The aftermath of the fucking was slightly more humiliating as your Alpha refused to let you clean your ass of the orc's cum nor your face of his. On top of that he appeared to be leading you to another destination so you were met with jeers and catcalls as other people saw the cum leaking out of your ass and the cum on your face. As the two of you are walking you see he has a disappointed look on his face, which causes you to whine. He looks at you and gives you a sigh before patting your head. 'Yes, I'm disappointed in you, but not mad, especially because you decided to fight rather than run. However, you must learn that losing does have consequences,' he says. You soon get an inkling of an idea regarding what your buff male master meant as you two approach a pet store. Once there he leads you inside and to the collar section.";
		if "Korvin's Pet - Pink Collar" is listed in feats of Player:
			say "     Your Alpha looks around and points out a black spiked collar on the racks. 'If you had won, then you would've gotten that collar. However, you didn't, and instead you're stuck with that pink one for now,' he says. You hang your head in shame at failing your master again. Seeing this he sighs at you before patting your head. 'Like last time, I'm not angry at you. I just wish you'd try harder,' he says. He leads you away, back to where the two of you met this time. He unleashes you and gestures for you to go. As you're leaving your Alpha vow to yourself that you'll make him proud. After all, you are his pet, it is your job to make him happy.";
		else if "Korvin's Pet - Spiked Collar" is listed in the feats of Player:
			say "     The German shepherd quickly picks up a glittering pink collar with the word 'Bitch' on it. You whimper when he unclips your spiked collar that you proudly won and replaces it with the humiliating neck accessory. On top of that he puts up the black leash and instead brings out your old one and attaches that to the collar. Seeing your sad face he gives out a sigh. 'I'm not angry, pet, just disappointed. But don't worry. If you win next time, you'll get your collar and leash back,' the dog promises, making you nod your head eagerly. The male then leads you back to where the two of you met before unleashing you. As he shoos you off and asks to visit soon, you vow to do better next time to win back your spiked collar.";
			FeatLoss "Korvin's Pet - Spiked Collar";
			FeatGain "Korvin's Pet - Pink Collar";
		else:
			say "     To your humiliating surprise, he picks out a glittering pink collar that has the word 'Bitch' on it, which leaves you wondering as to why an accessory like this exists in a pet store. He quickly clips it around your neck, after undoing the leash, and looks at you. 'That collar will remain on you until you prove yourself to me. If you manage to win the next battle I set up for you then we'll see about getting you a different one,' your Alpha says, giving you a stern look. You nod eagerly, the action causing some of the cum still not dried on your face to slide into your mouth, making you moan. That causes the dog to chuckle before attaching your leash to your new collar. He leads you back to where you had ran into him. There he unclips the leash and shoos you off. Before you leave though he shouts out to you. 'Don't forget what I said my little [if Player is female]bitch[else]pup[end if]!' he shouts after you. You mentally shake your head, as if you'd forget anything your master says.";
			FeatGain "Korvin's Pet - Pink Collar";
	else if fightoutcome >= 30:[fled]
		say "     Terrified, you turn tail and run. Mentally you realize it was a bad idea as your Alpha starts chasing after you, yelling for you to get back. When your master does corner you, he slaps you for fleeing. 'I knew you were a bitch, but I didn't know you were a coward too,' he says darkly, the tone causing you to flinch. With a shake of his head, the dog yanks you by your leash and leads you back to where the two of you ran into each other. When you get there he sees your hurt look, causing him to sigh and pat your head. 'You ran, so you aren't getting anything this time. Next time actually fight. I won't be mad if you lose. Disappointed, yes, but not mad,' he says. That causes you to smile happily at him before he unleashes you and tells you to visit him again soon.";
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     Upon successfully knocking the orc warrior to the ground, said enemy panting and groaning in pain, you see your Alpha approaching you with a large smile on his face. Instantly you get onto the floor and look at him happily. He chuckles at you and scritches your head, causing you to nuzzle his hand. 'You did well my pet, how about you take your reward?' he says, gesturing to the orc on the floor. Eagerly you approach the defeated enemy and take his large cock in your hands, licking at the tip that was oozing precum. The taste of it was brilliant, causing you to happily lap it all up. About half a minute later you quickly engulf the head with your mouth, swirling your tongue around the dick. The orc seems to enjoy it, moaning on the ground and whispering dirty words to you.";
		say "     A minute later your Alpha looks at you and asks you a question. 'Would you rather ride him or me?' he asks you. The answer's rather quick to you, as you figure what better way to rub it in the orc's face that you won than to control the fuck? You quickly say you want to ride the enemy, explaining your reasoning to your master. That causes him to laugh out loud and pat your head, telling you it's a brilliant plan. Quite quickly you position your ass over the quite hard cock and lower yourself onto it. When you do, your Alpha presents you with his hard cock for you to suck, to which you eagerly take into your mouth. If anyone was to spot you three they'd see you bouncing your ass up and down the cock while taking a large doggy dick orally. The wonderful effects of orc precum in your ass and your master's prick in your mouth put you in utter bliss. It wasn't long before you could feel the orc's balls tighten against your ass and your Alpha's against your chin.";
		WaitLineBreak;
		say "     Instantly after you felt that, both males quickly release their loads into you. The orc's cum coating your insides and your master's filling your stomach. [if Player is female]The sensation was too much for you, causing you to orgasm hard, your juices leaking out of your pussy. [else if Player is male]It was too much, causing you to cum hard, ropes of your cum landing on the ground in a pool. [end if]It took you a while to come down from your bliss but when you did you pulled yourself off the softening cock and prostrated yourself in front of your Alpha. He smiled at you and scritched your ears, making you smile in happiness. Following that he grabbed your leash and began leading you away from the recovering orc. However, you two didn't appear to be heading back to where you ran into him. No, he was leading you elsewhere, to a different destination. Your confusion appears to be clear enough that your master explains. 'That orc wasn't your only reward my pet,' he says vaguely. Soon enough though the two of you reach a pet store.";
		if "Korvin's Pet - Pink Collar" is listed in feats of Player:
			say "     To your happy surprise, your Alpha leads you back to the collar section. Once there he unclips the pink collar from your neck and pulls a black spiked one off the shelf before putting it on you. Not only that, he also takes a black leash and attaches it to your new prize. You proudly show off the collar. He pats you on the head before speaking with a smile. 'I am proud of you my pet. You did perfect in that fight. But be warned, if you lose next time you'll be getting a different collar,' he says. You smile happily at him, nuzzling his paw. Shortly after that he takes you back to where you met, where he tells you to visit soon so he could have you fight once more.";
			FeatLoss "Korvin's Pet - Pink Collar";
			FeatGain "Korvin's Pet - Spiked Collar";
		else if "Korvin's Pet - Spiked Collar" is listed in feats of Player:
			say "     Instead of leading you to the collar section, he instead, leads you to the toy area. Once there he brings out a few of the shelved toys and plays with you. He throws a ball to have you catch, which you happily do, bringing it proudly back to your Alpha. When you present it to him in your mouth, he pats you on the head, scritching your ears. To your surprise he removes it and kisses you on the mouth before pulling back. 'I'm really proud of you pet,' he says, smiling at you. After half an hour of playing he leads you back to the place the two of you ran into each other this time. Once there he reminds you of his warning last time. You nod eagerly before he unleashes you and says to visit soon.";
		else:
			say "     When you enter you are slightly surprised to see yourself being led over to the collar section. Your Alpha appears to muse over the large selection of collars, some of them you're surprised to actually exist in a pet store. It doesn't take long for him to find what he's looking for, a black collar with metal spikes on it. He grabs it and unleashes you before clipping the collar onto you. That's not the only thing as he also grabs you a black leash that he quickly attaches to the new accessory around your neck. Once that's all done, he pats you on the head. 'I am proud of you my pet. You did perfect in that fight. But be warned, if you lose next time you'll be getting a different collar,' he says. You smile happily at him, nuzzling his paw. Shortly after that he takes you back to where you met, where he tells you to visit soon so he could have you fight once more.";
			FeatGain "Korvin's Pet - Spiked Collar";
	now battleground is "void";
	now inasituation is false;

to say KorvinTenrecFight:
	if "Korvin's Pet - Spiked Collar" is listed in feats of Player:
		say "     Wandering around for a while you soon come across a familiar face that causes you to drop to your knees and proudly present your spiked collar, for it is none other than your Alpha. He smiles at you, walks up to you, and scritches your ears. You nuzzle his hand before he sneaks up. 'Pet, I have a special task for you today. If you do good, then I'll reward you again. Are you up for it?' he asks you. You nod your head eagerly at him, wanting to prove yourself to your master. The enthusiasm ends up making him chuckle.";
	else if "Korvin's Pet - Pink Collar" is listed in feats of Player:
		say "     After looking around for a while you soon spot somebody that makes you drop to your knees and shamefully present your pink collar to him. It's none other than your master, the scarred German shepherd. He walks up to you and pets your head before pulling away, talking to you. 'I have a task for you, if you're up for it. If you do well, then you won't have that collar anymore, perhaps something better,' he says, you looking up at him eagerly. He chuckles at your enthusiasm before heading off with you.";
	else:
		say "     You wander around looking for a fight when you suddenly notice a familiar face that makes you instantly drop to your knees. It's none other than your Alpha, the buff male German shepherd with a scar on his face. Upon seeing you on the ground, he smiles at you and walks up to you before scritching your ears, causing you to beam at him. 'My pet, I have a special task for you. If you do good, then I'll reward you well. Are you up for it?' he asks. You nod your head eagerly, your master chuckling at your enthusiasm.";
	now combat abort is 1; [stops the fight]
	now fightoutcome is 22; [player submitted]
	say "     The two of you seem to walk for a while, you walking on all fours and your Alpha walking on two. Sure, there's jeers from other people at you playing the role of the pet, but you don't care, no you relish in the feeling. Nevertheless, you are a bit confused at the long distance that is covered. Your questions aren't answered until you two reach the warehouse district, more specifically the port. It is there that your master walks up to a tenrec who appears to recognize your Alpha. The otter-shrew leers at you, causing a shiver of interest to pass through you. 'So that's my temporary prize if I win?' the male says, groping at his crotch in excitement. Your master nods but speaks up. 'Yes, but don't forget, if my pet wins then I get the supply of fish [italic type]and[roman type] we get to have fun with you. The tenrec shrugs it off before turning to you, getting ready to fight. Your Alpha steps aside, clearly making you fight alone.";
	now inasituation is true;
	challenge "Tenrec";
	if fightoutcome >= 20 and fightoutcome <= 29:[lost]
		say "     With a groan, you're knocked back, your body aching in pain. You look in the direction of your Alpha and flinch when you see his disappointed stare aimed in your direction. Even worse, quickly after that the otter-shrew grabs your clothing and removes it all as well as his own. Shortly after that he grabs your face and rubs it against his crotch, letting you inhale the strong musk of a powerful male. The fisherman orders you to lick, something that you comply to, the smell driving you crazy. Trailing your tongue over the prick and balls, you listen to the otter groaning in pleasure. However, your short tenure as a cock worshiper is ended when the otter-shrew shoves his dick down your throat, forcing you to deepthroat it. The male rapidly humps your mouth, driving his manhood in and out.";
		say "     The entire time that you're being throatfucked by the fisherman you can see your Alpha masturbating to your humiliation. Occasionally the male holds your head onto his cock, not letting you breathe, requiring you to tap on his thigh for air. Thankfully he lets up and allows you to gulp for oxygen before quickly thrusting back in. Surprisingly the embarrassment makes pleasure shoot all over[if Player is female], making your pussy drip juices[else if Player is male], making your cock drip precum[end if] as you moan out loud. In your haze of bliss you start to rub and massage the otter-shrew's balls, making the male groan and his thrusts more desperate. Shortly after, you can feel his balls tighten. On top of that your Alpha walks up to you, his hand running all over his cock.";
		WaitLineBreak;
		say "     Not long after your Alpha reaches you, ropes of cum fill your throat from the otter-shrew's cock as well as your master's doggy sperm covering your face. You eagerly swallow the splooge filling your mouth, not wanting to spill any of it. [if Player is female]The entire situation sets you off, making you orgasm, your pussy spilling its juices. [else if Player is male]The entire situation sets you off and you cum hard, making your load pool down on the ground. [end if]When you come down from your sexual high, the tenrec tells your master that he's welcome to try again any other time. After that your Alpha takes you by the leash and starts to lead you away. To your embarrassment, he doesn't let you remove the cum on your face, marking you as his. This causes a lot of the people wandering the streets to laugh and wolf-whistle at you. You're about to ask where he's taking you until you reach a pet store.";
		if "Korvin's Pet - Pink Collar" is listed in feats of Player:
			say "     Your Alpha looks around and points out a black spiked collar on the racks. 'If you had won then you would've gotten that collar. However, you didn't and instead you're stuck with that pink one for now,' he says. You hang your head in shame at failing your master again. Seeing this he sighs at you before patting your head. 'Like last time, I'm not angry at you, just like last time. I just wish you'd try harder,' he says. He leads you away, back to where the two of you met this time. He unleashes you and gestures for you to go. As you're leaving your Alpha vow to yourself that you'll make him proud. After all, you are his pet, it is your job to make him happy.";
		else if "Korvin's Pet - Spiked Collar" is listed in the feats of Player:
			say "     The German shepherd quickly picks up a glittering pink collar with the word 'Bitch' on it. You whimper when he unclips your spiked collar that you proudly won and replaces it with the humiliating neck accessory. On top of that he puts up the black leash and instead brings out your old one and attaches that to the collar. Seeing your sad face he gives out a sigh. 'I'm not angry pet, just disappointed. But don't worry. If you win next time, you'll get your collar and leash back,' the dog promises, making you nod your head eagerly. The male then leads you back to where the two of you met before unleashing you. As he shoos you off and asks to visit soon, you vow to do better next time to win back your spiked collar.";
			FeatLoss "Korvin's Pet - Spiked Collar";
			FeatGain "Korvin's Pet - Pink Collar";
		else:
			say "     Once in the store, your Alpha leads you over to the collar section where you instantly picks out a glittery pink collar with the word 'Bitch' on it. Such a thing, at least to you, is an odd sight in a pet store. Nevertheless, he unleashes you and clips the humiliating neck accessory onto you. 'You disappointed me by losing, but that doesn't mean I'm mad at you,' he says, easing your fear. He pets your head, rubbing the cum into your hair. He then hooks the leash onto your new collar and begins to lead you back to where you ran into him. Once there he turns to face you, after unleashing you. 'If you manage to do good next time, then I'll see about you getting a worthier collar,' he says. You eagerly nod at this, happy to please your Alpha before you head off, hoping to revisit him soon.";
			FeatGain "Korvin's Pet - Pink Collar";
	else if fightoutcome >= 30:[fled]
		say "     Terrified, you turn tail and run. Mentally you realize it was a bad idea as your Alpha starts chasing after you, yelling for you to get back. When your master does corner you, he slaps you for fleeing. 'I knew you were a bitch, but I didn't know you were a coward too,' he says darkly, the tone causing you to flinch. With a shake of his head, the dog yanks you by your leash and leads you back to where the two of you ran into each other. When you get there he sees your hurt look, causing him to sigh and pat your head. 'You ran, so you aren't getting anything this time. Next time actually fight. I won't be mad if you lose. Disappointed, yes, but not mad,' he says. That causes you to smile happily at him before he unleashes you and tells you to visit him again soon.";
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     With a proud smile, your Alpha watches on as you knock the otter-shrew to the ground one final time. 'Well my friend, it looks like I win our deal, you ready to pay up?' he asks the tenrec. The male on the ground groans before speaking. 'Ugh, yes, you'll get your fish, just get it over with.,' the guy says with a huff. Your master tells you to strip and sit ass first on the defeated enemy's face. You obey and possition your hole right over the otter-shrew's mouth and shiver when he begins to lick your pucker. As you're writhing about on the male's muzzle your Alpha positions himself at the guy's own hole. The tenrec groans into your ass when your master pushes in quickly bottoms out. To your eager surprise, after that he moves his muzzle to your face and begins to kiss you sloppily. Your tongues battle for dominance, but you quickly succeed control to him, after all you're his pet.";
		say "     The port is filled with the sounds of moans and balls slapping as the two of you grind against the tenrec. [if Player is female]From the rimming and the kisses from your Alpha is making your pussy drip fluids, you moaning out in pleasure. [else if Player is male]The sensations of the tongue in your ass and your Alpha kissing you thoroughly, dominating your mouth, is making your cock hard and causing it to drip precum. [end if]If how hard the tenrec is says anything, he was completely into the domination. Your master winks at you and looks at the otter-shrew's cock. Somehow understanding what he was talking about, you grasp a hand around the male's dick and begin masturbating it for him. Quickly after you begin, your Alpha manages to knot with the fisherman, causing him to howl into your ass in pleasure.";
		WaitLineBreak;
		say "     Not long following your master knotting the downed enemy did the feelings of bliss become too much for the three of you, all of you cumming at the same time. Your load ends up coating the fur of the otter-shrew, whereas their cum coats your hand. Your Alpha pulls back from the kiss and watches you lick up the tenrec's release as he rides the waves of his orgasm. Once all three of you are done and your master's knot softens, you stand up and get dressed before repositioning yourself on the floor. The fisherman winces as he goes over to one of the many boxes against the wall, cum leaking out of his ass. He grabs the box and gives it to your master who takes it in one of his arms. Your Alpha nods and then grabs you by the least and happily leads you off. After a few minutes it appears that you aren't going back to where you ran into him, rather he ends up taking you to a pet store.";
		if "Korvin's Pet - Pink Collar" is listed in feats of Player:
			say "     To your happy surprise, your Alpha leads you back to the collar section. Once there he unclips the pink collar from your neck and pulls a black spiked one off the shelf before putting it on you. Not only that, he also takes a black leash and attaches it to your new prize. You proudly show off the collar. He pats you on the head before speaking with a smile. 'I am proud of you my pet. You did perfect in that fight. But be warned, if you lose next time you'll be getting a different collar,' he says. You smile happily at him, nuzzling his paw. Shortly after that he takes you back to where you met, where he tells you to visit soon so he could have you fight once more.";
			FeatLoss "Korvin's Pet - Pink Collar";
			FeatGain "Korvin's Pet - Spiked Collar";
		else if "Korvin's Pet - Spiked Collar" is listed in feats of Player:
			say "     Instead of leading you to the collar section, he instead, leads you to the toy area. Once there he brings out a few of the shelved toys and plays with you. He throws a ball to have you catch, which you happily do, bringing it proudly back to your Alpha. When you present it to him in your mouth, he pats you on the head, scritching your ears. To your surprise he removes it and kisses you on the mouth before pulling back. 'I'm really proud of you pet,' he says, smiling at you. After half an hour of playing he leads you back to the place the two of you ran into each other this time. Once there he reminds you of his warning last time. You nod eagerly before he unleashes you and says to visit soon.";
		else:
			say "     Once the two of you are in the store, he guides your attention to an aisle holding leashes and collars. The dog looks at the selection of neck accessories before humming and grabbing one. Your master shows you it, revealing the item to be black and studded with pointy metal spikes. After unleashing you, he clips it onto you and throws your old leash to the side, grabbing a new black one to clip onto the new collar. You end up having feelings of strong pride for the new accessory, to which makes your Alpha smile at you and scritch your ears. He then leads you to back to the place the two of you met. 'That collar is a prize for you winning. However, it can be lost if you fail me in the whatever next one I set up for you,' he warns. You nod your head, understanding what he was saying before he unclips your leash and waves you off. You leave, eager for the next time you see your master.";
			FeatGain "Korvin's Pet - Spiked Collar";
	now battleground is "void";
	now inasituation is false;
to say KorvinCentaurFight:
	say "     After looking around for a while, you quickly come upon a person who you're very excited to see. You're so excited that you immediately drop to your knees. Why wouldn't you? After all, it is your Alpha, a sexy scarred German shepherd. Upon seeing you on the ground, he smiles, walks up to you, and scritches your head. 'Are you happy to see me, my pet?' he asks. You nod your head eagerly, nuzzling his hand. 'That's great, I have something for you to do this time,' he says, you looking up at him in interest.";
	now combat abort is 1; [stops the fight]
	now fightoutcome is 22; [player submitted]
	if "Korvin's Pet - Spiked Collar" is listed in feats of Player:
		say "     Your Alpha looks proudly at your spiked collar, something that sends happiness throughout your body. 'If you win this time, we'll have some fun, but remember what happens if you lose,' he says. You nod your head before he attaches your black leash to your collar and takes you on a walk for a while. You're rather surprised to see that your Alpha is leading you into the plains just outside the city. The two of you travel for a bit longer before you spot a centaur stallion lazing about on the grass. Your master speaks up, yelling to the horse-man. 'Hey! Do you want to fight my pet here?' he asks, getting the male's attention. The guy perks up and stands on his four legs, causing your attention to be drawn to the hung cock. He huffs before talking as well. 'Sure, why not... but what do I get if I win?' the centaur asks, eyeing you up. 'Simple, you get to fuck my pet,' your Alpha says. That makes the horse-man grin and agree before quickly readying himself for battle.";
	else if "Korvin's Pet - Pink Collar" is listed in feats of Player:
		say "     Your Alpha gives a disappointed look at your pink collar, which makes you look down in shame. He sighs and pats your head again. 'Don't worry, pet. If you win, you'll get a different collar,' he says, making you give him an eager smile before he leashes you up and takes you on a walk for a while. You're rather surprised to see that your Alpha is leading you into the plains just outside the city. The two of you travel for a bit longer before you spot a centaur stallion lazing about on the grass. Your master speaks up, yelling to the horse-man. 'Hey! Do you want to fight my pet here?' he asks, getting the male's attention. The guy perks up and stands on his four legs, causing your attention to be drawn to the hung cock. He huffs before talking as well. 'Sure, why not... but what do I get if I win?' the centaur asks, eyeing you up. 'Simple, you get to fuck my pet,' your Alpha says. That makes the horse-man grin and agree before quickly readying himself for battle.";
	else:
		say "     He leashes you up and takes you on a walk for a while. You're rather surprised to see that your Alpha is leading you into the plains just outside the city. The two of you travel for a bit longer before you spot a centaur stallion lazing about on the grass. Your master speaks up, yelling to the horse-man. 'Hey! Do you want to fight my pet here?' he asks, getting the male's attention. The guy perks up and stands on his four legs, causing your attention to be drawn to the hung cock. He huffs before talking as well. 'Sure, why not... but what do I get if I win?' the centaur asks, eyeing you up. 'Simple, you get to fuck my pet,' your Alpha says. That makes the horse-man grin and agree before quickly readying himself for battle.";
	now inasituation is true;
	challenge "Centaur Stallion";
	if fightoutcome >= 20 and fightoutcome <= 29:[lost]
		say "     Quickly you fall to the ground in pain before you feel a hard, long cock hot-dogging your cheeks. Looking up from under the centaur you see your Alpha looking at you disappointedly. Your focus on your master only exists for so long before suddenly you feel the equine cock breach your backdoor. You groan in a mix of pain and pleasure as he slowly pushes into you, inch by inch. It takes a minute before the horse-man actually bottoms out, his heavy, cum-filled balls resting against your cheeks. Not long after that does the stallion set a fast pace, fucking you quick and hard. Somehow he knows just where to thrust as seconds after he begins, you're letting out whorish moans[if Player is female]. Your pussy is already dripping from the fucking that the horse-man is giving you[else if Player is male]. Your cock is hard as a rock and dripping tons of precum[end if].";
		say "     Your Alpha appears to delight in your fucking, running his paw up and down his cock, masturbating to the sounds of balls slapping against your ass. Despite being pushed into the ground as you're being fucked hard by the hung dick you're enjoying the feeling of it thrusting in and out of your anal passage. You're in utter bliss as this is happening, getting high off of the pleasure and the fact that your Alpha is hard because of your position. Were anyone to find the three of you it'd be an interesting sight. With a centaur plowing into someone as a German shepherd watches on, masturbating rather heavily. During one of the thrusts you can feel the centaur's balls start to tighten and it appears your Alpha is getting close if the fact he's walking up to you says anything.";
		WaitLineBreak;
		say "     With a roar of pleasure, your Alpha lets loose his load all over your face, which is quickly followed by the centaur slamming into your ass and cumming hard into your hole. It's so much cum that it inflates your stomach a bit. [if Player is female]The sensation of being filled so much as well as your Alpha's cum on your face makes you orgasm, your pussy spilling fluids. [else if Player is male]The feeling of being filled with cum so much makes your cock spew its cum onto the ground, the fact that you're on the ground causing it to smear against your stomach. [end if]With the three of you having cummed, all of you just lay or stand there in utter bliss. Minutes later the centaur removes his cock from your ass and allows you to stand up, When you do, the cum starts pouring out of your hole, coating your legs in it. The centaur thanks your Alpha for the fun before leaving the two of you alone where he grabs you by the leash and leads you away.";
		if "Korvin's Pet - Pink Collar" is listed in feats of Player:
			say "     He doesn't let you clean up at all, leaving you covered in sperm. It's an embarrassing walk as everyone who sees the two of you laughs and wolf-whistles at you. Soon enough though you reach a familiar pet store where he take you to the collar section. Your Alpha looks around and points out a black spiked collar on the racks. 'If you had won, then you would've gotten that collar. However, you didn't, and instead you're stuck with that pink one for now,' he says. You hang your head in shame at failing your master again. Seeing this he sighs at you before patting your head. 'Like last time, I'm not angry at you. I just wish you'd try harder,' he says. He leads you away, back to where the two of you met this time. He unleashes you and gestures for you to go. As you're leaving your Alpha vow to yourself that you'll make him proud. After all, you are his pet, it is your job to make him happy.";
		else if "Korvin's Pet - Spiked Collar" is listed in the feats of Player:
			say "     Your master doesn't let you clean up, leaving you covered in sperm. It's an embarrassing walk as everyone who sees the two of you laughs and wolf-whistles at you. Soon enough though you reach a familiar pet store where he take you to the collar section. The German shepherd quickly picks up a glittering pink collar with the word 'Bitch' on it. You whimper when he unclips your spiked collar that you proudly won and replaces it with the humiliating neck accessory. On top of that he puts up the black leash and instead brings out your old one and attaches that to the collar. Seeing your sad face he gives out a sigh. 'I'm not angry, pet, just disappointed. But don't worry. If you win next time, you'll get your collar and leash back,' the dog promises, making you nod your head eagerly. The male then leads you back to where the two of you met before unleashing you. As he shoos you off and asks to visit soon, you vow to do better next time to win back your spiked collar.";
			FeatLoss "Korvin's Pet - Spiked Collar";
			FeatGain "Korvin's Pet - Pink Collar";
		else:
			say "     He still has a disappointed look on his face and doesn't let you clean up, so you're forced to walk on all fours, covered in cum. People jeer and laugh at you as you walk along, embarrassment flooding you. To your surprise, your master doesn't lead you back to where the two of you ran into each other. Rather after a while you see that he's actually taking you to a pet store. When you guys enter, he shows you to a collar and leash aisle where he promptly grabs a glittery pink one with the word 'Bitch' on it. He unleashes you and clips it on before attaching your leash back on. From there he takes you to your starting location where your Alpha gives you a look. 'I'm disappointed, but not mad. You lost, so you get that collar. However, should you win next time, you'll get a better one, got it?' he asks sternly. You nod eagerly before he unleashes you and shoos you off. As you leave you hope to make your master proud of you.";
			FeatGain "Korvin's Pet - Pink Collar";
	else if fightoutcome >= 30:[fled]
		say "     Terrified, you turn tail and run. Mentally you realize it was a bad idea as your Alpha starts chasing after you, yelling for you to get back. When your master does corner you, he slaps you for fleeing. 'I knew you were a bitch, but I didn't know you were a coward too,' he says darkly, the tone causing you to flinch. With a shake of his head, the dog yanks you by your leash and leads you back to where the two of you ran into each other. When you get there he sees your hurt look, causing him to sigh and pat your head. 'You ran, so you aren't getting anything this time. Next time actually fight. I won't be mad if you lose. Disappointed, yes, but not mad,' he says. That causes you to smile happily at him before he unleashes you and tells you to visit him again soon.";
	else if fightoutcome >= 10 and fightoutcome <= 19: [won]
		say "     To your excitement after your last attack, the centaur stumbles back and falls to his front legs, exhausted. Your Alpha is grinning in your direction at your victory. He gestures to the horse-man practically encouraging you to have your fun. You get down on all fours, face to the male's endowed dick, making sure to get at it from the side, rather than under. Following that, you bring your tongue to the flared head, licking at it rather eagerly. The stallion appears to enjoy what you're doing, the frustrated look on his face from losing disappearing, replaced with a look of enjoyment. Interested to get further, you open your mouth wide and let the cock into your mouth. The centaur tries to thrust deep into your throat but your Alpha growls at him, stopping the horse-man in his tracks. Shortly after that your can feel your master's cock hot-dogging your ass cheeks, appearing to want your pucker.";
		say "     With his hard dick rubbing against your ass, you go into a frenzy, beginning to deepthroat the horse-prick in front of you. As soon as you do this, your Alpha breaches your hole with his manhood, causing you to moan as you push your face onto the centaur's own cock. If anyone came upon the threw of you, they'd be more than likely turned on by the sight of someone being plowed by a buff male dog while sucking a horse-man off. You revel in the feeling of your master's hard doggy-dick in your ass, grinding your cheeks against his crotch as the knot starts forming against your pucker. On top of that, you can feel your Alpha's balls tightening when they slap against your backdoor, as well as the centaur's when your face touches his own balls. It's not long after you feel that, suddenly the German shepherd's knot pops into your fuckhole making you groan out loud.";
		WaitLineBreak;
		say "     Shortly following your Alpha knotting you do all three of you reach your climax. [if Player is female]You orgasm real hard, your pussy spilling its juices, you moaning due to the pleasure. [else if Player is male]You end up cumming hard, your load spilling onto the ground below you. [end if]The German shepherd lets loose his own load deep in your bowels while the centaur dumps his cum into your throat. You gulp it down eagerly, not wanting any of it to spill onto your face. While the horse-man finishes unleashing their sperm after maybe half a minute and your master after a minute, it takes about ten minutes for your Alpha's knot to deflate and pop out of your ass. He then shoos off the centaur, dutifully cleaning you up after the male is gone. When your ass isn't leaking cum anymore, the German shepherd takes you by the leash and walks away.";
		if "Korvin's Pet - Pink Collar" is listed in feats of Player:
			say "     To your happy surprise, your Alpha leads you back to the pet store and its collar section. Once there he unclips the pink collar from your neck and pulls a black spiked one off the shelf before putting it on you. Not only that, he also takes a black leash and attaches it to your new prize. You proudly show off the collar. He pats you on the head before speaking with a smile. 'I am proud of you, my pet. You did perfect in that fight. But be warned, if you lose next time, you'll be getting a different collar,' he says. You smile happily at him, nuzzling his paw. Shortly after that he takes you back to where you met, where he tells you to visit soon so he could have you fight once more.";
			FeatLoss "Korvin's Pet - Pink Collar";
			FeatGain "Korvin's Pet - Spiked Collar";
		else if "Korvin's Pet - Spiked Collar" is listed in feats of Player:
			say "     You're rather confused when your Alpha leads you to the pet store. However, instead of leading you to the collar section, he leads you to the toy area. Once there he brings out a few of the shelved toys and plays with you. He throws a ball to have you catch, which you happily do, bringing it proudly back to your Alpha. When you present it to him in your mouth, he pats you on the head, scritching your ears. To your surprise he removes it and kisses you on the mouth before pulling back. 'I'm really proud of you, pet,' he says, smiling at you. After half an hour of playing he leads you back to the place the two of you ran into each other this time. Once there he reminds you of his warning last time. You nod eagerly before he unleashes you and says to visit soon.";
		else:
			say "     You're surprised when he leads you not to where you guys ran into each other, but to a pet store. Once inside, you are taken to an aisle filled with collars and leashes. Your Alpha looks around at the selection of neck accessories before smiling and grabbing a specific one. He presents it to you, showing it to be a black collar with metal studded spikes. The German shepherd then unleashes you and clips it onto your neck before grabbing a brand new black leash and attaching that to it. You feel rather proud of the new accessory and it appears that your master is proud of you too, as he smiles and pats you on your head, scritching your ears after. He then takes you back to where the two of you met this time before speaking to you. 'That collar is a reward for doing so well. However, you can lose it if you do bad in the next one I set up for you, got it?' he asks. You nod eagerly, understanding what he's saying. Your Alpha smiles before unleashing you, telling you to visit soon.";
			FeatGain "Korvin's Pet - Spiked Collar";
	now battleground is "void";
	now inasituation is false;


Section 2 - Monster Victory

to say losetogsd:
	choose row MonsterID in Table of Random Critters;
	if gsd_special is false:
		project Figure of GermanShepherd_hard_icon;
		now gsd_var is 0;
		if a random chance of 1 in 3 succeeds:
			say "     The German shepherd bears you down with a dominant growl before slapping his cock across your face. You know what he wants and [if HP of Player > 0]are happy to provide. That[else]decide it best to just relent and do it. Besides, that[end if] canine cock is strangely enticing. You open your mouth and let it slide past your lips. The first taste of doggy pre is enough to push away any lingering concerns. You play your tongue over the rod while collecting a flavorful mess to swallow down.";
			say "     You continue to lick and suck on him while playing with his balls. Feeling his knot swelling up to full size[if scalevalue of Player < 3], you squeeze that bulge with your [Body Size Adjective of Player] hand and soon coax him to orgasm[else if scalevalue of Player > 3], your large size lets you accept it into your mouth as well readily enough and soon coax him to orgasm[else], you struggle a bit before managing to fit his swollen bulb in your mouth. You coax him to orgasm with your face tied to his crotch, at the small price of an aching jaw[end if]. Once he's spent[if scalevalue of Player is 3] and his knot's gone down enough to free you[end if], he slaps his meat across your face again, leaving a final streak of semen across one cheek. He strides away with a confident swagger, tail wagging the entire time.";
		else:
			if Player is not female or ( anallevel is 3 and a random chance of 1 in 3 succeeds ):
				say "     The victorious dog grabs you by the shoulders and manhandles you onto all fours. In this position, you are easily mounted by the horny canine. His dick pokes at your rear a few times before getting lined up and sinking [if Player is female]erroneously [end if]into your asshole. You grunt at the rough penetration, though that soon turns to canine-like panting as you become aroused by the assfucking you're receiving. In your mind's eye, you imagine how that canine dick must look driving into your violated pucker, all while he humps you like the beast he is.";
				say "     As his peak approaches, you can feel the knotted base of his dick swelling up. He humps you harder, trying to push it into you and [if scalevalue of Player < 4 and player is not twistcapped]eventually [end if]succeeding, locking his hips to yours. He tugs and grinds his pulsing rod inside your stuffed rectum as he pumps shot after shot of dog semen into your bowels[if Player is not neuter], sending you into an orgasm as well[end if]. And once finished, he gives no care for you and just remains atop you, panting drool onto your back while waiting for his knot to go down. When it does, he pulls free, unleashing a gush of excess sperm from your sore and stretched hole.[mimpregchance]";
			else:
				say "     The victorious dog grabs you by the shoulders and manhandles you onto all fours. In this position, you are easily mounted by the horny canine. His dick pokes at your rear a few times before getting lined up and sinking into your pussy. Your cunt stretches [if Cunt Depth of Player > 15]easily [end if]to take the doggy dong, and you start panting in a decidedly canine manner. In your mind's eye, you imagine how that canine dick must look sinking into your wet snatch in an effort to breed you like some stray bitch.";
				say "     As his peak approaches, you can feel the knotted base of his dick swelling up. He humps you harder, trying to push it into you and [if Cunt Depth of Player < 12]eventually [end if]succeeding, locking his hips to yours. He tugs and grinds his pulsing rod inside your stretched cunt, pumping shot after shot of dog semen into your womb. The feeling of all that warm cum sends you into an orgasm as well. Once finished, he gives no care for you and just remains atop you, panting drool onto your back while waiting for his knot to go down. When it does, he pulls free, unleashing a gush of excess sperm from your sore and stretched hole.[impregchance]";
	else:
		now gsd_fled is false; [player did not flee]
		now gsd_var is 1;
		if gsd_pet is 4:					[player is recruited - auto-submits]
			now gsd_var is 0;
			if gsd_male is true:
				say "     Your alpha has a confident grin on his scarred muzzle as you give in to him. He pounces you with a mock-growl. The two of you play-fight for a few minutes before pinning you beneath him. Throughout the play, there's been nips, licks and gropes from the stronger male, but now he's doing so much more. Your body responds to your alpha's will, becoming more aroused even as tingles of the infection spread through you.";
				infect;
				if Player is not male:
					follow the sex change rule;
				if Player is not female and a random chance of anallevel in 5 succeeds:
					say "     The big German shepherd nips at the back of your neck a few times as he moves to mount you. 'Rrrr! Time to show your alpha what a good packmate you are.' You playfully struggle a little to excite him further[run paragraph on]";
					if tail of Player is not "":
						say ", though your tail does raise readily for him[run paragraph on]";
					say ". Giving you another grope, he gets you to hold still long enough to thrust into you. He sinks the first few inches into your yielding asshole, your mind and body accepting your alpha's dominant shaft.";
					say "     The German shepherd's dick pushes a little deeper with every delightful thrust. His thrusts are strong and firm, providing your butt with a wonderful pounding. He holds back from humping you wildly, treating his loyal and obedient packmate well. Just feeling that strength there, held in check but more than able to take you, is quite erotic. It is another reminder that you belong right there - under him - without the need to punish you to show it.";
					say "     As the humping goes on, his pace does quicken as your sphincter gets stretched. A few more hard pushes are enough and his knot finally pops into you. Tied, he humps in short, fast motions until blasting his hot load into your clutching bowels. You cum happily as he does, both having greatly enjoyed it and also having enjoyed satisfying your alpha. You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your rear. Once his knot comes free, you keep your ass up, not risking letting his precious semen escape before your anus can recover from the stretching to keep it in.[mimpregchance]";
				else if Player is female and a random chance of 2 in 3 succeeds:
					say "     The big German shepherd nips at the back of your neck a few times as he teases a digit across your wet pussy. 'Rrrr! Despite joining my pack as a male, it seems you've picked up a hot cunt for your alpha. All the better for you to please your alpha, I'd say,' he growls playfully in your ear. The sound of his voice in your ear is enough to get you dripping with need and you raise your [run paragraph on]";
					if tail of Player is not "":
						say "tail and "[run paragraph on];
					say "hips, presenting your juicy cunt to him, allowing your alpha to sink his dominant shaft into your needy hole.";
					say "     The German shepherd's dick pounds into you with strong thrusts that frequently press his knot against your clit and juicy folds. And while you know he'd normally not be so rough on his loyal packmate, you've got a cunt for him to breed and he can't help but make the most of it. Not that you mind this hard fucking; you moan and whimper in delight with every impact, your body craving having your alpha inside you. Feeling his strength as he humps you hard and fast is another delicious reminder of why you belong right where you are - underneath him, getting your cunt fucked by this stud of a male.";
					say "     As the humping goes on, the repeated pushes of his knot causes your cunny to stretch open until finally your folds [if Cunt Depth of Player < 12]eventually [end if]spread sufficiently. That thick bulb pushes into you, tying to you him and leaving him only able to make short, fast thrusts that leave you quivering in delight by the time he's blasting his hot load into your clutching vagina. You orgasm with him, your body delighting in receiving your alpha's canine seed and also having enjoyed satisfying your alpha. You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your womb. Once his knot comes free, you flop to the ground and start to masturbate, fingering yourself with the gooey excess that leaks from your stretched cunt in a sexual display that brings a smile to the stud's scarred muzzle.[impregchance]";
				else:
					say "     The big German shepherd pins you down on your back and nips at your bared throat a few times while humping his erection against your hip. You can feel his hard shaft and the warmth of his pre, the scent of which excites you all the more. 'Rrrr! Open wide, my loyal packmate. Your alpha has a tasty bone for you,' he growls playfully even as he moves to straddle your head. With his dripping shaft pressed to your face now, you nuzzle and lick it a few times before opening your mouth and accepting it past your lips.";
					say "     The taste of the dominant male's cock is exciting. You lick and suck at it, working your tongue across the hard flesh. Precum drools onto your tongue for you to taste, providing a sample of the virile dog's flavor. He lets you lavish attention like this upon him for a little while before taking your head in his paws and starting to thrust into your wet mouth. You continue to suck and slide your tongue over that thrusting canine rod until your alpha finally cums. Shot after shot of runny canine seed spews across your palate and down your throat. You gulp it down as it comes, moaning softly at the taste of the stud's semen as it floods your senses. Once spent, the German shepherd gets you to lick his cock clean while he pets your head like the good doggy packmate you are.";
			else if Player is female:
				say "     The confident canine grins down at you and rubs a paw atop your head let a common pet. 'That's a good girl. It's so much better when bitches know their place,' he says";
				if inheat is true or ( gestation of Child is 0 and a random chance of 1 in 2 succeeds ) or a random chance of 1 in 2 succeeds:
					say " while guiding you down onto all fours. You pant eagerly and raise your rear to him, giving him access to your ready and waiting cunt";
					if a random chance of 1 in 2 succeeds:
						say ". He takes a moment to sample your hot muff, nosing at your rear and letting his doggy tongue lash across your juicy folds for several long licks";
					say ". With you ready and eager, he mounts you without further delay.";
					say "     His hard shaft thrusts into your juicy cunny as he claims you once again. The German shepherd's dick pounds into you with strong thrusts that frequently press his knot against your clit and juicy folds. Not that you mind this hard fucking; you moan and whimper in delight with every impact, your body craving having your alpha inside you. Feeling his strength as he humps you hard and fast is another delicious reminder of why you belong right where you are - underneath him, getting your cunt fucked by this stud of a male. At this moment, you are nothing but his bitch and you desire nothing more than that.";
					say "     As the humping goes on, the repeated pushes of his knot causes your cunny to stretch open until finally your folds [if Cunt Depth of Player < 12]eventually [end if]spread sufficiently. That thick bulb pushes into you, tying to you him and leaving him only able to make short, fast thrusts that leave you quivering in delight by the time he's blasting his hot load into your clutching vagina. You orgasm with him, your body delighting in receiving the canine's seed and also having enjoyed satisfying your alpha. You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your womb. Once his knot comes free, you flop to the ground and start to masturbate, fingering yourself with the gooey excess that leaks from your stretched cunt in a sexual display that brings a smile to the stud's scarred muzzle.[impregchance]";
				else:
					say ", grinding his sheath and rising cock against your face. 'Open up, girl, and get sucking.' The scent of the confident male's manhood right there for the taking only increases your arousal and submissive desires. With his dripping shaft pressed to your face now, you nuzzle and lick it a few times before opening your mouth and accepting it past your lips.";
					say "     The taste of the dominant male's cock is exciting. You lick and suck at it, working your tongue across the hard flesh. Precum drools onto your tongue for you to taste, providing a sample of the virile dog's flavor. He lets you lavish attention like this upon him for a little while before taking your head in his paws and starting to thrust into your wet mouth. You continue to suck and slide your tongue over that thrusting canine rod until your alpha finally cums. Shot after shot of runny canine seed spews across your palate and down your throat. You gulp it down as it comes, moaning softly at the taste of the stud's semen as it floods your senses. Once spent, the German shepherd gets you to lick his cock clean while he pets your head like the good doggy bitch you are.";
			else:
				say "     The confident canine grins down at you and pushes you to the ground beneath him. He pins you beneath him and nips at your neck and shoulders, asserting his dominance over you. You do not resist your alpha and submit to him without resistance. 'That's a good pup,' he growls while groping you, making you more aroused.";
				if a random chance of anallevel in 4 succeeds:
					say "     The big German shepherd grabs you by the scruff of the neck and grinds his cock against your rear. 'Rrrr! You may not have a cunt for your alpha, but you'll still be my bitch.' Knowing your place, you keep your ass raised ";
					if tail of Player is not "":
						say "and lift your tail ";
					say "as he grinds his canine cock between your cheeks and dribbles precum across your pucker. He drives the first few inches into your yielding asshole, your mind and body accepting your alpha's dominant shaft with a soft whimper that seems to excite him further.";
					say "     The German shepherd's dick pushes hard and deep into you with only a few thrusts, giving your butt little chance to adjust to the penetration. Grabbing the scruff of your neck in his teeth, he keeps a firm grip on you as he starts humping you wildly. You can feel the frequent slams of his knot against your pucker and he bangs you hard and fast. You whimper and moan at this rough treatment, but your body loves it anyhow, craving having your alpha inside you. Being used and abused like this is just another delicious reminder that you belong right where you are - underneath him, getting your ass stuffed by this stud of a male. At this moment, you're nothing but his fucktoy bitch and you desire nothing more than that.";
					say "     As the humping goes on, the repeated pushes of his knot causes your sphincter to stretch open until finally giving out. That thick bulb pushes into you, tying to you him and leaving him only able to make short, fast thrusts that leave you quivering in delight by the time he's blasting his hot load into your clutching bowels. You orgasm with him, your body delighting in receiving the canine's seed and also having enjoyed satisfying your alpha. You remain flopped out beneath him in a happy daze, enjoying the warmth of the afterglow and of his virile seed inside your rear. Once his knot comes free, he pushes you away and you sprawl out on the ground with canine cum leaking from your abused hole and a silly grin on your face.[mimpregchance]";
				else:
					say "     Rising up, the big German shepherd pulls you into a kneeling position in front of him. Grabbing your head, he presses his crotch to your face and humps his hard cock against it. Rivulets of precum dribble down your cheek as the strong scent of the alpha dog's manhood excites you all the more. 'Rrrr! Open wide, pup. Your alpha has a tasty bone for you, you cocksucking bitch,' he growls even as he slaps it across your face. Presented with the dog's drooling shaft, you nuzzle and lick it a few times before opening your mouth and accepting it past your lips.";
					say "     The taste of the dominant male's cock is exciting. You lick and suck at it, working your tongue across the hard flesh. Precum drools onto your tongue for you to taste, providing a sample of the virile dog's flavor. He lets you lavish attention like this upon him for a little while before taking your head in his paws and starting to thrust into your wet mouth. You continue to suck and slide your tongue over that thrusting canine rod until your alpha finally cums. Shot after shot of runny canine seed spews across your palate and down your throat. You gulp it down as it comes, moaning softly at the taste of the stud's semen as it floods your senses. Once spent, the German shepherd pulls out and smears his messy cock across your face to wipe it clean, leaving you marked as his good doggy bitch.";
		else if HP of Player > 0:		[player submitted]
			if gsd_male is true:
				say "     Your alpha just grins as you give in to him and pounces with a mock growl. He play wrestles with you for a few minutes before sitting down and pulling you against himself, nuzzling at the top of your head and licking your ears.";
				say "     'Good boy, you're learning. Grow strong, always treat me with respect, and you will become a powerful pack member.'";
				say "     He gives a tight hug and licks you, tongue rasping over your lips and leaving a familiar burning sensation before he stands and walks off once again, leaving you alone to learn and grow stronger.";
				now gsd_slut is true;
				now gsd_var is 0;
				infect;
			else if gsd_attack is true:	[fought then submitted]
				say "     The German shepherd growls and pushes you back into a wall as you surrender, bearing his teeth and making sure you know he's in control. Slowly his hackles drop and he stops growling, though he continues to hold you up against the wall.";
				now gsd_slut is true;
				if Player is not female: [male/neuter player submits]
					say "     'Rrrrrf, not stupid at least; you're willing to give in when you can't win. Seems like you might learn your place and accept that I'm the top dog around here.'";
					say "     He seems to consider you carefully for a moment, then makes a decision. Keeping you pinned against the wall, he begins to firmly lick at your injuries, causing a slight burning sensation to spread from them before fading. The licking is soothing and you relax, letting the dog do as he wishes. After tending to a few of your superficial injuries, he steps back from the wall, a large grin on his scarred muzzle and his tail wagging.";
					say "     'You'll make a good pack-mate to run with, or will soon at least.'";
					say "     With that, he turns and simply walks away, leaving you leaning up against the wall while you feel the male shepherd's blessing and infection slowly spreading.";
					now gsd_var is 0;
					now gsd_male is true;
					[
					gsd_set_male;
					]
				else:			[female/herm]
					say "     'Next time, don't fight me, bitch! Know your place!'[line break]     With a growl, he pulls you away from the wall and pushes you down onto all fours. He mouths at your neck and shoulder, making sure you can feel the threat of his fangs if you try and fight again, his hot breath washing over your skin. But his mood has shifted; having bested you, he now seems eager to enjoy his new toy.";
			else:							[submitted right away]
				say "     The German shepherd wuffs and eagerly approaches as you signal your submission. His arms slip around you as he hugs you close, licking at your face, nuzzling at your neck, his paw-like hands sliding down, rubbing and squeezing provocatively.";
				say "     'Ooooh, such a good little bitch. It's much nicer if you just say yes, isn't it? So much more enjoyable for both of us.'";
				now gsd_slut is true;
				if Player is not female and "Male Preferred" is not listed in feats of Player:	[male/neuter and player can become female]
					say "     He gives an extra little sniff, taking in your [if Player is male]male [end if]scent, then chuckles as he licks your cheek.";
					say "     'Mmm, bitch in spirit and mind, but not in body, it seems. Don't worry, I can help solve that for you, make you into what you really are.'";
					say "     He slowly breaks off the hug, turning you around and pushing your shoulders down to make you get on all fours, then moves behind you.";
					now gsd_var is 2;
				else if Player is not female and "Male Preferred" is listed in feats of Player: [male/neuter and player can't become female]
					say "     He gives an extra little sniff, taking in your [if Player is male]male [end if]scent, then chuckles as he licks your cheek.";
					say "     'No juicy pussy for your alpha, but I think I'll have fun making you my bitch all the same. You'll be begging me to fuck your ass in the end.' That said, he presses his muzzle against your lips, canine tongue pressing in as he forces the kiss, paws slipping around to squeeze your rump. Then, satisfied that the 'foreplay' has been accomplished, he breaks the embrace and turns you around, gently but firmly pushing you down onto all fours.";
					now gsd_var is 2;
				else:	[females/herms]
					say "     He presses his muzzle against your lips, canine tongue pressing in as he forces the kiss, paws slipping around to squeeze your rump. Then, satisfied that the 'foreplay' has been accomplished, he breaks the embrace and turns you around, gently but firmly pushing you down onto all fours.";
		else:							[player fought and lost]
			if gsd_male is true:
				say "     The big male pants and grins down at you as you slump to the ground, defeated.";
				say "     'And that is why I'm Alpha, pup!'";
				say "     He then sits down next to you, nuzzling at your neck and hugging you lightly.";
				say "     'But you're a good boy, learn to be a strong pack member.'";
				say "     Rumbling softly, he laps at your injuries, stemming any bleeding and once again causing the telltale burning sensation. The licking is soothing and you relax, enjoying receiving such kindness again from the alpha dog. Then, happy he's done his duty to his developing pack mate, he pads off, leaving you alone to learn and grow stronger.";
				now gsd_var is 0;
				now gsd_male is true;
				[
				gsd_set_male;
				]
			else:
				say "     The German shepherd howls in triumph while standing over your beaten form. Though your vision is blurry, you can see his sheath starting to thicken and the tip of the monster's shaft poking free of the protective furry tube, pre dribbling from it. With an eager growl, he lowers his head and moves to deal with his new victim, rolling you onto your belly, then lifting your hips so your rear is up and presented to him.";
		if gsd_var > 0:
			say "[gsd_special_lsex_00]";
		now gsd_attack is false;
		if gsd_pet >= 10:
			now gsd_pet is 2; [now on player-losing cycle]
		else if gsd_pet < 4:
			increase gsd_pet by 1;
			if gsd_pet is 4:
				say "     Having repeatedly [if HP of Player > 0]accepted your place beneath[else]been put in your place by[end if] this German shepherd, some part of you has come to accept that role. Whenever you meet again, he will be your alpha and you will [bold type]no longer be able to resist him[roman type].";


to say gsd_special_lsex_00:
	say "     Unable to look back, all you can hear is the Shepherd's eager panting while he maneuvers you into the position he wants, leathery paw pads running over your [bodytype of Player] form as he checks what he has to enjoy. You then feel a warm weight on your back and a wet slickness press against you from behind, the pointed canine tip pressing against your body, starting to slide in."; [ Now do a gender check. ]
	if Player is female: [ Female Triggers ]
		if Cunt Depth of Player < 6: [ Cunt is too short, can't tie.]
			say "     You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begin humping in earnest. His impossibly stiff length jabs and grinds into your cervix with every thrust, and his rapidly swelling and engorging knot rubs against your sex's lips. Above you, the canine whines happily, 'S-sooo tight, soooo GNNNGH!'";
			say "     He stiffens, then howls as you feel his shaft twitch and surge, a little of his infected, potent dog cum splattering inside your womb, though most of it ends up leaking out and running down your thighs. The large male holds you there for a minute or so, whining happily and nuzzling at your ears. Then, without warning, he stands and pulls free, pushing you down so that you splatter into the slimy puddle of his seed as he walks off, his still-engorged cock squirting every few seconds.";
			if a random number from 1 to 2 is 2, say "[impregchance]"; [Low chance w/tight fit]
		else if Cunt Depth of Player > 5:
			if Cunt Tightness of Player > 6: [ Overly large width cunt, can fuck with a fully swollen knot.]
				say "     You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begin humping in earnest. He eagerly grinds his hips into you, your [cunt size desc of Player] lips easily accepting the canine cock, and you feel a ticklish, itchy sensation, your sex so large the dog's sheath pushes up and into you. 'Oh, what a slut you are. How many males have sunk themselves into you, hm?[if gsd_special is false] I should have the whole pack use you without pause.'[else]'[end if]";
				say "     Grunting and growling, he thrusts faster as he approaches his peak, his knot swelling inside you, but he doesn't slow down. Gritting his teeth and growling through them as he begins to cum into you, he continues to piston and thrust, popping his knotted cock in and out of your sex and making loud, lewd noises as he stimulates you to exhaustion.";
				say "     After about twenty minutes, he slumps over your prone, unresponsive form, pulls himself free from your overly loose cunt and sighs happily as he pads off down a side alley.[impregchance]"; [ regular chance to impreg w/loose pussy]
			else: [ any cunt that < knot-fuck size but is deep enough to tie.]
				say "     You feel him make one or two tentative thrusts into your sex, just to make sure he's inside you before you hear him growl and begin humping in earnest. He eagerly grinds his hips into your passage until it stretches to accept the canine's cock, his sheath bunching up and rubbing against your outer lips each time he drives his canine shaft inside you. The German shepherd begins to hurry his thrusts, panting heavily in your ear as you feel a bulge at the base of his length start to swell and grow, but before you can even try and do anything about it, he jerks and drives himself as deep as he possibly can inside you, howling out his pleasure as his knot rapidly swells with his climax. His knot locking his length inside you as the cock twitches and pulses, the sated canine slumps atop you while rumbling happily and nuzzling and licking at his newest bitch.";
				say "     After about half an hour, he softens enough to pull free, the slimy mix of your own cum and his splattering and drooling onto the floor. The German shepherd casually walks off, pleased with himself as you rise to your knees, arms wrapping around your slightly bulging stomach as a few drips run down your legs. The realization hits that most of his seed will remain deep within you, forced into your womb by the pressure of being trapped behind his knot.[impregchance]";
				if a random chance of 1 in 2 succeeds, say "[impregchance]"; [Increased chance w/knot in perfect fit]
	else: [ Male Triggers ]
		say "     You feel him make one or two tentative thrusts into your arse, just to make sure he's inside you before you hear him growl and begin humping in earnest, eagerly grinding his hips into you, that rigid dog cock driving easily into your rear. He doesn't waste any further time, building up his pace to an energetic fucking, the small bump of his knot sliding through your ring and starting to swell as you feel his sheath bunch up and rub over the sensitive skin. With a soft growl, he drives in one last time, panting heavily in your ear as you feel his shaft swell, the knot at its base doubling, then tripling in size, tying you beneath the possessive male and letting you feel each spurt of his tainted canine seed.[mimpregchance]";
		if gsd_var is 2:
			if "Male Preferred" is listed in feats of Player:
				say "     The dog rumbles, lapping affectionately at your cheek as the tainted seed floods and spreads in your rear. 'Such a good bitch...' He turns your head with one paw-like hand and presses his tongue forcefully into your mouth, kissing passionately as he shifts and tugs on the tie, shifting his knot inside you, letting some of his seed dribble and ooze out over your balls, starting a strange itching sensation. He continues to ladle on the affection, nuzzling and licking till his knot goes down and he can pull free. Once he can, he does so suddenly enough to make you yelp in pain, smirking and swatting your rear before walking off.";
			else:
				say "     The dog rumbles, lapping affectionately at your cheek as the tainted seed floods and spreads in your rear. 'Such a good bitch... How about we start making you a proper girl?' He turns your head with one paw-like hand and presses his tongue forcefully into your mouth, kissing passionately as he shifts and tugs on the tie, shifting his knot inside you, letting some of his seed dribble and ooze out over your balls, starting a strange itching sensation. He continues to ladle on the affection, nuzzling and licking till his knot goes down and he can pull free. Once he can, he does so suddenly enough to make you yelp in pain, smirking and swatting your rear before walking off. 'Be a good girl now. I'll be back when you're ready to carry my pups like a proper bitch should.'";
			follow the sex change rule; [ Trigger infection NOW - sex ]
		else:
			say "     Panting and sprawled on your back, the big male doesn't even bother to support his own weight as he shifts about while waiting impatiently for his knot to go down. As soon as he is able to, he pulls himself free, knot popping wetly from your rear and causing you to yelp in pain as you collapse on the ground.";
			say "     'Next time, submit to your elder without me having to beat you, bitch,' he calls over his shoulder as he vanishes into a dark, dingy alleyway.";

[
To gsd_set_male:
	choose row MonsterID in Table of Random Critters;
	now sex entry is "Male";
	now Nipple Count entry is 2;

To gsd_unset_male:
	choose row MonsterID in Table of Random Critters;
	now sex entry is "Female";
	now Nipple Count entry is 8;
]

Section 3 - Player Victory

to say beatthegsd:
	if zephyrtask is 2, increase zephyrpests by 1;
	now gsd_attack is false; [Encounter over, reset for the next time!]
	choose row MonsterID in Table of Random Critters;
	if gsd_special is false:
		if Player is not neuter:
			say "[gsd_generic_vsex_00]";
		else:
			say "     As the German shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten. You grab the defeated canine by the scruff of his neck, you slam him to the ground. Already quite worn from the battle, all it takes is a good, solid punch to knock his lights out. He releases a soft groan and passes out, leaving you free to go on your way.";
	else if gsd_pet is 11:
		now gsd_fled is false; [player did not flee]
		say "[gsd_special_final_00]";
	else:
		now gsd_fled is false; [player did not flee]
		say "[gsd_special_vsex_00]";
		if gsd_pet < 10:
			now gsd_pet is 10; [now on player-winning cycle]
		else:
			increase gsd_pet by 1;


[ - Generic Player Victory Scenes - ]

to say gsd_generic_vsex_00:
	project Figure of GermanShepherd_hard_icon;
	say "     As the German shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten. You can't help but feel a desire to turn the tables on this over-confident dog.";
	say "     [bold type]What will you do with the German shepherd?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 1;
		now description entry is "Screw the dog";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 3;
		now description entry is "Make him suck you off";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Suck him off";
		now sortorder entry is 3;
		now description entry is "Give him a happy ending";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Ride his dick";
		now sortorder entry is 3;
		now description entry is "Spear your ass on that dick";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride him";
		now sortorder entry is 2;
		now description entry is "Pin him down and ride his cock";
	[]
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 4;
		now description entry is "Make him eat you out";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Put his tongue to work on your ass";
	now sortorder entry is 5;
	now description entry is "Make him eat your ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chow down on his ass";
	now sortorder entry is 6;
	now description entry is "Eat his ass";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk him for some German shepherd cum";
	now sortorder entry is 0;
	now description entry is "Collect a bottle of cum from him";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Knock him out[as]0[end link][line break]";
	now calcnumber is -1;
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck him":
					say "[gsd_generic_vsex_01]";
				else if nam is "Ride him":
					say "[gsd_generic_vsex_02]";
				else if nam is "Fellatio":
					say "[gsd_generic_vsex_03]";
				else if nam is "Cunnilingus":
					say "[gsd_generic_vsex_04]";
				else if nam is "Milk him for some German shepherd cum":
					say "[gsd_generic_vsex_05]";
				else if nam is "Suck him off":
					say "[gsd_generic_vsex_06]";
				else if nam is "Ride his dick":
					say "[gsd_generic_vsex_07]";
				else if nam is "Put his tongue to work on your ass":
					say "[gsd_generic_vsex_08]";
				else if nam is "Chow down on his ass":
					say "[gsd_generic_vsex_09]";
		else if calcnumber is 0:
			say "Knock him out: Shall you knock him out so he'll leave you in peace?";
			if Player consents:
				say "     Grabbing the defeated canine by the scruff of his neck, you slam him to the ground. Already quite worn from the battle, all it takes is a good, solid punch to knock his lights out. He releases a soft groan and passes out, leaving you free to go on your way.";
				now sextablerun is 1;

to say gsd_generic_vsex_01:
	say "     The sight of the submissively cowering German shepherd makes your shaft thicken and you decide to show him rather physically not to mess with you. Sensing your intent, the dog pads back on all fours a few steps, but also raises his tail. Eager to taste the fruits of your victory, you [SelfStripCrotch], then continue forward. Reaching out, you grab the defeated dog by the ass and his ears perk up a little. As you go on to stroke over his furred ass, enjoying the feeling of touching his tick, soft coat, he actually seems to smile a bit. The German shepherd braces himself and raises his rear in offering as he looks back over his shoulder and whines a little.";
	say "     Presented with such a tempting offer, you can't hold back. Leaning forward behind him, you rub and squeeze his rear before ";
	if Player is sheathed:
		say "dropping on all fours as well. The motion suits your sheath-enclosed member, which slides through the soft tube of furred flesh, triggering a rush of pleasure as you mount the German shepherd, pressing your dribbling tip against the dog's willing star. Then, with no preamble, you thrust and bury yourself into the waiting male, startling a yelp out of him before he groans, pushing back as your slick shaft spears in, spreading his tailhole. You wrap your arms around his chest and begin to thrust, panting loudly as the toned male dog's inner walls envelop your [Cock of Player] shaft and squeeze it enticingly. Lustful grunts rumble though his chest and you can feel them as you lay on your now submissive doggy's back, humping your hips against his rear. He may have had different plans originally, but no one can say that this canine isn't enjoying your treatment quite a bit.";
	else:
		say "crouching down. Taking hold of the base of your already hard [Cock of Player] shaft and rubbing the pre-dribbling tip against him, you're drawn in by the sight of his tailstar quivering in anticipation of what will come next. With a grin on your face, you then push in, your breath coming a little quicker as his hole stretches around your slick shaft. Gripping the sides of his hips, you push further and further into the now cooperative German shepherd, reveling in the lustful groan escaping his muzzle as you bottom out and grind your crotch against his buttocks. As you begin to thrust, pistoning in and out of the proud male, you can feel him clench around you, then even push back onto your shaft. He may have had different plans originally, but no one can say that this canine isn't enjoying your treatment quite a bit.";
	WaitLineBreak;
	if Player is knotted:
		say "     Humping a sexy male in the literal doggy-style position somehow seems to resonate very well with your [CockName of Player in lower case] manhood, and you can feel the bulge at its base start to throb. Popping it past the ring of your canine bottom makes each thrust all the more enjoyable for both of you, with him quickly picking up on the fact that he's about to be bred 'properly' by a cock not too unlike his own. Hammering into the panting dog, you feel the your climax rush towards you faster than you'd think was possible, startling you into a loud howl of pure lust as you feel your knot swell and bulge, locking you within the canine, as your shaft starts to throb and pulse... a long, continual climax, for as long as you remain swollen and tied to the subby male. After the first two or three blasts of your seed into him, you feel the German shepherd's ass squeeze tight around your member rhythmically - he's coming, driven over the edge by the sensations of being bred like a male bitch!";
		say "     After you don't know (or really care) how long of shuddering, wanton bliss and holding on to the warm form of the canine beneath you, the swollen bulge of your knot eventually starts to soften inside your German shepherd sub. Resting inside him with your manhood buried balls-deep, with the soft fur of his coat against your skin and the warm, squishy feeling of a well-bred hole around your shaft, you almost want to stay like this forever. The German shepherd doesn't seem to mind either, relaxedly standing on all fours and with his bent-aside tail twitching a bit. No doubt, he'd be wagging it in a show of pleasure if you weren't pinning it between you. Sadly though, there are the concerns of surviving in the chaos of the city to consider, so after a little longer, you let out a soft sigh and pull free with a wet slurp. The German shepherd submissively lowers himself to the ground on all fours, offering a good view of his cum-smeared tail hole. Content and satisfied, he turns his head to smile at you, then lies on his side to rest and recover while you continue on your way.";
	else:
		say "     Humping the sexy male in a half-standing crouch that allows you to really put in some force into each thrust, you really enjoy making use of your former opponent, reveling in the moans of submissive pleasure that escape his muzzle again and again. As you fuck the panting dog wildly, the sensation of an oncoming climax rushes towards you faster than you'd think was possible, startling you into a lustful shout as you feel your erection throb and pulse, your seed erupting into the German shepherd's insides in thick blasts. While filling him with your rich cum, you suddenly feel the German shepherd's ass squeeze tight around your member rhythmically - he's coming, driven over the edge by the sensations of being bred like a male bitch! The flexing of his muscles around your [Cock of Player] shaft prolongs your orgasm quite nicely, and you enjoy it to its utmost before eventually pulling free of his ass with a wet slurp. The German shepherd submissively lowers himself to the ground on all fours, offering a good view of his cum-smeared tail hole. Content and satisfied, he turns his head to smile at you, then lies on his side to rest and recover while you continue on your way.";
	CreatureSexAftermath "German Shepherd Male" receives "AssFuck" from "Player";

to say gsd_generic_vsex_02:
	say "     You feel a pulse of desire in your loins and decide to sate your lusts using the defeated canine. You growl and charge him, pushing him down onto his back to get his cock into your [run paragraph on]";
	if CockName of Player is "German Shepherd Male" or BodyName of Player is "German Shepherd Male":
		say "canine twat. You pin him down and grind your wet slit over his sheath, dribbling your juices over it. The scent of your arousal quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness. As you shift your hips and ease your way down his cock, you nuzzle under his neck and start nipping at his throat with low growls. The beaten dog tilts his head back in submission, baring his throat to you.";
		say "     Taking [if Cunt Depth of Player > 5]the full length of his cock[else]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it. You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole. You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready. Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body. Taking his throat in your mouth, you growl firmly and pound yourself on his cock, [if Cunt Depth of Player > 5]popping his swollen knot into you. Tied with you, the[else]grinding his tip against your cervix and his knot against your pussy's lips. The[end if] shepherd cums hard, shooting his canine seed into your womb. [if Cunt Depth of Player > 5 and Cunt Tightness of Player < 5]With his knot locked in you, you are left tied to the dog. He bathes your face in doggy kisses while you wait for the knot to come down. Once it's finally softened enough, you pop it out[else if Cunt Depth of Player > 5 and Cunt Tightness of Player > 4]Once his cock stops pulsing his seed into you, you pop your wide cunt off his knot[else]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb. You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out. You then grab your gear and head off, leaving him to recover.";
	else:
		say "twat. You pin him down and grind your wet slit over his sheath, dribbling your juices over it. This quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness. As you shift your hips and ease your way down his cock, you keep your hands on his shoulders to hold him down. The beaten dog tilts his head back in submission, baring his throat to you with his ears lowered.";
		say "     Taking [if Cunt Depth of Player > 5]the full length of his cock[else]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it. You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole. You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready. Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body. Clenching your fingers in his fur, you growl firmly and pound yourself on his cock, [if Cunt Depth of Player > 5]popping his swollen knot into you. Tied with you, the[else]grinding his tip against your cervix and his knot against your pussy's lips. The[end if] shepherd cums hard, shooting his canine seed into your womb. [if Cunt Depth of Player > 5 and Cunt Tightness of Player < 5]With his knot locked in you, you are left tied to the dog. He bathes your face in doggy kisses while you wait for the knot to come down. Once it's finally softened enough, you pop it out[else if Cunt Depth of Player > 5 and Cunt Tightness of Player > 4]Once his cock stops pulsing his seed into you, you pop your wide cunt off his knot[else]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb. You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out. You then grab your gear and head off, leaving him to recover.";
	CreatureSexAftermath "Player" receives "PussyFuck" from "German Shepherd Male";

to say gsd_generic_vsex_03:
	say "     The German shepherd lowers his head like a cowed dog. The thrill of the struggle with the canine has gotten you excited, giving you an erection you want satisfied. Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him. He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Get to licking, dog,' you growl to him. With that, you pull his head between your legs, pressing his muzzle to your loins. Presented with your [if CockName of Player is listed in infections of Caninelist]canine [else][Cock of Player] [end if]cock, he relents easily enough and start nuzzling and licking at it. Keeping your grip on him, he keeps going at it with increasing vigor, soon his doggy tongue is slobbering over your throbbing shaft and balls, lavishing attention on them.";
	say "     After leaking pre all across his muzzle, you decide it's time for the main event and guide his maw down over your cock. As he licks and sucks on you, you thrust into his long, canine muzzle until finally you cum, pumping your hot seed into his mouth and down his throat. His ears dip, but he laps it all from your cock and swallows it down. When he's done cleaning you, you pull out and pat his head before sending him on his way, tail wagging happily after the tasty treat he's received.";
	CreatureSexAftermath "German Shepherd Male" receives "OralCock" from "Player";

to say gsd_generic_vsex_04:
	say "     The German shepherd lowers his head like a cowed dog. The thrill of the struggle with the canine has gotten you excited, getting your cunt hot and wet. Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him. He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Get to licking, dog,' you growl to him. With that, you pull his head between your legs, pressing his muzzle to your loins. Presented with your [if CockName of Player is listed in infections of Caninelist]canine [else]wet [end if]pussy, he relents easily enough and starts licking at it. Keeping your grip on him, he keeps going at it with increasing vigor, soon his doggy tongue is slobbering over your sensitive folds, lavishing attention on them[if Player is male and CockName of Player is listed in infections of InternalCockList]while your dribbling cock[smn] rest[smv] upon his muzzle[else if Player is male]while your dribbling cock[smn] and balls rest upon his muzzle.";
	say "     Longing for more, you press his muzzle in close and he slips his tongue into your cunt, diving up inside you to lap at your flowing juices. His long, doggy tongue dives into you again and again, making you moan with pleasure until finally you cum hard, soaking his muzzle in your juices. He laps up as much as he can and licks your thighs and pussy clean as your climax ebbs. When he's done cleaning you, you push his muzzle back and pat his head before sending him on his way, tail wagging happily after the tasty treat he's received.";
	CreatureSexAftermath "German Shepherd Male" receives "OralPussy" from "Player";

to say gsd_generic_vsex_05: [milking]
	say "     After pulling an empty bottle out of your pack and setting it down where you can quickly reach it, you decide to take what you want from the defeated canine instead of letting him force it upon you. Slamming his shoulders down firmly, you tell the muscular man to stay, like the dog he is, then reach for his crotch and start rubbing it. As his sheath starts to fill from your touch, the German shepherd's resistance ebbs off and soon his doggy cock emerges, with your opponent beginning to pant. He still struggles a little bit, wanting to be dominant and on top, but you growl at him until his ears dip. Only then do you take the hand that was pressing down on his chest away, using it to caress his balls instead. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the rapid beat of his heart.";
	say "     You stroke and fondle your canine opponent a bit, grinning as you push the groaning captive closer and closer to orgasm. Teasing him by saying that he should just be a good little pet dog starts the German shepherd grumbling a bit - right until you begin squeezing tighter and give his dick a long stroke up and down and he pants as needily as a bitch in heat. With a chuckle, you continue to caress his manhood, and when he finally can't hold back any more, you quickly snatch up your prepared bottle and hold it to his cock, successfully catching spurt after spurt of milky white cum in it. He's got a respectable output and fills a little bit less than half the bottle before he sinks back in exhaustion, panting loudly. Looks like you've finished off the panting dog for now, so you cap the bottle of cum and pack it away. You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out. You then grab your gear and head off, leaving him to recover.";
	ItemGain german shepherd male cum by 1;

to say gsd_generic_vsex_06: [Suck him off]
	say "     The canine male before you is whining in utter submission. His tongue is out as he pants and prepares for whatever you desire for him. Having decided on what you want quite easily, you get his legs spread and kneel between them. His whines die down as he cocks his head, his ear perking as he watches you. He then lets out a grunt of surprise when you press your nose into his crotch. You breathe in deep, sucking in all the smells on his sheathe and balls, all the musk, all the scents of sex, and the current aroma of need. It's intoxicating. It drives you to hold your face right in the space between his balls and sheathe, right where his musk is most pungent. It is at that point he seems to get more involved in your sudden intent. The noises coming from him are now filled with anticipation, rather than concern.";
	say "     When his red rocket begins to poke from his sheathe, you feel his hand gripping at your head. His canine-like fingers take hold of you and push you into his crotch more firmly. There's no resistance on your part, nothing but simple joy at him taking the hint. You're eager to continue, and find no complaint from him as your tongue darts from your maw, lapping at his testicles as you pull one of his balls into your mouth. His needy pants tell you all you need to know, and you're even rewarded with the sight of his red rocket surging from his sheathe. The entire length glistens, but the tip draws the entirety of your lustful attentions. Tapered tips are great for taking tight holes, but they also show off the flow of fluids the most. The precum dribbles out and slides down the entire length more quickly than any other type of cock, and it draws you into a trance of need. You have a need for those fluids, and as you lap closer to the base of the German shepherd's cock, he begins to help you along.";
	WaitLineBreak;
	say "     Soon, with the efforts of both you and the canine, your tongue is tracing up the bottom of the red length. You can taste the bitter, salty and sweet seed dribbling from his cock as you go. More flavors even burst along your tongue as you get closer to the tip of that exquisite length. It's only when he's dragged you to the very tip of the leaking rod that you get a full taste of the earthy flavor. As soon as you even start to get a taste, he shoves his entire cock into your mouth. The erection fills your maw with all sorts of flavors, of those he's fucked, and those who've taken advantage of this male. Explosions of all the tastes of others, and the taste of the shepherd, draws out a long, languid moan from you. Even with your mouth so thoroughly stuffed, the sound fills the area. Once the length begins to tickle at your throat, your moans grow even louder. When the length goes deeper, you can do nothing but keen and focus on each breath you can get.";
	say "     As you become this male's flesh light, your mind is filled with nothing but the musk flowing from his crotch. It keeps you nice and submissive. You can practically feel the smirk from the shepherd too, as he drags you up to the tip of his cock, before slamming you right back down to the base. You then start to feel the knot against your lips when he slams you down, the growing flesh giving you hints of your future. There's nothing you can do, or even want to do, as he uses you like a flesh light. You're nothing but a toy, a nice, wet hole to pound and use. It is when that knot grows large enough, and is forced from the sheathe, that the shepherd lets out a moan of his own. That moan signals what's next as you feel the knot squeeze between your lips. With no other option, you focus on breathing through your nose. In the next instant, the canine slams the knot past your lips, tying to your maw.";
	WaitLineBreak;
	say "     The yips that follow fill the area, and the cock buried down your throat bulges out with flowing seed. It's when that seed reaches the tip that you squeeze your eyes shut. The cum is hot against the back of your throat, the force of it firing from the length only making it harder to swallow. You manage, somehow, to gobble down each shot of fiery cum. Six, seven, eight, ten, twenty, the cum keeps flowing, keeps firing. It's only when he reaches twenty shots of virility that it even slows down in force. When the shots reach thirty, the flow becomes a dribble, and when that continues for a solid minute, the seed finally stops. You gulped it all down, and even if you're not sure how, a sense of glowing pride fills you: or maybe that's just lust. Either way, you feel quite good in that moment, filled to the brim with musky seed. The knot is still buried in your mouth, but you manage to breathe quite well through your nose, which only serves to drag even more musky scents into your mind. That serves to give a nice fog to your thoughts, leaving you with nothing but the thorough need to stay knotted to this male's crotch.";
	say "     The canine seems to have other thoughts, and he quickly begins to hump at your face, trying to eke out even more orgasms. You don't care, and can no longer focus on anything but this man's needs. You're not exactly blacked out, but you stay loose and under his control. You do nothing but keep yourself well positioned for his needs. With each orgasm from him, with each gallon of seed down your gut, your mind grows fuzzier. Your need to be this man's bitch grows stronger, and after what is no doubt this canine's tenth orgasm, your mind falls entirely mired in lust. The mire stays for a good while, your stomach stretching with more cum as the canine orgasms more and more. You don't even notice when he eventually pops out of your mouth, caking your face in his last orgasm, leaving you to doze out in the street.";
	WaitLineBreak;
	say "     Nothing, and no one, else comes along to take advantage of your stupor, and you're able to eventually gather your things and move on. You still occasionally lap at the cum coating your lips and face, moaning at the flavor and feeling of being such a dirty bitch.";
	CreatureSexAftermath "Player" receives "OralCock" from "German Shepherd Male";

to say gsd_generic_vsex_07: [Ride his dick]
	say "     You quickly think of just the way to use this able bodied male before you, and you know he'll enjoy it just as much as you. With little fanfare, you grope and rub at his sheathe with both hands, getting this canine excited at the prospect of what's no doubt next. You keep up the rubbing, stroking and finger probing along his sheathe for a good few minutes. In that time, his erection grows fully, giving a nice sight of solid canine meat. The shepherd's cock leaks copious fluids, and thanks to this, and the tapered tip, you're able to feel safe in taking the length inside you. With that realization, and confidence through lust, you position your ass right above his length. Kneeling over the canine leaves the tip poking right at your anus, and as you lean back, it slides in with ease. Once half of it is inside, you stop. You give an eager grin at the male under you as his eyes glare in desperation. He gives excited growls, annoyed growls, and growls somewhere in-between. It's not until you lean forward and place your lips against his muzzle that those sounds stop.";
	say "     You start to make out with the male, at least as best as you can, kissing at his muzzle as his tongue tries to penetrate your lips. It's during all this that you push your ass the rest of the way down his throbbing, warm cock. When your ass rests on his hips, his tongue darts into your moaning mouth, giving him the proper distraction to grab at your head and hold you to his muzzle. You don't care, this specimen before presses every button you have, and giving him a small amount of control will only add to the pleasure. His hips soon start thrusting upwards, grinding his sheathe into you, driving muffled moans from your mouth. Only when you lift your ass up does the true fucking begin, giving him more than enough room to begin pounding his hips into you. It's awkward and disjointed at first, but as he grows used to this position, the humping gets into a steady rhythm. As he gets rougher, more consistent in his fucking, your moans get louder and more strained.";
	WaitLineBreak;
	say "     You may have started out this little venture in control, in dominance, but the shepherd has ripped all illusions of that away. His tongue fucking of your maw, and his anal pillaging, thoroughly leaves you deprived of all sense. You're not able to think of anything other than canine tongues and cocks. There's little to do for you to get control back, and there's little you'd want to do. However, in order to eke out a little bit more pleasure, you begin to slam your hips back into each of his thrusts, driving his length even further into you. It certainly makes your cock leak against his stomach, and if the steady increase in warmth inside you says anything, it's that he's leaking even more as well. All of his slick seed inside you makes the thrusting smoother, more lubricated. It fills the area with the sounds of wet slurping and slapping. If anything or anyone is nearby, they know exactly what is happening.";
	say "     The constant back and forth of both hips drives you closer to orgasm, drives your cock to lurch out ever more precum. You simply ride the wave of pleasure as your balls pull up and your cock throbs. Moments later you're plastering the canine's stomach and chest in copious amounts of cum, leaving the area smelling even more of sex. However, even with your own orgasm, the shepherd doesn't even slow down. His knot begins to bump at your ass though, letting you know what's next as his humping grows more feverish. Your strength goes out, leaving you to collapse onto his cum covered body. However, he continues pounding into your ass from below, forcing that knot halfway in on each thrust. Then, he forces the knot three-quarters of the way in, then four-fifths, and finally it pops right into your rectum. One of the male's legs pounds against the ground as you feel both his knot and cock throb. You're then filled with sudden warmth. Your core heats up more and more as the seconds tick by and as his balls empty inside you.";
	WaitLineBreak;
	say "     There's nothing to be done but wait for his need to fill you to the brim, and you wouldn't dare fight the chance to experience it anyway. It feels like several minutes tick by before his orgasm even slows down, and many more minutes tick by after that before his knot even feels like it has slightly more give. However, it's not even close to the end for you, as his hips go right back to grinding against you when you think his orgasm finally stops. It's at this point that you lose all sense of time. Four, five, eight, ten orgasms wrack through you as his own do the same. You're delirious once you reach a dozen climaxes, and there's no keeping track of anything after that. The next thing you know, you're lying on the ground with warm fluids dribbling from your ass and caking your legs. There's no longer a furred body under you, or a throbbing length in your ass, and you're simply left with the feeling of seed drizzling out of your stretched hole.";
	say "     Whether anything took advantage of you after the canine left, you don't know, but you are at least aware enough that you need to get moving. Gathering up your things, you quickly get back to exploring the ruins around you.";
	CreatureSexAftermath "Player" receives "AssFuck" from "German Shepherd Male";
	if a random chance of 1 in 5 succeeds:
		CreatureSexAftermath "Player" receives "AssFuck" from "Minotaur";
	if a random chance of 1 in 10 succeeds:
		CreatureSexAftermath "Player" receives "AssFuck" from "German Shepherd Male";
		CreatureSexAftermath "Player" receives "AssFuck" from "Minotaur";

to say gsd_generic_vsex_08: [Force him to eat your ass]
	say "     As soon as the male before you is sprawled out in submission, you get a brilliant idea. His chest is solid, his stomach and torso drool worthy, so why not do something that gives you a perfect seat to oggle him? His muzzle points to the sky as he pants, his tongue lolling from his mouth, and so your naked ass is soon hovering over his face. All that you get is a sudden whine as you press your hole against his muzzle. The canine is hestitant, but you give him little choice, grinding your ass against him as you feel his tongue moving into position. He doesn't quite get to fully pleasing you with it immediately, but as you glare down at his torso and remain seated, he comes to realize that he has no choice. That slimy appendage is then quickly lapping over your hole as you move to kneel, giving his tongue just enough space to play along your ass.";
	say "     His saliva soon paints every inch of your ass crack, giving you a sense of ownership as the canine is forced to expend himself for only your pleasure. His supine position works to your advantage as you grip at his chest, grabbing and tweaking his nipples. He whines at each twist, at each abuse of his sensitive bits, but you know he likes it. Each time you do it, his cock lurches and dribbles even more pre. There's no doubt that he finds submission just as arousing as domination. So you continue to grind backwards into his mouth, letting his tongue dig deeper and deeper into your hole. There's nothing like an eager mouth and a long tongue. You're sure even he knows this, and that this is common for at least some of his kind. Still, the canine can only do so much without going deeper, and soon he jams his long appendage straight into you.";
	WaitLineBreak;
	say "     You let out a loud moan, probably one of your loudest yet, and grind back even harder against his tongue, fucking yourself on it. It's almost like getting fucked, but somehow better. That dexterous tongue digs into places in ways a cock never could. You're going mad with pleasure as that slimy appendage dances over your [if player is male]prostate[else]insides[end if]. There's not enough energy left for you to control things, and soon you collapse onto his torso, your head right next to his cock. His own head tilts up to get at your ass some more. He is hooked, and you happily squeeze a hand around the base of his knot, rewarding him with pleasure as your own orgasm shoots through you. Soon you [if player is male]fire off shot after shot of cum, plastering the fur along the canine's stomach and lower chest[else]are squirming in ecstasy as your climax surges through you in a blast[end if].";
	say "     Your efforts at triggering his knot go rewarded as well, with his own seed firing into the air and falling back down on you. It feels like the pitter patter of a heavy storm, a storm of cum. You're marked, and you love it; You grow to love it even more as he works to drag your orgasm out. His tongue still plays over your insides, giving you mind shattering pleasure. He doesn't stop chowing down until that canine cock begins to recede into its sheathe. The canine leans his head back and gives your ass a slap with an open paw. You both then just stay pressed against each other, your head near his cock as his hot breath wafts over your ass. You're sure you will remember this for awhile, and that he no doubt will too. Maybe you've given him something new to think about as well.";
	WaitLineBreak;
	say "     You both eventually pry apart, heading off in your own directions. He seems to lick his lips as he watches you depart, a grin then spreading across your face. It serves as yet another reminder of this little adventure.";
	CreatureSexAftermath "Player" receives "Other" from "German Shepherd Male";

to say gsd_generic_vsex_09: [Chow down on his hole]
	say "     Looking over your defeated foe gives you all sorts of ideas. However, as your eyes trail down his chiseled form, you notice his sculpted legs and thighs, which gives you true inspiration. That canine ass is no doubt just as perfect as every other part of this male, and so you work to flip your old enemy over, revealing his sculpted back and butt. You could've cum right there from that image, from the sight of that sculpted back, to that perfectly formed ass, and the ideas it fills you with. There's no waiting now, and so you spread the shepherd's legs, kneeling between them as the whining male stays still. He doesn't know what your plans are, even if he thinks he does, but you're sure you'll get no real complaints. You then grip his tail, moving it out of the way as you lower your face to his ass. All you smell is rich, manly musk, and need. That's all you need, and so you shove your face right between his cheeks.";
	say "     Your tongue is quick to get to work, lapping at that hole as you breathe in the sweet smell of this male's musk. He smells like a virile man, and you just love it. There's nothing else like that scent, and it spurs you on to dig your tongue even deeper. The wrinkled skin is tight at first, but it loosens in time, giving you more to work with. The flesh spreads open, relaxes, as you begin to poke your tongue at the dead center of this man's hole. You know what you want, and you will get it. That tongue of yours is quick to stab forward, spearing the canine's hole with an inch of your slippery appendage. There's nothing better than breaking open a clean hole with your tongue, and you can't wait to feel this male's needy moans through it. You don't have to wait long for those moans, either. They sound out and fill the area with such desperation, such need, and you're tempted to think this shepherd hasn't gotten any for days. This city wouldn't allow that, but it's quite flattering to know that you have a silver tongue.";
	WaitLineBreak;
	say "     You know he's close, you can feel the telltale twitching through his anus. So you take your own needs in hand, playing with yourself as you tongue fuck him with ever more vigor. There's nothing that'll stand between you and making this canine cum, and so you desperately apply every skill you have to get this musky male to his much deserved finish. The twitching grows ever more noticeable as you continue your efforts, and you know there's no stopping now, for either of you. Just as you approach your own orgasm, so does he. His anus tightens around your tongue and grabs hold, keeping you from pulling it out. So you simply wiggle it around, dragging his copious orgasm out even longer. Your own climax shoots through you, forcing you to clinch your eyes shut as your tongue spasms inside this hunk of a canine.";
	say "     Soon there's a scent of stronger musk than before, a smell of cum, and the virility that comes with it. You then pull your tongue out of his hole, the muscle lax enough now, and simply rest your head on his ass. His tail is wagging lazily over your head, occasionally dusting over your face with its soft fur. That was a job well done, and one you'll enjoy the memories of. A big, muscled german shepherd was turned into a drooling man-toy, and it was all because of you. With a bit of a break, and some rest, you find your energy soon coming back, and you use it to stand once more. The canine below you is snoring like a baby, and so you take this chance to go your own way.";
	CreatureSexAftermath "German Shepherd Male" receives "Other" from "Player";

[ - Special Player Victory Scenes - ]

to say gsd_special_vsex_00:
	say "     As the scarred German shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten. You feel a desire to turn the tables on this arrogant male[if gsd_pet > 1] who's continued harassing you[end if] and make use of him as you'd see fit.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Dominate him (nonsexually)";
	now sortorder entry is 1;
	now description entry is "Grab the bad dog and teach him a lesson";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him";
		now sortorder entry is 2;
		now description entry is "Screw the dog to put him in his place";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride him";
		now sortorder entry is 3;
		now description entry is "Pin him down and use his pole as your toy";
	[]
	if player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fellatio";
		now sortorder entry is 4;
		now description entry is "make the defeated cur suck you off";
	[]
	if player is female:
		choose a blank row in table of fucking options;
		now title entry is "Cunnilingus";
		now sortorder entry is 5;
		now description entry is "Make the defeated cur eat you out";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Hand job";
	now sortorder entry is 6;
	now description entry is "Jerk him off to burn off some of his excess libido";
	[]
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]0 - Drive him off[as]0[end link][line break]";
	now calcnumber is -1;
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Dominate him (nonsexually)":
					say "[gsd_special_vdom_01]";
				else if nam is "Fuck him":
					say "[gsd_special_vsex_01]";
				else if nam is "Ride him":
					say "[gsd_special_vsex_02]";
				else if nam is "Fellatio":
					say "[gsd_special_vsex_03]";
				else if nam is "Cunnilingus":
					say "[gsd_special_vsex_04]";
				else if nam is "Hand job":
					say "[gsd_special_vsex_05]";
		else if calcnumber is 0:
			say "Drive him off: Shall you send the arrogant creature packing?";
			if Player consents:
				say "     Grabbing the defeated canine by the scruff of his neck, you pull him this way. You call him a 'Bad dog' and otherwise berate him for daring to oppose you. In the end, you push him to the ground hard with your foot and tell him to get out of your sight. He whimpers and slinks away, only daring a few angry barks at you once he's gotten a few dozen meters away.";
				now sextablerun is 1;

to say gsd_special_vdom_01:
	say "     At the sight of the submissively cowering German shepherd, you growl and grab him by the scruff of his neck. Standing over the canine, you give him a harsh shake, wrapping your free hand around his muzzle to force him to look into your eyes instead of down at the ground. In a domineering voice, you berate him for acting like a big and powerful man while he really is only a street dog who couldn't even last through a fight against you. He whimpers and tries to shrink back, but you keep your grip on him, never breaking the stare to hammer your words home. After a long, and for him quite uncomfortable moment, you then let go suddenly, with him falling to the ground. Telling the dog that this should be a lesson for him, you walk off after that, never looking back.";

to say gsd_special_vsex_01:
	say "     The sight of the submissively cowering German shepherd makes your shaft thicken[if gsd_male is true], and following the instincts he inflicted upon you[end if], you move to show that [if gsd_pet > 1]it is now you who is the Alpha[else]you're the one in charge[end if]. Sensing your intent, the dog gives a low growl and tries to back away, but you grab him by the scruff and keep him in place. Holding him on all fours soon gets him to respond, his tail lifting and flagging as he raises his ass in offering. Eager to taste the fruits of your victory, you [SelfStripCrotch]. He looks back over his shoulder and whines a little, feeling a need to submit to the stronger male.";
	say "     You can't hold back[if gsd_male is true], not with your pack-mate offering himself[else], not with such a tempting prize available[end if]. You rub and squeeze his rear before ";
	if Player is sheathed:
		say "dropping on all fours as well. The motion suits your sheath-enclosed member, which slides through the soft tube of furred flesh, triggering a rush of pleasure as you mount the German shepherd, pressing your dribbling tip against the dog's willing star. Then, with no preamble, you thrust and bury yourself into [if gsd_male is true]your waiting pack-mate[else]the waiting canine[end if], startling a yelp out of him before he groans, pushing back as your slick shaft spears in, spreading his tailhole. You wrap your arms around his chest and begin to thrust, panting loudly as the toned male dog's inner walls envelop your [Cock of Player] shaft and squeeze it enticingly. Lustful grunts rumble though his chest and you can feel them as you lay on your now submissive doggy's back, humping your hips against his rear. He may have had different plans originally, but no one can say that this canine isn't enjoying your treatment quite a bit.";
	else:
		say "crouching down behind him. Gripping the base of your already hard [Cock of Player] shaft and rubbing the pre-dribbling tip against him, you're drawn in by the sight of his tailstar quivering in anticipation of what will come next. With a grin on your face, you then push in, your breath coming a little quicker as his hole stretches around your slick shaft. Gripping the sides of his hips, you push further and further into the now cooperative German shepherd, reveling in the lustful groan escaping his muzzle as you bottom out and grind your crotch against his buttocks. As you begin to thrust, pistoning in and out of the proud male, you can feel him clench around you, then even push back onto your shaft. He may have had different plans originally, but no one can say that this canine isn't enjoying your treatment quite a bit.";
	WaitLineBreak;
	if Player is knotted:
		say "     Humping a sexy male in the literal doggy-style position somehow seems to resonate very well with your [CockName of Player in lower case] manhood, and you can feel the bulge at its base start to throb. Popping it past the ring of your canine bottom makes each thrust all the more enjoyable for both of you, with him quickly picking up on the fact that he's about to be bred 'properly' by a cock not too unlike his own. Hammering into the panting dog, you feel the your climax rush towards you faster than you'd think was possible, startling you into a loud howl of pure lust as you feel your knot swell and bulge, locking you within the canine, as your shaft starts to throb and pulse... a long, continual climax, for as long as you remain swollen and tied to the subby male. After the first two or three blasts of your seed into him, you feel the German shepherd's ass squeeze tight around your member rhythmically - he's coming, driven over the edge by the sensations of being bred like a male bitch!";
		say "     After you don't know (or really care) how long of shuddering, wanton bliss and holding on to the warm form of the canine beneath you, the swollen bulge of your knot eventually starts to soften inside your German shepherd sub. Resting inside him with your manhood buried balls-deep, with the soft fur of his coat against your skin and the warm, squishy feeling of a well-bred hole around your shaft, you almost want to stay like this forever. The German shepherd doesn't seem to mind either, relaxedly standing on all fours and with his bent-aside tail twitching a bit. No doubt, he'd be wagging it in a show of pleasure if you weren't pinning it between you. Sadly though, there are the concerns of surviving in the chaos of the city to consider, so after a little longer, you let out a soft sigh and pull free with a wet slurp. Your [if gsd_male is true]pack-mate[else]fallen foe[end if] submissively lowers himself to the ground on all fours, offering a good view of his cum-smeared tail hole. Content and satisfied, he turns his head to smile at you, then lies on his side to rest and recover while you continue on your way.";
	else:
		say "     Humping the sexy male in a half-standing crouch that allows you to really put in some force into each thrust, you really enjoy making use of your former opponent, reveling in the moans of submissive pleasure that escape his muzzle again and again. As you fuck the panting dog wildly, the sensation of an oncoming climax rushes towards you faster than you'd think was possible, startling you into a lustful shout as you feel your erection throb and pulse, your seed erupting into the German shepherd's insides in thick blasts. While filling him with your rich cum, you suddenly feel the German shepherd's ass squeeze tight around your member rhythmically - he's coming, driven over the edge by the sensations of being bred like a male bitch! The flexing of his muscles around your [Cock of Player] shaft prolongs your orgasm quite nicely, and you enjoy it to its utmost before eventually pulling free of his ass with a wet slurp. Your [if gsd_male is true]pack-mate[else]fallen foe[end if] submissively lowers himself to the ground on all fours, offering a good view of his cum-smeared tail hole. Content and satisfied, he turns his head to smile at you, then lies on his side to rest and recover while you continue on your way.";
	NPCSexAftermath Korvin receives "AssFuck" from Player;

to say gsd_special_vsex_02:
	say "     You feel a pulse of desire in your loins[if gsd_slut is true], still lusting for this strong male that once dominated you. You want his cock in you again, but this time you will take what you want instead of being taken[else], an eagerness to make use of this arrogant male instead of having him make use of you[end if]. You growl and charge him, pushing him down onto his back to get his cock into your [run paragraph on]";
	if CockName of Player is "German Shepherd Male" or BodyName of Player is "German Shepherd Male":
		say "canine twat on your own terms. You pin him down and grind your wet slit over his sheath, dribbling your juices over it. The scent of your arousal quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness. As you shift your hips and ease your way down his cock, you nuzzle under his neck and start nipping at his throat with low growls. The beaten dog tilts his head back in submission, baring his throat to you.";
		say "     Taking [if Cunt Depth of Player > 5]the full length of his cock[else]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it. You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole. You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready. Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body. Taking his throat in your mouth, you growl firmly and pound yourself on his cock, [if Cunt Depth of Player > 5]popping his swollen knot into you. Tied with you, the[else]grinding his tip against your cervix and his knot against your pussy's lips. The[end if] shepherd cums hard, shooting his canine seed into your womb. [if Cunt Depth of Player > 5 and Cunt Tightness of Player < 5]With his knot locked in you, you are left tied to the dog. He bathes your face in doggy kisses while you wait for the knot to come down. Once it's finally softened enough, you pop it out[else if Cunt Depth of Player > 5 and Cunt Tightness of Player > 4]Once his cock stops pulsing his seed into you, you pop your wide cunt off his knot[else]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb. You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out. You then grab your gear and head off, leaving him to recover. You feel much stronger about yourself after having beaten your one-time assailant and taken what you wanted from him instead.";
	else:
		say "twat on your own terms. You pin him down and grind your wet slit over his sheath, dribbling your juices over it. This quickly coaxes his maleness from its sheath and you start sliding over his swelling cock, urging it to full hardness. As you shift your hips and ease your way down his cock, you keep your hands on his shoulders to hold him down. The beaten dog tilts his head back in submission, baring his throat to you with his ears lowered.";
		say "     Taking [if Cunt Depth of Player > 5]the full length of his cock[else]as much of his cock as you can into your small pussy[end if], you moan in pleasure as you ride it. You can feel it throb and pulse inside you, spitting doggy pre into your already wet hole. You set the pace, working to build yourself up to a powerful climax and enjoying his soft whines beneath you as you keep him from cumming until you're ready. Finally, when your orgasm comes, it is powerful and sends waves of delight through your whole body. Clenching your fingers in his fur, you growl firmly and pound yourself on his cock, [if Cunt Depth of Player > 5]popping his swollen knot into you. Tied with you, the[else]grinding his tip against your cervix and his knot against your pussy's lips. The[end if] shepherd cums hard, shooting his canine seed into your womb. [if Cunt Depth of Player > 5 and Cunt Tightness of Player < 5]With his knot locked in you, you are left tied to the dog. He bathes your face in doggy kisses while you wait for the knot to come down. Once it's finally softened enough, you pop it out[else if Cunt Depth of Player > 5 and Cunt Tightness of Player > 4]Once his cock stops pulsing his seed into you, you pop your wide cunt off his knot[else]Once his cock stops pulsing his seed into you, you slide off his cock[end if], releasing the semen that hasn't been drawn into your womb. You get up slowly and give his ears a scritch, enjoying the sight of him wagging his tail and lolling his tongue out. You then grab your gear and head off, leaving him to recover. You feel much stronger about yourself after having beaten your one-time assailant and taken what you wanted from him instead.";
	NPCSexAftermath Player receives "PussyFuck" from Korvin;

to say gsd_special_vsex_03:
	say "     The muzzle-scarred German shepherd starts to back away slowly, like a cowed dog. The thrill of the struggle with the canine has gotten you excited, giving you an erection you want satisfied. Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him. He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Bad dog,' you growl at him. 'Get to licking to show you're sorry.' With that, you pull his head between your legs, pressing his muzzle to your loins. Having little choice, he nuzzles at your cock and takes a few tentative licks. When you don't let him go, his ears dip further and he continues licking, soon with increasing vigor. His doggy tongue slobbers over your throbbing shaft and balls, lavishing attention on them as his eagerness grows.";
	say "     After leaking pre all across his scarred muzzle, you decide it's time for the main event and guide his maw down over your cock. As he licks and sucks on you, you thrust into his long, canine muzzle until finally you cum, pumping your hot seed into his mouth and down his throat. His ears dip, but he laps it all from your cock and swallows it down. When he's done cleaning you, you pull out and leave him on the ground to recover from his defeat.";
	NPCSexAftermath Korvin receives "OralCock" from Player;

to say gsd_special_vsex_04:
	say "     The muzzle-scarred German shepherd starts to back away slowly, like a cowed dog. The thrill of the struggle with the canine has gotten you excited, getting your cunt hot and wet. Marching up to him, he slinks down lower and whines softly as you grab him by the scruff of the neck and hold him. He tries to pull away, but you simply take hold of him more firmly and give his rear a slap.";
	say "     'Bad dog,' you growl at him. 'Get to licking to show you're sorry.' With that, you pull his head between your legs, pressing his muzzle to your loins. Having little choice with his nose pressed right to it, he takes a few tentative licks at your pussy. When you don't let him go, his ears dip further and he continues licking, soon with increasing vigor. His doggy tongue slobbers over your sensitive folds, lavishing attention on you as his eagerness grows[if Player is male and CockName of Player is listed in infections of InternalCockList]. Your cock[smn] rest[smv] upon his scarred muzzle, drooling precum onto him to further add to his humiliation[else if Player is male]. Your cock[smn] and balls are left resting upon his scarred muzzle while you drool precum onto his face, further adding to his humiliation[end if].";
	say "     Longing for more, you press his muzzle in close and he slips his tongue into your cunt, diving up inside you to lap at your flowing juices. His long, doggy tongue dives into you again and again, making you moan with pleasure until finally you cum hard, soaking his muzzle in your juices. He laps up as much as he can and licks your thighs and pussy clean as your climax ebbs. When he's done cleaning you, you push his muzzle back and leave him on the ground to recover from his defeat.";
	NPCSexAftermath Korvin receives "OralPussy" from Player;

to say gsd_special_vsex_05:
	say "     The muzzle-scarred German shepherd starts to back away slowly, like a cowed dog, but you want to abuse him a little further first. The thrill of the struggle with the canine has gotten you excited and you can see it's done the same for him. Pushing him onto all fours beneath you, you grab his cock firmly. He releases a mix between a whimper and growl, wanting to resist, but already beaten. With your other hand, you press his head to the ground.";
	say "     'Bad dog! Bad!' you growl at him. 'You need to learn your place, you horny cur.' Keeping him pinned, you stroke his cock, jerking him off. 'You're thinking with your dick and not realizing that I'm your better, you dumb doggy slut.' You pick up the pace, pleased to feel that canine cock pulse and drool more pre that you spread across its hard length. He starts to pant in response, his balls throbbing when you give them a fondle.";
	if a random chance of 1 in 2 succeeds:
		say "     After jerking him off like this for a while, you grab his shoulder and roll him onto his back so you can see the finale. Keeping him pinned, you pump at his meat while he drools a slick mess onto his tummy fur. Needy whimpers escape his muzzle as his orgasm approaches, which only encourages you. When he finally blows, you enjoy watching the once-arrogant canine spew his copious load across his head and body for your amusement. You wipe your hand off on his tail and order him out of your sight. He gets up and slinks off, sticky and humiliated.";
	else:
		say "     Keeping him pinned in this awkward position, you pump at his meat while he dribbles a sticky mess onto the ground just inches from his nose. Needy whimpers escape his muzzle as his orgasm approaches, which only encourages you. When he finally blows, his dick's aimed squarely at his face and his semen splatters all over his scarred muzzle. When you hear him licking and lapping at the mess of cum he's making on himself, you laugh a little at his humiliation. Once he's spent, you wipe your hand across his fluffy rear with a few slaps before driving him off. He gets up and slinks off, sticky and humiliated.";


[ - Special Final Scenes - ]

to say gsd_special_final_00:
	say "     As the scarred German shepherd lets out a pained and injured whine, he sinks to the ground with his ears folding down, beaten. You can see that a lot of the fight has gone of out his eyes and he hangs his head in shame when you look into them. It seems like you've finally proven yourself his better. And now you need to decide what you want to do with him.";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Humiliate and recruit";
	now sortorder entry is 1;
	now description entry is "Reinforce that he's just a mutt and can't even look after himself";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Humiliate and banish";
	now sortorder entry is 2;
	now description entry is "Reinforce that he's been bested before driving him off for good";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him and recruit";
		now sortorder entry is 3;
		now description entry is "Fuck him to secure your dominance over him";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Fuck him and banish";
		now sortorder entry is 4;
		now description entry is "Fuck him before driving him off for good";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride him and recruit";
		now sortorder entry is 5;
		now description entry is "Ride him to secure your dominance over him";
	[]
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Ride him and banish";
		now sortorder entry is 6;
		now description entry is "Ride him before driving him off for good";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	while sextablerun is 0:
		say "Pick the corresponding number> [run paragraph on]";
		get a number;
		if calcnumber > 0 and calcnumber <= the number of filled rows in table of fucking options:
			now current menu selection is calcnumber;
			choose row calcnumber in table of fucking options;
			say "[title entry]: [description entry]?";
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if nam is "Fuck him and recruit":
					say "[gsd_special_final_01]";
				else if nam is "Fuck him and banish":
					say "[gsd_special_final_02]";
				else if nam is "Ride him and recruit":
					say "[gsd_special_final_03]";
				else if nam is "Ride him and banish":
					say "[gsd_special_final_04]";
				else if nam is "Humiliate and banish":
					say "[gsd_special_final_05]";
				else if nam is "Humiliate and recruit":
					say "[gsd_special_final_06]";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say gsd_special_final_01:
	say "     In the mood to fuck the Shepherd, you grab him and push him onto all fours. He does not resist and only gives a soft growl at what he knows is coming. Wrapping a hand around his scarred muzzle, you silence him even as you move overtop of him. 'I think I've made it abundantly clear by now that I'm the alpha here. So you're going to raise that tail of yours and like it, pup,' you growl right back at him. His ears dip and he nods, raising his tail and boosting his rear, accepting his fate. You grind your cock against his furred ass for several strokes, enjoying the soft fur and toned flesh pressing against your meat. Getting your cock lined up with his dark pucker, you tease against it while drooling precum onto the fleshy ring. The dog beneath you releases a soft whimper, one of need this time rather than reluctance, and presses his hips back. You grin and whisper 'Good boy' to him and push your ";
	if CockName of Player is "German Shepherd Male":
		say "pointed, canine cock into his spreading tailhole. You move onto all fours on top of the German shepherd, mounting him doggy style, and start fucking him.";
		say "     You do your best to draw it out, taking pauses to fondle his rock-hard dick and nip along his neck while leaving your shaft buried in his butt. At this point, he's too aroused and accepts your attention with sounds of needy lust. His cock twitches and throbs in your hand, drooling precum steadily. His asshole squeezes and tugs at your cock, clearly wanting you to finish claiming it. After several rounds of swapping between fucking and fondling him, you can't hold back any longer and set to humping his toned butt hard and fast. You drive your pulsing rod into him over and over again, enjoying his needful whimpers while you continue to jerk him off. Sensing your approaching release, you push harder and deeper, banging your knot against his back door.";
		WaitLineBreak;
		say "     'You want it, don't you? Say it. Beg your alpha to give you his knot,' you growl between gritted teeth, your peak so close now. The German shepherd, panting heavily and dribbling constantly from his cock, can barely manage an assenting bark of begging for it. You smile and with another 'Good boy' you push the thick knot past his tight ring and tie with him[if Cock Length of Player > 32], bulging his belly to fit it all[else if Cock Length of Player > 20], visibly stretching his toned tummy to fit it all[end if]. Your canine dick throbs and pulses inside his rear, spurting shot after shot of gooey semen into his bowels. As your load fills him, he expels his own seed onto the ground, cumming messily over and over again as he in delight howls alongside you.";
		say "     With your cock still buried in him and your knot still stuck in him, you pat his head. 'You're mine now, pup. I'm your Master and your Alpha. I'm top dog and you'll do what I say from now on.' His ears dip and he nods. 'Yes, you're Alpha,' he responds, now forced to accept your dominance over him. You smile and pet him further, calling him your good dog while waiting for your knot to go down and finally release you two.";
	else:
		say "[Cock of Player] cock into his spreading tailhole. Kneeling behind him, you keep a good grip on his ass and start fucking him from behind.";
		say "     You do your best to draw it out, taking pauses to fondle his rock-hard dick and pet his head and shoulders while leaving your shaft buried in his butt. At this point, he's too aroused and accepts your attention with sounds of needy lust. His cock twitches and throbs in your hand, drooling precum steadily. His asshole squeezes and tugs at your cock, clearly wanting you to finish claiming it. After several rounds of swapping between fucking and petting him, you can't hold back any longer and set to pounding his toned butt hard and fast. You drive your pulsing rod into him over and over again, enjoying his needful whimpers while you continue to jerk him off. Sensing your approaching release, you push harder and deeper[if CockName of Player is not listed in infections of InternalCockList], slapping your balls against his[else], slapping your hips against his fuzzy rear[end if].";
		WaitLineBreak;
		say "     'You want it, don't you? Be a good dog and beg your master to give you his hot load,' you growl between gritted teeth, your peak so close now. The German shepherd, panting heavily and dribbling constantly from his cock, can barely manage an assenting bark of begging for it. You smile and with another 'Good boy' you push your [cock size desc of Player] cock fully into him[if Cock Length of Player > 36], bulging his belly to fit it all[else if Cock Length of Player > 24], visibly stretching his toned tummy to fit it all[end if]. Your [Cock of Player] dick throbs and pulses inside his rear, spurting shot after shot of gooey semen into his bowels. As your load fills him, he expels his own seed onto the ground, cumming messily over and over again as he in delight howls alongside you.";
		say "     With your cock still buried fully in him, you pat his head. 'You're mine now, pup. I'm your Master and your Alpha. I'm top dog and you'll do what I say from now on.' His ears dip and he nods. 'Yes, you're Alpha,' he responds, now forced to accept your dominance over him. You smile and pet him further, calling him your good dog while sliding your spent shaft from his butt.";
	NPCSexAftermath Korvin receives "AssFuck" from Player;
	WaitLineBreak;
	say "[gsd_recruited]";
	now gsd_pet is 12;

to say gsd_special_final_02:
	say "     Tired of dealing with this arrogant dog, you grab him roughly by the back of the neck and force him onto all fours. He whimpers and tries to curl his tail between his legs, but you grab it and yank it up hard. 'It's clear I'm going to have to teach you a lesson you won't soon forget, you dumb mutt. It's clear you just-' you growl as you give his tail another harsh pull up to keep his rear raised 'don't-' line up your cock with his pucker and 'learn!' drive your hard shaft into his ill-prepared asshole. You find his loud yelp at the sudden penetration very satisfying. You don't give him a chance to recover or relax either, getting right to fucking his ass raw. You keep a fast pace designed to get yourself off with little regard for your former foe. His inner walls squeeze deliciously tightly around your shaft each time you plow into him. A quick check finds his cock hard and twitching in response to every hard slam against his prostate.";
	say "     By the time you're ready to cum, his hole's only started to adjust to the rough play and so he doesn't get off when you drive your cock deep into him and cum hard. Despite his whimpering and attempts to hump back so he can cum as well, you hold your spurting shaft fully in him and keep a tight grip on him. 'No. Bad dog's don't get to cum.' And once you're finished cumming, you pull out just as quickly as you went in and shove him to the ground. With his asshole leaking a cummy mess, he reaches to finger his hole while jerking himself off, but you don't let him. Kicking his rear like the dog he is, you tell him to get out of your sight for good. 'Go on! Get out of here. I never want to see you again, you flea-bitten mutt.' He scampers away on all fours with his tail tight between his legs and the head he once held so arrogantly high now barely above the ground. You don't expect he'll dare bother you ever again.";
	increase score by 20;
	now gsd_pet is 100;
	NPCSexAftermath Korvin receives "AssFuck" from Player;

to say gsd_special_final_03:
	say "     With the German shepherd pinned down beneath you, you straddle him and grind your cunt down onto his manhood. You grin as you feel it throb beneath you. 'You want this, don't you?' you ask. 'Well, you can have it... if you promise to be a good dog from now on.' You continue to grind while keeping your eyes locked on his. You spread your juices across his cock as you glide along its length, but never quite let it slide into you. At this point, having been beaten repeatedly, he is forced to look away and dip his ears, submissively accepting his defeat and saying he'll obey. You smile all the more and scritch his ear. 'That's right. You're MY good dog now. Mmm... and I want my good dog's bone.' Sliding a little further finally lets his pointed canine tip dip between your folds and into your vagina. When you push back this time, his dick spears into your cunt.";
	say "     You both release lustful growls and you bounce in his lap. His cock is driven into you over and over again as you move up and down, savoring the exotic feel of his canine breeding pole inside your hot tunnel. You work his cock over with your vaginal muscles, squeezing and tugging at it as quivers of delight run through you. While you're eager to ride him to completion, you do your best to hold back and draw this out. In addition to extending the pleasure for you both, it gives you more opportunity to pet, scritch and otherwise treat your former for as your new pet dog to reinforce his new role. Despite his earlier aggression, he can't help but pant and wag his tail in response to this attention from his new owner. And from the throbbing of his cock and the amount of pre it's drooling into you, you can tell he appreciates the attention you're giving his shaft as well.";
	WaitLineBreak;
	say "     With that hard dick sliding in and out of you, you can only be patient for so long. Wanting your release and to secure your place quite literally atop him, you start riding him hard and fast, pressing your hot petals against his swollen knot with each slam down. Clenching your fingers in his fur, you push down one final time as he bucks up, popping that thick bulb into your cunt. Your inner muscles clamp down on it and you cry out in orgasmic release, cumming hard, followed moments later by his own orgasm. The shepherd cums long and hard, sending shot after shot of canine seed into your womb until as you ride out your climax until you're both spent and exhausted.";
	say "     While waiting for his knot to go down, you pet him some more, calling him your good dog and telling him that you're his Mistress and Alpha from now on. His defiance worn down after having been put in his place this one final time, he nods and ascents. 'Yes, you're the Alpha now,' he pants. Once he knot's shrunk enough, you pull off him and make him lick your messy cunt as his first task as your new loyal pet, which he does with eagerness.";
	NPCSexAftermath Player receives "PussyFuck" from Korvin;
	WaitLineBreak;
	say "[gsd_recruited]";
	now gsd_pet is 12;

to say gsd_special_final_04:
	say "     Tired of dealing with this arrogant dog, you rough shove him over onto his back with your foot. Glaring down at him, you move that foot onto his chest and keep him pressed down. He whimpers a little in fear and has his tail curled in between his legs, which won't do at all. Grabbing his tail, you tug it out of the way and straddle his hips. 'I think I've made it abundantly clear by now that you're no match for me, so I'm going to take what I want and kick you to the curb like the mangy cur you are,' you growl down at him while grinding your hips onto his lap.";
	say "     Taking his stiffening cock in hand, you aim it up and slam your hips down onto it, relying on its penile bone to keep him erect even though he's not fully hard at this point. You set to riding him right away, working your hips up and down at a pace and with movements solely focused on satisfying your needs. You also start rubbing your folds and teasing your clit, further arousing yourself. And while he's clearly enjoying the ride, it's also frustrating as he'll clearly need more to keep up with you. Any attempt by him to increase his own pleasure, by thrusting up, touching himself or anything else is met with a smack on the nose and a 'Bad dog!' from you.";
	WaitLineBreak;
	say "     By the time you're ready to cum, he's nowhere near his own release, but you don't care. Your cunt clamps down hard around his shaft and you tweak your hot button as you orgasm, soaking his crotch in your juices. He whimpers and moans, enjoying having your vaginal walls squeezing and rippling along his shaft, but this only blue-balls him even worse. After your climax, you remain atop him, panting to catch your breath while his aching shaft rests motionless in your now sated cunt. Once you're ready, you climb off of him, smacking his paws away as he reaches to jerk himself off. You grab him by the back of the neck and pull him up onto all fours. 'And that's the last of my cunt you're ever gonna get. Go on!' You boot him in the rear, drawing a yelp from the cowed Shepherd. 'I never want to see you again, you flea-bitten mutt.' He scampers away on all fours with his tail tight between his legs and the head he once held so arrogantly high now barely above the ground. You don't expect he'll dare bother you ever again.";
	increase score by 20;
	now gsd_pet is 100;
	NPCSexAftermath Player receives "PussyDildoFuck" from Korvin;

to say gsd_special_final_05:
	say "     Tired of dealing with this arrogant dog, you grab him roughly by the back of the neck and push him to the ground. Grinding him face against the ground, you snarl down at him. 'I've had enough of you, you mangy cur. I've proven time and tune again your better.' And seeing just the thing for it, you smile. 'It looks like I'm going to have to beat some sense into you.'";
	say "     Grabbing the yellowed newspaper you spotted, you roll it up and give him several smacks on the muzzle with it. 'Bad dog! Bad! Dog!' He whimpers and drops low to the ground, trying to slink away, but you won't have it. Grabbing him by the tail he's tucked between his legs, you pull his ass up into the air and give it several hard swats with the paper roll as well. 'Bad! Dog!' you repeat, giving him a final hard swat on his balls, drawing a satisfying yelp and whimper from him. Releasing his tail, you knock him to the ground with your foot and chase him off with a few more wild swings of the newspaper. 'Go on! Get out of here. I never want to see you again, you flea-bitten mutt.' He scampers away on all fours with his tail tight between his legs and the head he once held so arrogantly high now barely above the ground. You don't expect he'll dare bother you ever again.";
	now gsd_pet is 100;

to say gsd_special_final_06:
	say "     Tired of dealing with this arrogant dog, you grab him roughly by the back of the neck and push him to the ground. Grinding him face against the ground, you snarl down at him, throwing harsh words that detail him being too weak and pathetic to make it on his own. Grabbing a yellowed newspaper you spotted, you roll it up and give him several smacks on the muzzle with it, berating him for being a bad dog. He whimpers and drops low to the ground, trying to slink away, but you won't have it. Grabbing him by the tail he's tucked between his legs, you pull his ass up into the air and give it several hard swats with the paper roll as well. Throwing the newspaper on the ground in front of his face, you look down upon the whimpering mess you've reduced the dog to.";
	say "     He seems about ready to just lie there in the filthy street and wait for it to be over, with you walking off like before. But not this time, as you have other plans. Waiting a short moment to let his situation sink in, you then crouch down next to him and reach out to pet his head. Clearing your throat and striking a far different tone to before, you tell him that he could still make something of himself, or rather let you make something worthwhile of him if he accepts you as a [Master] and Alpha from now on. His defiance worn down after having been put in his place this one final time, he nods and ascents. 'Yes, you're the Alpha now,' he pants. Giving his head a last stroke, then holding out your hand to be licked submissively, you stand up and whistle for him to follow, which he does with a slow but hopeful wag of his tail.";
	WaitLineBreak;
	say "[gsd_recruited]";
	now gsd_pet is 12;

to say gsd_recruited:
	increase score by 20;
	now gshep is tamed;
	add "Tamed" to Traits of gshep;
	move Korvin to Makeshift Rec Room;
	now HP of gshep is 1;
	now GShepLastScene is turns;
	say "     Looking around, you find some heavy rope and use that to make a temporary leash for the muzzle-scarred German shepherd. He tugs at it a few times, but leaves it alone when you tell him to stop pawing at it. You ask him if he's got a name he can remember, which throws him for a loop. 'What a stupid question? Of course I remember... my... name...' He ends up bemused for a time, scratching his ear with one paw as he tries to think. 'K-... Ka-? Ko-? Korvin? I think it was, I mean, it is Korvin.' He seems a little more self-assured again now that he's got a name.";
	say "     (Korvin the German shepherd is now a possible ally! You can make him your active ally by typing [bold type][link]ally Korvin[end link][roman type] or [bold type][link]ally gshep[end link][roman type] and initiate sex with him while active by typing [bold type][link]fuck Korvin[end link][roman type]. You can see all the allies you have with the [bold type][link]allies[end link][roman type] command. Allies will lower the XP you gain from battle, but can gain levels themselves to be more useful in a scrap. Want to get rid of an ally? Use [bold type][link]ally dismiss[end link][roman type], or just [bold type][link]dismiss[end link][roman type])[line break]";


to say attk gsd:
	now gsd_attack is true; [You've attacked the monster, he won't be happy!]
	say "[one of]The dog growls, swiping at you with an open paw-like hand, dull claws leaving scratches in your skin[or]As you extend to strike, the German shepherd twists and clamps his jaws on your arm before releasing again, leaving a bloody bite[or]Dodging back, the large canine growls before charging forward, using the extra momentum to tackle and knock you over[at random].";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "German Shepherd";
	add "German Shepherd Male" to infections of CanineList;
	add "German Shepherd Male" to infections of FurryList;
	add "German Shepherd Male" to infections of NatureList;
	add "German Shepherd Male" to infections of MaleList;
	add "German Shepherd Male" to infections of TaperedCockList;
	add "German Shepherd Male" to infections of KnottedCockList;
	add "German Shepherd Male" to infections of SheathedCockList;
	add "German Shepherd Male" to infections of BipedalList;
	add "German Shepherd Male" to infections of TailList;
	now Name entry is "German Shepherd Male";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[attk gsd]";
	now defeated entry is "[beatthegsd]";
	now victory entry is "[losetogsd]"; [ Text used when monster wins, can be directly entered like combat text or description. or if more complex it can be linked to a 'To Say' block]
	now desc entry is "[gsd_desc]";
	now face entry is "distinctly canine, with a long canine muzzle filled with sharp teeth and a pair of expressive pointed ears atop your head";
	now body entry is "that of a bipedal dog, with digitigrade legs and paw-like hands";
	now skin entry is "coarse, brown and black furred";
	now tail entry is "Behind you is a dog's tail, which whips about expressively and frequently betrays your mood.";
	now cock entry is "[if looknow is 1]shaft, surrounded in a tight sheath surrounded by [Skin of Player] skin, protecting the wonderfully sensitive German shepherd[else][one of]knotted[or]animalistic canine[or]doggy[at random][end if]";
	now face change entry is "it draws forward into a canine muzzle, which rapidly fills with teeth and a broad, lolling tongue. At the same time, your ears become more pointed and expressive and migrate towards the top of your now canine head";
	now body change entry is "your legs bend and twist into digitigrade form with soft subtle snaps of flowing bones. You look down to see your feet becoming entirely paw-like and your hands become somewhat paw-like with dull black claws in the tips";
	now skin change entry is "fur begins to push through from underneath, soon covering you in a coarse, protective coat of brown and black fur";
	now ass change entry is "a long tail pushes from your spine. It rushes straight out, then curls between your legs at the feeling of shock as you study the appendage";
	now cock change entry is "your shaft tapers out, becoming slender, though a huge swelling comes into being towards the base, a knot. The skin turns reddish before the whole thing slowly withdraws into a sheath you didn't have a moment ago";
	now str entry is 12;
	now dex entry is 13;
	now sta entry is 14;
	now per entry is 12;
	now int entry is 12;
	now cha entry is 10;
	now sex entry is "Male"; [ Defines which organs will be altered by the infection. current options are 'Male' 'Female' 'Both']
	now HP entry is 20;
	now lev entry is 3;
	now wdam entry is 5; [ Amount of Damage monster Does when attacking.]
	now area entry is "Outside";
	now Cock Count entry is 1; [ Used in infection Calculations, if cocks > 0 shaft will grow to cock length & girth dimensions slowly]
	now Cock Length entry is 8; [ Length infection will make cock grow to if cocks > 0 ]
	now Ball Size entry is 2; [ Width Infection will make cock grow to is cocks > 0 ]
	now Nipple Count entry is 8; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 4; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0;
	now Cunt Count entry is 0; [ if > 0 and sex = female or both, indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 60; [ Amount libido goes up by if you submit or are defeated by this monster ]
	now loot entry is "german shepherd male fur";
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "";
	now CumItem entry is "german shepherd male cum";
	now TrophyFunction entry is "-";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[one of]muscled[or]animalistic[at random]";
	now type entry is "canine"; [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is "German Shepherd Bitch"; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "gsd"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;

[
Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "German Shepherd";
	now Name entry is "German Shepherd Male"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head, standing upright in pointy wedges. A moderately broad muzzle pushes forward to give you the head of a German shepherd"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a German shepherd with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is "";[partial sentence that fits in "Before moving on from your head, you give your [head adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "brown"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0 to 5 (none/smooth/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "amber"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 7;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "long"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "tan and black hair sprouts all over it, giving you a shiny coat of dense fur"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a dense coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [torso adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "tan and black"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "pointy"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 8; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and tan fur spreads over your paw-hands, then moves up towards your shoulders"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro German shepherd with dense, tan fur, ending in a pair of paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro German shepherd, with dense, [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [legs description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Change entry is "it becomes fairly narrow and small, with tan fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered dense tan fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [ass shape adjective of Player] [ass description of Player]."]
	now Ass Skin Adjective entry is "furry";  [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 2; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in tan fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length tail with [Tail Color of Player] fur"; [partial sentence to fit: "Just below your lower back sprouts a [tail description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "tan"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 2;
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 3; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [cock adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 2; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, snug sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [ball description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0; [length in inches]
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [cunt description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]
]

Table of Game Objects (continued)
name	desc	weight	object
"german shepherd male fur"	"A tuft of tan fur that looks like it has been pulled out of the coat of a German shepherd. It's nicely soft."	0	german shepherd male fur

german shepherd male fur is a grab object.
Usedesc of german shepherd male fur is "[GermanShepherdMaleFurUse]".

It is temporary.

to say GermanShepherdMaleFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "German Shepherd Male";

instead of sniffing german shepherd male fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"german shepherd male cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'German Shepherd Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	german shepherd male cum

german shepherd male cum is a grab object. german shepherd male cum is cum.
german shepherd male cum is infectious. Strain of german shepherd male cum is "German Shepherd Bitch".
Usedesc of german shepherd male cum is "[GermanShepherdMaleCumUse]";

to say GermanShepherdMaleCumUse:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy fluid cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing german shepherd male cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Section 3 - Alt Combat Rules

Table of Critter Combat (continued)
name	combat (rule)	preattack (rule)	postattack (rule)	altattack1 (rule)	alt1chance (number)	altattack2 (rule)	alt2chance (number)	monmiss (rule)	continuous (rule)	altstrike (rule)
"gsd"	retaliation rule	gsd_pre rule	--	humping rule	100	--	--	--	--	--


this is the gsd_pre rule:		[preattack rule - checks if Player fought back]
	if gsd_special is true and inafight is not 0:	[Triggers for special GSD, but not when he gets first strike]
		now gsd_attack is true;

Section 3 - Heat Table

to say gsdheatstart:
	if heatform is 0:
		increase Cunt Tightness of Player by 1;
	else:
		increase Libido of Player by 5;

to say gsdheatend:
	if heatform is 0:
		decrease Cunt Tightness of Player by 1;
		if Cunt Tightness of Player is 0, now Cunt Tightness of Player is 1;

Table of infection heat (continued)
infect name	heat cycle	heat duration	trigger text	description text	heat start	heat end	inheat	fheat (truth state)	mpregheat (truth state)	mpregtrigger
--	--	--	--	--	--	--	--	--	--	--

When Play begins:
	Choose a blank row from Table of infection heat;
	now infect Name entry is "German Shepherd Bitch";
	now heat cycle entry is 7;
	now heat duration entry is 2;
	now trigger text entry is "A sudden throb between your legs catches you off guard, startling a whimper from your throat as you feel a rush of heat between your legs. Nested between your thighs, your canine spade begins to puff up and swell, engorging and becoming looser, a slow but constant seepage of lubricating fluids starting to run down your thigh, making a mess of your [SkinName of Player] flesh. You are in heat, and your body is making it easy for any male to find and impregnate you.";
	now description text entry is "swollen and dripping German shepherd twat ";
	now heat start entry is "[gsdheatstart]"; [Events that trigger at the start of the Heat, in the female-GSD case it increases the cunt width]
	now heat end entry is "[gsdheatend]"; [Events that trigger at the end of the Heat, in the female-GSD case it reduces cunt width]
	now inheat entry is "[defaultheat]"; [This happens each heat cycle, Default is to increase libido by 5]
	now fheat entry is true;
	now mpregheat entry is true;
	now mpregtrigger entry is "A sudden throb in your ass catches you off guard, startling a whimper from your throat as you feel a rush of heat surging inside you. You can feel your fecund ass preparing itself to be bred as you go into a tainted heat. Your anal passage quivers and you feel a longing for a nice, canine cock to fill it.";


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"German Shepherd Infection"	"Infection"	""	German Shepherd Infection rule	1000	false

This is the German Shepherd Infection rule:
	if Player has a body of "German Shepherd Male" or Player has a body of "German Shepherd Bitch":
		trigger ending "German Shepherd Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10:
			if gsd_pet > 0 and gsd_pet < 10:
				if Player is herm:			[HERM]
					say "     You don't know what to do. Your mind is a swirl of confused thoughts and you sink to all fours, sobbing and staining the ground with your tears, and precum, cock dripping to the ground in thick strands, cunt leaking honey down along it, making quite a mess. He finds you, though, the German shepherd. His presence becomes clear when his tongue runs across your crotch, up along your male and female genders in one firm motion. You tense and gasp, and turn to look, but he's already clambering up on you, thrusting into his property, you. You feel complete, and sing out in pleasure as he breeds you. Your seed splashes across the ground as you cum with him, filled with his potent seed. When you've calmed down, he guides you to the pack, where you will remain for the rest of your life.";
				else if Player is female:			[FEMALE]
					say "     As the last of your normal thoughts flee you, you hear a familiar howl. You take off at a run, scrambling over debris to reach this thing that sets your heart on fire. You find them, a pack of dogs roaming the city. They welcome you with wet tongues and eager hugs, until he steps forward. The alpha, the German shepherd, takes you aside, welcoming you to the pack, then consummating the deal on the spot, to the cheers and approval of the crowd, leaving your belly bulging with his virility. With him still sealed to you with his knot, the others approach, licking you both, warm welcoming words. Things could be worse...";
				else:									[MALE]
					say "     You hear something, but can't quite place it. You take off and find the pack of dogs without trouble, rushing into their midst, yapping and barking. They bite at you, push you around, but tolerate your presence. You never seem to gain much say with them, remaining the pack omega, picked on, last to eat, but still a member of the pack, and loved, in a different way.";
[			else if gsd_pet < 12 or gsd_pet is 100:]			[***]
			else:
				if Player is herm:			[HERM]
					say "     It is all just too much. Your cock demands attention, your cunt wants to be stuffed, and you have nothing to focus on strongly enough. With a howl, you become a true beast, slaking your unending hunger on anything willing to fill or be filled, or that you can hold down long enough to force into the act. When a female human, stupid enough to enter the infected city, comes across you... Well, she became a fine wife of sorts for you, bearing litter after litter from her pretty naked body. She never transformed, but her mind did seem to change over time, becoming submissive to your breeding desires, and she never leaves you and your increasingly larger family.";
				else if Player is female:			[FEMALE]
					say "     You feel your humanity slipping away, and hear the call of the pack, but decline its invitation. You stake out your own section of the city, preying on those foolish enough to challenge it. The pack usually stays away from your area, but you do have to fight them off once in a while, almost more of a ceremony than anything else. During one of these tussles, one of their betas pins you down, and what was a wrestling session suddenly turns amorous. Despite no clear... winner... of the battle, the pack leaves happily, and you produce two darling puppies, who remain at your side loyally.";
				else:									[MALE]
					say "     Ever hear of the big bad wolf? It was the last thought that fluttered through your fading mind. You dropped to all fours, cock wagging under you as you prowled the streets, preying on anything with a hole. You develop a preference for mutants, and discover the pleasure of filling different beasts with your hybrid canine pups, at least until you fall into the sewers one day. With a bruised ankle, you watched fearfully as a strange, canine-like mutant approached you. She had a pouch, and several large breasts, and she was dual gendered. She drew you to a breast and let you drink of her sweet milk until the pain stopped, then pushed you onto your back roughly and fucked herself with your cock for six hours. By the time the marathon was over, your animal-like mind had decided she was your alpha, and you remained her loyal stud dog ever since.";
[			else:			[***]
				say "Succumbed w/Korvin tamed.";]
		else:
			say "     When the military forces come in to rescue what citizens they can, you go along with them. Being mostly canine in form, you go along readily with them. Your body, compared to others they've seen, raises little concern among the military. As a canine, you are given an offer to join the military, trying to appeal to your instincts for loyalty, but you feel you are too [if gsd_pet > 1 and gsd_pet < 10]submissive[else]independent[end if] to make a good recruit and decline.";
			if gsd_pet > 0 and gsd_pet < 10:
				if Player is herm:			[HERM]
					say "     Though you've been given a deep submissive streak thanks to your time with that handsome, shepherd, you put him behind you and set off to make a normal life for yourself. Your dual gendered nature makes you shy to approach others, fearful that, combined with your mutant nature, they will shun you. You get a quiet job as a secretary and perform admirably, enough to catch the attention of your boss.";
					say "     He invites you out for dinner, and starts courting you, much to your dismay. It's not that you don't like the guy. He's nice enough, good to the people under him, but when the secret gets out... He finally corners you and makes a strong advance. You do little but whimper as his hands wander your exotic form. His fingers drift across your groin, finding your bulging tent there. Soft touches start as he pushes your skirt up and eases you out of your panties. You barely come around as he's laying you back, stroking you with one hand, the other dipping into your furry vulva. It turns out he figured it out some time ago, and he doesn't mind one bit. You bear him several pups gladly as his wife.";
				else if Player is female:			[FEMALE]
					say "     Though you escape from the city with your mind intact, it is not without impact. You find yourself thinking back to that big alpha and try to replace him with a myriad of other brutes who fail to satisfy your hungry cunt. You take up work in the sex industry, catering to those who like to watch horny mutant sluts get hot and bothered, which you usually are.";
					say "     Some years later, still desperately searching for a male, HE comes wandering in. A stallion with a cock that seems to call out to you. As if fate had ordained the moment, you notice that he seems to be sized for you, and you leap at the chance to perform with him. When he ruts you, it's like magic, and you never leave his side.";
				else:									[MALE]
					say "     You emerge from your experience a bit shaken. Some part of you wants to be a lusty bitch, but you aren't a bitch, you're a guy, and that's hard to reconcile. You experiment with the gay community, which seems to have no big trouble accepting a submissive dog willing to raise his tail at short notice, but you never feel quite right, at least until you run into her, a professed lesbian mutant, a collie, who seems just as uncomfortable as you. You start talking, and hit it off. Shy romance turns to heavy love making on the second date, and you two remain together.";
[			else if gsd_pet < 12 or gsd_pet is 100:]			[***]
			else:
				if Player is herm:			[HERM]
					say "     As you emerge from the helicopter and set loose on the streets near the military's holding facility, a young man among the mob of reporters rushes up to you and starts asking questions rapidly. What was it like? Is having fur half as fun as it looks? This young Internet reporter is a [']furry['] and quite entranced with a sentient dog person, especially a dual-gendered one. At first, his attentions are quite annoying, but he is quite persistent after your release, even when you bite him once. Well, a nip, really. Despite your cold attitude, he does everything he can to be a good friend, helping you find a home and a job and generally being available. Your anger eventually passes and accept that it's not him you're angry with. And with it gone, other emotions have a chance to surface. It's not long before you're sharing more than you ever thought.";
				else if Player is female:			[FEMALE]
					say "     Life as a bitch is a curious one. You find yourself eager to please, but not in the way that jerk of a dog wanted you to be. You become a courier, hurrying packages from one place to another, even across the wild wastes between cities, braving the dangers of infection and mutants to get mail and packages through. You have several contacts throughout the infected city, relaying messages, gifts and sometimes illicit items to people within the infected metropolis for a price. Almost as in direct defiance of your previous dominator, you live your life like a daredevil, wild and free.";
				else:									[MALE]
					say "     Life as man's best friend isn't too bad. You get a job at a factory and become something of the workplace mascot. Everyone always seems happy to see you when you come in. You might not be human anymore, but you don't feel isolated, drinking with the guys and living out a normal life, surrounded by friends. Your canine nature makes it easy for you to find willing partners, as dog strains are one of the most common while still giving you plenty of variety to enjoy.";
[			else:			[***]
				say "Survived w/Korvin tamed.";]

German Shepherd ends here.
