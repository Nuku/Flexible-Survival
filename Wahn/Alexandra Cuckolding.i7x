Version 1 of Alexandra Cuckolding by Wahn begins here.
[Version 1 - Split off from Alexandra ]

"Adds Cuckolding scenes for Bad Alexandra the Doberwoman to the Flexible Survival game"

[ HP of Alexandra                                     ]
[ 0 = still roaming                                   ]
[ 1-49 = Bad Alexandra                                ]
[ 1 = At bunker, no talk                              ]
[ 2 = At bunker, talk                                 ]
[ 3 = First preggers                                  ]
[ 4 = Gave birth                                      ]
[ 5 = Preggers again                                  ]
[ 50+ = Good Alexandra                                ]
[ 50 = At police station, no visit                    ]
[ 51 = Been to police station                         ]
[ 52 = Talked                                         ]
[ 53 = Supply request: food/water needed              ]
[ 54 = Food given/water needed                        ]
[ 55 = Water given/food needed                        ]
[ 56 = Both given                                     ]
[ 57 = Brought in a survivor (Jimmy)                  ]
[ 58 = Medical supplies (and Paula?)                  ]
[** 59 = values now unused                            ]
[** 60 = values now unused                            ]
[ 61 = Survivor Group event activated                 ]
[ 62 = Survivors waiting                              ]
[ 63 = Survivors rescued                              ]
[ 64 = Unsuccessful Automaton attempt                 ]
[ 65 = Master Mind captured                           ]
[ 66 = Sex w/Good Alexandra                           ]
[ 67 = Map Reward                                     ]
[ 68 = Automaton encounter                            ]
[ 69 = New Lead - Microchip Factory                   ]
[ 70 = Factory visit done                             ]

[ lust of Alexandra                                   ]
[ 0 = not preggers                                    ]
[ 1-12 = lightly preggers                             ]
[ 13-24 = plumply preggers                            ]
[ if ( HP of Alexandra is 3 and lust of Alexandra > 12 ) or HP of Alexandra > 3 = bigger breasts ]

[ libido of Alexandra                                 ]
[ number of offspring                                 ]

[ level of Alexandra                                  ]
[ Alexandra + Fang                                    ]
[ 0 = no contact                                      ]
[ 1 = unshared                                        ]
[ 2 = shared                                          ]

[ XP of Alexandra                                     ]
[ turn when both Fang and Alexandra are determined to be present]

[ lastdobiemess                                       ]
[ 0 = no sex                                          ]
[ 1 = fucked pussy                                    ]
[ 2 = anal                                            ]
[ 3 = oral                                            ]
[ 4 = cunn                                            ]
[ 5 = licked her                                      ]
[ 6 = tits                                            ]
[ 7 = 69                                              ]
[ 97 = Fang + oral                                    ]
[ 98 = Fang + cunn                                    ]
[ 99 = Fang                                           ]

[ AlexandraBrutusInteraction                          ]
[  0: nothing yet                                     ]

AlexandraBrutusInteraction is a number that varies.
AlexandraKorvinInteraction is a number that varies.
AlexandraCarlInteraction is a number that varies.

instead of navigating Grey Abbey Library while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is demon brute and (DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7) and DemonBruteStatus < 2 and AlexandraBrutusInteraction < 100 and (AlexandraBrutusInteraction is 0 or (AlexandraBrutusInteraction > 0 and a random chance of 1 in 4 succeeds))):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Alexandra bangs Brutus - AlexandraBrutusInteraction: [AlexandraBrutusInteraction][line break]";
	say "[AlexandraBrutusCuckScene]";

