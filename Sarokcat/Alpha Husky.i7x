Version 5 of Alpha Husky by Sarokcat begins here.
[ Version 1.0 - Original content - Sarokcat                          ]
[ Version 1.1 - Alpha Husky male dom scene + ending - Nuku           ]
[ Version 2.0 - Alpha Husky packs - Nuku                             ]
[ Version 3.0 - Latex Husky mode - Stripes                           ]
[ Version 3.1 - Minor scene tweak and humanity loss curbed - Stripes ]
[ Version 4 - Added a MtF Husky Alpha variant happening on chance for full males - Gherod]
[ Version 5 - Polished the file, edited sex options and scenes:]
[	             . Loss scenes - Female: 'Husky Bitch' variant; Normal;]
[                            - Male: Both existing scenes overhauled; - Gherod]

"Adds an Alpha Husky to Flexible Survival's Wandering Monsters table, with impreg chance"

to say GenerateTrophyList_Husky_Alpha:
	[ Reminder: LootBonus can be +35 at maximum - 10 for Magpie Eyes, 15 for Mugger and 10 from Player Perception]
	if a random chance of (80 + LootBonus) in 100 succeeds: [common drop]
		add "husky alpha fur" to CombatTrophyList;
	if a random chance of (50 + LootBonus) in 100 succeeds: [common drop]
		add "dirty water" to CombatTrophyList;
	if a random chance of (30 + LootBonus) in 100 succeeds: [uncommon drop]
		add "food" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "soda" to CombatTrophyList;
	if a random chance of (20 + LootBonus) in 100 succeeds: [uncommon drop]
		add "tennis ball" to CombatTrophyList;
	if a random chance of (10 + LootBonus) in 100 succeeds: [rare drop]
		add "clean bandages" to CombatTrophyList;
	if Debug is at level 10:
		say "DEBUG: Trophy List: [CombatTrophyList].";

Section 1 - Creature Responses

Alphahuskypet is a number that varies.
losttoalphahusky is a number that varies.
MtFHuskyAlphaActive is a truth state that varies.[@Tag:NotSaved]

