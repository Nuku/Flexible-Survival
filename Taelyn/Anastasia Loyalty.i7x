[Version 1 of Anastasia Loyalty by Luneth begins here.
[Version 1: added loyalty variable and Master/Slave route - Luneth]

[ Loyalty of Anastasia                                                     ]
[   0: No loyalty has been earned                                         ]
[   1: Recruited Anastasia                                                 ]
[   2: Gained a loyalty point                                             ]
[   3: Continuation                                                       ]
[  5+: Unchaining Event can come up                                       ]
[  10: Master/Slave content activated - 3 event choices will come next    ]
[  11: Master/Slave event 1 done                                          ]
[  12: Master/Slave event 2 done                                          ]
[  13: Master/Slave event 3 done                                          ]

[ AnastasiaMasterSlave                                                     ]
[  -4: player locked in as sub                                            ]
[  -3: player has been submissive thrice                                  ]
[  -2: player has been submissive twice                                   ]
[  -1: player has been submissive once                                    ]
[   0: Default                                                            ]
[   1: player has been dominant once                                      ]
[   2: player has been dominant twice                                     ]
[   3: player has been dominant thrice                                    ]
[   4: player locked in as master                                         ]

[ AnastasiaThongStatus                                                     ]
[   0: Default                                                            ]
[   1: Allowed him to keep his underwear                                  ]
[   2: Destroyed his thong leaving him naked                              ]

[ AnastasiaDrugStatus                                                      ]
[   0: Default                                                            ]
[   1: Anastasia is not an addict                                          ]
[   2: Anastasia is an addict                                              ]

AnastasiaMasterSlave is a number that varies.
AnastasiaThongStatus is a number that varies.

Section 1 - Anastasia Loyalty Convos

to say AnastasiaTalk20:
	say "     [AnastasiaOfferingMenu]";

to say AnastasiaOfferingMenu:
	LineBreak;
	say "What kind of item should you offer to Anastasia?";
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if demon seed is owned:
		choose a blank row in table of fucking options;
		now title entry is "Demon Seed";
		now sortorder entry is 1;
		now description entry is "Offer some demon seed to Anastasia";
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
			if player consents:
				let nam be title entry;
				now sextablerun is 1;
				if (nam is "Demon Seed"):
					say "[AnastasiaOfferingTalk1]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You decide to keep the supplies you have to yourself, at least for now.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say AnastasiaOfferingTalk1:
	say "     You pull out some of the demon seed that you had collected and hand it to Anastasia. The demon prince looks down at the container and gently swishes the liquid around. With a quick wink of his eye, he tips his head back and chugs all of it down in one go. 'Ahhh, nothing like some liquid virility with a hint of hellfire. Thanks, [italic type][master][roman type]!";
	delete demon seed;
	if Loyalty of Anastasia < 10:
		increase Loyalty of Anastasia by 1;

Section 2 - Anastasia Freedom

after going to Half-Renovated Room while (Anastasia is in Half-Renovated Room and Loyalty of Anastasia > 4 and Nala is booked and "Unchained" is not listed in Traits of Anastasia):
	if debugactive is 1:
		say "     DEBUG: Anastasia WALK-IN - HP of Anastasia: [HP of Anastasia], Loyalty of Anastasia: [Loyalty of Anastasia][line break]";
	say "     As you make your way through the library, you hear some cackling laughter coming from the direction of the half-renovated dining room. Deciding to check it out, you enter the large doors that lead into the dreary room. Once inside, you notice Anastasia relaxing on his [']throne['], though in all honesty, it's nothing more than a simple comfy chair that he treats like one. What surprises you the most, however, is that the muscular demon isn't alone. You can't tell who exactly is with him, except that the individual is small and zipping through the air quickly, curving past Anastasia in teasing approaches. Curiosity raised about what's going on, you attempt to keep yourself concealed while you listen in on their conversation, hoping to gain some insight into what is going on.";
	say "     You can of course tell which voice is Anastasia; however, the other voice is quieter and clearly very feminine. 'So, what did you do that got you all tied up? I mean, with your looks and all of the chains, you really are coming across as some super slutty demon slave fantasy come to life!' A soft growl is his only response at first, but eventually, the demon prince composes himself enough to answer. 'Why don't you come a little closer, imp, and I will show you who the true demonic slut is.' A fit of giggles erupts throughout the room. 'Yeah, I think I'll pass. I'm not really in the mood to use a living dildo at the moment.' Judging by the sounds your slave is making, you are going to go out on a limb and say that Anastasia doesn't appreciate being compared to a mindless sex toy.";
	WaitLineBreak;
	say "     Deciding that you have done enough snooping, you come out from where you were hiding and make your presence known. A lighting fast blur instantly rushes at you and wraps its small arms around one of yours. '[if player is not defaultnamed][name of player]! [end if]Were you looking for little ol['] me?' Glancing down, you are hardly surprised to see Nala hanging off of you. Without waiting for a response, the little purple imp just continues talking. 'So, is this big lug yours? Hehe, I didn't know you were into tying up helpless li'l demons! You're a kinky one, that's for sure.' Anastasia is obviously tired of listening to what the imp has to say about him and begins to violently pull at the chain holding his collar. 'Helpless?! I am a prince of hell, you worthless little cocksleeve! I hold dominion over you, and I demand that you show proper respect to me!'";
	say "     Nala looks over at Anastasia while he has his outburst, then rolls her eyes and turns her attention back to you. 'He's a noisy one, isn't he? I'm surprised that you haven't muzzled him by now. Then again, I guess that he does have a pretty mouth. Too bad all that comes out of it is that bile. What's his deal, anyways?' Glancing between the two demons, you can't help but feel a little surprised by Anastasia's response. The usually cool and in control prince apparently has no tolerance for being mocked by other hellspawn. Focusing back on Nala, you begin to explain to her about how Anastasia came into your possession. 'Wait... so Elijah was gonna kill him and then you stopped him, but the only way to do that was by enslaving a demonic prince?' The purple imp lets out a snort of laughter. 'Wow, you sure know how to live a complicated life, don't you? Aren't you worried that our little mister pure of heart might just... I don't know, come in here and decide to go all stabby-stabby when you're not around?'";
	WaitLineBreak;
	say "     You are about to defend Elijah when you hear a squeal come from Nala. 'I know exactly what to do!' The little imp ends up flying alongside a slightly pouty Anastasia. Apparently, he doesn't much care for being ignored. 'I learned this trick from this chick I met named Lilith. She was kind of a manipulative bitch, but damn did she have a great pair of tits.' For a moment, Nala's eyes glaze over, almost like she is lost in a memory. You snap your fingers in front of her face to capture her attention and ask her what she's going on about.";
	say "     Shaking her head Nala comes back to the conversation. 'Well you see, Lilith has a thing for slaves as well. I mean, she usually just takes over their mind and like completely breaks their will, but for some, she actually seems to enjoy the struggle. That's where I learned how to use these nifty li'l glyphs!' Using one of her sharp claws, the imp pricks her own finger causing a small amount of blood to well up at the tip. With a whimsical motion, Nala quickly writes a small symbol on Anastasia's collar and another on the side of his chair. After the imp finishes both of the symbols, they glow a bright-red before fading into black. You are about to ask her what was the point of all that, but before you get the chance, Nala simply unhooks the end of the chain from Anastasia's collar and lets it drop.";
	WaitLineBreak;
	say "     You're eyes widen as the demon prince rises from his chair, a dark chuckle coming from his throat. 'That was a very stupid choice you just made, little imp.' Anastasia begins to laugh and strut around the room enjoying his freedom, however Nala doesn't seem to be worried in the slightest. 'Oh yeah, I forgot to mention that the glyph I placed on his royal bitchyness locks him in this location.' This information definitely gives the demon prince pause. 'And how exactly are these symbols supposed to lock me in place?' Anastasia's question is a good one, the threat posed by the hellspawn is too important to ignore. 'Well basically, you are going to have to return to the chair to [']recharge['] every couple of hours. The twist is that you can't move the chair. So yeah, you're locked down hehe.'";
	say "     While that bit of info is interesting, it doesn't exactly make you feel any safer. Apparently, your thoughts show on your face as Nala turns to you and explains further. 'You don't have to worry about prince creampuff here. See, the fun thing about dealing with demons is that they need people to survi-' With a loud roar, Anastasia yells at the little purple imp for referring to him as a dessert. 'Hey, I just call [']em like I see [']em! Anyway as I was saying, so demons need people to survive. Like not just for kinky fun, but they also feed on actual life essence. That's why most demons don't stay in our reality for very long before returning to their own realm... well at least that's what Lilith told me anyway.'";
	WaitLineBreak;
	say "     Nala ends up flying over to you and landing on your shoulder. 'You also shouldn't have to worry about him attempting to shatter anyone's mind here either, since apparently mortals without free will don't offer up enough nutrition.' You aren't sure if that's really meant to make you feel better or not, and then without any warning, Nala jumps off of your shoulder. 'So yeah, no murder or mindbreak! Well unless I was given bad info... nah I'm sure that the stuff is solid, but anyway, I gotta run!' The little imp makes a mimicry of attempting to run in midair, and with a peal of laughter, gives you one final boop on the nose before zipping out of the room.";
	say "     Your attention is pulled away from the door Nala flew out of by the tantrum that Anastasia is having at the moment. Not sure on how exactly to deal with pissed off demonic royalty you simply watch him for a bit. The muscular hellspawn starts to stomp loudly as he walks back and forth in a line, grumbling the whole time about vengeance. Oddly enough, your name is never mentioned on the list of people that deserve punishment, however Elijah, Nala, and even Lilith are threatened for their involvement in his imprisonment. You decide that it would be best to allow the infuriated demon to calm down a bit. At least he can move around now, rather than being strapped down to that chair. Hopefully, he will attempt to focus on the positives rather than just the negatives.";
	add "Unchained" to Traits of Anastasia;
	increase Loyalty of Anastasia by 1;

Section 3 - Anastasia Master/Slave Events

after going to Grey Abbey Library while (Anastasia is booked and Loyalty of Anastasia is 10 and (the number of bunkered people + the number of booked people > 5) and "Unchained" is listed in Traits of Anastasia):
	if debugactive is 1:
		say "     DEBUG: Anastasia WALK-IN - HP OF Anastasia: [HP of Anastasia], Loyalty of Anastasia: [Loyalty of Anastasia][line break]";
	say "     As you walk into the main lobby of the library, your attention is drawn to the huge demon prince sitting on one of the torn up comfy chairs, his boisterous laughter echoing throughout the building. 'Then there was this one time that my army attacked another hell realm. Of course we won, but the best part was when it came to the spoils! My imps brought in these two captives from the enemy, a guy and a girl who apparently were the prince and princess of their realm. Well, with one look, I knew exactly what needed to be done! So I grabbed the girl and pounded her pussy right there in front of her brother, and pretty soon, the screams turned into moaning, and I shot my load into the bitch haha! Being the nice ruler that I am though, I wasn't about to let her brother feel left out, so while she was passed out, I bent him over my throne. Damn, that slut was a squealer! By the end of the day, I had both of them worshipping my cock like they were born for it.'";
	say "     Anastasia is apparently sharing his past conquests with your allies, some seem amused while others seem a bit disgusted. You are about to turn and leave when something else catches your ear. 'It's the same way with my new [italic type][master][roman type]. [SubjectProCap of player] may act like [SubjectPro of player] is in charge, but when we are alone, it's a completely different story. I mean, I can't keep the li'l subby slut off of my cock!' While Anastasia sharing his past with the others and attempting to open up about himself isn't necessarily a bad thing, talking about you and what happens between the two of you is a completely different matter.";
	LineBreak;
	say "     [bold type]What should you do about Anastasia?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Punish the demonic asshole!";
	say "     [link](2)[as]2[end link] - Give in and show him what a subby slut you can be!";
	say "     [link](3)[as]3[end link] - Just walk away, who cares what he has to say.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to punish, [link]2[end link] to submit or [link]3[end link] to leave.";
	if calcnumber is 1:
		LineBreak;
		say "     A cruel smile forms on your face as you decide on how exactly to handle the demonic prince. Walking up to the group, everyone becomes silent, well all except Anastasia, who has yet to notice you. As he continues to laugh, the others take a step back from the two of you. 'I'm telling you, I have never seen someone that actually needed to be used as much as h-' Finally realizing something is up, the demon turns his head and sees you standing there. At first, his eyes widen in shock, but he quickly backpedals in an attempt to save face. 'So you just couldn't wait anymore, huh? I'm sorta busy right now. How about I take care of your needs later, slut?' While his words are still full of arrogance, he can't quite hide the nervousness from his face.";
		say "     You lean in close to Anastasia's face and ask him to repeat what he just said. 'Y-you heard me. I said that I'm busy right now. Try again later!' He looks you directly in the eye with defiance. Without warning, you quickly reach out and take a firm grip of one of his horns and pull him out of the chair, throwing the loudmouth demon to the ground. Slowly, you take a seat in his chair and make yourself comfortable as a few snickers come from the spectators. Your gaze is drawn back to Anastasia as he begins to rise from the ground, muttering to himself, 'Fucking bitch! Treating me like I'm some sort of commoner.' You silence him quickly by telling him that you would like him to come and stand in front of you. The demon attempts to ignore your order, however the collar still around his neck has other plans, unfortunately for him. Pale, pinkish light flares up around your demon slave's neck, followed by a yell from Anastasia as his skin begins to sizzle.";
		WaitLineBreak;
		say "     You inform the captive demon prince that disobedience will be punished, without you even having to lift a finger. This fact draws a snarl from Anastasia, but you don't let that faze you, as the start of another flare of light makes him bite back what he wants to say in reply. As he forces his anger down and calms his expression, the magic of the collar fades from sight once more, leaving behind nothing more than a somewhat reddened band around his neck and the faint smell of burned flesh. Sullenly, the demon steps up to stand before you, his head bent as he says, 'Alright, [italic type][master][roman type], what do you want?' You tell him to spin in a small circle so that everyone can see what a fine specimen he is. Chuckling, the demon raises an eyebrow at you and replies, 'That all? Fine, I can do that, but I'm pretty sure that everyone already knows that I'm perfect!' As Anastasia begins to complete his slow circle, you can see the others eyes taking in every inch of the impressive male standing before all of you.";
		say "     Having had enough of the demon's flaunting, you tell him that his little show is sufficient. Anastasia turns to leave with a snicker, but before he can, you inform him that he isn't finished. With a grunt of annoyance, the demon turns around and awaits the next tedious thing that you may ask of him. In a calm tone, you tell him that you would like for him to come over and lay himself across your lap. 'What, you gonna rock me to sleep or something? Haha.' The smile soon leaves his face though once you explain that he will be laying across your lap with his ass in the air instead. 'Fine, I mean it's not like we don't all know that I have the best ass in this dump anyway. So this whole thing is just about showing off your property? Whatever, let's just get this over and be done with already.' You can't hide a smirk from your face at the thought of what you have in store for this demonic pretty boy.";
		WaitLineBreak;
		if libido pill is owned or bliss tablet is owned:
			let PillTab be "<Pill or Tablet>";
			if libido pill is owned:
				now PillTab is "pill";
			else:
				now PillTab is "tablet";
			say "     Anastasia slowly snakes his way across your lap, making sure that the others are watching his every move. You slide your hand up and down his body in a relaxed motion, treating him more like a pet rather than a person. 'So is this what you wanted, [italic type][master][roman type]? Making sure that everyone here knows who has the hottest stud around?' In a calm tone, you bring up the things that he was saying earlier, and you feel the muscles in his back tighten under your fingers when you do. 'I was just shootin['] the shit with everyone, y'know trying to have some fun and laughs, that's all.' A dark chuckle reverberates in your throat, and you ask him if that means he thought it would be ok to have fun with everyone else at your expense? The demon's whole body tenses, a tremble going through him as he realizes he's in deeper shit than he had thought. As he begins to give a response, you quickly bring your hand down over his mouth where you had a [if libido pill is owned]libido pill[else]bliss tablet[end if] hidden. Holding your fingers clamped over his nose and mouth, you command him to swallow.";
			say "     Skatnoth resists for a little while, but eventually, he gives in, either needing air or simply realizing that he doesn't have a choice in the matter. After the demon accepts the [PillTab] into his mouth, you remove your hand, and unsurprisingly, Anastasia spits it out on the floor. You ask one of the spectators to retrieve it, and once you have it back in your possession, you literally cram it back into your slave's mouth, really shoving it in there. This time, you decide on the safer bet and [italic type]order[roman type] him to swallow it. The collar begins to glow and heats up, but thankfully, it quickly goes back to its normal color, showing that he has given in. 'What the hell did you just give me?' Anastasia growls, but you simply ignore his question and wait for the [PillTab] to go into effect.";
			WaitLineBreak;
			say "     Soon, you feel Anastasia's body start to heat up on your lap, and his struggles begin to become weaker. 'I feel weird. What was that [PillTab] anyway?' You lie, telling him that it was merely something to help him relax, even though the effects can already be felt rubbing against your leg, and you ask the demon prince if he is ready for his punishment. 'My... my punishment? Why would you punish me?' Anastasia's voice has become deeper, and due to his libido rising so fast, he has also been left very confused, but no matter, this is all falling in place better than you expected. You raise your hand and bring it down fast on his bubble butt, causing it to jiggle and a moan to escape his lips. 'Why did you spank me? I'm a good boy, only bad boys get spanked!' You have to stop yourself from laughing at the way his lust-drunk mind is reacting to your actions. With a harsh grin on your face, you explain to Anastasia that he's been a naughty slave and then continue to really lay into him with your hand.";
			say "     As the bronzed skin on the demon's buttocks takes on a reddish hue from your punishment, you can feel a dampness on your leg, caused by his now fully erect cock leaking precum. Pausing for a second, you play at slapping him again, but give his sore butt a gentle fondle instead and ask if he's learned his lesson. 'Yes, [master]! It feels right if you do it...' Anastasia moans needily and grinds against your legs in obvious arousal. The temptation is too great not to gleefully bring up how much of a pervert he is, rutting against you while you spank him and with a whole bunch of people watching! Leaning in close to his ear, you whisper to him that this is what he was made for, and that the only reason he was ever brought into the world was to satisfy you and nothing else. 'Satisfy you and nothing else... Yeah, that feels right. Please punish me more, master!' Raising your hand high, you bring it down repeatedly, each smack turning his bronze ass even redder, all while moans and pleas for you to keep going spill from Anastasia's mouth.";
			WaitLineBreak;
			say "     Finally, you are ready to start the finale, and you shove one of Anastasia's legs off of your lap, leaving your slave's buttocks spread and his asshole more easily accessible. With your free hand, you hike up his thong, effectively exposing the outer ring of Anastasia's hole, while also raising his ass high into the air. The next slap you lay into him hits home right on his hole, making the demon whimper at the novel sensation. You quickly get back to a fast rhythm of smacks, causing the demon to scream in a mixture of agony and ecstasy. After a few minutes of this rough treatment, you hear what you have been waiting for. 'Please don't stop! I'll do whatever you want, just please keep going!' Gently placing your hand on his warm and reddened ass, you slowly begin to rub the sensitive flesh. 'No! Please keep going! I need it!'";
			say "     Putting your other hand on the demon's head and tousling his hair, you inform him that you're proud of him for finally accepting his punishment like a good boy. Then you gently turn his head towards the watching crowd and order him to proclaim what he really is and needs. The drugged-up male hesitates in confusion, instead just grinding against your leg a little more until you lean down to whisper the words that you want into his ear. Now, Anastasia repeats in a pathetically eager tone, 'I'm nothing more than a slutty prince, whose only worth is his boipussy and cock!' Laughing at the wide-eyed expression your little show draws from most of the watchers, you praise your subby slave and ready yourself for one final smack on his hole. As your hand slaps Anastasia's sensitive skin, his whole body goes rigid and his pucker rhythmically spasms as he sprays his load right through the fabric of his severely stretched thong, creaming the side of your leg with splatters of cum.";
			WaitLineBreak;
			say "     Gasping and moaning needily, Anastasia continues to hump against you for a long while, riding out the tsunami of lust your treatment built up in him. Eventually sinking down to hang limply over your lap, the formerly so proud demon gives you a quiet whisper of thanks. Waving to the others and telling them that the show is over for now, you wait for the crowd to disperse, then lightly tap Anastasia's ass and tell him to get up. 'Yes, [master]. I should get back to my place, shouldn't I?' he replies in a newly submissive tone that you reward with a playful grope of his balls before sending the demon on his way. Watching him stumble away, you can't help but embrace the fact that you enjoyed that immensely, and you laugh a bit at the state of his cum-soaked underwear.";
		else:
			say "     Anastasia slowly snakes his way across your lap, making sure that the others are watching his every move. You slide your hand up and down his body in a relaxed motion, treating him more like a pet rather than a person. 'So is this what you wanted, [italic type][master][roman type]? Making sure that everyone here knows who has the hottest stud around?' In a calm tone, you bring up the things that he was saying earlier, and you can feel the muscles in his back tighten when you do. 'I was just shootin['] the shit with everyone. Y'know, trying to have some fun and laughs, that's all.' A dark chuckle reverberates in your throat, and you ask him if that means he thought it would be ok to have fun with everyone else at your expense? The demon's whole body freezes up. You wait for him to open his mouth to respond, and once he does, you quickly bring your hand down on his bubble butt, causing it to jiggle and him to let out a hiss of pain.";
			say "     The whole library is deathly silent after the sound of the impact resounds throughout the building. 'What the fuck was that for?! Let me go, you asshole. I'm done with this shit!' Rather than give the snarky demon what he wants, you make sure that he is stuck in place and rain a few more smacks on his meaty rump. You explain to Anastasia that this is punishment for bad-mouthing his master, that this will not be tolerated in the future, and if he wants it to end, all he has to do is simply apologize for his behavior. 'Screw you! I don't apologize to anyone! I am a prince! If anything, you should be the one apologizing for not submitting to me!' A few more smacks rain down on his backside as you pace yourself so that your arm won't get tired. You look down over your work, and what was once unblemished bronze skin is now starting to turn a slightly rose-pink color.";
			WaitLineBreak;
			say "     Anastasia still refuses to allow his will to be broken, but that only serves to make you want to break him that much more. Glancing around, you see the faces of your allies watching with bated breath as you discipline the arrogant demon prince. Minute after minute, Anastasia holds his tongue, the only sounds he makes the occasional hissing sounds and yells. Getting slightly annoyed, you force one of legs off of you, leaving him straddling your lap rather than simply laying across it, and with your free hand, you hike up his thong, effectively exposing the outer ring of his hole while also raising his ass high into the air. With Anastasia's legs spread wide, your hand hits its mark every time you spank him, connecting with his hole rather than simply hitting one of his cheeks. You quickly begin to smack faster, causing the demon to scream out in pain.";
			say "     After a few minutes of this rough treatment, you hear what you have been waiting for. 'Please stop! I'll do whatever you want, just please stop!' Gently placing your hand on his incredibly warm ass, you slowly begin to rub the sensitive flesh. 'I'm sorry that I bad-mouthed you, and I promise I won't ever do it again!' You then inform him that you're proud of him for finally acting like a good boy, but now he needs to apologize for making you spank him for so long. 'Are you kidding me? It's not my fault tha-' Your hand comes down hard once more. 'Alright! I'm sorry that I made you spank me for so long!' You decide to put the icing on the cake and ask him what the real reason you had to do this. 'Because... because I was bad and needed to be punished. I promise that I will try to be good from now on!' After that, you let the hunk off of your lap, and he begins his walk of shame past everyone else. Watching him leave, you can't help but embrace the fact that you enjoyed that immensely.";
		increase AnastasiaMasterSlave by 1;
	else if calcnumber is 2:
		LineBreak;
		say "     A mischievous smile forms on your face as you decide on how exactly to handle the demonic prince. Walking up to the group, everyone becomes silent, well all except Anastasia, who has yet to notice you. As he continues to laugh, the others take a step back from the two of you. 'I'm telling you that I have never seen someone that actually needed to be used as much as h-' The demon finally realizes that you are standing right in front of him while he talks about you. At first, his eyes widen in shock, but he quickly backpedals in an attempt to save face. 'So you just couldn't wait anymore, huh? I'm sorta busy right now. How about I take care of your needs later, slut?' While his words are still full of arrogance, he can't quite hide the nervousness from his face.";
		say "     You take a seat on Anastasia's lap and softly nuzzle up against his jaw. While you can almost feel his whole body vibrate with anxiety, you quickly ask him in a whisper why he is so worried and how you thought that this is how he wanted you to act. 'O-of course this is how you should be acting! I was just a little shocked that you're fine with all of your little friends seeing the kinda whore that you really are!' You decide to attempt to calm the demon down after his outburst with a few soft kisses along his throat before traveling down to his chest. Sliding out of the chair and placing yourself between Anastasia's spread legs, you resume your assault on his chest. Allowing your tongue to gently scrape along the demon's nipple, you hear a sharp intake of breath from above you. 'I didn't ask for a goddamned bath, bitch. You know what you're here to do, so just fucking get on with it!'";
		WaitLineBreak;
		say "     You are quickly pushed lower, coming face to face with the prince's crotch. The skin tight black thong leaves nothing to the imagination, and you're able to make out his already hardening cock under the fabric growing by the second. Leaning forward, you push your face into his crotch, rubbing yourself against his hard prick and heavy balls. The scent of his maleness is intoxicating, and you can't help but feel your arousal growing as you take in his aroma mixed with the act of submitting to such an impressive male. Eventually, all of your attention is too much for his dick to handle, and it pops out of the top of his thong. You can make out the precum already starting to bead up at the tip of his cock just waiting to be tasted. Lifting his muscled bubble butt off of the chair for a moment, Anastasia pulls his thong down lower. 'I don't need you damaging my things while attempting to get at my dick, slut. Now get on with it. All of these nice people are waiting for a show!'";
		say "     Anastasia is right. You can feel the other's eyes watching you, seeing what will happen next. In all honesty, you can't help but enjoy the rush of having all of these people watching as you service the demonic royal. You slowly wrap your lips around the head of Anastasia's prick and suckle the head, savoring his masculine taste. 'What the hell are you waiting for, slut? This isn't a taste test!' With that, his clawed hands grab ahold of the back of your head, pushing you down further at a very fast pace as he continues to try and ram the crown of his cock down your throat without giving you a chance to adjust to his size. 'You need to relax that throat, bitch! Come on now, you know you wanna let papa's big dick in your tight li'l suckhole, don't you?' You nod your head quickly and attempt to relax, allowing him access.";
		WaitLineBreak;
		say "     The second your throat relaxes, Anastasia rams his cock in to the hilt, paying little mind to your gagging and choking sounds. 'There we go, See, isn't that so much better? I'm half tempted to just keep you there from now on, my own piece of cocksleeve furniture haha.' The demon finally leans back, getting into a more relaxed position to enjoy the blowjob no doubt. You start to pull off of his dick a bit in an attempt to make yourself more comfortable. Well that was your plan, until you start to feel a creeping around your neck. Anastasia's tail wraps itself snugly around your throat, and you feel it tightening as it begins to move you up and down. You quickly learn to take a breath when you can as the demon prince uses his tail to essentially force you to skull fuck yourself. The speed and roughness are brutal, although you shouldn't be surprised of that when dealing with hellspawn.";
		say "     Beyond the sound of your heartbeat thundering in your ears, you can also make out the sounds of Anastasia's deep grunts. 'I'm getting close, slut!' You can feel the head of his prick expanding inside of your esophagus, and you brace yourself. With a mighty roar, the demonic prince begins to shoot a huge load down your gullet. 'Don't you dare waste a single drop, you whore! If I see even one drop on the outside of your body, I will tie you up and make you this entire building's rape bait, to be used by anyone whether you want it or not!' You have no doubt that Anastasia would stay true to his word, so you quickly begin to swallow as fast as you can to keep up with the torrent that he is shooting. Finally after a few more minutes, his cum stops firing off inside of you, and he pulls his cock from your lips. 'There, now get the hell out of here till I need you again.' You get back up on shaky legs and begin your walk of shame past all of your allies as they simply watch on.";
		decrease AnastasiaMasterSlave by 1;
	else:
		LineBreak;
		say "     Rolling your eyes, you turn and start to walk away. After all, who cares what a demonic slave has to say? As you make your way out, you can still hear his laughter roaring throughout the library. While what he is doing may be slightly frustrating, you have better things to do than dealing with him and his frat boy mentality.";
	increase Loyalty of Anastasia by 1;

[after going to Half-Renovated Room while (HP of Anastasia > 1 and Loyalty of Anastasia is 10):
	if debugactive is 1:
		say "     DEBUG: Anastasia WALK-IN - HP OF Anastasia: [HP of Anastasia], Loyalty of Anastasia: [Loyalty of Anastasia][line break]";
	say "     As you walk into the somewhat renovated room, your eyes are drawn to the demonic slave reclining in his high-backed chair. Anastasia's glowing eyes follow your every move while his scaled tail whips around restlessly behind him.";

	after going to Breakroom while (HP of Anastasia > 1 and Loyalty of Anastasia is 10):
		if debugactive is 1:
			say "     DEBUG: Anastasia WALK-IN - HP OF Anastasia: [HP of Anastasia], Loyalty of Anastasia: [Loyalty of Anastasia][line break]";
	say "     ...";]

Anastasia Loyalty ends here.]
