Version 1 of Atticus by Wahn begins here.
[Version 1 - Put into its own file]


[ lust of Atticus - interaction with Evil Elijah                               ]
[   0: nothing yet                                                             ]
[   1: watched them fuck                                                       ]
[  99: player walked out on their initial fuck                                 ]
[ 100: squashed Elijah interactions                                            ]

[ Loyalty of Atticus - nonsexual interaction                                   ]
[   0: nothing yet                                                             ]
[   1: opened up with a fatherly moment                                        ]
[   2: he feels that he might like his daddy as more than just a fuck          ]
[   3: clothing event got resolved, no clothes for Atticus                     ]
[   4: clothing event got resolved, Atticus got new stuff                      ]
[   5: player slept with Atticus in their arms                                 ]
[  99: missed the window                                                       ]
[ 100: Atticus sees the player as nothing but a fuck                           ]
[ 101: Atticus left                                                            ]


[ Energy of Atticus - Location                                                 ]
[   0: default - chapel                                                        ]
[   1: bunker                                                                  ]

[ TimekeepingVar - Atticus's location                                          ]
[ 1, -7 (midnight): sleeping in Atticus's Bedroom                              ]
[ 0, -8 (pre dawn): sleeping in Atticus's Bedroom                              ]
[ -1, 7 (early morning): sleeping in Atticus's Bedroom                         ]
[ -2, 6 (mid-morning): awake in Atticus's Bedroom                              ]
[ -3, 5 (noon): awake in Survivor Refuge                                       ]
[ -4, 4 (mid afternoon): awake in Survivor Refuge                              ]
[ -5, 3 (evening): outside the apartment                                       ]
[ -6, 2 (early night): outside the apartment                                   ]

[ Character Details                                                            ]
[ - born demon, out of the union of Lilith and the player                      ]
[ - reflexively sexes up everyone and everything he meets - it's in his nature,]
[   and he likes sex, a lot, taking any role (top, bottom, left, right)        ]
[ - likes pretty/sexy stuff, mostly clothing                                   ]
[ - will trade sex for things, it's fun and a valid transaction for him        ]
[ - does not have the ingrained urge to dominate as Lilith - he just wants fun ]
[ - expects others to use him, to get off (as he uses them at the same time)   ]
[   (he gets miffed if people don't recipicate and leave him hanging)          ]
[ - especially expects Lilith to use him to advance her plans (she already has)]
[ - is over the moon if the player shows even a little thought and care for him]
[   and his feelings as he's not used to that from his other parent (he'll want]
[   to fuck the player even more to show love in 'his' way)                    ]
[ - can theoretically shape-shift into a specific female form (he never tried  ]
[   so far)                                                                    ]
[ - got a little bit of Lilith's magic powers and can share memories with      ]
[   people he trusts (so only the player, if they're nice)                     ]
[ - has a scar on his tail, from a desperate escape from a domineering mistress]
[   Carol (in the high rise district)                                          ]

to say AtticusTail_Memory:
	say "     You're drawn into what must be a memory of his, taking an apparently invisible observer role, floating in the center of a well-furnished bedroom with a large designer bed that has tie-down points and handcuffs attached to its steel frame. Atticus rises from the bed and grabs his jeans, stepping into them and pulling the fabric up to his hips. 'Now where do you think you're going? Fucktoys belong on the bed, ready to be used!' a naked woman says, piercing the young incubus with her gaze. Chuckling, Atticus shrugs, 'Hey, it was fun to have a roll, or six, with you and your pets, Carol. That doesn't mean you own me. I got places to be...'  As he then zips himself up and buttons the pants, her features draw into lines of anger. 'Don't you dare defy me, you little shit! Give the three brain-cells you have in that pretty little head of yours a rest and just be a good boy. It's all you're good for!' Ignoring the shrill voice, he shrugs and turns to leave through the door of the bedroom. 'Oh no you don't! Fido! Stripes!' she snarls at his back, then snaps her fingers.";
	say "     Fido, the broad-shouldered wolfhound that fucked and got fucked by Atticus only half an hour before pushes himself up from the bed. All apparent camaraderie between him and the incubus is gone as his mistress commands him, and the collared canine snarls as he moves to stand on all fours, despite his anthro body shape. A hiss from the door that Atticus wanted to leave through reveals Stripes, the coral snake naga that is Carol's second pet. He opens his jaw to reveal venom-dripping fangs. 'Now then. You'll need to be punished for this defiance. When I'm done with you, little demon, you'll know your place!' the naked woman says to Atticus, giving a wave of her hand to have her pets move in. Seeing the cruel joy dancing in her eyes, Atticus franticly tries to think of a way to escape, glancing around. The two men have almost reached him when he goes for the only option that remains - the closed window.";
	WaitLineBreak;
	say "     With five steps of running start, Atticus flings himself through the glass, shattering it and falling into the darkness beyond. Thankfully, his newest lay's place was on the sixth floor, allowing him to spread his wings and glide off into the night, curse-words echoing after him. Completely focused on his escape, Atticus flies for a good ten minutes, leaving the luxury apartments of the inner city behind and aiming towards home, the dingy red light district. He breathes heavily by the time he lands on a roof, folding his wings and taking hold of a ventilation shaft to brace himself on. 'Man, what a bitch!' the incubus says to himself, looking over his shoulder as if expecting the woman and her servants to have followed him. And this is when the adrenaline rush ebbs off, and he starts to feel the pain of a broad gash in the fleshy part of his tail-spade, right up to the bone. 'Fuck! I must have cut it on the glass or something!' he gasps, raising his tail to inspect it and gingerly touching the bleeding appendage.";

AtticusEventCooldown is a number that varies. [@Tag:Notsaved]
AtticusEventCooldown is usually 20000.

a postimport rule:
	if Loyalty of Atticus > 2 and Loyalty of Atticus < 99:
		connect Atticus's Bedroom;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 1 - Initial Events
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameEventIDs (continued)
Object	Name
Incubus Offspring Meeting	"Incubus Offspring Meeting"

Incubus Offspring Meeting is a situation.
ResolveFunction of Incubus Offspring Meeting is "".
Sarea of Incubus Offspring Meeting is "Nowhere".

when play begins:
	add Incubus Offspring Meeting to BadSpots of MaleList;
	add Incubus Offspring Meeting to badspots of IncestList;

after going to Burned-Out Chapel while (Incubus Offspring Meeting is not resolved and LilithKidCounter > 0 and Elijah is not in Burned-Out Chapel and a random chance of 1 in 3 succeeds): [Atticus exists, hasn't met the player, Elijah not in there (too complex), 33% chance]
	move Atticus to Burned-Out Chapel;
	if player is not male:
		say "     (Note: Even though you might not have a dick right now, you're still the person who fathered Atticus. That's why he'll continue to call you dad throughout all content.)";
	project the Figure of Atticus_hard_neutral_arm_raised_icon;
	say "     As you enter the nave of the ruined chapel, with its soot-blackened walls and columns rising high above you, you become aware that someone else is already inside the room. A series of candles has been set up in the apse behind the altar, their flickering glow playing over the naked skin of a handsome young man standing against the wall there. Casually naked and clearly quite comfortable in his skin, he is pinching his nipples one by one while jerking his meaty shaft in fluid movements. Two small horns bend upwards from his forehead, dark red in color just like the bat-like wings on his back and the spaded tail swinging through the air behind his back. Clearly, this is an incubus - but there's more to him than just that... something about his features and the sexual energy lying thick in the air around him reminds you of Lilith, and it isn't too hard to guess that this is a son of the powerful succubus. You can't help but feel that you've seen someone looking kinda like him before, but you can't put your finger on it right away.";
	say "     Amber eyes flicker towards you as the incubus registers your presence, and with a grin, he speeds his masturbation into a rapid flurry of movement, accompanied by lewd moans spilling easily past his lips. You can do little more than stare as he quickly pushes himself past the point of no return, letting out a satisfied grunt as his body stiffens and a thick spurt of cum erupts from his manhood, followed by another and another. Second by second, the glow of the candles around the naked man seem to diminish and it takes you a second to figure out why: He's literally shooting out the candles with his cum! One, two, three, then four flames are extinguished as their wicks are engulfed by the demon's seed but he aimed a little high for the fifth, so it is only grazed, spreading the scent of burning and cum in the air instead.";
	WaitLineBreak;
	say "     'Aww, just four! So close! Guess I'll have to keep practicing,' the young man says in playfully overacted anger, then glances you up and down hungrily. His gaze is so intense that you almost feel you got groped just by the looks alone. 'You know, you could help me with this. It's your job after all, showing an interest and giving support for the hobbies of your offspring.' A beaming grin spreads over his face as your eyes widen, followed by a confirming nod and a slow, lazy stroke of his cock. ";
	if Playermet of Atticus is false:
		say "'Yeah, that's right! Remember knocking up a certain succubus? I'm the result, daddy! I'm Atticus, by the way. Now why don't you come over here and give your boy a kiss?' Wiggling his eyebrows in a seductive, teasing way, Atticus turns his body to highlight his best features, eager to draw you in.";
	else:
		say "'You don't want to be that kind of dad, do you? Look, you already missed all of the two hours I grew up in, so this is your chance to make up for that! Come play with me! Give your boy a kiss to make it all better, eh?' Wiggling his eyebrows in a seductive, teasing way, Atticus turns his body to highlight his best features, eager to draw you in.";
	LineBreak;
	say "     [bold type]How do you want to deal with him?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Kiss the incubus. He asked nicely after all.";
	say "     [link](2)[as]2[end link] - Walk up to him and give your son a hug (nothing sexual right now).";
	say "     [link](3)[as]3[end link] - Shake your head and ignore his lewd offer.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go reply to his advances, [link]2[end link] to hug him or [link]3[end link] to ignore his lewdness.";
	if calcnumber is 1:
		LineBreak;
		say "     Moving closer to the attractive young demon, you're welcomed with open arms by Lilith's son, with him drawing you into a close embrace. Atticus naked chest rubs against your body as he plasters himself to your side, strong arms holding you tight as he lets his hands wander and feels you up. His lips find yours in a breathtaking instant, followed by his tongue slipping between your lips and playfully wrestling with yours as you make out. Sharing your breath and gazing deep into your eyes with his amber irises full of burning lust, the sex demon draws you under his spell, keeping you close for you don't know how long. Then finally, he releases your form and takes the tiniest step back, just enough so that he can nod down towards his crotch as he says, 'My, my, daddy! You're good at showing your love, but I think we've got another problem now. Wanna kiss that too and make it all better?' Following his gaze, you see Atticus erect cock, complete with a glistening drop of pre-cum at the slit.";
		now Loyalty of Atticus is 99; [missed the window]
	if calcnumber is 2:
		LineBreak;
		project the Figure of Atticus_hard_smile_arm_raised_icon;
		say "     Moving closer to the attractive young demon, you're the one who draws him into a fatherly embrace. Taking care to just lay your arms around his chest and not touching him in a sexual way, you hold him tight and tell Atticus that you're very glad to meet him and hope to spend some time together. Surprised at your approach to his sexual offers, the young incubus is almost stunned for a second or two, his hands hesitating in the positions where he started to grope at you. 'I - um, thanks daddy,' Atticus haltingly says a moment later, lifting his arms to just squeeze you back. The two of you stay like that for you don't know how long, just holding each other, until your son gets a little unruly and slips out of your grasp. He steps back, looking at you wide-eyed and bites his lip, as if not knowing how to go on from here. What must be incubus instinct has him taking a quite sexy pose, showing off his naked form in the candlelight, but the voice in which he says, 'I'd like to hang out with you some more. I'll be here when you come visit,' is far from the cocky tone it was before.";
		if Loyalty of Atticus < 1:
			now Loyalty of Atticus is 1; [cracked his shell]
	else:
		LineBreak;
		say "     Giving the incubus a shake of your head has his features draw into a pout at being rejected for a second or two before he catches himself and puts his seductive smile back on. 'I'll be ready for you when you change your mind daddy, just come and join me then. You know you want to...' With that said, he turns his attention back to jerking his cock, already fully hard again after just shooting a few moments ago.";
		now Loyalty of Atticus is 99; [missed the window]
	now PlayerMet of Atticus is true;
	now Incubus Offspring Meeting is resolved;

after going to Burned-Out Chapel while (Atticus is in Burned-Out Chapel and PlayerMet of Atticus is true and Lust of Atticus is 0 and HP of Elijah is 99 and Cock Count of Player > 0 and a random chance of 1 in 3 succeeds): [Atticus in the room, has met the player, first Atticus/Elijah meeting, Evil Eli exists, male player, 33% chance on entry]
	project the Figure of Atticus_hard_neutral_arm_raised_icon;
	say "     As you enter the nave of the ruined chapel, with its soot-blackened walls and columns rising high above you, you become aware that someone else is already inside the room. A series of candles has been set up in the apse behind the altar, their flickering glow playing over the naked forms of two entwined bodies. Both men, from the sounds of their grunts. Clothing is scattered on the floor around them, some of it hanging off the remnants of church pews, clearly thrown aside in the throes of lust. Despite seeing only the back of the larger of the two, you have a good guess who it is, recognizing Elijah by his black hair and black wings. His partner has both arms wrapped around the fallen Adonis, groping his ass and feeling his broad back as the two of them make out.";
	say "     A few heartbeats later, the second male reveals himself to be an incubus by bending his head to the side and nibbling on Elijah's earlobe. As he does so, the sex demon's gaze falls upon you, instantly followed by an impish smile on the lips of whom you recognize as your son Atticus. The young man gives you a little wave with the hand not squeezing Elijah's buttocks, then beckons you closer to them. Seems he's interested in some fun between the three of you.";
	LineBreak;
	say "     [bold type]How do you react to his invitation?[roman type][line break]";
	say "     [link](1)[as]1[end link] - Stroll up to the two of them. This'll be fun!";
	say "     [link](2)[as]2[end link] - Shake your head and keep to the shadows, watching.";
	say "     [link](3)[as]3[end link] - Turn right around and walk out of there. You don't want to see this.";
	say "     [link](4)[as]4[end link] - Storm up to them and wrench Elijah away from your son.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go up to them, [link]2[end link] to hide and watch, [link]3[end link] to leave or [link]4[end link] to split them up.";
	if calcnumber is 1:
		LineBreak;
		say "     Walking towards the end of the chapel, you skirt around some of the broken and blackened furniture and some mounds of debris, soon arriving at the elevated altar section. As you take the step up to stand in the half-circle of candles set up all along the walls, Atticus gives Elijah's neck a last little lick and sucks on it to create a hickey, then chuckles and calls out to you with the words, 'Hey daddy!' Not quite pulling his arms from around the naked demon pressed against his chest, Elijah half-turns and his eyebrows rise as he spots you. Getting over the surprised recognition quickly, he lets out an amused laugh, followed by the words, 'I should have known this pretty little slut would have some connection with you. Guess you're a regular visitor to the area to sate all your sexual needs, eh? Angels, demons, and anything else you might want to mount, hah!' Atticus snakes a hand between the two of them to wrap it around Elijah's cock and gives it a squeeze, nodding to confirm the angel's words.";
		say "     '[if Charisma of Atticus is 1]Daddy comes to visit me sometimes. I look forward to it quite a bit. Kinda wanna show off to [ObjectPro of Player] too![else][SubjectProCap of Player] boned Lilith right next door in the sacristy, and I gotta say [SubjectPro of Player] did a bang-up job doing so. Can't deny the awesome results, eh?[end if]' Stroking over his own flawless abs as he says this, Atticus then grabs his own cock and rubs it against Elijah's, drawing a horny grunt from the angel that leads over to a hungry kiss between the two of them. Almost forgetting you're there for a moment, they tongue-wrestle back and forth for a little while before Elijah pulls back and looks over to you again. 'I was soaring in the sky over the area, looking for someone fun to fuck, when this little boy-slut flew right up to me, naked and with his dick flapping in the air. Oh, the things he shouted, for all the world to hear! How could I not go for his inviting offer, and now the three of us are here together, you, me and the boytoy. I new he was a young buck, but if he's your kid he can't be older than a few days, hah! Can't wait to feel him around my cock!'";
		WaitLineBreak;
		say "     Looking at the two of them, naked and arm in arm, you realize what Elijah meant. It's not like Atticus's form isn't that of a young adult, with him having the confidence of a grown man too, but he's oh so very clearly the youngster in the pair. The fallen angel's timeless beauty puts him on just about the same physical age, but there's so much more to him, an air of maturity that betrays the real difference between them. 'Who could resist when this stud flies past, right?!' Atticus says to you, wiggling his eyebrows and grinning. 'And now, I wanna have some fun! With my angel daddy and my real daddy!' he adds with a purr right after that, lust vibrating in his voice. Elijah just smiles, raising the arm that isn't still wrapped around your son's naked midriff to wave you closer.";
		say "[AtticusElijahThreesomeMenu]";
	else if calcnumber is 2: [just watch]
		LineBreak;
		say "     As you turn down his offer of a threesome, [if Charisma of Atticus is 1]Atticus expression falls and he looks at you in disappointment. [else]Atticus sticks out his tongue at you, then smacks his free hand down on Elijah's butt too, spreading his cheeks and squeezing their firm roundness. [end if]Meanwhile can hear the angel kissing and suckling on your son's neck, giving him hickeys while the young demon plays to his audience, soon involving his spaded tail slipping between Elijah's legs and arching upwards towards his ass. Licking his lips and blowing you a kiss, Atticus plays his tail-tip up and down the fallen angel's crack, making Elijah grunt and stick out his ass a little more. An eyeblink later, the pointy end of that red-skinned tail has pushed past his pucker, with the visible length of the appendage twitching left and right as it worms its way deeper. 'Fuck yeah! You're a naughty slut aren't you?' Elijah groans as he feels Atticus moving inside him, then runs a hand through the young incubus's hair and pulls his head back to look into his eyes.";
		say "     'You've no idea yet, Elijah!' the incubus says with a wide grin, followed by the loudly spoken words of, 'Wanna be my angel daddy? Your boy needs a good fucking!' You can't be completely sure, but you think that his eyes flashed aside to look at your hiding spot for a second as he said that, meaning that those words were meant for you. Elijah all but growls out his reply of, 'I'm gonna take you like the whore you are, son!' and he moves in to kiss Atticus aggressively, their mouths pressed together in a wild tongue-battle as they make out. Never stopping from pegging his fuck-buddy, Atticus moves his hands to hook over Elijah's shoulders, followed by his legs wrapping around the tall male's hips as he clings to the fallen angel. Elijah stumbles over towards the altar while kissing, groping and being fucked by Atticus, then lays him back on the cracked and cum-stained stone table.";
		WaitLineBreak;
		say "     'Little sluts like you need a strong fatherly influence! And I got just the thing to drive some lessons home into you!' Elijah says somewhat in an amused, lewd tone. Pressing one hand down on Atticus's chest and pinning him to the altar, his other is wrapped tight around the base of his erect cock, wagging it towards the waiting demon. 'Yeah daddy, I want it! I need it!' the incubus replies loudly to his dual audience, hands gripping the sides of the altar as he devours Elijah's naked form with his hungry looks. 'Lift your legs and show me that boycunt!' Elijah commands and is quickly obeyed, then lines himself up with the young man's hole. Thrusting in with a victorious grunt, he sinks his angelic shaft deep into the demon's eager body, all the way up to his balls in one single push. 'A little whore just as I like em, tight yet flexible enough to take a deep dicking!' 'I trained a lot to be ready for you, dad! With the beasts outside, and my own tail!'";
		say "     As he moans out the words, Atticus's tail goes wild in its pegging of Elijah's ass, twisting and turning to rub against him inside and out, really pushing the fallen angel's buttons. A lusty groan that's pretty much just a 'Nnnnghhhh!!' instead of words escapes from Elijah, followed by him really railing the incubus under him now, slamming into him with all the force he can muster. The moans and grunts of the two handsome males fill the desecrated chapel as they become louder and louder, building up to a climactic shout of 'Take it boytoy!' as Elijah slams forward so hard that he almost pushes his fuck-buddy off the altar. Only the fact that he can brace himself against the floor with the two strong demonic wings on his back saves Atticus from falling down, as his hands are wrapped tightly around his throbbing cock right now, stroking it in a mad flurry instead of holding on to the altar. With the angel beginning to flood his ass with fertile seed, the demon isn't far behind, bucking his hips as his perfect cock erupts with his infernal cum.";
		WaitLineBreak;
		say "     Watching from the shadows, you feast your eyes on the climactic finish of the two men fucking. You can't help but feel proud about the fact that you were the one who made the sexy show possible, both by knocking up Lilith to bring Atticus into this world in the first place, as well as giving Elijah a hard shove to fall from his previously so lofty status to become the deviant sex-fiend he is now. A grin covers your face as you look at them still grinding against each other, slowly coming down from their shared orgasms. It's quite a lewd image that presents itself to you, with the handsome incubus limply stretched out on the altar, chest splattered in his own cum and Elijah bent over him, still balls-deep and bracing himself on the stone to catch his breath. Then he reaches behind himself and grabs hold of the demonic tail still wiggling between his cheeks, pulling it out with a gasp. 'You're quite good with this thing, demon slut!'";
		say "     'So you liked your boy playing with your ass daddy?' Atticus replies in a playful tease. As he opens his mouth to say more after that, Elijah starts to scoop up the cum all over the incubus's chest and feeds it to him instead. With three fingers pushed between Atticus's lips, Elijah grunts, 'Yeah, take it boy! Suck it all off good! I can see that I'll have to regularly visit you, little slut!' With the sex between the two of them winding down, it's becoming more likely that Elijah will notice you at some point, so you quietly exit the chapel and wait for him to leave before stepping back in.";
		now Lust of Atticus is 1; [watched them fuck]
		NPCSexAftermath Atticus receives "AssFuck" from Elijah;
		NPCSexAftermath Elijah receives "AssDildoFuck" from Atticus;
	else if calcnumber is 3: [do not watch]
		LineBreak;
		say "     Shaking your head at the sexy young man that your pairing with the succubus created, you turn around and quietly start walking out of the building. With the state of the chapel being as it is, you can't go too quickly as not to make noise or stumble over some debris, which means that you hear some moans and grunts from the fucking men before you're out of earshot.";
		now Lust of Atticus is 99; [player walked out, no interest]
	else: [stop them]
		say "     No longer able to hold back, you run all the way and grab Elijah by the arm, wrenching him away from his embrace with Atticus. The sudden attack catches both of them totally by surprise, with the fallen angel stumbling down the step to the apse and landing in a sprawled heap on the soot-blackened floor, his wings partially splayed out to break his fall. Atticus is left standing where he was, bafflement written all across his face as he can't quite make sense of what's going on. You draw him into a close embrace, just holding your confused demon offspring for a second before you hear a growl of, 'What the fuck?!' from behind you. Half-turning with Atticus in your arms, you glower at Elijah and snarl for him to fuck off, shouting that this young man isn't for him. He scowls darkly, then makes a throwing-away gesture with his hand and stomps over to grab his clothes before making a beeline to the exit of the chapel. 'Fine, have the little slut. Who needs that worthless whore anyways. I bet he's a loose and blown-out amateur!'";
		say "     With that last explosive tirade, the fallen angel is gone, leaving you alone with Atticus. 'D-daddy? What just happened?' he asks you with a wide-eyed gaze and you stroke his hair to calm him down. Clearing your throat, you explain that Elijah isn't someone he should hang out with. 'But I fuck around with all sorts of people. What's so bad about this dude? He's hot!' Pulling back a little, you place both hands on Atticus's shoulders and look him straight in the eye, stressing that you know what you're talking about and that he should trust you on this. 'I will dad,' he replies with a sigh, then adds, 'I was looking forward to a good fuck though. Can you help me out instead, if you don't want him to take me?' The last few words are said in a tone of re-ignited lust, with Atticus finally throwing off the confusion your intervention created. He unconsciously grinds himself against your body, instinct reinforcing his invitation a little more before he peels himself out of your grasp and steps back a little, striking a sexy pose.";
		if Loyalty of Atticus < 1 or Loyalty of Atticus is 99: [2nd chance if the player blew it in the 1:1 before]
			now Loyalty of Atticus is 1; [cracked his shell]
		now Lust of Atticus is 100; [squashed his Elijah interactions]

after going to Burned-Out Chapel while (Atticus is in Burned-Out Chapel and PlayerMet of Atticus is true and Loyalty of Atticus is 1): [Atticus in the room, has met the player, player showed that he cares about him (at least a little bit)]
	project the Figure of Atticus_soft_smile_arms_lowered_icon;
	say "     As you enter the nave of the ruined chapel, with its soot-blackened walls and columns rising high above you, you become aware that someone else is already inside the room. Lounging on a mattress dragged up next to the defiled altar, Atticus is casually paging through a porn mag lying next to him, one hand wrapped around the erection sticking out long and proud from his open zipper. You can't help but take in the half-naked form of your offspring with the succubus Lilith, his lithe body and handsome face drawing your gaze unerringly. Sex demons are made to appeal to humans, and Atticus is no exception to that rule. Small pieces of rubble crunch under your feet as you slowly move closer, drawing the attention of the young man and he looks up a heartbeat later. 'You're back daddy!' he calls out in an eager tone, jumping to his feet and coming up to you with quick strides. Before you know it, the incubus has thrown his arms around your chest and is giving you an embrace.";
	say "     'So, what brings you back into this ruin? Anything here that draws you in maybe?' he asks after a second or two, pulling back so he can look into your eyes while at the same time lightly grinding his crotch forward. Still hard and erect from jerking when you entered, his manhood rubs against your body. The usual naughty smirk is on his face, promising arousal and lust, but at the same time you think you see a flicker of something else in his gaze. He is focusing on your face with an intense expression, almost as if hoping for one specific reply before all else. [bold type]You can't help but feel that he'll take what you say to heart, so maybe it'd be a good idea to choose your words wisely.[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - You're here to fuck him. Who wouldn't want to take an eager incubus to bed?";
	say "     [link](2)[as]2[end link] - You want to hang out and get to know Atticus. He's your son and family is important to you.";
	say "     [link](3)[as]3[end link] - You just wandered in here on a whim. Maybe you're out for trouble, or wanted to check if there's anything left to loot.";
	say "     [link](4)[as]4[end link] - Actually, you're here for Lilith. Maybe just to visit, or to knock her up again with some more demon spawn.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to sex him up, [link]2[end link] to hang out with your son, [link]3[end link] to shrug his question off or [link]4[end link] to say you want Lilith.";
	if calcnumber is 1:
		LineBreak;
		project the Figure of Atticus_soft_neutral_arm_raised_icon;
		say "     As the words leave your mouth, there seems to be a second in which the young incubus's expression falls a little. Or maybe you just imagined that, as he lets out a chuckle right away, with his typical smirk beaming at you afterwards as he says, 'Knew you couldn't resist this killer bod! No one can, you know?!' Reaching out, he takes hold of your hand and pulls it to his abs, guiding you to feel him up. Leaning in for a quick peck on your mouth, he proceeds to slip out of your grasp and wanders over to the altar, beckoning you to join him.";
		now Loyalty of Atticus is 100; [just sex from now on, he's not expecting the player to do anything more]
		say "[AtticusSexMenu]";
	else if calcnumber is 2:
		LineBreak;
		say "     A smile spreads over Atticus's features as you say the words, which somehow appears to be infinitely more genuine than the lusty smirks he usually throws at the world. Then he leans into you, arms holding you tightly as he buries his face against the curve of your neck with closed eyes, just enjoying the feeling of closeness for a little while. Inevitably for the horny young demon, his hands begin wandering again soon after, touching and caressing your body, at which point you gently extract yourself from his embrace. The two of you stand in front of each other for a second, neither knowing exactly what to say next, until he clears his throat and says, 'Wanna have something to drink? I got a few left, I'm sure!' Without waiting for a reply, he's off towards the altar, half-climbing over it and angling for something on the ground beyond.";
		say "     Bent over the cracked block of stone in a reflexively enticing pose, Atticus throws an empty beer can or two aside to clatter loudly on the ground, then finally comes up with two filled ones. With a happy grin, he glances over his shoulder and shakes his rear at you, then stands up and wanders over to sit on a church pew, cracking one can and holding it out invitingly. Joining the handsome demon and sitting down next to him, you take a pull from the beer, as does he a few seconds later. The two of you start talking, with his side of the discussion at first being mostly fairly lewd recollections of the debauchery he's seen (and caused) in the red light district, but after a little while, he surprises you by asking about yourself. How you're doing in all the chaos, surviving on the streets, then going further back into the time before the nanite infection. Almost shyly, he inquires about your family - if he has grandparents, aunts, uncles and the like. How it was living with them and your relationships with each other. The incubus almost longingly listens to anything you have to tell.";
		WaitLineBreak;
		say "     Your conversation lasts long after the beer's gone, even with him going to find a last full can that you share between each other. At some point, Lilith saunters past the two of you, coming in from outside, naked and with an anthro goat-girl in tow. She offers the young woman's virginity to Atticus in an enticing tone, calling for him to join her. He's tempted, that you can clearly see from the twitch of his cock as he never put it back in his pants, but in the end you actually win out, as he waves his mother off and rather stays with you to continue chatting. The succubus leaves in a bit of a huff, soon followed by loud moans and shouts of lust coming from the sacristy, which actually forces Atticus and yourself to step outside to avoid the noise. A little while later, you've exhausted the topics that come to mind, by which time Atticus gives you a half-hug, his arm just patting your back once or twice before he lets go without any groping.";
		say "     'That was nice, dad. I mean, just talking a little with you. Hanging out,' the handsome demon tells you, smiling a little sheepishly. 'Not saying that I don't still wanna jump your bones the second you let me, but... this was fun too. Family fun.' He chuckles to himself and adds, 'That reminds me - I should tell you about all the fun I had with that father and daughter that I met a few alleys that way. Ah, maybe next time, eh? You'll be back to hang out with me again, right?' The hopeful gaze in his eyes doesn't allow for anything but a nod, and you make a mental note that you maybe should check in here a bit more often in the future.";
		now Loyalty of Atticus is 2; [he feels that he might like his daddy as more than just a fuck]
	else if calcnumber is 3:
		LineBreak;
		project the Figure of Atticus_soft_neutral_arm_raised_icon;
		say "     As the words leave your mouth, there seems to be a second in which the young incubus's expression falls a little. Or maybe you just imagined that, as he lets out a chuckle right away, with his typical smirk beaming at you afterwards as he says, 'Keep telling yourself that. I still think you're here to plunder some other booty.' Wiggling his eyebrows, Atticus slaps his own ass and grinds against you a little more, before you extract yourself from his reach and gently hold him back as he wants to follow you.";
		now Loyalty of Atticus is 100; [just sex from now on, he's not expecting the player to do anything more]
	else if calcnumber is 4:
		LineBreak;
		project the Figure of Atticus_soft_frown_arms_crossed_icon;
		say "     As the words leave your mouth, the incubus's eyebrows twitch, drawing together a second. Or maybe you just imagined that, as he lets out a chuckle right away, with his typical smirk beaming at you afterwards as he says, 'Can't get the queen slut out of your mind? I could use some brothers to hang out with, it's true. Just imagine the things we could do together!' Wiggling his eyebrows, Atticus slaps his own ass and grinds against you a little more, before you extract yourself from his reach and gently hold him back as he wants to follow you. 'Could make it a threesome sometime, too. Wouldn't you want me to churn up your seed inside her a bit? We could go back and forth a few times.'";
		now Loyalty of Atticus is 100; [just sex from now on, he's not expecting the player to do anything more]
	now AtticusEventCooldown is turns;

Table of GameEventIDs (continued)
Object	Name
Atticus_Payback	"Atticus_Payback"

Atticus_Payback is a situation.
ResolveFunction of Atticus_Payback is "".
Sarea of Atticus_Payback is "Nowhere".

when play begins:
	add Atticus_Payback to BadSpots of MaleList;
	add Atticus_Payback to badspots of IncestList;

after going to Burned-Out Chapel while (Atticus_Payback is not resolved and Atticus_Payback is active and Atticus is in Burned-Out Chapel and PlayerMet of Atticus is true and Loyalty of Atticus is 2 and AtticusEventCooldown - turns > 6): [Atticus in the room, has met the player, player showed that he cares about him]
	project the Figure of Atticus_jeans_neutral_arms_crossed_icon;
	say "     As you're about to enter the nave of the ruined chapel, you hear the crunching sound of breaking glass and sounds of splinters raining down after. Curious but also wary, you glance around the corner and see Atticus, standing beside one of the pews which has been pushed to stand lengthwise near the side wall of the building. On it, several empty beer bottles have been lined up and the handsome incubus is holding a baseball bat. His face is a picture of grumpy aggression as he swings back the bat once more, winding up to smash another bottle and send its remains to impact the soot-blackened wall. After he destroys his newest target, you step into the room and call out to him, at which point the young incubus turns around to look at you. His sullen glare smoothes out a bit as he recognizes you, greeting you with a wave of his hand and the words, 'Hey dad.'";
	say "     Walking over to your incubus son, you ask him what's got him in such a funk, and he grumbles under his breath. For a second, it looks like he'll just continue with his vandalism and not answer, but then he seems to change his mind and throws the bat at the wall instead, uncaring where it falls after bouncing off. Crossing his arms in front of his chest, the young man looks at you and grimaces. 'It's this dude I ran into. 'Corpegh the Devourer'. Bleh! The guy's a damned bastard. All he cares about is impressing his master Mogdraz, and fuck on everyone else. I was out looking for something new to wear yesterday, something sexy,' the young incubus says, winking at you before he continues, 'and there he was, just strolling out of the kicked-open door of a sex shop with a huge sack of stuff. He just looted [italic type]everything[roman type]. I approached the dude and asked if I could just have a thing or two too, and you know what he said? 'Suck my dick and I might think about it.'";
	WaitLineBreak;
	say "     Scrunching up his handsome features and sticking out his tongue for a second, Atticus growls. 'You know I like sucking guys off, and I'm fucking good at it! But this guy? He was rough about it, never gave me the chance to do my thing, instead slamming my face down into his pubes the moment I went to my knees. And then, after he pumped a heavy load down my throat, the asshat just patted me on the head and added, 'Not bad, little whore. Keep training those throat muscles. Oh, and I thought about giving you something - and decided I won't. If you put out a bit more later, maybe. Now be a good slut and run along.' Damn, can't trust one of those brutes! I later heard that he's been smashing his way through half the good stores in this district, looting up a whole treasure-trove of gear. Seems he wants to present it to his boss to be a made man - demon - or whatever!'";
	say "     [bold type]How do you want to deal with this? Atticus is clearly more than a little annoyed at the other demon's act.[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - You and your boy are going to go over there and give Corpegh what he's coming for him. No one disrespects your family!";
	say "     [link](2)[as]2[end link] - Console Atticus and tell him he doesn't need new clothing to look sexy.";
	say "     [link](3)[as]3[end link] - Tell the incubus not to be a little bitch about it. He got fucked over, that's life.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 3:
		say "Choice? (1-3)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go beat up Corpegh, [link]2[end link] to console Atticus, or [link]3[end link] to tell him that he shouldn't bitch about it and accept what happened.";
	if calcnumber is 1:
		LineBreak;
		project the Figure of Atticus_jeans_smile_arm_raised_icon;
		say "     Reaching out and placing a hand on your son's shoulder, you give Atticus a little squeeze and tell him that you'll get even with Corpegh. He can't just do shit like this to you and yours. The incubus face shows a mixture of surprise and shock, eyes widening as he stares at you, quickly followed by the words, 'You really mean that?! Wow, I - I wasn't really expecting anyone to ever... stand by me. Guess you're genuine about the family thing!' Throwing his arms around you in an enthusiastic embrace, the Atticus squeezes you tightly, then gives a little chuckle. 'We're gonna fuck that asshole over so bad. Just you and me against him, it'll be epic!' Nodding to him and saying that he should get ready, you receive a peck on the cheek and the words, 'Thanks daddy!' from Atticus, who then strolls over to collect his baseball bat.' Armed with that, he gives it a few practice swings, miming combat, then comes up to your side to set out through the streets.";
		say "     The trip through the red light district isn't actually that far and fairly uneventful, as the various pimps, hookers, demons and assorted sex monsters whom you meet take one look at the two of you and step aside, letting Atticus and yourself pass unmolested. Seems like no one wants to mess with two people out on a mission of revenge. Soon, you're standing in front of one of those grimy motels that charged by the hour and your demonic companion points at one of the doors. 'Corpegh fucked the pimp who was running the place into submission and now he's got both the guy and his girls turning tricks for him.' Glancing around, you see a few half-undressed beings of various species hanging out along the street, trying to entice people to join them inside. Taking a few steps towards a hooker, Atticus calls out, 'Hey girl, where's your boss?' '2A. But better be ready to put out or let him sample your friend if you're gonna disturb him.' After a quick thanks to the woman, Atticus leads the way to the right door and knocks on it.";
		WaitLineBreak;
		say "     Waiting with his bat held behind his back, Atticus and yourself see the motel room door being pulled open from inside not long after. A tall and powerful demon with crimson skin and large horns takes you in with glowing red eyes. Studying him in turn, you see that he generally looks much more human in appearance than for example a demon brute, or some other denizen of hell that you might imagine. Your eyes inevitably land on the massive bulge barely contained by a leather jockstrap, jiggling slightly as he moves. His muscled body is accessorized by a leather harness around his hairy pectorals. 'What do ya want?' he demands in an impatient tone, only glancing your way for a short while before focusing on Atticus. 'Oh wait, I remember you. Little pussyboy with the tight throat. Ready for round two, eh? You really wanna get some slut-gear, eh? And you even brought a friend!' Chuckling, the demon steps back from the door and waves a clawed hand at one of the two large beds in the room. 'Get on there, side by side and with your legs spread!'";
		say "     Smirking at the opportunity that Corpegh has just offered you thanks to his impatience, Atticus steps into the room, still keeping his baseball bat hidden. You follow close after him, pushing the door shut behind you, then clear your throat at the hellfire demon still walking towards the beds. As he turns, you tell him that he's messed with the wrong incubus, and that Atticus has family that stands by him. 'Huh?' the red-skinned male grunts in surprise, opening his fanged mouth to shout an angry reply back - but that's just when your son swings the bat, impacting the larger demon's elbow with the crunching sound of splintering bone. A pained and very angry shriek pierces your ears like a red-hot icepick and Corpegh reflexively sends out a wave of burning energy towards Atticus, whose clothes catch on fire immediately. The incubus bats at the flames franticly, then makes a grab for the blanket of the nearest bed, throwing himself onto the ground and trying to roll up in it to smother the fire.";
		WaitLineBreak;
		say "     Hurt, but far from out of the fight, Corpegh roars, 'So you sissies want to play rough? Fine by me! I'll take down you two pathetic things one handed in the time my other arm heals!' And with that, he throws himself at you with a murderous expression on his face.";
		wait for any key;
		choose a row with name of "Hellfire Demon" in the Table of Random Critters;
		decrease wdam entry by 7; [he's fighting one-armed]
		now inasituation is true;
		challenge "Hellfire Demon";
		now inasituation is false;
		increase wdam entry by 7; [reset]
		if fightoutcome < 20: [player won]
			say "     One more hit sends the hellfire demon stumbling backwards, then falling over onto his ass. With a growl, Corpegh raises his hand and you see a red glow start to grow in the middle of his palm, only to vanish again as a (thankfully only slightly singed) Atticus steps up from behind the demon, tapping his arm with the baseball bat and distracting him. 'I wouldn't do that if I were you,' your son tells the other demon with a grin on his face. 'Between daddy and me, you've got no chance!' he adds, nodding your way. The red-skinned demon grimaces at the indignity, then chokes out the words, 'Fine. You beat me, fuckers! So what do you want now?! You can't be here just because you were in a particularly violent mood this morning.' Stepping in front of him, Atticus looks down at Corpegh and says, 'We want what you made me trade a blowjob for and then thought you could cheat me out of. Plus maybe a little compensation for having to track you down and beat your ass to get you to listen!'";
			say "     While saying this, Atticus lowers his free hand to the crotch of his jeans, rubbing the growing bulge within. Glancing your way, he smiles happily, wiggling his eyebrows and beckoning you to join him in dealing with the demon. Walking up to the young incubus and the hellfire demon still sitting on the ground, you find yourself confronted with the choice of what to do next.";
			LineBreak;
			say "     [link](1)[as]1[end link] - You'll share the defeated demon, with Atticus pounding his ass while you enjoy the mouth.";
			say "     [link](2)[as]2[end link] - Let Atticus enjoy the victory over the demon and go digging through the pile of bags you saw in the corner in the meantime.";
			say "     [link](3)[as]3[end link] - Bond with your son by being there with him as he takes Corpegh, including caressing him and guiding his dick into the demon's ass.";
			say "     [link](4)[as]4[end link] - You did most of the fighting, so you'll fuck Corpegh and Atticus can dig through the pile of bags you saw in the corner in the meantime.";
			now calcnumber is 0;
			while calcnumber < 1 or calcnumber > 4:
				say "Choice? (1-4)>[run paragraph on]";
				get a number;
				if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
					break;
				else:
					say "Invalid choice. Type [link]1[end link] to go double-team Corpegh, [link]2[end link] to let Atticus fuck him, [link]3[end link] to caress and touch Atticus while he fucks, or [link]4[end link] to claim Corpegh yourself, without Atticus.";
			if calcnumber is 1:
				LineBreak;
				project the Figure of Atticus_hard_smile_arm_raised_icon;
				say "     Smiling at Atticus, you proclaim that messing with any member of your family carries the danger of having to deal with all of you afterwards. In a harsh tone, you tell the hellfire demon that he'll just have to service both of you. 'Is that the way it is? A little demon punk and his daddy to double-team me? Bring it on!' the demon replies, a fair bit of amusement in his voice even though he just lost a fight. But then, given that he's already fully healed up, you guess that there really isn't that much to violent confrontations these days. Just a little bit of unpleasantness, usually followed by hot and sweaty sex. Atticus is more than ready to do just that, and he goes to lean his bat against the wall, then drops an article of clothing with every stride back towards Corpegh. By the time he's standing in front of the male demon again, your son is bare-ass naked and sporting a full-on erection that proudly leads the way.";
				say "     Leaning forward to slap the defeated demon lightly in the face with his erection, Atticus chuckles as the red-skinned man cranes his neck to catch his manhood between his lips. He pumps his hips a few times to grind Corpegh's nose into his pubes and feel the demon's tongue on his shaft, but then pulls back all of a sudden. 'I want your ass!' comes the demand of the young incubus, and he tugs on Corpegh's large horns to get him to move. 'Bossy little bitch, aren't you?!' the larger male grunts, then obeys and assumes a position on all fours. With a meaty smack, Atticus lays his shaft between the demon's buttocks, the fingers of his other hand playing around with the straps of Corpegh's leather jockstrap. 'You're the bitch apparently - wearing those free access undies. Or is that how you please your boss, eh?' 'Careful, boy! I'm nnnghhhHHH! Fuck, you little shit!' the demon's reply is interrupted by Atticus ramming into his ass all the way in one deep thrust, followed by grinding against the buttocks of the moaning male.";
				WaitLineBreak;
				say "     Seeing the demon you defeated being penetrated by your incubus offspring, his own cock getting progressively harder and bulging out the leather of his jockstrap despite all protests, you decide that it's about time that you yourself get some action too. Quickly [if player is not naked]stripping down and [end if]piling your gear in the corner, you saunter over the groaning and moaning pair of demons, taking position in front of Corpegh's other end. The panting male's head is easily pulled up by the very convenient handholds of his large horns, bringing his eye-level right to your crotch. ";
				if player is male:
					if Cock Length of Player > Cock Length of Atticus:
						say "'Were you disappointed that your boy didn't even have a dick as long as yourself? Or maybe you got an upgrade after to compensate for something, eh?!' ";
					else if Cock Length of Player <= Cock Length of Atticus:
						say "'Looks like your dick is smaller than your boy's. No wonder he's the one pounding me, if his daddy isn't man enough, hah!' ";
					say "Corpegh grunts in a mocking tone, only to be paid back by Atticus giving him another full-thrust penetration after pulling out for a second. 'Shut up, bitch. You're our slut now, so keep any stupid comments to yourself!' The young man looks at you with an intense expression, showing that he's protective of you and clearly cares about your feelings.";
					say "     You smile at Atticus, showing that a few words from a beaten demon mean nothing to you, then grind your crotch against Corpegh's face. Being deep-dicked and having pre-cum rubbed over his handsome features shuts the large male up well enough and he opens his mouth without any further prompting, catching your shaft between his lips and going down on it. He covers the sharp teeth in his mouth with his lips and caresses your member with a warm, flexible tongue, expertly stimulating your erection. Spit-roasting the demon between the two of you is a lot of fun, and you share smiles, laughs and lust-filled looks with Atticus as you do so. Soon, the incubus leans further and further towards you, then reaches out to hook his fingers behind your head, pulling you in for a hungry kiss, complete with him pushing his tongue into your mouth to wrestle with yours. 'Thank you daddy, for being there for me. Taking me here and all of this,' he adds in a breathless voice, taking out all the stops in pounding Corpegh's ass at the same time.";
					WaitLineBreak;
					say "     Atticus still holds onto you, his eyes locked to yours as he penetrates the defeated demon again and again, and you can almost sense his incoming orgasm, more than just expecting it due to his rising moans and quickening breath. Then, as further seconds pass, you realize that you actually [italic type]can[roman type] feel something real and that Atticus is sharing his lust with you! His relentless thrusts build up an incredible high that leaves you tingly inside and your legs shaking, culminating in him thrusting in all the way one last time and erupting into Corpegh's depths, flooding the other male's gripping hole with spurts of rich, thick cum! Experiencing his pleasure along with your own pushes you over the edge right along with Atticus, and you clamp your fingers hard around the curves of the hellfire demon's horns as you unload down his throat with thick blasts of your own load.";
					say "     Simultaneously being filled from both ends seems to arouse your sex-toy of a demon, as he groans unintelligibly around your erection in his mouth, with his throat muscles squeezing you very nicely. Then your attention is drawn completely by Atticus again, who moves in for another bout of tongue-wrestling with yourself, making out while you ride out your respective orgasms. You don't know how long you spend like that, your shaft buried in a warm and tight place while a handsome young man makes out with you, but you enjoy every second of it, both in terms of lust as well as the shared experience with your son. When you eventually pull back from each other again, softening dicks slipping from Corpegh's mouth and asshole, the demon slumps to the ground in exhaustion, rolling over on his side. Looking down, you see that he's tenting out his jockstrap quite a bit and that the leather garment is dripping with cum. He must have squirted into it while being bred!";
					CreatureSexAftermath "Hellfire Demon" receives "AssFuck" from "Atticus";
					CreatureSexAftermath "Hellfire Demon" receives "OralCock" from "Player";
					WaitLineBreak;
					say "     You're not the only one to notice the state that the demon is in, and Atticus laughs in amusement as he sees what happened. 'A stomach full of cum, your ass leaking some too, and you made a mess in your own pants? Hah, I think we've been mispronouncing your name all this time. You seem more of a 'Cumpig' to me at least. What do you think daddy? Doesn't that fit much better?!' You chuckle and agree, enjoying the grumble that comes from your freshly-fucked former opponent. 'You like your new name, don't you, piggy? It'll be just between the three of us, unless you try to make a fuss about this. Much better this way, as it can't look good to your boss if you're the guy who got his ass beat and filled, eh?!' 'Fine, you little shit. Rub it in, will you.' Corpegh replies, prompting Atticus to say, 'I'd love to. Splatter some more loads all over your body and drench you in cum. But we're here to get what's owed to me. Gonna have to postpone the kinky fun with you to another day.'";
				else:
					say "'Bit light in the cock department for being a 'daddy'! What happened, did it fall off after you made this little shit?' Corpegh grunts in a mocking tone, only to be paid back by Atticus giving him another full-thrust penetration after pulling out for a second. 'Shut up, bitch. You're our slut now, so keep any stupid comments to yourself!' The young man looks at you with an intense expression, showing that he's protective of you and clearly cares about your feelings.";
					say "     You smile at Atticus, showing that a few words from a beaten demon mean nothing to you, then grind your crotch against Corpegh's face. Being deep-dicked and having [if player is female]your wet pussy[else]your crotch[end if] rubbed over his handsome features shuts the large male up well enough and he opens his mouth without any further prompting, starting to lick at you. He caresses your [if player is female]nether lips[else]sexless crotch[end if] with a warm, flexible tongue, expertly stimulating your body. Spit-roasting the demon between the two of you is a lot of fun, and you share smiles, laughs and lust-filled looks with Atticus as you do so. Soon, the incubus leans further and further towards you, then reaches out to hook his fingers behind your head, pulling you in for a hungry kiss, complete with him pushing his tongue into your mouth to wrestle with yours. 'Thank you daddy, for being there for me. Taking me here and all of this,' he adds in a breathless voice, taking out all the stops in pounding Corpegh's ass at the same time.";
					WaitLineBreak;
					say "     Atticus still holds onto you, his eyes locked to yours as he penetrates the defeated demon again and again, and you can almost sense his incoming orgasm, more than just expecting it due to his rising moans and quickening breath. Then, as further seconds pass, you realize that you actually [italic type]can[roman type] feel something real and that Atticus is sharing his lust with you! His relentless thrusts build up an incredible high that leaves you tingly inside and your legs shaking, culminating in him thrusting in all the way one last time and erupting into Corpegh's depths, flooding the other male's gripping hole with spurts of rich, thick cum! Experiencing his pleasure along with your own pushes you over the edge right along with Atticus, and you clamp your fingers hard around the curves of the hellfire demon's horns as you [if player is female]start to gush femcum over his tongue[else]tremble and twitch in an orgasm that has no real outlet[end if].";
					say "     Simultaneously being used to orgasm on both ends seems to arouse your sex-toy of a demon, as he groans unintelligibly with his tongue still lapping at your skin. Then your attention is drawn completely by Atticus again, who moves in for another bout of tongue-wrestling with yourself, making out while you ride out your respective orgasms. You don't know how long you spend like that, being orally pleasured while a handsome young man makes out with you, but you enjoy every second of it, both in terms of lust as well as the shared experience with your son. When you eventually pull back from each other again, Atticus's softening dick slipping from Corpegh's asshole, the demon slumps to the ground in exhaustion, rolling over on his side. Looking down, you see that he's tenting out his jockstrap quite a bit and that the leather garment is dripping with cum. He must have squirted into it while being bred!";
					CreatureSexAftermath "Hellfire Demon" receives "AssFuck" from "Atticus";
					if player is female:
						CreatureSexAftermath "Hellfire Demon" receives "OralPussy" from "Player";
					WaitLineBreak;
					say "     You're not the only one to notice the state that the demon is in, and Atticus laughs in amusement as he sees what happened. 'A stomach full of cum, your ass leaking some too, and you made a mess in your own pants? Hah, I think we've been mispronouncing your name all this time. You seem more of a 'Cumpig' to me at least. What do you think daddy? Doesn't that fit much better?!' You chuckle and agree, enjoying the grumble that comes from your freshly-fucked former opponent. 'You like your new name, don't you, piggy? It'll be just between the three of us, unless you try to make a fuss about this. Much better this way, as it can't look good to your boss if you're the guy who got his ass beat and filled, eh?!' 'Fine, you little shit. Rub it in, will you.' Corpegh replies, prompting Atticus to say, 'I'd love to. Splatter some more loads all over your body and drench you in cum. But we're here to get what's owed to me. Gonna have to postpone the kinky fun with you to another day.'";
				say "     Wisely stopping from engaging in more banter with Atticus, the hellfire demon just groans and lies back on the fround to rest. A broad smile spreads over Atticus's face as he saunters over to kiss your cheek, then goes to inspect the huge pile of loot piled up in one corner of the room. While he sorts through it to pick out a few choice articles he wants to take, you collect your equipment [if player is not naked]and get dressed again [end if]and keep an eye on Corpegh. Thankfully, the guy doesn't seem to want another fight right now. A little while later, Atticus has gathered two shopping bags full of clothes, toys and whatnot, collects his bat and the two of you leave the motel room. After pulling the door shut behind yourself, you walk past all of the whores and customers in front of the motel, strolling down the street afterwards. A few minutes later, Atticus asks, 'So - how about we go to my place to rest, eh?' He doesn't really wait for a reply, instead just leading you back towards the chapel, only stopping when you're on the Boundary Street, but still a little bit distant. 'That's where I live,' Atticus says, pointing to the apartment building next door.";
				WaitLineBreak;
				say "     'I don't usually have visitors, at least not without wings, but you can take the fire stair,' Atticus explains, and nods to the metal construction bolted to the outside of the building. The lowest part of it is built to swing down as one descends, with a spring holding the steps up if there's no weight on it. Glancing left and right to make sure that no one is watching, he waves you closer to show you something. There's actually a piece of transparent fishing line attached to the steps, thin enough to be almost invisible while at the same time being sturdy enough to pull it down by. Doing so, he leads you several floors, until you reach the window of the top floor. With him leading the way, you enter a moderately sized bedroom with simple but sturdy furniture. Various parts of it clearly aren't original to the original inhabitants of this place, for example the black silk sheets on the bed and a small collection of loot and clothes. While you take in your first impression of the place, Atticus quickly grabs a towel and some wetwipes and cleans himself up.";
				say "[AtticusSleepChoices]";
				now Resolution of Atticus_Payback is 1; [Atticus and player shared Corpegh]
			else if calcnumber is 2:
				LineBreak;
				project the Figure of Atticus_hard_smile_arm_raised_icon;
				say "     Smiling at Atticus, you proclaim that you're just here to help him make right a deal that wasn't paid up. It's only proper that he takes a little bit of resitution and that Corpegh is all his to enjoy. In a harsh tone, you inform the hellfire demon that he can expect something like this any time he messes with a member of your family. 'Is that the way it is? A little demon punk needing daddy to get them a fuck? Fine then! Bring it on!' the demon replies, a fair bit of amusement in his voice even though he just lost a fight. But then, given that he's already fully healed up, you guess that there really isn't that much to violent confrontations these days. Just a little bit of unpleasantness, usually followed by hot and sweaty sex. Atticus is more than ready to do just that, and he goes to lean his bat against the wall, then drops an article of clothing with every stride back towards Corpegh. By the time he's standing in front of the male demon again, your son is bare-ass naked and sporting a full-on erection that proudly leads the way.";
				say "     Counting on it that Atticus will need some time to savor his victory, you decide to turn your attention to the pile of looted gear that is filling one corner of the room and start sorting through it. You do your best to ignore the gasps, moans and slapping noises of Atticus balls against Corpegh's ass with each of his thrusts, instead contemplating how each article of clothing will look on your boy and if he'll like it. In the end, you arrive at having a few piles on the ground - rejects, maybies and stuff Atticus definitively should want. By the time you're mostly through, you hear orgasmic gasps from behind you and glance over your shoulder to see what's going on. Corpegh is lying on the ground now, panting in exhaustion and with a big tent in his leather jockstrap, which is dripping with cum. Meanwhile, Atticus is standing over him in all of his naked glory, looking very well satisfied with himself. He must just have pulled out a second ago.";
				CreatureSexAftermath "Hellfire Demon" receives "AssFuck" from "Atticus";
				WaitLineBreak;
				say "     You're not the only one to notice the state that the demon is in, and Atticus laughs in amusement as he sees what happened. 'Your ass leaking cum, and you made a mess in your own pants? Hah, I think we've been mispronouncing your name all this time. You seem more of a 'Cumpig' to me at least. What do you think daddy? Doesn't that fit much better?!' You chuckle and agree, enjoying the grumble that comes from your freshly-fucked former opponent. 'You like your new name, don't you, piggy? It'll be just between the three of us, unless you try to make a fuss about this. Much better this way, as it can't look good to your boss if you're the guy who got his ass beat and filled, eh?!' 'Fine, you little shit. Rub it in, will you.' Corpegh replies, prompting Atticus to say, 'I'd love to. Splatter some more loads all over your body and drench you in cum. But we're here to get what's owed to me. Gonna have to postpone the kinky fun with you to another day.'";
				say "     Wisely stopping from engaging in more banter with Atticus, the hellfire demon just groans and lies back on the fround to rest. A broad smile spreads over Atticus's face as he saunters over to kiss your cheek, then goes to inspect your piles like a kid in a candy store, almost squealing in joy as he sees some of the stuff you picked out. While he sorts through it, you keep a casual eye on Corpegh. Thankfully, the guy doesn't seem to want another fight right now. A little while later, Atticus has gathered two shopping bags full of clothes, toys and whatnot, collects his bat and the two of you leave the motel room. After pulling the door shut behind yourself, you walk past all of the whores and customers in front of the motel, strolling down the street afterwards. A few minutes later, Atticus asks, 'So - how about we go to my place to rest, eh?' He doesn't really wait for a reply, instead just leading you back towards the chapel, only stopping when you're on the Boundary Street, but still a little bit distant. 'That's where I live,' Atticus says, pointing to the apartment building next door.";
				WaitLineBreak;
				say "     'I don't usually have visitors, at least not without wings, but you can take the fire stair,' Atticus explains, and nods to the metal construction bolted to the outside of the building. The lowest part of it is built to swing down as one descends, with a spring holding the steps up if there's no weight on it. Glancing left and right to make sure that no one is watching, he waves you closer to show you something. There's actually a piece of transparent fishing line attached to the steps, thin enough to be almost invisible while at the same time being sturdy enough to pull it down by. Doing so, he leads you several floors, until you reach the window of the top floor. With him leading the way, you enter a moderately sized bedroom with simple but sturdy furniture. Various parts of it clearly aren't original to the original inhabitants of this place, for example the black silk sheets on the bed and a small collection of loot and clothes. While you take in your first impression of the place, Atticus quickly grabs a towel and some wetwipes and cleans himself up.";
				say "[AtticusSleepChoices]";
				now Resolution of Atticus_Payback is 2; [Atticus was given Corpegh to fuck, player didn't watch]
			else if calcnumber is 3:
				LineBreak;
				project the Figure of Atticus_hard_smile_arm_raised_icon;
				say "     Smiling at Atticus, you proclaim that you're just here to help him make right a deal that wasn't paid up. Stepping towards your son, you put your hand on the bulge in his pants and say that it's only proper that he takes a little bit of resitution and that Corpegh is all his to enjoy, but you'll be there with him if he wants to. He smiles in reply, throwing an arm around you to hug you close and planting a peck on your cheek. 'Thanks daddy, of course I want you with me!' Corpegh snorts at your exchange and says, 'Is that the way it is? A little demon punk needing daddy to get them a fuck? Fine then! Bring it on!' In a harsh tone, you reply to the hellfire demon that he can expect something like this any time he messes with a member of your family. The demon nods, a fair bit of amusement in his expression even though he just lost a fight. But then, given that he's already fully healed up, you guess that there really isn't that much to violent confrontations these days. Just a little bit of unpleasantness, usually followed by hot and sweaty sex.";
				say "     Atticus is more than ready to do just that, especially with you there and by his side. He hands you his bat to lean against the while, stripping his clothes off in a little show for you while you do so. Soon, he's fully naked and comes to take your hand, and together you walk up to the male demon. Stepping behind Atticus, you slide your arms around his body and caress him a little, planting a kiss on the back of his neck and nibbling on his earlobe. The young man seems happy to just continue having you take care of him, but while you're certainly tempted to do so, you don't lose sight of the payback to be extracted from the third person in the room. Taking hold of his erection, you slap Corpegh in the face with Atticus's cock, prompting the red-skinned man to catch his manhood between his lips and start sucking. While you stroke over his chest and lightly pinch the incubus's nipples, he pumps his hips back and forth a few times to grind Corpegh's nose into his pubes and feel the demon's tongue on his shaft.";
				WaitLineBreak;
				say "     Then, all of a sudden, Atticus takes hold of the defeated demon's horns and pulls him off his cock. 'I want his ass!' comes the demand of the young incubus, followed by him turning his head to the side to share a smile and lightly kiss your lips. 'Bossy little bitch, isn't he?!' Corpegh grunts, then obeys and assumes a position on all fours. Again taking over handling Atticus's erection, you lay its shaft between the demon's buttocks with a meaty slap while Atticus plays around with the straps of Corpegh's leather jockstrap. 'You're the bitch apparently - wearing those free access undies. Or is that how you please your boss, eh?' 'Careful, boy! I'm nnnghhhHHH! Fuck, you little shit!' the demon starts to reply, only to be interrupted as you align Atticus with his hole and push from behind, effectively ramming the incubus into his ass all the way in one deep thrust. YOur son follows up by grinding against the buttocks of the moaning male on his own accord, moaning as he enjoys being inside him.";
				WaitLineBreak;
				say "     Being right there as the demon is fucked by Atticus is a lot of fun, and you share caresses and laughs with Atticus as he pounds into Corpegh. Soon, the incubus pulls on you to stand beside him rather than behind, allowing you to more directly kiss and make out, complete with him pushing his tongue into your mouth to wrestle with yours. 'Thank you daddy, for being there for me. Taking me here and all of this,' he adds in a breathless voice, taking out all the stops in pounding Corpegh's ass at the same time. Atticus eyes stay locked to yours as he penetrates the defeated demon again and again, and you can almost sense his incoming orgasm, more than just expecting it due to his rising moans and quickening breath. Then, as further seconds pass, you realize that you actually [italic type]can[roman type] feel something real and that Atticus is sharing his lust with you!";
				say "     His relentless thrusts build up an incredible high that leaves you tingly inside and your legs shaking, culminating in him thrusting in all the way one last time and erupting into Corpegh's depths, flooding the other male's gripping hole with spurts of rich, thick cum! Experiencing his pleasure gets you breathing a little harder than before, and you share another kiss with Atticus. Being bred in the ass by a horny father and son couple seems to arouse your sex-toy of a demon, as he groans loudly and reflexively thrusts his hips. Glancing down, you see that he's actually fully hard inside his leather jockstrap and is actually unloading a torrent of cum right into the garment, making a mess of himself! Then your attention is drawn completely by Atticus again, who moves in for another bout of tongue-wrestling with yourself, making out while he rides out his orgasm.";
				CreatureSexAftermath "Hellfire Demon" receives "AssFuck" from "Atticus";
				WaitLineBreak;
				say "     You don't know how long you spend like that, holding Atticus and kissing, but you enjoy every second of it, both in terms of lust as well as the shared experience with your son. When you eventually pull back from each other again and his softening dick slipps from Corpegh's asshole, the demon slumps to the ground in exhaustion, rolling over on his side. Atticus notices the cum-dripping state that the demon's underwear is in a moment later, and he laughs in amusement as he sees what happened. 'Your ass leaking cum and you made a mess in your own pants? Hah, I think we've been mispronouncing your name all this time. You seem more of a 'Cumpig' to me at least. What do you think daddy? Doesn't that fit much better?!' You chuckle and agree, enjoying the grumble that comes from your freshly-fucked former opponent. 'You like your new name, don't you, piggy? It'll be just between the three of us, unless you try to make a fuss about this. Much better this way, as it can't look good to your boss if you're the guy who got his ass beat and filled, eh?!'";
				say "     'Fine, you little shit. Rub it in, will you.' Corpegh replies, prompting Atticus to say, 'I'd love to. Splatter some more loads all over your body and drench you in cum. But we're here to get what's owed to me. Gonna have to postpone the kinky fun with you to another day.' Wisely stopping from engaging in more banter with Atticus, the hellfire demon just groans and lies back on the fround to rest. Your son takes your hand in his and the two of you walk over to the huge pile of loot filling one corner of the room. Having fun as you pick out a few choice articles for Atticus to keep, you keep a casual eye on Corpegh. Thankfully, the guy doesn't seem to want another fight right now. A little while later, Atticus has gathered two shopping bags full of clothes, toys and whatnot, collects his bat and the two of you leave the motel room. After pulling the door shut behind yourself, you walk past all of the whores and customers in front of the motel, strolling down the street afterwards.";
				WaitLineBreak;
				say "     A few minutes later, Atticus asks, 'So - how about we go to my place to rest, eh?' He doesn't really wait for a reply, instead just leading you back towards the chapel, only stopping when you're on the Boundary Street, but still a little bit distant. 'That's where I live,' Atticus says, pointing to the apartment building next door. 'I don't usually have visitors, at least not without wings, but you can take the fire stair,' Atticus explains, and nods to the metal construction bolted to the outside of the building. The lowest part of it is built to swing down as one descends, with a spring holding the steps up if there's no weight on it. Glancing left and right to make sure that no one is watching, he waves you closer to show you something. There's actually a piece of transparent fishing line attached to the steps, thin enough to be almost invisible while at the same time being sturdy enough to pull it down by.";
				say "     Doing so, he leads you several floors, until you reach the window of the top floor. With him leading the way, you enter a moderately sized bedroom with simple but sturdy furniture. Various parts of it clearly aren't original to the original inhabitants of this place, for example the black silk sheets on the bed and a small collection of loot and clothes. While you take in your first impression of the place, Atticus quickly grabs a towel and some wetwipes and cleans himself up.";
				say "[AtticusSleepChoices]";
				now Resolution of Atticus_Payback is 3; [Atticus was given Corpegh to fuck, player encouraged him and 'guided him in']
			else if calcnumber is 4:
				LineBreak;
				project the Figure of Atticus_jeans_frown_arms_crossed_icon;
				say "     Focusing on Atticus and giving him a serious look, you proclaim that you did most of the fighting, so you'll get to enjoy the hellfire demon, while he can go grab the stuff he wanted. Atticus looks at you as if you slapped him in the face, his joy at your victory evaporating in a second. He starts to open his mouth to reply, but Corpegh gets there first and comments in a snarky tone, 'Hah! Is your daddy not letting you have any, little demon punk? You wanna cry now?' Atticus snaps his lips shut after that, simply turning around to go look at the pile of loot filling one corner of the room. You're left standing over the defeated demon, who gives you an evil grin. Shrugging off the possibility that this may not have been the best of decisions, you ";
				if player is male:
					say "pull out your cock and slap Corpegh's face with it, then ram it into the demon's mouth as he tries to say something. He starts sucking on your schlong readily enough, feeling quite nice and tight around your erection and teasing its shaft with his tongue.";
					say "     Given that the demon has built-in handholds in the form of horns, you can really go to town in face-fucking him, slamming into Corpegh with deep and rhythmic thrusts. You get so into pounding the defeated male that you almost miss the sound of a door opening, then clicking shut again. Being in the midst of getting your rocks off, you push that information aside and just keep going to town, until you feel a familiar tightness rise in your balls. Building up to a victorious shout, you keep fucking his face until you erupt down Corpegh's throat, giving the hellfire demon payback for what he did to Atticus. That thought makes you remember the incubus, and you look around to see what he's doing - only to see that you're alone with your demon sex toy. The young man must have left while you were still in the midst of sex. Hurriedly pulling out and putting your clothes back in order, you rush out of the room, followed by Corpegh's laughter, but you don't find Atticus anywhere.";
					CreatureSexAftermath "Hellfire Demon" receives "OralCock" from "Player";
				else if player is female:
					say "bare your pussy and rub it in Corpegh's face, smooshing him against your crotch as he tries to say something. He starts licking your sex readily enough after that, teasing your clit with the tip of his tongue.";
					say "     Given that the demon has built-in handholds in the form of horns, you can really go to town in grinding against his face, holding Corpegh tight and rubbing yourself against him. You get so into using the defeated male that you almost miss the sound of a door opening, then clicking shut again. Being in the midst of getting your rocks off, you push that information aside and just keep going to town, until you feel a tingling sensation build inside you. Building up to a victorious shout, you keep riding his tongue until you gush femcum over Corpegh's tongue, giving the hellfire demon payback for what he did to Atticus. That thought makes you remember the incubus, and you look around to see what he's doing - only to see that you're alone with your demon sex toy. The young man must have left while you were still in the midst of sex. Hurriedly pulling out and putting your clothes back in order, you rush out of the room, followed by Corpegh's laughter, but you don't find Atticus anywhere.";
					CreatureSexAftermath "Hellfire Demon" receives "OralPussy" from "Player";
				else:
					say "bare your bare crotch to Corpegh's face, smooshing him against your crotch as he tries to say something. He starts licking your sensitive skin readily enough after that, searching out what pleasure spots there are on a sexless crotch with the tip of his tongue.";
					say "     Given that the demon has built-in handholds in the form of horns, you can really go to town in grinding against his face, holding Corpegh tight and rubbing yourself against him. You get so into using the defeated male that you almost miss the sound of a door opening, then clicking shut again. Being in the midst of getting your rocks off, you push that information aside and just keep going to town, until you feel a tingling sensation build inside you. Building up to a victorious shout, you keep riding his tongue until your whole body trembles and twitches, giving the hellfire demon payback for what he did to Atticus. That thought makes you remember the incubus, and you look around to see what he's doing - only to see that you're alone with your demon sex toy. The young man must have left while you were still in the midst of sex. Hurriedly pulling out and putting your clothes back in order, you rush out of the room, followed by Corpegh's laughter, but you don't find Atticus anywhere.";
				now Resolution of Atticus_Payback is 101; [Atticus left]
				now Atticus is nowhere;
				now Loyalty of Atticus is 101; [Atticus left - for good]
			if Loyalty of Atticus < 4:
				now Loyalty of Atticus is 4; [successfully gained new outfits for Atticus]
			add "Well Dressed" to Traits of Atticus;
		else if fightoutcome > 19 and fightoutcome < 30: [lost]
			project the Figure of Atticus_hard_neutral_arm_raised_icon;
			say "     Stumbling back after his last blow, the only reason you don't collapse is that you catch yourself on the wall of the room, bracing against it to stand on your weak legs. You don't stay there long though, as the next thing you feel is Corpegh's clawed hand on your body, wrenching you forward and giving you a push to face-plant on the nearby motel bed. Groaning as you lie on a sheet that's slightly damp in one spot with not yet dried cum, you hear the hellfire demon walk after you, giving a mocking laugh. 'Not so tough after all, eh? Let's see how well you can scream when I spit you on my cock! [if player is not naked]Are you going to strip yourself, or do I have to cut that stuff off you, whore?!' Knowing it'll only get worse if you don't submit, you obey and strip down somewhat awkwardly thanks to your bruises. [else]Nice of you to come here naked and ready for a fuck! How convenient!' You just lay there and take his mocking, knowing it'll only get worse if you don't submit. [end if]";
			say "     Chuckling darkly, the large demon takes hold of your leg and drags you to the edge of the bed, hefting his monstrous seventeen-inch cock in the hand of his now-healed other arm. 'Let's tear you a new one. Bitches like you don't deserve any lube!' he proclaims roughly as he looks down at you with a teeth-baring grin. A sudden shout of 'No! Wait, please!' draws both of your attention to the side, where a somewhat singed Atticus is standing, garbed in the remains of his clothing. He's got a pleading expression on his face, staring at you and the other demon with wide eyes. 'Don't hurt my dad, please!' 'Oh? That's a new one I haven't heard before from an incubus,' Corpegh replies amusedly, then grabs you by the neck and draws you up from the bed. Looking back and forth from your face to Atticus's, he laughs out loud. 'Yeah, you even look similar. So, what did you do? Knock up some demoness and instead of going for seconds or thirds, you adopt your sin-baby? Typical human overemotional crap!'";
			WaitLineBreak;
			say "     Shaking you firm enough to make your brain rattle in your head, Corpegh chuckles darkly. 'Well, if you care so much about your brat that you hang out with him, this'll be even better than pounding you directly!' With that, he casually drops you, almost missing the bed, then strides over to Atticus and rips his remaining clothes off in mere moments, followed by a open-handed slap on his buttocks that leaves the clear outline of his clawed hand. 'Against the wall, now!' he commands your incubus son, following after him as Atticus stumbles to obey. 'And as for you, get over here too!' he shouts at you, shoving you to your knees just behind the incubus. 'Eat him out - it's the only lube the little bitch is gonna get!' Before you can do or say anything, the hellfire demon is already pushing your head forward, into the crack between Atticus's shapely buns. With little choice not to, you obey and start lapping away at the young demon's back door, playing your tongue over the ring of his pucker.";
			say "     Being what he is and fairly well used to having his ass fucked, Atticus reacts to your oral attention with eager moans, his opening flexing easily and allowing your tongue to dart into him, playing with his quivering hole. 'NNnghhh! Yeah daddy! Just like that!' he moans lustfully, happy to enjoy himself with you - but of course, that's not the main thing that's going on here. Before much longer, you're pushed further down, away from the spit-slick hole you were eating out, and now coming face to face with the enormous shaft of Corpegh. He slaps his piece of meat into Atticus's crack, laughing as the incubus trembles at the size of it touching his body. 'Gonna pound your boy, and you're having a ringside seat. Don't you dare look away!' he roars, then lines himself up with the opening and thrusts in hard! 'Fuuckkk!' Atticus gasps out breathlessly, and you can literally see his flat abs bulge out as the demon's cock pushes against them from the inside. Corpegh starts to fuck the incubus with deep thrusts right away, not giving Atticus even a moment to adjust.";
			WaitLineBreak;
			say "     You can't help but watch impotently as your demon son is fucked long and hard, with the hellfire demon railing him not holding back at all. His massive shaft stretches Atticus back door wide around its girth and half of the time the young man looks three months pregnant, with his stomach bulging outwards from the sheer size of the invader inside him. Thankfully, none of this seems to hurt the incubus all that much, and he even seems to be getting off from it, if the rock-hard and precum-dripping erection between his legs is any indication. Some time later, after you'd almost thought he forgot about you sitting between his legs, one of Corpegh's clawed hands reaches down to grab you by the back of your head, pressing you face-first against his large, swinging balls. They're warm and musky against your skin, another indignity that he can rub in your face - but there's another level to it beyond that, as you hear the demon's grunts of lust become more urgent by the moment, culminating in a victorious roar.";
			say "     The wrinkled flesh of his balls twitches against your face as Corpegh's balls contract rhythmically, and you can hear him call out, 'Feel that? It's my infernal seed flooding this little bitch's hole. Lick my balls while I breed your son!' Obeying without delay, you lap at his heavy balls, feeling them twitch and pulse as blast after blast of his spunk fills Atticus's hole. You remain like that for several minutes, forced to serve the male that just violated your son until his orgasm has run its course. Then suddenly, the weight of his balls is lifted from your head as the large demon steps backwards, one arm around Atticus waist to keep him impaled on his cock and drag him along. With a broad grin on his face, Corpegh wraps his fingers around the incubus's shaft and jerks him, aiming right at your face as he pushes the young man over the edge. A thick splat of his seed hits you right between the eyes and you have to clench them closed as not to get any acutally in your eyes.";
			WaitLineBreak;
			project the Figure of Atticus_jeans_smile_arm_raised_icon;
			say "     Feeling more spurts of warm wetness cover your face, coupled with Atticus's moans, you're blind and helpless in the motel room reeking of sex by now. As the cumshots seem to ebb off eventually, the large demon drops Atticus right on top of you, followed by flinging your gear and equipment onto the bruised tangle of two people that creates. 'Well, that was fun - but now take your shit and leave. I'm a busy man and can't fuck around all day with the slut princess and his daddy!' Atticus helps out by wiping your face with the first piece of cloth that comes to hand, then the two of you snatch up all of your gear and clothes before you stumble outside of the motel room, both still naked, sweaty and somewhat sticky. The door's thrown shut behind you as soon as you're over the doorstep. You make the walk of shame past all of the whores and customers in front of the motel, finally stopping in a nearby side alley to put yourselves back in order as good as you can.";
			say "     'Well, that was a bust,' Atticus says and blows out his breath after wiping off the cum running down the insides of his legs. He's barely said the words though before he gasps audibly, looking at you with concern in his eyes. 'Wait! I don't want you to misunderstand - I meant that he just was too strong for us, not that it's your fault or anything! I really like what you wanted to do daddy! Be there for me and help out. Even if we got our asses kicked!' The last sentence is said as a bit of a joke after he sees that you're not cross with him. 'So - how about we go to my place to rest, eh?' He doesn't really wait for a reply, instead just leading you back towards the chapel, only stopping when you're on the Boundary Street, but still a little bit distant. 'That's where I live,' Atticus says, pointing to the apartment building next door.";
			WaitLineBreak;
			say "     'I don't usually have visitors, at least not without wings, but you can take the fire stair,' Atticus explains, and nods to the metal construction bolted to the outside of the building. The lowest part of it is built to swing down as one descends, with a spring holding the steps up if there's no weight on it. Glancing left and right to make sure that no one is watching, he waves you closer to show you something. There's actually a piece of transparent fishing line attached to the steps, thin enough to be almost invisible while at the same time being sturdy enough to pull it down by. Doing so, he leads you several floors, until you reach the window of the top floor. With him leading the way, you enter a moderately sized bedroom with simple but sturdy furniture. Various parts of it clearly aren't original to the original inhabitants of this place, for example the black silk sheets on the bed and a small collection of loot and clothes. While you take in your first impression of the place, Atticus quickly grabs a towel and some wetwipes and cleans himself up.";
			CreatureSexAftermath "Atticus" receives "AssFuck" from "Hellfire Demon";
			say "[AtticusSleepChoices]";
			now Resolution of Atticus_Payback is 3; [no new outfits for Atticus, but still bonded in defeat]
			now Loyalty of Atticus is 3; [no new outfits for Atticus, but still bonded in defeat]
		else if fightoutcome is 30: [fled]
			say "     You actually manage to escape the motel room of Corpegh, leaving your son behind to bear the full brunt of a very angry demon's wrath. Waiting around for a while afterwards, you hope to see Atticus do the same, but he never returns. Seems like the hellfire demon had other plans for him, or being abandoned by his only 'real' family hit the young man hard enough not to want to come back.";
			now Loyalty of Atticus is 101; [player abandoned him to Corpegh - he won't be seen again]
			now Atticus is nowhere; [stashed in another dimension - not to return]
	else if calcnumber is 2:
		LineBreak;
		project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
		say "     Reaching out and placing a hand on the sex demon's shoulder, you give Atticus a little squeeze and tell him not to stay angry about this. After all, he's a handsome guy and doesn't need flashy clothing to impress. If he just wandered into the middle of a group of people without a stitch of clothing on him, they'd be speechless, and not just because of his shamelessness. 'You think so? Thanks daddy!' your son replies, his spirit lifting visibly at the encouraging words. And just because he is what he is, the next thing you hear is the sound of his zipper being undone, followed by Atticus kicking off is pants and flinging all other articles of clothing aside in short order. Standing in front of you completely naked, hands on his hips and proudly presenting his long schlong, he adds, 'Wanna show me you mean it?'";
		say "     A pregnant silence stretches out between you for a few seconds, then he lets out a happy laugh and steps forward to hug you in a friendly way. 'You should have seen your face! Thanks dad, for being there for me.' He holds you in a tight embrace for a moment, his naked form plastered against your front, then traces the tip of his tongue along your earlobe before whispering, 'If you actually wanna do something, I'm game.' With that said, he draws back from you and collects his clothes, not without shaking his ass at you when he bends down to do so.";
		now Loyalty of Atticus is 3; [player consoled him]
	else if calcnumber is 3:
		LineBreak;
		project the Figure of Atticus_jeans_frown_arms_crossed_icon;
		say "     Clearing your throat and shaking your head at his behavior, you tell Atticus that he shouldn't be such a baby about what happened. He got fucked over, so what?! Such things happen. The young demon's reaction reels back at your sharp words, almost as if you had struck him in the face. 'But I- he- HEY, you're supposed to be on MY side in this! Why are you being an asshole?' His frown from before is back in a flash, this time directed at you, quickly followed by him saying, 'I need some fresh air. Don't come after me.' And with that, he rushes outside, taking off into the air with a running start. You shrug as you see him go. He'll cool down eventually, though something tells you that you just lost a major amount of trust he had in you.";
		now Atticus is nowhere; [stashed in another dimension - he'll be back later]
		now Loyalty of Atticus is 100; [player scolded him - Atticus doesn't respect them anymore]

to say AtticusSleepChoices:
	connect Atticus's Bedroom;
	say "     Turning towards you, casually and comfortably naked, Atticus gives you a smile, then stretches his arms and wings and lets out a yawn. 'Well, I can tell you I'm pretty beat. I think I'll take a nap now.' Nodding towards the fairly comfortably looking double bed in the room, he reaches out to you and strokes the side of your arm, then asks in playful innocence, 'Want to join me, daddy? Maybe hold me so I don't have any bad dreams about demons?'";
	say "     [bold type]How do you reply to his offer?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - Agree, but tell him he should stay on his side. The bed's really big enough for two after all.";
	say "     [link](2)[as]2[end link] - Lie down to sleep, with Atticus in your arms.";
	say "     [link](3)[as]3[end link] - Thank him, but refuse the offer.";
	say "     [link](4)[as]4[end link] - Actually, tell him you want to fuck right now. He should be thankful for you wasting so much time on him.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go sleep beside Atticus, [link]2[end link] to sleep with Atticus in your arms, or [link]3[end link] to politely decline, or [link]4[end link] to demand sex.";
	if calcnumber is 1:
		LineBreak;
		say "     Clearing your throat and then putting a hand on his shoulder to give him a little squeeze, you tell Atticus that you'll join him, but that he has to stay on his side of the bed. There's going to be sleeping, nothing else. He looks a tiny bit disappointed at that decision, but catches himself quickly enough, putting a smile back on his face as he leans in and kisses your cheek. 'Thanks dad. It's really nice you'll stay with me.' With that said, he gets on the bed and lies down, stretching himself out nakedly on top of the sheets. From that position, he watches you [if player is not naked]strip and [end if]put down your gear, then lie down on the other side of the bed. He casually strokes a hand over his chest and gives his nipples a little pinch to tease you. After that though, he dozes off fairly quickly. Seems he actually is quite tired, after all. You smile at his antics, then lay back to get some rest yourself.";
		say "     A little while later, you find yourself rising from the depths of sleep once more, feeling refreshed. Atticus notices as you get up, his eyes opening to a half-lidded glance your way. 'It was nice to know you're here with me. I dreamt of you, daddy,' he says in almost a whisper before dozing off again. Seeing that he needs more rest, you decide to quietly leave the apartment and do so after collecting your gear.";
	else if calcnumber is 2:
		LineBreak;
		say "     Pulling Atticus towards yourself and embracing the naked incubus, you run a hand through his brown hair and just hold him for a second, then tell him that you'll be there to kick any dream demon's asses. Chuckling, the young man plants a kiss on your cheek and slips out of your grasp, then lies down, watching with a smile as you [if player is not naked]strip and [end if]put down your gear and join him. He folds his wings in tightly, allowing you to lay your arms around his body from behind as you curl up to sleep together. With his soft-skinned, warm form pressed against your front, you doze off, content to just rest for now.";
		say "     A little while later, you find yourself rising from the depths of sleep once more, feeling refreshed and at the same time moderately horny, as if the sheer proximity to your sex-demon offspring wound you up more than a bit. Atticus notices as you try to untangle yourself from him even though you try to be slow about it, his eyes opening to a half-lidded glance your way. 'It was nice to know you're here with me. I dreamt of you, daddy,' he says in almost a whisper before dozing off again. Seeing that he needs more rest, you decide to quietly leave the apartment and do so after collecting your gear.";
		if Loyalty of Atticus < 5:
			now Loyalty of Atticus is 5; [player slept with him in their arms]
	else if calcnumber is 3:
		LineBreak;
		say "     Clearing your throat, you tell Atticus that he should just go to bed and get some rest by himself. He looks a tiny bit disappointed at that decision, but catches himself quickly enough, putting a smile back on his face as he leans in and kisses your cheek. 'Thanks dad. I'll be thinking of you.' With that said, he gets on the bed and lies down, stretching himself out nakedly on top of the sheets. Seems he actually is quite tired, as he dozes off a moment later, still in his sexy, teasing pose. You smile at his antics, then quietly leave the apartment through the window and move down towards the street.";
	else if calcnumber is 4:
		LineBreak;
		say "     Putting an expectant grin on your face, you tell Atticus that he should pay you back for all the time you spent going with him. You want sex, here and now. He looks taken aback as you say this, his head whipping around to stare at you and frowning. 'I'm tired! Leave me alone!' he throws back at you, then points at the window, expecting you to go. With a shrug and murmuring that he shouldn't be such a bitch under your breath, you exit out the window and move down to the street below.";
		now Loyalty of Atticus is 100; [lost respect - player is a fuck partner, nothing more]
	wait for any key;
	now Player is in Boundary Street East;
	try looking;

[
Followup event:
Walking in on Atticus and some other dude in the Chapel
Options:
- Do not watch
- Just watch (player doesn't care what he does)
- Approach
	- Tell him that his hole is yours only
		- Rim & Finger him while he fucks
		- Shove a dildo up his ass while he fucks
		- Fuck him in a chain
	- Tell him that his dick is yours only (and blow him while he is fucked)
	- Guide the dude in pounding Atticus (touching, stroking, "fuck my son!")
	- Guide Atticus in fucking the dude (touching, stroking, "pound him, boy!")
	- Tell him that you don't want him to fuck around (causes a screaming match/fight)
]

[
Ending Choice Event:
Dreaming about Atticus:
Player wakes up in a nice and clean house (after the rescue), hearing noises down from the kitchen. Player goes to find Atticus preparing breakfast.
Options:
- Walk up and wish him a good morning, then have family breakfast
- Walk up and kiss his neck, embracing your lover from Behind
- Walk up and bend him over, making use of the live-in slut you have taken him to be

-> Sets the tone of a later ending by letting the player choose their future actions
]

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 2 - NPC
[***********************************************************]
[***********************************************************]
[***********************************************************]

Table of GameCharacterIDs (continued)
object	name
Atticus	"Atticus"

Atticus is a man.
ScaleValue of Atticus is 3. [human sized]
Cock Count of Atticus is 1.
Cock Length of Atticus is 12.
Ball Size of Atticus is 8.
Ball Count of Atticus is 2.
Cunt Count of Atticus is 0.
Cunt Depth of Atticus is 0.
Cunt Tightness of Atticus is 0.
Nipple Count of Atticus is 2. [2 nipples]
Breast Size of Atticus is 0.
[Basic Interaction states as of game start]
PlayerMet of Atticus is false.
PlayerRomanced of Atticus is false.
PlayerFriended of Atticus is false.
PlayerControlled of Atticus is false.
PlayerFucked of Atticus is false.
OralVirgin of Atticus is false.
Virgin of Atticus is true.
AnalVirgin of Atticus is false.
PenileVirgin of Atticus is false.
SexuallyExperienced of Atticus is true.
MainInfection of Atticus is "Incubus".
Description of Atticus is "[AtticusDesc]".
Conversation of Atticus is { "<This is nothing but a placeholder!>" }.
The scent of Atticus is "     Atticus smells nicely masculine, with just the smallest amount of sexy sweat to his body, complete with lots of pheromones that can drive almost anyone wild in lust.".

to say AtticusDesc:
	if debugactive is 1:
		say "DEBUG -> HP of Atticus: [HP of Atticus] <- DEBUG[line break]";
	project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
	say "     Atticus has the looks of an eighteen-year old young man with a toned swimmer's build. He has absolutely no hang-ups about showing it off either, strolling around naked or even hard with casual ease. His handsome face is farmed in unruly brunette hair, with a pair of small, sharp horns curving up from his forehead. Behind his back you can see muscular bat-like wings half-unfolded, as if ready to be laid around you or another partner to draw you in against him. The long and thin tail with a spaded tip completes the image of an attractive incubus.";
	say "     As he notices your interest in him, the young incubus gives you an enticing smile and meets your gaze with his blue eyes, followed by a wink with that promises anything you might want or desire.";

an everyturn rule:
	if PlayerMet of Atticus is true and Loyalty of Atticus < 101:
		if Energy of Atticus is 0: [he's at the chapel/his place]
			if TimekeepingVar is 1 or TimekeepingVar is -7: [midnight - leaves the chapel to scavenge]
				if Player is in Burned-Out Chapel and Atticus is in Burned-Out Chapel:
					project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
					say "     After a quick wave and with the words, 'See you tomorrow,' Atticus leaves the building and takes off into the air with a running start and beats of his large wings.";
				else if Player is in Boundary Street East and Atticus is in Burned-Out Chapel:
					project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
					say "     Coming out of the chapel, Atticus gives you a quick wave and says the words, 'See you tomorrow.' Then he takes off into the air with a running start and beats of his large wings.";
				now Atticus is nowhere; [stashed in another dimension]
			else if TimekeepingVar is 0 or TimekeepingVar is -8: [pre dawn - Atticus comes home]
				if Player is in Atticus's Bedroom and Atticus is nowhere:
					if Loyalty of Atticus < 99:
						project the Figure of Atticus_jeans_smile_arms_lowered_icon;
					else:
						project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
					say "     You hear the beating of large wings from outside, followed by Atticus landing on the fire escape. He enters the room through its window, [if Loyalty of Atticus < 99]smiling at you as he sees you're here. 'Hey dad!' he greets you, then sets down the bag of items he was carrying next to the bed and gives you a quick hug. [else]giving a nod of recognition as he sees you there. 'Oh hey, did you want anything?' he asks, half-listening to what you might reply as he puts down the bags he was carrying and stops to grab a snack. [end if][line break]";
				else if Player is in Boundary Street East and Atticus is nowhere:
					say "     You hear the beating of large wings above you and see Atticus landing on the top of the fire escape attached to the apartment building to the southeast. He quickly climbs through a window, vanishing inside.";
				move Atticus to Atticus's Bedroom;
			else if TimekeepingVar is 7 or TimekeepingVar is -1: [early morning - Atticus goes to sleep]
				if Player is in Atticus's Bedroom and Atticus is in Atticus's Bedroom:
					if Loyalty of Atticus > 2 and Loyalty of Atticus < 99:
						project the Figure of Atticus_soft_smile_arms_lowered_icon;
						say "     With a yawn, Atticus walks over to his bed, dropping items of clothing along the way. Soon, he's standing beside the double bed in all of his bare-assed glory, looking down at the black silk sheets, his tail waving in a lazy sway behind his back.";
						say "[AtticusSleepChoices]";
					else:
						project the Figure of Atticus_soft_neutral_arms_lowered_icon;
						say "     With a yawn, Atticus walks over to his bed, dropping items of clothing along the way. Soon, he's standing beside the double bed in all of his bare-assed glory, looking down at the black silk sheets, his tail waving in a lazy sway behind his back. Glancing over his shoulder, he says, 'See you tomorrow or so. You'll find your own way out, right?' Not waiting for a reply, the incubus lies down on the bed and curls up to sleep, dozing off in a few moments.";
				now Sleeping of Atticus is true;
			[else if TimekeepingVar is 6 or TimekeepingVar is -2:] [mid-morning - unused, Atticus sleeps in]
			else if TimekeepingVar is 5 or TimekeepingVar is -3: [noon]
				if Player is in Atticus's Bedroom and Atticus is in Atticus's Bedroom:
					project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
					say "     Waking up from his rest, Atticus cleans himself up a bit and gets dressed, then says, 'I'll be in the chapel to hang out. Wanna join me down there?' With a smile, he climbs out the window, then jumps off the fire escape, landing on the street by using his wings to soften the fall.";
				else if Player is in Boundary Street East and Atticus is in Atticus's Bedroom:
					say "     Atticus climbs through a window of the top floor of the apartment building to the southeast, then jumps off the fire escape. He lands on the street by using his wings to soften the fall, then strolls into the chapel at the end of the road.";
				else if Player is in Burned-Out Chapel and Atticus is in Atticus's Bedroom:
					project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
					say "     Atticus comes strolling in, giving you a wave and the greeting of, 'Hey dad!'";
				move Atticus to Burned-Out Chapel;
				now Sleeping of Atticus is false;
			[else if TimekeepingVar is 4 or TimekeepingVar is -4:] [mid afternoon - unused, he just hangs out]
			else if TimekeepingVar is 3 or TimekeepingVar is -5: [evening]
				if Player is in Burned-Out Chapel and Atticus is in Burned-Out Chapel:
					say "     Atticus vanishes in one of the side rooms for a short moment, coming back with a bag of chips in his hands that he crunches up one after another. He even offers you a few.";
			[else if TimekeepingVar is 2 or TimekeepingVar is -6:] [early night - unused, he just hangs out]
		else if Energy of Atticus is 1: [he's in the bunker now]
			say ""; [placeholder]

Table of GameRoomIDs (continued)
Object	Name
Atticus's Bedroom	"Atticus's Bedroom"

Atticus's Bedroom is a room.
Atticus's Bedroom is sleepsafe.
Description of Atticus's Bedroom is "[AtticusRoomDesc]".

after looking while player is in Atticus's Bedroom:
	if findwires < 2 and fixedgens < 3:
		project the Figure of Map_RedLight_Nopower_3_icon;
	else:
		project the Figure of Map_RedLight_3_icon;

to say AtticusRoomDesc:
	say "     You're in a mid-sized bedroom on the top floor of an apartment building at the very edge of the red light district. The former owners seem to have done their best to keep the place clean, and it is filled with simple, but sturdy furniture. Since taking over the apartment, Atticus has added in some nice flourishes and creature comforts, as you can see a range of clothes, sex toys and black silk sheets on the bed that surely weren't part of the inventory before. Overall, the place has a fairly nice feel to it, and something tells you that you're one of the few people he's ever taken up here. Being an incubus, the young man has no qualms about fucking his partners wherever, and he keeps is home as a special place.";

to connect Atticus's Bedroom:
	change the down exit of Atticus's Bedroom to Boundary Street East;
	change the up exit of Boundary Street East to Atticus's Bedroom;

instead of going up from Boundary Street East:
	say "     You make a beeline over to the apartment building Atticus lives in, taking hold of the thin fishing line barely visible dangling beneath the fire escape. Giving it a slow pull, the metal stairway swings down, allowing you to climb up and reach the entrance to the young incubus's bedroom on the top floor. Pulling the window open, you slip into the room.";
	now Player is in Atticus's Bedroom;

instead of going down from Atticus's Bedroom:
	say "     You climb out of the window, stepping onto the metal grating of the fire escape. From there, it's just a question of walking down several sets of metal stairs to reach the street level. As you step off the last step, the stairs swing up, out of reach of casual passersby. Of course, you know that there's actually a barely visible fishing line dangling off the swinging stairs, so you can return to Atticus's home anytime you want.";
	now Player is in Boundary Street East;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 3 - Conversation
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of conversing the Atticus:
	if Atticus is asleep:
		say "     The young incubus is deep asleep, splayed out nakedly on his bed. [bold type]Do you want to wake him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yup. He had enough rest.";
		say "     ([link]N[as]n[end link]) - Nah, it's not that important.";
		if Player consents: [go after them]
			LineBreak;
			say "     Bending over and giving the handsome demon a little shake, Atticus gives a groan as he is pulled from dreamland. A moment later, his eyes open and blearily blink at you, after which he quickly sits up when realizing who's waking him. 'Oh hey, daddy. What's up?'";
			now Sleeping of Atticus is false;
			say "[AtticusTalkMenu]";
		else:
			say "     You decide to let him rest for now.";
	else:
		say "[AtticusTalkMenu]";

to say AtticusTalkMenu:
	say "     [bold type]What do you want to talk to Atticus about?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	choose a blank row in table of fucking options;
	now title entry is "Himself";
	now sortorder entry is 1;
	now description entry is "Ask Atticus to tell you about himself";
	[]
	if Energy of Atticus is 0 and Loyalty of Atticus > 4 and Loyalty of Atticus < 99: [is at the chapel, player slept with Atticus in their arms]
		choose a blank row in table of fucking options;
		now title entry is "Coming to live with you";
		now sortorder entry is 2;
		now description entry is "Invite Atticus to stay with you in the bunker";
	[]
	if Energy of Atticus is 1 and Loyalty of Atticus > 4 and Loyalty of Atticus < 99: [is in the bunker, player slept with Atticus in their arms]
		choose a blank row in table of fucking options;
		now title entry is "Spending some time apart for now";
		now sortorder entry is 3;
		now description entry is "Send Atticus back to stay at his old place again";
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
				if (nam is "Himself"):
					say "[AtticusTalk1]";
				if (nam is "Coming to live with you"):
					say "[AtticusTalk2]";
				if (nam is "Spending some time apart for now"):
					say "[AtticusTalk3]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusTalk1:
	project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
	say "     Atticus chuckles as you ask him about himself and he starts to casually play with his nipples as he thinks for a second, then replies, 'Oh, it's just the usual story. You bone mom in a bout of amazing sex, knock her up and a few hours later - boom, here I am. The world's my oyster, and I wanna fuck all of it! [one of]That includes actual oysters actually, you see, there were those freaky girls out in the surf at the coast, and I gave it to them good! Might have some grand-kids out there too now, if you know what I mean.' [or]Women, men, other things - where's the difference? I can tell you, there was this one pretty boy orc who just had the most amazing ass that I just couldn't get enough of. He had a proper little bump in his stomach by the time his leather daddy came back to check on him and I had to beat a hasty retreat out a window.' [or]Women, men, other things - where's the difference? I mean, canine bitches clearly have that nice big tail as a handhold to hold on to while you fuck [']em, right? So, so convenient...' [at random]He regales you with a shockingly detailed account of his latest conquests, clearly enjoying himself quite a bit as he lays it out for you.";

to say AtticusTalk2: [inviting him to the bunker]
	project the Figure of Atticus_jeans_smile_arms_lowered_icon;
	say "     Clearing your throat and stepping up to the young incubus, you pull Atticus into a hug. As he lays his arms around you in turn and lightly grinds his crotch against forward, you ask him if he wants to join you in the bunker beneath the library. You've got a warm bed there that really is big enough for two and he could share it. Pulling back to look into your eyes, Atticus shows a beaming smile, followed by planting a kiss on your cheek. 'Yes, yes, yes! I wanna stay with you daddy!' he replies happily and embraces you once more, hands wandering all over your body. You enjoy a few moments of closeness with the sexy incubus, before he says, 'I gotta pack for the move!' and hurries off.";
	now Energy of Atticus is 1;
	now Atticus is in Maintenance Storeroom;

to say AtticusTalk3: [sending him back to his own place]
	say "     Clearing your throat and stepping up to the young incubus, you plant a hand on his shoulder and look him in the eyes. You show him a friendly expression as you explain that it might be best if he didn't stay here with you right now. Maybe he should move back to his old place for now. As the meaning of your words sinks in, the young demon's expression falls and you can't help but feel as if you've just kicked a puppy. His eyes tear up a little, before he wipes it away, then almost wails, 'But, but why? I thought you wanted me here daddy!' His piercing, almost desperate gaze almost seems to ask what he did wrong as he stares at you intently.";
	say "     [bold type]How do you reply?[roman type][line break]";
	LineBreak;
	say "     [link](1)[as]1[end link] - It's not his fault and this is for the best right now. He should trust you about that.";
	say "     [link](2)[as]2[end link] - It was a stupid idea on your part. You see how much living together means to him, and yourself, and you've just changed your mind.";
	say "     [link](3)[as]3[end link] - Well, you got what you wanted from him. Time for Atticus to leave.";
	say "     [link](4)[as]4[end link] - You don't need to explain yourself. He should just leave.";
	now calcnumber is 0;
	while calcnumber < 1 or calcnumber > 4:
		say "Choice? (1-4)>[run paragraph on]";
		get a number;
		if calcnumber is 1 or calcnumber is 2 or calcnumber is 3 or calcnumber is 4:
			break;
		else:
			say "Invalid choice. Type [link]1[end link] to go gently send Atticus back, [link]2[end link] to let him stay, [link]3[end link] to tell him you don't need him anymore, or [link]4[end link] to just throw him out.";
	if calcnumber is 1:
		LineBreak;
		project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
		say "     Stroking over Atticus's hair and then running your hand down to caress his cheek, you explain in a gentle tone that this isn't anyone's fault, least of all his. You don't want to get rid of him, and this doesn't mean that he's not still your son and close to your heart. Still, it would be better for everyone if he stayed at his own place for right now. Pulling him into an embrace, you just hold Atticus while he sobs a little, until he eventually cools down again. With your arm around his shoulders, you walk the incubus over to where most of his things are and help him pack. 'I - I hope you'll let me come back soon, daddy!' he says in a sad tone, then leaves hesitantly, looking back at you and giving a wave before he steps through the door and is gone.";
		now Energy of Atticus is 0; [in the chapel and moving around there]
		now Atticus is in Burned-Out Chapel;
	else if calcnumber is 2:
		LineBreak;
		project the Figure of Atticus_jeans_neutral_arms_lowered_icon;
		say "     Stroking over Atticus's hair and then running your hand down to caress his cheek, you explain that it just was a stupid idea you had. Seeing how much it means to him to be here with you and realizing that you don't want to see him go after all, you just changed your mind. 'T-thanks daddy!' Atticus says, smiling again even though he's still sniffling. Then he gives you a very tight hug, almost as if to make sure that you're actually there. You stay like that for a little while, just holding him tight, giving Atticus the time he needs to calm down.";
	else if calcnumber is 3:
		LineBreak;
		project the Figure of Atticus_jeans_neutral_arms_crossed_icon;
		say "     Shrugging, you tell him that you had enough of him in the time that he did stay over. You don't really need him right now, so he should get back to his own place for mow. He pulls back from you, eyes searching yours for any indication that you're joking or anything else to explain this. Then he sniffs, forcing his expression into a stoic mask. 'I... see. So this was all just about getting a bedwarmer for you?! I'll go back to the chapel then. You know where to find me if you want a fuck.' With that said, he goes to methodically pack everything he owns, his expression never wavering. He's thorough about it, as if he expects never to return. Soon after, the young man leaves, laden with his stuff.";
		now Loyalty of Atticus is 100; [he sees the player as nothing but a sex partner now]
		now Energy of Atticus is 0; [in the chapel and moving around there]
		now Atticus is in Burned-Out Chapel;
	else if calcnumber is 4:
		LineBreak;
		project the Figure of Atticus_jeans_frown_arms_crossed_icon;
		say "     Not seeing the need to give any explanation at all, you just harshly tell the young man that he needs to get out. He reels back from you, reacting almost as if you had struck him in the face. 'But, but - this isn't how it's supposed to go! You asshole! I - I HATE YOU!' With tears now openly streaming down your son's face, he runs out of the room, barely even stopping to gather his things before he is gone. [bold type]You don't think you'll see him again.[roman type][line break]";
		now Loyalty of Atticus is 101; [he left, never to return]
		now Energy of Atticus is 100; [he left]
		now Atticus is in Burned-Out Chapel;

[***********************************************************]
[***********************************************************]
[***********************************************************]
Section 4 - Sex
[***********************************************************]
[***********************************************************]
[***********************************************************]

instead of fucking the Atticus:
	if Atticus is asleep:
		say "     The young incubus is deep asleep, splayed out nakedly on his mattress. [bold type]Do you want to wake him?[roman type][line break]";
		LineBreak;
		say "     ([link]Y[as]y[end link]) - Yeah, you're horny!";
		say "     ([link]N[as]n[end link]) - Nah, you can restrain your lusts for now.";
		if Player consents: [wake]
			LineBreak;
			say "     Bending over and giving the handsome demon a little shake, Atticus gives a groan as he is pulled from dreamland. A moment later, his eyes open and blearily blink at you, after which he quickly sits up when realizing who's waking him. 'Oh hey, dad. What's up?'";
			now Sleeping of Atticus is false;
			say "[AtticusSexMenu]";
		else:
			LineBreak;
			say "     Shaking your head to clear it from lusty thoughts, you decide not to wake Atticus up right now.";
	else:
		if (lastfuck of Atticus - turns < 2): [he got fucked in the last 18 hours = 6 turns]
			say "     'Hey, I'm a horny dad, but after a certain point one can get sore. Give ma a moment, alright?' Atticus replies with a chuckle.";
		else: [ready for sex]
			say "     As you walk up to Atticus, he recognizes the lustful gleam in your eyes and licks his lips in anticipation. 'Oooh daddy, are you ready to play with me?' he says in a cocky tone, stroking a hand over his muscular chest as he does so.";
			wait for any key;
			say "[AtticusSexMenu]";

to say AtticusSexMenu:
	if Loyalty of Atticus < 100:
		project the Figure of Atticus_hard_smile_arms_lowered_icon;
	else:
		project the Figure of Atticus_hard_neutral_arm_raised_icon;
	say "     [bold type]What exactly do you plan on doing with Atticus?[roman type][line break]";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[
	if Player is male: [only males and herms can get a blowjob]
		choose a blank row in table of fucking options;
		now title entry is "Push him down to get a blowjob";
		now sortorder entry is 1;
		now description entry is "Make Atticus suck you off";
	]
	choose a blank row in table of fucking options;
	now title entry is "Sink to your knees and give Atticus a blowjob";
	now sortorder entry is 2;
	now description entry is "Give the handsome demon some oral pleasure";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Take control and fuck Atticus's ass";
		now sortorder entry is 3;
		now description entry is "Bend him forward and give the incubus a hard pounding";
	[
	if Player is female:
		choose a blank row in table of fucking options;
		now title entry is "Take Atticus's cock in your pussy";
		now sortorder entry is 4;
		now description entry is "Get fucked by the incubus";
	[]
	choose a blank row in table of fucking options;
	now title entry is "Take Atticus's cock in your ass";
	now sortorder entry is 5;
	now description entry is "Get fucked in the ass by the incubus";
	]
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
				if (nam is "Push him down to get a blowjob"):
					say "[AtticusSex1]";
				if (nam is "Sink to your knees and give Atticus a blowjob"):
					say "[AtticusSex2]";
				if (nam is "Take control and fuck Atticus's ass"):
					say "[AtticusSex3]";
				if (nam is "Take Atticus's cock in your pussy"):
					say "[AtticusSex4]";
				if (nam is "Take Atticus's cock in your ass"):
					say "[AtticusSex5]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     You step back from the young incubus, shaking your head slightly as he gives a questioning look.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusSex1: [oral on the player]
	say "     ...";

to say AtticusSex2: [BJ on Atticus]
	say "     Giving Atticus's shoulder a squeeze, you lean in to kiss him on the lips, at which point the young man slides his arms around you and takes control. His tongue darts into your mouth as the two of you make out, wrestling your own down in a playful show of dominance. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'I know what you want,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, can you? Your mouth watering when you think about sucking my long, hard cock! Here it is, daddy! Go on, worship it!' With that said, the incubus grasps the base of his thick piece of man-meat and wags it against your body while his other hand moves to push down on your shoulder.";
	say "     Sinking down to your knees, you look up to see the smiling face of Atticus looking down at you, just past his erect cock. He traces the tip of his index finger over the cum-slit and comes away from it with a sticky string of pre-cum, then smears the fluid over your lips. 'Open wide to receive me!' the young demon commands, proudly holding out his dick and moving to stand over you. He gleefully brushes his cum-slit against your lips even as you open your mouth and try to start sucking, only allowing you to do so once he has spread more of his pre on you. Then finally, he's inside your mouth - his warm length of demonic cock laying on your tongue and pushing further back to bump the back of your throat. Working himself back and forth, the incubus contains his impatience enough so that he can get you used to his girth, tilting back your head as he pushes down your throat eventually.";
	WaitLineBreak;
	say "     'You did such a good job in making this cock, daddy! Glad you're taking the chance to savor your handiwork now. How does it feel down your throat, eh? Leaking pre into daddy! Fuck, this is nice!' Atticus says in a gleeful tone as he works himself in and out of your mouth, patting your head. He's obviously quite into the fun of using you this way and soon proceeds to take hold of your head with both hands, then starts to face-fuck you in a rapid tempo, chuckling about the slapping noises of his balls against your chin. 'I'm gonna feed you my cum now! Ready to take a load from your own demon boy? Of course you are, daddy. Only a real cum-slut would be on their knees before their son!' With that said, Atticus takes out all the stops and really hammers into your throat hard, making it hard to even get a panted breath through your nose as he mostly blocks your airways with his cock.";
	say "     It doesn't take all that long of such harsh pounding before Atticus shouts, 'Fffuuckkkkk! Take it, slut!' His cock throbs heavily against your tongue and you can feel it in your throat as the first splash of cum is pumped into it. More and more follow after that, so many that you actually have to pat urgently against the incubus's hips so he pulls back and allows you a gasp of air. It's not like he doesn't enjoy that part of it either though, as any cum that isn't blown down your throat gets used to paint your face white. As his orgasm slowly ebbs off, Atticus looks down at you with a grin, inspecting his handiwork. 'Hmm, that's a great look on you daddy! I might just forgive you for being an absentee dad and missing all the hours of my childhood if you keep this up.'";
	NPCSexAftermath Player receives "OralCock" from Atticus;

to say AtticusSex3: [ass fuck on Atticus]
	say "     Giving Atticus's shoulder a squeeze, you move your hand to the back of his head and draw him towards you, meeting the incubus's smiling lips in a demanding kiss. As you invade his mouth with your tongue, wrestling his appendage down in a bout for supremacy over the cocky young man, he replies in kind, tensing is muscles and spreading his wings a bit further as if to appear bigger and more powerful. His hands wander down your body, stroking and touching, soon coming to rest on your crotch and squeezing it. 'Someone's eager to be with me here,' he laughingly says as both of you pull back to catch your breaths. Then he sticks out his tongue and licks the tip of your nose as he goes on to tease, 'You just can't control yourself, getting hard and dripping at just the thought of feeling my dick in you. Pounding in and out of your mouth or ass, eh? Pleasuring your very own son!'";
	say "     Being the sex-demon that he is, it's almost certain that Atticus knows exactly what you want to do to him, but still the young buck can't help but tease and prod you a little. Which in the end just makes it so much more satisfying to push against his chest and make him stumble back against the wall, then catching his wrists one by one to pin them against the [if Atticus is in Burned-Out Chapel]soot-stained stone[else]room's wall[end if]. Holding him tight like that, you kiss his full lips forcefully before moving on to lick the side of his neck and nibbling at his earlobe. Grunting into his ear that you'll make him your moaning bitch, you then grab his shoulder and turn Atticus around, overwhelming the token resistance he puts up against you. Man-handling the incubus, you get him standing against the wall in a classic police pat-down pose, legs spread and hands planted wide apart against the stone.";
	WaitLineBreak;
	say "     'You'll never break me, copper!' Atticus growls playfully over his shoulder, his tail waving sinuously in front of your face, then pointing down towards his ass with the spaded tip. Happy to follow the invitation, you quickly free your [Cock of Player] erection and smack it a few times against the globes your demonic offspring's amazing bubble butt. Gathering a bit of spit to let drip down onto your shaft, you then line yourself up with his rear entrance and thrust in with a sharp push, sinking into the young man with a satisfied grunt in both of your voices. 'Fffuuckkk!' he groans out lustfully, raising his ass a little to receive you. 'Soo good! Love the girth of your prick inside me, daddy! Pound me, I've been a bad, bad boy!'";
	say "     Sinking all the way into the incubus's tight hole, you have to grab hold of his shoulders to keep standing as he squeezes his muscles around your length and gives you a mind-bogglingly good sensation that way. He doesn't let off doing that afterwards either, making every thrust into him akin to a hand closing around your cock and milking it. 'Feels good, doesn't it daddy?' Atticus asks over his shoulder, that challenging tone rising back in his voice as he can't help but needle you. This time, you've got enough of his cocky attitude though and with a quick grab, you snatch his tail and shove the spaded tip into his mouth, telling him to suck it and be quiet. Finally having shut your incubus boy-toy up, you pull yourself out all the way from his ass, then shove your prick back into him all of a sudden, followed by jack-hammering in and out of his fuckhole too fast for him to start his tricks again.";
	WaitLineBreak;
	say "     Mercilessly pounding the young demon's ass, you reduce him to moaning and grunting around the tail-tip still in his mouth, the muscles in his arms flexing as he braces against your thrusts. Reaching around, you find his own cock fully erect and literally dripping long streaks of pre, making your fingers slick and wet. Wrapping them around his boner, you jerk your sexy partner in rhythm with your own deep thrusts, driving his arousal to new heights. You can hear his breaths coming faster and faster and soon, there's a throb of his cock as a spurt of pre splashes out - at which point you stop your thrusts and just clamp your fingers tight around his length. Atticus moves to grind back against you for a second, only to be brought to a stand still by your other hand tightly clasping his hip. Leaning forward, you grunt into his ear that you're in control now and will decide if and when he can come.";
	say "     Pulling his tail-tip out of his mouth, Atticus breathlessly pants out, 'Yes daddy! Now fuck me, please!' You've got little doubt that he'll be back to his cocky self soon after, but for now, that's exactly what you wanted to hear, so you tell him what a good boy he is and hammer into him hard, your hand jerking him off in a furious tempo. 'Nnnnghhhh!' Atticus shouts out loud, filling the chapel with his moan of pleasure as his dick erupts like a cum-volcano, splattering the wall with creamy spurts of his seed. The young man's hole quivers and flexes around you as he orgasms, creating the most exquisite feeling for your cock and driving you over the edge right along with him. Thrusting deep, you grind against his rear as you paint his insides white, staking your claim to this sexy man, at least for a little while.";
	WaitLineBreak;
	say "     As your shared orgasms run their course, Atticus eventually switches over to brace himself against the wall with the edges of his strong wings, freeing his arms for other things. He slides his hands along your sides and moans in pleasure, then says, 'That was amazing daddy! Feeling you inside me, and now I'm so warm and full.' He tilts his ass up and down a little, grinding against you and enjoying himself before adding, 'Too bad you're going soft already now, I'd love to have you and your cum inside me longer.' Shaking your head about the incessant goading the cocky demon dishes out at the slightest opportunity, you reply that you have just the thing to help him out with that. 'Oh, what's that daddy?' he asks and wiggles his ass left and right, making you groan as that squeezes your cock.";
	say "     Pulling your softening length out of him once he holds still again a moment later, you then grab his tail and wedge the spit-slick spade against his hole, plugging the incubus's asshole with his own appendage! 'Damn! Nice idea,' Atticus almost drools as he experimentally pushes his spade deeper, then retracts it a little again. With the sex-demon busy with himself for a while now, you have the time to get dressed again in peace.";
	NPCSexAftermath Atticus receives "AssFuck" from Player;

to say AtticusSex4: [pussy-fucking by Atticus]
	say "     ...";
	NPCSexAftermath Player receives "PussyFuck" from Atticus;

to say AtticusSex5: [ass-fucking by Atticus]
	say "     ...";
	NPCSexAftermath Player receives "AssFuck" from Atticus;

to say AtticusElijahThreesomeMenu:
	say "     What exactly do you plan on doing with Atticus and Elijah?";
	LineBreak;
	now sextablerun is 0;
	blank out the whole of table of fucking options;
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Get a shared blowjob, with both of them on their knees";
		now sortorder entry is 1;
		now description entry is "Make Atticus and Elijah service you";
	[
	choose a blank row in table of fucking options;
	now title entry is "Sink to your knees and worship both of their dicks";
	now sortorder entry is 2;
	now description entry is "Let them use your mouth";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Spit-roast Atticus";
		now sortorder entry is 3;
		now description entry is "Bend him the incubus over the altar and fuck him from both ends";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Spit-roast Elijah";
		now sortorder entry is 4;
		now description entry is "Bend him the incubus over the altar and fuck him from both ends";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Be spit-roasted between them";
		now sortorder entry is 5;
		now description entry is "Take the incubus and angel at the same time, front and back";
	[]
	if Player is male:
		choose a blank row in table of fucking options;
		now title entry is "Do a three man chain-fuck";
		now sortorder entry is 6;
		now description entry is "Have some anal fun";
	]
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
				if (nam is "Get a shared blowjob, with both of them on their knees"):
					say "[AtticusEliThreesomeSex1]";
				if (nam is "Sink to your knees and worship both of their dicks"):
					say "[AtticusEliThreesomeSex2]";
				if (nam is "Spit-roast Atticus"):
					say "[AtticusEliThreesomeSex3]";
				if (nam is "Spit-roast Elijah"):
					say "[AtticusEliThreesomeSex4]";
				if (nam is "Be spit-roasted between them"):
					say "[AtticusEliThreesomeSex5]";
				if (nam is "Do a three man chain-fuck"):
					say "[AtticusEliThreesomeSex6]";
				wait for any key;
		else if calcnumber is 0:
			now sextablerun is 1;
			say "     Changing your mind about this whole thing, you clear your throat and tell Atticus and Elijah that you've got things to do. 'But dad! I wanna fuck!' comes the immediate groaned-out reply from your demonic offspring, followed by Elijah chuckling and telling him, 'I'll take care of you, boy-slut!' You use the moment of distraction to hurry out of the chapel, debris and gravel crunching under your feet and not quite covering the moans and grunts that start up behind you.";
			wait for any key;
		else:
			say "Invalid Option. Pick between 1 and [the number of filled rows in the table of fucking options] or 0 to exit.";
	clear the screen and hyperlink list;

to say AtticusEliThreesomeSex1: [two man oral]
	say "     Quickly peeling off what gear and clothing you have, you step up to the waiting men with your [Cock of Player] shaft leading the way, already hard and ready from watching their antics. The two of them greet you with hungry looks and lewd grins. For a second, it seems like Elijah is going to take the lead, but before he can you've already given the command to get on their knees. The incubus immediately complies, letting out a playfully over-acted moan as he sinks down. '[if Charisma of Atticus is 1]Yes daddy, anything for you,[else]I love it when [SubjectPro of Player]'s all bossy,[end if]' the young demon says as he tugs on his angelic fuck-buddy's hand, having to do it twice before Elijah shrugs and joins him on the ground before you. Looking down on the handsome faces of your two partners, one framed in long black hair, the other with red hair and pointy little horns, you feel your prick throb in your hand.";
	say "     It may be the middle of the nanite apocalypse, but moments like this almost make the fall of civilization and having to fight for your life worth it all on their own. Such a perfect opportunity to have two sexy studs to play with, one created by yourself when you bred and knocked up Lilith, the other the result of you giving him a hard shove to fall from his lofty status to become a sex fiend. As these thoughts go through your mind, your cum-slit leaks a drop of pre, forming a glistening bead at the tip of your dick. It starts to run down the curve of your erection's head a little as more pre-cum wells up, then suddenly is stopped by Atticus's tongue as the demon laps it up. 'Mmmh, tasty!' he sighs in pleasure, being joined by Elijah a second later, who kisses the side of your shaft and mouths at it, his tongue playing along the underside.";
	WaitLineBreak;
	say "     Putting your hands on the heads of both of your willing sluts, you lean your head back and close your eyes for the moment, fully concentrating on the duo of mouths and tongues teasing and caressing your sex. Almost constantly, you have one and sometimes even two tongues lapping at your dickhead, intermixed with eager lips sliding over your head to lightly suckle at it. Their hands glide up and down along your thighs and back to your buttocks, stroking and feeling you up, with the one that isn't working your dickhead usually licking your shaft or taking your balls into his mouth and playing over them with his tongue. Your burning libido is audible in your voice as you praise them for their service, moan and grunt at the things they do to pleasure your body. For a while, you are simply content to have them servicing you at their own pace and revel in the sensations, but as you start to feel the familiar tingle of a nearing orgasm in your balls, you decide you want more.";
	say "     Looking down at your happily sucking and licking sluts, you get a bit of a firmer grip of their heads and guide them to work on both sides of your erection at the same time. Eye to eye with each other, the demon and angel's lips form an almost unbroken circle around your shaft, with the tips of their tongues playing over your sex. It is a lot of fun to hump your hips back and forth to feel the oral pleasure zone all along your dick, rapidly bringing you closer and closer to the point of no return. When the rising urge to come can barely be denied any longer, you withdraw from between them with a sharp pull, making Atticus's and Elijah's lips meet as they suddenly lose contact with the dick they were servicing. Your two kneeling studs take this in stride, tongues wrestling with each other as they start to make out lustfully. And that is when you finally erupt, blasting thick ropes of seed to paint your kissing sluts faces in white splatters.";
	WaitLineBreak;
	say "     Atticus and Elijah bask in the fruits of their oral service, stopping their kisses just long enough to lick up this or that streak of cum and then sharing it with the other. Now that the edge of your own lust is ebbing, you manage to focus past your own dick and their faces, seeing that the two of them are joined in another way: Atticus is holding their dicks together in his hands, one atop the other as he's stroking the two shafts in a rapid pace. Meanwhile, Elijah humps his hips back and forth a little to grind against his grasp and rub the demon's cock with his own. With you out of the picture, the two intensify their efforts to please each other, which results in an explosive finish before much longer, with Atticus starting to blast his infernal seed over Elijah's crotch while the angel in turn covers his balls and inner thighs with his own cum. Sinking forward to lean against each other as they pant and gasp for breath, your two fuck buddies ride out their shared orgasms together.";
	say "     'That was FUN!' Atticus bursts out with an eager smile, looking up at you, then down again at Elijah. 'Wanna do so again, sometime soon?' he asks in an eager tone, drawing a laugh from Elijah who wipes up the cum from his crotch with one hand and raises it to shove two cum-dripping fingers between Atticus's lips. As the incubus sucks his own load off, the fallen angel replies, 'Who could resist such an eager little whore? You know[if Player is not defaultnamed] [Name of Player],[else],[end if] I think I'll have to come by to visit this ruin regularly from now on. What it's lacking in amenities it more than makes up in the slutty boy-toy.' Laughing along with him and watching Elijah pull Atticus into a demanding kiss, you saunter back over to your dropped gear and get dressed.";
	NPCSexAftermath Atticus receives "OralCock" from Player;
	NPCSexAftermath Elijah receives "OralCock" from Player;

to say AtticusEliThreesomeSex2:
	say "     ...";

to say AtticusEliThreesomeSex3:
	say "     ...";

to say AtticusEliThreesomeSex4:
	say "     ...";

to say AtticusEliThreesomeSex5:
	say "     ...";

to say AtticusEliThreesomeSex6:
	say "     ...";

Atticus ends here.
