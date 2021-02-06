Version 1 of Skarnoth Loyalty by Luneth begins here.
[Version 1: added loyalty variable and Master/Slave route - Luneth]

[ Loyalty of Skarnoth                                                     ]
[   0: No loyalty has been earned                                         ]
[   1: Recruited Skarnoth                                                 ]
[   2: Gained a loyalty point                                             ]
[   3: Continuation                                                       ]
[  5+: Unchaining Event can come up                                       ]
[  10: Master/Slave content activated - 3 event choices will come next    ]
[  11: Master/Slave event 1 done                                          ]
[  12: Master/Slave event 2 done                                          ]
[  13: Master/Slave event 3 done                                          ]

[ SkarnothMasterSlave                                                     ]
[  -4: player locked in as sub                                            ]
[  -3: player has been submissive thrice                                  ]
[  -2: player has been submissive twice                                   ]
[  -1: player has been submissive once                                    ]
[   0: Default                                                            ]
[   1: player has been dominant once                                      ]
[   2: player has been dominant twice                                     ]
[   3: player has been dominant thrice                                    ]
[   4: player locked in as master                                         ]

[ SkarnothThongStatus                                                     ]
[   0: He still has is thong                                              ]
[   1: Destroyed his thong leaving him naked                              ]

[ SkarnothDrugStatus                                                      ]
[   0: Default                                                            ]
[   1: Skarnoth has been dosed once                                       ]
[   2: Skarnoth has been dosed twice                                      ]

SkarnothMasterSlave is a number that varies.
SkarnothThongStatus is a number that varies.
SkarnothDrugStatus is a number that varies.

Book 1 - Skarnoth Loyalty Convos

to say SkarnothTalk20:
	say "     [SkarnothOfferingMenu]";

to say SkarnothOfferingMenu:
	LineBreak;
	say "What kind of item should you offer to Skarnoth?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if demon seed is owned:
		choose a blank row in table of fucking options;
		now title entry is "Demon Seed";
		now sortorder entry is 1;
		now description entry is "Offer some demon seed to Skarnoth";
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
				if (nam is "Demon Seed"):
					say "[SkarnothOfferingTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide to keep the supplies you have to yourself, at least for now.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SkarnothOfferingTalk1:
	say "     You pull out some of the demon seed that you had collected and hand it to Skarnoth. The demon prince looks down at the container and gently swishes the liquid around. With a quick wink of his eye, he tips his head back and chugs all of it down in one go. 'Ahhh, nothing like some liquid virility with a hint of hellfire. Thanks, [italic type][master][roman type]!";
	ItemLoss demon seed by 1;
	if Loyalty of Skarnoth < 10:
		increase Loyalty of Skarnoth by 1;

Book 2 - Skarnoth Freedom

after going to Half-Renovated Room while (Skarnoth is in Half-Renovated Room and Loyalty of Skarnoth > 4 and Nala is booked and "Unchained" is not listed in Traits of Skarnoth):
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP of SKARNOTH: [HP of Skarnoth], Loyalty of Skarnoth: [Loyalty of Skarnoth][line break]";
	say "     As you make your way through the library, you hear some cackling laughter coming from the direction of the half-renovated dining room. Deciding to check it out, you enter the large doors that lead into the dreary room. Once inside, you notice Skarnoth relaxing on his [']throne['], though in all honesty, it's nothing more than a simple comfy chair that he treats like one. What surprises you the most, however, is that the muscular demon isn't alone. You can't tell who exactly is with him, except that the individual is small and zipping through the air quickly, curving past Skarnoth in teasing approaches. Curiosity raised about what's going on, you attempt to keep yourself concealed while you listen in on their conversation, hoping to gain some insight into what is going on.";
	say "     You can of course tell which voice is Skarnoth; however, the other voice is quieter and clearly very feminine. 'So, what did you do that got you all tied up? I mean, with your looks and all of the chains, you really are coming across as some super slutty demon slave fantasy come to life!' A soft growl is his only response at first, but eventually, the demon prince composes himself enough to answer. 'Why don't you come a little closer, imp, and I will show you who the true demonic slut is.' A fit of giggles erupts throughout the room. 'Yeah, I think I'll pass. I'm not really in the mood to use a living dildo at the moment.' Judging by the sounds your slave is making, you are going to go out on a limb and say that Skarnoth doesn't appreciate being compared to a mindless sex toy.";
	WaitLineBreak;
	say "     Deciding that you have done enough snooping, you come out from where you were hiding and make your presence known. A lighting fast blur instantly rushes at you and wraps its small arms around one of yours. '[if Player is not defaultnamed][name of Player]! [end if]Were you looking for little ol['] me?' Glancing down, you are hardly surprised to see Nala hanging off of you. Without waiting for a response, the little purple imp just continues talking. 'So, is this big lug yours? Hehe, I didn't know you were into tying up helpless li'l demons! You're a kinky one, that's for sure.' Skarnoth is obviously tired of listening to what the imp has to say about him and begins to violently pull at the chain holding his collar. 'Helpless?! I am a prince of hell, you worthless little cocksleeve! I hold dominion over you, and I demand that you show proper respect to me!'";
	say "     Nala looks over at Skarnoth while he has his outburst, then rolls her eyes and turns her attention back to you. 'He's a noisy one, isn't he? I'm surprised that you haven't muzzled him by now. Then again, I guess that he does have a pretty mouth. Too bad all that comes out of it is that bile. What's his deal, anyways?' Glancing between the two demons, you can't help but feel a little surprised by Skarnoth's response. The usually cool and in control prince apparently has no tolerance for being mocked by other hellspawn. Focusing back on Nala, you begin to explain to her about how Skarnoth came into your possession. 'Wait... so Elijah was gonna kill him and then you stopped him, but the only way to do that was by enslaving a demonic prince?' The purple imp lets out a snort of laughter. 'Wow, you sure know how to live a complicated life, don't you? Aren't you worried that our little mister pure of heart might just... I don't know, come in here and decide to go all stabby-stabby when you're not around?'";
	WaitLineBreak;
	say "     You are about to defend Elijah when you hear a squeal come from Nala. 'I know exactly what to do!' The little imp ends up flying alongside a slightly pouty Skarnoth. Apparently, he doesn't much care for being ignored. 'I learned this trick from this chick I met named Lilith. She was kind of a manipulative bitch, but damn did she have a great pair of tits.' For a moment, Nala's eyes glaze over, almost like she is lost in a memory. You snap your fingers in front of her face to capture her attention and ask her what she's going on about.";
	say "     Shaking her head Nala comes back to the conversation. 'Well you see, Lilith has a thing for slaves as well. I mean, she usually just takes over their mind and like completely breaks their will, but for some, she actually seems to enjoy the struggle. That's where I learned how to use these nifty li'l glyphs!' Using one of her sharp claws, the imp pricks her own finger causing a small amount of blood to well up at the tip. With a whimsical motion, Nala quickly writes a small symbol on Skarnoth's collar and another on the side of his chair. After the imp finishes both of the symbols, they glow a bright-red before fading into black. You are about to ask her what was the point of all that, but before you get the chance, Nala simply unhooks the end of the chain from Skarnoth's collar and lets it drop.";
	WaitLineBreak;
	say "     You're eyes widen as the demon prince rises from his chair, a dark chuckle coming from his throat. 'That was a very stupid choice you just made, little imp.' Skarnoth begins to laugh and strut around the room enjoying his freedom, however Nala doesn't seem to be worried in the slightest. 'Oh yeah, I forgot to mention that the glyph I placed on his royal bitchiness locks him in this location.' This information definitely gives the demon prince pause. 'And how exactly are these symbols supposed to lock me in place?' Skarnoth's question is a good one, the threat posed by the hellspawn is too important to ignore. 'Well basically, you are going to have to return to the chair to [']recharge['] every couple of hours. The twist is that you can't move the chair. So yeah, you're locked down hehe.'";
	say "     While that bit of info is interesting, it doesn't exactly make you feel any safer. Apparently, your thoughts show on your face as Nala turns to you and explains further. 'You don't have to worry about prince creampuff here. See, the fun thing about dealing with demons is that they need people to survi-' With a loud roar, Skarnoth yells at the little purple imp for referring to him as a dessert. 'Hey, I just call [']em like I see [']em! Anyway as I was saying, so demons need people to survive. Like not just for kinky fun, but they also feed on actual life essence. That's why most demons don't stay in our reality for very long before returning to their own realm... well at least that's what Lilith told me anyway.'";
	WaitLineBreak;
	say "     Nala ends up flying over to you and landing on your shoulder. 'You also shouldn't have to worry about him attempting to shatter anyone's mind here either, since apparently mortals without free will don't offer up enough nutrition.' You aren't sure if that's really meant to make you feel better or not, and then without any warning, Nala jumps off of your shoulder. 'So yeah, no murder or mindbreak! Well unless I was given bad info... nah I'm sure that the stuff is solid, but anyway, I gotta run!' The little imp makes a mimicry of attempting to run in midair, and with a peal of laughter, gives you one final boop on the nose before zipping out of the room.";
	say "     Your attention is pulled away from the door Nala flew out of by the tantrum that Skarnoth is having at the moment. Not sure on how exactly to deal with pissed off demonic royalty you simply watch him for a bit. The muscular hellspawn starts to stomp loudly as he walks back and forth in a line, grumbling the whole time about vengeance. Oddly enough, your name is never mentioned on the list of people that deserve punishment, however Elijah, Nala, and even Lilith are threatened for their involvement in his imprisonment. You decide that it would be best to allow the infuriated demon to calm down a bit. At least he can move around now, rather than being strapped down to that chair. Hopefully, he will attempt to focus on the positives rather than just the negatives.";
	add "Unchained" to Traits of Skarnoth;
	if Loyalty of Skarnoth < 10:
		increase Loyalty of Skarnoth by 1;

Book 3 - Skarnoth Master/Slave Events

Section 1 - First Event