to say Alpha Husky attack:
	if Resolution of MtFHuskyAlpha is 0 and MtFHuskyAlphaActive is true:
		now MtFHuskyAlphaActive is false;
		project the Figure of HuskyAlpha_hard_icon;
		say "[HuskyAlphaMtF1]";
	else if Resolution of MtFHuskyAlpha > 0 and Resolution of MtFHuskyAlpha < 99 and MtFHuskyAlphaActive is true:
		now MtFHuskyAlphaActive is false;
		project the Figure of HuskyAlpha_hard_icon;
		say "[HuskyAlphaMtF2]";
	else:
		project the Figure of HuskyAlpha_hard_icon;
		increase losttoalphahusky by 1;
		if Player is female:
			if BodyName of Player is "Husky Bitch": [player has husky bitch infection]
				say "     As you collapse on your knees, presenting yourself as defeated by the husky, you find your body somehow reacting instinctively to the alpha male's victory. Your loins fill with heat as all desire to fight and resist simply drains out of you. The dominant canine grins with amusement as you lie back on the ground and spread your legs for him enthusiastically, as if they had a mind of their own. 'Now that's what I like to see, a bitch who knows when to submit to her alpha,' the husky male says with an amused chuckle. The sexy and dominant scent of the powerful canine makes you shudder, and your slutty husky pussy dampens in response to his presence. The male is obviously as eager and lust-filled as you, and with increasing, almost overbearing longing, he pounces onto you without further words.";
				say "     You find yourself whining, pretty much like a needy, wild husky bitch, and mindlessly wrapping your legs around his body. His paws hold your waist tightly as his canine cock rubs up against your heat-filled outer lips, teasingly probing your passage. The husky grins as he nips at your neck, his paws gripping your rear while he pushes more and more of his canine rod into your body with every soft thrust. His strong, dominant touch leaves you whimpering with desire as you rock your hips forward to meet his thrusts, his pointed cock sliding into your body like it was made for it. Your insides burn with increased arousal as you bury your paw-like hands into his soft fur and your inner walls spread open before him.";
				WaitLineBreak;
				say "     It feels absolutely incredible, the way this feels so right as pure blissful pleasure takes over you. Yipping softly with each rocking thrust of his amazing meat into you, your entire self utterly and instinctively submits to your alpha's touch with all the eagerness it can muster, your mind no longer allowed any input in this as you simply find yourself wanting more. Eventually, you lose all the capacity for independent thought, your actions limited to moaning and rocking your body around enthusiastically, much to the male's pleasure. 'That's a very good bitch...' he compliments your conduct, which triggers a sense of accomplishment in your brain, much like you were just given a sweet candy for good behavior. It fills your heart with joy, knowing he is content with you, and now, you want to please him even more.";
				say "     Seeing the shine in your eyes as you look at this sexy alpha, yearning for more, the husky decides to reward you by pushing more of his cock into you, causing your pussy to stretch out enough to allow his girthy knot inside. This has you crying out in ecstasy, feeling your womanhood so wonderfully filled, its insides holding that knot of his tightly, as all kinds of joyous sensations explode through your sex-fogged brain. The muscular male grins, his tongue licking and teasing at your exposed neck and chest, as he thrusts into you with renewed vigor. You are soon groaning eagerly as he pounds you, his knot massaging your whole vagina with every sensual stroke.";
				WaitLineBreak;
				say "     Ultimately, you can feel your mind emptying of any thoughts other than pleasing and serving your alpha. This nice, strong, amazingly powerful alpha male husky, the best one, even, to whom you owe all the loyalty in the world. Images of being a nice, proper, slutty husky bitch for your handsome mate fill your head, replacing those old, unnecessary human thoughts. Each press of his body against your own slutty self makes you more and more of a needy, horny bitch for him to breed and fill full of lovely, little husky pups. Only these new thoughts take root in your mind, filling all the space left in your brain, as you find yourself whining eagerly at your alpha. He simply continues to pound into your body, an expression of great satisfaction evident in his muzzle, and you can only beg him to mark you with his seed and make you his. You do not have to verbalize it, though, as your body speaks for itself. You want it so badly.";
				say "     The alpha grins as your hazy mind completes its submission to him, giving in to its entirety, just as eagerly as your body. With this, you cannot help but let out a loud howl of pleasure when his cock begins to spill his lovely alpha seed inside of your body, accompanied by his own grunting. Your lust-addled self simply explodes with ecstatic bliss as the powerful husky's cum splashes into your womb, each additional pulse of his male essence working hard to quench the burning fire his dominant presence awoke within you. You pant happily as your alpha holds your limp body close while you lay there on the ground beside him, his knot sealing you together as his paws stroke your figure happily.";
				WaitLineBreak;
				say "     'Yeah... You really were a very good bitch.' he praises you, running his paw over your cheek with possessive affection. 'Why don't you just submit to your alpha and give up this silly wandering around the city? You'd be just a good little pack-slut... Such a simple, uncomplicated life...' he says teasingly when he finally pulls his softening knot out of your body, his paw petting your head almost like it was saying [']good girl[']. You whimper slightly at being left all alone as the handsome canine begins to saunter off into the city, his teasing look back over his shoulder at your well-fucked female body almost making you want to run after him and beg him to finish showing you how to be a good, little slut for him and his pack...";
				infect "Husky Bitch";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";
				increase Alphahuskypet by 1;
				SanLoss 20;
				WaitLineBreak;
				if humanity of Player < 10:
					if "Strong Psyche" is listed in feats of Player: [only the exceptionally unswayable can even hope to resist it at this point]
						say "     No, wait, you are stronger than this... You can resist what irreversible act you are about to commit...!";
						LineBreak;
						say "     ([link]Y[as]y[end link]) - Resist!";
						say "     ([link]N[as]n[end link]) - Give in.";
						if Player consents:
							say "     ... But your mind returns to you just in time. The sudden realization that your reasoning had completely blanked out during this entire time slightly terrifies you, however... There is a corner, somewhere in your brain, that tells you this would not be so bad, suggesting that you would enjoy that life[italic type]. A lot.[roman type][line break]";
						else:
							end the story saying "[alpha husky bitch]";
					else:
						end the story saying "[alpha husky bitch]";
				else: [Player retained enough humanity]
					say "     ... But your mind returns to you just in time. The sudden realization that your reasoning had completely blanked out during this entire time slightly terrifies you, however... There is a corner, somewhere in your brain, that tells you this would not be so bad, suggesting that you would enjoy that life[italic type]. A lot.[roman type][line break]";
			else: ['normal' female players]
				if HP of Player > 1: [submitted]
					say "     Thinking you know best, you simply fall to your knees in submission, allowing the powerful male husky to approach you";
				else: [lost]
					say "     Throwing you to the ground one last time, the powerful male husky is finally able to overpower you";
				say ". He then sniffs you for a minute, before grinning happily. 'There, enough with the struggling...' the victorious canine growls out, his dominant, yet calming, tone making you drop your guard as you realize that, while he has gained the upper hand, he means you no harm. In fact, this really good looking, athletic, sexy male husky seems to just want to make you feel [italic type]really[roman type] good. As his gaze pierces your eyes, as if reaching for your very soul, he gets very, very close to you, beginning to take you into his embrace. 'Now, you're gonna be a good bitch for me, aren't you?' he tells you with that masculine, almost velvety voice, fitting your ears and touching your brain just right as his handsome muzzle remains mere inches away from your face. It all, somehow, makes you feel that you... want this.";
				say "     'I'm sure you're a very good girl... And you'll do as I say,' he continues as he slides a hand over your womanhood, causing it to clench with need, a sensation reinforced by the warmth of his fuzzy body, that remains so close to yours. Knowing you have fallen for his charms, he wastes no more time with words and pounces you eagerly, pinning you to the ground beneath him. The muscular male rolls you over, pressing his soft-furred chest up to your back as you lie face-down underneath him. His paw-like hands grip your hips, reaching around and spreading your legs wider for him even as they lift your hips up to meet his. The feeling of his hot, excited breath on your neck makes you moan as your body heats up underneath him, helpless and yearning for more.";
				WaitLineBreak;
				say "     His canine cock caresses your damp folds teasingly as he begins to thrust against your rear. You groan as your body responds to his assault by spreading itself wider before him, an instinct you have no control over. Your brain simply rewires itself towards one thought: the amazing pleasure you know the powerful canine is sure to give you. The husky's pointed cock slips into your wet curls and slides into your body with practiced ease, his knotted cock working its way deeper with each short thrust of his furry hips. Your entire self burns with a strange heat as your inner muscles clutch at his knot, trying desperately to draw every inch of his canine flesh inside you.";
				say "     The thick knot is soon pressing up against your body teasingly with each thrust, the feel of that swell of flesh trying to enter your sex making you gasp and pant eagerly. You know that, on some level, you [italic type]should[roman type] be resisting, and maybe you could, but... do you care to? It all just feels so good, so right... The way this hot husky handles you like it is nobody else's business, like he owns you... the way he speaks, the way he moves, the way he fucks you... It makes you feel like you were born to be his. He appreciates you for being a good bitch for him, gives your life purpose, and it all feels [italic type]so fucking good[roman type]! In short, you are too far lost in the pleasure of being a submissive bitch to care.";
				WaitLineBreak;
				say "     'Enjoying yourself, huh? That's right... Let it all go. You're safe with me. I'm your alpha. You're mine...' - you gasp as his teeth all of a sudden grip the back of your neck, then as his tongue licks across your skin, you shudder. He finally places his muzzle over your ear and whispers once more, 'You're mine...' as a shiver of almost accomplishment runs down your spine. Your body seems to just know how to react, instinctively even, as he begins to speed up his thrusting, your pussy spreading itself open as if in complete submission. His knot slips into your body and locks you together, your mind filling with the blissful enjoyment of his entire length finally filling your needy cunt up.";
				say "     Your breath comes in harsh, panting gasps of arousal as he thrusts into you several more times, before he clutches you even tighter to him. Soon, his cock stiffens within you, throbbing compulsively, making you groan as you feel the first spurts of husky cum beginning to fill your womb. Your mind shatters and loses any capability for thought as your body spasms around his shaft, and you vaguely hear his howl of triumph as you collapse into a well-fucked heap on the ground. You lie there, your mind completely devoid of any sort of reasoning as his paws stroke your sides and belly teasingly, cuddling with you until the husky's knot begins to shrink a few minutes later.";
				WaitLineBreak;
				say "     'That's a good bitch. Just lie there and let the heat fill your body, and soon, you can let your alpha do all of your thinking for you,' he whispers into your ear, still teasingly humping against your rear before he finally starts pulling himself out of your body, making you whimper slightly at the sudden absence of that wonderfully filling rod. 'Think about it. You as my little bitch, living a simple life of submission... and pleasure... You don't have to miss me anymore,' the lecherous husky whispers into your ear teasingly, his words running through your mind temptingly even as the powerful male stalks off into the city, leaving you lying there on the sidewalk...";
				infect "Husky Bitch";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";
				SanLoss 10;
				WaitLineBreak;
				if humanity of Player < 10:
					if "Strong Psyche" is listed in feats of Player: [only the exceptionally unswayable can even hope to resist it at this point]
						say "     No, wait, you are stronger than this... You can resist what irreversible act you are about to commit...!";
						LineBreak;
						say "     ([link]Y[as]y[end link]) - Resist!";
						say "     ([link]N[as]n[end link]) - Give in.";
						if Player consents:
							say "     No, you cannot do that. Not yet. Wait, no, not ever! Why did you word it like that in your mind? This... may require some distancing. You proceed to ready yourself to carry on with your doings and avoid thinking on the subject, at least as much.";
						else:
							end the story saying "[alpha husky bitch]";
					else:
						end the story saying "[alpha husky bitch]";
				else:
					say "     This was an experience. Your mind still feels rather stunned, but you think you can process things clearly now. Part of you still pictures yourself serving that alpha for life, but you know you cannot do that. You cannot just give it all up for a sexy, dominant alpha male like him... And live the rest of your days in absolute pleasure, with such simple sense of accomplishment... Right?";
					if "Strong Psyche" is listed in feats of Player: [total sanity recovery]
						say "     Well, perhaps you could, but... you will not. It is just a fantasy, nothing more, and your mind is resillient enough to know where to draw the line. You are worth way more than this, and there are also vastly more important things to worry about. As you finish psyching yourself up, you ready yourself to carry on with your doings.";
						SanBoost 10;
					else if "Weak Psyche" is listed in feats of Player: [faster decline]
						say "     Nah, stop tricking yourself. You definitely want more of that. Where is he now? Oh, he seems to have disappeared already... Damn it! Your mind aches for more... more of those sweet words, that throbbing cock in you, more of that seed filling you up. The heat... it is so exhilarating, so ecstatic. You are left craving to be his bitch, but now it is too late, so you are left with no other option but to come to terms with your still barely retained freedom and make the most of it while it lasts.";
						SanLoss 10;
					else: [no further sanity changes]
						say "     No, you cannot do that. Not yet. Wait, no, not ever! Why did you word it like that in your mind? This... may require some distancing. You proceed to ready yourself to carry on with your doings and avoid thinking on the subject, at least as much.";
		else if Player is male:
			if HP of Player > 1: [submits]
				say "     The alpha stands over you as you cower before him in submission, falling to your knees and leaving yourself to whatever fate he decides. 'What, you're giving up? Or what...' he then begins to wonder to himself as he sees you all so eager to do anything for him. 'You're not suited to be a bitch, but then again";
				if "Male Preferred" is listed in feats of Player:
					say "... I [italic type]don't really mind a good boy. You might just become my favorite little bitch male.'[roman type][line break]";
				else:
					say "... I don't think that has to be a problem. There are ways to fix that.'";
				WaitLineBreak;
				if a random chance of 1 in 2 succeeds: [for now, there are only 2 possible scenes. This is one, oral+anal]
					say "     He moves about you and grabs your hips, lifting you up onto all fours, then leaving you there as he stares for a moment, perhaps considering the possibilities. As the tension grows, he crouches in front of you, and his thick canine shaft dangles from its sheath, half-full with promise of what is to come. 'I think we can work something out, this time. Something fun.' he huffs. Following this statement, the husky then thrusts his hips forward, and the shaft bobs in motion, tapping against your face. You hesitate a moment, and his paws seize your ears, pulling you into the half-firmed flesh. You take the slick, red pecker in your mouth and taste its saltiness, your tongue flicking over the tip to his immediate growl of approval.";
					say "     'Like that?' he asks, and you nod, the taste of his cock being undeniably pleasant. Pleased with your reply, the husky makes an approving grunt as he pats your head like a good pet. This creates a newfound willingness to worship that cock of his, sliding your lips back and forth through that thick shaft as your tongue carries on doing the wiggling all over its girth. Your dedication is duly noted, as the alpha leans his head back and enjoys the sensations, caressing your ears as you keep going, delighted with your submission towards him. Thinking that you can do even better, you bring one of your hands over his furred sack, then begin to gently play with his balls, which feel so big and full between your fingers and palms.";
					WaitLineBreak;
					say "     'Good little [boygirl]...' he praises you with heartfelt words, even letting out a low moan as you keep sucking on that dick, slowly and nicely, making him feel very welcome in your mouth. His meat throbs with need as you feel him tense up, probably trying to hold back for now, though definitely recognizing your great work. 'Deeper,' he commands, with that single word. Finally giving in to his desire, the canine grinds his furry groin to your face, pushing his shaft all the way across your tongue, growing even firmer by the moment. Your eagerness builds as his scent continues to fill your nose, causing you to draw back and plunge down along the shaft as he rocks up against you, fucking your mouth with an increasingly fast tempo.";
					say "     He then fucks your face proper, holding you by the back of your skull and keeping your head in place, almost mindlessly thrusting his dick into your throat. You can tell he loses himself in this, feeling every inch of his cock sliding back and forth through your tight lips and tongue, between fast and slow, but ultimately more intensely. It gets rough, even, as you hardly have any chance to breathe any air, becoming impossible once he gets really rough with it. With each passing thrust, you can feel the start of his knot swelling bigger and bigger, cock so tense you think he could blow at any moment, and you dare not to deny that sweet release from him. But before any of that happens, he shudders and pushes you back abruptly, cock popping out of your lips and swinging stiffly in the air. 'Not yet...'";
					WaitLineBreak;
					say "     He guides you back to all fours, moving around you and shoving your forebody down to the ground while keeping your ass high in the air. 'You've done a great job... Let's see how well you prepared me,' he mutters as he aligns his eager canine shaft to your back door and pulls you back, driving into you in a quick, possessive motion. Your pucker stretches delightfully around that rod as he fills you to the sheath, rubbing his groin up against your back end as his powerful feet scrabble against the ground for ideal placement before he begins to thrust in slow, firm motions. 'Good bitch, good...' he praises as he moves smoothly through your now-lubricated entrance. His shaft fits in you as if it was meant to be there, easily grinding back and forth. Your skin tingles with the sheer bliss of it and the strange submission you feel towards the dog.";
					say "     As he carries on thrusting into you, your mind feels more and more keen to call him your alpha, the one who owns you, and it begins to feel... so right. With every slap of his furry sac against your bottom, your yearning for his seed increases, wanting nothing more than to get bred by the handsome husky. 'I think,' he says as he draws back to the pointed tip, then drives the thick knot of his member inside your ass with a hard push, locking himself into you as your anal ring hugs it tightly, 'that you deserve it.' The words stop, replaced with a howl of release when he begins to fill your body with hot gushes of seed, spurt after spurt filling your bowels, leaving a lingering, overtaking joy in your foggy brain.";
					WaitLineBreak;
					if "Male Preferred" is listed in feats of Player:
						say "     Your grasp of your old self feels weak for a moment as strange new adoration for this husky tries to displace it. Not yet satisfied with the outcome, he goes even further and brings his paw-like hand over your [Cock of Player] cock. Pleasure is prolonged for a while longer as he jerks you off, steady motions at first that increase in pace progressively. Soon, as the motion continues without cease, your body follows with a powerful climax. You cum so hard, so deliciously, that you moan under the canine as he keeps you pinned down under him, stroking your dick until the very last drop leaves you. Amidst your orgasm, he whispers into your ear 'What a good boy... My good boy... You could just become my special little fucktoy, always there for my pleasure...' He then waits until his knot shrinks enough for him to be able to pull out of your ass, then kisses you once before he departs, 'Just think how much nicer it'll be once you've properly accepted your place as my needy male bitch.'";
					else:
						say "     Your grasp of your old self feels weak for a moment as strange new adoration for this husky tries to displace it. 'How do you like, being bred by an alpha? Imagine all the pups you could be bearing for me if you'd just let it happen... Just let the heat fill your body, and soon, you'll become a suitable bitch.' He then waits until his knot shrinks enough for him to be able to pull out of your ass, then kisses you once before he departs, 'Just think how much nicer it will be once you give in and be a proper bitch for me.'";
					say "     When you get to look around, the husky is walking away with his tail high up in the air, glancing over his shoulder with a teasing look before he simply disappears in the distance.";
					CreatureSexAftermath "Player" receives "OralCock" from "Husky Alpha";
					CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
				else: [male anal scene]
					say "     He then approaches you, to lick at your face and throat in slow motions. His warm, strong paws rub over your chest as he pushes you back to the ground, laying belly up. His paws caress downwards, and he looks into your eyes, staring deeply into them. The power of his commanding gaze forces you to look away, which only makes him laugh in pleasure at your submissiveness. 'What's wrong? Can't look at me in the eye?' he teases, further amusing himself as your flushed face struggles to keep it together, and then adds, 'That's cute...' as he draws away and slides down his hands to the bottom parts of your body. You feel one of his paw-like hands beginning to caress your [Cock of Player] cock, which has gone inadvertently hard.";
					say "     The canine gives it some stroking, which causes you to squirm under him as those pleasant sensations travel up your system. He has this grin on his muzzle... seeing how much control he has over you turns him on, as you can see by his already rock-hard shaft hovering above yours. 'Good things happen to good [boygirl]s, you see...' he informs you in his dominant fashion as he keeps jerking your cock in this almost torturous and slow pace, the yearning for more asking your brain to whimper to him. Your resistance does not last, with lust building up in you as it is, and as if by instinct, you begin to spread your legs and allow the husky to lift one of them and slide up in between. Almost immediately, you feel his dick pressing up against your back door, as if he was just waiting for this.";
					WaitLineBreak;
					say "     But he does not enter you right away. His hand is still on your meat, as slow as before, and instead, he simply teases your hole with the tip of his red prick. 'What's that? You want me to take you?' he asks, but he knows very well the answer. You want it, really badly. You almost cry to him amidst your words of begging, and hearing that really pleases him, as you can tell by the throbbing. That pucker of yours tingles desperately to be stretched and filled by his cock, and it is driving you completely insane. 'That's right, you do,' is all he says before finally pushing it into your ass without preparation, only the precum already oozing from his rod serving as lubricant for the insertion. Despite this, he enters as smooth as silk, and begins to mate with you in slow, deep motions, rocking you against the ground with soft growls of affection and ownership.";
					say "     The rest of the world feels less important then, just that you are satisfying the alpha. Your alpha, this handsome dog who owns you, who treasures you, and to whom you owe being the best pack bitch that you could be. 'You're definitely my favorite bitch [boygirl],' his words say as much, especially when he leans over to whisper into your ear just how good of a bitch you are, and he gets in your brain so good that it becomes hard to think anything else but sweet thoughts of subservience. Once he is satisfied breaking your mind even further, he suddenly slams up into you, filling you with his hungry husky cock. His hands move to your belly again, one settling there as the other cradles your hips to hold you up against his potent strokes.";
					WaitLineBreak;
					say "     Soft, but firm, paws slowly rub you in varying circles that seem to enhance the pressure and pleasure of his dick pressing deep into your bowels, driving you ever faster towards climax. The sensations are too intense, as if you should have already cum, and yet you held yourself back, waiting for some cue. His motions become faster, but shorter, as the tight ring of your ass holds firm to his knot, allowing him precious little room to jerk back and forth. Each pull flashes stars before your eyes in the ever-building intensity. You can only think of how he is inside you, locked into you, exploring your insides with that throbbing shaft of his and how that feels so right, as if it belongs in there.";
					say "     But not even your alpha can endure it all for long. His dominant and controlled demeanor soon shakes as he feels that powerful climax knocking on the door, his breathing becoming desperate. He wanted to reward you further, for being such a good bitch for him, but the pleasure is too great for him to hold back. Without warning, he explodes powerfully into you, and the whole thing makes you shoot your own load all over yourself at the same time. It is then that he leans forward once more, to hold you tight in his arms, and thrusts as deep as he can. This causes your cock to be locked between the two of you, throbbing in that tight space as it goes about shooting its last drops.";
					WaitLineBreak;
					say "     As he holds you close like that, everything begins to melt away as you are washed in the pleasure of it all, letting yourself be taken into his caring grasp. The husky turns to kiss you once, then lick your face another time, as his stubborn knot takes its time to shrink";
					if "Male Preferred" is listed in feats of Player:
						say ". 'Mmh... Just think how much nicer it'll be once you've properly accepted your place as my little male bitch. Taking care of your alpha's needs and earning yourself all the appreciation only a good boy like you deserves...'";
					else:
						say ". 'Mmh... Just think how much nicer it will be once you give in and be a proper bitch for me. A beautiful husky bitch to take care of her alpha's needs, in return earning a fill of hot and warm seed... We could keep doing it all day... Everyday...";
					say "     Eventually, he manages to pull away from you, then he gets up before walking away with his tail high up in the air. He does glance over his shoulder with a teasing look, as if to see if you will chase him, before completely disappearing into the distance.";
					CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
				if "Male Preferred" is not listed in feats of Player:
					infect "Husky Bitch";
				SanLoss 5;
				WaitLineBreak;
				if humanity of Player < 10:
					if "Strong Psyche" is listed in feats of Player: [only the exceptionally unswayable can even hope to resist it at this point]
						say "     No, wait, you are stronger than this... You can resist what irreversible act you are about to commit...!";
						LineBreak;
						say "     ([link]Y[as]y[end link]) - Resist!";
						say "     ([link]N[as]n[end link]) - Give in.";
						if Player consents:
							say "     No, you cannot do that. Not yet. Wait, no, not ever! Why did you word it like that in your mind? This... may require some distancing. You proceed to ready yourself to carry on with your doings and avoid thinking on the subject, at least as much.";
						else:
							end the story saying "[alpha husky bitch]";
					else:
						end the story saying "[alpha husky bitch]";
				else:
					say "     This was an experience. Your mind still feels rather stunned, but you think you can process things clearly now. Part of you still pictures yourself serving that alpha for life, but would that be desirable...?";
					if "Strong Psyche" is listed in feats of Player: [total sanity recovery]
						if "Male Preferred" is listed in feats of Player:
							say "     Truly he would not have minded to keep you around despite your sex, but you do mind being completely subservient. You easily shrug off any of the mind effects the husky has had on you.";
						else:
							say "     Much less having him completely change your gender to meet the [']suitable requirements['] to become his bitch. Well, infections work in twisted aways, but at least when it comes to your mind, you still have it all in you.";
							SanBoost 5;
					else if "Weak Psyche" is listed in feats of Player: [faster decline]
						say "     Nah, stop tricking yourself. You definitely want more of that. Where is he now? Oh, he seems to have disappeared already... Damn it! Your mind aches for more... more of those sweet words, that throbbing cock in you, more of that seed filling you up. The heat... it is so exhilarating, so ecstatic";
						if "Male Preferred" is listed in feats of Player:
							say "... You are left craving to become his special, favorite male bitch, his good little boy, just like he said... But now it is too late, so you are left with no other option but to come to terms with your still barely retained freedom and make most of it while it lasts.";
						else:
							say "... You are left craving to let him turn you into his perfect bitch, there to serve him in every time of need, bearing his pups... But now it is too late, so you are left with no other option but to come to terms with your still barely retained freedom and make the most of it while it lasts.";
						SanLoss 5;
					else: [no further sanity changes]
						if "Male Preferred" is listed in feats of Player:
							say "     But how bad would it be to give in [']just a little[']? He said you could be his favorite little male bitch, because nobody takes that spot. It would be only yours and... And that is absurd! You cannot do this. This... may require some distancing. You proceed to ready yourself to carry on with your doings and avoid thinking on the subject, at least as much.";
						else:
							say "     But how bad would it be to give in [']just a little[']? Maybe it would not be so bad to let him do all those things to your body, turn you into the perfect bitch and... And that is absurd! You cannot do this. This... may require some distancing. You proceed to ready yourself to carry on with your doings and avoid thinking on the subject, at least as much.";
							[]
			else: [alpha husky takes no interest in non-submissive males, but he asserts dominance]
				say "     Despite your efforts at fending off the canine, he gains the upper hand and ultimately ends up defeating you in combat. Triumphantly, he laughs as you remain collapsed on the ground. 'Did you really think you could best me?' the husky growls, approaching you, then snaps his teeth in your face, which makes you flinch backwards in submission. 'Better you know your place as the lowly little bitch you should be,' he says with a grin full of canine amusement as he pounces you, pinning you down with his teeth on your neck until he is satisfied with your increasingly nervous body's surrender. 'That's right, that's your place. Cowering before me.' You then feel him licking your face before finally backing off and turning around to leave, chuckling with his tail held high in the air behind him. 'Come back and see me when you are ready to be a proper bitch,' the taunting male calls over his shoulder as you lie there, panting, feeling like you just survived a narrow escape.";
				now infectbypass is true;
		else: [He takes no interest for a genderless player, but asserts dominance]
			say "     Despite your efforts at fending off the canine, he gains the upper hand and ultimately ends up defeating you in combat. Triumphantly, he laughs as you remain collapsed on the ground. 'Did you really think you could best me?' the husky growls, approaching you, then snaps his teeth in your face, which makes you flinch backwards in submission. 'Better you know your place as the lowly little bitch you should be,' he says with a grin full of canine amusement as he pounces you, pinning you down with his teeth on your neck until he is satisfied with your increasingly nervous body's surrender. 'That's right, that's your place. Cowering before me.' You then feel him licking your face before finally backing off and turning around to leave, chuckling with his tail held high in the air behind him. 'Come back and see me when you are ready to be a proper bitch,' the taunting male calls over his shoulder as you lie there, panting, feeling like you just survived a narrow escape.";
			now infectbypass is true;
		if Husky Gathering is inactive and Husky Gathering is not resolved and fertile pill is owned:
			say "     You notice that one of your pills seems to be missing. A fertile pill. What would the alpha want with one of those? The mystery has no immediate answers, and you proceed back to safer grounds.";
			ItemLoss fertile pill by 1;
			now Husky Gathering is active;

