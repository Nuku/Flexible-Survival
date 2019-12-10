Version 2 of Helot by Wahn begins here.
[Version 1.2 - Flags, Capitalization Fix]
[Version 2 - new Events (1 at High Rise, 2 at College) + creature bypass added - Gherod]

"Adds a Male Helot to Flexible Survival's Wandering Monsters table, with impreg chance"

FuckedBySpartan is a number that varies. FuckedBySpartan is usually 0.		[for use in the endings]

Section 1 - Creature Responses

to say StealthHelotTransformation:
	now BodyName of Player is "Helot Manservant";
	now Body of Player is "that of a young man, muscular, but with a lean look that hints at going hungry at least part of the time. It in nothing but a pair of sandals and a pretty ragged loincloth of faded cloth";
	now SkinName of Player is "Helot Manservant";
	now Skin of Player is "smooth, sun-bronzed";
	now CockName of Player is "Helot Manservant";
	now Cock of Player is "Human";
	now FaceName of Player is "Helot Manservant";
	now Face of Player is "a handsome young man's, still smooth and beardless. Shaggy black hair falls down to your shoulders";
	now TailName of Player is "Helot Manservant";
	now tail of Player is "You have a tight, firmly muscled butt.";

to say Helot wins:
	if inasituation is true:
		say ""; [dealt with at the source]
	else if HP of Player > 0: [player submits]
		if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior" and Cunt Count of Player is 0: [Spartans, but not herms and females]
			say "     As you kneel down in front of him to show your submission, the Helot looks at you in shock for a second, then chuckles. 'So you're not all such unbeatable warriors after all. Are you afraid to fight me, Spartan boy - or do you just long for a real man to take your ass? Not that it matters now...' The young man undoes the knots on his ragged loincloth, then throws it aside to reveal his already half hard cock. 'Come and get it, little Spartan,' he says tauntingly, holding out his erection and grinning widely as you crawl several feet to take it into your mouth. He lets you bob up and down on his shaft for a while, then decides to take things into his own hands. Plucking your Greek helmet off and donning it himself, he runs both his hands over your head and grabs you by the hair. Then he starts moving your head as he fucking into your mouth. Pushing deep quickly, he makes you cough a few times but still continues going without much interest in your comfort.";
			WaitLineBreak;
			say "     The Helot's moans in lust get louder and louder and he plunges in and out of your mouth with increasing speed until suddenly, he stops, his shaft deep in your throat. Taking a deep breath, he pulls out slowly, waiting a moment before saying 'Phew - almost came right here. But not yet - I want to take a Spartan boy's asshole. Get on your back, little warrior.' Stepping back, he leers at you in lust as you move to lie down on your red cloak. Your captor moves into position between your legs, raising and spreading them. As you feel the tip of his erection hotly against your pucker, he says 'Look me in the eye when I fuck you like a common slave! Admit it, this is what you wanted all along!' Then he thrusts into you with a satisfied grunt, burying his hard shaft deep in your tight hole. As his invading member slides deeper, stretching your passage around it, something inside you tells you he's right - this is right - your place in the world is under this virile young man, serving him. Fully submitting yourself to getting used as a slave with that realization, your arms and legs pull him down on top of you, making him go deeper and pound your ass harder. Loud moans escape your mouth as his cock rubs your prostrate. Slamming forward with powerful thrusts, the young man's hips hitting your ass with slapping noises, the Helot speeds up as his arousal mounts. Soon he gives a satisfied grunt, plunging his cock as deep into your body as he can, and spurt after spurt of his seed shoot into you. You can feel his hard shaft pulse against your inner walls with each further burst of cum.[mimpregchance]";
			say "     Being bred by your master, the amazing full feeling of having his warm load inside you, your own orgasm follows just moments later. [if Player is male]Long bursts of cum jet out of the tip of your manhood, splashing over your chest[else]Your whole body shakes in the grip of climax[end if]. Meanwhile, the Helot pumps in and out of you a few more times as he shoots his last spurts of cum, then pulls out of your ass with a slurping noise. He wipes the cum on his cock off on your skin, then stands up.";
			WaitLineBreak;
			say "     Lying on the ground, exhausted, naked and sweaty, you notice something... different about the man who just fucked you. His hair has gotten shorter and he seems even more in shape than before. The helmeted head of the changed Helot turns to look at you. 'Get off my cloak, slave - before you leak cum all over it.' He even sounds different, more commanding and certain of being obeyed somehow. Undoing the clasp holding your red cloak, you put a hand under your asshole so that the man's sperm doesn't drip on the fabric and move aside. Your fucker picks up the cloak and dons it, then walks away, his transformation into a proud warrior complete. After the newly shifted Spartan is gone, you clean yourself up as much as possible, then pick up the ragged loincloth lying beside you and bind it around your hips.";
			say "[StealthHelotTransformation]";
		else if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior" and player is female: [Spartan females + herms]
			say "     As you kneel down in front of him to show your submission, the Helot looks at you in shock for a second, then chuckles. 'So you're not all such unbeatable warriors after all.' Looking downward, he notices that even though you do have a male body, there is a pussy between your legs. 'Oh wait - you aren't a Spartan boy after all. What were you thinking coming here, girl? Not that it matters now... gonna pound that pussy!' The young man undoes the knots on his ragged loincloth, then throws it aside to reveal his already half hard cock. 'Come and get me ready, little Spartan,' he says tauntingly, holding out his erection and grinning widely as you have to crawl several feet to take it into your mouth. He lets you bob up and down on his shaft for a while, then decides to take things into his own hands. Plucking your Greek helmet off and donning it himself, he runs both his hands over your head and grabs you by the hair. Then he starts moving your head as he fucking into your mouth. Pushing deep quickly, he makes you cough a few times but still continues going without much interest in your comfort.";
			WaitLineBreak;
			say "     The Helot's moans in lust get louder and louder and he plunges in and out of your mouth with increasing speed until suddenly, he stops, his shaft deep in your throat. Taking a deep breath, he pulls out slowly, waiting a moment before saying 'Phew - almost came right here. But not yet - I promised you I'll fuck you. Get on your back, girlie.' Stepping back, he leers at you in lust as you move to lie down on your red cloak. Your captor moves into position between your legs, raising and spreading them. As you feel the tip of his erection hotly against your pussy lips, he says 'Look me in the eye when I fuck you like a common slave! Admit it, this is what you wanted all along!' Then he thrusts into you with a satisfied grunt, burying his hard shaft in your vagina. As his invading member slides deeper, stretching your passage around it, something inside you tells you he's right - this is right - your place in the world is under this virile young man, serving him. Fully submitting to be the Spartan's slave with that realization, you grind back against him, moaning deeply as his cock rubs your insides. Slamming forward with powerful thrusts, the young warrior's hips hitting yours with slapping noises, the Spartan speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoot into you, splashing into your womb. You can feel his hard shaft pulse against your inner walls with each further burst of cum. 'Feel that, you Spartan bitch? That's a former slave's load filling you. Try to explain that to your family!'[fimpregchance]";
			say "     Being bred by your master, the amazing full feeling of having his warm load inside you, your own orgasm follows just moments later. [if Player is male]Long bursts of cum jet out of the tip of your manhood, splashing all over your chest[else]Quite a bit of femcum leaks from your vagina, mixed with his white cum, and runs down your crotch[end if]. Meanwhile, the Helot pumps in and out of you a few more times as he shoots his last spurts of cum, then pulls out with a slurping noise. He wipes the cum on his cock off on your skin, then stands up and just leaves you lying there, his sperm oozing out of your gaping pussy.";
			WaitLineBreak;
			say "     Lying on the ground, exhausted, naked and sweaty, you notice something... different about the man who just fucked you. His hair has gotten shorter and he seems even more in shape than before. The helmeted head of the changed Helot turns to look at you. 'Get off my cloak, slave - before you leak cum all over it.' He even sounds different, more commanding and certain of being obeyed somehow. Undoing the clasp holding your red cloak, you put a hand under your asshole so that the man's sperm doesn't drip on the fabric and move aside. Your fucker picks up the cloak and dons it, then walks away, his transformation into a proud warrior complete. After the newly shifted Spartan is gone, you clean yourself up as much as possible, then pick up the ragged loincloth lying beside you and bind it around your hips.";
			say "[StealthHelotTransformation]";
		else: [general sex]
			if BodyName of Player is "Helot Manservant" and FaceName of Player is "Helot Manservant":
				say "     As you submit, the Helot grasps your shoulder and says 'Sorry buddy, but... you know how it is to be hungry. And I'm somehow horny all the time here too...' With that, his hands move to the knots of his loincloth, which he lets drop to the ground, revealing his full-on erection.";
			else if BodyName of Player is "Amazonian" and FaceName of Player is "Amazonian":
				say "     As you fall to your knees, beaten, the Helot strokes a finger along your cheek and says 'Combat just isn't for women, see - come on, let me show you a good time instead. That's what the gods made you for, after all.' With that, his hands move to the knots of his loincloth, which he lets drop to the ground, revealing his full-on erection.";
			else:
				say "     As you fall to your knees, beaten, the Helot grasps your shoulder and says 'Sorry about this, but... it's hard to be hungry. And I'm somehow horny all the time here too...' With that, his hands move to the knots of his loincloth, which he lets drop to the ground, revealing his full-on erection.";
			say "[Helot fucks]";
	else: [player loses]
		if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior": [special sex scene for Helot on Spartan]
			say "     As you stumble back from the last blow, the Helot goes for a follow-up stroke that almost literally knocks you out of your sandals. Bruised, you fall to the ground to lie on your back. When the stars stop dancing in front of your eyes, you see the young man standing over your chest, looking down on you with a grin. 'How the mighty have fallen...' He leans down to pull the Greek helmet off your head, then dons it himself. 'Let us see how you like being a slave for a change!'";
			say "     Hands moving to undo the knots of his ragged loincloth, the Helot throws it aside to reveal his already half hard cock. After stroking it a few times, he kneels and pushes the tip of his shaft against your mouth. 'Come on, open up - you're mine now,' he says, then slides his shaft between your lips and starts fucking your mouth. Pushing deep quickly, he makes you cough a few times but still continues going without much interest in your comfort.";
			WaitLineBreak;
			say "     The Helot's moans in lust get louder and louder and he plunges in and out of your mouth with increasing speed until suddenly, he stops, his shaft deep in your throat. Taking a deep breath, he pulls out slowly, waiting a moment before saying 'Phew - almost came right here. But not yet - I want to take your hole!' Standing up, he moves into position between your legs, raising and spreading them. As you feel the tip of his erection hotly against your pucker, he says 'Look me in the eye when I fuck you like a common slave! This is your new place in the world.' Then he thrusts into you with a satisfied grunt, burying his hard shaft deep in your tight hole. As his invading member slides deeper, stretching your passage around it, something inside you tells you he's right - this is right - your place in the world is under this virile young man, serving him. Fully submitting yourself to getting used as a slave with that realization, your arms and legs pull him down on top of you, making him go deeper and pound your ass harder. Loud moans escape your mouth as his cock rubs your prostrate. Slamming forward with powerful thrusts, the young man's hips hitting your ass with slapping noises, the Helot speeds up as his arousal mounts. Soon he gives a satisfied grunt, plunging his cock as deep into your body as he can, and spurt after spurt of his seed shoot into you. You can feel his hard shaft pulse against your inner walls with each further burst of cum.[mimpregchance]";
			say "     Being bred by your master, the amazing full feeling of having his warm load inside you, your own orgasm follows just moments later. [if Player is male]Long bursts of cum jet out of the tip of your manhood, splashing over your chest[else]Your whole body shakes in the grip of climax[end if]. Meanwhile, the Helot pumps in and out of you a few more times as he shoots his last spurts of cum, then pulls out of your ass with a slurping noise. He wipes the cum on his cock off on your skin, then stands up.";
			WaitLineBreak;
			say "     Lying on the ground, exhausted, naked and sweaty, you notice something... different about the man who just fucked you. His hair has gotten shorter and he seems even more in shape than before. The helmeted head of the changed Helot turns to look at you. 'Get off my cloak, slave - before you leak cum all over it.' He even sounds different, more commanding and certain of being obeyed somehow. Undoing the clasp holding your red cloak, you put a hand under your asshole so that the man's sperm doesn't drip on the fabric and move aside. Your fucker picks up the cloak and dons it, then walks away, his transformation into a proud warrior complete. After the newly shifted Spartan is gone, you clean yourself up as much as possible, then pick up the ragged loincloth lying beside you and bind it around your hips.";
			say "[StealthHelotTransformation]";
		else if BodyName of Player is "Cerberus" and FaceName of Player is "Cerberus": [special sex scene for Helot on Cerberus -> guardian of the underworld (Hades)]
			say "     As you fall to your knees, beaten, the Helot gives a short laugh. 'Who'd have thought that the famed guardian of Hades is just a lapdog?' He looks around, then turns his head back to you, looking over your body. 'I really should go - but I can't resist some doggy style with you.'";
			say "     With that, he undoes the knots of his loincloth and lets it fall to the ground, revealing a full-on erection. Pushing you over so you're on all fours, he then moves behind you and gropes your buttcheeks, pulling them apart. You can feel the hot tip of his shaft stroke over your hole, then push against your pucker until it opens up and allows you entry. As his invading member slides deeper, stretching your passage around it, an amazing feeling of fullness suffuses your body. Moaning deeply, you grind back against his crotch as the Helot moves in and out of your body.";
			say "     Slamming forward with powerful thrusts, the young man's hips hitting your ass with slapping noises, the Helot speeds up as his arousal mounts. Soon he gives a satisfied grunt, plunging his cock as deep into your body as he can, and spurt after spurt of his seed shoot into you. You can feel his hard shaft pulse against your inner walls with each further burst of cum.[mimpregchance]";
			WaitLineBreak;
			say "     Being bred by this young man, the amazing full feeling of having his warm load inside you, your own orgasm follows just moments later. [if Player is male]Long bursts of cum jet out of the tip of your manhood, splashing over the ground below[else if Player is female]Your whole body shakes in the grip of climax, femcum running down your legs[else]Your whole body shakes in the grip of climax[end if]. Meanwhile, the Helot pumps in and out of you a few more times as he shoots his last spurts of cum, then pulls out of your ass with a slurping noise. He wipes the cum on his cock off on your skin, then stands up and grabs his loincloth from the ground. With an affectionate slap on the ass and a moaned 'Good dog.', the Helot leaves you ";
		else: [general sex]
			if BodyName of Player is "Helot Manservant" and FaceName of Player is "Helot Manservant":
				say "     As you fall to your knees, beaten, the Helot puts a hand to your shoulder and says 'Sorry buddy, but... you know how it is to be hungry. And I'm somehow horny all the time here too...' With that, his hands move to the knots of his loincloth, which he lets drop to the ground, revealing his full-on erection.";
			else if BodyName of Player is "Amazonian" and FaceName of Player is "Amazonian":
				say "     As you fall to your knees, beaten, the Helot strokes a hand along your cheek and says 'Combat just isn't for women, see - come on, let me show you a good time instead. That's what the gods made you for, after all.' With that, his hands move to the knots of his loincloth, which he lets drop to the ground, revealing his full-on erection.";
			else:
				say "     As you fall to your knees, beaten, the Helot puts a hand to your shoulder and says 'Sorry about this, but... it's hard to be hungry. And I'm somehow horny all the time here too...' With that, his hands move to the knots of his loincloth, which he lets drop to the ground, revealing his full-on erection.";
			say "[Helot fucks]";