after going to Grey Abbey Library while (Skarnoth is booked and Loyalty of Skarnoth is 10 and (the number of bunkered people + the number of booked people > 5) and "Unchained" is listed in Traits of Skarnoth):
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP of SKARNOTH: [HP of Skarnoth], Loyalty of Skarnoth: [Loyalty of Skarnoth][line break]";
	say "     As you walk into the main lobby of the library, your attention is drawn to the huge demon prince sitting on one of the torn up comfy chairs, his boisterous laughter echoing throughout the building. 'Then there was this one time that my army attacked another hell realm. Of course we won, but the best part was when it came to the spoils! My imps brought in these two captives from the enemy, a guy and a girl who apparently were the prince and princess of their realm. Well, with one look, I knew exactly what needed to be done! So I grabbed the girl and pounded her pussy right there in front of her brother, and pretty soon, the screams turned into moaning, and I shot my load into the bitch haha! Being the nice ruler that I am though, I wasn't about to let her brother feel left out, so while she was passed out, I bent him over my throne. Damn, that slut was a squealer! By the end of the day, I had both of them worshiping my cock like they were born for it.'";
	say "     Skarnoth is apparently sharing his past conquests with your allies, some seem amused while others seem a bit disgusted. You are about to turn and leave when something else catches your ear. 'It's the same way with my new [italic type][master][roman type]. [SubjectProCap of Player] may act like [SubjectPro of Player] is in charge, but when we are alone, it's a completely different story. I mean, I can't keep the li'l subby slut off of my cock!' While Skarnoth sharing his past with the others and attempting to open up about himself isn't necessarily a bad thing, talking about you and what happens between the two of you is a completely different matter.";
	LineBreak;
	say "     [bold type]What should you do about Skarnoth?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is not submissive:
		choose a blank row in table of fucking options;
		now title entry is "Punish the demonic asshole";
		now sortorder entry is 1;
		now description entry is "Rough him up";
	[]
	if Player is not dominant:
		choose a blank row in table of fucking options;
		now title entry is "Give in and show him just what a subby slut you can be";
		now sortorder entry is 2;
		now description entry is "Submit to him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Just walk away, who cares what he has to say";
	now sortorder entry is 3;
	now description entry is "Leave";
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
				if (nam is "Punish the demonic asshole"):
					say "[SkarnothFirstEvent_Punish]";
				else if (nam is "Give in and show him just what a subby slut you can be"):
					say "[SkarnothFirstEvent_Submit]";
				else if (nam is "Just walk away, who cares what he has to say"):
					say "[SkarnothFirstEvent_Leave]";
				now Loyalty of Skarnoth is 11;
				wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SkarnothFirstEvent_Punish:
	LineBreak;
	say "     A cruel smile forms on your face as you decide on how exactly to handle the demonic prince. Walking up to the group, everyone becomes silent, well all except Skarnoth, who has yet to notice you. As he continues to laugh, the others take a step back from the two of you. 'I'm telling you, I have never seen someone that actually needed to be used as much as h-' Finally realizing something is up, the demon turns his head and sees you standing there. At first, his eyes widen in shock, but he quickly backpedals in an attempt to save face. 'So you just couldn't wait anymore, huh? I'm sorta busy right now. How about I take care of your needs later, slut?' While his words are still full of arrogance, he can't quite hide the nervousness from his face.";
	say "     You lean in close to Skarnoth's face and ask him to repeat what he just said. 'Y-you heard me. I said that I'm busy right now. Try again later!' He looks you directly in the eye with defiance. Without warning, you quickly reach out and take a firm grip of one of his horns and pull him out of the chair, throwing the loudmouth demon to the ground. Slowly, you take a seat in his chair and make yourself comfortable as a few snickers come from the spectators. Your gaze is drawn back to Skarnoth as he begins to rise from the ground, muttering to himself, 'Fucking bitch! Treating me like I'm some sort of commoner.' You silence him quickly by telling him that you would like him to come and stand in front of you. The demon attempts to ignore your order, however the collar still around his neck has other plans, unfortunately for him. Pale, pinkish light flares up around your demon slave's neck, followed by a yell from Skarnoth as his skin begins to sizzle.";
	WaitLineBreak;
	say "     You inform the captive demon prince that disobedience will be punished, without you even having to lift a finger. This fact draws a snarl from Skarnoth, but you don't let that faze you, as the start of another flare of light makes him bite back what he wants to say in reply. As he forces his anger down and calms his expression, the magic of the collar fades from sight once more, leaving behind nothing more than a somewhat reddened band around his neck and the faint smell of burned flesh. Sullenly, the demon steps up to stand before you, his head bent as he says, 'Alright, [italic type][master][roman type], what do you want?' You tell him to spin in a small circle so that everyone can see what a fine specimen he is. Chuckling, the demon raises an eyebrow at you and replies, 'That all? Fine, I can do that, but I'm pretty sure that everyone already knows that I'm perfect!' As Skarnoth begins to complete his slow circle, you can see the others eyes taking in every inch of the impressive male standing before all of you.";
	say "     Having had enough of the demon's flaunting, you tell him that his little show is sufficient. Skarnoth turns to leave with a snicker, but before he can, you inform him that he isn't finished. With a grunt of annoyance, the demon turns around and awaits the next tedious thing that you may ask of him. In a calm tone, you tell him that you would like for him to come over and lay himself across your lap. 'What, you gonna rock me to sleep or something? Haha.' The smile soon leaves his face though once you explain that he will be laying across your lap with his ass in the air instead. 'Fine, I mean it's not like we don't all know that I have the best ass in this dump anyway. So this whole thing is just about showing off your property? Whatever, let's just get this over and be done with already.' You can't hide a smirk from your face at the thought of what you have in store for this demonic pretty boy.";
	WaitLineBreak;
	if libido pill is owned or bliss tablet is owned:
		say "     [bold type]Do you want to dose Skarnoth to make him more compliant?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Sure, feed him some bliss.";
		say "     ([link]N[as]n[end link]) - Nah, that's going too far.";
		if Player consents:
			LineBreak;
			say "[FirstPillSkarnothScene]";
		else:
			LineBreak;
			say "[FirstNoPillSkarnothScene]";
	else:
		say "[FirstNoPillSkarnothScene]";
	increase SkarnothMasterSlave by 1;

to say SkarnothFirstEvent_Submit:
	LineBreak;
	say "     A mischievous smile forms on your face as you decide on how exactly to handle the demonic prince. Walking up to the group, everyone becomes silent, well all except Skarnoth, who has yet to notice you. As he continues to laugh, the others take a step back from the two of you. 'I'm telling you that I have never seen someone that actually needed to be used as much as h-' The demon finally realizes that you are standing right in front of him while he talks about you. At first, his eyes widen in shock, but he quickly backpedals in an attempt to save face. 'So you just couldn't wait anymore, huh? I'm sorta busy right now. How about I take care of your needs later, slut?' While his words are still full of arrogance, he can't quite hide the nervousness from his face.";
	say "     You take a seat on Skarnoth's lap and softly nuzzle up against his jaw. While you can almost feel his whole body vibrate with anxiety, you quickly ask him in a whisper why he is so worried and how you thought that this is how he wanted you to act. 'O-of course this is how you should be acting! I was just a little shocked that you're fine with all of your little friends seeing the kinda whore that you really are!' You decide to attempt to calm the demon down after his outburst with a few soft kisses along his throat before traveling down to his chest. Sliding out of the chair and placing yourself between Skarnoth's spread legs, you resume your assault on his chest. Allowing your tongue to gently scrape along the demon's nipple, you hear a sharp intake of breath from above you. 'I didn't ask for a goddamned bath, bitch. You know what you're here to do, so just fucking get on with it!'";
	WaitLineBreak;
	say "     You are quickly pushed lower, coming face to face with the prince's crotch. The skin tight black thong leaves nothing to the imagination, and you're able to make out his already hardening cock under the fabric growing by the second. Leaning forward, you push your face into his crotch, rubbing yourself against his hard prick and heavy balls. The scent of his maleness is intoxicating, and you can't help but feel your arousal growing as you take in his aroma mixed with the act of submitting to such an impressive male. Eventually, all of your attention is too much for his dick to handle, and it pops out of the top of his thong. You can make out the precum already starting to bead up at the tip of his cock just waiting to be tasted. Lifting his muscled bubble butt off of the chair for a moment, Skarnoth pulls his thong down lower. 'I don't need you damaging my things while attempting to get at my dick, slut. Now get on with it. All of these nice people are waiting for a show!'";
	say "     Skarnoth is right. You can feel the other's eyes watching you, seeing what will happen next. In all honesty, you can't help but enjoy the rush of having all of these people watching as you service the demonic royal. You slowly wrap your lips around the head of Skarnoth's prick and suckle the head, savoring his masculine taste. 'What the hell are you waiting for, slut? This isn't a taste test!' With that, his clawed hands grab ahold of the back of your head, pushing you down further at a very fast pace as he continues to try and ram the crown of his cock down your throat without giving you a chance to adjust to his size. 'You need to relax that throat, bitch! Come on now, you know you wanna let papa's big dick in your tight li'l suckhole, don't you?' You nod your head quickly and attempt to relax, allowing him access.";
	WaitLineBreak;
	say "     The second your throat relaxes, Skarnoth rams his cock in to the hilt, paying little mind to your gagging and choking sounds. 'There we go, See, isn't that so much better? I'm half tempted to just keep you there from now on, my own piece of cocksleeve furniture haha.' The demon finally leans back, getting into a more relaxed position to enjoy the blowjob no doubt. You start to pull off of his dick a bit in an attempt to make yourself more comfortable. Well that was your plan, until you start to feel a creeping around your neck. Skarnoth's tail wraps itself snugly around your throat, and you feel it tightening as it begins to move you up and down. You quickly learn to take a breath when you can as the demon prince uses his tail to essentially force you to skull fuck yourself. The speed and roughness are brutal, although you shouldn't be surprised of that when dealing with hellspawn.";
	say "     Beyond the sound of your heartbeat thundering in your ears, you can also make out the sounds of Skarnoth's deep grunts. 'I'm getting close, slut!' You can feel the head of his prick expanding inside of your esophagus, and you brace yourself. With a mighty roar, the demonic prince begins to shoot a huge load down your gullet. 'Don't you dare waste a single drop, you whore! If I see even one drop on the outside of your body, I will tie you up and make you this entire building's rape bait, to be used by anyone whether you want it or not!' You have no doubt that Skarnoth would stay true to his word, so you quickly begin to swallow as fast as you can to keep up with the torrent that he is shooting. Finally after a few more minutes, his cum stops firing off inside of you, and he pulls his cock from your lips. 'There, now get the hell out of here till I need you again.' You get back up on shaky legs and begin your walk of shame past all of your allies as they simply watch on.";
	decrease SkarnothMasterSlave by 1;

to say SkarnothFirstEvent_Leave:
	LineBreak;
	say "     Rolling your eyes, you turn and start to walk away. After all, who cares what a demonic slave has to say? As you make your way out, you can still hear his laughter roaring throughout the library. While what he is doing may be slightly frustrating, you have better things to do than dealing with him and his frat boy mentality.";

Part 1 - First Pill Scene

