Version 1 of Erica by Wahn begins here.
[Version 1: split off from Erica]

"Adds an NPC named Erica to the Flexible Survival game"

[ Dexterity states of Erica                                           ]
[   0: Erica quest not started                                        ]
[   1: Eric asked for help in becoming Erica                          ]
[   2: talked with Valerie                                            ]
[   3: talked with Hera                                               ]
[   4: found Joel                                                     ]
[   5: gave the seed to Eric                                          ]
[ 100: quest refused /failed                                          ]

[ HP states of Erica                                                  ]
[   0: virgin in the Bunker                                           ]
[   1: in the Bunker                                                  ]

[ Thirst states of Erica (for the smell)                              ]
[   0: Smells female + fertile                                        ]
[   1: Smells male + pregnant pussy                                   ]

[ Libido states of Erica (for reactions against a player furling)     ]
[   0: Erica has never seen the player in Furling shape               ]
[   1: Erica has seen the player in Furling shape - is not frightened ]
			
[ Level states of Erica (for sex with the Felinoid)                   ]
[   0: starting state                                                 ]
[   1: Felinoid fucked her (unseen by the player)                     ]
[   2: Felinoid fucked her (unseen by the player, but she told them)  ]
[   3: Felinoid fucked her (seen by the player)                       ]
[   4: Player told her that they're okay with it                      ]
[  99: the player stopped the Felinoid from fucking her               ]

[ Lust states of Erica (for sex with David)                           ]
[   0: starting state                                                 ]
[   1: talked with David about Erica                                  ]
[   2: David talked with Erica                                        ]
[   3: ready for sex with David                                       ]
[   4: had sex with David                                             ]

instead of going inside from the Grey Abbey Library while (Dexterity of Erica is 0 and (hp of Eric is 10 or hp of Eric is 11)):
	move player to Bunker;
	if debugactive is 1:
		say "     DEBUG: ERIC/ERICA QUESTION[line break]";
	say "     As you come down the stairs and enter the bunker, you find Eric waiting for you. He swallows visibly, then walks up to you and says in a halting voice, 'I - I've been thinking. Maybe... if - you know,' he waves a hand at his crotch meaningfully, then takes a breath and continues, 'If the pussy is here to stay... wouldn't it be better if I saw this thing through all the way somehow? If I was a real woman? Not - stuck like this. Halfway. A freak for some...'";
	say "     It's clear that the young man is pretty unsure about his whole body image, even though he may have accepted his new gender. And now he turns to you, his saviour, hoping that you'll make a decision for him. Better choose well, Eric will take what you say next to heart.";
	say "     [line break]";
	say "     So, what do you tell him?";
	say "     (Y) - That he's perfect as he is and shouldn't worry about what others think.";
	say "     (N) - That you'll support his wish to become fully female.";
	if player consents:
		say "     [line break]";
		say "     Gently putting a hand on Eric's shoulder, you talk to him until he calms down and say that he shouldn't have to change to conform to anyone's views. What's important is that he feels good in his own skin. After a short conversation in which you build up his confidence in himself, reminding him of his athletic archievements and all that, the cuntboy gives a relieved smile and puts his idea of maybe being a woman to rest.";
		now dexterity of Erica is 100; [Erica transformation quest blocked]
	otherwise:
		say "     [line break]";
		say "     Gently putting a hand on Eric's shoulder, you talk to him until he calms down and say that completing his transformation might be best. Just as long as it's what he himself really wants, not simply conforming to anyone else's views. After a short conversation in which he mulls it over again, then decides that he truly wants to be a full woman. A moment later, the young man says, 'Ha - here I am talking like I got a transformation pill in my pocket. Since it seems that the nanites can't finish what they started, we don't even know if there is a way to do this.'";
		say "     At least on that front, you've got an idea. Magic might help out where technology fails. There could be any number of helpful artifacts in the depths of the [bold type]museum[roman type]. Maybe you should visit it sometime...";
		now dexterity of Erica is 1; [Erica transformation quest step 1 - Talk to Valerie]	
	
[ Next part of the quest in /Sarokcat/Museum.i7x (talking to Valerie)]

Temple of Hera is a situation.
The sarea of Temple of Hera is "Museum".
when play begins:
	add Temple of Hera to badspots of guy;       [male soldiers]
	add Temple of Hera to badspots of furry;     [female husky involved]
	now Temple of Hera is resolved;

Instead of resolving a Temple of Hera:
	say "     After walking through the labyrinthine passages of the museum for quite a while, it becomes more and more obvious that something strange and unusual happened to this place when all the crazyness started. It's a bit hard to say with hallways seemingly looping around and suddenly having developed new forks when you get to a portion that you went through before, but your guess is that you're about half a mile deep in here. At least the glowing 'EXIT' signs that every room and hallway holds give you confidence that you'll find your way back out, as every time you tried, the museum foyer was just two or three rooms back - if one follows the green arrows...";
	say "     Almost ready to call of the search after stumbling into the Easter Islands exhibit - again - for the third time, your eyes suddenly notice a sign on the wall. 'Ancient Greece' is shown above a doorway flanked by two tall doric columns. Hopeful that you've finally found what you're looking for, you hastily make your way to the door and step through it - right into a large chamber that might just belong in an ancient temple. Marble plates cover the floor and walls, shining in an unearthly light that radiates from a large golden throne in the middle of the room and also adding in a slight echo. On it, a majestic-looking woman sits, garbed in a magnificent white tunic with gold embroidery at its edges. She sets down the large pomegranate in her hand on the armrest of the golden throne, then turns her beautiful visage to look at you.";
	say "     [WaitLineBreak]";
	say "     The woman's voice rings with power as she addresses you, 'Ah, there you are mortal. Finally. Did you take your time because you were afraid? Since that slanderer Homer, you people seem to think my domain is vengeance, not women and marriage.' A hint of annoyance crosses her features, then she gives a throwing-away gesture and adds with a little smile, 'Oh well, I'm a goddess - and he's dead.' She waits a second after the slight echo of her last word fades, then clears her throat and leans forward, 'But let's get to more current matters. You come before Hera with a request for your friend Eric. His, or rather her little problem. Fine. I will aid you after you have completed a task for me.' With that, Hera turns her head to the side and commands, 'Show yourself, child. Tell this [if cocks of player > 0 and cunts of player is 0]little man[otherwise if cocks of player is 0 and cunts of player > 0]woman[otherwise]being[end if] your story and needs.'";
	say "     A young woman steps out behind the golden throne, dressed in a similar, if less elaborate gown as Hera herself. Her eyes are a bit reddened, likely from by-now dried tears. She takes a deep breath and says, 'My name is Rebecca. I - We - me and my fiancee Joel were in the downtown area when things started to happen and... they took him from me! There were those bikers, and when he stepped between them and me to protect me, the leader just punched him out. And before I knew what was happening, he was bundled over a bike and they drove off!' She halts for a second, wiping away a new tear, then composes herself and adds, 'My mistress Hera told me he is alive and that you would come and help me. Please - find those guy's [bold type]hangout[roman type] in the [bold type]Junkyard[roman type] and bring Joel back to me!'";
	say "     [WaitLineBreak]";
	say "     Hera herself adds in, 'There you have it. Go forth and knock a few heads together - you mortals are good at that, aren't you...' With a slight flick of her wrist, you feel yourself pushed out the door, stumbling right into the museum foyer through it.";	
	now Dexterity of Erica is 3;

Biker Hangout is a situation.
The sarea of Biker Hangout is "Junkyard".
when play begins:
	add Temple of Hera to badspots of guy;       
	add Temple of Hera to badspots of furry;     

Instead of resolving a Biker Hangout:
	say "     After a while of seaching, you do find a chain-link gate that leads on to the junkyard proper from an adjoining dark alley. Near that back entrance, there is a run-down shack with three bikes parked in front of it. Seems you've found the hideout of the biker gang that kidnapped Joel. There is no one in sight right now, but where the bikes are, the bikers to go with them can't be far... so you decide to scout the place out stealthily first. As you carefully make your way through the piles of rusty cars and metal scrap, always using what concealment from observation through the shack's dirty windows you can get, you soon find out that there is another structure behind the shack - a chain link dog kennel. In it, you see the humanoid figure of an anthro dog lying on the ground, a short chain connecting his collar to an iron ring anchored in the concrete floor. From the looks of it, that chain doesn't even allow him to sit up, only to cower low to the ground or lie flat.";
	say "     Before you can even think of doing anything, a scruffy-looking, mostly human man comes out of a door at the back of the shack, holding a metal bowl in his hand. He casually strolls over to the kennel, then laughs as his shout of 'Hey Joey!' makes the canine flinch. Setting the bowl of dog kibble down on the ground, the man pulls a key ring from his pocket, unlocking the door into the kennel and stepping inside. 'Time to earn your food, doggie. Let's play hide the boner,' he says with a dark chuckle, rubbing the front of his pants with one hand. Rebecca's transformed fiancee just gives a resigned whine, then lifts himself off the ground to crouch on all fours with his rear end towards his captor, who opens up his fly to pull out an erect cock. Even so, the canine has to lean his head down because the chain just isn't any longer.";
	say "     [line break]";
	say "     [link](1)[as]1[end link] - Stop this. Now. (Attack)[line break]";
	say "     [link](2)[as]2[end link] - Wait till the man is 'busy', then knock him out from behind.";
	say "     [link](3)[as]3[end link] - Arrange a distraction.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to attack the man, [link]2[end link] to beat him over the head while he's... busy or [link]3[end link] to arrange for a distraction.";
	if calcnumber is 1: [fight]
		say "     You rush forward, engaging the man before he can abuse Joel any more.";
		challenge "Human Gangmember";
		if fightoutcome >= 20 and fightoutcome <= 29:									[lost]
			say "     Beaten, you fall down before the man's onslaught - but he doesn't stop hitting you, so enraged is he about your interference. 'So you thought you could just come here to our place and make trouble? Big mistake, buddy!' You're kicked and punched again and again, even harder when the biker's friends join him some moments later. Eventually, they drag you some distance away in the junkyard, laughing about leaving you to be devoured by a hydra. After they leave you, basically to die, the nanites infusing everything these days do their work, rebuilding your body and healing you in short order. Therefore you can actually get up and walk away, just minues later - long before the appearance of their supposed hydra.";
			say "    With the bikers now forewarned that someone wants to get Joel back from them, you don't think that you'll be able to do so. They are sure to be more vigilant from now on, so there is little choice but to abandon this quest. Making your way back to the library, you tell Eric about what happened. 'Thanks... at least you tried,' he replies, a tone of sadness in his voice as he finally accepts that he'll just have to stay a cuntboy.";
			now Dexterity of Erica is 100;
			move player to bunker;
		otherwise if fightoutcome >= 30:			[fled]			
			say "     Running off as quickly as you can, you leave the biker behind. It doesn't seem like he wants to follow you too much and instead gets busy fucking his 'pet' in short order. With the bikers now forewarned that someone wants to get Joel back from them, you don't think that you'll be able to do so. They are sure to be more vigilant from now on, so there is little choice but to abandon this quest. Making your way back to the library, you tell Eric about what happened. 'Thanks... at least you tried,' he replies, a tone of sadness in his voice as he finally accepts that he'll just have to stay a cuntboy.";
			now Dexterity of Erica is 100;
			move player to bunker;
		otherwise if fightoutcome >= 10 and fightoutcome <= 19:  			[won]		
			say "     Punching out the only lightly infected human, you bend down to pick up the key ring that he dropped during your fight and step forward to free the anthro canine. From this close up, you have your first real look at him - Joel has become a saluki, a slender and wiry breed of dog with a long and thin muzzle. With a short golden coat of fur and whitish-blond long hair on his ears and tail, as well as forming feathery fringes to his arms and legs, he looks pretty beautiful - even if the hair on his tail and the sides of his leg is crusted together by dried cum right now. It only takes a moment to free the young man from the collar padlocked to his neck, though he remains as he is, head lowered and shivering slightly. Man, these guys really did a number on him...";
			say "[JoelSaved]";
	otherwise if calcnumber is 2: [wait and hit]
		say "     As the human biker drops his pants and crouches down behind his anthro sex pet, then just rams his erection up Joel's abused asshole, you quietly pick up a rusty pipe from the piles of trash all around you. Walking towards the kennel while trying to stay out of sight from the shack windows at all times, you can't avoid stepping on some spots of rough gravel - but thankfully the gang-member doesn't hear you above the pained whining of his victim. And then, you're right behind him... raise the pipe and club the man over the head with a dull thunk. As his body falls forward on Joel's back, the transformed young man gives a frightened whine - at least until you hiss at him to keep quiet and that you're resucing him.";
		say "     [WaitLineBreak]";
		say "     Pulling the unconscious man off Rebecca's fiancee, you get your first real look at Joel - he has become a saluki, a slender and wiry breed of dog with a long and thin muzzle. With a short golden coat of fur and whitish-blond long hair on his ears and tail, as well as forming feathery fringes to his arms and legs, he looks pretty beautiful - even if the hair on his tail and the sides of his leg is crusted together by dried cum right now. It only takes a moment to free the young man from the collar padlocked to his neck, though he remains as he is, head lowered and shivering slightly. Man, these guys really did a number on him...";
		say "[JoelSaved]";
	otherwise: [distraction]
		say "     Dashing back towards the front of the shack, you move up next to one of the bikes, their owner's pride and joy - then give it a powerful shove that makes it fall over, crashing down on the gravelly ground with the sounds of splintering glass and dented metal. You do the same for a second bike, then rush towards the shack, pressing yourself against its wall right at the corner - and it works... the scruffy biker who was in the kennel a moment ago comes running to the front of the shack, right past where you're hiding around the corner. It's almost comical - since the man is naked from the waist down, his cock flapping in the wind as he passes you ...but then, you remind yourself just what the bastard was doing and the smile vanishes from your lips instantly. He curses loudly as he sees the damage on his bike and looks around (away from the shack) while bending over it to inspect the heavy machine.";
		say "     [WaitLineBreak]";		
		say "     Meanwhile, you duck behind the shack and get to the kennel as quickly as you can, pulling the key ring out of the biker's abandoned pants and stepping forward to free the anthro canine. From this close up, you have your first real look at him - Joel has become a saluki, a slender and wiry breed of dog with a long and thin muzzle. With a short golden coat of fur and whitish-blond long hair on his ears and tail, as well as forming feathery fringes to his arms and legs, he looks pretty beautiful - even if the hair on his tail and the sides of his leg is crusted together by dried cum right now. It only takes a moment to free the young man from the collar padlocked to his neck, though he remains as he is, head lowered and shivering slightly. Man, these guys really did a number on him...";
		say "[JoelSaved]";
		
to say JoelSaved:
	say "     Only when you gently put a hand on his shoulder and tell the saluki that his girlfriend sent you does he look up, focusing on you with sad eyes that widen as a small shimmer of hope flickers up in them. 'Rebecca? She... she's alive? I - I had lost all hope.' You are guiding the abused man from the kennel, softly explaining about his love being safe in the museum - when the shack back door opens and someone calls out, 'You done with the little bitch yet, Andy? Don't hog him all to yourself, other guys need to drain their balls too!' Then the man actually looks outside for the first time since he started talking, shouting, 'What the fuck! We got a poacher, and Andy is down! Bring the shotgun, Ulrich!'";
	say "     [WaitLineBreak]";
	say "     As the unwashed human snatches up a baseball bat from besides the door and rushes outside, you hear the sound of a weapon being loaded. Ohoh - time to get out of here! Hand on Joel's slender arm, you run for your lives - literally, as a shotgun blast only narrowly misses your head a moment later. You are lucky enough not to get hurt too much, other than a scratch resulting from a little piece of shrapnel, and do manage to lose the angry bikers. Finally coming to a stop and catching your breath on the far side of the junkyard, you're left with a skittish and frightened anthro dog, who lowers his head to look at your feet as he gives a pleading whine. 'Could you - bring me to her? Please, I just want to be back with Rebecca. If - if she'll take me like this.'";
	say "     Well, that's what you're here for after all, so you console Joel, telling him that they love each other and that a little fact like suddenly being different species doesn't change a thing about that. With the shy and still from time to time trembling man in tow, you make your way back to the museum, this time finding the sign to the greek wing after just a few rooms and hallways to walk through. Stepping into the temple of Hera, Joel is almost jumped by Rebecca, finding himself in a tight embrace with her kissing his muzzle deeply. Hera leans back on her throne and smiles as she watches the two of them kiss and talk to each other, then she eventually calls out, 'Present your mate before me, priestess.'";
	say "     [WaitLineBreak]";
	say "     Power vibrates in the air as the goddess eyes the anthro canine after his lover guides the pretty frightened man before her mistress. 'A gentle soul who will be faithful and a good father to your children, I see.' After giving this judgement and nodding to Rebecca with a smile, Hera's brows draw a bit together as she continues, 'But he has been... damaged, by his ordeal. So let this be my gift to your union.' With a wave of her hand, a small sphere of golden sparkles comes into existence around Joel's head, then flickers out a moment later. The effect leaves him to stand straighter and no longer looking as if he was expecting a kick at any moment. Instant psychotherapy, you guess...";
	say "     'I hearby declare you husband and wife,' Hera says in a regal tone, then watches with a smile as Rebecca pulls Joel with her towards a side door, an eager gleam in her eyes. Calling after the newlyweds, 'May Aphrodite bless you,' the goddess then turns to you. 'You have done your task, mortal. Here is the reward your friend needs from you. Plucking a single pomegranate seed out of the fruit that is one of her divine symbols, Hera throws it towards you, making you jump forward to catch it from the air. It is tiny, but lies heavily in your hand, almost thrumming with the power that it holds. Bowing deeply before the godess, you leave, arriving back at the museum foyer in short order.";
	move player to Museum Foyer;
	now Dexterity of Erica is 4;
	increase carried of pomegranate seed by 1;

Table of Game Objects (continued)
name	desc	weight	object
"pomegranate seed"	"A tiny seed, surrounded by red transparent pulp. It is surprisingly heavy and almost hums with inherent power."	1	pomegranate seed

instead of sniffing pomegranate seed:
say "Smells fruity.";

pomegranate seed is a grab object. pomegranate seed is not temporary.
the usedesc of pomegranate seed is "[pomegranate seed use]";

to say pomegranate seed use:
	say "After going through all the trouble of getting this thing in the first place, you shouldn't just eat it yourself. It's highly doubtful that you'd get another from Hera. Better give it to the intended recipient - Eric.";

Section 1 - Erica the female athlete

[Smells, Description, Conversation and NPC Interaction]

Erica is a woman. The hp of Erica is normally 0. The Dexterity of Erica is normally 0.
The description of Erica is "[Ericadesc]".
The conversation of Erica is { "Mew!" }.

instead of sniffing Erica:
	if thirst of Erica is 0: [Starting state]
		say "Erica has a pretty nice, enticing smell. Underlying that, there's a slight hint of the state of her female genitalia - fertile and ready.";
	if (thirst of Erica is 1): [pregnant]
		say "Erica has a pretty nice, enticing smell. Underlying that, there's a slight hint of the state of her female genitalia - it's notably different than when you first met her. Could it be she's expecting?";

to say Ericadesc:
	if debugactive is 1:
		say "DEBUG -> HP: [hp of Erica], THIRST: [thirst of Erica], LIBIDO: [libido of Erica], LUST: [lust of Erica], LEVEL: [level of Erica] <- DEBUG[line break]";
	say "     Erica is a college age young woman with ginger hair, light skin and quite a few freckles. Her unlined face has a very cute look to it and she often smiles while talking. she's wearing a black t-shirt that shows off the alluring bumps of her perky B-cup breasts. Under that, the college athlete has red running shorts on, giving you a good look at those long legs that clearly show she's a runner. All in all, a very nice package - nicely muscled, while still being lithe and lean. Her left underarm is bandaged.";
	say "			[line break]";
	say "     She's lived herself in in the bunker by now, and it looks like she has gone out and brought some more of her stuff in here in the meantime. Besides her camp bed there are several sports bags full of clothing and supplies, and a baseball bat rests against it for when she goes outside. You often see her stretching and working out - like right now for example, as you stop and watch her move her inviting lithe body. Erica notices you standing there, and gives you a shy smile, then goes on with her exercises.";

instead of conversing the Erica:
	say "     She says 'Thank you for everything. I feel... complete now.'";

Section 3 - Fucking Erica

Instead of fucking the Erica:
	if (hp of Erica is 0): [virgin woman]
		if (cocks of player > 0):
			say "     Stepping up to Erica, you embrace her and give her a deep kiss. When you come back up for air, you look deep into her eyes and ask to be her first man and show her what it really means to be a woman. There's only a short moment of hesitation, then Erica nods and leans her head forward to kiss you back.";
			say "     The two of you make out for a moment, holding on to each other. In between playful tongue-wrestling, you let your hands wander all over her, feeling up her slender body, cupping the perky breasts through her t-shirt and giving those nice firm buns of her ass a slight squeeze. While she still has the build of an athlete, it is clearly a female now, with feminine curves in addition to toned muscle. Eager to get get to know her more intimately, you grab her by the hand and lead the young woman to your bunk.";
			say "     Erica quickly takes off her shoes and socks, then pulls off her shirt and throws it aside, revealing a nicely defined chest - and the perfectly shaped mounds of her two B-cup breasts. You follow suit, rapidly sliding off your own clothing, then step close to your waiting partner. Gently cupping her breasts, you use your fingers to rub and brush over her nipples, making the young woman gasp for a second. Seems like your handsome student has gotten quite sensitive there after her transformation. With a smile on your face you lean down and run your tongue over her chest, then circle each of her nipples with its tip and finally suck on them. Making Erica pant in lust is a lot of fun, and with your nose pressed against her warm skin you also take a deep breath of her clearly feminine scent.";
			say "     [WaitLineBreak]";
			say "     Feeling Erica's readiness to move on, you soon push her back softly, making her sit, then lie on your camp bed. After that, you move your hands to the band of her shorts, pulling them down over her long legs as she raises her ass a bit to let the fabric slide over its smooth curve. Under them, a flimsy white tanga comes into view, making Erica show a moment of embarrassment as she says 'I really really like... soft panties against my skin. Good that I'm a real woman now, ha.' You lean in for a quick kiss, telling her how hot she looks in the skimpy underwear and then slide it off with great satisfaction.";
			say "     Now fully naked, Erica looks up from the bed to you, her eyes inevitably drawn to your by now rock-hard cock. With an inviting smile she spreads her legs for you, the lips of her slightly swollen pussy glistening with female juices. Eagerly, you climb on the bed with her, stroking her smooth legs as you kneel between them. Erica gasps as your dick touches her pussy the first time, followed by rapid panting as you rub up and down against its folds. Then you put your cockhead against her opening and slowly push forward, moaning in lust yourself as her nether lips spread for you, enveloping your shaft in a warm and tight embrace.";
			say "     Sliding deeper into her, your progress soon meets resistance as your cock pushes against a soft flexible barrier inside her - Erica's hymen. You lean down and put your arms around her then let your lips meet and give her a deep kiss. While distracting her with some playful tongue-wrestling, you push forward with your hips, increasing the pressure until you break through the thin flesh and make a real woman out of her.";
			say "     [WaitLineBreak]";
			say "     You rest your hard shaft inside Erica for a moment to allow her to get used to it, then start moving in and out, moaning in unison with your handsome athlete. Her legs wrap around your hips and pull you tight against her with each of your thrusts. Fucking this tight virgin pussy has you incredibly aroused and you have to control yourself pretty hard to last at least a little bit longer. And you're not the only one - soon Erica's moans and groans rise to a pretty noisy climax and you feel the femcum leak from her pussy and squirt out around around your cock. she pulls you down on top of her, going for a breathtaking kiss, then whispers 'Finish it - come inside me.'";
			say "     Giving her another quick kiss on the lips, you eagerly follow the beautiful student's request and pump your hips up and down rapidly, thrusting hard and deep into her body. With your cock already primed and ready to go, it takes just a few more thrusts for the cum to boil up from your balls and pulse through your cock, spurt after spurt blasting into her. You fill Erica's pussy with your fertile seed, feeling a deep satisfaction as you imagine the millions of little swimmers invading her womb in search of an egg. Your cock still inside her, the two of you move to lie on your sides on the bed, holding each other and reveling in post-coital bliss. Lying there, Erica softly strokes your side and says 'That was amazing - thank you.'";
			now hp of Erica is 1;
			now lastfuck of Erica is turns;			
		otherwise:
			say "     Stepping up to Erica, you embrace her and give her a deep kiss. she practically melts into your arms as you hold her, eagerly returning your attentions with more kisses while her hands roam over your body. Looks like she's ready and willing to lose her virginity now - too bad you don't have the right 'equipment' for that at the moment... better try again later once you've gotten a cock to fuck her with.";
	otherwise if (hp of Erica is 1): [female repeat sex]
		if (lastfuck of Erica - turns < 6):
			say "     As you approach Erica, she immediately sees the lust-filled twinkle in your eyes. Running a hand up the side of your arm and stroking your cheek, the attractive college student says, 'I love you baby, but I need some rest in between. Can we play another time?' She gives you a soft kiss on the lips as you nod, already thinking about what you want to do with her later.";
		otherwise:
			say "     You walk over to Erica, who immediately starts smiling as she sees the lust-filled twinkle in your eyes. Throwing her arms around you, her lips find yours for a quick kiss, then she suggestively nods over to her bunk.";
			wait for any key;
			say "[line break]";
			say "[EricaSexMenu]";
	
to say EricaSexMenu:
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her blow your cock";
		now sortorder entry is 1;
		now description entry is "Put your horny friend's mouth to good use";
	[]
	if (cunts of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Have her lick your pussy";
		now sortorder entry is 2;
		now description entry is "Put your horny friend's mouth to good use";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Finger her pussy";
	now sortorder entry is 3;
	now description entry is "Finger-fuck Erica to make her cum";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Fuck her pussy";
		now sortorder entry is 4;
		now description entry is "Fill the young woman with your cock";
	[]
	if (cocks of player > 0):
		choose a blank row in table of fucking options;
		now title entry is "Take Erica's ass";
		now sortorder entry is 5;
		now description entry is "Fill your horny friend's ass with your cock";
	[
	if hp of Erica is 1 and hp of David is 4 and lastfuck of David - turns >= 6: [Erica ready for sex with David, non-virgin cuntboy, David in the bunker and ready]
		choose a blank row in table of fucking options;
		now title entry is "Have David fuck Erica's pussy";
		now sortorder entry is 6;
		now description entry is "Make the soldier boy fuck Erica";
	[]
	if lust of Erica is 4 and hp of David is 4 and lastfuck of David - turns >= 6: [David+Erica had sex, David in the bunker and ready]
		choose a blank row in table of fucking options;
		now title entry is "Threesome with David and Erica";
		now sortorder entry is 7;
		now description entry is "Have some fun with both of them together";
	[]
	if (Level of Erica is 4 and (cocks of player > 0 or cunts of player > 0)): [talked with Erica about the felinoid fucking her and having approved]
		choose a blank row in table of fucking options;
		now title entry is "Threesome with the felinoid and Erica";
		now sortorder entry is 8;
		now description entry is "Have some fun with both of them together";
	]
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
				clear the screen and hyperlink list;
				now sextablerun is 1;
				if nam is "Have her blow your cock":
					say "[EricaSex1]";
				if nam is "Have her lick your pussy":
					say "[EricaSex2]";
				if nam is "Finger her pussy":
					say "[EricaSex3]";
				if nam is "Fuck her pussy":
					say "[EricaSex4]";
				if nam is "Take Erica's ass":
					say "[EricaSex5]";
				if nam is "Have David fuck Erica's pussy":
					say "[EricaSex6]";
				if nam is "Threesome with David and Erica":
					say "[EricaSex7]";
				if nam is "Threesome with the felinoid and Erica":
					say "[EricaSex8]";
				now lastfuck of Erica is turns;				
				wait for any key;
		otherwise if calcnumber is 100:
			say "Break off?";
			if the player consents:
				now sextablerun is 1;
				say "     You step back from the young woman, shaking your head slightly as she gives a questioning look.";
				wait for any key;
			otherwise:
				say "Pick between 1 and [the number of filled rows in the table of fucking options] or 100 to exit.";
		otherwise:
			say "Invalid Option.  Pick between 1 and [the number of filled rows in the table of fucking options].";
	clear the screen and hyperlink list;

to say EricaSex1: [cock sucked by Erica]
	say "     Staying right where you are, you give Erica's shoulders a soft push to make her crouch down before you. Pulling down your rapidly hardening [cock of player] cock, you stroke it a few times and then hold it out for her. The beautiful young woman licks the head playfully, then takes it into her mouth without any hesitation, clearly eager to satisfy your lust. She looks up at you adoringly with your manhood sliding in and out of her mouth - it's quite an arousing sight that makes you twitch and leak a small spurt of precum right on her tongue. You stroke the athletic student's neck, then run your hand through her red hair and grab hold of it. Pulling her mouth deeper onto your shaft, you start fucking her face, going slow at first for her to get used to it, then speed up and go deeper and deeper.";
	say "     Her soft lips and warm mouth around your cock give you an amazing feeling, making you moan in lust. She might be new to sucking cocks, but having been a male herself not too long ago, Erica clearly knows how to please you orally. And she's very eager and willing to learn, even going for a few deep throat moments after taking large breaths. With such a beautiful young woman eager to please, it doesn't take long until your balls tighten and your cock pulses with the burst after burst of cum it is depositing into Erica's mouth. After you finish cumming, she sticks her tongue out for a moment to let you see your white, creamy load, then closes her mouth and swallows it all down. Standing up, the slender beauty puts her arms around you and gives you a quick kiss, leaving you with a warm feeling and the taste of cum on your lips.";
	
to say EricaSex2: [cunt licked by Erica]
	say "     Strolling towards the bed you slide off your clothing, then lie down on it and spread your legs, telling Erica to give you pleasure with her tongue. She kneels down in front of the bed and moves one hand forward to spread your nether lips, then licks over them. 'Stacy always said I'm good at oral sex. And I... practiced a bit with my own after I got... transformed.'";
	say "     It's true - your eager student licks and fondles your sex expertly, making you moan in rising arousal in short notice. Looks like becoming a woman has given her an insight on the whole matter. After a quite pleasurable time where she rubs erogenous zones inside your pussy you barely knew existed, you moan loudly and orgasm, dripping female juices over her fingers. Erica just keeps going, fondling your lips as you shiver in pleasure and she slurps up your femcum. When she eventually stands up again, she gives you a deep kiss, sharing the taste of your own juices with you.";
	
to say EricaSex3: [Erica's cunt licked/fingered]
	say "     Taking Erica by the hand, you lead her over to the bed and push your hands under her shirt. Feeling up the firm muscles of her chest, then cupping the soft and round curves of her breasts for a moment, you take hold of the shirt's edge and pull it off her. Then it's time for her shorts, which you slide down those long runner's legs, stroking over Erica's soft skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front. Running your hands over her body, you pull Erica in for another quick kiss, then softly push her backwards against the bed and make her lie down on it. You stroke over the thin fabric of her panties with your fingers, making her moan needily. Looks like your female friend is about ready... you pull the panties off her body, revealing the swollen pussy between her legs, with its open and glistening lips.";
	say "     Kneeling down, you give a careful lick and taste her juices, then really go to town on her - licking and fondling her female bits until he's panting and squirming in arousal, her hands grabbing the sheets tightly. You keep going for quite a bit until suddenly she gives a lustful scream and orgasms, dripping femcum from her spread pussy. Sitting down beside her on the camp bed, you continue to softly stroke her body as she rides out the sexual high. When the attractive student finally comes down to normal a while later, she pulls you down to lie beside her and gives you a kiss. 'If I had known it'd be like this, I'd have jumped you the moment you came to me. Who wouldn't want to be a woman with you...'";

to say EricaSex4: [Erica's pussy fucked by player]
	say "     Taking Erica by the hand, you lead her over to her bed and push your hands under her shirt. Sliding up over smooth skin, you feel her firm abs for a moment and even reach as far up as the curves of her B-cup breasts. Covering those perfect orbs with your hands, you stroke over them and rub her nipples, which makes the athletic student pant in arousal. You almost have to force yourself to let go of them again, taking hold of the shirt next and pulling it over Erica's head. Then it's time for her shorts, which you slide down her long runner's legs, stroking over her soft skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
	say "     Running your hands over her body, you pull Erica in for another quick kiss, then softly push her backwards against the bed and make her lie down on it. You stroke over the thin fabric of her panties with your fingers, making her moan needily. Looks like your redheaded beauty about ready... slowly pulling the the panties off her body you reveal her swollen pussy with its open, glistening lips.";
	say "			[WaitLineBreak]";
	say "     Quickly stripping off your own clothing, you climb on the bed with Erica and kneel between her spread legs. She just looks so delicious, lying before you naked and beautyful, with an eager expression on her face. You barely manage to control the impulse to just plunge in and take her then and there, instead going slow and rubbing the tip of your cock up and down over her pussy lips and clit, making her pant in need. After pushing softly against her opening several times, then going back to more rubbing, Erica moans 'Please - I need you in me.'";
	say "     Following the female student's needful request, you aim your shaft and push forward, giving both your bodies the unity they craved for. As you sink deeper inside her, you lean down and make out with Erica, moaning into each other's mouth when you bottom out inside her. With the warm, tight hole around your cock, all restraint is soon forgotten and you start fucking her hard and deep. Erica gives lustful grunts to accompany the sound of your hips slapping against her crotch and wraps her arms and legs around you in an intimate embrace.";
	say "			[WaitLineBreak]";
	say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside her and fill her womb with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after her and you coming three times - you come to lie on the bed together in each other's arms. Erica gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss her forehead and wish you could stay like this forever, your arms around her and your softening cock still inside her cum-filled pussy. With a last thought you imagine your cum exploring her womb for an egg to create life with, then fall asleep yourself.";

to say EricaSex5: [fucking Erica's ass]
	say "     Taking Erica by the hand, you lead her over to her bed and push your hands under her shirt. Sliding up over smooth skin, you feel her firm abs for a moment and even reach as far up as the curves of her B-cup breasts. Covering those perfect orbs with your hands, you stroke over them and rub her nipples, which makes the athletic student pant in arousal. You almost have to force yourself to let go of them again, taking hold of the shirt next and pulling it over Erica's head. Then it's time for her shorts, which you slide down her long runner's legs, stroking over her soft skin as you go. Now your handsome athlete is almost naked before you, just wearing a skimpy white tanga already showing a little damp spot at the front.";
	say "     Running your hands over her body, you pull Erica in for another quick kiss, then softly push her backwards against the bed and make her lie down on it. You stroke over the thin fabric of her panties with your fingers, making her moan needily. Looks like your redheaded beauty about ready... slowly pulling the the panties off her body you reveal her swollen pussy with its open, glistening lips.";
	say "			[WaitLineBreak]";
	say "     Quickly stripping off your own clothing, you climb on the bed with Erica and kneel between her spread legs. She just looks so delicious, lying before you naked and beautyful, with an eager expression on her face. You barely manage to control the impulse to just plunge in and take her then and there, instead going slow and rubbing the tip of your cock up and down over her pussy lips and down the crack of her ass, making her pant in need.";
	say "     When you start pushing softly against her rear opening, Erica's eyes looking up at you get very round for a second. You don't think she had any anal sex before all this happened, but... after everything you've done for her, she is ready to try almost anything that you suggest. After the moment of hesitation, she smiles up at you, indicating to go on.";
	say "     With the female student now ready for it, you aim your shaft and push forward, giving both your bodies the unity they crave for. As you sink deeper inside her, you lean down and make out with Erica, moaning into each other's mouth when you bottom out inside her tight ass. With the warm hole around your cock, all restraint is soon forgotten and you start fucking her hard and deep. Erica gives lustful grunts to accompany the sound of your hips slapping against her and wraps her arms and legs around you in an intimate embrace.";
	say "			[WaitLineBreak]";
	say "     You fuck each other like sex-starved bunnies for at least an hour, only stopping for a moment when you cum inside her and fill her ass with your fertile seed, then make out a bit until you're ready to go on. It's a wild ride, but finally - after her and you coming three times - you come to lie on the bed together in each other's arms. Erica gives you a soft kiss on the lips, murmuring 'I love you.' before dozing off. You kiss her forehead and wish you could stay like this forever, your arms around her and your softening cock still inside her cum-filled hole. Then you too fall asleep.";
	
[ -------------------- ]

to say EricaSex6: [have David fuck Erica's pussy - first time]
	say "     You ask Erica if he's ready for some fun with David. she smiles, nodding before giving you another quick kiss on the lips. Taking Erica by the hand, you lead her over to David's camp bed and push your hands under her shirt. After feeling up her firm chest muscles for a moment, next you take hold of the shirt and pull it off her. Then it's time for the shorts, which you slide down her long runner's legs, stroking over her soft skin as you go. Now your handsome athlete is almost naked before you and an interestedly watching David, just wearing a skimpy white tanga already showing a little damp spot at the front.";
	say "     Running your hands over her body, you pull Erica in for another quick kiss, then softly push her backwards against the bed and make her lie down on it. You stroke over the thin fabric of her panties with your fingers, making her moan needily. Looks like your cuntboy is about ready... you pull the wisp of fabric off her body, revealing a ready pussy with open, glistening lips. Turning to David, whose looks are just roaming over Erica's naked body and her moist opening, you if he'd like to show your friend a good time. Explaining that he's just waiting for David's cock, you emphasize it by stroking Erica's sensitive pussy lips, making her moan loudly.";
	say "			[WaitLineBreak]";
	say "     You can see a wide-eyed David moisten her lips and swallow, then she breaks through the hesitation and steps up, taking your place between Erica's legs. she brings her hands forward, stroking Erica's lips, and is rewarded by a pleased moan by the young athlete. Emboldened by that, the soldier lowers her head and starts licking Erica's pussy. Standing besides the bed, you watch your two friends have oral sex, with David doing an admirable job of licking and fondling Erica, bringing her to a higher and higher state of arousal. Soon the handsome cuntboy's moans and gasps reach a new level of urgency, one you recognize as the need to get fucked.";
	say "     Stepping up behind David, you whisper to her that Erica is ready and she should take her now, after which you pull her shirt up and over her head. Then you reach around her to undo her pants, freeing her raging boner as you pull them down to her knees. Giving the young man a soft push and a playful slap on the bare ass, you start her moving forwards, climbing up on the bed between Erica's spread legs. With a swift and sure move, she does what comes natural next, sinking her manhood deep into Erica's warm folds and covering the slender athlete's body with his. Their moans get a bit muffled after that as they make out with each other hungrily.";
	say "			[WaitLineBreak]";
	say "     Not wanting to get between those two in their first time together, you just watch the soldier and college athlete wrestle with each other's tongues, then start fucking in earnest. David proves to be well versed in pleasing women ...or cuntboys - thrusting deep into Erica, adjusting her angle to hit just the right spots and knowing when it's best just to rest her shaft inside her pussy and lean in for a kiss. You stroke your own [if cocks of player > 0]cock[otherwise if cunts of player > 0]cunt[otherwise]body[end if] excitedly as you watch their hot coupling, thoughts already wandering to possible future threesomes.";
	say "     With the... enthusiasm those two show for fucking each other, it doesn't surprise you that not much later, Erica's gasps rise to lust-filled screams as she announces 'Ah. Ah! I'm... *gasp* ...coming!' With that, she throws her head back, eyes closed and tightly clutches on to David to ride out her orgasm. The young soldier stops for a while to give Erica a moment to catch her breath, then kisses her deeply while her hips grind against the cuntboy's crotch in a need-filled burst for the finish line. With a grunt, she suddenly stops with her shaft buried deep inside Erica's pussy, and bending down to look, you can see her balls twitch as they deliver burst after burst of her cum deep into Erica's womb.";
	say "			[WaitLineBreak]";
	say "     What a hot show. You leave the two of them alone to lie together on the bed, kissing and still connected by David's slowly softening cock...";
	now lust of Erica is 4;

to say EricaSex7: [threesome with David+Erica]
	say "     Running a hand through Erica's red hair, you give her a deep kiss, after which you ask if he'd like to mix things up a bit this time. Smiling at her curious expression, you run a finger along Erica's jawline, turning her head a bit so she looks towards the far side of the room. There, David is sitting on one of the unused beds with her back to you, reading a book.";
	say "     A boyish grin spreads over Erica's face as she nods, then pulls her shirt over her head and throws it over to her bunk. After kicking off her shoes, Erica's shorts follow the t-shirt, leaving her standing before you in only a small black tanga. Then even that is slid down her long runner's legs - albeit slower, to give you a bit of a show. Stepping up to you, she strokes your [skin of player] skin and proceeds to strip you too, sensuously caressing your body while removing of any clothing you might have. When the two of you are naked, Erica raises a finger to her lips, then quietly walks over to where David is sitting. she takes care to stay behind the soldier, out of sight, and David doesn't notice anything until the cuntboy climbs on the bed behind her.";
	say "			[WaitLineBreak]";
	say "     Feeling the mattress give a bit, David looks over her shoulder. she starts saying 'Hey Erica -' until words fail her as her eyes wander lower, taking in the cuntboy athlete's nakedness. Erica doesn't really give David any time to recover her wits, moving besides her and going in for a deep kiss. Finding herself in a surprise makeout session, the book in the soldier's hands just gets dropped on the ground besides the bed, instantly forgotten as she reaches out to touch Erica's body. Swinging a leg on David's other side, Erica straddles her hips, then takes hold of the edge of David's t-shirt and peels it off her. Pushing against the young man's naked chest, Erica makes her lay back on the bed, then leans forward too for even more playful kissing.";
	say "     Getting pretty aroused by watching your two friends go at it, you decide it's time to join in. Stepping up to the bed, you kneel between David's legs and start rubbing her crotch through the tented fabric of her pants. Wow, he's really got a hardon going there, leaking precum to create a damp spot on the trousers. Happy to lend a helping hand, you undo the button and zipper of David's pants, pulling them open to free her raging boner. Taking hold of the long shaft, you stroke it a few times, then rub it against Erica's soft skin before you finally position the tip between the cuntboy's dripping pussy lips. Following an instinct as old as the human race, David thrusts upward with a lust-filled moan, burying her cock deep inside Erica's body. After that, all out fucking ensures, with Erica riding the hard shaft inside her pussy and David grinding up against her.";
	say "			[WaitLineBreak]";
	if cocks of player > 0:
		say "     [EricaSex7_1_Male]";
	otherwise:
		say "     [EricaSex7_2_Fondling]";

to say EricaSex7_1_Male: [cuntboy Erica, male/herm player]
	say "     What shall it be you want to do with your two boys? Get into Erica's vagina in a double-penetration [link](1)[as]1[end link], fuck Erica's ass [link](2)[as]2[end link], fuck David's ass [link](3)[as]3[end link] or maybe fondle David's hole as she fucks Erica [link](4)[as]4[end link]?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to double-penetrate Erica's vagina, [link]2[end link] to fuck Erica in the ass, [link]3[end link] to fuck David in the ass or [link]4[end link] to finger-fuck David's hole.";
	if calcnumber is 1: [double vaginal]
		say "     Standing up from between David's legs, your hard [cock of player] cock bumps against Erica's bottom. Resisting the urge to just take her then and there, you lean over Erica, running your hands up along her sides and planting a line of kisses on her spine. Finally you're holding her from behind, your arms around her chest and your cock resting hotly against her back. You ask Erica if you can do a double penetration with David, but he's too blissed out from getting fucked to even notice your words. Only when you playfully lick and nibble her earlobe does she really listen to your repeated question. Between her moans, she answers 'Go ahead. *pant* I trust you, you're my rescuing hero, remember?'";
		say "     Taking hold of your shaft with one hand, you aim your erection a bit lower, then slowly push into the cuntboy's pussy besides David. All three of you gasp and moan at the incredible sensations of the double penetration course through your bodies, with David's and your cocks rubbing up against each other and both of them stretching out Erica's pussy. You give them a moment to get used to the feeling, then start thrusting in and out, reveling in the tightness of Erica's hole. When David resumes thrusting too, your cocks rub against each other, giving another bit of extra stimulation.";
		say "			[WaitLineBreak]";
		say "     With the three of you fucking each other in a wild threesome, the arousal of everyone involved soon mounts higher and higher. David is the first one to pass the point of no return, suddenly stiffening under Erica, with her cock pulsing against yours as spurt after spurt of her seed is shot deep into Erica's pussy. Getting bred by the young man, her body being filled with fertile cum, drives Erica to climax just a moment later. she gasps in lust, holding on to David's chest as the orgasm makes her writhe in pleasure. You speed up your own thrusts into Erica's stretched hole, now wet and slippery with her femcum and David's load. The thought of your soldier friend's cum lubing your cock as it pounds into the cuntboy athlete's hole makes your lust go into overdrive. After just a few more thrusts you come, pumping your seed into Erica's body to join and mingle with David's.";
		say "			[WaitLineBreak]";
		say "     Exhausted by the hot fuck, you rest for a moment against Erica's back, your slowly softening shaft still inside her. David moves her head to the side a bit to look at you over Erica's shoulder, then gives a satisfied chuckle and says 'Man, you two are quite something.' followed by a long kiss on Erica's lips and her addressing you with 'Come on, join us on the bed.' After you step back a bit to give them room to move, David lies down lengthwise on the bed, with Erica on top of her and enough room for you next to them. You eagerly join them, alternating in making out with both. Soon, this leads over to all of you cuddling in post-coital contentment.";
	otherwise if calcnumber is 2: [fuck Erica's ass]
		say "     Standing up from between David's legs, your hard [cock of player] cock bumps against Erica's bottom. Taking hold of it with one hand, you aim your erection up a bit, then slowly push forward against the cuntboy's pucker. After a moment's resistance, it yields to your invading member, allowing you to slide inside her warm inner passage. Erica's hole stretched tight around your shaft gives you an incredible feeling, and the two of you moan in unison as you sink deeper and deeper. Suddenly you feel movement bump and rub against your cock - that must be David, her erection pumping in and out of Erica's other hole. So hot, to be able to feel her through the walls of Erica's insides.";
		say "			[WaitLineBreak]";
		say "     With the two of you fucking the Erica front and back, the arousal of everyone involved soon mounts higher and higher. David is the first one to pass the point of no return, suddenly stiffening under Erica, with her cock pulsing as spurt after spurt of her seed is shot deep into Erica's pussy. Getting bred by the young man, her body being filled with fertile cum, drives Erica to climax just a moment later. she gasps in lust, holding on to David's chest as the orgasm makes her writhe in pleasure. You speed up your own thrusts into Erica's asshole, eager to fill her with another load of cum. After just a few more thrusts you come, a huge load boiling up from your balls and shooting into Erica's body.";
		say "			[WaitLineBreak]";
		say "     Exhausted by the hot fuck, you rest for a moment against Erica's back, your slowly softening shaft still inside her. David moves her head to the side a bit to look at you over Erica's shoulder, then gives a satisfied chuckle and says 'Man, you two are quite something.' followed by a long kiss on Erica's lips and her addressing you with 'Come on, join us on the bed.' After you step back a bit to give them room to move, David lies down lengthwise on the bed, with Erica on top of her and enough room for you next to them. You eagerly join them, alternating in making out with both. Soon, this leads over to all of you cuddling in post-coital contentment.";
	otherwise if calcnumber is 3: [fuck David's ass]
		if lust of David is 0: [anal virgin]
			say "     After pulling off her shoes and socks you reach for David's hips, grabbing the sides of her open pants, then pull them down over her legs. Now both your cuntboy and soldier friend are completely naked. Standing up from between David's legs, your hard [cock of player] cock bumps against Erica's bottom. Seductive too, but your true target lies somewhere else. Raising David's legs, you spread them and bend your knees a little bit, rubbing your hard [cock of player] cock against her virgin bottom.";
			say "     This is such a nice opportunity to break her in for some good fucking that only just manage to hold back from plunging right in. Leaning forward to look at David around Erica's body on top of her, you ask her if you can fuck her ass. she doesn't really look at you, lying back on the mattress and moaning in lust - but she does nod and reach down to hold her legs up. Perfect. Taking hold of your shaft with one hand, you aim it a bit lower, then push in against her pucker. David gasps as her hole is spread for the first time by your invading member, but soon starts moaning even louder than before as you sink yourself deeper and deeper, rubbing against her prostrate.";
			now lust of David is 1; [anally de-virginized]
		otherwise:
			say "     After pulling off her shoes and socks you reach for David's hips, grabbing the sides of her open pants, then pull them down over her legs. Now both your cuntboy and soldier friend are completely naked. Standing up from between David's legs, your hard [cock of player] cock bumps against Erica's bottom. Seductive too, but your true target lies somewhere else. Raising David's legs, you spread them and bend your knees a little bit, rubbing your hard [cock of player] cock against her bottom.";
			say "     You can't wait to get back into this nice and tight soldier ass. Taking hold of your shaft with one hand, you aim it a bit lower, then push in against her pucker. David gasps in lust as her hole is spread by your invading member, then starts moaning even louder than before as you sink yourself deeper and deeper, rubbing against her prostrate.";
		say "			[WaitLineBreak]";
		say "     Pounding David's ass with deep thrusts, you revel in the moans, gasps and slapping noises of your hips against her ass filling the whole bunker. Who'd have thought that post-apocalyptic survival would be like this? Fucking the tight hole of a handsome man while your cute cuntboy friend rides her cock - hell yeah, you'd pick this any day against your 'normal' life before. But moving your thoughts back to the thing at hand - or rather the hole you're balls deep in - you decide to change your rhythm of thrusts to match Erica's sliding up and down.";
		say "     Being penetrated at the same time as sliding into a pussy with her own cock has David pretty hot and bothered, and before too much longer, she moans 'I'm gonna... cummMMM!' she grabs Erica's hips to pull her tight against her crotch as her whole body shudders when spurt after spurt of cum shoot out of her cock and into Erica's waiting pussy. Getting bred by the young man, her body being filled with fertile cum, drives Erica to climax just a moment later. she gasps in lust, holding on to David's chest as the orgasm makes her writhe in pleasure. Meanwhile, your thrusting member being gripped by David's twitching anal muscles gives you the last bit of stimulation you needed too. Shoving your cock in all the way as you feel the need to cum rise inside your balls, a massive load of cum blasts through your shaft and into David's hole.";
		say "			[WaitLineBreak]";
		say "     Exhausted by the hot fuck, you rest for a moment against Erica's back, your slowly softening shaft still inside David. The solder moves her head to the side a bit to look at you over Erica's shoulder, then gives a satisfied chuckle and says 'Man, you two are quite something.' followed by a long kiss on Erica's lips and her addressing you with 'Come on, join us on the bed.' After you step back a bit to give them room to move, David lies down lengthwise on the bed, with Erica on top of her and enough room for you next to them. You eagerly join them, alternating in making out with both. Soon, this leads over to all of you cuddling in post-coital contentment.";
	otherwise: [fondle David's ass]
		say "     [EricaSex7_2_Fondling]";

to say EricaSex7_2_Fondling: [cuntboy Erica]
	say "			[WaitLineBreak]";
	if cocks of player > 0: [male player]
		say "     You decide to give your soldier-boy a little bit of anal attention. After pulling off David's shoes and socks you reach for her hips, grabbing the sides of her open pants, then pull them down over her legs. Now both your cuntboy and soldier friend are completely naked, an arousing sight to which you start jerking your erect manhood. Looking up at Erica sliding herself up and down on David's hard shaft, you stroke the soldier's inner thighs, then move your fingers up to her asshole. Rubbing lightly at first, then pushing in against it, your finger penetrates David's rear entrance, causing her to gasp in between her moans at fucking Erica.";
		say "			[WaitLineBreak]";
		say "     Slowly fingering the young man, you wait till you hear Erica's pants come faster and faster, showing he's getting close, then push deeper and caress David's prostrate. With you carefully giving her some extra stimulation, you manage to push David over the edge to orgasm just as Erica reaches her climax too, making them come at the same time. Satisfied, you cup David's balls with your other hand, feeling them pulse and twitch as they deliver her fertile seed deep into Erica's body. That's so hot - pumping your fingers up and down over the hard shaft of your cock, you soon reach the point of no return yourself, spraying long strings of cum on the ground.";
		say "     After David finishes cumming in the cuntboy athlete's vagina and has time to catch her breath, she gives a satisfied chuckle and says 'Man, you two are quite something.' followed by a long kiss on Erica's lips. Not wanting to leave you out, she then moves to lie lengthwise on the bed, with Erica lying on top of her and room for you next to them. You eagerly join them, alternating in making out with both. Soon, this leads over to all of you cuddling in post-coital contentment.";
	otherwise if cunts of player > 0: [female player]
		say "     You decide to give your soldier-boy a little bit of anal attention. After pulling off David's shoes and socks you reach for her hips, grabbing the sides of her open pants, then pull them down over her legs. Now both your cuntboy and soldier friend are completely naked, an arousing sight to which you start fingering yourself. Looking up at Erica sliding herself up and down on David's manhood, you stroke the soldier's inner thighs, then move your fingers up to her asshole. Rubbing lightly at first, then pushing in against it, your finger penetrates David's rear entrance, causing her to gasp in between her moans at fucking Erica.";
		say "			[WaitLineBreak]";
		say "     Slowly fingering the young man, you wait till you hear Erica's pants come faster and faster, showing he's getting close, then push deeper and caress David's prostrate. With you carefully giving her some extra stimulation, you manage to push David over the edge to orgasm just as Erica reaches her climax too, making them come at the same time. Satisfied, you cup David's balls with your other hand, feeling them pulse and twitch as they deliver her fertile seed deep into Erica's body. That's so hot - you wish it was you with David's cock inside you. Pumping your caressing fingers in and out of your own cunt, you soon orgasm, imagining you're feeling David's shaft move inside you.";
		say "     After David finishes cumming in the cuntboy athlete's vagina and has time to catch her breath, she gives a satisfied chuckle and says 'Man, you two are quite something.' followed by a long kiss on Erica's lips. Not wanting to leave you out, she then moves to lie fully on the bed, with Erica lying on top of her and room for you next to them. You eagerly join them, alternating in making out with both. Soon, this leads over to all of you cuddling in post-coital contentment.";
	otherwise: [neuter player]
		say "     You decide to give your soldier-boy a little bit of anal attention. After pulling off her shoes and socks you reach for her hips, grabbing the sides of her open pants, then pull them down over her legs. Now both your cuntboy and soldier friend are completely naked. Looking up at Erica sliding herself up and down on David's manhood, you stroke the soldier's inner thighs, then move your fingers up to her asshole. Rubbing lightly at first, then pushing in against it, your finger penetrates David's rear entrance, causing her to gasp in between her moans at fucking Erica.";
		say "			[WaitLineBreak]";
		say "     Slowly fingering the young man, you wait till you hear Erica's pants come faster and faster, showing he's getting close, then push deeper and caress David's prostrate. With you carefully giving her some extra stimulation, you manage to push David over the edge to orgasm just as Erica reaches her climax too, making them come at the same time. Satisfied, you cup David's balls with your other hand, feeling them pulse and twitch as they deliver her fertile seed deep into Erica's body.";
		say "     After David finishes cumming in the cuntboy athlete's vagina and has time to catch her breath, she gives a satisfied chuckle and says 'Man, you two are quite something.' followed by a long kiss on Erica's lips. Not wanting to leave you out, she then moves to lie fully on the bed, with Erica lying on top of her and room for you next to them. You eagerly join them, alternating in making out with both. Soon, this leads over to all of you cuddling in post-coital contentment.";

to say EricaSex8: [threesome with Felinoid+Erica]
	say "     Running a hand through Erica's red hair, you give her a deep kiss, after which you ask if he'd like to mix things up a bit this time. Smiling at her curious expression, you run a finger along Erica's jawline, turning her head a bit so she looks towards the far side of the room. There, your felinoid companion is lounging on her side on one of the unused beds, her golden eyes opening from time to time to look around, then closing again as she goes back to dozing peacefully.";
	say "     A boyish grin spreads over Erica's face as she nods, then pulls her shirt over her head and throws it over to her bunk. After kicking off her shoes, Erica's shorts follow the t-shirt, leaving her standing before you in only a small black tanga. Then even that is slid down her long runner's legs - albeit slower, to give you a bit of a show. Stepping up to you, she strokes your [skin of player] skin and proceeds to strip you too, sensuously caressing your body while removing of any clothing you might have. When the two of you are naked, Erica raises a finger to her lips, then quietly walks over to where the felinoid is lying.";
	say "			[WaitLineBreak]";
	say "     Crouching down besides the bed the felinoid is lying on, Erica starts rubbing the big cat's belly fur, which quickly is answered by a resounding purr from the big beast. she slowly moves one of her stroking hands lower and lower until she reaches the felinoid's crotch, then cups the feline's furry balls, gently massaging them. By now, the large cat has raised her head to look down on Erica and you've moved in to scratch her behind the ears and on her chin. Soon, the felinoid's barbed cock starts poking out of its she ath, quickly hardening to its full glory. Erica goes on to grab the great cat's shaft and jerks on it while her other hand moves to her own crotch to rub an increasingly wet and dripping pussy. You notice the felinoid's entrancing musk starting to fill the air - not that she needs it this time, with two willing partners coming to her on their own.";
	say "     With the felinoid all relaxed from all the stroking and scritching, perfectly willing to let you two continue pleasing her, she just keeps on purring loudly as you take a muscular foreleg and Erica one of the hind legs and pull on them. It's pretty easy to roll the big feline over on her back, putting her in a stretched out position on the bed, legs spread and her manhood standing proudly erect. Giving you a wide smile, Erica climbs on top of the felinoid, bracing herself against the cat's muscular underside as she lowers herself down on its crotch. The cuntboy athlete gives a lust-filled pant as she feels the felinoid's cock start to spread her pussy lips, followed by a loud gasp as the big beast thrusts her hips up a bit with a growl and sinks herself halfway into the human.";
	say "			[WaitLineBreak]";
	say "     After getting in that first thrust, the felinoid relaxes again, content in letting the horny cuntboy on top of her fuck herself on her stiff pole. Which Erica does, with a lot of enthusiasm. Bouncing up and down on the feline shaft, your friend moans loudly and runs her hands through the large animal's belly fur, soon totally lost in the moment.";
	say "     [line break]";
	say "     Getting pretty aroused by watching your two friends go at it yourself, you decide it's time to join in.";
	if cocks of player > 0:
		say "     [EricaSex8_1_Male]";
	otherwise:
		say "     [EricaSex8_2_Male]";

to say EricaSex8_1_Male: [cuntboy Erica]
	say "     [line break]";
	say "     What shall it be you want to do with your cuntboy and felinoid friends? Fuck Erica's ass [link](1)[as]1[end link], or rather the felinoid's ass [link](2)[as]2[end link], maybe get a blowjob from Erica [link](3)[as]3[end link] or present your manhood to the felinoid to have her lick it [link](4)[as]4[end link]?";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		otherwise:
			say "Invalid choice.  Type [link]1[end link] to fuck Erica's ass, [link]2[end link] to fuck the felinoid in the ass, [link]3[end link] to get a blowjob from Erica or [link]4[end link] to have the felinoid lick your cock.";
	say "     [line break]";
	if calcnumber is 1: [fuck Erica]
		say "     Getting on the bed between the felinoid's legs, you snake your arms around Erica from behind, caressing her smooth chest. As the cuntboy athlete eagerly leans into your touch, you plant a line of little kisses from her neck up to her right earlobe, playfully nibbling at it before you whisper that you want to fuck her in the ass. The young man looks back and gives you a smile over her shoulder, then leans forward, stretching her upper body out over the felinoid's furry belly while raising her ass a bit for you. Who could resist such an alluring display? You're almost twitching with the need and desire to fuck your handsome friend when you take hold of your manhood and line it up with her butt. Moving forward, you press the cockhead against her pucker, first lightly, then a bit harder until it it finally yields to your invading member.";
		say "			[WaitLineBreak]";
		say "     Grunting in satisfaction, you thrust deeper into your human friend, revelling in the sensations of her insides gripping your shaft tightly. You keep still a while longer, just resting your cock inside her to give Erica a time to get used to it - then suddenly she starts rocking back and forth, fucking herself on your and the felinoid's cocks at the same time. As she moves, you feel movement bump and rub against your cock - that must be the felinoid, her erection pumping in and out of Erica's other hole. So hot, to be able to feel her through the walls of Erica's insides.";
		say "     With the two of you balls deep inside Erica as she fucks herself on your cocks, the arousal of everyone involved soon mounts higher and higher. The felinoid is the first one to pass the point of no return, suddenly stiffening under Erica and giving a satisfied roar, with her cock pulsing as spurt after spurt of her seed is shot deep into Erica's pussy. Getting bred by the large beast, her body being filled with fertile cum, drives Erica to climax just a moment later. she gasps in lust, holding on to the felinoid's soft belly fur as the orgasm makes her writhe in pleasure. You speed up your own thrusts into Erica's asshole, eager to fill her with another load of cum. After just a few more thrusts you come, a huge load boiling up from your balls and shooting into Erica's body.";
		say "			[WaitLineBreak]";
		say "     Exhausted by the hot fuck, you rest for a moment against Erica's back, your slowly softening shaft still inside her. The felinoid meanwhile just leans her head back in total relaxation, and you can literally feel her resounding purr through Erica lying on the feline's chest. Erica gives a satisfied sigh, then says 'Man, you two are quite something.' while reaching back and stroking your side lovingly. After a while longer in this position, gently touching each other, an exhausted Erica sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against her warm fur and with an arm and a leg still draped over her. Sadly, there isn't any more room on the bed, with the large shape of the felinoid and your handsome cuntboy already on it, so you leave them to cuddle and rest and go to collect your clothes.";
	otherwise if calcnumber is 2: [fuck felinoid]
		say "     Getting on the bed between the felinoid's legs, you snake your arms around Erica from behind, caressing her smooth chest. As the cuntboy athlete eagerly leans into your touch, you plant a line of little kisses from her neck up to her right earlobe, playfully nibbling at it before you whisper that you want to fuck the felinoid in the ass and she should distract the big kitty a bit. The young man looks back and gives you a smile over her shoulder, then leans forward, stretching her upper body out over the felinoid's furry chest while stroking her with her hands and pumping her own hips rapidly up and down on the big cat's hard shaft. At the same time, you take hold of your own cock and line it up with the tight hole under the felinoid's tail. Moving forward, you press the cockhead against her pucker, first lightly, then a bit harder until it finally yields to your erect member.";
		say "			[WaitLineBreak]";
		say "     Before she realizes what's happening and can do much more than start a surprised rumble in her throat, you're balls-deep in the felinoid's ass, hitting sensitive spots that make her purr even louder than before. Grunting in satisfaction, you thrust deeper into your feline friend, revelling in the sensations of her insides gripping your shaft tightly. You start sliding in and out of her hole while putting your hands on the big cat's muscular hind legs. Holding on to them as you pound the felinoid's ass, you find a rhythm with Erica, slamming into her furry butt just as Erica pulls up and vice versa. It's an amazing feeling to be moving in concert with your two companions, all of you in a lust-filled haze.";
		say "     With you fucking the felinoid's ass while Erica fucks fucks herself on her cock, the arousal of everyone involved soon mounts higher and higher. The felinoid is the first one to pass the point of no return, suddenly stiffening under Erica and giving a satisfied roar, with her cock pulsing as spurt after spurt of her seed is shot deep into Erica's pussy. Getting bred by the large beast, her body being filled with fertile cum, drives Erica to climax just a moment later. she gasps in lust, holding on to the felinoid's soft belly-fur as the orgasm makes her writhe in pleasure. Meanwhile, you speed up your own thrusts into the big cat's asshole, eager to fill her with your own load of cum. After just a few more thrusts you come, a huge load boiling up from your balls and shooting deep into the felinoid's body.";
		say "			[WaitLineBreak]";
		say "     Exhausted by the hot fuck, you rest for a moment against Erica's back, your slowly softening shaft still inside the big feline under her. The felinoid meanwhile just leans her head back in total relaxation, and you can literally feel her resounding purr through Erica lying on the great beast's chest. Erica gives a satisfied sigh, then says 'Man, you two are quite something.' while reaching back and stroking your side lovingly. After a while longer in this position, gently touching each other, an exhausted Erica sinks off the felinoid to the side, coming to a rest against the large cat's flank, pressed against her warm fur and with an arm and a leg still draped over her. Sadly, there isn't any more room on the bed, with the large shape of the felinoid and your handsome cuntboy already on it, so you leave them to cuddle and rest and go to collect your clothes.";
	otherwise if calcnumber is 3: [BJ from Erica]
		say "     Stepping up to stand on the bed, your feet left and right of the felinoid's body, you smile down at Erica and hold out your hard [cock of player] shaft to her. she stops her movements on top of the large cat for a moment, sitting still with the large spined shaft deep in her pussy while she reaches out to grasp your cock and fondle your balls. Your eager cuntboy friend licks her lips, then gets to work sucking you off, taking the tip of your member into her mouth and running her tongue over it. After going down on your shaft all the way a few times, she starts sliding up and down on the felinoid's erection once again, timing it with bobbing her head towards you.";
		say "			[WaitLineBreak]";
		say "     Taking the felinoid's shaft deep in her pussy while she sucks you off, with its small spines rubbing her inner walls and causing incredible sensations, it doesn't take too much longer until Erica's arousal peaks. With her lips tightly wrapped around your [cock of player] shaft, the cuntboy athlete gives a somewhat muffled but still loud moan from her throat, a shudder running through her whole body as she comes. Femcum trickling down the felinoid's shaft and Erica's inner muscles gripping her cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar and her cock starts pulsing with spurt after spurt of her seed shooting into Erica's pussy. The handsome cuntboy lowers her hand to the height of her belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With her breathing deeply and still in the grip of her own orgasm, you take hold of your erect manhood and jerk it, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, blasting your load all over Erica's face, neck and chest. The now pretty splattered human gives you a broad smile, then reaches up to pull you down to her level and kiss her, after which you proceed to lick your own cum off her and share its taste while making out.";
		say "			[WaitLineBreak]";
		say "     Keeping her position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside her, Erica eventually slides off the felinoid to the side, coming to rest against the large cat's flank. There she rests, pressed against the loudly purring feline's warm body and with an arm and a leg still draped over her. Sadly, there isn't any more room on the bed, with the large shape of the felinoid and your handsome cuntboy already on it, so you leave them to cuddle and rest and go to collect your clothes.";
	otherwise if calcnumber is 4: [BJ from felinoid]
		say "     Stepping up to stand against the head end of the bed, you give the felinoid's chin an affectionate scratch, then hold out your hard [cock of player] shaft to her. The large cat looks at you with her golden eyes, then down at Erica riding her shaft and back at you. Finally giving an amicable growl, she nuzzles upwards into your groin, teasing your [cock size desc of player] [cock of player] shaft. A rough tongue flicks out across sensitive flesh, taking special care to carefully lap over your balls and tease the underside of your shaft.";
		say "			[WaitLineBreak]";
		say "     While you're getting head from the large beast, Erica rides her spined cock with unabated vigor moaning and gasping loudly at the sensations it gives her. With how much she enjoys riding the big cat, it doesn't take too much longer until Erica's arousal peaks. Panting unintelligible sounds in her lust, the cuntboy athlete rises up and slams herself down on the hard erection under her, a shudder running through her whole body as she comes. Femcum trickling down the felinoid's shaft and Erica's inner muscles gripping her cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar herself and her cock starts pulsing with spurt after spurt of her seed shooting into Erica's pussy. The handsome cuntboy lowers her hand to the height of her belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With her breathing deeply and still in the grip of her own orgasm, you take hold of your erect manhood and jerk it, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, blasting your load all over the felinoid's furry face, with a few shots landing in her open muzzle. The big cat gives a pleased mrowl at the taste of your seed, using her long tongue to lick up any that landed in the fur around her muzzle. Smiling at that, you help her out by wiping up any that she can't reach with your fingers and holding them out for her to lick your cum off. Then you step closer to Erica, leaning forward to give her a deep kiss.";
		say "			[WaitLineBreak]";
		say "     One kiss follows another and Erica keeps her position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside her, before eventually sliding off the felinoid to the side, coming to rest against the large cat's flank. There she rests, pressed against the loudly purring feline's warm body and with an arm and a leg still draped over her. Sadly, there isn't any more room on the bed, with the large shape of the felinoid and your handsome cuntboy already on it, so you leave them to cuddle and rest and go to collect your clothes.";

to say EricaSex8_2_Male: [cuntboy Erica]
	say "     Your pussy is almost dripping with arousal and you're ready to have someone lick it - though who shall it be? Erica (Y) or the felinoid (N)?";
	if player consents: [BJ from Erica]
		say "     [line break]";
		say "     Stepping up to stand on the bed, your feet left and right of the felinoid's body, you smile down at Erica and demonstratively rub over your pussy lips, holding them apart for her. she stops her movements on top of the large cat for a moment, sitting still with the large spined shaft deep in her pussy while she reaches out to touch your privates, softly brushing against your clit. Your eager cuntboy friend licks her lips, then gets to work eating you out, taking great care in teasing your most sensitive spots. After a moment of giving you her full attention, she starts sliding up and down on the felinoid's erection once again, timing it with licking you.";
		say "			[WaitLineBreak]";
		say "     Taking the felinoid's shaft deep in her pussy while she gives oral to you, with its small spines rubbing her inner walls and causing incredible sensations, it doesn't take too much longer until Erica's arousal peaks. After another lick that makes you shudder with need, the cuntboy athlete gives a loud moan from her throat, a shudder running through her whole body as she comes. Femcum trickling down the felinoid's shaft and Erica's inner muscles gripping her cock like a vise make sure that it is only moments later that the big cat lets out a satisfied roar and her cock starts pulsing with spurt after spurt of her seed shooting into Erica's pussy. The handsome cuntboy lowers her hand to the height of her belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With her breathing deeply and still in the grip of her own orgasm, you put your fingers to work on your pussy in earnest, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, a squirt of femcum hitting Erica in the chest to run down over her smooth skin and more of it dripping down on the felinoid's belly-fur. Your human friend gives you a broad smile, then reaches up to pull you down to her level and kiss her.";
		say "			[WaitLineBreak]";
		say "     One kiss follows another and Erica keeps her position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside her. she eventually slides off the felinoid to the side, coming to rest against the large cat's flank. There she rests, pressed against the loudly purring feline's warm body and with an arm and a leg still draped over her. Sadly, there isn't any more room on the bed, with the large shape of the felinoid and your handsome cuntboy already on it, so you leave them to cuddle and rest and go to collect your clothes.";
	otherwise: [BJ from felinoid]
		say "     [line break]";
		say "     Stepping up to stand against the head end of the bed, you give the felinoid's chin an affectionate scratch, then get on the bed to kneel over her head. her long whiskers tickle against your legs as the large cat nuzzles upwards into your groin, sniffing your moist and ready pussy. Then she starts to lick you, her rough tongue carefully lapping over sensitive flesh and seeking out your clit.";
		say "			[WaitLineBreak]";
		say "     While you're getting oral attention from the large beast, Erica rides her spined cock with unabated vigor moaning and gasping loudly at the sensations it gives her. With how much she enjoys riding the big cat, it doesn't take too much longer until Erica's arousal peaks. Panting unintelligible sounds in her lust, the cuntboy athlete rises up and slams herself down on the hard erection under her, a shudder running through her whole body as she comes. Femcum trickling down the felinoid's shaft and Erica's inner muscles gripping hiss cock like a vise make sure that it's only moments later that the big cat lets out a satisfied roar herself and her cock starts pulsing with spurt after spurt of her seed shooting into Erica's pussy. The handsome cuntboy lowers her hand to the height of her belly button, revelling in the feeling of being bred by the large feline creature.";
		say "     With the felinoid busy savouring her own orgasm, you put your fingers to work on your pussy in earnest, eager to join your two partners in climax. It's not much longer before your frantic movements push you over the edge to your release and you come, a squirt of femcum hitting the felinoid's muzzle and more of it dripping down on the fur on her neck. The big cat gives a pleased rumble, licking it off her muzzle and lapping at your crotch a few times to get a bit more of a taste.";
		say "			[WaitLineBreak]";
		say "     Erica keeps her position for a while longer, straddling the felinoid's hips with the beast's softening shaft inside her. she eventually slides off the felinoid to the side, coming to rest against the large cat's flank. There she rests, pressed against the loudly purring feline's warm body and with an arm and a leg still draped over her. Sadly, there isn't any more room on the bed, with the large shape of the felinoid and your handsome cuntboy already on it, so you leave them to cuddle and rest and go to collect your clothes.";

Section 4 - Events
[
instead of navigating Grey Abbey Library while (level of Erica is 0 and Felinoid Companion is tamed and (hp of Erica is 1) and (lastfuck of Erica - turns) > 12):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: ERICA FIRST FELINOID SEX WALKIN [line break]";
	if hp of Erica is 1: [had sex with the player]
		say "     As you enter the library, you see Erica walk in between two of the long she lves, intently scanning over the titles of the books. Now that you think of it, he's been spending quite a bit of her time up here lately, picking out books and reading. Well, it's something interesting to do at least. Just as you start turning away to leave her to her reading, you see the large shape of your felinoid companion silently stalk after Erica. Knowing the large cat's libido-driven behaviour, you see where this might lead...";
		say "     [line break]";
		say "     Do you want to go after them to see what happens and maybe do something about it (Y), or do you just leave them to it and turn to other things (N)?";
		if player consents: [follow]
			say "     [line break]";
			say "     Walking into the same space between the bookshelves that you saw your two companions go into, you spot Erica some distance ahead of you, still checking out books and being totally oblivious to the felinoid stalking her. Then the large cat catches up with her, rubbing her flank against the human athlete's hips and making a resounding purring sound in her throat. Erica is easily taken in by the felinoid's affectionate behaviour, petting the large creature as she circles her, rubbing up against Erica's body and flirting her long tail in front of the human's face.";
			say "     Soon Erica crouches down, her hands busy rubbing the felinoid's belly fur and behind her ears in something of a trance. she brushes her cheek against the large cat's soft fur and breathes in deep, now completely succumbing to her pheromone-laden scent. A low and throaty sound comes from the felinoid, almost a feline chuckle, then she bumps Erica with her shoulder, making her fall forward on all fours.";
			say "     [line break]";
			say "     Do you want to watch the felinoid mount Erica (Y) or will you step in and snap her out of the trance (N)?";
			if player consents:
				say "     [line break]";
				say "     With the young athlete just dazedly resting on all fours, the felinoid uses large paws to pat at her pants, soon managing to hook a paw under the shorts band and pull it down, revealing that Erica went commando today. The large cat gives her entranced human a deep sniff, then starts to lick between the legs, lapping away at Erica's open pussy lips. After a moment of making the cuntboy pant and moan, the felinoid then gives her a lick over the small of her back before finally moving to stand completely over the smaller human, nuzzling at her neck while bumping against her butt with a hard and erect spined cock.";
				say "     Lowering her hips and doing small probing thrusts, the felinoid soon finds the opening of Erica's moist and ready pussy and plunges in. With a satisfied roar, she sinks all of her manhood inside, then starts fucking her with powerful and deep thrusts. Moans, pants and growls of lust fill the library and you move a bit closer to get a better view.";
				say "     [WaitLineBreak]";
				say "     The animalistic coupling of the felinoid and her entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives her cock into Erica's pussy relentlessly, until finally the cuntboy's moans and noises rise up to a climactic shout, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, the felinoid isn't far behind, burying her hard cock all the way in the young human's pussy and holding still, only her balls pulsing as they fill her up with her seed. When she finishes cumming, the big cat throws herself on the floor right at that spot to lounge in satisfaction, taking Erica with her, still impaled on the feline's shaft and soon held against her soft belly fur with a muscular forelimb.";
				now level of Erica is 3;
				now lastfuck of Erica is turns;
			otherwise:
				say "     [line break]";
				say "     Deciding that this has gone far enough, you dash forward, grabbing Erica by the shoulder and pulling her up to stand. With your hand on the young man's arm, you walk her a few steps away from the musky cloud of scent around the felinoid and softly slap her cheeks several times as she breathes in fresh air. Finally shaking out of it, her eyes focus on you after the last slap and she says 'Hey, what are you doing? I was just... looking for books and... then... I -'";
				say "     Erica's brows draw together as she mentally puzzles together the last five minutes of time and turns in confusion to you. While you explain about the felinoid's charm and the effects of her musk, the two of you hear a disappointed growl from the large cat, who gives Erica a last look before stalking off, trying to act as if she hadn't planned to do anything with the human.";
				now level of Erica is 99;
		otherwise: [leave it]
			say "     [line break]";
			say "     Oh well, it would happen at some point no matter what you do. It's not like you've got the time to constantly watch over what the felinoid is doing anyways. Some short time later, you hear lust-filled growls and pants sound from somewhere between the bookshelves, culminating in a satisfied roar not long after.";
			now level of Erica is 1;
			now lastfuck of Erica is turns;
			
instead of navigating Grey Abbey Library while (Felinoid Companion is tamed and level of Erica is 4 and hp of Erica is 1 and (lastfuck of Erica - turns) > 12 and a random chance of 1 in 3 succeeds):
	say "[NavCheck Grey Abbey Library]";
	if NavCheckReturn is false, stop the action;
	move player to Grey Abbey Library;
	if debugactive is 1:
		say "     DEBUG: ERICA FELINOID SEX REPEAT WALKIN [line break]";
	say "     As you enter the library, you hear moaning and lust-filled growls coming from somewhere behind one of the back she lves. Curious who's doing whom, you go to check it out. Walking over until you see the space behind the long bookshelf, you spot Erica - with your felinoid companion on top of her, mounting the smaller human and rapidly thrusting her hips at her. Seems like the big cat managed to put your friend under her influence again - though maybe this time Erica went to seek the feline out - after all, the young athlete is on her hands and knees on one of the mattresses from the cots in the bunker below, which she must have dragged up here for just this purpose...";
	say "     [line break]";
	say "     The animalistic coupling of the felinoid and her entranced partner is quite a show, driving your arousal to new heights as you watch. With the stamina of a wild beast, the felinoid drives her cock into Erica's pussy relentlessly, until finally the cuntboy's moans and noises rise up to a climactic shout, announcing her orgasm to anyone in hearing range. Visibly satisfied in making her come, the felinoid isn't far behind, burying her hard cock all the way in the young human's pussy and holding still, only her balls pulsing as they fill her up with her seed. When she finishes cumming, the big cat throws herself on the mattress to lounge in satisfaction, taking Erica with her, still impaled on the feline's shaft and soon held against her soft belly fur with a muscular forelimb.";
	now lastfuck of Erica is turns;

instead of going inside from Grey Abbey Library while (Level of Erica > 0 and Level of Erica < 4 and Erica is in Bunker and hp of Erica < 99):
	move player to Bunker;
	if debugactive is 1:
		say "     DEBUG: ERICA POST-FELINOID-SEX WALKIN [line break]";
	say "     As you come down the stairs into the bunker, Erica almost jumps up from where she was sitting on her cot and rushes over to you, her cheeks red with embarrassment. Before you can so much as ask what's wrong, she gushes forth with 'I'm sorry. I- I had sex with your felinoid companion. Something just came over me and I let her mount and fuck me! Can you ever forgive me for this?' her somewhat teary eyes seek out yours and take on a hopeful look as she realizes how calmly you're taking this (you did already know and didn't stop the felinoid from fucking her after all).";
	say "     So, what do you tell her? That there's no shame in having some fun, even without you and with... exotic partners (Y)? Or do you just console her and tell her to avoid the felinoid in the future (N)?";
	if player consents: [more felinoid scenes]
		say "     [line break]";
		say "     Putting your arms around Erica and holding her, you console her with calm words, explaining to her that you're not angry or anything. After all, it's a whole new world with the nanites and all, so why should anyone be restrained by the morals of the old one. The young athlete's eyes get wide in realization as you remind her that you brought the felinoid home with you, even after knowing its lusty character. Pulling her close again, you squeeze Erica's tight ass and whisper in her ear that [if Level of Erica is 1 or Level of Erica is 2]you saw the felinoid follow her in the library and were okay with it.[otherwise]you were there and did watch the hot little scene of the felinoid mounting her.[end if] A visibly relieved Erica stutters 'So you did... you let... she did...', then takes a deep breath before admitting 'He felt so good - so right - inside me, having her hard cock fuck me, the soft fur of her belly against my back...' her breathing becomes quicker as she relives her experience with the felinoid in memory, clearly getting aroused by it.";
		say "     [line break]";
		say "     Do you want to seize the moment for some hot action between the she ets with Erica (Y), or do you just leave her to dwell on her lusty thoughts (N)?";
		now Level of Erica is 4;
		if player consents:
			say "     [EricaSexMenu]";
		otherwise:
			say "     [line break]";
			say "     Smiling at Erica and encouraging her to have some more fun with the felinoid whenever she wants, you chat with her a short while, then turn to other things. The by now pretty wound up young athlete meanwhile makes a beeline for her bunk, no doubt to jerk off and deal with her built-up lust.";
	otherwise: [no further felinoid scenes]
		say "     [line break]";
		say "     Putting your arms around Erica and holding her, you console her with calm words, explaining to her that you're not angry or anything. After all, it's partly your fault for bringing the felinoid here with you (and letting her fuck Erica, but she doesn't need to know that). Telling Erica just not to fall for the felinoid's charms and arousing musk again, you give the visibly relieved athlete a kiss on the cheek and leave her to get back to her bunk.";
		now Level of Erica is 99;

Section 5 - Endings

when play ends:
	if (hp of Erica is 0):
		say "     A";
	otherwise:
		say "     B";
	
]

Erica ends here.