to say Helot fucks:
	if Player is female: [female + herm]
		LineBreak;
		say "     Instructing you to strip, then lie down on the ground, the Helot kneels down between your legs. Running his fingers over your pussy lips, stroking and rubbing, he gets your juices flowing, making you wet with rising lust. Stimulating fingers playing with your sex, being pushed inside your vagina and caressing your insides, he keeps going until you're moaning for him to fuck you. With a grin, the Helot is on you in a second, running his hands over your body while his hips slide against yours, his hard cock rubbing against your skin. Then it finds the opening of your pussy and with a lust-filled grunt, the young man thrusts inside. He fucks you vigorously, pistoning in and out with fluid movements and makes you gasp and moan in pleasure at his invasion of your body. Slamming forward with powerful thrusts, his hips hitting your ass with slapping noises, your Helot captor speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoot into you. You can feel his hard shaft pulse against your inner walls with each shot.[fimpregchance]";
		LineBreak;
		say "     The Helot rests his hard cock inside you for a moment after he stops cumming, then pulls out and moves to look through your gear.";
	else: [male + neuter]
		say "     Instructing you to strip, then get on all fours on the ground, the Helot gets into position behind you. He runs his fingers over your butt, squeezing and groping your cheeks before moving on to your hole. There, he rubs over your pucker, then pushes against it, slowly inserting a finger into your body. When he touches your prostrate and strokes it, you gasp at the pleasure it gives you, moaning and panting as he keeps going for some time, adding another finger, then another after a while. Stimulating fingers playing with your rear entrance, he keeps going until you're moaning for him to fuck you. With a grin, the Helot is on you in a second, his digits replaced by another part of his body, this one rock hard and leaking pre-cum from its tip. An electrifying feeling runs through your body as the tip of his cock touches your pucker, then slowly pushes inward, spreading your opening around it. He manages to give you a moment to get used to it, then the young man thrusts fully inside. He fucks you vigorously, pistoning in and out with fluid movements and makes you gasp and moan in pleasure at his invasion of your body. Slamming forward with powerful thrusts, his hips hitting your ass with slapping noises, your Helot captor speeds up as his arousal mounts. Soon he gives a deep moan, plunging his shaft as deep into your body as he can, and spurt after spurt of his seed shoot into you. You can feel his hard shaft pulse against your inner walls with each shot.[mimpregchance]";
		LineBreak;
		say "     The Helot rests his hard cock inside you for a moment after he stops cumming, then pulls out and moves to look through your gear.";
	if carried of food >= 1:
		say "     Pulling some food from your pack, the Helot hungrily takes a bite and nods to you. 'Ah - I really needed that. Sorry for taking your stuff, but I'm really hungry.' With that, he walks off and leaves you to pick up the rest of your belongings.";
		decrease carried of food by 1;
	else:
		say "     Digging in your pack, the Helot looks up after a while, a disappointed expression on his face. 'You don't have any food either? Damn. Looks like this'll be another hungry day for me then.' He shrugs and walks off, and you can hear him murmur 'At least my balls don't ache as much now...'";