instead of going up from Bunker while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is demon brute and (DBCaptureQuestVar is 6 or DBCaptureQuestVar is 7) and DemonBruteStatus < 2 and AlexandraBrutusInteraction < 100 and (AlexandraBrutusInteraction is 0 or (AlexandraBrutusInteraction > 0 and a random chance of 1 in 4 succeeds))):
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
	say "     From her whole demeanor - the sway of her hips, the somewhat challenging toothy grin on her muzzle and the fact that the fabric of her jeans looks just a bit damp over her crotch - you can easily guess what's up. The bitch is horny for a good fuck! Arousal spiking at the memories of breaking her into being such a needy slut, you watch her come closer with a grin and think about what you'll do to her this time. But then, she barely acknowledges you with a casual, 'Hey boss,' and walks right past you, stopping in front of the large purple demon accompanying you. 'Hello there big guy,' she says with arousal vibrating in her voice and reaches out to touch the big brute's ripped abs, stroking down over them and going on until her hand is resting on his weighty purple shaft.";
	WaitLineBreak;
	say "     Turning to the two of them with a wide-eyed expression, you find Alexandra grinning at you. Then she strokes up and down over Brutus's manhood with an eager hand, clearly enjoying the edge of envy that is creeping into your demeanor. 'If our big friend here is protecting you at all times with such tireless devotion, I think he deserves a bit of a reward boss. You'd like to have some fun, isn't that right you demon hunk?' Brutus gives a deep-throated rumble and a heavy throb goes through his prick, making it swell a bit more and twitch upwards. His wide row of sharp teeth is revealed as he grins down at the bitch and licks his lips. The purple giant opens his mouth to reply, which is exactly when Alexandra bends forward to run her floppy canine tongue along his prick, tracing the thick throbbing veins on its shaft.";
	say "     'Yeah, I want to fuck this slut hard!' Brutus almost roars, moving one of his large clawed hands to easily cup the doberwoman's breasts and squeeze them appreciatively. She laughs at his reaction, eyes focusing on yourself in a way that holds more than a little challenge. 'Can't say no to such obvious need boss. The poor guy might get blue - err... more purple - balls otherwise. ";
	if player is not male: [female or neuter player]
		say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to your own crotch before she glances back up and into your eyes. The implication is clear - you don't even have a cock, so she's looking in other places to satisfy her needs.";
	else if player is male: [male + herm player]
		if cock length of player < 6: [cock up to 5 inch - Brutus has 18]
			say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to the small bulge your prematurely erect little cock makes before she glances back up and into your eyes. The implication is clear - your small manhood is far from enough for the bitch, so she's looking in other places to satisfy her needs.";
		else if cock length of player < 15: [cock up to 14 inch- Brutus has 18]
			say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to the bulge your own erection makes before she glances back up and into your eyes. The implication is clear - you might have a nice size for a human, but the bitch wants more and is looking in other places to satisfy her needs.";
		else: [cock 15 inch and up, so not that much smaller or even bigger than Brutus's 18]
			say "And I deserve to be properly fucked too. Been waiting all day for a real man to smack something like this mighty shaft into my pussy!' She hefts your demonic companion's rapidly hardening prick in one hand as her gaze wanders downwards to the bulge your own erection makes before she glances back up and into your eyes. The implication from her stressing the words 'real man' is clear - you might have a large cock, but the bitch is still looking elsewhere to satisfy her needs. Maybe he has some quality you don't or she just gets off on making you jealous.";
	WaitLineBreak;
	say "     You're speechless for a moment at her bold-faced challenge to your authority, thinly veiled in sharp-edged arguments, and Alexandra uses the opportunity to shrug off her leather jacket and push it at you. Hands closing around the material, you find yourself holding the slutty bitch's clothes as she prepares to fuck your demon pet right in front of you! Her nerve at putting you in this situation finally shakes you out of the moment of shock and allows you to react. Looking at the former cop as she rubs Brutus hard length between her bouncing breasts and the horny demon, you...";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Endure the humiliation of being a mere bystander at their coupling.";
	say "     ([link]N[as]n[end link]) - Crack down hard on this! You may have allowed Alexandra to get ideas about challenging you, but Brutus is a truly devoted pet and will follow your commands no matter what.";
	if player consents: [they fuck]
		LineBreak;
		say "     You can't bring yourself to interfere with the fun Alexandra has planned on having with Brutus - may it be because you actually agree with her arguments or the fact that you can't help but feel aroused at the thought of seeing her impaled on Brutus giant pole. No matter which, you just stand there for the moment, acting as a living clothes-hanger while she rubs up against and gets groped by your demonic companion. Soon Alexandra undoes the button and zipper of her jeans and bends over to push them down over her shapely rump - oh so coincidentally giving you a glimpse of her drippingly wet pussy. Pushing the jeans down her long legs, her tail wags back and forth in front of you, then she steps out of the crumpled garment and kicks it over towards you.";
		say "     Without giving you a second glance, Alexandra looks up at the towering demon and tells him in a lewd tone, 'Take me, you big beast!' Brutus response is basically just a horny roar and he snatches the doberwoman bitch up, pressing her to his chest. He holds her up with one hand cupping Alexandra's furry butt while its index finger rubs her nether lips, the other one cradling her back as he licks the full orbs of her breasts. While playing his tongue over the canine woman's chest, matting her short fur to cling to every curve, Brutus proceeds to fondle her crotch, then at one point just pushes his broad digit into her. Alexandra is impaled on his finger now, gasping out loud as he slides in and out of her pussy and pushes the bitch to new heights of arousal. You can literally see her juices run down over his knuckles and drip to the ground!";
		WaitLineBreak;
		say "     Being fondled, finger-fucked and licked by a large muscled demon - and all that right in front of her so-called 'boss' - Alexandra is quickly pushed to a screamed orgasm, writing in Brutus grasp as she comes hard! Watching her like this and hearing her excited barks, you can't help but move a free hand to your own crotch, sliding it inside your pants to ";
		if player is not male: [female or neuter player]
			say "reach your wet folds and start playing with yourself. ";
		else if player is male: [male + herm player]
			if cock length of player < 6: [cock up to 5 inch]
				say " grasp the regretfully small shaft of your manhood and start pumping it. ";
			else if cock length of player < 13: [cock up to 12 inch]
				say " grasp the hard shaft constrained within, almost painfully so, and start pumping its length. ";
			else: [cock 12 inch and up]
				say " grasp the hard shaft constrained within, almost painfully so, and start pumping its length. ";
		say "Then Brutus says, 'Like that, bitch?' He switches hands holding on to her bare butt, pulling his finger out of her with a squelching sound and licks the wetness of her femcum of his digit. 'I like your taste - and maybe you'll be wet enough to be fucked now!' He grins at the panting doberwoman and lifts her up with both hands grasping her thighs, spreading them and aligning her with his towering erection. Then the demon pushes the former cop down on it, forcing her pussy lips wide around the head of his infernal shaft.";
		say "     Brutus is big, very big indeed, and it is a good thing that he prepared her for his entry by getting Alexandra off and soppingly wet. Even as prepared as her inner muscles got during his fingering and the orgasm she had, it obviously is quite a lot to take, making your disobedient bitch pant and gasp as bit by bit, she is slid down on the thick piece of meat. Thankfully, Brutus seems to know his own size very well, only slowly pushing her onto his prick and often stopping to just hold her so she can get used to it. Finally he bottoms out inside Alexandra, hard shaft buried all the way and creating a visible bulge in her stomach.";
		WaitLineBreak;
		say "     After a minute or two of just enjoying his new cock-sheath of a doberwoman bitch, Brutus starts to slide her up and down on his prick, making her shudder with the sensations of being fucked by a being so much larger than herself. Over time, it seems to become easier for her to have him inside, with the demon leaking more and more precum and her muscles adapting to the new reality of constant stretching. This allows your demon pet to speed up his thrusts, going faster and faster, the slapping noises of his balls against Alexandra's crotch soon coming in rapid succession. It doesn't take long before this rough fuck drives Alexandra's arousal to the max once again, and with almost a howl, she comes yet again, femcum running down from her stretched cunt.";
		say "     The demon gives a kind of satisfied growl from the depth of his broad chest and keeps fucking her while Alexandra rides out her orgasm, getting even faster than before in his urge to join her. Soon, he reaches his own climax - and with a loud grunt, the demon begins to pump her insides full of his seed. With the head of his shaft pushing open her cervix, he easily fills the canine bitch's womb and vagina, with the remaining cum squirting out around Brutus thick cock - and that was just the first two heavy spurts! His weighty balls throb rhythmically as they send forth more and more cum to breed the former cop with.";
		WaitLineBreak;
		say "     And then... Alexandra puts the final flourish on cuckolding you with your own demonic pet. Having recovered from her own orgasm, the bitch throws her arms around Brutus's shoulders and pulls herself up against him, sliding off his still erupting shaft with a wet slurp. No longer sheathed in her soggy pussy, his huge erection flops down and the next spurt of cum leaves a long splattered line over the floor and your lower legs, followed by another shot hitting you right in the chest and making a hell of a mess. Then Brutus glances past the grinning doberwoman clinging to his chest and sees that he creamed you, head to toe more or less, and quickly adjusts his stance to blast any further shots of his demon seed over a bookshelf, not his master.";
		say "     Holding an armful of Alexandra's clothing and being soaked in demon cum, you think for a moment about saying something, then tell yourself to just go with the flow and ";
		if player is not male: [female or neuter player]
			say "concentrate on fingering yourself. It doesn't take long before your frantic hand movements drive you over the edge, cumming hard inside your pants - soaking them from the inside, just as they are from without. ";
		else if player is male: [male + herm player]
			say "concentrate on masturbating. It doesn't take long before your frantic hand movements drive you over the edge, cumming hard inside your pants - soaking them from the inside, just as they are from without. ";
		say "While you are still creaming your underwear, Alexandra convinces her demon fuck-buddy to set her back down. She looks at your pretty bedraggled state, dripping cum and pleasuring yourself, then lets out an amused bark. Strolling over to you - a bit bow-legged from her own demon fuck though - she reaches out to pluck her clothes from your grasp. She looks at the cum stains all over them (the clothes got splurged, just like you), then takes a sniff and tells you with a teasing grin, 'And here I thought I gave these to you to keep clean. No matter, I like the smell actually - reminds me of a good time.' With that, she saunters off, still naked and with Brutus's cum trickling down the inside of her legs from her still somewhat gaping pussy. ";
		now AlexandraBrutusInteraction is 1;
		now lastdobiemess is 89; [Brutus creamed her pussy]
		now lastfuck of Alexandra is turns;
		let t be 2;
		increase t by level of Alexandra;
		if HP of Alexandra is even and a random chance of t in 5 succeeds:
			increase HP of Alexandra by 1;
			now lust of Alexandra is 1;
			now AlexandraPupDaddy	is 5; [Brutus knocked her up]
	else: [stop this - the player might not like Brutus being used this way, even if he has allowed Alexandra to get into cuck status]
		LineBreak;
		say "     Letting out a huff of disapproval, you throw Alexandra's leather jacket to the ground and order Brutus to let go of your bitch and step away from her. He looks over at you and lets out a confused growl, the burning need to fuck painted clearly in his expression and the towering pole standing erect between his legs. Still, his reply is, 'Yes master,' and he draws his hands back to himself, albeit clenched to fists as he has to control his strong urges to grab and pound your dobie bitch. As the demon steps back to his usual place just behind your right shoulder, you can feel the warmth radiating off his massive prick, sticking out straight to almost touch your arm.";
		say "     Alexandra isn't that easily discouraged and she follows after the purple giant, pushing herself against his thigh on the right side and brushing the shapely curves of her breasts against his hip. Brutus's knuckles creak as he clenches his fists even tighter, holding back from returning her caresses and he lets out a grunt through teeth grinding against each other. You give Alexandra a pointed stare which she casually ignores, then reaches for your demon pet's erection again. Yet her paw-hand glides right through as it and the rest of Brutus turn into purple smoke, swirling out of shape through her interaction with it before forming a vortex that stretches to the demontooth amulet you're holding up. Having intoned the command word, you draw your pet into his magical container, safely out of reach of the canine bitch before you.";
		WaitLineBreak;
		say "     'Spoilsport,' Alexandra barks, less than amused, then makes a few steps to pick up the jacket you so unceremoniously dumped on the floor. She shrugs into it, then zips up the front (a rare occurrence as she usually loves to present her breasts) and turns back to throw you a dirty look. 'Guess I'll have to look elsewhere to find something long and hard,' she adds in a mocking tease, stroking her fingers up and down the nightstick hanging from her belt. With that, she whirls around with a huff and stalks off.";
		now AlexandraBrutusInteraction is 100;

instead of navigating Grey Abbey Library while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is gshep and gsd_pet > 59 and gsd_pet < 100 and AlexandraKorvinInteraction is 0):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Alexandra bangs Korvin - AlexandraKorvinInteraction: [AlexandraKorvinInteraction][line break]";
	say "[AlexandraKorvinCuckScene1]";