to say FirstPillSkarnothScene:
	let PillTab be "<Pill or Tablet>";
	if libido pill is owned:
		now PillTab is "pill";
		ItemLoss libido pill by 1;
	else:
		now PillTab is "tablet";
		ItemLoss bliss tablet by 1;
	say "     Skarnoth slowly snakes his way across your lap, making sure that the others are watching his every move. You slide your hand up and down his body in a relaxed motion, treating him more like a pet rather than a person. 'So is this what you wanted, [italic type][master][roman type]? Making sure that everyone here knows who has the hottest stud around?' In a calm tone, you bring up the things that he was saying earlier, and you feel the muscles in his back tighten under your fingers when you do. 'I was just shootin['] the shit with everyone, y'know trying to have some fun and laughs, that's all.' A dark chuckle reverberates in your throat, and you ask him if that means he thought it would be OK to have fun with everyone else at your expense? The demon's whole body tenses, a tremble going through him as he realizes he's in deeper shit than he had thought. As he begins to give a response, you quickly bring your hand down over his mouth where you had a [if libido pill is owned]libido pill[else]bliss tablet[end if] hidden. Holding your fingers clamped over his nose and mouth, you command him to swallow.";
	say "     Skarnoth resists for a little while, but eventually, he gives in, either needing air or simply realizing that he doesn't have a choice in the matter. After the demon accepts the [PillTab] into his mouth, you remove your hand, and unsurprisingly, Skarnoth spits it out on the floor. You ask one of the spectators to retrieve it, and once you have it back in your possession, you literally cram it back into your slave's mouth, really shoving it in there. This time, you decide on the safer bet and [italic type]order[roman type] him to swallow it. The collar begins to glow and heats up, but thankfully, it quickly goes back to its normal color, showing that he has given in. 'What the hell did you just give me?' Skarnoth growls, but you simply ignore his question and wait for the [PillTab] to go into effect.";
	WaitLineBreak;
	say "     Soon, you feel Skarnoth's body start to heat up on your lap, and his struggles begin to become weaker. 'I feel weird. What was that [PillTab] anyway?' You lie, telling him that it was merely something to help him relax, even though the effects can already be felt rubbing against your leg, and you ask the demon prince if he is ready for his punishment. 'My... my punishment? Why would you punish me?' Skarnoth's voice has become deeper, and due to his libido rising so fast, he has also been left very confused, but no matter, this is all falling in place better than you expected. You raise your hand and bring it down fast on his bubble butt, causing it to jiggle and a moan to escape his lips. 'Why did you spank me? I'm a good boy, only bad boys get spanked!' You have to stop yourself from laughing at the way his lust-drunk mind is reacting to your actions. With a harsh grin on your face, you explain to Skarnoth that he's been a naughty slave and then continue to really lay into him with your hand.";
	say "     As the bronzed skin on the demon's buttocks takes on a reddish hue from your punishment, you can feel a dampness on your leg, caused by his now fully erect cock leaking precum. Pausing for a second, you play at slapping him again, but give his sore butt a gentle fondle instead and ask if he's learned his lesson. 'Yes, [master]! It feels right if you do it...' Skarnoth moans with need and grinds against your legs in obvious arousal. The temptation is too great not to gleefully bring up how much of a pervert he is, rutting against you while you spank him and with a whole bunch of people watching! Leaning in close to his ear, you whisper to him that this is what he was made for, and that the only reason he was ever brought into the world was to satisfy you and nothing else. 'Satisfy you and nothing else... Yeah, that feels right. Please punish me more, master!' Raising your hand high, you bring it down repeatedly, each smack turning his bronze ass even redder, all while moans and pleas for you to keep going spill from Skarnoth's mouth.";
	WaitLineBreak;
	say "     Finally, you are ready to start the finale, and you shove one of Skarnoth's legs off of your lap, leaving your slave's buttocks spread and his asshole more easily accessible. With your free hand, you hike up his thong, effectively exposing the outer ring of Skarnoth's hole, while also raising his ass high into the air. The next slap you lay into him hits home right on his hole, making the demon whimper at the novel sensation. You quickly get back to a fast rhythm of smacks, causing the demon to scream in a mixture of agony and ecstasy. After a few minutes of this rough treatment, you hear what you have been waiting for. 'Please don't stop! I'll do whatever you want, just please keep going!' Gently placing your hand on his warm and reddened ass, you slowly begin to rub the sensitive flesh. 'No! Please keep going! I need it!'";
	say "     Putting your other hand on the demon's head and tousling his hair, you inform him that you're proud of him for finally accepting his punishment like a good boy. Then you gently turn his head towards the watching crowd and order him to proclaim what he really is and needs. The drugged-up male hesitates in confusion, instead just grinding against your leg a little more until you lean down to whisper the words that you want into his ear. Now, Skarnoth repeats in a pathetically eager tone, 'I'm nothing more than a slutty prince, whose only worth is his boipussy and cock!' Laughing at the wide-eyed expression your little show draws from most of the watchers, you praise your subby slave and ready yourself for one final smack on his hole. As your hand slaps Skarnoth's sensitive skin, his whole body goes rigid and his pucker rhythmically spasms as he sprays his load right through the fabric of his severely stretched thong, creaming the side of your leg with splatters of cum.";
	WaitLineBreak;
	say "     Gasping and moaning needily, Skarnoth continues to hump against you for a long while, riding out the tsunami of lust your treatment built up in him. Eventually sinking down to hang limply over your lap, the formerly so proud demon gives you a quiet whisper of thanks. Waving to the others and telling them that the show is over for now, you wait for the crowd to disperse, then lightly tap Skarnoth's ass and tell him to get up. 'Yes, [master]. I should get back to my place, shouldn't I?' he replies in a newly submissive tone that you reward with a playful grope of his balls before sending the demon on his way. Watching him stumble away, you can't help but embrace the fact that you enjoyed that immensely, and you laugh a bit at the state of his cum-soaked underwear.";
	increase SkarnothDrugStatus by 1;

Part 2 - First Non Pill Scene

to say FirstNoPillSkarnothScene:
	say "     Skarnoth slowly snakes his way across your lap, making sure that the others are watching his every move. You slide your hand up and down his body in a relaxed motion, treating him more like a pet rather than a person. 'So is this what you wanted, [italic type][master][roman type]? Making sure that everyone here knows who has the hottest stud around?' In a calm tone, you bring up the things that he was saying earlier, and you can feel the muscles in his back tighten when you do. 'I was just shootin['] the shit with everyone. Y'know, trying to have some fun and laughs, that's all.' A dark chuckle reverberates in your throat, and you ask him if that means he thought it would be OK to have fun with everyone else at your expense? The demon's whole body freezes up. You wait for him to open his mouth to respond, and once he does, you quickly bring your hand down on his bubble butt, causing it to jiggle and him to let out a hiss of pain.";
	say "     The whole library is deathly silent after the sound of the impact resounds throughout the building. 'What the fuck was that for?! Let me go, you asshole. I'm done with this shit!' Rather than give the snarky demon what he wants, you make sure that he is stuck in place and rain a few more smacks on his meaty rump. You explain to Skarnoth that this is punishment for bad-mouthing his master, that this will not be tolerated in the future, and if he wants it to end, all he has to do is simply apologize for his behavior. 'Screw you! I don't apologize to anyone! I am a prince! If anything, you should be the one apologizing for not submitting to me!' A few more smacks rain down on his backside as you pace yourself so that your arm won't get tired. You look down over your work, and what was once unblemished bronze skin is now starting to turn a slightly rose-pink color.";
	WaitLineBreak;
	say "     Skarnoth still refuses to allow his will to be broken, but that only serves to make you want to break him that much more. Glancing around, you see the faces of your allies watching with bated breath as you discipline the arrogant demon prince. Minute after minute, Skarnoth holds his tongue, the only sounds he makes the occasional hissing sounds and yells. Getting slightly annoyed, you force one of legs off of you, leaving him straddling your lap rather than simply laying across it, and with your free hand, you hike up his thong, effectively exposing the outer ring of his hole while also raising his ass high into the air. With Skarnoth's legs spread wide, your hand hits its mark every time you spank him, connecting with his hole rather than simply hitting one of his cheeks. You quickly begin to smack faster, causing the demon to scream out in pain.";
	say "     After a few minutes of this rough treatment, you hear what you have been waiting for. 'Please stop! I'll do whatever you want, just please stop!' Gently placing your hand on his incredibly warm ass, you slowly begin to rub the sensitive flesh. 'I'm sorry that I bad-mouthed you, and I promise I won't ever do it again!' You then inform him that you're proud of him for finally acting like a good boy, but now he needs to apologize for making you spank him for so long. 'Are you kidding me? It's not my fault tha-' Your hand comes down hard once more. 'Alright! I'm sorry that I made you spank me for so long!' You decide to put the icing on the cake and ask him what the real reason you had to do this. 'Because... because I was bad and needed to be punished. I promise that I will try to be good from now on!' After that, you let the hunk off of your lap, and he begins his walk of shame past everyone else. Watching him leave, you can't help but embrace the fact that you enjoyed that immensely.";

Section 2 - Second Event

after going to Breakroom while (Skarnoth is booked and Loyalty of Skarnoth is 11 and (the number of bunkered people + the number of booked people > 5) and "Unchained" is listed in Traits of Skarnoth):
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP of SKARNOTH: [HP of Skarnoth], Loyalty of Skarnoth: [Loyalty of Skarnoth][line break]";
	say "     Walking into the breakroom, you can see Skarnoth leaning against one of the counters, chatting with several others while holding something in his clawed hands. He apparently managed to get some sort of cake, either he acquired it himself or someone brought it to him, you aren't sure which. One thing is for sure, Skarnoth definitively isn't a fan of cutlery, as he just dug a handful out of the cake and is eating it like that. The demon prince is so wrapped up in his conversation that he doesn't seem to notice that you even entered the room. Since you simply came into the breakroom to check on things in here and have no real reason to stay you are about to turn around and leave, that is until you see Skarnoth take a huge messy bite from his treat. Truth be told it's a little gross to watch, more of the cake ends up on his face than actually going in his mouth. After he finishes, he brushes the remains from his face, causing crumbs and frosting to fall to the floor...";
	LineBreak;
	say "     [bold type]What should you do about Skarnoth?[roman type][line break]";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is not submissive:
		choose a blank row in table of fucking options;
		now title entry is "Make the demonic slob clean up after himself";
		now sortorder entry is 1;
		now description entry is "Lay down the law";
	[]
	if Player is not dominant:
		choose a blank row in table of fucking options;
		now title entry is "Get down on all fours and clean up after him";
		now sortorder entry is 2;
		now description entry is "Submit to him";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Shrug it off. Who cares if things are messy";
	now sortorder entry is 3;
	now description entry is "Leave";
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
				if (nam is "Make the demonic slob clean up after himself"):
					say "[SkarnothSecondEvent_Clean]";
				else if (nam is "Get down on all fours and clean up after him"):
					say "[SkarnothSecondEvent_Submit]";
				else if (nam is "Shrug it off. Who cares if things are messy"):
					say "[SkarnothSecondEvent_Leave]";
				now Loyalty of Skarnoth is 12;
				wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say SkarnothSecondEvent_Clean:
	LineBreak;
	say "     Watching your slave make a mess of what is currently [']your['] home pisses you off. You didn't bring him here to make friends or to do whatever he pleases within your base. Deciding that you are done with his nonsense you storm over towards him.";
	if SkarnothMasterSlave is 1:
		say "     Noticing your approach suddenly, Skarnoth whirls around with a bit of a nervous expression on his face, in the process of which he actually knocks the rest of the cake onto the ground, creating an even bigger mess. His wide eyes let you know that he remembers the punishment you dished out before, making a dark part of your mind relish the fear that this Adonis of a demon has of you, his previous conversation forgotten. Looking deep into the fiery glow of his eyes and seeing terror dance in them, you almost have to stop yourself from acting on your desire. 'What's up [master]?' Simply pointing at the ground is enough to make your royal slave sweat, 'I'm sorry [master], I'll clean it up after I'm done, OK?' Even though the demon is slightly more submissive, you can still hear a hint of arrogance in his voice and that just won't do.";
	else if SkarnothMasterSlave is -1:
		say "     Seeing you coming, Skarnoth merely rolls his eyes and goes back to his conversation, casually wiping the remains of his snack against the edge of the counter. Once you are standing right in front of him, you quickly get in his face and slap his hand away from the counter. You can't tell what shocks the demon more, the fact that you are invading his personal space, or the fact that you struck him. 'Have you lost your fucking mind!? Stupid bitch, I'm gonn-' Tired of hearing Skarnoth's voice you quickly cover his lips with your fingers, explaining calmly to him that the past is the past, and right now [']you're['] the one in charge.";
	else:
		say "     Even though he sees you approaching, Skarnoth pays very little attention to that, focusing on his conversation. Once you are standing right in front of him though, his attitude changes to a much more seductive one. '[italic type][master][roman type] you look upset, let just finish what I was saying and then I will help you relieve a little bit of that hostility.' Offering a flirty wink, he continues to talk with the others, yet you quickly cut off whatever he is saying and explain that he needs to clean up his mess [']now[']! 'I'll get to it when I get to it [italic type][master][roman type].' The demon's arrogance showing itself, you know exactly what you have to do.";
	say "     Grabbing Skarnoth by the collar around his throat, you push him to the ground. He looks up at you with those hellfire eyes, 'What are you doing!?' The only response you offer is a command for him to start cleaning up the mess he made of the breakroom, and that while he is at it he should make the floor sparkle. 'Are you forgetting that I'm a prince!? I don't [']clean['] anything, I wouldn't even know how to if I wanted.' Walking over to the nearby table, you snatch up a rag and toss it at the disgruntled demon, managing to hit him square in the face. 'Hey, watch the face! So what... I just rub this on the ground?' Rolling your eyes, you explain to Skarnoth exactly how to clean up a mess. Once he assumes a proper position on all fours, you smile a bit taking in the submissive view that he makes on his hands and knees. A few murmurs come from the onlookers as they watch the interactions between you and your demon slave.";
	WaitLineBreak;
	say "     The demon half-heartedly begins to scrub the floor, his roguish face showing exactly how much he hates what you are having him do. You walk around him in a circle as he works, taking in the full sight he makes. His crimson hair making an attractive contrast to the lightly glistening olive skin covering his body. Throughout history people have attempted to create someone just like him through sculpture, and yet here he is, your personal slave. The others that are still in the room talk quietly, some of them seem to be turned on by his new position, while others are attempting to hold back their laughter. With a smirk on your lips, you decide to ask Skarnoth how he is enjoying cleaning, creating a priceless reaction. 'How do I like it? I fucking hate it! Here I was thinking that I was your sex slave or something, not just some servant! I mean I feel ridiculous, like some sort of object...'";
	LineBreak;
	say "     [bold type]He feels like an object? Should you enforce that feeling?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, and for starters, objects don't deserve to wear clothing!";
	say "     ([link]N[as]n[end link]) - No, this is about him being put in his place, nothing more.";
	if Player consents:
		LineBreak;
		say "     Ignoring the demon's rant, you walk over to the various cabinets and begin to search through them in the hope to find something you can use. After checking a few you smile in victory. Armed with the pair of scissors you found, you make your way back to your slave. While still bitching about his treatment, you stand behind him and watch Skarnoth's large muscled ass flex while he attempts to scrub the floor. Without warning, you quickly lean forward and use the scissors to cut the fabric of his thong apart. The demon instantly falls silent as the thin material hits the ground. 'What the hell was that for!? Y'know I don't care, but now you owe me some new underwear!' Rolling your eyes at his tirade, you calmly explain to him that he was complaining about feeling like an object, so now he can truly know what it feels like to be objectified. Left in stunned silence, Skarnoth subconsciously attempts to conceal his nudity.";
		say "     You can't help but laugh at his actions, commenting on how he is normally hypersexual and asking what his problem is with being naked now. 'The difference is that [']I'm['] the one that decides when I want to be sexual, you just took my choice away you asshole!' Walking around the demon in a tight circle, you take in the complete image he makes. Head lowered and back arched, he is the very image of a good little bitch presenting for his [master]. You allow your fingertips to caress his body as you continue to inspect him, feeling the muscles in his back tighten. For the most part nothing has really changed, except now his thick cock and heavy balls are hanging loose between his thighs, and his tight little hole is on display. While all of this is fun and mildly amusing, you can't help but feel that something is missing. What could be better than a naked demon prince cleaning up after you? Perhaps one that has become overcome by his lust, but then again he's already expressed how he feels about being treated as an object...";
		now SkarnothThongStatus is 1;
		WaitLineBreak;
		if libido pill is owned or bliss tablet is owned:
			say "     [bold type]Do you want to dose Skarnoth with some of your stash?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Sure, give him something to loosen him up.";
			say "     ([link]N[as]n[end link]) - Nah, that's going too far.";
			if Player consents:
				LineBreak;
				say "[SecondPillSkarnothScene]";
			else:
				LineBreak;
				say "[SecondNoPillSkarnothScene]";
		else:
			say "[SecondNoPillSkarnothScene]";
	else:
		say "[SecondNoPillSkarnothScene]";
	wait for any key;
	move player to Grey Abbey Library;
	increase SkarnothMasterSlave by 1;