Table of GameEventIDs (continued)
Object	Name
Husky Gathering	"Husky Gathering"

Husky Gathering is a situation.
ResolveFunction of Husky Gathering is "[ResolveEvent Husky Gathering]". It is inactive.

to say ResolveEvent Husky Gathering:
	say "     A sudden chorus of barks and shouts catches your attention. Just emerging from around the bend is a group, no, pack of huskies. Most appear male, and those males catch sight of you. Approaching with a joyous war cry, they move to try and cut off your escape.";
	Challenge "Husky Alpha";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "[alpha huskypack lost]";
		continue the action;
	Challenge "Husky Alpha";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "[alpha huskypack lost]";
		continue the action;
	Challenge "Husky Alpha";
	if fightoutcome >= 20 and fightoutcome <= 29:
		say "[alpha huskypack lost]";
		continue the action;
	if fightoutcome >= 10 and fightoutcome <= 19:
		say "[alpha huskypack victory]";
	else if fightoutcome >= 30:
		say "You manage to make a break for it and flee from the lustful, dominant dogs.";

to say alpha huskypack lost:
	if HP of Player < 1:
		say "     The pack laughs and cheers as you submit to their superior numbers. They push you over, and suddenly, your mouth is full of dog cock as one sits down on you, shoving his member into you and starting to rut eagerly with reckless abandon. You feel another husky rifling through your pockets. Are they mugging you? It seems so, as one gives a delighted bark and dashes off with something of yours, bringing it to the alpha husky to admire. You try to voice complaint, but can only get out a muffled whine around the cock filling you. The horny dog straddling your face howls, filling you with salty dog cum and forcing himself forward. Your jaw hurts as the knot is forced past it, leaving you tied to the lusty canine.";
		say "     Time passes, and the sounds of the others grow quieter. You can't see them either, but you can't see much but the thighs of your rapist. He pulls free of your sore mouth and barks a word of thanks before hopping to his feet and dashing off, leaving you to recover.";
		CreatureSexAftermath "Player" receives "OralCock" from "Husky Alpha";
		let z be a random owned grab object;
		ItemLoss z by 1;
	else: [ player submitted ]
		say "     Seeing you take a submissive posture, the pack immediately stops their assault. They press in at you from all directions, petting and licking you all over. The leader, however, is looking you in the eyes. 'If you want to join us,' he says, 'you will have to be stronger than that.";
		if Player is male:
			say "     You feel your [Cock of Player] shaft being buried in the eager mouth of a husky, slurping at you with loud, rude sounds and bobbing against your crotch. Furry paws grasp and caress at your [Ball Size Adjective of Player] nuts as they growl happily.";
		if Player is female:
			say "     A wet, slippery, canine tongue delves up into your cunt, lapping at your [Cock of Player] sex as they tease at your clit with claw tips carefully. Your sex sings with forced pleasure as the dogs work diligently to bring you to delirious heights.";
		say "     You shudder and spasm as climax hits you like a freight train, feeding hungry husky mouths with your fluids. They work you until you have no further to give and lower you back to the ground gently. The alpha stands over you, his tail wagging. 'Next time.'";
		CreatureSexAftermath "Husky Alpha" receives "[if Player is male]OralCock[else if Player is female]OralPussy[else if Player is herm and a random chance of 1 in 2 succeeds]OralCock[else if Player is herm]OralPussy[end if]" from "Player";


to say alpha huskypack victory:
	choose row MonsterID from Table of Random Critters;
	project the Figure of HuskyAlpha_hard_icon;
	if Player is not submissive:
		say "     You stand victorious as the huskies whimper in defeat. They know who the one in charge is, for now at least. One of the downed dogs rolls over in front of you, paws in the air and wagging his tail. The others join in with soft yelps and whines, endeavoring to win your favor.";
		if humanity of Player > 60 or Libido of Player < 50:
			say "     You have little interest in playing with dogs though. There are better things to be doing, and you leave them behind.";
		else:
			say "     You get the soft urge to play with these dogs and crouch down. You run your [bodytype of Player] hands across their scruffs and throats, scratching at their densely furred hides as they start to gather around you, licking and nuzzling with an intense affection for their superior.";
			if Player is male:
				if Cock Count of Player > 1:
					say "     Your multiple hanging wangs draw two of the huskies. They go for them directly, licking and slurping at them like they were a fine treat. Those wet tongues tease and excite you, barely allowing you to even see your crotch because of their eager snouts pressed against you. Behind them, their tails are wagging fiercely with delight. Another husky, looking left out, circles about you.";
				else:
					say "     You feel a nuzzling at your groin and see a husky softly shoving his snout between your thighs. His wet tongue trails out across your [Cock of Player] member, admiring its [cock size desc of Player] girth and stature. His cold nose brushes against your [Ball Size Adjective of Player] nuts, and you jump, just in time for another husky to circle around you.";
			else:
				say "     One husky approaches and rears up, pressing his snout to your face before he licks across face and neck, then bares his throat to you. Without thinking about it, you bite him lightly across the exposed windpipe, and he shudders with a potent feeling of submission. As the thrill of owning him runs through you, you barely register another dog moving around behind you.";
			if Player is female:
				say "     The dog behind you nuzzles against your [TailSpeciesName of Player in lower case] ass a moment before he rears up, placing his paw-hands on your shoulders and drawing in for a firm hug from behind. He growls in your ear in a way that seems nothing but adoring. He runs his tongue across your ears and the side of your face, grinding his increasingly hard shaft against your ass as your front is worked over. His pointed dog cock seems to avoid your cunt, at least until you decide that you want to be fucked. You reach behind yourself and guide his twitching member to your [cunt size desc of Player] [CuntSpeciesName of Player in lower case] gash. He needs no further prompting and thrusts firmly into you, taking your wet tunnel with sharp, deep pushes and howling out his love for his alpha queen.";
				CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";
			else:
				say "     The dog behind you nuzzles against your [TailSpeciesName of Player in lower case] ass a moment before he rears up, placing his paw-hands on your shoulders and drawing in for a firm hug from behind. He growls in your ear in a way that seems nothing but adoring. He runs his tongue across your ears and the side of your face, grinding his increasingly hard shaft against your ass as your front is worked over. The narrow end of his raging erection nudges against your asshole, and he pulls away sharply, whining as if he did a bad thing. You give out a growl of your own, reaching back to pull him forward and into yourself. With a happy yelp, he buries himself into your tight back door, filling you with rapid strokes as he yelps and barks with delight at being permitted to mount his alpha.";
				CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
			say "     With the pleasure coming from both ends, it is not long before your body seizes in climax. Your cry mixes with those of the canines, shuddering and pressing tight together as hot cum flows between. They are eager to clean you. One volunteers to be your pillow, and another, your blanket, as they all snuggle tightly up to you until you pass into a restful sleep.";
			SanLoss 20;
			if humanity of Player < 10:
				say "[alpha pack victory ending]";
				wait for any key;
				end the story;
			else:
				say "     When you awaken, the pack has already moved on. Taking the cue, you rise and gather your things before moving to safer places.";
	else:
		say "     Your victory feels odd, almost wrong. The huskies circle you a moment before the leader of them suddenly darts forward and plants a sloppy dog kiss against you. 'Little bitch, you fight hard. When will you join us forever?' The words bring a hot blush to your [FaceSpeciesName of Player in lower case] cheeks as some part of you wants to roll over and do just as he said. Would it really be that bad?";
		SanLoss 10;
		if humanity of Player < 10:
			say "[alpha pack submissive victory ending]";
			wait for any key;
			end the story;
		else:
			say "     No! You won't give up that easily! You turn away from the alpha in defiance. He comes up from behind and wraps his arms around you, rubbing your [bodydesc of Player] form lightly. 'Your fire burns so bright. It will be all the more delicious when you join us.'";
			if Player is male:
				say "     His paw dips down across your front and takes a hold of your [cock size desc of Player] [Cock of Player] shaft, squeezing, pulling, and stroking you slowly as he whispers in your ear, 'We will take such good care of you, our strong little bitch. Just imagine.'";
				if Ball Size of Player > 0:
					say "     A wet tongue flicks up over your [Ball Size Adjective of Player] balls, lapping at it as the alpha jerks you off with that soft, furry paw, working you as he rocks against your back. His scent is all around you, powerful and intimidating. Even though you had won the battle, you can feel your mind losing the war as the idea of being the pack's bitch seems more and more appealing.";
				say "     Your orgasm sneaks up on you, spraying your seed into the air, before another husky snout descends over your shaft, swallowing the rest obediently as you ride it out. The alpha pulls his paw away from your cock and moves instead to petting your belly and sides, stroking your entire form as you twitch in pleasure.";
				SanLoss 10;
				if humanity of Player < 10:
					say "[alpha pack submissive victory ending]";
					wait for any key;
					end the story;
				else:
					say "     When the orgasm fades, the huskies draw back. The room between you and them feels painful, as if the separation were just as visceral as seeing your own arm across the room. The urge to join them was maddening, but you deny it. You watch them as they move away, not moving yourself until they are out of sight.";