to say Helot loses:
	if inasituation is true:
		say ""; [dealt with at the source]
	else:
		if BodyName of Player is "Helot Manservant" and FaceName of Player is "Helot Manservant":
			say "     Breathing hard, the somewhat bruised young Helot raises his hands to placate you. 'Whoa - you really can fight! I'm sorry I tried to rob you, but... you know how it is to be hungry.' He looks to the ground for a second, then back at you. 'I don't have anything, so I guess you'll be taking my body?' With that, he undoes the knots of his loincloth and lets it fall to the ground, revealing his lean, muscled body.";
		else if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior": [note: Cypteia = secret police, killing rebellious Helots to keep them under control]
			say "     Breathing hard, the somewhat bruised young Helot grimaces, then drops both arms to his sides and looks down. 'I'm sorry... master. I shouldn't have tried fighting you.' His hands move to undo the knots of his loincloth, letting it fall to the ground. Now the lean, muscled man stands submissively before you. 'I'm ready for your punishment. Do with me what you will.'";
		else if BodyName of Player is "Amazon" and FaceName of Player is "Amazon": [Someone in a costume he recognizes]
			say "     Breathing hard, the somewhat bruised young Helot raises his hands to placate you. 'Whoa - you really can fight! I was wrong about you.' He looks to the ground for a second, then back at you. 'I don't have anything, so I guess you'll be taking my body as repayment? That's how it is in this land?' With that, he undoes the knots of his loincloth and lets it fall to the ground, revealing his lean, muscled body.";
		else if BodyName of Player is "Cerberus" and FaceName of Player is "Cerberus": [guardian of the underworld (Hades)]
			say "     Breathing hard, the somewhat bruised young Helot raises his hands to placate you. 'Whoa - I - I was kidding. Who could get past you, the guardian of the underworld? Please don't eat me.' He hurriedly undoes the knots of his loincloth, then suggestively shows you his naked body. 'You can do... other things with me.'";
		else: [Humans and humanoid people in modern clothing, all beastly shapes]
			say "     Breathing hard, the somewhat bruised young Helot raises his hands to placate you. 'Whoa - you really can fight! I'm sorry I tried to rob you, but...' He looks to the ground for a second, then back at you. 'I don't have anything, so I guess you'll be taking my body as reparation? That's how it is in this land?' With that, he undoes the knots of his loincloth and lets it fall to the ground, revealing his lean, muscled body.";
		if Player is male: [male+herm]
			LineBreak;
			say "     Looking over the handsome Helot, you could either mount his cock with you on top [link](1)[as]1[end link], fuck him [link](2)[as]2[end link], have him blow your cock [link](3)[as]3[end link], suck him off [link](4)[as]4[end link] or just leave [link](5)[as]5[end link].";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 5:
				say "Choice? (1-5)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4 or calcnumber is 5:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] to fuck him, [link]3[end link] to get sucked, [link]4[end link] to blow him or [link]5[end link] to leave.";
			if calcnumber is 1: [mount his cock]
				say "[Helot ride]";
			else if calcnumber is 2: [fuck him in the ass]
				say "[Helot fucked]";
			else if calcnumber is 3: [get sucked off]
				say "[Helot oral]";
			else if calcnumber is 4: [give him a blowjob]
				say "[Helot blown]";
			else: [leave]
				say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised Helot behind.";
		else if Player is female: [female]
			LineBreak;
			say "     Looking over the handsome Helot, you could either mount his cock with you on top [link](1)[as]1[end link], let him lick your pussy [link](2)[as]2[end link], suck him off [link](3)[as]3[end link] or just leave[link](4)[as]4[end link].";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] get licked, [link]3[end link] to blow him or [link]4[end link] to leave.";
			if calcnumber is 1: [mount his cock]
				say "[Helot ride]";
			else if calcnumber is 2: [get licked]
				say "[Helot oral]";
			else if calcnumber is 3: [give him a blowjob]
				say "[Helot blown]";
			else: [leave]
				say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised Helot behind.";
		else: [neuter]
			LineBreak;
			say "     Looking over the handsome Helot, you could either mount his cock with you on top [link](1)[as]1[end link], suck him off [link](2)[as]2[end link] or just leave[link](4)[as]4[end link].";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to ride his cock, [link]2[end link] to blow him or [link]3[end link] to leave.";
			if calcnumber is 1: [mount his cock]
				say "[Helot ride]";
			else if calcnumber is 2: [give him a blowjob]
				say "[Helot blown]";
			else: [leave]
				say "     Deciding you should focus on more important stuff right now, you turn away and walk off, leaving a rather surprised Helot behind.";


to say Helot ride:
	say "     Spreading the dropped loincloth a bit on the ground with your foot so he at least has something under his ass, you tell the young man to lie down. He obeys your commands quickly and without hesitation, looking pretty good with his toned body stretched out and the long hard cock standing erect, waiting for your pleasure.";
	if (player is male) or (player is herm and anallevel > 1): [male + herm (except those with less anal)]
		say "     Kneeling down next to him, you bend over and take the Helot's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock penetrates your hole, spreading it around his hard shaft. You go deeper, slowly sinking him further into you until finally your buns touch his hips and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The Helot's shaft feels great rubbing your inner walls and you gasp as it hits your prostate. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the Helot's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and your anal muscles grip your partner's cock tightly as you cum, long strings of your seed arching out of your cock to splat all over the Helot's chest. And he's not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum.[mimpregchance]";
		LineBreak;
		say "     Resting on top of your handsome Helot for a moment, you look down to watch your cum pool between the ridges of his muscles. Giving a satisfied sigh as you feel his cock going soft and then plop out of your ass, you stand up and gather your clothes and stuff. After a last look at the Helot, still lying there with your cum slowly drying on his chest, you turn your thoughts back to survival in the city and leave.";
	else if Player is female: [female]
		say "     Kneeling down next to him, you bend over and take the Helot's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock touches your moist pussy lips, then spreads them around his hard shaft. You go deeper, slowly sinking him further into you until finally your hips meet and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The Helot's shaft feels great rubbing your inner walls and you gasp as it brushes over your g-spot. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the Helot's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and copious amounts of femcum start to run down the Helot's cock as you orgasm, a tingly feeling of satisfaction spreading through your whole body. Your Helot is not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum.[fimpregchance]";
		LineBreak;
		say "     Resting on top of your handsome Helot for a moment, you look down to watch his muscled chest move as he breathes deeply while coming down from his high. Giving a satisfied sigh as you feel his cock going soft and then plop out of your vagina, you stand up and gather your clothes and stuff. After a last look at the Helot, still lying on the ground in all his naked glory, you turn your thoughts back to survival in the city and leave.";
	else: [neuter]
		say "     Kneeling down next to him, you bend over and take the Helot's cock into your mouth. Bobbing up and down on it a bit, you make sure it's nice and wet, then straddle him with your knees left and right of his hips. With this athletic man laid out before you, his erection resting hotly against your bottom you almost shake in anticipation. After running your hands down his chest, stroking and touching his hairless skin, you grasp his erect shaft to hold it up and lower yourself on it.";
		say "     Both of you moan as the tip of his cock penetrates your hole, spreading it around his hard shaft. You go deeper, slowly sinking him further into you until finally your buns touch his hips and he's all the way in. Taking a deep breath, you wait for a moment to get used to the hard rod, then start sliding up and down on it. The Helot's shaft feels great rubbing your inner walls and you gasp as it hits your prostate. Riding his cock has your former opponent pretty wound up, and soon he puts his hands on your hips to pull you down on his shaft as he thrusts upwards into you.";
		say "     With the wild ride on the Helot's cock just getting a bit wilder, it's not much longer before you're driven over the edge. Your whole body stiffens and your anal muscles grip your partner's cock tightly as you orgasm, a tingly feeling of satisfaction spreading through your whole body. Your Helot is not far behind either, with his shaft starting to throb moments later as your insides are painted with his cum.[mimpregchance]";
		LineBreak;
		say "     Resting on top of your handsome Helot for a moment, you look down to watch his muscled chest move as he breathes deeply while coming down from his high. Giving a satisfied sigh as you feel his cock going soft and then plop out of your ass, you stand up and gather your clothes and stuff. After a last look at the Helot, still lying on the ground in all his naked glory, you turn your thoughts back to survival in the city and leave.";