to say SkarnothSecondEvent_Submit:
	LineBreak;
	say "     You quickly grab an old rag from the nearby table and get down on all fours to start cleaning up after Skarnoth. The demon finally realizes that you're here, glancing down at you as you work. [if SkarnothMasterSlave is 1]At first his expression is one of fear, you can only assume because of how you punished him before for misbehaving, but he quickly attempts to hide that fact with a smug grin on his face. 'You are just full of surprises [italic type][master][roman type]. First you try to act like you're the badass around here, and now you're acting like a sweet little maid for me haha.' [else if SkarnothMasterSlave is -1]At first his expression is one filled with annoyance, you can only assume because of the fact that you're interrupting his conversation. 'What the hell do you think your doing [italic type][master][roman type], can't you see that I'm trying to have a conversation over here? Oh, you're cleaning up after me like a good li'l bitch? Fine carry on, but make it snappy! [else]The enslaved prince chuckles a bit at the fact that you're cleaning up after him, even though [']he['] is supposed to be the one in slavery. He then goes back to his earlier conversation, apparently viewing your current actions as beneath his acknowledgment. [end if][line break]";
	say "     As you begin to clean up the crumbs and frosting that cover the floor, you feel something creeping up your thighs. Looking down and between your legs your gaze is met with the sight of Skarnoth's thick demonic tail trailing up your legs. You try to ignore the appendage as it explores your body and continue cleaning the floor of the breakroom. Without any type of warning, you feel something smack your ass, hard. Not even sure how to process what just happened, you instead focus on the pain and while it smarts, it's also slowly starting to turn into a pleasurable burn. You dare to peek and see who could be responsible, however everyone seems to be shocked. Each of them is looking down at you with their mouths hanging open, well everyone other than the demon prince, who just continues talking as if nothing at all happened.";
	WaitLineBreak;
	say "     You know that it was him, but whatever, it's not like that smack didn't start to feel good, so why make a big deal about it. Rather than focusing on the demon's actions, you instead choose to try and finish your cleaning as fast as you can. The others by now have begun to resume their conversation with Skarnoth and you are almost finished as well, that is you were until more food falls narrowly missing your head. At this point you are getting sick and tired of your slave's attitude and are about to give him a piece of your mind, but before you can another hard smack of his serpentine tail connects with your ass again, forcing a moan to pass through your lips. 'Well whaddya know, looks like my little maid in training actually enjoys being disciplined haha. Far be it from me to deny my [italic type][master][roman type] what they desire!'";
	say "     Skarnoth's booming laughter is accompanied by your butt being flogged harder and faster. Each time it connects a high pitched squeal is forced out of your throat, you can't hide the blush that spreads across your face at the realization that you sound like some slut in a porno, just begging to be used by some cocky male. At this point any semblance of cleaning is long gone, your face laying flat on the tiled floor with your backside raised as high as it will go. 'Jeez, would you look at yourself, acting like some brain-dead slut on the floor. I mean, aren't you in here to clean?' Skarnoth spreads his arms outward towards the mess. 'Look at this place, it's filthy, so you should start getting back to cleaning, don't ya think?' You aren't sure exactly how to comprehend both his disapproval mixed with the fact that the spankings have now stopped.";
	WaitLineBreak;
	say "     Raising yourself up off the ground, you gently shake your head and pick your rag up intent on finishing the chore that you set out to do. Losing yourself in your work, you almost don't realize that the demons tail has returned. With well practiced moves, Skarnoth's prehensile appendage slowly [StripCrotch]. You feel completely exposed to everyone's gaze, you can almost feel their desire to act on what must appear to be your [']presenting[']. Even with your head still lowered toward the floor you watch them out of the corner of your eyes with some apprehension. 'What a filthy [italic type][master][roman type] I have, down on all fours naked, just waiting for someone to use them like the slut they are. That's who you are in your heart isn't it?' The thick whip-like tail comes down hard on your backside once again. 'You aren't meant to rule over another, are you bitch?'";
	say "     'How about we play a little game [italic type][master][roman type], I will give you what you desire, but we will see if you can handle it. Prove to everyone here that your will is stronger than your need to be someone's whore, you can do that can't you?' His words finally sink in, apparently what he wants is to show the others what you are truly made of. You respond that you can handle anything that he could throw your way. 'Great, then how about you finish this little job you lazy slut. Not like it's hard to do - we'll see if you can complete it without any [']accidents['], then we'll have our proof!' Ready to take up the demon prince's challenge you simply nod your head and start scrubbing the ground again. You half expect Skarnoth to once again beat your ass with his tail, however he seems to have other plans now.";
	WaitLineBreak;
	say "     At first you feel a light caress along your thighs, as well as over the curve of your buttocks. Attempting to ignore the demons ministrations you focus instead on the floor, however once the tip of Skarnoth's tail begins to tease at your opening, a gasp escapes your throat. By this point though the hellspawn prince has taken to ignoring you, as he continues his earlier conversation with the other residents. You put in a burst of speed in wiping down the floor in the hopes that it will be over soon, but as soon as that thought enters your mind the demon's tail pierces your hole. The feeling of being spread open causes your body to quiver with desire, soft moan of pleasure pass your lips without any attempt to stifle them. Catching your breath, you resume your task, intent on not losing to this demon's game.";
	say "     As you rub at the same spot endlessly in distraction, you can feel his appendage worming its way through your insides, its movements making sure to hit every pleasure spot inside of you. At the same time, the increasing girth of his tail stretches your [if Player is female]pussy wide, and him moving the appendage tugs at your sensitive nether lips [else]opening wide, and him moving the appendage tugs at its sensitive ring[end if] in ever new ways. You shake your head to clear it at least a little, then grab the rag with both hands to swipe it over the floor, trying to power through the feelings that Skarnoth is forcing on you. The hellspawn is intent on winning his little game though, and begins to thrust his tail inside you harder and faster. You struggle to keep some semblance of control, but your will is quickly crumbling under the dominant male's touch. 'You alright there, my pet? You sound more like a bitch in heat than a person haha! Well why don't we see how you handle this.' With one foot Skarnoth pushes your torso and head to the floor, while your backside remains in the air in a perfect presenting position.";
	WaitLineBreak;
	say "     Skarnoth's foot holds you in place while his tail attempts to claim ownership of your [if Player is female]tight heat[else]back door[end if]. The further it goes in, the less your mindless babbling makes sense. The occasional [']please['], [']harder['], and [']more['] are the only words that are able to be translated properly. 'Jeez, don't you have any dignity? Moaning like some common gutter whore while your [']slave['] dominates you, or maybe you want to be my li'l tail-pegging slut, would you like that?' Skarnoth's actions mixed with the vulgar words that are pouring from his wicked mouth are all to much for you. Your eyes roll into the back of your head as [if Player is puremale]your cock pulses hard, cum shooting out onto the floor you had attempted to clean[else if Player is purefemale]your pussy spasms as your thighs become soaked with femcum, the occasional squirt hitting the floor you had attempted to clean[else if Player is herm]both your cock and your pussy both start to go into overdrive spewing your fluids all over the floor you had attempted to clean[else]your whole body goes tingly, with impulses of pleasure running up and down your spine with no outlet to go to[end if].";
	say "     Pulling his appendage out, Skarnoth slowly walks in a circle around you. 'Well, wasn't that fun? I suppose this means that we all know what kinda person you really are now, don't we? Nothin more than a submissive slut with illusions of grandeur.' Everyone is looking down at you with a mix of arousal and pity. When the demon prince tells them the show is over and to leave, they hastily follow his orders, but a few still attempt to linger looking at you with desire before they go. 'Some [italic type][master][roman type] you turned out to be... after you are done cleaning up the mess you made try to stay out of my way until I want you. There is nothing more unattractive than a slut that doesn't understand its place or follow orders.' With that Skarnoth strolls out of the breakroom, leaving you to clean up both the remains of his cake, as well as your own fluids staining the floor.";
	decrease SkarnothMasterSlave by 1;

to say SkarnothSecondEvent_Leave:
	LineBreak;
	say "     With the state the world is in right now, you hardly think that a messy floor is going to make much difference. Turning your back to Skarnoth you make your way out of the breakroom. Well on a plus note, you at least learned something new about your royal demonic slave, you should never take him out to dinner that's for sure.";
	wait for any key;
	move player to Grey Abbey Library;

Part 1 - Second Pill Scene