to say alpha pack victory ending:
	say "     When you wake up, your pack is assembled around you. Yes, your pack. They've always been your pack, right? A moment of fuzziness fades as one of the huskies approaches with a wagging tail and bows before you. You scratch him behind the ear before shouting out the order to continue the hunt. There were more people to show the way of the pack. Your pack would become a permanent feature of the city, waging successful wars with other violent mutants. Under your wise rule, you forge more peaceful terms with the agreeable sorts. The mall rats become a vital source of supplies and technology, and you trade with them often. Those you defeat in battle are converted to bitches and warriors, depending solely on your discretion.";
	if Player is male:
		say "     You sire a great many children over the years, swelling the ranks of the pack. It is one of your sons that eventually succeeds you, when you eventually retire to comfort with your many wives.";
	if Player is female:
		say "     You allow yourself to be bred by only the most potent, strong, and wise of your pack. Your children become exemplars of the pack, helping to lead and protect along your command, and your husbands become your dearest companions.";

to say alpha pack submissive victory ending:
	say "     You can resist no longer. You throw yourself down in front of the alpha with your paws up in the air. The canine leader reaches down to rub across your belly before he gestures for you to stand. 'You are no regular bitch,' he says. 'You defeated us all. There is something special in you.' The praise sends pleasure tingling through your body, and arousal creeps into your loins. He leans forward, bumping his nose into yours. 'You will be the alpha of the bitches. You will show them how best to serve the pack.' You nod quickly, and the others howl their approval. Soon, you are surrounded by your brothers and sisters, licking, kissing, hugging, and stroking. The entire pack breaks down into an orgiastic expression of joy at their powerful bitch. Filled with such love you have not felt before, you eagerly take up your role and serve the rest of your days as the best omega.";

to say alpha husky bitch:
	say "     You surrender to the sensations and take off at a run until the object of your obsession comes into view. That handsome alpha husky is perched on a rock, looking out over the quiet city. He doesn't even see you until you are on him, hugging him from behind. He laughs as he turns about in your arms and gently pries you free of him. His paws rub over your face and through your hair, whispering how good you are for finding him, and how well he will treat you from now on. Your body grows warm and tingly at the words, knowing deep inside that they are true, and that this male will always look out for you. A sudden slap jerks you free of your daze, his paw having slapped you on your [BodySpeciesName of Player in lower case] ass. 'Now, let's get in gear. We need more females for our pack if we're going to rule this city.' You bob your head in agreement, imagining your alpha with a great many bitches. He deserves them, and you will gladly help him get them. But you know that you will always be his most special bitch.";

To say Alpha Husky loss:
	if MtFHuskyAlphaActive is true:
		now MtFHuskyAlphaActive is false; [to deactivate this variant before going into anything]
	if SarahSlut > 3:
		project the Figure of HuskyAlpha_hard_icon;
		say "     'You're tougher than I thought,' the alpha says as he looks at you speculatively, his nose working as he sniffs around you for a second, before a grin crosses his muzzle. 'And it looks like you already have tamed a bitch or two yourself,' he says with a chuckle, obviously scenting your lusty husky pet's heat-filled odor still clinging to your body. 'If you want, I suppose I could give you a few pointers on being a proper alpha to them, one pack leader to another,' the canine says with a wink, his offer sounding surprisingly helpful as you think of how much fun it would be to be a proper alpha for your little pets back in the bunker...";
		say "[bold type]Do you take him up on his offer?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Get some tips to be a better alpha.";
		say "     ([link]N[as]n[end link]) - No, you feel like you're fine without his advice.";
		if Player consents:
			say "     'Knew you would be interested in that,' he chuckles roughly. You listen eagerly as he begins giving you pointers on how to properly train a husky to serve you, his harsh voice interspersed with soft barks and much wagging of his tail as he passionately describes how an alpha claims their bitch properly. By the time he saunters off into the streets of the city, you feel like that you know quite a bit more about what life is like at the top of a husky pack. Strangely enough, you even feel much more husky-like yourself now too... Shrugging the feeling off, you realize that any such changes could only bring you closer to being a proper alpha for your bitches, and you grin as you saunter down the streets of the city yourself...";
			infect "Husky Alpha";
			infect "Husky Alpha";
		else if losttoalphahusky >= 2 or a random chance of 1 in 2 succeeds:
			say "[bold type]You also briefly consider pouncing on the defeated husky and giving him an added reminder that you beat him. Shall you do this instead?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Get some revenge.";
			say "     ([link]N[as]n[end link]) - No, you're not interested.";
			if Player consents:
				say "     Acting as if you're about to accept his offer, you move in a little closer and then tackle the alpha husky down, growling at him that you think he needs a better reminder that you beat him.";
				caughtthealphahusky;
			else:
				say "     Deciding to just drop the matter entirely, you tell him that you're not interested. 'Your loss,' the husky says with a shrug, wagging his tail as he saunters off. 'Though if you don't want to be a proper alpha for that well-tamed bitch I scented on you, feel free to send her my way anytime!' He gives a barking laugh over his shoulder as he vanishes into the streets of the city.";
		else:
			say "     'Your loss,' the husky says with a shrug, wagging his tail as he saunters off. 'Though if you don't want to be a proper alpha for that well-tamed bitch I scented on you, feel free to send her my way anytime!' He gives a barking laugh over his shoulder as he vanishes into the streets of the city.";
	else if losttoalphahusky >= 2:	[lost at least twice]
		say "     Having been beaten and abused by these male huskies a few times in the past, you growl as you beat him and push him down before he can get away. He makes some snaps at you and tries to pull free, but you've got him.";
		caughtthealphahusky;
	else if a random chance of 1 in 2 succeeds:
		say "     You manage to push the alpha husky down to the ground at the end of your fight before he can slink away. You growl down at him as he makes some snaps at you and tries to pull free, but you've got him.";
		caughtthealphahusky;
	else:
		say "     The powerful male husky growls as you beat him back again, before shaking his battered head at you sadly and turning tail. The anthro canine darts off down the city streets with his tail hanging low as he runs off to hide and lick his wounds. Somehow though, you don't think that will be the last you will see of that strange alpha husky...";
	if bradfordBountyNum is 4:
		if bradfordbounty > 0:
			LineBreak;
			decrease bradfordbounty by 1;
			say "     You hear a soft [if bradfordbounty is 0]double-[end if]ding from your pack. Reminded of your deal with the bounty hunter, Bradford, you pull out the contract he's splitting with you. Looking at it, you can see that the printed value denoting the number remaining has gone down to [bold type][bradfordbounty][roman type]. You can't discern how this was accomplished; the paper and the printing on it seem entirely ordinary[if bradfordbounty is 0]. Seeing how that's completed it, you should be able to see him about getting your cut of the reward[end if].";
		else:
			say "     This encounter reminds you of your deal with bounty hunter, Bradford. You should go see him about getting your share of the reward.";

to caughtthealphahusky:
	project the Figure of HuskyAlpha_hard_icon;
	LineBreak;
	say "     [bold type]What do you want to do with the male husky now?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Beat him up";
	now sortorder entry is 0;
	now description entry is "Teach the mutt a lesson";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Milk him for some husky cum";
	now sortorder entry is 1;
	now description entry is "Collect a bottle of cum from him";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Mount him";
		now sortorder entry is 3;
		now description entry is "Thrust yourself into the dog's tailhole";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Ride his cock";
	now sortorder entry is 4;
	now description entry is "Impale yourself on the husky's cock";
	[]
	sort the table of fucking options in sortorder order;
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
			if Player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Beat him up"):
					say "[AlphaHuskyBeating]";
				if (nam is "Milk him for some husky cum"):
					say "[AlphaHuskyMilking]";
				if (nam is "Mount him"):
					say "[AlphaHuskyFucked]";
				if (nam is "Ride his cock"):
					say "[AlphaHuskyRidden]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "[AlphaHuskyRelease]";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AlphaHuskyFucked:
	say "     Deciding that this alpha male could use a taste of his own medicine, you roll him over and grab that fluffy tail of his. He gives a mix of growling threats and whimpers, trying to bark and bluster out of his punishment, but this only spurs you on further, wanting to teach the dog a good hard lesson of his own. As you push your cock into his tight tailhole, his hips push back into your thrust despite his attempts at resistance. And after a few thrusts, he's moaning and panting beneath you, his own cock dribbling precum onto the ground. Wrapping one arm around his muscular chest and with your other hand clamped on his muzzle in a show of dominance, you bring your face right next to his pointy ear and tell him that he should just become your pet, be a lapdog that rides your cock regularly. He bucks up a little in resistance when you do this, making it all the more pleasant to give him another and another deep thrust.";
	say "     When you finally feel your self-control erode under the overwhelming surges of your libido, you hammer into your husky captive all the way one last time, starting to erupt into his depths as your balls grind against his furry ass. With your [Cock of Player] manhood pulsing your seed into him and claiming ownership of his rear end, the husky finds himself panting and drooling, eyes scrunched shut as he mutters, 'Damn, fuck. Fuck! Not like this!' And that is when his hole suddenly gives a strong twitch around your erection, flexing and squeezing you in rhythm with the husky's own blasts of cum all over the ground underneath him. He came from you fucking him! Chuckling and teasing the guy as you ride our your orgasm balls deep inside him, you eventually pull out and release him. Defeated and with his fluffy tail low to cover his creamy hole, the husky slinks off into the city to find someplace to lick his wounds and salvage his injured pride.";
	CreatureSexAftermath "Husky Alpha" receives "AssFuck" from "Player";

to say AlphaHuskyRidden:
	say "     Deciding to show this alpha male who's in charge, you decide to take what you want from him instead of letting him force it upon you. Slamming his shoulders down firmly, you straddle him and start grinding your hips down onto his crotch. As his sheath starts to fill and his doggy cock emerges, he starts to pant. He struggles a little, still wanting to be dominant and on top, but you growl at him until his ears dip. Only then do you press that throbbing dog cock into your [if Player is female]juicy pussy[else]tight anus[end if]. You ride him slowly, which makes the normally rough dog whimper for more, but you take your time, savoring both his pleas for you to go faster and the fulfilling ride that you're getting. Once you can't hold back any longer and need release, you pound yourself down onto him hard and fast until you both cum loudly as the canine seed floods your [if Player is female]womb[else]belly[end if][if Player is male]. You shoot your own load across the husky's chest as his semen fills you[end if]. Finished with him, you push yourself off and send the cowed dog on his way. He slinks off, his tail low at having been beaten and used for a change, looking for some place to lick his wounds and salve his pride.";
	if Player is female:
		CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";
	else:
		CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";