to say AlexandraKorvinCuckScene1:
	say "     Ready to stop by your home base, you make your way back to the library through the empty streets. Well, empty of people at least - you pass more than a few burned-out cars, countless rags and shreds of ripped clothing strewn about and lots of other refuse. Arriving in front of the Grey Abbey Library, you look around for a moment, checking if anyone followed you. As usual most of the time, all is quiet, so you climb the shallow steps and enter the building. Good that people aren't used to go to libraries anymore these days. Barely anyone knows your hideout... But then, as the entrance door swings shut again, you are momentarily frozen in your tracks as someone speaks the words from close beside you, 'I've been waiting for you to get back here.'";
	if graphics is true:
		project the figure of Alexandra_face_icon;
	say "     Whirling around at the surprise, you see that it is Alexandra who spoke, leaning casually against the nearby wall, wearing her leather jacket. And it is - just - the leather jacket she wears right now, with the rest of the gloriously sexy dobie bitch bare-ass naked. You can't help but let your hungry gaze wander over her fit and shapely form, the pair of well-rounded breasts on her chest, all of it covered in short black and reddish-brown fur. She grins confidently at you, then pushes herself off the wall and walks closer, swaying her hips enticingly.";
	WaitLineBreak;
	say "     Man, you've really turned the formerly straight-laced cop into one hell of a sexy bitch! She works her body perfectly to wind you up more and more with every further moment... and then just strolls past you with nothing more than a provocative wiggle of her eyebrows. You can't help but gape openly as she just leaves you standing right where you are and wiggles her breasts at your German shepherd attack dog Korvin. 'Fuck yeah,' the anthro dog chuckles as Alexandra hooks a finger under his black collar, using that to guide him along with her.";
	say "     Soon, they're next to one of the sofas, where she turns the two of them around as if to show off - no, actually you're sure she only does it to show off. Besides her own naked body, this reveals that Korvin is rock hard by now, his canine cock having filled out in mere moments from the anticipation of sinking it into the sexy bitch. Alexandra grabs his red-skinned shaft and jerks it several times, then throws you a sardonic glance and bares her canines a little as she gives Korvin a sultry look. 'Mmm... where've you been hiding? Been looking for a cock worth fucking in this place.' With that said, she gives the anthro dog a push, making him fall back on the sofa.";
	LineBreak;
	say "     Alexandra is about to climb on top of Korvin's lap, putting cuckold's horns on you another time! [bold type]Will you simply let this happen?[roman type]";
	say "     ([link]Y[as]y[end link]) - Endure the humiliation of being a mere bystander at their coupling.";
	say "     ([link]N[as]n[end link]) - Crack down hard on this! You may have allowed Alexandra to get ideas about challenging you, but Korvin is your trained attack dog! He'll obey if you call him to heel vehemently enough.";
	if player consents: [they fuck]
		LineBreak;
		say "     Doing nothing - except walking a bit closer so you have a better view - you simply watch as Alexandra climbs on top of the sofa, spreading her legs to straddle the German shepherd's hips. The bitch leans forward to kiss him lustfully, their tongues exploring each other's muzzles, then reaches down to take his hard shaft and line it up with her pussy. And just like that, she sinks herself onto his cock, throwing her head back to bark in ecstasy as the thick piece of man-meat fills her. The doberwoman grinds her hips against his, her hungry pussy taking Korvin's whole shaft - knot and all - then starts to bounce up and down on it, popping his knot in and out of her wet snatch.";
		say "     'Fuck yeah!' Korvin groans out loud as Alexandra fucks herself on his cock, but soon the canine isn't content with a simply passive role anymore. He reaches up to cup her breasts, groping them and leaning forward to lick their nipples, switching up from one to the other. After a few moments of this, the dog pulls back a little, looking Alexandra right in the eye as he says, 'You're one sexy bitch! But there's just one little problem...' Stroking a lock of her dyed-red head hair out of her face, Alexandra gives an amused snort as she replies, 'So?! What is it?' ...while at the same time squeezing Korvin's cock with her inner muscles and reducing his reply to nothing but a drawn-out lusty groan.";
		WaitLineBreak;
		say "     For a little while, Alexandra keeps the German shepherd busy by humping against him, but eventually he regains enough control to hook a hand behind her neck and pull her close. 'The thing is...' he grunts out, 'I'm not on top!' And with that said, the anthro dog wraps his arms around her, holding Alexandra close as he rolls the two of them over. With him now on top of the sexy bitch now, Korvin pounds into her with unrestrained intensity, really making his balls smack against her crotch with each thrust. But still, he wants more - soon, the German shepherd whips his cock out of Alexandra and flips her over, putting her in the perfect doggy style position and hammering into her snatch from behind right away.";
		say "     Alexandra may have started fucking around with Korvin to tease you, but thoughts for anything but his thick cock inside her are long gone by now, as the bitch howls and whines needily with each time he moves his manhood in and out. The two anthro furries have given into their bestial urges fully by now - maybe because he put her into the classic canine position, or simply because they reached a certain boundary of lust and arousal. No matter which, Korvin hammers into her again and again, popping his bulging knot past the opening of her pussy, growling and grunting in unison with his chosen bitch. It doesn't take long before such no-holds-barred pounding pushes him over the edge, his whole body tensing as his cock starts throbbing with a heavy load being deposited in her pussy.";
		WaitLineBreak;
		say "     Arms wrapped tight around her chest from behind, Korvin keeps holding on to his freshly bred bitch while both of them catch their breaths. Slowly walking around the two of them, you check out the sweaty and panting couple, then find yourself being grinned at by your attack dog. He waves you closer and proudly proclaims, 'I knotted her good.' Pointing down at his crotch, the German shepherd pulls back until there is a low hiss from Alexandra as her pussy lips bulge outwards a little from the swollen knot inside her. 'I'd have become part of your pack right away without all the fighting if you'd told me you got fine bitches like her as part of the deal!'";
		say "     Shaking your head at the antics of the two of them, you stroke Korvin's head and neck, telling him he's a good dog and that he can keep fucking Alexandra as long as he stays loyal to you. Oh, and that he should really give it to her hard when he does, as Alexandra needs to be reminded who her bosses are. There is an amused snort from the kneeling woman as you say those words, but at least she refrains from contradicting you. You just know she'll fuck around again, but this way, you can pay her back a little by having Korvin take her extra hard and at the same time bind him ever tighter to you out of loyalty to his 'generous' alpha.";
		now AlexandraKorvinInteraction is 1; [they fucked]
		now lastdobiemess is 95; [Korvin creamed her pussy]
		now lastfuck of Alexandra is turns;
		let t be 2;
		increase t by level of Alexandra;
		if HP of Alexandra is even and a random chance of t in 5 succeeds:
			increase HP of Alexandra by 1;
			now lust of Alexandra is 1;
			now AlexandraPupDaddy	is 3; [Korvin knocked her up]
	else: [stop this - the player might not like Korvin being used this way, even if he has allowed Alexandra to get into cuck status]
		LineBreak;
		say "     With a sharp snarl, you call out the German shepherd's name, making him wrench his gaze away from the swaying orbs of Alexandra's breasts to look at you. The broad grin on his face turns into half of a snarl as he sees your expression, his lips drawing back from the dog's teeth. 'Fuuuuckkk,' he groans, then looks back at Alexandra as she bends forward and strokes his erection. 'Come on boss! She's ripe for the taking. I mean... come ON!' Korvin adds after that, frustration obvious in his exclamation. But no, you're unrelenting in your decision and shout for him to come over to you.";
		say "     Finally giving in to his owner's demand, the anthro furry growls out loud and shoves Alexandra aside, making her fall on the sofa cushions and give a bark of surprise. She gets her paws under her feet again a moment later, but by this time Korvin is back by your side, standing in his usual spot... if somewhat grudgingly. Patting his head, you stroke your pet canine's fur, then wrap your hand around his erection. Holding the stare of Alexandra, who stands with crossed arms a little distance away, you jerk off your attack dog, petting him with your other hand at the same time.";
		WaitLineBreak;
		say "     As Korvin grunts deeply and starts to come soon after, spraying quite a few long strings of his cum into your bent palm, you loudly say what a good pet he is. With a snide look at Alexandra, you add a moment later that at least one doggie here knows how to behave himself, then raise your hand to Korvin's muzzle. As the canine starts to eat his own load, you grin at the doberwoman bitch. Nothing more needs to be said, as it becomes clear to her that Korvin is YOURS, and Alexandra walks off with a huff.";
		now AlexandraKorvinInteraction is 100; [stopped things cold]