to say SecondPillSkarnothScene:
	let PillTab be "<Pill or Tablet>";
	if libido pill is owned:
		now PillTab is "pill";
		ItemLoss libido pill by 1;
	else:
		now PillTab is "tablet";
		ItemLoss bliss tablet by 1;
	say "     Truth be told you can't really be bothered by what the demon wants, after all he [']is['] your property now. Your fingers softly rub over the [if libido pill is owned]libido pill[else]bliss tablet[end if] you have, while wondering exactly how best to administer the li'l helper. Looking over Skarnoth's form, you can't help but smile at the fact that destroying his underwear was the best decision you've made so far.";
	if SkarnothDrugStatus is 1:
		say "     Your mind wanders back for a moment to the last time you decided to dose the rebellious prince, watching the once proud slave be reduced to a submissive slut that's only concern was his sexual pleasure. Taking the [PillTab] out, you walk over to Skarnoth's face and lower yourself down on one knee showing him what you have in your hand. His eye grow wide and the rest of his body begins to shake slightly in what you can assume is a fight or flight response. 'Please [master], don't make me take one of those again! Last time I lost control of myself, and I started to get these weird shakes after it started wearing off!' A snicker escapes your throat.";
	else:
		say "     You wonder for a moment what sort of effect the drug might have on the rebellious prince, the images that flood your mind are all so exciting. Taking the [PillTab] out, you walk over to Skarnoth's face and lower yourself down on one knee showing him what you have in your hand. Confusion is clearly written all over his face, 'and what the hell is that? I hope you aren't expecting me to take it, cuz I gotta tell ya I'm not opening my mouth for some random [PillTab].' A snicker escapes your throat.";
	WaitLineBreak;
	say "     Standing up, you walk around the olive skinned Adonis until you are directly behind him. Admiring his big bubbly ass on display, an idea hits you, if he would attempt to fight you about him taking it orally, well there are [']other['] methods. Reaching out and taking each muscled cheek in your hands, you roughly begin to kneed them, only to have his thick serpentine tail try to push you away. With a firm slap that causes the demon's ass to jiggle a bit, he finally relents and makes his tail hang limply. Grabbing the obscuring appendage, you hike it up, forcing it to lay against Skarnoth's back and order him to keep it there. A whimper like sound comes from your slave, but he obediently does as commanded.";
	say "     Going back to what you were doing before being so rudely interrupted, you spread his cheeks and take a look at his tight hole, winking in a mix of nervousness and being exposed to the air. In a flash you quickly spit on his hole a few times, garnering a gasp from the slave before you. Looking down at your handiwork, his slick pucker shines, while still attempting to tighten up further. With the [PillTab] in your hand, you quickly push it inside of him, making sure that it is far enough inside so as to not pop back out. Truth be told you are curious as to what effect it will have on him since it's not being taken as intended. 'I can't believe you put that thing inside me, even after I told you I didn't want it!'";
	WaitLineBreak;
	say "     Shushing the agitated slave, you explain that everything is alright and how you know this is what he wants, even if he doesn't know it yet. Getting back on your feet, you decide to have a little bit of fun with your demon. Lifting Skarnoth's tail, you take a seat on his back and place his tail over your lap. While waiting for the [PillTab] to begin to work, you choose to start up on conversation with the others in the room. At first they aren't really sure how to respond to what is happening before them, but eventually they calm down and act as if they aren't talking to someone who is sitting on a demon after attempting to drug him. It only takes a few moments for you to notice a change, Skarnoth's breathing begins to come out in deep, panting breaths and his body is quickly heating up.";
	say "     With one of your feet, you reach under your slave and can feel his cock is now hard and throbbing, while a steady amount of precum dribbles out from the head of his sick. Deciding to just sit back and enjoy the punishment you have pushed on the prince, you remove your foot and go back to talking with the others, all the while low groaning can be heard from the demon. Eventually the moaning becomes louder and Skarnoth's entire body starts to vibrate, letting you and everyone else know that he has experienced his first non-stimulated orgasm. Expecting it to be a few more minutes before another hits, you are surprised when he immediately begins to convulse again. Over the course of only a few minutes he ends up going through at least six orgasms, all the while you berate him to continue his cleaning of the floor.";
	WaitLineBreak;
	say "     You can't help the swell of pride you feel watching Skarnoth still attempt to clean even after having so much pleasure being ripped through his body. Feeling confident that your slave has learned his lesson about manners, you hop off of his back and inspect the underneath him, only to find the floor filthy with all the cum he has been shooting onto it. Walking up behind him, you ready your hand and with a decent amount of force slap him directly on his hole. Skarnoth let out a loud howl and his tail begins to whip back and forth wildly. The load he shoots after however is far larger than his previous ones, cum ends up seeping out on the floor, what was just underneath him is now quickly spreading around his entire body.";
	say "     You lean down and gently pet the sweat slicked hair of your slave, telling him what a good boy he is for working through his punishment, the only response he offers is a slight twitch. Glancing over at the table that others have decided to be the best viewing spot, you can see their eyes are wide. Some seem slightly uncomfortable, but for the most part they are highly aroused by the sight, some attempting to hide it, while others are opening feeling themselves up as they watch. Looking at the demon it's easy to see why so many would be enjoying the sight he makes. Turning back to the table with a smile on your face, you bid the others a good day and head out. The last thing you see is Skarnoth on all fours with his tail still twitching a bit, and a vacant glazed over expression on his face as even now he continues to shoot cum out of his cock like a firehose. It's been a good day you think with a smirk.";
	increase SkarnothDrugStatus by 1;

Part 2 - Second Non Pill Scene

to say SecondNoPillSkarnothScene:
	say "     Taking a seat at the table, you invite the others to join you. While some seem a little leery of why you would want them at the table, they all eventually take their seats. You begin to recount a few of your exploits around the city to your allies, some causing laughter, while others causing lustful thoughts. [if SkarnothThongStatus is 1]The whole time your naked demon is still on all fours cleaning, his uncut cock swinging as he works. Much [else]The whole time Skarnoth is still on all fours cleaning, much [end if]to your amusement you can still hear him grumbling about having to do something so demeaning. A few people end up bringing out their own snacks to munch on while you all talk, bringing a cocky smile to your mouth. After awhile the table is littered with everyone's garbage. Frustratingly, the others appear to be attempting to clean up after themselves, you however have other plans.";
	say "     Standing up from your chair, you quickly swipe your arm over the table, causing all the garbage to fall to the floor. Everyone's eye widen in shock, but none more than Skarnoth's. [if SkarnothThongStatus is 1]'Oh come on! It's bad enough you destroyed my underwear, and that I gotta clean up after you, let alone anyone else!' [else]'Oh come on! It's bad enough I have to clean up after you, let alone anyone else!' [end if]Ignoring the demon's complaining, you explain to him that he needs to hurry up if he wants to be finished before he has to go back to his chair and recharge. Turning back to the table with a smile on your face, you bid the others a good day and then leave.";

Section 3 - Third Event
[maybe something about laziness]
[dom player - force him to get active possible workout]
[sub player - pamper him possible massage]
[neutral - just leave]
[at end of third event use points to add dom, sub and slut trait to skarnoth]