to say AlphaHuskyMilking:
	say "     After pulling an empty bottle out of your pack and setting it down where you can quickly reach it, you decide to take what you want from the defeated canine instead of letting him force it upon you. Slamming his shoulders down firmly, you tell the muscular man to stay, like the dog he is, then reach for his crotch and start rubbing it. As his sheath starts to fill from your touch, the husky's resistance ebbs off and soon his doggy cock emerges, with your opponent beginning to pant. He still struggles a little bit, wanting to be dominant and on top, but you growl at him until his ears dip. Only then do you take the hand that was pressing down on his chest away, using it to caress his balls instead. Soon, you've got his manhood fully hard and standing straight up like a pole, pulsing slightly from the rapid beat of his heart.";
	say "     You stroke and fondle your defeated canine a bit, grinning as you push the groaning captive closer and closer to orgasm. You tease him by saying that he should just be a good little pet dog and stop his huffing and puffing about being an Alpha, which starts the husky grumbling a bit - right until you begin squeezing tighter and give his dick a long stroke up and down and he pants as needily as a bitch in heat. With a chuckle, you continue to caress his manhood, and when he finally can't hold back any more, you quickly snatch up your prepared bottle and hold it to his cock, successfully catching spurt after spurt of milky white cum in it. He's got a respectable output and fills a little bit less than half the bottle before he sinks back in exhaustion, panting loudly. Looks like you've finished off the cowed dog for now, so you cap the bottle of cum and pack it away and give him a casual wave to slink off. Tail low at having been beaten and milked, the husky trots away, looking for some place to lick his wounds and salve his pride.";
	LineBreak;
	ItemGain husky alpha cum by 1;

to say AlphaHuskyBeating:
	say "     Deciding this aggressive dog could use a bit of harsh discipline, you give him a few more smacks. 'Bad dog! Bad dog!' You rain blows down upon him, kicking and punching him until he's cowering in a corner. With a final kick of his ass, you eventually send him running. He slinks off with his tail between his legs to find someplace to lick his wounds and salve his pride.";

to say AlphaHuskyRelease:
	say "     You growl down at the alpha husky angrily, making him whimper a little, which brings a smile to your face. With a huff, you push yourself off of him, releasing your captive. The anthro canine scrambles to his feet and turns tail. He darts off down the city streets with his tail hanging low as he runs off to hide and lick his wounds. Somehow though, you don't think that this will be the last you will see of him and huskies in general.";

Section 1-1 - MtF-Focused Husky Alpha variant

Table of GameEventIDs (continued)
Object	Name
MtFHuskyAlpha	"MtFHuskyAlpha"

MtFHuskyAlpha is a situation.
ResolveFunction of MtFHuskyAlpha is "".
Sarea of MtFHuskyAlpha is "Nowhere".

[This is a specific variant of the Alpha Husky encounter that focuses fully on Male-to-Female transformation.]

to say HuskyAlphaMtFdesc1:
	say "     You are caught by surprise as a large, handsome anthro husky male appears in front of you, his slim canine muzzle drawn back in an amused grin as he looks you over. Returning the examination, you see that he has a handsome coat of lovely fur and a nice, perky tail wagging behind him, as he obviously enjoys what he is looking at. The beast is obviously one of the rare male alphas that take care of and probably made the many slutty husky bitches around the city. This one, though... Does not seem to charge at you right away. He, instead, inspects you from a distance, eyeing you from head to toe.";
	say "     'Look what we've got here... A [italic type]male[roman type], of all things. I'm surprised you're still so, after running into so many of us.' He grins as he then decides to take a step closer to you. 'You're in luck, though. I like my subs masculine... at first.' The horny husky then rubs his paws together as his thick, erect canine cock bobs with excitement. The knot at the base is already starting to swell with anticipation as he strides forward eagerly!";
	say "     [bold type]Looks like this is not the typical alpha husky...[roman type][line break]";

to say HuskyAlphaMtFdesc2:
	say "     You are caught by surprise as a large, handsome anthro husky male appears in front of you, his slim canine muzzle drawn back in an amused grin as he looks you over. Returning the examination, you see that he has a handsome coat of lovely fur and a nice, perky tail wagging behind him, as he obviously enjoys what he is looking at. The beast is obviously one of the rare male alphas that take care of and probably made the many slutty husky bitches around the city. This one, though... You think you recognize him";
	if Player is female and Player is not male:
		say ". 'I like what I'm looking at. It seems you've finally embraced it... And you look a lot better as a feminine and pretty bitch. Shall we make sure you... stay that way? I promise I'll make it enjoyable for the two of us...' The horny husky then rubs his paws together as his thick, erect canine cock bobs with excitement. The knot at the base is already starting to swell with anticipation as he strides forward eagerly!";
	else:
		say ". 'Aww... [one of]What a shame. You still look too... manly, for the times we've been together. I guess I just have to fuck you again... Maybe that'll be enough to turn you into a proper girly bitch[or]Look at you, still resisting your fate... Come here, let me show how good it feels to be a female slut[or]You're still looking like that? Guess I have to keep fucking you until we soften those edges... make you look nice, pretty and girly as you should[at random]...' The horny husky then rubs his paws together as his thick, erect canine cock bobs with excitement. The knot at the base is already starting to swell with anticipation as he strides forward eagerly!";
	say "     [bold type]Looks like this is that one alpha husky...[roman type][line break]";

to say HuskyAlphaMtF1: [first scene, only chance to kill off the event if undesired]
	if HP of Player > 1: [player submitted]
		say "     You have submitted to the alpha male husky, giving him a clear indication that you want him to do whatever he wants to you, and there is no way back on that.";
		HuskyAlphaMtF1Continued;
	else:
		say "     Despite your resistance, the alpha male husky manages to overpower you with his might and strength, leaving you unable to continue fighting. 'Well, aren't you something... Though, resisting is futile in this case. You should accept what you're destined to be. The receiver of my future pups... with a womb to carry them all... And for that, we've gotta turn you into a [bold type]good girl[roman type]. So, just stop fighting and embrace it, we'll both feel much better that way...!' Hearing this husky's words gives you a clear idea of what he intends to do to you, however, he seems to take more pleasure in having an eager submissive rather than a rebellious one. Maybe [bold type]the right attitude[roman type] would discourage him from subduing you...";
		say "     Or, you can [bold type]do the opposite[roman type] and become his slut. You will probably lose your masculinity, and all of it, if you keep submitting to him, but if you do not mind that, then you could just focus on the fun part of it, if that is your thing.";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Do as he says, stop resisting.";
		say "     ([link]N[as]n[end link]) - No, you do not like this, and you will have none of it.";
		if Player consents:
			LineBreak;
			say "     What he says begins to make sense in your head, like an appealing deal you cannot refuse, and now, you drop all resistance for what is about to come...";
			HuskyAlphaMtF1Continued;
		else:
			LineBreak;
			say "     Enough is enough, and you let him know that much is clear. He may have bested you in a fight, but your mind remains solid... somewhat, at least. You tell him that you will never obey him and will not accept any offers he gives, that he should just stop wasting time with you and seek someone else who would gladly bend over for him to be his so yearned [']good girl[']. He looks back at you, eyes wide, clearly surprised by your sudden outburst. 'Well, that's no fun, is it? What's the point of dominating someone who doesn't want to be dominated? Usually we break their will until they have no other choice but to comply, but honestly... I really can't be bothered. So, have it your way. Maybe you aren't all that suited to be a subservient bitch.'";
			say "     He then turns around and starts walking the other way, paying no further attention to you. That should take care of it. You do not think you will ever see this particular alpha husky ever again.";
			now infectbypass is true;
			now Resolution of MtFHuskyAlpha is 99;

to HuskyAlphaMtF1Continued:
	say "     'Convinced already? This should be fun...' he says, the handsome alpha slowly approaching you as you fall on your knees, locking his gaze onto yours until he is in your reach. You chin is then grabbed by his paw in a strong manner, tightly grasping you as you are forced to look at his grinning face. 'It's gonna take a while... But give it a few times and you'll become a very pretty girl, I'm sure.' Once the alpha husky has got you in his dominant trance, he takes hold of his throbbing meat and, with his other paw, lowers your head towards him, causing your lips to collide with the pointy tip of his cock. 'Contrary to my other rivals, I always like a bit of foreplay... To make sure I'm ready to take you properly like the slut you are.'";
	say "     He forces his cock down your throat several times, holding you by the back of your skull and roughly facefucking you for a while. His knot bashes against your lips continuously as his furry sack bounces back and forth, the husky clearly getting more and more excited. 'You're such a little bitch... I'm starting to like you.' At some point, he pulls you off his dick, giving you a brief time to catch your breath, but holds your face still. 'Bend over. I want to fuck you.' You are then released, but you must follow his command, so you turn around, get on all fours and expose your butt to him, which quite pleases the canine. 'We've got a good starting point, here... Very nice ass,' he says, giving one of your cheeks a slap before he squeezes it, to then fondle your hole.";
	WaitLineBreak;
	say "     'Not what I'd call a pussy, but it shall serve the same purpose, for now... Until we get you one.' Once the husky repositions himself to align his sex with your entrance, he then teases you by rubbing his meat against it, only grinding between your cheeks. Your hole feels warm as it instinctively throbs at the mere presence of the alpha canine's cock, then beginning to relax and yearn to be filled. 'Can't wait to get fucked, eh? Such a good slut... You make an amazing bitch.' Then, he finally begins to press his manhood into you, pushing it past your anal ring and shoving it deeper... 'This is your place, right here... My bitch,' he says, slapping your butt and leaning over on top of you.";
	say "     'This is what a real male is like... Owning bitches like you and fucking their brains out...' The alpha male then surprises you as he takes hold of your [Cock of Player] cock, dandling hard under you and between your legs, squeezing it tight and making you flinch in reflex [if Cock Length of Player >= 7 and Cock Length of Player <= 10]. 'And look at this... not a bad one, if you knew how to use it. But you're just not made to be like me. Might as well have a clit in its place, right? You have no need for a cock unless it's inside you... hehe[else if Cock Length of Player > 10]. 'And have a look at this! Quite an impressive meat... Almost makes me feel bad for getting rid of it, but then again... it's such a waste on a bitch like you. You could never hope to know how to use it... It's just not in you, right? You'd rather actually have it [italic type]in[roman type] you... hehe[else if Cock Length of Player < 7]. 'And what's this? Guess you were already half-way there to go full female with a cock this tiny. More like a clit, by now. It's adorable, even... Look at how hard it throbbed when I called it a clit... It really wants to be one, eh? Don't worry, it's doing a good job, so far[end if]...' As the husky taunts you, he continues to thrust into you, fucking you deep, but slowly, at first.";
	WaitLineBreak;
	say "     The husky picks up the pace, eventually, as he puts his muscular furred arm around your neck, rendering any movement of yours helplessly blocked. You remain fully at his mercy, taking his cock deep inside your ass, each thrust going harder and harder, tempting you to moan at the increasing pleasure you are getting from this. 'You seem to like your role a lot, slut... Can't wait to give you some curves... A nice pair of tits... A soaking wet pussy always begging for my cock... a womb for all the pups we're gonna be having together... Might make you my bitch wife!' It is clear that the husky is fantasizing with how you will look after he is done with you, imagining you as his female cum dumpster, his cock throbbing every second while inside you, ramming against your prostate, which begins to shy away as these thoughts cloud your mind.";
	say "     He gropes your chest, squeezes it and rubs his paw all over it, exciting you even more as he carries on fucking you. 'Hng... I'm close... You wanna take a real alpha male's load inside you? See how it feels to be bred, with all my warm seed deep in you...' he whispers into your ear before pushing his knot into you, locking himself inside your ass as he cums. 'Fuck yeah, bitch, take it all!' The husky goes on grunting as he delivers his sperm inside you, coating your bowels generously as he scoops you into his arms. This whole thing makes you cum as well, spurt after spurt of eager jizz leaving through your cock, but not as vigorously as you are used to... just short squirts of it as your whole body and hole quiver in an intense surge of pleasure.";
	WaitLineBreak;
	say "     'That's my good girl... Enjoying her male's love. We're going to get along very well...' he commends you, licking your face and still groping your chest. 'I can already feel my load working your body, softening you... You're gonna feel so much better as a pretty female. Much more yourself.' You are then forced to cuddle with the husky, as he is still knotted to you, all while he feels you up and continues to taunt you. 'Next time you see me... just drop to your knees, service your male and let me continue my work. A few more fucks and you're gonna be looking beautiful... Give it a few more and you'll have a dripping pussy yearning for this cock all the time... I promise I'll give it to you.'";
	say "     Moments later, the husky pulls off from you and stands up, grinning, leaving you lying down on the ground. 'See you around, slut. Just steer clear from that [italic type]other[roman type] [']alpha['], please,' he says, with quote gestures, 'I want to have the pleasure of claiming you for myself only.' Then, with his final message delivered, he walks away. You, on the other hand, have to recover from this, but not without losing a significant amount of both your masculinity and dignity.";
	infect "Husky Bitch";
	CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";
	now Resolution of MtFHuskyAlpha is 1;

