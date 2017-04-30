Version 1 of Alexandra Cuckolding by Wahn begins here.
[Version 1 - Split off from Alexandra ]

"Adds Cuckolding scenes for Bad Alexandra the Doberwoman to the Flexible Survival game"

[ hp of Alexandra ]
[ 0 = still roaming ]
[ 1-49 = Bad Alexandra ]
[ 1 = At bunker, no talk ]
[ 2 = At bunker, talk ]
[ 3 = First preggers ]
[ 4 = Gave birth ]
[ 5 = Preggers again ]
[ 50+ = Good Alexandra ]
[ 50 = At police station, no visit ]
[ 51 = Been to police station ]
[ 52 = Talked ]
[ 53 = Supply request: food/water needed ]
[ 54 = Food given/water needed ]
[ 55 = Water given/food needed ]
[ 56 = Both given ]
[ 57 = Brought in a survivor (Jimmy) ]
[ 58 = Medical supplies (and Paula?) ]
[** 59 = values now unused ]
[** 60 = values now unused ]
[ 61 = Survivor Group event activated ]
[ 62 = Survivors waiting ]
[ 63 = Survivors rescued ]
[ 64 = Unsuccessful Automaton attempt ]
[ 65 = Master Mind captured ]
[ 66 = Sex w/Good Alexandra ]
[ 67 = Map Reward ]
[ 68 = Automaton encounter ]
[ 69 = New Lead - Microchip Factory ]
[ 70 = Factory visit done ]

[ lust of Alexandra ]
[ 0 = not preggers ]
[ 1-12 = lightly preggers ]
[ 13-24 = plumply preggers ]
[ if ( hp of Alexandra is 3 and lust of Alexandra > 12 ) or hp of Alexandra > 3  =  bigger breasts ]

[ libido of Alexandra ]
[ number of offspring ]

[ level of Alexandra ]
[ Alexandra + Fang ]
[ 0 = no contact ]
[ 1 = unshared ]
[ 2 = shared ]

[ xp of Alexandra ]
[ turn when both Fang and Alexandra are determined to be present]

[ lastdobiemess ]
[ 0 = no sex ]
[ 1 = fucked pussy ]
[ 2 = anal ]
[ 3 = oral ]
[ 4 = cunn ]
[ 5 = licked her ]
[ 6 = tits ]
[ 7 = 69 ]
[ 97 = Fang + oral ]
[ 98 = Fang + cunn ]
[ 99 = Fang ]

AlexandraBrutusInteraction is a number that varies.

instead of navigating Grey Abbey Library while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is demon brute and (DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7) and DemonBruteStatus < 2 and (AlexandraBrutusInteraction is 0 or (AlexandraBrutusInteraction > 0 and a random chance of 1 in 4 succeeds))):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Alexandra bangs Brutus - AlexandraBrutusInteraction: [AlexandraBrutusInteraction][line break]";
	say "[AlexandraBrutusCuckScene]";
	
instead of going outside from Bunker while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is demon brute and (DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7) and DemonBruteStatus < 2 and (AlexandraBrutusInteraction is 0 or (AlexandraBrutusInteraction > 0 and a random chance of 1 in 4 succeeds))):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Alexandra bangs Brutus - AlexandraBrutusInteraction: [AlexandraBrutusInteraction][line break]";
	say "[AlexandraBrutusCuckScene]";
	
instead of going down from Grey Abbey 2F while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is demon brute and (DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7) and DemonBruteStatus < 2 and AlexandraBrutusInteraction < 100 and (AlexandraBrutusInteraction is 0 or (AlexandraBrutusInteraction > 0 and a random chance of 1 in 4 succeeds))):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Alexandra bangs Brutus - AlexandraBrutusInteraction: [AlexandraBrutusInteraction][line break]";
	say "[AlexandraBrutusCuckScene]";	
		