after going to Half-Renovated Room while (Skarnoth is booked and Loyalty of Skarnoth is 12 and "Unchained" is listed in Traits of Skarnoth):
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP of SKARNOTH: [HP of Skarnoth], Loyalty of Skarnoth: [Loyalty of Skarnoth][line break]";
	say "     Upon entering the half-renovated room your senses are assaulted by a powerful yet sweet aroma, looking over at Skarnoth's shoddy throne you see the demon with a cloud of smoke surrounding his body. Walking over to see exactly what the former master of hell is up to, you see him rolling up a strange plant in what appears to be some sort of parchment paper. The hellspawn finally seems to notice your presence and with a single raised eyebrow asks you, '[Master] you in the mood for a lil puff-puff pass?' You finally realize what the demon is doing, he's either making some sort of cigarette or more likely playing with some sort of drug. Opening your mouth, you ask Skarnoth what exactly is the stuff that he's wrapping in the paper, since is certainly doesn't smell like anything you have smelled before.";
	say "     This draws a snicker from the hellspawn before he finally answers you, 'This stuff is called nykrata, it's a plant from back [']home[']. Basically it's a physical manifestation of sin, but you can tell which sin that it's absorbed the most by the color of the veins across the leaf.' Leaning forward Skarnoth shows you what he means by holding the leaf out right in front of your face, it's vibrant blue veins almost glowing. 'Yeah see those glowing blue line? That lets you know that this nykrata has absorbed more of the sin of pride than anything else. Makes sense for me dont'cha think?' The boyish wink that he flashes your way has you rolling your eyes but a smile still forms on your lips. 'I mean they don't get you high like your human drugs, they more create a feeling of absolution, for example a lot of brutes will smoke the red ones since that brings their wrath to the forefront. So... you willing to try it with me?'";
	LineBreak;
	say "     [bold type]Are you willing to try the nykrata?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Why not, it might help you better understand the hellspawn.";
	say "     [link](2)[as]2[end link] - Sure, but only if he's willing to make it [']interesting['].";
	say "     [link](3)[as]3[end link] - No, frankly you think this is a waste of time.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to smoke, [link]2[end link] to shotgun or [link]3[end link] to leave.";
	if calcnumber is 1: [puff puff pass]
		LineBreak;
		say "     With a smirk you nod your head and tell him that he better start wrapping it up then. A huge smile breaks out on Skarnoth's face and he quickly goes to work folding the parchment around the plant, you can't help but ask the demon what he's using as paper. 'Haha, some things are better to not know [master], but I will say that it's also something from home.' While not knowing what the parchment is exactly worries you a bit, you decide to drop the subject since the fact that the paper is from hell, you probably really [']don't['] wanna know what it is. Skarnoth finally finishes his wrapping and with a long lick seals the paper together. 'Hey [master] wanna see a trick? Grab both my nipples and twist... hard.' You can't hide the look of confusion that overcomes your face and the hellspawn holds the joint in front of his face. Slowly you reach over and grab both of his nipples and twist as hard as you can.";
		say "     The effect is almost immediate and a plume of fire erupts from Skarnoth's throat igniting one end of the paper. With a cocky smirk on his face the demon looks at you and without warning bursts into a fit of laughter, 'I'm sorry [master] but you might have twisted just a [']bit['] too hard, haha.' Leaning forward the former master of hell swipes a finger down the bridge of your nose and shows you the blackness that comes off. 'Your face is completely covered in soot, haha.' Taking advantage of the demon's laughing fit, you quickly reach over and grab the joint out of his clawed hand which stops his giggles in their tracks. Placing it in your mouth, you explain that while your face may be covered in soot your also the one with goods now. Taking a long drag you do your best to hold it in your lungs as long as possible. 'Woah [master] take it easy, just cuz it's not a drug by human standards doesn't mean that it doesn't have a kick to it.'";
		WaitLineBreak;
		say "     Having hit your limit you slowly blow the smoke out, but unlike the grey smoke that Skarnoth was blowing out earlier, this smoke is bright-blue, almost... electric in color. 'Holy shit, I've never seen it do that. Hey let me try!' Reaching over, the hellspawn plucks the blunt out of your hand and takes a long drag, while at the same time you start to feel a bit different... more confident. Looking over at the demon you see him blow the smoke out of his nostrils, but the color is still grey like earlier. A slight pout on his face Skarnoth opens his mouth, 'That's bullshit, why do you get colored smoke!' Eventually it becomes a war over whose smoke overtake the other, although the fact that the whole room is glowing bright-blue makes you feel like your winning. At this point both of you are laughing and have glazed over eyes, you can't be sure of the effect that the drug is having on the demon, but it's making you wanna [']do['] something, anything active.";
		LineBreak;
		say "     [bold type]What should you do about Skarnoth?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if Player is not submissive:
			choose a blank row in table of fucking options;
			now title entry is "Ooo sparring sounds like fun, like Bam! and then POW! haha";
			now sortorder entry is 1;
			now description entry is "Spar with Skarnoth";
		[
		if Player is not dominant:
			choose a blank row in table of fucking options;
			now title entry is "A massage is active and it's a nice way to thank Skarny";
			now sortorder entry is 2;
			now description entry is "Submit to him";
		]
		choose a blank row in table of fucking options;
		now title entry is "It might be best to try and get some smeapy smeapy instead";
		now sortorder entry is 3;
		now description entry is "Leave";
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
					if (nam is "Ooo sparring sounds like fun, like Bam! and then POW! haha"):
						say "[SkarnothThirdEvent_Spar01]";
					else if (nam is "A massage is active and it's a nice way to thank Skarny"):
						say "[SkarnothThirdEvent_Massage]";
					else if (nam is "It might be best to try and get some smeapy smeapy instead"):
						say "[SkarnothThirdEvent_Sleep]";
					now Loyalty of Skarnoth is 13;
					wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else if calcnumber is 2: [shotgun]
		LineBreak;
		say "     With a smirk you nod your head and tell him that he better start wrapping it up then. A huge smile breaks out on Skarnoth's face and he quickly goes to work folding the parchment around the plant, you can't help but asking the demon what he's using as paper. 'Haha, some things are better to not know [master], but I will say that it's also something from home.' While not knowing what the parchment is exactly worries you a bit, you decide to have a little bit of fun with the demon and ask him if it's some sort of evil aphrodisiac that will make you hunger for demon cock. The former master of hells reaction is priceless as his eyes go wide and he almost drops the blunt he's working on, 'Uhh, of course not [master], I just thought we could have some relaxing fun... plus like you saw its blue not purple nykrata.'";
		say "     Despite his protests, you can see that the cogs of his mind are turning by the accompanying twitch of his package. Skarnoth finally finishes his wrapping and with a long lick he seals the paper together. Never one to miss an opportunity, you can't help but mention that you never realized how long and flexible his tongue is. Skarnoth doesn't really react to your comment... well other than clearing his throat and a bit of color rising to his cheeks. 'Hey [master] wanna see a trick? Grab both my nipples and twist... hard.' A little smirk starts to spread across your lips at the fact that Skarnoth seems to be warming up to your flirtations and the hellspawn holds the joint in front of his face. Slowly you reach over and grab both of his well muscled pecs, lightly massaging them before going for gold and grabbing his nipples and twisting as hard as you can.";
		WaitLineBreak;
		say "     The effect is almost immediate and a plume of fire erupts from Skarnoth's throat igniting one end of the paper. With a cocky smirk on his face the demon looks at you and without warning bursts into a fit of laughter, 'I'm sorry [master] but you might have twisted just a [']bit['] too hard, haha.' Leaning forward the former master of hell swipes a finger down the bridge of your nose and shows you the blackness that comes off. 'Your face is completely covered in soot, haha.' An idea enters your mind and you start to play the role needed for it to work. A pout forms on your lips and you do everything in your power to will your eyes to start watering. While Skarnoth's still trying to stifle his laughter, he quickly falls into your web, '[Master], don't get upset about it, I mean not many people could make soot look cute, but your still managing to pull it off!'";
		say "     Grabbing a spare rag from his chair, the demon starts to slowly and with more care than you thought he could muster clean your face. As you feel the fabric caress your face you don't really wanna think about what the materials actually purpose is, but while the hellspawn is focused on wiping you clean your hand creeps over to the clawed hand holding the joint and quickly plucks it from between his digits which stops his giggles in their tracks. Placing it in your mouth, you explain that while your face may be covered in soot your also the one with goods now. With a grin on your face you end the conversation with explaining to him the ancient human saying of 'sharing is caring'. Taking a long drag you do your best to hold it in your lungs as long as possible. 'You manipulative little... are you sure you're not part demon [master]?'";
		WaitLineBreak;
		say "     Feeling your lungs start to burn, you quickly push Skarnoth back onto his throne and straddle his waist. With a wicked look on your face you shrug your shoulders at the demons question. 'Woah [master] take it easy, just cuz it's not a drug by human standards doesn't mean that it doesn't have a kick to it.' The former master of hell eyes your lips for a second before quickly returning to your gaze, 'Sharing is caring huh? Hmm, maybe you humans aren't as dumb as we believed.' With that he inches closer and softly places his lips over your own and opens them. You slowly allow the smoke within your lungs to pass through your mouth into his, all quite innocent by most standards, that is until he doesn't pull back and instead starts to kiss you while letting to the smoke exit his nostrils. His soft lips shock you, for some reason with his personality you never really expected the thought of silky to apply to the rough demon.";
		say "     His clawed hands start to kneed your hips as his mouth attempts to dominate you, opening your eyes you are surprised to see his lava-colored eyes watching you intently. Pulling your head back you comment on while you are definitely enjoying what the two of you are doing, he did promise to expose you to new things, so maybe another drag is in order, 'Exposing you sounds fun, I could definitely get behind that.' Laughing a bit at the demons one track mind, you quickly take another hit from the blunt and hold it in your lungs while Skarnoth continues to kiss up your neck. Having hit your limit you slowly blow the smoke out, but unlike the grey smoke that Skarnoth was blowing out earlier, this smoke is bright-blue, almost... electric in color. Pulling back from your neck, Skarnoth seem shocked by the smoke, 'Holy shit, I've never seen it do that. Hey let me try!'";
		WaitLineBreak;
		say "     Reaching over the hellspawn plucks the blunt out of your hand and takes a long drag, while at the same time you start to feel a bit different... more confident. Looking over at the demon you see him blow the smoke out of his nostrils, but the color is still grey like earlier. A slight pout on his face Skarnoth open his mouth, 'That's bullshit, why do you get colored smoke!' Eventually it becomes a war over whose smoke overtake the other, although the fact that the whole room is glowing bright-blue makes you feel like your winning. At this point both of you are laughing and have glazed over eyes, all the while the two of you can't seem to keep your hands off each other, you can't be sure of the effect that the drug is having on the demon, but it's making you wanna [']do['] something, anything active.";
		LineBreak;
		say "     [bold type]What should you do about Skarnoth?[roman type][line break]";
		now sextablerun is 0;
		blank out the whole of table of fucking options;
		[]
		if Player is not submissive:
			choose a blank row in table of fucking options;
			now title entry is "Ooo sparring sounds like fun, like Bam! and then POW! haha";
			now sortorder entry is 1;
			now description entry is "Spar with Skarnoth";
		[
		if Player is not dominant:
			choose a blank row in table of fucking options;
			now title entry is "A massage is active and it's a nice way to thank Skarny";
			now sortorder entry is 2;
			now description entry is "Submit to him";
		]
		choose a blank row in table of fucking options;
		now title entry is "It might be best to try and get some smeapy smeapy instead";
		now sortorder entry is 3;
		now description entry is "Leave";
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
					if (nam is "Ooo sparring sounds like fun, like Bam! and then POW! haha"):
						say "[SkarnothThirdEvent_SexySpar01]";
					else if (nam is "A massage is active and it's a nice way to thank Skarny"):
						say "[SkarnothThirdEvent_SexyMassage]";
					else if (nam is "It might be best to try and get some smeapy smeapy instead"):
						say "[SkarnothThirdEvent_SexySleep]";
					now Loyalty of Skarnoth is 13;
					wait for any key;
			else:
				say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
		clear the screen and hyperlink list;
	else if calcnumber is 3: [out of here]
		LineBreak;
		say "     Stepping back, you meet Skarnoth's eyes and explain to the demon that it doesn't really matter to you if it's like human drugs or not, this just isn't your scene. A look of confusion crosses his face before he finally pulls it back, 'Sure thing [master], I just thought I'd offer...' Turning your back to the hellspawn you begin to make your way out of the room, but not before hearing Skarnoth mumble under his breath, 'Must be a major control freak if they are scared of losing that control for even a little bit.' His words cause your eyes to roll at hearing the tired defense of people that want you to do something that you don't want to.";
		now Loyalty of Skarnoth is 13;

Part 1 - Sparring

to say SkarnothThirdEvent_Spar01:
	say "     Walking up to one the nearby walls, you pull back a fist and slam it into the stone portion of the surface. Hearing Skarnoth coming up behind you, '[Master], what are you doing?' You're surprised by the slight crack forming where you just landed your hit, without turning to the face the demon you ask him what, if any is the main rule that beings from hell live by. 'That's easy, I mean our world isn't the most... habitable, so we follow the creed of might makes right.' Finally turning to face the hellspawn you can see the pride on his face, more than likely due to the fact that as he was the previous master of hell, he viewed himself as the most powerful of his species. Opening your mouth to speak, you follow up your question with another and ask him what that makes you as the one that bested him. The look on his face shifts from his normally cocky appearance to something more akin to shame, 'That's what makes you my [master]...'";
	say "     The heaviness of the discussion finally hits you, and you find yourself wanting to have the fun back from a few moments ago. Shaking your head to clear it a bit, you smile at the demon and tell him that yeah you're his [master] now, but that doesn't mean he can't still be a badass. The puzzled expression on Skarnoth's face could be described as cute, almost like a puppy trying to figure out how to get a treat out of a box bigger than itself. The entire room is still filled with your glowing blue smoke, the fog wrapping around the two of you like a blanket. '[Master] I don't kn-' You cut the hellspawn off by swinging your fist backwards, nowhere near his face, but close enough to get his attention. 'What the fuck?! Alright I definitely don't think the nykrata should be smoked by humans now!' He's still not getting it, with a touch of cockiness of your own, you tell to him that yes he's right you're the [master] here.";
	WaitLineBreak;
	say "     'So what, having a slave isn't good enough? Now you want a punching bag as well?' The look of hurt on his face pulls at some strings inside you, but as the [master] you have to think of the big picture. Continuing where you left off, you follow up by explaining to him that you have no need for a punching a bag, but even if he's your slave, there is no reason for him not to be the second scariest thing in this city. Adjusting to a fighting stance you tell him to bring it, 'So you want me to beat you in a fight?' With a smirk on your lips, you tell him that you'd like to see him try. Where your stance is a more opportunistic one born from your time in the city, Skarnoth's is one built for raw power. As the two of you exchange blows, you are quickly reminded of your last fight with the former master of hell and comment on his lack of evolution in combat. 'Why fix what's not broken!' The smile on his face at this small show of carnage lets you know that you made the right choice.";
	say "     As his fists start to rain down on you, they are easy to dodge by simply jumping backwards and you joke that his reach is severely lacking, this rewards you with what you were hoping for and a taloned foot cuts the air right in front of you. While the hit still doesn't connect, you can feel the demon's annoyance grows at missing his target. While he's certainly keeping you moving, he's also tiring himself out by putting so much force into each individual hit. Commenting on the fact that he's overexerting himself for reach, you ask the demon if he has any other part of his body that could match the distance with a fraction of the effort. Skarnoth stops moving for a moment and his eyes scan your little field of battle for any type of opening. Deciding that a little push might help, you ask him if his huge ass is just to let everyone around him know that he's a true bottom slut.";
	WaitLineBreak;
	say "     The fire that erupts in his eyes is exactly what you'd expected and almost on instinct the demon whirls around using his thick and massive tail to finally land his first real hit. The impact is enough to send you flying across the room and colliding with one of the walls, while you know you should writhing be in pain... for some reason you don't feel any. 'How's that for a true bottom slut!' Getting up from the floor, you joke that it could be useful having an ass that can bite back. The two of you burst into laughter at your lame joke, the effects of nykrata and the adrenaline from the fight still flooding both of your systems. Without warning the behemoth of a man rushes you and slams your body into the air, however with one well placed landing step you flip your positions. Landing on top of Skarnoth, you look down seeing that due to the force of the rush he knocked the wind out of himself and with a smirk on your lips you explain to him how helpless he looks now.";
	say "     While his pained face is looking up at you with rage you continue to mock him, about how if this were out in the city he would already be being used as a cocksleeve or dildo, something to be used and then thrown away. If looks could kill you would definitely be history at this point, the demon raises a single clawed fist to swipe at you, but you easily restrain him. You can see that Skarnoth's fury is starting to fade and a sense of acceptance for his fate is washing over him... that just won't do. Leaning forward, you whisper into the hellspawn's ear that the [']normal['] means of combat that he relies on are out and unless he has any [']tricks['] up his sleeve, he will always be the bottom bitch. Seeing the flames in his eyes light up again, you aren't surprised when he quickly pulls his hand out of your grasp, but rather than taking another swipe, he grabs one of his own nipples and twists... hard. A plume of flames erupt from within his throat and if you hadn't anticipated this very attack, well rather than just getting another face full of soot you probably would have just lost your head.";
	WaitLineBreak;
	say "     The look of arrogance on his face is short lived as you begin to laugh, 'Hey what's so funny?! I could have just destroyed you!' With a wink you explain to him that he's right, funny how evolution can make all the difference. 'Wait... you mean you weren't just making fun of me? Goddammit!' The look of complete defeat on his features doesn't really fit with what you planned for this little sparring match. 'So I guess I was meant to be a slave huh? Weak, pathetic... a joke.' Wanting to shut down this trail of thought right away, you tell him that yeah you would have won, but by learning new ways to fight he was able to give you a run for your money and those are skills he will be able to use in the future to defend himself. Proof that sometimes it's best to think outside the box after all. 'Money? Wait we were betting on that match? Uhhh, you know I don't have money right?' Rolling your eyes, you explain it's just a figure of speech.";
	say "     Over the next hour the sparring continues with you mentioning pointers on how Skarnoth can become a more effective fighter. Surprising the demon takes the rest of your comments to heart, even going so far as attempting to throw you off balance with his own fighting creations. Eventually Skarnoth drops his fighting stance for a moment and looks you dead in the eyes, '[Master], I will become stronger... and when I do, I will beat you and earn my freedom.' The words aren't a threat, they are simply fact as far as the hellspawn is concerned. Your own reply is in the same tone and you tell him if he's able to beat you one day he will have earned his freedom, but you don't plan on making it easy. Without skipping a beat, the two of you get back into your fighting stances to resume your sparring.";
	WaitLineBreak;
	say "     [ThirdEventFinale]";