to say HuskyAlphaMtF2: [subsequent times]
	if HP of Player > 1:
		say "     Seeing this alpha male in front of you, there is no way you can resist him. You immediately drop to your knees as he approaches you...";
	else:
		say "     You attempted to resist him this time, but he is just too powerful. He takes you down without breaking a sweat, unfazed by your futile attempt at fighting back...";
	say "     'Hey there, slut. Missed me?' he asks, with the biggest grin on his muzzle, standing on front of you with a raging hard-on that keeps on throbbing every other second. 'Hope you haven't been fooling around with that other husky dude. You belong to this alpha only. Now... show me how that body's going,' he commands, and you have no other choice but to obey him...";
	WaitLineBreak;
	if Player is male:
		say "     Exposing your body to the husky alpha, you show him that you still have a cock between your legs. He looks at you, very sad and disappointed. 'Seems there's something there that wasn't supposed to be... That's quite a shame, isn't it? Can't quite take you as my bitch wife that way... Maybe we just need to fuck a couple more times, dump a few more loads into you... Don't worry, we'll shape you up into a fine female in no time.'";
		HuskyAlphaMtF2Male;
	else if Player is female:
		say "     Exposing your body to the husky alpha, you show him that your front has only this wet vulva, engorged and moist, very happy to see him. His eyes even shine with joy, and you can swear his meat grew even harder, as he eyes your feminine form. 'What a good girl. No more of that unsightly cock. Bet you don't even miss having one... Why even have it, in the first place? When you've got this one here that can go in a way better place... inside you.'";
		HuskyAlphaMtF2Female;
	else:
		say "     Exposing your body to the husky alpha, you show him that... you lack any sort of genitalia. He shrugs, confused at this. 'Uh... I don't really know what to do with that, honestly. Maybe it's some sort of phase between the sex change? Well... you still have an ass, right?' You nod, aware of your butthole still between your asscheeks.";
		HuskyAlphaMtF2Male;

to HuskyAlphaMtF2Male:
	WaitLineBreak;
	say "     As he is done examining you, the handsome alpha slowly approaches, locking his gaze onto yours until he is in your reach. You chin is then grabbed by his paw in a strong manner, tightly grasping you as you are forced to look at his grinning face. 'I'm sure you'll become a very pretty girl quickly, now. Just give it a couple more times...' Once the alpha husky has got you in his dominant trance, he takes hold of his throbbing meat and, with his other paw, lowers your head towards him, causing your lips to collide with the pointy tip of his cock. 'You know the deal. Suck my cock, get me nice and hard... and then you're getting fucked deep like only a proper slut deserves.'";
	say "     He forces his cock down your throat several times, holding you by the back of your skull and roughly facefucking you for a while. His knot bashes against your lips continuously as his furry sack bounces back and forth, the husky clearly getting more and more excited. 'That's it, my bitch... Swallow it... savor it... This cock owns you.' At some point, after thrusting into your throat for some more time, he pulls you off his dick, giving you a brief time to catch your breath, but holds your face still. 'That's good enough. Get on all fours, time for your fuck.' You are then released, but you must follow his command, so you turn around, get on all fours and expose your butt to him, which quite pleases the canine. 'You've still got a really nice ass,' he says, giving one of your cheeks a slap before he squeezes it, to then fondle your hole.";
	WaitLineBreak;
	say "     'Can't wait to be fingering a pussy in place of that [if Player is male]unsightly clit pretending to be a cock[else]void between your legs[end if]. Believe me, you're just gonna feel a lot more like yourself...' Once the husky repositions himself to align his sex with your entrance, he then teases you by rubbing his meat against it, only grinding between your cheeks. Your hole feels warm as it instinctively throbs at the mere presence of the alpha canine's cock, then beginning to relax and yearn to be filled. 'Can't wait to get fucked, eh? Such a good slut... You make an amazing bitch.' Then, he finally begins to press his manhood into you, pushing it past your anal ring and shoving it deeper... 'This is your place, right here... My bitch,' he says, slapping your butt and leaning over on top of you.";
	say "     'This is what a real male is like... Owning bitches like you and fucking their brains out... Bet you can't wait to become a permanent addition to my pack... as my bitch wife, eh?' As the husky taunts you, he continues to thrust into you, fucking you deep, but slowly, at first. He does take his time to really get you in the mood, arching your back and pressing your butt against his pelvis, though keeping his knot outside, which continues to swell... 'Is that eagerness I see in you to take my load? That's right... you need it, right? You also can't wait to have a pussy and take my pups in you like a proper slut... Oh yeah, I'll give them to you... All you could ever want...'";
	WaitLineBreak;
	say "     The husky picks up the pace, eventually, as he puts his muscular furred arm around your neck, rendering any movement of yours helplessly blocked. You remain fully at his mercy, taking his cock deep inside your ass, each thrust going harder and harder, tempting you to moan at the increasing pleasure you are getting from this. 'I'm picturing you with these really nice curves... A nice pair of tits, or well, several, hehe... A soaking wet pussy always begging for my cock... a womb full of my pups... We're gonna have so many...' It is clear that the husky is fantasizing with how you will look after he is done with you, imagining you as his female cum dumpster, his cock throbbing every second while inside you, [if Player is male]ramming against your prostate, which begins to shy away as these thoughts cloud your mind[else]drilling your asshole with the virility only an alpha male can have[end if].";
	say "     He gropes your chest, squeezes it and rubs his paw all over it, exciting you even more as he carries on fucking you. 'Hng... I'm close... You're ready, slut? Maybe we'll get you that pussy, this time... And we won't need to keep using your rear hole any longer...' he whispers into your ear before pushing his knot into you, locking himself inside your ass as he cums. 'Fuck yeah, bitch... take it all!' The husky goes on grunting as he delivers his sperm inside you, coating your bowels generously as he scoops you into his arms. This whole thing makes[if Player is male] you cum as well, spurt after spurt of eager jizz leaving through your cock, but not as vigorously as you are used to... just short squirts of it as[end if] your whole body and hole quiver in an intense surge of pleasure, your climax hitting you so intensely that you think it even excites your alpha even more during his last few shots.";
	WaitLineBreak;
	say "     'That's my good girl... Enjoying her male's love. You've done well... Accepting your fate... Embracing your femininity...' he commends you, licking your face and still groping your chest. 'I can already feel my load working your body, softening you... You're gonna feel so much better as a pretty female. Much more yourself.' You are then forced to cuddle with the husky, as he is still knotted to you, all while he feels you up and continues to taunt you. 'Next time you see me... just drop to your knees, service your male and let me continue my work. I promise I'll fuck you until you have a dripping pussy yearning for this cock all the time... Hopefully it's gonna happen soon.'";
	say "     Moments later, the husky pulls off from you and stands up, grinning, leaving you lying down on the ground. 'See you around, slut. Just make sure to steer clear from that [italic type]other[roman type] [']alpha['], please,' he says, with quote gestures, 'You're mine only. Whatever that dude tells you... he's just delusional. I'm your real alpha.' Then, with his final message delivered, he walks away. You, on the other hand, have to recover from this, but not without losing a significant amount of both your masculinity and dignity.";
	infect "Husky Bitch";
	CreatureSexAftermath "Player" receives "AssFuck" from "Husky Alpha";

to HuskyAlphaMtF2Female:
	WaitLineBreak;
	say "     As he is done examining you, the handsome alpha slowly approaches, locking his gaze onto yours until he is in your reach. You chin is then grabbed by his paw in a strong manner, tightly grasping you as you are forced to look at his grinning face. 'I really enjoy this new... true you. Let's make sure you keep looking that way.' Once the alpha husky has got you in his dominant trance, he takes hold of his throbbing meat and, with his other paw, lowers your head towards him, causing your lips to collide with the pointy tip of his cock. 'You know the deal. Suck my cock, get me nice and hard... and then you're getting fucked deep like only a proper slut deserves.'";
	say "     He forces his cock down your throat several times, holding you by the back of your skull and roughly facefucking you for a while. His knot bashes against your lips continuously as his furry sack bounces back and forth, the husky clearly getting more and more excited. 'That's it, my bitch... Swallow it... savor it... This cock owns you.' At some point, after thrusting into your throat for some more time, he pulls you off his dick, giving you a brief time to catch your breath, but holds your face still. 'That's good enough. Get on all fours, time for your fuck... And my treat.' You are then released, but you must follow his command, so you turn around, get on all fours and expose your butt to him, which quite pleases the canine. 'What a beautiful ass... But I'm so glad I'll be taking your pussy, this time,' he says, giving one of your cheeks a slap before he squeezes it, to then fondle your wet curls.";
	WaitLineBreak;
	say "     'Soaking wet... Warm... Soft... Fuck, I can't wait to breed it... How does it feel, having the right sex on you? Bet you feel way more like yourself, now...' Once the husky repositions himself to align his member with your womanhood, he then teases you by rubbing his meat against it, only grinding it between your engorged labia. It even quivers at the mere presence of the alpha canine's cock, steadily dripping, yearning to be filled. You remember the alpha's words in your mind and realize that he is so right about you, as you are indeed craving for his cock, really badly. 'Can't wait to get fucked, eh? Such a good slut... You make an amazing bitch, just like I told you.' Then, he finally begins to press his manhood into you, pushing it past your wet entrance and shoving it deeper... 'This is your place, right here... My bitch,' he says, slapping your butt and leaning over on top of you.";
	say "     'I'm tempted to claim you already as my bitch wife... Call you officially mine... Well, even though you already belong to me. I'm talking something more... permanent. The breeder of my pack... Always full of my pups...' As the husky taunts you, he continues to thrust into you, fucking you deep, but slowly, at first. He does take his time to really get you in the mood, arching your back and pressing your butt against his pelvis, though keeping his knot outside, which continues to swell... 'Is that eagerness I see in you to take my load? That's right... you need it, right? You wanna carry my pups really badly, don't you? Oh yeah, I'll give them to you... All you could ever want... Now that you really deserve it.'";
	WaitLineBreak;
	say "     The husky picks up the pace, eventually, as he puts his muscular furred arm around your neck, rendering any movement of yours helplessly blocked. You remain fully at his mercy, taking his cock deep inside your greedy cunt, each thrust going harder and harder, tempting you to moan at the increasing pleasure you are getting from this. 'Fuck, babe... your pussy feels so fucking good around my cock... We're the perfect match now... You're gonna make me a proud alpha male dad, aren't you? I'm gonna breed you so full... Oooh, fuck...' It is clear that the feeling of your sex around his is quickly driving him closer and closer to the point of no return, added to the fact that you just accomplished his fantasy...";
	say "     He gropes your breasts, squeezes them and rubs his paw all over them, exciting you even more as he carries on fucking you. 'Hng... I'm close... You're ready, slut? Make space for this load, oh it's gonna be big... Oooh...' he whispers into your ear before pushing his knot into you, locking himself inside your ass as he cums. 'Fuck yeah, bitch... take it all!' The husky goes on grunting as he delivers his sperm inside you, and he definitely fills your womb as generously as he promised, all while he scoops you into his arms. You can really tell this is a [bold type]definitely a big load[roman type]... And the whole thing makes your whole body and hole quiver in an intense surge of pleasure, your climax hitting you so intensely that you think it even excites your alpha even more during his last few shots.";
	WaitLineBreak;
	say "     'That's my good girl... Enjoying her male's love. You've done well... Accepting your fate... Embracing your femininity...' he commends you, licking your face and still groping your breasts. 'I can't wait to put more in you. Maybe I should just take you and fuck that pussy forever, now that you're a proper female...' You are then forced to cuddle with the husky, as he is still knotted to you, all while he feels you up and continues to taunt you. 'Next time you see me, you know what happens... Don't fight it, just let me take that pussy over and over again... Embrace your fate as my very special female.'";
	say "     Moments later, the husky pulls off from you and stands up, grinning, leaving you lying down on the ground. 'See you around, slut. Just make sure to steer clear from that [italic type]other[roman type] [']alpha['], please,' he says, with quote gestures, 'You're mine only. Whatever that dude tells you... he's just delusional. I'm your real alpha.' Then, with his final message delivered, he walks away. You, on the other hand, have to recover from this, with your femininity reinforced.";
	infect "Husky Bitch";
	CreatureSexAftermath "Player" receives "PussyFuck" from "Husky Alpha";

Section 2 - Creature Insertion