instead of navigating Grey Abbey Library while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is gshep and gsd_pet > 59 and gsd_pet < 100 and AlexandraKorvinInteraction > 0 and AlexandraKorvinInteraction < 100 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Korvin bangs Alexandra - AlexandraKorvinInteraction: [AlexandraKorvinInteraction][line break]";
	say "[AlexandraKorvinCuckScene2]";

to say AlexandraKorvinCuckScene2:
	say "     Ready to stop by your home base, you make your way back to the library through the empty streets. Well, empty of people at least - you pass more than a few burned-out cars, countless rags and shreds of ripped clothing strewn about and lots of other refuse. Arriving in front of the Grey Abbey Library, you look around for a moment, checking if anyone followed you. As usual most of the time, all is quiet, so you climb the shallow steps and enter the building. As the entrance door swings shut again behind you, the anthro German shepherd by your side stops in his tracks for a second, raising his muzzle to sniff the air. 'Oh yeah,' he says with a grin right after.";
	if graphics is true:
		project the figure of Korvin_blackcollar_face_icon;
	WaitLineBreak;
	say "     'Yo bitch! Where are ya? I can smell that you need a fuck!' your attack dog barks out loudly and you can see the tip of his cock start to push out of its sheath. Not too far off, you see the red swirl of Alexandra's hair come up behind a sofa's backrest, with the doberwoman bitch looking over the edge and replying, 'Korvin! Finally. Been dying for a proper bone.' The way she stresses those last words and gives you a sidelong glance is pure provocation, Alexandra wanting to rub it in that she gets what she needs from other partners beside you. Following your companion as he dashes forward to get to her, you come around to see that Alexandra is stretched out on the sofa naked, her clothes lying in an untidy heap on the floor. Her hand is between her legs, stroking her pussy.";
	say "     'Gonna be busy for a while boss,' Korvin says to you distractedly, never taking his eyes off the sexy canine spread out before him. By now, his knotted cock is fully hard, standing straight and erect, with the pointy tip aimed right at Alexandra. Meanwhile, she raises her hand from the matted fur on her crotch, raising it demonstratively to show the two of you the strings of her sticky female juices that stretch between the fingers. She gives you a teasing wave, then brings her hand to her muzzle and licks it clean, followed by sliding it back down and holding open her nether lips. 'Give it to me, big boy!' Alexandra adds, her eyes now fully focused on your attack dog.";
	say "     [bold type]Will you stay to watch them?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Oh yeah, bring on that canine action!";
	say "     ([link]N[as]n[end link]) - Nah. Find a book or something to occupy yourself while you - try - to tune out their sounds.";
	if player consents:
		LineBreak;
		say "     With more of a growl than any intelligible words, Korvin pounces on Alexandra, hastily taking a place between her legs on the sofa and guiding his cock forward. The pre-cum glistening tip thrusts into her pussy deeply and the two of them share an aroused grunt, followed by him giving her a lust-filled kiss, muzzle to muzzle and long canine tongues sliding against each other. Alexandra wraps her arms and legs around the horny dog as he makes out with her while the slender tail between her legs thumps against the sofa cushions. Then Korvin tenses his muscles a little, pulling back incrementally before humping against her crotch hard and popping the bulge of his knot into his needy bitch!";
		say "     Doing nothing - except walking a bit closer so you have a better view - you simply watch as Alexandra thrashes around a little in helpless lust, overwhelmed by the sensation of him penetrating her with the tennis-ball sized knot... and then jerking it out of her again to go for another hard thrust. With her legs wrapping around his hips even tighter and Alexandra's fingers digging into the fur on his back to hold on, Korvin revels in the power he has over the canine slut under him. While he keeps getting her hole acquainted with his knot, the muscular male leaks copious amounts of pre into her by now soaked cunt, his bushy tail wagging up a storm behind his back.";
		WaitLineBreak;
		say "     'Fucking nice bitch, thanks boss!' the German shepherd says at one point, raising his head from licking at the curve of Alexandra's neck and giving you a broad grin. 'Should have told me the first time we met that you wanna open a puppy mill with me and her! Don't think I'll ever get enough of breeding this slut!' With that said, the German shepherd gives another deep thrust into the former policewoman, drawing a breathless moan from her. 'Like that?' he asks Alexandra in a gleeful tone. Yet as she opens her muzzle to reply, the German shepherd gives her a forceful kiss instead, then pulls his cock out of her in a quick wrench that makes her thrash around on the sofa in shock.";
		say "     'Get on all fours! I wanna breed you proper!' Korvin tells the panting woman as he pushes himself up, giving her the space to move and 'helping' Alexandra along by groping her naked as she does so. Finding yourself facing the doberwoman now, you meet her eyes and can almost see the desire to tease you with her current partner's manliness flare up in them - but then something more urgent, more primal overwhelms her instead and the dobie bitch barks out a needy yip as Korvin grabs her by the hips. 'Now if this isn't a prime bitch then I'm a chihuahua!' the attack dog growls in amusement as he pulls Alexandra's tail up and aligns his shaft with her wet slit. A heartbeat later, he hammers into her from behind with a quick thrust, sinking himself fully into her till is balls rest against her crotch.";
		WaitLineBreak;
		say "     It is obvious that this is the 'natural' way for canines to fuck, as the pairing of Korvin and Alexandra takes on a new, more bestial air. Gone are the taunts and teases by Alexandra, or even the horny gratitude of your attack dog - at the moment, nothing matters for those two except his thick knotted cock moving inside her welcoming pussy. The doggy bitch howls and whines needily with each time that he humps against her ass and Korvin is reduced to possessive growls as his arms wrap around her body from behind, their hands holding Alexandra tight. Rutting the receptive female, Korvin pops his bulging knot past the opening of her pussy again and again, soon growling and grunting in unison with his chosen bitch. It doesn't take long before such no-holds-barred pounding pushes him over the edge, his whole body tensing as his cock starts throbbing with a heavy load being deposited in her pussy.";
		say "     Arms still wrapped tight around her chest from behind, Korvin keeps holding on to his freshly bred bitch while both of them catch their breaths. Slowly walking around the sofa, you check out the sweaty and panting couple, then find yourself being grinned at by your attack dog. He waves you closer and proudly proclaims, 'I knotted her good.' Pointing down at his crotch, the German shepherd pulls back until there is a low hiss from Alexandra as her pussy lips bulge outwards a little from the swollen knot inside her. 'Don't pretend you do not like it, bitch! I know sluts like you - tough and with a big mouth, but once you get your dick in your cunt...'";
		WaitLineBreak;
		say "     Shaking your head at the antics of the two of them, you stroke Korvin's head and neck, telling him he's a good dog and that he can keep fucking Alexandra as long as he stays loyal to you. Oh, and that he should really give it to her hard when he does, as Alexandra needs to be reminded who her bosses are. There is an amused snort from the kneeling woman as you say those words, but at least she refrains from contradicting you. You just know she'll fuck around again, but this way, you can pay her back a little by having Korvin take her extra hard and at the same time bind him ever tighter to you out of loyalty to his 'generous' alpha.";
		now AlexandraKorvinInteraction is 2; [repeat fuck of Alexandra and Korvin]
	else:
		LineBreak;
		say "     With more of a growl than any intelligible words, Korvin pounces on Alexandra, hastily taking a place between her legs on the sofa and guiding his cock towards her nether lips. And that is the last you see of them, as you turn away and start walking, doing your best to ignore to grunts, growls and moans coming from behind you. You might be imagining things, but it seems like Alexandra's exclamations of lust and shouts of 'Pound me Korvin!' spontaneously get louder a few moments later. It'd fit the provocative bitch to try to wind you up even as you are leaving them behind and don't want to watch them fuck. And the bad thing is... it's working!";
		say "     Walking down the long bookshelves until you reach the end of the ground floor, you can still hear them go at it clear as day - Korvin matching his partner bark for bark and basically shouting his words too. You draw a book at random from the nearest shelf, flipping it open to read and distract yourself, but it is almost impossible to concentrate on the words over the constant aroused yips and howls Alexandra lets out. FUCK - this building has far too good acoustics... must have been great for a choir in its abbey days, but... damn, you just can't get away from the bitch making use of your attack dog.";
		WaitLineBreak;
		say "     Giving up on the hopeless try with the book, you snap it shut and shove it back in its place, then slide a hand down to your crotch and start stroking yourself. In front of your mind's eye, the muscular German shepherd is humping into the bitch beneath him - your bitch, the doberwoman you've worked hard to fight and subdue! Almost on cue, a satisfied bark from Alexandra echoes through the library, prompting you to imagine yourself in his place, making use of the former cop as you rub your [if player is male]own erection[else if player is female]wet pussy[else]genderless crotch[end if] and build up your arousal in leaps and bounds. By the time you hear the two dogs howl in orgasm, you're ready to go yourself and make a bit of a mess,[if player is male] covering the books in the shelf in front of you with long streaks of white cum[else if player is female] dripping a few gushes of femcum all over the floor[else] knocking some books out of the shelf behind you as you twitch and stumble from the sensations of your own orgasm.";
	now lastdobiemess is 95; [Korvin creamed her pussy]
	now lastfuck of Alexandra is turns;
	let t be 2;
	increase t by level of Alexandra;
	if HP of Alexandra is even and a random chance of t in 5 succeeds:
		increase HP of Alexandra by 1;
		now lust of Alexandra is 1;
		now AlexandraPupDaddy	is 3; [Korvin knocked her up]

