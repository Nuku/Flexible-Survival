Version 1 of Chase by Luneth begins here.
Original content by Sarokcat.

[ HP of Chase - content progression                              ]
[   0: not found at the zoo yet                                  ]
[   1: Chase has taken you to the tiger den                      ]
[   2: regular Chase has talked with the player                  ]
[   3: M/M route (dominant Chase transformation complete)        ]
[   4: M/M route (player has talked with dominant Chase)         ]
[   5: M/M route (mpreg Chase, sub)                              ]
[   6: M/M route (player has talked to mpreg Chase, sub)         ]
[  99: chose to side with the tigertaur instead of Chase         ]
[ 100: chose to not intervene in TigerVSTaur                     ]

[ hunger of Chase - relationship type                            ]
[   0: no long-term relationship type decided yet                ]
[   1: monogamous mate with dom-Chase                            ]
[   2: open-relationship mate with dom-Chase                     ]

[ libido of Chase - M/F content progression                      ]
[   0: no sex talk yet                                           ]
[   1: Chase has had sex with a female player                    ]
[ ...: repetitions count up                                      ]

[ lust of Chase - default M/M content progression                ]
[   0: Chase has no intrest in player                            ]
[   1: Chase knows player has MPreg feat and is interested       ]
[   2: player has MPreg feat and has been fucked                 ]
[   3: player has opted to be Chase's boyfriend (reg-Chase route)]
[   4: player has opted to be Chase's mate (dom-Chase route)     ]

[ ChaseSexCounter - regular chase sex counter                    ]
[   0: player has not had sex with regular Chase                 ]
[   1: player has had sex with regular Chase at least once       ]
[   2: player has had sex with regular Chase at least 5 times    ]
[   3: player can now talk to chase about tigertaur battle       ]

[ thirst of Chase - orc pill M/M content progression             ]
[   0: Chase has no intrest in player/player lacks MPreg feat    ]
[   1: player has brought up MPreg pill (Chase refused)          ]
[   2: player has brought up MPreg pill (Chase accepted)         ]
[   3: pregnant Chase                                            ]
[   4: player has opted to be Chase's mate (sub-Chase route)     ]
[   5: player is Chase's mate while he's pregnant                ]

[ ChaseRelationshipSettings                                      ]
[   0: not discussed yet                                         ]
[   1: marking +, pet play 0                                     ]
[   2: marking 0, pet play +                                     ]
[   3: marking -, pet play 0                                     ]
[   4: marking 0, pet play -                                     ]
[   5: marking +, pet play -                                     ]
[   6: marking -, pet play +                                     ]
[   7: marking +, pet play +                                     ]
[   8: marking -, pet play -                                     ]

ChaseSexCounter is a number that varies.
ChaseRelationshipSettings is a number that varies.

Section 1 - NPC

Chase is a man.
The description of Chase is "[ChaseDesc]".
The conversation of Chase is { "<This is nothing but a placeholder!>" }.
Chase is in Tiger den.
The scent of Chase is "[ChaseScent]";

to say ChaseScent:
	if HP of Chase < 3: [standard]
		say "      The male tiger has a powerful scent, much stronger than the other tigers inside the den. The aroma is almost enough to make you want to dip your head and avoid eye contact. It must be a reflection on his place within the streak. [if cunts of player > 0 or lust of Chase > 0] Everytime he glances your way you can also pick up a scent that has an almost spicy scent to it that speaks of his desire for you[end if].".
	else if HP of Chase is 3 or HP of Chase is 4: [dominant Chase]
		say "      Chase has a very powerful scent, much stronger than he he did previously. The aroma is more than enough to make you dip your head and bare your throat avoiding eye contact, the heady scent of his pheromones almost overwhelm the scent of the other tigers completely. This is hardly surprising seeing as he has now become the king of streak. [if cunts of player > 0 or lust of Chase > 0] As you approach he tilts his head up scenting the air. The tiger immediately turns towards you with a smug grin on his face, giving you a wink as he idly rubs his cock with one paw.[end if].";
	else if HP of Chase is 5 or HP of Chase is 6: [submissive Chase]
		say "      ...";

to say ChaseDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Chase: [HP of Chase], Hunger: [hunger of Chase], LIBIDO: [libido of Chase], LUST: [lust of Chase], STAMINA: [ChaseSexCounter], THIRST: [thirst of Chase] <- DEBUG[line break]";
	if HP of Chase < 3: [regular Chase]
		say "     The tall striped tiger-morph you helped out earlier is hanging around near the side of the den, watching over several of the other tiger-like people here as they go about their business. He's pretty fit looking with a swimmers build and seems well at ease with his new form. Chase's electric blue eyes sweep the room making sure that everyone under his care is safe and accounted for. Staring at him you also notice his stripes seem to differ from the other tigers. For the most part they all have matching markings, whereas Chase has prominent black stripes coming over his shoulders to almost meet at the center of his chest. Every so often he rubs the leather choker bearing a yin yang brand around his neck, that almost looks like a cute collar... but you doubt anyone would ever mention that to him. All in all, he seems strangely alluring, with a strong, masculine presence which you can't help but find attractive.";
		say "     As you continue to stare at the friendly beastman he notices your gaze, giving you a cocky smirk. Acting as if you aren't watching he strikes a pose showing off compact muscles, making sure to put all of his assets on display. Forcing your eyes to be transfixed on those biceps and pecs, Chase flexes them for your perusal. Running a paw down the white fur of his washboard abs the tigers hand finally reaches his sheath and balls, to a casual observer it would appear that he's only adjusting himself but you know better. Casually rolling each ball around with his paw the great cat allows his cock to begin to harden only slightly. Turning his back to you showing off his sculpted ass, flexing it as he bends over to pick something up that your pretty sure isnt even there. Standing erect again he glances over his shoulder with wink, that same cocky smirk on his face. Heading over to a wall Chase leans up against it acting as if he hadn't just put on an enticing show for you. You can't help but giggle a little bit at the tiger-morphs antics. You have heard of guys peacocking, but this is the first time you have seen a cat do anything pertaining to something a bird does.";
	else if HP of Chase is 3 or HP of Chase is 4: [Chase became a dominant king]
		say "     Chase has come a long way from when you first met him, apparently his strain of the infection was also tied into him finding a worthy mate. For starters, his body has outgrown the typical swimmer's build, making him much burlier, both in height and width. The once electric blue eyes have now darkened to an almost cobalt blue color, with a thin layer of lime green around the edges. The stripes wrapped around his body have also morphed into a more tribal-pattern appearance, becoming much sharper edged, with jagged lines that criss-cross each other and end in razor-sharp looking points. The most pronounced of those are the stripes that meet in the center of his chest, wrapping around each other so tightly they almost have the appearance of a crest or mantle, adding to his new more regal look.";
		say "     Now that his throat has become so much thicker, he can no longer wear his usual yin yang choker the way he used to. Instead, the proud tiger has it wrapped around his right bicep, with the leather strap pulled tight against his fur. Chase no longer has the look of being just another tiger in the den, instead now appearing more like a king among his people. As you stare at him for this long, he notices your attention from across the room and looks right back with a smug look on his handsome face. Then he crooks his finger at you, beckoning you to come closer.";
	else if HP of Chase is 5 or HP of Chase is 6: [Chase became a subby tiger for the player]
		say "     ...";

Section 2 - Talking with Chase

instead of conversing the Chase:
	if HP of Chase > 1: [not rescued yet]
		say "     ERROR: Chase shouldn't be where a player can see him yet! Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [HP of Chase]";
	else if HP of Chase < 1: [initial talk with regular Chase]
		say "     Chase waves at you as you approach, 'Hey welcome to our little hideout[if player is not defaultnamed] [name of player][end if], we call it the Tigers den,' he says with a soft chuckle, 'Not a bad little place here either. Not sure who found it to begin with, or if they are even still around or ended up changed by one of the tigertaurs.' Chase lets out a soft sigh at that. 'The damn Tigertaurs are catching more and more of us each time we go out to forage or try to find people to help. We actually have a good stockpile of supplies here,' he says with a gesture to one of the locked doors. 'But as you can see, we have a decent amount of people here too, and no idea how long we need to wait for rescue, if it's even coming.' Chase shrugs slightly before proceeding to show you around the rather large solid basement, several of the tiger people stopping to watch as the two of you pass by.";
		say "     Noting your interest in all the various different tiger-like people, Chase stops for a minute to explain. 'When I first ended up down here, not long after this place was started, there were many different types of minorly infected here, and we even had a number of people who hadn't been infected yet at all. Still,' the tiger says with a shrug, 'the longer we all stayed down here together, the more tiger-like everyone else seemed to become, until at this point I'm not sure if there are any non-tigers left down here. Most people actually seem to have adapted to the changes without any real regrets though. I mean heck,' Chase says with an amused grin on his tiger-like muzzle, 'what's NOT to like about being a tiger? I mean not only are we amazingly strong and fast hunters, but you seem to come through the change with your mind intact unlike a lot of the other infected. Most of all though,' Chase says as he strokes a hand down his tiger-furred side in amusement, 'tigers are so just damn sexy, with the stripes and all, don't you agree?' Chase says as he poses his long, lean body for your examination. Taking your silence as a sign of agreement, the tiger man grins as he finishes up the tour and goes back to watching the rest of the den members go about their business.";
		now HP of Chase is 2;
	else if HP of Chase 2: [repeat talk with regular Chase]
		say "[RegularChaseTalkMenu]";
	else if HP of Chase is 3: [Chase got transformed into his dom shape, not talked to new Chase yet]
		say "     As you approach Chase for the first time since he went through the change, you can't help but still be in awe of his size. The tiger-king is sitting on a great chair made up from pushing some large rocks together, debating with some of the other tigers that apparently are part of his inner circle. Glancing up from where he is sitting upon his [italic type]throne[roman type] Chase beckons you closer. Once you are directly in front of him, the huge feline doesn't even give you a chance to speak instead grabbing you and sliding you into a straddling position on his lap. He licks you across your throat with his coarse tongue, 'Ah[if player is not defaultnamed] [name of player][end if] my mate, i'm glad that you came back to me.' Turning to his left the king of den nods to the surrounding tigers dismissing them, while at the same time wrapping those huge arms tightly around your waist.";
		say "     Chase leans forward resting his forehead against yours closing his primal cobalt eyes. 'Things have changed so much since I got back, to be honest I figured what we accomplished would make things better for everyone but some stuff would stay the same. Man was I wrong...' You look deeply at his face, seeing the scrunched up lines on his forehead. Placing your hands on the lines, you work to smooth them out causing Chase to open his eyes. It would be so easy to lose yourself in them, while they exude power and dominance you are also able to feel warmth radiating from within. Without even really thinking about it you place a gentle kiss on his lips, bringing a smile to the tigers face as the two of you just enjoy the closeness and warmth of being together.";
		WaitLineBreak;
		say "     Pulling away from your mouth, a deep chuckle erupts from within his throat. 'I don't know how you do it, but you always seem to know exactly what I need to relax.' You feel the tigers paws drift lower sliding from your waist to land on your ass. Furry hands begin to massage each check with purpose before stopping himself. 'We need to discuss what's happened before we get distracted. As I was saying before I was so pleasantly interrupted,' The feline gives you a wink while having a playful smirk on his face. 'I want to talk to you about the changes that have been going on with me since you agreed to be my mate... My thoughts have been going into overdrive, don't worry not in a feral way. At least I don't think so, but it's like my instincts are going to war with my mind.'";
		say "     You urge the tiger-morph to continue, explaining to your mate that no matter what he is going through you will do your best to support him. A huge smile breaks out on Chase's face. 'I know you will, but I still want to explain everything I can. I don't want to keep anything from you, or make it so you have to deal with any big surprises. Tell ya what, how about I let you come to me when you are ready to discuss this stuff. Afterall you are my mate, my partner, I want you to have a voice in everything we share.' With that he gives you one last smoldering kiss before pulling away, his face showing it's taking everything out of him to let go of you. Getting off the felines lap you begin to walk away allowing him to continue his earlier conversation with the other tigers, only to receive a light smack on your ass as you go followed by another baritone chuckle.";
		now HP of Chase is 4; [initial talk with dom Chase done]
	else if HP of Chase is 4: [dom Chase repeats]
		say "[DomChaseTalkMenu]";
	else if HP of Chase is 5: [sub Chase intro]
		say "     <Introduction to sub Chase>";
		now HP of Chase is 6;
	else if HP of Chase is 6: [sub Chase repeat]
		say "[SubChaseTalkMenu]";
	else if HP of Chase > 6: [as of yet undefined states]
		say "     ERROR: Chase is in an undefined state. Please report to Wahn on the FS forum and quote this tracking number for easier bugfixing: [HP of Chase]";

to say RegularChaseTalkMenu:
	say "     What do you want to talk to Chase about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat a bit";
	now sortorder entry is 1;
	now description entry is "Just talk with the tiger";
	[]
	if ChaseSexCounter is 3:
		choose a blank row in table of fucking options;
		now title entry is "Attack plan";
		now sortorder entry is 2;
		now description entry is "Make final battle preparations and intercept the tigertaurs";
	[]
	if companion of player is royal tiger and 1 > 2: [disabled for now]
		choose a blank row in table of fucking options;
		now title entry is "Chat with Ryousei and Chase";
		now sortorder entry is 3;
		now description entry is "Bla bla";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
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
				if (nam is "Chat a bit"):
					say "[RegularChaseTalk1]";
				if (nam is "Attack plan"):
					say "[TigertaurQuestBattle]";
				if (nam is "Chat with Ryousei and Chase"):
					say "[RegularChaseRyoTalk]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro tiger, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say RegularChaseTalk1: [just casual conversation]
	say "     [one of]'Hey good to see you came by again[if player is not defaultnamed] [name of player][end if].'[or]'Hey I'm glad your back, I was starting to get worried about you out there.'[or]'I don't know why we seem to still be pretty much our normal selves, and the tigertaurs aren't.'[or]'I'm glad you came along when you did. I may love being a tigerman, but I don't think I would enjoy being a tigertaur nearly as much.'[or]'After all this is over, what do you think will happen to those of us who can still think clearly?'[or]'I wonder if they will put us infected people in some kind of large infected zoo when they finally retake the city, spending all your time sleeping and eating and fucking for an audience might not be pretty fun, but I wonder if they will let us have internet connections...'[or]'I swear the zoo is a mess now, but it's still one of the safer places to forage it seems, there is some REALLY crazy stuff in other parts of the city that tries to grab ya.'[or]'Did you see those small packs of rabbits roaming around? God they always make my mouth water...'[or]'You should try sticking around down here with us until help arrives, sure you would probably end up a tiger like the rest of us, but that's kinda a good thing to my mind.'[or]'I always loved tigers before all this, now I find I REALLY love tigers, if you know what I mean.'[or]'While the tigertaurs can convert anyone it seems, us tigers seem especially vulnerable to them.'[or]'I used to be called Alex before all this, everyone just calls me Chase now though,' he says with a shrug. 'It seems more appropriate anyways.'[at random]";
	[
	let randomnumber be a random number from 1 to 3;
	if randomnumber is:
		-- 1:
			say "     <scene for random number 1>";
		-- 2:
			say "     <scene for random number 2>";
		-- 3:
			say "     <scene for random number 3>";
	]

to say DominantChaseTalkMenu:
	say "     What do you want to talk to Chase about?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Chat a bit";
	now sortorder entry is 1;
	now description entry is "Just talk with the tiger";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Discuss what type of relationship you both have";
	now sortorder entry is 2;
	now description entry is "Discuss the rules and title of your relationship with Chase";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Discuss ways he can mark you as his";
	now sortorder entry is 3;
	now description entry is "Discuss whether or not your open to his new desire to mark you so everyone can scent who you belong too";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Discuss his wanting to excert further control of you";
	now sortorder entry is 4;
	now description entry is "Discuss his desire to treat you like a pet on occasion";
	[]
	if companion of player is royal tiger:
		choose a blank row in table of fucking options;
		now title entry is "Chat with Ryousei and Chase";
		now sortorder entry is 5;
		now description entry is "Bla bla";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
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
				if (nam is "Chat a bit"):
					say "[DominantChaseTalk1]";
				if (nam is "Chat with Ryousei and Chase"):
					say "[DominantChaseRyoTalk]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the anthro tiger, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say DomChaseRelationshipTalk:
	say "     As you explain to Chase your ready to have that talk about your relationship, the smile he once had falters a bit. 'Ah yes, well, about that.' The confident new kings face has changed to one of unease. 'I asked you to be my mate, and I meant it. The truth is you're the only one I truly want to have by my side… that's what my head and my heart are saying anyway. However my instincts have also changed, or maybe grown is a better term. I look out among my people and I can't help but look at them with desire.' At this point the tiger almost looks ashamed of himself, not sure what to think of this revelation you place your hand on his and nod for him to continue.";
	say "     'The truth is I can't help but feel like I should be grabbing one of them to satisfy my needs when your not here... I know you must feel betrayed by me telling you this, but I meant what I said about wanting you above all else! But I also know you can't just here all the time you have your own mission to complete.' Wrapping one paw around your waist he pulls you onto his lap, still trying to make sense of his admission you allow yourself to manhandled. Tucking you in close to his chest you feel the tiger king begins to purr, however you feel it is more to make you feel better than to show his own happiness.";
	WaitLineBreak;
	say "     'Hey now[if player is not defaultnamed] [name of player][end if] i'm not telling you this to hurt you, I know how all of this must sound. The truth is I want to confide everything with you, I don't want any secrets between us! For the first time it feels like there is a serious difference between the human side of my mind and the animal. The part of me that's still Alex wants only you, to be honest the idea of anyone else in my bed makes me feel bitter and sick to my stomach. While the new tiger aspects of myself don't seem to understand those feelings, only looking it as if [italic type]you're[roman type] not here and I have needs that I should satisfy them.'";
	say "     You can't help but just look at Chase's face, seeing the conflict evident in his dark blue eyes. You ask him what this means for the two of you, and what it is the tigers saying he wants? The words come out far more accusatory than you actually intended them, causing a slight flinch to streak across his brow. 'What do I want!? I already told you that! I want you, but you can't always be here!' Taking in your shocked expression he quickly attempts to calm himself down. 'I'm sorry, I shouldn't have snapped at you like that. It's just that no matter what I do some part of me is going to have to take the backseat. If I stay totally faithful to you the beast inside me will prolly not be to happy, however if I just go sleeping around with everyone the sane part of my mind will prolly be the same!'";
	WaitLineBreak;
	say "     Before you know it the smug smile has returned to the tiger kings face.'That's why I have come to decision, I want you to decide. Both sides of me agree that you are the most important thing to them, so if you make the choice it will be easier for the opposing side to deal with!' You know this is an important decision to make. The fact of the matter is your going to have to figure out what you can live with. Do you want him to stay faithful to only you? Or could you live with coming back to the tiger den only to see him fucking someone else? Before making your choice you ask him about if you wanted to have some fun with him and possibly someone else at the same time? Chase raises one eyebrow and lets out a baritone chuckle. 'Well I think no matter what choice you make we can definitely do something about that! Just as long as they understand that you're mine!'";
	LineBreak;
	say "     [bold type]Do you want Chase and yourself to remain exclusive?[roman type][line break]";
	LineBreak;
	say "     ([link]Y[as]y[end link]) - Absolutely! We are mates now, I should be the only one regularly warming his bed.";
	say "     ([link]N[as]n[end link]) - Hell no! I actually kinda get turned on by the thought of walking in on him with others.";
	if player consents: [monogamous mate with dom-Chase]
		LineBreak;
		say "     Worried that he might not like your answer, you cuddle up close to the tigers chest whispering your choice. Out of nowhere a booming laugh echoes across the tiger den, causing many of the residents to look over in curiosity. 'Awesome! I think that's a great choice!' Feeling your mates furred arms wrap you up snugly, your a little surprised by his reaction. You expected him to be angry or annoyed, instead he is still laughing lightly. Glancing up at his face it appears he is actually happy by your choice, you can't help but ask why he's taking all this so well? 'Hmm? I told you, you're the most important thing to me and that means making you happy, makes me happy!' The answer is so simple, you can't be sure if he is being serious or not.";
		say "     'Don't get me wrong this also means more work for you! I want a big family and if we aren't going to have any helpers, well I think you can see where i'm going with this can't you?' You can't help but roll your eyes at his implication, but a smile still spreads across your face. 'I can't wait to start making that family with you[if player is not defaultnamed] [name of player][end if]! Just the idea of stuffing my cock in you constantly, watching your belly grow big with our children, our family...' Being able to feel exactly the kind of reaction Chase is having to the imagery, you grind down against causing a growl to erupt from within his throat. Feeling wetness against your belly you glance down to see your king leaking pre all over both of you, dipping your fingers against his slit, you bring them to you lips licking up his offering. 'Babe, you keep that up and I might just have to take you right here and now. Jeez now I can't wait to have you all to myself, as I fill you with our future. I will build us a dynasty that will make you proud to have chosen me!'";
		LineBreak;
		say "     'I'm glad we figured out a solution to that problem but I should prolly get back to discussing with my advisers on better ways to protect our borders' .Getting off his lap you go to get ready to head out, only to be grabbed from behind and pulled up against the soft fur of his broad chest. 'Just remember though, anytime you want me to put a kitten inside this sexy body of yours you come to me on the double. I don't care what i'm doing at the moment, I will always [italic type]make[roman type] time for you!' with a parting smack on your ass the king makes his way back to his advisers."
		now Hunger of Chase is 1;
	else: [open-relationship mate with dom-Chase]
		LineBreak;
		say "     You can't help but be intrigued by the idea of seeing your sexy and powerful mate being with someone else. Thinking on the idea of him using his people as his personal harem causes your breath to quicken, at first your mate is worried until you notice him scent the air. Forcing your throat to the side, the tiger begins to breath in your aroma obviously able to tell the state you're in. 'Babe, while you know I want nothing more than to bend you over this throne and take you for the whole clan to see, we really do need to talk about this. It's important and I don't want us to start fucking without figuring it out!' Letting out a short breathless laugh, you explain to Chase that your reaction is based on your choice.";
		say "     At first he is noticeably confused, until you reach a hand down between your bodies grabbing his half hard cock. Stroking it a bit you lightly caress the barbs along the head of the felines prick. Looking over your shoulder at the tigers going about their business paying you no mind, you lean into your mate and comment on how hot it would be to come back to find him taking any of them as his personal harem sluts! Apparently this answer brings a deep growl from within your kings chest. 'So you would like that? Coming back home to me only to find me grabbing one of them and impaling them on my cock?' Nuzzling the side of his head with your own you nod in the affirmative. 'Mmm[if player is not defaultnamed] [name of player] [end if]you are too good to me, I wonder what I ever did to make you want me?'";
		LineBreak;
		say "     A slight giggle escapes your lips. 'So would you like it if I just grabbed one now? What about her?' He points to a woman laughing and chatting with another tiger. 'With tits like that she really should only be bred by the most powerful male around don't you agree? Or the one she is talking with, That asshole used to try and fight me for the leadership position. He may have a rotten attitude, but ever since I fucked you in the ass I can't help but notice how nice his ass is as well. Nowhere near as good as yours, but still nice. Not to mention the thrill of making him my personal bottom boy bitch!' You inform him that he is a king now, he can have it all!.'Oh I plan on it!'";
		say "     'I'm glad we figured out a solution to that problem but I should prolly get back to discussing with my advisers on better ways to protect our borders.' Getting off his lap you go to get ready to head out, only to be grabbed from behind. 'Just remember though, this means I'm gonna knock up any pussy in this den I want. Things may get a bit competitive, but you are still my number one slut!' With a parting smack on your ass the king makes his way back to his advisers.";
		now Hunger of Chase is 2;

to say SubChaseTalkMenu:
	say "     ...";

Section 3 - Fucking Chase

to say sexwithchase:
	[puts Tiger as lead monster in case of impregnation]
	repeat with y running from 1 to number of filled rows in table of random critters:
		choose row y in table of random critters;
		if name entry is "Tiger":
			now monster is y;
			linebreak;

instead of fucking the Chase:
	if (lastfuck of Chase - turns < 6): [he got fucked in the last 18 hours = 6 turns]
		say "     'Sorry, I would love to spend some more time with you, but it looks like neither of us really are ready for that,' Chase says apologetically, 'Maybe we should take it slow and you should come back and visit me again later.'";
	else if HP of Chase is 1: [player has not talked to him yet]
		say "     Just walking up to a guy and dragging him into bed seems a bit forward. At least talk to Chase first! You're not feral (yet) after all.";
	else if HP of Chase is 3: [player has not talked to dominant Chase yet]
		say "     You haven't even talked to Chase since agreeing to be his mate. Amazing sex is one thing, but your relationship will now be quite different, so it might be best to talk about that with your dominant top first.";
	else if cunts of player is 0 and lust of Chase is 0:
		say "     'Hmm, that's a tempting offer,' Chase says as he runs his eyes over your body, pausing to shake his head at your aroused cock. 'But I think I'll have to pass on it right now,' Chase says with a shrug, then grins. 'I'll make you a pretty good counteroffer though,' Chase says before leaning forward and rubbing the sides of his head along your face and body. His whiskers tickle you as they trace along your sides, and his furred cheeks feel soft and sleek, leaving a strange tingling sensation behind where he rubbed against you. 'I think you would make a great tigress,' the tiger man says with a grin as he leans back against the wall, and you feel the tingling intensify within you where he marked you with his scent. 'So why don't you come back and make your offer again when you are one?' Chase adds in amusement.";
		infect "Tiger";
		if "MPreg" is listed in feats of player:
			say "     <Player says BUT I CAN BEAR YOU CUBS!!>";
			now lust of Chase is 1; [Chase knows the player can bear cubs]
	else: [ready for sex]
		say "     As you walk up to Chase, <positive reaction at being approached for sex>";
		wait for any key;
		say "[ChaseSexMenu]";

to say ChaseSexMenu:
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	choose a blank row in table of fucking options;
	now title entry is "Suck Chase off";
	now sortorder entry is 2;
	now description entry is "Blow Chase";
	]
	if cunts of player > 0: [only females and herms can take him in the pussy]
		choose a blank row in table of fucking options;
		now title entry is "Take Chase's shaft in your pussy";
		now sortorder entry is 5;
		now description entry is "Offer sex to the hunky tiger.";
	[]
	if "MPreg" is listed in feats of player:
		choose a blank row in table of fucking options;
		now title entry is "Take Chase's shaft in your ass";
		now sortorder entry is 6;
		now description entry is "Offer sex to the hunky tiger";
	[]
	sort the table of fucking options in sortorder order;
	repeat with y running from 1 to number of filled rows in table of fucking options:
		choose row y from the table of fucking options;
		say "[link][y] - [title entry][as][y][end link][line break]";
	say "[link]100 - Nevermind[as]100[end link][line break]";
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
				if (nam is "Get a blowjob"):
					say "[ChaseSex1]";
				if (nam is "Suck Chase off"):
					say "[ChaseSex2]";
				if (nam is "..."):
					say "[ChaseSex3]";
				if (nam is "..."):
					say "[ChaseSex4]";
				if (nam is "Take Chase's shaft in your pussy"):
					say "[ChaseSex5]";
				if (nam is "Take Chase's shaft in your ass"):
					say "[ChaseSex6]";
				wait for any key;
		else if calcnumber is 100:
			say "Break off the conversation?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the horseman farmhand, shaking your head slightly as he gives a questioning look.";
				wait for any key;
			else:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
	clear the screen and hyperlink list;

to say ChaseSex1: [oral on the player]
	say "     A";

to say ChaseSex2: [oral on Chase]
	say "     <WIP, sorry>";

to say ChaseSex3: [virgin Chase fucked]
	say "     A";

to say ChaseSex4: [non-virgin Chase fucked]
	say "     A";

to say ChaseSex5: [Chase fucks player pussy]
	if the remainder after dividing libido of Chase by 3 is 0:
		say "     'Well who could say no to such a pretty woman?' Chase asks as he runs his eyes over your body, his gaze lingering over your aroused cunt. Your eyes drift to his obvious arousal as he pulls you over to one of the sleeping pallets, and slowly pushes you down onto it. 'I think we can really have some fun together,' he says as he moves over you, his hands slowly rubbing along your [skin of player] skin, pausing to tease your breasts as he nuzzles your neck with his furred muzzle. 'You want this so badly, don't you?' Chase asks with a rumbling purr, as he rubs his feline cock along the outside of your pussy, causing you to gasp and pant with the need the large male tiger is arousing in you.";
		say "     'Mmm look at you, you look like you would make a fine tigress, what do you think,' he says, as he teases you underneath him, your body rising up against him as your mind clouds with pleasure and male musk. 'You want to be a tigress don't you?' Chase asks as rubs his soft fur against you, causing you to moan and nod, willing to agree to anything just to get him inside your hot body. 'I knew you wanted it,' Chase says with a churring laugh, as he rubs himself against you, 'I just knew you wanted to be just another lovely tigress, but even more you want to be MY little tigress, don't you. My pet and my little tigress mate, isn't that right?.' he growls out, his rough need filled voice sending shivers down your spine. You can only groan in need, and nod helplessly, as he rubs his cock along your folds.";
		say "     Seeing your acceptance, Chase lets a self-satisfied grin cross his face, though you can't pay much attention to that fact as he finally thrusts into you, giving your well prepared body what it needs. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You feel yourself gripping chase to you tightly as he pumps himself into you, his hands and dominant manner speaking to something in you as he works his hands over your body. Soon Chases body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, filling you full of his fertile feline cum as he stakes his claim on your body, and giving you your biggest orgasm ever, as your walls grip his shaft tightly.";
		say "     As you relax in his arms as you both pant in the afterglow of your powerful orgasm, you try to think about his words from before and you being his. You are quickly distracted though, as Chase starts moving up against you again, his hands rubbing over your body, rekindling your earlier lust and excitement. You moan as he begins to move himself within you again, his cock erect faster than you would have ever thought possible, as he turns his attentions to your body again. You have a fleeting thought about the fact that tigers can mate for hours or days on end, before he drives all thoughts out of your head once again, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...";
	else if the remainder after dividing libido of Chase by 3 is 1:
		say "     'Hmm... ready to have your strong tiger atop you again, eh?' he rumbles with a grin. 'Looking to be my sexy tigress slut again, are we?' he adds, nuzzling at your neck and gently nibbling along it with his sharp fangs. Responding to his arousing scent and his strong, confident manner, you moan and nod, feeling yourself want to give into this virile male once again. He smiles and gropes your ass as he leads you to one of the sleeping pallets, pushing you down onto all fours atop it. 'I think you're starting to like this arrangement. I know I am,' he rumbles, grinding his stiff cock between your cheeks, causing you to moan and wiggle it back against his shaft. 'You want this so badly, don't you?' Chase asks with a rumbling purr, letting his leaking glans brush past your dripping folds momentarily. You mrowl and nod vigorously, asking your virile lover to mount you.";
		say "     'Oh, look at you, so sexy and eager. You're going to make a wonderful tigress, aren't you?' he asks as he teases you underneath him, your hips grinding back on his prick, trying to get it inside. He's got a grip on your ass this time, making sure he doesn't let you have it until he's ready to give it to you. Held beneath the confident male and teased with his throbbing cock, your mind clouds with pleasure and male musk. 'You want to be a horny tigress, don't you?' Chase asks as rubs his soft fur against you, causing you to moan and nod, willing to agree to anything just to get him inside your hot body. 'I knew you wanted it,' Chase says with a churring laugh, as he rubs himself against you. 'And not just that, you want to be MY horny tigress mate, don't you? My pet and playtoy, with that needy cunt of yours to breed full of cubs, isn't that right?' he growls, the rough need in his voice sending shivers down your spine. You can only groan in need and nod helplessly as he brushes his leaking glans across your quivering, dripping folds again.";
		say "     Having accepted his dominance as your tiger mate, you release a lustful mrowl as Chase finally thrusts into you and starts pounding you with a self-satisfied grin on his feline face. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You can feel the tiger's paws gripping you tightly, pinning your shoulders down on the mattress while he pounds your ass. His dominant manner speaks to something in you as he mates you, his feline form pressing down atop your [bodydesc of player] body. Soon Chase's body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, pumping your pussy full of his fertile feline cum as he again stakes his claim on your womb. A powerful orgasm rocks your body as your walls grip his shaft tightly, milking it for all he'll give.";
		say "     You are both left panting in the afterglow of the raw, lustful sex you've just had. Your horny tiger stud remains atop you, nuzzling at your neck and purring softly as he nibbles along it. You sigh happily and purr in response, happily musing upon his earlier words. Your thought soon turn away from this though as his hips and yours start moving again, Chase starting to thrust into you again and your ass pushing back to get fucked once more. You moan as his stiffening manhood begins thrusting again, reminded again of the extended mating sessions of wild tigers before your growing arousal pushes all thoughts out of your head once again. As your lustful mating continues, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[impregchance]";
	else:
		say "     'I thought you might want to spend time with your sexy tiger mate again soon,' he purrs with a grin, running his paws across your [bodytype of player] body before eventually settling with one on your ass, squeezing it firmly. You moan at the sexy tiger's touch, finding his confidence alluring. Keeping his paw on your rear, he pulls you over to one of the sleeping pallets and has you spread out atop it. 'I think since you've been such a good girl, coming back to your tiger for more, that I'd give you a special treat,' he says with a grin, licking his broad tongue across his muzzle as he eyes your juicy pussy with obvious hunger.";
		say "     Running his paws over your [bodydesc of player] body, he moves in closer, bringing his muzzle between your thighs. He chuffs softly as he takes in the scent of his mate and licks his rough tongue slowly across your inner thigh, moving tantalizingly close to your increasingly needy pussy. 'Mmm... you smell so nice, my horny girl. You want it badly, don't you? Needing your hot, sexy tiger to give you what you need, like the slutty tigress pet you are?' he asks, giving more teasing licks and nibbles without quite touching your now sopping cunt. His earlier dominance having had its effect, you mrowl and mewl without delay, begging him for it and promising to be his good kitty slut.";
		say "     Chase smiles and takes a long, slow lick across your juicy folds with his raspy tongue, sending waves of delight through you. 'That's my good tigress, eager for her loving mate's attention.' He slides a pair of fingers into your cunt and fucks you with them while his tongue lavishes attention upon your pussy and clit. Waves of pleasure rush through you as the tiger works you up to a wonderful orgasm that has you seeing stripes as you cry out. Even as you're panting on the mattress in the fog of your afterglow, the tiger moves atop you. You welcome him into your arms, sharing sticky kisses with him as he thrusts into you and starts mating you. As before, he fucks you to several more orgasms as he pumps load after load of tigercum into your womb. Eventually you are both sated and he rubs himself up against you one final time, ensuring his scent coats you completely before rising from the cot. He heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[impregchance]";
	infect "Tiger";
	now lastfuck of Chase is turns;
	increase libido of chase by 1;

to say ChaseSex6: [Chase fucks player ass]
	if lust of Chase is 0:
		say "     'Hmm... that's a tempting offer,' Chase says as he runs his eyes over your body, pausing to shake his head at your aroused cock. 'But I think I'll have to pass on it right now,' Chase adds with a shrug, but you don't let him off the hook so easily, pulling him in close and nibbling his ear. You whisper that your sexy ass is something special and he should really give it a try before saying no to you. With a hand between the tiger's legs, you grope the sexy tiger, feeling his sheath swell as his arousal builds. Having got his attention, he drags you over to one of the sleeping pallets and slowly pushes you down onto it. 'Well, I could certainly go for a little fun. Maybe you'll get some sexy stripes of your own,' he says with a rumbling purr. Pushed onto all fours, the tiger moves atop you, rubbing his feline cock against your crinkled hole, letting his precum lube you up a little.";
		say "     'Mmm look at you, you look like you would make a fine tigress. What do you think?' he asks as he teases you underneath him, your body rising up against him as your mind clouds with pleasure and male musk. 'You want to be a tigress, don't you?' Chase asks as rubs his soft fur against you, causing you to moan. You reach back and grab his cock, pushing yourself back onto it, moaning that you would rather be a hot tiger. Chase releases a lustful growl, but grabs your hips firmly, holding you steady as he tries to remain in control. 'I knew you wanted to be a sexy striped kitty, but I'd much rather have you as a sexy tigress for me to breed.' You mrowl and claw at the cot, promising to be his sexy tiger and for him to hurry up and breed your ass. You moan loudly that you can have cubs as a male and that you want him to give them to you.";
		say "     The tiger's surprised by this, but something about your scent must have made his body aware of this, since he accepts the concept readily and lets a self-satisfied grin cross his face, though you can't pay much attention to that fact as he finally thrusts into you and starts pounding you, giving your well-prepared body what it needs. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You can feel the tiger's paws gripping you tightly. His hands and dominant manner speak to something in you as he works his hands over your body. Soon Chases body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, pumping your ass full of his fertile feline cum as he stakes his claim on your body[if cocks of player > 0], and giving you a powerful orgams of your own as your walls grip his shaft tightly[end if].";
		say "     As you relax in his arms as you both pant in the afterglow of your powerful orgasm, you try to think about his words from before and you being his. You are quickly distracted though, as Chase starts moving up against you again, his hands rubbing over your body, rekindling your earlier lust and excitement. You moan as he begins to move himself within you again, his cock erect faster than you would have ever thought possible, as he turns his attentions to your body again. You have a fleeting thought about the fact that tigers can mate for hours or days on end, before he drives all thoughts out of your head once again. As your lustful male mating continues, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[mimpregchance]";
		increase lust of Chase by 1; [first mpreg fuck done]
	else:
		say "     'Hmm... ready to have your strong tiger atop you again, eh?' he rumbles with a grin. 'Looking to be my sexy tiger slut again, are we?' he adds, nuzzling at your neck and gently nibbling along it with his sharp fangs. Responding to his arousing scent and his strong, confident manner, you moan and nod, feeling yourself want to give into this virile male once again. He smiles and gropes your ass as he leads you to one of the sleeping pallets, pushing you down onto it. 'I think I could get to like this arrangement,' he rumbles, grinding his stiff cock between your cheeks, causing you to moan and wiggle it back against his shaft. 'You want this so badly, don't you?' Chase asks with a rumbling purr, letting his leaking glans brush past your anus momentarily. You mrowl and nod vigorously, asking your virile lover to mount you.";
		say "     'Oh, look at you, so sexy and eager. You're going to make a wonderful tiger bottom, aren't you?' he asks as he teases you underneath him, your hips grinding back on his prick, trying to get it inside. He's got a grip on your wrists this time, making sure he doesn't let you have it until he's ready to give it to you. Held beneath the confident male and teased with his throbbing cock, your mind clouds with pleasure and male musk. 'You want to be a tiger bottom, don't you?' Chase asks as rubs his soft fur against you, causing you to moan and nod, willing to agree to anything just to get him inside your hot body. 'I knew you wanted it,' Chase says with a churring laugh, as he rubs himself against you. 'And not just that, you want to be MY slutty tiger bottom, don't you? My pet and playtoy, with that kinky ass of yours to breed full of cubs, isn't that right?' he growls, the rough need in his voice sending shivers down your spine. You can only groan in need, and nod helplessly as he brushes his leaking glans across your asshole again.";
		say "     Seeing your acceptance, Chase lets a self-satisfied grin cross his face, though you can't pay much attention to that fact as he finally thrusts into you and starts pounding you, giving your well-prepared body what it needs. The feel of his shaft pushing into your hot body chases any thoughts from your mind as you throw your head back and groan, the primal pleasure of being filled by his hard hot member making everything else seem inconsequential. You can feel the tiger's paws gripping you tightly. His hands and dominant manner speak to something in you as he works his hands over your body. Soon Chase's body tenses, and with a growl of 'Mine', the large tiger shoots his seed into you, pumping your ass full of his fertile feline cum as he again stakes his claim on your body[if cocks of player > 0], and giving you a powerful orgams of your own as your walls grip his shaft tightly[end if].";
		say "     As you relax in his arms as you both pant in the afterglow of your powerful orgasm, you try to think about his words from before and you being his. You are quickly distracted though, as Chase starts moving up against you again, his hands rubbing over your body, rekindling your earlier lust and excitement. You moan as he begins to move himself within you again, his cock erect faster than you would have ever thought possible, as he turns his attentions to your body again. You have a fleeting thought about the fact that tigers can mate for hours or days on end, before he drives all thoughts out of your head once again. As your lustful male mating continues, your combined cries of pleasure echoing throughout the den and ensuring everyone knows just what the two of you are up to. Eventually exhausted, Chase rubs himself up against you one final time, ensuring his scent coats you completely, before he heads back to the main room, leaving you to try to collect the remnants of your pleasure shattered mind, a happily fucked tiger's mate...[mimpregchance]";
	now sex entry is "Male";
	infect "Tiger";
	now sex entry is "Female";

Section 4 - Chase Quests

instead of going from Tiger Den while (ChaseSexCounter is 2):
	move player to Tiger Den;
	if debugactive is 1:
	say "     DEBUG: Chase TigertaurQuestBattle Walkin; ChaseSexCounter: [ChaseSexCounter] [line break]";
	say "     As soon as you enter the tiger's den it is evident that something is wrong. People in orange and black fur are racing around everywhere, clearly in some sort of distress. You try to pinpoint Chase within all the chaos, but can't see him around the entrance, so you begin to make your way further in. After only a few steps one of the panicked felines brushes past you from behind, just knocking you to the ground as she doesn't pay any attention to you in her rush. Then all of a sudden, a loud roar can be heard throughout the tiger den, causing the all of the inhabitants to freeze in place. Still confused about what is going on, you suddenly feel a strong paw grip your arm, hoisting you to your feet and dragging you behind the tiger-person to a corner of the den.";
	say "     The tigers that were frozen in place only a moment ago rush back into action. After you are placed back on the ground and prepared to thank the man that saved you, starting your hunt for your friend again. Before you can even open your mouth to speak a familiar scent enters your nostrils, [italic type]Chase[roman type]! You grab him and hold on tight, with the state the den is in right now you were worried what may have happened to cause such an uproar. At first the beast-man is shocked judging by the fact that his whole body freezes up, but then  hear him give a short laugh wrapping his strong arms around you, You both stay like that as the panic continues to spread throughout the area.";
	WaitLineBreak;
	say "     Chase finally pulls back, his electric-blue eyes conveying both his familiarity with you but also his worry over recent events. 'I'm glad your safe[if player is not defaultnamed] [name of player][end if] I can honestly say that I was worried not knowing where you were during this... let's just say dangerous time.' Grabbing one of his paws you bring it close to your chest and ask the tiger to tell you what happened. 'The tigertaurs found us... one of our scouts didn't realize she was being tracked and led one straight to our doorstep. Out of the blue we heard a loud banging against the door, the scout opened it I can only assume thinking it was one of the others that was close behind her. The door flew open and the girl was grabbed around her throat, just being held in the air while this huge tigertaur addressed the rest of us.' For the first time you can actually see the fear on Chase's face, squeezing his paw you urge him to continue.";
	say "     Shaking his head a bit he continues, this time however where there was fear tingeing his voice now you can only hear the tigers rage. 'That bitch had the nerve to tell us that we should be ashamed of hiding from them! That they were the next stage in evolution! She claimed they would be coming back soon to [italic type]uplift[roman type] us.' A look of disgust passes of Chase's face, like he had just eaten something that had gone bad long ago. 'That's why everyone is in a panic, we have to leave.' The tiger covers your cheek with one large paw. 'I don't even know if i'll ever see you again... this was just supposed to be about us having a bit of fun. Ya know make a friend, maybe pop out a few kids, and leave it at that haha easy right?' You can't help but wonder if that's Chase's opinion of a friend or Alex's. 'But... [italic type]I[roman type] don't wanna just move on, I want to be able to have you come back here whenever able. I guess i'm the one the screwed up our arrangement and got attached.'";
	WaitLineBreak;
	say "     Not being able to handle the look of shame on Chase's face, you lean forward placing your lips on his willing your body to show what your words cannot. At first he barely responds, but then you feel his mouth open slightly, taking your chance you plunge in and attempt to give the tiger all that you have. Before you know it he has you slammed up against one of the nearby walls, holding the back of your head with a paw he aggressively devours your mouth. His coarse tongue gliding across your mixed with the pheromones of his scent are all too much for you, not being able to hold back the moan that he is able to evoke within you.";
	say "     Pulling back just a bit, he rests his forehead against you. 'I want to fight! I know I should wanna do it just cuz it's the right thing to do but... I want to fight for this, for... you[if player is not defaultnamed] [name of player][end if].' His words uttered barely above a whisper but blaring in your ears. You can't help but smile at his declaration of affection. Placing one last peck on his lips, you step away and make way for the entrance. Chase rush's up behind you, grabbing your waist. 'Where are you going? After what I just told you, your just gonna leave? Now I feel like a lame ass for opening up like I did about my feeling for you...' You can't help but giggle a little bit at his automatic assumption, without turning around you explain to him your just going out to hunt some tigertaurs.";
	WaitLineBreak;
	say "     Gripping you tighter to his chest the tiger-morph lets out a shocked grunt. 'Are you serious? I mean you know how dangerous those bitches are and your still willing to go after them? Why?' Finally turning around, you just explain to him that there is something important that you want to protect. Looking deep into your eyes, almost as if trying to gather the truth of your words within he eventually nods, a huge smile growing on his muzzle. 'Then i'm going with you! I mean what kinda knight in shining armor let's their princess go off to battle all alone after all!' [if player is male]Raising one eyebrow in question at Chase's innuendo that you're a [italic type]princess[roman type] by any means, he quickly looks you up and down before backpedaling. 'I mean [italic type]prince[roman type] of course!' You just stare at him for a moment with a look of judgement for that awful save. 'Oh come on now, it was just an expression!' You roll your eyes letting out a small giggle informing the tiger that he's lucky you find him so cute.[end if]";
	say "     The beast-man's eyes harden for a moment. 'If we are really going to do this, then we need to be prepared. I will do what I can to keep things calm here for now, but after your preparations are complete just come find me and we will go.' Once again the feline grabs you in a tight embrace. 'We can do this! I don't know how I know but, if we stand together we will beat them back and keep everyone safe.' Placing a parting kiss to your temple, Chase gives you a charming wink before heading back to begin his own preparations for the battle.";

to say TigertaurQuestBattle: [conversation to begin tigertaur battle mission]
	say "     You broach the topic of the upcoming battle with the tigertaurs. 'I think i've got all my preparations ready, what about you[if player is not defaultnamed] [name of player][end if]?'";
	LineBreak;
	say "     [bold type]Are you ready to take the fight to the tigertaurs?[roman type][line break]";
	say "     ([link]Y[as]y[end link]) - This is a long time coming, it's time to end this!";
	say "     ([link]N[as]n[end link]) - Your not prepared for the fight just yet, better safe than sorry.";
	if player consents:
		LineBreak;
		say "     Deciding that you are ready you give Chase a nod of confirmation. 'Alright sounds like we are gonna do this then!' Coming over the tiger places his finger under your chin, lifting your face close to his. 'We can do this. I know we can, but... just incase anything happens, I want the chance to to tell you how much you doing this means to me.' A chaste kiss is placed upon your lips which grows in intensity until you find your back being slammed against a wall. You feel furred paws groping every inch of you that they can and you're no better, hands feeling the soft fur covered muscles under your touch. You can't help but allow yourself to graze up against his sheath, the head already beginning to poke out.";
		say "     Before you know it Chase has grabbed one of your wrists panting for breath. 'I can't believe i'm saying this but[if player is not defaultnamed] [name of player][end if] we can't, at least not yet. Lets save this for after we win, that way we can really celebrate.' The tiger lets out a breathless laugh. 'Jeez I am gonna fuck you so hard, you wont be able to walk right for a week!' He pulls back from you with that same cheeky smile on his face 'Alright let's head out and get to that reward as soon as possible!' With that he grabs your hand and his bag leading you both outside the safety of the tigers den.";
		LineBreak;
		say "     As the two of you make your way through the thick foliage of the overgrown zoo, you decide to ask the beast-man how he know where to go to reach the tigertaurs? 'Well I guess I could use my nose, but then the second I was able to scent them they could do the same to us. So I figured the best way to do this would be to bring them to us, tigers [italic type]are[roman type] ambush predators after all.' Opening his bag you peer inside only to find an assortment of different colored balls. The confusion must be apparent on your face, because before you know it Chase is snickering quitely. 'They're condoms, I just tied them up so we wouldn't spill the contents.'";
		say "     You can't help but think sarcastically well that explains everything, your inner monologue must show on your face as the tiger explains with a proud glint in his electric-blue eyes. 'Each one if filled with tiger stuff.' You just stare at him for a moment and can't help but question what [italic type]kinda[roman type] stuff. If you didn't know better you would think that the cat is almost blushing under his fur, then with a roll of his eyes he begins to explain further. 'Ya'know tiger stuff. Cum, milk, piss, all of the above. We all got together to contribute, and let me just tell you, I was not the only one uncomfortable with having to donate!' Not being able to help but snort at [italic type]explosion[roman type] of information, you ask Chase what did he have to donate? 'Just the normal stuff!' He snaps looking completely mortified that you are asking him these things, when you bring up the possibility that he may have also contributed milk he just glares at you.";
		LineBreak;
		say "     'Naw I didnt have to donate any of that, besides if I wanted to donate milk I would have just got a stool and invited [italic type]you[roman type] over!' [if player is male]You stop dead in your tracks, causing Chase to stop as well and turn around. With your hands you give waving gestures around your chest, clearly indicating that you are hardly about to just start lactating all over the place. Rolling his eyes the tiger goes to continue on his way but not before giving a smartass comment over his shoulder. 'If you really wanted too i'm sure you could find a way for me!' You silently wonder why you put up with him, before your gaze travels down his muscled shoulders and back until they land finally on his pert bubble butt. Now you remember why.[end if]";
		say "     Finally the two of you reach a clearing within one of the exhibits. 'Perfect place for us to ambush these bitches huh babe?' You glance at your surroundings noting that this would be a pretty good place to try a pincer attack, if a group were to show up mentioning as such to Chase. 'Huh yeah I guess you're right! I was actually referring to the fact that this is the [italic type]tiger[roman type] exhibit. This is the place that I first changed into the stud you see before you.' Dropping the bag he begins to pose and model for you drawing a soft laugh and smile from you. 'Oh come on! You and me both know that you may love my personality but it's this body and muscles that keep you coming back for more.'";
		LineBreak;
		say "     You comment on the fact with [italic type]whatever helps him sleep at night[roman type]. Finally he gets back to the mission at hand and begins to get everything ready. 'Hey [if player is not defaultnamed ][name of player] [end if]you hide over in that lil alcove by the employee entrance? I'm gonna go for these treetops above us, that way I can pelt the condoms down against the sunning rocks!' Once you are both in place, Chase begins to pelt the condoms down causing them to pop. Surprised by the force he is using to throw them definitely reaffirms what you already knew about the power behind the tiger. Once all the condoms are used up you can't help but zero in on the scent yourself, if the smell is this potent, then you can't imagine it will take long for the tigertaurs to make their way here."
		say "     Finally you hear a sound, too quiet to be galloping but making enough sound to be noticed. Just then three tigertaurs come within your line of sight, the largest of the them gets closer to the rock. 'What the hell is this? They decided to have an orgy, then piss themselves scared when they scented us coming?' She lets out a mocking laugh, your eyes however are drawn upwards where a pair of electric-blue orbs stay still as can, be just watching. Without warning Chase drops from his position in the tree with a shouted 'NOW!'. You immediately jump out of your position and race over to join the battle!";
		let GroupFightCounter be 0;
		now fightoutcome is 0; [reset]
		while fightoutcome < 20 and GroupFightCounter < 2: [runs for 2 times or until the player loses or flees]
			now inasituation is true;
			challenge "Tigertaur";
			increase GroupFightCounter by 1;
			now inasituation is false;
		if fightoutcome < 20: [player won]
			say "     Watching the second of the tigertaurs crumble to the ground, you feel a quick burst of wind behind you. Spinning quickly you are able to see the last huge feline being bum rushed by Chase, as it apparently made a grab for you. With lightning speed your tiger's claws slash away at the taur, forcing it to stay on the defensive. Seeing an opening you kick at one of the beasts hind legs, making it buckle under the double onslaught. The tigertaur knowing when it has lost a fight jumps back, calling out to its wounded allies the three of them make a break for it while they can. Leaning forward to catch your breath, only to be quickly tackled again by a very happy kitty.";
			say "     'HA! Can you believe it?! We totally beat those oversized kittens down!' Before you know it the two of you are rolling all over the grass of the tiger exhibit. Eventually getting into the spirit of things you join in on the impromptu playtime, chasing each other and laughing. With agile precision your feline lover knocks your legs out from under you, gaining an advantage as you are pinned beneath the tigers solid form. Still laughing together over his antics, Chase leans forward sealing his lips over yours. Feeling the tension of the previous fight melt away, you wrap both arms around the felines neck pulling him closer.";
			WaitLineBreak;
			say "     After a few minutes of leisurely making out your friend and lover pulls away. 'Hold on a minute there is something I wanted to ask you! You know that I have feelings for you right?' A giant grin spreading across your face, you inform the tiger that yes you had managed to figure that out. 'Smartass, haha well there is something I wanted to get your feedback on. After everything that happened between us and you doing this for me... I'm now positive that your the one!' Raising an eyebrow in question you ask what he means by [italic type]the one[roman type]? 'Well... I want you to be my mate! I mean if your ok with that? I just know all I need to, everything that would make someone a perfect mate you have in spades!' While Chase looks excited you can also make out some insecurities within the tigers eyes. 'So will you do it? Will you be mine?"
			LineBreak;
			say "     [bold type]Do you want to become Chase's mate?[roman type][line break]";
			LineBreak;
			say "     ([link]Y[as]y[end link]) - Absolutely! He is everything you could ever want!";
			say "     ([link]N[as]n[end link]) - Turn him down, instead offering to date him and see where things go.";
			if player consents:
				LineBreak;
				say "     ";
			else:
				LineBreak;
				say "     ";
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			say "     <Player lost against someone and the group piles onto him. Sex scene here>";
		else if fightoutcome is 30: [fled, reg-chase locked]
			say "     Turning your back to the battle, you attempt to escape through the dense foliage. Right before you are able to hit it however you feel a paw grab the back of your head, next thing you know the ground rushing up at your face just before everything goes dark. Every part of your body hurts once you are finally able to sit up, looking around everything appears to be in haze at first. Slowly but surely you are able get back to your feet, you can see blood on the ground... a lot of it. The first thing that enters your mind is that the blood your looking at could be Chase's. 'It's not mine. Well at least most of it isn't,' The voice behind you has a cold edge to it, not the usual upbeat air that the tiger exudes.";
			say "     Turning around you open your mouth to speak but are abruptly cut off. 'Do you know why i'm here?' Once again you open your mouth but are silenced again. 'No! This is the part where you listen, you were the one that convinced me to fight back! [italic type]YOU[roman type]! I wasn't even supposed to get feelings for you, but yeah shit happens right? When I told you what was at stake... you just got up and acted like you were getting ready to fight off whatever came your way for [italic type]ME[roman type]! I trusted you[if player is not defaultnamed] [name of player][end if] and then the next thing I know I see you making a run for it! You were ready to... abandon me.' Chase's words cut you worse than his claws even could, the final nail in the coffin is when you meet his electric-blue eyes and see them wet, full of betrayal.";
			WaitLineBreak;
			say "     'Do you know how it feels to care for someone you can't trust? No you prolly dont since I would have taken anything they had to offer for you without a second thought, at the very least you sure as hell don't love me! Not the same way that I lo... it dosn't matter!' Everything finally comes to a head and without warning a tear drips down your cheek, the only answer you can give is that you were scared. 'I was scared too but I focused on you, that's what gave [italic type]me[roman type] strength! I hoped that I was enough to give you that same strength...' The two of you stand there in silence before a loud bang overhead rumbles signifying thunder. Still unsteady from the head injury, you jump from the booming sound. Before you know it Chase has you wrapped in his arms, you take in his scent and immediately start to feel better. Looking up you see chase quickly looking in all directions more than likely still on an adrenaline rush.";
			say "     When he finally begins to calm down and feels that you are both still safe he looks down at you. 'Do you know how scared I was when I saw that fucking bitch grab you? Everything felt like it was in slow motion, I saw you crash to the ground and heard the crunch of your head hitting the floor. I thought you were dead!' Chase's arms tighten further around almost like he's afraid you will disappear if he lets you go. 'I think that's the only reason that I was able to win... I thought you were dead and I had to make them pay! Pay for taking the person I fell in love with away from me.' The last few words are uttered just above a whisper, you aren't even sure if the tiger said them or if it's just your wishful thinking.";
			WaitLineBreak;
			say "     Rain begins to fall all around you, only a light drizzle at first. 'The truth is even with what you did... I still have feelings for you, but I don't know if I can trust you. As much as I want to be with you in every way I can I don't think your ready for that yet. So I have a proposal if you wanna hear it?' You can feel the cold rain hitting your skin, a total contrast of the warmth radiating off Chase. Pushing yourself further into his heat you nod your head giving him the go ahead to explain. 'We pretend this fiasco never happened, not the good and certainly not the bad. We go back to the den victorious, but that's all that will be mentioned of tonight. As far as you and I are concerned, we try to start over. I wasn't lying about caring for you and I want us to work, but it's gonna take a lot for me to trust you again.' You can't fault the tigers feelings, even though you may not want to [italic type]start over[roman type] it's his choice, you after all [italic type]are[roman type] the one that ran away.";
			say "     You tell him that you agree with his conditions, giving a quick nod in understanding Chase immediately steps away from you and begins to walk back towards the den. You attempt to follow him already missing the heat from his body, only to crash to the ground as your head spins, maybe that hit to your head was harder than you thought. The rain starts to fall faster, you can't decide if it's making you colder or relieving the heat on your skull. Turning on your side you can't help but wretch from the dizziness, the back of your mind wonders if this could have ended different? what would have happened if you hadn't chickened out and ran? Before you know it the rain has stopped hitting you as hard as it was, looking up you can make out a silhouette blocking you, protecting you from the cold water. You are raised into strong warm arms, the chest your head it pressed up against releases a soft purr easing the throbbing in your head. 'I will always keep you safe, heartbroken or not.' Is the last thing you hear before you black out.";
			WaitLineBreak;
			say "     Waking up you find yourself back in the tiger den. Gathering yourself up, you check your head only to find bandages. A friendly tiger-woman comes up next to the cot you were placed on. 'Oh your up! about time huh?' You barely hear her though looking out among the den trying to find Chase, with a playful roll of her eyes she points out the handsome feline to you. It's almost like nothing changed, he's laughing with some of the other beast-men with a few clapping him on the back. 'You guys must have gone through hell, after he carried you back he wouldn't say a word about what happened. He just got you to this cot and stayed up watching over you, he only left a few minutes ago. He could prolly tell you were about to wake up and didn't wanna crowd you, he's thoughtful like that.' You give a quick nod in agreement, remembering the deal you both made before a slight pain forms in your chest.";
			say "     Fully intending to uphold the proposal you agreed too, you make your way out of the tiger den. Deciding to come back later when things will hopefully be like they were before, at least you hope they will. Sad electric-blue eyes watch your every movement as make your way to the entrance. Feeling the tigers gaze you pause, somehow knowing it's Chase. Not sure if he can hear you or not, you whisper that one day you will prove that you are worthy of his affection. Once you reach the entrance for only a moment, unbeknownst to you a soft smile forms on the tigers face. A joyful twinkle in his eye as he whispers to the wind 'I know you will.'";
			Lust of Chase is 2;
	else:
		LineBreak;
		say "     You bite the side of your lip thinking over whether you are ready or not. Chase claps a firm paw on your shoulder forcing you to look up and meet his gaze. 'It's ok if your not ready, we both know what's riding on this fight[if player is not defaultnamed] [name of player][end if]. We will only get one chance at this so it's better that we make sure we really are ready, rather than going off half cocked.' With a soft smile the tiger leans over licking your jugular with his rough tongue, before turning back to what he was previously doing.";

Chase ends here.