to say Alpha Husky Desc:
	if Player is male and Player is not female and Resolution of MtFHuskyAlpha is 0 and a random chance of 4 in 10 succeeds: [fully male, not herm, 1st time]
		now MtFHuskyAlphaActive is true;
		say "[HuskyAlphaMtFdesc1]";
	else if Resolution of MtFHuskyAlpha > 0 and Resolution of MtFHuskyAlpha < 99 and a random chance of 4 in 10 succeeds: [fully male, not herm, subsequent times]
		now MtFHuskyAlphaActive is true;
		say "[HuskyAlphaMtFdesc2]";
	else if MtFHuskyAlphaActive is true and Resolution of MtFHuskyAlpha is 0:
		say "[HuskyAlphaMtFdesc1]";
	else if MtFHuskyAlphaActive is true and Resolution of MtFHuskyAlpha > 0 and Resolution of MtFHuskyAlpha < 99:
		say "[HuskyAlphaMtFdesc2]"; [These latter 2 were added due to an erratic behavior occurring when the player flees this variant. The MtF Husky will keep on appearing until he is engaged with, so this forces the correct description to show up. Until this temporary variable can be deactivated upon the player 'fleeing' in the basic structure of an encounter outside a situation, this will have to do.]
	else:
		say "     You blink in surprise as a large, handsome anthro husky male appears in front of you, his slim canine muzzle drawn back in an amused grin as he looks you over. Returning the examination, you see that he has a handsome coat of lovely fur and a nice, perky tail wagging behind him, as he obviously enjoys what he is looking at. The beast is obviously one of the rare male alphas that take care of and probably made the many slutty husky bitches around the city. [one of]'You look like you will make a fine bitch for me...' [or]'Let's see if you know how to submit to an alpha,' [or]'Another soon-to-be husky bitch for me, I see!' [or]'Hello, my lovely little bitch. Time to get fucked!' [or]'You look like you need a pack to belong to. Let me help you with that...' [or]'It doesn't look like you have embraced your inner slut yet. Here, let me help you with that...' [or]'C'mere, Bitch!' [or]'Let's see now, do you want to do it the hard way, or the doggy style way...' [or]'I can't wait to get my paws on you!' [or]'Time to show you what an alpha can do!' [at random]the horny husky says as he rubs his paws together. His thick, erect canine cock bobs with excitement, and the knot at the base is already starting to swell with anticipation as he strides forward eagerly!";

Table of CombatPrep (continued)
name(text)	PrepFunction(text)
"Husky Alpha"	"[PrepCombat_Husky Alpha]"

to say PrepCombat_Husky Alpha:
	setmongender 3;
	project the Figure of HuskyAlpha_soft_icon;