to say AlexandraBrutusCuckScene:
	say "     Entering the ground floor of the library, you find Alexandra already there waiting for you, leaning against the wall near the front doors. Your dobie bitch looks truly delicious, with her ripped jeans and that leather jacket hanging open, allowing a full view of her shapely breasts. The former cop is holding her nightstick and was stroking its hard, polished length with her other paw-hand - making the action almost seem like jerking a dick. But then... you wouldn't put it past this bad bitch to be using this remnant of her former life in just such a fashion while you're out exploring. She gives a pleased bark as she spots you, clipping the lacquered stick to her belt, then pushes off the wall and saunters closer.";
	say "     From her whole demeanour - the sway of her hips, the somewhat challenging toothy grin on her muzzle and the fact that the fabric of her jeans looks just a bit damp over her crotch - you can easily guess what's up. The bitch is horny for a good fuck! Arousal spiking at the memories of breaking her into being such a needy slut, you watch her come closer with a grin and think about what you'll do to her this time. But then, she barely acknowledges you with a casual, 'Hey boss,' and walks right past you, stopping in front of the large purple demon accompanying you. 'Hello there big guy,' she says with arousal vibrating in her voice and reaches out to touch the big brute's ripped abs, stroking down over them and going on until her hand is resting on his weighty purple shaft.";
	WaitLineBreak;
	say "     Turning to the two of them with a wide-eyed expression, you find Alexandra grinning at you. Then she strokes up and down over Brutus's  manhood with an eager hand, clearly enjoying the edge of envy that is creeping into your demeanour. 'If our big friend here is protecting you at all times with such tireless devotion, I think he deserves a bit of a reward boss. You'd like to have some fun, isn't that right you demon hunk?' Brutus gives a deep-throated rumble and a heavy throb goes through his prick, making it swell a bit more and twitch upwards. His wide row of sharp teeth is revealed as he grins down at the bitch and licks his his lips. The purple giant opens his mouth to reply, which is exactly when Alexandra bends forward to run her floppy canine tongue along his prick, tracing the thick throbbing veins on its shaft.";
	say "     'Yeah, I want to fuck this slut hard!' Brutus almost roars, moving one of his large clawed hands to easily cup the doberwoman's breasts and squeeze them appreciatively. She laughs at his reaction, eyes focusing on yourself in a way that holds more than a little challenge. 'Can't say no to such obvious need boss. The poor guy might get blue - err... more purple - balls otherwise. ";
	if cocks of player is 0: [female or neuter player]
		say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to your own crotch before she glances back up and into your eyes. The implication is clear - you don't even have a cock, so she's looking in other places to satisfy her needs.";
	otherwise if cocks of player > 0: [male + herm player]
		if cock length of player < 6: [cock up to 5 inch - Brutus has 18]
			say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to the small bulge your prematurely erect little cock makes before she glances back up and into your eyes. The implication is clear - your small manhood is far from enough for the bitch, so she's looking in other places to satisfy her needs.";
		otherwise if cock length of player < 15: [cock up to 14 inch- Brutus has 18]
			say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to the bulge your own erection makes before she glances back up and into your eyes. The implication is clear - you might have a nice size for a human, but the bitch wants more and is looking in other places to satisfy her needs.";
		otherwise: [cock 15 inch and up, so not that much smaller or even bigger than Brutus's 18]
			say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to the bulge your own erection makes before she glances back up and into your eyes. The implication from her stressing the words 'real man' is clear - you might have a large cock, but the bitch is still looking elsewhere to satisfy her needs. Maybe he has some quality you don't or she just gets off on making you jealous.";
	WaitLineBreak;
	say "     You're speechless for a moment at her bold-faced challenge to your authority, thinly veiled in sharp-edged arguments, and Alexandra uses the opportunity to shrug off her leather jacket and push it at you. Hands closing around the material, you find yourself holding the slutty bitch's clothes as she prepares to fuck your demon pet right in front of you! Her nerve at putting you in this situation finally shakes you out of the moment of shock and allows you to react. Looking at the former cop as she rubs Brutus hard length between her bouncing breasts and the horny demon, you...";
	say "     [line break]";
	say "     ([link]Y[as]y[end link]) - Endure the humiliation of being a mere bystander at their coupling.";
	say "     ([link]N[as]n[end link]) - Crack down hard on this! You may have allowed Alexandra to get ideas about challenging you, but Brutus is a truly devoted pet and will follow your commands no matter what.";
	if player consents: [they fuck]
		say "     [line break]";
		say "     You can't bring yourself to interfere with the fun Alexandra has planned on having with Brutus - may it be because you actually agree with her arguments or the fact that you can't help but feel aroused at the thought of seeing her impaled on Brutus giant pole. No matter which, you just stand there for the moment, acting as a living clothes-hanger while she rubs up against and gets groped by your demonic companion. Soon Alexandra undoes the button and zipper of her jeans and bends over to push them down over her shapely rump - oh so coincidentally giving you a glimpse of her drippingly wet pussy. Pushing the jeans down her long legs, her tail wags back and forth in front of you, then she steps out of the crumpled garment and kicks it over towards you.";
		say "     Without giving you a second glance, Alexandra looks up at the towering demon and tells him in a lewd tone, 'Take me, you big beast!' Brutus response is basically just a horny roar and he snatches the doberwoman bitch up, pressing her to his chest. He holds her up with one hand cupping Alexandra's furry butt while its index finger rubs her nether lips, the other one cradling her back as he licks the full orbs of her breasts. While playing his tongue over the canine woman's chest, matting her short fur to cling to every curve, Brutus proceeds to fondle her crotch, then at one point just pushes his broad digit into her. Alexandra is impaled on his finger now, gasping out loud as he slides in and out of her pussy and pushes the bitch to new heights of arousal. You can literally see her juices run down over his knuckles and drip to the ground!";
		WaitLineBreak;
		say "     Being fondled, finger-fucked and licked by a large muscled demon - and all that right in front of her so-called 'boss' - Alexandra is quickly pushed to a screamed orgasm, writing in Brutus grasp as she comes hard! Watching her like this and hearing her excited barks, you can't help but move a free hand to your own crotch, sliding it inside your pants to ";
		if cocks of player is 0: [female or neuter player]
			say "reach your wet folds and start playing with yourself. ";
		otherwise if cocks of player > 0: [male + herm player]
			if cock length of player < 6: [cock up to 5 inch]
				say " grasp the regretfully small shaft of your manhood and start pumping it. ";
			otherwise if cock length of player < 13: [cock up to 12 inch]
				say " grasp the hard shaft constrained within, almost painfully so, and start pumping its length. ";
			otherwise: [cock 12 inch and up]
				say " grasp the hard shaft constrained within, almost painfully so, and start pumping its length. ";
		say "Then Brutus says, 'Like that, bitch?' He switches hands holding on to her bare butt, pulling his finger out of her with a squelching sound and licks the wetness of her femcum of his digit. 'I like your taste - and maybe you'll be wet enough to be fucked now!' He grins at the panting doberwoman and lifts her up with both hands grasping her thighs, spreading them and aligning her with his towering erection. Then the demon pushes the former cop down on it, forcing her pussy lips wide around the head of his infernal shaft.";
		say "     Brutus is big, very big indeed, and it is a good thing that he prepared her for his entry by getting Alexandra off and soppingly wet. Even as prepared as her inner muscles got during his fingering and the orgasm she had, it obviously is quite a lot to take, making your disobedient bitch pant and gasp as bit by bit, she is slid down on the thick piece of meat. Thankfully, Brutus seems to know his own size very well, only slowly pushing her onto his prick and often stopping to just hold her so she can get used to it. Finally he bottoms out inside Alexandra, hard shaft buried all the way and creating a visible bulge in her stomach.";
		WaitLineBreak;
		say "     After a minute or two of just enjoying his new cock-sheath of a doberwoman bitch, Brutus starts to slide her up and down on his prick, making her shudder with the sensations of being fucked by a being so much larger than herself. Over time, it seems to becomes easier for her to have him inside, with the demon leaking more and more precum and her muscles adapting to the new reality of constant stretching. This allows your demon pet to speed up his thrusts, going faster and faster, the slapping noises of his balls against Alexandra's crotch soon coming in rapid succession. It doesn't take long before this rough fuck drives Alexandra's arousal to the max once again, and with almost a howl, she comes yet again, femcum running down from her stretched cunt.";
		say "     The demon gives a kind of satisfied growl from the depth of his broad chest and keeps fucking her while Alexandra rides out her orgasm, getting even faster than before in his urge to join her. Soon, he reaches his own climax - and with a loud grunt, the demon begins to pump her insides full of his seed. With the head of his shaft pushing open her cervix, he easily fills the canine bitch's womb and vagina, with the remaining cum squirting out around Brutus thick cock - and that was just the first two heavy spurts! His weighty balls throb rhythmically as they send forth more and more cum to breed the former cop with.";
		WaitLineBreak;
		say "     And then... Alexandra puts the final flourish on cuckolding you with your own demonic pet. Having recovered from her own orgasm, the bitch throws her arms around Brutus's shoulders and pulls herself up against him, sliding off his still erupting shaft with a wet slurp. No longer sheathed in her soggy pussy, his huge erection flops down and the next spurt of cum leaves a long splattered line over the floor and your lower legs, followed by another shot hitting you right in the chest and making a hell of a mess. Then Brutus glances past the grinning doberwoman clinging to his chest and sees that he creamed you, head to toe more or less, and quickly adjusts his stance to blast any further shots of his demon seed over a bookshelf, not his master.";
		say "     Holding an armful of Alexandra's clothing and being soaked in demon cum, you think for a moment about saying something, then tell yourself to just go with the flow and ";
		if cocks of player is 0: [female or neuter player]
			say "concentrate on fingering yourself. It doesn't take long before your frantic hand movements drive you over the edge, cumming hard inside your pants - soaking them from the inside, just as they are from without. ";
		otherwise if cocks of player > 0: [male + herm player]
			say "concentrate on masturbating. It doesn't take long before your frantic hand movements drive you over the edge, cumming hard inside your pants - soaking them from the inside, just as they are from without. ";
		say "While you are still creaming your underwear, Alexandra convinces her demon fuck-buddy to set her back down. She looks at your pretty bedraggled state, dripping cum and pleasuring yourself, then lets out an amused bark. Strolling over to you - a bit bow-legged from her own demon fuck though - she reaches out to pluck her clothes from your grasp. She looks at the cum stains all over them (the clothes got splurged, just like you), then takes a sniff and tells you with a teasing grin, 'And here I thought I gave these to you to keep clean. No matter, I like the smell actually - reminds me of a good time.' With that, she saunters off, still naked and with Brutus's cum trickling down the inside of her legs from her still somewhat gaping pussy. ";		
	otherwise: [stop this - the player might not like Brutus being used this way, even if he has allowed Alexandra to get into cuck status]
		say "     [line break]";
		say "     Letting out a huff of disapproval, you throw Alexandra's leather jacket to the ground and order Brutus to let go of your bitch and step away from her. He looks over at you and lets out a confused growl, the burning need to fuck painted clearly in his expression and the towering pole standing erect between his legs. Still, his reply is, 'Yes master,' and he draws his hands back to himself, albeit clenched to fists as he has to control his strong urges to grab and pound your dobie bitch. As the demon steps back to his usual place just behind your right shoulder, you can feel the warmth radiating off his massive prick, sticking out straight to almost touch your arm.";
		say "     Alexandra isn't that easily discouraged and she follows after the purple giant, pushing herself against his thigh on the right side and brushing the shapely curves of her beasts against his hip. Brutus's knuckles creak as he clenches his fists even tighter, holding back from returning her caresses and he lets out a grunt through teeth grinding against each other. You give Alexandra a pointed stare which she casually ignores, then reaches for your demon pet's erection again. Yet her paw-hand glides right through as it and the rest of Brutus turn into purple smoke, swirling out of shape through her interaction with it before forming a vortex that stretches to the demontooth amulet you're holding up. Having intoned the command word, you draw your pet into his magical container, safely out of reach of the canine bitch before you.";
		WaitLineBreak;
		say "     'Spoilsport,' Alexandra barks, less than amused, then makes a few steps to pick up the jacket you so unceremoniously dumped on the floor. She shrugs into it, then zips up the front (a rare occurrence as she usually loves to present her breasts) and turns back to throw you a dirty look. 'Guess I'll have to look elsewhere to find something long and hard,' she adds in a mocking tease, stroking her fingers up and down the nightstick hanging from her belt. With that, she whirls around with a huff and stalks off.";
		
Alexandra Cuckolding ends here.