to say Helot fucked:
	say "     Pushing the dropped loincloth a bit with your foot so the ragged fabric lies flat on the ground, you motion the young man to kneel on it. He obeys your commands quickly and without hesitation, his toned body erect and ready. Moving into position behind the naked man, you run your hands down his back, ending at his bubble butt, a firm, sun-bronzed cheek cupped with each hand. You squeeze them, then pull them a bit apart, revealing his inviting pink pucker. It flexes a bit in front of your eyes as your captive realizes he's about to be fucked. He then wets a finger in his mouth and pushes it into his own rear end, moaning silently as he prepares himself for you.";
	say "     Who could resist such an enticing display? You don't even try, instead following the urges of your own rapidly hardening cock. Moving into position, you rub it up and down the submissive Helot's crack and add your precum as a bit more lube to his hole. Soon you can't hold back any more and press against into opening, spreading it around your hard shaft as you sink inside. The young man moans as you slide deeper and deeper into his body, rubbing very sensitive spots. 'Ah, fuck me. Harder!' he begs, and you eagerly comply, intensifying your thrusts.";
	WaitLineBreak;
	say "     As you fuck the athletic young man, you let your hands wander all over his human body, stroking his hairless skin and defined muscles. One of your hands brushes his cock, rock hard at getting fucked, and you take hold of it to stroke your handsome bottom boy. Pounding his ass hard and giving him a reacharound, it's no big wonder that the Helot's moans soon come faster and faster and are quickly followed by lust-filled shouts as he orgasms. Long strings of white cum blast from his cock, landing with little splats all over the ground in front of him.";
	say "     The male slave's hole twitches around your shaft as he comes, giving you the final push for your own orgasm. As the pleasant tingle rises in your balls, you thrust in deep one last time, grinding your hips against his ass. Then the floodgates open and blast after spurt after spurt of your seed blast into the Helot's ass. Giving a satisfied sigh as you finish coming, you pull out of the young hunk and stand up. Giving him a last look, cum dripping out of his ass onto the loincloth he's kneeling on, you leave.";

to say Helot oral:
	say "     Pushing the dropped loincloth a bit with your foot so the ragged fabric lies flat on the ground, you motion the young man to kneel on it. He obeys your commands quickly and without hesitation, his toned body erect and ready.";
	if Player is male: [male + herm]
		say "     Stepping up in front of him, you hold out your erect cock for your submissive Helot and say 'Get to work, boy.' An oh does he do it... you're treated with his delightful tongue licking your balls and teasing your member, which has you dripping pre-cum before he even takes you into his mouth. Either this man was pretty skilled giving blowjobs before, or the nanites put some upgrades in his head to allow him to please his masters. You don't really care which - as you're far too busy running your fingers through the Helot's long hair, moaning as he bobs down on your hard cock.";
		say "     His talented mouth brings you to the edge of orgasm several times, always slowing down when you get too close and allowing you to cool down before he goes on. Then finally, he goes all out, sliding his lips up and down on your shaft and even taking you all the way, deep-throating you. As you gasp 'I'm coming!', he pulls back a bit to take your load on his tongue, tasting it before swallowing it all down. Giving a satisfied sigh as you finish coming, you pull out of the young hunk's mouth and step back. Looks like your Helot boy is quite into oral sex, as he's stroking his own hard cock now. It doesn't take too much longer until he comes, long strings of his cum arching through the air and landing on the ground next to your feet. Giving the hot young Helot's naked form one last look, you leave.";
	else: [female]
		say "     Stepping up in front of him, you brush your fingers over your moist pussy lips and say 'Get to work, boy.' An oh does he do it... you're treated with his delightful tongue licking over your sensitive pussy lips, gently teasing here and there before being pushed inside your vagina. Either this man was pretty skilled giving oral before, or the nanites put some upgrades in his head to allow him to please his masters. You don't really care which - as you're far too busy running your fingers through the Helot's long hair, moaning as he laps away at your sex and teases you with the tip of his tongue.";
		say "     His talented mouth brings you to the edge of orgasm several times, always slowing down when you get too close and allowing you to cool down before he goes on. Then finally, he goes all out, suckling on your clit and stroking you till you can't hold it anymore. As you gasp 'I'm coming!', he pulls back a bit to look up into your face, looking pleased with himself at making you orgasm. Giving a satisfied sigh as you come down from your high, you run a hand through the Helot's hair and step back. Looks like your young captive is quite into oral sex, as he's furiously stroking his hard cock. It doesn't take too much longer until he comes, long strings of his cum arching through the air and landing on the ground next to your feet. Giving the hot young Helot's naked form one last look, you leave.";

to say Helot blown:
	say "     Straightening out the fabric of the dropped loincloth a bit, you kneel on it, then motion the young man to come closer. He gets a hopeful look on his face, which leads over to a smile and satisfied moan as you grasp his cock and lick over its underside. Delighted at getting a blowjob, even after he lost a fight, he brings his hand to your head to guide you. As you follow his lead without resisting, he gets bolder, using both hands to hold you and moving his hips. Before long, he's face-fucking you pretty quickly and often pushes into your mouth and down your throat all the way. Soon, the Helot's moans get louder and louder and then he cums, shooting spurt after spurt of his load into your mouth. Looking down at you as you swallow his cum, he remembers who won your fight and says 'Err - thank you?!' After that, he collects his loincloth and leaves.";

to say HelotDesc:
	setmongender 3;
	say "     You cross paths with a young man clothed in nothing but sandals and a ragged loincloth. He's has dark hair, sun-bronzed skin and is muscular, but with a lean look - likely from going hungry some days. He gives you a wary look, then says:[line break]";
	if BodyName of Player is "Helot Manservant" and FaceName of Player is "Helot Manservant": [no honor among slaves]
		say "     'Another slave like me, eh? Don't think that makes us friends - it's everyone for himself in this strange, cursed place... especially with how hungry - and horny - I am right now!' Having unobtrusively walked closer while he was talking, the man suddenly jumps you.";
	else if BodyName of Player is "Spartan Warrior" and FaceName of Player is "Spartan Warrior": [note: Cypteia = secret police, killing rebellious Helots to keep them under control]
		say "     'Well, well - one of our lords and masters all alone. Are you part of the Cypteia? No matter - with no armor and no weapon, you won't be rounding any of us up. I'll give you a good trashing instead!' With a snarl, he throws himself on you.";
	else if BodyName of Player is "Amazon" and FaceName of Player is "Amazon": [Someone in a costume he recognizes]
		say "     'A woman as a soldier? Stop fooling yourself - come over here, wench... I'll show you a good time.' As you don't immediately jump to his orders, the young man murmurs something about showing you your place, then rushes at you.";
	else if BodyName of Player is "Cerberus" and FaceName of Player is "Cerberus": [guardian of the underworld (Hades)]
		say "     'So this is Hades after all? You won't stop me, dog of hell. I will escape this place!' With a determined expression, the man throws himself at you.";
	else: [Humans and humanoid people in modern clothing, all beastly shapes]
		say "     'Are you an inhabitant of this city? How can you live in this cursed place?' Before you can answer, you hear his stomach growling loudly. 'Bah, enough talk - I'm hungry... and horny.' With that, he rushes at you.";

