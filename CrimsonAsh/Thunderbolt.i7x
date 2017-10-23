Version 1 of Thunderbolt by CrimsonAsh begins here.
[ Version 1 - new file              ] 

[ ThunderTrackingVariable                               ]
[   0: never met yet                                    ]
[   1: first encounter                                  ]
[   2: player had horse sex                             ]
[  50: player refused horse sex                         ]

ThunderTrackingVariable is a number that varies.

Campus Thunder is a situation.
The level of Campus Thunder is 0.
The sarea of Campus Thunder is "Campus". [Fountain]

instead of going south from College Administration Building while (Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;
	
instead of going north from College Campus Entrance while (Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;
	
instead of going east from College Walkway Northwest while (Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;

instead of going west from College Walkway Northeast while (Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 0):
	move player to College Fountain;
	ThunderboltEncounter1;

Instead of resolving Campus Thunder:
	if ThunderTrackingVariable is 0: [never met]
		ThunderboltEncounter1;
	else if ThunderTrackingVariable is 1: [first encounter done]
		ThunderboltEncounter2;

to ThunderboltEncounter1:
	say "     Whilst wandering the campus grounds you spot a large brown horse with school colors depicted on a sash across his equine body. In big letters you read, 'Westside Stallions'. The horse whom had previously been drinking peacefully the central fountain spots you and locks his dark eyes with yours. He starts trotting over to you after giving a friendly snort. You take a step back, looking for signs of... something on the beast. Aggression? Infection? You don't know, but there is nothing that seems dangerous at all, so in the end you just shrug and let him walk right up to you. The fairly large horse stands before you seemingly examining your body before he nuzzles his large head into your side affectionately. Before you can really, a long and thick horse tongue licks across your neck covering it in warm saliva. It's then you hear someone yell, 'Thunderbolt! Leave [ObjPro of player] alone!' You look over your shoulder to see two lioness girls in soccer uniforms with identical writing on their outfits as the horse. Must be the team name... 'Westside Stallions.'"; 
	say "     The taller of the lioness girls whom had just spoken pads forward to gently pat the large equine mammal on the head. 'Sorry, he's a bit too friendly sometimes,' the pretty lioness says flashing you a toothy grin. 'I'm Ariana and this is my sister Eres.' She explains, gesturing to the clearly younger lioness behind her who shuffles forward anxiously to raise a delicate paw to wave nervously at you. 'Hey...' she pauses as she looks to you and then to the horse still standing next to you. Giving a light kiss on the side of the horse's head Ariana speaks up again, 'And this big fella is Thunderbolt, our team mascot.' Thunderbolt nuzzles into Ariana as you too introduce yourself to the two lioness sisters. 'It's good to meet someone new, but we really have to be going. Gotta take care of the big fella here,' she adds in a friendly tone, patting the large equine on the side as she turns away with Thunderbolt in tow. Eres follows with a light blush on her face and a smile in your direction.";
	LineBreak;
	say "     As you watch the three leave, you spot under the brown horse's undercarriage a large equine phallus, rapidly gaining in length and getting harder by the second. An eyeblink or two later, they all disappear behind some buildings... Interesting.";
	now ThunderTrackingVariable is 1;
	now LastCampusWalkin is turns;
	
instead of going southeast from College Walkway East while (Campus Thunder is not resolved and LastCampusWalkin - turns > 2 and ThunderTrackingVariable is 1):
	move player to Greek Street;
	ThunderboltEncounter2;

to ThunderboltEncounter2:
	say "     Once again wandering the college property, you hear from behind some buildings the loud and unmistakable 'neigh!' of a horse. Peeking from behind a corner you gasp slightly as you spot the horse mascot Thunderbolt. He's hitched to a post in a make-shift stable surrounded by hay and a nearby trough full of water. But what really draws your eye is his raging equine erection, fully hardened and pulsing slightly. Turning to look your way he whinnies and starts to trot closer, only to be stopped by his leash tied to the post. The large stallion rears up and whinnies again in frustration. Its abundantly clear this impressive beast is in rut. He looks to you with pleading eyes, shakes his well-groomed mane and then turns to his side showing off a truly impressive musculature and nearly two feet of erect horse cock. Almost seems like... he's trying to seduce you by flaunting his equine body.";
	say "     [bold type]what do you want to do now?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Mate with Thunderbolt?!";
	say "     ([link]N[as]n[end link]) - Just... no. Walk away right now!";
	if player consents:
		LineBreak;
		say "     Feeling especially randy you bite your lower lip as you eye his huge horse cock. Stepping closer to the feral beast, he meets you halfway - at the very end of his tether. Before being able to react the large stallion pushes his muzzle into your neck and trails his rough, wet tongue across your collarbone. As he runs his hot saliva around your neck you place a hand on the side of his head, affectionately patting his soft equine face. Finally withdrawing his tongue he whinnies again in need. Smiling brightly at the large horse you drop to your knees taking in the sight of the massive phallus before you. It pulses and twitches and you're hit by a wave of feral musk from the pink and black rocket. Inhaling deeply you can feel your [if player is male]own manhood harden[else if player is female]womanhood drip with need[else]needy desire grow[end if] when you bring up both your hands to grasp the huge member. As you grip the impressive feral cock, Thunderbolt lets out a neigh of approval as a small splash of horse-pre spurts out of his tip and covers your palms.";
		say "     The scent of the musky pre has you feeling like a mare in heat. With a flushed face you trail your [facename of player in lower case] tongue across his tip gathering what pre you can whilst moving downward toward the base of his tasty shaft. Thunderbolt shuffles above you in pleasure as you continue your licking up and down his shaft. Eventually while wringing the base of his feral cock you take the tip of his flared tip into your mouth and gently suckle at his tip. Slowly inching more and more onto his equine shaft it quickly reaches the back of your throat until it simply can't go any further and you hold it there in the tight confines of your throat. Thunderbolt whinnies again in pleasure as more horse-pre shoots out of his erection, this time straight into your stomach.";
		WaitLineBreak;
		if cunts of player > 0:
			say "     You keep him in your mouth as long as you can, but eventually the need to breathe wins out over whatever else you may desire, so you pull back from his tasty and now saliva-covered cock to examine your work. Now a puddle pooling in your underclothes you can barely contain your lust as you quickly disrobe, still under the beast's underbelly. After removing the confines of your clothes you lick your lips, still tasting his pre on them and move you hand up to pat his soft fur indicating your ready to be mounted as his mare. Moving onto all fours you dip into your fingers into your soaking [cockname of player in lower case] pussy and spread your lips open for the massive length to enter. Taking the hint the smart beast neighs loudly in approval and begins to grind his giant horse cock against your lower back. Dragging his saliva- and pre-slickened member across your ass cheeks the team mascot rears back until the tip of his lengthy cock is pressing against your pussy-lips. Moaning at the sudden pressure you once again bite your bottom lip in anticipation.";
			say "     Pressing forward the massive length strains to enter but with your natural wetness and beforehand preparation a single strong thrust is all it takes to penetrate your eager lips. Moaning loudly as nearly half of Thunderbolt's equine cock is forced into your slick [cockname of player in lower case] you press back against his shaft and dig your hands into the dirt below. Neighing in pleased passion the soccer mascot pushes more of his thick, veiny member into your clenching confines.";
			WaitLineBreak;
			say "     Feeding nearly every inch into your womanhood Thunderbolt bottoms up inside your quivering wetness before drawing back and thrusting into you again. The sheer force and pleasure of the first few thrusts nearly knocks you out, but you manage to get used to taking the feral member, greatly enjoying it pounding you into the soft ground below. Bottoming in and out of you, you can feel a trickle of drool run down your chin whilst more pre spurts into your womb. Grunting and neighing Thunderbolt gradually speeds up until he's thrusting with wild abandon, really hammering into you. Feeling his cock stiffen and twitch you can feel his full testicals slapping against your ass as with one final thrust into your womb he bottoms every inch inside you and cums. With a slight bulge pressing out of your tummy you feel him unload into you, triggering your own almost mind-shattering orgasm. Thick streams of horse seed spill into your bulging insides as you clench like a vice around his spurting equine member. Your whole world goes black as the intensity of your climax knocks you unconscious.";
		else: [those without a pussy get an anal horsefuck]
			say "     You keep him in your mouth as long as you can, but eventually the need to breathe wins out over whatever else you may desire, so you pull back from his tasty and now saliva-covered cock to examine your work. You can barely contain your lust as you quickly disrobe, still under the beast's underbelly. After removing the confines of your clothes you lick your lips, still tasting his pre on them and move you hand up to pat his soft fur indicating your ready to be mounted. Moving onto all fours, you present your ass to the stallion. Taking the hint the smart beast neighs loudly in approval and begins to grind his giant horse cock against your lower back. Dragging his saliva- and pre-slickened member across your ass cheeks the team mascot rears back until the tip of his lengthy cock is pressing against your pucker. Moaning at the sudden pressure you once again bite your bottom lip in anticipation.";
			say "     Pressing forward the massive length strains to enter but with your beforehand preparation a single strong thrust is all it takes to penetrate your eager hole. Moaning loudly as nearly half of Thunderbolt's equine cock is forced into your tight anus, you press back against his shaft and dig your hands into the dirt below. Neighing in pleased passion the soccer mascot pushes more of his thick, veiny member into your rear...";
			WaitLineBreak;
			say "     Feeding nearly every inch into your ass, Thunderbolt bottoms up inside you before drawing back and thrusting into you again. The sheer force and pleasure of the first few thrusts nearly knocks you out, but you manage to get used to taking the feral member, greatly enjoying it pounding you into the soft ground below. Bottoming in and out of you, you can feel a trickle of drool run down your chin whilst more pre spurts into your colon. Grunting and neighing Thunderbolt gradually speeds up until he's thrusting with wild abandon, really hammering into you. Feeling his cock stiffen and twitch you can feel his full testicals slapping against your ass as with one final thrust into your ass he bottoms every inch inside you and cums. With a slight bulge pressing out of your tummy you feel him unload into you, triggering your own almost mind-shattering orgasm. Thick streams of horse seed spill into your bulging insides as you clench like a vice around his spurting equine member. Your whole world goes black as the intensity of your climax knocks you unconscious.";
		say "     When you awaken you feel sore but relieved, and... surrounded by warmth? Opening your eyes you see sitting above you with your head in her lap the lioness Ariana, still in her uniform and smiling down at you. 'Hey sweetie, you alright? I know Bolt can be... rough but as I'm sure you've experienced, he's worth it.' She says gazing over to her favorite feral horse, who is contently sleeping in the same area you remember him in. You notice a rather impressive puddle of mixed juices below him and you can still feel some of his seed sloshing in your full tummy. Although looking down you notice your legs and lower body have been washed off and re-clothed. 'I... hope you don't mind sweetie but I cleaned you off and dressed you, Bolt was on top of you when I came by to get him.' You're dazed but manage a smile and thank the pretty lioness. She returns the smile and gently helps you to wobbly feet, it's certainly going to be sore for a while but you feel so amazing that you can't complain. Giving you an arm Ariana speaks again, 'Feels good right? You know, you should join me and sis sometime, we come by every now and again to... relive Bolt here, could be a grand time with the four of us.' She gives you a soft swat on the backside and bids you goodbye, watching you slightly limp away.";
		now ThunderTrackingVariable is 2; [horse sex for the player completed]
	else:
		LineBreak;
		say "     Slightly wide-eyed you back away and quickly take your leave of the area and the feral thoughts that plague your head.";
		now ThunderTrackingVariable is 50; [horse sex refused]
	now Campus Thunder is resolved; [the end, for now]

Thunderbolt ends here.