Table of Random Critters (continued)
NewTypeInfection (truth state)	Species Name	Name	Enemy Title	Enemy Name	Enemy Type	Attack	Defeated	Victory	Desc	Face	Body	Skin	Tail	Cock	Face Change	Body Change	Skin Change	Ass Change	Cock Change	str	dex	sta	per	int	cha	sex	HP	lev	wdam	area	Cock Count	Cock Length	Ball Size	Nipple Count	Breast Size	Male Breast Size	Cunt Count	Cunt Depth	Cunt Tightness	SeductionImmune	Libido	Loot	Lootchance	TrophyFunction	MilkItem	CumItem	Scale (number)	Body Descriptor (text)	Type (text)	Magic (truth state)	Resbypass (truth state)	non-infectious (truth state)	Cross-Infection (text)	DayCycle	Altcombat (text)	BannedStatus (truth state)
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of Random Critters;
	now NewTypeInfection entry is false;
	now Species Name entry is "Husky";
	add "Husky Alpha" to infections of CanineList;
	add "Husky Alpha" to infections of FurryList;
	add "Husky Alpha" to infections of NatureList;
	add "Husky Alpha" to infections of MaleList;
	add "Husky Alpha" to infections of TaperedCockList;
	add "Husky Alpha" to infections of KnottedCockList;
	add "Husky Alpha" to infections of SheathedCockList;
	add "Husky Alpha" to infections of BipedalList;
	add "Husky Alpha" to infections of TailList;
	now Name entry is "Husky Alpha";
	now enemy title entry is "Husky Pack Leader";
	now enemy Name entry is ""; [ Specific name of unique enemy. ]
	now enemy type entry is 0; [ 0 = non unique enemy; 1 = unique (unknown name); 2 = unique (known name) | Used to disqualify unique enemies from Vore/UB and showing the enemy name in encounters. ]
	now attack entry is "[one of]He leaps forward, snapping and snarling at you.[or]The husky poses for a minute, the light catching on his perfect, sexy coat of fur and making you stare in awe and lust.[or]Leaping towards you, he knocks your hands aside, and his canine muzzle lunges forward as he kisses you right on the mouth![or]He dances around you playfully, his teasing antics making you forget that you are supposed to be fighting him for a minute.[or]He darts forward and rubs himself up against your body, his arousing scent clinging to your body even as he retreats back out of reach.[or]He stalks forward confidently, his erect cock drawing your gaze as he rubs his paws over your body teasingly.[at random]";
	now defeated entry is "[Alpha Husky loss]";
	now victory entry is "[Alpha Husky attack]";
	now desc entry is "[Alpha Husky Desc]";
	now face entry is "slim, masculine canine muzzle, a soft grin tugging at the edges of it, and your perky husky ears resting happily on top of your canine face";
	now body entry is "[if latexhuskymode is true]that of a quadrupedal dog with paw-like feet and hands[else]that of a bipedal canine, very much resembling that of a male husky with digitigrade legs, ending in soft powerful paws[end if]";
	now skin entry is "[if latexhuskymode is true]smooth and shiny latex of black and white for[else][one of]soft fur over your[or]husky fur over your[at random][end if]";
	now tail entry is "You have a [if latexhuskymode is true]curved husky tail made of smooth latex[else]long and fluffy husky tail swaying happily behind you[end if].";
	now cock entry is "[if latexhuskymode is true][one of]latex[or]doggy[or]canine[or]knotted[at random][else][one of]canine[or]husky[or]knotted[at random][end if]";
	now face change entry is "[if latexhuskymode is true]it reflows into the smooth, husky head you had before. Your long, rubbery tongue hangs from your mouth, dripping with oily drool[else]it draws forward, pushing out into a proper canine muzzle, your newly elongated tongue slipping free of your new lips and lolling wetly in the air for a minute[end if]";
	now body change entry is "[if latexhuskymode is true]your arms and legs grow malleable and turn into doggy legs for your increasingly canine body. Soon enough, you're back to the quadrupedal husky form you had earlier. It will be a struggle to stand or use your hands now, but being a doggy feels so much better anyhow[else]your legs bend and twist into a proper digitigrade form with soft snapping sounds as the bones flow and change. You look down to see your feet becoming entirely paw-like, even as your hands shift and change as well to become almost as paw-like, barely able to still handle your equipment[end if]";
	now skin change entry is "[if latexhuskymode is true]your skin flows, turning a glossy black and white, flowing around as it becomes a layer of latex in a husky pattern[else]your skin prickles from your head to your toes as fur begins to push through from underneath, soon covering you in a soft, almost comforting, layer of fluffy, white husky fur[end if]";
	now ass change entry is "[if latexhuskymode is true]a long, inflated tail balloons from your behind. It curves and wags, perpetually raised to show off your groin and butt[else]a long canine tail pushes out from your spine, lifting up in a stiff curve as it begins to sway slowly behind you without any conscious input[end if]";
	now cock change entry is "[if latexhuskymode is true]your shaft becomes smooth, latex flesh. It tapers to a point and gains a thick, doggy knot and a sheath of latex rubber to house it[else]it draws up closer to your body, the skin stretching around your crotch to cover your new knotted canine member completely in a soft, furry sheath of husky fur[end if]";
	now str entry is 22;
	now dex entry is 17;
	now sta entry is 21;
	now per entry is 16;
	now int entry is 10;
	now cha entry is 20;
	now sex entry is "Male"; [ Defines which sex the infection will try and make you. current options are 'Male' 'Female' 'Both']
	now HP entry is 50;
	now lev entry is 8; [ Level of the Monster, you get this much HP if you win, or this much HP halved if you loose ]
	now wdam entry is 10; [ Amount of Damage monster Does when attacking. ]
	now area entry is "Outside"; [ Current options are 'Outside' and 'Mall'. Case sensitive]
	now Cock Count entry is 1; [ How many cocks will the infection try and cause if sex is 'Male' or 'Both']
	now Cock Length entry is 10; [ Length infection will make cock grow to if cocks]
	now Ball Size entry is 3; [ Size of balls ]
	now Nipple Count entry is 2; [ Number of nipples infection will give you (males have nipples too) ]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [ Breast size for if Sex="Male", usually zero. ]
	now Cunt Count entry is 0; [ if sex = "Female or both", indicates the number of female sexes infection will grant you.]
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	now SeductionImmune entry is false;
	now libido entry is 30; [ As part of infection, the Player will be gradually moved towards this value; also used for the creature's seduce defense as a penalty ]
	now loot entry is "husky alpha fur"; [ Loot monster drops, usually infective with the monster's _own_ strain (for example if there is a Cross-Infection from sex)]
	now lootchance entry is 50; [ Chance of loot dropping 0-100 ]
	now MilkItem entry is "alpha husky milk";
	now CumItem entry is "husky alpha cum";
	now TrophyFunction entry is "[GenerateTrophyList_Husky_Alpha]";
	now scale entry is 3; [ Number 1-5, approx size/height of infected PC body: 1=tiny, 3=avg, 5=huge ]
	now body descriptor entry is "[if latexhuskymode is true][one of]quadrupedal[or]altered[or]animalistic[at random][else][one of]altered[or]animalistic[at random][end if]"; [ Ex: "plump" "fat" "muscled" "strong" "slimy" "gelatinous" "slender". Use [one of] to vary ]
	now type entry is "[one of]canine[or]husky[at random]";
	now magic entry is false;
	now resbypass entry is false; [ Bypasses Researcher bonus? true/false (almost invariably false) ]
	now non-infectious entry is false;
	now Cross-Infection entry is "Husky Bitch"; [sexually transmitted infection for when the player loses; can be left empty if they infect with the monster's own]
	now DayCycle entry is 0; [ 0 = Up at all times; 1 = Diurnal (day encounters only); 2 = Nocturnal (night encounters only);]
	now altcombat entry is "hump"; [ Row used to designate any special combat features, "default" for standard combat. ]
	now BannedStatus entry is false;


Table of New Infection Parts (continued)
Species Name	Name	Body Weight	Body Definition	Androginity	Head Change	Head Description	Head Adjective	Head Skin Adjective	Head Color	Head Adornments	Hair Length	Hair Shape	Hair Color	Hair Style	Beard Style	Body Hair Length	Eye Color	Eye Adjective	Mouth Length	Mouth Circumference	Tongue Adjective	Tongue Color	Tongue Length	Torso Change	Torso Description	Torso Adjective	Torso Skin Adjective	Torso Adornments	Torso Color	Torso Pattern	Breast Adjective	Breast Size	Male Breast Size	Nipple Count	Nipple Color	Nipple Shape	Back Change	Back Adornments	Back Skin Adjective	Back Color	Arms Change	Arms Description	Arms Skin Adjective	Arms Color	Locomotion	Legs Change	Legs Description	Legs Skin Adjective	Legs Color	Ass Change	Ass Description	Ass Skin Adjective	Ass Color	Ass Width	Tail Change	Tail Description	tail skin adjective	Tail Color	Asshole Depth	Asshole Tightness	Asshole Color	Cock Change	Cock Description	Cock Adjective	Cock Color	Cock Count	Cock Girth	Cock Length	Ball Description	Ball Count	Ball Size	Cunt Change	Cunt Description	Cunt Adjective	Cunt Color	Cunt Count	Cunt Depth	Cunt Tightness	Clit Size
--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--	--;

When Play begins:
	Choose a blank row from Table of New Infection Parts;
	now Species Name entry is "Husky"; [ Name of the overall species of the infection, used so a "male x" and "female x" have "pureblood X" children. ]
	now Name entry is "Husky Alpha"; [matching infection name to Table of Random Critters]
	now Body Weight entry is 5; [scale of 1-9 for body weight, grouped into low weight (1-3), mid weight (4-6) and high weight (7-9)]
	now Body Definition entry is 8; [scale of 1-9 for body definition, grouped into low muscle (1-3), mid muscle (4-6), high muscle (7-9)]
	[Body Adjective is generated out of the body weight and body definition and can be used in scenes - one word descriptive adjective depending on weight and definition groups: low weight group: skinny/slender/lithe; mid weight group: average/fit/muscled; high weight group: pudgy/husky/jacked]
	now Androginity entry is 2; [1-9 scale of hypermasculine to hyperfeminine]
	[Gender Adjective is generated out of androginity 1-9: hypermasculine/masculine/effeminate/somewhat effeminate/androgynous/feminine butch/tomboyish/feminine/hyperfeminine]
	now Head Change entry is "your ears are drawn upwards to the top of your head and a tooth-filled muzzle pushes forward to give you the head of a proud husky"; [partial sentence that fits in: "Your head and face [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [head change entry]."]
	now Head Description entry is "a husky with [Head Color of Player] fur"; [partial sentence that fits in "Your face and head resemble that of [Head Description of Player]. You have [Eye Adjective of Player], [Eye Color of Player] eyes and an overall [Gender Adjective of Player] appearance."]
	now Head Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Head Skin Adjective entry is "furred"; [one word descriptive adjective]
	now Head Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Head Adornments entry is ""; [partial sentence that fits in "Before moving on from your head, you give your [Head Adornments of Player] a proud glance followed by a light caress."]
	now Hair Length entry is 0; [hair length in inches]
	now Hair Shape entry is "straight"; [one word shape descriptor (curly/straight/...)]
	now Hair Color entry is "white"; [one word color descriptor]
	now Hair Style entry is "buzzcut"; [one word style descriptor (ponytail/mohawk/buzzcut/...) to fit "On top of your head you have [Hair Length of Player] inch long, [Hair Shape of Player] [Hair Color of Player] hair in the [Hair Style of Player] style."]
	now Beard Style entry is ""; [short beard style (goatee/3-day stubble beard/porn stache/mutton chops beard/...) to go into "You have a [Hair Color of Player] [Beard Style of Player]."]
	now Body Hair Length entry is 0; [numerical value, 0-4 (no body hair/light/moderate/heavy/furry) - only set to > 0 if the infection does not have fur/scales/etc. !]
	now Eye Color entry is "blue"; [one word color descriptor]
	now Eye Adjective entry is "round"; [one word descriptive adjective (slitted/round/...)]
	now Mouth Length entry is 10; [inches deep for face fucking; maximum possible will be double this number (when deep throating)]
	[Mouth Length Adjective is generated by a function and can be used in scenes too - "petite, shallow, average, deep, bottomless"]
	now Mouth Circumference entry is 10;
	[Mouth Circumference Adjective is generated by a function and can be used in scenes too - "tiny, small, normal, wide, gaping"]
	now Tongue Adjective entry is "slobbery"; [one word descriptive adjective (wide/slobbery/...)]
	now Tongue Color entry is "pink"; [one word color descriptor]
	now Tongue Length entry is 7; [length in inches]
	now Torso Change entry is "grey and white fur sprouts all over it, giving you a warm and shining coat"; [partial sentence that fits in: "Your torso [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Torso Change entry]."]
	now Torso Description entry is "covered in a warm coat of [Torso Color of Player] fur"; [partial sentence, fitting in "Looking down at yourself, you appear [Gender Adjective of Player] with a [Body Adjective of Player] build. Your torso is [Torso Description of Player][if Body Hair Length of Player > 1], covered in [Torso Color of Player] skin and [Body Hair Description of Player][else if Body Hair Length of Player is 1], covered in smooth, [Torso Color of Player] skin[end if]."]
	now Torso Adjective entry is "canine"; [one word descriptive adjective (avian/canine/...)]
	now Torso Adornments entry is ""; [(pouch/udders/...); partial sentence to fit: "You take a moment to feel your [Torso Adornments of Player]."]
	now Torso Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Torso Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Torso Pattern entry is ""; [single word color adjective for the dominant pattern of the skin/fur/feathers/scales]
	now Breast Adjective entry is "perky"; [adjective(s) example: round, pointy, perky, saggy, bouncy. This would serve as either a general appearance of a infections breasts or possibly something that may be effected by a item or NPC.]
	now Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Male Breast Size entry is 0; [cup size as number, counting Flat Pecs = 0, A = 1, B = 2, ...]
	now Nipple Count entry is 2; [count of nipples]
	now Nipple Color entry is "pink"; [one word color descriptor]
	now Nipple Shape entry is "oval"; [shape example: any shape will do as long as it has a baseline with a current infection or item]
	now Back Change entry is ""; [partial sentence that fits in: "Your back [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Back Change entry]."]
	now Back Adornments entry is ""; [partial sentence to fit: "Your back tickles with the feeling of movement caused by [back adornments of Player]."]
	now Back Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Back Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	[Limbs Adjective is generated by a function and can be used in scenes too - "rail-thin, slender, sinewy, average, firm, muscular, flabby, meaty, rippling"]
	now Arms Change entry is "your fingernails grow into blunt claws and grey-white fur spreads over your paw-hands, then all the way up your arms"; [partial sentence that fits in: "Your arms [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Arms Change entry]."]
	now Arms Description entry is "covered in [Arms Color of Player] fur, ending in paw-hands with blunt claws"; [partial sentence to fit: "Your [Limbs Adjective of Player] arms are [Arms Description of Player]."]
	now Arms Skin Adjective entry is "furred"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Arms Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Locomotion entry is "bipedal"; [one word adjective: (bipedal/quadrupedal/octapedal/serpentine/sliding)]
	now Legs Change entry is "they shift into the digitigrade stance of an anthro husky with thick grey and white fur and paws"; [partial sentence that fits in: "Your legs [one of]tingle[or]go flush[or]vibrate with odd pleasure[or]go cold[or]feel oily[at random] as [Legs Change entry]."]
	now Legs Description entry is "that of an anthro husky, with thick [Legs Color of Player] fur covering them from your hips down to the clawed paws"; [partial sentence to fit: "As your inspection goes even lower, you come to the two [Body Adjective of Player] legs supporting you. They are [Legs Description of Player]."]
	now Legs Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Legs Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Change entry is "it becomes well-rounded, with grey and white fur sprouting over it"; [partial sentence that fits in: "Your ass [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Ass Change entry]."]
	now Ass Description entry is "ass, covered thick grey and white fur"; [partial sentence to fit: "Using your hands you feel your behind enjoying the sensation of your [Ass Width Adjective of Player], [Ass Shape Adjective of Player] [Ass Description of Player]."]
	now Ass Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Ass Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Ass Width entry is 3; [ass width from 1-5]
	[Ass Width Adjective generated by function out of ass width: dainty/small/round/huge/enormous]
	[Ass Adjective generated by function out of body definition and ass width]
	now Tail Change entry is "a mid-length canine tail sprouts from your tailbone, soon covered in grey and white fur"; [partial sentence that fits in: "Your rear [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [if HasTail of Player is true]your existing tail is changed into a [Tail Description entry][else][Tail Change entry][end if]."]
	now Tail Description entry is "mid-length, [Tail Color of Player] tail"; [partial sentence to fit: "Just below your lower back sprouts a [Tail Description of Player], which you move back and forth with glee."]
	now Tail Skin Adjective entry is "furry"; [one word adjective (feathered/furred/scaly/...); EMPTY "" for creatures with just skin]
	now Tail Color entry is "grey and white"; [single word color adjective for the dominant color of the skin/fur/feathers/scales]
	now Asshole Depth entry is 8; [inches deep for anal fucking]
	[Asshole Depth Adjective is generated by a function and can be used in scenes too - "petite (< 3), shallow (< 5), average (< 9), deep (< 15), bottomless (15+)"]
	now Asshole Tightness entry is 3; [asshole tightness 1-5, "extremely tight, tight, receptive, open, gaping"]
	[Asshole Tightness Adjective is generated by a function and can be used in scenes too - "extremely tight, tight, receptive, open, gaping"]
	now Asshole Color entry is "pink"; [one word color descriptor]
	now Cock Count entry is 1;
	now Cock Girth entry is 4; [thickness 1-5, generates the Cock Girth Adjective]
	[Cock Girth Adjective is generated by a function and can be used in scenes too: thin/slender/average/thick/monstrous]
	now Cock Length entry is 9; [length in inches]
	now Cock Change entry is "it takes on a reddish color and canine shape, complete with a pointy tip, knot at the base and a sheath to protect it"; [partial sentence that fits in: "Your cock [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cock Change entry]."]
	now Cock Description entry is "is [Cock Color of Player] and has a pointy tip and a knot at the base, as well as a sheath to protect it when not erect"; [partial sentence to fit: "You have a [Cock Girth Adjective of Player], [Cock Length of Player]-inch-long [Cock Adjective of Player] [one of]cock[or]penis[or]shaft[or]maleness[at random] that [cock Description of Player]."]
	now Cock Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cock Color entry is "red"; [one word color descriptor]
	now Ball Count entry is 2;
	now Ball Size entry is 3; [size of balls 1-7: "acorn-sized", "dove egg-sized", "chicken egg-sized" "goose-egg sized", "ostrich-egg sized", "basketball-sized", "beachball-sized"]
	[Ball Size Adjective is generated by a function and can be used in scenes too]
	now Ball Description entry is "balls in a furry, low-hanging sack"; [partial sentence to fit: "Underneath it hangs a pair of [Ball Size Adjective of Player] [Ball Description of Player]."]
	now Cunt Count entry is 0;
	now Cunt Depth entry is 0;
	now Cunt Tightness entry is 0;
	[Cunt Tightness Adjective is generated by a function and can be used in scenes too: extremely tight/tight/well-used/open/gaping]
	now Cunt Change entry is "it takes on a canine appearance, complete with a clit at the top"; [partial sentence that fits in: "Your groin [one of]tingles[or]goes flush[or]vibrates with odd pleasure[or]goes cold[or]feels oily[at random] as [Cunt Change entry]."]
	now Cunt Description entry is "is [Cunt Color of Player]-colored and shaped like that of a canine bitch, with delicate nether lips and the clit at the top"; [partial sentence to fit: "You have a [Cunt Tightness Adjective of Player] [one of]cunt[or]pussy[or]vagina[or]cleft[at random] that [Cunt Description of Player]."]
	now Cunt Adjective entry is "canine"; [one word adjective: avian/canine/...]
	now Cunt Color entry is "pink"; [one word color descriptor]
	now Clit Size entry is 2; [size 1-5, see Clit Size Adjective]
	[Clit Size Adjective is generated by a function and can be used in scenes: very small/small/average/large/very large]


Table of Game Objects (continued)
name	desc	weight	object
"husky alpha fur"	"A tuft of grey and white fur that looks like it has been pulled out of the coat of a husky. It's nicely soft."	0	husky alpha fur

husky alpha fur is a grab object.
It is temporary.
Usedesc of husky alpha fur is "[HuskyAlphaFurUse]";

to say HuskyAlphaFurUse:
	say "Holding the tuft of fur between your fingers, you stroke over it, delighted in its softness. Strangely, the hair disintegrates after a while, becoming a cloud of fine particles that are absorbed into your skin.";
	infect "Husky Alpha";

instead of sniffing husky alpha fur:
	say "The fur has a pleasing, not too strong, animal-like scent.";

Table of Game Objects (continued)
name	desc	weight	object
"husky alpha cum"	"A plastic water bottle containing a moderate amount of milky white fluid. Almost could be mistaken for some sort of buttermilk, if someone hadn't written 'Husky Cum' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst, or you maybe just do it for fun. Who knows what else it might do to you though..."	1	husky alpha cum

husky alpha cum is a grab object.
husky alpha cum is cum.
husky alpha cum is infectious.
Strain of husky alpha cum is "Husky Bitch".
Usedesc of husky alpha cum is "[husky alpha cum use]";

to say husky alpha cum use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the creamy cum run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 5;
	SanLoss 5;

instead of sniffing husky alpha cum:
	say "You open the lid for a moment and take a sniff. Doesn't smell too bad actually, just kinda nutty.";

Table of Game Objects (continued)
name	desc	weight	object
"husky alpha man-milk"	"A plastic water bottle filled with what is clearly milk. One could think it was a regular cow's milk, if someone hadn't written 'Husky Alpha Man-Milk' across the label on the bottle. You [italic type]could[roman type] drink it to quench your thirst. Who knows what else it might do to you though..."	1	husky alpha man-milk

husky alpha man-milk is a grab object.
husky alpha man-milk is milky.
Purified of husky alpha man-milk is "distilled milk".
husky alpha man-milk is infectious.
Strain of husky alpha man-milk is "Husky Alpha".
Usedesc of husky alpha man-milk is "[husky alpha man-milk use]";

to say husky alpha man-milk use:
	say "Lifting the plastic bottle to your mouth, you take a drink from it, letting the milk run over your tongue and down your throat. Tastes rich and animal-like. Swishing it around in your mouth a little, you finish the bottle off, then stuff it back into your collection of 'empties'.";
	PlayerDrink 15;

instead of sniffing husky alpha man-milk:
	say "You open the lid for a moment and take a sniff. Smells kinda like any other milk, really.";

Alpha Husky ends here.