Section 2 - Creature Insertion

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	Libido	Loot	Lootchance	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Helot";
	add "Helot Manservant" to infections of HumanList;
	add "Helot Manservant" to infections of HistoricalList;
	add "Helot Manservant" to infections of MaleList;
	add "Helot Manservant" to infections of BipedalList;
	now Name entry is "Helot Manservant";
	now enemy title entry is ""; [name of the encountered creature at combat start - Example: "You run into a giant collie." instead of using "Smooth Collie Shemale" infection name]
	now enemy Name entry is ""; [specific name of unique enemy]
	now enemy type entry is 0; [0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters]
	now attack entry is "[one of]He gives you a hard kick - ouch, that hurt.[or]He punches you with a balled fist.[or]Throwing a handful of dirt into your face, the young Helot manages a painful blow to your side while you're off guard.[at random]";
	now defeated entry is "[Helot loses]";
	now victory entry is "[Helot wins]";
	now desc entry is "[HelotDesc]";
	now face entry is "a handsome young man's, still smooth and beardless. Shaggy black hair falls down to your shoulders";
	now body entry is "that of a young man, muscular, but with a lean look that hints at going hungry at least part of the time. Your wear but a pair of sandals and a pretty ragged loincloth of faded cloth";
	now skin entry is "smooth, sun-bronzed"; [ format as "You have (your text) skin"]
	now tail entry is "You have a tight, firmly muscled butt."; [ write a whole Sentence or leave blank. ]
	now cock entry is "human"; [ format as "You have a 'size' (your text) cock ]
	now face change entry is "it shapes itself into a handsome male visage, smooth-faced and beardless. Shaggy black hair falls down to your shoulders"; [ format as "Your face feels funny as (your text)." ]
	now body change entry is "it is reshaped into a that of a young man, muscular, but with a lean build. Looking down, you notice sandals on your feet and a ragged loincloth around your hips - where did those come from?"; [ format as "Your body feels funny as (your text)." ]
	now skin change entry is "it smoothes out, becoming almost hairless and sun-bronzed"; [ format as "Your skin feels funny as (your text)." ]
	now ass change entry is "it gets tight and firmly muscled"; [ format as "Your ass feels funny as (your text)." ]
	now cock change entry is "it becomes human-shaped"; [ format as "Your cock feels funny as (your text)." ]
	now str entry is 20;
	now dex entry is 16;
	now sta entry is 20;
	now per entry is 12;
	now int entry is 10;
	now cha entry is 12;
	now sex entry is "Male";
	now HP entry is 70;
	now lev entry is 9;
	now wdam entry is 12;
	now area entry is "Campus";         [ Case sensitive]
	now Cock Count entry is 1;               [ number of cocks if sex is 'Male' or 'Both' ]
	now Cock Length entry is 12;
	now Ball Size entry is 2;          [ Size of balls ]
	now Nipple Count entry is 2;             [ Number of nipples. ]
	now Breast Size entry is 0;         [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0;               [ number of pussies if sex is 'Female' or 'Both' ]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0; [size 1-5, generates adjectives of extremely tight/tight/receptive/open/gaping]
	now libido entry is 10;             [ Amount player Libido will go up if defeated ]
	now loot entry is "";               [ Dropped item, blank for none. Case sensitive. ]
	now lootchance entry is 0;          [ Percentage chance of dropping loot, from 0-100. ]
	now scale entry is 3;               [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "lean"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "human";          [ one-word creature type. Ex: feline, canine, lupine, robotic, human... Use [one of] to vary ]
	now magic entry is false;
	now resbypass entry is false;
	now non-infectious entry is false;
	now Cross-Infection entry is ""; [infection that this infection will give the player when they lose; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0;      [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "default";
	now BannedStatus entry is false;

[
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
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
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
]

Section 3 - Helot Events

Table of GameEventIDs (continued)
Object	Name
Wandering Helot	"Wandering Helot"

Wandering Helot is a situation.
The sarea of Wandering Helot is "High".

WanderingHelotTimer is a number that varies. [@TagNotSaved]
WanderingHelotTimer is usually 20000.

[Event sequence with a wandering Helot who escaped the college grounds]
[Resolution Stages     ]
[ 0: Never seen        ]
[ 1: Seen once         ]

Instead of Resolving a Wandering Helot:
	If resolution of Wandering Helot is 0:
		say "     While exploring the streets of the once rich and prosper High Rise District, you come across a very unusual event. Far ahead of you, still barely visible from your perspective of view, is a man walking in your direction. From what you can perceive, he's wearing a backpack, holding onto the straps with his posture slightly arched forward, an indicative that whatever he's carrying must be heavy, or that he has found plenty of loot in his last scavenge run. Though what makes your eyes jump is that he, in fact, looks perfectly human... Until his silhouette lightens and his true nature is revealed. A fully fledged, independent and lonesome helot, walking around all by himself, scavenging around the streets of this district, has somehow found a way to escape the college grounds and become a wanderer!";
		say "     How he managed to do that, you have no idea, but he surely looks a little puffier than the usual helots you encounter under the sometimes cruel ownership of the spartans. This one must have been having success in his adventurous life, and judging by the amount of loot he must have on his back right now, you'd say he's got very good scavenging skills. He hasn't noticed you yet, as you took cover behind a corner to some dark alley before you fell in his line of sight, and he's going to get right past you in a few.";
		now resolution of Wandering Helot is 1;
		WaitLineBreak;
		WanderingHelot1;
	else if resolution of Wandering Helot is 1:
		if WanderingHelotTimer - turns < 7:
			say "     While exploring the streets of the once rich and prosper High Rise District, you come across the area where you've last seen the wandering helot. Though it hasn't been long since you crossed paths with him, so it's very unlikely that he'll be here around this time. You suppose you could check later for another chance at running into him, however, but for now, you simply continue on your way.";
		else:
			say "     While exploring the streets of the once rich and prosper High Rise District, you come across the area where you've last seen the wandering helot. It's been long enough, so maybe you'll have a chance at encountering him again if you wait. With luck, you might be able to snatch some loot from him, or have some close and personal fun. [bold type]Do you want to wait?[roman type][line break]";
			LineBreak;
			say "     [link](1)[as]1[end link] - Yes, let's wait for him.";
			say "     [link](2)[as]2[end link] - No, just move on.";
			say "     [link](3)[as]3[end link] - No, and never more.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 3:
				say "Choice? (1-3)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to wait for him, [link]2[end link] to just move on or [link]3[end link] to move on and avoid the area forever.";
			if calcnumber is 1: [Wait]
				LineBreak;
				say "     With your decision made, you take cover behind an alley entrance and take your time awaiting the helot to arrive at your position.";
				if a random chance of 3 in 5 succeeds:
					say "     You wait... and wait...";
					say "     And your efforts are rewarded! By the time you're considering to leave, the familiar silhouette shows up in the horizon. The helot is walking down the street, and you've got him on the sights. As he approaches your position, the time for you to act arrives...";
					WanderingHelot1;
				else:
					say "     You wait... and wait...";
					say "     And unfortunately, no signs of him. It's very unlikely that you'll ever see him today, so you're left no choice but to give up on this idea for now. Maybe some other time you'll be luckier.";
			else if calcnumber is 2: [No]
				LineBreak;
				say "     Right now you have other things in mind, so you just get going through the street and resume your exploration.";
			else if calcnumber is 3:
				LineBreak;
				say "     You decide to leave this place, and for good this time, avoiding the area so that you can erase any chance of meeting the wandering helot again.";
				now resolution of Wandering Helot is 99;
				now Wandering Helot is resolved;

to WanderingHelot1:
	say "     Sounds like you have some options here. [bold type]You could try to tackle him down by surprise and take his loot, attempt to talk to him as he passes by, or just remain hidden and leave him be.[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Attempt to tackle him with brute force.";
	say "     [link](2)[as]2[end link] - Just talk to him.";
	say "     [link](3)[as]3[end link] - Let him pass, this time.";
	say "     [link](4)[as]4[end link] - Let him pass and avoid this area in general for the future.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to tackle him by surprise, [link]2[end link] to try to talk to him, [link]3[end link] let him pass or [link]4[end link] to let him pass and avoid this area forever.";
	if calcnumber is 1: [wait and tackle, strength roll]
		LineBreak;
		say "     You decide to wait until he's in range for a surprise attack, build up your strength and, once he comes close enough, you rush at him!";
		WanderingHelotTackle;
	else if calcnumber is 2: [talk]
		say "     Deciding not to resort to violence, you think it might be a good thing to try to get to know the helot! What could go wrong in trying to talk to a former slave carrying an enormous amount of loot on his back, after all? With this in mind, you wait for him to walk up to your position. Exiting from the alley street and towards him, you greet him in the most friendly way you find possible. 'Aah! Who's this?! A thief?! You won't get anything from me!' You rush to explain that you're not a thief and that you just want to talk to him...";
		let bonus be (( charisma of player minus 10 ) divided by 2);
		let diceroll be a random number from 1 to 20;
		say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Charisma Check):[line break]";
		if diceroll + bonus >= 10: [convinces him]
			say "     Your words were successful at calming him down, but not to fully convince him that you're not here to have something from him. Despite your attempts at making peace, he makes you an offer. 'Very well, if you want something from me, you gotta give me a blowjob. I'm horny and you look hot. Do that and I'll give you some food or water.' With the proposal made, the helot shows off his rather large endowment by pushing his loincloth to the side, already rising to attention with the antecipation of feeling your lips wrapped around it.";
			say "     'How's it gonna be?' he asks, starting to get impatient.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Accept and give him a blowjob in exchange for loot.";
			say "     ([link]N[as]n[end link]) - You could just try to tackle him down, anyway.";
			if player consents: [blowjob]
				say "     What's the harm in sucking some dick for vital supplies? Besides that, he's got a really good one, so it's a win-win situation for both of you... probably. Nodding positively to the helot, he gives his manhood a longer stroke and steps forward, placing a hand on the back of your head and guiding you over to his crotch. 'You better do a good job, too.'";
				say "     With you now on your knees in front of him, you bring your hands over his shaft and balls, giving each one of them a nice gentle squeeze before you lick the underline of his meat stick right towards the top of his already throbbing erection. 'Is that all you've got? That's how bad you want some of my hard earned lood?!' he taunts you, but the moans he lets out while you work his cock betray his attempts at looking tough. Eventually, he just loses himself in the sensation of your warm tongue and mouth covering every pulsing inch of his dong, and he stops talking altogether, leaning his head back and simply enjoying your treatment. Now with the helot fully under the influence of your amazing cocksucking skills, you manage to pick up the pace and lead him closer to the edge...";
				say "     'Fuck, I wasn't expecting you to be so good...' he says, which is actually flattering. Grabbing his balls with one hand and stroking the rest of his shaft with the other, you give it all into sucking the entirety of his length, and that soon drives him near orgasm. You have a feeling he tries to make you slow down, but he doesn't seem very sure of that, and so you know you have the green light to make him cum right away. Stroking his dick with increased vigor as your tongue works the tip of his cock, leaking precum like crazy, his moaning intensifies as he gets closer to cum...";
				WaitLineBreak;
				say "     You don't intend on stopping or slowing down either, and your efforts are rewarded when he shoots his load without even warning you, some of the heavy goblets of cum hitting you right in the face, warm and thick spurt after spurt being shot so hard you think he probably didn't have a release like this for too long! He goes on and on for several seconds, and you wouldn't believe on the mess he made if you hadn't seen it. You wait until his orgasm subsides, giving his dick another polite kiss before you stand up, awaiting his part of the deal. 'Alright... Fuck! I'll give you something.' He takes something out of his backpack and hands it to you. It's a ";
				let randomnumber be a random number from 1 to 4;
				if randomnumber is:
					-- 1:
						say "[bold type]bottle of clean water in great conditions.[roman type][line break]";
						increase carried of water bottle by 1;
					-- 2:
						say "[bold type]soda can in great conditions.[roman type][line break]";
						increase carried of soda by 1;
					-- 3:
						say "[bold type]can of food in great conditions.[roman type][line break]";
						increase carried of food by 1;
					-- 4:
						say "[bold type]pack of chips in great conditions.[roman type][line break]";
						increase carried of chips by 1;
				say "     With the deal sorted, you say goodbye to eachother, each of you carrying on their own ways around the High Rise District.";
				now WanderingHelotTimer is turns;
			else:
				say "     Well, one thing is certain... He won't be expecting a surprise tackle!";
				WanderingHelotTackle;
		else: [fails]
			say "     But your words fall into deaf ears. He refuses to listen to anything you say, and before you know it, he brings his arms between both of you in order to proceed into pushinig your away. He surely mnages to hit you good! You have no way to keep balance and avoid falling hard on the ground with the might of a former slave warrior. He uses this opportunity to run away with the loot, leaving you behind knocked down and in pain. All you can do is see him run into one of the many streets, not giving you enough time to chase him after you manage to get up on your feet. That was unfortunate, but you may be able to catch him wandering around in this area again tomorrow or so, hopefully...";
		now WanderingHelotTimer is turns;
	else if calcnumber is 3: [let him pass]
		say "     Right now, you have other things in mind, so you just remain hidden and let the helot pass by, resuming your journey right afterwards.";
		now WanderingHelotTimer is turns;
	else if calcnumber is 4: [let him pass and avoid forever]
		say "     You have other things to worry about, and the helot is not one of them. After waiting some time for the helot to get through the street and past you, you take note of the area in order to avoid it in the future.";
		now resolution of Wandering Helot is 99;
		now Wandering Helot is resolved;

to WanderingHelotTackle:
	let bonus be (( strength of player minus 10 ) divided by 2);
	let diceroll be a random number from 1 to 20;
	say "You roll 1d20([diceroll])+[bonus] = [special-style-1][diceroll + bonus][roman type] vs [special-style-2]10[roman type] (Strength Check):[line break]";
	if diceroll + bonus >= 10: [tackles him successfully]
		say "     With good balance, a perfect pressure point and your impeccable physique, you manage to catch the helot by surprise and bring him down on the ground, with you on top of him! He grunts loudly when he hits the ground, though the backpack probably cushioned the fall enough to not hurt him much. 'Aah! Who's this?! Get out!' he shouts, trying to shove you away as you grab him by the wrists. He's flailing his arms in order to attempt to break free, but you manage to hold him down successfully. 'What do you want from me?! I don't have anything for you!' he loudly asks once he gives up the struggling, and the question also crosses your thoughts, as you need to make a move quickly. Although, you can't shake off the feeling of his barely covered bulge pressed between your buns, as he's unawarely rubbing it against you in the middle of his wiggling.";
		say "     Now that you've pinned him down, it's time to make a move. [bold type]You could try to snatch something out of his backpack and run away, or actually use the chance to have some fun with the helot[roman type], since he's so vulnerable right now...";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Steal from him.";
		say "     ([link]N[as]n[end link]) - His dick actually feels good between your asscheeks... (anal ride).";
		If player consents: [LOOT]
			LineBreak;
			say "     You don't have a lot of room to perform this action, so you're limited to take perhaps an item or two out of his backpack, which is full to the top! Quickly, you take hold of the helot's head and push yourself forward in order to reach his loot, accidentally rubbing your own groin on the manservant's face. He grunts and tries to stop you, but you keep him down long enough to slip a hand into the pack's contents and snatch a ";
			let randomnumber be a random number from 1 to 5;
			if randomnumber is:
				-- 1:
					say "[bold type]bottle of dirty water.[roman type][line break]";
					increase carried of dirty water by 1;
				-- 2:
					say "[bold type]bottle of clean water.[roman type][line break]";
					increase carried of water bottle by 1;
				-- 3:
					say "[bold type]soda can.[roman type][line break]";
					increase carried of soda by 1;
				-- 4:
					say "[bold type]can of food.[roman type][line break]";
					increase carried of food by 1;
				-- 5:
					say "[bold type]pack of chips.[roman type][line break]";
					increase carried of chips by 1;
			say "     Now it's time for you to get up and run away as fast as you can, less you want an enraged helot chasing you. With a quick leg play, you push yourself up and evade his muscular arms, achieving a perfect escape as you hear him shouting behind you 'Coward! Thief!' with his rather and surprising long reaching voice.";
			say "     With a successful assault, you walk away proudly with your reward, at the cost of the poor helot's hard work...";
			now WanderingHelotTimer is turns;
		else: [SEX]
			LineBreak;
			say "     The thought seems to grow more and more attractive in your mind, as you give in to the sensation of the helot's dick, still covered by his loincloth, slipping between your cheeks. 'I'm sure you want to steal from me! But... You're making me horny, too...!' he admits, and his efforts at fighting you come to a stop. Jerking his hips, you feel each thrust against your rear pump his erection a second harder than the last, and you find yourself nearly riding his prick, which is throbbing by now. This amount of teasing leaves you incapable of resisting the temptation, and with the helot underneath you, now even more vulnerable, it's just so easy to get what you want from him... either physically or materialistically.";
			say "     However, right now you're just focused on the throbbing rod that's teasing your backside, and feeling really tempted to just sit on it and give you both a very quick release. He seems to be helpless regarding this, not even fighting back as you gently push his loincloth away, revealing his by now glistening and rock hard erection. Then, slipping your hand around the throbbing shaft, you start stroking it, slowly and gently, as you[if player is not naked] slide down your lower gear just enough so that your cheeks stick outside and[end if] hover your rear above the manservant's dong, which is pulsing and eager for attention. The tip is so wet that you can feel it slide around your pucker with ease, a simple little push enough to make the cock sink itself inside you. 'Ahh...! Oh, it has been a while since I... Fuck, that feels good...'";
			WaitLineBreak;
			say "     You make an attempt to take as much of it inside you as you can, feeling his length reaching deep in your ass and throbbing even more. How much time has it been since this guy had any release at all? You feel like he's about to bust and you just got started... Though it's your hole that's feeling really good right now, so you focus on that by bringing it up and down, albeit slowly so you don't set off a cum eruption just yet. With enough care, you manage to ride his meat stick for a while before he warns you 'I'm gonna cum...!' with a squeaky tone, almost as if he was really trying hard to not just shoot for a long time now. Knowing he really won't last for much longer, you proceed to pull out...";
			say "     But as you do so, as slow as you try to be, you do it for long enough to set him off, and before you get your ass out - quite literally - of the danger area, you feel a thick and warm spurt of man milk hitting your buttcheek hard! You figure you should help him with the rest by stroking him as he unloads the rest, cum just flying everywhere around the both of you, and he surely shoots a lot, not even saving your hand from getting soaked in the white stuff! Just how much cum was this guy holding inside? He catches his breath and looks at you, completely exhausted from the intense orgasm he just had. 'That was... Fuck... I-I mean, well, now that you've got what you wanted, can you let me go?!' He doesn't sound very sure of what he's saying, but since you already had your fun, it's probably best just to leave him be. You get up to stand on your feet and move on...";
			WaitLineBreak;
			let randomnumber be a random number from 1 to 5;
			if randomnumber is:
				-- 1:
					say "     ... But not before you had snatched [bold type]a bottle of dirty water[roman type] out of his backpack while he was distracted.";
					increase carried of dirty water by 1;
				-- 2:
					say "     ... But not before you had snatched [bold type]a bottle of clean water[roman type] out of his backpack while he was distracted.";
					increase carried of water bottle by 1;
				-- 3:
					say "     ... But not before you had snatched [bold type]a soda can[roman type] out of his backpack while he was distracted.";
					increase carried of soda by 1;
				-- 4:
					say "     ... But not before you had snatched [bold type]a can of food[roman type] out of his backpack while he was distracted.";
					increase carried of food by 1;
				-- 5:
					say "     ... But not before you had snatched [bold type]a pack of chips[roman type] out of his backpack while he was distracted.";
					increase carried of chips by 1;
			now WanderingHelotTimer is turns;
	else: [gets knocked down badly, helot runs away]
		say "     Though you hit like a fly, and the helot's muscular body withstands your attempt at bringing him down. 'What the...?! Trying to steal my loot?! Get off, this is mine!' he shouts, as he brings his arms between both of you in order to proceed into pushing you away. Now he manages to hit you good! You have no way to keep balance and avoid falling hard on the ground with the might of a former slave warrior. He uses this opportunity to run away with the loot, leaving you behind knocked down and in pain. All you can do is see him run into one of the many streets, not giving you enough time to chase him after you manage to get up on your feet. That was unfortunate, but you may be able to catch him wandering around in this area again tomorrow or so, hopefully...";
		now WanderingHelotTimer is turns;

Table of GameEventIDs (continued)
Object	Name
Helot Captive	"Helot Captive"

Helot Captive is a situation.
The sarea of Helot Captive is "Campus".

[Single Event at the campus with a captive Helot and a human possibly being turned into a Helot by being fucked by a Spartan]
[Resolution Stages                           ]
[ 1: Human not saved                         ]
[ 2: Saved the human                         ]

Instead of resolving a Helot Captive:
	say "     During your stroll inside the College Campus, you come across a quite intriguing scene around the corner of a building, covered by the surrounding walls in a quite discrete spot. A spartan is dragging a tied up human with him, what seems to have been a lost soldier among the few squads that were sent to this area, and a helot, also restrained, laying just to the side as his master arrives with the new acquisition. You remain hidden during the whole sequence, as the warrior brings the human up against the wall, and from your angle, he seems to be preparing himself to fuck the poor soldier into submission. You can either [bold type]choose to stay and observe what happens next if you're curious, fight the spartan and try to at least save the human from being transformed, or simply take your leave[roman type] and pretend you never saw anything.";
	LineBreak;
	say "     [link](1)[as]1[end link] - Rescue the human!";
	say "     [link](2)[as]2[end link] - Just keep watching.";
	say "     [link](3)[as]3[end link] - Leave as it was nothing.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to rescue the human, [link]2[end link] to just keep watching or [link]3[end link] to simply leave.";
	if calcnumber is 1: [rescue]
		LineBreak;
		say "     You can't just let him have his way with the captured man! If you rush at the spartan and manage to bring him down, you might just be able to save him. Calculating your route to draw the least attention possible, you carefully make your way to their spot, and you arrive just in time as the warrior goes to grab his captive victim, only to let him away in place as he's startled by your presence. 'What's the meaning of this?!' he shouts in a demanding tone, turning around to face you with his dandling erection bouncing sideways. 'I'll have to subdue you as well for this intrusion, peasant!' Without any further ado, he charges at you, and looks like it's time for a fight!";
		now inasituation is true;
		Challenge "Spartan Warrior";
		now inasituation is false;
		if fightoutcome < 20: [won]
			now resolution of Captive Helot is 2;
			say "     With your superior strength, you manage to subdue the spartan warrior and kick him out of the spot, to which he is not happy about. 'I will bring justice upon you the next time I see you! Just you wait!' Having received his threat, your way to his victims is free now, and you manage to at least save the soldier. You actually have no idea how one was dragged down all the way here, but he thanks you as you undo the ropes restraining him. 'Can't thank you enough for this! This place is crazy... I can't give you anything in return but my appreciation, however. Hope that's enough...' he says to you in a rather afraid tone. But you weren't expecting a reward anyway, so you let him go, and he eagerly runs away from here.";
			say "     Now, there is a helot in here... On the ground, tied up, vulnerable, and with a hard-on between his legs, looking at you with puppy eyes. His mouth is covered as well, and his hands are tied on his back. The way he's spreading his legs and showing off his throbbing meat may seem like he's begging you for some other kind of [']release[']. The spartan may come back soon with reinforcements, and it's too late to save this man, but you could show him some mercy very quickly, if you're willing to put your hands to work.";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Provide him with a generous handjob.";
			say "     ([link]N[as]n[end link]) - Just leave at once.";
			if player consents: [handjob]
				Linebreak;
				say "     You suppose a quick handwork won't put you in any danger, and it seems like the poor helot could really use your help. Crouching down, you slip your hand around the manservant's shaft, feeling it throb in your grasp as soon as you tighten your grip around it, and begin slowly stroking it up and down. He lets out a long muffled moan as he gives in to your touch, closing his eyes and resting his head against the wall. This will be very quick, after all, as he's already moving his hips matching with your own movements. You stroke it faster and faster after about a minute, and it's another couple of seconds before his moaning gets louder, becoming grunts of pleasure soon enough.";
				say "     Breathing heavily, he starts shooting all over himself as you continue to milk his cock, not letting go of it until the very last drop leaks out of his throbbing member. You've got some of the juice in your hand, but all the rest landed right over his abs and chest, as well as the ropes keeping him in place. He now seems thrown in bliss, not even paying attention to you as you start leaving the area, and just in time! You can see an angry group of spartans walking towards the spot, and you're glad to be far gone before they can catch you. Now you just have to keep a low profile, but it shouldn't be that much of a problem since the one you fought probably doesn't remember your face at all, anyway.";
			else:
				Linebreak;
				say "     There's no time for this, and it's no longer your business. Besides that, it's very certain that he gets his long awaited release eventually, when the spartan warrior comes back to reclaim his property. Since there's nothing else for you here, you resume your previous doings after leaving the area.";
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     Faced with the warrior's impressive might, you feel yourself forced to give up. He points his weapon at you, locking his gaze on your eyes through his helmet. 'Now that you have learned your place, piss off before I claim you too. I would do so anyway if my hands weren't full for the moment!' Without any strength left, you let his words sink in and retreat back as the spartan watches you carefully. You don't even get to see what happens next, as you're forced to leave the vicinity as well. Though you can imagine he might be adding a new member to his personal servantry soon enough.";
			now resolution of Captive Helot is 1;
		else if fightoutcome is 30: [fled]
			say "     Seen that you have pissed a spartan, you simply run away as fast as you can without looking behind. Well, there goes your chance at saving a man... You can imagine the warrior will be adding a new member to his personal servantry soon enough.";
			now resolution of Captive Helot is 1;
	else if calcnumber is 2: [watch]
		say "     Curiosity gets the best of you and you can't help but watch what happens next. Such is sated when the warrior finally grabs the captive man's head, ordering him to open wide and take his large cock all the way in, followed by intense minutes of facefucking as the spartan made the human swallow all of his leaking manjuices. Though he wasn't happy with just that! Taking the mouth covers out of his helot slave, he also orders the servant to worship his ass as he keeps 'training' the captured soldier. What follows after that is more of the same, the warrior using the progressively transformed helot over and over again by fucking any of his holes while he gets some further satisfaction from his other slave.";
		say "     Now how did a military unit end up in this part of the region is a mystery, but it sounds like he won't leave anymore, or at least so soon.";
		now resolution of Captive Helot is 1;
	else if calcnumber is 3: [leave]
		say "     Figuring out your options, there's just not much you can do about this. So you simply decide to walk past them and ignore the situation, resuming your doings in the College Campus. The man was probably doomed from the start anyway, right?";
		now resolution of Captive Helot is 1;
	now Captive Helot is resolved;

Table of GameEventIDs (continued)
Object	Name
Generous Helot	"Generous Helot"

Generous Helot is a situation.
The sarea of Generous Helot is "Campus".

GenerousHelotTimer is a number that varies. [@TagNotSaved]
GenerousHelotTimer is usually 20000.

Instead of resolving a Generous Helot:
	if GenerousHelotTimer - turns < 7:
		say "     While exploring the college campus, you come across a rather athletic man, whose attire is the same as those ancient spartan servants, a pair of sandals and barely a loincloth to cover their privates. It is a helot, though instead of lunging himself at you, he gives you a nod and continues on his path. Strangely polite for an unwilling manservant...";
	else:
		say "     While exploring the college campus, you come across a rather athletic man, whose attire is the same as those ancient spartan servants, a pair of sandals and barely a loincloth to cover their privates. It is a helot, though instead of lunging himself at you, he sees you walking by and hands you a can of food. 'Have some of this. It's good.' he says, his arm stretched towards you holding it. Examining it, you can see the exterior looks clean and it hasn't been open yet, probably spoils of some sort of scavenging. Though why is the helot giving it to you for free and on his own will? Is it just out of generosity?";
		say "     [bold type]You can either accept his gift, or politely refuse it and encourage him to keep it, since he looks like he hasn't eaten anything for days...[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Accept his offering.";
		say "     ([link]N[as]n[end link]) - Refuse and let him keep it.";
		if player consents:
			say "     You nod, extending your hand to grab the [bold type]canned food[roman type], and he lets you have it. There's a smile on his face as he takes his leave, not even looking behind. How odd...";
			increase carried of food by 1;
			now GenerousHelotTimer is turns;
		else:
			say "     You shake your head, refusing his offering and arguing that he, instead, could use extra food. He lowers his arm, looking at you in disappointment. 'Master doesn't let me have it. If I bring this back, he won't share it with me, and I can't eat it...' Even so, you encourage him to have the food for himself, and after a few attempts, he finally decides to pull the can open and start eating hungrily. 'Thanks. You're good.' he says, with few more than those words before he takes his leave. You feel like you did the right thing.";
			Sanboost 5;
			now Generous Helot is resolved;


Section 4 - Endings

Table of GameEndings (continued)
Name (text)	Type (text)	Subtype (text)	Ending (rule)	Priority (number)	Triggered (truth state)
"Helot Manservant Infection"	"Infection"	""	Helot Manservant Infection rule	1000	false

This is the Helot Manservant Infection rule:
	if Player has a body of "Helot Manservant":
		trigger ending "Helot Manservant Infection"; [Here it states, that the ending has been played.]
		if humanity of Player < 10: [succumbed]
			if Player is submissive:
				if FuckedBySpartan is 1: [had sex with a Spartan - wants to go back]
					say "Finding survival out alone in the city difficult, your thoughts stray back to the Spartan warrior you met before. Memories of his strength and trained body suddenly spring up as you fight - or run from - all kinds of strange critters, and the dreams of many a night revolve about muscled arms holding your body and feeling him inside you.";
					say "One day you only barely escape a hunting wyvern, with it totally devastating your hideout and any supplies you couldn't grab on the way out. Running through the streets, you decide that being a slave to a good master would be much preferable to your current life. Making your way back to the campus, you search for the young man who claimed your body before and give yourself to him, freely and fully. After weeks of aching for his touch, you finally learn his name - Euryphon. Staying with him, you serve as his servant and sexual partner, then later, after proving yourself trustworthy, as his confidant and lover. Thoughts of an independent life vanish from your mind - after all, why would you want to leave a man who loves you and cares for you?";
					say "Later, when the Spartans in the city are convinced to join the military, Euryphon takes you with him. There are some problems at first when he's told that noncombatants like you aren't allowed in the barracks, but with the general rejection of that rule by all the Spartans - many of whom brought their own bunk-warmers - the officials have no choice but to relent if they want to keep the excellent new recruits. So in the end you're granted the status of a military dependent and can share a bed - and many other things - with Euryphon.";
					if Player is mpreg_ok and "Sterile" is not listed in feats of Player: [mpreg-able, not sterile]
						say "Given your changed physiology, it's only a question of time until the seed your lover shoots into your ass almost daily takes root. The army doctors are surprised when they realize you're pregnant, carrying Euryphon's child, and more thorough checkups with the new Spartan unit and their slaves brings more expecting fathers to light. Several weeks later, your son Lysander becomes the first Spartan to be born to two male parents. With this new method of reproduction likely being hereditary, this is likely the start of a new subspecies of humanity...";
				else: [didn't have sex with a Spartan - succumbs to horsemen]
					say "Finding survival out alone in the city difficult, you struggle through every day as good as you can. One day you only barely escape a hunting wyvern, with it totally devastating your hideout and any supplies you couldn't grab on the way out. Running through the streets, you find yourself shelter-less and alone. As you later sit in an alley, eating a soggy bag of chips in the rain, the idea comes to you that maybe being a slave to a good master who takes care of you wouldn't be so bad after all...";
					say "That thought still in your head after a wet and cold night in the alley, you decide to do it and go looking for someone. A patrol of horsemen crossing your path a few hours later seems a good choice. Stepping into their path openly, you wait till they approach, being a bit surprised that you aren't trying to run or fight. Selecting a handsome Clydesdale Stud from their number, you walk up to him and offer yourself to him, reaching out to caress his crotch. Lincoln, the horseman, is pleasantly surprised and accepts, making you blow all his buddies to celebrate. You're brought to the stables as the new stable-boy... and stable-toy of the handsome horseman, and over time a deep affection grows between the two of you. Interestingly, you never change even after weeks of intimate contact, giving Lincoln the raised status of having a human all of his own.";
					if Player is female and "Sterile" is not listed in feats of Player: [has a vag, not sterile]
						say "Having a vagina, no matter what the rest of your appearance says about your gender, it's only a question of time until the seed your master shoots into your womb daily takes root. Your belly soon swells larger and larger with the developing foal within, and several days later you give birth to a beautiful little colt...";
					else if Player is mpreg_ok and "Sterile" is not listed in feats of Player: [mpreg-able, not sterile]
						say "Given your changed physiology, it's only a question of time until the seed your master shoots into your ass daily takes root. Your belly soon swells larger and larger with the developing foal within, and several days later you give birth to a beautiful little colt...";
			else: [non-sub player]
				say "Finding yourself confronted with the difficulties of surviving alone in the city, you realize that there might be a better way when you see another Helot being attacked by a harpy one day. Coming to his aid, the two of you easily fight off the bird-morph and decide to work together from then on. Roaming the city with this man, Ashot, you find others willing to join you as companions. Soon it is the Spartans, horsemen and any other slave-taking factions in the city who have to watch out for you and your friends...";
		else: [sane]
			if Player is submissive and FuckedBySpartan is 1:
				say "When the military finally moves in, you're brought into a medical holding facility. There a doctor checks you out, then gives you a shot to neutralize the remaining nanites in your system before you're released. Since you were only changed into a fit male human form by the nanites, you have a lot less problems rejoining society than other, more bestial, infectees. The only problem is... human society isn't what it was before the nanites. With many jobs and skills having become irrelevant in the changed world, you find yourself adrift in a swirl of chaos. Your home lost in the city, you work as a basic laborer, barely making ends meet.";
				say "Then one evening as you sit in a bar drinking, you see a group of off-duty soldiers come in and... recognize one of them. It's the Spartan you 'met' before, in the city. Memories flood your mind - a view of his naked physique, him holding on to your hips, thrusting deep into your body... A shiver runs down your spine as you realize that you really wouldn't be all that opposed to the idea of having a master to take care of you and you serving for his pleasure. Taking a last pull off your beer, you stand up and walk over to the young man who claimed your body before and give yourself to him, freely and fully. And he accepts - finally telling you his name - Euryphon. He takes you with him to the barracks where he's posted and you get to live with him as a military dependent, taking care of his needs and sharing a bed - as well as many other things.";
				if Player is mpreg_ok and "Sterile" is not listed in feats of Player: [mpreg-able, not sterile]
					say "Given your changed physiology, it's only a question of time until the seed your lover shoots into your ass almost daily takes root. The army doctors are surprised when they realize you're pregnant, carrying Euryphon's child, and more thorough checkups with the new Spartan unit and their slaves brings more expecting fathers to light. Several weeks later, your son Lysander becomes the first Spartan to be born to two male parents. With this new method of reproduction likely being hereditary, this is likely the start of a new subspecies of humanity...";
			else:
				say "When the military finally moves in, you're brought into a medical holding facility. There a doctor checks you out, then gives you a shot to neutralize the remaining nanites in your system before you're released. Since you were only changed into a fit male human form by the nanites, you have a lot less problems rejoining society than other, more bestial, infectees. But even though you managed to fight off the delusion that you actually are a peasant slave of the Spartans, your experience left you with an inner need for independence, making it hard to work anywhere where you have to subjugate your will to anyone. Thankfully, some knowledge about woodworking seems to have come included in the infection, so you end up becoming a self-employed handyman.";

Helot ends here.