to say SkarnothThirdEvent_Massage:
	LineBreak;
	say "     WIP";

to say SkarnothThirdEvent_Sleep:
	LineBreak;
	say "     Clasping Skarnoth on the shoulder, you inform him that you're gonna head to bed. 'Haha, [master] you're a lightweight.' Your about tell him off when everything starts to go black. You fade in and out of conscience, while awake you realize that your being carried in someone's arms. Feeling yourself being set down somewhere soft but cold, you try to hold onto the warmth that was all around you before. '[Master] I'm putting you in your bed, but ya gotta let me go, haha.' All you're able to mumble before you are lost completely in dreamland is a simple 'Warm sssmeapy...' The smile on your face showing that even if you crashed a bit early, you still had a fun night.";
	move player to Maintenance Storeroom;

Part 2 - Sexy Sparring

to say SkarnothThirdEvent_SexySpar01:
	say "     Walking up to one the nearby walls, you pull back a fist and slam it into the stone portion of the surface. Hearing Skarnoth coming up behind you, '[Master], what are you doing?' You're surprised by a slight crack forming where you just landed your hit, without turning to the face the demon you ask him what, if any is the main rule that beings from hell live by. 'That's easy, I mean our world isn't the most... habitable, so we follow the creed of might makes right.' Finally turning to face the hellspawn you can see the pride on his face, more than likely due to the fact that as he was the previous master of hell, he viewed himself as the most powerful of his species. Opening your mouth to speak, you follow up your question with another and ask him what that makes you as the one that bested him. The look on his face shifts from his normally cocky appearance to something more akin to shame, 'That's what makes you my [master]...'";
	say "     The heaviness of the discussion finally hits you, and you find yourself wanting to fun back from a few moments ago. Shaking your head to clear it a bit, you smile at the demon and tell him that yeah you're his [master] now, but that doesn't mean he can't still be a sexy muscled badass. The puzzled expression on Skarnoth's face could be described as cute, almost like a puppy trying to figure out how to get a treat out of a box bigger than itself. The entire room is still filled with your glowing blue smoke, the fog wrapping around the two of you like a blanket. '[Master] I don't kn-' You cut the hellspawn off by swinging your fist backwards, nowhere near his face, but close enough to get his attention. 'What the fuck?! Alright I definitely don't think the nykrata should be smoked by humans now! I mean don't get me wrong the making out was nice, but not if it's also gonna make ya go all psycho the next moment!' He's still not getting it, with a touch of cockiness of your own, you tell to him that yes he's right you're the [master] here.";
	WaitLineBreak;
	say "     'So what, having a stud as a slave that could take care of [']all['] your needs isn't good enough? Now you want a punching bag as well?' The look of hurt on his face pulls at some strings inside you, but as the [master] you have to think of the big picture. Continuing where you left off, you follow up by explaining to him that you have no need for a punching a bag, but even if he's your slave, there is no reason for him not to be the second scariest thing in this city. Adjusting to a fighting stance you tell him to bring it, 'So you want me to beat you in a fight?' With a smirk on your lips, you tell him that you'd like to see him try. 'Why not make a wager? Whoever wins gets to do whatever they want to the other?' A smile on your lips and a nod of your head is your only response. Where your stance is a more opportunistic one born from your time in the city, Skarnoth's is one built for raw power. As the two of you exchange blows, you are quickly reminded of your last fight with the former master of hell and comment on his lack of evolution in combat. 'Why fix what's not broken!' The smile on his face at this small show of carnage lets you know that you made the right choice.";
	say "     As his fists start to rain down on you, they are easy to dodge by simply jumping backwards and you joke that his reach is severely lacking, this rewards you with what you were hoping for and a taloned foot cuts the air right in front of you. 'Don't you worry about me, I can reach all the best places when the need arises!' While the hit still doesn't connect, you can feel the demon's annoyance grow at missing his target. While he's certainly keeping you moving, he's also tiring himself out by putting so much force into each individual hit. Commenting on the fact that he's overexerting himself for reach, you ask the demon if he has any other part of his body that could match the distance with a fraction of the effort. Skarnoth stops moving for a moment and his hand quickly goes down to squeeze his cock, 'Oh I got something that would be good match for ya [master].' A wink in your direction has you laughing and rolling your eyes. Deciding that a little push might help, you ask him if his huge ass is just to let everyone around him know that he's a true bottom slut.";
	WaitLineBreak;
	say "     His grin spreads even wider, 'Actually, I never really got into the idea of viewing my ass as a sexy part of my body, but I see the way you look at it and to be honest, I like the hunger in your eyes.' With that he turns around quickly and spreads his cheeks before letting them go and dual slapping his buttocks causing them rhythmically jiggle. Rolling your eyes at his antics, you comment on the fact that you've seen better. The fire that erupts in his eyes is exactly what you'd expected and almost on instinct the demon whirls around using his thick and massive tail to finally land his first real hit. The impact is enough to send you flying across the room and colliding with one of the walls, while you know you should be writhing in pain... for some reason you don't feel any. 'How's that for some big booty power!' Getting up from the floor, you joke that it could be useful having an ass that can bite back. 'Don't worry [master], if your good I'll always let you have a taste.' The two of you burst into laughter at your lame jokes, the effects of nykrata and the adrenaline from the fight still flooding both of your systems.";
	say "     Without warning the behemoth of a man rushes you and slams your body into the air, however with one well placed landing step you flip your positions. Landing on top of Skarnoth, you look down seeing that due to the force of the rush he knocked the wind out of himself and with a smirk on your lips you explain to him how helpless he looks now. While his pained face is looking up at you with rage you continue to mock him, about how if this were out in the city he would already be being used as a cocksleeve or dildo, something to be used and then thrown away. If looks could kill you would definitely be history at this point, the demon raises a single clawed fist to swipe at you, but you easily restrain him. You can see that Skarnoth's fury is starting to fade and a sense of acceptance for his fate is washing over him... that just won't do.";
	WaitLineBreak;
	say "[SparringThirdNoPillSkarnothScene]";

to say SkarnothThirdEvent_SexyMassage:
	LineBreak;
	say "     WIP";

to say SkarnothThirdEvent_SexySleep:
	LineBreak;
	say "     Clasping Skarnoth on the shoulder, you inform him that you're gonna head to bed. 'Haha, [master] you're a lightweight.' Your about tell him to eat you when everything starts to go black. You fade in and out of conscience, while awake you realize that your being carried in someone's arms, very strong arms. Feeling yourself being set down somewhere soft but cold, you try to hold onto the warmth that was all around you before. '[Master] I'm putting you in your bed, but ya gotta let me go, haha.' All you're able to mumble before you are lost completely in dreamland is a simple 'Warm sexy sssmeapy...' The smile on your face showing that even if you crashed a bit early, you still had a fun night.";
	move player to Maintenance Storeroom;

[Part 3 - Sparring Third Pill Scene

to say SparringThirdPillSkarnothScene:
	say "     ";]

Part 4 - Sparring Third Non Pill Scene

to say SparringThirdNoPillSkarnothScene:
	say "     Leaning forward, you whisper into the hellspawn's ear that the [']normal['] means of combat that he relies on are out and unless he has any [']tricks['] up his sleeve, he will always be your bottom bitch. Seeing the flames in his eyes light up again, you aren't surprised when he quickly pulls his hand out of your grasp, but rather than taking another swipe, he grabs one of his own nipples and twists... hard. A plume of flames erupt from within his throat and if you hadn't anticipated this very attack, well rather than just getting another face full of soot you probably would have just lost your head. The look of arrogance on his face is short lived as you begin to laugh, 'Hey what's so funny?! I could have just destroyed you!' With a wink you explain to him that he's right, funny how evolution can make all the difference.";
	say "     'Wait... you mean you weren't just making fun of me? Goddammit!' The look of complete defeat on his features doesn't really fit with what you planned for this little sparring match. 'So I guess I was meant to be a slave huh? Weak, pathetic... a sex toy to be used as you see fit.' Wanting to shut down this trail of thought right away, you tell him that yeah you would have won, but by learning new ways to fight he was able to give you a run for your money and those are skills he will be able to use in the future to defend himself. Proof that sometimes it's best to think outside the box after all. 'Money? Wait we were betting on that match? Uhhh, you know I don't have money right? I do however have a form of... natural currency.' Rolling your eyes, at his obvious offer, you explain it's just a figure of speech.";
	WaitLineBreak;
	say "     Over the next hour the sparring continues with you mentioning pointers on how Skarnoth can become a more effective fighter. Surprising the demon takes the rest of your comments to heart, even going so far as attempting to throw you off balance with his own fighting creations. Eventually Skarnoth's fighting end up becoming something more akin to a violent seduction, complete with groping and lewd innuendos. The demon finally drops his fighting stance for a moment and looks you dead in the eyes, '[Master], I will become stronger... and when I do, I will beat you and earn my freedom. Once I do, I hope your ready to become my number one concubine.' The words aren't a threat, they are simply fact as far as the hellspawn is concerned. Your own reply is in the same tone and you tell him if he's able to beat you one day he will have earned his freedom as well as other perks, but you don't plan on making it easy. Without skipping a beat, the two of you get back into your fighting stances to resume your sparring.";
	say "     [ThirdEventFinale]";