instead of navigating Grey Abbey Library while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and companion of player is not gshep and gsd_pet > 59 and gsd_pet < 100 and AlexandraKorvinInteraction > 0 and AlexandraKorvinInteraction < 100 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Korvin bangs Alexandra - AlexandraKorvinInteraction: [AlexandraKorvinInteraction][line break]";
	say "[AlexandraKorvinCuckScene3]";

to say AlexandraKorvinCuckScene3:
	say "     Ready to stop by your home base, you make your way back to the library through the empty streets. Well, empty of people at least - you pass more than a few burned-out cars, countless rags and shreds of ripped clothing strewn about and lots of other refuse. Arriving in front of the Grey Abbey Library, you look around for a moment, checking if anyone followed you. The streets are quiet as usual, but there is something going on in the library! You can hear barks and grunts from inside, prompting you to sprint up the shallow steps and wrench open the entrance doors, bursting into the open space before the front desk of the library.";
	say "     The scene you find there thankfully isn't the fight between some intruder and your guard dogs that you had half-expected - no, it's Korvin and Alexandra making all the noise, as the German shepherd attack dog has your dobie bitch bent over the desk and is pounding into her pussy from behind! For a moment, you can do nothing but stand there and watch Alexandra's boobs swing back and forth with each new hard thrust against her rump, with the usually so tough bitch yipping in need at being fucked. Then the heavy entrance door swings shut with a thump and both of the anthro canines turn their heads to glance your way.";
	WaitLineBreak;
	say "     'Yo there, boss!' Korvin calls out in a jovial tone, never stopping his thrusts, although he slows down a little. The German shepherd has a wide grin on his scarred muzzle as he greets you, not in the least concerned about the fact that he's balls deep in the former cop that you've tamed as your bitch. 'Your stuff is safe and sound, no worries - we've been keeping constant watch of the entrance. Just tiding over the boredom a bit with a little fun, you know... isn't that right, slut?' The last few words were directed at Alexandra, into whom he thrusts extra hard as she tries to reply, reducing that to just another lust-filled bark. 'Yeah, that's right! And anyways, you might get some extra guard dogs out of it too!' Korvin adds with a chuckle. Having acknowledged his master, the German shepherd focuses his attention back on his chosen bitch a moment later, getting back into fucking her with more energetic movements.";
	say "     It is obvious that this is the 'natural' way for canines to fuck, as the pairing of Korvin and Alexandra rapidly takes on a more and more bestial air. Soon, nothing matters for those two except his thick knotted cock moving inside her welcoming pussy. The doggy bitch howls and whines needily with each time that he humps against her ass and Korvin is reduced to possessive growls as his arms wrap around her body from behind, their hands holding Alexandra tight. Rutting the receptive female, Korvin pops his bulging knot past the opening of her pussy again and again, soon growling and grunting in unison with his chosen bitch. It doesn't take long before such no-holds-barred pounding pushes him over the edge, his whole body tensing as his cock starts throbbing with a heavy load being deposited in her pussy.";
	WaitLineBreak;
	say "     Arms still wrapped tight around her chest from behind, Korvin keeps holding on to his freshly bred bitch while both of them catch their breaths. Slowly walking up to the reception desk, you check out the sweaty and panting couple, then find yourself being grinned at by your attack dog. He waves you closer and proudly proclaims, 'I knotted her good.' Pointing down at his crotch, the German shepherd pulls back until there is a low hiss from Alexandra as her pussy lips bulge outwards a little from the swollen knot inside her. 'Don't pretend you do not like it, bitch! I know sluts like you - tough and with a big mouth, but once you get your dick in your cunt...'";
	say "     Shaking your head at the antics of the two of them, you stroke Korvin's head and neck, telling him he's a good dog and that he can keep fucking Alexandra as long as he stays loyal to you. Oh, and that he should really give it to her hard when he does, as Alexandra needs to be reminded who her bosses are. There is an amused snort from the bent-forward woman as you say those words, but at least she refrains from contradicting you. You just know she'll put out for him again, but this way, you can pay her back a little by having Korvin take her extra hard and at the same time bind him ever tighter to you out of loyalty to his 'generous' alpha.";
	now lastdobiemess is 95; [Korvin creamed her pussy]
	now lastfuck of Alexandra is turns;
	let t be 2;
	increase t by level of Alexandra;
	if HP of Alexandra is even and a random chance of t in 5 succeeds:
		increase HP of Alexandra by 1;
		now lust of Alexandra is 1;
		now AlexandraPupDaddy	is 3; [Korvin knocked her up]