[Part 5 - Massage

Part 6 - Sexy Massage

Part 7 - Massage Third Pill Scene

to say MassageThirdPillSkarnothScene:
	say "     ";

Part 8 - Massage Third Non Pill Scene

to say MassageThirdNoPillSkarnothScene:]

Part 9 - Finale

to say ThirdEventFinale:
	say "     Time begins to pass by and the two of you find yourselves just laying back and relaxing, the last remains of the nykrata being passed between you both. The conversation is light for most part, both of you simply basking in the vibrant-blue glow of the smoke. 'So... you still wanna know what that paper was that I used for our little party?' In all honesty the strange parchment had kinda slipped your mind, but you inform him that if he wants to tell you that you'll listen. 'It was my breeding papers.' A silence hangs in the air between you both, in your mind though you try to figure out what he could mean by [']breeding papers[']. Finally you break the silence and ask him if they were supposed to be about him knocking someone up, or if it something different. The demon lets out a raged laugh but there is no mirth in the sound, only a strange type of... hollowness.";
	WaitLineBreak;
	say "     'Nah, they were about my birth, ya'know how worthy I was and all that shit. I guess by human standards they would be called [']pedigree papers['], basically saying how I was better and more deserving than all my siblings...' You never really thought of Skarnoth having brothers or sisters and ask him why he never mentioned it before. 'There isn't really a point in talking about the dead now is there.' Everything goes quite for a bit, you aren't really sure what to say, part of you wants to know what happened, but another part of you doesn't really wanna know. 'My mother and father... or well I guess my older brother and sister would be better term to use, they would go over the potentials and decide which ones were worthy.' Without thinking you ask him what were they supposed to be worthy of, ruling? 'If they were worthy of life. See, all demons are born in different ways. Some are born from tainted souls and others like my bloodline are born from the very essence of hell itself in these little pod like sacks.'";
	say "     Looking over at Skarnoth, you can see the cracks starting to show through his cocky mask. Wanting to see a smile return to his face if only for a moment, you comment on how you bet he was adorable when he was little. 'Haha, I wouldn't know, I mean they didn't think so. As soon as I was born I was placed inside a cloister of torment, only the strongest have the right to live ya'know? And that I did, I lived through everything they threw at me. Always coming out stronger, more resilient... more sadistic, just like they wanted.' Getting up, you aren't sure if it's the right choice or not, but you take a seat right next to the demon, showing that at this very moment he wasn't alone. 'Then when I was about, I don't know ten or so, they allowed another to be born. He wasn't placed in the cloister like me, not gonna lie, I despised him for that. I wanted him to hurt like I had, I wanted him to I don't know, be able to understand what I had survived.'";
	WaitLineBreak;
	say "     Placing a hand on one Skarnoth's, you tell him that he was still only a kid at the time. 'That's a nice sentiment, but I wasn't a kid, I was a monster. I stalked him in the palace one night and waited till he was all alone, then I made my move. I attacked him and beat him repeatedly, the whole time he cried and begged me to stop, jeez he was always such a crybaby... but I didn't. At least until something that he said finally filtered through my mind, he called me his brother and said that he loved me. A feeling overtook me that I wasn't used to, I mean demons aren't supposed feel things like love right?' While not wanting to interrupt what Skarnoth is telling you, you can't help but mutter that anything can feel love. The demon still looks a bit broken, but nods his head in agreement. 'Everything changed for me that day, as I looked down him, he was bleeding and bruised, but rather than looking at me with hatred there was something else there. I decided then and there that he was something precious... something I had to protect.'";
	say "     Skarnoth goes silent for a bit and you allow him to take his time in telling you want he needs to. 'I couldn't let anyone know how I felt besides him, caring about something was just another weakness and would exploited by our caretakers. But I used to secretly bring him little presents, I quickly learned that bringing him trophies from my hunts was not the way to go though. You should have seen the look on his face when he saw me show up in his room in the middle of the night with a kill, covered in blood and yeah lets just say that was the first time I actually understood the term [']projectile['] vomit, haha!' Talking about his brother, a calm seems to fall over Skarnoth and a real smile finally forms on his lips. 'Eventually, I figured out he liked soft things. I would bring small beasts to play with and... all the different colored nykrata I could find, he loved to weave them into little wreaths. I can't even imagine the look on my face when he placed one on my head and dubbed me [']Prince Skarnoth['].'";
	WaitLineBreak;
	say "     Your mind goes to the nykrata you smoked with Skarnoth earlier and you can't help but wonder if it was actually something he had on his person to bring back for his brother. 'A few days after that, I had to leave the palace. A war had broken out on the outskirts, an uprising and it was decided that I was needed on the frontlines. Nothing seemed different or out of place, but after I had been on the battlefield for a few weeks, my spymaster approached me and informed me of some... problems back at the palace. She was a bitch, but damn if she wasn't good at her job, haha. Most would say that I had a moment of weakness, but I didn't care I rushed back home. See the fact is my brother was far weaker than me physically... but he was able to manipulate energy like no other, unfortunately he was also an incredibly beautiful creature.' You don't really like where this going, but you decide that if the truth is going to presented the least you can do is keep listening. 'My spymaster informed of a ritual that was in place, it would allow our... caretakers to absorb his energy.";
	say "     This would make them young and powerful again, and it would shatter his mind in the process, leaving them with a compliant toy. As I broke through the palace doors I could the ritual had already begun, my brother was crying begging them to stop, but they were just laughing at his pain and I snapped. I don't really remember what happened after that, I just know that I killed them both and I saved my little brother, and to be honest that was enough for me. That's also how I became the master of hell, by taking their lives, I rose up. The funny thing is, even though I was the badass that had come to his rescue, the first thing he did was run up and start to check me for wounds. When he realized that I was fine, he just wrapped his arms around me and started sobbing about how we were finally free.' The story leaves an odd feeling in the pit of your stomach that only gets worse when your eyes land on the collar around his throat, the same one that makes you his [master]. 'Hey, demon remember? I will live thousands of years after you croak, so this is only temporary, haha.";
	WaitLineBreak;
	say "     Besides you beat me and because that, when I do claim my freedom back I fully intend on taking you back with me as my own personal slave.' The wink he sends your way is playful rather than potentially terrifying like his words. You give the demon a light punch in the shoulder and thank him for telling you his story, 'I felt it was time, besides you kinda walked in on me destroying the last remnants of pain that I had in past, so yeah, haha' Finally at the doorway, you stop and turn around. You aren't sure if it's the right thing to ask or not, but you decide to go for broke and ask Skarnoth what his brother's name is. The demon stops cleaning up his area and you in the eyes with a playful smile spreading across his lips, 'His name is Aernarus and because you seem so curious, yeah I think he'd like ya' With a smile all your own, you make your way back out into the city, wondering if one day you might meet this Aernarus.";

[Section 4 - Final Event
[Conclusion for the players choices]
[dom Skarnoth - strip show scene]
[sub Skarnoth - confession of darkest fantasies]
[slut Skarnoth - livestock scene]

Part 1 - Dom Skarnoth

after going to Half-Renovated Room while (Skarnoth is booked and SkarnothMasterSlave < -1 and "Unchained" is listed in Traits of Skarnoth):
	say "     Walking into the half-renovated room, you can instantly feel something different in the air, something that makes the hair on the back of your neck stand on end. Looking over towards where Skarnoth's chair in located and find the former master of hell sitting there[if SkarnothThongStatus is 1] naked as sin [else] naked as sin with his black thong wrapped in one hand[end if], his hard cock throbbing intensely. Raising your eyes to meet his gaze, you are surprised to the normally dark-red eyes have changed to a brighter shade of red, the new color mixed with his natural skin tone creating an illusion of blood across a sunset sky. A smile spreads across the demon's lips, showcasing just a hint of his fangs and slowly he raises his hand and with a singe finger beckons you closer.";
	LineBreak;
	say "     [bold type]Should you approach Skarnoth in his current state?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Yes, you can't help but feel a compulsion to follow his request.";
	say "     ([link]N[as]n[end link]) - No, this is all wrong, you need to get out of here.";
	if Player consents:
		say "     Once you take that first shaky step, you begin to feel more confident in your choice and your steps become steadier. Stopping just in front of the horned demon you begin to feel a bit uneasy, he hasn't said anything and is just simply watching you at this point. It seems that this was just another one of Skarnoth's mind games and you turn to leave, 'Take another step and it will be your last.' Turning your head back to look at the hellspawn, you are surprised to see him with that same calm yet amused look on his face. Opening your mouth to comment on his threat, you are quickly silenced by one of his clawed digits as it presses firmly against your lips. 'There's really no need for you to talk is there [master]? Besides, I think that it's high time you listened to someone else... someone that's clearly your superior, don't you agree? Now... strip.'";
		say "     You are caught off guard by both what Skarnoth just said to you and the fact that he attempted to give [']you['] an order. A mischievous thought enters your mind and you take a step backwards, your eyes never leaving the demons. With a wicked smile of your own, you prepare to put on a show to have the hellspawn remember who exactly is in charge here.";
		WaitLineBreak;
		if player is male: [flat pecs]
			say "     Slowly, you allow your hands to caress over your pecs and begin to slide down your abs. As your palms rise up your chest again the hem of your top raises with it, exposing only the smallest hint of flesh underneath. Skarnoth's expression shows interest, however his posture shows a certain level of boredom, 'Well [master], that's a very... cute little dance you're doing there, but perhaps I should just go out and find someone else that has the necessary [']skills['] to entertain me.' Skarnoth's words instantly get under your skin and you redouble your efforts, although you can't help the feeling in the back of your mind that something here is off. Grabbing the hem of your top, you quickly pull the garment over your head, the slight chill in the air causing your nipples to harden.";
			say "     With a smile on your lips you toss the fabric straight at the demon, but right before it's about to smack him in the face he sends it flying in another direction with a single finger, his only comment on your actions is a single raised eyebrow.";
		else:
			say "     "; [breasts]
		if player is male: [dick and balls]
		else: [pussy]
			say "     ";
		say "     The demon's relaxed posture soon shifts as he leans forward and sensually wraps his hands firmly around your waist, pulling you closer and without exerting any effort you're swiftly yet gently pulled onto Skarnoth's lap. Your surprise must be evident by the deep chuckle that reverberates through the hellspawn's chest, 'You look a little shocked by my actions, but is it so strange for a slave to want to be closer to their master? You would never deny me that would you?' You aren't able to poke any holes in his logic and slowly begin to nod your head in agreement, but you're stopped by a hand wrapping around the side of your throat with lightning speed, 'You have a beautiful throat my pet, although... perhaps its fragility is what gives it its allure.' Out of the corner of your eye you can see the demon lean forward and then feel the wet tip of his tongue slowly rising along your artery feeling like a trail of liquid fire.";
		WaitLineBreak;
		say "     You can't help the shudder that runs through your body at the former master of hell's touch.";
	else:
		say "     Turning on your heel, you quickly make your way out of the room as fast as you can. Once you're back in the main part of the library you rest your back against a nearby wall and will your thumping heart to calm down, however at that same moment you hear an inhuman roar echo from the direction of the half-renovated room. Looking back at the doorway, you know that you made the right decision.";

Part 2 - Sub Skarnoth

Part 3 - Slut Skarnoth

[after going to Half-Renovated Room while (HP of Skarnoth > 1 and Loyalty of Skarnoth is 10):
	if debugactive is 1:
		say "     DEBUG: SKARNOTH WALK-IN - HP of SKARNOTH: [HP of Skarnoth], Loyalty of Skarnoth: [Loyalty of Skarnoth][line break]";
	say "     As you walk into the somewhat renovated room, your eyes are drawn to the demonic slave reclining in his high-backed chair. Skarnoth's glowing eyes follow your every move while his scaled tail whips around restlessly behind him.";]]

Skarnoth Loyalty ends here.