instead of going up from Grey Abbey Library while ("Cuckold" is listed in feats of player and Alexandra is in Grey Abbey Library and (lastfuck of Alexandra - turns >= 8) and Carl is in Grey Abbey 2F and HP of Carl > 9 and HP of Carl < 40 and AlexandraCarlInteraction is 0):
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: Alexandra makes a move on Carl - AlexandraCarlInteraction: [AlexandraCarlInteraction][line break]";
	say "[AlexandraCarlOralCuckScene]";

to say AlexandraCarlOralCuckScene:
	say "     Coming up the stairs to the upper floor of the library, you spot Carl at his usual watch-post in front of the big windows overlooking the street outside - and beside him is Alexandra, leaning casually against the wall. Looks like the doberwoman is having a friendly conversation with your husky [CarlStatus] - or maybe more than a little friendly, as you notice that she has her leather jacket pushed open fairly wide, baring her breasts fully. Even though he does his best to keep scanning the street for incoming danger, the canine soldier can't help but glance over at Alexandra's chest again and again, his bushy tail wagging a bit quicker every time he does. Curious of the things they're talking about, you wander a bit closer.";
	say "     Carl is talking at the moment and says, '...I mean, having a canine squad would definitively benefit the army. I'm not saying that anyone but volunteers should go through the change, but once you get used to all this...' He waves a hand to indicate his body, glancing down at the digitigrade paws he stands on and lifting one to stretch and curl his toes. Then Carl looks back up at Alexandra - though his gaze 'snags' on the curves of her shapely boobs for a moment before he catches himself and somewhat shame-facedly looks her in the eyes. 'Erm, so... yeah. The advantages of being a dog are pretty great - the nose alone...' Carl goes on to say rather hastily and leans forward out of the open window, taking a sniff of the gentle breeze blowing past.";
	WaitLineBreak;
	say "     'It'll be priceless for scouts to be able to sniff out details about their surroundings. Like the fact that there's a wyvern somewhere a block or two up-wind. Must be a male that caught someone, with how thick the cum-smell is in the air.' Alexandra gives an interested nod as Carl explains this, although you can see that her eyes are pointed your way, having noticed you a moment before. A hint of a challenging grin crosses her muzzle, then she turns her attention fully to the husky beside her once more. The other anthro is still oblivious to your presence, thanks to the wyvern scent wafting in through the window and the sexy distraction standing right next to him.";
	say "     'So, I'm curious about you,' Alexandra tells him in a friendly tone and reaches out to stroke up Carl's arm, then squeezes the soldier's bicep admiringly. '...you must have been quite strong and handsome guy to become such a strapping husky.' Carl chuckles at the compliment, raising a hand-paw to rub the back of his neck as he replies, 'Can't say that any of the lovely ladies I've been with have ever complained. I'm hoping that won't change now either. All the best chicks dig big friendly dogs anyways.' With an amused bark, Alexandra raises her eyebrow at the other canine and comments, 'Hah! Is that how it goes? You know... you're not wrong about that.' Then the doberwoman slides her and down Carl's front and keeps going till she is cupping the growing bulge in his pants.";
	WaitLineBreak;
	say "     Your husky [CarlStatus]visibly tenses at the sudden switch from somewhat naughty banter to Alexandra groping him, his tail stopping in mid-motion and raising to attention, pointing upwards. 'Uhm,' the husky soldier says nervously, then lets out a groan of pleasure as Alexandra goes on to squeeze his dick through the fabric of his pants. 'Aren't you... uhm, you know... taken?' come the next words from Carl, to which she replies by stepping closer to him making her naked breasts brush against his arm. 'It's just a bit of fun, [if player is female]she[else]he[end if] doesn't have to know,' Alexandra tells the horny guy in a seductive tone of voice, flashing a second of a grin at you before going on to rub Carl's manhood a little more.";
	say "     Carl still hesitates, although his tail starts a slow wag once again at the sexy doberwoman's soothing words, and he doesn't actively object as she slides herself in front of him and crouches down. The sound of his zipper being pulled down a heartbeat later paints a fairly clear picture of what the dobie slut wants to do next.";
	LineBreak;
	say "     [bold type]Will you simply stand back let her give the canine soldier a blowjob?[roman type]";
	say "     ([link]Y[as]y[end link]) - Endure the humiliation of watching Alexandra go down on him, showing off as she fucks around right in front of you.";
	say "     ([link]N[as]n[end link]) - Stop the doberwoman's advances. Carl's a good guy, so it'd take little more than clearing your throat to break this up.";
	if player consents: [they fuck]
		LineBreak;
		say "     Doing nothing - except walking a bit closer so you have a better view - you simply watch as Alexandra holds up Carl's erection and laps at it, running her tongue from the knot at its base to the pointy tip. Groaning lustfully at the sensations, Carl grasps the window-frame tightly and stands where he is with closed eyes, reveling in the sexy doberwoman going down on his cock. Alexandra slurps on his canine prick with great enthusiasm and you're fairly certain that she even creates an extra bit of noise and sucking sounds just to rile you up a little more. From where you stand, you can see that the material of her jeans is soaked at the doberwoman's crotch, showing how much she enjoys being with the hunky husky - and also rubbing your nose in it.";
		say "     With the skillful blowjob Carl is getting right now, it is little wonder that he gets closer and closer to a quickly building orgasm, moaning and panting while Alexandra bobs on his cock. She also fondles the male husky's balls while she sucks, then eventually builds up to the grand finale by sliding her hand further between his legs and feeling around for his furry buns. After giving the soldier's ass a grope, Alexandra proceeds to run a finger up and down his crack, then goes on to suddenly push a finger against his pucker, sliding it in all the way before he even the hint of a chance to clench down on it. A little wiggle of her index finger is enough after that to get Carl off, pushing the magic button of his prostate while she sucks extra hard on his manhood.";
		WaitLineBreak;
		say "     With a loud aroused bark, Carl grasps the window-frame tightly as the urge to come rises from his balls and his whole body tenses, then the first splurt of cum shoots down Alexandra's throat. Grunting with each further shot, Carl gives the eager slut what she wanted, filling her stomach with his rich load. The former cop gulps down quite a bit of cum, but then eventually pulls back from him, taking the next spurt on her stretched-out tongue - and her muzzle, and her bared breasts - as Carl sways a little and his cock sprays cum all over the doberwoman. Eventually, she stands up in front of the husky soldier, licking her muzzle to catch the little splashes of cum on it, then kisses him eagerly. The worn-out soldier hugs her against his chest, panting in pleasure while Alexandra looks over his shoulder and grins at you, then even gives a provocative wink.";
		now AlexandraCarlInteraction is 1; [they fucked]
		now lastdobiemess is 91; [Carl got oral from Alexandra]
		now lastfuck of Alexandra is turns;
	else: [stop this - the player might not like Carl being used this way, even if he has allowed Alexandra to get into cuck status]
		LineBreak;
		say "     Clearing your throat loudly, you watch Carl flinch and whirl around, his canine shaft sticking out of the open front of his camo shorts, hard and erect as it swings through the air. The husky's eyes go wide as he sees you, his tail drooping instantly and tucking between the man's legs. 'I - um, we were just...' he starts to stammer, then shuts up and tries to tug his canine cock into his pants first. Having some difficulty at stuffing the long and still fairly hard shaft into his pants, especially with shaking fingers, it takes a moment before the soldier can zip back up. Now he stands before you at attention and shame-facedly at still showing a lewd bulge in his pants.";
		say "     You relieve some of the tension in the room by telling Carl that it is okay - he didn't start this, after all. With a sigh of relief, the soldier relaxes at least a little bit. Meanwhile, Alexandra stands up behind him and leans forward to push her breasts against his back, then says, 'Could have shown you an amazing time. But if you're not man enough to take what you really want, I guess I was wasting my time anyways!' With that, the doberwoman pushes past him, purposefully hitting him with her shoulder as she goes along, then striding down the steps sullenly without giving you another glance. After she is gone, Carl apologizes to you and adds, 'She's a wild one that likes to tease, eh? No worries, I'll keep my distance from Alexandra from now on. The last thing I wanna do is create any uncomfortable situations for the [if player is female]gal[else]guy[end if] who rescued me.'";
		now AlexandraCarlInteraction is 100; [stopped things cold]



Alexandra Cuckolding ends here.
